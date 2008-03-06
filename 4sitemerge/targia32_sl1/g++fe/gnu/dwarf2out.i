# 1 "../../../kg++fe/gnu/dwarf2out.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kg++fe/gnu/dwarf2out.c"
# 41 "../../../kg++fe/gnu/dwarf2out.c"
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
# 42 "../../../kg++fe/gnu/dwarf2out.c" 2
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
        
# 43 "../../../kg++fe/gnu/dwarf2out.c" 2


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
# 46 "../../../kg++fe/gnu/dwarf2out.c" 2

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
# 48 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 49 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 50 "../../../kg++fe/gnu/dwarf2out.c" 2



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
# 54 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 55 "../../../kg++fe/gnu/dwarf2out.c" 2
# 1 "../../../kg++fe/gnu/MIPS/insn-config.h" 1
# 56 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 57 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 58 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 59 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 60 "../../../kg++fe/gnu/dwarf2out.c" 2
# 1 "../../../kg++fe/gnu/libfuncs.h" 1
# 25 "../../../kg++fe/gnu/libfuncs.h"
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
# 61 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 62 "../../../kg++fe/gnu/dwarf2out.c" 2
# 1 "../../../kg++fe/gnu/dwarf2.h" 1
# 42 "../../../kg++fe/gnu/dwarf2.h"
enum dwarf_tag
  {
    DW_TAG_padding = 0x00,
    DW_TAG_array_type = 0x01,
    DW_TAG_class_type = 0x02,
    DW_TAG_entry_point = 0x03,
    DW_TAG_enumeration_type = 0x04,
    DW_TAG_formal_parameter = 0x05,
    DW_TAG_imported_declaration = 0x08,
    DW_TAG_label = 0x0a,
    DW_TAG_lexical_block = 0x0b,
    DW_TAG_member = 0x0d,
    DW_TAG_pointer_type = 0x0f,
    DW_TAG_reference_type = 0x10,
    DW_TAG_compile_unit = 0x11,
    DW_TAG_string_type = 0x12,
    DW_TAG_structure_type = 0x13,
    DW_TAG_subroutine_type = 0x15,
    DW_TAG_typedef = 0x16,
    DW_TAG_union_type = 0x17,
    DW_TAG_unspecified_parameters = 0x18,
    DW_TAG_variant = 0x19,
    DW_TAG_common_block = 0x1a,
    DW_TAG_common_inclusion = 0x1b,
    DW_TAG_inheritance = 0x1c,
    DW_TAG_inlined_subroutine = 0x1d,
    DW_TAG_module = 0x1e,
    DW_TAG_ptr_to_member_type = 0x1f,
    DW_TAG_set_type = 0x20,
    DW_TAG_subrange_type = 0x21,
    DW_TAG_with_stmt = 0x22,
    DW_TAG_access_declaration = 0x23,
    DW_TAG_base_type = 0x24,
    DW_TAG_catch_block = 0x25,
    DW_TAG_const_type = 0x26,
    DW_TAG_constant = 0x27,
    DW_TAG_enumerator = 0x28,
    DW_TAG_file_type = 0x29,
    DW_TAG_friend = 0x2a,
    DW_TAG_namelist = 0x2b,
    DW_TAG_namelist_item = 0x2c,
    DW_TAG_packed_type = 0x2d,
    DW_TAG_subprogram = 0x2e,
    DW_TAG_template_type_param = 0x2f,
    DW_TAG_template_value_param = 0x30,
    DW_TAG_thrown_type = 0x31,
    DW_TAG_try_block = 0x32,
    DW_TAG_variant_part = 0x33,
    DW_TAG_variable = 0x34,
    DW_TAG_volatile_type = 0x35,

    DW_TAG_dwarf_procedure = 0x36,
    DW_TAG_restrict_type = 0x37,
    DW_TAG_interface_type = 0x38,
    DW_TAG_namespace = 0x39,
    DW_TAG_imported_module = 0x3a,
    DW_TAG_unspecified_type = 0x3b,
    DW_TAG_partial_unit = 0x3c,
    DW_TAG_imported_unit = 0x3d,

    DW_TAG_MIPS_loop = 0x4081,

    DW_TAG_format_label = 0x4101,
    DW_TAG_function_template = 0x4102,
    DW_TAG_class_template = 0x4103,
    DW_TAG_GNU_BINCL = 0x4104,
    DW_TAG_GNU_EINCL = 0x4105
  };
# 119 "../../../kg++fe/gnu/dwarf2.h"
enum dwarf_form
  {
    DW_FORM_addr = 0x01,
    DW_FORM_block2 = 0x03,
    DW_FORM_block4 = 0x04,
    DW_FORM_data2 = 0x05,
    DW_FORM_data4 = 0x06,
    DW_FORM_data8 = 0x07,
    DW_FORM_string = 0x08,
    DW_FORM_block = 0x09,
    DW_FORM_block1 = 0x0a,
    DW_FORM_data1 = 0x0b,
    DW_FORM_flag = 0x0c,
    DW_FORM_sdata = 0x0d,
    DW_FORM_strp = 0x0e,
    DW_FORM_udata = 0x0f,
    DW_FORM_ref_addr = 0x10,
    DW_FORM_ref1 = 0x11,
    DW_FORM_ref2 = 0x12,
    DW_FORM_ref4 = 0x13,
    DW_FORM_ref8 = 0x14,
    DW_FORM_ref_udata = 0x15,
    DW_FORM_indirect = 0x16
  };



enum dwarf_attribute
  {
    DW_AT_sibling = 0x01,
    DW_AT_location = 0x02,
    DW_AT_name = 0x03,
    DW_AT_ordering = 0x09,
    DW_AT_subscr_data = 0x0a,
    DW_AT_byte_size = 0x0b,
    DW_AT_bit_offset = 0x0c,
    DW_AT_bit_size = 0x0d,
    DW_AT_element_list = 0x0f,
    DW_AT_stmt_list = 0x10,
    DW_AT_low_pc = 0x11,
    DW_AT_high_pc = 0x12,
    DW_AT_language = 0x13,
    DW_AT_member = 0x14,
    DW_AT_discr = 0x15,
    DW_AT_discr_value = 0x16,
    DW_AT_visibility = 0x17,
    DW_AT_import = 0x18,
    DW_AT_string_length = 0x19,
    DW_AT_common_reference = 0x1a,
    DW_AT_comp_dir = 0x1b,
    DW_AT_const_value = 0x1c,
    DW_AT_containing_type = 0x1d,
    DW_AT_default_value = 0x1e,
    DW_AT_inline = 0x20,
    DW_AT_is_optional = 0x21,
    DW_AT_lower_bound = 0x22,
    DW_AT_producer = 0x25,
    DW_AT_prototyped = 0x27,
    DW_AT_return_addr = 0x2a,
    DW_AT_start_scope = 0x2c,
    DW_AT_stride_size = 0x2e,
    DW_AT_upper_bound = 0x2f,
    DW_AT_abstract_origin = 0x31,
    DW_AT_accessibility = 0x32,
    DW_AT_address_class = 0x33,
    DW_AT_artificial = 0x34,
    DW_AT_base_types = 0x35,
    DW_AT_calling_convention = 0x36,
    DW_AT_count = 0x37,
    DW_AT_data_member_location = 0x38,
    DW_AT_decl_column = 0x39,
    DW_AT_decl_file = 0x3a,
    DW_AT_decl_line = 0x3b,
    DW_AT_declaration = 0x3c,
    DW_AT_discr_list = 0x3d,
    DW_AT_encoding = 0x3e,
    DW_AT_external = 0x3f,
    DW_AT_frame_base = 0x40,
    DW_AT_friend = 0x41,
    DW_AT_identifier_case = 0x42,
    DW_AT_macro_info = 0x43,
    DW_AT_namelist_items = 0x44,
    DW_AT_priority = 0x45,
    DW_AT_segment = 0x46,
    DW_AT_specification = 0x47,
    DW_AT_static_link = 0x48,
    DW_AT_type = 0x49,
    DW_AT_use_location = 0x4a,
    DW_AT_variable_parameter = 0x4b,
    DW_AT_virtuality = 0x4c,
    DW_AT_vtable_elem_location = 0x4d,

    DW_AT_allocated = 0x4e,
    DW_AT_associated = 0x4f,
    DW_AT_data_location = 0x50,
    DW_AT_stride = 0x51,
    DW_AT_entry_pc = 0x52,
    DW_AT_use_UTF8 = 0x53,
    DW_AT_extension = 0x54,
    DW_AT_ranges = 0x55,
    DW_AT_trampoline = 0x56,
    DW_AT_call_column = 0x57,
    DW_AT_call_file = 0x58,
    DW_AT_call_line = 0x59,

    DW_AT_MIPS_fde = 0x2001,
    DW_AT_MIPS_loop_begin = 0x2002,
    DW_AT_MIPS_tail_loop_begin = 0x2003,
    DW_AT_MIPS_epilog_begin = 0x2004,
    DW_AT_MIPS_loop_unroll_factor = 0x2005,
    DW_AT_MIPS_software_pipeline_depth = 0x2006,
    DW_AT_MIPS_linkage_name = 0x2007,
    DW_AT_MIPS_stride = 0x2008,
    DW_AT_MIPS_abstract_name = 0x2009,
    DW_AT_MIPS_clone_origin = 0x200a,
    DW_AT_MIPS_has_inlines = 0x200b,

    DW_AT_sf_names = 0x2101,
    DW_AT_src_info = 0x2102,
    DW_AT_mac_info = 0x2103,
    DW_AT_src_coords = 0x2104,
    DW_AT_body_begin = 0x2105,
    DW_AT_body_end = 0x2106,
    DW_AT_GNU_vector = 0x2107,

    DW_AT_VMS_rtnbeg_pd_address = 0x2201
  };





enum dwarf_location_atom
  {
    DW_OP_addr = 0x03,
    DW_OP_deref = 0x06,
    DW_OP_const1u = 0x08,
    DW_OP_const1s = 0x09,
    DW_OP_const2u = 0x0a,
    DW_OP_const2s = 0x0b,
    DW_OP_const4u = 0x0c,
    DW_OP_const4s = 0x0d,
    DW_OP_const8u = 0x0e,
    DW_OP_const8s = 0x0f,
    DW_OP_constu = 0x10,
    DW_OP_consts = 0x11,
    DW_OP_dup = 0x12,
    DW_OP_drop = 0x13,
    DW_OP_over = 0x14,
    DW_OP_pick = 0x15,
    DW_OP_swap = 0x16,
    DW_OP_rot = 0x17,
    DW_OP_xderef = 0x18,
    DW_OP_abs = 0x19,
    DW_OP_and = 0x1a,
    DW_OP_div = 0x1b,
    DW_OP_minus = 0x1c,
    DW_OP_mod = 0x1d,
    DW_OP_mul = 0x1e,
    DW_OP_neg = 0x1f,
    DW_OP_not = 0x20,
    DW_OP_or = 0x21,
    DW_OP_plus = 0x22,
    DW_OP_plus_uconst = 0x23,
    DW_OP_shl = 0x24,
    DW_OP_shr = 0x25,
    DW_OP_shra = 0x26,
    DW_OP_xor = 0x27,
    DW_OP_bra = 0x28,
    DW_OP_eq = 0x29,
    DW_OP_ge = 0x2a,
    DW_OP_gt = 0x2b,
    DW_OP_le = 0x2c,
    DW_OP_lt = 0x2d,
    DW_OP_ne = 0x2e,
    DW_OP_skip = 0x2f,
    DW_OP_lit0 = 0x30,
    DW_OP_lit1 = 0x31,
    DW_OP_lit2 = 0x32,
    DW_OP_lit3 = 0x33,
    DW_OP_lit4 = 0x34,
    DW_OP_lit5 = 0x35,
    DW_OP_lit6 = 0x36,
    DW_OP_lit7 = 0x37,
    DW_OP_lit8 = 0x38,
    DW_OP_lit9 = 0x39,
    DW_OP_lit10 = 0x3a,
    DW_OP_lit11 = 0x3b,
    DW_OP_lit12 = 0x3c,
    DW_OP_lit13 = 0x3d,
    DW_OP_lit14 = 0x3e,
    DW_OP_lit15 = 0x3f,
    DW_OP_lit16 = 0x40,
    DW_OP_lit17 = 0x41,
    DW_OP_lit18 = 0x42,
    DW_OP_lit19 = 0x43,
    DW_OP_lit20 = 0x44,
    DW_OP_lit21 = 0x45,
    DW_OP_lit22 = 0x46,
    DW_OP_lit23 = 0x47,
    DW_OP_lit24 = 0x48,
    DW_OP_lit25 = 0x49,
    DW_OP_lit26 = 0x4a,
    DW_OP_lit27 = 0x4b,
    DW_OP_lit28 = 0x4c,
    DW_OP_lit29 = 0x4d,
    DW_OP_lit30 = 0x4e,
    DW_OP_lit31 = 0x4f,
    DW_OP_reg0 = 0x50,
    DW_OP_reg1 = 0x51,
    DW_OP_reg2 = 0x52,
    DW_OP_reg3 = 0x53,
    DW_OP_reg4 = 0x54,
    DW_OP_reg5 = 0x55,
    DW_OP_reg6 = 0x56,
    DW_OP_reg7 = 0x57,
    DW_OP_reg8 = 0x58,
    DW_OP_reg9 = 0x59,
    DW_OP_reg10 = 0x5a,
    DW_OP_reg11 = 0x5b,
    DW_OP_reg12 = 0x5c,
    DW_OP_reg13 = 0x5d,
    DW_OP_reg14 = 0x5e,
    DW_OP_reg15 = 0x5f,
    DW_OP_reg16 = 0x60,
    DW_OP_reg17 = 0x61,
    DW_OP_reg18 = 0x62,
    DW_OP_reg19 = 0x63,
    DW_OP_reg20 = 0x64,
    DW_OP_reg21 = 0x65,
    DW_OP_reg22 = 0x66,
    DW_OP_reg23 = 0x67,
    DW_OP_reg24 = 0x68,
    DW_OP_reg25 = 0x69,
    DW_OP_reg26 = 0x6a,
    DW_OP_reg27 = 0x6b,
    DW_OP_reg28 = 0x6c,
    DW_OP_reg29 = 0x6d,
    DW_OP_reg30 = 0x6e,
    DW_OP_reg31 = 0x6f,
    DW_OP_breg0 = 0x70,
    DW_OP_breg1 = 0x71,
    DW_OP_breg2 = 0x72,
    DW_OP_breg3 = 0x73,
    DW_OP_breg4 = 0x74,
    DW_OP_breg5 = 0x75,
    DW_OP_breg6 = 0x76,
    DW_OP_breg7 = 0x77,
    DW_OP_breg8 = 0x78,
    DW_OP_breg9 = 0x79,
    DW_OP_breg10 = 0x7a,
    DW_OP_breg11 = 0x7b,
    DW_OP_breg12 = 0x7c,
    DW_OP_breg13 = 0x7d,
    DW_OP_breg14 = 0x7e,
    DW_OP_breg15 = 0x7f,
    DW_OP_breg16 = 0x80,
    DW_OP_breg17 = 0x81,
    DW_OP_breg18 = 0x82,
    DW_OP_breg19 = 0x83,
    DW_OP_breg20 = 0x84,
    DW_OP_breg21 = 0x85,
    DW_OP_breg22 = 0x86,
    DW_OP_breg23 = 0x87,
    DW_OP_breg24 = 0x88,
    DW_OP_breg25 = 0x89,
    DW_OP_breg26 = 0x8a,
    DW_OP_breg27 = 0x8b,
    DW_OP_breg28 = 0x8c,
    DW_OP_breg29 = 0x8d,
    DW_OP_breg30 = 0x8e,
    DW_OP_breg31 = 0x8f,
    DW_OP_regx = 0x90,
    DW_OP_fbreg = 0x91,
    DW_OP_bregx = 0x92,
    DW_OP_piece = 0x93,
    DW_OP_deref_size = 0x94,
    DW_OP_xderef_size = 0x95,
    DW_OP_nop = 0x96,

    DW_OP_push_object_address = 0x97,
    DW_OP_call2 = 0x98,
    DW_OP_call4 = 0x99,
    DW_OP_call_ref = 0x9a,

    DW_OP_GNU_push_tls_address = 0xe0
  };





enum dwarf_type
  {
    DW_ATE_void = 0x0,
    DW_ATE_address = 0x1,
    DW_ATE_boolean = 0x2,
    DW_ATE_complex_float = 0x3,
    DW_ATE_float = 0x4,
    DW_ATE_signed = 0x5,
    DW_ATE_signed_char = 0x6,
    DW_ATE_unsigned = 0x7,
    DW_ATE_unsigned_char = 0x8,

    DW_ATE_imaginary_float = 0x9
  };





enum dwarf_array_dim_ordering
  {
    DW_ORD_row_major = 0,
    DW_ORD_col_major = 1
  };


enum dwarf_access_attribute
  {
    DW_ACCESS_public = 1,
    DW_ACCESS_protected = 2,
    DW_ACCESS_private = 3
  };


enum dwarf_visibility_attribute
  {
    DW_VIS_local = 1,
    DW_VIS_exported = 2,
    DW_VIS_qualified = 3
  };


enum dwarf_virtuality_attribute
  {
    DW_VIRTUALITY_none = 0,
    DW_VIRTUALITY_virtual = 1,
    DW_VIRTUALITY_pure_virtual = 2
  };


enum dwarf_id_case
  {
    DW_ID_case_sensitive = 0,
    DW_ID_up_case = 1,
    DW_ID_down_case = 2,
    DW_ID_case_insensitive = 3
  };


enum dwarf_calling_convention
  {
    DW_CC_normal = 0x1,
    DW_CC_program = 0x2,
    DW_CC_nocall = 0x3
  };





enum dwarf_inline_attribute
  {
    DW_INL_not_inlined = 0,
    DW_INL_inlined = 1,
    DW_INL_declared_not_inlined = 2,
    DW_INL_declared_inlined = 3
  };


enum dwarf_discrim_list
  {
    DW_DSC_label = 0,
    DW_DSC_range = 1
  };


enum dwarf_line_number_ops
  {
    DW_LNS_extended_op = 0,
    DW_LNS_copy = 1,
    DW_LNS_advance_pc = 2,
    DW_LNS_advance_line = 3,
    DW_LNS_set_file = 4,
    DW_LNS_set_column = 5,
    DW_LNS_negate_stmt = 6,
    DW_LNS_set_basic_block = 7,
    DW_LNS_const_add_pc = 8,
    DW_LNS_fixed_advance_pc = 9,

    DW_LNS_set_prologue_end = 10,
    DW_LNS_set_epilogue_begin = 11,
    DW_LNS_set_isa = 12
  };


enum dwarf_line_number_x_ops
  {
    DW_LNE_end_sequence = 1,
    DW_LNE_set_address = 2,
    DW_LNE_define_file = 3
  };


enum dwarf_call_frame_info
  {
    DW_CFA_advance_loc = 0x40,
    DW_CFA_offset = 0x80,
    DW_CFA_restore = 0xc0,
    DW_CFA_nop = 0x00,
    DW_CFA_set_loc = 0x01,
    DW_CFA_advance_loc1 = 0x02,
    DW_CFA_advance_loc2 = 0x03,
    DW_CFA_advance_loc4 = 0x04,
    DW_CFA_offset_extended = 0x05,
    DW_CFA_restore_extended = 0x06,
    DW_CFA_undefined = 0x07,
    DW_CFA_same_value = 0x08,
    DW_CFA_register = 0x09,
    DW_CFA_remember_state = 0x0a,
    DW_CFA_restore_state = 0x0b,
    DW_CFA_def_cfa = 0x0c,
    DW_CFA_def_cfa_register = 0x0d,
    DW_CFA_def_cfa_offset = 0x0e,


    DW_CFA_def_cfa_expression = 0x0f,
    DW_CFA_expression = 0x10,
    DW_CFA_offset_extended_sf = 0x11,
    DW_CFA_def_cfa_sf = 0x12,
    DW_CFA_def_cfa_offset_sf = 0x13,


    DW_CFA_MIPS_advance_loc8 = 0x1d,


    DW_CFA_GNU_window_save = 0x2d,
    DW_CFA_GNU_args_size = 0x2e,
    DW_CFA_GNU_negative_offset_extended = 0x2f
  };
# 574 "../../../kg++fe/gnu/dwarf2.h"
enum dwarf_source_language
  {
    DW_LANG_C89 = 0x0001,
    DW_LANG_C = 0x0002,
    DW_LANG_Ada83 = 0x0003,
    DW_LANG_C_plus_plus = 0x0004,
    DW_LANG_Cobol74 = 0x0005,
    DW_LANG_Cobol85 = 0x0006,
    DW_LANG_Fortran77 = 0x0007,
    DW_LANG_Fortran90 = 0x0008,
    DW_LANG_Pascal83 = 0x0009,
    DW_LANG_Modula2 = 0x000a,
    DW_LANG_Java = 0x000b,

    DW_LANG_C99 = 0x000c,
    DW_LANG_Ada95 = 0x000d,
    DW_LANG_Fortran95 = 0x000e,

    DW_LANG_Mips_Assembler = 0x8001
  };






enum dwarf_macinfo_record_type
  {
    DW_MACINFO_define = 1,
    DW_MACINFO_undef = 2,
    DW_MACINFO_start_file = 3,
    DW_MACINFO_end_file = 4,
    DW_MACINFO_vendor_ext = 255
  };
# 63 "../../../kg++fe/gnu/dwarf2out.c" 2
# 1 "../../../kg++fe/gnu/dwarf2out.h" 1
# 21 "../../../kg++fe/gnu/dwarf2out.h"
extern void dwarf2out_decl (tree);
extern void dwarf2out_frame_debug (rtx);

extern void debug_dwarf (void);
struct die_struct;
extern void debug_dwarf_die (struct die_struct *);
extern void dwarf2out_set_demangle_name_func (const char *(*) (const char *));
extern void dwarf2out_add_library_unit_info (const char *, const char *);
# 64 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 65 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 66 "../../../kg++fe/gnu/dwarf2out.c" 2

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
# 68 "../../../kg++fe/gnu/dwarf2out.c" 2
# 1 "../../../include/gnu/md5.h" 1
# 27 "../../../include/gnu/md5.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 1 3 4
# 28 "../../../include/gnu/md5.h" 2
# 53 "../../../include/gnu/md5.h"
   typedef unsigned int md5_uint32;
# 77 "../../../include/gnu/md5.h"
struct md5_ctx
{
  md5_uint32 A;
  md5_uint32 B;
  md5_uint32 C;
  md5_uint32 D;

  md5_uint32 total[2];
  md5_uint32 buflen;
  char buffer[128];
};
# 96 "../../../include/gnu/md5.h"
extern void md5_init_ctx (struct md5_ctx *ctx);





extern void md5_process_block (const void *buffer, size_t len, struct md5_ctx *ctx);






extern void md5_process_bytes (const void *buffer, size_t len, struct md5_ctx *ctx);
# 119 "../../../include/gnu/md5.h"
extern void *md5_finish_ctx (struct md5_ctx *ctx, void *resbuf);
# 128 "../../../include/gnu/md5.h"
extern void *md5_read_ctx (const struct md5_ctx *ctx, void *resbuf);





extern int md5_stream (FILE *stream, void *resblock);





extern void *md5_buffer (const char *buffer, size_t len, void *resblock);
# 69 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 70 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 71 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 72 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 73 "../../../kg++fe/gnu/dwarf2out.c" 2
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
# 74 "../../../kg++fe/gnu/dwarf2out.c" 2

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
# 76 "../../../kg++fe/gnu/dwarf2out.c" 2


# 1 "../../../kg++fe/gnu/defaults.h" 1
# 79 "../../../kg++fe/gnu/dwarf2out.c" 2
# 1 "../../../kg++fe/wfe_dst.h" 1
# 134 "../../../kg++fe/wfe_dst.h"
extern void WFE_Set_Line_And_File (unsigned int line, const char* file);

extern void WFE_Macro_Define (unsigned int line, const char* buffer);
extern void WFE_Macro_Undef (unsigned int line, const char* buffer);
extern void WFE_Macro_Start_File (unsigned int lineno, unsigned int fileno);
extern void WFE_Macro_End_File (void);
# 80 "../../../kg++fe/gnu/dwarf2out.c" 2



static void dwarf2out_source_line (unsigned int, const char *);
# 107 "../../../kg++fe/gnu/dwarf2out.c"
int
dwarf2out_do_frame ()
{
  return (write_symbols == DWARF2_DEBUG
   || write_symbols == VMS_AND_DWARF2_DEBUG







   );
}
# 131 "../../../kg++fe/gnu/dwarf2out.c"
void
default_eh_frame_section ()
{
# 154 "../../../kg++fe/gnu/dwarf2out.c"
  tree label = get_file_function_name ('F');

  data_section ();
  fprintf (asm_out_file, "\t.align\t%d\n", (floor_log2_wide ((unsigned long long) ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8)))));
  (*targetm.asm_out.globalize_label) (asm_out_file, ((char *)(label)->identifier.id.str));
  do { assemble_name ((asm_out_file), (((char *)(label)->identifier.id.str))); fputs_unlocked (":\n", (asm_out_file)); } while (0);

}



static varray_type used_rtx_varray;




static varray_type incomplete_types;






static varray_type decl_scope_table;
# 186 "../../../kg++fe/gnu/dwarf2out.c"
typedef struct dw_cfi_struct *dw_cfi_ref;
typedef struct dw_fde_struct *dw_fde_ref;
typedef union dw_cfi_oprnd_struct *dw_cfi_oprnd_ref;






typedef union dw_cfi_oprnd_struct
{
  unsigned long dw_cfi_reg_num;
  long int dw_cfi_offset;
  const char *dw_cfi_addr;
  struct dw_loc_descr_struct *dw_cfi_loc;
}
dw_cfi_oprnd;

typedef struct dw_cfi_struct
{
  dw_cfi_ref dw_cfi_next;
  enum dwarf_call_frame_info dw_cfi_opc;
  dw_cfi_oprnd dw_cfi_oprnd1;
  dw_cfi_oprnd dw_cfi_oprnd2;
}
dw_cfi_node;






typedef struct cfa_loc
{
  unsigned long reg;
  long offset;
  long base_offset;
  int indirect;
} dw_cfa_location;







typedef struct dw_fde_struct
{
  const char *dw_fde_begin;
  const char *dw_fde_current_label;
  const char *dw_fde_end;
  dw_cfi_ref dw_fde_cfi;
  unsigned funcdef_number;
  unsigned all_throwers_are_sibcalls : 1;
  unsigned nothrow : 1;
  unsigned uses_eh_lsda : 1;
}
dw_fde_node;
# 283 "../../../kg++fe/gnu/dwarf2out.c"
static dw_fde_ref fde_table;


static unsigned fde_table_allocated;


static unsigned fde_table_in_use;






static dw_cfi_ref cie_cfi_head;





static unsigned current_funcdef_fde;

struct ht *debug_str_hash;

struct indirect_string_node
{
  struct ht_identifier id;
  unsigned int refcount;
  unsigned int form;
  char *label;
};



static char *stripattributes (const char *);
static const char *dwarf_cfi_name (unsigned);
static dw_cfi_ref new_cfi (void);
static void add_cfi (dw_cfi_ref *, dw_cfi_ref);
static void add_fde_cfi (const char *, dw_cfi_ref);
static void lookup_cfa_1 (dw_cfi_ref, dw_cfa_location *);

static void lookup_cfa (dw_cfa_location *);
static void reg_save (const char *, unsigned, unsigned, long);

static void initial_return_save (rtx);
static long stack_adjust_offset (rtx);
static void output_cfi (dw_cfi_ref, dw_fde_ref, int);
static void output_call_frame_info (int);
static void dwarf2out_stack_adjust (rtx);
static void queue_reg_save (const char *, rtx, long);
static void flush_queued_reg_saves (void);
static _Bool clobbers_queued_reg_save (rtx);
static void dwarf2out_frame_debug_expr (rtx, const char *);


static void output_cfa_loc (dw_cfi_ref);
static void get_cfa_from_loc_descr (dw_cfa_location *, struct dw_loc_descr_struct *);

static struct dw_loc_descr_struct *build_cfa_loc
     (dw_cfa_location *);
static void def_cfa_1 (const char *, dw_cfa_location *);
# 403 "../../../kg++fe/gnu/dwarf2out.c"
rtx
expand_builtin_dwarf_sp_column ()
{
  return gen_rtx_CONST_INT (VOIDmode, (long long) (((0 + 29) == 0 + 31 ? (63 + 1) : (0 + 29))));
}




static __inline__ char *
stripattributes (s)
     const char *s;
{
  char *stripped = xmalloc (strlen (s) + 2);
  char *p = stripped;

  *p++ = '*';

  while (*s && *s != ',')
    *p++ = *s++;

  *p = '\0';
  return stripped;
}



void
expand_builtin_init_dwarf_reg_sizes (address)
     tree address;
{
  int i;
  enum machine_mode mode = ((integer_types[itk_char])->type.mode);
  rtx addr = expand_expr (address, (rtx) 0, VOIDmode, 0);
  rtx mem = gen_rtx_MEM (BLKmode, addr);

  for (i = 0; i < 176; i++)
    if ((i == 0 + 31 ? (63 + 1) : i) < 176)
      {
 long long offset = (i == 0 + 31 ? (63 + 1) : i) * (mode_size[(int) (mode)]);
 long long size = (mode_size[(int) (reg_raw_mode[i])]);

 if (offset < 0)
   continue;

 emit_move_insn (adjust_address_1 (mem, mode, offset, 1, 1), gen_rtx_CONST_INT (VOIDmode, (long long) (size)));
      }
}



static const char *
dwarf_cfi_name (cfi_opc)
     unsigned cfi_opc;
{
  switch (cfi_opc)
    {
    case DW_CFA_advance_loc:
      return "DW_CFA_advance_loc";
    case DW_CFA_offset:
      return "DW_CFA_offset";
    case DW_CFA_restore:
      return "DW_CFA_restore";
    case DW_CFA_nop:
      return "DW_CFA_nop";
    case DW_CFA_set_loc:
      return "DW_CFA_set_loc";
    case DW_CFA_advance_loc1:
      return "DW_CFA_advance_loc1";
    case DW_CFA_advance_loc2:
      return "DW_CFA_advance_loc2";
    case DW_CFA_advance_loc4:
      return "DW_CFA_advance_loc4";
    case DW_CFA_offset_extended:
      return "DW_CFA_offset_extended";
    case DW_CFA_restore_extended:
      return "DW_CFA_restore_extended";
    case DW_CFA_undefined:
      return "DW_CFA_undefined";
    case DW_CFA_same_value:
      return "DW_CFA_same_value";
    case DW_CFA_register:
      return "DW_CFA_register";
    case DW_CFA_remember_state:
      return "DW_CFA_remember_state";
    case DW_CFA_restore_state:
      return "DW_CFA_restore_state";
    case DW_CFA_def_cfa:
      return "DW_CFA_def_cfa";
    case DW_CFA_def_cfa_register:
      return "DW_CFA_def_cfa_register";
    case DW_CFA_def_cfa_offset:
      return "DW_CFA_def_cfa_offset";


    case DW_CFA_def_cfa_expression:
      return "DW_CFA_def_cfa_expression";
    case DW_CFA_expression:
      return "DW_CFA_expression";
    case DW_CFA_offset_extended_sf:
      return "DW_CFA_offset_extended_sf";
    case DW_CFA_def_cfa_sf:
      return "DW_CFA_def_cfa_sf";
    case DW_CFA_def_cfa_offset_sf:
      return "DW_CFA_def_cfa_offset_sf";


    case DW_CFA_MIPS_advance_loc8:
      return "DW_CFA_MIPS_advance_loc8";


    case DW_CFA_GNU_window_save:
      return "DW_CFA_GNU_window_save";
    case DW_CFA_GNU_args_size:
      return "DW_CFA_GNU_args_size";
    case DW_CFA_GNU_negative_offset_extended:
      return "DW_CFA_GNU_negative_offset_extended";

    default:
      return "DW_CFA_<unknown>";
    }
}



static __inline__ dw_cfi_ref
new_cfi ()
{
  dw_cfi_ref cfi = (dw_cfi_ref) xmalloc (sizeof (dw_cfi_node));

  cfi->dw_cfi_next = ((void *)0);
  cfi->dw_cfi_oprnd1.dw_cfi_reg_num = 0;
  cfi->dw_cfi_oprnd2.dw_cfi_reg_num = 0;

  return cfi;
}



static __inline__ void
add_cfi (list_head, cfi)
     dw_cfi_ref *list_head;
     dw_cfi_ref cfi;
{
  dw_cfi_ref *p;


  for (p = list_head; (*p) != ((void *)0); p = &(*p)->dw_cfi_next)
    ;

  *p = cfi;
}



char *
dwarf2out_cfi_label ()
{
  static char label[20];
  static unsigned long label_num = 0;

  sprintf ((label), "*%s%s%ld", ("$"), ("LCFI"), (long)(label_num++));
  do { assemble_name ((asm_out_file), (label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
  return label;
}




static void
add_fde_cfi (label, cfi)
     const char *label;
     dw_cfi_ref cfi;
{
  if (label)
    {
      dw_fde_ref fde = &fde_table[fde_table_in_use - 1];

      if (*label == 0)
 label = dwarf2out_cfi_label ();

      if (fde->dw_fde_current_label == ((void *)0)
   || strcmp (label, fde->dw_fde_current_label) != 0)
 {
   dw_cfi_ref xcfi;

   fde->dw_fde_current_label = label = xstrdup (label);


   xcfi = new_cfi ();
   xcfi->dw_cfi_opc = DW_CFA_advance_loc4;
   xcfi->dw_cfi_oprnd1.dw_cfi_addr = label;
   add_cfi (&fde->dw_fde_cfi, xcfi);
 }

      add_cfi (&fde->dw_fde_cfi, cfi);
    }

  else
    add_cfi (&cie_cfi_head, cfi);
}



static __inline__ void
lookup_cfa_1 (cfi, loc)
     dw_cfi_ref cfi;
     dw_cfa_location *loc;
{
  switch (cfi->dw_cfi_opc)
    {
    case DW_CFA_def_cfa_offset:
      loc->offset = cfi->dw_cfi_oprnd1.dw_cfi_offset;
      break;
    case DW_CFA_def_cfa_register:
      loc->reg = cfi->dw_cfi_oprnd1.dw_cfi_reg_num;
      break;
    case DW_CFA_def_cfa:
      loc->reg = cfi->dw_cfi_oprnd1.dw_cfi_reg_num;
      loc->offset = cfi->dw_cfi_oprnd2.dw_cfi_offset;
      break;
    case DW_CFA_def_cfa_expression:
      get_cfa_from_loc_descr (loc, cfi->dw_cfi_oprnd1.dw_cfi_loc);
      break;
    default:
      break;
    }
}



static void
lookup_cfa (loc)
     dw_cfa_location *loc;
{
  dw_cfi_ref cfi;

  loc->reg = (unsigned long) -1;
  loc->offset = 0;
  loc->indirect = 0;
  loc->base_offset = 0;

  for (cfi = cie_cfi_head; cfi; cfi = cfi->dw_cfi_next)
    lookup_cfa_1 (cfi, loc);

  if (fde_table_in_use)
    {
      dw_fde_ref fde = &fde_table[fde_table_in_use - 1];
      for (cfi = fde->dw_fde_cfi; cfi; cfi = cfi->dw_cfi_next)
 lookup_cfa_1 (cfi, loc);
    }
}


static dw_cfa_location cfa;



static dw_cfa_location cfa_store;


static long args_size;


static long old_args_size;





void
dwarf2out_def_cfa (label, reg, offset)
     const char *label;
     unsigned reg;
     long offset;
{
  dw_cfa_location loc;
  loc.indirect = 0;
  loc.base_offset = 0;
  loc.reg = reg;
  loc.offset = offset;
  def_cfa_1 (label, &loc);
}




static void
def_cfa_1 (label, loc_p)
     const char *label;
     dw_cfa_location *loc_p;
{
  dw_cfi_ref cfi;
  dw_cfa_location old_cfa, loc;

  cfa = *loc_p;
  loc = *loc_p;

  if (cfa_store.reg == loc.reg && loc.indirect == 0)
    cfa_store.offset = loc.offset;

  loc.reg = (loc.reg == 0 + 31 ? (63 + 1) : loc.reg);
  lookup_cfa (&old_cfa);


  if (loc.reg == old_cfa.reg && loc.offset == old_cfa.offset
      && loc.indirect == old_cfa.indirect
      && (loc.indirect == 0 || loc.base_offset == old_cfa.base_offset))
    return;

  cfi = new_cfi ();

  if (loc.reg == old_cfa.reg && !loc.indirect)
    {



      cfi->dw_cfi_opc = DW_CFA_def_cfa_offset;
      cfi->dw_cfi_oprnd1.dw_cfi_offset = loc.offset;
    }
# 736 "../../../kg++fe/gnu/dwarf2out.c"
  else if (loc.indirect == 0)
    {



      cfi->dw_cfi_opc = DW_CFA_def_cfa;
      cfi->dw_cfi_oprnd1.dw_cfi_reg_num = loc.reg;
      cfi->dw_cfi_oprnd2.dw_cfi_offset = loc.offset;
    }
  else
    {



      struct dw_loc_descr_struct *loc_list;

      cfi->dw_cfi_opc = DW_CFA_def_cfa_expression;
      loc_list = build_cfa_loc (&loc);
      cfi->dw_cfi_oprnd1.dw_cfi_loc = loc_list;
    }

  add_fde_cfi (label, cfi);
}






static void
reg_save (label, reg, sreg, offset)
     const char *label;
     unsigned reg;
     unsigned sreg;
     long offset;
{
  dw_cfi_ref cfi = new_cfi ();

  cfi->dw_cfi_oprnd1.dw_cfi_reg_num = reg;



  if (sreg == (unsigned int) -1)
    {
      if (reg & ~0x3f)


 cfi->dw_cfi_opc = DW_CFA_offset_extended;
      else
 cfi->dw_cfi_opc = DW_CFA_offset;
# 799 "../../../kg++fe/gnu/dwarf2out.c"
      offset /= 4;
      if (offset < 0)
 cfi->dw_cfi_opc = DW_CFA_offset_extended_sf;

      cfi->dw_cfi_oprnd2.dw_cfi_offset = offset;
    }
  else if (sreg == reg)

    return;
  else
    {
      cfi->dw_cfi_opc = DW_CFA_register;
      cfi->dw_cfi_oprnd2.dw_cfi_reg_num = sreg;
    }

  add_fde_cfi (label, cfi);
}
# 824 "../../../kg++fe/gnu/dwarf2out.c"
void
dwarf2out_window_save (label)
     const char *label;
{
  dw_cfi_ref cfi = new_cfi ();

  cfi->dw_cfi_opc = DW_CFA_GNU_window_save;
  add_fde_cfi (label, cfi);
}




void
dwarf2out_args_size (label, size)
     const char *label;
     long size;
{
  dw_cfi_ref cfi;

  if (size == old_args_size)
    return;

  old_args_size = size;

  cfi = new_cfi ();
  cfi->dw_cfi_opc = DW_CFA_GNU_args_size;
  cfi->dw_cfi_oprnd1.dw_cfi_offset = size;
  add_fde_cfi (label, cfi);
}




void
dwarf2out_reg_save (label, reg, offset)
     const char *label;
     unsigned reg;
     long offset;
{
  reg_save (label, (reg == 0 + 31 ? (63 + 1) : reg), -1, offset);
}




void
dwarf2out_return_save (label, offset)
     const char *label;
     long offset;
{
  reg_save (label, (63 + 1), -1, offset);
}




void
dwarf2out_return_reg (label, sreg)
     const char *label;
     unsigned sreg;
{
  reg_save (label, (63 + 1), sreg, 0);
}




static void
initial_return_save (rtl)
     rtx rtl;
{
  unsigned int reg = (unsigned int) -1;
  long long offset = 0;

  switch (((enum rtx_code) (rtl)->code))
    {
    case REG:

      reg = ((((rtl)->fld[0]).rtuint) == 0 + 31 ? (63 + 1) : (((rtl)->fld[0]).rtuint));
      break;

    case MEM:

      rtl = (((rtl)->fld[0]).rtx);
      switch (((enum rtx_code) (rtl)->code))
 {
 case REG:
   if ((((rtl)->fld[0]).rtuint) != (0 + 29))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 913, __FUNCTION__);
   offset = 0;
   break;

 case PLUS:
   if (((((((rtl)->fld[0]).rtx))->fld[0]).rtuint) != (0 + 29))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 919, __FUNCTION__);
   offset = ((((((rtl)->fld[1]).rtx))->fld[0]).rtwint);
   break;

 case MINUS:
   if (((((((rtl)->fld[0]).rtx))->fld[0]).rtuint) != (0 + 29))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 925, __FUNCTION__);
   offset = -((((((rtl)->fld[1]).rtx))->fld[0]).rtwint);
   break;

 default:
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 930, __FUNCTION__);
 }

      break;

    case PLUS:



      if (((enum rtx_code) ((((rtl)->fld[1]).rtx))->code) != CONST_INT)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 940, __FUNCTION__);
      initial_return_save ((((rtl)->fld[0]).rtx));
      return;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 945, __FUNCTION__);
    }

  reg_save (((void *)0), (63 + 1), reg, offset - cfa.offset);
}




static long
stack_adjust_offset (pattern)
     rtx pattern;
{
  rtx src = (((pattern)->fld[1]).rtx);
  rtx dest = (((pattern)->fld[0]).rtx);
  long long offset = 0;
  enum rtx_code code;

  if (dest == (global_rtl[GR_STACK_POINTER]))
    {

      code = ((enum rtx_code) (src)->code);
      if (! (code == PLUS || code == MINUS)
   || (((src)->fld[0]).rtx) != (global_rtl[GR_STACK_POINTER])
   || ((enum rtx_code) ((((src)->fld[1]).rtx))->code) != CONST_INT)
 return 0;

      offset = ((((((src)->fld[1]).rtx))->fld[0]).rtwint);
      if (code == PLUS)
 offset = -offset;
    }
  else if (((enum rtx_code) (dest)->code) == MEM)
    {

      src = (((dest)->fld[0]).rtx);
      code = ((enum rtx_code) (src)->code);

      switch (code)
 {
 case PRE_MODIFY:
 case POST_MODIFY:
   if ((((src)->fld[0]).rtx) == (global_rtl[GR_STACK_POINTER]))
     {
       rtx val = ((((((src)->fld[1]).rtx))->fld[1]).rtx);

       if (((enum rtx_code) ((((src)->fld[1]).rtx))->code) != PLUS ||
    ((enum rtx_code) (val)->code) != CONST_INT)
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 992, __FUNCTION__);
       offset = -(((val)->fld[0]).rtwint);
       break;
     }
   return 0;

 case PRE_DEC:
 case POST_DEC:
   if ((((src)->fld[0]).rtx) == (global_rtl[GR_STACK_POINTER]))
     {
       offset = (mode_size[(int) (((enum machine_mode) (dest)->mode))]);
       break;
     }
   return 0;

 case PRE_INC:
 case POST_INC:
   if ((((src)->fld[0]).rtx) == (global_rtl[GR_STACK_POINTER]))
     {
       offset = -(mode_size[(int) (((enum machine_mode) (dest)->mode))]);
       break;
     }
   return 0;

 default:
   return 0;
 }
    }
  else
    return 0;

  return offset;
}





static void
dwarf2out_stack_adjust (insn)
     rtx insn;
{
  long long offset;
  const char *label;
  int i;

  if (!flag_asynchronous_unwind_tables && ((enum rtx_code) (insn)->code) == CALL_INSN)
    {

      insn = (((insn)->fld[5]).rtx);
      if (((enum rtx_code) (insn)->code) == PARALLEL)
 insn = (((((insn)->fld[0]).rtvec))->elem[0]);
      if (((enum rtx_code) (insn)->code) == SET)
 insn = (((insn)->fld[1]).rtx);
      if (((enum rtx_code) (insn)->code) != CALL)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1047, __FUNCTION__);

      dwarf2out_args_size ("", ((((((insn)->fld[1]).rtx))->fld[0]).rtwint));
      return;
    }



  else if (!flag_asynchronous_unwind_tables && cfa.reg != (0 + 29))
    return;

  if (((enum rtx_code) (insn)->code) == BARRIER)
    {




      offset = -args_size;



    }
  else if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET)
    offset = stack_adjust_offset ((((insn)->fld[5]).rtx));
  else if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == PARALLEL
    || ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SEQUENCE)
    {


      for (offset = 0, i = ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->num_elem) - 1; i >= 0; i--)
 if (((enum rtx_code) (((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->code) == SET)
   offset += stack_adjust_offset (((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]));
    }
  else
    return;

  if (offset == 0)
    return;

  if (cfa.reg == (0 + 29))
    cfa.offset += offset;





  args_size += offset;
  if (args_size < 0)
    args_size = 0;

  label = dwarf2out_cfi_label ();
  def_cfa_1 (label, &cfa);
  dwarf2out_args_size (label, args_size);
}





struct queued_reg_save
{
  struct queued_reg_save *next;
  rtx reg;
  long cfa_offset;
};

static struct queued_reg_save *queued_reg_saves;
static const char *last_reg_save_label;

static void
queue_reg_save (label, reg, offset)
     const char *label;
     rtx reg;
     long offset;
{
  struct queued_reg_save *q = (struct queued_reg_save *) xmalloc (sizeof (*q));

  q->next = queued_reg_saves;
  q->reg = reg;
  q->cfa_offset = offset;
  queued_reg_saves = q;

  last_reg_save_label = label;
}

static void
flush_queued_reg_saves ()
{
  struct queued_reg_save *q, *next;

  for (q = queued_reg_saves; q; q = next)
    {
      dwarf2out_reg_save (last_reg_save_label, (((q->reg)->fld[0]).rtuint), q->cfa_offset);
      next = q->next;
      free (q);
    }

  queued_reg_saves = ((void *)0);
  last_reg_save_label = ((void *)0);
}

static _Bool
clobbers_queued_reg_save (insn)
     rtx insn;
{
  struct queued_reg_save *q;

  for (q = queued_reg_saves; q; q = q->next)
    if (modified_in_p (q->reg, insn))
      return 1;

  return 0;
}





static dw_cfa_location cfa_temp;
# 1319 "../../../kg++fe/gnu/dwarf2out.c"
static void
dwarf2out_frame_debug_expr (expr, label)
     rtx expr;
     const char *label;
{
  rtx src, dest;
  long long offset;






  if (((enum rtx_code) (expr)->code) == PARALLEL || ((enum rtx_code) (expr)->code) == SEQUENCE)
    {
      int par_index;
      int limit = (((((expr)->fld[0]).rtvec))->num_elem);

      for (par_index = 0; par_index < limit; par_index++)
 if (((enum rtx_code) ((((((expr)->fld[0]).rtvec))->elem[par_index]))->code) == SET
     && (((((((((expr)->fld[0]).rtvec))->elem[par_index])))->frame_related)
  || par_index == 0))
   dwarf2out_frame_debug_expr ((((((expr)->fld[0]).rtvec))->elem[par_index]), label);

      return;
    }

  if (((enum rtx_code) (expr)->code) != SET)
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1347, __FUNCTION__);

  src = (((expr)->fld[1]).rtx);
  dest = (((expr)->fld[0]).rtx);

  switch (((enum rtx_code) (dest)->code))
    {
    case REG:



      switch (((enum rtx_code) (src)->code))
 {

 case REG:
   if (cfa.reg == (unsigned) (((src)->fld[0]).rtuint))

     ;
   else
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1366, __FUNCTION__);





   cfa.reg = (((dest)->fld[0]).rtuint);
   cfa_temp.reg = cfa.reg;
   cfa_temp.offset = cfa.offset;
   break;

 case PLUS:
 case MINUS:
 case LO_SUM:
   if (dest == (global_rtl[GR_STACK_POINTER]))
     {


       switch (((enum rtx_code) ((((src)->fld[1]).rtx))->code))
  {
  case CONST_INT:
    offset = ((((((src)->fld[1]).rtx))->fld[0]).rtwint);
    break;
  case REG:
    if ((unsigned) ((((((src)->fld[1]).rtx))->fld[0]).rtuint) != cfa_temp.reg)
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1391, __FUNCTION__);
    offset = cfa_temp.offset;
    break;
  default:
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1395, __FUNCTION__);
  }

       if ((((src)->fld[0]).rtx) == (global_rtl[GR_HARD_FRAME_POINTER]))
  {

    if (cfa.reg != (unsigned) ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30))
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1402, __FUNCTION__);
    cfa.reg = (0 + 29);
  }
       else if (((enum rtx_code) (src)->code) == LO_SUM)

  ;
       else if ((((src)->fld[0]).rtx) != (global_rtl[GR_STACK_POINTER]))
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1409, __FUNCTION__);

       if (((enum rtx_code) (src)->code) != MINUS)
  offset = -offset;
       if (cfa.reg == (0 + 29))
  cfa.offset += offset;
       if (cfa_store.reg == (0 + 29))
  cfa_store.offset += offset;
     }
   else if (dest == (global_rtl[GR_HARD_FRAME_POINTER]))
     {



       if (! frame_pointer_needed)
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1424, __FUNCTION__);

       if (((enum rtx_code) ((((src)->fld[0]).rtx))->code) == REG
    && (unsigned) ((((((src)->fld[0]).rtx))->fld[0]).rtuint) == cfa.reg
    && ((enum rtx_code) ((((src)->fld[1]).rtx))->code) == CONST_INT)
  {
    offset = ((((((src)->fld[1]).rtx))->fld[0]).rtwint);
    if (((enum rtx_code) (src)->code) != MINUS)
      offset = -offset;
    cfa.offset += offset;
    cfa.reg = ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30);
  }
       else
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1437, __FUNCTION__);
     }
   else
     {
       if (((enum rtx_code) (src)->code) == MINUS)
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1442, __FUNCTION__);


       if (((enum rtx_code) ((((src)->fld[0]).rtx))->code) == REG
    && ((((((src)->fld[0]).rtx))->fld[0]).rtuint) == cfa.reg
    && ((enum rtx_code) ((((src)->fld[1]).rtx))->code) == CONST_INT)
  {


    offset = - ((((((src)->fld[1]).rtx))->fld[0]).rtwint);
    cfa.offset += offset;
    cfa.reg = (((dest)->fld[0]).rtuint);

    cfa_temp.reg = cfa.reg;
    cfa_temp.offset = cfa.offset;
  }


       else if (((enum rtx_code) ((((src)->fld[0]).rtx))->code) == REG
         && ((((((src)->fld[0]).rtx))->fld[0]).rtuint) == cfa_temp.reg
         && (((src)->fld[1]).rtx) == (global_rtl[GR_STACK_POINTER]))
  {


    if (cfa.reg != (0 + 29))
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1467, __FUNCTION__);
    cfa_store.reg = (((dest)->fld[0]).rtuint);
    cfa_store.offset = cfa.offset - cfa_temp.offset;
  }


       else if (((enum rtx_code) (src)->code) == LO_SUM
         && ((enum rtx_code) ((((src)->fld[1]).rtx))->code) == CONST_INT)
  {
    cfa_temp.reg = (((dest)->fld[0]).rtuint);
    cfa_temp.offset = ((((((src)->fld[1]).rtx))->fld[0]).rtwint);
  }
       else
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1480, __FUNCTION__);
     }
   break;


 case CONST_INT:
   cfa_temp.reg = (((dest)->fld[0]).rtuint);
   cfa_temp.offset = (((src)->fld[0]).rtwint);
   break;


 case IOR:
   if (((enum rtx_code) ((((src)->fld[0]).rtx))->code) != REG
       || (unsigned) ((((((src)->fld[0]).rtx))->fld[0]).rtuint) != cfa_temp.reg
       || ((enum rtx_code) ((((src)->fld[1]).rtx))->code) != CONST_INT)
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1495, __FUNCTION__);

   if ((unsigned) (((dest)->fld[0]).rtuint) != cfa_temp.reg)
     cfa_temp.reg = (((dest)->fld[0]).rtuint);
   cfa_temp.offset |= ((((((src)->fld[1]).rtx))->fld[0]).rtwint);
   break;




 case HIGH:
   break;

 default:
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1509, __FUNCTION__);
 }

      def_cfa_1 (label, &cfa);
      break;

    case MEM:
      if (((enum rtx_code) (src)->code) != REG)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1517, __FUNCTION__);



      switch (((enum rtx_code) ((((dest)->fld[0]).rtx))->code))
 {


 case PRE_MODIFY:

   if (((enum rtx_code) ((((((((((dest)->fld[0]).rtx))->fld[1]).rtx))->fld[1]).rtx))->code) != CONST_INT)
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1528, __FUNCTION__);
   offset = -((((((((((((dest)->fld[0]).rtx))->fld[1]).rtx))->fld[1]).rtx))->fld[0]).rtwint);

   if ((((((((((dest)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtuint) != (0 + 29)
       || cfa_store.reg != (0 + 29))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1533, __FUNCTION__);

   cfa_store.offset += offset;
   if (cfa.reg == (0 + 29))
     cfa.offset = cfa_store.offset;

   offset = -cfa_store.offset;
   break;


 case PRE_INC:
 case PRE_DEC:
   offset = (mode_size[(int) (((enum machine_mode) (dest)->mode))]);
   if (((enum rtx_code) ((((dest)->fld[0]).rtx))->code) == PRE_INC)
     offset = -offset;

   if ((((((((((dest)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtuint) != (0 + 29)
       || cfa_store.reg != (0 + 29))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1551, __FUNCTION__);

   cfa_store.offset += offset;
   if (cfa.reg == (0 + 29))
     cfa.offset = cfa_store.offset;

   offset = -cfa_store.offset;
   break;



 case PLUS:
 case MINUS:
 case LO_SUM:
   if (((enum rtx_code) (((((((dest)->fld[0]).rtx))->fld[1]).rtx))->code) != CONST_INT)
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1566, __FUNCTION__);
   offset = (((((((((dest)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint);
   if (((enum rtx_code) ((((dest)->fld[0]).rtx))->code) == MINUS)
     offset = -offset;

   if (cfa_store.reg == (unsigned) (((((((((dest)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtuint))
     offset -= cfa_store.offset;
   else if (cfa_temp.reg == (unsigned) (((((((((dest)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtuint))
     offset -= cfa_temp.offset;
   else
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1576, __FUNCTION__);
   break;



 case REG:
   if (cfa_store.reg == (unsigned) ((((((dest)->fld[0]).rtx))->fld[0]).rtuint))
     offset = -cfa_store.offset;
   else if (cfa_temp.reg == (unsigned) ((((((dest)->fld[0]).rtx))->fld[0]).rtuint))
     offset = -cfa_temp.offset;
   else
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1587, __FUNCTION__);
   break;


 case POST_INC:
   if (cfa_temp.reg != (unsigned) (((((((((dest)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtuint))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1593, __FUNCTION__);
   offset = -cfa_temp.offset;
   cfa_temp.offset -= (mode_size[(int) (((enum machine_mode) (dest)->mode))]);
   break;

 default:
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1599, __FUNCTION__);
 }

      if ((((src)->fld[0]).rtuint) != (0 + 29)
   && (((src)->fld[0]).rtuint) != ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)
   && (unsigned) (((src)->fld[0]).rtuint) == cfa.reg)
 {


   if (cfa.offset == 0)
     {



       def_cfa_1 (label, &cfa);
       queue_reg_save (label, (global_rtl[GR_STACK_POINTER]), offset);
       break;
     }
   else
     {


       rtx x = (((dest)->fld[0]).rtx);

       if (((enum rtx_code) (x)->code) != REG)
  x = (((x)->fld[0]).rtx);
       if (((enum rtx_code) (x)->code) != REG)
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1626, __FUNCTION__);

       cfa.reg = (((x)->fld[0]).rtuint);
       cfa.base_offset = offset;
       cfa.indirect = 1;
       def_cfa_1 (label, &cfa);
       break;
     }
 }

      def_cfa_1 (label, &cfa);
      queue_reg_save (label, src, offset);
      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1641, __FUNCTION__);
    }
}





void
dwarf2out_frame_debug (insn)
     rtx insn;
{
  const char *label;
  rtx src;

  if (insn == (rtx) 0)
    {

      flush_queued_reg_saves ();


      lookup_cfa (&cfa);
      if (cfa.reg != (unsigned long) ((0 + 29) == 0 + 31 ? (63 + 1) : (0 + 29)))
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1664, __FUNCTION__);

      cfa.reg = (0 + 29);
      cfa_store = cfa;
      cfa_temp.reg = -1;
      cfa_temp.offset = 0;
      return;
    }

  if (((enum rtx_code) (insn)->code) != INSN || clobbers_queued_reg_save (insn))
    flush_queued_reg_saves ();

  if (! (((insn))->frame_related))
    {
      if (!1)
 dwarf2out_stack_adjust (insn);

      return;
    }

  label = dwarf2out_cfi_label ();
  src = find_reg_note (insn, REG_FRAME_RELATED_EXPR, (rtx) 0);
  if (src)
    insn = (((src)->fld[0]).rtx);
  else
    insn = (((insn)->fld[5]).rtx);

  dwarf2out_frame_debug_expr (insn, label);
}



static void
output_cfi (cfi, fde, for_eh)
     dw_cfi_ref cfi;
     dw_fde_ref fde;
     int for_eh;
{
  if (cfi->dw_cfi_opc == DW_CFA_advance_loc)
    dw2_asm_output_data (1, (cfi->dw_cfi_opc
        | (cfi->dw_cfi_oprnd1.dw_cfi_offset & 0x3f)),
    "DW_CFA_advance_loc 0x%lx",
    cfi->dw_cfi_oprnd1.dw_cfi_offset);
  else if (cfi->dw_cfi_opc == DW_CFA_offset)
    {
      dw2_asm_output_data (1, (cfi->dw_cfi_opc
          | (cfi->dw_cfi_oprnd1.dw_cfi_reg_num & 0x3f)),
      "DW_CFA_offset, column 0x%lx",
      cfi->dw_cfi_oprnd1.dw_cfi_reg_num);
      dw2_asm_output_data_uleb128 (cfi->dw_cfi_oprnd2.dw_cfi_offset, ((void *)0));
    }
  else if (cfi->dw_cfi_opc == DW_CFA_restore)
    dw2_asm_output_data (1, (cfi->dw_cfi_opc
        | (cfi->dw_cfi_oprnd1.dw_cfi_reg_num & 0x3f)),
    "DW_CFA_restore, column 0x%lx",
    cfi->dw_cfi_oprnd1.dw_cfi_reg_num);
  else
    {
      dw2_asm_output_data (1, cfi->dw_cfi_opc,
      "%s", dwarf_cfi_name (cfi->dw_cfi_opc));

      switch (cfi->dw_cfi_opc)
 {
 case DW_CFA_set_loc:
   if (for_eh)
     dw2_asm_output_encoded_addr_rtx (
  0x00,
  gen_rtx_fmt_s (SYMBOL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (cfi->dw_cfi_oprnd1.dw_cfi_addr)),
  ((void *)0));
   else
     dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8),
     cfi->dw_cfi_oprnd1.dw_cfi_addr, ((void *)0));
   break;

 case DW_CFA_advance_loc1:
   dw2_asm_output_delta (1, cfi->dw_cfi_oprnd1.dw_cfi_addr,
    fde->dw_fde_current_label, ((void *)0));
   fde->dw_fde_current_label = cfi->dw_cfi_oprnd1.dw_cfi_addr;
   break;

 case DW_CFA_advance_loc2:
   dw2_asm_output_delta (2, cfi->dw_cfi_oprnd1.dw_cfi_addr,
    fde->dw_fde_current_label, ((void *)0));
   fde->dw_fde_current_label = cfi->dw_cfi_oprnd1.dw_cfi_addr;
   break;

 case DW_CFA_advance_loc4:
   dw2_asm_output_delta (4, cfi->dw_cfi_oprnd1.dw_cfi_addr,
    fde->dw_fde_current_label, ((void *)0));
   fde->dw_fde_current_label = cfi->dw_cfi_oprnd1.dw_cfi_addr;
   break;

 case DW_CFA_MIPS_advance_loc8:
   dw2_asm_output_delta (8, cfi->dw_cfi_oprnd1.dw_cfi_addr,
    fde->dw_fde_current_label, ((void *)0));
   fde->dw_fde_current_label = cfi->dw_cfi_oprnd1.dw_cfi_addr;
   break;

 case DW_CFA_offset_extended:
 case DW_CFA_def_cfa:
   dw2_asm_output_data_uleb128 (cfi->dw_cfi_oprnd1.dw_cfi_reg_num,
           ((void *)0));
   dw2_asm_output_data_uleb128 (cfi->dw_cfi_oprnd2.dw_cfi_offset, ((void *)0));
   break;

 case DW_CFA_offset_extended_sf:
 case DW_CFA_def_cfa_sf:
   dw2_asm_output_data_uleb128 (cfi->dw_cfi_oprnd1.dw_cfi_reg_num,
           ((void *)0));
   dw2_asm_output_data_sleb128 (cfi->dw_cfi_oprnd2.dw_cfi_offset, ((void *)0));
   break;

 case DW_CFA_restore_extended:
 case DW_CFA_undefined:
 case DW_CFA_same_value:
 case DW_CFA_def_cfa_register:
   dw2_asm_output_data_uleb128 (cfi->dw_cfi_oprnd1.dw_cfi_reg_num,
           ((void *)0));
   break;

 case DW_CFA_register:
   dw2_asm_output_data_uleb128 (cfi->dw_cfi_oprnd1.dw_cfi_reg_num,
           ((void *)0));
   dw2_asm_output_data_uleb128 (cfi->dw_cfi_oprnd2.dw_cfi_reg_num,
           ((void *)0));
   break;

 case DW_CFA_def_cfa_offset:
 case DW_CFA_GNU_args_size:
   dw2_asm_output_data_uleb128 (cfi->dw_cfi_oprnd1.dw_cfi_offset, ((void *)0));
   break;

 case DW_CFA_def_cfa_offset_sf:
   dw2_asm_output_data_sleb128 (cfi->dw_cfi_oprnd1.dw_cfi_offset, ((void *)0));
   break;

 case DW_CFA_GNU_window_save:
   break;

 case DW_CFA_def_cfa_expression:
 case DW_CFA_expression:
   output_cfa_loc (cfi);
   break;

 case DW_CFA_GNU_negative_offset_extended:

   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1810, __FUNCTION__);

 default:
   break;
 }
    }
}





static void
output_call_frame_info (for_eh)
     int for_eh;
{
  unsigned int i;
  dw_fde_ref fde;
  dw_cfi_ref cfi;
  char l1[20], l2[20], section_start_label[20];
  _Bool any_lsda_needed = 0;
  char augmentation[6];
  int augmentation_size;
  int fde_encoding = 0x00;
  int per_encoding = 0x00;
  int lsda_encoding = 0x00;


  if (fde_table_in_use == 0)
    return;





  if (for_eh)
    {
      _Bool any_eh_needed = !flag_exceptions || flag_asynchronous_unwind_tables;

      for (i = 0; i < fde_table_in_use; i++)
 if (fde_table[i].uses_eh_lsda)
   any_eh_needed = any_lsda_needed = 1;
 else if (! fde_table[i].nothrow)
   any_eh_needed = 1;

      if (! any_eh_needed)
 return;
    }


  if (flag_debug_asm)
    app_enable ();

  if (for_eh)
    (*targetm.asm_out.eh_frame_section) ();
  else
    named_section_flags (".debug_frame", 0x00400);

  sprintf ((section_start_label), "*%s%s%ld", ("$"), ("Lframe"), (long)(for_eh));
  do { assemble_name ((asm_out_file), (section_start_label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);


  sprintf ((l1), "*%s%s%ld", ("$"), ("LSCIE"), (long)(for_eh));
  sprintf ((l2), "*%s%s%ld", ("$"), ("LECIE"), (long)(for_eh));
  dw2_asm_output_delta (for_eh ? 4 : 4, l2, l1,
   "Length of Common Information Entry");
  do { assemble_name ((asm_out_file), (l1)); fputs_unlocked (":\n", (asm_out_file)); } while (0);



  dw2_asm_output_data ((for_eh ? 4 : 4),
         (for_eh ? 0 : 0xffffffff),
         "CIE Identifier Tag");

  dw2_asm_output_data (1, 1, "CIE Version");

  augmentation[0] = 0;
  augmentation_size = 0;
  if (for_eh)
    {
      char *p;
# 1902 "../../../kg++fe/gnu/dwarf2out.c"
      fde_encoding = 0x00;
      per_encoding = 0x00;
      lsda_encoding = 0x00;

      p = augmentation + 1;
      if ((libfunc_table[LTI_eh_personality]))
 {
   *p++ = 'P';
   augmentation_size += 1 + size_of_encoded_value (per_encoding);
 }
      if (any_lsda_needed)
 {
   *p++ = 'L';
   augmentation_size += 1;
 }
      if (fde_encoding != 0x00)
 {
   *p++ = 'R';
   augmentation_size += 1;
 }
      if (p > augmentation + 1)
 {
   augmentation[0] = 'z';
   *p = '\0';
 }


      if ((libfunc_table[LTI_eh_personality]) && per_encoding == 0x50)
 {
   int offset = ( 4
   + 4
   + 1
   + strlen (augmentation) + 1
   + size_of_uleb128 (1)
   + size_of_sleb128 (4)
   + 1
   + 1
   + 1 );
   int pad = -offset & ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) - 1);

   augmentation_size += pad;



   if (size_of_uleb128 (augmentation_size) != 1)
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 1947, __FUNCTION__);
 }
    }

  dw2_asm_output_nstring (augmentation, -1, "CIE Augmentation");
  dw2_asm_output_data_uleb128 (1, "CIE Code Alignment Factor");
  dw2_asm_output_data_sleb128 (4,
          "CIE Data Alignment Factor");
  dw2_asm_output_data (1, (63 + 1), "CIE RA Column");

  if (augmentation[0])
    {
      dw2_asm_output_data_uleb128 (augmentation_size, "Augmentation size");
      if ((libfunc_table[LTI_eh_personality]))
 {
   dw2_asm_output_data (1, per_encoding, "Personality (%s)",
          eh_data_format_name (per_encoding));
   dw2_asm_output_encoded_addr_rtx (per_encoding,
        (libfunc_table[LTI_eh_personality]), ((void *)0));
 }

      if (any_lsda_needed)
 dw2_asm_output_data (1, lsda_encoding, "LSDA Encoding (%s)",
        eh_data_format_name (lsda_encoding));

      if (fde_encoding != 0x00)
 dw2_asm_output_data (1, fde_encoding, "FDE Encoding (%s)",
        eh_data_format_name (fde_encoding));
    }

  for (cfi = cie_cfi_head; cfi != ((void *)0); cfi = cfi->dw_cfi_next)
    output_cfi (cfi, ((void *)0), for_eh);


  fprintf (asm_out_file, "\t.align\t%d\n", (floor_log2_wide ((unsigned long long) (for_eh ? (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) : (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8)))));

  do { assemble_name ((asm_out_file), (l2)); fputs_unlocked (":\n", (asm_out_file)); } while (0);


  for (i = 0; i < fde_table_in_use; i++)
    {
      fde = &fde_table[i];


      if (for_eh && !flag_asynchronous_unwind_tables && flag_exceptions
   && (fde->nothrow || fde->all_throwers_are_sibcalls)
   && !fde->uses_eh_lsda)
 continue;

      fprintf (asm_out_file, "%s%s%d:\n", "$", "LSFDE", for_eh + i * 2);
      sprintf ((l1), "*%s%s%ld", ("$"), ("LASFDE"), (long)(for_eh + i * 2));
      sprintf ((l2), "*%s%s%ld", ("$"), ("LEFDE"), (long)(for_eh + i * 2));
      dw2_asm_output_delta (for_eh ? 4 : 4, l2, l1,
       "FDE Length");
      do { assemble_name ((asm_out_file), (l1)); fputs_unlocked (":\n", (asm_out_file)); } while (0);

      if (for_eh)
 dw2_asm_output_delta (4, l1, section_start_label, "FDE CIE offset");
      else
 dw2_asm_output_offset (4, section_start_label,
          "FDE CIE offset");

      if (for_eh)
 {
   dw2_asm_output_encoded_addr_rtx (fde_encoding,
     gen_rtx_fmt_s (SYMBOL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (fde->dw_fde_begin)),
     "FDE initial location");
   dw2_asm_output_delta (size_of_encoded_value (fde_encoding),
    fde->dw_fde_end, fde->dw_fde_begin,
    "FDE address range");
 }
      else
 {
   dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), fde->dw_fde_begin,
          "FDE initial location");
   dw2_asm_output_delta ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8),
    fde->dw_fde_end, fde->dw_fde_begin,
    "FDE address range");
 }

      if (augmentation[0])
 {
   if (any_lsda_needed)
     {
       int size = size_of_encoded_value (lsda_encoding);

       if (lsda_encoding == 0x50)
  {
    int offset = ( 4
    + 4
    + 2 * size_of_encoded_value (fde_encoding)
    + 1 );
    int pad = -offset & ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) - 1);

    size += pad;
    if (size_of_uleb128 (size) != 1)
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 2043, __FUNCTION__);
  }

       dw2_asm_output_data_uleb128 (size, "Augmentation size");

       if (fde->uses_eh_lsda)
         {
           sprintf ((l1), "*%s%s%ld", ("$"), ("LLSDA"), (long)(fde->funcdef_number));

           dw2_asm_output_encoded_addr_rtx (
   lsda_encoding, gen_rtx_fmt_s (SYMBOL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (l1)),
    "Language Specific Data Area");
         }
       else
  {
    if (lsda_encoding == 0x50)
      fprintf (asm_out_file, "\t.align\t%d\n", (floor_log2_wide ((unsigned long long) ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8)))));
    dw2_asm_output_data
      (size_of_encoded_value (lsda_encoding), 0,
       "Language Specific Data Area (none)");
  }
     }
   else
     dw2_asm_output_data_uleb128 (0, "Augmentation size");
 }



      fde->dw_fde_current_label = fde->dw_fde_begin;
      for (cfi = fde->dw_fde_cfi; cfi != ((void *)0); cfi = cfi->dw_cfi_next)
 output_cfi (cfi, fde, for_eh);


      fprintf (asm_out_file, "\t.align\t%d\n", (floor_log2_wide ((unsigned long long) ((for_eh ? (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) : (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8))))));

      do { assemble_name ((asm_out_file), (l2)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
    }

  if (for_eh && targetm.terminate_dw2_eh_frame_info)
    dw2_asm_output_data (4, 0, "End of Table");



  fprintf (asm_out_file, "\t.align\t%d\n", (0));



  if (flag_debug_asm)
    app_disable ();
}




void
dwarf2out_begin_prologue (line, file)
     unsigned int line __attribute__ ((__unused__));
     const char *file __attribute__ ((__unused__));
{
  char label[30];
  dw_fde_ref fde;

  current_function_func_begin_label = 0;
# 2115 "../../../kg++fe/gnu/dwarf2out.c"
  if (! dwarf2out_do_frame ())
    return;


  function_section (current_function_decl);
  sprintf ((label), "*%s%s%ld", ("$"), ("LFB"), (long)((cfun->funcdef_no)));

  fprintf (asm_out_file, "%s%s%d:\n", "$", "LFB", (cfun->funcdef_no));

  current_function_func_begin_label = (__builtin_constant_p (label) ? get_identifier_with_length ((label), (unsigned) strlen (label)) : (get_identifier) (label));
# 2133 "../../../kg++fe/gnu/dwarf2out.c"
  if (fde_table_in_use == fde_table_allocated)
    {
      fde_table_allocated += 256;
      fde_table
 = (dw_fde_ref) xrealloc (fde_table,
     fde_table_allocated * sizeof (dw_fde_node));
    }


  current_funcdef_fde = fde_table_in_use;


  fde = &fde_table[fde_table_in_use++];
  fde->dw_fde_begin = xstrdup (label);
  fde->dw_fde_current_label = ((void *)0);
  fde->dw_fde_end = ((void *)0);
  fde->dw_fde_cfi = ((void *)0);
  fde->funcdef_number = (cfun->funcdef_no);
  fde->nothrow = current_function_nothrow;
  fde->uses_eh_lsda = cfun->uses_eh_lsda;
  fde->all_throwers_are_sibcalls = cfun->all_throwers_are_sibcalls;

  args_size = old_args_size = 0;




  if (file)
    dwarf2out_source_line (line, file);

}





void
dwarf2out_end_epilogue (line, file)
     unsigned int line __attribute__ ((__unused__));
     const char *file __attribute__ ((__unused__));
{
  dw_fde_ref fde;
  char label[30];



  sprintf ((label), "*%s%s%ld", ("$"), ("LFE"), (long)((cfun->funcdef_no)));

  do { assemble_name ((asm_out_file), (label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
  fde = &fde_table[fde_table_in_use - 1];
  fde->dw_fde_end = xstrdup (label);
}

void
dwarf2out_frame_init ()
{

  fde_table = (dw_fde_ref) xcalloc (256, sizeof (dw_fde_node));
  fde_table_allocated = 256;
  fde_table_in_use = 0;
# 2202 "../../../kg++fe/gnu/dwarf2out.c"
}

void
dwarf2out_frame_finish ()
{

  if (write_symbols == DWARF2_DEBUG || write_symbols == VMS_AND_DWARF2_DEBUG)
    output_call_frame_info (0);

  if (! 0 && (flag_unwind_tables || flag_exceptions))
    output_call_frame_info (1);
}
# 2223 "../../../kg++fe/gnu/dwarf2out.c"
typedef struct dw_val_struct *dw_val_ref;
typedef struct die_struct *dw_die_ref;
typedef struct dw_loc_descr_struct *dw_loc_descr_ref;
typedef struct dw_loc_list_struct *dw_loc_list_ref;





typedef enum
{
  dw_val_class_addr,
  dw_val_class_offset,
  dw_val_class_loc,
  dw_val_class_loc_list,
  dw_val_class_range_list,
  dw_val_class_const,
  dw_val_class_unsigned_const,
  dw_val_class_long_long,
  dw_val_class_float,
  dw_val_class_flag,
  dw_val_class_die_ref,
  dw_val_class_fde_ref,
  dw_val_class_lbl_id,
  dw_val_class_lbl_offset,
  dw_val_class_str
}
dw_val_class;




typedef struct dw_long_long_struct
{
  unsigned long hi;
  unsigned long low;
}
dw_long_long_const;



typedef struct dw_fp_struct
{
  long *array;
  unsigned length;
}
dw_float_const;




typedef struct dw_val_struct
{
  dw_val_class val_class;
  union
    {
      rtx val_addr;
      long unsigned val_offset;
      dw_loc_list_ref val_loc_list;
      dw_loc_descr_ref val_loc;
      long int val_int;
      long unsigned val_unsigned;
      dw_long_long_const val_long_long;
      dw_float_const val_float;
      struct
 {
   dw_die_ref die;
   int external;
 } val_die_ref;
      unsigned val_fde_index;
      struct indirect_string_node *val_str;
      char *val_lbl_id;
      unsigned char val_flag;
    }
  v;
}
dw_val_node;




typedef struct dw_loc_descr_struct
{
  dw_loc_descr_ref dw_loc_next;
  enum dwarf_location_atom dw_loc_opc;
  dw_val_node dw_loc_oprnd1;
  dw_val_node dw_loc_oprnd2;
  int dw_loc_addr;
}
dw_loc_descr_node;




typedef struct dw_loc_list_struct
{
  dw_loc_list_ref dw_loc_next;
  const char *begin;
  const char *end;
  char *ll_symbol;

  const char *section;
  dw_loc_descr_ref expr;
} dw_loc_list_node;

static const char *dwarf_stack_op_name (unsigned);
static dw_loc_descr_ref new_loc_descr (enum dwarf_location_atom, unsigned long, unsigned long);


static void add_loc_descr (dw_loc_descr_ref *, dw_loc_descr_ref);

static unsigned long size_of_loc_descr (dw_loc_descr_ref);
static unsigned long size_of_locs (dw_loc_descr_ref);
static void output_loc_operands (dw_loc_descr_ref);
static void output_loc_sequence (dw_loc_descr_ref);



static const char *
dwarf_stack_op_name (op)
     unsigned op;
{
  switch (op)
    {
    case DW_OP_addr:
    case (0x100 + DW_OP_addr):
      return "DW_OP_addr";
    case DW_OP_deref:
      return "DW_OP_deref";
    case DW_OP_const1u:
      return "DW_OP_const1u";
    case DW_OP_const1s:
      return "DW_OP_const1s";
    case DW_OP_const2u:
      return "DW_OP_const2u";
    case DW_OP_const2s:
      return "DW_OP_const2s";
    case DW_OP_const4u:
      return "DW_OP_const4u";
    case DW_OP_const4s:
      return "DW_OP_const4s";
    case DW_OP_const8u:
      return "DW_OP_const8u";
    case DW_OP_const8s:
      return "DW_OP_const8s";
    case DW_OP_constu:
      return "DW_OP_constu";
    case DW_OP_consts:
      return "DW_OP_consts";
    case DW_OP_dup:
      return "DW_OP_dup";
    case DW_OP_drop:
      return "DW_OP_drop";
    case DW_OP_over:
      return "DW_OP_over";
    case DW_OP_pick:
      return "DW_OP_pick";
    case DW_OP_swap:
      return "DW_OP_swap";
    case DW_OP_rot:
      return "DW_OP_rot";
    case DW_OP_xderef:
      return "DW_OP_xderef";
    case DW_OP_abs:
      return "DW_OP_abs";
    case DW_OP_and:
      return "DW_OP_and";
    case DW_OP_div:
      return "DW_OP_div";
    case DW_OP_minus:
      return "DW_OP_minus";
    case DW_OP_mod:
      return "DW_OP_mod";
    case DW_OP_mul:
      return "DW_OP_mul";
    case DW_OP_neg:
      return "DW_OP_neg";
    case DW_OP_not:
      return "DW_OP_not";
    case DW_OP_or:
      return "DW_OP_or";
    case DW_OP_plus:
      return "DW_OP_plus";
    case DW_OP_plus_uconst:
      return "DW_OP_plus_uconst";
    case DW_OP_shl:
      return "DW_OP_shl";
    case DW_OP_shr:
      return "DW_OP_shr";
    case DW_OP_shra:
      return "DW_OP_shra";
    case DW_OP_xor:
      return "DW_OP_xor";
    case DW_OP_bra:
      return "DW_OP_bra";
    case DW_OP_eq:
      return "DW_OP_eq";
    case DW_OP_ge:
      return "DW_OP_ge";
    case DW_OP_gt:
      return "DW_OP_gt";
    case DW_OP_le:
      return "DW_OP_le";
    case DW_OP_lt:
      return "DW_OP_lt";
    case DW_OP_ne:
      return "DW_OP_ne";
    case DW_OP_skip:
      return "DW_OP_skip";
    case DW_OP_lit0:
      return "DW_OP_lit0";
    case DW_OP_lit1:
      return "DW_OP_lit1";
    case DW_OP_lit2:
      return "DW_OP_lit2";
    case DW_OP_lit3:
      return "DW_OP_lit3";
    case DW_OP_lit4:
      return "DW_OP_lit4";
    case DW_OP_lit5:
      return "DW_OP_lit5";
    case DW_OP_lit6:
      return "DW_OP_lit6";
    case DW_OP_lit7:
      return "DW_OP_lit7";
    case DW_OP_lit8:
      return "DW_OP_lit8";
    case DW_OP_lit9:
      return "DW_OP_lit9";
    case DW_OP_lit10:
      return "DW_OP_lit10";
    case DW_OP_lit11:
      return "DW_OP_lit11";
    case DW_OP_lit12:
      return "DW_OP_lit12";
    case DW_OP_lit13:
      return "DW_OP_lit13";
    case DW_OP_lit14:
      return "DW_OP_lit14";
    case DW_OP_lit15:
      return "DW_OP_lit15";
    case DW_OP_lit16:
      return "DW_OP_lit16";
    case DW_OP_lit17:
      return "DW_OP_lit17";
    case DW_OP_lit18:
      return "DW_OP_lit18";
    case DW_OP_lit19:
      return "DW_OP_lit19";
    case DW_OP_lit20:
      return "DW_OP_lit20";
    case DW_OP_lit21:
      return "DW_OP_lit21";
    case DW_OP_lit22:
      return "DW_OP_lit22";
    case DW_OP_lit23:
      return "DW_OP_lit23";
    case DW_OP_lit24:
      return "DW_OP_lit24";
    case DW_OP_lit25:
      return "DW_OP_lit25";
    case DW_OP_lit26:
      return "DW_OP_lit26";
    case DW_OP_lit27:
      return "DW_OP_lit27";
    case DW_OP_lit28:
      return "DW_OP_lit28";
    case DW_OP_lit29:
      return "DW_OP_lit29";
    case DW_OP_lit30:
      return "DW_OP_lit30";
    case DW_OP_lit31:
      return "DW_OP_lit31";
    case DW_OP_reg0:
      return "DW_OP_reg0";
    case DW_OP_reg1:
      return "DW_OP_reg1";
    case DW_OP_reg2:
      return "DW_OP_reg2";
    case DW_OP_reg3:
      return "DW_OP_reg3";
    case DW_OP_reg4:
      return "DW_OP_reg4";
    case DW_OP_reg5:
      return "DW_OP_reg5";
    case DW_OP_reg6:
      return "DW_OP_reg6";
    case DW_OP_reg7:
      return "DW_OP_reg7";
    case DW_OP_reg8:
      return "DW_OP_reg8";
    case DW_OP_reg9:
      return "DW_OP_reg9";
    case DW_OP_reg10:
      return "DW_OP_reg10";
    case DW_OP_reg11:
      return "DW_OP_reg11";
    case DW_OP_reg12:
      return "DW_OP_reg12";
    case DW_OP_reg13:
      return "DW_OP_reg13";
    case DW_OP_reg14:
      return "DW_OP_reg14";
    case DW_OP_reg15:
      return "DW_OP_reg15";
    case DW_OP_reg16:
      return "DW_OP_reg16";
    case DW_OP_reg17:
      return "DW_OP_reg17";
    case DW_OP_reg18:
      return "DW_OP_reg18";
    case DW_OP_reg19:
      return "DW_OP_reg19";
    case DW_OP_reg20:
      return "DW_OP_reg20";
    case DW_OP_reg21:
      return "DW_OP_reg21";
    case DW_OP_reg22:
      return "DW_OP_reg22";
    case DW_OP_reg23:
      return "DW_OP_reg23";
    case DW_OP_reg24:
      return "DW_OP_reg24";
    case DW_OP_reg25:
      return "DW_OP_reg25";
    case DW_OP_reg26:
      return "DW_OP_reg26";
    case DW_OP_reg27:
      return "DW_OP_reg27";
    case DW_OP_reg28:
      return "DW_OP_reg28";
    case DW_OP_reg29:
      return "DW_OP_reg29";
    case DW_OP_reg30:
      return "DW_OP_reg30";
    case DW_OP_reg31:
      return "DW_OP_reg31";
    case DW_OP_breg0:
      return "DW_OP_breg0";
    case DW_OP_breg1:
      return "DW_OP_breg1";
    case DW_OP_breg2:
      return "DW_OP_breg2";
    case DW_OP_breg3:
      return "DW_OP_breg3";
    case DW_OP_breg4:
      return "DW_OP_breg4";
    case DW_OP_breg5:
      return "DW_OP_breg5";
    case DW_OP_breg6:
      return "DW_OP_breg6";
    case DW_OP_breg7:
      return "DW_OP_breg7";
    case DW_OP_breg8:
      return "DW_OP_breg8";
    case DW_OP_breg9:
      return "DW_OP_breg9";
    case DW_OP_breg10:
      return "DW_OP_breg10";
    case DW_OP_breg11:
      return "DW_OP_breg11";
    case DW_OP_breg12:
      return "DW_OP_breg12";
    case DW_OP_breg13:
      return "DW_OP_breg13";
    case DW_OP_breg14:
      return "DW_OP_breg14";
    case DW_OP_breg15:
      return "DW_OP_breg15";
    case DW_OP_breg16:
      return "DW_OP_breg16";
    case DW_OP_breg17:
      return "DW_OP_breg17";
    case DW_OP_breg18:
      return "DW_OP_breg18";
    case DW_OP_breg19:
      return "DW_OP_breg19";
    case DW_OP_breg20:
      return "DW_OP_breg20";
    case DW_OP_breg21:
      return "DW_OP_breg21";
    case DW_OP_breg22:
      return "DW_OP_breg22";
    case DW_OP_breg23:
      return "DW_OP_breg23";
    case DW_OP_breg24:
      return "DW_OP_breg24";
    case DW_OP_breg25:
      return "DW_OP_breg25";
    case DW_OP_breg26:
      return "DW_OP_breg26";
    case DW_OP_breg27:
      return "DW_OP_breg27";
    case DW_OP_breg28:
      return "DW_OP_breg28";
    case DW_OP_breg29:
      return "DW_OP_breg29";
    case DW_OP_breg30:
      return "DW_OP_breg30";
    case DW_OP_breg31:
      return "DW_OP_breg31";
    case DW_OP_regx:
      return "DW_OP_regx";
    case DW_OP_fbreg:
      return "DW_OP_fbreg";
    case DW_OP_bregx:
      return "DW_OP_bregx";
    case DW_OP_piece:
      return "DW_OP_piece";
    case DW_OP_deref_size:
      return "DW_OP_deref_size";
    case DW_OP_xderef_size:
      return "DW_OP_xderef_size";
    case DW_OP_nop:
      return "DW_OP_nop";
    case DW_OP_push_object_address:
      return "DW_OP_push_object_address";
    case DW_OP_call2:
      return "DW_OP_call2";
    case DW_OP_call4:
      return "DW_OP_call4";
    case DW_OP_call_ref:
      return "DW_OP_call_ref";
    case DW_OP_GNU_push_tls_address:
      return "DW_OP_GNU_push_tls_address";
    default:
      return "OP_<unknown>";
    }
}





static __inline__ dw_loc_descr_ref
new_loc_descr (op, oprnd1, oprnd2)
     enum dwarf_location_atom op;
     unsigned long oprnd1;
     unsigned long oprnd2;
{


  dw_loc_descr_ref descr
    = (dw_loc_descr_ref) xcalloc (1, sizeof (dw_loc_descr_node));

  descr->dw_loc_opc = op;
  descr->dw_loc_oprnd1.val_class = dw_val_class_unsigned_const;
  descr->dw_loc_oprnd1.v.val_unsigned = oprnd1;
  descr->dw_loc_oprnd2.val_class = dw_val_class_unsigned_const;
  descr->dw_loc_oprnd2.v.val_unsigned = oprnd2;

  return descr;
}




static __inline__ void
add_loc_descr (list_head, descr)
     dw_loc_descr_ref *list_head;
     dw_loc_descr_ref descr;
{
  dw_loc_descr_ref *d;


  for (d = list_head; (*d) != ((void *)0); d = &(*d)->dw_loc_next)
    ;

  *d = descr;
}



static unsigned long
size_of_loc_descr (loc)
     dw_loc_descr_ref loc;
{
  unsigned long size = 1;

  switch (loc->dw_loc_opc)
    {
    case DW_OP_addr:
    case (0x100 + DW_OP_addr):
      size += (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8);
      break;
    case DW_OP_const1u:
    case DW_OP_const1s:
      size += 1;
      break;
    case DW_OP_const2u:
    case DW_OP_const2s:
      size += 2;
      break;
    case DW_OP_const4u:
    case DW_OP_const4s:
      size += 4;
      break;
    case DW_OP_const8u:
    case DW_OP_const8s:
      size += 8;
      break;
    case DW_OP_constu:
      size += size_of_uleb128 (loc->dw_loc_oprnd1.v.val_unsigned);
      break;
    case DW_OP_consts:
      size += size_of_sleb128 (loc->dw_loc_oprnd1.v.val_int);
      break;
    case DW_OP_pick:
      size += 1;
      break;
    case DW_OP_plus_uconst:
      size += size_of_uleb128 (loc->dw_loc_oprnd1.v.val_unsigned);
      break;
    case DW_OP_skip:
    case DW_OP_bra:
      size += 2;
      break;
    case DW_OP_breg0:
    case DW_OP_breg1:
    case DW_OP_breg2:
    case DW_OP_breg3:
    case DW_OP_breg4:
    case DW_OP_breg5:
    case DW_OP_breg6:
    case DW_OP_breg7:
    case DW_OP_breg8:
    case DW_OP_breg9:
    case DW_OP_breg10:
    case DW_OP_breg11:
    case DW_OP_breg12:
    case DW_OP_breg13:
    case DW_OP_breg14:
    case DW_OP_breg15:
    case DW_OP_breg16:
    case DW_OP_breg17:
    case DW_OP_breg18:
    case DW_OP_breg19:
    case DW_OP_breg20:
    case DW_OP_breg21:
    case DW_OP_breg22:
    case DW_OP_breg23:
    case DW_OP_breg24:
    case DW_OP_breg25:
    case DW_OP_breg26:
    case DW_OP_breg27:
    case DW_OP_breg28:
    case DW_OP_breg29:
    case DW_OP_breg30:
    case DW_OP_breg31:
      size += size_of_sleb128 (loc->dw_loc_oprnd1.v.val_int);
      break;
    case DW_OP_regx:
      size += size_of_uleb128 (loc->dw_loc_oprnd1.v.val_unsigned);
      break;
    case DW_OP_fbreg:
      size += size_of_sleb128 (loc->dw_loc_oprnd1.v.val_int);
      break;
    case DW_OP_bregx:
      size += size_of_uleb128 (loc->dw_loc_oprnd1.v.val_unsigned);
      size += size_of_sleb128 (loc->dw_loc_oprnd2.v.val_int);
      break;
    case DW_OP_piece:
      size += size_of_uleb128 (loc->dw_loc_oprnd1.v.val_unsigned);
      break;
    case DW_OP_deref_size:
    case DW_OP_xderef_size:
      size += 1;
      break;
    case DW_OP_call2:
      size += 2;
      break;
    case DW_OP_call4:
      size += 4;
      break;
    case DW_OP_call_ref:
      size += (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8);
      break;
    default:
      break;
    }

  return size;
}



static unsigned long
size_of_locs (loc)
     dw_loc_descr_ref loc;
{
  unsigned long size;

  for (size = 0; loc != ((void *)0); loc = loc->dw_loc_next)
    {
      loc->dw_loc_addr = size;
      size += size_of_loc_descr (loc);
    }

  return size;
}



static void
output_loc_operands (loc)
     dw_loc_descr_ref loc;
{
  dw_val_ref val1 = &loc->dw_loc_oprnd1;
  dw_val_ref val2 = &loc->dw_loc_oprnd2;

  switch (loc->dw_loc_opc)
    {

    case DW_OP_addr:
      dw2_asm_output_addr_rtx ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), val1->v.val_addr, ((void *)0));
      break;
    case DW_OP_const2u:
    case DW_OP_const2s:
      dw2_asm_output_data (2, val1->v.val_int, ((void *)0));
      break;
    case DW_OP_const4u:
    case DW_OP_const4s:
      dw2_asm_output_data (4, val1->v.val_int, ((void *)0));
      break;
    case DW_OP_const8u:
    case DW_OP_const8s:
      if ((8 * 4) < 64)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 2850, __FUNCTION__);
      dw2_asm_output_data (8, val1->v.val_int, ((void *)0));
      break;
    case DW_OP_skip:
    case DW_OP_bra:
      {
 int offset;

 if (val1->val_class == dw_val_class_loc)
   offset = val1->v.val_loc->dw_loc_addr - (loc->dw_loc_addr + 3);
 else
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 2861, __FUNCTION__);

 dw2_asm_output_data (2, offset, ((void *)0));
      }
      break;
# 2882 "../../../kg++fe/gnu/dwarf2out.c"
    case DW_OP_const1u:
    case DW_OP_const1s:
      dw2_asm_output_data (1, val1->v.val_int, ((void *)0));
      break;
    case DW_OP_constu:
      dw2_asm_output_data_uleb128 (val1->v.val_unsigned, ((void *)0));
      break;
    case DW_OP_consts:
      dw2_asm_output_data_sleb128 (val1->v.val_int, ((void *)0));
      break;
    case DW_OP_pick:
      dw2_asm_output_data (1, val1->v.val_int, ((void *)0));
      break;
    case DW_OP_plus_uconst:
      dw2_asm_output_data_uleb128 (val1->v.val_unsigned, ((void *)0));
      break;
    case DW_OP_breg0:
    case DW_OP_breg1:
    case DW_OP_breg2:
    case DW_OP_breg3:
    case DW_OP_breg4:
    case DW_OP_breg5:
    case DW_OP_breg6:
    case DW_OP_breg7:
    case DW_OP_breg8:
    case DW_OP_breg9:
    case DW_OP_breg10:
    case DW_OP_breg11:
    case DW_OP_breg12:
    case DW_OP_breg13:
    case DW_OP_breg14:
    case DW_OP_breg15:
    case DW_OP_breg16:
    case DW_OP_breg17:
    case DW_OP_breg18:
    case DW_OP_breg19:
    case DW_OP_breg20:
    case DW_OP_breg21:
    case DW_OP_breg22:
    case DW_OP_breg23:
    case DW_OP_breg24:
    case DW_OP_breg25:
    case DW_OP_breg26:
    case DW_OP_breg27:
    case DW_OP_breg28:
    case DW_OP_breg29:
    case DW_OP_breg30:
    case DW_OP_breg31:
      dw2_asm_output_data_sleb128 (val1->v.val_int, ((void *)0));
      break;
    case DW_OP_regx:
      dw2_asm_output_data_uleb128 (val1->v.val_unsigned, ((void *)0));
      break;
    case DW_OP_fbreg:
      dw2_asm_output_data_sleb128 (val1->v.val_int, ((void *)0));
      break;
    case DW_OP_bregx:
      dw2_asm_output_data_uleb128 (val1->v.val_unsigned, ((void *)0));
      dw2_asm_output_data_sleb128 (val2->v.val_int, ((void *)0));
      break;
    case DW_OP_piece:
      dw2_asm_output_data_uleb128 (val1->v.val_unsigned, ((void *)0));
      break;
    case DW_OP_deref_size:
    case DW_OP_xderef_size:
      dw2_asm_output_data (1, val1->v.val_int, ((void *)0));
      break;

    case (0x100 + DW_OP_addr):





      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 2956, __FUNCTION__);

      break;

    default:

      break;
    }
}



static void
output_loc_sequence (loc)
     dw_loc_descr_ref loc;
{
  for (; loc != ((void *)0); loc = loc->dw_loc_next)
    {

      dw2_asm_output_data (1, loc->dw_loc_opc,
      "%s", dwarf_stack_op_name (loc->dw_loc_opc));


      output_loc_operands (loc);
    }
}




static void
output_cfa_loc (cfi)
     dw_cfi_ref cfi;
{
  dw_loc_descr_ref loc;
  unsigned long size;


  loc = cfi->dw_cfi_oprnd1.dw_cfi_loc;
  size = size_of_locs (loc);
  dw2_asm_output_data_uleb128 (size, ((void *)0));


  output_loc_sequence (loc);
}




static struct dw_loc_descr_struct *
build_cfa_loc (cfa)
     dw_cfa_location *cfa;
{
  struct dw_loc_descr_struct *head, *tmp;

  if (cfa->indirect == 0)
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 3012, __FUNCTION__);

  if (cfa->base_offset)
    {
      if (cfa->reg <= 31)
 head = new_loc_descr (DW_OP_breg0 + cfa->reg, cfa->base_offset, 0);
      else
 head = new_loc_descr (DW_OP_bregx, cfa->reg, cfa->base_offset);
    }
  else if (cfa->reg <= 31)
    head = new_loc_descr (DW_OP_reg0 + cfa->reg, 0, 0);
  else
    head = new_loc_descr (DW_OP_regx, cfa->reg, 0);

  head->dw_loc_oprnd1.val_class = dw_val_class_const;
  tmp = new_loc_descr (DW_OP_deref, 0, 0);
  add_loc_descr (&head, tmp);
  if (cfa->offset != 0)
    {
      tmp = new_loc_descr (DW_OP_plus_uconst, cfa->offset, 0);
      add_loc_descr (&head, tmp);
    }

  return head;
}




static void
get_cfa_from_loc_descr (cfa, loc)
     dw_cfa_location *cfa;
     struct dw_loc_descr_struct *loc;
{
  struct dw_loc_descr_struct *ptr;
  cfa->offset = 0;
  cfa->base_offset = 0;
  cfa->indirect = 0;
  cfa->reg = -1;

  for (ptr = loc; ptr != ((void *)0); ptr = ptr->dw_loc_next)
    {
      enum dwarf_location_atom op = ptr->dw_loc_opc;

      switch (op)
 {
 case DW_OP_reg0:
 case DW_OP_reg1:
 case DW_OP_reg2:
 case DW_OP_reg3:
 case DW_OP_reg4:
 case DW_OP_reg5:
 case DW_OP_reg6:
 case DW_OP_reg7:
 case DW_OP_reg8:
 case DW_OP_reg9:
 case DW_OP_reg10:
 case DW_OP_reg11:
 case DW_OP_reg12:
 case DW_OP_reg13:
 case DW_OP_reg14:
 case DW_OP_reg15:
 case DW_OP_reg16:
 case DW_OP_reg17:
 case DW_OP_reg18:
 case DW_OP_reg19:
 case DW_OP_reg20:
 case DW_OP_reg21:
 case DW_OP_reg22:
 case DW_OP_reg23:
 case DW_OP_reg24:
 case DW_OP_reg25:
 case DW_OP_reg26:
 case DW_OP_reg27:
 case DW_OP_reg28:
 case DW_OP_reg29:
 case DW_OP_reg30:
 case DW_OP_reg31:
   cfa->reg = op - DW_OP_reg0;
   break;
 case DW_OP_regx:
   cfa->reg = ptr->dw_loc_oprnd1.v.val_int;
   break;
 case DW_OP_breg0:
 case DW_OP_breg1:
 case DW_OP_breg2:
 case DW_OP_breg3:
 case DW_OP_breg4:
 case DW_OP_breg5:
 case DW_OP_breg6:
 case DW_OP_breg7:
 case DW_OP_breg8:
 case DW_OP_breg9:
 case DW_OP_breg10:
 case DW_OP_breg11:
 case DW_OP_breg12:
 case DW_OP_breg13:
 case DW_OP_breg14:
 case DW_OP_breg15:
 case DW_OP_breg16:
 case DW_OP_breg17:
 case DW_OP_breg18:
 case DW_OP_breg19:
 case DW_OP_breg20:
 case DW_OP_breg21:
 case DW_OP_breg22:
 case DW_OP_breg23:
 case DW_OP_breg24:
 case DW_OP_breg25:
 case DW_OP_breg26:
 case DW_OP_breg27:
 case DW_OP_breg28:
 case DW_OP_breg29:
 case DW_OP_breg30:
 case DW_OP_breg31:
   cfa->reg = op - DW_OP_breg0;
   cfa->base_offset = ptr->dw_loc_oprnd1.v.val_int;
   break;
 case DW_OP_bregx:
   cfa->reg = ptr->dw_loc_oprnd1.v.val_int;
   cfa->base_offset = ptr->dw_loc_oprnd2.v.val_int;
   break;
 case DW_OP_deref:
   cfa->indirect = 1;
   break;
 case DW_OP_plus_uconst:
   cfa->offset = ptr->dw_loc_oprnd1.v.val_unsigned;
   break;
 default:
   internal_error ("DW_LOC_OP %s not implemented\n",
     dwarf_stack_op_name (ptr->dw_loc_opc));
 }
    }
}






static hashnode indirect_string_alloc (hash_table *);
static int output_indirect_string (struct cpp_reader *, hashnode, const void *);



static void dwarf2out_init (const char *);
static void dwarf2out_finish (const char *);
static void dwarf2out_define (unsigned int, const char *);
static void dwarf2out_undef (unsigned int, const char *);
static void dwarf2out_start_source_file (unsigned, const char *);
static void dwarf2out_end_source_file (unsigned);
static void dwarf2out_begin_block (unsigned, unsigned);
static void dwarf2out_end_block (unsigned, unsigned);
static _Bool dwarf2out_ignore_block (tree);
static void dwarf2out_global_decl (tree);
static void dwarf2out_abstract_function (tree);



const struct gcc_debug_hooks dwarf2_debug_hooks =
{
  dwarf2out_init,
  dwarf2out_finish,
  dwarf2out_define,
  dwarf2out_undef,
  dwarf2out_start_source_file,
  dwarf2out_end_source_file,
  dwarf2out_begin_block,
  dwarf2out_end_block,
  dwarf2out_ignore_block,
  dwarf2out_source_line,
  dwarf2out_begin_prologue,
  debug_nothing_int_charstar,
  dwarf2out_end_epilogue,
  debug_nothing_tree,
  debug_nothing_int,
  dwarf2out_decl,
  dwarf2out_global_decl,
  debug_nothing_tree,



  dwarf2out_abstract_function,
  debug_nothing_rtx
};
# 3210 "../../../kg++fe/gnu/dwarf2out.c"
typedef long int dw_offset;



typedef struct dw_attr_struct *dw_attr_ref;
typedef struct dw_line_info_struct *dw_line_info_ref;
typedef struct dw_separate_line_info_struct *dw_separate_line_info_ref;
typedef struct pubname_struct *pubname_ref;
typedef struct dw_ranges_struct *dw_ranges_ref;






typedef struct dw_line_info_struct
{
  unsigned long dw_file_num;
  unsigned long dw_line_num;
}
dw_line_info_entry;



typedef struct dw_separate_line_info_struct
{
  unsigned long dw_file_num;
  unsigned long dw_line_num;
  unsigned long function;
}
dw_separate_line_info_entry;





typedef struct dw_attr_struct
{
  enum dwarf_attribute dw_attr;
  dw_attr_ref dw_attr_next;
  dw_val_node dw_attr_val;
}
dw_attr_node;



typedef struct die_struct
{
  enum dwarf_tag die_tag;
  char *die_symbol;
  dw_attr_ref die_attr;
  dw_die_ref die_parent;
  dw_die_ref die_child;
  dw_die_ref die_sib;
  dw_offset die_offset;
  unsigned long die_abbrev;
  int die_mark;
}
die_node;



typedef struct pubname_struct
{
  dw_die_ref die;
  char *name;
}
pubname_entry;

struct dw_ranges_struct
{
  int block_num;
};


typedef struct limbo_die_struct
{
  dw_die_ref die;
  tree created_for;
  struct limbo_die_struct *next;
}
limbo_die_node;
# 3366 "../../../kg++fe/gnu/dwarf2out.c"
static unsigned long next_die_offset;


static dw_die_ref comp_unit_die;



static int is_main_source;


static limbo_die_node *limbo_die_list = 0;


struct file_table
{
  char **table;
  unsigned allocated;
  unsigned in_use;
  unsigned last_lookup_index;
};






static struct file_table file_table;



static const char *primary_filename;




static dw_die_ref *decl_die_table;


static unsigned decl_die_table_allocated;


static unsigned decl_die_table_in_use;
# 3416 "../../../kg++fe/gnu/dwarf2out.c"
static dw_die_ref *abbrev_die_table;


static unsigned abbrev_die_table_allocated;


static unsigned abbrev_die_table_in_use;







static dw_line_info_ref line_info_table;


static unsigned line_info_table_allocated;


static unsigned separate_line_info_table_in_use;



static dw_separate_line_info_ref separate_line_info_table;


static unsigned separate_line_info_table_allocated;


static unsigned line_info_table_in_use;







static pubname_ref pubname_table;


static unsigned pubname_table_allocated;


static unsigned pubname_table_in_use;






static dw_die_ref *arange_table;


static unsigned arange_table_allocated;


static unsigned arange_table_in_use;






static dw_ranges_ref ranges_table;


static unsigned ranges_table_allocated;


static unsigned ranges_table_in_use;






static unsigned have_location_lists;


static int current_function_has_inlines;






static int is_pseudo_reg (rtx);
static tree type_main_variant (tree);
static int is_tagged_type (tree);
static const char *dwarf_tag_name (unsigned);
static const char *dwarf_attr_name (unsigned);
static const char *dwarf_form_name (unsigned);



static tree decl_ultimate_origin (tree);
static tree block_ultimate_origin (tree);
static tree decl_class_context (tree);
static void add_dwarf_attr (dw_die_ref, dw_attr_ref);
static __inline__ dw_val_class AT_class (dw_attr_ref);
static void add_AT_flag (dw_die_ref, enum dwarf_attribute, unsigned);


static __inline__ unsigned AT_flag (dw_attr_ref);
static void add_AT_int (dw_die_ref, enum dwarf_attribute, long);

static __inline__ long int AT_int (dw_attr_ref);
static void add_AT_unsigned (dw_die_ref, enum dwarf_attribute, unsigned long);


static __inline__ unsigned long AT_unsigned (dw_attr_ref);
static void add_AT_long_long (dw_die_ref, enum dwarf_attribute, unsigned long, unsigned long);



static void add_AT_float (dw_die_ref, enum dwarf_attribute, unsigned, long *);


static void add_AT_string (dw_die_ref, enum dwarf_attribute, const char *);


static __inline__ const char *AT_string (dw_attr_ref);
static int AT_string_form (dw_attr_ref);
static void add_AT_die_ref (dw_die_ref, enum dwarf_attribute, dw_die_ref);


static __inline__ dw_die_ref AT_ref (dw_attr_ref);
static __inline__ int AT_ref_external (dw_attr_ref);
static __inline__ void set_AT_ref_external (dw_attr_ref, int);
static void add_AT_fde_ref (dw_die_ref, enum dwarf_attribute, unsigned);


static void add_AT_loc (dw_die_ref, enum dwarf_attribute, dw_loc_descr_ref);


static __inline__ dw_loc_descr_ref AT_loc (dw_attr_ref);
static void add_AT_loc_list (dw_die_ref, enum dwarf_attribute, dw_loc_list_ref);


static __inline__ dw_loc_list_ref AT_loc_list (dw_attr_ref);
static void add_AT_addr (dw_die_ref, enum dwarf_attribute, rtx);


static __inline__ rtx AT_addr (dw_attr_ref);
static void add_AT_lbl_id (dw_die_ref, enum dwarf_attribute, const char *);


static void add_AT_lbl_offset (dw_die_ref, enum dwarf_attribute, const char *);


static void add_AT_offset (dw_die_ref, enum dwarf_attribute, unsigned long);


static void add_AT_range_list (dw_die_ref, enum dwarf_attribute, unsigned long);


static __inline__ const char *AT_lbl (dw_attr_ref);
static dw_attr_ref get_AT (dw_die_ref, enum dwarf_attribute);

static const char *get_AT_low_pc (dw_die_ref);
static const char *get_AT_hi_pc (dw_die_ref);
static const char *get_AT_string (dw_die_ref, enum dwarf_attribute);

static int get_AT_flag (dw_die_ref, enum dwarf_attribute);

static unsigned get_AT_unsigned (dw_die_ref, enum dwarf_attribute);

static __inline__ dw_die_ref get_AT_ref (dw_die_ref, enum dwarf_attribute);

static int is_c_family (void);
static int is_cxx (void);
static int is_java (void);
static int is_fortran (void);
static void remove_AT (dw_die_ref, enum dwarf_attribute);

static __inline__ void free_die (dw_die_ref);
static void remove_children (dw_die_ref);
static void add_child_die (dw_die_ref, dw_die_ref);
static dw_die_ref new_die (enum dwarf_tag, dw_die_ref, tree);

static dw_die_ref lookup_type_die (tree);
static void equate_type_number_to_die (tree, dw_die_ref);
static dw_die_ref lookup_decl_die (tree);
static void equate_decl_number_to_die (tree, dw_die_ref);
static void print_spaces (FILE *);
static void print_die (dw_die_ref, FILE *);
static void print_dwarf_line_table (FILE *);
static void reverse_die_lists (dw_die_ref);
static void reverse_all_dies (dw_die_ref);
static dw_die_ref push_new_compile_unit (dw_die_ref, dw_die_ref);
static dw_die_ref pop_compile_unit (dw_die_ref);
static void loc_checksum (dw_loc_descr_ref, struct md5_ctx *);

static void attr_checksum (dw_attr_ref, struct md5_ctx *, int *);


static void die_checksum (dw_die_ref, struct md5_ctx *, int *);


static int same_loc_p (dw_loc_descr_ref, dw_loc_descr_ref, int *);

static int same_dw_val_p (dw_val_node *, dw_val_node *, int *);

static int same_attr_p (dw_attr_ref, dw_attr_ref, int *);
static int same_die_p (dw_die_ref, dw_die_ref, int *);
static int same_die_p_wrap (dw_die_ref, dw_die_ref);
static void compute_section_prefix (dw_die_ref);
static int is_type_die (dw_die_ref);
static int is_comdat_die (dw_die_ref);
static int is_symbol_die (dw_die_ref);
static void assign_symbol_names (dw_die_ref);
static void break_out_includes (dw_die_ref);
static hashval_t htab_cu_hash (const void *);
static int htab_cu_eq (const void *, const void *);
static void htab_cu_del (void *);
static int check_duplicate_cu (dw_die_ref, htab_t, unsigned *);
static void record_comdat_symbol_number (dw_die_ref, htab_t, unsigned);
static void add_sibling_attributes (dw_die_ref);
static void build_abbrev_table (dw_die_ref);
static void output_location_lists (dw_die_ref);
static int constant_size (long unsigned);
static unsigned long size_of_die (dw_die_ref);
static void calc_die_sizes (dw_die_ref);
static void mark_dies (dw_die_ref);
static void unmark_dies (dw_die_ref);
static void unmark_all_dies (dw_die_ref);
static unsigned long size_of_pubnames (void);
static unsigned long size_of_aranges (void);
static enum dwarf_form value_format (dw_attr_ref);
static void output_value_format (dw_attr_ref);
static void output_abbrev_section (void);
static void output_die_symbol (dw_die_ref);
static void output_die (dw_die_ref);
static void output_compilation_unit_header (void);
static void output_comp_unit (dw_die_ref, int);
static const char *dwarf2_name (tree, int);
static void add_pubname (tree, dw_die_ref);
static void output_pubnames (void);
static void add_arange (tree, dw_die_ref);
static void output_aranges (void);
static unsigned int add_ranges (tree);
static void output_ranges (void);
static void output_line_info (void);
static void output_file_names (void);
static dw_die_ref base_type_die (tree);
static tree root_type (tree);
static int is_base_type (tree);
static dw_die_ref modified_type_die (tree, int, int, dw_die_ref);
static int type_is_enum (tree);
static unsigned int reg_number (rtx);
static dw_loc_descr_ref reg_loc_descriptor (rtx);
static dw_loc_descr_ref int_loc_descriptor (long long);
static dw_loc_descr_ref based_loc_descr (unsigned, long);
static int is_based_loc (rtx);
static dw_loc_descr_ref mem_loc_descriptor (rtx, enum machine_mode mode);
static dw_loc_descr_ref concat_loc_descriptor (rtx, rtx);
static dw_loc_descr_ref loc_descriptor (rtx);
static dw_loc_descr_ref loc_descriptor_from_tree (tree, int);
static long long ceiling (long long, unsigned int);
static tree field_type (tree);
static unsigned int simple_type_align_in_bits (tree);
static unsigned int simple_decl_align_in_bits (tree);
static unsigned long long simple_type_size_in_bits (tree);
static long long field_byte_offset (tree);
static void add_AT_location_description (dw_die_ref, enum dwarf_attribute, dw_loc_descr_ref);


static void add_data_member_location_attribute (dw_die_ref, tree);
static void add_const_value_attribute (dw_die_ref, rtx);
static rtx rtl_for_decl_location (tree);
static void add_location_or_const_value_attribute (dw_die_ref, tree);
static void tree_add_const_value_attribute (dw_die_ref, tree);
static void add_name_attribute (dw_die_ref, const char *);
static void add_bound_info (dw_die_ref, enum dwarf_attribute, tree);

static void add_subscript_info (dw_die_ref, tree);
static void add_byte_size_attribute (dw_die_ref, tree);
static void add_bit_offset_attribute (dw_die_ref, tree);
static void add_bit_size_attribute (dw_die_ref, tree);
static void add_prototyped_attribute (dw_die_ref, tree);
static void add_abstract_origin_attribute (dw_die_ref, tree);
static void add_pure_or_virtual_attribute (dw_die_ref, tree);
static void add_src_coords_attributes (dw_die_ref, tree);
static void add_name_and_src_coords_attributes (dw_die_ref, tree);
static void push_decl_scope (tree);
static void pop_decl_scope (void);
static dw_die_ref scope_die_for (tree, dw_die_ref);
static __inline__ int local_scope_p (dw_die_ref);
static __inline__ int class_scope_p (dw_die_ref);
static void add_type_attribute (dw_die_ref, tree, int, int, dw_die_ref);

static const char *type_tag (tree);
static tree member_declared_type (tree);



static void gen_array_type_die (tree, dw_die_ref);
static void gen_set_type_die (tree, dw_die_ref);



static void gen_inlined_enumeration_type_die (tree, dw_die_ref);
static void gen_inlined_structure_type_die (tree, dw_die_ref);
static void gen_inlined_union_type_die (tree, dw_die_ref);
static void gen_enumeration_type_die (tree, dw_die_ref);
static dw_die_ref gen_formal_parameter_die (tree, dw_die_ref);
static void gen_unspecified_parameters_die (tree, dw_die_ref);
static void gen_formal_types_die (tree, dw_die_ref);
static void gen_subprogram_die (tree, dw_die_ref);
static void gen_variable_die (tree, dw_die_ref);
static void gen_label_die (tree, dw_die_ref);
static void gen_lexical_block_die (tree, dw_die_ref, int);
static void gen_inlined_subroutine_die (tree, dw_die_ref, int);
static void gen_field_die (tree, dw_die_ref);
static void gen_ptr_to_mbr_type_die (tree, dw_die_ref);
static dw_die_ref gen_compile_unit_die (const char *);
static void gen_string_type_die (tree, dw_die_ref);
static void gen_inheritance_die (tree, dw_die_ref);
static void gen_member_die (tree, dw_die_ref);
static void gen_struct_or_union_type_die (tree, dw_die_ref);
static void gen_subroutine_type_die (tree, dw_die_ref);
static void gen_typedef_die (tree, dw_die_ref);
static void gen_type_die (tree, dw_die_ref);
static void gen_tagged_type_instantiation_die (tree, dw_die_ref);
static void gen_block_die (tree, dw_die_ref, int);
static void decls_for_scope (tree, dw_die_ref, int);
static int is_redundant_typedef (tree);
static void gen_decl_die (tree, dw_die_ref);
static unsigned lookup_filename (const char *);
static void init_file_table (void);
static void retry_incomplete_types (void);
static void gen_type_die_for_member (tree, tree, dw_die_ref);
static void splice_child_die (dw_die_ref, dw_die_ref);
static int file_info_cmp (const void *, const void *);
static dw_loc_list_ref new_loc_list (dw_loc_descr_ref, const char *, const char *, const char *, unsigned);


static void add_loc_descr_to_loc_list (dw_loc_list_ref *, dw_loc_descr_ref, const char *, const char *, const char *);


static void output_loc_list (dw_loc_list_ref);
static char *gen_internal_sym (const char *);
static void mark_limbo_die_list (void *);
# 3834 "../../../kg++fe/gnu/dwarf2out.c"
static char text_end_label[30];
static char text_section_label[30];
static char abbrev_section_label[30];
static char debug_info_section_label[30];
static char debug_line_section_label[30];
static char macinfo_section_label[30];
static char loc_section_label[30];
static char ranges_section_label[2 * 30];
# 3862 "../../../kg++fe/gnu/dwarf2out.c"
static const char *(*demangle_name_func) (const char *);

void
dwarf2out_set_demangle_name_func (func)
     const char *(*func) (const char *);
{
  demangle_name_func = func;
}



static __inline__ int
is_pseudo_reg (rtl)
     rtx rtl;
{
  return ((((enum rtx_code) (rtl)->code) == REG && (((rtl)->fld[0]).rtuint) >= 176)
   || (((enum rtx_code) (rtl)->code) == SUBREG
       && ((((((rtl)->fld[0]).rtx))->fld[0]).rtuint) >= 176));
}




static __inline__ tree
type_main_variant (type)
     tree type;
{
  type = ((type)->type.main_variant);






  if (((enum tree_code) (type)->common.code) == ARRAY_TYPE)
    while (type != ((type)->type.main_variant))
      type = ((type)->type.main_variant);

  return type;
}



static __inline__ int
is_tagged_type (type)
     tree type;
{
  enum tree_code code = ((enum tree_code) (type)->common.code);

  return (code == RECORD_TYPE || code == UNION_TYPE
   || code == QUAL_UNION_TYPE || code == ENUMERAL_TYPE);
}



static const char *
dwarf_tag_name (tag)
     unsigned tag;
{
  switch (tag)
    {
    case DW_TAG_padding:
      return "DW_TAG_padding";
    case DW_TAG_array_type:
      return "DW_TAG_array_type";
    case DW_TAG_class_type:
      return "DW_TAG_class_type";
    case DW_TAG_entry_point:
      return "DW_TAG_entry_point";
    case DW_TAG_enumeration_type:
      return "DW_TAG_enumeration_type";
    case DW_TAG_formal_parameter:
      return "DW_TAG_formal_parameter";
    case DW_TAG_imported_declaration:
      return "DW_TAG_imported_declaration";
    case DW_TAG_label:
      return "DW_TAG_label";
    case DW_TAG_lexical_block:
      return "DW_TAG_lexical_block";
    case DW_TAG_member:
      return "DW_TAG_member";
    case DW_TAG_pointer_type:
      return "DW_TAG_pointer_type";
    case DW_TAG_reference_type:
      return "DW_TAG_reference_type";
    case DW_TAG_compile_unit:
      return "DW_TAG_compile_unit";
    case DW_TAG_string_type:
      return "DW_TAG_string_type";
    case DW_TAG_structure_type:
      return "DW_TAG_structure_type";
    case DW_TAG_subroutine_type:
      return "DW_TAG_subroutine_type";
    case DW_TAG_typedef:
      return "DW_TAG_typedef";
    case DW_TAG_union_type:
      return "DW_TAG_union_type";
    case DW_TAG_unspecified_parameters:
      return "DW_TAG_unspecified_parameters";
    case DW_TAG_variant:
      return "DW_TAG_variant";
    case DW_TAG_common_block:
      return "DW_TAG_common_block";
    case DW_TAG_common_inclusion:
      return "DW_TAG_common_inclusion";
    case DW_TAG_inheritance:
      return "DW_TAG_inheritance";
    case DW_TAG_inlined_subroutine:
      return "DW_TAG_inlined_subroutine";
    case DW_TAG_module:
      return "DW_TAG_module";
    case DW_TAG_ptr_to_member_type:
      return "DW_TAG_ptr_to_member_type";
    case DW_TAG_set_type:
      return "DW_TAG_set_type";
    case DW_TAG_subrange_type:
      return "DW_TAG_subrange_type";
    case DW_TAG_with_stmt:
      return "DW_TAG_with_stmt";
    case DW_TAG_access_declaration:
      return "DW_TAG_access_declaration";
    case DW_TAG_base_type:
      return "DW_TAG_base_type";
    case DW_TAG_catch_block:
      return "DW_TAG_catch_block";
    case DW_TAG_const_type:
      return "DW_TAG_const_type";
    case DW_TAG_constant:
      return "DW_TAG_constant";
    case DW_TAG_enumerator:
      return "DW_TAG_enumerator";
    case DW_TAG_file_type:
      return "DW_TAG_file_type";
    case DW_TAG_friend:
      return "DW_TAG_friend";
    case DW_TAG_namelist:
      return "DW_TAG_namelist";
    case DW_TAG_namelist_item:
      return "DW_TAG_namelist_item";
    case DW_TAG_packed_type:
      return "DW_TAG_packed_type";
    case DW_TAG_subprogram:
      return "DW_TAG_subprogram";
    case DW_TAG_template_type_param:
      return "DW_TAG_template_type_param";
    case DW_TAG_template_value_param:
      return "DW_TAG_template_value_param";
    case DW_TAG_thrown_type:
      return "DW_TAG_thrown_type";
    case DW_TAG_try_block:
      return "DW_TAG_try_block";
    case DW_TAG_variant_part:
      return "DW_TAG_variant_part";
    case DW_TAG_variable:
      return "DW_TAG_variable";
    case DW_TAG_volatile_type:
      return "DW_TAG_volatile_type";
    case DW_TAG_MIPS_loop:
      return "DW_TAG_MIPS_loop";
    case DW_TAG_format_label:
      return "DW_TAG_format_label";
    case DW_TAG_function_template:
      return "DW_TAG_function_template";
    case DW_TAG_class_template:
      return "DW_TAG_class_template";
    case DW_TAG_GNU_BINCL:
      return "DW_TAG_GNU_BINCL";
    case DW_TAG_GNU_EINCL:
      return "DW_TAG_GNU_EINCL";
    default:
      return "DW_TAG_<unknown>";
    }
}



static const char *
dwarf_attr_name (attr)
     unsigned attr;
{
  switch (attr)
    {
    case DW_AT_sibling:
      return "DW_AT_sibling";
    case DW_AT_location:
      return "DW_AT_location";
    case DW_AT_name:
      return "DW_AT_name";
    case DW_AT_ordering:
      return "DW_AT_ordering";
    case DW_AT_subscr_data:
      return "DW_AT_subscr_data";
    case DW_AT_byte_size:
      return "DW_AT_byte_size";
    case DW_AT_bit_offset:
      return "DW_AT_bit_offset";
    case DW_AT_bit_size:
      return "DW_AT_bit_size";
    case DW_AT_element_list:
      return "DW_AT_element_list";
    case DW_AT_stmt_list:
      return "DW_AT_stmt_list";
    case DW_AT_low_pc:
      return "DW_AT_low_pc";
    case DW_AT_high_pc:
      return "DW_AT_high_pc";
    case DW_AT_language:
      return "DW_AT_language";
    case DW_AT_member:
      return "DW_AT_member";
    case DW_AT_discr:
      return "DW_AT_discr";
    case DW_AT_discr_value:
      return "DW_AT_discr_value";
    case DW_AT_visibility:
      return "DW_AT_visibility";
    case DW_AT_import:
      return "DW_AT_import";
    case DW_AT_string_length:
      return "DW_AT_string_length";
    case DW_AT_common_reference:
      return "DW_AT_common_reference";
    case DW_AT_comp_dir:
      return "DW_AT_comp_dir";
    case DW_AT_const_value:
      return "DW_AT_const_value";
    case DW_AT_containing_type:
      return "DW_AT_containing_type";
    case DW_AT_default_value:
      return "DW_AT_default_value";
    case DW_AT_inline:
      return "DW_AT_inline";
    case DW_AT_is_optional:
      return "DW_AT_is_optional";
    case DW_AT_lower_bound:
      return "DW_AT_lower_bound";
    case DW_AT_producer:
      return "DW_AT_producer";
    case DW_AT_prototyped:
      return "DW_AT_prototyped";
    case DW_AT_return_addr:
      return "DW_AT_return_addr";
    case DW_AT_start_scope:
      return "DW_AT_start_scope";
    case DW_AT_stride_size:
      return "DW_AT_stride_size";
    case DW_AT_upper_bound:
      return "DW_AT_upper_bound";
    case DW_AT_abstract_origin:
      return "DW_AT_abstract_origin";
    case DW_AT_accessibility:
      return "DW_AT_accessibility";
    case DW_AT_address_class:
      return "DW_AT_address_class";
    case DW_AT_artificial:
      return "DW_AT_artificial";
    case DW_AT_base_types:
      return "DW_AT_base_types";
    case DW_AT_calling_convention:
      return "DW_AT_calling_convention";
    case DW_AT_count:
      return "DW_AT_count";
    case DW_AT_data_member_location:
      return "DW_AT_data_member_location";
    case DW_AT_decl_column:
      return "DW_AT_decl_column";
    case DW_AT_decl_file:
      return "DW_AT_decl_file";
    case DW_AT_decl_line:
      return "DW_AT_decl_line";
    case DW_AT_declaration:
      return "DW_AT_declaration";
    case DW_AT_discr_list:
      return "DW_AT_discr_list";
    case DW_AT_encoding:
      return "DW_AT_encoding";
    case DW_AT_external:
      return "DW_AT_external";
    case DW_AT_frame_base:
      return "DW_AT_frame_base";
    case DW_AT_friend:
      return "DW_AT_friend";
    case DW_AT_identifier_case:
      return "DW_AT_identifier_case";
    case DW_AT_macro_info:
      return "DW_AT_macro_info";
    case DW_AT_namelist_items:
      return "DW_AT_namelist_items";
    case DW_AT_priority:
      return "DW_AT_priority";
    case DW_AT_segment:
      return "DW_AT_segment";
    case DW_AT_specification:
      return "DW_AT_specification";
    case DW_AT_static_link:
      return "DW_AT_static_link";
    case DW_AT_type:
      return "DW_AT_type";
    case DW_AT_use_location:
      return "DW_AT_use_location";
    case DW_AT_variable_parameter:
      return "DW_AT_variable_parameter";
    case DW_AT_virtuality:
      return "DW_AT_virtuality";
    case DW_AT_vtable_elem_location:
      return "DW_AT_vtable_elem_location";

    case DW_AT_allocated:
      return "DW_AT_allocated";
    case DW_AT_associated:
      return "DW_AT_associated";
    case DW_AT_data_location:
      return "DW_AT_data_location";
    case DW_AT_stride:
      return "DW_AT_stride";
    case DW_AT_entry_pc:
      return "DW_AT_entry_pc";
    case DW_AT_use_UTF8:
      return "DW_AT_use_UTF8";
    case DW_AT_extension:
      return "DW_AT_extension";
    case DW_AT_ranges:
      return "DW_AT_ranges";
    case DW_AT_trampoline:
      return "DW_AT_trampoline";
    case DW_AT_call_column:
      return "DW_AT_call_column";
    case DW_AT_call_file:
      return "DW_AT_call_file";
    case DW_AT_call_line:
      return "DW_AT_call_line";

    case DW_AT_MIPS_fde:
      return "DW_AT_MIPS_fde";
    case DW_AT_MIPS_loop_begin:
      return "DW_AT_MIPS_loop_begin";
    case DW_AT_MIPS_tail_loop_begin:
      return "DW_AT_MIPS_tail_loop_begin";
    case DW_AT_MIPS_epilog_begin:
      return "DW_AT_MIPS_epilog_begin";
    case DW_AT_MIPS_loop_unroll_factor:
      return "DW_AT_MIPS_loop_unroll_factor";
    case DW_AT_MIPS_software_pipeline_depth:
      return "DW_AT_MIPS_software_pipeline_depth";
    case DW_AT_MIPS_linkage_name:
      return "DW_AT_MIPS_linkage_name";
    case DW_AT_MIPS_stride:
      return "DW_AT_MIPS_stride";
    case DW_AT_MIPS_abstract_name:
      return "DW_AT_MIPS_abstract_name";
    case DW_AT_MIPS_clone_origin:
      return "DW_AT_MIPS_clone_origin";
    case DW_AT_MIPS_has_inlines:
      return "DW_AT_MIPS_has_inlines";

    case DW_AT_sf_names:
      return "DW_AT_sf_names";
    case DW_AT_src_info:
      return "DW_AT_src_info";
    case DW_AT_mac_info:
      return "DW_AT_mac_info";
    case DW_AT_src_coords:
      return "DW_AT_src_coords";
    case DW_AT_body_begin:
      return "DW_AT_body_begin";
    case DW_AT_body_end:
      return "DW_AT_body_end";
    case DW_AT_GNU_vector:
      return "DW_AT_GNU_vector";

    case DW_AT_VMS_rtnbeg_pd_address:
      return "DW_AT_VMS_rtnbeg_pd_address";

    default:
      return "DW_AT_<unknown>";
    }
}



static const char *
dwarf_form_name (form)
     unsigned form;
{
  switch (form)
    {
    case DW_FORM_addr:
      return "DW_FORM_addr";
    case DW_FORM_block2:
      return "DW_FORM_block2";
    case DW_FORM_block4:
      return "DW_FORM_block4";
    case DW_FORM_data2:
      return "DW_FORM_data2";
    case DW_FORM_data4:
      return "DW_FORM_data4";
    case DW_FORM_data8:
      return "DW_FORM_data8";
    case DW_FORM_string:
      return "DW_FORM_string";
    case DW_FORM_block:
      return "DW_FORM_block";
    case DW_FORM_block1:
      return "DW_FORM_block1";
    case DW_FORM_data1:
      return "DW_FORM_data1";
    case DW_FORM_flag:
      return "DW_FORM_flag";
    case DW_FORM_sdata:
      return "DW_FORM_sdata";
    case DW_FORM_strp:
      return "DW_FORM_strp";
    case DW_FORM_udata:
      return "DW_FORM_udata";
    case DW_FORM_ref_addr:
      return "DW_FORM_ref_addr";
    case DW_FORM_ref1:
      return "DW_FORM_ref1";
    case DW_FORM_ref2:
      return "DW_FORM_ref2";
    case DW_FORM_ref4:
      return "DW_FORM_ref4";
    case DW_FORM_ref8:
      return "DW_FORM_ref8";
    case DW_FORM_ref_udata:
      return "DW_FORM_ref_udata";
    case DW_FORM_indirect:
      return "DW_FORM_indirect";
    default:
      return "DW_FORM_<unknown>";
    }
}
# 4332 "../../../kg++fe/gnu/dwarf2out.c"
static tree
decl_ultimate_origin (decl)
     tree decl;
{



  if (((decl)->decl.abstract_flag) && ((decl)->decl.abstract_origin) == decl)
    return (tree) ((void *)0);
# 4349 "../../../kg++fe/gnu/dwarf2out.c"
  return ((decl)->decl.abstract_origin);
}







static tree
block_ultimate_origin (block)
     tree block;
{
  tree immediate_origin = ((block)->block.abstract_origin);




  if (((block)->block.abstract_flag) && immediate_origin == block)
    return (tree) ((void *)0);

  if (immediate_origin == (tree) ((void *)0))
    return (tree) ((void *)0);
  else
    {
      tree ret_val;
      tree lookahead = immediate_origin;

      do
 {
   ret_val = lookahead;
   lookahead = (((enum tree_code) (ret_val)->common.code) == BLOCK
         ? ((ret_val)->block.abstract_origin) : ((void *)0));
 }
      while (lookahead != ((void *)0) && lookahead != ret_val);

      return ret_val;
    }
}





static tree
decl_class_context (decl)
     tree decl;
{
  tree context = (tree) ((void *)0);

  if (((enum tree_code) (decl)->common.code) != FUNCTION_DECL || ! ((decl)->decl.vindex))
    context = ((decl)->decl.context);
  else
    context = ((((((((((decl)->common.type))->type.values))->list.value))->common.type))->type.main_variant);


  if (context && !(tree_code_type[(int) (((enum tree_code) (context)->common.code))] == 't'))
    context = (tree) ((void *)0);

  return context;
}




static __inline__ void
add_dwarf_attr (die, attr)
     dw_die_ref die;
     dw_attr_ref attr;
{
  if (die != ((void *)0) && attr != ((void *)0))
    {
      attr->dw_attr_next = die->die_attr;
      die->die_attr = attr;
    }
}

static __inline__ dw_val_class
AT_class (a)
     dw_attr_ref a;
{
  return a->dw_attr_val.val_class;
}



static __inline__ void
add_AT_flag (die, attr_kind, flag)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     unsigned flag;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_flag;
  attr->dw_attr_val.v.val_flag = flag;
  add_dwarf_attr (die, attr);
}

static __inline__ unsigned
AT_flag (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_flag)
    return a->dw_attr_val.v.val_flag;

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4457, __FUNCTION__);
}



static __inline__ void
add_AT_int (die, attr_kind, int_val)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     long int int_val;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_const;
  attr->dw_attr_val.v.val_int = int_val;
  add_dwarf_attr (die, attr);
}

static __inline__ long int
AT_int (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_const)
    return a->dw_attr_val.v.val_int;

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4484, __FUNCTION__);
}



static __inline__ void
add_AT_unsigned (die, attr_kind, unsigned_val)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     unsigned long unsigned_val;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_unsigned_const;
  attr->dw_attr_val.v.val_unsigned = unsigned_val;
  add_dwarf_attr (die, attr);
}

static __inline__ unsigned long
AT_unsigned (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_unsigned_const)
    return a->dw_attr_val.v.val_unsigned;

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4511, __FUNCTION__);
}



static __inline__ void
add_AT_long_long (die, attr_kind, val_hi, val_low)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     unsigned long val_hi;
     unsigned long val_low;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_long_long;
  attr->dw_attr_val.v.val_long_long.hi = val_hi;
  attr->dw_attr_val.v.val_long_long.low = val_low;
  add_dwarf_attr (die, attr);
}



static __inline__ void
add_AT_float (die, attr_kind, length, array)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     unsigned length;
     long *array;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_float;
  attr->dw_attr_val.v.val_float.length = length;
  attr->dw_attr_val.v.val_float.array = array;
  add_dwarf_attr (die, attr);
}



static __inline__ void
add_AT_string (die, attr_kind, str)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     const char *str;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));
  struct indirect_string_node *node;

  if (! debug_str_hash)
    {
      debug_str_hash = ht_create (10);
      debug_str_hash->alloc_node = indirect_string_alloc;
    }

  node = (struct indirect_string_node *)
  ht_lookup (debug_str_hash, (const unsigned char *) str,
      strlen (str), HT_ALLOC);
  node->refcount++;

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_str;
  attr->dw_attr_val.v.val_str = node;
  add_dwarf_attr (die, attr);
}

static __inline__ const char *
AT_string (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_str)
    return (const char *) ((&a->dw_attr_val.v.val_str->id)->str);

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4588, __FUNCTION__);
}




static int
AT_string_form (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_str)
    {
      struct indirect_string_node *node;
      unsigned int len;
      extern int const_labelno;
      char label[32];

      node = a->dw_attr_val.v.val_str;
      if (node->form)
 return node->form;

      len = ((&node->id)->len) + 1;



      if (len <= 4 || node->refcount == 0)
 return node->form = DW_FORM_string;




      if (((0x00400 | 0x08000 | 0x10000 | 1) & 0x08000) == 0
   && (len - 4) * node->refcount <= len)
 return node->form = DW_FORM_string;

      sprintf ((label), "*%s%s%ld", ("$"), ("LC"), (long)(const_labelno));
      ++const_labelno;
      node->label = xstrdup (label);

      return node->form = DW_FORM_strp;
    }

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4630, __FUNCTION__);
}



static __inline__ void
add_AT_die_ref (die, attr_kind, targ_die)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     dw_die_ref targ_die;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_die_ref;
  attr->dw_attr_val.v.val_die_ref.die = targ_die;
  attr->dw_attr_val.v.val_die_ref.external = 0;
  add_dwarf_attr (die, attr);
}

static __inline__ dw_die_ref
AT_ref (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_die_ref)
    return a->dw_attr_val.v.val_die_ref.die;

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4658, __FUNCTION__);
}

static __inline__ int
AT_ref_external (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_die_ref)
    return a->dw_attr_val.v.val_die_ref.external;

  return 0;
}

static __inline__ void
set_AT_ref_external (a, i)
     dw_attr_ref a;
     int i;
{
  if (a && AT_class (a) == dw_val_class_die_ref)
    a->dw_attr_val.v.val_die_ref.external = i;
  else
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4679, __FUNCTION__);
}



static __inline__ void
add_AT_fde_ref (die, attr_kind, targ_fde)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     unsigned targ_fde;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_fde_ref;
  attr->dw_attr_val.v.val_fde_index = targ_fde;
  add_dwarf_attr (die, attr);
}



static __inline__ void
add_AT_loc (die, attr_kind, loc)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     dw_loc_descr_ref loc;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_loc;
  attr->dw_attr_val.v.val_loc = loc;
  add_dwarf_attr (die, attr);
}

static __inline__ dw_loc_descr_ref
AT_loc (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_loc)
    return a->dw_attr_val.v.val_loc;

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4723, __FUNCTION__);
}

static __inline__ void
add_AT_loc_list (die, attr_kind, loc_list)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     dw_loc_list_ref loc_list;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_loc_list;
  attr->dw_attr_val.v.val_loc_list = loc_list;
  add_dwarf_attr (die, attr);
  have_location_lists = 1;
}

static __inline__ dw_loc_list_ref
AT_loc_list (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_loc_list)
    return a->dw_attr_val.v.val_loc_list;

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4749, __FUNCTION__);
}



static __inline__ void
add_AT_addr (die, attr_kind, addr)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     rtx addr;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_addr;
  attr->dw_attr_val.v.val_addr = addr;
  add_dwarf_attr (die, attr);
}

static __inline__ rtx
AT_addr (a)
     dw_attr_ref a;
{
  if (a && AT_class (a) == dw_val_class_addr)
    return a->dw_attr_val.v.val_addr;

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4776, __FUNCTION__);
}



static __inline__ void
add_AT_lbl_id (die, attr_kind, lbl_id)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     const char *lbl_id;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_lbl_id;
  attr->dw_attr_val.v.val_lbl_id = xstrdup (lbl_id);
  add_dwarf_attr (die, attr);
}



static __inline__ void
add_AT_lbl_offset (die, attr_kind, label)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     const char *label;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_lbl_offset;
  attr->dw_attr_val.v.val_lbl_id = xstrdup (label);
  add_dwarf_attr (die, attr);
}



static __inline__ void
add_AT_offset (die, attr_kind, offset)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     unsigned long offset;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_offset;
  attr->dw_attr_val.v.val_offset = offset;
  add_dwarf_attr (die, attr);
}



static void
add_AT_range_list (die, attr_kind, offset)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     unsigned long offset;
{
  dw_attr_ref attr = (dw_attr_ref) xmalloc (sizeof (dw_attr_node));

  attr->dw_attr_next = ((void *)0);
  attr->dw_attr = attr_kind;
  attr->dw_attr_val.val_class = dw_val_class_range_list;
  attr->dw_attr_val.v.val_offset = offset;
  add_dwarf_attr (die, attr);
}

static __inline__ const char *
AT_lbl (a)
     dw_attr_ref a;
{
  if (a && (AT_class (a) == dw_val_class_lbl_id
     || AT_class (a) == dw_val_class_lbl_offset))
    return a->dw_attr_val.v.val_lbl_id;

  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 4855, __FUNCTION__);
}



static __inline__ dw_attr_ref
get_AT (die, attr_kind)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
{
  dw_attr_ref a;
  dw_die_ref spec = ((void *)0);

  if (die != ((void *)0))
    {
      for (a = die->die_attr; a != ((void *)0); a = a->dw_attr_next)
 if (a->dw_attr == attr_kind)
   return a;
 else if (a->dw_attr == DW_AT_specification
   || a->dw_attr == DW_AT_abstract_origin)
   spec = AT_ref (a);

      if (spec)
 return get_AT (spec, attr_kind);
    }

  return ((void *)0);
}





static __inline__ const char *
get_AT_low_pc (die)
     dw_die_ref die;
{
  dw_attr_ref a = get_AT (die, DW_AT_low_pc);

  return a ? AT_lbl (a) : ((void *)0);
}





static __inline__ const char *
get_AT_hi_pc (die)
     dw_die_ref die;
{
  dw_attr_ref a = get_AT (die, DW_AT_high_pc);

  return a ? AT_lbl (a) : ((void *)0);
}




static __inline__ const char *
get_AT_string (die, attr_kind)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
{
  dw_attr_ref a = get_AT (die, attr_kind);

  return a ? AT_string (a) : ((void *)0);
}




static __inline__ int
get_AT_flag (die, attr_kind)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
{
  dw_attr_ref a = get_AT (die, attr_kind);

  return a ? AT_flag (a) : 0;
}




static __inline__ unsigned
get_AT_unsigned (die, attr_kind)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
{
  dw_attr_ref a = get_AT (die, attr_kind);

  return a ? AT_unsigned (a) : 0;
}

static __inline__ dw_die_ref
get_AT_ref (die, attr_kind)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
{
  dw_attr_ref a = get_AT (die, attr_kind);

  return a ? AT_ref (a) : ((void *)0);
}

static __inline__ int
is_c_family ()
{
  unsigned lang = get_AT_unsigned (comp_unit_die, DW_AT_language);

  return (lang == DW_LANG_C || lang == DW_LANG_C89
   || lang == DW_LANG_C_plus_plus);
}

static __inline__ int
is_cxx ()
{
  return (get_AT_unsigned (comp_unit_die, DW_AT_language)
   == DW_LANG_C_plus_plus);
}

static __inline__ int
is_fortran ()
{
  unsigned lang = get_AT_unsigned (comp_unit_die, DW_AT_language);

  return (lang == DW_LANG_Fortran77 || lang == DW_LANG_Fortran90);
}

static __inline__ int
is_java ()
{
  unsigned lang = get_AT_unsigned (comp_unit_die, DW_AT_language);

  return (lang == DW_LANG_Java);
}



static __inline__ void free_AT (dw_attr_ref);
static __inline__ void
free_AT (a)
     dw_attr_ref a;
{
  switch (AT_class (a))
    {
    case dw_val_class_str:
      if (a->dw_attr_val.v.val_str->refcount)
 a->dw_attr_val.v.val_str->refcount--;
      break;

    case dw_val_class_lbl_id:
    case dw_val_class_lbl_offset:
      free (a->dw_attr_val.v.val_lbl_id);
      break;

    case dw_val_class_float:
      free (a->dw_attr_val.v.val_float.array);
      break;

    default:
      break;
    }

  free (a);
}



static void
remove_AT (die, attr_kind)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
{
  dw_attr_ref *p;
  dw_attr_ref removed = ((void *)0);

  if (die != ((void *)0))
    {
      for (p = &(die->die_attr); *p; p = &((*p)->dw_attr_next))
 if ((*p)->dw_attr == attr_kind)
   {
     removed = *p;
     *p = (*p)->dw_attr_next;
     break;
   }

      if (removed != 0)
 free_AT (removed);
    }
}



static __inline__ void
free_die (die)
     dw_die_ref die;
{
  remove_children (die);
  free (die);
}



static void
remove_children (die)
     dw_die_ref die;
{
  dw_die_ref child_die = die->die_child;

  die->die_child = ((void *)0);

  while (child_die != ((void *)0))
    {
      dw_die_ref tmp_die = child_die;
      dw_attr_ref a;

      child_die = child_die->die_sib;

      for (a = tmp_die->die_attr; a != ((void *)0);)
 {
   dw_attr_ref tmp_a = a;

   a = a->dw_attr_next;
   free_AT (tmp_a);
 }

      free_die (tmp_die);
    }
}




static __inline__ void
add_child_die (die, child_die)
     dw_die_ref die;
     dw_die_ref child_die;
{
  if (die != ((void *)0) && child_die != ((void *)0))
    {
      if (die == child_die)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 5096, __FUNCTION__);

      child_die->die_parent = die;
      child_die->die_sib = die->die_child;
      die->die_child = child_die;
    }
}




static void
splice_child_die (parent, child)
     dw_die_ref parent, child;
{
  dw_die_ref *p;



  if (child->die_parent != parent)
    {
      dw_die_ref tmp = get_AT_ref (child, DW_AT_specification);

      if (tmp)
 child = tmp;
    }

  if (child->die_parent != parent
      && child->die_parent != get_AT_ref (parent, DW_AT_specification))
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 5125, __FUNCTION__);

  for (p = &(child->die_parent->die_child); *p; p = &((*p)->die_sib))
    if (*p == child)
      {
 *p = child->die_sib;
 break;
      }

  child->die_sib = parent->die_child;
  parent->die_child = child;
}



static __inline__ dw_die_ref
new_die (tag_value, parent_die, t)
     enum dwarf_tag tag_value;
     dw_die_ref parent_die;
     tree t;
{
  dw_die_ref die = (dw_die_ref) xcalloc (1, sizeof (die_node));

  die->die_tag = tag_value;

  if (parent_die != ((void *)0))
    add_child_die (parent_die, die);
  else
    {
      limbo_die_node *limbo_node;

      limbo_node = (limbo_die_node *) xmalloc (sizeof (limbo_die_node));
      limbo_node->die = die;
      limbo_node->created_for = t;
      limbo_node->next = limbo_die_list;
      limbo_die_list = limbo_node;
    }

  return die;
}



static __inline__ dw_die_ref
lookup_type_die (type)
     tree type;
{
  return ((type)->type.symtab.die);
}



static __inline__ void
equate_type_number_to_die (type, type_die)
     tree type;
     dw_die_ref type_die;
{
  ((type)->type.symtab.die) = type_die;
}



static __inline__ dw_die_ref
lookup_decl_die (decl)
     tree decl;
{
  unsigned decl_id = ((decl)->decl.uid);

  return (decl_id < decl_die_table_in_use ? decl_die_table[decl_id] : ((void *)0));
}



static void
equate_decl_number_to_die (decl, decl_die)
     tree decl;
     dw_die_ref decl_die;
{
  unsigned int decl_id = ((decl)->decl.uid);
  unsigned int num_allocated;

  if (decl_id >= decl_die_table_allocated)
    {
      num_allocated
 = ((decl_id + 1 + 256 - 1)
    / 256)
   * 256;

      decl_die_table
 = (dw_die_ref *) xrealloc (decl_die_table,
       sizeof (dw_die_ref) * num_allocated);

      memset ((char *) &decl_die_table[decl_die_table_allocated], 0,
      (num_allocated - decl_die_table_allocated) * sizeof (dw_die_ref));
      decl_die_table_allocated = num_allocated;
    }

  if (decl_id >= decl_die_table_in_use)
    decl_die_table_in_use = (decl_id + 1);

  decl_die_table[decl_id] = decl_die;
}




static int print_indent;



static __inline__ void
print_spaces (outfile)
     FILE *outfile;
{
  fprintf (outfile, "%*s", print_indent, "");
}




static void
print_die (die, outfile)
     dw_die_ref die;
     FILE *outfile;
{
  dw_attr_ref a;
  dw_die_ref c;

  print_spaces (outfile);
  fprintf (outfile, "DIE %4lu: %s\n",
    die->die_offset, dwarf_tag_name (die->die_tag));
  print_spaces (outfile);
  fprintf (outfile, "  abbrev id: %lu", die->die_abbrev);
  fprintf (outfile, " offset: %lu\n", die->die_offset);

  for (a = die->die_attr; a != ((void *)0); a = a->dw_attr_next)
    {
      print_spaces (outfile);
      fprintf (outfile, "  %s: ", dwarf_attr_name (a->dw_attr));

      switch (AT_class (a))
 {
 case dw_val_class_addr:
   fprintf (outfile, "address");
   break;
 case dw_val_class_offset:
   fprintf (outfile, "offset");
   break;
 case dw_val_class_loc:
   fprintf (outfile, "location descriptor");
   break;
 case dw_val_class_loc_list:
   fprintf (outfile, "location list -> label:%s",
     AT_loc_list (a)->ll_symbol);
   break;
 case dw_val_class_range_list:
   fprintf (outfile, "range list");
   break;
 case dw_val_class_const:
   fprintf (outfile, "%ld", AT_int (a));
   break;
 case dw_val_class_unsigned_const:
   fprintf (outfile, "%lu", AT_unsigned (a));
   break;
 case dw_val_class_long_long:
   fprintf (outfile, "constant (%lu,%lu)",
     a->dw_attr_val.v.val_long_long.hi,
     a->dw_attr_val.v.val_long_long.low);
   break;
 case dw_val_class_float:
   fprintf (outfile, "floating-point constant");
   break;
 case dw_val_class_flag:
   fprintf (outfile, "%u", AT_flag (a));
   break;
 case dw_val_class_die_ref:
   if (AT_ref (a) != ((void *)0))
     {
       if (AT_ref (a)->die_symbol)
  fprintf (outfile, "die -> label: %s", AT_ref (a)->die_symbol);
       else
  fprintf (outfile, "die -> %lu", AT_ref (a)->die_offset);
     }
   else
     fprintf (outfile, "die -> <null>");
   break;
 case dw_val_class_lbl_id:
 case dw_val_class_lbl_offset:
   fprintf (outfile, "label: %s", AT_lbl (a));
   break;
 case dw_val_class_str:
   if (AT_string (a) != ((void *)0))
     fprintf (outfile, "\"%s\"", AT_string (a));
   else
     fprintf (outfile, "<null>");
   break;
 default:
   break;
 }

      fprintf (outfile, "\n");
    }

  if (die->die_child != ((void *)0))
    {
      print_indent += 4;
      for (c = die->die_child; c != ((void *)0); c = c->die_sib)
 print_die (c, outfile);

      print_indent -= 4;
    }
  if (print_indent == 0)
    fprintf (outfile, "\n");
}




static void
print_dwarf_line_table (outfile)
     FILE *outfile;
{
  unsigned i;
  dw_line_info_ref line_info;

  fprintf (outfile, "\n\nDWARF source line information\n");
  for (i = 1; i < line_info_table_in_use; i++)
    {
      line_info = &line_info_table[i];
      fprintf (outfile, "%5d: ", i);
      fprintf (outfile, "%-20s", file_table.table[line_info->dw_file_num]);
      fprintf (outfile, "%6ld", line_info->dw_line_num);
      fprintf (outfile, "\n");
    }

  fprintf (outfile, "\n\n");
}



void
debug_dwarf_die (die)
     dw_die_ref die;
{
  print_die (die, stderr);
}




void
debug_dwarf ()
{
  print_indent = 0;
  print_die (comp_unit_die, stderr);
  if (! 1)
    print_dwarf_line_table (stderr);
}





static void
reverse_die_lists (die)
     dw_die_ref die;
{
  dw_die_ref c, cp, cn;
  dw_attr_ref a, ap, an;

  for (a = die->die_attr, ap = 0; a; a = an)
    {
      an = a->dw_attr_next;
      a->dw_attr_next = ap;
      ap = a;
    }

  die->die_attr = ap;

  for (c = die->die_child, cp = 0; c; c = cn)
    {
      cn = c->die_sib;
      c->die_sib = cp;
      cp = c;
    }

  die->die_child = cp;
}







static void
reverse_all_dies (die)
     dw_die_ref die;
{
  dw_die_ref c;

  reverse_die_lists (die);

  for (c = die->die_child; c; c = c->die_sib)
    reverse_all_dies (c);
}





static dw_die_ref
push_new_compile_unit (old_unit, bincl_die)
     dw_die_ref old_unit, bincl_die;
{
  const char *filename = get_AT_string (bincl_die, DW_AT_name);
  dw_die_ref new_unit = gen_compile_unit_die (filename);

  new_unit->die_sib = old_unit;
  return new_unit;
}



static dw_die_ref
pop_compile_unit (old_unit)
     dw_die_ref old_unit;
{
  dw_die_ref new_unit = old_unit->die_sib;

  old_unit->die_sib = ((void *)0);
  return new_unit;
}






static __inline__ void
loc_checksum (loc, ctx)
     dw_loc_descr_ref loc;
     struct md5_ctx *ctx;
{
  md5_process_bytes (&(loc->dw_loc_opc), sizeof (loc->dw_loc_opc), ctx);
  md5_process_bytes (&(loc->dw_loc_oprnd1), sizeof (loc->dw_loc_oprnd1), ctx);
  md5_process_bytes (&(loc->dw_loc_oprnd2), sizeof (loc->dw_loc_oprnd2), ctx);
}



static void
attr_checksum (at, ctx, mark)
     dw_attr_ref at;
     struct md5_ctx *ctx;
     int *mark;
{
  dw_loc_descr_ref loc;
  rtx r;

  md5_process_bytes (&(at->dw_attr), sizeof (at->dw_attr), ctx);


  if (at->dw_attr == DW_AT_decl_file


      || at->dw_attr == DW_AT_producer)
    return;

  switch (AT_class (at))
    {
    case dw_val_class_const:
      md5_process_bytes (&(at->dw_attr_val.v.val_int), sizeof (at->dw_attr_val.v.val_int), ctx);
      break;
    case dw_val_class_unsigned_const:
      md5_process_bytes (&(at->dw_attr_val.v.val_unsigned), sizeof (at->dw_attr_val.v.val_unsigned), ctx);
      break;
    case dw_val_class_long_long:
      md5_process_bytes (&(at->dw_attr_val.v.val_long_long), sizeof (at->dw_attr_val.v.val_long_long), ctx);
      break;
    case dw_val_class_float:
      md5_process_bytes (&(at->dw_attr_val.v.val_float), sizeof (at->dw_attr_val.v.val_float), ctx);
      break;
    case dw_val_class_flag:
      md5_process_bytes (&(at->dw_attr_val.v.val_flag), sizeof (at->dw_attr_val.v.val_flag), ctx);
      break;
    case dw_val_class_str:
      md5_process_bytes ((AT_string (at)), strlen (AT_string (at)), ctx);
      break;

    case dw_val_class_addr:
      r = AT_addr (at);
      switch (((enum rtx_code) (r)->code))
 {
 case SYMBOL_REF:
   md5_process_bytes (((((r)->fld[0]).rtstr)), strlen ((((r)->fld[0]).rtstr)), ctx);
   break;

 default:
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 5524, __FUNCTION__);
 }
      break;

    case dw_val_class_offset:
      md5_process_bytes (&(at->dw_attr_val.v.val_offset), sizeof (at->dw_attr_val.v.val_offset), ctx);
      break;

    case dw_val_class_loc:
      for (loc = AT_loc (at); loc; loc = loc->dw_loc_next)
 loc_checksum (loc, ctx);
      break;

    case dw_val_class_die_ref:
      die_checksum (AT_ref (at), ctx, mark);
      break;

    case dw_val_class_fde_ref:
    case dw_val_class_lbl_id:
    case dw_val_class_lbl_offset:
      break;

    default:
      break;
    }
}



static void
die_checksum (die, ctx, mark)
     dw_die_ref die;
     struct md5_ctx *ctx;
     int *mark;
{
  dw_die_ref c;
  dw_attr_ref a;


  if (die->die_mark)
    {
      md5_process_bytes (&(die->die_mark), sizeof (die->die_mark), ctx);
      return;
    }
  die->die_mark = ++(*mark);

  md5_process_bytes (&(die->die_tag), sizeof (die->die_tag), ctx);

  for (a = die->die_attr; a; a = a->dw_attr_next)
    attr_checksum (a, ctx, mark);

  for (c = die->die_child; c; c = c->die_sib)
    die_checksum (c, ctx, mark);
}





static __inline__ int
same_loc_p (loc1, loc2, mark)
     dw_loc_descr_ref loc1;
     dw_loc_descr_ref loc2;
     int *mark;
{
  return loc1->dw_loc_opc == loc2->dw_loc_opc
  && same_dw_val_p (&loc1->dw_loc_oprnd1, &loc2->dw_loc_oprnd1, mark)
  && same_dw_val_p (&loc1->dw_loc_oprnd2, &loc2->dw_loc_oprnd2, mark);
}


static int
same_dw_val_p (v1, v2, mark)
     dw_val_node *v1;
     dw_val_node *v2;
     int *mark;
{
  dw_loc_descr_ref loc1, loc2;
  rtx r1, r2;
  unsigned i;

  if (v1->val_class != v2->val_class)
    return 0;

  switch (v1->val_class)
    {
    case dw_val_class_const:
      return v1->v.val_int == v2->v.val_int;
    case dw_val_class_unsigned_const:
      return v1->v.val_unsigned == v2->v.val_unsigned;
    case dw_val_class_long_long:
      return v1->v.val_long_long.hi == v2->v.val_long_long.hi
             && v1->v.val_long_long.low == v2->v.val_long_long.low;
    case dw_val_class_float:
      if (v1->v.val_float.length != v2->v.val_float.length)
 return 0;
      for (i = 0; i < v1->v.val_float.length; i++)
        if (v1->v.val_float.array[i] != v2->v.val_float.array[i])
   return 0;
      return 1;
    case dw_val_class_flag:
      return v1->v.val_flag == v2->v.val_flag;
    case dw_val_class_str:
      return !strcmp((const char *) ((&v1->v.val_str->id)->str),
       (const char *) ((&v2->v.val_str->id)->str));

    case dw_val_class_addr:
      r1 = v1->v.val_addr;
      r2 = v2->v.val_addr;
      if (((enum rtx_code) (r1)->code) != ((enum rtx_code) (r2)->code))
 return 0;
      switch (((enum rtx_code) (r1)->code))
 {
 case SYMBOL_REF:
   return !strcmp ((((r1)->fld[0]).rtstr), (((r2)->fld[0]).rtstr));

 default:
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 5641, __FUNCTION__);
 }

    case dw_val_class_offset:
      return v1->v.val_offset == v2->v.val_offset;

    case dw_val_class_loc:
      for (loc1 = v1->v.val_loc, loc2 = v2->v.val_loc;
    loc1 && loc2;
    loc1 = loc1->dw_loc_next, loc2 = loc2->dw_loc_next)
 if (!same_loc_p (loc1, loc2, mark))
   return 0;
      return !loc1 && !loc2;

    case dw_val_class_die_ref:
      return same_die_p (v1->v.val_die_ref.die, v2->v.val_die_ref.die, mark);

    case dw_val_class_fde_ref:
    case dw_val_class_lbl_id:
    case dw_val_class_lbl_offset:
      return 1;

    default:
      return 1;
    }
}



static int
same_attr_p (at1, at2, mark)
     dw_attr_ref at1;
     dw_attr_ref at2;
     int *mark;
{
  if (at1->dw_attr != at2->dw_attr)
    return 0;


  if (at1->dw_attr == DW_AT_decl_file


      || at1->dw_attr == DW_AT_producer)
    return 1;

  return same_dw_val_p (&at1->dw_attr_val, &at2->dw_attr_val, mark);
}



static int
same_die_p (die1, die2, mark)
     dw_die_ref die1;
     dw_die_ref die2;
     int *mark;
{
  dw_die_ref c1, c2;
  dw_attr_ref a1, a2;


  if (die1->die_mark)
    return die1->die_mark == die2->die_mark;
  die1->die_mark = die2->die_mark = ++(*mark);

  if (die1->die_tag != die2->die_tag)
    return 0;

  for (a1 = die1->die_attr, a2 = die2->die_attr;
       a1 && a2;
       a1 = a1->dw_attr_next, a2 = a2->dw_attr_next)
    if (!same_attr_p (a1, a2, mark))
      return 0;
  if (a1 || a2)
    return 0;

  for (c1 = die1->die_child, c2 = die2->die_child;
       c1 && c2;
       c1 = c1->die_sib, c2 = c2->die_sib)
    if (!same_die_p (c1, c2, mark))
      return 0;
  if (c1 || c2)
    return 0;

  return 1;
}



static int
same_die_p_wrap (die1, die2)
     dw_die_ref die1;
     dw_die_ref die2;
{
  int mark = 0;
  int ret = same_die_p (die1, die2, &mark);

  unmark_all_dies (die1);
  unmark_all_dies (die2);

  return ret;
}



static char *comdat_symbol_id;


static unsigned int comdat_symbol_number;




static void
compute_section_prefix (unit_die)
     dw_die_ref unit_die;
{
  const char *die_name = get_AT_string (unit_die, DW_AT_name);
  const char *base = die_name ? lbasename (die_name) : "anonymous";
  char *name = (char *) __builtin_alloca(strlen (base) + 64);
  char *p;
  int i, mark;
  unsigned char checksum[16];
  struct md5_ctx ctx;




  md5_init_ctx (&ctx);
  mark = 0;
  die_checksum (unit_die, &ctx, &mark);
  unmark_all_dies (unit_die);
  md5_finish_ctx (&ctx, checksum);

  sprintf (name, "%s.", base);
  clean_symbol_name (name);

  p = name + strlen (name);
  for (i = 0; i < 4; i++)
    {
      sprintf (p, "%.2x", checksum[i]);
      p += 2;
    }

  comdat_symbol_id = unit_die->die_symbol = xstrdup (name);
  comdat_symbol_number = 0;
}



static int
is_type_die (die)
     dw_die_ref die;
{
  switch (die->die_tag)
    {
    case DW_TAG_array_type:
    case DW_TAG_class_type:
    case DW_TAG_enumeration_type:
    case DW_TAG_pointer_type:
    case DW_TAG_reference_type:
    case DW_TAG_string_type:
    case DW_TAG_structure_type:
    case DW_TAG_subroutine_type:
    case DW_TAG_union_type:
    case DW_TAG_ptr_to_member_type:
    case DW_TAG_set_type:
    case DW_TAG_subrange_type:
    case DW_TAG_base_type:
    case DW_TAG_const_type:
    case DW_TAG_file_type:
    case DW_TAG_packed_type:
    case DW_TAG_volatile_type:
    case DW_TAG_typedef:
      return 1;
    default:
      return 0;
    }
}






static int
is_comdat_die (c)
     dw_die_ref c;
{





  if (c->die_tag == DW_TAG_base_type)
    return 0;

  if (c->die_tag == DW_TAG_pointer_type
      || c->die_tag == DW_TAG_reference_type
      || c->die_tag == DW_TAG_const_type
      || c->die_tag == DW_TAG_volatile_type)
    {
      dw_die_ref t = get_AT_ref (c, DW_AT_type);

      return t ? is_comdat_die (t) : 0;
    }

  return is_type_die (c);
}




static int
is_symbol_die (c)
     dw_die_ref c;
{
  return (is_type_die (c)
   || (get_AT (c, DW_AT_declaration)
       && !get_AT (c, DW_AT_specification)));
}

static char *
gen_internal_sym (prefix)
     const char *prefix;
{
  char buf[256];
  static int label_num;

  sprintf ((buf), "*%s%s%ld", ("$"), (prefix), (long)(label_num++));
  return xstrdup (buf);
}



static void
assign_symbol_names (die)
     dw_die_ref die;
{
  dw_die_ref c;

  if (is_symbol_die (die))
    {
      if (comdat_symbol_id)
 {
   char *p = __builtin_alloca(strlen (comdat_symbol_id) + 64);

   sprintf (p, "%s.%s.%x", "DW",
     comdat_symbol_id, comdat_symbol_number++);
   die->die_symbol = xstrdup (p);
 }
      else
 die->die_symbol = gen_internal_sym ("LDIE");
    }

  for (c = die->die_child; c != ((void *)0); c = c->die_sib)
    assign_symbol_names (c);
}

struct cu_hash_table_entry
{
  dw_die_ref cu;
  unsigned min_comdat_num, max_comdat_num;
  struct cu_hash_table_entry *next;
};


static hashval_t
htab_cu_hash (of)
     const void *of;
{
  const struct cu_hash_table_entry *entry = of;

  return htab_hash_string (entry->cu->die_symbol);
}

static int
htab_cu_eq (of1, of2)
     const void *of1;
     const void *of2;
{
  const struct cu_hash_table_entry *entry1 = of1;
  const struct die_struct *entry2 = of2;

  return !strcmp (entry1->cu->die_symbol, entry2->die_symbol);
}

static void
htab_cu_del (what)
     void *what;
{
  struct cu_hash_table_entry *next, *entry = what;

  while (entry)
    {
      next = entry->next;
      free (entry);
      entry = next;
    }
}



static int
check_duplicate_cu (cu, htable, sym_num)
     dw_die_ref cu;
     htab_t htable;
     unsigned *sym_num;
{
  struct cu_hash_table_entry dummy;
  struct cu_hash_table_entry **slot, *entry, *last = &dummy;

  dummy.max_comdat_num = 0;

  slot = (struct cu_hash_table_entry **)
    htab_find_slot_with_hash (htable, cu, htab_hash_string (cu->die_symbol),
 INSERT);
  entry = *slot;

  for (; entry; last = entry, entry = entry->next)
    {
      if (same_die_p_wrap (cu, entry->cu))
 break;
    }

  if (entry)
    {
      *sym_num = entry->min_comdat_num;
      return 1;
    }

  entry = xcalloc (1, sizeof (struct cu_hash_table_entry));
  entry->cu = cu;
  entry->min_comdat_num = *sym_num = last->max_comdat_num;
  entry->next = *slot;
  *slot = entry;

  return 0;
}


static void
record_comdat_symbol_number (cu, htable, sym_num)
     dw_die_ref cu;
     htab_t htable;
     unsigned sym_num;
{
  struct cu_hash_table_entry **slot, *entry;

  slot = (struct cu_hash_table_entry **)
    htab_find_slot_with_hash (htable, cu, htab_hash_string (cu->die_symbol),
 NO_INSERT);
  entry = *slot;

  entry->max_comdat_num = sym_num;
}





static void
break_out_includes (die)
     dw_die_ref die;
{
  dw_die_ref *ptr;
  dw_die_ref unit = ((void *)0);
  limbo_die_node *node, **pnode;
  htab_t cu_hash_table;

  for (ptr = &(die->die_child); *ptr;)
    {
      dw_die_ref c = *ptr;

      if (c->die_tag == DW_TAG_GNU_BINCL || c->die_tag == DW_TAG_GNU_EINCL
   || (unit && is_comdat_die (c)))
 {

   *ptr = c->die_sib;

   if (c->die_tag == DW_TAG_GNU_BINCL)
     {
       unit = push_new_compile_unit (unit, c);
       free_die (c);
     }
   else if (c->die_tag == DW_TAG_GNU_EINCL)
     {
       unit = pop_compile_unit (unit);
       free_die (c);
     }
   else
     add_child_die (unit, c);
 }
      else
 {

   ptr = &(c->die_sib);
   continue;
 }
    }
# 6048 "../../../kg++fe/gnu/dwarf2out.c"
  assign_symbol_names (die);
  cu_hash_table = htab_create (10, htab_cu_hash, htab_cu_eq, htab_cu_del);
  for (node = limbo_die_list, pnode = &limbo_die_list;
       node;
       node = node->next)
    {
      int is_dupl;

      compute_section_prefix (node->die);
      is_dupl = check_duplicate_cu (node->die, cu_hash_table,
   &comdat_symbol_number);
      assign_symbol_names (node->die);
      if (is_dupl)
 *pnode = node->next;
      else
        {
   pnode = &node->next;
   record_comdat_symbol_number (node->die, cu_hash_table,
  comdat_symbol_number);
 }
    }
  htab_delete (cu_hash_table);
}





static void
add_sibling_attributes (die)
     dw_die_ref die;
{
  dw_die_ref c;

  if (die->die_tag != DW_TAG_compile_unit
      && die->die_sib && die->die_child != ((void *)0))

    add_AT_die_ref (die, DW_AT_sibling, die->die_sib);

  for (c = die->die_child; c != ((void *)0); c = c->die_sib)
    add_sibling_attributes (c);
}



static void
output_location_lists (die)
     dw_die_ref die;
{
  dw_die_ref c;
  dw_attr_ref d_attr;

  for (d_attr = die->die_attr; d_attr; d_attr = d_attr->dw_attr_next)
    if (AT_class (d_attr) == dw_val_class_loc_list)
      output_loc_list (AT_loc_list (d_attr));

  for (c = die->die_child; c != ((void *)0); c = c->die_sib)
    output_location_lists (c);

}






static void
build_abbrev_table (die)
     dw_die_ref die;
{
  unsigned long abbrev_id;
  unsigned int n_alloc;
  dw_die_ref c;
  dw_attr_ref d_attr, a_attr;



  for (d_attr = die->die_attr; d_attr; d_attr = d_attr->dw_attr_next)
    if (AT_class (d_attr) == dw_val_class_die_ref
 && AT_ref (d_attr)->die_mark == 0)
      {
 if (AT_ref (d_attr)->die_symbol == 0)
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6130, __FUNCTION__);

 set_AT_ref_external (d_attr, 1);
      }

  for (abbrev_id = 1; abbrev_id < abbrev_die_table_in_use; ++abbrev_id)
    {
      dw_die_ref abbrev = abbrev_die_table[abbrev_id];

      if (abbrev->die_tag == die->die_tag)
 {
   if ((abbrev->die_child != ((void *)0)) == (die->die_child != ((void *)0)))
     {
       a_attr = abbrev->die_attr;
       d_attr = die->die_attr;

       while (a_attr != ((void *)0) && d_attr != ((void *)0))
  {
    if ((a_attr->dw_attr != d_attr->dw_attr)
        || (value_format (a_attr) != value_format (d_attr)))
      break;

    a_attr = a_attr->dw_attr_next;
    d_attr = d_attr->dw_attr_next;
  }

       if (a_attr == ((void *)0) && d_attr == ((void *)0))
  break;
     }
 }
    }

  if (abbrev_id >= abbrev_die_table_in_use)
    {
      if (abbrev_die_table_in_use >= abbrev_die_table_allocated)
 {
   n_alloc = abbrev_die_table_allocated + 256;
   abbrev_die_table
     = (dw_die_ref *) xrealloc (abbrev_die_table,
           sizeof (dw_die_ref) * n_alloc);

   memset ((char *) &abbrev_die_table[abbrev_die_table_allocated], 0,
   (n_alloc - abbrev_die_table_allocated) * sizeof (dw_die_ref));
   abbrev_die_table_allocated = n_alloc;
 }

      ++abbrev_die_table_in_use;
      abbrev_die_table[abbrev_id] = die;
    }

  die->die_abbrev = abbrev_id;
  for (c = die->die_child; c != ((void *)0); c = c->die_sib)
    build_abbrev_table (c);
}



static int
constant_size (value)
     long unsigned value;
{
  int log;

  if (value == 0)
    log = 0;
  else
    log = floor_log2_wide ((unsigned long long) (value));

  log = log / 8;
  log = 1 << (floor_log2_wide ((unsigned long long) (log)) + 1);

  return log;
}




static unsigned long
size_of_die (die)
     dw_die_ref die;
{
  unsigned long size = 0;
  dw_attr_ref a;

  size += size_of_uleb128 (die->die_abbrev);
  for (a = die->die_attr; a != ((void *)0); a = a->dw_attr_next)
    {
      switch (AT_class (a))
 {
 case dw_val_class_addr:
   size += (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8);
   break;
 case dw_val_class_offset:
   size += 4;
   break;
 case dw_val_class_loc:
   {
     unsigned long lsize = size_of_locs (AT_loc (a));


     size += constant_size (lsize);
     size += lsize;
   }
   break;
 case dw_val_class_loc_list:
   size += 4;
   break;
 case dw_val_class_range_list:
   size += 4;
   break;
 case dw_val_class_const:
   size += size_of_sleb128 (AT_int (a));
   break;
 case dw_val_class_unsigned_const:
   size += constant_size (AT_unsigned (a));
   break;
 case dw_val_class_long_long:
   size += 1 + 2*(8 * 4)/8;
   break;
 case dw_val_class_float:
   size += 1 + a->dw_attr_val.v.val_float.length * 4;
   break;
 case dw_val_class_flag:
   size += 1;
   break;
 case dw_val_class_die_ref:
   size += 4;
   break;
 case dw_val_class_fde_ref:
   size += 4;
   break;
 case dw_val_class_lbl_id:
   size += (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8);
   break;
 case dw_val_class_lbl_offset:
   size += 4;
   break;
 case dw_val_class_str:
   if (AT_string_form (a) == DW_FORM_strp)
     size += 4;
   else
     size += ((&a->dw_attr_val.v.val_str->id)->len) + 1;
   break;
 default:
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6274, __FUNCTION__);
 }
    }

  return size;
}






static void
calc_die_sizes (die)
     dw_die_ref die;
{
  dw_die_ref c;

  die->die_offset = next_die_offset;
  next_die_offset += size_of_die (die);

  for (c = die->die_child; c != ((void *)0); c = c->die_sib)
    calc_die_sizes (c);

  if (die->die_child != ((void *)0))

    next_die_offset += 1;
}






static void
mark_dies (die)
     dw_die_ref die;
{
  dw_die_ref c;

  if (die->die_mark)
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6315, __FUNCTION__);

  die->die_mark = 1;
  for (c = die->die_child; c; c = c->die_sib)
    mark_dies (c);
}



static void
unmark_dies (die)
     dw_die_ref die;
{
  dw_die_ref c;

  if (!die->die_mark)
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6331, __FUNCTION__);

  die->die_mark = 0;
  for (c = die->die_child; c; c = c->die_sib)
    unmark_dies (c);
}



static void
unmark_all_dies (die)
     dw_die_ref die;
{
  dw_die_ref c;
  dw_attr_ref a;

  if (!die->die_mark)
    return;
  die->die_mark = 0;

  for (c = die->die_child; c; c = c->die_sib)
    unmark_all_dies (c);

  for (a = die->die_attr; a; a = a->dw_attr_next)
    if (AT_class (a) == dw_val_class_die_ref)
      unmark_all_dies (AT_ref (a));
}




static unsigned long
size_of_pubnames ()
{
  unsigned long size;
  unsigned i;

  size = (2 * 4 + 2);
  for (i = 0; i < pubname_table_in_use; i++)
    {
      pubname_ref p = &pubname_table[i];
      size += 4 + strlen (p->name) + 1;
    }

  size += 4;
  return size;
}



static unsigned long
size_of_aranges ()
{
  unsigned long size;

  size = (((((2 * 4 + 4) + ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * 2) - 1) / ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * 2)) * ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * 2)) - 4);


  size += 2 * (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8);
  size += 2 * (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * arange_table_in_use;


  size += 2 * (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8);
  return size;
}



static enum dwarf_form
value_format (a)
     dw_attr_ref a;
{
  switch (a->dw_attr_val.val_class)
    {
    case dw_val_class_addr:
      return DW_FORM_addr;
    case dw_val_class_range_list:
    case dw_val_class_offset:
      if (4 == 4)
 return DW_FORM_data4;
      if (4 == 8)
 return DW_FORM_data8;
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6413, __FUNCTION__);
    case dw_val_class_loc_list:


      return DW_FORM_data4;
    case dw_val_class_loc:
      switch (constant_size (size_of_locs (AT_loc (a))))
 {
 case 1:
   return DW_FORM_block1;
 case 2:
   return DW_FORM_block2;
 default:
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6426, __FUNCTION__);
 }
    case dw_val_class_const:
      return DW_FORM_sdata;
    case dw_val_class_unsigned_const:
      switch (constant_size (AT_unsigned (a)))
 {
 case 1:
   return DW_FORM_data1;
 case 2:
   return DW_FORM_data2;
 case 4:
   return DW_FORM_data4;
 case 8:
   return DW_FORM_data8;
 default:
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6442, __FUNCTION__);
 }
    case dw_val_class_long_long:
      return DW_FORM_block1;
    case dw_val_class_float:
      return DW_FORM_block1;
    case dw_val_class_flag:
      return DW_FORM_flag;
    case dw_val_class_die_ref:
      if (AT_ref_external (a))
 return DW_FORM_ref_addr;
      else
 return (4 == 8 ? DW_FORM_ref8 : DW_FORM_ref4);
    case dw_val_class_fde_ref:
      return (4 == 8 ? DW_FORM_data8 : DW_FORM_data4);
    case dw_val_class_lbl_id:
      return DW_FORM_addr;
    case dw_val_class_lbl_offset:
      return (4 == 8 ? DW_FORM_data8 : DW_FORM_data4);
    case dw_val_class_str:
      return AT_string_form (a);

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6465, __FUNCTION__);
    }
}



static void
output_value_format (a)
     dw_attr_ref a;
{
  enum dwarf_form form = value_format (a);

  dw2_asm_output_data_uleb128 (form, "(%s)", dwarf_form_name (form));
}




static void
output_abbrev_section ()
{
  unsigned long abbrev_id;

  dw_attr_ref a_attr;

  for (abbrev_id = 1; abbrev_id < abbrev_die_table_in_use; ++abbrev_id)
    {
      dw_die_ref abbrev = abbrev_die_table[abbrev_id];

      dw2_asm_output_data_uleb128 (abbrev_id, "(abbrev code)");
      dw2_asm_output_data_uleb128 (abbrev->die_tag, "(TAG: %s)",
       dwarf_tag_name (abbrev->die_tag));

      if (abbrev->die_child != ((void *)0))
 dw2_asm_output_data (1, 1, "DW_children_yes");
      else
 dw2_asm_output_data (1, 0, "DW_children_no");

      for (a_attr = abbrev->die_attr; a_attr != ((void *)0);
    a_attr = a_attr->dw_attr_next)
 {
   dw2_asm_output_data_uleb128 (a_attr->dw_attr, "(%s)",
           dwarf_attr_name (a_attr->dw_attr));
   output_value_format (a_attr);
 }

      dw2_asm_output_data (1, 0, ((void *)0));
      dw2_asm_output_data (1, 0, ((void *)0));
    }


  dw2_asm_output_data (1, 0, ((void *)0));
}



static __inline__ void
output_die_symbol (die)
     dw_die_ref die;
{
  char *sym = die->die_symbol;

  if (sym == 0)
    return;

  if (strncmp (sym, "DW", sizeof ("DW") - 1) == 0)



    (*targetm.asm_out.globalize_label) (asm_out_file, sym);

  do { assemble_name ((asm_out_file), (sym)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
}





static __inline__ dw_loc_list_ref
new_loc_list (expr, begin, end, section, gensym)
     dw_loc_descr_ref expr;
     const char *begin;
     const char *end;
     const char *section;
     unsigned gensym;
{
  dw_loc_list_ref retlist
    = (dw_loc_list_ref) xcalloc (1, sizeof (dw_loc_list_node));

  retlist->begin = begin;
  retlist->end = end;
  retlist->expr = expr;
  retlist->section = section;
  if (gensym)
    retlist->ll_symbol = gen_internal_sym ("LLST");

  return retlist;
}



static __inline__ void
add_loc_descr_to_loc_list (list_head, descr, begin, end, section)
     dw_loc_list_ref *list_head;
     dw_loc_descr_ref descr;
     const char *begin;
     const char *end;
     const char *section;
{
  dw_loc_list_ref *d;


  for (d = list_head; (*d) != ((void *)0); d = &(*d)->dw_loc_next)
    ;


  *d = new_loc_list (descr, begin, end, section, 0);
}



static void
output_loc_list (list_head)
     dw_loc_list_ref list_head;
{
  dw_loc_list_ref curr = list_head;

  do { assemble_name ((asm_out_file), (list_head->ll_symbol)); fputs_unlocked (":\n", (asm_out_file)); } while (0);




  if (strcmp (curr->section, ".text") == 0)
    {

      dw2_asm_output_data ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), ~(unsigned long long) 0,
      "Location list base address specifier fake entry");
      dw2_asm_output_offset ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), curr->section,
        "Location list base address specifier base");
    }

  for (curr = list_head; curr != ((void *)0); curr = curr->dw_loc_next)
    {
      unsigned long size;

      dw2_asm_output_delta ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), curr->begin, curr->section,
       "Location list begin address (%s)",
       list_head->ll_symbol);
      dw2_asm_output_delta ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), curr->end, curr->section,
       "Location list end address (%s)",
       list_head->ll_symbol);
      size = size_of_locs (curr->expr);


      if (size > 0xffff)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6620, __FUNCTION__);
      dw2_asm_output_data (2, size, "%s", "Location expression size");

      output_loc_sequence (curr->expr);
    }

  dw2_asm_output_data (4, 0,
         "Location list terminator begin (%s)",
         list_head->ll_symbol);
  dw2_asm_output_data (4, 0,
         "Location list terminator end (%s)",
         list_head->ll_symbol);
}




static void
output_die (die)
     dw_die_ref die;
{
  dw_attr_ref a;
  dw_die_ref c;
  unsigned long size;



  if (die->die_symbol)
    output_die_symbol (die);

  dw2_asm_output_data_uleb128 (die->die_abbrev, "(DIE (0x%lx) %s)",
          die->die_offset, dwarf_tag_name (die->die_tag));

  for (a = die->die_attr; a != ((void *)0); a = a->dw_attr_next)
    {
      const char *name = dwarf_attr_name (a->dw_attr);

      switch (AT_class (a))
 {
 case dw_val_class_addr:
   dw2_asm_output_addr_rtx ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), AT_addr (a), "%s", name);
   break;

 case dw_val_class_offset:
   dw2_asm_output_data (4, a->dw_attr_val.v.val_offset,
          "%s", name);
   break;

 case dw_val_class_range_list:
   {
     char *p = strchr (ranges_section_label, '\0');

     sprintf (p, "+0x%lx", a->dw_attr_val.v.val_offset);
     dw2_asm_output_offset (4, ranges_section_label,
       "%s", name);
     *p = '\0';
   }
   break;

 case dw_val_class_loc:
   size = size_of_locs (AT_loc (a));


   dw2_asm_output_data (constant_size (size), size, "%s", name);

   output_loc_sequence (AT_loc (a));
   break;

 case dw_val_class_const:



   dw2_asm_output_data_sleb128 (AT_int (a), "%s", name);
   break;

 case dw_val_class_unsigned_const:
   dw2_asm_output_data (constant_size (AT_unsigned (a)),
          AT_unsigned (a), "%s", name);
   break;

 case dw_val_class_long_long:
   {
     unsigned long long first, second;

     dw2_asm_output_data (1,
     2 * (8 * 4) / 8,
     "%s", name);

     if (((target_flags & 0x00010000) != 0))
       {
  first = a->dw_attr_val.v.val_long_long.hi;
  second = a->dw_attr_val.v.val_long_long.low;
       }
     else
       {
  first = a->dw_attr_val.v.val_long_long.low;
  second = a->dw_attr_val.v.val_long_long.hi;
       }

     dw2_asm_output_data ((8 * 4) / 8,
     first, "long long constant");
     dw2_asm_output_data ((8 * 4) / 8,
     second, ((void *)0));
   }
   break;

 case dw_val_class_float:
   {
     unsigned int i;

     dw2_asm_output_data (1, a->dw_attr_val.v.val_float.length * 4,
     "%s", name);

     for (i = 0; i < a->dw_attr_val.v.val_float.length; i++)
       dw2_asm_output_data (4, a->dw_attr_val.v.val_float.array[i],
       "fp constant word %u", i);
     break;
   }

 case dw_val_class_flag:
   dw2_asm_output_data (1, AT_flag (a), "%s", name);
   break;

 case dw_val_class_loc_list:
   {
     char *sym = AT_loc_list (a)->ll_symbol;

     if (sym == 0)
       fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6748, __FUNCTION__);
     dw2_asm_output_delta (4, sym,
      loc_section_label, "%s", name);
   }
   break;

 case dw_val_class_die_ref:
   if (AT_ref_external (a))
     {
       char *sym = AT_ref (a)->die_symbol;

       if (sym == 0)
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6760, __FUNCTION__);
       dw2_asm_output_offset ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), sym, "%s", name);
     }
   else if (AT_ref (a)->die_offset == 0)
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6764, __FUNCTION__);
   else
     dw2_asm_output_data (4, AT_ref (a)->die_offset,
     "%s", name);
   break;

 case dw_val_class_fde_ref:
   {
     char l1[20];

     sprintf ((l1), "*%s%s%ld", ("$"), ("LSFDE"), (long)(a->dw_attr_val.v.val_fde_index * 2));

     dw2_asm_output_offset (4, l1, "%s", name);
   }
   break;

 case dw_val_class_lbl_id:
   dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), AT_lbl (a), "%s", name);
   break;

 case dw_val_class_lbl_offset:
   dw2_asm_output_offset (4, AT_lbl (a), "%s", name);
   break;

 case dw_val_class_str:
   if (AT_string_form (a) == DW_FORM_strp)
     dw2_asm_output_offset (4,
       a->dw_attr_val.v.val_str->label,
       "%s: \"%s\"", name, AT_string (a));
   else
     dw2_asm_output_nstring (AT_string (a), -1, "%s", name);
   break;

 default:
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6798, __FUNCTION__);
 }
    }

  for (c = die->die_child; c != ((void *)0); c = c->die_sib)
    output_die (c);


  if (die->die_child != ((void *)0))
    dw2_asm_output_data (1, 0, "end of children of DIE 0x%lx",
    die->die_offset);
}




static void
output_compilation_unit_header ()
{
  dw2_asm_output_data (4, next_die_offset - 4,
         "Length of Compilation Unit Info");
  dw2_asm_output_data (2, 2, "DWARF version number");
  dw2_asm_output_offset (4, abbrev_section_label,
    "Offset Into Abbrev. Section");
  dw2_asm_output_data (1, (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), "Pointer Size (in bytes)");
}



static void
output_comp_unit (die, output_if_empty)
     dw_die_ref die;
     int output_if_empty;
{
  const char *secname;
  char *oldsym, *tmp;


  if (!output_if_empty && die->die_child == ((void *)0))
    return;






  mark_dies (die);

  build_abbrev_table (die);


  next_die_offset = (2 * 4 + 3);
  calc_die_sizes (die);

  oldsym = die->die_symbol;
  if (oldsym)
    {
      tmp = (char *) __builtin_alloca(strlen (oldsym) + 24);

      sprintf (tmp, ".gnu.linkonce.wi.%s", oldsym);
      secname = tmp;
      die->die_symbol = ((void *)0);
    }
  else
    secname = (const char *) ".debug_info";


  named_section_flags (secname, 0x00400);
  output_compilation_unit_header ();
  output_die (die);



  if (oldsym)
    {
      unmark_dies (die);
      die->die_symbol = oldsym;
    }
}





static const char *
dwarf2_name (decl, scope)
     tree decl;
     int scope;
{
  return (*lang_hooks.decl_printable_name) (decl, scope ? 1 : 0);
}



static void
add_pubname (decl, die)
     tree decl;
     dw_die_ref die;
{
  pubname_ref p;

  if (! ((decl)->common.public_flag))
    return;

  if (pubname_table_in_use == pubname_table_allocated)
    {
      pubname_table_allocated += 64;
      pubname_table
 = (pubname_ref) xrealloc (pubname_table,
      (pubname_table_allocated
       * sizeof (pubname_entry)));
    }

  p = &pubname_table[pubname_table_in_use++];
  p->die = die;
  p->name = xstrdup (dwarf2_name (decl, 1));
}





static void
output_pubnames ()
{
  unsigned i;
  unsigned long pubnames_length = size_of_pubnames ();

  dw2_asm_output_data (4, pubnames_length,
         "Length of Public Names Info");
  dw2_asm_output_data (2, 2, "DWARF Version");
  dw2_asm_output_offset (4, debug_info_section_label,
    "Offset of Compilation Unit Info");
  dw2_asm_output_data (4, next_die_offset,
         "Compilation Unit Length");

  for (i = 0; i < pubname_table_in_use; i++)
    {
      pubname_ref pub = &pubname_table[i];


      if (pub->die->die_mark == 0)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 6940, __FUNCTION__);

      dw2_asm_output_data (4, pub->die->die_offset,
      "DIE offset");

      dw2_asm_output_nstring (pub->name, -1, "external name");
    }

  dw2_asm_output_data (4, 0, ((void *)0));
}



static void
add_arange (decl, die)
     tree decl;
     dw_die_ref die;
{
  if (! ((decl)->decl.section_name))
    return;

  if (arange_table_in_use == arange_table_allocated)
    {
      arange_table_allocated += 64;
      arange_table = (dw_die_ref *)
 xrealloc (arange_table, arange_table_allocated * sizeof (dw_die_ref));
    }

  arange_table[arange_table_in_use++] = die;
}





static void
output_aranges ()
{
  unsigned i;
  unsigned long aranges_length = size_of_aranges ();

  dw2_asm_output_data (4, aranges_length,
         "Length of Address Ranges Info");
  dw2_asm_output_data (2, 2, "DWARF Version");
  dw2_asm_output_offset (4, debug_info_section_label,
    "Offset of Compilation Unit Info");
  dw2_asm_output_data (1, (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), "Size of Address");
  dw2_asm_output_data (1, 0, "Size of Segment Descriptor");


  if ((((((2 * 4 + 4) + ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * 2) - 1) / ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * 2)) * ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * 2)) - (2 * 4 + 4)))
    {


      dw2_asm_output_data (2, 0, "Pad to %d byte boundary",
      2 * (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8));
      for (i = 2; i < (unsigned) (((((2 * 4 + 4) + ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * 2) - 1) / ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * 2)) * ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) * 2)) - (2 * 4 + 4)); i += 2)
 dw2_asm_output_data (2, 0, ((void *)0));
    }

  dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), text_section_label, "Address");
  dw2_asm_output_delta ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), text_end_label,
   text_section_label, "Length");

  for (i = 0; i < arange_table_in_use; i++)
    {
      dw_die_ref die = arange_table[i];


      if (die->die_mark == 0)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 7010, __FUNCTION__);

      if (die->die_tag == DW_TAG_subprogram)
 {
   dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), get_AT_low_pc (die),
          "Address");
   dw2_asm_output_delta ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), get_AT_hi_pc (die),
    get_AT_low_pc (die), "Length");
 }
      else
 {



   dw_attr_ref a = get_AT (die, DW_AT_location);
   dw_loc_descr_ref loc;

   if (! a || AT_class (a) != dw_val_class_loc)
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 7028, __FUNCTION__);

   loc = AT_loc (a);
   if (loc->dw_loc_opc != DW_OP_addr)
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 7032, __FUNCTION__);

   dw2_asm_output_addr_rtx ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8),
       loc->dw_loc_oprnd1.v.val_addr, "Address");
   dw2_asm_output_data ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8),
          get_AT_unsigned (die, DW_AT_byte_size),
          "Length");
 }
    }


  dw2_asm_output_data ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), 0, ((void *)0));
  dw2_asm_output_data ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), 0, ((void *)0));
}




static unsigned int
add_ranges (block)
     tree block;
{
  unsigned int in_use = ranges_table_in_use;

  if (in_use == ranges_table_allocated)
    {
      ranges_table_allocated += 64;
      ranges_table = (dw_ranges_ref)
 xrealloc (ranges_table, (ranges_table_allocated
     * sizeof (struct dw_ranges_struct)));
    }

  ranges_table[in_use].block_num = (block ? ((block)->block.block_num) : 0);
  ranges_table_in_use = in_use + 1;

  return in_use * 2 * (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8);
}

static void
output_ranges ()
{
  unsigned i;
  static const char *const start_fmt = "Offset 0x%x";
  const char *fmt = start_fmt;

  for (i = 0; i < ranges_table_in_use; i++)
    {
      int block_num = ranges_table[i].block_num;

      if (block_num)
 {
   char blabel[30];
   char elabel[30];

   sprintf ((blabel), "*%s%s%ld", ("$"), ("LBB"), (long)(block_num));
   sprintf ((elabel), "*%s%s%ld", ("$"), ("LBE"), (long)(block_num));




   if (separate_line_info_table_in_use == 0)
     {
       dw2_asm_output_delta ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), blabel,
        text_section_label,
        fmt, i * 2 * (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8));
       dw2_asm_output_delta ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), elabel,
        text_section_label, ((void *)0));
     }





   else
     {
       dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), blabel,
       fmt, i * 2 * (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8));
       dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), elabel, ((void *)0));
     }

   fmt = ((void *)0);
 }
      else
 {
   dw2_asm_output_data ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), 0, ((void *)0));
   dw2_asm_output_data ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), 0, ((void *)0));
   fmt = start_fmt;
 }
    }
}


struct file_info
{
  char *path;
  char *fname;
  int length;
  int file_idx;
  int dir_idx;
};



struct dir_info
{
  char *path;
  int length;
  int prefix;
  int count;
  int dir_idx;
  int used;
};




static int
file_info_cmp (p1, p2)
     const void *p1;
     const void *p2;
{
  const struct file_info *s1 = p1;
  const struct file_info *s2 = p2;
  unsigned char *cp1;
  unsigned char *cp2;






  if ((s1->path == s1->fname || s2->path == s2->fname))
    return (s2->path == s2->fname) - (s1->path == s1->fname);

  cp1 = (unsigned char *) s1->path;
  cp2 = (unsigned char *) s2->path;

  while (1)
    {
      ++cp1;
      ++cp2;

      if ((cp1 == (unsigned char *) s1->fname)
   || (cp2 == (unsigned char *) s2->fname))
 return ((cp2 == (unsigned char *) s2->fname)
  - (cp1 == (unsigned char *) s1->fname));


      else if (*cp1 != *cp2)
 return *cp1 - *cp2;
    }
}





static void
output_file_names ()
{
  struct file_info *files;
  struct dir_info *dirs;
  int *saved;
  int *savehere;
  int *backmap;
  int ndirs;
  int idx_offset;
  int i;
  int idx;


  files = (struct file_info *) __builtin_alloca(file_table.in_use * sizeof (struct file_info));

  dirs = (struct dir_info *) __builtin_alloca(file_table.in_use * sizeof (struct dir_info));



  for (i = 1; i < (int) file_table.in_use; i++)
    {
      char *f;


      f = file_table.table[i];
      while (f[0] == '.' && f[1] == '/')
 f += 2;


      files[i].path = f;
      files[i].length = strlen (f);
      files[i].file_idx = i;


      f = strrchr (f, '/');
      files[i].fname = f == ((void *)0) ? files[i].path : f + 1;
    }

  qsort (files + 1, file_table.in_use - 1, sizeof (files[0]), file_info_cmp);


  dirs[0].path = files[1].path;
  dirs[0].length = files[1].fname - files[1].path;
  dirs[0].prefix = -1;
  dirs[0].count = 1;
  dirs[0].dir_idx = 0;
  dirs[0].used = 0;
  files[1].dir_idx = 0;
  ndirs = 1;

  for (i = 2; i < (int) file_table.in_use; i++)
    if (files[i].fname - files[i].path == dirs[ndirs - 1].length
 && memcmp (dirs[ndirs - 1].path, files[i].path,
     dirs[ndirs - 1].length) == 0)
      {

 files[i].dir_idx = ndirs - 1;
 ++dirs[ndirs - 1].count;
      }
    else
      {
 int j;


 dirs[ndirs].path = files[i].path;
 dirs[ndirs].length = files[i].fname - files[i].path;
 dirs[ndirs].count = 1;
 dirs[ndirs].dir_idx = ndirs;
 dirs[ndirs].used = 0;
 files[i].dir_idx = ndirs;


 dirs[ndirs].prefix = -1;
 for (j = 0; j < ndirs; j++)
   if (dirs[j].length < dirs[ndirs].length
       && dirs[j].length > 1
       && (dirs[ndirs].prefix == -1
    || dirs[j].length > dirs[dirs[ndirs].prefix].length)
       && memcmp (dirs[j].path, dirs[ndirs].path, dirs[j].length) == 0)
     dirs[ndirs].prefix = j;

 ++ndirs;
      }







  saved = (int *) __builtin_alloca(ndirs * sizeof (int));
  savehere = (int *) __builtin_alloca(ndirs * sizeof (int));

  memset (saved, '\0', ndirs * sizeof (saved[0]));
  for (i = 0; i < ndirs; i++)
    {
      int j;
      int total;



      savehere[i] = dirs[i].length;
      total = (savehere[i] - saved[i]) * dirs[i].count;

      for (j = i + 1; j < ndirs; j++)
 {
   savehere[j] = 0;
   if (saved[j] < dirs[i].length)
     {


       int k;

       k = dirs[j].prefix;
       while (k != -1 && k != i)
  k = dirs[k].prefix;

       if (k == i)
  {



    savehere[j] = dirs[i].length;
    total += (savehere[j] - saved[j]) * dirs[j].count;
  }
     }
 }



      if (total > dirs[i].length + 1)
 {

   for (j = i; j < ndirs; j++)
     if (savehere[j] > 0)
       {

  saved[j] = savehere[j];


  dirs[j].dir_idx = i;
       }
 }
    }




  backmap = (int *) __builtin_alloca(file_table.in_use * sizeof (int));
  for (i = 1; i < (int) file_table.in_use; i++)
    {
      backmap[files[i].file_idx] = i;


      dirs[dirs[files[i].dir_idx].dir_idx].used = 1;
    }






  idx = 1;
  idx_offset = dirs[0].length > 0 ? 1 : 0;
  for (i = 1 - idx_offset; i < ndirs; i++)
    if (dirs[i].used != 0)
      {
 dirs[i].used = idx++;
 dw2_asm_output_nstring (dirs[i].path, dirs[i].length - 1,
    "Directory Entry: 0x%x", dirs[i].used);
      }

  dw2_asm_output_data (1, 0, "End directory table");



  if (idx_offset == 0)
    dirs[0].used = 0;


  for (i = 1; i < (int) file_table.in_use; i++)
    {
      int file_idx = backmap[i];
      int dir_idx = dirs[files[file_idx].dir_idx].dir_idx;

      dw2_asm_output_nstring (files[file_idx].path + dirs[dir_idx].length, -1,
         "File Entry: 0x%x", i);


      dw2_asm_output_data_uleb128 (dirs[dir_idx].used, ((void *)0));


      dw2_asm_output_data_uleb128 (0, ((void *)0));


      dw2_asm_output_data_uleb128 (0, ((void *)0));
    }

  dw2_asm_output_data (1, 0, "End file name table");
}





static void
output_line_info ()
{
  char l1[20], l2[20], p1[20], p2[20];
  char line_label[30];
  char prev_line_label[30];
  unsigned opc;
  unsigned n_op_args;
  unsigned long lt_index;
  unsigned long current_line;
  long line_offset;
  long line_delta;
  unsigned long current_file;
  unsigned long function;

  sprintf ((l1), "*%s%s%ld", ("$"), ("LSLT"), (long)(0));
  sprintf ((l2), "*%s%s%ld", ("$"), ("LELT"), (long)(0));
  sprintf ((p1), "*%s%s%ld", ("$"), ("LASLTP"), (long)(0));
  sprintf ((p2), "*%s%s%ld", ("$"), ("LELTP"), (long)(0));

  dw2_asm_output_delta (4, l2, l1,
   "Length of Source Line Info");
  do { assemble_name ((asm_out_file), (l1)); fputs_unlocked (":\n", (asm_out_file)); } while (0);

  dw2_asm_output_data (2, 2, "DWARF Version");
  dw2_asm_output_delta (4, p2, p1, "Prolog Length");
  do { assemble_name ((asm_out_file), (p1)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
# 7431 "../../../kg++fe/gnu/dwarf2out.c"
  dw2_asm_output_data (1, 1,
         "Minimum Instruction Length");

  dw2_asm_output_data (1, 1,
         "Default is_stmt_start flag");
  dw2_asm_output_data (1, -10,
         "Line Base Value (Special Opcodes)");
  dw2_asm_output_data (1, (254-10 +1),
         "Line Range Value (Special Opcodes)");
  dw2_asm_output_data (1, 10,
         "Special Opcode Base");

  for (opc = 1; opc < 10; opc++)
    {
      switch (opc)
 {
 case DW_LNS_advance_pc:
 case DW_LNS_advance_line:
 case DW_LNS_set_file:
 case DW_LNS_set_column:
 case DW_LNS_fixed_advance_pc:
   n_op_args = 1;
   break;
 default:
   n_op_args = 0;
   break;
 }

      dw2_asm_output_data (1, n_op_args, "opcode: 0x%x has %d args",
      opc, n_op_args);
    }


  output_file_names ();
  do { assemble_name ((asm_out_file), (p2)); fputs_unlocked (":\n", (asm_out_file)); } while (0);







  current_file = 1;
  current_line = 1;
  strcpy (prev_line_label, text_section_label);
  for (lt_index = 1; lt_index < line_info_table_in_use; ++lt_index)
    {
      dw_line_info_ref line_info = &line_info_table[lt_index];
# 7502 "../../../kg++fe/gnu/dwarf2out.c"
      sprintf ((line_label), "*%s%s%ld", ("$"), ("LM"), (long)(lt_index));
      if (0)
 {

   dw2_asm_output_data (1, DW_LNS_fixed_advance_pc,
          "DW_LNS_fixed_advance_pc");
   dw2_asm_output_delta (2, line_label, prev_line_label, ((void *)0));
 }
      else
 {


   dw2_asm_output_data (1, 0, "DW_LNE_set_address");
   dw2_asm_output_data_uleb128 (1 + (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), ((void *)0));
   dw2_asm_output_data (1, DW_LNE_set_address, ((void *)0));
   dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), line_label, ((void *)0));
 }

      strcpy (prev_line_label, line_label);



      if (line_info->dw_file_num != current_file)
 {
   current_file = line_info->dw_file_num;
   dw2_asm_output_data (1, DW_LNS_set_file, "DW_LNS_set_file");
   dw2_asm_output_data_uleb128 (current_file, "(\"%s\")",
           file_table.table[current_file]);
 }



      if (line_info->dw_line_num != current_line)
 {
   line_offset = line_info->dw_line_num - current_line;
   line_delta = line_offset - -10;
   current_line = line_info->dw_line_num;
   if (line_delta >= 0 && line_delta < ((254-10 +1) - 1))



     dw2_asm_output_data (1, 10 + line_delta,
     "line %lu", current_line);
   else
     {


       dw2_asm_output_data (1, DW_LNS_advance_line,
       "advance to line %lu", current_line);
       dw2_asm_output_data_sleb128 (line_offset, ((void *)0));
       dw2_asm_output_data (1, DW_LNS_copy, "DW_LNS_copy");
     }
 }
      else

 dw2_asm_output_data (1, DW_LNS_copy, "DW_LNS_copy");
    }


  if (0)
    {
      dw2_asm_output_data (1, DW_LNS_fixed_advance_pc,
      "DW_LNS_fixed_advance_pc");
      dw2_asm_output_delta (2, text_end_label, prev_line_label, ((void *)0));
    }
  else
    {
      dw2_asm_output_data (1, 0, "DW_LNE_set_address");
      dw2_asm_output_data_uleb128 (1 + (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), ((void *)0));
      dw2_asm_output_data (1, DW_LNE_set_address, ((void *)0));
      dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), text_end_label, ((void *)0));
    }

  dw2_asm_output_data (1, 0, "DW_LNE_end_sequence");
  dw2_asm_output_data_uleb128 (1, ((void *)0));
  dw2_asm_output_data (1, DW_LNE_end_sequence, ((void *)0));

  function = 0;
  current_file = 1;
  current_line = 1;
  for (lt_index = 0; lt_index < separate_line_info_table_in_use;)
    {
      dw_separate_line_info_ref line_info
 = &separate_line_info_table[lt_index];
# 7598 "../../../kg++fe/gnu/dwarf2out.c"
      sprintf ((line_label), "*%s%s%ld", ("$"), ("LSM"), (long)(lt_index));

      if (function != line_info->function)
 {
   function = line_info->function;


   dw2_asm_output_data (1, 0, "DW_LNE_set_address");
   dw2_asm_output_data_uleb128 (1 + (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), ((void *)0));
   dw2_asm_output_data (1, DW_LNE_set_address, ((void *)0));
   dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), line_label, ((void *)0));
 }
      else
 {

   if (0)
     {
       dw2_asm_output_data (1, DW_LNS_fixed_advance_pc,
       "DW_LNS_fixed_advance_pc");
       dw2_asm_output_delta (2, line_label, prev_line_label, ((void *)0));
     }
   else
     {
       dw2_asm_output_data (1, 0, "DW_LNE_set_address");
       dw2_asm_output_data_uleb128 (1 + (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), ((void *)0));
       dw2_asm_output_data (1, DW_LNE_set_address, ((void *)0));
       dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), line_label, ((void *)0));
     }
 }

      strcpy (prev_line_label, line_label);



      if (line_info->dw_file_num != current_file)
 {
   current_file = line_info->dw_file_num;
   dw2_asm_output_data (1, DW_LNS_set_file, "DW_LNS_set_file");
   dw2_asm_output_data_uleb128 (current_file, "(\"%s\")",
           file_table.table[current_file]);
 }



      if (line_info->dw_line_num != current_line)
 {
   line_offset = line_info->dw_line_num - current_line;
   line_delta = line_offset - -10;
   current_line = line_info->dw_line_num;
   if (line_delta >= 0 && line_delta < ((254-10 +1) - 1))
     dw2_asm_output_data (1, 10 + line_delta,
     "line %lu", current_line);
   else
     {
       dw2_asm_output_data (1, DW_LNS_advance_line,
       "advance to line %lu", current_line);
       dw2_asm_output_data_sleb128 (line_offset, ((void *)0));
       dw2_asm_output_data (1, DW_LNS_copy, "DW_LNS_copy");
     }
 }
      else
 dw2_asm_output_data (1, DW_LNS_copy, "DW_LNS_copy");





      lt_index++;


      if (lt_index == separate_line_info_table_in_use
   || separate_line_info_table[lt_index].function != function)
 {
   current_file = 1;
   current_line = 1;


   sprintf ((line_label), "*%s%s%ld", ("$"), ("LFE"), (long)(function));
   if (0)
     {
       dw2_asm_output_data (1, DW_LNS_fixed_advance_pc,
       "DW_LNS_fixed_advance_pc");
       dw2_asm_output_delta (2, line_label, prev_line_label, ((void *)0));
     }
   else
     {
       dw2_asm_output_data (1, 0, "DW_LNE_set_address");
       dw2_asm_output_data_uleb128 (1 + (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), ((void *)0));
       dw2_asm_output_data (1, DW_LNE_set_address, ((void *)0));
       dw2_asm_output_addr ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8), line_label, ((void *)0));
     }


   dw2_asm_output_data (1, 0, "DW_LNE_end_sequence");
   dw2_asm_output_data_uleb128 (1, ((void *)0));
   dw2_asm_output_data (1, DW_LNE_end_sequence, ((void *)0));
 }
    }


  do { assemble_name ((asm_out_file), (l2)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
}







static dw_die_ref
base_type_die (type)
     tree type;
{
  dw_die_ref base_type_result;
  const char *type_name;
  enum dwarf_type encoding;
  tree name = ((type)->type.name);

  if (((enum tree_code) (type)->common.code) == ERROR_MARK || ((enum tree_code) (type)->common.code) == VOID_TYPE)
    return 0;

  if (name)
    {
      if (((enum tree_code) (name)->common.code) == TYPE_DECL)
 name = ((name)->decl.name);

      type_name = ((char *)(name)->identifier.id.str);
    }
  else
    type_name = "__unknown__";

  switch (((enum tree_code) (type)->common.code))
    {
    case INTEGER_TYPE:




      if (! (((type)->type.precision) == 8
      && (type == integer_types[itk_char]
   || (((type)->type.main_variant) == integer_types[itk_char]
       && ! strcmp (type_name, "char"))
   || ! strcmp (type_name, "signed char")
   || ! strcmp (type_name, "unsigned char"))))
 {
   if (((type)->common.unsigned_flag))
     encoding = DW_ATE_unsigned;
   else
     encoding = DW_ATE_signed;
   break;
 }


    case CHAR_TYPE:

      if (((type)->common.unsigned_flag))
 encoding = DW_ATE_unsigned_char;
      else
 encoding = DW_ATE_signed_char;
      break;

    case REAL_TYPE:
      encoding = DW_ATE_float;
      break;



    case COMPLEX_TYPE:
      if (((enum tree_code) (((type)->common.type))->common.code) == REAL_TYPE)
 encoding = DW_ATE_complex_float;
      else
 encoding = 0x80;
      break;

    case BOOLEAN_TYPE:

      encoding = DW_ATE_boolean;
      break;

    default:

      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 7779, __FUNCTION__);
    }

  base_type_result = new_die (DW_TAG_base_type, comp_unit_die, type);
  if (demangle_name_func)
    type_name = (*demangle_name_func) (type_name);

  add_AT_string (base_type_result, DW_AT_name, type_name);
  add_AT_unsigned (base_type_result, DW_AT_byte_size,
     int_size_in_bytes (type));
  add_AT_unsigned (base_type_result, DW_AT_encoding, encoding);

  return base_type_result;
}
# 7803 "../../../kg++fe/gnu/dwarf2out.c"
static tree
root_type (type)
     tree type;
{
  if (((enum tree_code) (type)->common.code) == ERROR_MARK)
    return global_trees[TI_ERROR_MARK];

  switch (((enum tree_code) (type)->common.code))
    {
    case ERROR_MARK:
      return global_trees[TI_ERROR_MARK];

    case POINTER_TYPE:
    case REFERENCE_TYPE:
      return type_main_variant (root_type (((type)->common.type)));

    default:
      return type_main_variant (type);
    }
}




static __inline__ int
is_base_type (type)
     tree type;
{
  switch (((enum tree_code) (type)->common.code))
    {
    case ERROR_MARK:
    case VOID_TYPE:
    case INTEGER_TYPE:
    case REAL_TYPE:
    case COMPLEX_TYPE:
    case BOOLEAN_TYPE:
    case CHAR_TYPE:
      return 1;

    case SET_TYPE:
    case ARRAY_TYPE:
    case RECORD_TYPE:
    case UNION_TYPE:
    case QUAL_UNION_TYPE:
    case ENUMERAL_TYPE:
    case FUNCTION_TYPE:
    case METHOD_TYPE:
    case POINTER_TYPE:
    case REFERENCE_TYPE:
    case FILE_TYPE:
    case OFFSET_TYPE:
    case LANG_TYPE:
    case VECTOR_TYPE:
      return 0;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 7859, __FUNCTION__);
    }

  return 0;
}




static dw_die_ref
modified_type_die (type, is_const_type, is_volatile_type, context_die)
     tree type;
     int is_const_type;
     int is_volatile_type;
     dw_die_ref context_die;
{
  enum tree_code code = ((enum tree_code) (type)->common.code);
  dw_die_ref mod_type_die = ((void *)0);
  dw_die_ref sub_die = ((void *)0);
  tree item_type = ((void *)0);

  if (code != ERROR_MARK)
    {
      tree qualified_type;



      qualified_type
 = get_qualified_type (type,
         ((is_const_type ? 0x1 : 0)
          | (is_volatile_type
      ? 0x2 : 0)));


      if (qualified_type)
 {
   mod_type_die = lookup_type_die (qualified_type);
   if (mod_type_die)
     return mod_type_die;
 }


      if (qualified_type && ((qualified_type)->type.name)
   && ((enum tree_code) (((qualified_type)->type.name))->common.code) == TYPE_DECL
   && ((((qualified_type)->type.name))->decl.result))
 {
   tree type_name = ((qualified_type)->type.name);
   tree dtype = ((type_name)->common.type);

   if (qualified_type == dtype)
     {

       gen_type_die (qualified_type, context_die);
       mod_type_die = lookup_type_die (qualified_type);
     }
   else if (is_const_type < ((dtype)->common.readonly_flag)
     || is_volatile_type < ((dtype)->common.volatile_flag))


     mod_type_die
       = modified_type_die (((type_name)->decl.result),
       is_const_type, is_volatile_type,
       context_die);


 }

      if (mod_type_die)

 ;
      else if (is_const_type)
 {
   mod_type_die = new_die (DW_TAG_const_type, comp_unit_die, type);
   sub_die = modified_type_die (type, 0, is_volatile_type, context_die);
 }
      else if (is_volatile_type)
 {
   mod_type_die = new_die (DW_TAG_volatile_type, comp_unit_die, type);
   sub_die = modified_type_die (type, 0, 0, context_die);
 }
      else if (code == POINTER_TYPE)
 {
   mod_type_die = new_die (DW_TAG_pointer_type, comp_unit_die, type);
   add_AT_unsigned (mod_type_die, DW_AT_byte_size, (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8));



   item_type = ((type)->common.type);
 }
      else if (code == REFERENCE_TYPE)
 {
   mod_type_die = new_die (DW_TAG_reference_type, comp_unit_die, type);
   add_AT_unsigned (mod_type_die, DW_AT_byte_size, (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8));



   item_type = ((type)->common.type);
 }
      else if (is_base_type (type))
 mod_type_die = base_type_die (type);
      else
 {
   gen_type_die (type, context_die);







   if (((enum tree_code) (type)->common.code) != VECTOR_TYPE)
     mod_type_die = lookup_type_die (type_main_variant (type));
   else


     mod_type_die = lookup_type_die (type);
   if (mod_type_die == ((void *)0))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 7976, __FUNCTION__);
 }


      type = qualified_type;
    }

  if (type)
    equate_type_number_to_die (type, mod_type_die);
  if (item_type)




    sub_die = modified_type_die (item_type,
     ((item_type)->common.readonly_flag),
     ((item_type)->common.volatile_flag),
     context_die);

  if (sub_die != ((void *)0))
    add_AT_die_ref (mod_type_die, DW_AT_type, sub_die);

  return mod_type_die;
}




static __inline__ int
type_is_enum (type)
     tree type;
{
  return ((enum tree_code) (type)->common.code) == ENUMERAL_TYPE;
}



static unsigned int
reg_number (rtl)
     rtx rtl;
{
  unsigned regno = (((rtl)->fld[0]).rtuint);

  if (regno >= 176)
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 8020, __FUNCTION__);

  return mips_dbx_regno[ (regno) ];
}




static dw_loc_descr_ref
reg_loc_descriptor (rtl)
     rtx rtl;
{
  dw_loc_descr_ref loc_result = ((void *)0);
  unsigned reg;

  if ((((rtl)->fld[0]).rtuint) >= 176)
    return 0;

  reg = reg_number (rtl);
  if (reg <= 31)
    loc_result = new_loc_descr (DW_OP_reg0 + reg, 0, 0);
  else
    loc_result = new_loc_descr (DW_OP_regx, reg, 0);

  return loc_result;
}



static dw_loc_descr_ref
int_loc_descriptor (i)
     long long i;
{
  enum dwarf_location_atom op;



  if (i >= 0)
    {
      if (i <= 31)
 op = DW_OP_lit0 + i;
      else if (i <= 0xff)
 op = DW_OP_const1u;
      else if (i <= 0xffff)
 op = DW_OP_const2u;
      else if ((8 * 8) == 32
        || i <= 0xffffffff)
 op = DW_OP_const4u;
      else
 op = DW_OP_constu;
    }
  else
    {
      if (i >= -0x80)
 op = DW_OP_const1s;
      else if (i >= -0x8000)
 op = DW_OP_const2s;
      else if ((8 * 8) == 32
        || i >= -0x80000000)
 op = DW_OP_const4s;
      else
 op = DW_OP_consts;
    }

  return new_loc_descr (op, i, 0);
}



static dw_loc_descr_ref
based_loc_descr (reg, offset)
     unsigned reg;
     long int offset;
{
  dw_loc_descr_ref loc_result;



  unsigned fp_reg = mips_dbx_regno[ (frame_pointer_needed ? ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30) : (0 + 29)) ];



  if (reg == fp_reg)
    loc_result = new_loc_descr (DW_OP_fbreg, offset, 0);
  else if (reg <= 31)
    loc_result = new_loc_descr (DW_OP_breg0 + reg, offset, 0);
  else
    loc_result = new_loc_descr (DW_OP_bregx, reg, offset);

  return loc_result;
}



static __inline__ int
is_based_loc (rtl)
     rtx rtl;
{
  return (((enum rtx_code) (rtl)->code) == PLUS
   && ((((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == REG
        && ((((((rtl)->fld[0]).rtx))->fld[0]).rtuint) < 176
        && ((enum rtx_code) ((((rtl)->fld[1]).rtx))->code) == CONST_INT)));
}
# 8139 "../../../kg++fe/gnu/dwarf2out.c"
static dw_loc_descr_ref
mem_loc_descriptor (rtl, mode)
     rtx rtl;
     enum machine_mode mode;
{
  dw_loc_descr_ref mem_loc_result = ((void *)0);
# 8155 "../../../kg++fe/gnu/dwarf2out.c"
  switch (((enum rtx_code) (rtl)->code))
    {
    case POST_INC:
    case POST_DEC:
    case POST_MODIFY:





    case SUBREG:





      rtl = (((rtl)->fld[0]).rtx);



    case REG:
# 8189 "../../../kg++fe/gnu/dwarf2out.c"
      if ((((rtl)->fld[0]).rtuint) < 176)
 mem_loc_result = based_loc_descr (reg_number (rtl), 0);
      break;

    case MEM:
      mem_loc_result = mem_loc_descriptor ((((rtl)->fld[0]).rtx), ((enum machine_mode) (rtl)->mode));
      if (mem_loc_result != 0)
 add_loc_descr (&mem_loc_result, new_loc_descr (DW_OP_deref, 0, 0));
      break;

    case LO_SUM:
  rtl = (((rtl)->fld[1]).rtx);



    case LABEL_REF:



    case CONST:
    case SYMBOL_REF:


      if (((enum rtx_code) (rtl)->code) == SYMBOL_REF && (((rtl))->unchanging))
 {
   _Bool marked;
   rtx tmp = get_pool_constant_mark (rtl, &marked);

   if (((enum rtx_code) (tmp)->code) == SYMBOL_REF)
     {
       rtl = tmp;
       if ((((tmp))->unchanging))
  get_pool_constant_mark (tmp, &marked);
       else
  marked = 1;
     }





   if (!marked)
     return 0;
 }

      mem_loc_result = new_loc_descr (DW_OP_addr, 0, 0);
      mem_loc_result->dw_loc_oprnd1.val_class = dw_val_class_addr;
      mem_loc_result->dw_loc_oprnd1.v.val_addr = rtl;
      do { if ((used_rtx_varray)->elements_used >= (used_rtx_varray)->num_elements) (((used_rtx_varray)) = varray_grow ((used_rtx_varray), 2 * (used_rtx_varray)->num_elements)); (used_rtx_varray)->data.rtx[(used_rtx_varray)->elements_used++] = (rtl); } while (0);
      break;

    case PRE_MODIFY:


      rtl = (((rtl)->fld[1]).rtx);
      goto plus;

    case PRE_INC:
    case PRE_DEC:


      rtl = gen_rtx_fmt_ee (PLUS, (word_mode), ((((rtl)->fld[0]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) (((enum rtx_code) (rtl)->code) == PRE_INC ? (mode_unit_size[(int) (mode)]) : -(mode_unit_size[(int) (mode)])))));






    case PLUS:
    plus:
      if (is_based_loc (rtl))
 mem_loc_result = based_loc_descr (reg_number ((((rtl)->fld[0]).rtx)),
       ((((((rtl)->fld[1]).rtx))->fld[0]).rtwint));
      else
 {
   mem_loc_result = mem_loc_descriptor ((((rtl)->fld[0]).rtx), mode);
   if (mem_loc_result == 0)
     break;

   if (((enum rtx_code) ((((rtl)->fld[1]).rtx))->code) == CONST_INT
       && ((((((rtl)->fld[1]).rtx))->fld[0]).rtwint) >= 0)
     add_loc_descr (&mem_loc_result,
      new_loc_descr (DW_OP_plus_uconst,
       ((((((rtl)->fld[1]).rtx))->fld[0]).rtwint), 0));
   else
     {
       add_loc_descr (&mem_loc_result,
        mem_loc_descriptor ((((rtl)->fld[1]).rtx), mode));
       add_loc_descr (&mem_loc_result,
        new_loc_descr (DW_OP_plus, 0, 0));
     }
 }
      break;

    case MULT:
      {


 dw_loc_descr_ref op0 = mem_loc_descriptor ((((rtl)->fld[0]).rtx), mode);
 dw_loc_descr_ref op1 = mem_loc_descriptor ((((rtl)->fld[1]).rtx), mode);

 if (op0 == 0 || op1 == 0)
   break;

 mem_loc_result = op0;
 add_loc_descr (&mem_loc_result, op1);
 add_loc_descr (&mem_loc_result, new_loc_descr (DW_OP_mul, 0, 0));
 break;
      }

    case CONST_INT:
      mem_loc_result = int_loc_descriptor ((((rtl)->fld[0]).rtwint));
      break;

    case ADDRESSOF:


      if (((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == MEM)
 return mem_loc_descriptor (((((((rtl)->fld[0]).rtx))->fld[0]).rtx), mode);
      else
 return 0;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 8312, __FUNCTION__);
    }

  return mem_loc_result;
}




static dw_loc_descr_ref
concat_loc_descriptor (x0, x1)
     rtx x0, x1;
{
  dw_loc_descr_ref cc_loc_result = ((void *)0);
  dw_loc_descr_ref x0_ref = loc_descriptor (x0);
  dw_loc_descr_ref x1_ref = loc_descriptor (x1);

  if (x0_ref == 0 || x1_ref == 0)
    return 0;

  cc_loc_result = x0_ref;
  add_loc_descr (&cc_loc_result,
   new_loc_descr (DW_OP_piece,
    (mode_size[(int) (((enum machine_mode) (x0)->mode))]), 0));

  add_loc_descr (&cc_loc_result, x1_ref);
  add_loc_descr (&cc_loc_result,
   new_loc_descr (DW_OP_piece,
    (mode_size[(int) (((enum machine_mode) (x1)->mode))]), 0));

  return cc_loc_result;
}
# 8353 "../../../kg++fe/gnu/dwarf2out.c"
static dw_loc_descr_ref
loc_descriptor (rtl)
     rtx rtl;
{
  dw_loc_descr_ref loc_result = ((void *)0);

  switch (((enum rtx_code) (rtl)->code))
    {
    case SUBREG:





      rtl = (((rtl)->fld[0]).rtx);



    case REG:
      loc_result = reg_loc_descriptor (rtl);
      break;

    case MEM:
      loc_result = mem_loc_descriptor ((((rtl)->fld[0]).rtx), ((enum machine_mode) (rtl)->mode));
      break;

    case CONCAT:
      loc_result = concat_loc_descriptor ((((rtl)->fld[0]).rtx), (((rtl)->fld[1]).rtx));
      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 8384, __FUNCTION__);
    }

  return loc_result;
}






static dw_loc_descr_ref
loc_descriptor_from_tree (loc, addressp)
     tree loc;
     int addressp;
{
  dw_loc_descr_ref ret, ret1;
  int indirect_p = 0;
  int unsignedp = ((((loc)->common.type))->common.unsigned_flag);
  enum dwarf_location_atom op;





  switch (((enum tree_code) (loc)->common.code))
    {
    case ERROR_MARK:
      return 0;

    case WITH_RECORD_EXPR:
    case PLACEHOLDER_EXPR:




      return 0;

    case CALL_EXPR:
      return 0;

    case ADDR_EXPR:


      for (loc = ((loc)->exp.operands[0]);
    ((enum tree_code) (loc)->common.code) == CONVERT_EXPR || ((enum tree_code) (loc)->common.code) == NOP_EXPR
    || ((enum tree_code) (loc)->common.code) == NON_LVALUE_EXPR
    || ((enum tree_code) (loc)->common.code) == VIEW_CONVERT_EXPR
    || ((enum tree_code) (loc)->common.code) == SAVE_EXPR;
    loc = ((loc)->exp.operands[0]))
 ;

       return (((enum tree_code) (loc)->common.code) == INDIRECT_REF
        ? loc_descriptor_from_tree (((loc)->exp.operands[0]), addressp)
        : 0);

    case VAR_DECL:
      if (((loc)->decl.thread_local_flag))
 {
   rtx rtl;



   return 0;




   if (((loc)->decl.external_flag))
     return 0;

   rtl = rtl_for_decl_location (loc);
   if (rtl == (rtx) 0)
     return 0;

   if (((enum rtx_code) (rtl)->code) != MEM)
     return 0;
   rtl = (((rtl)->fld[0]).rtx);
   if (! (((enum rtx_code) (rtl)->code) == LABEL_REF || ((enum rtx_code) (rtl)->code) == SYMBOL_REF || ((enum rtx_code) (rtl)->code) == CONST_INT || ((enum rtx_code) (rtl)->code) == CONST_DOUBLE || ((enum rtx_code) (rtl)->code) == CONST || ((enum rtx_code) (rtl)->code) == HIGH || ((enum rtx_code) (rtl)->code) == CONST_VECTOR || ((enum rtx_code) (rtl)->code) == CONSTANT_P_RTX))
     return 0;

   ret = new_loc_descr ((0x100 + DW_OP_addr), 0, 0);
   ret->dw_loc_oprnd1.val_class = dw_val_class_addr;
   ret->dw_loc_oprnd1.v.val_addr = rtl;

   ret1 = new_loc_descr (DW_OP_GNU_push_tls_address, 0, 0);
   add_loc_descr (&ret, ret1);

   indirect_p = 1;
   break;
 }


    case PARM_DECL:
      {
 rtx rtl = rtl_for_decl_location (loc);

 if (rtl == (rtx) 0)
   return 0;
 else if ((((enum rtx_code) (rtl)->code) == LABEL_REF || ((enum rtx_code) (rtl)->code) == SYMBOL_REF || ((enum rtx_code) (rtl)->code) == CONST_INT || ((enum rtx_code) (rtl)->code) == CONST_DOUBLE || ((enum rtx_code) (rtl)->code) == CONST || ((enum rtx_code) (rtl)->code) == HIGH || ((enum rtx_code) (rtl)->code) == CONST_VECTOR || ((enum rtx_code) (rtl)->code) == CONSTANT_P_RTX))
   {
     ret = new_loc_descr (DW_OP_addr, 0, 0);
     ret->dw_loc_oprnd1.val_class = dw_val_class_addr;
     ret->dw_loc_oprnd1.v.val_addr = rtl;
     indirect_p = 1;
   }
 else
   {
     enum machine_mode mode = ((enum machine_mode) (rtl)->mode);

     if (((enum rtx_code) (rtl)->code) == MEM)
       {
  indirect_p = 1;
  rtl = (((rtl)->fld[0]).rtx);
       }

     ret = mem_loc_descriptor (rtl, mode);
   }
      }
      break;

    case INDIRECT_REF:
      ret = loc_descriptor_from_tree (((loc)->exp.operands[0]), 0);
      indirect_p = 1;
      break;

    case COMPOUND_EXPR:
      return loc_descriptor_from_tree (((loc)->exp.operands[1]), addressp);

    case NOP_EXPR:
    case CONVERT_EXPR:
    case NON_LVALUE_EXPR:
    case VIEW_CONVERT_EXPR:
    case SAVE_EXPR:
      return loc_descriptor_from_tree (((loc)->exp.operands[0]), addressp);

    case COMPONENT_REF:
    case BIT_FIELD_REF:
    case ARRAY_REF:
    case ARRAY_RANGE_REF:
      {
 tree obj, offset;
 long long bitsize, bitpos, bytepos;
 enum machine_mode mode;
 int volatilep;

 obj = get_inner_reference (loc, &bitsize, &bitpos, &offset, &mode,
       &unsignedp, &volatilep);

 if (obj == loc)
   return 0;

 ret = loc_descriptor_from_tree (obj, 1);
 if (ret == 0
     || bitpos % 8 != 0 || bitsize % 8 != 0)
   return 0;

 if (offset != (tree) ((void *)0))
   {

     add_loc_descr (&ret, loc_descriptor_from_tree (offset, 0));
     add_loc_descr (&ret, new_loc_descr (DW_OP_plus, 0, 0));
   }

 if (!addressp)
   indirect_p = 1;

 bytepos = bitpos / 8;
 if (bytepos > 0)
   add_loc_descr (&ret, new_loc_descr (DW_OP_plus_uconst, bytepos, 0));
 else if (bytepos < 0)
   {
     add_loc_descr (&ret, int_loc_descriptor (bytepos));
     add_loc_descr (&ret, new_loc_descr (DW_OP_plus, 0, 0));
   }
 break;
      }

    case INTEGER_CST:
      if (host_integerp (loc, 0))
 ret = int_loc_descriptor (tree_low_cst (loc, 0));
      else
 return 0;
      break;

    case TRUTH_AND_EXPR:
    case TRUTH_ANDIF_EXPR:
    case BIT_AND_EXPR:
      op = DW_OP_and;
      goto do_binop;

    case TRUTH_XOR_EXPR:
    case BIT_XOR_EXPR:
      op = DW_OP_xor;
      goto do_binop;

    case TRUTH_OR_EXPR:
    case TRUTH_ORIF_EXPR:
    case BIT_IOR_EXPR:
      op = DW_OP_or;
      goto do_binop;

    case TRUNC_DIV_EXPR:
      op = DW_OP_div;
      goto do_binop;

    case MINUS_EXPR:
      op = DW_OP_minus;
      goto do_binop;

    case TRUNC_MOD_EXPR:
      op = DW_OP_mod;
      goto do_binop;

    case MULT_EXPR:
      op = DW_OP_mul;
      goto do_binop;

    case LSHIFT_EXPR:
      op = DW_OP_shl;
      goto do_binop;

    case RSHIFT_EXPR:
      op = (unsignedp ? DW_OP_shr : DW_OP_shra);
      goto do_binop;

    case PLUS_EXPR:
      if (((enum tree_code) (((loc)->exp.operands[1]))->common.code) == INTEGER_CST
   && host_integerp (((loc)->exp.operands[1]), 0))
 {
   ret = loc_descriptor_from_tree (((loc)->exp.operands[0]), 0);
   if (ret == 0)
     return 0;

   add_loc_descr (&ret,
    new_loc_descr (DW_OP_plus_uconst,
     tree_low_cst (((loc)->exp.operands[1]),
            0),
     0));
   break;
 }

      op = DW_OP_plus;
      goto do_binop;

    case LE_EXPR:
      if (((((((loc)->exp.operands[0]))->common.type))->common.unsigned_flag))
 return 0;

      op = DW_OP_le;
      goto do_binop;

    case GE_EXPR:
      if (((((((loc)->exp.operands[0]))->common.type))->common.unsigned_flag))
 return 0;

      op = DW_OP_ge;
      goto do_binop;

    case LT_EXPR:
      if (((((((loc)->exp.operands[0]))->common.type))->common.unsigned_flag))
 return 0;

      op = DW_OP_lt;
      goto do_binop;

    case GT_EXPR:
      if (((((((loc)->exp.operands[0]))->common.type))->common.unsigned_flag))
 return 0;

      op = DW_OP_gt;
      goto do_binop;

    case EQ_EXPR:
      op = DW_OP_eq;
      goto do_binop;

    case NE_EXPR:
      op = DW_OP_ne;
      goto do_binop;

    do_binop:
      ret = loc_descriptor_from_tree (((loc)->exp.operands[0]), 0);
      ret1 = loc_descriptor_from_tree (((loc)->exp.operands[1]), 0);
      if (ret == 0 || ret1 == 0)
 return 0;

      add_loc_descr (&ret, ret1);
      add_loc_descr (&ret, new_loc_descr (op, 0, 0));
      break;

    case TRUTH_NOT_EXPR:
    case BIT_NOT_EXPR:
      op = DW_OP_not;
      goto do_unop;

    case ABS_EXPR:
      op = DW_OP_abs;
      goto do_unop;

    case NEGATE_EXPR:
      op = DW_OP_neg;
      goto do_unop;

    do_unop:
      ret = loc_descriptor_from_tree (((loc)->exp.operands[0]), 0);
      if (ret == 0)
 return 0;

      add_loc_descr (&ret, new_loc_descr (op, 0, 0));
      break;

    case MAX_EXPR:
      loc = build (COND_EXPR, ((loc)->common.type),
     build (LT_EXPR, integer_types[itk_int],
     ((loc)->exp.operands[0]), ((loc)->exp.operands[1])),
     ((loc)->exp.operands[1]), ((loc)->exp.operands[0]));



    case COND_EXPR:
      {
 dw_loc_descr_ref lhs
   = loc_descriptor_from_tree (((loc)->exp.operands[1]), 0);
 dw_loc_descr_ref rhs
   = loc_descriptor_from_tree (((loc)->exp.operands[2]), 0);
 dw_loc_descr_ref bra_node, jump_node, tmp;

 ret = loc_descriptor_from_tree (((loc)->exp.operands[0]), 0);
 if (ret == 0 || lhs == 0 || rhs == 0)
   return 0;

 bra_node = new_loc_descr (DW_OP_bra, 0, 0);
 add_loc_descr (&ret, bra_node);

 add_loc_descr (&ret, rhs);
 jump_node = new_loc_descr (DW_OP_skip, 0, 0);
 add_loc_descr (&ret, jump_node);

 add_loc_descr (&ret, lhs);
 bra_node->dw_loc_oprnd1.val_class = dw_val_class_loc;
 bra_node->dw_loc_oprnd1.v.val_loc = lhs;


 tmp = new_loc_descr (DW_OP_nop, 0, 0);
 add_loc_descr (&ret, tmp);
 jump_node->dw_loc_oprnd1.val_class = dw_val_class_loc;
 jump_node->dw_loc_oprnd1.v.val_loc = tmp;
      }
      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 8736, __FUNCTION__);
    }


  if (addressp && indirect_p == 0)
    return 0;


  if (!addressp && indirect_p > 0)
    {
      long long size = int_size_in_bytes (((loc)->common.type));

      if (size > (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) || size == -1)
 return 0;
      else if (size == (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8))
 op = DW_OP_deref;
      else
 op = DW_OP_deref_size;

      add_loc_descr (&ret, new_loc_descr (op, size, 0));
    }

  return ret;
}




static __inline__ long long
ceiling (value, boundary)
     long long value;
     unsigned int boundary;
{
  return (((value + boundary - 1) / boundary) * boundary);
}






static __inline__ tree
field_type (decl)
     tree decl;
{
  tree type;

  if (((enum tree_code) (decl)->common.code) == ERROR_MARK)
    return integer_types[itk_int];

  type = ((decl)->decl.result);
  if (type == (tree) ((void *)0))
    type = ((decl)->common.type);

  return type;
}





static __inline__ unsigned
simple_type_align_in_bits (type)
     tree type;
{
  return (((enum tree_code) (type)->common.code) != ERROR_MARK) ? ((type)->type.align) : (8 * ((target_flags & 0x00002000) ? 8 : 4));
}

static __inline__ unsigned
simple_decl_align_in_bits (decl)
     tree decl;
{
  return (((enum tree_code) (decl)->common.code) != ERROR_MARK) ? ((decl)->decl.u1.a.align) : (8 * ((target_flags & 0x00002000) ? 8 : 4));
}







static __inline__ unsigned long long
simple_type_size_in_bits (type)
     tree type;
{

  if (((enum tree_code) (type)->common.code) == ERROR_MARK)
    return (8 * ((target_flags & 0x00002000) ? 8 : 4));
  else if (((type)->type.size) == (tree) ((void *)0))
    return 0;
  else if (host_integerp (((type)->type.size), 1))
    return tree_low_cst (((type)->type.size), 1);
  else
    return ((type)->type.align);
}
# 8839 "../../../kg++fe/gnu/dwarf2out.c"
static long long
field_byte_offset (decl)
     tree decl;
{
  unsigned int type_align_in_bits;
  unsigned int decl_align_in_bits;
  unsigned long long type_size_in_bits;
  long long object_offset_in_bits;
  tree type;
  tree field_size_tree;
  long long bitpos_int;
  long long deepest_bitpos;
  unsigned long long field_size_in_bits;

  if (((enum tree_code) (decl)->common.code) == ERROR_MARK)
    return 0;
  else if (((enum tree_code) (decl)->common.code) != FIELD_DECL)
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 8856, __FUNCTION__);

  type = field_type (decl);
  field_size_tree = ((decl)->decl.size);



  if (! field_size_tree)
    field_size_tree = global_trees[TI_BITSIZE_ZERO];




  if (! host_integerp (bit_position (decl), 0))
    return 0;

  bitpos_int = int_bit_position (decl);


  if (host_integerp (field_size_tree, 1))
    field_size_in_bits = tree_low_cst (field_size_tree, 1);
  else
    field_size_in_bits = (8 * ((target_flags & 0x00002000) ? 8 : 4));

  type_size_in_bits = simple_type_size_in_bits (type);
  type_align_in_bits = simple_type_align_in_bits (type);
  decl_align_in_bits = simple_decl_align_in_bits (decl);
# 8925 "../../../kg++fe/gnu/dwarf2out.c"
  deepest_bitpos = bitpos_int + field_size_in_bits;



  object_offset_in_bits = deepest_bitpos - type_size_in_bits;


  object_offset_in_bits += type_align_in_bits - 1;
  object_offset_in_bits /= type_align_in_bits;
  object_offset_in_bits *= type_align_in_bits;

  if (object_offset_in_bits > bitpos_int)
    {

      object_offset_in_bits = deepest_bitpos - type_size_in_bits;


      object_offset_in_bits += decl_align_in_bits - 1;
      object_offset_in_bits /= decl_align_in_bits;
      object_offset_in_bits *= decl_align_in_bits;
    }

  return object_offset_in_bits / 8;
}
# 8959 "../../../kg++fe/gnu/dwarf2out.c"
static __inline__ void
add_AT_location_description (die, attr_kind, descr)
     dw_die_ref die;
     enum dwarf_attribute attr_kind;
     dw_loc_descr_ref descr;
{
  if (descr != 0)
    add_AT_loc (die, attr_kind, descr);
}
# 8988 "../../../kg++fe/gnu/dwarf2out.c"
static void
add_data_member_location_attribute (die, decl)
     dw_die_ref die;
     tree decl;
{
  long offset;
  dw_loc_descr_ref loc_descr = 0;

  if (((enum tree_code) (decl)->common.code) == TREE_VEC)
    {

      if (((decl)->common.static_flag) && is_cxx ())
 {
# 9010 "../../../kg++fe/gnu/dwarf2out.c"
   dw_loc_descr_ref tmp;


   tmp = new_loc_descr (DW_OP_dup, 0, 0);
   add_loc_descr (&loc_descr, tmp);


   tmp = new_loc_descr (DW_OP_deref, 0, 0);
   add_loc_descr (&loc_descr, tmp);


   offset = tree_low_cst (((decl)->vec.a[5]), 0);
   if (offset >= 0)
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9023, __FUNCTION__);

   tmp = int_loc_descriptor (-offset);
   add_loc_descr (&loc_descr, tmp);
   tmp = new_loc_descr (DW_OP_minus, 0, 0);
   add_loc_descr (&loc_descr, tmp);


   tmp = new_loc_descr (DW_OP_deref, 0, 0);
   add_loc_descr (&loc_descr, tmp);


   tmp = new_loc_descr (DW_OP_plus, 0, 0);
   add_loc_descr (&loc_descr, tmp);
 }
      else
 offset = tree_low_cst ((((decl))->vec.a[1]), 0);
    }
  else
    offset = field_byte_offset (decl);

  if (! loc_descr)
    {
      enum dwarf_location_atom op;
# 9056 "../../../kg++fe/gnu/dwarf2out.c"
      op = DW_OP_constu;




      loc_descr = new_loc_descr (op, offset, 0);
    }

  add_AT_loc (die, DW_AT_data_member_location, loc_descr);
}







static void
add_const_value_attribute (die, rtl)
     dw_die_ref die;
     rtx rtl;
{
  switch (((enum rtx_code) (rtl)->code))
    {
    case CONST_INT:





      {
 long long val = (((rtl)->fld[0]).rtwint);


 if (val < 0 && (long) val == val)
   add_AT_int (die, DW_AT_const_value, (long) val);
 else if ((unsigned long) val == (unsigned long long) val)
   add_AT_unsigned (die, DW_AT_const_value, (unsigned long) val);
 else
   {

     add_AT_long_long (die, DW_AT_const_value,
         val >> (8 * 4), val);



   }
      }
      break;

    case CONST_DOUBLE:




      {
 enum machine_mode mode = ((enum machine_mode) (rtl)->mode);

 if ((mode_class[(int) (mode)]) == MODE_FLOAT)
   {
     unsigned length = (mode_size[(int) (mode)]) / 4;
     long *array = (long *) xmalloc (sizeof (long) * length);
     struct real_value rv;

     memcpy (&(rv), &((((rtl))->fld[0]).rtwint), sizeof (struct real_value));
     switch (mode)
       {
       case SFmode:
  ((array[0]) = real_to_target (((void *)0), &(rv), mode_for_size (32, MODE_FLOAT, 0)));
  break;

       case DFmode:
  real_to_target (array, &(rv), mode_for_size (64, MODE_FLOAT, 0));
  break;

       case XFmode:
       case TFmode:
  real_to_target (array, &(rv), mode_for_size ((mips_abi == 1 || mips_abi == 2 ? 128 : 64), MODE_FLOAT, 0));
  break;

       default:
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9137, __FUNCTION__);
       }

     add_AT_float (die, DW_AT_const_value, length, array);
   }
 else
   {

     if ((8 * 4) != (8 * 8))
       fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9146, __FUNCTION__);

     add_AT_long_long (die, DW_AT_const_value,
         (((rtl)->fld[1]).rtwint), (((rtl)->fld[0]).rtwint));
   }
      }
      break;

    case CONST_STRING:
      add_AT_string (die, DW_AT_const_value, (((rtl)->fld[0]).rtstr));
      break;

    case SYMBOL_REF:
    case LABEL_REF:
    case CONST:
      add_AT_addr (die, DW_AT_const_value, rtl);
      do { if ((used_rtx_varray)->elements_used >= (used_rtx_varray)->num_elements) (((used_rtx_varray)) = varray_grow ((used_rtx_varray), 2 * (used_rtx_varray)->num_elements)); (used_rtx_varray)->data.rtx[(used_rtx_varray)->elements_used++] = (rtl); } while (0);
      break;

    case PLUS:
# 9177 "../../../kg++fe/gnu/dwarf2out.c"
      break;

    default:

      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9181, __FUNCTION__);
    }

}

static rtx
rtl_for_decl_location (decl)
     tree decl;
{
  rtx rtl;
# 9266 "../../../kg++fe/gnu/dwarf2out.c"
  rtl = (((decl)->decl.rtl != ((void *)0)) ? ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)) : ((void *)0));




  if (! reload_completed)
    {
      if (rtl
   && ((((enum rtx_code) (rtl)->code) == LABEL_REF || ((enum rtx_code) (rtl)->code) == SYMBOL_REF || ((enum rtx_code) (rtl)->code) == CONST_INT || ((enum rtx_code) (rtl)->code) == CONST_DOUBLE || ((enum rtx_code) (rtl)->code) == CONST || ((enum rtx_code) (rtl)->code) == HIGH || ((enum rtx_code) (rtl)->code) == CONST_VECTOR || ((enum rtx_code) (rtl)->code) == CONSTANT_P_RTX)
       || (((enum rtx_code) (rtl)->code) == MEM
           && (((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONSTANT_P_RTX))
       || (((enum rtx_code) (rtl)->code) == REG
           && ((enum tree_code) (decl)->common.code) == VAR_DECL
    && ((decl)->common.static_flag))))
 {



   return rtl;
 }
      rtl = (rtx) 0;
    }
  else if (((enum tree_code) (decl)->common.code) == PARM_DECL)
    {
      if (rtl == (rtx) 0 || is_pseudo_reg (rtl))
 {
   tree declared_type = type_main_variant (((decl)->common.type));
   tree passed_type = type_main_variant (((decl)->decl.initial));




   if (declared_type == passed_type)
     rtl = ((decl)->decl.u2.r);
   else if (! ((target_flags & 0x00010000) != 0)
     && ((enum tree_code) (declared_type)->common.code) == INTEGER_TYPE
     && ((mode_size[(int) (((declared_type)->type.mode))])
         <= (mode_size[(int) (((passed_type)->type.mode))])))
     rtl = ((decl)->decl.u2.r);
 }
# 9314 "../../../kg++fe/gnu/dwarf2out.c"
      else if (((enum rtx_code) (rtl)->code) == MEM
        && (((rtl)->fld[0]).rtx) != (const_int_rtx[64])
        && ! (((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) == CONSTANT_P_RTX)

        && ((enum rtx_code) (((decl)->decl.u2.r))->code) != MEM

        && (((enum rtx_code) ((((rtl)->fld[0]).rtx))->code) != REG
     || ((((((rtl)->fld[0]).rtx))->fld[0]).rtuint) == ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)
     || ((((((rtl)->fld[0]).rtx))->fld[0]).rtuint) == (0 + 29)

     || ((((((rtl)->fld[0]).rtx))->fld[0]).rtuint) == 0

       )

        && ((target_flags & 0x00010000) != 0)
        && ((((decl)->common.type))->type.mode) != ((enum machine_mode) (rtl)->mode)
        && ((mode_size[(int) (((((decl)->common.type))->type.mode))])
     < ((target_flags & 0x00002000) ? 8 : 4)))
 {
   int offset = (((target_flags & 0x00002000) ? 8 : 4)
   - (mode_size[(int) (((((decl)->common.type))->type.mode))]));

   rtl = gen_rtx_MEM (((((decl)->common.type))->type.mode),
        plus_constant_wide (((((rtl)->fld[0]).rtx)), (long long) (offset)));
 }
    }

  if (rtl != (rtx) 0)
    {
      rtl = eliminate_regs (rtl, 0, (rtx) 0);




    }




  else if (((enum tree_code) (decl)->common.code) == VAR_DECL && ((decl)->decl.initial))
    {


      if (((enum tree_code) (((decl)->decl.initial))->common.code) == STRING_CST
   && ((enum tree_code) (((decl)->common.type))->common.code) == ARRAY_TYPE)
 {
   tree arrtype = ((decl)->common.type);
   tree enttype = ((arrtype)->common.type);
   tree domain = ((arrtype)->type.values);
   tree init = ((decl)->decl.initial);
   enum machine_mode mode = ((enttype)->type.mode);

   if ((mode_class[(int) (mode)]) == MODE_INT && (mode_size[(int) (mode)]) == 1
       && domain
       && integer_zerop (((domain)->type.minval))
       && compare_tree_int (((domain)->type.maxval),
       ((init)->string.length) - 1) == 0
       && ((size_t) ((init)->string.length)
    == strlen (((init)->string.pointer)) + 1))
     rtl = gen_rtx_fmt_s (CONST_STRING, (VOIDmode), (((init)->string.pointer)));
 }



      else if (((enum tree_code) (((decl)->decl.initial))->common.code) == INTEGER_CST
        || ((enum tree_code) (((decl)->decl.initial))->common.code) == REAL_CST)
 {
   rtl = expand_expr (((decl)->decl.initial), (rtx) 0, VOIDmode,
        EXPAND_INITIALIZER);

   if (rtl && ((enum rtx_code) (rtl)->code) == MEM)
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9385, __FUNCTION__);
 }
    }
# 9397 "../../../kg++fe/gnu/dwarf2out.c"
  if (rtl)
    rtl = avoid_constant_pool_reference (rtl);

  return rtl;
}
# 9414 "../../../kg++fe/gnu/dwarf2out.c"
static void
add_location_or_const_value_attribute (die, decl)
     dw_die_ref die;
     tree decl;
{
  rtx rtl;
  dw_loc_descr_ref descr;

  if (((enum tree_code) (decl)->common.code) == ERROR_MARK)
    return;
  else if (((enum tree_code) (decl)->common.code) != VAR_DECL && ((enum tree_code) (decl)->common.code) != PARM_DECL)
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9425, __FUNCTION__);

  rtl = rtl_for_decl_location (decl);
  if (rtl == (rtx) 0)
    return;

  switch (((enum rtx_code) (rtl)->code))
    {
    case ADDRESSOF:


      break;

    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_STRING:
    case SYMBOL_REF:
    case LABEL_REF:
    case CONST:
    case PLUS:

      add_const_value_attribute (die, rtl);
      break;

    case MEM:
      if (((enum tree_code) (decl)->common.code) == VAR_DECL && ((decl)->decl.thread_local_flag))
 {




   descr = loc_descriptor_from_tree (decl, 1);
 }
      else
 {
 case REG:
 case SUBREG:
 case CONCAT:
   descr = loc_descriptor (rtl);
 }
      add_AT_location_description (die, DW_AT_location, descr);
      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9469, __FUNCTION__);
    }
}





static void
tree_add_const_value_attribute (var_die, decl)
     dw_die_ref var_die;
     tree decl;
{
  tree init = ((decl)->decl.initial);
  tree type = ((decl)->common.type);

  if (((decl)->common.readonly_flag) && ! ((decl)->common.volatile_flag) && init
      && initializer_constant_valid_p (init, type) == global_trees[TI_NULL_POINTER])
            ;
  else
    return;

  switch (((enum tree_code) (type)->common.code))
    {
    case INTEGER_TYPE:
      if (host_integerp (init, 0))
 add_AT_unsigned (var_die, DW_AT_const_value,
    tree_low_cst (init, 0));
      else
 add_AT_long_long (var_die, DW_AT_const_value,
     (((init)->int_cst.int_cst).high),
     (((init)->int_cst.int_cst).low));
      break;

    default:;
    }
}




static __inline__ void
add_name_attribute (die, name_string)
     dw_die_ref die;
     const char *name_string;
{
  if (name_string != ((void *)0) && *name_string != 0)
    {
      if (demangle_name_func)
 name_string = (*demangle_name_func) (name_string);

      add_AT_string (die, DW_AT_name, name_string);
    }
}




static void
add_bound_info (subrange_die, bound_attr, bound)
     dw_die_ref subrange_die;
     enum dwarf_attribute bound_attr;
     tree bound;
{
  switch (((enum tree_code) (bound)->common.code))
    {
    case ERROR_MARK:
      return;


    case INTEGER_CST:
      if (! host_integerp (bound, 0)
   || (bound_attr == DW_AT_lower_bound
       && (((is_c_family () || is_java ()) && integer_zerop (bound))
    || (is_fortran () && integer_onep (bound)))))

 ;
      else
 add_AT_unsigned (subrange_die, bound_attr, tree_low_cst (bound, 0));
      break;

    case CONVERT_EXPR:
    case NOP_EXPR:
    case NON_LVALUE_EXPR:
    case VIEW_CONVERT_EXPR:
      add_bound_info (subrange_die, bound_attr, ((bound)->exp.operands[0]));
      break;

    case SAVE_EXPR:
# 9580 "../../../kg++fe/gnu/dwarf2out.c"
      if ((*(rtx *) &(bound)->exp.operands[2])
   && (! optimize || ((enum rtx_code) ((*(rtx *) &(bound)->exp.operands[2]))->code) == MEM))
 {
   dw_die_ref ctx = lookup_decl_die (current_function_decl);
   dw_die_ref decl_die = new_die (DW_TAG_variable, ctx, bound);
   rtx loc = (*(rtx *) &(bound)->exp.operands[2]);



   if (((enum rtx_code) (loc)->code) == MEM)
     {
       rtx new_addr = fix_lexical_addr ((((loc)->fld[0]).rtx), bound);

       if ((((loc)->fld[0]).rtx) != new_addr)
  loc = gen_rtx_MEM (((enum machine_mode) (loc)->mode), new_addr);
     }

   add_AT_flag (decl_die, DW_AT_artificial, 1);
   add_type_attribute (decl_die, ((bound)->common.type), 1, 0, ctx);
   add_AT_location_description (decl_die, DW_AT_location,
           loc_descriptor (loc));
   add_AT_die_ref (subrange_die, bound_attr, decl_die);
 }


      break;

    case VAR_DECL:
    case PARM_DECL:
      {
 dw_die_ref decl_die = lookup_decl_die (bound);






 if (decl_die != ((void *)0))
   add_AT_die_ref (subrange_die, bound_attr, decl_die);
 break;
      }

    default:
      {



 dw_die_ref ctx, decl_die;
 dw_loc_descr_ref loc;

 loc = loc_descriptor_from_tree (bound, 0);
 if (loc == ((void *)0))
   break;

 if (current_function_decl == 0)
   ctx = comp_unit_die;
 else
   ctx = lookup_decl_die (current_function_decl);






 if (ctx == 0)
   bound = build (SAVE_EXPR, ((bound)->common.type), bound,
    current_function_decl, (tree) ((void *)0));

 decl_die = new_die (DW_TAG_variable, ctx, bound);
 add_AT_flag (decl_die, DW_AT_artificial, 1);
 add_type_attribute (decl_die, ((bound)->common.type), 1, 0, ctx);
 add_AT_loc (decl_die, DW_AT_location, loc);

 add_AT_die_ref (subrange_die, bound_attr, decl_die);
 break;
      }
    }
}




static void
add_subscript_info (type_die, type)
     dw_die_ref type_die;
     tree type;
{



  tree lower, upper;
  dw_die_ref subrange_die;
# 9691 "../../../kg++fe/gnu/dwarf2out.c"
    {
      tree domain = ((type)->type.values);




      subrange_die = new_die (DW_TAG_subrange_type, type_die, ((void *)0));
      if (domain)
 {

   lower = ((domain)->type.minval);
   upper = ((domain)->type.maxval);


   if (((domain)->common.type))
     {



       if (((enum tree_code) (domain)->common.code) == INTEGER_TYPE
    && ((domain)->type.name) == (tree) ((void *)0)
    && ((enum tree_code) (((domain)->common.type))->common.code) == INTEGER_TYPE
    && ((((domain)->common.type))->type.name) == (tree) ((void *)0))
  ;
       else
  add_type_attribute (subrange_die, ((domain)->common.type), 0, 0,
        type_die);
     }
# 9727 "../../../kg++fe/gnu/dwarf2out.c"
   add_bound_info (subrange_die, DW_AT_lower_bound, lower);
   if (upper)
     add_bound_info (subrange_die, DW_AT_upper_bound, upper);
 }




    }
}

static void
add_byte_size_attribute (die, tree_node)
     dw_die_ref die;
     tree tree_node;
{
  unsigned size;

  switch (((enum tree_code) (tree_node)->common.code))
    {
    case ERROR_MARK:
      size = 0;
      break;
    case ENUMERAL_TYPE:
    case RECORD_TYPE:
    case UNION_TYPE:
    case QUAL_UNION_TYPE:
      size = int_size_in_bytes (tree_node);
      break;
    case FIELD_DECL:




      size = simple_type_size_in_bits (field_type (tree_node)) / 8;
      break;
    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9764, __FUNCTION__);
    }





  add_AT_unsigned (die, DW_AT_byte_size, size);
}
# 9790 "../../../kg++fe/gnu/dwarf2out.c"
static __inline__ void
add_bit_offset_attribute (die, decl)
     dw_die_ref die;
     tree decl;
{
  long long object_offset_in_bytes = field_byte_offset (decl);
  tree type = ((decl)->decl.result);
  long long bitpos_int;
  long long highest_order_object_bit_offset;
  long long highest_order_field_bit_offset;
  long long unsigned bit_offset;


  if (!type
      || ((enum tree_code) (decl)->common.code) != FIELD_DECL)
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9805, __FUNCTION__);




  if (! host_integerp (bit_position (decl), 0)
      || ! host_integerp (((decl)->decl.size), 1))
    return;

  bitpos_int = int_bit_position (decl);






  highest_order_object_bit_offset = object_offset_in_bytes * 8;
  highest_order_field_bit_offset = bitpos_int;

  if (! ((target_flags & 0x00010000) != 0))
    {
      highest_order_field_bit_offset += tree_low_cst (((decl)->decl.size), 0);
      highest_order_object_bit_offset += simple_type_size_in_bits (type);
    }

  bit_offset
    = (! ((target_flags & 0x00010000) != 0)
       ? highest_order_object_bit_offset - highest_order_field_bit_offset
       : highest_order_field_bit_offset - highest_order_object_bit_offset);

  add_AT_unsigned (die, DW_AT_bit_offset, bit_offset);
}




static __inline__ void
add_bit_size_attribute (die, decl)
     dw_die_ref die;
     tree decl;
{

  if (((enum tree_code) (decl)->common.code) != FIELD_DECL
      || ! ((decl)->decl.result))
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9849, __FUNCTION__);

  if (host_integerp (((decl)->decl.size), 1))
    add_AT_unsigned (die, DW_AT_bit_size, tree_low_cst (((decl)->decl.size), 1));
}




static __inline__ void
add_prototyped_attribute (die, func_type)
     dw_die_ref die;
     tree func_type;
{
  if (get_AT_unsigned (comp_unit_die, DW_AT_language) == DW_LANG_C89
      && ((func_type)->type.values) != ((void *)0))
    add_AT_flag (die, DW_AT_prototyped, 1);
}





static __inline__ void
add_abstract_origin_attribute (die, origin)
     dw_die_ref die;
     tree origin;
{
  dw_die_ref origin_die = ((void *)0);

  if (((enum tree_code) (origin)->common.code) != FUNCTION_DECL)
    {






      tree fn = origin;

      if ((tree_code_type[(int) (((enum tree_code) (fn)->common.code))] == 't'))
 fn = ((fn)->common.chain);

      fn = decl_function_context (fn);
      if (fn)
 dwarf2out_abstract_function (fn);
    }

  if ((tree_code_type[(int) (((enum tree_code) (origin)->common.code))] == 'd'))
    origin_die = lookup_decl_die (origin);
  else if ((tree_code_type[(int) (((enum tree_code) (origin)->common.code))] == 't'))
    origin_die = lookup_type_die (origin);

  if (origin_die == ((void *)0))
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9903, __FUNCTION__);

  add_AT_die_ref (die, DW_AT_abstract_origin, origin_die);
}



static __inline__ void
add_pure_or_virtual_attribute (die, func_decl)
     dw_die_ref die;
     tree func_decl;
{
  if (((func_decl)->decl.vindex))
    {
      add_AT_unsigned (die, DW_AT_virtuality, DW_VIRTUALITY_virtual);

      if (host_integerp (((func_decl)->decl.vindex), 0))
 add_AT_loc (die, DW_AT_vtable_elem_location,
      new_loc_descr (DW_OP_constu,
       tree_low_cst (((func_decl)->decl.vindex), 0),
       0));


      if (debug_info_level > DINFO_LEVEL_TERSE)
 add_AT_die_ref (die, DW_AT_containing_type,
   lookup_type_die (((func_decl)->decl.context)));
    }
}



static void
add_src_coords_attributes (die, decl)
     dw_die_ref die;
     tree decl;
{
  unsigned file_index = lookup_filename ((((decl)->decl.locus).file));

  add_AT_unsigned (die, DW_AT_decl_file, file_index);
  add_AT_unsigned (die, DW_AT_decl_line, (((decl)->decl.locus).line));
}




static void
add_name_and_src_coords_attributes (die, decl)
     dw_die_ref die;
     tree decl;
{
  tree decl_name;

  decl_name = ((decl)->decl.name);
  if (decl_name != ((void *)0) && ((char *)(decl_name)->identifier.id.str) != ((void *)0))
    {
      add_name_attribute (die, dwarf2_name (decl, 0));
      if (! ((decl)->decl.artificial_flag))
 add_src_coords_attributes (die, decl);

      if ((((enum tree_code) (decl)->common.code) == FUNCTION_DECL || ((enum tree_code) (decl)->common.code) == VAR_DECL)
   && ((decl)->common.public_flag)
   && decl_assembler_name (decl) != ((decl)->decl.name)
   && !((decl)->decl.abstract_flag))
 add_AT_string (die, DW_AT_MIPS_linkage_name,
         ((char *)(decl_assembler_name (decl))->identifier.id.str));
    }
# 9980 "../../../kg++fe/gnu/dwarf2out.c"
}



static void
push_decl_scope (scope)
     tree scope;
{
  do { if ((decl_scope_table)->elements_used >= (decl_scope_table)->num_elements) (((decl_scope_table)) = varray_grow ((decl_scope_table), 2 * (decl_scope_table)->num_elements)); (decl_scope_table)->data.tree[(decl_scope_table)->elements_used++] = (scope); } while (0);
}



static __inline__ void
pop_decl_scope ()
{
  if (((decl_scope_table)->elements_used) <= 0)
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 9997, __FUNCTION__);

  ((decl_scope_table)->elements_used--);
}







static dw_die_ref
scope_die_for (t, context_die)
     tree t;
     dw_die_ref context_die;
{
  dw_die_ref scope_die = ((void *)0);
  tree containing_scope;
  int i;


  if (! (tree_code_type[(int) (((enum tree_code) (t)->common.code))] == 't'))
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 10019, __FUNCTION__);

  containing_scope = ((t)->type.context);


  if (containing_scope && ((enum tree_code) (containing_scope)->common.code) == NAMESPACE_DECL)
    containing_scope = (tree) ((void *)0);




  if (containing_scope && ((enum tree_code) (containing_scope)->common.code) == FUNCTION_TYPE)
    containing_scope = (tree) ((void *)0);

  if (containing_scope == (tree) ((void *)0))
    scope_die = comp_unit_die;
  else if ((tree_code_type[(int) (((enum tree_code) (containing_scope)->common.code))] == 't'))
    {



      for (i = ((decl_scope_table)->elements_used) - 1; i >= 0; --i)
 if (((decl_scope_table)->data.tree[i]) == containing_scope)
   break;

      if (i < 0)
 {
   if (debug_info_level > DINFO_LEVEL_TERSE
       && !((containing_scope)->common.asm_written_flag))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 10048, __FUNCTION__);


   scope_die = comp_unit_die;
 }
      else
 scope_die = lookup_type_die (containing_scope);
    }
  else
    scope_die = context_die;

  return scope_die;
}



static __inline__ int
local_scope_p (context_die)
     dw_die_ref context_die;
{
  for (; context_die; context_die = context_die->die_parent)
    if (context_die->die_tag == DW_TAG_inlined_subroutine
 || context_die->die_tag == DW_TAG_subprogram)
      return 1;

  return 0;
}



static __inline__ int
class_scope_p (context_die)
     dw_die_ref context_die;
{
  return (context_die
   && (context_die->die_tag == DW_TAG_structure_type
       || context_die->die_tag == DW_TAG_union_type));
}





static void
add_type_attribute (object_die, type, decl_const, decl_volatile, context_die)
     dw_die_ref object_die;
     tree type;
     int decl_const;
     int decl_volatile;
     dw_die_ref context_die;
{
  enum tree_code code = ((enum tree_code) (type)->common.code);
  dw_die_ref type_die = ((void *)0);





  if ((code == INTEGER_TYPE || code == REAL_TYPE)
      && ((type)->common.type) != 0 && ((type)->type.name) == 0)
    type = ((type)->common.type), code = ((enum tree_code) (type)->common.code);

  if (code == ERROR_MARK



      || code == VOID_TYPE)
    return;

  type_die = modified_type_die (type,
    decl_const || ((type)->common.readonly_flag),
    decl_volatile || ((type)->common.volatile_flag),
    context_die);

  if (type_die != ((void *)0))
    add_AT_die_ref (object_die, DW_AT_type, type_die);
}





static const char *
type_tag (type)
     tree type;
{
  const char *name = 0;

  if (((type)->type.name) != 0)
    {
      tree t = 0;


      if (((enum tree_code) (((type)->type.name))->common.code) == IDENTIFIER_NODE)
 t = ((type)->type.name);




      else if (((enum tree_code) (((type)->type.name))->common.code) == TYPE_DECL
        && ! ((((type)->type.name))->decl.ignored_flag))
 t = ((((type)->type.name))->decl.name);


      if (t != 0)
 name = ((char *)(t)->identifier.id.str);
    }

  return (name == 0 || *name == '\0') ? 0 : name;
}




static __inline__ tree
member_declared_type (member)
     tree member;
{
  return (((member)->decl.result)
   ? ((member)->decl.result) : ((member)->common.type));
}
# 10198 "../../../kg++fe/gnu/dwarf2out.c"
static void
gen_array_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  dw_die_ref scope_die = scope_die_for (type, context_die);
  dw_die_ref array_die;
  tree element_type;





  gen_type_die (((type)->common.type), context_die);


  array_die = new_die (DW_TAG_array_type, scope_die, type);
  add_name_attribute (array_die, type_tag (type));
  equate_type_number_to_die (type, array_die);

  if (((enum tree_code) (type)->common.code) == VECTOR_TYPE)
    {


      type = ((((((type)->type.values))->type.values))->common.type);
      add_AT_flag (array_die, DW_AT_GNU_vector, 1);
    }
# 10240 "../../../kg++fe/gnu/dwarf2out.c"
  if (! ((type)->type.values))
    add_AT_unsigned (array_die, DW_AT_declaration, 1);
  else

    add_subscript_info (array_die, type);


  element_type = ((type)->common.type);
# 10260 "../../../kg++fe/gnu/dwarf2out.c"
  add_type_attribute (array_die, element_type, 0, 0, context_die);
}

static void
gen_set_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  dw_die_ref type_die
    = new_die (DW_TAG_set_type, scope_die_for (type, context_die), type);

  equate_type_number_to_die (type, type_die);
  add_type_attribute (type_die, ((type)->common.type), 0, 0, context_die);
}
# 10303 "../../../kg++fe/gnu/dwarf2out.c"
static void
retry_incomplete_types ()
{
  int i;

  for (i = ((incomplete_types)->elements_used) - 1; i >= 0; i--)
    gen_type_die (((incomplete_types)->data.tree[i]), comp_unit_die);
}



static void
gen_inlined_enumeration_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  dw_die_ref type_die = new_die (DW_TAG_enumeration_type, context_die, type);



  add_abstract_origin_attribute (type_die, type);
}



static void
gen_inlined_structure_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  dw_die_ref type_die = new_die (DW_TAG_structure_type, context_die, type);



  add_abstract_origin_attribute (type_die, type);
}



static void
gen_inlined_union_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  dw_die_ref type_die = new_die (DW_TAG_union_type, context_die, type);



  add_abstract_origin_attribute (type_die, type);
}






static void
gen_enumeration_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  dw_die_ref type_die = lookup_type_die (type);

  if (type_die == ((void *)0))
    {
      type_die = new_die (DW_TAG_enumeration_type,
     scope_die_for (type, context_die), type);
      equate_type_number_to_die (type, type_die);
      add_name_attribute (type_die, type_tag (type));
    }
  else if (! ((type)->type.size))
    return;
  else
    remove_AT (type_die, DW_AT_declaration);




  if (((type)->type.size))
    {
      tree link;

      ((type)->common.asm_written_flag) = 1;
      add_byte_size_attribute (type_die, type);
      if (((type)->common.chain) != (tree) ((void *)0))
 add_src_coords_attributes (type_die, ((type)->common.chain));



      if (type_die->die_parent == ((void *)0))
 add_child_die (scope_die_for (type, context_die), type_die);

      for (link = ((type)->type.values);
    link != ((void *)0); link = ((link)->common.chain))
 {
   dw_die_ref enum_die = new_die (DW_TAG_enumerator, type_die, link);

   add_name_attribute (enum_die,
         ((char *)(((link)->list.purpose))->identifier.id.str));

   if (host_integerp (((link)->list.value),
        ((((((link)->list.value))->common.type))->common.unsigned_flag)))
     {
       if (tree_int_cst_sgn (((link)->list.value)) < 0)
  add_AT_int (enum_die, DW_AT_const_value,
       tree_low_cst (((link)->list.value), 0));
       else
  add_AT_unsigned (enum_die, DW_AT_const_value,
     tree_low_cst (((link)->list.value), 1));
     }
 }
    }
  else
    add_AT_flag (type_die, DW_AT_declaration, 1);
}
# 10432 "../../../kg++fe/gnu/dwarf2out.c"
static dw_die_ref
gen_formal_parameter_die (node, context_die)
     tree node;
     dw_die_ref context_die;
{
  dw_die_ref parm_die
    = new_die (DW_TAG_formal_parameter, context_die, node);
  tree origin;

  switch (tree_code_type[(int) (((enum tree_code) (node)->common.code))])
    {
    case 'd':
      origin = decl_ultimate_origin (node);
      if (origin != ((void *)0))
 add_abstract_origin_attribute (parm_die, origin);
      else
 {
   add_name_and_src_coords_attributes (parm_die, node);
   add_type_attribute (parm_die, ((node)->common.type),
         ((node)->common.readonly_flag),
         ((node)->common.volatile_flag),
         context_die);
   if (((node)->decl.artificial_flag))
     add_AT_flag (parm_die, DW_AT_artificial, 1);
 }

      equate_decl_number_to_die (node, parm_die);
      if (! ((node)->decl.abstract_flag))
 add_location_or_const_value_attribute (parm_die, node);

      break;

    case 't':

      add_type_attribute (parm_die, node, 0, 0, context_die);
      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 10470, __FUNCTION__);
    }

  return parm_die;
}




static void
gen_unspecified_parameters_die (decl_or_type, context_die)
     tree decl_or_type;
     dw_die_ref context_die;
{
  new_die (DW_TAG_unspecified_parameters, context_die, decl_or_type);
}






static void
gen_formal_types_die (function_or_method_type, context_die)
     tree function_or_method_type;
     dw_die_ref context_die;
{
  tree link;
  tree formal_type = ((void *)0);
  tree first_parm_type;
  tree arg;

  if (((enum tree_code) (function_or_method_type)->common.code) == FUNCTION_DECL)
    {
      arg = ((function_or_method_type)->decl.arguments);
      function_or_method_type = ((function_or_method_type)->common.type);
    }
  else
    arg = (tree) ((void *)0);

  first_parm_type = ((function_or_method_type)->type.values);



  for (link = first_parm_type; link; )
    {
      dw_die_ref parm_die;

      formal_type = ((link)->list.value);
      if (formal_type == global_trees[TI_VOID_TYPE])
 break;


      parm_die = gen_formal_parameter_die (formal_type, context_die);
      if ((((enum tree_code) (function_or_method_type)->common.code) == METHOD_TYPE
    && link == first_parm_type)
   || (arg && ((arg)->decl.artificial_flag)))
 add_AT_flag (parm_die, DW_AT_artificial, 1);

      link = ((link)->common.chain);
      if (arg)
 arg = ((arg)->common.chain);
    }



  if (formal_type != global_trees[TI_VOID_TYPE])
    gen_unspecified_parameters_die (function_or_method_type, context_die);



  for (link = ((function_or_method_type)->type.values);
       link && ((link)->list.value);
       link = ((link)->common.chain))
    gen_type_die (((link)->list.value), context_die);
}







static void
gen_type_die_for_member (type, member, context_die)
     tree type, member;
     dw_die_ref context_die;
{
  gen_type_die (type, context_die);



  if (((((type)->common.chain))->decl.external_flag)
      && ! lookup_decl_die (member))
    {
      if (decl_ultimate_origin (member))
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 10566, __FUNCTION__);

      push_decl_scope (type);
      if (((enum tree_code) (member)->common.code) == FUNCTION_DECL)
 gen_subprogram_die (member, lookup_type_die (type));
      else
 gen_variable_die (member, lookup_type_die (type));

      pop_decl_scope ();
    }
}




static void
dwarf2out_abstract_function (decl)
     tree decl;
{
  dw_die_ref old_die;
  tree save_fn;
  tree context;
  int was_abstract = ((decl)->decl.abstract_flag);


  decl = (((decl)->decl.abstract_origin) ? ((decl)->decl.abstract_origin) : (decl));

  old_die = lookup_decl_die (decl);
  if (old_die && get_AT_unsigned (old_die, DW_AT_inline))

    return;



  if (debug_info_level > DINFO_LEVEL_TERSE)
    {
      context = decl_class_context (decl);
      if (context)
 gen_type_die_for_member
   (context, decl, decl_function_context (decl) ? ((void *)0) : comp_unit_die);
    }


  save_fn = current_function_decl;
  current_function_decl = decl;

  set_decl_abstract_flags (decl, 1);
  dwarf2out_decl (decl);
  if (! was_abstract)
    set_decl_abstract_flags (decl, 0);

  current_function_decl = save_fn;
}




static void
gen_subprogram_die (decl, context_die)
     tree decl;
     dw_die_ref context_die;
{
  char label_id[30];
  tree origin = decl_ultimate_origin (decl);
  dw_die_ref subr_die;
  rtx fp_reg;
  tree fn_arg_types;
  tree outer_scope;
  dw_die_ref old_die = lookup_decl_die (decl);
  int declaration = (current_function_decl != decl
       || class_scope_p (context_die));
# 10645 "../../../kg++fe/gnu/dwarf2out.c"
  if (origin && declaration && class_scope_p (context_die))
    {
      origin = ((void *)0);
      if (old_die)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 10649, __FUNCTION__);
    }

  if (origin != ((void *)0))
    {
      if (declaration && ! local_scope_p (context_die))
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 10655, __FUNCTION__);



      if (old_die && old_die->die_parent == ((void *)0))
 add_child_die (context_die, old_die);

      subr_die = new_die (DW_TAG_subprogram, context_die, decl);
      add_abstract_origin_attribute (subr_die, origin);
    }
  else if (old_die)
    {
      unsigned file_index = lookup_filename ((((decl)->decl.locus).file));

      if (!get_AT_flag (old_die, DW_AT_declaration)



   && !get_AT_unsigned (old_die, DW_AT_inline))
 {





   if ((global_dc)->diagnostic_count[(int) (DK_ERROR)])
     return;
   fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 10682, __FUNCTION__);
 }
# 10692 "../../../kg++fe/gnu/dwarf2out.c"
      if ((old_die->die_parent == comp_unit_die || context_die == ((void *)0))
   && (((decl)->decl.artificial_flag)
       || (get_AT_unsigned (old_die, DW_AT_decl_file) == file_index
    && (get_AT_unsigned (old_die, DW_AT_decl_line)
        == (unsigned) (((decl)->decl.locus).line)))))
 {
   subr_die = old_die;


   remove_AT (subr_die, DW_AT_declaration);
   remove_children (subr_die);
 }
      else
 {
   subr_die = new_die (DW_TAG_subprogram, context_die, decl);
   add_AT_die_ref (subr_die, DW_AT_specification, old_die);
   if (get_AT_unsigned (old_die, DW_AT_decl_file) != file_index)
     add_AT_unsigned (subr_die, DW_AT_decl_file, file_index);
   if (get_AT_unsigned (old_die, DW_AT_decl_line)
       != (unsigned) (((decl)->decl.locus).line))
     add_AT_unsigned
       (subr_die, DW_AT_decl_line, (((decl)->decl.locus).line));
 }
    }
  else
    {
      subr_die = new_die (DW_TAG_subprogram, context_die, decl);

      if (((decl)->common.public_flag))
 add_AT_flag (subr_die, DW_AT_external, 1);

      add_name_and_src_coords_attributes (subr_die, decl);
      if (debug_info_level > DINFO_LEVEL_TERSE)
 {
   add_prototyped_attribute (subr_die, ((decl)->common.type));
   add_type_attribute (subr_die, ((((decl)->common.type))->common.type),
         0, 0, context_die);
 }

      add_pure_or_virtual_attribute (subr_die, decl);
      if (((decl)->decl.artificial_flag))
 add_AT_flag (subr_die, DW_AT_artificial, 1);

      if (((decl)->common.protected_flag))
 add_AT_unsigned (subr_die, DW_AT_accessibility, DW_ACCESS_protected);
      else if (((decl)->common.private_flag))
 add_AT_unsigned (subr_die, DW_AT_accessibility, DW_ACCESS_private);
    }

  if (declaration)
    {
      if (!old_die || !get_AT_unsigned (old_die, DW_AT_inline))
 {
   add_AT_flag (subr_die, DW_AT_declaration, 1);





   if (((decl)->decl.context) || ((decl)->decl.abstract_flag))
     equate_decl_number_to_die (decl, subr_die);
 }
    }
  else if (((decl)->decl.abstract_flag))
    {
      if (((decl)->decl.inline_flag) && !flag_no_inline)
 {





   if (((decl)->decl.defer_output))
     add_AT_unsigned (subr_die, DW_AT_inline, DW_INL_declared_inlined);
   else
     add_AT_unsigned (subr_die, DW_AT_inline, DW_INL_inlined);
 }
      else
 add_AT_unsigned (subr_die, DW_AT_inline, DW_INL_declared_not_inlined);

      equate_decl_number_to_die (decl, subr_die);
    }
  else if (!((decl)->decl.external_flag))
    {
      if (!old_die || !get_AT_unsigned (old_die, DW_AT_inline))
 equate_decl_number_to_die (decl, subr_die);

      sprintf ((label_id), "*%s%s%ld", ("$"), ("LFB"), (long)((cfun->funcdef_no)));

      add_AT_lbl_id (subr_die, DW_AT_low_pc, label_id);
      sprintf ((label_id), "*%s%s%ld", ("$"), ("LFE"), (long)((cfun->funcdef_no)));

      add_AT_lbl_id (subr_die, DW_AT_high_pc, label_id);

      add_pubname (decl, subr_die);
      add_arange (decl, subr_die);



      add_AT_fde_ref (subr_die, DW_AT_MIPS_fde, current_funcdef_fde);





      fp_reg
 = frame_pointer_needed ? (global_rtl[GR_HARD_FRAME_POINTER]) : (global_rtl[GR_STACK_POINTER]);
      add_AT_loc (subr_die, DW_AT_frame_base, reg_loc_descriptor (fp_reg));
# 10808 "../../../kg++fe/gnu/dwarf2out.c"
    }
# 10823 "../../../kg++fe/gnu/dwarf2out.c"
  if (debug_info_level <= DINFO_LEVEL_TERSE)
    ;
  else if (declaration)
    gen_formal_types_die (decl, subr_die);
  else
    {

      tree arg_decls = ((decl)->decl.arguments);
      tree parm;



      for (parm = arg_decls; parm; parm = ((parm)->common.chain))
 if (((enum tree_code) (parm)->common.code) == PARM_DECL)
   {
     if (((parm)->decl.name)
  && !strcmp (((char *)(((parm)->decl.name))->identifier.id.str),
       "__builtin_va_alist"))
       gen_unspecified_parameters_die (parm, subr_die);
     else
       gen_decl_die (parm, subr_die);
   }







      fn_arg_types = ((((decl)->common.type))->type.values);
      if (fn_arg_types != ((void *)0))
 {

   if (((tree_last (fn_arg_types))->list.value) != global_trees[TI_VOID_TYPE])
     gen_unspecified_parameters_die (decl, subr_die);
 }
      else if (((decl)->decl.initial) == (tree) ((void *)0))
 gen_unspecified_parameters_die (decl, subr_die);
    }



  outer_scope = ((decl)->decl.initial);
# 10881 "../../../kg++fe/gnu/dwarf2out.c"
  if (! declaration && ((enum tree_code) (outer_scope)->common.code) != ERROR_MARK)
    {
      current_function_has_inlines = 0;
      decls_for_scope (outer_scope, subr_die, 0);
# 10897 "../../../kg++fe/gnu/dwarf2out.c"
    }
}



static void
gen_variable_die (decl, context_die)
     tree decl;
     dw_die_ref context_die;
{
  tree origin = decl_ultimate_origin (decl);
  dw_die_ref var_die = new_die (DW_TAG_variable, context_die, decl);

  dw_die_ref old_die = lookup_decl_die (decl);
  int declaration = (((decl)->decl.external_flag)
       || class_scope_p (context_die));

  if (origin != ((void *)0))
    add_abstract_origin_attribute (var_die, origin);
# 10925 "../../../kg++fe/gnu/dwarf2out.c"
  else if (old_die && ((decl)->common.static_flag)
    && get_AT_flag (old_die, DW_AT_declaration) == 1)
    {

      add_AT_die_ref (var_die, DW_AT_specification, old_die);
      if (((decl)->decl.name))
 {
   unsigned file_index = lookup_filename ((((decl)->decl.locus).file));

   if (get_AT_unsigned (old_die, DW_AT_decl_file) != file_index)
     add_AT_unsigned (var_die, DW_AT_decl_file, file_index);

   if (get_AT_unsigned (old_die, DW_AT_decl_line)
       != (unsigned) (((decl)->decl.locus).line))

     add_AT_unsigned (var_die, DW_AT_decl_line,
        (((decl)->decl.locus).line));
 }
    }
  else
    {
      add_name_and_src_coords_attributes (var_die, decl);
      add_type_attribute (var_die, ((decl)->common.type), ((decl)->common.readonly_flag),
     ((decl)->common.volatile_flag), context_die);

      if (((decl)->common.public_flag))
 add_AT_flag (var_die, DW_AT_external, 1);

      if (((decl)->decl.artificial_flag))
 add_AT_flag (var_die, DW_AT_artificial, 1);

      if (((decl)->common.protected_flag))
 add_AT_unsigned (var_die, DW_AT_accessibility, DW_ACCESS_protected);
      else if (((decl)->common.private_flag))
 add_AT_unsigned (var_die, DW_AT_accessibility, DW_ACCESS_private);
    }

  if (declaration)
    add_AT_flag (var_die, DW_AT_declaration, 1);

  if (class_scope_p (context_die) || ((decl)->decl.abstract_flag))
    equate_decl_number_to_die (decl, var_die);

  if (! declaration && ! ((decl)->decl.abstract_flag))
    {
      add_location_or_const_value_attribute (var_die, decl);
      add_pubname (decl, var_die);
    }
  else
    tree_add_const_value_attribute (var_die, decl);
}



static void
gen_label_die (decl, context_die)
     tree decl;
     dw_die_ref context_die;
{
  tree origin = decl_ultimate_origin (decl);
  dw_die_ref lbl_die = new_die (DW_TAG_label, context_die, decl);
  rtx insn;
  char label[30];

  if (origin != ((void *)0))
    add_abstract_origin_attribute (lbl_die, origin);
  else
    add_name_and_src_coords_attributes (lbl_die, decl);

  if (((decl)->decl.abstract_flag))
    equate_decl_number_to_die (decl, lbl_die);
  else
    {
      insn = ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl));




      if (((enum rtx_code) (insn)->code) == CODE_LABEL
   || ((((enum rtx_code) (insn)->code) == NOTE
        && (((insn)->fld[5]).rtint) == NOTE_INSN_DELETED_LABEL)))
 {





   if ((((insn))->volatil))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 11013, __FUNCTION__);

   sprintf ((label), "*%s%s%ld", ("$"), ("L"), (long)((((insn)->fld[6]).rtint)));
   add_AT_lbl_id (lbl_die, DW_AT_low_pc, label);
 }
    }
}



static void
gen_lexical_block_die (stmt, context_die, depth)
     tree stmt;
     dw_die_ref context_die;
     int depth;
{
  dw_die_ref stmt_die = new_die (DW_TAG_lexical_block, context_die, stmt);
  char label[30];

  if (! ((stmt)->block.abstract_flag))
    {
      if (((stmt)->block.fragment_chain))
 {
   tree chain;

   add_AT_range_list (stmt_die, DW_AT_ranges, add_ranges (stmt));

   chain = ((stmt)->block.fragment_chain);
   do
     {
       add_ranges (chain);
       chain = ((chain)->block.fragment_chain);
     }
   while (chain);
   add_ranges (((void *)0));
 }
      else
 {
   sprintf ((label), "*%s%s%ld", ("$"), ("LBB"), (long)(((stmt)->block.block_num)));

   add_AT_lbl_id (stmt_die, DW_AT_low_pc, label);
   sprintf ((label), "*%s%s%ld", ("$"), ("LBE"), (long)(((stmt)->block.block_num)));

   add_AT_lbl_id (stmt_die, DW_AT_high_pc, label);
 }
    }

  decls_for_scope (stmt, stmt_die, depth);
}



static void
gen_inlined_subroutine_die (stmt, context_die, depth)
     tree stmt;
     dw_die_ref context_die;
     int depth;
{
  tree decl = block_ultimate_origin (stmt);





  dwarf2out_abstract_function (decl);

  if (! ((stmt)->block.abstract_flag))
    {
      dw_die_ref subr_die
 = new_die (DW_TAG_inlined_subroutine, context_die, stmt);
      char label[30];

      add_abstract_origin_attribute (subr_die, decl);
      sprintf ((label), "*%s%s%ld", ("$"), ("LBB"), (long)(((stmt)->block.block_num)));

      add_AT_lbl_id (subr_die, DW_AT_low_pc, label);
      sprintf ((label), "*%s%s%ld", ("$"), ("LBE"), (long)(((stmt)->block.block_num)));

      add_AT_lbl_id (subr_die, DW_AT_high_pc, label);
      decls_for_scope (stmt, subr_die, depth);
      current_function_has_inlines = 1;
    }
  else
# 11108 "../../../kg++fe/gnu/dwarf2out.c"
    gen_lexical_block_die (stmt, context_die, depth);
}



static void
gen_field_die (decl, context_die)
     tree decl;
     dw_die_ref context_die;
{
  dw_die_ref decl_die;

  if (((decl)->common.type) == global_trees[TI_ERROR_MARK])
    return;

  decl_die = new_die (DW_TAG_member, context_die, decl);
  add_name_and_src_coords_attributes (decl_die, decl);
  add_type_attribute (decl_die, member_declared_type (decl),
        ((decl)->common.readonly_flag), ((decl)->common.volatile_flag),
        context_die);

  if (((decl)->decl.result))
    {
      add_byte_size_attribute (decl_die, decl);
      add_bit_size_attribute (decl_die, decl);
      add_bit_offset_attribute (decl_die, decl);
    }

  if (((enum tree_code) (((decl)->decl.context))->common.code) != UNION_TYPE)
    add_data_member_location_attribute (decl_die, decl);

  if (((decl)->decl.artificial_flag))
    add_AT_flag (decl_die, DW_AT_artificial, 1);

  if (((decl)->common.protected_flag))
    add_AT_unsigned (decl_die, DW_AT_accessibility, DW_ACCESS_protected);
  else if (((decl)->common.private_flag))
    add_AT_unsigned (decl_die, DW_AT_accessibility, DW_ACCESS_private);
}
# 11188 "../../../kg++fe/gnu/dwarf2out.c"
static void
gen_ptr_to_mbr_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  dw_die_ref ptr_die
    = new_die (DW_TAG_ptr_to_member_type,
        scope_die_for (type, context_die), type);

  equate_type_number_to_die (type, ptr_die);
  add_AT_die_ref (ptr_die, DW_AT_containing_type,
    lookup_type_die (((type)->type.maxval)));
  add_type_attribute (ptr_die, ((type)->common.type), 0, 0, context_die);
}



static dw_die_ref
gen_compile_unit_die (filename)
     const char *filename;
{
  dw_die_ref die;
  char producer[250];
  const char *wd = getpwd ();
  const char *language_string = lang_hooks.name;
  int language;

  die = new_die (DW_TAG_compile_unit, ((void *)0), ((void *)0));
  add_name_attribute (die, filename);

  if (wd != ((void *)0) && filename[0] != '/')
    add_AT_string (die, DW_AT_comp_dir, wd);

  sprintf (producer, "%s %s", language_string, version_string);
# 11230 "../../../kg++fe/gnu/dwarf2out.c"
  if (debug_info_level > DINFO_LEVEL_TERSE)
    strcat (producer, " -g");


  add_AT_string (die, DW_AT_producer, producer);

  if (strcmp (language_string, "GNU C++") == 0)
    language = DW_LANG_C_plus_plus;
  else if (strcmp (language_string, "GNU Ada") == 0)
    language = DW_LANG_Ada83;
  else if (strcmp (language_string, "GNU F77") == 0)
    language = DW_LANG_Fortran77;
  else if (strcmp (language_string, "GNU Pascal") == 0)
    language = DW_LANG_Pascal83;
  else if (strcmp (language_string, "GNU Java") == 0)
    language = DW_LANG_Java;
  else
    language = DW_LANG_C89;

  add_AT_unsigned (die, DW_AT_language, language);
  return die;
}



static void
gen_string_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  dw_die_ref type_die
    = new_die (DW_TAG_string_type, scope_die_for (type, context_die), type);

  equate_type_number_to_die (type, type_die);







}



static void
gen_inheritance_die (binfo, context_die)
     tree binfo;
     dw_die_ref context_die;
{
  dw_die_ref die = new_die (DW_TAG_inheritance, context_die, binfo);

  add_type_attribute (die, ((binfo)->common.type), 0, 0, context_die);
  add_data_member_location_attribute (die, binfo);

  if (((binfo)->common.static_flag))
    add_AT_unsigned (die, DW_AT_virtuality, DW_VIRTUALITY_virtual);

  if (((binfo)->common.public_flag))
    add_AT_unsigned (die, DW_AT_accessibility, DW_ACCESS_public);
  else if (((binfo)->common.protected_flag))
    add_AT_unsigned (die, DW_AT_accessibility, DW_ACCESS_protected);
}



static void
gen_member_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  tree member;
  dw_die_ref child;
# 11317 "../../../kg++fe/gnu/dwarf2out.c"
  if (((type)->type.binfo) && ((((type)->type.binfo))->vec.a[4]))
    {
      tree bases = ((((type)->type.binfo))->vec.a[4]);
      int n_bases = ((bases)->vec.length);
      int i;

      for (i = 0; i < n_bases; i++)
 gen_inheritance_die (((bases)->vec.a[i]), context_die);
    }


  for (member = ((type)->type.values); member; member = ((member)->common.chain))
    {





      child = lookup_decl_die (member);
      if (child)
 splice_child_die (context_die, child);
      else
 gen_decl_die (member, context_die);
    }


  for (member = ((type)->type.maxval); member; member = ((member)->common.chain))
    {

      if (((member)->decl.abstract_origin))
 continue;

      child = lookup_decl_die (member);
      if (child)
 splice_child_die (context_die, child);
      else
 gen_decl_die (member, context_die);
    }
}





static void
gen_struct_or_union_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  dw_die_ref type_die = lookup_type_die (type);
  dw_die_ref scope_die = 0;
  int nested = 0;
  int complete = (((type)->type.size)
    && (! ((type)->common.chain)
        || ! ((((type)->common.chain))->decl.external_flag)));

  if (type_die && ! complete)
    return;

  if (((type)->type.context) != (tree) ((void *)0)
      && (((enum tree_code) (((type)->type.context))->common.code) == ARRAY_TYPE || ((enum tree_code) (((type)->type.context))->common.code) == RECORD_TYPE || ((enum tree_code) (((type)->type.context))->common.code) == UNION_TYPE || ((enum tree_code) (((type)->type.context))->common.code) == QUAL_UNION_TYPE || ((enum tree_code) (((type)->type.context))->common.code) == SET_TYPE))
    nested = 1;

  scope_die = scope_die_for (type, context_die);

  if (! type_die || (nested && scope_die == comp_unit_die))

    {
      dw_die_ref old_die = type_die;

      type_die = new_die (((enum tree_code) (type)->common.code) == RECORD_TYPE
     ? DW_TAG_structure_type : DW_TAG_union_type,
     scope_die, type);
      equate_type_number_to_die (type, type_die);
      if (old_die)
 add_AT_die_ref (type_die, DW_AT_specification, old_die);
      else
 add_name_attribute (type_die, type_tag (type));
    }
  else
    remove_AT (type_die, DW_AT_declaration);



  if (complete)
    {


      ((type)->common.asm_written_flag) = 1;
      add_byte_size_attribute (type_die, type);
      if (((type)->common.chain) != (tree) ((void *)0))
 add_src_coords_attributes (type_die, ((type)->common.chain));



      if (type_die->die_parent == ((void *)0))
 add_child_die (scope_die, type_die);

      push_decl_scope (type);
      gen_member_die (type, type_die);
      pop_decl_scope ();


      if (((type)->type.minval))
 {
   tree vtype = ((((type)->type.minval))->decl.vindex);

   gen_type_die (vtype, context_die);
   add_AT_die_ref (type_die, DW_AT_containing_type,
     lookup_type_die (vtype));
 }
    }
  else
    {
      add_AT_flag (type_die, DW_AT_declaration, 1);


      if (((type)->common.chain)
   && ! decl_function_context (((type)->common.chain)))
 do { if ((incomplete_types)->elements_used >= (incomplete_types)->num_elements) (((incomplete_types)) = varray_grow ((incomplete_types), 2 * (incomplete_types)->num_elements)); (incomplete_types)->data.tree[(incomplete_types)->elements_used++] = (type); } while (0);
    }
}



static void
gen_subroutine_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  tree return_type = ((type)->common.type);
  dw_die_ref subr_die
    = new_die (DW_TAG_subroutine_type,
        scope_die_for (type, context_die), type);

  equate_type_number_to_die (type, subr_die);
  add_prototyped_attribute (subr_die, type);
  add_type_attribute (subr_die, return_type, 0, 0, context_die);
  gen_formal_types_die (type, subr_die);
}



static void
gen_typedef_die (decl, context_die)
     tree decl;
     dw_die_ref context_die;
{
  dw_die_ref type_die;
  tree origin;

  if (((decl)->common.asm_written_flag))
    return;

  ((decl)->common.asm_written_flag) = 1;
  type_die = new_die (DW_TAG_typedef, context_die, decl);
  origin = decl_ultimate_origin (decl);
  if (origin != ((void *)0))
    add_abstract_origin_attribute (type_die, origin);
  else
    {
      tree type;

      add_name_and_src_coords_attributes (type_die, decl);
      if (((decl)->decl.result))
 {
   type = ((decl)->decl.result);

   if (type == ((decl)->common.type))
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 11486, __FUNCTION__);
   else
     equate_type_number_to_die (((decl)->common.type), type_die);
 }
      else
 type = ((decl)->common.type);

      add_type_attribute (type_die, type, ((decl)->common.readonly_flag),
     ((decl)->common.volatile_flag), context_die);
    }

  if (((decl)->decl.abstract_flag))
    equate_decl_number_to_die (decl, type_die);
}



static void
gen_type_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  int need_pop;

  if (type == (tree) ((void *)0) || type == global_trees[TI_ERROR_MARK])
    return;

  if (((type)->type.name) && ((enum tree_code) (((type)->type.name))->common.code) == TYPE_DECL
      && ((((type)->type.name))->decl.result))
    {
      if (((type)->common.asm_written_flag))
 return;


      if (((((type)->type.name))->decl.result) == type)
 fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 11521, __FUNCTION__);

      ((type)->common.asm_written_flag) = 1;
      gen_decl_die (((type)->type.name), context_die);
      return;
    }






  if (((enum tree_code) (type)->common.code) != VECTOR_TYPE)
    type = type_main_variant (type);

  if (((type)->common.asm_written_flag))
    return;

  switch (((enum tree_code) (type)->common.code))
    {
    case ERROR_MARK:
      break;

    case POINTER_TYPE:
    case REFERENCE_TYPE:





      ((type)->common.asm_written_flag) = 1;



      gen_type_die (((type)->common.type), context_die);
      break;

    case OFFSET_TYPE:


      gen_type_die (((type)->type.maxval), context_die);


      gen_type_die (((type)->common.type), context_die);



      gen_ptr_to_mbr_type_die (type, context_die);
      break;

    case SET_TYPE:
      gen_type_die (((type)->type.values), context_die);
      gen_set_type_die (type, context_die);
      break;

    case FILE_TYPE:
      gen_type_die (((type)->common.type), context_die);
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 11578, __FUNCTION__);
      break;

    case FUNCTION_TYPE:

      gen_type_die (((type)->common.type), context_die);
      gen_subroutine_type_die (type, context_die);
      break;

    case METHOD_TYPE:

      gen_type_die (((type)->common.type), context_die);
      gen_subroutine_type_die (type, context_die);
      break;

    case ARRAY_TYPE:
      if (((type)->type.string_flag) && ((enum tree_code) (((type)->common.type))->common.code) == CHAR_TYPE)
 {
   gen_type_die (((type)->common.type), context_die);
   gen_string_type_die (type, context_die);
 }
      else
 gen_array_type_die (type, context_die);
      break;

    case VECTOR_TYPE:
      gen_array_type_die (type, context_die);
      break;

    case ENUMERAL_TYPE:
    case RECORD_TYPE:
    case UNION_TYPE:
    case QUAL_UNION_TYPE:






      if (((type)->type.context)
   && (((enum tree_code) (((type)->type.context))->common.code) == ARRAY_TYPE || ((enum tree_code) (((type)->type.context))->common.code) == RECORD_TYPE || ((enum tree_code) (((type)->type.context))->common.code) == UNION_TYPE || ((enum tree_code) (((type)->type.context))->common.code) == QUAL_UNION_TYPE || ((enum tree_code) (((type)->type.context))->common.code) == SET_TYPE)
   && ! ((((type)->type.context))->common.asm_written_flag))
 {
   gen_type_die (((type)->type.context), context_die);

   if (((type)->common.asm_written_flag))
     return;


   push_decl_scope (((type)->type.context));
   context_die = lookup_type_die (((type)->type.context));
   need_pop = 1;
 }
      else
 need_pop = 0;

      if (((enum tree_code) (type)->common.code) == ENUMERAL_TYPE)
 gen_enumeration_type_die (type, context_die);
      else
 gen_struct_or_union_type_die (type, context_die);

      if (need_pop)
 pop_decl_scope ();




      return;

    case VOID_TYPE:
    case INTEGER_TYPE:
    case REAL_TYPE:
    case COMPLEX_TYPE:
    case BOOLEAN_TYPE:
    case CHAR_TYPE:

      break;

    case LANG_TYPE:

      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 11661, __FUNCTION__);
    }

  ((type)->common.asm_written_flag) = 1;
}



static void
gen_tagged_type_instantiation_die (type, context_die)
     tree type;
     dw_die_ref context_die;
{
  if (type == (tree) ((void *)0) || type == global_trees[TI_ERROR_MARK])
    return;





  if (type != type_main_variant (type))
    fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 11682, __FUNCTION__);




  switch (((enum tree_code) (type)->common.code))
    {
    case ERROR_MARK:
      break;

    case ENUMERAL_TYPE:
      gen_inlined_enumeration_type_die (type, context_die);
      break;

    case RECORD_TYPE:
      gen_inlined_structure_type_die (type, context_die);
      break;

    case UNION_TYPE:
    case QUAL_UNION_TYPE:
      gen_inlined_union_type_die (type, context_die);
      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 11706, __FUNCTION__);
    }
}




static void
gen_block_die (stmt, context_die, depth)
     tree stmt;
     dw_die_ref context_die;
     int depth;
{
  int must_output_die = 0;
  tree origin;
  tree decl;
  enum tree_code origin_code;


  if (stmt == (tree) ((void *)0) || !((stmt)->common.used_flag)
      || (!((stmt)->common.asm_written_flag) && !((stmt)->block.abstract_flag)))
    return;




  if (((stmt)->block.fragment_origin))
    {
      tree sub;

      for (sub = ((stmt)->block.subblocks); sub; sub = (((sub))->common.chain))
 gen_block_die (sub, context_die, depth + 1);

      return;
    }






  origin = block_ultimate_origin (stmt);
  origin_code = (origin != ((void *)0)) ? ((enum tree_code) (origin)->common.code) : ERROR_MARK;



  if (origin_code == FUNCTION_DECL)


    must_output_die = 1;
  else
    {







      if (! is_body_block (origin ? origin : stmt))
 {


   if (debug_info_level > DINFO_LEVEL_TERSE)


     must_output_die = (((stmt)->block.vars) != ((void *)0));
   else


     for (decl = ((stmt)->block.vars);
   decl != ((void *)0); decl = ((decl)->common.chain))
       if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL
    && ((decl)->decl.initial))
  {
    must_output_die = 1;
    break;
  }
 }
    }
# 11794 "../../../kg++fe/gnu/dwarf2out.c"
  if (must_output_die)
    {
      if (origin_code == FUNCTION_DECL)
 gen_inlined_subroutine_die (stmt, context_die, depth);
      else
 gen_lexical_block_die (stmt, context_die, depth);
    }
  else
    decls_for_scope (stmt, context_die, depth);
}




static void
decls_for_scope (stmt, context_die, depth)
     tree stmt;
     dw_die_ref context_die;
     int depth;
{
  tree decl;
  tree subblocks;


  if (stmt == (tree) ((void *)0) || ! ((stmt)->common.used_flag))
    return;





  for (decl = ((stmt)->block.vars); decl != ((void *)0); decl = ((decl)->common.chain))
    {
      dw_die_ref die;

      if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL)
 die = lookup_decl_die (decl);
      else if (((enum tree_code) (decl)->common.code) == TYPE_DECL && (((decl)->decl.name) == (tree) ((void *)0) || (((decl)->decl.artificial_flag) && is_tagged_type (((decl)->common.type)) && ((decl == ((((decl)->common.type))->common.chain)) || (((decl)->decl.abstract_origin) != (tree) ((void *)0) && (decl_ultimate_origin (decl) == ((((decl)->common.type))->common.chain)))))))
 die = lookup_type_die (((decl)->common.type));
      else
 die = ((void *)0);

      if (die != ((void *)0) && die->die_parent == ((void *)0))
 add_child_die (context_die, die);
      else
 gen_decl_die (decl, context_die);
    }


  if (debug_info_level <= DINFO_LEVEL_TERSE)
    return;



  for (subblocks = ((stmt)->block.subblocks);
       subblocks != ((void *)0);
       subblocks = (((subblocks))->common.chain))
    gen_block_die (subblocks, context_die, depth + 1);
}



static __inline__ int
is_redundant_typedef (decl)
     tree decl;
{
  if ((((decl)->decl.name) == (tree) ((void *)0) || (((decl)->decl.artificial_flag) && is_tagged_type (((decl)->common.type)) && ((decl == ((((decl)->common.type))->common.chain)) || (((decl)->decl.abstract_origin) != (tree) ((void *)0) && (decl_ultimate_origin (decl) == ((((decl)->common.type))->common.chain)))))))
    return 1;

  if (((decl)->decl.artificial_flag)
      && ((decl)->decl.context)
      && is_tagged_type (((decl)->decl.context))
      && ((enum tree_code) (((((decl)->decl.context))->type.name))->common.code) == TYPE_DECL
      && ((decl)->decl.name) == ((((((decl)->decl.context))->type.name))->decl.name))

    return 1;

  return 0;
}



static void
gen_decl_die (decl, context_die)
     tree decl;
     dw_die_ref context_die;
{
  tree origin;

  if ((tree_code_type[(int) (((enum tree_code) (decl)->common.code))] == 'd') && ((decl)->decl.ignored_flag))
    return;

  switch (((enum tree_code) (decl)->common.code))
    {
    case ERROR_MARK:
      break;

    case CONST_DECL:


      break;

    case FUNCTION_DECL:


      if (((decl)->decl.initial) == (tree) ((void *)0) && ((decl)->decl.context) == (tree) ((void *)0)
   && (current_function_decl == (tree) ((void *)0) || ((decl)->decl.artificial_flag)))
 break;


      if ((((decl)->decl.abstract_origin) ? ((decl)->decl.abstract_origin) : (decl)) != decl)
 dwarf2out_abstract_function (((decl)->decl.abstract_origin));



      else if (((decl)->decl.inline_flag) && ! ((decl)->decl.abstract_flag)
        && ! class_scope_p (context_die)



        && ((decl)->decl.initial) != (tree) ((void *)0))
 {
   dwarf2out_abstract_function (decl);
   set_decl_origin_self (decl);
 }


      else if (debug_info_level > DINFO_LEVEL_TERSE)
 {


   gen_type_die (((((decl)->common.type))->common.type), context_die);


   if (((decl)->decl.vindex) != (tree) ((void *)0))
     gen_type_die (((decl)->decl.context), context_die);


   origin = decl_class_context (decl);
   if (origin != (tree) ((void *)0))
     gen_type_die_for_member (origin, decl, context_die);
 }


      gen_subprogram_die (decl, context_die);
      break;

    case TYPE_DECL:


      if (debug_info_level <= DINFO_LEVEL_TERSE)
 break;







      if ((((decl)->decl.name) == (tree) ((void *)0) || (((decl)->decl.artificial_flag) && is_tagged_type (((decl)->common.type)) && ((decl == ((((decl)->common.type))->common.chain)) || (((decl)->decl.abstract_origin) != (tree) ((void *)0) && (decl_ultimate_origin (decl) == ((((decl)->common.type))->common.chain)))))) && decl_ultimate_origin (decl) != (tree) ((void *)0))
 {
   gen_tagged_type_instantiation_die (((decl)->common.type), context_die);
   break;
 }

      if (is_redundant_typedef (decl))
 gen_type_die (((decl)->common.type), context_die);
      else

 gen_typedef_die (decl, context_die);
      break;

    case LABEL_DECL:
      if (debug_info_level >= DINFO_LEVEL_NORMAL)
 gen_label_die (decl, context_die);
      break;

    case VAR_DECL:


      if (debug_info_level <= DINFO_LEVEL_TERSE)
 break;



      gen_type_die (((decl)->common.type), context_die);


      origin = decl_class_context (decl);
      if (origin != (tree) ((void *)0))
 gen_type_die_for_member (origin, decl, context_die);





      origin = decl_ultimate_origin (decl);
      if (origin != (tree) ((void *)0) && ((enum tree_code) (origin)->common.code) == PARM_DECL)
 gen_formal_parameter_die (decl, context_die);
      else
 gen_variable_die (decl, context_die);
      break;

    case FIELD_DECL:


      if (((decl)->decl.name) != (tree) ((void *)0)
   || ((enum tree_code) (((decl)->common.type))->common.code) == UNION_TYPE)
 {
   gen_type_die (member_declared_type (decl), context_die);
   gen_field_die (decl, context_die);
 }
      break;

    case PARM_DECL:
      gen_type_die (((decl)->common.type), context_die);
      gen_formal_parameter_die (decl, context_die);
      break;

    case NAMESPACE_DECL:

      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 12018, __FUNCTION__);
    }
}

static void
mark_limbo_die_list (ptr)
     void *ptr __attribute__ ((__unused__));
{
  limbo_die_node *node;
  for (node = limbo_die_list; node; node = node->next)
    do { if (node->created_for != ((void *)0)) gt_ggc_mx_lang_tree_node (node->created_for); } while (0);
}



void
dwarf2out_add_library_unit_info (filename, context_list)
     const char *filename;
     const char *context_list;
{
  unsigned int file_index;

  if (filename != ((void *)0))
    {
      dw_die_ref unit_die = new_die (DW_TAG_module, comp_unit_die, ((void *)0));
      tree context_list_decl
 = build_decl (LABEL_DECL, (__builtin_constant_p (context_list) ? get_identifier_with_length ((context_list), (unsigned) strlen (context_list)) : (get_identifier) (context_list)),
        global_trees[TI_VOID_TYPE]);

      ((context_list_decl)->common.public_flag) = 1;
      add_name_attribute (unit_die, context_list);
      file_index = lookup_filename (filename);
      add_AT_unsigned (unit_die, DW_AT_decl_file, file_index);
      add_pubname (context_list_decl, unit_die);
    }
}




static void
dwarf2out_global_decl (decl)
     tree decl;
{




  if (((enum tree_code) (decl)->common.code) != FUNCTION_DECL || !((decl)->decl.initial))
    dwarf2out_decl (decl);
}



void
dwarf2out_decl (decl)
     tree decl;
{
  dw_die_ref context_die = comp_unit_die;

  switch (((enum tree_code) (decl)->common.code))
    {
    case ERROR_MARK:
      return;

    case FUNCTION_DECL:



      if (((decl)->decl.external_flag) && (((decl)->decl.built_in_class) != NOT_BUILT_IN))
 return;
# 12117 "../../../kg++fe/gnu/dwarf2out.c"
      if (((decl)->decl.initial) == (tree) ((void *)0))
 return;




      if (decl_function_context (decl)

   && debug_info_level > DINFO_LEVEL_TERSE)
 context_die = ((void *)0);
      break;

    case VAR_DECL:
# 12138 "../../../kg++fe/gnu/dwarf2out.c"
      if (((decl)->decl.external_flag) && !((decl)->common.used_flag))
 return;



      if (debug_info_level <= DINFO_LEVEL_TERSE)
 return;
      break;

    case TYPE_DECL:

      if (((decl)->decl.external_flag))
 return;



      if ((((decl)->decl.locus).line) == 0)
 {


   if ((get_AT_unsigned (comp_unit_die, DW_AT_language)
        == DW_LANG_C_plus_plus)
       && ((enum tree_code) (((decl)->common.type))->common.code) == BOOLEAN_TYPE
       && ! ((decl)->decl.ignored_flag))
     modified_type_die (((decl)->common.type), 0, 0, ((void *)0));

   return;
 }


      if (debug_info_level <= DINFO_LEVEL_TERSE)
 return;



      if (decl_function_context (decl))
 context_die = ((void *)0);

      break;

    default:
      return;
    }

  gen_decl_die (decl, context_die);
}




static void
dwarf2out_begin_block (line, blocknum)
     unsigned int line __attribute__ ((__unused__));
     unsigned int blocknum;
{
  function_section (current_function_decl);
  fprintf (asm_out_file, "%s%s%d:\n", "$", "LBB", blocknum);
}




static void
dwarf2out_end_block (line, blocknum)
     unsigned int line __attribute__ ((__unused__));
     unsigned int blocknum;
{
  function_section (current_function_decl);
  fprintf (asm_out_file, "%s%s%d:\n", "$", "LBE", blocknum);
}
# 12216 "../../../kg++fe/gnu/dwarf2out.c"
static _Bool
dwarf2out_ignore_block (block)
     tree block;
{
  tree decl;

  for (decl = ((block)->block.vars); decl; decl = ((decl)->common.chain))
    if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL
 || (((enum tree_code) (decl)->common.code) == TYPE_DECL && (((decl)->decl.name) == (tree) ((void *)0) || (((decl)->decl.artificial_flag) && is_tagged_type (((decl)->common.type)) && ((decl == ((((decl)->common.type))->common.chain)) || (((decl)->decl.abstract_origin) != (tree) ((void *)0) && (decl_ultimate_origin (decl) == ((((decl)->common.type))->common.chain))))))))
      return 0;

  return 1;
}
# 12241 "../../../kg++fe/gnu/dwarf2out.c"
static unsigned
lookup_filename (file_name)
     const char *file_name;
{
  unsigned i;


  if (strcmp (file_name, "<internal>") == 0
      || strcmp (file_name, "<built-in>") == 0)
    return 0;



  if (file_table.last_lookup_index != 0)
    if (0 == strcmp (file_name,
       file_table.table[file_table.last_lookup_index]))
      return file_table.last_lookup_index;


  for (i = 1; i < file_table.in_use; i++)
    if (strcmp (file_name, file_table.table[i]) == 0)
      {
 file_table.last_lookup_index = i;
 return i;
      }



  if (i == file_table.allocated)
    {
      file_table.allocated = i + 64;
      file_table.table = (char **)
 xrealloc (file_table.table, file_table.allocated * sizeof (char *));
    }


  file_table.table[i] = xstrdup (file_name);
  file_table.in_use = i + 1;
  file_table.last_lookup_index = i;

  if (1)
    {
      fprintf (asm_out_file, "\t.file %u ", i);
      output_quoted_string (asm_out_file, file_name);
      fputc_unlocked ('\n', asm_out_file);
    }

  return i;
}

static void
init_file_table ()
{

  file_table.table = (char **) xcalloc (64, sizeof (char *));
  file_table.allocated = 64;


  file_table.in_use = 1;
  file_table.last_lookup_index = 0;
}





static void
dwarf2out_source_line (line, filename)
     unsigned int line;
     const char *filename;
{
  if (debug_info_level >= DINFO_LEVEL_NORMAL)
    {
      function_section (current_function_decl);


      if (flag_debug_asm)
 fprintf (asm_out_file, "\t%s %s:%d\n", " #",
   filename, line);

      if (1)
 {
   unsigned file_num = lookup_filename (filename);


   fprintf (asm_out_file, "\t.loc %d %d 0\n", file_num, line);


   line_info_table_in_use++;


   if (((current_function_decl)->decl.section_name))
     separate_line_info_table_in_use++;
 }
      else if (((current_function_decl)->decl.section_name))
 {
   dw_separate_line_info_ref line_info;
   fprintf (asm_out_file, "%s%s%d:\n", "$", "LSM", separate_line_info_table_in_use);



   if (separate_line_info_table_in_use
       == separate_line_info_table_allocated)
     {
       separate_line_info_table_allocated += 1024;
       separate_line_info_table
  = (dw_separate_line_info_ref)
    xrealloc (separate_line_info_table,
       separate_line_info_table_allocated
       * sizeof (dw_separate_line_info_entry));
     }


   line_info
     = &separate_line_info_table[separate_line_info_table_in_use++];
   line_info->dw_file_num = lookup_filename (filename);
   line_info->dw_line_num = line;
   line_info->function = (cfun->funcdef_no);
 }
      else
 {
   dw_line_info_ref line_info;

   fprintf (asm_out_file, "%s%s%d:\n", "$", "LM", line_info_table_in_use);



   if (line_info_table_in_use == line_info_table_allocated)
     {
       line_info_table_allocated += 1024;
       line_info_table
  = (dw_line_info_ref)
    xrealloc (line_info_table,
       (line_info_table_allocated
        * sizeof (dw_line_info_entry)));
     }


   line_info = &line_info_table[line_info_table_in_use++];
   line_info->dw_file_num = lookup_filename (filename);
   line_info->dw_line_num = line;
 }
    }
}



static void
dwarf2out_start_source_file (lineno, filename)
     unsigned int lineno;
     const char *filename;
{
# 12404 "../../../kg++fe/gnu/dwarf2out.c"
  is_main_source = 0;

  if (debug_info_level >= DINFO_LEVEL_VERBOSE)
    {

      WFE_Macro_Start_File(lineno, lookup_filename (filename));
      return;

      named_section_flags (".debug_macinfo", 0x00400);
      dw2_asm_output_data (1, DW_MACINFO_start_file, "Start new file");
      dw2_asm_output_data_uleb128 (lineno, "Included from line number %d",
       lineno);
      dw2_asm_output_data_uleb128 (lookup_filename (filename),
       "Filename we just started");
    }
}



static void
dwarf2out_end_source_file (lineno)
     unsigned int lineno __attribute__ ((__unused__));
{






  if (debug_info_level >= DINFO_LEVEL_VERBOSE)
    {

      WFE_Macro_End_File();
      return;

      named_section_flags (".debug_macinfo", 0x00400);
      dw2_asm_output_data (1, DW_MACINFO_end_file, "End file");
    }
}





static void
dwarf2out_define (lineno, buffer)
     unsigned lineno __attribute__ ((__unused__));
     const char *buffer __attribute__ ((__unused__));
{
  if (debug_info_level >= DINFO_LEVEL_VERBOSE)
    {

      WFE_Macro_Define(lineno, buffer);
      return;

      named_section_flags (".debug_macinfo", 0x00400);
      dw2_asm_output_data (1, DW_MACINFO_define, "Define macro");
      dw2_asm_output_data_uleb128 (lineno, "At line number %d", lineno);
      dw2_asm_output_nstring (buffer, -1, "The macro");
    }
}





static void
dwarf2out_undef (lineno, buffer)
     unsigned lineno __attribute__ ((__unused__));
     const char *buffer __attribute__ ((__unused__));
{
  if (debug_info_level >= DINFO_LEVEL_VERBOSE)
    {

      WFE_Macro_Undef(lineno, buffer);
      return;

      named_section_flags (".debug_macinfo", 0x00400);
      dw2_asm_output_data (1, DW_MACINFO_undef, "Undefine macro");
      dw2_asm_output_data_uleb128 (lineno, "At line number %d", lineno);
      dw2_asm_output_nstring (buffer, -1, "The macro");
    }
}



static void
dwarf2out_init (main_input_filename)
     const char *main_input_filename;
{
  init_file_table ();


  primary_filename = main_input_filename;




  lookup_filename (main_input_filename);


  decl_die_table
    = (dw_die_ref *) xcalloc (256, sizeof (dw_die_ref));
  decl_die_table_allocated = 256;
  decl_die_table_in_use = 0;


  decl_scope_table = varray_init (256, VARRAY_DATA_TREE, "decl_scope_table");


  abbrev_die_table
    = (dw_die_ref *) xcalloc (256,
         sizeof (dw_die_ref));
  abbrev_die_table_allocated = 256;

  abbrev_die_table_in_use = 1;


  line_info_table
    = (dw_line_info_ref) xcalloc (1024,
      sizeof (dw_line_info_entry));
  line_info_table_allocated = 1024;


  line_info_table_in_use = 1;






  comp_unit_die = gen_compile_unit_die (main_input_filename);
  is_main_source = 1;

  incomplete_types = varray_init (64, VARRAY_DATA_TREE, "incomplete_types");

  used_rtx_varray = varray_init (32, VARRAY_DATA_RTX, "used_rtx_varray");

  ggc_add_root (&limbo_die_list, 1, 1, mark_limbo_die_list);

  sprintf ((text_end_label), "*%s%s%ld", ("$"), ("Letext"), (long)(0));
  sprintf ((abbrev_section_label), "*%s%s%ld", ("$"), ("Ldebug_abbrev"), (long)(0));

  if (1)
    sprintf ((text_section_label), "*%s%s%ld", ("$"), ("Ltext"), (long)(0));
  else
    strcpy (text_section_label, stripattributes (".text"));

  sprintf ((debug_info_section_label), "*%s%s%ld", ("$"), ("Ldebug_info"), (long)(0));

  sprintf ((debug_line_section_label), "*%s%s%ld", ("$"), ("Ldebug_line"), (long)(0));

  sprintf ((ranges_section_label), "*%s%s%ld", ("$"), ("Ldebug_ranges"), (long)(0));

  named_section_flags (".debug_abbrev", 0x00400);
  do { assemble_name ((asm_out_file), (abbrev_section_label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
  named_section_flags (".debug_info", 0x00400);
  do { assemble_name ((asm_out_file), (debug_info_section_label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
  named_section_flags (".debug_line", 0x00400);
  do { assemble_name ((asm_out_file), (debug_line_section_label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);

  if (debug_info_level >= DINFO_LEVEL_VERBOSE)
    {
      named_section_flags (".debug_macinfo", 0x00400);
      sprintf ((macinfo_section_label), "*%s%s%ld", ("$"), ("Ldebug_macinfo"), (long)(0));

      do { assemble_name ((asm_out_file), (macinfo_section_label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
    }

  if (1)
    {
      text_section ();
      do { assemble_name ((asm_out_file), (text_section_label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
    }
}



static hashnode
indirect_string_alloc (tab)
     hash_table *tab __attribute__ ((__unused__));
{
  struct indirect_string_node *node;

  node = xmalloc (sizeof (struct indirect_string_node));
  node->refcount = 0;
  node->form = 0;
  node->label = ((void *)0);

  return (hashnode) node;
}




static int
output_indirect_string (pfile, h, v)
     struct cpp_reader *pfile __attribute__ ((__unused__));
     hashnode h;
     const void * v __attribute__ ((__unused__));
{
  struct indirect_string_node *node = (struct indirect_string_node *) h;

  if (node->form == DW_FORM_strp)
    {
      named_section_flags (".debug_str", (0x00400 | 0x08000 | 0x10000 | 1));
      do { assemble_name ((asm_out_file), (node->label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
      assemble_string ((const char *) ((&node->id)->str),
         ((&node->id)->len) + 1);
    }

  return 1;
}




static void
dwarf2out_finish (input_filename)
     const char *input_filename __attribute__ ((__unused__));
{
  limbo_die_node *node, *next_node;
  dw_die_ref die = 0;

  if (get_AT (comp_unit_die, DW_AT_comp_dir) == ((void *)0))
    {
      char *wd = getpwd ();
      unsigned i;

      if (wd != ((void *)0))
 {
   for (i = 1; i < file_table.in_use; i++)
     if (file_table.table[i][0] != '/')
       {
  add_AT_string (comp_unit_die, DW_AT_comp_dir, wd);
  break;
       }
 }
    }






  for (node = limbo_die_list; node; node = next_node)
    {
      next_node = node->next;
      die = node->die;

      if (die->die_parent == ((void *)0))
 {
   dw_die_ref origin = get_AT_ref (die, DW_AT_abstract_origin);
   tree context;

   if (origin)
     add_child_die (origin->die_parent, die);
   else if (die == comp_unit_die)
     ;



   else if (node->created_for
     && ((enum tree_code) (node->created_for)->common.code) == SAVE_EXPR
     && 0 != (origin = (lookup_decl_die
          ((((node->created_for))->exp.operands[1])))))

     add_child_die (origin, die);
   else if ((global_dc)->diagnostic_count[(int) (DK_ERROR)] > 0 || (global_dc)->diagnostic_count[(int) (DK_SORRY)] > 0)

     add_child_die (comp_unit_die, die);
   else if (node->created_for
     && (((tree_code_type[(int) (((enum tree_code) (node->created_for)->common.code))] == 'd')
   && (context = ((node->created_for)->decl.context)))
         || ((tree_code_type[(int) (((enum tree_code) (node->created_for)->common.code))] == 't')
      && (context = ((node->created_for)->type.context))))
     && ((enum tree_code) (context)->common.code) == FUNCTION_DECL)
     {





       origin = lookup_decl_die (context);
       if (! origin)
  fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 12689, __FUNCTION__);
       add_child_die (origin, die);
     }
   else
     fancy_abort ("../../../kg++fe/gnu/dwarf2out.c", 12693, __FUNCTION__);
 }

      free (node);
    }

  limbo_die_list = ((void *)0);



  retry_incomplete_types ();



  reverse_all_dies (comp_unit_die);



  if (flag_eliminate_dwarf2_dups)
    break_out_includes (comp_unit_die);



  add_sibling_attributes (comp_unit_die);
  for (node = limbo_die_list; node; node = node->next)
    add_sibling_attributes (node->die);


  text_section ();
  fprintf (asm_out_file, "%s%s%d:\n", "$", "Letext", 0);






  if (! 1)
    {
      named_section_flags (".debug_line", 0x00400);
      output_line_info ();
    }


  if (have_location_lists)
    {

      named_section_flags (".debug_loc", 0x00400);
      sprintf ((loc_section_label), "*%s%s%ld", ("$"), ("Ldebug_loc"), (long)(0));

      do { assemble_name ((asm_out_file), (loc_section_label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
      output_location_lists (die);
      have_location_lists = 0;
    }



  if (separate_line_info_table_in_use == 0)
    {
      add_AT_lbl_id (comp_unit_die, DW_AT_low_pc, text_section_label);
      add_AT_lbl_id (comp_unit_die, DW_AT_high_pc, text_end_label);
    }



  else if (have_location_lists || ranges_table_in_use)
    add_AT_addr (comp_unit_die, DW_AT_entry_pc, (const_int_rtx[64]));

  if (debug_info_level >= DINFO_LEVEL_NORMAL)
    add_AT_lbl_offset (comp_unit_die, DW_AT_stmt_list,
         debug_line_section_label);

  if (debug_info_level >= DINFO_LEVEL_VERBOSE)
    add_AT_lbl_offset (comp_unit_die, DW_AT_macro_info, macinfo_section_label);



  for (node = limbo_die_list; node; node = node->next)
    output_comp_unit (node->die, 0);

  output_comp_unit (comp_unit_die, 0);


  named_section_flags (".debug_abbrev", 0x00400);
  output_abbrev_section ();


  if (pubname_table_in_use)
    {
      named_section_flags (".debug_pubnames", 0x00400);
      output_pubnames ();
    }



  if (fde_table_in_use)
    {
      named_section_flags (".debug_aranges", 0x00400);
      output_aranges ();
    }


  if (ranges_table_in_use)
    {
      named_section_flags (".debug_ranges", 0x00400);
      do { assemble_name ((asm_out_file), (ranges_section_label)); fputs_unlocked (":\n", (asm_out_file)); } while (0);
      output_ranges ();
    }


  if (debug_info_level >= DINFO_LEVEL_VERBOSE)
    {
      named_section_flags (".debug_macinfo", 0x00400);
      dw2_asm_output_data (1, DW_MACINFO_end_file, "End file");
      dw2_asm_output_data (1, 0, "End compilation unit");
    }



  if (debug_str_hash)
    ht_forall (debug_str_hash, output_indirect_string, ((void *)0));
}







# 1 "../../../kg++fe/gnu/MIPS/gt-dwarf2out.h" 1
# 25 "../../../kg++fe/gnu/MIPS/gt-dwarf2out.h"
const struct ggc_root_tab gt_ggc_r_gt_dwarf2out_h[] = {
  {
    &decl_scope_table,
    1,
    sizeof (decl_scope_table),
    &gt_ggc_mx_varray_head_tag

  },
  {
    &incomplete_types,
    1,
    sizeof (incomplete_types),
    &gt_ggc_mx_varray_head_tag

  },
  {
    &used_rtx_varray,
    1,
    sizeof (used_rtx_varray),
    &gt_ggc_mx_varray_head_tag

  },
  { ((void *)0), 0, 0, ((void *)0) }
};
# 12821 "../../../kg++fe/gnu/dwarf2out.c" 2
