# 1 "../../../kgccfe/gnu/c-parse.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kgccfe/gnu/c-parse.c"
# 68 "../../../kgccfe/gnu/c-parse.c"
   enum yytokentype {
     IDENTIFIER = 258,
     TYPENAME = 259,
     SCSPEC = 260,
     STATIC = 261,
     TYPESPEC = 262,
     TYPE_QUAL = 263,
     CONSTANT = 264,
     STRING = 265,
     ELLIPSIS = 266,
     PRAGMA_OPTIONS = 267,
     PRAGMA_EXEC_FREQ = 268,
     FREQ_NEVER = 269,
     FREQ_INIT = 270,
     FREQ_FREQUENT = 271,
     PRIVATE = 272,
     COPYPRIVATE = 273,
     FIRSTPRIVATE = 274,
     LASTPRIVATE = 275,
     SHARED = 276,
     DEFAULT = 277,
     NONE = 278,
     REDUCTION = 279,
     COPYIN = 280,
     DYNAMIC = 281,
     GUIDED = 282,
     RUNTIME = 283,
     ORDERED = 284,
     SCHEDULE = 285,
     NOWAIT = 286,
     PRAGMA_OMP = 287,
     PARALLEL = 288,
     NUM_THREADS = 289,
     SECTIONS = 290,
     SECTION = 291,
     SINGLE = 292,
     MASTER = 293,
     CRITICAL = 294,
     BARRIER = 295,
     ATOMIC = 296,
     FLUSH = 297,
     THREADPRIVATE = 298,
     SIZEOF = 299,
     ENUM = 300,
     STRUCT = 301,
     UNION = 302,
     IF = 303,
     ELSE = 304,
     WHILE = 305,
     DO = 306,
     FOR = 307,
     SWITCH = 308,
     CASE = 309,
     BREAK = 310,
     CONTINUE = 311,
     RETURN = 312,
     GOTO = 313,
     ASM_KEYWORD = 314,
     TYPEOF = 315,
     ALIGNOF = 316,
     ATTRIBUTE = 317,
     EXTENSION = 318,
     LABEL = 319,
     REALPART = 320,
     IMAGPART = 321,
     VA_ARG = 322,
     CHOOSE_EXPR = 323,
     TYPES_COMPATIBLE_P = 324,
     PTR_VALUE = 325,
     PTR_BASE = 326,
     PTR_EXTENT = 327,
     STRING_FUNC_NAME = 328,
     VAR_FUNC_NAME = 329,
     ASSIGN = 330,
     OROR = 331,
     ANDAND = 332,
     EQCOMPARE = 333,
     ARITHCOMPARE = 334,
     RSHIFT = 335,
     LSHIFT = 336,
     MINUSMINUS = 337,
     PLUSPLUS = 338,
     UNARY = 339,
     HYPERUNARY = 340,
     POINTSAT = 341,
     INTERFACE = 342,
     IMPLEMENTATION = 343,
     END = 344,
     SELECTOR = 345,
     DEFS = 346,
     ENCODE = 347,
     CLASSNAME = 348,
     PUBLIC = 349,
     PROTECTED = 350,
     PROTOCOL = 351,
     OBJECTNAME = 352,
     CLASS = 353,
     ALIAS = 354,
     SL2_SECTIONS = 355,
     SL2_MINOR_SECTIONS = 356,
     SL2_SECTION = 357,
     PRAGMA_SL2 = 358,
     SL2_MINOR_SECTION = 359
   };
# 41 "c-parse.y"

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
# 43 "c-parse.y" 2
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
        
# 44 "c-parse.y" 2
# 1 "../../../kgccfe/gnu/tree.h" 1
# 31 "../../../kgccfe/gnu/tree.h"
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
# 45 "c-parse.y" 2

# 1 "../../../kgccfe/omp_directive.h" 1
# 32 "../../../kgccfe/omp_directive.h"
extern void expand_start_parallel (struct parallel_clause_list * clause_list);
extern void expand_end_parallel ( );

extern struct parallel_clause_list * chain_parallel_list_on
 (struct parallel_clause_list * pclause_list, struct parallel_clause_list * pclause);

extern struct parallel_clause_list *
 build_parallel_clause_list (tree,
                             enum parallel_clause_type,
        enum default_type,
        enum reduction_op_type);



extern void expand_start_for (struct for_clause_list * clause_list);
extern void expand_end_for ();

extern struct for_clause_list * chain_for_list_on
 (struct for_clause_list * fclause_list, struct for_clause_list * fclause);

extern struct for_clause_list *
 build_for_clause_list (tree, enum for_clause_type,
                        enum schedule_kind_type,
          enum reduction_op_type);


extern void expand_start_sections (struct sections_clause_list * clause_list);
extern void expand_end_sections ();

extern struct sections_clause_list * chain_sections_list_on
 (struct sections_clause_list * sclause_list, struct sections_clause_list * sclause);

extern struct sections_clause_list *
 build_sections_clause_list (tree,
                                enum sections_clause_type,
           enum reduction_op_type);
extern void expand_start_section ();
extern void expand_end_section ();


extern void expand_start_single (struct single_clause_list * clause_list);
extern void expand_end_single ();

extern struct single_clause_list * chain_single_list_on
 (struct single_clause_list * sclause_list, struct single_clause_list * sclause);

extern struct single_clause_list *
 build_single_clause_list (tree, enum single_clause_type);



extern void expand_start_parallel_for (struct parallel_for_clause_list * clause_list);
extern void expand_end_parallel_for ( );
extern struct parallel_for_clause_list * chain_parallel_for_list_on
 (struct parallel_for_clause_list * fclause_list,struct parallel_for_clause_list * fclause);

extern struct parallel_for_clause_list *
 build_parallel_for_clause_list (tree, enum parallel_for_clause_type,
                                 enum default_type,
     enum schedule_kind_type,
     enum reduction_op_type);



extern void expand_start_parallel_sections (struct parallel_sections_clause_list * clause_list);
extern void expand_end_parallel_sections ();

extern struct parallel_sections_clause_list * chain_parallel_sections_list_on
 (struct parallel_sections_clause_list * sclause_list, struct parallel_sections_clause_list * sclause);

extern struct parallel_sections_clause_list *
 build_parallel_sections_clause_list (tree,
                                      enum parallel_sections_clause_type,
                                             enum default_type,
          enum reduction_op_type);


extern void expand_start_master ();
extern void expand_end_master ();



extern void expand_start_critical (tree region_phrase);
extern void expand_end_critical ( );


extern void expand_barrier ();


extern void expand_start_atomic ();
extern void expand_end_atomic ();
extern void check_atomic_expression ( tree atomic_expression );


extern void expand_flush (tree flush_v_list);


extern void expand_threadprivate (tree threadprivate_v_list);


extern void expand_start_ordered ();
extern void expand_end_ordered ();


extern int check_do_loop_for(tree init_expr, tree logical_expr, tree incr_expr);
extern void expand_start_do_loop (tree, tree, tree, struct nesting *);
extern void expand_end_do_loop(struct nesting *);




extern void expand_start_sl2_sections (_Bool is_minor_thread);
extern void expand_end_sl2_sections ();
extern void expand_start_sl2_section (_Bool is_minor_thread);
extern void expand_end_sl2_section ();
# 47 "c-parse.y" 2
# 1 "../../../kgccfe/gnu/input.h" 1
# 23 "../../../kgccfe/gnu/input.h"
extern const char *input_filename;


extern const char *main_input_filename;


extern int lineno;


extern FILE *finput;

struct file_stack
  {
    const char *name;
    struct file_stack *next;
    int line;
  };



extern struct file_stack *input_file_stack;


extern int input_file_stack_tick;

extern void push_srcloc (const char *name, int line);
extern void pop_srcloc (void);
# 48 "c-parse.y" 2
# 1 "../../../kgccfe/gnu/cpplib.h" 1
# 32 "../../../kgccfe/gnu/cpplib.h"
# 1 "../../../kgccfe/gnu/line-map.h" 1
# 31 "../../../kgccfe/gnu/line-map.h"
enum lc_reason {LC_ENTER = 0, LC_LEAVE, LC_RENAME};
# 41 "../../../kgccfe/gnu/line-map.h"
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
# 87 "../../../kgccfe/gnu/line-map.h"
extern const struct line_map *add_line_map
  (struct line_maps *, enum lc_reason, unsigned int sysp, unsigned int from_line, const char *to_file, unsigned int to_line);




extern const struct line_map *lookup_line
  (struct line_maps *, unsigned int);




extern void print_containing_files
  (struct line_maps *, const struct line_map *);
# 33 "../../../kgccfe/gnu/cpplib.h" 2







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
# 150 "../../../kgccfe/gnu/cpplib.h"
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
# 180 "../../../kgccfe/gnu/cpplib.h"
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
# 212 "../../../kgccfe/gnu/cpplib.h"
typedef unsigned int cppchar_t;
typedef int cppchar_signed_t;
# 222 "../../../kgccfe/gnu/cpplib.h"
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
# 455 "../../../kgccfe/gnu/cpplib.h"
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
# 484 "../../../kgccfe/gnu/cpplib.h"
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



    enum cpp_ttype operator;

    enum builtin_type builtin;
  } value;
};


extern cpp_reader *cpp_create_reader (enum c_lang);



extern void cpp_set_lang (cpp_reader *, enum c_lang);





extern void cpp_add_dependency_target (cpp_reader *, const char * target, int quote);
# 526 "../../../kgccfe/gnu/cpplib.h"
extern cpp_options *cpp_get_options (cpp_reader *);
extern const struct line_maps *cpp_get_line_maps (cpp_reader *);
extern cpp_callbacks *cpp_get_callbacks (cpp_reader *);
extern void cpp_set_callbacks (cpp_reader *, cpp_callbacks *);






extern int cpp_handle_options (cpp_reader *, int, char **);
extern int cpp_handle_option (cpp_reader *, int, char **);
# 549 "../../../kgccfe/gnu/cpplib.h"
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
# 646 "../../../kgccfe/gnu/cpplib.h"
extern unsigned cpp_classify_number (cpp_reader *, const cpp_token *);


extern cpp_num cpp_interpret_integer (cpp_reader *, const cpp_token *, unsigned int type);




cpp_num cpp_num_sign_extend (cpp_num, size_t);
# 684 "../../../kgccfe/gnu/cpplib.h"
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
# 717 "../../../kgccfe/gnu/cpplib.h"
extern cpp_hashnode *cpp_lookup (cpp_reader *, const unsigned char *, unsigned int);



typedef int (*cpp_cb) (cpp_reader *, cpp_hashnode *, void *);
extern void cpp_forall_identifiers (cpp_reader *, cpp_cb, void *);



extern void cpp_scan_nooutput (cpp_reader *);
extern int cpp_sys_macro_p (cpp_reader *);
extern unsigned char *cpp_quote_string (unsigned char *, const unsigned char *, unsigned int);




extern int cpp_included (cpp_reader *, const char *);
extern void cpp_make_system_header (cpp_reader *, int, int);


extern void cpp_preprocess_file (cpp_reader *, const char *, FILE *);
# 49 "c-parse.y" 2
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
# 50 "c-parse.y" 2
# 1 "../../../kgccfe/gnu/timevar.h" 1
# 53 "../../../kgccfe/gnu/timevar.h"
struct timevar_time_def
{

  float user;



  float sys;


  float wall;
};






typedef enum
{
# 1 "../../../kgccfe/gnu/timevar.def" 1
# 34 "../../../kgccfe/gnu/timevar.def"
TV_TOTAL,


TV_GC,


TV_DUMP,


TV_CFG,

TV_CLEANUP_CFG,
TV_DELETE_TRIVIALLY_DEAD,

TV_LIFE,
TV_LIFE_UPDATE,

TV_CPP,
TV_LEX,
TV_PARSE,
TV_NAME_LOOKUP,
TV_OVERLOAD,
TV_TEMPLATE_INSTANTIATION,
TV_EXPAND,
TV_VARCONST,
TV_INTEGRATION,
TV_JUMP,
TV_CSE,
TV_GCSE,
TV_LOOP,
TV_TRACER,
TV_CSE2,
TV_BRANCH_PROB,
TV_FLOW,
TV_COMBINE,
TV_IFCVT,
TV_REGMOVE,
TV_MODE_SWITCH,
TV_SCHED,
TV_LOCAL_ALLOC,
TV_GLOBAL_ALLOC,
TV_RELOAD_CSE_REGS,
TV_FLOW2,
TV_IFCVT2,
TV_PEEPHOLE2,
TV_RENAME_REGISTERS,
TV_SCHED2,
TV_MACH_DEP,
TV_DBR_SCHED,
TV_REORDER_BLOCKS,
TV_SHORTEN_BRANCH,
TV_REG_STACK,
TV_TO_SSA,
TV_SSA_CCP,
TV_SSA_DCE,
TV_FROM_SSA,
TV_FINAL,
TV_SYMOUT,


TV_REST_OF_COMPILATION,
# 74 "../../../kgccfe/gnu/timevar.h" 2
  TIMEVAR_LAST
}
timevar_id_t;





extern void init_timevar (void);
extern void timevar_push (timevar_id_t);
extern void timevar_pop (timevar_id_t);
extern void timevar_start (timevar_id_t);
extern void timevar_stop (timevar_id_t);
extern void timevar_get (timevar_id_t, struct timevar_time_def *);
extern void timevar_print (FILE *);


extern long get_run_time (void);
extern void print_time (const char *, long);
# 51 "c-parse.y" 2
# 1 "../../../kgccfe/gnu/c-pragma.h" 1
# 33 "../../../kgccfe/gnu/c-pragma.h"
extern int yydebug;

struct cpp_reader;
extern struct cpp_reader* parse_in;
# 53 "../../../kgccfe/gnu/c-pragma.h"
extern tree weak_decls;
# 62 "../../../kgccfe/gnu/c-pragma.h"
extern void init_pragma (void);
# 74 "../../../kgccfe/gnu/c-pragma.h"
extern void maybe_apply_pragma_weak (tree);
extern tree maybe_apply_renaming_pragma (tree, tree);
extern void add_to_renaming_pragma_list (tree, tree);

extern int c_lex (tree *);
# 52 "c-parse.y" 2
# 1 "../../../kgccfe/gnu/c-tree.h" 1
# 25 "../../../kgccfe/gnu/c-tree.h"
# 1 "../../../kgccfe/gnu/c-common.h" 1
# 31 "../../../kgccfe/gnu/c-common.h"
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
# 32 "../../../kgccfe/gnu/c-common.h" 2
# 60 "../../../kgccfe/gnu/c-common.h"
enum rid
{


  RID_STATIC = 0,
  RID_UNSIGNED, RID_LONG, RID_CONST, RID_EXTERN,
  RID_REGISTER, RID_TYPEDEF, RID_SHORT, RID_INLINE,
  RID_VOLATILE, RID_SIGNED, RID_AUTO, RID_RESTRICT,



  RID_SBUF,
  RID_SDRAM, RID_V1BUF, RID_V2BUF, RID_V4BUF,



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
  RID_NEW, RID_OPERATOR, RID_THIS,
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
# 139 "../../../kgccfe/gnu/c-common.h"
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
# 239 "../../../kgccfe/gnu/c-common.h"
extern tree c_global_trees[CTI_MAX];
# 249 "../../../kgccfe/gnu/c-common.h"
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
# 280 "../../../kgccfe/gnu/c-common.h"
  int stmts_are_full_exprs_p;
};

typedef struct stmt_tree_s *stmt_tree;




struct c_language_function {


  struct stmt_tree_s x_stmt_tree;

  tree x_scope_stmt_stack;
};
# 323 "../../../kgccfe/gnu/c-common.h"
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
# 376 "../../../kgccfe/gnu/c-common.h"
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
# 526 "../../../kgccfe/gnu/c-common.h"
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
# 609 "../../../kgccfe/gnu/c-common.h"
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
# 725 "../../../kgccfe/gnu/c-common.h"
extern int flag_new_for_scope;





extern int flag_weak;




extern int flag_use_cxa_atexit;



extern int flag_vtable_gc;




extern int flag_permissive;






extern int flag_enforce_eh_specs;
# 767 "../../../kgccfe/gnu/c-common.h"
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
# 861 "../../../kgccfe/gnu/c-common.h"
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
# 1151 "../../../kgccfe/gnu/c-common.h"
enum c_tree_code {
  C_DUMMY_TREE_CODE = LAST_AND_UNUSED_TREE_CODE,
# 1 "../../../kgccfe/gnu/c-common.def" 1
# 29 "../../../kgccfe/gnu/c-common.def"
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



FREQ_HINT_STMT,





OMP_MARKER_STMT,
# 1154 "../../../kgccfe/gnu/c-common.h" 2
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
# 1198 "../../../kgccfe/gnu/c-common.h"
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
# 26 "../../../kgccfe/gnu/c-tree.h" 2
# 37 "../../../kgccfe/gnu/c-tree.h"
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
# 126 "../../../kgccfe/gnu/c-tree.h"
struct lang_type
{
  int len;
  tree elts[1];
};
# 167 "../../../kgccfe/gnu/c-tree.h"
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
# 260 "../../../kgccfe/gnu/c-tree.h"
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
# 53 "c-parse.y" 2
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
# 54 "c-parse.y" 2
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
# 55 "c-parse.y" 2
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
# 56 "c-parse.y" 2
# 1 "../../../kgccfe/gnu/ggc.h" 1
# 27 "../../../kgccfe/gnu/ggc.h"
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
# 28 "../../../kgccfe/gnu/ggc.h" 2
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
# 57 "c-parse.y" 2
# 73 "c-parse.y"
static short *malloced_yyss;
static void *malloced_yyvs;
# 129 "c-parse.y"
typedef union YYSTYPE
# 112 "c-parse.y"
{long itype; tree ttype; enum tree_code code;
 const char *filename; int lineno;
 enum reduction_op_type red_op_type;
 enum schedule_kind_type sch_k_type;
 struct parallel_clause_list * pclause_type;
 struct for_clause_list * for_clause_type;
 struct sections_clause_list * sections_clause_type;
 struct single_clause_list * single_clause_type;
 struct parallel_for_clause_list * parallel_for_clause_type;
 struct parallel_sections_clause_list * parallel_sections_clause_type;
 }
# 385 "c-p1329.c"
 YYSTYPE;
# 290 "c-parse.y"



static int stmt_count;
static int compstmt_count;



static const char *if_stmt_file;
static int if_stmt_line;


static tree current_declspecs;
static tree prefix_attributes;




static tree all_prefix_attributes;



static tree declspec_stack;
# 352 "c-parse.y"
static _Bool parsing_iso_function_signature;

static _Bool In_MP_Region = 0;
static _Bool In_MP_Section = 0;

static tree mp_locals[10];
static int mp_nesting = -1;
extern _Bool Is_shared_mp_var (tree);





static void yyprint (FILE *, int, YYSTYPE);
static void yyerror (const char *);
static int yylexname (void);
static int yylexstring (void);
static __inline__ int _yylex (void);
static int yylex (void);
static void init_reswords (void);


void
c_parse_init ()
{
  init_reswords ();
}
# 489 "c-p1329.c"
# 497 "c-p1329.c"
typedef unsigned char yytype_uint8;






typedef signed char yytype_int8;







typedef unsigned short int yytype_uint16;





typedef short int yytype_int16;
# 722 "c-p1329.c"
static const yytype_uint8 yytranslate[] =
{
       0, 2, 2, 2, 2, 2, 2, 2, 2, 2,
     127, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 123, 2, 2, 2, 92, 83, 2,
      98, 119, 90, 88, 124, 89, 97, 91, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 78, 120,
       2, 75, 2, 77, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 99, 2, 126, 82, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 125, 81, 121, 122, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 1, 2, 3, 4,
       5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
      15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
      25, 26, 27, 28, 29, 30, 31, 32, 33, 34,
      35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
      45, 46, 47, 48, 49, 50, 51, 52, 53, 54,
      55, 56, 57, 58, 59, 60, 61, 62, 63, 64,
      65, 66, 67, 68, 69, 70, 71, 72, 73, 74,
      76, 79, 80, 84, 85, 86, 87, 93, 94, 95,
      96, 100, 101, 102, 103, 104, 105, 106, 107, 108,
     109, 110, 111, 112, 113, 114, 115, 116, 117, 118
};




static const yytype_uint16 yyprhs[] =
{
       0, 0, 3, 4, 6, 7, 10, 11, 15, 17,
      19, 21, 27, 30, 32, 34, 38, 43, 48, 51,
      54, 57, 59, 60, 61, 71, 76, 77, 78, 88,
      93, 94, 95, 104, 108, 110, 112, 114, 116, 118,
     120, 122, 124, 126, 128, 129, 131, 133, 137, 139,
     142, 145, 148, 151, 154, 159, 162, 167, 170, 173,
     175, 177, 179, 181, 186, 188, 192, 196, 200, 204,
     208, 212, 216, 220, 224, 228, 232, 236, 237, 242,
     243, 248, 249, 250, 258, 259, 265, 269, 273, 275,
     277, 279, 281, 282, 290, 294, 298, 302, 306, 311,
     318, 327, 334, 339, 343, 347, 350, 353, 355, 356,
     358, 362, 364, 366, 369, 372, 377, 382, 385, 388,
     392, 393, 395, 400, 405, 409, 413, 416, 419, 421,
     424, 427, 430, 433, 436, 438, 441, 443, 446, 449,
     452, 455, 458, 461, 463, 466, 469, 472, 475, 478,
     481, 484, 487, 490, 493, 496, 499, 502, 505, 508,
     511, 513, 516, 519, 522, 525, 528, 531, 534, 537,
     540, 543, 546, 549, 552, 555, 558, 561, 564, 567,
     570, 573, 576, 579, 582, 585, 588, 591, 594, 597,
     600, 603, 606, 609, 612, 615, 618, 621, 624, 627,
     630, 633, 636, 639, 642, 645, 647, 649, 651, 653,
     655, 657, 659, 661, 663, 665, 667, 669, 671, 673,
     675, 677, 679, 681, 683, 685, 687, 689, 691, 693,
     695, 697, 699, 701, 703, 705, 707, 709, 711, 713,
     715, 717, 719, 721, 723, 725, 727, 729, 731, 733,
     735, 737, 739, 741, 743, 745, 747, 749, 751, 753,
     755, 757, 758, 760, 762, 764, 766, 768, 770, 772,
     774, 779, 784, 786, 791, 793, 798, 799, 804, 805,
     812, 816, 817, 824, 828, 829, 831, 833, 836, 843,
     845, 849, 850, 852, 857, 864, 869, 871, 873, 875,
     877, 879, 881, 883, 884, 889, 891, 892, 895, 897,
     901, 905, 908, 909, 914, 916, 917, 922, 924, 926,
     928, 931, 934, 940, 944, 945, 946, 954, 955, 956,
     964, 966, 968, 973, 977, 980, 984, 986, 988, 990,
     994, 997, 999, 1003, 1006, 1010, 1014, 1019, 1023, 1028,
    1032, 1035, 1037, 1039, 1042, 1044, 1047, 1049, 1052, 1053,
    1061, 1067, 1068, 1076, 1082, 1083, 1092, 1093, 1101, 1104,
    1107, 1110, 1111, 1113, 1114, 1116, 1118, 1121, 1122, 1126,
    1129, 1133, 1138, 1142, 1144, 1146, 1149, 1151, 1156, 1158,
    1163, 1168, 1175, 1181, 1186, 1193, 1199, 1201, 1205, 1207,
    1209, 1213, 1214, 1218, 1219, 1221, 1222, 1224, 1227, 1229,
    1231, 1233, 1237, 1240, 1244, 1249, 1253, 1256, 1259, 1261,
    1266, 1270, 1275, 1281, 1287, 1289, 1291, 1293, 1295, 1297,
    1300, 1303, 1306, 1309, 1311, 1314, 1317, 1320, 1322, 1325,
    1328, 1331, 1334, 1336, 1339, 1341, 1343, 1345, 1347, 1350,
    1351, 1352, 1353, 1354, 1355, 1357, 1359, 1362, 1366, 1368,
    1371, 1373, 1375, 1381, 1383, 1385, 1388, 1391, 1394, 1397,
    1398, 1404, 1405, 1410, 1411, 1412, 1414, 1417, 1421, 1425,
    1429, 1430, 1435, 1437, 1441, 1442, 1443, 1451, 1457, 1460,
    1461, 1462, 1463, 1464, 1477, 1478, 1485, 1488, 1490, 1492,
    1494, 1496, 1498, 1500, 1502, 1504, 1506, 1508, 1510, 1512,
    1513, 1519, 1520, 1526, 1530, 1532, 1534, 1537, 1539, 1541,
    1544, 1545, 1551, 1552, 1558, 1560, 1562, 1564, 1566, 1568,
    1572, 1577, 1579, 1581, 1583, 1587, 1589, 1591, 1593, 1595,
    1596, 1600, 1604, 1609, 1611, 1614, 1619, 1624, 1629, 1634,
    1639, 1644, 1649, 1656, 1661, 1662, 1666, 1667, 1668, 1669,
    1670, 1683, 1687, 1692, 1694, 1697, 1702, 1707, 1712, 1719,
    1724, 1731, 1733, 1735, 1737, 1739, 1741, 1743, 1744, 1748,
    1752, 1757, 1759, 1762, 1767, 1772, 1777, 1784, 1786, 1787,
    1792, 1794, 1796, 1799, 1801, 1803, 1806, 1807, 1811, 1815,
    1816, 1820, 1824, 1829, 1831, 1834, 1839, 1844, 1849, 1851,
    1852, 1856, 1861, 1867, 1869, 1872, 1877, 1882, 1887, 1892,
    1897, 1902, 1907, 1912, 1917, 1924, 1929, 1934, 1941, 1943,
    1944, 1948, 1953, 1959, 1961, 1964, 1969, 1974, 1979, 1984,
    1989, 1994, 1999, 2004, 2009, 2016, 2021, 2022, 2026, 2030,
    2031, 2035, 2039, 2046, 2048, 2052, 2056, 2060, 2064, 2071,
    2072, 2076, 2080, 2087, 2089, 2091, 2093, 2095, 2097, 2099,
    2101, 2103, 2105, 2109, 2111, 2113, 2115, 2118, 2122, 2125,
    2128, 2131, 2135, 2142, 2151, 2162, 2175, 2179, 2184, 2186,
    2190, 2196, 2199, 2205, 2206, 2208, 2209, 2211, 2212, 2214,
    2216, 2220, 2225, 2233, 2235, 2239, 2240, 2244, 2247, 2248,
    2249, 2256, 2259, 2260, 2262, 2264, 2268, 2270, 2274, 2279,
    2284, 2288, 2293, 2297, 2302, 2307, 2311, 2316, 2320, 2322,
    2323, 2327, 2329, 2332, 2334, 2338, 2340, 2344
};


static const yytype_int16 yyrhs[] =
{
     129, 0, -1, -1, 130, -1, -1, 131, 133, -1,
      -1, 130, 132, 133, -1, 134, -1, 136, -1, 135,
      -1, 59, 98, 145, 119, 120, -1, 408, 133, -1,
     382, -1, 319, -1, 167, 201, 120, -1, 187, 167,
     201, 120, -1, 186, 167, 200, 120, -1, 193, 120,
      -1, 1, 120, -1, 1, 121, -1, 120, -1, -1,
      -1, 186, 167, 230, 137, 161, 138, 290, 291, 279,
      -1, 186, 167, 230, 1, -1, -1, -1, 187, 167,
     235, 139, 161, 140, 290, 291, 279, -1, 187, 167,
     235, 1, -1, -1, -1, 167, 235, 141, 161, 142,
     290, 291, 279, -1, 167, 235, 1, -1, 3, -1,
       4, -1, 83, -1, 89, -1, 88, -1, 94, -1,
      93, -1, 122, -1, 123, -1, 147, -1, -1, 147,
      -1, 153, -1, 147, 124, 153, -1, 159, -1, 90,
     152, -1, 408, 152, -1, 144, 152, -1, 80, 143,
      -1, 149, 148, -1, 149, 98, 256, 119, -1, 150,
     148, -1, 150, 98, 256, 119, -1, 65, 152, -1,
      66, 152, -1, 44, -1, 61, -1, 60, -1, 148,
      -1, 98, 256, 119, 152, -1, 152, -1, 153, 88,
     153, -1, 153, 89, 153, -1, 153, 90, 153, -1,
     153, 91, 153, -1, 153, 92, 153, -1, 153, 87,
     153, -1, 153, 86, 153, -1, 153, 85, 153, -1,
     153, 84, 153, -1, 153, 83, 153, -1, 153, 81,
     153, -1, 153, 82, 153, -1, -1, 153, 80, 154,
     153, -1, -1, 153, 79, 155, 153, -1, -1, -1,
     153, 77, 156, 145, 78, 157, 153, -1, -1, 153,
      77, 158, 78, 153, -1, 153, 75, 153, -1, 153,
      76, 153, -1, 3, -1, 9, -1, 10, -1, 74,
      -1, -1, 98, 256, 119, 125, 160, 216, 121, -1,
      98, 145, 119, -1, 98, 1, 119, -1, 283, 281,
     119, -1, 283, 1, 119, -1, 159, 98, 146, 119,
      -1, 67, 98, 153, 124, 256, 119, -1, 68, 98,
     153, 124, 153, 124, 153, 119, -1, 69, 98, 256,
     124, 256, 119, -1, 159, 99, 145, 126, -1, 159,
      97, 143, -1, 159, 100, 143, -1, 159, 94, -1,
     159, 93, -1, 162, -1, -1, 164, -1, 290, 291,
     165, -1, 163, -1, 271, -1, 164, 163, -1, 163,
     271, -1, 188, 167, 200, 120, -1, 189, 167, 201,
     120, -1, 188, 120, -1, 189, 120, -1, 290, 291,
     169, -1, -1, 207, -1, 186, 167, 200, 120, -1,
     187, 167, 201, 120, -1, 186, 167, 224, -1, 187,
     167, 227, -1, 193, 120, -1, 408, 169, -1, 8,
      -1, 170, 8, -1, 171, 8, -1, 170, 208, -1,
     172, 8, -1, 173, 8, -1, 208, -1, 172, 208,
      -1, 195, -1, 174, 8, -1, 175, 8, -1, 174,
     197, -1, 175, 197, -1, 170, 195, -1, 171, 195,
      -1, 196, -1, 174, 208, -1, 174, 198, -1, 175,
     198, -1, 170, 196, -1, 171, 196, -1, 176, 8,
      -1, 177, 8, -1, 176, 197, -1, 177, 197, -1,
     172, 195, -1, 173, 195, -1, 176, 208, -1, 176,
     198, -1, 177, 198, -1, 172, 196, -1, 173, 196,
      -1, 213, -1, 178, 8, -1, 179, 8, -1, 170,
     213, -1, 171, 213, -1, 178, 213, -1, 179, 213,
      -1, 178, 208, -1, 180, 8, -1, 181, 8, -1,
     172, 213, -1, 173, 213, -1, 180, 213, -1, 181,
     213, -1, 180, 208, -1, 182, 8, -1, 183, 8,
      -1, 182, 197, -1, 183, 197, -1, 178, 195, -1,
     179, 195, -1, 174, 213, -1, 175, 213, -1, 182,
     213, -1, 183, 213, -1, 182, 208, -1, 182, 198,
      -1, 183, 198, -1, 178, 196, -1, 179, 196, -1,
     184, 8, -1, 185, 8, -1, 184, 197, -1, 185,
     197, -1, 180, 195, -1, 181, 195, -1, 176, 213,
      -1, 177, 213, -1, 184, 213, -1, 185, 213, -1,
     184, 208, -1, 184, 198, -1, 185, 198, -1, 180,
     196, -1, 181, 196, -1, 174, -1, 175, -1, 176,
      -1, 177, -1, 182, -1, 183, -1, 184, -1, 185,
      -1, 170, -1, 171, -1, 172, -1, 173, -1, 178,
      -1, 179, -1, 180, -1, 181, -1, 174, -1, 175,
      -1, 182, -1, 183, -1, 170, -1, 171, -1, 178,
      -1, 179, -1, 174, -1, 175, -1, 176, -1, 177,
      -1, 170, -1, 171, -1, 172, -1, 173, -1, 174,
      -1, 175, -1, 176, -1, 177, -1, 170, -1, 171,
      -1, 172, -1, 173, -1, 170, -1, 171, -1, 172,
      -1, 173, -1, 174, -1, 175, -1, 176, -1, 177,
      -1, 178, -1, 179, -1, 180, -1, 181, -1, 182,
      -1, 183, -1, 184, -1, 185, -1, -1, 191, -1,
     197, -1, 199, -1, 198, -1, 7, -1, 244, -1,
     239, -1, 4, -1, 151, 98, 145, 119, -1, 151,
      98, 256, 119, -1, 203, -1, 200, 124, 168, 203,
      -1, 205, -1, 201, 124, 168, 205, -1, -1, 59,
      98, 10, 119, -1, -1, 230, 202, 207, 75, 204,
     214, -1, 230, 202, 207, -1, -1, 235, 202, 207,
      75, 206, 214, -1, 235, 202, 207, -1, -1, 208,
      -1, 209, -1, 208, 209, -1, 62, 98, 98, 210,
     119, 119, -1, 211, -1, 210, 124, 211, -1, -1,
     212, -1, 212, 98, 3, 119, -1, 212, 98, 3,
     124, 147, 119, -1, 212, 98, 146, 119, -1, 143,
      -1, 213, -1, 7, -1, 8, -1, 6, -1, 5,
      -1, 153, -1, -1, 125, 215, 216, 121, -1, 1,
      -1, -1, 217, 245, -1, 218, -1, 217, 124, 218,
      -1, 222, 75, 220, -1, 223, 220, -1, -1, 143,
      78, 219, 220, -1, 220, -1, -1, 125, 221, 216,
     121, -1, 153, -1, 1, -1, 223, -1, 222, 223,
      -1, 97, 143, -1, 99, 153, 11, 153, 126, -1,
      99, 153, 126, -1, -1, -1, 230, 225, 161, 226,
     290, 291, 284, -1, -1, -1, 235, 228, 161, 229,
     290, 291, 284, -1, 231, -1, 235, -1, 98, 207,
     231, 119, -1, 231, 98, 403, -1, 231, 264, -1,
      90, 194, 231, -1, 4, -1, 233, -1, 234, -1,
     233, 98, 403, -1, 233, 264, -1, 4, -1, 234,
      98, 403, -1, 234, 264, -1, 90, 194, 233, -1,
      90, 194, 234, -1, 98, 207, 234, 119, -1, 235,
      98, 403, -1, 98, 207, 235, 119, -1, 90, 194,
     235, -1, 235, 264, -1, 3, -1, 46, -1, 46,
     208, -1, 47, -1, 47, 208, -1, 45, -1, 45,
     208, -1, -1, 236, 143, 125, 240, 247, 121, 207,
      -1, 236, 125, 247, 121, 207, -1, -1, 237, 143,
     125, 241, 247, 121, 207, -1, 237, 125, 247, 121,
     207, -1, -1, 238, 143, 125, 242, 254, 246, 121,
     207, -1, -1, 238, 125, 243, 254, 246, 121, 207,
      -1, 236, 143, -1, 237, 143, -1, 238, 143, -1,
      -1, 124, -1, -1, 124, -1, 248, -1, 248, 249,
      -1, -1, 248, 249, 120, -1, 248, 120, -1, 190,
     167, 250, -1, 190, 167, 290, 291, -1, 191, 167,
     251, -1, 191, -1, 1, -1, 408, 249, -1, 252,
      -1, 250, 124, 168, 252, -1, 253, -1, 251, 124,
     168, 253, -1, 290, 291, 230, 207, -1, 290, 291,
     230, 78, 153, 207, -1, 290, 291, 78, 153, 207,
      -1, 290, 291, 235, 207, -1, 290, 291, 235, 78,
     153, 207, -1, 290, 291, 78, 153, 207, -1, 255,
      -1, 254, 124, 255, -1, 1, -1, 143, -1, 143,
      75, 153, -1, -1, 192, 257, 258, -1, -1, 260,
      -1, -1, 260, -1, 261, 208, -1, 262, -1, 261,
      -1, 263, -1, 90, 194, 261, -1, 90, 194, -1,
      90, 194, 262, -1, 98, 207, 260, 119, -1, 263,
      98, 393, -1, 263, 264, -1, 98, 393, -1, 264,
      -1, 99, 194, 145, 126, -1, 99, 194, 126, -1,
      99, 194, 90, 126, -1, 99, 6, 194, 145, 126,
      -1, 99, 191, 6, 145, 126, -1, 266, -1, 267,
      -1, 268, -1, 269, -1, 294, -1, 266, 294, -1,
     267, 294, -1, 268, 294, -1, 269, 294, -1, 166,
      -1, 266, 166, -1, 267, 166, -1, 269, 166, -1,
     295, -1, 266, 295, -1, 267, 295, -1, 268, 295,
      -1, 269, 295, -1, 271, -1, 270, 271, -1, 266,
      -1, 267, -1, 268, -1, 269, -1, 1, 120, -1,
      -1, -1, -1, -1, -1, 277, -1, 278, -1, 277,
     278, -1, 64, 407, 120, -1, 284, -1, 1, 284,
      -1, 125, -1, 121, -1, 272, 276, 282, 121, 273,
      -1, 265, -1, 1, -1, 98, 125, -1, 280, 281,
      -1, 286, 293, -1, 286, 1, -1, -1, 48, 287,
      98, 145, 119, -1, -1, 51, 289, 293, 50, -1,
      -1, -1, 294, -1, 295, 292, -1, 274, 292, 275,
      -1, 290, 291, 385, -1, 290, 291, 386, -1, -1,
     285, 49, 297, 293, -1, 285, -1, 285, 49, 1,
      -1, -1, -1, 50, 298, 98, 145, 119, 299, 293,
      -1, 288, 98, 145, 119, 120, -1, 288, 1, -1,
      -1, -1, -1, -1, 52, 300, 98, 305, 301, 388,
     120, 302, 388, 119, 303, 293, -1, -1, 53, 98,
     145, 119, 304, 293, -1, 388, 120, -1, 169, -1,
     324, -1, 329, -1, 340, -1, 353, -1, 358, -1,
     363, -1, 368, -1, 371, -1, 376, -1, 379, -1,
     307, -1, -1, 117, 114, 127, 308, 310, -1, -1,
     117, 115, 127, 309, 310, -1, 125, 311, 121, -1,
     313, -1, 312, -1, 312, 313, -1, 323, -1, 314,
      -1, 313, 314, -1, -1, 117, 116, 127, 315, 323,
      -1, -1, 117, 118, 127, 316, 323, -1, 375, -1,
     378, -1, 382, -1, 318, -1, 321, -1, 12, 10,
     127, -1, 13, 320, 3, 127, -1, 14, -1, 15,
      -1, 16, -1, 13, 322, 127, -1, 14, -1, 15,
      -1, 16, -1, 385, -1, -1, 326, 325, 323, -1,
      32, 33, 127, -1, 32, 33, 327, 127, -1, 328,
      -1, 327, 328, -1, 48, 98, 153, 119, -1, 34,
      98, 153, 119, -1, 17, 98, 384, 119, -1, 19,
      98, 384, 119, -1, 21, 98, 384, 119, -1, 22,
      98, 21, 119, -1, 22, 98, 23, 119, -1, 24,
      98, 383, 78, 384, 119, -1, 25, 98, 384, 119,
      -1, -1, 336, 330, 331, -1, -1, -1, -1, -1,
      52, 332, 98, 305, 333, 388, 120, 334, 388, 119,
     335, 293, -1, 32, 52, 127, -1, 32, 52, 337,
     127, -1, 338, -1, 337, 338, -1, 17, 98, 384,
     119, -1, 19, 98, 384, 119, -1, 20, 98, 384,
     119, -1, 24, 98, 383, 78, 384, 119, -1, 30,
      98, 339, 119, -1, 30, 98, 339, 124, 153, 119,
      -1, 29, -1, 31, -1, 6, -1, 26, -1, 27,
      -1, 28, -1, -1, 342, 341, 345, -1, 32, 35,
     127, -1, 32, 35, 343, 127, -1, 344, -1, 343,
     344, -1, 17, 98, 384, 119, -1, 19, 98, 384,
     119, -1, 20, 98, 384, 119, -1, 24, 98, 383,
      78, 384, 119, -1, 31, -1, -1, 125, 346, 347,
     121, -1, 349, -1, 348, -1, 348, 349, -1, 323,
      -1, 350, -1, 349, 350, -1, -1, 352, 351, 323,
      -1, 32, 36, 127, -1, -1, 355, 354, 323, -1,
      32, 37, 127, -1, 32, 37, 356, 127, -1, 357,
      -1, 356, 357, -1, 17, 98, 384, 119, -1, 19,
      98, 384, 119, -1, 18, 98, 384, 119, -1, 31,
      -1, -1, 360, 359, 331, -1, 32, 33, 52, 127,
      -1, 32, 33, 52, 361, 127, -1, 362, -1, 361,
     362, -1, 48, 98, 153, 119, -1, 34, 98, 153,
     119, -1, 17, 98, 384, 119, -1, 18, 98, 384,
     119, -1, 19, 98, 384, 119, -1, 20, 98, 384,
     119, -1, 21, 98, 384, 119, -1, 22, 98, 21,
     119, -1, 22, 98, 23, 119, -1, 24, 98, 383,
      78, 384, 119, -1, 25, 98, 384, 119, -1, 30,
      98, 339, 119, -1, 30, 98, 339, 124, 153, 119,
      -1, 29, -1, -1, 365, 364, 345, -1, 32, 33,
      35, 127, -1, 32, 33, 35, 366, 127, -1, 367,
      -1, 366, 367, -1, 48, 98, 153, 119, -1, 34,
      98, 153, 119, -1, 17, 98, 384, 119, -1, 18,
      98, 384, 119, -1, 19, 98, 384, 119, -1, 20,
      98, 384, 119, -1, 21, 98, 384, 119, -1, 22,
      98, 21, 119, -1, 22, 98, 23, 119, -1, 24,
      98, 383, 78, 384, 119, -1, 25, 98, 384, 119,
      -1, -1, 370, 369, 323, -1, 32, 38, 127, -1,
      -1, 373, 372, 323, -1, 32, 39, 127, -1, 32,
      39, 98, 374, 119, 127, -1, 3, -1, 32, 40,
     127, -1, 377, 153, 120, -1, 32, 41, 127, -1,
      32, 42, 127, -1, 32, 42, 98, 384, 119, 127,
      -1, -1, 381, 380, 323, -1, 32, 29, 127, -1,
      32, 43, 98, 384, 119, 127, -1, 88, -1, 90,
      -1, 89, -1, 83, -1, 82, -1, 81, -1, 80,
      -1, 79, -1, 3, -1, 384, 124, 3, -1, 317,
      -1, 306, -1, 284, -1, 145, 120, -1, 274, 296,
     275, -1, 55, 120, -1, 56, 120, -1, 57, 120,
      -1, 57, 145, 120, -1, 59, 387, 98, 145, 119,
     120, -1, 59, 387, 98, 145, 78, 389, 119, 120,
      -1, 59, 387, 98, 145, 78, 389, 78, 389, 119,
     120, -1, 59, 387, 98, 145, 78, 389, 78, 389,
      78, 392, 119, 120, -1, 58, 143, 120, -1, 58,
      90, 145, 120, -1, 120, -1, 54, 153, 78, -1,
      54, 153, 11, 153, 78, -1, 22, 78, -1, 143,
     290, 291, 78, 207, -1, -1, 8, -1, -1, 145,
      -1, -1, 390, -1, 391, -1, 390, 124, 391, -1,
      10, 98, 145, 119, -1, 99, 143, 126, 10, 98,
     145, 119, -1, 10, -1, 392, 124, 10, -1, -1,
     207, 394, 395, -1, 398, 119, -1, -1, -1, 399,
     120, 396, 207, 397, 395, -1, 1, 119, -1, -1,
      11, -1, 399, -1, 399, 124, 11, -1, 401, -1,
     399, 124, 400, -1, 186, 167, 232, 207, -1, 186,
     167, 235, 207, -1, 186, 167, 259, -1, 187, 167,
     235, 207, -1, 187, 167, 259, -1, 188, 402, 232,
     207, -1, 188, 402, 235, 207, -1, 188, 402, 259,
      -1, 189, 402, 235, 207, -1, 189, 402, 259, -1,
     167, -1, -1, 207, 404, 405, -1, 395, -1, 406,
     119, -1, 3, -1, 406, 124, 3, -1, 143, -1,
     407, 124, 143, -1, 63, -1
};


static const yytype_uint16 yyrline[] =
{
       0, 384, 384, 388, 407, 407, 408, 408, 412, 417,
     418, 419, 427, 429, 430, 435, 442, 444, 446, 448,
     449, 450, 457, 462, 456, 468, 471, 476, 470, 482,
     485, 490, 484, 496, 501, 502, 505, 507, 509, 514,
     516, 518, 520, 524, 530, 531, 535, 537, 542, 543,
     546, 549, 553, 555, 561, 564, 567, 570, 572, 577,
     581, 585, 589, 590, 595, 596, 598, 600, 602, 604,
     606, 608, 610, 612, 614, 616, 618, 621, 620, 628,
     627, 635, 639, 634, 645, 644, 655, 662, 674, 680,
     681, 683, 686, 685, 698, 703, 705, 721, 728, 730,
     733, 743, 753, 755, 759, 765, 767, 773, 781, 787,
     794, 799, 800, 801, 802, 810, 812, 814, 817, 826,
     835, 845, 850, 852, 854, 856, 858, 860, 917, 920,
     923, 929, 935, 938, 944, 947, 953, 956, 959, 962,
     965, 968, 971, 977, 980, 983, 986, 989, 992, 998,
    1001, 1004, 1007, 1010, 1013, 1019, 1022, 1025, 1028, 1031,
    1037, 1040, 1043, 1046, 1052, 1058, 1064, 1073, 1079, 1082,
    1085, 1091, 1097, 1103, 1112, 1118, 1121, 1124, 1127, 1130,
    1133, 1136, 1142, 1148, 1154, 1163, 1166, 1169, 1172, 1175,
    1181, 1184, 1187, 1190, 1193, 1196, 1199, 1205, 1211, 1217,
    1226, 1229, 1232, 1235, 1238, 1245, 1246, 1247, 1248, 1249,
    1250, 1251, 1252, 1256, 1257, 1258, 1259, 1260, 1261, 1262,
    1263, 1267, 1268, 1269, 1270, 1274, 1275, 1276, 1277, 1281,
    1282, 1283, 1284, 1288, 1289, 1290, 1291, 1295, 1296, 1297,
    1298, 1299, 1300, 1301, 1302, 1306, 1307, 1308, 1309, 1310,
    1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1320,
    1321, 1327, 1328, 1354, 1355, 1359, 1363, 1365, 1369, 1373,
    1377, 1379, 1386, 1387, 1391, 1392, 1397, 1398, 1404, 1403,
    1414, 1425, 1424, 1435, 1447, 1448, 1453, 1455, 1460, 1465,
    1467, 1473, 1474, 1476, 1478, 1480, 1488, 1489, 1490, 1491,
    1495, 1496, 1502, 1504, 1503, 1507, 1514, 1516, 1520, 1521,
    1527, 1530, 1534, 1533, 1539, 1544, 1543, 1547, 1549, 1553,
    1554, 1558, 1560, 1564, 1570, 1583, 1569, 1601, 1614, 1600,
    1634, 1635, 1641, 1643, 1648, 1650, 1652, 1660, 1661, 1665,
    1670, 1672, 1676, 1681, 1683, 1685, 1687, 1695, 1700, 1702,
    1704, 1706, 1710, 1712, 1717, 1719, 1724, 1726, 1738, 1737,
    1743, 1748, 1747, 1751, 1756, 1755, 1761, 1760, 1768, 1770,
    1772, 1780, 1782, 1785, 1787, 1793, 1795, 1801, 1802, 1804,
    1810, 1813, 1823, 1826, 1831, 1833, 1839, 1840, 1845, 1846,
    1851, 1854, 1858, 1864, 1867, 1871, 1882, 1883, 1888, 1894,
    1896, 1902, 1901, 1910, 1911, 1916, 1919, 1923, 1930, 1931,
    1935, 1936, 1941, 1943, 1948, 1950, 1952, 1954, 1956, 1963,
    1965, 1967, 1969, 1972, 1983, 1984, 1985, 1989, 1993, 1994,
    1995, 1996, 1997, 2001, 2002, 2008, 2009, 2013, 2014, 2015,
    2016, 2017, 2021, 2022, 2026, 2027, 2028, 2029, 2032, 2036,
    2043, 2048, 2064, 2078, 2080, 2086, 2087, 2091, 2105, 2107,
    2110, 2114, 2116, 2124, 2125, 2129, 2146, 2154, 2159, 2172,
    2171, 2186, 2185, 2205, 2211, 2217, 2218, 2223, 2229, 2243,
    2253, 2252, 2260, 2272, 2283, 2286, 2282, 2292, 2295, 2298,
    2302, 2305, 2309, 2297, 2313, 2312, 2320, 2322, 2329, 2330,
    2331, 2332, 2333, 2334, 2335, 2336, 2337, 2338, 2339, 2344,
    2343, 2350, 2349, 2359, 2365, 2366, 2367, 2371, 2375, 2376,
    2381, 2380, 2392, 2391, 2407, 2408, 2409, 2411, 2412, 2416,
    2422, 2427, 2427, 2427, 2431, 2436, 2437, 2438, 2442, 2447,
    2446, 2477, 2479, 2484, 2486, 2491, 2493, 2495, 2497, 2499,
    2501, 2503, 2505, 2507, 2513, 2512, 2525, 2530, 2533, 2537,
    2524, 2543, 2545, 2550, 2552, 2557, 2559, 2561, 2563, 2565,
    2567, 2569, 2571, 2576, 2582, 2584, 2586, 2593, 2592, 2602,
    2604, 2609, 2611, 2616, 2618, 2620, 2622, 2624, 2631, 2630,
    2639, 2640, 2641, 2645, 2653, 2654, 2659, 2658, 2672, 2677,
    2676, 2686, 2688, 2693, 2695, 2700, 2702, 2704, 2706, 2712,
    2711, 2742, 2744, 2749, 2751, 2756, 2758, 2760, 2762, 2764,
    2766, 2768, 2770, 2772, 2774, 2776, 2778, 2780, 2782, 2788,
    2787, 2818, 2820, 2825, 2827, 2832, 2834, 2836, 2838, 2840,
    2842, 2844, 2846, 2848, 2850, 2852, 2858, 2857, 2864, 2869,
    2868, 2875, 2877, 2882, 2887, 2892, 2900, 2904, 2907, 2913,
    2912, 2919, 2923, 2928, 2930, 2932, 2934, 2936, 2938, 2940,
    2942, 2947, 2953, 2966, 2967, 2968, 2970, 2973, 2977, 2980,
    2983, 2986, 2989, 2993, 2997, 3002, 3006, 3018, 3024, 3032,
    3035, 3038, 3041, 3058, 3060, 3066, 3067, 3073, 3074, 3078,
    3079, 3084, 3086, 3093, 3095, 3106, 3105, 3116, 3118, 3126,
    3117, 3130, 3137, 3138, 3148, 3152, 3157, 3159, 3166, 3171,
    3176, 3179, 3185, 3193, 3198, 3203, 3206, 3212, 3218, 3228,
    3227, 3238, 3239, 3257, 3259, 3265, 3267, 3272
};





static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "TYPENAME", "SCSPEC",
  "STATIC", "TYPESPEC", "TYPE_QUAL", "CONSTANT", "STRING", "ELLIPSIS",
  "PRAGMA_OPTIONS", "PRAGMA_EXEC_FREQ", "FREQ_NEVER", "FREQ_INIT",
  "FREQ_FREQUENT", "PRIVATE", "COPYPRIVATE", "FIRSTPRIVATE", "LASTPRIVATE",
  "SHARED", "DEFAULT", "NONE", "REDUCTION", "COPYIN", "DYNAMIC", "GUIDED",
  "RUNTIME", "ORDERED", "SCHEDULE", "NOWAIT", "PRAGMA_OMP", "PARALLEL",
  "NUM_THREADS", "SECTIONS", "SECTION", "SINGLE", "MASTER", "CRITICAL",
  "BARRIER", "ATOMIC", "FLUSH", "THREADPRIVATE", "SIZEOF", "ENUM",
  "STRUCT", "UNION", "IF", "ELSE", "WHILE", "DO", "FOR", "SWITCH", "CASE",
  "BREAK", "CONTINUE", "RETURN", "GOTO", "ASM_KEYWORD", "TYPEOF",
  "ALIGNOF", "ATTRIBUTE", "EXTENSION", "LABEL", "REALPART", "IMAGPART",
  "VA_ARG", "CHOOSE_EXPR", "TYPES_COMPATIBLE_P", "PTR_VALUE", "PTR_BASE",
  "PTR_EXTENT", "STRING_FUNC_NAME", "VAR_FUNC_NAME", "'='", "ASSIGN",
  "'?'", "':'", "OROR", "ANDAND", "'|'", "'^'", "'&'", "EQCOMPARE",
  "ARITHCOMPARE", "RSHIFT", "LSHIFT", "'+'", "'-'", "'*'", "'/'", "'%'",
  "MINUSMINUS", "PLUSPLUS", "UNARY", "HYPERUNARY", "'.'", "'('", "'['",
  "POINTSAT", "INTERFACE", "IMPLEMENTATION", "END", "SELECTOR", "DEFS",
  "ENCODE", "CLASSNAME", "PUBLIC", "PROTECTED", "PROTOCOL", "OBJECTNAME",
  "CLASS", "ALIAS", "SL2_SECTIONS", "SL2_MINOR_SECTIONS", "SL2_SECTION",
  "PRAGMA_SL2", "SL2_MINOR_SECTION", "')'", "';'", "'}'", "'~'", "'!'",
  "','", "'{'", "']'", "'\\n'", "$accept", "program", "extdefs", "@1",
  "@2", "extdef", "extdef_1", "datadef", "fndef", "@3", "@4", "@5", "@6",
  "@7", "@8", "identifier", "unop", "expr", "exprlist", "nonnull_exprlist",
  "unary_expr", "sizeof", "alignof", "typeof", "cast_expr",
  "expr_no_commas", "@9", "@10", "@11", "@12", "@13", "primary", "@14",
  "old_style_parm_decls", "old_style_parm_decls_1", "lineno_datadecl",
  "datadecls", "datadecl", "lineno_decl", "setspecs", "maybe_resetattrs",
  "decl", "declspecs_nosc_nots_nosa_noea", "declspecs_nosc_nots_nosa_ea",
  "declspecs_nosc_nots_sa_noea", "declspecs_nosc_nots_sa_ea",
  "declspecs_nosc_ts_nosa_noea", "declspecs_nosc_ts_nosa_ea",
  "declspecs_nosc_ts_sa_noea", "declspecs_nosc_ts_sa_ea",
  "declspecs_sc_nots_nosa_noea", "declspecs_sc_nots_nosa_ea",
  "declspecs_sc_nots_sa_noea", "declspecs_sc_nots_sa_ea",
  "declspecs_sc_ts_nosa_noea", "declspecs_sc_ts_nosa_ea",
  "declspecs_sc_ts_sa_noea", "declspecs_sc_ts_sa_ea", "declspecs_ts",
  "declspecs_nots", "declspecs_ts_nosa", "declspecs_nots_nosa",
  "declspecs_nosc_ts", "declspecs_nosc_nots", "declspecs_nosc",
  "declspecs", "maybe_type_quals_attrs", "typespec_nonattr",
  "typespec_attr", "typespec_reserved_nonattr", "typespec_reserved_attr",
  "typespec_nonreserved_nonattr", "initdecls", "notype_initdecls",
  "maybeasm", "initdcl", "@15", "notype_initdcl", "@16", "maybe_attribute",
  "attributes", "attribute", "attribute_list", "attrib", "any_word",
  "scspec", "init", "@17", "initlist_maybe_comma", "initlist1", "initelt",
  "@18", "initval", "@19", "designator_list", "designator",
  "nested_function", "@20", "@21", "notype_nested_function", "@22", "@23",
  "declarator", "after_type_declarator", "parm_declarator",
  "parm_declarator_starttypename", "parm_declarator_nostarttypename",
  "notype_declarator", "struct_head", "union_head", "enum_head",
  "structsp_attr", "@24", "@25", "@26", "@27", "structsp_nonattr",
  "maybecomma", "maybecomma_warn", "component_decl_list",
  "component_decl_list2", "component_decl", "components",
  "components_notype", "component_declarator",
  "component_notype_declarator", "enumlist", "enumerator", "typename",
  "@28", "absdcl", "absdcl_maybe_attribute", "absdcl1", "absdcl1_noea",
  "absdcl1_ea", "direct_absdcl1", "array_declarator", "stmts_and_decls",
  "lineno_stmt_decl_or_labels_ending_stmt",
  "lineno_stmt_decl_or_labels_ending_decl",
  "lineno_stmt_decl_or_labels_ending_label",
  "lineno_stmt_decl_or_labels_ending_error", "lineno_stmt_decl_or_labels",
  "errstmt", "pushlevel", "poplevel", "c99_block_start", "c99_block_end",
  "maybe_label_decls", "label_decls", "label_decl", "compstmt_or_error",
  "compstmt_start", "compstmt_nostart", "compstmt_contents_nonempty",
  "compstmt_primary_start", "compstmt", "simple_if", "if_prefix", "@29",
  "do_stmt_start", "@30", "save_filename", "save_lineno",
  "lineno_labeled_stmt", "c99_block_lineno_labeled_stmt", "lineno_stmt",
  "lineno_label", "select_or_iter_stmt", "@31", "@32", "@33", "@34", "@35",
  "@36", "@37", "@38", "for_init_stmt", "openmp_construct",
  "sl2_sections_construct", "@39", "@40", "sl2_section_scope",
  "sl2_maybe_section_sequence", "sl2_maybe_structured_block",
  "sl2_section_sequence", "sl2_section_construct", "@41", "@42",
  "pragma_directives", "options_directive", "exec_freq_directive_ignore",
  "freq_hint_ignore", "exec_freq_directive", "freq_hint",
  "structured_block", "parallel_construct", "@43", "parallel_directive",
  "parallel_clause_list", "parallel_clause", "for_construct", "@44",
  "iteration_statement", "@45", "@46", "@47", "@48", "for_directive",
  "for_clause_list", "for_clause", "schedule_kind", "sections_construct",
  "@49", "sections_directive", "sections_clause_list", "sections_clause",
  "section_scope", "@50", "maybe_section_sequence",
  "maybe_structured_block", "section_sequence", "section_construct", "@51",
  "section_directive", "single_construct", "@52", "single_directive",
  "single_clause_list", "single_clause", "parallel_for_construct", "@53",
  "parallel_for_directive", "parallel_for_clause_list",
  "parallel_for_clause", "parallel_sections_construct", "@54",
  "parallel_sections_directive", "parallel_sections_clause_list",
  "parallel_sections_clause", "master_construct", "@55",
  "master_directive", "critical_construct", "@56", "critical_directive",
  "region_phrase", "barrier_directive", "atomic_construct",
  "atomic_directive", "flush_directive", "ordered_construct", "@57",
  "ordered_directive", "threadprivate_directive", "reduction_operator",
  "variable_list", "stmt", "label", "maybe_type_qual", "xexpr",
  "asm_operands", "nonnull_asm_operands", "asm_operand", "asm_clobbers",
  "parmlist", "@58", "parmlist_1", "@59", "@60", "parmlist_2", "parms",
  "parm", "firstparm", "setspecs_fp", "parmlist_or_identifiers", "@61",
  "parmlist_or_identifiers_1", "identifiers", "identifiers_or_typenames",
  "extension", 0
};





static const yytype_uint16 yytoknum[] =
{
       0, 256, 257, 258, 259, 260, 261, 262, 263, 264,
     265, 266, 267, 268, 269, 270, 271, 272, 273, 274,
     275, 276, 277, 278, 279, 280, 281, 282, 283, 284,
     285, 286, 287, 288, 289, 290, 291, 292, 293, 294,
     295, 296, 297, 298, 299, 300, 301, 302, 303, 304,
     305, 306, 307, 308, 309, 310, 311, 312, 313, 314,
     315, 316, 317, 318, 319, 320, 321, 322, 323, 324,
     325, 326, 327, 328, 329, 61, 330, 63, 58, 331,
     332, 124, 94, 38, 333, 334, 335, 336, 43, 45,
      42, 47, 37, 337, 338, 339, 340, 46, 40, 91,
     341, 342, 343, 344, 345, 346, 347, 348, 349, 350,
     351, 352, 353, 354, 355, 356, 357, 358, 359, 41,
      59, 125, 126, 33, 44, 123, 93, 10
};



static const yytype_uint16 yyr1[] =
{
       0, 128, 129, 129, 131, 130, 132, 130, 133, 134,
     134, 134, 134, 134, 134, 135, 135, 135, 135, 135,
     135, 135, 137, 138, 136, 136, 139, 140, 136, 136,
     141, 142, 136, 136, 143, 143, 144, 144, 144, 144,
     144, 144, 144, 145, 146, 146, 147, 147, 148, 148,
     148, 148, 148, 148, 148, 148, 148, 148, 148, 149,
     150, 151, 152, 152, 153, 153, 153, 153, 153, 153,
     153, 153, 153, 153, 153, 153, 153, 154, 153, 155,
     153, 156, 157, 153, 158, 153, 153, 153, 159, 159,
     159, 159, 160, 159, 159, 159, 159, 159, 159, 159,
     159, 159, 159, 159, 159, 159, 159, 161, 162, 162,
     163, 164, 164, 164, 164, 165, 165, 165, 165, 166,
     167, 168, 169, 169, 169, 169, 169, 169, 170, 170,
     170, 171, 172, 172, 173, 173, 174, 174, 174, 174,
     174, 174, 174, 175, 175, 175, 175, 175, 175, 176,
     176, 176, 176, 176, 176, 177, 177, 177, 177, 177,
     178, 178, 178, 178, 178, 178, 178, 179, 180, 180,
     180, 180, 180, 180, 181, 182, 182, 182, 182, 182,
     182, 182, 182, 182, 182, 183, 183, 183, 183, 183,
     184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
     185, 185, 185, 185, 185, 186, 186, 186, 186, 186,
     186, 186, 186, 187, 187, 187, 187, 187, 187, 187,
     187, 188, 188, 188, 188, 189, 189, 189, 189, 190,
     190, 190, 190, 191, 191, 191, 191, 192, 192, 192,
     192, 192, 192, 192, 192, 193, 193, 193, 193, 193,
     193, 193, 193, 193, 193, 193, 193, 193, 193, 193,
     193, 194, 194, 195, 195, 196, 197, 197, 198, 199,
     199, 199, 200, 200, 201, 201, 202, 202, 204, 203,
     203, 206, 205, 205, 207, 207, 208, 208, 209, 210,
     210, 211, 211, 211, 211, 211, 212, 212, 212, 212,
     213, 213, 214, 215, 214, 214, 216, 216, 217, 217,
     218, 218, 219, 218, 218, 221, 220, 220, 220, 222,
     222, 223, 223, 223, 225, 226, 224, 228, 229, 227,
     230, 230, 231, 231, 231, 231, 231, 232, 232, 233,
     233, 233, 234, 234, 234, 234, 234, 235, 235, 235,
     235, 235, 236, 236, 237, 237, 238, 238, 240, 239,
     239, 241, 239, 239, 242, 239, 243, 239, 244, 244,
     244, 245, 245, 246, 246, 247, 247, 248, 248, 248,
     249, 249, 249, 249, 249, 249, 250, 250, 251, 251,
     252, 252, 252, 253, 253, 253, 254, 254, 254, 255,
     255, 257, 256, 258, 258, 259, 259, 259, 260, 260,
     261, 261, 262, 262, 263, 263, 263, 263, 263, 264,
     264, 264, 264, 264, 265, 265, 265, 265, 266, 266,
     266, 266, 266, 267, 267, 267, 267, 268, 268, 268,
     268, 268, 269, 269, 270, 270, 270, 270, 271, 272,
     273, 274, 275, 276, 276, 277, 277, 278, 279, 279,
     280, 281, 281, 282, 282, 283, 284, 285, 285, 287,
     286, 289, 288, 290, 291, 292, 292, 293, 294, 295,
     297, 296, 296, 296, 298, 299, 296, 296, 296, 300,
     301, 302, 303, 296, 304, 296, 305, 305, 306, 306,
     306, 306, 306, 306, 306, 306, 306, 306, 306, 308,
     307, 309, 307, 310, 311, 311, 311, 312, 313, 313,
     315, 314, 316, 314, 317, 317, 317, 317, 317, 318,
     319, 320, 320, 320, 321, 322, 322, 322, 323, 325,
     324, 326, 326, 327, 327, 328, 328, 328, 328, 328,
     328, 328, 328, 328, 330, 329, 332, 333, 334, 335,
     331, 336, 336, 337, 337, 338, 338, 338, 338, 338,
     338, 338, 338, 339, 339, 339, 339, 341, 340, 342,
     342, 343, 343, 344, 344, 344, 344, 344, 346, 345,
     347, 347, 347, 348, 349, 349, 351, 350, 352, 354,
     353, 355, 355, 356, 356, 357, 357, 357, 357, 359,
     358, 360, 360, 361, 361, 362, 362, 362, 362, 362,
     362, 362, 362, 362, 362, 362, 362, 362, 362, 364,
     363, 365, 365, 366, 366, 367, 367, 367, 367, 367,
     367, 367, 367, 367, 367, 367, 369, 368, 370, 372,
     371, 373, 373, 374, 375, 376, 377, 378, 378, 380,
     379, 381, 382, 383, 383, 383, 383, 383, 383, 383,
     383, 384, 384, 385, 385, 385, 385, 385, 385, 385,
     385, 385, 385, 385, 385, 385, 385, 385, 385, 386,
     386, 386, 386, 387, 387, 388, 388, 389, 389, 390,
     390, 391, 391, 392, 392, 394, 393, 395, 396, 397,
     395, 395, 398, 398, 398, 398, 399, 399, 400, 400,
     400, 400, 400, 401, 401, 401, 401, 401, 402, 404,
     403, 405, 405, 406, 406, 407, 407, 408
};


static const yytype_uint8 yyr2[] =
{
       0, 2, 0, 1, 0, 2, 0, 3, 1, 1,
       1, 5, 2, 1, 1, 3, 4, 4, 2, 2,
       2, 1, 0, 0, 9, 4, 0, 0, 9, 4,
       0, 0, 8, 3, 1, 1, 1, 1, 1, 1,
       1, 1, 1, 1, 0, 1, 1, 3, 1, 2,
       2, 2, 2, 2, 4, 2, 4, 2, 2, 1,
       1, 1, 1, 4, 1, 3, 3, 3, 3, 3,
       3, 3, 3, 3, 3, 3, 3, 0, 4, 0,
       4, 0, 0, 7, 0, 5, 3, 3, 1, 1,
       1, 1, 0, 7, 3, 3, 3, 3, 4, 6,
       8, 6, 4, 3, 3, 2, 2, 1, 0, 1,
       3, 1, 1, 2, 2, 4, 4, 2, 2, 3,
       0, 1, 4, 4, 3, 3, 2, 2, 1, 2,
       2, 2, 2, 2, 1, 2, 1, 2, 2, 2,
       2, 2, 2, 1, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       1, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 1, 1, 1, 1, 1,
       1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
       1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
       1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
       1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
       1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
       1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
       4, 4, 1, 4, 1, 4, 0, 4, 0, 6,
       3, 0, 6, 3, 0, 1, 1, 2, 6, 1,
       3, 0, 1, 4, 6, 4, 1, 1, 1, 1,
       1, 1, 1, 0, 4, 1, 0, 2, 1, 3,
       3, 2, 0, 4, 1, 0, 4, 1, 1, 1,
       2, 2, 5, 3, 0, 0, 7, 0, 0, 7,
       1, 1, 4, 3, 2, 3, 1, 1, 1, 3,
       2, 1, 3, 2, 3, 3, 4, 3, 4, 3,
       2, 1, 1, 2, 1, 2, 1, 2, 0, 7,
       5, 0, 7, 5, 0, 8, 0, 7, 2, 2,
       2, 0, 1, 0, 1, 1, 2, 0, 3, 2,
       3, 4, 3, 1, 1, 2, 1, 4, 1, 4,
       4, 6, 5, 4, 6, 5, 1, 3, 1, 1,
       3, 0, 3, 0, 1, 0, 1, 2, 1, 1,
       1, 3, 2, 3, 4, 3, 2, 2, 1, 4,
       3, 4, 5, 5, 1, 1, 1, 1, 1, 2,
       2, 2, 2, 1, 2, 2, 2, 1, 2, 2,
       2, 2, 1, 2, 1, 1, 1, 1, 2, 0,
       0, 0, 0, 0, 1, 1, 2, 3, 1, 2,
       1, 1, 5, 1, 1, 2, 2, 2, 2, 0,
       5, 0, 4, 0, 0, 1, 2, 3, 3, 3,
       0, 4, 1, 3, 0, 0, 7, 5, 2, 0,
       0, 0, 0, 12, 0, 6, 2, 1, 1, 1,
       1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
       5, 0, 5, 3, 1, 1, 2, 1, 1, 2,
       0, 5, 0, 5, 1, 1, 1, 1, 1, 3,
       4, 1, 1, 1, 3, 1, 1, 1, 1, 0,
       3, 3, 4, 1, 2, 4, 4, 4, 4, 4,
       4, 4, 6, 4, 0, 3, 0, 0, 0, 0,
      12, 3, 4, 1, 2, 4, 4, 4, 6, 4,
       6, 1, 1, 1, 1, 1, 1, 0, 3, 3,
       4, 1, 2, 4, 4, 4, 6, 1, 0, 4,
       1, 1, 2, 1, 1, 2, 0, 3, 3, 0,
       3, 3, 4, 1, 2, 4, 4, 4, 1, 0,
       3, 4, 5, 1, 2, 4, 4, 4, 4, 4,
       4, 4, 4, 4, 6, 4, 4, 6, 1, 0,
       3, 4, 5, 1, 2, 4, 4, 4, 4, 4,
       4, 4, 4, 4, 6, 4, 0, 3, 3, 0,
       3, 3, 6, 1, 3, 3, 3, 3, 6, 0,
       3, 3, 6, 1, 1, 1, 1, 1, 1, 1,
       1, 1, 3, 1, 1, 1, 2, 3, 2, 2,
       2, 3, 6, 8, 10, 12, 3, 4, 1, 3,
       5, 2, 5, 0, 1, 0, 1, 0, 1, 1,
       3, 4, 7, 1, 3, 0, 3, 2, 0, 0,
       6, 2, 0, 1, 1, 3, 1, 3, 4, 4,
       3, 4, 3, 4, 4, 3, 4, 3, 1, 0,
       3, 1, 2, 1, 3, 1, 3, 1
};




static const yytype_uint16 yydefact[] =
{
       4, 0, 6, 0, 1, 0, 0, 269, 301, 300,
     266, 128, 0, 0, 356, 352, 354, 0, 61, 0,
     737, 21, 5, 8, 10, 9, 0, 0, 213, 214,
     215, 216, 205, 206, 207, 208, 217, 218, 219, 220,
     209, 210, 211, 212, 120, 120, 0, 136, 143, 263,
     265, 264, 134, 286, 160, 0, 0, 0, 268, 267,
      14, 13, 0, 7, 19, 20, 531, 532, 533, 0,
       0, 357, 353, 355, 0, 0, 0, 351, 261, 284,
       0, 274, 0, 129, 141, 147, 131, 163, 130, 142,
     148, 164, 132, 153, 158, 135, 170, 133, 154, 159,
     171, 137, 139, 145, 144, 181, 138, 140, 146, 182,
     149, 151, 156, 155, 196, 150, 152, 157, 197, 161,
     179, 188, 167, 165, 162, 180, 189, 166, 168, 194,
     203, 174, 172, 169, 195, 204, 173, 175, 177, 186,
     185, 183, 176, 178, 187, 184, 190, 192, 201, 200,
     198, 191, 193, 202, 199, 0, 0, 18, 287, 34,
      35, 377, 368, 377, 369, 366, 370, 12, 0, 0,
      88, 89, 90, 59, 60, 0, 0, 0, 0, 0,
      91, 0, 36, 38, 37, 0, 40, 39, 0, 41,
      42, 0, 0, 43, 62, 0, 0, 64, 46, 48,
       0, 0, 291, 0, 241, 242, 243, 244, 237, 238,
     239, 240, 401, 0, 233, 234, 235, 236, 262, 0,
       0, 285, 15, 284, 33, 0, 284, 261, 0, 284,
     350, 336, 261, 284, 0, 272, 0, 330, 331, 0,
       0, 0, 0, 358, 0, 361, 0, 364, 530, 671,
       0, 57, 58, 0, 0, 0, 52, 49, 0, 465,
       0, 0, 51, 0, 0, 0, 53, 0, 55, 0,
       0, 81, 79, 77, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 106, 105, 0, 44,
       0, 0, 0, 461, 453, 0, 50, 298, 299, 296,
       0, 289, 292, 297, 270, 403, 271, 349, 0, 0,
     121, 0, 729, 347, 261, 262, 0, 0, 31, 107,
       0, 473, 112, 474, 283, 0, 0, 17, 284, 25,
       0, 284, 284, 334, 16, 29, 0, 284, 384, 379,
     233, 234, 235, 236, 229, 230, 231, 232, 120, 120,
     376, 0, 377, 284, 377, 398, 399, 373, 396, 0,
       0, 0, 0, 0, 0, 95, 94, 0, 11, 47,
       0, 0, 86, 87, 0, 0, 0, 0, 75, 76,
      74, 73, 72, 71, 70, 65, 66, 67, 68, 69,
     103, 0, 45, 0, 104, 97, 0, 0, 454, 455,
      96, 0, 291, 44, 261, 284, 402, 404, 409, 408,
     410, 418, 348, 275, 276, 0, 0, 0, 0, 0,
     420, 0, 448, 473, 114, 113, 0, 281, 335, 0,
       0, 23, 280, 333, 27, 360, 473, 473, 378, 385,
       0, 363, 0, 0, 374, 0, 373, 662, 672, 0,
       0, 0, 92, 63, 54, 56, 0, 0, 80, 78,
      98, 102, 735, 0, 464, 433, 463, 473, 473, 473,
     473, 0, 442, 0, 474, 428, 437, 456, 288, 290,
      88, 0, 412, 705, 417, 284, 416, 277, 0, 733,
     713, 225, 226, 221, 222, 227, 228, 223, 224, 120,
     120, 731, 0, 714, 716, 730, 0, 0, 0, 421,
     419, 474, 110, 120, 120, 0, 332, 273, 276, 473,
     278, 473, 380, 386, 474, 382, 388, 474, 284, 284,
     400, 397, 284, 0, 0, 0, 0, 0, 82, 85,
     457, 0, 434, 429, 438, 435, 430, 439, 474, 431,
     440, 436, 432, 441, 443, 450, 451, 293, 0, 295,
     411, 413, 0, 0, 705, 415, 711, 728, 405, 405,
     707, 708, 0, 732, 0, 422, 423, 0, 117, 0,
     118, 0, 305, 303, 302, 282, 474, 0, 474, 284,
     381, 284, 0, 359, 362, 367, 284, 99, 0, 101,
     318, 88, 0, 0, 315, 0, 317, 0, 371, 308,
     314, 0, 0, 0, 736, 451, 462, 269, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 693, 0, 688,
     460, 473, 0, 119, 120, 120, 0, 0, 449, 675,
     674, 508, 673, 527, 528, 498, 539, 499, 554, 500,
     577, 501, 599, 502, 609, 503, 629, 504, 646, 505,
     649, 524, 506, 0, 525, 507, 659, 526, 478, 479,
       0, 0, 414, 706, 341, 261, 284, 284, 337, 338,
     284, 725, 406, 409, 261, 284, 284, 727, 284, 715,
     213, 214, 215, 216, 205, 206, 207, 208, 217, 218,
     219, 220, 209, 210, 211, 212, 120, 120, 717, 734,
       0, 32, 458, 0, 0, 0, 0, 279, 0, 473,
       0, 284, 473, 0, 284, 365, 0, 321, 0, 0,
     312, 93, 0, 307, 0, 320, 311, 83, 0, 535,
     536, 537, 0, 691, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 678, 679, 680, 0, 0,
       0, 694, 0, 0, 0, 474, 676, 0, 0, 126,
     469, 484, 471, 489, 0, 482, 0, 0, 452, 466,
     451, 0, 0, 451, 0, 0, 451, 451, 0, 451,
     127, 294, 412, 705, 723, 284, 340, 284, 343, 724,
     407, 412, 705, 726, 709, 405, 405, 459, 115, 116,
       0, 24, 28, 387, 474, 284, 0, 390, 389, 284,
       0, 393, 100, 0, 323, 0, 0, 309, 310, 529,
     534, 661, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 541, 0, 543, 0, 0, 0, 0, 587,
     579, 0, 581, 0, 0, 0, 608, 601, 0, 603,
     648, 0, 651, 654, 656, 0, 657, 0, 0, 0,
       0, 571, 0, 572, 561, 0, 563, 0, 689, 681,
       0, 686, 0, 509, 511, 0, 0, 124, 324, 0,
     125, 327, 0, 0, 451, 0, 0, 0, 468, 473,
     467, 488, 0, 677, 540, 538, 556, 555, 588, 578,
     600, 610, 630, 647, 650, 655, 660, 344, 345, 0,
     339, 342, 0, 284, 284, 720, 284, 722, 304, 0,
     392, 284, 395, 284, 0, 316, 313, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 631, 0, 633, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 628, 0, 0, 0,
     611, 0, 613, 542, 544, 0, 0, 0, 0, 580,
     582, 0, 0, 0, 602, 604, 653, 0, 0, 0,
       0, 0, 0, 0, 562, 564, 0, 687, 0, 0,
       0, 284, 122, 0, 123, 0, 0, 0, 0, 695,
       0, 483, 451, 452, 475, 473, 0, 0, 451, 346,
     710, 718, 719, 721, 391, 394, 322, 0, 0, 0,
       0, 0, 670, 669, 668, 667, 666, 663, 665, 664,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 632, 634, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 612, 614, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 573, 574, 575, 576, 0, 690, 697, 0,
     451, 510, 512, 692, 325, 328, 0, 0, 472, 696,
     497, 490, 0, 494, 481, 477, 476, 0, 695, 0,
     593, 0, 591, 590, 594, 596, 547, 548, 549, 550,
     551, 0, 553, 546, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 545, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 583, 584,
     585, 0, 605, 607, 606, 652, 658, 565, 566, 567,
       0, 569, 0, 0, 0, 0, 698, 699, 682, 0,
       0, 515, 514, 518, 517, 473, 473, 470, 485, 695,
     496, 451, 487, 557, 0, 589, 0, 592, 595, 451,
       0, 637, 638, 639, 640, 641, 642, 643, 0, 645,
     636, 635, 617, 618, 619, 620, 621, 622, 623, 0,
     625, 626, 0, 616, 615, 0, 0, 0, 0, 0,
     697, 0, 0, 0, 0, 513, 0, 516, 519, 474,
     474, 451, 0, 495, 695, 598, 597, 552, 0, 0,
       0, 586, 568, 570, 0, 0, 0, 683, 700, 520,
     522, 0, 0, 486, 491, 0, 644, 624, 627, 701,
       0, 0, 0, 451, 451, 326, 329, 695, 558, 0,
     703, 0, 684, 521, 523, 0, 695, 0, 0, 0,
     492, 0, 702, 685, 704, 451, 559, 493, 451, 560
};


static const yytype_int16 yydefgoto[] =
{
      -1, 1, 2, 3, 5, 22, 23, 24, 25, 330,
     519, 336, 521, 228, 423, 605, 191, 632, 391, 193,
     194, 195, 196, 26, 197, 198, 377, 376, 374, 613,
     375, 199, 537, 318, 319, 320, 321, 512, 465, 27,
     309, 1100, 28, 29, 30, 31, 32, 33, 34, 35,
      36, 37, 38, 39, 40, 41, 42, 43, 634, 635,
     499, 500, 348, 218, 212, 636, 219, 47, 48, 49,
      50, 51, 234, 80, 229, 235, 587, 81, 515, 310,
     221, 53, 300, 301, 302, 54, 585, 715, 607, 608,
     609, 826, 610, 729, 611, 612, 887, 1003, 1175, 890,
    1005, 1176, 518, 237, 677, 678, 679, 238, 55, 56,
      57, 58, 352, 354, 359, 246, 59, 733, 445, 241,
     242, 350, 522, 525, 523, 526, 357, 358, 213, 305,
     406, 681, 682, 408, 409, 410, 230, 466, 467, 468,
     469, 470, 471, 322, 294, 616, 637, 903, 397, 398,
     399, 711, 638, 295, 473, 200, 639, 775, 776, 892,
     777, 894, 323, 426, 1013, 900, 1014, 1015, 778, 1012,
     893, 1231, 895, 1179, 1267, 1285, 1181, 1101, 640, 641,
     999, 1000, 1091, 1170, 1171, 1172, 1173, 1263, 1264, 642,
     643, 60, 69, 644, 742, 904, 645, 780, 646, 843,
     844, 647, 781, 907, 1017, 1234, 1276, 1288, 648, 875,
     876, 1086, 649, 782, 650, 851, 852, 909, 1018, 1111,
    1112, 1113, 1114, 1189, 1115, 651, 783, 652, 858, 859,
     653, 784, 654, 971, 972, 655, 785, 656, 955, 956,
     657, 786, 658, 659, 787, 660, 987, 661, 662, 663,
     664, 665, 789, 666, 667, 1040, 250, 905, 669, 762,
    1102, 1165, 1166, 1167, 1271, 484, 563, 501, 688, 922,
     502, 503, 708, 504, 568, 313, 416, 505, 506, 463,
     201
};




static const yytype_int16 yypact[] =
{
      58, 134, 143, 3394, -1118, 3394, -25, -1118, -1118, -1118,
   -1118, -1118, 720, 21, 139, 139, 139, 162, -1118, 165,
   -1118, -1118, -1118, -1118, -1118, -1118, 184, 203, 2372, 919,
    2970, 1485, 1184, 950, 1218, 1133, 3404, 2353, 3423, 2556,
    1281, 1577, 2043, 2053, -1118, -1118, 113, -1118, -1118, -1118,
   -1118, -1118, 139, -1118, -1118, 105, 121, 126, -1118, -1118,
   -1118, -1118, 3394, -1118, -1118, -1118, -1118, -1118, -1118, 285,
     209, 139, 139, 139, 3157, 212, 3063, -1118, 79, 139,
     335, -1118, 2291, -1118, -1118, -1118, 139, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, 139, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, 139, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, 139, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, 139, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, 139, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
     139, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, 139,
   -1118, -1118, -1118, -1118, -1118, 228, 203, -1118, -1118, -1118,
   -1118, -1118, 220, -1118, 241, -1118, 264, -1118, 279, 393,
   -1118, -1118, -1118, -1118, -1118, 3157, 3157, 314, 328, 331,
   -1118, 161, -1118, -1118, -1118, 3157, -1118, -1118, 1944, -1118,
   -1118, 3157, 325, 323, -1118, 3204, 3251, -1118, 3958, 933,
    1587, 3157, 752, 346, 1848, 706, 2348, 1613, 923, 734,
    1112, 831, -1118, 350, 197, 468, 217, 500, -1118, 203,
     203, 139, -1118, 139, -1118, 386, 139, 164, 976, 139,
   -1118, -1118, 79, 139, 362, -1118, 997, 472, 491, 375,
    2322, 384, 1352, -1118, 390, -1118, 637, -1118, -1118, -1118,
     246, -1118, -1118, 3157, 3157, 2453, -1118, -1118, 395, -1118,
     403, 427, -1118, 440, 3157, 1944, -1118, 1944, -1118, 3157,
    3157, 543, -1118, -1118, 3157, 3157, 3157, 3157, 3157, 3157,
    3157, 3157, 3157, 3157, 3157, 3157, -1118, -1118, 161, 3157,
    3157, 161, 505, -1118, 575, 550, -1118, -1118, -1118, -1118,
     269, -1118, 578, -1118, -1118, 243, -1118, 491, 411, 203,
   -1118, 669, -1118, -1118, 79, 710, 2361, 592, -1118, -1118,
    1160, 51, -1118, -1118, 662, 228, 228, -1118, 139, -1118,
     976, 139, 139, -1118, -1118, -1118, 976, 139, -1118, -1118,
    1848, 706, 2348, 1613, 923, 734, 1112, 831, -1118, 689,
     627, 1752, -1118, 139, -1118, -1118, 688, 645, -1118, 637,
     649, 790, 3597, 3627, 671, -1118, -1118, 2899, -1118, 3958,
     680, 684, 3958, 3958, 3157, 735, 3157, 3157, 1634, 2102,
     698, 1378, 1182, 1062, 1062, 807, 807, -1118, -1118, -1118,
   -1118, 714, 323, 721, -1118, -1118, 161, 1683, 575, -1118,
   -1118, 742, 752, 3298, 79, 139, -1118, -1118, -1118, -1118,
     785, -1118, -1118, -1118, 309, 745, 1415, 3157, 3157, 2428,
   -1118, 727, -1118, -1118, -1118, -1118, 2459, -1118, 472, 509,
     228, -1118, 793, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
     769, -1118, 799, 3157, 161, 801, 645, -1118, -1118, 2453,
    3157, 2453, -1118, -1118, 788, 788, 851, 3157, 3987, 2962,
   -1118, -1118, -1118, 419, 592, -1118, -1118, 99, 122, 127,
     137, 938, -1118, 822, -1118, -1118, -1118, -1118, -1118, -1118,
     298, 827, 243, 243, -1118, 139, -1118, -1118, 835, -1118,
   -1118, 3532, 2647, 1230, 824, 3558, 2719, 2112, 1061, -1118,
   -1118, -1118, 842, 462, -1118, -1118, 311, 850, 861, -1118,
   -1118, -1118, -1118, 888, 898, 1251, -1118, -1118, 915, -1118,
   -1118, -1118, 891, -1118, -1118, 900, -1118, -1118, 139, 139,
    3958, -1118, 139, 920, 926, 3647, 930, 2013, -1118, 3974,
   -1118, 161, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, 2524, -1118, 3157, -1118,
   -1118, -1118, 932, 356, -1118, -1118, -1118, -1118, 429, 224,
   -1118, -1118, 3524, -1118, 1071, -1118, -1118, 59, -1118, 228,
   -1118, 203, -1118, -1118, 3958, -1118, -1118, 1251, -1118, 139,
     459, 139, 250, -1118, -1118, -1118, 139, -1118, 3157, -1118,
   -1118, 987, 161, 3157, -1118, 1008, 3958, 977, 975, -1118,
   -1118, 238, 2151, 3157, -1118, 2616, -1118, 1024, 1093, 974,
    1026, 3962, 3157, 989, 990, 3110, 146, 1103, 792, -1118,
   -1118, -1118, 992, -1118, -1118, -1118, 998, 636, 1003, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, 3157, -1118, -1118, -1118, -1118, -1118, -1118,
    2995, 318, -1118, -1118, -1118, 79, 139, 139, 901, 908,
     293, -1118, -1118, 139, 79, 139, 293, -1118, 139, -1118,
    3532, 2647, 3568, 2791, 1230, 824, 2122, 1531, 3558, 2719,
    3591, 3095, 2112, 1061, 2341, 2191, -1118, -1118, -1118, -1118,
    1001, -1118, -1118, 464, 494, 2013, 59, -1118, 59, -1118,
    3157, 237, -1118, 3157, 476, -1118, 3693, -1118, 1895, 2013,
   -1118, -1118, 2082, -1118, 2220, -1118, -1118, 3974, 1004, -1118,
   -1118, -1118, 1005, -1118, 1006, 2844, 352, 286, 1009, -30,
    1015, 1016, -7, 1408, 3469, -1118, -1118, -1118, 1025, 3157,
    1042, -1118, 1065, 1043, 1044, -1118, -1118, 228, 203, -1118,
   -1118, -1118, -1118, -1118, 1075, 1120, 1779, 56, -1118, -1118,
    2688, 1123, 1051, 2688, 1123, 1051, 2688, 2688, 3673, 2688,
   -1118, -1118, 429, 287, -1118, 139, -1118, 139, -1118, -1118,
     139, 224, 224, -1118, -1118, 429, 224, -1118, -1118, -1118,
    1056, -1118, -1118, -1118, -1118, 3898, 3157, -1118, -1118, 3898,
    3157, -1118, -1118, 3157, -1118, 1073, 2220, -1118, -1118, -1118,
   -1118, -1118, 1105, 1106, 1110, 1114, 1119, 1121, 1124, 3454,
    1129, 2236, -1118, 833, -1118, 1130, 1135, 1141, 1147, -1118,
   -1118, 426, -1118, 1149, 1150, 1157, -1118, -1118, 435, -1118,
   -1118, 1198, -1118, -1118, -1118, 393, -1118, 1158, 1159, 1168,
    1183, -1118, 1186, -1118, -1118, 1584, -1118, 3157, -1118, -1118,
    1090, -1118, 3157, -1118, -1118, 1140, 548, -1118, 536, 574,
   -1118, 547, 1192, 1193, -1118, 1195, 3157, 1875, -1118, -1118,
   -1118, -1118, 3157, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, 901, 908, 532,
   -1118, -1118, 356, 139, 293, -1118, 293, -1118, -1118, 459,
   -1118, 3898, -1118, 3898, 3579, -1118, -1118, 393, 393, 393,
     274, 1161, 393, 3157, 1196, 1202, 1205, 1207, 1208, 1212,
    1213, 1215, 1217, 1223, -1118, 3479, -1118, 3157, 1224, 1225,
    1226, 1231, 1234, 1235, 1237, 1238, -1118, 1239, 1244, 1250,
   -1118, 2989, -1118, -1118, -1118, 393, 393, 393, 1161, -1118,
   -1118, 393, 393, 393, -1118, -1118, -1118, 1102, 348, 393,
     393, 393, 1161, 497, -1118, -1118, 3940, -1118, 68, 1134,
    1134, 139, -1118, 976, -1118, 976, 3157, 3157, 1246, 2995,
    1233, -1118, -1118, -1118, -1118, -1118, 1242, 1256, 2760, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, 373, 377, 417,
    1245, 1249, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
    1279, 431, 3715, 393, 393, 393, 393, 393, 397, 1161,
     393, 3157, 3157, -1118, -1118, 3734, 393, 393, 393, 393,
     393, 631, 1161, 393, 497, 3157, 3157, -1118, -1118, 442,
     454, 473, 1280, 523, 531, 556, 1243, 1248, 619, 626,
     646, 1287, -1118, -1118, -1118, -1118, 653, -1118, 49, 1257,
    2832, -1118, -1118, -1118, -1118, -1118, 1259, 1260, -1118, -1118,
   -1118, -1118, 1276, -1118, -1118, -1118, -1118, 1285, 2995, 2898,
   -1118, 1288, 1337, 1337, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, 393, -1118, -1118, 683, 687, 695, 722, 741, 1289,
    1291, 1322, 781, 3756, 3775, -1118, 795, 797, 818, 821,
     828, 1292, 1294, 1328, 848, 854, 3797, 3816, -1118, -1118,
   -1118, 393, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
     393, -1118, 3157, 1319, 161, 80, 1300, -1118, -1118, 973,
    1308, 1314, 1314, -1118, -1118, -1118, -1118, -1118, -1118, 3157,
   -1118, -1118, -1118, -1118, 1306, -1118, 1398, 1337, -1118, 2688,
     895, -1118, -1118, -1118, -1118, -1118, -1118, -1118, 393, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, 393,
   -1118, -1118, 3157, -1118, -1118, 916, 928, 3838, 3157, 1309,
      49, 1316, 49, 1317, 1318, -1118, 3, 1314, -1118, -1118,
   -1118, -1118, 1323, -1118, 3157, -1118, -1118, -1118, 934, 936,
    3857, -1118, -1118, -1118, 1330, 1440, 159, -1118, -1118, -1118,
   -1118, 1001, 1001, -1118, -1118, 1331, -1118, -1118, -1118, -1118,
    1354, 1443, 1338, 2688, 2688, -1118, -1118, 3157, -1118, 3157,
   -1118, 952, -1118, -1118, -1118, 1340, 3157, 1355, 1351, 1447,
   -1118, 1357, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118
};


static const yytype_int16 yypgoto[] =
{
   -1118, -1118, -1118, -1118, -1118, 83, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -50, -1118, -74, 1078, -247,
     886, -1118, -1118, -1118, -69, -203, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -322, -1118, 1162, -1118, -1118, -88, 449,
    -297, -502, 64, 345, 624, 858, 22, 132, 686, 783,
    -382, -380, 910, 912, -378, -363, 922, 929, 24, 27,
    1069, 1074, -1118, -137, -1118, 98, -128, 787, 806, 853,
     869, -1118, -539, -153, -235, 1072, -1118, 1194, -1118, -51,
       7, 40, -1118, 1111, -1118, 690, 927, -1118, -399, -1118,
     784, -1118, -597, -1118, -1118, 906, -1118, -1118, -1118, -1118,
   -1118, -1118, -151, 768, 713, 728, 304, -1, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, 1080, -130,
   -1118, 1176, -1118, -1118, 800, 819, 1170, 1096, 0, -1118,
   -1118, -549, -286, -365, -465, -1118, -144, -1118, -1118, -1118,
   -1118, -1118, -1118, -264, -1118, -1118, -767, 530, -1118, -1118,
    1146, -10, -1118, 913, -1118, -1118, -559, -1118, -1118, -1118,
   -1118, -1118, 196, -409, 537, -800, -199, 135, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, 438, -1118, -1118,
   -1118, -1118, 553, -1118, -1118, 383, -1117, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, -1118, -620, -1118, -1118, -1118, -1118,
     716, -1118, -1118, 776, -1118, -1118, -1118, -1118, -1118, -1118,
     692, 498, -1118, -1118, -1118, -1118, 717, 794, -1118, -1118,
   -1118, 457, -1051, -1118, -1118, -1118, -1118, -1118, -1118, 703,
   -1118, -1118, -1118, -1118, 599, -1118, -1118, -1118, -1118, 620,
   -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118, -1118,
   -1118, -1118, -1118, -1118, 270, -588, 465, -531, -1118, -1118,
   -1032, 360, -1118, 359, -1118, 1104, -1118, -547, -1118, -1118,
   -1118, -1118, -1118, -1118, 1087, -308, -1118, -1118, -1118, -1118,
       8
};






static const yytype_int16 yytable[] =
{
     192, 331, 203, 239, 236, 162, 164, 166, 431, 899,
      52, 62, 52, 62, 434, 736, 673, 561, 712, 407,
     687, 71, 72, 73, 433, 668, 82, 44, 220, 44,
      45, 430, 45, 244, 495, 86, 496, 95, 497, 104,
     713, 113, 392, 122, 495, 131, 496, 140, 497, 149,
     362, 363, -109, 498, 633, 1228, 424, 901, -2, 1163,
     710, 369, 1188, 498, 70, 556, 372, 373, 861, 52,
      62, 378, 379, 380, 381, 382, 383, 384, 385, 386,
     387, 388, 389, 52, 668, 52, 44, 11, 63, 45,
     315, 865, 158, 333, 1008, 64, 65, 862, 208, 316,
    -444, 46, 577, 46, 325, 349, 251, 252, 159, 160,
    1228, 158, 158, 158, 260, 590, 257, 560, 592, 1223,
     866, 1224, 262, -445, 159, 160, 158, 899, -446, 159,
     160, 256, 296, 472, 4, 158, 1188, 828, -447, 615,
     204, 19, 214, -3, 158, 167, 1088, 1232, 1164, 159,
     160, 807, 299, 158, 902, 240, 392, 712, 1220, 712,
      46, 411, 158, 910, 159, 160, 913, 914, 790, 916,
     314, 158, 11, 458, 459, 312, -109, 716, 324, 718,
     158, 495, 326, 496, 630, 497, 417, 1089, 261, 158,
     698, 260, 699, 260, 702, 52, 356, 562, 475, 1221,
     498, 19, 1255, 683, 683, 83, 77, 554, 209, 703,
     208, 86, 1104, 95, 349, 104, 393, 113, 307, 308,
    -424, 86, 440, 95, 442, 92, 19, 77, 886, 936,
     161, 77, 231, 157, 52, 1275, 759, 1261, 390, 52,
     530, 394, 421, -425, 1281, 899, 163, 535, -426, 52,
     351, 165, 204, 77, 539, 364, 925, 927, -427, 19,
      74, 158, 52, 75, 344, 370, 486, 371, 543, 546,
     549, 552, 52, 61, 52, 61, 482, 208, 1262, 19,
     432, 312, 76, 331, 333, 333, 435, 208, 168, 208,
      77, 214, 719, 78, 722, 1030, 214, 1031, 453, 19,
     456, 79, 441, 853, 854, 855, 340, 169, 414, 356,
     202, 671, 584, 734, 684, 816, 810, 856, 232, 204,
     209, 52, 685, 227, 307, 308, 233, 561, 723, 204,
     825, 204, 61, 404, 606, 602, 561, 603, 411, 411,
      78, 405, 227, 507, 508, 243, 462, 86, 79, 95,
     257, 104, 299, 113, 483, 19, 885, 488, 52, 351,
       7, 8, 9, 10, 11, 360, 245, 490, 225, 845,
     361, 846, 847, 344, 345, 1020, 848, 675, 214, 542,
     545, 1233, 551, 849, 584, 676, 227, 209, 401, 247,
    1072, 226, 227, 402, 356, 726, 249, 209, 1110, 209,
     728, 14, 15, 16, 1081, 929, 248, 226, 227, 606,
     737, 52, 253, 857, 899, 340, 18, 557, 1129, 754,
    1130, 205, 558, 215, 411, 411, 254, 560, 714, 255,
     573, 1253, 77, 674, 564, 574, 560, 791, 493, 721,
     683, 683, 264, 845, 263, 846, 847, 264, 493, 534,
     848, 536, 853, 854, 855, 222, 52, 849, 52, 223,
     788, 1131, 77, 231, 899, 304, 856, 1077, 214, 306,
    1174, 208, 361, 208, 1143, -712, 88, 593, 594, 850,
     491, 595, 327, 345, 311, 1287, 328, 920, 1289, 921,
     491, 614, 1116, 155, 156, 334, 1117, 361, 86, 223,
     104, 361, 122, 1082, 140, 337, 631, 562, 97, 226,
     227, 353, 606, 204, 365, 204, 562, 815, 899, 675,
     819, 899, 366, 1083, 1084, 1085, 606, 676, 227, 606,
     412, 606, 476, 205, 796, 798, 1118, 720, 19, 540,
     495, 361, 496, 541, 497, 725, 367, 792, 494, 232,
    1122, 758, 727, 979, 820, 361, 801, 233, 494, 498,
     368, 1148, 984, 52, 670, 631, 361, 680, 686, 1236,
     332, 227, 215, 1149, 226, 227, 760, 215, 361, 52,
     414, 209, 571, 209, 808, 493, 572, 341, 328, 226,
     227, 724, 1150, 474, 694, 225, 706, 361, -276, 707,
     205, 296, 544, 547, 550, 553, 225, 332, 227, -276,
     205, -276, 205, 931, 809, 889, 888, 933, 223, 511,
     934, -84, -276, 606, 395, 793, 794, 491, 516, 799,
     797, 227, 524, 527, 802, 803, 690, 804, 355, 396,
     159, 160, 1152, 1273, 1274, 226, 227, 361, 411, 411,
    1153, 1019, 1141, 331, 1142, 361, -276, 411, 411, 215,
    -276, 411, 411, 474, 474, 548, 474, -276, 1002, 400,
     817, -276, 328, 821, 996, 1154, 403, 52, 670, 415,
     361, 1094, 52, 1095, 770, 880, 771, 772, 773, 774,
     800, 52, 1265, 1266, 1004, 494, 341, 86, 223, 95,
     206, 104, 216, 113, 695, 122, 811, 131, 812, 140,
       7, 149, 422, 10, 88, 586, 418, 588, 87, 91,
      96, 100, 105, 109, 114, 118, 123, 127, 132, 136,
     141, 145, 150, 154, 66, 67, 68, 427, 1157, 214,
    1042, 10, 106, 361, 312, 1158, 312, 438, 214, 215,
     361, 14, 15, 16, 1055, 159, 160, 8, 9, 297,
     298, 492, 210, 443, 930, 1159, 18, 891, 932, 444,
     361, 492, 1161, 796, 798, 798, 447, 1162, 721, 14,
      15, 16, 277, 278, 279, 280, 281, 282, 283, 284,
     285, 307, 308, 448, 205, 451, 205, 436, 437, 454,
     307, 308, 1191, 455, 924, 926, 1192, 361, 998, -383,
    -383, 361, 206, 457, 1193, 84, 89, 93, 98, 361,
    1251, 1252, 1010, 120, 125, 129, 134, 765, 1016, 8,
       9, 10, 106, 460, 85, 90, 94, 99, 10, 115,
     158, 1194, 121, 126, 130, 135, 361, 461, 1133, 1134,
     832, 216, 833, 510, 834, 835, 216, 836, 837, 211,
    1195, 478, 1146, 1147, 487, 361, 342, 838, 520, 14,
      15, 16, 1021, 1022, 210, 1023, 14, 15, 16, 206,
    1024, 840, 1025, 485, 227, 102, 107, 111, 116, 206,
     528, 206, 303, 138, 143, 147, 152, 283, 284, 285,
    1199, 103, 108, 112, 117, 361, 763, 764, 492, 139,
     144, 148, 153, 452, 1202, 814, 1203, 691, 527, 361,
     529, 361, 532, 7, 8, 9, 10, 88, 346, 538,
      10, 101, 1096, 1097, 207, 1099, 217, 1204, 216, 317,
    1205, 210, 361, 555, 493, 361, 559, 1206, 567, 567,
    1093, 210, 361, 210, 566, 8, 9, 10, 106, 1217,
     973, 570, 579, 581, 14, 15, 16, 1210, 14, 15,
      16, 211, 361, 1211, 225, 342, 575, 317, 1212, 18,
    -473, -473, -473, -473, -473, 19, 491, 576, 739, 740,
     741, 84, 89, 93, 98, 14, 15, 16, 329, 795,
     227, -22, -22, -22, -22, -22, 797, 227, 578, 1240,
      85, 90, 94, 99, 1237, 589, 52, 670, 580, 361,
     215, -473, -473, -473, 591, 347, 286, 287, 216, 215,
     288, 289, 290, 291, 1099, 1241, -473, 346, 211, -246,
     361, 596, -22, -22, -22, 597, 207, 1242, 211, 599,
     211, 672, 361, 1256, 494, 1257, 225, -22, 361, -276,
     361, 102, 107, 111, 116, -34, 8, 9, 10, 142,
    -250, 1278, -276, 206, 709, 206, 1279, 103, 108, 112,
     117, 266, 268, 767, 768, 217, 730, 763, 764, 1223,
     217, 1224, 303, 428, 429, 548, 918, 919, 731, 732,
     343, -108, -35, 738, 743, 1099, 14, 15, 16, 755,
     756, 761, 766, 207, 1219, 52, 670, -276, 769, 10,
     110, -276, -22, 207, 293, 207, 630, 84, 89, 93,
      98, 829, 830, 831, 347, 210, 860, 210, 8, 9,
      10, 115, 863, 864, 1244, 879, 85, 90, 94, 99,
     281, 282, 283, 284, 285, 805, 806, 14, 15, 16,
    1099, 317, 881, 882, -111, -111, -111, -111, -111, 897,
     883, 884, 217, 896, 19, 906, 908, 928, 14, 15,
      16, 87, 91, 105, 109, 123, 127, 141, 145, 8,
       9, 10, 101, 1099, 935, 1277, 692, 102, 107, 111,
     116, 986, 1099, 937, 938, -111, -111, -111, 939, 343,
     997, 548, 940, 103, 108, 112, 117, 941, 1001, 942,
    -111, 1076, 943, 8, 9, 10, 110, 957, 975, 14,
      15, 16, 211, 976, 211, 8, 9, 10, 101, 977,
    1032, 1033, 1034, 1035, 1036, 978, 19, 981, 982, 1037,
    1038, 1039, 582, -252, 170, 983, 989, 990, 696, 1090,
     171, 172, 217, 14, 15, 16, 991, 492, 279, 280,
     281, 282, 283, 284, 285, 14, 15, 16, 84, 89,
      19, 992, 120, 125, 993, -111, 8, 9, 10, 137,
    1006, 1007, 19, 1009, 1043, 173, 1098, 85, 90, 216,
    1044, 121, 126, 1045, -249, 1046, 1047, 207, 216, 207,
    1048, 1049, 174, 1050, 20, 1051, 175, 176, 177, 178,
     179, 1052, 1056, 1057, 1058, 180, 14, 15, 16, 1059,
     988, 181, 1060, 1061, 182, 1062, 1063, 1064, -251, 183,
     184, 185, 1065, 19, 186, 187, 102, 107, 1066, 188,
     138, 143, 1103, 338, 1108, 697, 7, 1121, 1151, 10,
      11, 1107, 103, 108, 1119, 1160, 139, 144, 1120, 1186,
    1155, 1229, 1230, 189, 190, 1156, 583, 1168, 1177, 1178,
      87, 91, 96, 100, 105, 109, 114, 118, 123, 127,
     132, 136, 141, 145, 150, 154, 1180, 14, 15, 16,
    1198, -257, 1027, 1028, 1029, 1182, 1209, 1041, 1196, 1185,
    1197, 1207, 18, 1208, 19, 20, 488, 1218, 489, 7,
       8, 9, 10, 11, 1222, 867, 490, 868, 869, 1225,
     693, 1226, 870, 1235, 1184, 1245, 1247, 871, 872, 873,
    1069, 1070, 1071, 1254, 1249, 1250, 1073, 1074, 1075, 1259,
    1260, 1268, 1269, 1270, 1078, 1079, 1080, 1284, 1272, 1280,
      14, 15, 16, 278, 279, 280, 281, 282, 283, 284,
     285, 1283, 339, -375, 1282, 18, 1286, 84, 89, 93,
      98, 481, 700, 425, 701, 120, 125, 129, 134, 7,
       8, 9, 10, 97, 704, 513, 85, 90, 94, 99,
     514, 705, 517, 413, 121, 126, 130, 135, 1124, 1125,
    1126, 1127, 1128, 479, 717, 1132, 827, 735, 923, 813,
     917, 1136, 1137, 1138, 1139, 1140, 533, 439, 1144, 446,
      14, 15, 16, 217, -712, 874, 8, 9, 10, 115,
     531, 818, 217, 1105, 477, 18, 1183, 102, 107, 111,
     116, 779, 1106, 1092, 1227, 138, 143, 147, 152, 974,
     911, 985, 1145, 103, 108, 112, 117, 995, 980, 1187,
    1068, 139, 144, 148, 153, 1054, 14, 15, 16, 912,
    1246, 1248, 8, 9, 10, 142, 1190, 569, 292, 565,
    -449, -449, -449, -449, -449, -449, -449, -449, 0, -449,
    -449, 867, 0, 868, 869, -248, 0, 0, 870, -449,
       0, 0, 0, 871, 872, 873, 1215, 7, 0, -449,
      10, 97, 14, 15, 16, 1216, 0, 0, 0, 0,
       0, -449, -449, -449, -449, -449, 0, -449, -449, -449,
    -449, -449, -449, -449, -449, -449, -449, -449, -449, -449,
    -449, -449, -449, -449, -449, -449, -449, 0, 14, 15,
      16, -449, 0, 1238, 0, 0, 0, -449, 0, 0,
    -449, 0, 0, 18, 1239, -449, -449, -449, 0, 0,
    -449, -449, 0, 0, 464, -449, -473, -473, -473, -473,
    -473, -473, -473, -473, 0, -473, -473, -258, 0, 0,
       0, 0, 0, 0, -449, -473, 0, -449, 293, -449,
    -449, 994, -449, 0, 0, -473, 275, 276, 277, 278,
     279, 280, 281, 282, 283, 284, 285, -473, -473, -473,
    -473, -473, 0, -473, -473, -473, -473, -473, -473, -473,
    -473, -473, -473, -473, -473, -473, -473, 0, -473, -473,
    -473, -473, -473, 338, 0, 0, 7, -473, 0, 10,
      11, 0, 0, -473, 0, 0, -473, 0, 0, 0,
       0, -473, -473, -473, 0, 0, -473, -473, 0, 0,
     898, -473, -451, -451, 0, 0, 0, 0, -451, -451,
       0, -451, -451, 0, 0, 0, 0, 14, 15, 16,
    -473, -451, 0, -473, 0, -473, -473, 0, -473, 0,
       0, -451, 18, 0, 19, 20, 0, 0, 0, 0,
       0, 0, 0, -451, 0, 0, 0, -451, 0, -451,
    -451, -451, -451, -451, -451, -451, -451, -451, -451, 0,
    -451, 0, -451, 0, -451, -451, -451, -451, -451, 0,
       0, 0, 7, -451, 0, 10, 83, 0, 0, -451,
       0, 0, -451, 0, 0, 0, 0, -451, -451, -451,
       0, 0, -451, -451, 0, 0, 1011, -451, -480, -480,
       0, 0, 0, 0, -480, -480, 0, -480, -480, 0,
       0, 0, 0, 14, 15, 16, -451, -480, 0, -451,
       0, -451, -451, 0, -451, 0, 823, -480, 18, 0,
      19, 0, 0, 0, 0, 0, 0, 0, 0, -480,
       0, 0, 0, -480, 0, -480, -480, -480, -480, -480,
    -480, -480, -480, -480, -480, 0, -480, 0, -480, 0,
    -480, -480, -480, -480, -480, 258, 0, 170, 7, -480,
       0, 10, 11, 171, 172, -480, 0, 0, -480, 0,
       0, 0, 0, -480, -480, -480, 0, 0, -480, -480,
     269, 270, 271, -480, 272, 273, 274, 275, 276, 277,
     278, 279, 280, 281, 282, 283, 284, 285, 173, 14,
      15, 16, -480, 0, 0, -480, 0, -480, -480, 0,
    -480, 0, 0, 0, 18, 174, 19, 20, 0, 175,
     176, 177, 178, 179, 600, 0, 601, 160, 180, 0,
       0, 824, 171, 172, 181, 0, 0, 182, 0, 0,
       0, 0, 183, 184, 185, 0, 0, 186, 187, 0,
       0, 0, 188, 0, 0, 0, 0, 0, 8, 9,
      10, 146, 0, 0, 0, 0, 0, 173, 8, 9,
      10, 151, 0, 0, 0, 0, 189, 190, 0, 259,
       0, 0, 0, 0, 174, 0, 20, 0, 175, 176,
     177, 178, 179, 600, 0, 601, 160, 180, 14, 15,
      16, 171, 172, 181, 0, 0, 182, 0, 14, 15,
      16, 183, 184, 185, 0, 19, 186, 187, 0, 0,
     602, 188, 603, 0, 0, 0, 0, 8, 9, 10,
     137, 0, 0, 0, 0, 0, 173, 8, 9, 10,
     110, 0, 0, 0, -306, 189, 190, 0, 604, 0,
       0, 0, 0, 174, 0, 20, 0, 175, 176, 177,
     178, 179, 600, 0, 170, 0, 180, 14, 15, 16,
     171, 172, 181, -259, 0, 182, 0, 14, 15, 16,
     183, 184, 185, -260, 19, 186, 187, 0, 0, 602,
     188, 603, 0, 0, 19, 276, 277, 278, 279, 280,
     281, 282, 283, 284, 285, 173, 8, 9, 10, 151,
       0, 0, 0, -372, 189, 190, 0, 604, 0, 0,
       0, 0, 174, 0, 20, 0, 175, 176, 177, 178,
     179, 600, 0, 170, 0, 180, -319, 0, 0, 171,
     172, 181, 0, 0, 182, 0, 14, 15, 16, 183,
     184, 185, 0, 0, 186, 187, 0, 0, -319, 188,
    -319, 0, 0, 958, 959, 960, 961, 962, 963, 0,
     964, 965, 0, 0, 173, 966, 967, 0, 0, 0,
     968, 0, 0, 189, 190, 0, 604, 0, 0, 0,
       0, 174, 0, 20, 969, 175, 176, 177, 178, 179,
       0, 0, 224, 0, 180, -30, -30, -30, -30, -30,
     181, 0, 0, 182, 0, 0, 0, 0, 183, 184,
     185, 0, 0, 186, 187, 0, 0, 0, 188, 0,
       0, 0, 0, 335, 0, 0, -26, -26, -26, -26,
     -26, 0, 0, 0, 0, 0, -30, -30, -30, 0,
       0, 0, 189, 190, 0, 604, 8, 9, 10, 146,
     225, -30, 7, -276, 0, 10, 92, 7, 8, 9,
      10, 124, 0, 970, 170, 0, -276, -26, -26, -26,
     171, 172, 0, 0, 0, 0, 7, 8, 9, 10,
      83, 225, -26, 0, -276, 0, 14, 15, 16, 226,
     227, 0, 0, 14, 15, 16, 0, -276, 14, 15,
      16, 0, 0, 19, 0, 173, 0, 0, 18, 0,
      19, -276, 0, 18, 0, -276, -30, 14, 15, 16,
     226, 227, 174, 0, 20, 0, 175, 176, 177, 178,
     179, 170, 18, 0, 19, 180, 0, 171, 172, 0,
       0, 181, -276, 0, 182, 0, -276, -26, 0, 183,
     184, 419, 0, 0, 186, 187, 0, 7, 0, 188,
      10, 11, 0, 7, 8, 9, 10, 11, 0, 0,
       0, 0, 173, -254, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 189, 190, 0, 0, 420, 0, 174,
       0, 20, -245, 175, 176, 177, 178, 179, 14, 15,
      16, 0, 180, 0, 14, 15, 16, 0, 181, 0,
       0, 182, 0, 18, 0, 19, 183, 184, 185, 18,
       0, 186, 187, 0, 0, 0, 188, 601, 617, 8,
       9, 10, 11, 171, 172, 0, 618, 619, 0, 0,
       0, 0, 0, 0, 0, 0, 620, 0, 0, 0,
     189, 190, 0, 0, 509, 0, 621, 0, 0, 0,
       7, 8, 9, 10, 133, 0, 0, 0, 173, 14,
      15, 16, 0, 0, 0, 0, 0, 0, 622, 623,
     624, 625, 626, 627, 18, 174, 19, 20, 0, 175,
     176, 177, 178, 179, 0, 0, 0, 0, 180, 0,
       0, 14, 15, 16, 181, 0, 0, 182, 0, 0,
       0, 0, 183, 184, 185, 0, 18, 186, 187, 601,
     160, 0, 188, 0, 0, 171, 172, 0, 618, 619,
       0, 0, 0, 0, 0, 0, 0, 0, 620, 0,
       0, 628, 0, 0, 629, 0, 189, 190, 621, 630,
       0, 7, 8, 9, 10, 88, 0, 0, 0, 0,
     173, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     622, 623, 624, 625, 626, 627, -256, 174, 0, 20,
       0, 175, 176, 177, 178, 179, 0, 0, 0, 0,
     180, 170, 14, 15, 16, 0, 181, 171, 172, 182,
     618, 619, 0, 0, 183, 184, 185, 18, 0, 186,
     187, 0, 0, 0, 188, 0, 0, 0, 0, 0,
     621, 0, 0, 7, 8, 9, 10, 124, 0, 0,
       0, 0, 173, 628, 0, 0, 629, 0, 189, 190,
       0, 630, 0, 623, 624, 625, 626, 627, 0, 174,
       0, 20, 0, 175, 176, 177, 178, 179, 0, 0,
       0, 0, 180, 170, 14, 15, 16, 0, 181, 171,
     172, 182, 618, 619, 0, 0, 183, 184, 185, 18,
       0, 186, 187, 0, 0, 0, 188, 0, 0, 0,
       0, 0, 1109, 0, 0, 7, 8, 9, 10, 97,
       0, 0, 0, 0, 173, 628, 0, 0, 629, 0,
     189, 190, 0, 630, 0, 623, 624, 625, 626, 627,
       0, 174, 0, 20, 0, 175, 176, 177, 178, 179,
       0, 0, 0, 0, 180, 170, 14, 15, 16, 0,
     181, 171, 172, 182, 618, 619, 0, 0, 183, 184,
     185, 18, 0, 186, 187, 0, 0, 0, 188, 0,
       0, 832, 0, 833, 621, 834, 835, 0, 836, 837,
       0, 0, 0, 0, 0, 0, 173, 628, 838, 839,
     629, 0, 189, 190, 0, 630, 0, 623, 624, 625,
     626, 627, 840, 174, 0, 20, 841, 175, 176, 177,
     178, 179, 170, 0, 0, 0, 180, 0, 171, 172,
       0, 0, 181, 0, 0, 182, 0, 0, 0, 0,
     183, 184, 185, 0, 0, 186, 187, 744, 0, 0,
     188, 745, 0, 746, 1184, 747, 748, 749, 750, 751,
     752, 70, 0, 173, 0, 0, 0, 0, 0, 1169,
     753, 0, 629, 0, 189, 190, 0, 630, 0, 0,
     174, 0, 20, 0, 175, 176, 177, 178, 179, 0,
       0, 842, 0, 180, 7, 8, 9, 10, 92, 181,
       0, 0, 182, 0, 0, 0, 0, 183, 184, 185,
       0, 0, 186, 187, 0, 0, 0, 188, 170, 7,
       8, 9, 10, 11, 171, 172, 958, 959, 960, 961,
     962, 963, 0, 964, 965, 14, 15, 16, 966, 967,
       0, 189, 190, 968, 452, 0, 0, 0, 0, 0,
      18, 0, 19, 0, 0, 0, 0, 969, 0, 173,
      14, 15, 16, 274, 275, 276, 277, 278, 279, 280,
     281, 282, 283, 284, 285, 18, 174, 19, 20, 0,
     175, 176, 177, 178, 179, 0, 170, 7, 0, 180,
      10, 11, 171, 172, 0, 181, 0, 0, 182, 0,
       0, 0, 0, 183, 184, 185, 0, 0, 186, 187,
    -247, 0, 0, 188, 0, 0, 0, 0, 0, 7,
       8, 9, 10, 133, 0, 0, 0, 173, 14, 15,
      16, 0, 0, 170, 0, 0, 1067, 189, 190, 171,
     172, 0, 0, 18, 174, 19, 20, 0, 175, 176,
     177, 178, 179, 0, 0, 0, 0, 180, 0, 0,
      14, 15, 16, 181, 0, 0, 182, 0, 0, 0,
       0, 183, 184, 185, 173, 18, 186, 187, 0, 0,
     170, 188, 0, 0, 0, 0, 171, 172, 0, 0,
       0, 174, 0, 20, 0, 175, 176, 177, 178, 179,
       0, 0, 0, 0, 180, 189, 190, 0, 0, 0,
     181, 0, 0, 182, 0, 0, 0, 0, 183, 184,
     185, 173, 0, 186, 187, 0, 0, 170, 188, 0,
       0, 0, 0, 171, 172, 0, 0, 0, 174, 0,
      20, 0, 175, 176, 177, 178, 179, 0, 0, 0,
     757, 180, 189, 190, 0, 0, 0, 181, 0, 0,
     182, 0, 0, 0, 0, 183, 184, 185, 173, 0,
     186, 187, 0, 0, 170, 188, 0, 0, 0, 0,
     171, 172, 0, 0, 0, 174, 0, 20, 0, 175,
     176, 177, 178, 179, 0, 0, 0, 0, 180, 189,
     190, 0, 0, 0, 181, 0, 0, 182, 0, 0,
       0, 0, 183, 184, 185, 173, 0, 186, 187, 0,
       0, 480, 265, 0, 0, 0, 0, 171, 172, 0,
       0, 0, 174, 0, 20, 0, 175, 176, 177, 178,
     179, 0, 0, 0, 0, 180, 189, 190, 0, 0,
       0, 181, 0, 0, 182, 0, 0, 0, 0, 183,
     184, 185, 173, 0, 186, 187, 0, 0, 0, 267,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 174,
       0, 20, 0, 175, 176, 177, 178, 179, 0, 0,
       0, 0, 180, 189, 190, 0, 0, 0, 181, 0,
       0, 182, 0, 0, 0, 0, 183, 184, 185, 0,
       0, 186, 187, 0, 0, 6, 188, -120, 7, 8,
       9, 10, 11, 0, 0, 0, 0, 12, 7, 8,
       9, 10, 119, 0, 0, 0, 0, 0, 0, 0,
     189, 190, 0, 0, 0, 0, 13, 7, 8, 9,
      10, 128, 0, 0, 0, 0, 0, 0, 0, 14,
      15, 16, 0, 0, 0, 0, 0, 0, 0, 14,
      15, 16, 0, 17, 18, 0, 19, 20, 0, 0,
       0, 0, 0, 0, 18, 0, 19, 0, 14, 15,
      16, 944, 945, 946, 947, 948, 949, 0, 950, 951,
     877, 0, 0, 18, -120, 19, 0, 0, 952, 0,
       0, 0, -120, 0, 0, 0, 944, 945, 946, 947,
     948, 949, 953, 950, 951, 0, 0, 0, 0, 0,
       0, 0, 0, 952, 21, 0, 0, 0, 0, 0,
       0, 0, 0, 0, -253, 0, 0, 953, 7, 8,
       9, 10, 11, 0, 0, 689, 7, 8, 9, 10,
      83, 0, 0, -255, 269, 270, 271, 878, 272, 273,
     274, 275, 276, 277, 278, 279, 280, 281, 282, 283,
     284, 285, 7, 8, 9, 10, 119, 0, 0, 14,
      15, 16, 7, 8, 9, 10, 92, 14, 15, 16,
       0, 954, 0, 0, 18, 0, 19, 0, 0, 0,
       0, 0, 18, 0, 19, 7, 8, 9, 10, 128,
       0, 0, 0, 14, 15, 16, 1053, 0, 0, 0,
       0, 0, 0, 14, 15, 16, 0, 0, 18, 0,
      19, 0, 0, 0, 0, 0, 0, 0, 18, 0,
      19, 0, 0, 0, 0, 0, 14, 15, 16, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 18, 0, 19, 269, 270, 271, 0, 272, 273,
     274, 275, 276, 277, 278, 279, 280, 281, 282, 283,
     284, 285, 269, 270, 271, 0, 272, 273, 274, 275,
     276, 277, 278, 279, 280, 281, 282, 283, 284, 285,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 269, 270, 271, 1026, 272, 273, 274, 275,
     276, 277, 278, 279, 280, 281, 282, 283, 284, 285,
       0, 449, 269, 270, 271, 0, 272, 273, 274, 275,
     276, 277, 278, 279, 280, 281, 282, 283, 284, 285,
       0, 0, 0, 0, 0, 0, 0, 0, 269, 270,
     271, 450, 272, 273, 274, 275, 276, 277, 278, 279,
     280, 281, 282, 283, 284, 285, 0, 0, 269, 270,
     271, 598, 272, 273, 274, 275, 276, 277, 278, 279,
     280, 281, 282, 283, 284, 285, 0, 0, 0, 0,
     269, 270, 271, 915, 272, 273, 274, 275, 276, 277,
     278, 279, 280, 281, 282, 283, 284, 285, 0, 269,
     270, 271, 822, 272, 273, 274, 275, 276, 277, 278,
     279, 280, 281, 282, 283, 284, 285, 0, 0, 0,
       0, 269, 270, 271, 1123, 272, 273, 274, 275, 276,
     277, 278, 279, 280, 281, 282, 283, 284, 285, 0,
     269, 270, 271, 1135, 272, 273, 274, 275, 276, 277,
     278, 279, 280, 281, 282, 283, 284, 285, 0, 0,
       0, 0, 269, 270, 271, 1200, 272, 273, 274, 275,
     276, 277, 278, 279, 280, 281, 282, 283, 284, 285,
       0, 269, 270, 271, 1201, 272, 273, 274, 275, 276,
     277, 278, 279, 280, 281, 282, 283, 284, 285, 0,
       0, 0, 0, 269, 270, 271, 1213, 272, 273, 274,
     275, 276, 277, 278, 279, 280, 281, 282, 283, 284,
     285, 0, 269, 270, 271, 1214, 272, 273, 274, 275,
     276, 277, 278, 279, 280, 281, 282, 283, 284, 285,
       0, 0, 0, 0, 0, 0, 0, 1243, 0, 0,
      19, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 269, 270, 271, 1258, 272, 273, 274,
     275, 276, 277, 278, 279, 280, 281, 282, 283, 284,
     285, 744, 0, 0, 0, 745, 0, 746, 0, 747,
     748, 749, 750, 751, 752, 70, 0, 0, 0, 0,
       0, 0, 0, 0, 753, 269, 270, 271, 1087, 272,
     273, 274, 275, 276, 277, 278, 279, 280, 281, 282,
     283, 284, 285, 269, 270, 271, 0, 272, 273, 274,
     275, 276, 277, 278, 279, 280, 281, 282, 283, 284,
     285, 271, 0, 272, 273, 274, 275, 276, 277, 278,
     279, 280, 281, 282, 283, 284, 285, 273, 274, 275,
     276, 277, 278, 279, 280, 281, 282, 283, 284, 285
};

static const yytype_int16 yycheck[] =
{
      74, 236, 76, 156, 155, 55, 56, 57, 330, 776,
       3, 3, 5, 5, 336, 612, 563, 482, 577, 305,
     569, 14, 15, 16, 332, 556, 27, 3, 79, 5,
       3, 328, 5, 163, 416, 28, 416, 30, 416, 32,
     579, 34, 289, 36, 426, 38, 426, 40, 426, 42,
     253, 254, 1, 416, 556, 1172, 320, 1, 0, 10,
       1, 264, 1113, 426, 43, 474, 269, 270, 98, 62,
      62, 274, 275, 276, 277, 278, 279, 280, 281, 282,
     283, 284, 285, 76, 615, 78, 62, 8, 5, 62,
     227, 98, 52, 237, 894, 120, 121, 127, 76, 227,
       1, 3, 511, 5, 232, 242, 175, 176, 3, 4,
    1227, 71, 72, 73, 188, 524, 185, 482, 527, 116,
     127, 118, 191, 1, 3, 4, 86, 894, 1, 3,
       4, 181, 201, 397, 0, 95, 1187, 734, 1, 548,
      76, 62, 78, 0, 104, 62, 78, 1179, 99, 3,
       4, 710, 202, 113, 98, 156, 403, 716, 78, 718,
      62, 305, 122, 783, 3, 4, 786, 787, 670, 789,
       6, 131, 8, 376, 377, 226, 125, 586, 229, 588,
     140, 563, 233, 563, 125, 563, 314, 119, 188, 149,
     572, 265, 572, 267, 572, 188, 246, 483, 397, 119,
     563, 62, 1234, 568, 569, 8, 3, 471, 76, 572,
     188, 204, 1012, 206, 351, 208, 290, 210, 219, 220,
     121, 214, 352, 216, 354, 8, 62, 3, 767, 826,
     125, 3, 4, 120, 227, 1267, 90, 78, 288, 232,
     443, 291, 316, 121, 1276, 1012, 125, 450, 121, 242,
     242, 125, 188, 3, 457, 255, 805, 806, 121, 62,
      98, 221, 255, 98, 242, 265, 410, 267, 467, 468,
     469, 470, 265, 3, 267, 5, 404, 255, 119, 62,
     331, 332, 98, 518, 428, 429, 337, 265, 3, 267,
       3, 227, 589, 90, 591, 21, 232, 23, 367, 62,
     374, 98, 353, 17, 18, 19, 242, 98, 309, 359,
      98, 558, 515, 75, 90, 78, 715, 31, 90, 255,
     188, 314, 98, 99, 325, 326, 98, 792, 78, 265,
     729, 267, 62, 90, 537, 97, 801, 99, 482, 483,
      90, 98, 99, 417, 418, 125, 396, 340, 98, 342,
     419, 344, 402, 346, 405, 62, 765, 1, 351, 351,
       4, 5, 6, 7, 8, 119, 125, 11, 59, 17,
     124, 19, 20, 351, 242, 922, 24, 90, 314, 467,
     468, 1181, 470, 31, 587, 98, 99, 255, 119, 125,
     978, 98, 99, 124, 444, 598, 3, 265, 1018, 267,
     603, 45, 46, 47, 992, 814, 127, 98, 99, 612,
     613, 404, 98, 127, 1181, 351, 60, 119, 21, 622,
      23, 76, 124, 78, 568, 569, 98, 792, 581, 98,
     119, 1231, 3, 4, 485, 124, 801, 119, 416, 590,
     805, 806, 124, 17, 119, 19, 20, 124, 426, 449,
      24, 451, 17, 18, 19, 120, 449, 31, 451, 124,
     663, 1049, 3, 4, 1231, 119, 31, 119, 404, 119,
    1090, 449, 124, 451, 1062, 119, 8, 528, 529, 127,
     416, 532, 120, 351, 98, 1285, 124, 795, 1288, 797,
     426, 541, 119, 44, 45, 120, 119, 124, 491, 124,
     493, 124, 495, 6, 497, 121, 556, 793, 8, 98,
      99, 121, 715, 449, 119, 451, 802, 720, 1285, 90,
     723, 1288, 119, 26, 27, 28, 729, 98, 99, 732,
     119, 734, 397, 188, 678, 679, 119, 78, 62, 120,
     922, 124, 922, 124, 922, 596, 119, 675, 416, 90,
     119, 625, 602, 127, 78, 124, 684, 98, 426, 922,
     120, 119, 127, 556, 556, 615, 124, 568, 569, 1189,
      98, 99, 227, 119, 98, 99, 626, 232, 124, 572,
     581, 449, 120, 451, 120, 563, 124, 242, 124, 98,
      99, 592, 119, 397, 572, 59, 572, 124, 62, 572,
     255, 670, 467, 468, 469, 470, 59, 98, 99, 62,
     265, 75, 267, 816, 120, 768, 767, 820, 124, 423,
     823, 78, 75, 826, 119, 676, 677, 563, 119, 680,
      98, 99, 436, 437, 685, 686, 572, 688, 1, 64,
       3, 4, 119, 1263, 1264, 98, 99, 124, 792, 793,
     119, 119, 21, 888, 23, 124, 120, 801, 802, 314,
     124, 805, 806, 467, 468, 469, 470, 120, 120, 119,
     721, 124, 124, 724, 877, 119, 98, 670, 670, 10,
     124, 1003, 675, 1005, 48, 759, 50, 51, 52, 53,
     683, 684, 1251, 1252, 120, 563, 351, 690, 124, 692,
      76, 694, 78, 696, 572, 698, 716, 700, 718, 702,
       4, 704, 120, 7, 8, 519, 6, 521, 28, 29,
      30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
      40, 41, 42, 43, 14, 15, 16, 75, 119, 675,
     943, 7, 8, 124, 795, 119, 797, 120, 684, 404,
     124, 45, 46, 47, 957, 3, 4, 5, 6, 7,
       8, 416, 76, 75, 815, 119, 60, 768, 819, 124,
     124, 426, 119, 917, 918, 919, 127, 124, 929, 45,
      46, 47, 84, 85, 86, 87, 88, 89, 90, 91,
      92, 792, 793, 3, 449, 124, 451, 348, 349, 119,
     801, 802, 119, 119, 805, 806, 119, 124, 882, 120,
     121, 124, 188, 78, 119, 28, 29, 30, 31, 124,
    1229, 1230, 896, 36, 37, 38, 39, 631, 902, 5,
       6, 7, 8, 119, 28, 29, 30, 31, 7, 8,
     800, 119, 36, 37, 38, 39, 124, 126, 1051, 1052,
      17, 227, 19, 126, 21, 22, 232, 24, 25, 76,
     119, 119, 1065, 1066, 119, 124, 242, 34, 75, 45,
      46, 47, 923, 924, 188, 926, 45, 46, 47, 255,
     931, 48, 933, 98, 99, 32, 33, 34, 35, 265,
     121, 267, 202, 40, 41, 42, 43, 90, 91, 92,
     119, 32, 33, 34, 35, 124, 114, 115, 563, 40,
      41, 42, 43, 125, 119, 719, 119, 572, 722, 124,
     121, 124, 121, 4, 5, 6, 7, 8, 242, 78,
       7, 8, 1006, 1007, 76, 1009, 78, 119, 314, 1,
     119, 255, 124, 121, 922, 124, 119, 119, 499, 500,
    1001, 265, 124, 267, 119, 5, 6, 7, 8, 1162,
     127, 119, 513, 514, 45, 46, 47, 119, 45, 46,
      47, 188, 124, 119, 59, 351, 126, 1, 124, 60,
       4, 5, 6, 7, 8, 62, 922, 126, 14, 15,
      16, 204, 205, 206, 207, 45, 46, 47, 1, 98,
      99, 4, 5, 6, 7, 8, 98, 99, 120, 1212,
     204, 205, 206, 207, 119, 124, 1009, 1009, 120, 124,
     675, 45, 46, 47, 124, 242, 93, 94, 404, 684,
      97, 98, 99, 100, 1108, 119, 60, 351, 255, 120,
     124, 121, 45, 46, 47, 119, 188, 119, 265, 119,
     267, 119, 124, 119, 922, 119, 59, 60, 124, 62,
     124, 208, 209, 210, 211, 78, 5, 6, 7, 8,
     120, 119, 75, 449, 3, 451, 124, 208, 209, 210,
     211, 195, 196, 634, 635, 227, 78, 114, 115, 116,
     232, 118, 402, 325, 326, 899, 792, 793, 121, 124,
     242, 125, 78, 10, 78, 1179, 45, 46, 47, 120,
     120, 8, 120, 255, 1164, 1108, 1108, 120, 120, 7,
       8, 124, 125, 265, 121, 267, 125, 340, 341, 342,
     343, 127, 127, 127, 351, 449, 127, 451, 5, 6,
       7, 8, 127, 127, 1218, 120, 340, 341, 342, 343,
      88, 89, 90, 91, 92, 706, 707, 45, 46, 47,
    1234, 1, 120, 98, 4, 5, 6, 7, 8, 49,
     127, 127, 314, 98, 62, 52, 125, 121, 45, 46,
      47, 491, 492, 493, 494, 495, 496, 497, 498, 5,
       6, 7, 8, 1267, 121, 1269, 572, 344, 345, 346,
     347, 3, 1276, 98, 98, 45, 46, 47, 98, 351,
     120, 1015, 98, 344, 345, 346, 347, 98, 78, 98,
      60, 119, 98, 5, 6, 7, 8, 98, 98, 45,
      46, 47, 449, 98, 451, 5, 6, 7, 8, 98,
      79, 80, 81, 82, 83, 98, 62, 98, 98, 88,
      89, 90, 1, 120, 3, 98, 98, 98, 572, 125,
       9, 10, 404, 45, 46, 47, 98, 922, 86, 87,
      88, 89, 90, 91, 92, 45, 46, 47, 491, 492,
      62, 98, 495, 496, 98, 125, 5, 6, 7, 8,
      98, 98, 62, 98, 98, 44, 50, 491, 492, 675,
      98, 495, 496, 98, 120, 98, 98, 449, 684, 451,
      98, 98, 61, 98, 63, 98, 65, 66, 67, 68,
      69, 98, 98, 98, 98, 74, 45, 46, 47, 98,
     865, 80, 98, 98, 83, 98, 98, 98, 120, 88,
      89, 90, 98, 62, 93, 94, 493, 494, 98, 98,
     497, 498, 119, 1, 98, 572, 4, 78, 78, 7,
       8, 119, 493, 494, 119, 78, 497, 498, 119, 32,
     127, 1175, 1176, 122, 123, 127, 125, 120, 119, 119,
     690, 691, 692, 693, 694, 695, 696, 697, 698, 699,
     700, 701, 702, 703, 704, 705, 120, 45, 46, 47,
      78, 120, 937, 938, 939, 120, 78, 942, 119, 121,
     119, 119, 60, 119, 62, 63, 1, 98, 3, 4,
       5, 6, 7, 8, 124, 17, 11, 19, 20, 121,
     572, 117, 24, 127, 36, 126, 120, 29, 30, 31,
     975, 976, 977, 120, 127, 127, 981, 982, 983, 119,
      10, 120, 98, 10, 989, 990, 991, 10, 120, 119,
      45, 46, 47, 85, 86, 87, 88, 89, 90, 91,
      92, 120, 120, 121, 119, 60, 119, 690, 691, 692,
     693, 403, 572, 321, 572, 698, 699, 700, 701, 4,
       5, 6, 7, 8, 572, 426, 690, 691, 692, 693,
     426, 572, 430, 309, 698, 699, 700, 701, 1043, 1044,
    1045, 1046, 1047, 402, 587, 1050, 732, 611, 805, 719,
     792, 1056, 1057, 1058, 1059, 1060, 446, 351, 1063, 359,
      45, 46, 47, 675, 119, 127, 5, 6, 7, 8,
     444, 722, 684, 1013, 398, 60, 1108, 694, 695, 696,
     697, 638, 1015, 1000, 1171, 702, 703, 704, 705, 843,
     784, 858, 1064, 694, 695, 696, 697, 875, 851, 1112,
     971, 702, 703, 704, 705, 955, 45, 46, 47, 785,
    1220, 1222, 5, 6, 7, 8, 1121, 500, 1, 485,
       3, 4, 5, 6, 7, 8, 9, 10, -1, 12,
      13, 17, -1, 19, 20, 120, -1, -1, 24, 22,
      -1, -1, -1, 29, 30, 31, 1151, 4, -1, 32,
       7, 8, 45, 46, 47, 1160, -1, -1, -1, -1,
      -1, 44, 45, 46, 47, 48, -1, 50, 51, 52,
      53, 54, 55, 56, 57, 58, 59, 60, 61, 62,
      63, 64, 65, 66, 67, 68, 69, -1, 45, 46,
      47, 74, -1, 1198, -1, -1, -1, 80, -1, -1,
      83, -1, -1, 60, 1209, 88, 89, 90, -1, -1,
      93, 94, -1, -1, 1, 98, 3, 4, 5, 6,
       7, 8, 9, 10, -1, 12, 13, 120, -1, -1,
      -1, -1, -1, -1, 117, 22, -1, 120, 121, 122,
     123, 127, 125, -1, -1, 32, 82, 83, 84, 85,
      86, 87, 88, 89, 90, 91, 92, 44, 45, 46,
      47, 48, -1, 50, 51, 52, 53, 54, 55, 56,
      57, 58, 59, 60, 61, 62, 63, -1, 65, 66,
      67, 68, 69, 1, -1, -1, 4, 74, -1, 7,
       8, -1, -1, 80, -1, -1, 83, -1, -1, -1,
      -1, 88, 89, 90, -1, -1, 93, 94, -1, -1,
       1, 98, 3, 4, -1, -1, -1, -1, 9, 10,
      -1, 12, 13, -1, -1, -1, -1, 45, 46, 47,
     117, 22, -1, 120, -1, 122, 123, -1, 125, -1,
      -1, 32, 60, -1, 62, 63, -1, -1, -1, -1,
      -1, -1, -1, 44, -1, -1, -1, 48, -1, 50,
      51, 52, 53, 54, 55, 56, 57, 58, 59, -1,
      61, -1, 63, -1, 65, 66, 67, 68, 69, -1,
      -1, -1, 4, 74, -1, 7, 8, -1, -1, 80,
      -1, -1, 83, -1, -1, -1, -1, 88, 89, 90,
      -1, -1, 93, 94, -1, -1, 1, 98, 3, 4,
      -1, -1, -1, -1, 9, 10, -1, 12, 13, -1,
      -1, -1, -1, 45, 46, 47, 117, 22, -1, 120,
      -1, 122, 123, -1, 125, -1, 11, 32, 60, -1,
      62, -1, -1, -1, -1, -1, -1, -1, -1, 44,
      -1, -1, -1, 48, -1, 50, 51, 52, 53, 54,
      55, 56, 57, 58, 59, -1, 61, -1, 63, -1,
      65, 66, 67, 68, 69, 1, -1, 3, 4, 74,
      -1, 7, 8, 9, 10, 80, -1, -1, 83, -1,
      -1, -1, -1, 88, 89, 90, -1, -1, 93, 94,
      75, 76, 77, 98, 79, 80, 81, 82, 83, 84,
      85, 86, 87, 88, 89, 90, 91, 92, 44, 45,
      46, 47, 117, -1, -1, 120, -1, 122, 123, -1,
     125, -1, -1, -1, 60, 61, 62, 63, -1, 65,
      66, 67, 68, 69, 1, -1, 3, 4, 74, -1,
      -1, 126, 9, 10, 80, -1, -1, 83, -1, -1,
      -1, -1, 88, 89, 90, -1, -1, 93, 94, -1,
      -1, -1, 98, -1, -1, -1, -1, -1, 5, 6,
       7, 8, -1, -1, -1, -1, -1, 44, 5, 6,
       7, 8, -1, -1, -1, -1, 122, 123, -1, 125,
      -1, -1, -1, -1, 61, -1, 63, -1, 65, 66,
      67, 68, 69, 1, -1, 3, 4, 74, 45, 46,
      47, 9, 10, 80, -1, -1, 83, -1, 45, 46,
      47, 88, 89, 90, -1, 62, 93, 94, -1, -1,
      97, 98, 99, -1, -1, -1, -1, 5, 6, 7,
       8, -1, -1, -1, -1, -1, 44, 5, 6, 7,
       8, -1, -1, -1, 121, 122, 123, -1, 125, -1,
      -1, -1, -1, 61, -1, 63, -1, 65, 66, 67,
      68, 69, 1, -1, 3, -1, 74, 45, 46, 47,
       9, 10, 80, 120, -1, 83, -1, 45, 46, 47,
      88, 89, 90, 120, 62, 93, 94, -1, -1, 97,
      98, 99, -1, -1, 62, 83, 84, 85, 86, 87,
      88, 89, 90, 91, 92, 44, 5, 6, 7, 8,
      -1, -1, -1, 121, 122, 123, -1, 125, -1, -1,
      -1, -1, 61, -1, 63, -1, 65, 66, 67, 68,
      69, 1, -1, 3, -1, 74, 75, -1, -1, 9,
      10, 80, -1, -1, 83, -1, 45, 46, 47, 88,
      89, 90, -1, -1, 93, 94, -1, -1, 97, 98,
      99, -1, -1, 17, 18, 19, 20, 21, 22, -1,
      24, 25, -1, -1, 44, 29, 30, -1, -1, -1,
      34, -1, -1, 122, 123, -1, 125, -1, -1, -1,
      -1, 61, -1, 63, 48, 65, 66, 67, 68, 69,
      -1, -1, 1, -1, 74, 4, 5, 6, 7, 8,
      80, -1, -1, 83, -1, -1, -1, -1, 88, 89,
      90, -1, -1, 93, 94, -1, -1, -1, 98, -1,
      -1, -1, -1, 1, -1, -1, 4, 5, 6, 7,
       8, -1, -1, -1, -1, -1, 45, 46, 47, -1,
      -1, -1, 122, 123, -1, 125, 5, 6, 7, 8,
      59, 60, 4, 62, -1, 7, 8, 4, 5, 6,
       7, 8, -1, 127, 3, -1, 75, 45, 46, 47,
       9, 10, -1, -1, -1, -1, 4, 5, 6, 7,
       8, 59, 60, -1, 62, -1, 45, 46, 47, 98,
      99, -1, -1, 45, 46, 47, -1, 75, 45, 46,
      47, -1, -1, 62, -1, 44, -1, -1, 60, -1,
      62, 120, -1, 60, -1, 124, 125, 45, 46, 47,
      98, 99, 61, -1, 63, -1, 65, 66, 67, 68,
      69, 3, 60, -1, 62, 74, -1, 9, 10, -1,
      -1, 80, 120, -1, 83, -1, 124, 125, -1, 88,
      89, 90, -1, -1, 93, 94, -1, 4, -1, 98,
       7, 8, -1, 4, 5, 6, 7, 8, -1, -1,
      -1, -1, 44, 120, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 122, 123, -1, -1, 126, -1, 61,
      -1, 63, 120, 65, 66, 67, 68, 69, 45, 46,
      47, -1, 74, -1, 45, 46, 47, -1, 80, -1,
      -1, 83, -1, 60, -1, 62, 88, 89, 90, 60,
      -1, 93, 94, -1, -1, -1, 98, 3, 4, 5,
       6, 7, 8, 9, 10, -1, 12, 13, -1, -1,
      -1, -1, -1, -1, -1, -1, 22, -1, -1, -1,
     122, 123, -1, -1, 126, -1, 32, -1, -1, -1,
       4, 5, 6, 7, 8, -1, -1, -1, 44, 45,
      46, 47, -1, -1, -1, -1, -1, -1, 54, 55,
      56, 57, 58, 59, 60, 61, 62, 63, -1, 65,
      66, 67, 68, 69, -1, -1, -1, -1, 74, -1,
      -1, 45, 46, 47, 80, -1, -1, 83, -1, -1,
      -1, -1, 88, 89, 90, -1, 60, 93, 94, 3,
       4, -1, 98, -1, -1, 9, 10, -1, 12, 13,
      -1, -1, -1, -1, -1, -1, -1, -1, 22, -1,
      -1, 117, -1, -1, 120, -1, 122, 123, 32, 125,
      -1, 4, 5, 6, 7, 8, -1, -1, -1, -1,
      44, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      54, 55, 56, 57, 58, 59, 120, 61, -1, 63,
      -1, 65, 66, 67, 68, 69, -1, -1, -1, -1,
      74, 3, 45, 46, 47, -1, 80, 9, 10, 83,
      12, 13, -1, -1, 88, 89, 90, 60, -1, 93,
      94, -1, -1, -1, 98, -1, -1, -1, -1, -1,
      32, -1, -1, 4, 5, 6, 7, 8, -1, -1,
      -1, -1, 44, 117, -1, -1, 120, -1, 122, 123,
      -1, 125, -1, 55, 56, 57, 58, 59, -1, 61,
      -1, 63, -1, 65, 66, 67, 68, 69, -1, -1,
      -1, -1, 74, 3, 45, 46, 47, -1, 80, 9,
      10, 83, 12, 13, -1, -1, 88, 89, 90, 60,
      -1, 93, 94, -1, -1, -1, 98, -1, -1, -1,
      -1, -1, 32, -1, -1, 4, 5, 6, 7, 8,
      -1, -1, -1, -1, 44, 117, -1, -1, 120, -1,
     122, 123, -1, 125, -1, 55, 56, 57, 58, 59,
      -1, 61, -1, 63, -1, 65, 66, 67, 68, 69,
      -1, -1, -1, -1, 74, 3, 45, 46, 47, -1,
      80, 9, 10, 83, 12, 13, -1, -1, 88, 89,
      90, 60, -1, 93, 94, -1, -1, -1, 98, -1,
      -1, 17, -1, 19, 32, 21, 22, -1, 24, 25,
      -1, -1, -1, -1, -1, -1, 44, 117, 34, 35,
     120, -1, 122, 123, -1, 125, -1, 55, 56, 57,
      58, 59, 48, 61, -1, 63, 52, 65, 66, 67,
      68, 69, 3, -1, -1, -1, 74, -1, 9, 10,
      -1, -1, 80, -1, -1, 83, -1, -1, -1, -1,
      88, 89, 90, -1, -1, 93, 94, 29, -1, -1,
      98, 33, -1, 35, 36, 37, 38, 39, 40, 41,
      42, 43, -1, 44, -1, -1, -1, -1, -1, 117,
      52, -1, 120, -1, 122, 123, -1, 125, -1, -1,
      61, -1, 63, -1, 65, 66, 67, 68, 69, -1,
      -1, 127, -1, 74, 4, 5, 6, 7, 8, 80,
      -1, -1, 83, -1, -1, -1, -1, 88, 89, 90,
      -1, -1, 93, 94, -1, -1, -1, 98, 3, 4,
       5, 6, 7, 8, 9, 10, 17, 18, 19, 20,
      21, 22, -1, 24, 25, 45, 46, 47, 29, 30,
      -1, 122, 123, 34, 125, -1, -1, -1, -1, -1,
      60, -1, 62, -1, -1, -1, -1, 48, -1, 44,
      45, 46, 47, 81, 82, 83, 84, 85, 86, 87,
      88, 89, 90, 91, 92, 60, 61, 62, 63, -1,
      65, 66, 67, 68, 69, -1, 3, 4, -1, 74,
       7, 8, 9, 10, -1, 80, -1, -1, 83, -1,
      -1, -1, -1, 88, 89, 90, -1, -1, 93, 94,
     120, -1, -1, 98, -1, -1, -1, -1, -1, 4,
       5, 6, 7, 8, -1, -1, -1, 44, 45, 46,
      47, -1, -1, 3, -1, -1, 127, 122, 123, 9,
      10, -1, -1, 60, 61, 62, 63, -1, 65, 66,
      67, 68, 69, -1, -1, -1, -1, 74, -1, -1,
      45, 46, 47, 80, -1, -1, 83, -1, -1, -1,
      -1, 88, 89, 90, 44, 60, 93, 94, -1, -1,
       3, 98, -1, -1, -1, -1, 9, 10, -1, -1,
      -1, 61, -1, 63, -1, 65, 66, 67, 68, 69,
      -1, -1, -1, -1, 74, 122, 123, -1, -1, -1,
      80, -1, -1, 83, -1, -1, -1, -1, 88, 89,
      90, 44, -1, 93, 94, -1, -1, 3, 98, -1,
      -1, -1, -1, 9, 10, -1, -1, -1, 61, -1,
      63, -1, 65, 66, 67, 68, 69, -1, -1, -1,
     120, 74, 122, 123, -1, -1, -1, 80, -1, -1,
      83, -1, -1, -1, -1, 88, 89, 90, 44, -1,
      93, 94, -1, -1, 3, 98, -1, -1, -1, -1,
       9, 10, -1, -1, -1, 61, -1, 63, -1, 65,
      66, 67, 68, 69, -1, -1, -1, -1, 74, 122,
     123, -1, -1, -1, 80, -1, -1, 83, -1, -1,
      -1, -1, 88, 89, 90, 44, -1, 93, 94, -1,
      -1, 3, 98, -1, -1, -1, -1, 9, 10, -1,
      -1, -1, 61, -1, 63, -1, 65, 66, 67, 68,
      69, -1, -1, -1, -1, 74, 122, 123, -1, -1,
      -1, 80, -1, -1, 83, -1, -1, -1, -1, 88,
      89, 90, 44, -1, 93, 94, -1, -1, -1, 98,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 61,
      -1, 63, -1, 65, 66, 67, 68, 69, -1, -1,
      -1, -1, 74, 122, 123, -1, -1, -1, 80, -1,
      -1, 83, -1, -1, -1, -1, 88, 89, 90, -1,
      -1, 93, 94, -1, -1, 1, 98, 3, 4, 5,
       6, 7, 8, -1, -1, -1, -1, 13, 4, 5,
       6, 7, 8, -1, -1, -1, -1, -1, -1, -1,
     122, 123, -1, -1, -1, -1, 32, 4, 5, 6,
       7, 8, -1, -1, -1, -1, -1, -1, -1, 45,
      46, 47, -1, -1, -1, -1, -1, -1, -1, 45,
      46, 47, -1, 59, 60, -1, 62, 63, -1, -1,
      -1, -1, -1, -1, 60, -1, 62, -1, 45, 46,
      47, 17, 18, 19, 20, 21, 22, -1, 24, 25,
      11, -1, -1, 60, 90, 62, -1, -1, 34, -1,
      -1, -1, 98, -1, -1, -1, 17, 18, 19, 20,
      21, 22, 48, 24, 25, -1, -1, -1, -1, -1,
      -1, -1, -1, 34, 120, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 120, -1, -1, 48, 4, 5,
       6, 7, 8, -1, -1, 11, 4, 5, 6, 7,
       8, -1, -1, 120, 75, 76, 77, 78, 79, 80,
      81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
      91, 92, 4, 5, 6, 7, 8, -1, -1, 45,
      46, 47, 4, 5, 6, 7, 8, 45, 46, 47,
      -1, 127, -1, -1, 60, -1, 62, -1, -1, -1,
      -1, -1, 60, -1, 62, 4, 5, 6, 7, 8,
      -1, -1, -1, 45, 46, 47, 127, -1, -1, -1,
      -1, -1, -1, 45, 46, 47, -1, -1, 60, -1,
      62, -1, -1, -1, -1, -1, -1, -1, 60, -1,
      62, -1, -1, -1, -1, -1, 45, 46, 47, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 60, -1, 62, 75, 76, 77, -1, 79, 80,
      81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
      91, 92, 75, 76, 77, -1, 79, 80, 81, 82,
      83, 84, 85, 86, 87, 88, 89, 90, 91, 92,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 75, 76, 77, 126, 79, 80, 81, 82,
      83, 84, 85, 86, 87, 88, 89, 90, 91, 92,
      -1, 124, 75, 76, 77, -1, 79, 80, 81, 82,
      83, 84, 85, 86, 87, 88, 89, 90, 91, 92,
      -1, -1, -1, -1, -1, -1, -1, -1, 75, 76,
      77, 124, 79, 80, 81, 82, 83, 84, 85, 86,
      87, 88, 89, 90, 91, 92, -1, -1, 75, 76,
      77, 124, 79, 80, 81, 82, 83, 84, 85, 86,
      87, 88, 89, 90, 91, 92, -1, -1, -1, -1,
      75, 76, 77, 120, 79, 80, 81, 82, 83, 84,
      85, 86, 87, 88, 89, 90, 91, 92, -1, 75,
      76, 77, 119, 79, 80, 81, 82, 83, 84, 85,
      86, 87, 88, 89, 90, 91, 92, -1, -1, -1,
      -1, 75, 76, 77, 119, 79, 80, 81, 82, 83,
      84, 85, 86, 87, 88, 89, 90, 91, 92, -1,
      75, 76, 77, 119, 79, 80, 81, 82, 83, 84,
      85, 86, 87, 88, 89, 90, 91, 92, -1, -1,
      -1, -1, 75, 76, 77, 119, 79, 80, 81, 82,
      83, 84, 85, 86, 87, 88, 89, 90, 91, 92,
      -1, 75, 76, 77, 119, 79, 80, 81, 82, 83,
      84, 85, 86, 87, 88, 89, 90, 91, 92, -1,
      -1, -1, -1, 75, 76, 77, 119, 79, 80, 81,
      82, 83, 84, 85, 86, 87, 88, 89, 90, 91,
      92, -1, 75, 76, 77, 119, 79, 80, 81, 82,
      83, 84, 85, 86, 87, 88, 89, 90, 91, 92,
      -1, -1, -1, -1, -1, -1, -1, 119, -1, -1,
      62, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 75, 76, 77, 119, 79, 80, 81,
      82, 83, 84, 85, 86, 87, 88, 89, 90, 91,
      92, 29, -1, -1, -1, 33, -1, 35, -1, 37,
      38, 39, 40, 41, 42, 43, -1, -1, -1, -1,
      -1, -1, -1, -1, 52, 75, 76, 77, 78, 79,
      80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
      90, 91, 92, 75, 76, 77, -1, 79, 80, 81,
      82, 83, 84, 85, 86, 87, 88, 89, 90, 91,
      92, 77, -1, 79, 80, 81, 82, 83, 84, 85,
      86, 87, 88, 89, 90, 91, 92, 80, 81, 82,
      83, 84, 85, 86, 87, 88, 89, 90, 91, 92
};



static const yytype_uint16 yystos[] =
{
       0, 129, 130, 131, 0, 132, 1, 4, 5, 6,
       7, 8, 13, 32, 45, 46, 47, 59, 60, 62,
      63, 120, 133, 134, 135, 136, 151, 167, 170, 171,
     172, 173, 174, 175, 176, 177, 178, 179, 180, 181,
     182, 183, 184, 185, 186, 187, 193, 195, 196, 197,
     198, 199, 208, 209, 213, 236, 237, 238, 239, 244,
     319, 382, 408, 133, 120, 121, 14, 15, 16, 320,
      43, 208, 208, 208, 98, 98, 98, 3, 90, 98,
     201, 205, 235, 8, 195, 196, 208, 213, 8, 195,
     196, 213, 8, 195, 196, 208, 213, 8, 195, 196,
     213, 8, 197, 198, 208, 213, 8, 197, 198, 213,
       8, 197, 198, 208, 213, 8, 197, 198, 213, 8,
     195, 196, 208, 213, 8, 195, 196, 213, 8, 195,
     196, 208, 213, 8, 195, 196, 213, 8, 197, 198,
     208, 213, 8, 197, 198, 213, 8, 197, 198, 208,
     213, 8, 197, 198, 213, 167, 167, 120, 209, 3,
       4, 125, 143, 125, 143, 125, 143, 133, 3, 98,
       3, 9, 10, 44, 61, 65, 66, 67, 68, 69,
      74, 80, 83, 88, 89, 90, 93, 94, 98, 122,
     123, 144, 145, 147, 148, 149, 150, 152, 153, 159,
     283, 408, 98, 145, 170, 171, 172, 173, 174, 175,
     176, 177, 192, 256, 170, 171, 172, 173, 191, 194,
     207, 208, 120, 124, 1, 59, 98, 99, 141, 202,
     264, 4, 90, 98, 200, 203, 230, 231, 235, 201,
     235, 247, 248, 125, 247, 125, 243, 125, 127, 3,
     384, 152, 152, 98, 98, 98, 143, 152, 1, 125,
     145, 256, 152, 119, 124, 98, 148, 98, 148, 75,
      76, 77, 79, 80, 81, 82, 83, 84, 85, 86,
      87, 88, 89, 90, 91, 92, 93, 94, 97, 98,
      99, 100, 1, 121, 272, 281, 152, 7, 8, 143,
     210, 211, 212, 213, 119, 257, 119, 235, 235, 168,
     207, 98, 207, 403, 6, 191, 194, 1, 161, 162,
     163, 164, 271, 290, 207, 194, 207, 120, 124, 1,
     137, 202, 98, 264, 120, 1, 139, 121, 1, 120,
     170, 171, 172, 173, 174, 175, 176, 177, 190, 191,
     249, 408, 240, 121, 241, 1, 143, 254, 255, 242,
     119, 124, 153, 153, 256, 119, 119, 119, 120, 153,
     256, 256, 153, 153, 156, 158, 155, 154, 153, 153,
     153, 153, 153, 153, 153, 153, 153, 153, 153, 153,
     143, 146, 147, 145, 143, 119, 64, 276, 277, 278,
     119, 119, 124, 98, 90, 98, 258, 260, 261, 262,
     263, 264, 119, 205, 235, 10, 404, 194, 6, 90,
     126, 145, 120, 142, 271, 163, 291, 75, 231, 231,
     168, 161, 207, 403, 161, 207, 167, 167, 120, 249,
     247, 207, 247, 75, 124, 246, 254, 127, 3, 124,
     124, 124, 125, 152, 119, 119, 145, 78, 153, 153,
     119, 126, 143, 407, 1, 166, 265, 266, 267, 268,
     269, 270, 271, 282, 290, 294, 295, 278, 119, 211,
       3, 146, 194, 207, 393, 98, 264, 119, 1, 3,
      11, 170, 171, 174, 175, 178, 179, 182, 183, 188,
     189, 395, 398, 399, 401, 405, 406, 145, 145, 126,
     126, 290, 165, 188, 189, 206, 119, 203, 230, 138,
      75, 140, 250, 252, 290, 251, 253, 290, 121, 121,
     153, 255, 121, 246, 256, 153, 256, 160, 78, 153,
     120, 124, 166, 294, 295, 166, 294, 295, 290, 294,
     295, 166, 294, 295, 271, 121, 291, 119, 124, 119,
     261, 262, 260, 394, 207, 393, 119, 167, 402, 402,
     119, 120, 124, 119, 124, 126, 126, 291, 120, 167,
     120, 167, 1, 125, 153, 214, 290, 204, 290, 124,
     291, 124, 291, 207, 207, 207, 121, 119, 124, 119,
       1, 3, 97, 99, 125, 143, 153, 216, 217, 218,
     220, 222, 223, 157, 143, 291, 273, 4, 12, 13,
      22, 32, 54, 55, 56, 57, 58, 59, 117, 120,
     125, 143, 145, 169, 186, 187, 193, 274, 280, 284,
     306, 307, 317, 318, 321, 324, 326, 329, 336, 340,
     342, 353, 355, 358, 360, 363, 365, 368, 370, 371,
     373, 375, 376, 377, 378, 379, 381, 382, 385, 386,
     408, 147, 119, 395, 4, 90, 98, 232, 233, 234,
     235, 259, 260, 261, 90, 98, 235, 259, 396, 11,
     170, 171, 172, 173, 174, 175, 176, 177, 178, 179,
     180, 181, 182, 183, 184, 185, 186, 187, 400, 3,
       1, 279, 284, 200, 201, 215, 291, 214, 291, 168,
      78, 230, 168, 78, 235, 207, 153, 143, 153, 221,
      78, 121, 124, 245, 75, 223, 220, 153, 10, 14,
      15, 16, 322, 78, 29, 33, 35, 37, 38, 39,
      40, 41, 42, 52, 153, 120, 120, 120, 145, 90,
     143, 8, 387, 114, 115, 290, 120, 167, 167, 120,
      48, 50, 51, 52, 53, 285, 286, 288, 296, 281,
     325, 330, 341, 354, 359, 364, 369, 372, 153, 380,
     169, 119, 194, 207, 207, 98, 264, 98, 264, 207,
     208, 194, 207, 207, 207, 167, 167, 284, 120, 120,
     216, 279, 279, 252, 290, 153, 78, 207, 253, 153,
      78, 207, 119, 11, 126, 216, 219, 218, 220, 127,
     127, 127, 17, 19, 21, 22, 24, 25, 34, 35,
      48, 52, 127, 327, 328, 17, 19, 20, 24, 31,
     127, 343, 344, 17, 18, 19, 31, 127, 356, 357,
     127, 98, 127, 127, 127, 98, 127, 17, 19, 20,
      24, 29, 30, 31, 127, 337, 338, 11, 78, 120,
     145, 120, 98, 127, 127, 291, 200, 224, 230, 201,
     227, 235, 287, 298, 289, 300, 98, 49, 1, 274,
     293, 1, 98, 275, 323, 385, 52, 331, 125, 345,
     323, 331, 345, 323, 323, 120, 323, 233, 234, 234,
     403, 403, 397, 232, 235, 259, 235, 259, 121, 291,
     207, 153, 207, 153, 153, 121, 220, 98, 98, 98,
      98, 98, 98, 98, 17, 18, 19, 20, 21, 22,
      24, 25, 34, 48, 127, 366, 367, 98, 17, 18,
      19, 20, 21, 22, 24, 25, 29, 30, 34, 48,
     127, 361, 362, 127, 328, 98, 98, 98, 98, 127,
     344, 98, 98, 98, 127, 357, 3, 374, 384, 98,
      98, 98, 98, 98, 127, 338, 153, 120, 145, 308,
     309, 78, 120, 225, 120, 228, 98, 98, 293, 98,
     145, 1, 297, 292, 294, 295, 145, 332, 346, 119,
     395, 207, 207, 207, 207, 207, 126, 384, 384, 384,
      21, 23, 79, 80, 81, 82, 83, 88, 89, 90,
     383, 384, 153, 98, 98, 98, 98, 98, 98, 98,
      98, 98, 98, 127, 367, 153, 98, 98, 98, 98,
      98, 98, 98, 98, 98, 98, 98, 127, 362, 384,
     384, 384, 383, 384, 384, 384, 119, 119, 384, 384,
     384, 383, 6, 26, 27, 28, 339, 78, 78, 119,
     125, 310, 310, 207, 161, 161, 145, 145, 50, 145,
     169, 305, 388, 119, 293, 275, 292, 119, 98, 32,
     323, 347, 348, 349, 350, 352, 119, 119, 119, 119,
     119, 78, 119, 119, 384, 384, 384, 384, 384, 21,
      23, 383, 384, 153, 153, 119, 384, 384, 384, 384,
     384, 21, 23, 383, 384, 339, 153, 153, 119, 119,
     119, 78, 119, 119, 119, 127, 127, 119, 119, 119,
      78, 119, 124, 10, 99, 389, 390, 391, 120, 117,
     311, 312, 313, 314, 323, 226, 229, 119, 119, 301,
     120, 304, 120, 305, 36, 121, 32, 349, 350, 351,
     384, 119, 119, 119, 119, 119, 119, 119, 78, 119,
     119, 119, 119, 119, 119, 119, 119, 119, 119, 78,
     119, 119, 124, 119, 119, 384, 384, 153, 98, 143,
      78, 119, 124, 116, 118, 121, 117, 313, 314, 290,
     290, 299, 388, 293, 333, 127, 323, 119, 384, 384,
     153, 119, 119, 119, 145, 126, 389, 120, 391, 127,
     127, 291, 291, 293, 120, 388, 119, 119, 119, 119,
      10, 78, 119, 315, 316, 284, 284, 302, 120, 98,
      10, 392, 120, 323, 323, 388, 334, 145, 119, 124,
     119, 388, 119, 120, 10, 303, 119, 293, 335, 293
};
# 2872 "c-p1329.c"
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)







{
  if (!yyvaluep)
    return;

  if (yytype < 128)
    yyprint(yyoutput,yytoknum[yytype],*yyvaluep);



  switch (yytype)
    {
      default:
 break;
    }
}
# 2904 "c-p1329.c"
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)







{
  if (yytype < 128)
    fprintf (yyoutput, "token %s (", yytname[yytype]);
  else
    fprintf (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  fprintf (yyoutput, ")");
}
# 2930 "c-p1329.c"
static void
yy_stack_print (yytype_int16 *bottom, yytype_int16 *top)






{
  fprintf (stderr, "Stack now");
  for (; bottom <= top; ++bottom)
    fprintf (stderr, " %d", *bottom);
  fprintf (stderr, "\n");
}
# 2958 "c-p1329.c"
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)






{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  fprintf (stderr, "Reducing stack by rule %d (line %lu):\n",
      yyrule - 1, yylno);

  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      fprintf (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
         &(yyvsp[(yyi + 1) - (yynrhs)])
                  );
      fprintf (stderr, "\n");
    }
}
# 2991 "c-p1329.c"
int yydebug;
# 3236 "c-p1329.c"
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)







{
  ((void) (yyvaluep));

  if (!yymsg)
    yymsg = "Deleting";
  do { if (yydebug) { fprintf (stderr, "%s ", yymsg); yy_symbol_print (stderr, yytype, yyvaluep); fprintf (stderr, "\n"); } } while ((0));

  switch (yytype)
    {

      default:
 break;
    }
}
# 3271 "c-p1329.c"
int yyparse (void);
# 3280 "c-p1329.c"
int yychar;


YYSTYPE yylval;


int yynerrs;
# 3307 "c-p1329.c"
int
yyparse (void)






{

  int yystate;
  int yyn;
  int yyresult;

  int yyerrstatus;

  int yytoken = 0;
# 3340 "c-p1329.c"
  yytype_int16 yyssa[200];
  yytype_int16 *yyss = yyssa;
  yytype_int16 *yyssp;


  YYSTYPE yyvsa[200];
  YYSTYPE *yyvs = yyvsa;
  YYSTYPE *yyvsp;





  unsigned int yystacksize = 200;



  YYSTYPE yyval;




  int yylen = 0;

  do { if (yydebug) fprintf (stderr, "Starting parse\n"); } while ((0));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = (-2);






  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;




 yynewstate:


  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {

      unsigned int yysize = yyssp - yyss + 1;


      {



 YYSTYPE *yyvs1 = yyvs;
 yytype_int16 *yyss1 = yyss;






 do { size_t newsize; short *newss; YYSTYPE *newvs; newsize = *(&yystacksize) *= 2; if (malloced_yyss) { newss = (short *) xrealloc (*(&yyss1), newsize * sizeof (short)); newvs = (YYSTYPE *) xrealloc (*(&yyvs1), newsize * sizeof (YYSTYPE)); } else { newss = (short *) xmalloc (newsize * sizeof (short)); newvs = (YYSTYPE *) xmalloc (newsize * sizeof (YYSTYPE)); if (newss) memcpy (newss, *(&yyss1), (yysize * sizeof (*yyssp))); if (newvs) memcpy (newvs, *(&yyvs1), (yysize * sizeof (*yyvsp))); } if (!newss || !newvs) { yyerror ("memory exhausted"); return 2; } *(&yyss1) = newss; *(&yyvs1) = newvs; malloced_yyss = newss; malloced_yyvs = (void *) newvs; } while (0);





 yyss = yyss1;
 yyvs = yyvs1;
      }
# 3446 "c-p1329.c"
      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;


      do { if (yydebug) fprintf (stderr, "Stack size increased to %lu\n", (unsigned long int) yystacksize); } while ((0));


      if (yyss + yystacksize - 1 <= yyssp)
 goto yyabortlab;
    }

  do { if (yydebug) fprintf (stderr, "Entering state %d\n", yystate); } while ((0));

  goto yybackup;




yybackup:





  yyn = yypact[yystate];
  if (yyn == -1118)
    goto yydefault;




  if (yychar == (-2))
    {
      do { if (yydebug) fprintf (stderr, "Reading a token: "); } while ((0));
      yychar = yylex ();
    }

  if (yychar <= 0)
    {
      yychar = yytoken = 0;
      do { if (yydebug) fprintf (stderr, "Now at end of input.\n"); } while ((0));
    }
  else
    {
      yytoken = ((unsigned int) (yychar) <= 359 ? yytranslate[yychar] : 2);
      do { if (yydebug) { fprintf (stderr, "%s ", "Next token is"); yy_symbol_print (stderr, yytoken, &yylval); fprintf (stderr, "\n"); } } while ((0));
    }



  yyn += yytoken;
  if (yyn < 0 || 4079 < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == -713)
 goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  if (yyn == 4)
    goto yyacceptlab;



  if (yyerrstatus)
    yyerrstatus--;


  do { if (yydebug) { fprintf (stderr, "%s ", "Shifting"); yy_symbol_print (stderr, yytoken, &yylval); fprintf (stderr, "\n"); } } while ((0));


  if (yychar != 0)
    yychar = (-2);

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;





yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;





yyreduce:

  yylen = yyr2[yyn];
# 3554 "c-p1329.c"
  yyval = yyvsp[1-yylen];


  do { if (yydebug) yy_reduce_print (yyvsp, yyn); } while ((0));
  switch (yyn)
    {
        case 2:
# 384 "c-parse.y"
    { if (pedantic)
      pedwarn ("ISO C forbids an empty source file");
    finish_file ();
  ;}
    break;

  case 3:
# 389 "c-parse.y"
    {


    while (! global_bindings_p ())
      poplevel (0, 0, 0);



    finish_fname_decls ();
                  finish_file ();
  ;}
    break;

  case 4:
# 407 "c-parse.y"
    {(yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 6:
# 408 "c-parse.y"
    {(yyval.ttype) = (tree) ((void *)0); ggc_collect(); ;}
    break;

  case 8:
# 413 "c-parse.y"
    { parsing_iso_function_signature = 0; ;}
    break;

  case 11:
# 420 "c-parse.y"
    { while ((((enum tree_code) ((yyvsp[(3) - (5)].ttype))->common.code) == NOP_EXPR || ((enum tree_code) ((yyvsp[(3) - (5)].ttype))->common.code) == CONVERT_EXPR || ((enum tree_code) ((yyvsp[(3) - (5)].ttype))->common.code) == NON_LVALUE_EXPR) && (((yyvsp[(3) - (5)].ttype))->exp.operands[0]) != global_trees[TI_ERROR_MARK] && ((((((yyvsp[(3) - (5)].ttype))->common.type))->type.mode) == (((((((yyvsp[(3) - (5)].ttype))->exp.operands[0]))->common.type))->type.mode))) ((yyvsp[(3) - (5)].ttype)) = (((yyvsp[(3) - (5)].ttype))->exp.operands[0]);
    if ((((enum tree_code) ((yyvsp[(3) - (5)].ttype))->common.code) == ADDR_EXPR
         && ((enum tree_code) ((((yyvsp[(3) - (5)].ttype))->exp.operands[0]))->common.code) == STRING_CST)
        || ((enum tree_code) ((yyvsp[(3) - (5)].ttype))->common.code) == STRING_CST)
      assemble_asm ((yyvsp[(3) - (5)].ttype));
    else
      error ("argument of `asm' is not a constant string"); ;}
    break;

  case 12:
# 428 "c-parse.y"
    { do { int val = tree_low_cst ((yyvsp[(1) - (2)].ttype), 0); pedantic = val & 1; warn_pointer_arith = (val >> 1) & 1; warn_traditional = (val >> 2) & 1; flag_iso = (val >> 3) & 1; } while (0); ;}
    break;

  case 14:
# 431 "c-parse.y"
    {;}
    break;

  case 15:
# 436 "c-parse.y"
    { if (pedantic)
      error ("ISO C forbids data definition with no type or storage class");
    else
      warning ("data definition has no type or storage class");

    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 16:
# 443 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 17:
# 445 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 18:
# 447 "c-parse.y"
    { shadow_tag ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 21:
# 451 "c-parse.y"
    { if (pedantic)
      pedwarn ("ISO C does not allow extra `;' outside of a function"); ;}
    break;

  case 22:
# 457 "c-parse.y"
    { if (! start_function (current_declspecs, (yyvsp[(3) - (3)].ttype),
     all_prefix_attributes))
      { yyerror ("syntax error"); goto yyerrorlab; };
  ;}
    break;

  case 23:
# 462 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 24:
# 464 "c-parse.y"
    { (((current_function_decl)->decl.locus).file) = (yyvsp[(7) - (9)].filename);
    (((current_function_decl)->decl.locus).line) = (yyvsp[(8) - (9)].lineno);
    finish_function (0, 1);
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 25:
# 469 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 26:
# 471 "c-parse.y"
    { if (! start_function (current_declspecs, (yyvsp[(3) - (3)].ttype),
     all_prefix_attributes))
      { yyerror ("syntax error"); goto yyerrorlab; };
  ;}
    break;

  case 27:
# 476 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 28:
# 478 "c-parse.y"
    { (((current_function_decl)->decl.locus).file) = (yyvsp[(7) - (9)].filename);
    (((current_function_decl)->decl.locus).line) = (yyvsp[(8) - (9)].lineno);
    finish_function (0, 1);
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 29:
# 483 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 30:
# 485 "c-parse.y"
    { if (! start_function ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype),
     all_prefix_attributes))
      { yyerror ("syntax error"); goto yyerrorlab; };
  ;}
    break;

  case 31:
# 490 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 32:
# 492 "c-parse.y"
    { (((current_function_decl)->decl.locus).file) = (yyvsp[(6) - (8)].filename);
    (((current_function_decl)->decl.locus).line) = (yyvsp[(7) - (8)].lineno);
    finish_function (0, 1);
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 33:
# 497 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 36:
# 506 "c-parse.y"
    { (yyval.code) = ADDR_EXPR; ;}
    break;

  case 37:
# 508 "c-parse.y"
    { (yyval.code) = NEGATE_EXPR; ;}
    break;

  case 38:
# 510 "c-parse.y"
    { (yyval.code) = CONVERT_EXPR;
  if (warn_traditional && !in_system_header)
    warning ("traditional C rejects the unary plus operator");
  ;}
    break;

  case 39:
# 515 "c-parse.y"
    { (yyval.code) = PREINCREMENT_EXPR; ;}
    break;

  case 40:
# 517 "c-parse.y"
    { (yyval.code) = PREDECREMENT_EXPR; ;}
    break;

  case 41:
# 519 "c-parse.y"
    { (yyval.code) = BIT_NOT_EXPR; ;}
    break;

  case 42:
# 521 "c-parse.y"
    { (yyval.code) = TRUTH_NOT_EXPR; ;}
    break;

  case 43:
# 525 "c-parse.y"
    { (yyval.ttype) = build_compound_expr ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 44:
# 530 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 46:
# 536 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 47:
# 538 "c-parse.y"
    { chainon ((yyvsp[(1) - (3)].ttype), build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 49:
# 544 "c-parse.y"
    { (yyval.ttype) = build_indirect_ref ((yyvsp[(2) - (2)].ttype), "unary *"); ;}
    break;

  case 50:
# 547 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
    do { int val = tree_low_cst ((yyvsp[(1) - (2)].ttype), 0); pedantic = val & 1; warn_pointer_arith = (val >> 1) & 1; warn_traditional = (val >> 2) & 1; flag_iso = (val >> 3) & 1; } while (0); ;}
    break;

  case 51:
# 550 "c-parse.y"
    { (yyval.ttype) = build_unary_op ((yyvsp[(1) - (2)].code), (yyvsp[(2) - (2)].ttype), 0);
    overflow_warning ((yyval.ttype)); ;}
    break;

  case 52:
# 554 "c-parse.y"
    { (yyval.ttype) = finish_label_address_expr ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 53:
# 556 "c-parse.y"
    { skip_evaluation--;
    if (((enum tree_code) ((yyvsp[(2) - (2)].ttype))->common.code) == COMPONENT_REF
        && (((((((yyvsp[(2) - (2)].ttype))->exp.operands[1])))->decl.lang_flag_4) == 1))
      error ("`sizeof' applied to a bit-field");
    (yyval.ttype) = c_sizeof_or_alignof_type ((((yyvsp[(2) - (2)].ttype))->common.type), SIZEOF_EXPR, 1); ;}
    break;

  case 54:
# 562 "c-parse.y"
    { skip_evaluation--;
    (yyval.ttype) = c_sizeof_or_alignof_type (groktypename ((yyvsp[(3) - (4)].ttype)), SIZEOF_EXPR, 1); ;}
    break;

  case 55:
# 565 "c-parse.y"
    { skip_evaluation--;
    (yyval.ttype) = c_alignof_expr ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 56:
# 568 "c-parse.y"
    { skip_evaluation--;
    (yyval.ttype) = c_sizeof_or_alignof_type (groktypename ((yyvsp[(3) - (4)].ttype)), ALIGNOF_EXPR, 1); ;}
    break;

  case 57:
# 571 "c-parse.y"
    { (yyval.ttype) = build_unary_op (REALPART_EXPR, (yyvsp[(2) - (2)].ttype), 0); ;}
    break;

  case 58:
# 573 "c-parse.y"
    { (yyval.ttype) = build_unary_op (IMAGPART_EXPR, (yyvsp[(2) - (2)].ttype), 0); ;}
    break;

  case 59:
# 577 "c-parse.y"
    { skip_evaluation++; ;}
    break;

  case 60:
# 581 "c-parse.y"
    { skip_evaluation++; ;}
    break;

  case 61:
# 585 "c-parse.y"
    { skip_evaluation++; ;}
    break;

  case 63:
# 591 "c-parse.y"
    { (yyval.ttype) = c_cast_expr ((yyvsp[(2) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 65:
# 597 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 66:
# 599 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 67:
# 601 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 68:
# 603 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 69:
# 605 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 70:
# 607 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 71:
# 609 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 72:
# 611 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 73:
# 613 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 74:
# 615 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 75:
# 617 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 76:
# 619 "c-parse.y"
    { (yyval.ttype) = parser_build_binary_op ((yyvsp[(2) - (3)].code), (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 77:
# 621 "c-parse.y"
    { (yyvsp[(1) - (2)].ttype) = c_common_truthvalue_conversion
      (default_conversion ((yyvsp[(1) - (2)].ttype)));
    skip_evaluation += (yyvsp[(1) - (2)].ttype) == c_global_trees[CTI_BOOLEAN_FALSE]; ;}
    break;

  case 78:
# 625 "c-parse.y"
    { skip_evaluation -= (yyvsp[(1) - (4)].ttype) == c_global_trees[CTI_BOOLEAN_FALSE];
    (yyval.ttype) = parser_build_binary_op (TRUTH_ANDIF_EXPR, (yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 79:
# 628 "c-parse.y"
    { (yyvsp[(1) - (2)].ttype) = c_common_truthvalue_conversion
      (default_conversion ((yyvsp[(1) - (2)].ttype)));
    skip_evaluation += (yyvsp[(1) - (2)].ttype) == c_global_trees[CTI_BOOLEAN_TRUE]; ;}
    break;

  case 80:
# 632 "c-parse.y"
    { skip_evaluation -= (yyvsp[(1) - (4)].ttype) == c_global_trees[CTI_BOOLEAN_TRUE];
    (yyval.ttype) = parser_build_binary_op (TRUTH_ORIF_EXPR, (yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 81:
# 635 "c-parse.y"
    { (yyvsp[(1) - (2)].ttype) = c_common_truthvalue_conversion
      (default_conversion ((yyvsp[(1) - (2)].ttype)));
    skip_evaluation += (yyvsp[(1) - (2)].ttype) == c_global_trees[CTI_BOOLEAN_FALSE]; ;}
    break;

  case 82:
# 639 "c-parse.y"
    { skip_evaluation += (((yyvsp[(1) - (5)].ttype) == c_global_trees[CTI_BOOLEAN_TRUE])
          - ((yyvsp[(1) - (5)].ttype) == c_global_trees[CTI_BOOLEAN_FALSE])); ;}
    break;

  case 83:
# 642 "c-parse.y"
    { skip_evaluation -= (yyvsp[(1) - (7)].ttype) == c_global_trees[CTI_BOOLEAN_TRUE];
    (yyval.ttype) = build_conditional_expr ((yyvsp[(1) - (7)].ttype), (yyvsp[(4) - (7)].ttype), (yyvsp[(7) - (7)].ttype)); ;}
    break;

  case 84:
# 645 "c-parse.y"
    { if (pedantic)
      pedwarn ("ISO C forbids omitting the middle term of a ?: expression");

    (yyvsp[(2) - (2)].ttype) = save_expr ((yyvsp[(1) - (2)].ttype));
    (yyvsp[(1) - (2)].ttype) = c_common_truthvalue_conversion
      (default_conversion ((yyvsp[(2) - (2)].ttype)));
    skip_evaluation += (yyvsp[(1) - (2)].ttype) == c_global_trees[CTI_BOOLEAN_TRUE]; ;}
    break;

  case 85:
# 653 "c-parse.y"
    { skip_evaluation -= (yyvsp[(1) - (5)].ttype) == c_global_trees[CTI_BOOLEAN_TRUE];
    (yyval.ttype) = build_conditional_expr ((yyvsp[(1) - (5)].ttype), (yyvsp[(2) - (5)].ttype), (yyvsp[(5) - (5)].ttype)); ;}
    break;

  case 86:
# 656 "c-parse.y"
    { char class;
    (yyval.ttype) = build_modify_expr ((yyvsp[(1) - (3)].ttype), NOP_EXPR, (yyvsp[(3) - (3)].ttype));
    class = tree_code_type[(int) (((enum tree_code) ((yyval.ttype))->common.code))];
    if (((class) == '<' || (class) == '1' || (class) == '2' || (class) == 'e'))
      ((((yyval.ttype))->exp.complexity) = (int) (MODIFY_EXPR));
  ;}
    break;

  case 87:
# 663 "c-parse.y"
    { char class;
    (yyval.ttype) = build_modify_expr ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].code), (yyvsp[(3) - (3)].ttype));


    class = tree_code_type[(int) (((enum tree_code) ((yyval.ttype))->common.code))];
    if (((class) == '<' || (class) == '1' || (class) == '2' || (class) == 'e'))
      ((((yyval.ttype))->exp.complexity) = (int) (ERROR_MARK));
  ;}
    break;

  case 88:
# 675 "c-parse.y"
    {
    if (yychar == (-2))
      yychar = yylex ();
    (yyval.ttype) = build_external_ref ((yyvsp[(1) - (1)].ttype), yychar == '(');
  ;}
    break;

  case 90:
# 682 "c-parse.y"
    { (yyval.ttype) = fix_string_type ((yyval.ttype)); ;}
    break;

  case 91:
# 684 "c-parse.y"
    { (yyval.ttype) = fname_decl ((((struct c_common_identifier *) ((yyval.ttype)))->node.rid_code), (yyval.ttype)); ;}
    break;

  case 92:
# 686 "c-parse.y"
    { start_init ((tree) ((void *)0), ((void *)0), 0);
    (yyvsp[(2) - (4)].ttype) = groktypename ((yyvsp[(2) - (4)].ttype));
    really_start_incremental_init ((yyvsp[(2) - (4)].ttype)); ;}
    break;

  case 93:
# 690 "c-parse.y"
    { tree constructor = pop_init_level (0);
    tree type = (yyvsp[(2) - (7)].ttype);
    finish_init ();

    if (pedantic && ! flag_isoc99)
      pedwarn ("ISO C89 forbids compound literals");
    (yyval.ttype) = build_compound_literal (type, constructor);
  ;}
    break;

  case 94:
# 699 "c-parse.y"
    { char class = tree_code_type[(int) (((enum tree_code) ((yyvsp[(2) - (3)].ttype))->common.code))];
    if (((class) == '<' || (class) == '1' || (class) == '2' || (class) == 'e'))
      ((((yyvsp[(2) - (3)].ttype))->exp.complexity) = (int) (ERROR_MARK));
    (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 95:
# 704 "c-parse.y"
    { (yyval.ttype) = global_trees[TI_ERROR_MARK]; ;}
    break;

  case 96:
# 706 "c-parse.y"
    { tree saved_last_tree;

     if (pedantic)
       pedwarn ("ISO C forbids braced-groups within expressions");
    pop_label_level ();

    saved_last_tree = ((((yyvsp[(1) - (3)].ttype)))->exp.operands[0]);
    do { ((((yyvsp[(1) - (3)].ttype)))->exp.operands[0]) = (((yyvsp[(1) - (3)].ttype))->common.chain); (((yyvsp[(1) - (3)].ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyvsp[(1) - (3)].ttype); } while (0);
    (current_stmt_tree ()->x_last_stmt) = saved_last_tree;
    (((current_stmt_tree ()->x_last_stmt))->common.chain) = (tree) ((void *)0);
    if (!(current_stmt_tree ()->x_last_expr_type))
      (current_stmt_tree ()->x_last_expr_type) = global_trees[TI_VOID_TYPE];
    (yyval.ttype) = build1 (STMT_EXPR, (current_stmt_tree ()->x_last_expr_type), (yyvsp[(1) - (3)].ttype));
    (((yyval.ttype))->common.side_effects_flag) = 1;
  ;}
    break;

  case 97:
# 722 "c-parse.y"
    {
    pop_label_level ();
    (current_stmt_tree ()->x_last_stmt) = ((((yyvsp[(1) - (3)].ttype)))->exp.operands[0]);
    (((current_stmt_tree ()->x_last_stmt))->common.chain) = (tree) ((void *)0);
    (yyval.ttype) = global_trees[TI_ERROR_MARK];
  ;}
    break;

  case 98:
# 729 "c-parse.y"
    { (yyval.ttype) = build_function_call ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 99:
# 731 "c-parse.y"
    { (yyval.ttype) = build_va_arg ((yyvsp[(3) - (6)].ttype), groktypename ((yyvsp[(5) - (6)].ttype))); ;}
    break;

  case 100:
# 734 "c-parse.y"
    {
                  tree c;

                  c = fold ((yyvsp[(3) - (8)].ttype));
                  while ((((enum tree_code) (c)->common.code) == NOP_EXPR || ((enum tree_code) (c)->common.code) == CONVERT_EXPR || ((enum tree_code) (c)->common.code) == NON_LVALUE_EXPR) && ((c)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((((c)->common.type))->type.mode) == ((((((c)->exp.operands[0]))->common.type))->type.mode))) (c) = ((c)->exp.operands[0]);
                  if (((enum tree_code) (c)->common.code) != INTEGER_CST)
                    error ("first argument to __builtin_choose_expr not a constant");
                  (yyval.ttype) = integer_zerop (c) ? (yyvsp[(7) - (8)].ttype) : (yyvsp[(5) - (8)].ttype);
  ;}
    break;

  case 101:
# 744 "c-parse.y"
    {
    tree e1, e2;

    e1 = ((groktypename ((yyvsp[(3) - (6)].ttype)))->type.main_variant);
    e2 = ((groktypename ((yyvsp[(5) - (6)].ttype)))->type.main_variant);

    (yyval.ttype) = comptypes (e1, e2)
      ? build_int_2_wide ((unsigned long long) (1), (long long) (0)) : build_int_2_wide ((unsigned long long) (0), (long long) (0));
  ;}
    break;

  case 102:
# 754 "c-parse.y"
    { (yyval.ttype) = build_array_ref ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 103:
# 756 "c-parse.y"
    {
        (yyval.ttype) = build_component_ref ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype));
  ;}
    break;

  case 104:
# 760 "c-parse.y"
    {
                  tree expr = build_indirect_ref ((yyvsp[(1) - (3)].ttype), "->");

   (yyval.ttype) = build_component_ref (expr, (yyvsp[(3) - (3)].ttype));
  ;}
    break;

  case 105:
# 766 "c-parse.y"
    { (yyval.ttype) = build_unary_op (POSTINCREMENT_EXPR, (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 106:
# 768 "c-parse.y"
    { (yyval.ttype) = build_unary_op (POSTDECREMENT_EXPR, (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 107:
# 774 "c-parse.y"
    {
   parsing_iso_function_signature = 0;
 ;}
    break;

  case 108:
# 781 "c-parse.y"
    {
   if (warn_traditional && !in_system_header
       && parsing_iso_function_signature)
     warning ("traditional C rejects ISO C style function definitions");
   parsing_iso_function_signature = 0;
 ;}
    break;

  case 110:
# 795 "c-parse.y"
    { ;}
    break;

  case 115:
# 811 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 116:
# 813 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 117:
# 815 "c-parse.y"
    { shadow_tag_warned ((yyvsp[(1) - (2)].ttype), 1);
    pedwarn ("empty declaration"); ;}
    break;

  case 118:
# 818 "c-parse.y"
    { pedwarn ("empty declaration"); ;}
    break;

  case 119:
# 827 "c-parse.y"
    { ;}
    break;

  case 120:
# 835 "c-parse.y"
    { pending_xref_error ();
    do { declspec_stack = tree_cons (build_tree_list (prefix_attributes, all_prefix_attributes), current_declspecs, declspec_stack); } while (0);
    split_specs_attrs ((yyvsp[(0) - (0)].ttype),
         &current_declspecs, &prefix_attributes);
    all_prefix_attributes = prefix_attributes; ;}
    break;

  case 121:
# 846 "c-parse.y"
    { all_prefix_attributes = chainon ((yyvsp[(1) - (1)].ttype), prefix_attributes); ;}
    break;

  case 122:
# 851 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 123:
# 853 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 124:
# 855 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 125:
# 857 "c-parse.y"
    { do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 126:
# 859 "c-parse.y"
    { shadow_tag ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 127:
# 861 "c-parse.y"
    { do { int val = tree_low_cst ((yyvsp[(1) - (2)].ttype), 0); pedantic = val & 1; warn_pointer_arith = (val >> 1) & 1; warn_traditional = (val >> 2) & 1; flag_iso = (val >> 3) & 1; } while (0); ;}
    break;

  case 128:
# 918 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype), (tree) ((void *)0));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 129:
# 921 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 130:
# 924 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 131:
# 930 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 132:
# 936 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 133:
# 939 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 134:
# 945 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0), (tree) ((void *)0));
    (((yyval.ttype))->common.static_flag) = 0; ;}
    break;

  case 135:
# 948 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 136:
# 954 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype), (tree) ((void *)0));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 137:
# 957 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 138:
# 960 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 139:
# 963 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 140:
# 966 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 141:
# 969 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 142:
# 972 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 143:
# 978 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype), (tree) ((void *)0));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 144:
# 981 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 145:
# 984 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 146:
# 987 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 147:
# 990 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 148:
# 993 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 149:
# 999 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 150:
# 1002 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 151:
# 1005 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 152:
# 1008 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 153:
# 1011 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 154:
# 1014 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 155:
# 1020 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 156:
# 1023 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 157:
# 1026 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 158:
# 1029 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 159:
# 1032 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 160:
# 1038 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype), (tree) ((void *)0));
    (((yyval.ttype))->common.static_flag) = 0; ;}
    break;

  case 161:
# 1041 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 162:
# 1044 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 163:
# 1047 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 164:
# 1053 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 165:
# 1059 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 166:
# 1065 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 167:
# 1074 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 168:
# 1080 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 169:
# 1083 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 170:
# 1086 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 171:
# 1092 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 172:
# 1098 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 173:
# 1104 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 174:
# 1113 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 175:
# 1119 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 176:
# 1122 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 177:
# 1125 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 178:
# 1128 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 179:
# 1131 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 180:
# 1134 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 181:
# 1137 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 182:
# 1143 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 183:
# 1149 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 184:
# 1155 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 185:
# 1164 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 186:
# 1167 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 187:
# 1170 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 188:
# 1173 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 189:
# 1176 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 190:
# 1182 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 191:
# 1185 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 192:
# 1188 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 193:
# 1191 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 194:
# 1194 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 195:
# 1197 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 196:
# 1200 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 197:
# 1206 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 198:
# 1212 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 199:
# 1218 "c-parse.y"
    { if (extra_warnings && (((yyvsp[(1) - (2)].ttype))->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 200:
# 1227 "c-parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = (((yyvsp[(1) - (2)].ttype))->common.static_flag); ;}
    break;

  case 201:
# 1230 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 202:
# 1233 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 203:
# 1236 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 204:
# 1239 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype));
    (((yyval.ttype))->common.static_flag) = 1; ;}
    break;

  case 261:
# 1327 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 262:
# 1329 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 266:
# 1364 "c-parse.y"
    { ; ;}
    break;

  case 269:
# 1374 "c-parse.y"
    {

    (yyval.ttype) = lookup_name ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 270:
# 1378 "c-parse.y"
    { skip_evaluation--; (yyval.ttype) = (((yyvsp[(3) - (4)].ttype))->common.type); ;}
    break;

  case 271:
# 1380 "c-parse.y"
    { skip_evaluation--; (yyval.ttype) = groktypename ((yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 276:
# 1397 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 277:
# 1399 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 278:
# 1404 "c-parse.y"
    { (yyval.ttype) = start_decl ((yyvsp[(1) - (4)].ttype), current_declspecs, 1,
       chainon ((yyvsp[(3) - (4)].ttype), all_prefix_attributes));
    start_init ((yyval.ttype), (yyvsp[(2) - (4)].ttype), global_bindings_p ()); ;}
    break;

  case 279:
# 1409 "c-parse.y"
    { finish_init ();
    finish_decl ((yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype), (yyvsp[(2) - (6)].ttype));
    if (In_MP_Region && Is_shared_mp_var ((yyvsp[(5) - (6)].ttype)))
      mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (((void *)0), (yyvsp[(5) - (6)].ttype)));
  ;}
    break;

  case 280:
# 1415 "c-parse.y"
    { tree d = start_decl ((yyvsp[(1) - (3)].ttype), current_declspecs, 0,
           chainon ((yyvsp[(3) - (3)].ttype), all_prefix_attributes));
    finish_decl (d, (tree) ((void *)0), (yyvsp[(2) - (3)].ttype));
    if (In_MP_Region && Is_shared_mp_var (d))
      mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (((void *)0), d));
                ;}
    break;

  case 281:
# 1425 "c-parse.y"
    { (yyval.ttype) = start_decl ((yyvsp[(1) - (4)].ttype), current_declspecs, 1,
       chainon ((yyvsp[(3) - (4)].ttype), all_prefix_attributes));
    start_init ((yyval.ttype), (yyvsp[(2) - (4)].ttype), global_bindings_p ()); ;}
    break;

  case 282:
# 1430 "c-parse.y"
    { finish_init ();
    finish_decl ((yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype), (yyvsp[(2) - (6)].ttype));
    if (In_MP_Region && Is_shared_mp_var ((yyvsp[(5) - (6)].ttype)))
      mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (((void *)0), (yyvsp[(5) - (6)].ttype)));
  ;}
    break;

  case 283:
# 1436 "c-parse.y"
    { tree d = start_decl ((yyvsp[(1) - (3)].ttype), current_declspecs, 0,
           chainon ((yyvsp[(3) - (3)].ttype), all_prefix_attributes));
    finish_decl (d, (tree) ((void *)0), (yyvsp[(2) - (3)].ttype));
    if (In_MP_Region && Is_shared_mp_var (d))
      mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting], build_tree_list (((void *)0), d));
  ;}
    break;

  case 284:
# 1447 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 285:
# 1449 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 286:
# 1454 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 287:
# 1456 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 288:
# 1461 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(4) - (6)].ttype); ;}
    break;

  case 289:
# 1466 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 290:
# 1468 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 291:
# 1473 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 292:
# 1475 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0)); ;}
    break;

  case 293:
# 1477 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (4)].ttype), build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (4)].ttype))); ;}
    break;

  case 294:
# 1479 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (6)].ttype), tree_cons ((tree) ((void *)0), (yyvsp[(3) - (6)].ttype), (yyvsp[(5) - (6)].ttype))); ;}
    break;

  case 295:
# 1481 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 303:
# 1504 "c-parse.y"
    { really_start_incremental_init ((tree) ((void *)0)); ;}
    break;

  case 304:
# 1506 "c-parse.y"
    { (yyval.ttype) = pop_init_level (0); ;}
    break;

  case 305:
# 1508 "c-parse.y"
    { (yyval.ttype) = global_trees[TI_ERROR_MARK]; ;}
    break;

  case 306:
# 1514 "c-parse.y"
    { if (pedantic)
      pedwarn ("ISO C forbids empty initializer braces"); ;}
    break;

  case 310:
# 1528 "c-parse.y"
    { if (pedantic && ! flag_isoc99)
      pedwarn ("ISO C89 forbids specifying subobject to initialize"); ;}
    break;

  case 311:
# 1531 "c-parse.y"
    { if (pedantic)
      pedwarn ("obsolete use of designated initializer without `='"); ;}
    break;

  case 312:
# 1534 "c-parse.y"
    { set_init_label ((yyvsp[(1) - (2)].ttype));
    if (pedantic)
      pedwarn ("obsolete use of designated initializer with `:'"); ;}
    break;

  case 313:
# 1538 "c-parse.y"
    {;}
    break;

  case 315:
# 1544 "c-parse.y"
    { push_init_level (0); ;}
    break;

  case 316:
# 1546 "c-parse.y"
    { process_init_element (pop_init_level (0)); ;}
    break;

  case 317:
# 1548 "c-parse.y"
    { process_init_element ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 321:
# 1559 "c-parse.y"
    { set_init_label ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 322:
# 1561 "c-parse.y"
    { set_init_index ((yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype));
    if (pedantic)
      pedwarn ("ISO C forbids specifying range of elements to initialize"); ;}
    break;

  case 323:
# 1565 "c-parse.y"
    { set_init_index ((yyvsp[(2) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 324:
# 1570 "c-parse.y"
    { if (pedantic)
      pedwarn ("ISO C forbids nested functions");

    push_function_context ();
    if (! start_function (current_declspecs, (yyvsp[(1) - (1)].ttype),
     all_prefix_attributes))
      {
        pop_function_context ();
        { yyerror ("syntax error"); goto yyerrorlab; };
      }
    parsing_iso_function_signature = 0;
  ;}
    break;

  case 325:
# 1583 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 326:
# 1591 "c-parse.y"
    { tree decl = current_function_decl;
    (((decl)->decl.locus).file) = (yyvsp[(5) - (7)].filename);
    (((decl)->decl.locus).line) = (yyvsp[(6) - (7)].lineno);
    finish_function (1, 1);
    pop_function_context ();
    add_decl_stmt (decl); ;}
    break;

  case 327:
# 1601 "c-parse.y"
    { if (pedantic)
      pedwarn ("ISO C forbids nested functions");

    push_function_context ();
    if (! start_function (current_declspecs, (yyvsp[(1) - (1)].ttype),
     all_prefix_attributes))
      {
        pop_function_context ();
        { yyerror ("syntax error"); goto yyerrorlab; };
      }
    parsing_iso_function_signature = 0;
  ;}
    break;

  case 328:
# 1614 "c-parse.y"
    { store_parm_decls (); ;}
    break;

  case 329:
# 1622 "c-parse.y"
    { tree decl = current_function_decl;
    (((decl)->decl.locus).file) = (yyvsp[(5) - (7)].filename);
    (((decl)->decl.locus).line) = (yyvsp[(6) - (7)].lineno);
    finish_function (1, 1);
    pop_function_context ();
    add_decl_stmt (decl); ;}
    break;

  case 332:
# 1642 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype) ? tree_cons ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), (tree) ((void *)0)) : (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 333:
# 1644 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 334:
# 1649 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 335:
# 1651 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 339:
# 1666 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 340:
# 1671 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 342:
# 1677 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 343:
# 1682 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 344:
# 1684 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 345:
# 1686 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 346:
# 1688 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype) ? tree_cons ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), (tree) ((void *)0)) : (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 347:
# 1696 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 348:
# 1701 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype) ? tree_cons ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), (tree) ((void *)0)) : (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 349:
# 1703 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 350:
# 1705 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 0); ;}
    break;

  case 352:
# 1711 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 353:
# 1713 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 354:
# 1718 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 355:
# 1720 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 356:
# 1725 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 357:
# 1727 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 358:
# 1738 "c-parse.y"
    { (yyval.ttype) = start_struct (RECORD_TYPE, (yyvsp[(2) - (3)].ttype));

  ;}
    break;

  case 359:
# 1742 "c-parse.y"
    { (yyval.ttype) = finish_struct ((yyvsp[(4) - (7)].ttype), (yyvsp[(5) - (7)].ttype), chainon ((yyvsp[(1) - (7)].ttype), (yyvsp[(7) - (7)].ttype))); ;}
    break;

  case 360:
# 1744 "c-parse.y"
    { (yyval.ttype) = finish_struct (start_struct (RECORD_TYPE, (tree) ((void *)0)),
          (yyvsp[(3) - (5)].ttype), chainon ((yyvsp[(1) - (5)].ttype), (yyvsp[(5) - (5)].ttype)));
  ;}
    break;

  case 361:
# 1748 "c-parse.y"
    { (yyval.ttype) = start_struct (UNION_TYPE, (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 362:
# 1750 "c-parse.y"
    { (yyval.ttype) = finish_struct ((yyvsp[(4) - (7)].ttype), (yyvsp[(5) - (7)].ttype), chainon ((yyvsp[(1) - (7)].ttype), (yyvsp[(7) - (7)].ttype))); ;}
    break;

  case 363:
# 1752 "c-parse.y"
    { (yyval.ttype) = finish_struct (start_struct (UNION_TYPE, (tree) ((void *)0)),
          (yyvsp[(3) - (5)].ttype), chainon ((yyvsp[(1) - (5)].ttype), (yyvsp[(5) - (5)].ttype)));
  ;}
    break;

  case 364:
# 1756 "c-parse.y"
    { (yyval.ttype) = start_enum ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 365:
# 1758 "c-parse.y"
    { (yyval.ttype) = finish_enum ((yyvsp[(4) - (8)].ttype), nreverse ((yyvsp[(5) - (8)].ttype)),
        chainon ((yyvsp[(1) - (8)].ttype), (yyvsp[(8) - (8)].ttype))); ;}
    break;

  case 366:
# 1761 "c-parse.y"
    { (yyval.ttype) = start_enum ((tree) ((void *)0)); ;}
    break;

  case 367:
# 1763 "c-parse.y"
    { (yyval.ttype) = finish_enum ((yyvsp[(3) - (7)].ttype), nreverse ((yyvsp[(4) - (7)].ttype)),
        chainon ((yyvsp[(1) - (7)].ttype), (yyvsp[(7) - (7)].ttype))); ;}
    break;

  case 368:
# 1769 "c-parse.y"
    { (yyval.ttype) = xref_tag (RECORD_TYPE, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 369:
# 1771 "c-parse.y"
    { (yyval.ttype) = xref_tag (UNION_TYPE, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 370:
# 1773 "c-parse.y"
    { (yyval.ttype) = xref_tag (ENUMERAL_TYPE, (yyvsp[(2) - (2)].ttype));


    if (pedantic && !((((yyval.ttype))->type.size) != (tree) ((void *)0)))
      pedwarn ("ISO C forbids forward references to `enum' types"); ;}
    break;

  case 374:
# 1788 "c-parse.y"
    { if (pedantic && ! flag_isoc99)
      pedwarn ("comma at end of enumerator list"); ;}
    break;

  case 375:
# 1794 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 376:
# 1796 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype));
    pedwarn ("no semicolon at end of struct or union"); ;}
    break;

  case 377:
# 1801 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 378:
# 1803 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 379:
# 1805 "c-parse.y"
    { if (pedantic)
      pedwarn ("extra semicolon in struct or union specified"); ;}
    break;

  case 380:
# 1811 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 381:
# 1814 "c-parse.y"
    {



    if (pedantic)
      pedwarn ("ISO C doesn't support unnamed structs/unions");

    (yyval.ttype) = grokfield((yyvsp[(3) - (4)].filename), (yyvsp[(4) - (4)].lineno), ((void *)0), current_declspecs, (tree) ((void *)0));
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 382:
# 1824 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 383:
# 1827 "c-parse.y"
    { if (pedantic)
      pedwarn ("ISO C forbids member declarations with no members");
    shadow_tag((yyvsp[(1) - (1)].ttype));
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 384:
# 1832 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 385:
# 1834 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
    do { int val = tree_low_cst ((yyvsp[(1) - (2)].ttype), 0); pedantic = val & 1; warn_pointer_arith = (val >> 1) & 1; warn_traditional = (val >> 2) & 1; flag_iso = (val >> 3) & 1; } while (0); ;}
    break;

  case 387:
# 1841 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 389:
# 1847 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 390:
# 1852 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (4)].filename), (yyvsp[(2) - (4)].lineno), (yyvsp[(3) - (4)].ttype), current_declspecs, (tree) ((void *)0));
    decl_attributes (&(yyval.ttype), chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 391:
# 1856 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (6)].filename), (yyvsp[(2) - (6)].lineno), (yyvsp[(3) - (6)].ttype), current_declspecs, (yyvsp[(5) - (6)].ttype));
    decl_attributes (&(yyval.ttype), chainon ((yyvsp[(6) - (6)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 392:
# 1859 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (5)].filename), (yyvsp[(2) - (5)].lineno), (tree) ((void *)0), current_declspecs, (yyvsp[(4) - (5)].ttype));
    decl_attributes (&(yyval.ttype), chainon ((yyvsp[(5) - (5)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 393:
# 1865 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (4)].filename), (yyvsp[(2) - (4)].lineno), (yyvsp[(3) - (4)].ttype), current_declspecs, (tree) ((void *)0));
    decl_attributes (&(yyval.ttype), chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 394:
# 1869 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (6)].filename), (yyvsp[(2) - (6)].lineno), (yyvsp[(3) - (6)].ttype), current_declspecs, (yyvsp[(5) - (6)].ttype));
    decl_attributes (&(yyval.ttype), chainon ((yyvsp[(6) - (6)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 395:
# 1872 "c-parse.y"
    { (yyval.ttype) = grokfield ((yyvsp[(1) - (5)].filename), (yyvsp[(2) - (5)].lineno), (tree) ((void *)0), current_declspecs, (yyvsp[(4) - (5)].ttype));
    decl_attributes (&(yyval.ttype), chainon ((yyvsp[(5) - (5)].ttype), all_prefix_attributes), 0); ;}
    break;

  case 397:
# 1884 "c-parse.y"
    { if ((yyvsp[(1) - (3)].ttype) == global_trees[TI_ERROR_MARK])
      (yyval.ttype) = (yyvsp[(1) - (3)].ttype);
    else
      (yyval.ttype) = chainon ((yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ttype)); ;}
    break;

  case 398:
# 1889 "c-parse.y"
    { (yyval.ttype) = global_trees[TI_ERROR_MARK]; ;}
    break;

  case 399:
# 1895 "c-parse.y"
    { (yyval.ttype) = build_enumerator ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0)); ;}
    break;

  case 400:
# 1897 "c-parse.y"
    { (yyval.ttype) = build_enumerator ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 401:
# 1902 "c-parse.y"
    { pending_xref_error ();
    (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 402:
# 1905 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 403:
# 1910 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 405:
# 1916 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
        (tree) ((void *)0)),
     all_prefix_attributes); ;}
    break;

  case 406:
# 1920 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
        (yyvsp[(1) - (1)].ttype)),
     all_prefix_attributes); ;}
    break;

  case 407:
# 1924 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
        (yyvsp[(1) - (2)].ttype)),
     chainon ((yyvsp[(2) - (2)].ttype), all_prefix_attributes)); ;}
    break;

  case 411:
# 1937 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 412:
# 1942 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0)); ;}
    break;

  case 413:
# 1944 "c-parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 414:
# 1949 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype) ? tree_cons ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), (tree) ((void *)0)) : (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 415:
# 1951 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 416:
# 1953 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype), 1); ;}
    break;

  case 417:
# 1955 "c-parse.y"
    { (yyval.ttype) = build_nt (CALL_EXPR, (tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (tree) ((void *)0)); ;}
    break;

  case 418:
# 1957 "c-parse.y"
    { (yyval.ttype) = set_array_declarator_type ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0), 1); ;}
    break;

  case 419:
# 1964 "c-parse.y"
    { (yyval.ttype) = build_array_declarator ((yyvsp[(3) - (4)].ttype), (yyvsp[(2) - (4)].ttype), 0, 0); ;}
    break;

  case 420:
# 1966 "c-parse.y"
    { (yyval.ttype) = build_array_declarator ((tree) ((void *)0), (yyvsp[(2) - (3)].ttype), 0, 0); ;}
    break;

  case 421:
# 1968 "c-parse.y"
    { (yyval.ttype) = build_array_declarator ((tree) ((void *)0), (yyvsp[(2) - (4)].ttype), 0, 1); ;}
    break;

  case 422:
# 1970 "c-parse.y"
    { (yyval.ttype) = build_array_declarator ((yyvsp[(4) - (5)].ttype), (yyvsp[(3) - (5)].ttype), 1, 0); ;}
    break;

  case 423:
# 1973 "c-parse.y"
    { (yyval.ttype) = build_array_declarator ((yyvsp[(4) - (5)].ttype), (yyvsp[(2) - (5)].ttype), 1, 0); ;}
    break;

  case 426:
# 1986 "c-parse.y"
    {
    pedwarn ("deprecated use of label at end of compound statement");
  ;}
    break;

  case 434:
# 2003 "c-parse.y"
    {
    if ((pedantic && !flag_isoc99)
        || warn_declaration_after_statement)
      pedwarn_c90 ("ISO C90 forbids mixed declarations and code");
  ;}
    break;

  case 449:
# 2036 "c-parse.y"
    { pushlevel (0);
    clear_last_expr ();
    add_scope_stmt ( 1, 0);
  ;}
    break;

  case 450:
# 2043 "c-parse.y"
    { (yyval.ttype) = add_scope_stmt ( 0, 0); ;}
    break;

  case 451:
# 2048 "c-parse.y"
    { if (flag_isoc99)
      {
        (yyval.ttype) = c_begin_compound_stmt ();
        pushlevel (0);
        clear_last_expr ();
        add_scope_stmt ( 1, 0);
      }
    else
      (yyval.ttype) = (tree) ((void *)0);
  ;}
    break;

  case 452:
# 2064 "c-parse.y"
    { if (flag_isoc99)
      {
        tree scope_stmt = add_scope_stmt ( 0, 0);
        (yyval.ttype) = poplevel (kept_level_p (), 0, 0);
        ((((((scope_stmt)->list.purpose)))->exp.operands[0]))
   = ((((((scope_stmt)->list.value)))->exp.operands[0]))
   = (yyval.ttype);
      }
    else
      (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 454:
# 2081 "c-parse.y"
    { if (pedantic)
      pedwarn ("ISO C forbids label declarations"); ;}
    break;

  case 457:
# 2092 "c-parse.y"
    { tree link;
    for (link = (yyvsp[(2) - (3)].ttype); link; link = ((link)->common.chain))
      {
        tree label = shadow_label (((link)->list.value));
        ((label)->common.lang_flag_1) = 1;
        add_decl_stmt (label);
      }
  ;}
    break;

  case 458:
# 2106 "c-parse.y"
    {;}
    break;

  case 460:
# 2110 "c-parse.y"
    { compstmt_count++;
                      (yyval.ttype) = c_begin_compound_stmt (); ;}
    break;

  case 461:
# 2115 "c-parse.y"
    { (yyval.ttype) = convert (global_trees[TI_VOID_TYPE], global_trees[TI_INTEGER_ZERO]); ;}
    break;

  case 462:
# 2117 "c-parse.y"
    { (yyval.ttype) = poplevel (kept_level_p (), 1, 0);
    (((((((yyvsp[(5) - (5)].ttype))->list.purpose)))->exp.operands[0]))
      = (((((((yyvsp[(5) - (5)].ttype))->list.value)))->exp.operands[0]))
      = (yyval.ttype); ;}
    break;

  case 465:
# 2130 "c-parse.y"
    { if (current_function_decl == 0)
      {
        error ("braced-group within expression allowed only inside a function");
        goto yyerrorlab;
      }




    keep_next_level ();
    push_label_level ();
    compstmt_count++;
    (yyval.ttype) = add_stmt (build_stmt (COMPOUND_STMT, (current_stmt_tree ()->x_last_stmt)));
  ;}
    break;

  case 466:
# 2147 "c-parse.y"
    { do { ((((yyvsp[(1) - (2)].ttype)))->exp.operands[0]) = (((yyvsp[(1) - (2)].ttype))->common.chain); (((yyvsp[(1) - (2)].ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyvsp[(1) - (2)].ttype); } while (0);
    (current_stmt_tree ()->x_last_expr_type) = (tree) ((void *)0);
                  (yyval.ttype) = (yyvsp[(1) - (2)].ttype); ;}
    break;

  case 467:
# 2155 "c-parse.y"
    { c_finish_then (); ;}
    break;

  case 469:
# 2172 "c-parse.y"
    { (yyval.ttype) = c_begin_if_stmt (); ;}
    break;

  case 470:
# 2174 "c-parse.y"
    { c_expand_start_cond (c_common_truthvalue_conversion ((yyvsp[(4) - (5)].ttype)),
           compstmt_count,(yyvsp[(2) - (5)].ttype));
    (yyval.itype) = stmt_count;
    if_stmt_file = (yyvsp[(-2) - (5)].filename);
    if_stmt_line = (yyvsp[(-1) - (5)].lineno); ;}
    break;

  case 471:
# 2186 "c-parse.y"
    { stmt_count++;
    compstmt_count++;
    (yyval.ttype)
      = add_stmt (build_stmt (DO_STMT, (tree) ((void *)0),
         (tree) ((void *)0)));




    ((((yyval.ttype)))->exp.operands[0]) = global_trees[TI_ERROR_MARK]; ;}
    break;

  case 472:
# 2197 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (4)].ttype);
    do { ((((yyval.ttype)))->exp.operands[1]) = (((yyval.ttype))->common.chain); (((yyval.ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyval.ttype); } while (0); ;}
    break;

  case 473:
# 2205 "c-parse.y"
    { if (yychar == (-2))
      yychar = yylex ();
    (yyval.filename) = input_filename; ;}
    break;

  case 474:
# 2211 "c-parse.y"
    { if (yychar == (-2))
      yychar = yylex ();
    (yyval.lineno) = lineno; ;}
    break;

  case 477:
# 2224 "c-parse.y"
    { if (flag_isoc99)
      do { ((((yyvsp[(1) - (3)].ttype)))->exp.operands[0]) = (((yyvsp[(1) - (3)].ttype))->common.chain); (((yyvsp[(1) - (3)].ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyvsp[(1) - (3)].ttype); } while (0); ;}
    break;

  case 478:
# 2230 "c-parse.y"
    { if ((yyvsp[(3) - (3)].ttype))
      {
        (((((yyvsp[(3) - (3)].ttype)))->exp.complexity)) = (yyvsp[(2) - (3)].lineno);





      }
  ;}
    break;

  case 479:
# 2244 "c-parse.y"
    { if ((yyvsp[(3) - (3)].ttype))
      {
        (((((yyvsp[(3) - (3)].ttype)))->exp.complexity)) = (yyvsp[(2) - (3)].lineno);
      }
  ;}
    break;

  case 480:
# 2253 "c-parse.y"
    { c_expand_start_else ();
    (yyvsp[(1) - (2)].itype) = stmt_count; ;}
    break;

  case 481:
# 2256 "c-parse.y"
    { c_finish_else ();
    c_expand_end_cond ();
    if (extra_warnings && stmt_count == (yyvsp[(1) - (4)].itype))
      warning ("empty body in an else-statement"); ;}
    break;

  case 482:
# 2261 "c-parse.y"
    { c_expand_end_cond ();




    if (extra_warnings && stmt_count++ == (yyvsp[(1) - (1)].itype))
      warning_with_file_and_line (if_stmt_file, if_stmt_line,
      "empty body in an if-statement"); ;}
    break;

  case 483:
# 2273 "c-parse.y"
    { c_expand_end_cond (); ;}
    break;

  case 484:
# 2283 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = c_begin_while_stmt (); ;}
    break;

  case 485:
# 2286 "c-parse.y"
    { (yyvsp[(4) - (5)].ttype) = c_common_truthvalue_conversion ((yyvsp[(4) - (5)].ttype));
    c_finish_while_stmt_cond
      (c_common_truthvalue_conversion ((yyvsp[(4) - (5)].ttype)), (yyvsp[(2) - (5)].ttype));
    (yyval.ttype) = add_stmt ((yyvsp[(2) - (5)].ttype)); ;}
    break;

  case 486:
# 2291 "c-parse.y"
    { do { ((((yyvsp[(6) - (7)].ttype)))->exp.operands[1]) = (((yyvsp[(6) - (7)].ttype))->common.chain); (((yyvsp[(6) - (7)].ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyvsp[(6) - (7)].ttype); } while (0); ;}
    break;

  case 487:
# 2294 "c-parse.y"
    { ((((yyvsp[(1) - (5)].ttype)))->exp.operands[0]) = c_common_truthvalue_conversion ((yyvsp[(3) - (5)].ttype)); ;}
    break;

  case 488:
# 2296 "c-parse.y"
    { ;}
    break;

  case 489:
# 2298 "c-parse.y"
    { (yyval.ttype) = build_stmt (FOR_STMT, (tree) ((void *)0), (tree) ((void *)0),
       (tree) ((void *)0), (tree) ((void *)0));
    add_stmt ((yyval.ttype)); ;}
    break;

  case 490:
# 2302 "c-parse.y"
    { stmt_count++;
    do { ((((yyvsp[(2) - (4)].ttype)))->exp.operands[0]) = (((yyvsp[(2) - (4)].ttype))->common.chain); (((yyvsp[(2) - (4)].ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyvsp[(2) - (4)].ttype); } while (0); ;}
    break;

  case 491:
# 2305 "c-parse.y"
    { if ((yyvsp[(6) - (7)].ttype))
      ((((yyvsp[(2) - (7)].ttype)))->exp.operands[1])
        = c_common_truthvalue_conversion ((yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 492:
# 2309 "c-parse.y"
    { ((((yyvsp[(2) - (10)].ttype)))->exp.operands[2]) = (yyvsp[(9) - (10)].ttype); ;}
    break;

  case 493:
# 2311 "c-parse.y"
    { do { ((((yyvsp[(2) - (12)].ttype)))->exp.operands[3]) = (((yyvsp[(2) - (12)].ttype))->common.chain); (((yyvsp[(2) - (12)].ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyvsp[(2) - (12)].ttype); } while (0); ;}
    break;

  case 494:
# 2313 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = c_start_case ((yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 495:
# 2316 "c-parse.y"
    { c_finish_case (); ;}
    break;

  case 496:
# 2321 "c-parse.y"
    { add_stmt (build_stmt (EXPR_STMT, (yyvsp[(1) - (2)].ttype))); ;}
    break;

  case 497:
# 2323 "c-parse.y"
    { check_for_loop_decls (); ;}
    break;

  case 509:
# 2344 "c-parse.y"
    {
           add_stmt(build_omp_stmt(sl2_sections_cons_b, ((void *)0)));
  ;}
    break;

  case 510:
# 2348 "c-parse.y"
    { add_stmt(build_omp_stmt(sl2_sections_cons_e, ((void *)0))); (yyval.ttype)=((void *)0);;}
    break;

  case 511:
# 2350 "c-parse.y"
    {
           add_stmt(build_omp_stmt(sl2_minor_sections_cons_b, ((void *)0)));
  ;}
    break;

  case 512:
# 2354 "c-parse.y"
    { add_stmt(build_omp_stmt(sl2_sections_cons_e, ((void *)0))); (yyval.ttype)=((void *)0);;}
    break;

  case 520:
# 2381 "c-parse.y"
    {
   if (!In_MP_Section)
     add_stmt (build_omp_stmt (sl2_section_cons_b, ((void *)0)));
   else
     In_MP_Section = 0;
        ;}
    break;

  case 521:
# 2388 "c-parse.y"
    {
   add_stmt (build_omp_stmt (sl2_section_cons_e, ((void *)0)));
        ;}
    break;

  case 522:
# 2392 "c-parse.y"
    {
   if (!In_MP_Section)
     add_stmt (build_omp_stmt (sl2_minor_section_cons_b, ((void *)0)));
   else
     In_MP_Section = 0;
        ;}
    break;

  case 523:
# 2399 "c-parse.y"
    {
   add_stmt (build_omp_stmt (sl2_minor_section_cons_e, ((void *)0)));
        ;}
    break;

  case 526:
# 2410 "c-parse.y"
    {;}
    break;

  case 529:
# 2417 "c-parse.y"
    { add_stmt (build_omp_stmt (options_dir, (yyvsp[(2) - (3)].ttype))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 530:
# 2423 "c-parse.y"
    { (yyval.ttype) = ((void *)0); ;}
    break;

  case 534:
# 2432 "c-parse.y"
    { add_stmt (build_omp_stmt (exec_freq_dir, (yyvsp[(2) - (3)].ttype))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 535:
# 2436 "c-parse.y"
    { (yyval.ttype) = build_string (6, "never"); ;}
    break;

  case 536:
# 2437 "c-parse.y"
    { (yyval.ttype) = build_string (5, "init"); ;}
    break;

  case 537:
# 2438 "c-parse.y"
    { (yyval.ttype) = build_string (9, "frequent"); ;}
    break;

  case 539:
# 2447 "c-parse.y"
    {
     (yyval.ttype) = add_stmt (build_omp_stmt (parallel_dir_b, (yyvsp[(1) - (1)].pclause_type)));
     In_MP_Region = 1;
     mp_nesting++;
     if (mp_nesting == 10)
     {

       printf ("MP nesting > %d not supported\n", 10 -1);
       fancy_abort ("c-parse.y", 2455, __FUNCTION__);
     }
     mp_locals[mp_nesting] = ((void *)0);
        ;}
    break;

  case 540:
# 2460 "c-parse.y"
    {
     add_stmt (build_omp_stmt (parallel_dir_e, ((void *)0)));
     (yyval.ttype)=((void *)0);
     In_MP_Region = 0;
     if (mp_locals[mp_nesting])
     {
       (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
         chain_parallel_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
            build_parallel_clause_list (mp_locals[mp_nesting],
                                 p_private, 0, 0));
     }
     mp_locals[mp_nesting] = ((void *)0);
     mp_nesting--;
 ;}
    break;

  case 541:
# 2478 "c-parse.y"
    { (yyval.pclause_type) = ((void *)0); ;}
    break;

  case 542:
# 2480 "c-parse.y"
    { (yyval.pclause_type) = (yyvsp[(3) - (4)].pclause_type); ;}
    break;

  case 543:
# 2485 "c-parse.y"
    { (yyval.pclause_type) = (yyvsp[(1) - (1)].pclause_type); ;}
    break;

  case 544:
# 2487 "c-parse.y"
    { (yyval.pclause_type) = chain_parallel_list_on ((yyvsp[(1) - (2)].pclause_type), (yyvsp[(2) - (2)].pclause_type)); ;}
    break;

  case 545:
# 2492 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_if, 0, 0); ;}
    break;

  case 546:
# 2494 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_num_threads, 0, 0); ;}
    break;

  case 547:
# 2496 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_private, 0, 0); ;}
    break;

  case 548:
# 2498 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_firstprivate, 0, 0); ;}
    break;

  case 549:
# 2500 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_shared, 0, 0); ;}
    break;

  case 550:
# 2502 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(((void *)0), p_default, default_shared, 0); ;}
    break;

  case 551:
# 2504 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(((void *)0), p_default, default_none, 0); ;}
    break;

  case 552:
# 2506 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(5) - (6)].ttype), p_reduction, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 553:
# 2508 "c-parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_copyin, 0, 0); ;}
    break;

  case 554:
# 2513 "c-parse.y"
    {
     add_stmt (build_omp_stmt (for_dir_b, (yyvsp[(1) - (1)].for_clause_type)));
     (yyval.ttype) = ((void *)0);
        ;}
    break;

  case 555:
# 2519 "c-parse.y"
    { add_stmt (build_omp_stmt (for_dir_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 556:
# 2525 "c-parse.y"
    { (yyval.ttype) = build_stmt (FOR_STMT, (tree) ((void *)0), (tree) ((void *)0),
       (tree) ((void *)0), (tree) ((void *)0));
    (((yyval.ttype))->common.addressable_flag) = 1;
    add_stmt ((yyval.ttype)); ;}
    break;

  case 557:
# 2530 "c-parse.y"
    { stmt_count++;
    do { ((((yyvsp[(2) - (4)].ttype)))->exp.operands[0]) = (((yyvsp[(2) - (4)].ttype))->common.chain); (((yyvsp[(2) - (4)].ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyvsp[(2) - (4)].ttype); } while (0); ;}
    break;

  case 558:
# 2533 "c-parse.y"
    { if ((yyvsp[(6) - (7)].ttype))
      ((((yyvsp[(2) - (7)].ttype)))->exp.operands[1])
        = c_common_truthvalue_conversion ((yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 559:
# 2537 "c-parse.y"
    { ((((yyvsp[(2) - (10)].ttype)))->exp.operands[2]) = (yyvsp[(9) - (10)].ttype); ;}
    break;

  case 560:
# 2539 "c-parse.y"
    { do { ((((yyvsp[(2) - (12)].ttype)))->exp.operands[3]) = (((yyvsp[(2) - (12)].ttype))->common.chain); (((yyvsp[(2) - (12)].ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyvsp[(2) - (12)].ttype); } while (0); ;}
    break;

  case 561:
# 2544 "c-parse.y"
    { (yyval.for_clause_type) = ((void *)0); ;}
    break;

  case 562:
# 2546 "c-parse.y"
    { (yyval.for_clause_type) = (yyvsp[(3) - (4)].for_clause_type); ;}
    break;

  case 563:
# 2551 "c-parse.y"
    { (yyval.for_clause_type) = (yyvsp[(1) - (1)].for_clause_type); ;}
    break;

  case 564:
# 2553 "c-parse.y"
    { (yyval.for_clause_type) = chain_for_list_on ((yyvsp[(1) - (2)].for_clause_type), (yyvsp[(2) - (2)].for_clause_type)); ;}
    break;

  case 565:
# 2558 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(3) - (4)].ttype), f_private, 0, 0); ;}
    break;

  case 566:
# 2560 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(3) - (4)].ttype), f_firstprivate, 0, 0); ;}
    break;

  case 567:
# 2562 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(3) - (4)].ttype), f_lastprivate, 0, 0); ;}
    break;

  case 568:
# 2564 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(5) - (6)].ttype), f_reduction, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 569:
# 2566 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(((void *)0), f_schedule_1, (yyvsp[(3) - (4)].sch_k_type), 0); ;}
    break;

  case 570:
# 2568 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(5) - (6)].ttype), f_schedule_2, (yyvsp[(3) - (6)].sch_k_type), 0); ;}
    break;

  case 571:
# 2570 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(((void *)0), f_ordered, 0, 0); ;}
    break;

  case 572:
# 2572 "c-parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(((void *)0), f_nowait, 0, 0); ;}
    break;

  case 573:
# 2577 "c-parse.y"
    {
       if (strcmp (((char *)((yyvsp[(1) - (1)].ttype))->identifier.id.str), "static"))
              error ("'%s' is not a valid schedule kind\n", ((char *)((yyvsp[(1) - (1)].ttype))->identifier.id.str));
       else
              (yyval.sch_k_type)=SK_STATIC; ;}
    break;

  case 574:
# 2583 "c-parse.y"
    { (yyval.sch_k_type)=SK_DYNAMIC; ;}
    break;

  case 575:
# 2585 "c-parse.y"
    { (yyval.sch_k_type)=SK_GUIDED; ;}
    break;

  case 576:
# 2587 "c-parse.y"
    { (yyval.sch_k_type)=SK_RUNTIME; ;}
    break;

  case 577:
# 2593 "c-parse.y"
    {
     add_stmt (build_omp_stmt (sections_cons_b, (yyvsp[(1) - (1)].sections_clause_type)));
     (yyval.ttype) = ((void *)0);
        ;}
    break;

  case 578:
# 2598 "c-parse.y"
    { add_stmt (build_omp_stmt (sections_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 579:
# 2603 "c-parse.y"
    { (yyval.sections_clause_type) = ((void *)0); ;}
    break;

  case 580:
# 2605 "c-parse.y"
    { (yyval.sections_clause_type) = (yyvsp[(3) - (4)].sections_clause_type); ;}
    break;

  case 581:
# 2610 "c-parse.y"
    { (yyval.sections_clause_type) = (yyvsp[(1) - (1)].sections_clause_type); ;}
    break;

  case 582:
# 2612 "c-parse.y"
    { (yyval.sections_clause_type) = chain_sections_list_on ((yyvsp[(1) - (2)].sections_clause_type), (yyvsp[(2) - (2)].sections_clause_type)); ;}
    break;

  case 583:
# 2617 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(3) - (4)].ttype), sections_private, 0); ;}
    break;

  case 584:
# 2619 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(3) - (4)].ttype), sections_firstprivate, 0); ;}
    break;

  case 585:
# 2621 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(3) - (4)].ttype), sections_lastprivate, 0); ;}
    break;

  case 586:
# 2623 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(5) - (6)].ttype), sections_reduction, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 587:
# 2625 "c-parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list(((void *)0), sections_nowait, 0); ;}
    break;

  case 588:
# 2631 "c-parse.y"
    {
           In_MP_Section = 1;
           add_stmt (build_omp_stmt (section_cons_b, ((void *)0)));
        ;}
    break;

  case 593:
# 2646 "c-parse.y"
    {
   In_MP_Section = 0;
   add_stmt (build_omp_stmt (section_cons_e, ((void *)0)));
 ;}
    break;

  case 596:
# 2659 "c-parse.y"
    {
   if (!In_MP_Section)
     add_stmt (build_omp_stmt (section_cons_b, ((void *)0)));
   else
     In_MP_Section = 0;
        ;}
    break;

  case 597:
# 2666 "c-parse.y"
    {
   add_stmt (build_omp_stmt (section_cons_e, ((void *)0)));
        ;}
    break;

  case 599:
# 2677 "c-parse.y"
    {
     add_stmt (build_omp_stmt (single_cons_b, (yyvsp[(1) - (1)].single_clause_type)));
     (yyval.ttype) = ((void *)0);
        ;}
    break;

  case 600:
# 2682 "c-parse.y"
    { add_stmt (build_omp_stmt (single_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 601:
# 2687 "c-parse.y"
    {(yyval.single_clause_type) = ((void *)0);;}
    break;

  case 602:
# 2689 "c-parse.y"
    {(yyval.single_clause_type) = (yyvsp[(3) - (4)].single_clause_type);;}
    break;

  case 603:
# 2694 "c-parse.y"
    { (yyval.single_clause_type) = (yyvsp[(1) - (1)].single_clause_type); ;}
    break;

  case 604:
# 2696 "c-parse.y"
    { (yyval.single_clause_type) = chain_single_list_on ((yyvsp[(1) - (2)].single_clause_type), (yyvsp[(2) - (2)].single_clause_type)); ;}
    break;

  case 605:
# 2701 "c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[(3) - (4)].ttype), single_private); ;}
    break;

  case 606:
# 2703 "c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[(3) - (4)].ttype), single_firstprivate); ;}
    break;

  case 607:
# 2705 "c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[(3) - (4)].ttype), single_copyprivate); ;}
    break;

  case 608:
# 2707 "c-parse.y"
    { (yyval.single_clause_type) = build_single_clause_list(((void *)0), single_nowait); ;}
    break;

  case 609:
# 2712 "c-parse.y"
    {
     (yyval.ttype) = add_stmt (build_omp_stmt (par_for_cons_b, (yyvsp[(1) - (1)].parallel_for_clause_type)));
     In_MP_Region = 1;
     mp_nesting++;
     if (mp_nesting == 10)
     {

       printf ("MP nesting > %d not supported\n", 10 -1);
       fancy_abort ("c-parse.y", 2720, __FUNCTION__);
     }
     mp_locals[mp_nesting] = ((void *)0);
        ;}
    break;

  case 610:
# 2725 "c-parse.y"
    {
     add_stmt (build_omp_stmt (par_for_cons_e, ((void *)0)));
     (yyval.ttype) = ((void *)0);
     In_MP_Region = 0;
     if (mp_locals[mp_nesting])
     {
       (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
         chain_parallel_for_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
            build_parallel_for_clause_list (mp_locals[mp_nesting],
                                 p_for_private, 0, 0, 0));
     }
     mp_locals[mp_nesting] = ((void *)0);
     mp_nesting--;
 ;}
    break;

  case 611:
# 2743 "c-parse.y"
    {(yyval.parallel_for_clause_type) = ((void *)0);;}
    break;

  case 612:
# 2745 "c-parse.y"
    {(yyval.parallel_for_clause_type) = (yyvsp[(4) - (5)].parallel_for_clause_type);;}
    break;

  case 613:
# 2750 "c-parse.y"
    { (yyval.parallel_for_clause_type) = (yyvsp[(1) - (1)].parallel_for_clause_type); ;}
    break;

  case 614:
# 2752 "c-parse.y"
    { (yyval.parallel_for_clause_type) = chain_parallel_for_list_on ((yyvsp[(1) - (2)].parallel_for_clause_type), (yyvsp[(2) - (2)].parallel_for_clause_type)); ;}
    break;

  case 615:
# 2757 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_if, 0, 0, 0); ;}
    break;

  case 616:
# 2759 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_num_threads, 0, 0, 0); ;}
    break;

  case 617:
# 2761 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_private, 0, 0, 0); ;}
    break;

  case 618:
# 2763 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_copyprivate, 0, 0, 0); ;}
    break;

  case 619:
# 2765 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_firstprivate, 0, 0, 0); ;}
    break;

  case 620:
# 2767 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_lastprivate, 0, 0, 0); ;}
    break;

  case 621:
# 2769 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_shared, 0, 0, 0); ;}
    break;

  case 622:
# 2771 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(((void *)0), p_for_default, default_shared, 0, 0); ;}
    break;

  case 623:
# 2773 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(((void *)0), p_for_default, default_none, 0, 0); ;}
    break;

  case 624:
# 2775 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(5) - (6)].ttype), p_for_reduction, 0, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 625:
# 2777 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_copyin, 0, 0, 0); ;}
    break;

  case 626:
# 2779 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(((void *)0), p_for_schedule_1, 0, (yyvsp[(3) - (4)].sch_k_type), 0); ;}
    break;

  case 627:
# 2781 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(5) - (6)].ttype), p_for_schedule_2, 0, (yyvsp[(3) - (6)].sch_k_type), 0); ;}
    break;

  case 628:
# 2783 "c-parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(((void *)0), p_for_ordered, 0, 0, 0); ;}
    break;

  case 629:
# 2788 "c-parse.y"
    {
     (yyval.ttype) = add_stmt (build_omp_stmt (par_sctn_cons_b, (yyvsp[(1) - (1)].parallel_sections_clause_type)));
     In_MP_Region = 1;
     mp_nesting++;
     if (mp_nesting == 10)
     {

       printf ("MP nesting > %d not supported\n", 10 -1);
       fancy_abort ("c-parse.y", 2796, __FUNCTION__);
     }
     mp_locals[mp_nesting] = ((void *)0);
        ;}
    break;

  case 630:
# 2801 "c-parse.y"
    {
     add_stmt (build_omp_stmt (par_sctn_cons_e, ((void *)0)));
     (yyval.ttype) = ((void *)0);
     In_MP_Region = 0;
     if (mp_locals[mp_nesting])
     {
       (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
         chain_parallel_sections_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
     build_parallel_sections_clause_list (mp_locals[mp_nesting],
     p_sections_private, 0, 0));
     }
     mp_locals[mp_nesting] = ((void *)0);
     mp_nesting--;
 ;}
    break;

  case 631:
# 2819 "c-parse.y"
    {(yyval.parallel_sections_clause_type) = ((void *)0);;}
    break;

  case 632:
# 2821 "c-parse.y"
    {(yyval.parallel_sections_clause_type) = (yyvsp[(4) - (5)].parallel_sections_clause_type);;}
    break;

  case 633:
# 2826 "c-parse.y"
    { (yyval.parallel_sections_clause_type)=(yyvsp[(1) - (1)].parallel_sections_clause_type); ;}
    break;

  case 634:
# 2828 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = chain_parallel_sections_list_on ((yyvsp[(1) - (2)].parallel_sections_clause_type), (yyvsp[(2) - (2)].parallel_sections_clause_type)); ;}
    break;

  case 635:
# 2833 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_if, 0, 0); ;}
    break;

  case 636:
# 2835 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_num_threads, 0, 0); ;}
    break;

  case 637:
# 2837 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_private, 0, 0); ;}
    break;

  case 638:
# 2839 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_copyprivate, 0, 0); ;}
    break;

  case 639:
# 2841 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_firstprivate, 0, 0); ;}
    break;

  case 640:
# 2843 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_lastprivate, 0, 0); ;}
    break;

  case 641:
# 2845 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_shared, 0, 0); ;}
    break;

  case 642:
# 2847 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(((void *)0), p_sections_default, default_shared, 0); ;}
    break;

  case 643:
# 2849 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(((void *)0), p_sections_default, default_none, 0); ;}
    break;

  case 644:
# 2851 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(5) - (6)].ttype), p_sections_reduction, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 645:
# 2853 "c-parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_copyin, 0, 0); ;}
    break;

  case 646:
# 2858 "c-parse.y"
    { add_stmt (build_omp_stmt (master_cons_b, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 647:
# 2860 "c-parse.y"
    { add_stmt (build_omp_stmt (master_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 649:
# 2869 "c-parse.y"
    { add_stmt (build_omp_stmt (critical_cons_b, (yyvsp[(1) - (1)].ttype))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 650:
# 2871 "c-parse.y"
    { add_stmt (build_omp_stmt (critical_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 651:
# 2876 "c-parse.y"
    { (yyval.ttype) = ((void *)0); ;}
    break;

  case 652:
# 2878 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(4) - (6)].ttype); ;}
    break;

  case 653:
# 2883 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 654:
# 2888 "c-parse.y"
    { add_stmt (build_omp_stmt (barrier_dir, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 655:
# 2893 "c-parse.y"
    {
     add_stmt (build_omp_stmt (atomic_cons, (yyvsp[(2) - (3)].ttype)));
     (yyval.ttype) = ((void *)0);
        ;}
    break;

  case 657:
# 2905 "c-parse.y"
    { add_stmt (build_omp_stmt (flush_dir, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 658:
# 2908 "c-parse.y"
    { add_stmt (build_omp_stmt (flush_dir, (yyvsp[(4) - (6)].ttype))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 659:
# 2913 "c-parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_b, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 660:
# 2915 "c-parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 662:
# 2924 "c-parse.y"
    { expand_threadprivate((yyvsp[(4) - (6)].ttype)); ;}
    break;

  case 663:
# 2929 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_ADD;;}
    break;

  case 664:
# 2931 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_MPY;;}
    break;

  case 665:
# 2933 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_SUB;;}
    break;

  case 666:
# 2935 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BAND;;}
    break;

  case 667:
# 2937 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BXOR;;}
    break;

  case 668:
# 2939 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BIOR;;}
    break;

  case 669:
# 2941 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CAND;;}
    break;

  case 670:
# 2943 "c-parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CIOR;;}
    break;

  case 671:
# 2948 "c-parse.y"
    {
           if(lookup_name((yyvsp[(1) - (1)].ttype))==0)
                        error("Undefined variable %s", ((char *)((yyvsp[(1) - (1)].ttype))->identifier.id.str));
          (yyval.ttype) = build_tree_list ((tree) ((void *)0), lookup_name ((yyvsp[(1) - (1)].ttype)));
        ;}
    break;

  case 672:
# 2954 "c-parse.y"
    {
      if (lookup_name ((yyvsp[(3) - (3)].ttype)) == 0)
        error ("Undefined variable %s", ((char *)((yyvsp[(3) - (3)].ttype))->identifier.id.str));
      (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), build_tree_list ((tree) ((void *)0), lookup_name ((yyvsp[(3) - (3)].ttype))));
    ;}
    break;

  case 675:
# 2969 "c-parse.y"
    { stmt_count++; (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 676:
# 2971 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = c_expand_expr_stmt ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 677:
# 2974 "c-parse.y"
    { if (flag_isoc99)
      do { ((((yyvsp[(1) - (3)].ttype)))->exp.operands[0]) = (((yyvsp[(1) - (3)].ttype))->common.chain); (((yyvsp[(1) - (3)].ttype))->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = (yyvsp[(1) - (3)].ttype); } while (0);
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 678:
# 2978 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = add_stmt (build_break_stmt ()); ;}
    break;

  case 679:
# 2981 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = add_stmt (build_continue_stmt ()); ;}
    break;

  case 680:
# 2984 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = c_expand_return ((tree) ((void *)0)); ;}
    break;

  case 681:
# 2987 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = c_expand_return ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 682:
# 2990 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = simple_asm_stmt ((yyvsp[(4) - (6)].ttype)); ;}
    break;

  case 683:
# 2994 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = build_asm_stmt ((yyvsp[(2) - (8)].ttype), (yyvsp[(4) - (8)].ttype), (yyvsp[(6) - (8)].ttype), (tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 684:
# 2999 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = build_asm_stmt ((yyvsp[(2) - (10)].ttype), (yyvsp[(4) - (10)].ttype), (yyvsp[(6) - (10)].ttype), (yyvsp[(8) - (10)].ttype), (tree) ((void *)0)); ;}
    break;

  case 685:
# 3004 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = build_asm_stmt ((yyvsp[(2) - (12)].ttype), (yyvsp[(4) - (12)].ttype), (yyvsp[(6) - (12)].ttype), (yyvsp[(8) - (12)].ttype), (yyvsp[(10) - (12)].ttype)); ;}
    break;

  case 686:
# 3007 "c-parse.y"
    { tree decl;
    stmt_count++;
    decl = lookup_label ((yyvsp[(2) - (3)].ttype));
    if (decl != 0)
      {
        ((decl)->common.used_flag) = 1;
        (yyval.ttype) = add_stmt (build_stmt (GOTO_STMT, decl));
      }
    else
      (yyval.ttype) = (tree) ((void *)0);
  ;}
    break;

  case 687:
# 3019 "c-parse.y"
    { if (pedantic)
      pedwarn ("ISO C forbids `goto *expr;'");
    stmt_count++;
    (yyvsp[(3) - (4)].ttype) = convert (global_trees[TI_PTR_TYPE], (yyvsp[(3) - (4)].ttype));
    (yyval.ttype) = add_stmt (build_stmt (GOTO_STMT, (yyvsp[(3) - (4)].ttype))); ;}
    break;

  case 688:
# 3025 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 689:
# 3033 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = do_case ((yyvsp[(2) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 690:
# 3036 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = do_case ((yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 691:
# 3039 "c-parse.y"
    { stmt_count++;
    (yyval.ttype) = do_case ((tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 692:
# 3042 "c-parse.y"
    { tree label = define_label ((yyvsp[(2) - (5)].filename), (yyvsp[(3) - (5)].lineno), (yyvsp[(1) - (5)].ttype));
    stmt_count++;
    if (label)
      {
        decl_attributes (&label, (yyvsp[(5) - (5)].ttype), 0);
        (yyval.ttype) = add_stmt (build_stmt (LABEL_STMT, label));
      }
    else
      (yyval.ttype) = (tree) ((void *)0);
  ;}
    break;

  case 693:
# 3058 "c-parse.y"
    { emit_line_note (input_filename, lineno);
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 694:
# 3061 "c-parse.y"
    { emit_line_note (input_filename, lineno); ;}
    break;

  case 695:
# 3066 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 697:
# 3073 "c-parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 700:
# 3080 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 701:
# 3085 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (4)].ttype)), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 702:
# 3087 "c-parse.y"
    { (yyvsp[(2) - (7)].ttype) = build_string ((((yyvsp[(2) - (7)].ttype))->identifier.id.len),
         ((char *)((yyvsp[(2) - (7)].ttype))->identifier.id.str));
    (yyval.ttype) = build_tree_list (build_tree_list ((yyvsp[(2) - (7)].ttype), (yyvsp[(4) - (7)].ttype)), (yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 703:
# 3094 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype), (tree) ((void *)0)); ;}
    break;

  case 704:
# 3096 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ttype)); ;}
    break;

  case 705:
# 3106 "c-parse.y"
    { pushlevel (0);
    clear_parm_order ();
    declare_parm_level (0); ;}
    break;

  case 706:
# 3110 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
    parmlist_tags_warning ();
    poplevel (0, 0, 0); ;}
    break;

  case 708:
# 3118 "c-parse.y"
    { tree parm;
    if (pedantic)
      pedwarn ("ISO C forbids forward parameter declarations");

    for (parm = getdecls (); parm; parm = ((parm)->common.chain))
      ((parm)->common.asm_written_flag) = 1;
    clear_parm_order (); ;}
    break;

  case 709:
# 3126 "c-parse.y"
    { ;}

    break;

  case 710:
# 3129 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(6) - (6)].ttype); ;}
    break;

  case 711:
# 3131 "c-parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 712:
# 3137 "c-parse.y"
    { (yyval.ttype) = get_parm_info (0); ;}
    break;

  case 713:
# 3139 "c-parse.y"
    { (yyval.ttype) = get_parm_info (0);






    error ("ISO C requires a named argument before `...'");
  ;}
    break;

  case 714:
# 3149 "c-parse.y"
    { (yyval.ttype) = get_parm_info (1);
    parsing_iso_function_signature = 1;
  ;}
    break;

  case 715:
# 3153 "c-parse.y"
    { (yyval.ttype) = get_parm_info (0); ;}
    break;

  case 716:
# 3158 "c-parse.y"
    { push_parm_decl ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 717:
# 3160 "c-parse.y"
    { push_parm_decl ((yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 718:
# 3167 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
        (yyvsp[(3) - (4)].ttype)),
     chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 719:
# 3172 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
        (yyvsp[(3) - (4)].ttype)),
     chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 720:
# 3177 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 721:
# 3180 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
        (yyvsp[(3) - (4)].ttype)),
     chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 722:
# 3186 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 723:
# 3194 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
        (yyvsp[(3) - (4)].ttype)),
     chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 724:
# 3199 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
        (yyvsp[(3) - (4)].ttype)),
     chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 725:
# 3204 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 726:
# 3207 "c-parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list (current_declspecs,
        (yyvsp[(3) - (4)].ttype)),
     chainon ((yyvsp[(4) - (4)].ttype), all_prefix_attributes));
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 727:
# 3213 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
    do { current_declspecs = ((declspec_stack)->list.value); prefix_attributes = ((((declspec_stack)->list.purpose))->list.purpose); all_prefix_attributes = ((((declspec_stack)->list.purpose))->list.value); declspec_stack = ((declspec_stack)->common.chain); } while (0); ;}
    break;

  case 728:
# 3219 "c-parse.y"
    { prefix_attributes = chainon (prefix_attributes, (yyvsp[(-2) - (1)].ttype));
    all_prefix_attributes = prefix_attributes; ;}
    break;

  case 729:
# 3228 "c-parse.y"
    { pushlevel (0);
    clear_parm_order ();
    declare_parm_level (1); ;}
    break;

  case 730:
# 3232 "c-parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
    parmlist_tags_warning ();
    poplevel (0, 0, 0); ;}
    break;

  case 732:
# 3240 "c-parse.y"
    { tree t;
    for (t = (yyvsp[(1) - (2)].ttype); t; t = ((t)->common.chain))
      if (((t)->list.value) == (tree) ((void *)0))
        error ("`...' in old-style identifier list");
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype));


    if ((yyvsp[(-1) - (2)].ttype) != 0
        && (((enum tree_code) ((yyval.ttype))->common.code) != TREE_LIST
     || (((yyval.ttype))->list.purpose) == 0
     || ((enum tree_code) ((((yyval.ttype))->list.purpose))->common.code) != PARM_DECL))
      { yyerror ("syntax error"); goto yyerrorlab; };
  ;}
    break;

  case 733:
# 3258 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 734:
# 3260 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 735:
# 3266 "c-parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 736:
# 3268 "c-parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 737:
# 3273 "c-parse.y"
    { (yyval.ttype) = size_int_wide ((long long) (pedantic | (warn_pointer_arith << 1) | (warn_traditional << 2) | (flag_iso << 3)), SIZETYPE);
    pedantic = 0;
    warn_pointer_arith = 0;
    warn_traditional = 0;
    flag_iso = 0; ;}
    break;
# 7023 "c-p1329.c"
      default: break;
    }
  do { if (yydebug) { fprintf (stderr, "%s ", "-> $$ ="); yy_symbol_print (stderr, yyr1[yyn], &yyval); fprintf (stderr, "\n"); } } while ((0));

  (yyvsp -= (yylen), yyssp -= (yylen));
  yylen = 0;
  do { if (yydebug) yy_stack_print ((yyss), (yyssp)); } while ((0));

  *++yyvsp = yyval;






  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - 128] + *yyssp;
  if (0 <= yystate && yystate <= 4079 && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - 128];

  goto yynewstate;





yyerrlab:

  if (!yyerrstatus)
    {
      ++yynerrs;

      yyerror ("syntax error");
# 7092 "c-p1329.c"
    }



  if (yyerrstatus == 3)
    {



      if (yychar <= 0)
 {

   if (yychar == 0)
     goto yyabortlab;
 }
      else
 {
   yydestruct ("Error: discarding",
        yytoken, &yylval);
   yychar = (-2);
 }
    }



  goto yyerrlab1;





yyerrorlab:




  if ( 0)
     goto yyerrorlab;



  (yyvsp -= (yylen), yyssp -= (yylen));
  yylen = 0;
  do { if (yydebug) yy_stack_print ((yyss), (yyssp)); } while ((0));
  yystate = *yyssp;
  goto yyerrlab1;





yyerrlab1:
  yyerrstatus = 3;

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != -1118)
 {
   yyn += 1;
   if (0 <= yyn && yyn <= 4079 && yycheck[yyn] == 1)
     {
       yyn = yytable[yyn];
       if (0 < yyn)
  break;
     }
 }


      if (yyssp == yyss)
 goto yyabortlab;


      yydestruct ("Error: popping",
    yystos[yystate], yyvsp);
      (yyvsp -= (1), yyssp -= (1));
      yystate = *yyssp;
      do { if (yydebug) yy_stack_print ((yyss), (yyssp)); } while ((0));
    }

  if (yyn == 4)
    goto yyacceptlab;

  *++yyvsp = yylval;



  do { if (yydebug) { fprintf (stderr, "%s ", "Shifting"); yy_symbol_print (stderr, yystos[yyn], yyvsp); fprintf (stderr, "\n"); } } while ((0));

  yystate = yyn;
  goto yynewstate;





yyacceptlab:
  yyresult = 0;
  goto yyreturn;




yyabortlab:
  yyresult = 1;
  goto yyreturn;
# 7209 "c-p1329.c"
yyreturn:
  if (yychar != 0 && yychar != (-2))
     yydestruct ("Cleanup: discarding lookahead",
   yytoken, &yylval);


  (yyvsp -= (yylen), yyssp -= (yylen));
  do { if (yydebug) yy_stack_print ((yyss), (yyssp)); } while ((0));
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
    yystos[*yyssp], yyvsp);
      (yyvsp -= (1), yyssp -= (1));
    }
# 7232 "c-p1329.c"
  return (yyresult);
}
# 3280 "c-parse.y"





static enum cpp_ttype last_token;


struct resword
{
  const char *word;
  enum rid rid : 16;
  unsigned int disable : 16;
};
# 3302 "c-parse.y"
static const struct resword reswords[] =
{
  { "_Bool", RID_BOOL, 0 },
  { "_Complex", RID_COMPLEX, 0 },
  { "__FUNCTION__", RID_FUNCTION_NAME, 0 },
  { "__PRETTY_FUNCTION__", RID_PRETTY_FUNCTION_NAME, 0 },
  { "__alignof", RID_ALIGNOF, 0 },
  { "__alignof__", RID_ALIGNOF, 0 },
  { "__asm", RID_ASM, 0 },
  { "__asm__", RID_ASM, 0 },
  { "__attribute", RID_ATTRIBUTE, 0 },
  { "__attribute__", RID_ATTRIBUTE, 0 },
  { "__bounded", RID_BOUNDED, 0 },
  { "__bounded__", RID_BOUNDED, 0 },
  { "__builtin_choose_expr", RID_CHOOSE_EXPR, 0 },
  { "__builtin_types_compatible_p", RID_TYPES_COMPATIBLE_P, 0 },
  { "__builtin_va_arg", RID_VA_ARG, 0 },
  { "__complex", RID_COMPLEX, 0 },
  { "__complex__", RID_COMPLEX, 0 },
  { "__const", RID_CONST, 0 },
  { "__const__", RID_CONST, 0 },
  { "__extension__", RID_EXTENSION, 0 },
  { "__func__", RID_C99_FUNCTION_NAME, 0 },
  { "__imag", RID_IMAGPART, 0 },
  { "__imag__", RID_IMAGPART, 0 },
  { "__inline", RID_INLINE, 0 },
  { "__inline__", RID_INLINE, 0 },
  { "__label__", RID_LABEL, 0 },
  { "__ptrbase", RID_PTRBASE, 0 },
  { "__ptrbase__", RID_PTRBASE, 0 },
  { "__ptrextent", RID_PTREXTENT, 0 },
  { "__ptrextent__", RID_PTREXTENT, 0 },
  { "__ptrvalue", RID_PTRVALUE, 0 },
  { "__ptrvalue__", RID_PTRVALUE, 0 },
  { "__real", RID_REALPART, 0 },
  { "__real__", RID_REALPART, 0 },
  { "__restrict", RID_RESTRICT, 0 },
  { "__restrict__", RID_RESTRICT, 0 },
  { "__signed", RID_SIGNED, 0 },
  { "__signed__", RID_SIGNED, 0 },
  { "__thread", RID_THREAD, 0 },
  { "__typeof", RID_TYPEOF, 0 },
  { "__typeof__", RID_TYPEOF, 0 },
  { "__unbounded", RID_UNBOUNDED, 0 },
  { "__unbounded__", RID_UNBOUNDED, 0 },
  { "__volatile", RID_VOLATILE, 0 },
  { "__volatile__", RID_VOLATILE, 0 },
  { "asm", RID_ASM, 0x02 },
  { "auto", RID_AUTO, 0 },
  { "break", RID_BREAK, 0 },
  { "case", RID_CASE, 0 },
  { "char", RID_CHAR, 0 },
  { "const", RID_CONST, 0 },
  { "continue", RID_CONTINUE, 0 },
  { "default", RID_DEFAULT, 0 },
  { "do", RID_DO, 0 },
  { "double", RID_DOUBLE, 0 },
  { "else", RID_ELSE, 0 },
  { "enum", RID_ENUM, 0 },
  { "extern", RID_EXTERN, 0 },
  { "float", RID_FLOAT, 0 },
  { "for", RID_FOR, 0 },
  { "goto", RID_GOTO, 0 },
  { "if", RID_IF, 0 },
  { "inline", RID_INLINE, 0x04 },
  { "int", RID_INT, 0 },
  { "long", RID_LONG, 0 },
  { "register", RID_REGISTER, 0 },
  { "restrict", RID_RESTRICT, 0x01 },
  { "__sbuf", RID_SBUF, 0 },
  { "__sdram", RID_SDRAM, 0 },
  { "__v1buf", RID_V1BUF, 0 },
  { "__v2buf", RID_V2BUF, 0 },
  { "__v4buf", RID_V4BUF, 0 },
  { "return", RID_RETURN, 0 },
  { "short", RID_SHORT, 0 },
  { "signed", RID_SIGNED, 0 },
  { "sizeof", RID_SIZEOF, 0 },
  { "static", RID_STATIC, 0 },
  { "struct", RID_STRUCT, 0 },
  { "switch", RID_SWITCH, 0 },
  { "typedef", RID_TYPEDEF, 0 },
  { "typeof", RID_TYPEOF, 0x02 },
  { "union", RID_UNION, 0 },
  { "unsigned", RID_UNSIGNED, 0 },
  { "void", RID_VOID, 0 },
  { "volatile", RID_VOLATILE, 0 },
  { "while", RID_WHILE, 0 },
};





static const short rid_to_yy[RID_MAX] =
{
                   261,
                     262,
                 262,
                  263,
                   260,
                     260,
                    260,
                  262,
                   260,
                     263,
                   262,
                 260,
                     263,
                     263,
                     263,
                  263,
                  263,
                  263,

                    263,
                      263,
                    262,
                   260,


                   0,
                    0,
                     0,
                   0,
                    0,


                263,
                 263,
                  263,
                   263,
                  263,
                   263,


                 262,
                 262,
                  262,
                   262,
                 262,
                 300,
                   301,
                  302,
                303,
                 304,
                  305,
                306,
                 307,
                   308,
                 309,
                    277,
                  310,
                     311,
                   312,
                 313,
                   299,


                 314,
                   315,
                    316,
                      317,
                   322,
                      318,
                     321,
                     320,
                  319,
                    326,
                      327,
                     325,

                          323,
                                324,

                           328,
                                 328,
                               329,


                 262,
                  0,
                  0,
                   0,
                    0,
                      0,
                     0,
                 0,
                  0,
                   0,
                  0,
                      0,
                 0,
                     0,
                 0,
                  0,
                 0,
                 0,
                     0,
                   0,
                  0,


                      0,
                    0,
                      0,
                     0,


                 352,
                       347,
                    344,
                      353,
                      354,
                     346,
                        272,
                         350,
                       349,
                         351,
                         345,
                         342,
                              343
};

static void
init_reswords ()
{
  unsigned int i;
  tree id;
  int mask = (flag_isoc99 ? 0 : 0x01)
       | (flag_no_asm ? (flag_isoc99 ? 0x02 : 0x02|0x04) : 0);

  if (!flag_objc)
     mask |= 0x08;




  ridpointers = (tree *) xcalloc ((int) RID_MAX, sizeof (tree));
  for (i = 0; i < (sizeof reswords / sizeof (struct resword)); i++)
    {


      if (reswords[i].disable & mask)
 continue;

      id = (__builtin_constant_p (reswords[i].word) ? get_identifier_with_length ((reswords[i].word), (unsigned) strlen (reswords[i].word)) : (get_identifier) (reswords[i].word));
      (((struct c_common_identifier *) (id))->node.rid_code) = reswords[i].rid;
      ((id)->common.lang_flag_0) = 1;
      ridpointers [(int) reswords[i].rid] = id;
    }
}



static void
yyerror (msgid)
     const char *msgid;
{
  const char *string = (msgid);

  if (last_token == CPP_EOF)
    error ("%s at end of input", string);
  else if (last_token == CPP_CHAR || last_token == CPP_WCHAR)
    {
      unsigned int val = (((yylval.ttype)->int_cst.int_cst).low);
      const char *const ell = (last_token == CPP_CHAR) ? "" : "L";
      if (val <= (127 * 2 + 1) && (_sch_istable[(val) & 0xff] & (unsigned short)(_sch_isgraph)))
 error ("%s before %s'%c'", string, ell, val);
      else
 error ("%s before %s'\\x%x'", string, ell, val);
    }
  else if (last_token == CPP_STRING
    || last_token == CPP_WSTRING)
    error ("%s before string constant", string);
  else if (last_token == CPP_NUMBER)
    error ("%s before numeric constant", string);
  else if (last_token == CPP_NAME)
    error ("%s before \"%s\"", string, ((char *)(yylval.ttype)->identifier.id.str));
  else
    error ("%s before '%s' token", string, cpp_type2name (last_token));
}

static int
yylexname ()
{
  tree decl;


  if (((yylval.ttype)->common.lang_flag_0))
    {
      enum rid rid_code = (((struct c_common_identifier *) (yylval.ttype))->node.rid_code);

      {
 int yycode = rid_to_yy[(int) rid_code];
 if (yycode == 328)
   {


     const char *name = fname_string (rid_code);

     yylval.ttype = build_string (strlen (name) + 1, name);
     ((yylval.ttype)->common.lang_flag_0) = 1;
     last_token = CPP_STRING;
     return 265;
   }


 yylval.ttype = ridpointers[(int) rid_code];
 return yycode;
      }
    }

  decl = lookup_name (yylval.ttype);
  if (decl)
    {
      if (((enum tree_code) (decl)->common.code) == TYPE_DECL)
 return 259;
    }

  return 258;
}




static int
yylexstring ()
{
  enum cpp_ttype next_type;
  tree orig = yylval.ttype;

  next_type = c_lex (&yylval.ttype);
  if (next_type == CPP_STRING
      || next_type == CPP_WSTRING
      || (next_type == CPP_NAME && yylexname () == 265))
    {
      varray_type strings;

      static int last_lineno = 0;
      static const char *last_input_filename = 0;
      if (warn_traditional && !in_system_header
   && (lineno != last_lineno || !last_input_filename ||
       strcmp (last_input_filename, input_filename)))
 {
   warning ("traditional C rejects string concatenation");
   last_lineno = lineno;
   last_input_filename = input_filename;
 }

      strings = varray_init (32, VARRAY_DATA_TREE, "strings");
      do { if ((strings)->elements_used >= (strings)->num_elements) (((strings)) = varray_grow ((strings), 2 * (strings)->num_elements)); (strings)->data.tree[(strings)->elements_used++] = (orig); } while (0);

      do
 {
   do { if ((strings)->elements_used >= (strings)->num_elements) (((strings)) = varray_grow ((strings), 2 * (strings)->num_elements)); (strings)->data.tree[(strings)->elements_used++] = (yylval.ttype); } while (0);
   next_type = c_lex (&yylval.ttype);
 }
      while (next_type == CPP_STRING
      || next_type == CPP_WSTRING
      || (next_type == CPP_NAME && yylexname () == 265));

      yylval.ttype = combine_strings (strings);
    }
  else
    yylval.ttype = orig;


  _cpp_backup_tokens (parse_in, 1);

  return 265;
}

extern _Bool in_omp_pragma;
extern _Bool seen_omp_paren;
static int
check_omp_string (char * s, _Bool * status)
{
  *status = 1;

  if (!strcmp (s, "\n"))
  {
    in_omp_pragma = seen_omp_paren = 0;
    return '\n';
  }
  if ((!strcmp (s, "mips_frequency_hint") ||
       !strcmp (s, "frequency_hint")) && !seen_omp_paren)
    return 268;
  if (!strcasecmp (s, "never") && !seen_omp_paren)
    return 269;
  if (!strcasecmp (s, "init") && !seen_omp_paren)
    return 270;
  if (!strcasecmp (s, "frequent") && !seen_omp_paren)
    return 271;
  if (!strcmp (s, "options") && !seen_omp_paren)
    return 267;
  if (!strcmp (s, "private") && !seen_omp_paren)
    return 272;
  if (!strcmp (s, "parallel") && !seen_omp_paren)
    return 288;
  if (!strcmp (s, "omp") && !seen_omp_paren)
    return 287;
  if (!strcmp (s, "copyprivate") && !seen_omp_paren)
    return 273;
  if (!strcmp (s, "firstprivate") && !seen_omp_paren)
    return 274;
  if (!strcmp (s, "lastprivate") && !seen_omp_paren)
    return 275;
  if (!strcmp (s, "shared"))
    return 276;
  if (!strcmp (s, "none"))
    return 278;
  if (!strcmp (s, "reduction") && !seen_omp_paren)
    return 279;
  if (!strcmp (s, "copyin") && !seen_omp_paren)
    return 280;
  if (!strcmp (s, "static"))
  {
    fprintf (stderr,"NYI\n");
    fancy_abort ("c-parse.y", 3721, __FUNCTION__);
  }
  if (!strcmp (s, "dynamic"))
    return 281;
  if (!strcmp (s, "guided"))
    return 282;
  if (!strcmp (s, "runtime"))
    return 283;
  if (!strcmp (s, "ordered"))
    return 284;
  if (!strcmp (s, "schedule"))
    return 285;
  if (!strcmp (s, "nowait"))
    return 286;
  if (!strcmp (s, "num_threads") && !seen_omp_paren)
    return 289;
  if (!strcmp (s, "sections") && !seen_omp_paren)
    return 290;
  if (!strcmp (s, "section"))
    return 291;
  if (!strcmp (s, "single"))
    return 292;
  if (!strcmp (s, "master") && !seen_omp_paren)
    return 293;
  if (!strcmp (s, "critical") && !seen_omp_paren)
    return 294;
  if (!strcmp (s, "barrier") && !seen_omp_paren)
    return 295;
  if (!strcmp (s, "atomic") && !seen_omp_paren)
    return 296;
  if (!strcmp (s, "flush") && !seen_omp_paren)
    return 297;
  if (!strcmp (s, "threadprivate") && !seen_omp_paren)
    return 298;


  if(!strcmp(s, "sl2") && !seen_omp_paren)
  return 358;
  if(!strcmp(s, "sl2_major_sections") && !seen_omp_paren)
  return 355;
  if(!strcmp(s, "sl2_minor_sections") && !seen_omp_paren)
  return 356;
  if(!strcmp(s, "sl2_major_section") && !seen_omp_paren)
  return 357;
  if(!strcmp(s, "sl2_minor_section") && !seen_omp_paren)
  return 359;



  *status = 0;
  return 0;
}

static __inline__ int
_yylex ()
{
 get_next:
  last_token = c_lex (&yylval.ttype);
  switch (last_token)
    {
    case CPP_EQ: return '=';
    case CPP_NOT: return '!';
    case CPP_GREATER: yylval.code = GT_EXPR; return 334;
    case CPP_LESS: yylval.code = LT_EXPR; return 334;
    case CPP_PLUS: yylval.code = PLUS_EXPR; return '+';
    case CPP_MINUS: yylval.code = MINUS_EXPR; return '-';
    case CPP_MULT: yylval.code = MULT_EXPR; return '*';
    case CPP_DIV: yylval.code = TRUNC_DIV_EXPR; return '/';
    case CPP_MOD: yylval.code = TRUNC_MOD_EXPR; return '%';
    case CPP_AND: yylval.code = BIT_AND_EXPR; return '&';
    case CPP_OR: yylval.code = BIT_IOR_EXPR; return '|';
    case CPP_XOR: yylval.code = BIT_XOR_EXPR; return '^';
    case CPP_RSHIFT: yylval.code = RSHIFT_EXPR; return 335;
    case CPP_LSHIFT: yylval.code = LSHIFT_EXPR; return 336;

    case CPP_COMPL: return '~';
    case CPP_AND_AND: return 332;
    case CPP_OR_OR: return 331;
    case CPP_QUERY: return '?';
    case CPP_OPEN_PAREN: return '(';
    case CPP_EQ_EQ: yylval.code = EQ_EXPR; return 333;
    case CPP_NOT_EQ: yylval.code = NE_EXPR; return 333;
    case CPP_GREATER_EQ:yylval.code = GE_EXPR; return 334;
    case CPP_LESS_EQ: yylval.code = LE_EXPR; return 334;

    case CPP_PLUS_EQ: yylval.code = PLUS_EXPR; return 330;
    case CPP_MINUS_EQ: yylval.code = MINUS_EXPR; return 330;
    case CPP_MULT_EQ: yylval.code = MULT_EXPR; return 330;
    case CPP_DIV_EQ: yylval.code = TRUNC_DIV_EXPR; return 330;
    case CPP_MOD_EQ: yylval.code = TRUNC_MOD_EXPR; return 330;
    case CPP_AND_EQ: yylval.code = BIT_AND_EXPR; return 330;
    case CPP_OR_EQ: yylval.code = BIT_IOR_EXPR; return 330;
    case CPP_XOR_EQ: yylval.code = BIT_XOR_EXPR; return 330;
    case CPP_RSHIFT_EQ: yylval.code = RSHIFT_EXPR; return 330;
    case CPP_LSHIFT_EQ: yylval.code = LSHIFT_EXPR; return 330;

    case CPP_OPEN_SQUARE: return '[';
    case CPP_CLOSE_SQUARE: return ']';
    case CPP_OPEN_BRACE: return '{';
    case CPP_CLOSE_BRACE: return '}';
    case CPP_ELLIPSIS: return 266;

    case CPP_PLUS_PLUS: return 338;
    case CPP_MINUS_MINUS: return 337;
    case CPP_DEREF: return 341;
    case CPP_DOT: return '.';



    case CPP_COLON: ; return ':';
    case CPP_COMMA: ; return ',';
    case CPP_CLOSE_PAREN: ; return ')';
    case CPP_SEMICOLON: ; return ';';

    case CPP_EOF:
      return 0;

    case CPP_NAME:
      {
 int ret = yylexname ();
 if (ret == 265)
   return yylexstring ();
 else if (ret == 258 && in_omp_pragma)
 {
          if (((enum tree_code) (yylval.ttype)->common.code) != IDENTIFIER_NODE) fancy_abort ("c-parse.y", 3845, __FUNCTION__);
   char * omp_name = ((char *)(yylval.ttype)->identifier.id.str);
   _Bool valid = 0;
   int code = check_omp_string (omp_name, &valid);
   if (valid) return code;
 }
 return ret;
      }

    case CPP_NUMBER:
    case CPP_CHAR:
    case CPP_WCHAR:
      return 264;

    case CPP_STRING:
    case CPP_WSTRING:
      return yylexstring ();



    case CPP_ATSIGN:



    case CPP_SCOPE:
    case CPP_DEREF_STAR:
    case CPP_DOT_STAR:
    case CPP_MIN_EQ:
    case CPP_MAX_EQ:
    case CPP_MIN:
    case CPP_MAX:

    case CPP_HASH:
    case CPP_PASTE:
      error ("syntax error at '%s' token", cpp_type2name (last_token));
      goto get_next;

    default:
      fancy_abort ("c-parse.y", 3883, __FUNCTION__);
    }

}

static int
yylex()
{
  int r;
  timevar_push (TV_LEX);
  r = _yylex();
  timevar_pop (TV_LEX);
  return r;
}



static void
yyprint (file, yychar, yyl)
     FILE *file;
     int yychar;
     YYSTYPE yyl;
{
  tree t = yyl.ttype;

  fprintf (file, " [%s]", cpp_type2name (last_token));

  switch (yychar)
    {
    case 258:
    case 259:
    case 352:
    case 262:
    case 263:
    case 260:
    case 261:
      if (((char *)(t)->identifier.id.str))
 fprintf (file, " `%s'", ((char *)(t)->identifier.id.str));
      break;

    case 264:
      fprintf (file, " %s", (mode_name[(int) (((((t)->common.type))->type.mode))]));
      if (((enum tree_code) (t)->common.code) == INTEGER_CST)
 fprintf (file,







   " 0x%llx%016llx",
# 3944 "c-parse.y"
   (((t)->int_cst.int_cst).high), (((t)->int_cst.int_cst).low));
      break;
    }
}






void
free_parser_stacks ()
{
  if (malloced_yyss)
    {
      free (malloced_yyss);
      free (malloced_yyvs);
    }
}

# 1 "../../../kgccfe/gnu/MIPS/gt-c-parse.h" 1
# 25 "../../../kgccfe/gnu/MIPS/gt-c-parse.h"
const struct ggc_root_tab gt_ggc_r_gt_c_parse_h[] = {
  {
    &declspec_stack,
    1,
    sizeof (declspec_stack),
    &gt_ggc_mx_lang_tree_node

  },
  {
    &all_prefix_attributes,
    1,
    sizeof (all_prefix_attributes),
    &gt_ggc_mx_lang_tree_node

  },
  {
    &prefix_attributes,
    1,
    sizeof (prefix_attributes),
    &gt_ggc_mx_lang_tree_node

  },
  {
    &current_declspecs,
    1,
    sizeof (current_declspecs),
    &gt_ggc_mx_lang_tree_node

  },
  { ((void *)0), 0, 0, ((void *)0) }
};
# 3965 "c-parse.y" 2
