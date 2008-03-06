# 1 "parse.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "parse.c"
# 68 "parse.c"
   enum yytokentype {
     IDENTIFIER = 258,
     tTYPENAME = 259,
     SELFNAME = 260,
     PFUNCNAME = 261,
     SCSPEC = 262,
     TYPESPEC = 263,
     CV_QUALIFIER = 264,
     CONSTANT = 265,
     VAR_FUNC_NAME = 266,
     STRING = 267,
     ELLIPSIS = 268,
     OPTIONS_PRAGMA = 269,
     EXEC_FREQ_PRAGMA = 270,
     FREQ_NEVER = 271,
     FREQ_INIT = 272,
     FREQ_FREQUENT = 273,
     OMP_PRAGMA = 274,
     OMP_PARALLEL = 275,
     OMP_PRIVATE = 276,
     OMP_COPYPRIVATE = 277,
     OMP_FIRSTPRIVATE = 278,
     OMP_LASTPRIVATE = 279,
     OMP_SHARED = 280,
     OMP_DEFAULT = 281,
     OMP_NONE = 282,
     OMP_REDUCTION = 283,
     OMP_COPYIN = 284,
     OMP_DYNAMIC = 285,
     OMP_GUIDED = 286,
     OMP_RUNTIME = 287,
     OMP_ORDERED = 288,
     OMP_SCHEDULE = 289,
     OMP_NOWAIT = 290,
     OMP_NUM_THREADS = 291,
     OMP_SECTIONS = 292,
     OMP_SECTION = 293,
     OMP_SINGLE = 294,
     OMP_MASTER = 295,
     OMP_CRITICAL = 296,
     OMP_BARRIER = 297,
     OMP_ATOMIC = 298,
     OMP_FLUSH = 299,
     OMP_THREADPRIVATE = 300,
     OMP_STATIC = 301,
     SIZEOF = 302,
     ENUM = 303,
     IF = 304,
     ELSE = 305,
     WHILE = 306,
     DO = 307,
     FOR = 308,
     SWITCH = 309,
     CASE = 310,
     DEFAULT = 311,
     BREAK = 312,
     CONTINUE = 313,
     RETURN_KEYWORD = 314,
     GOTO = 315,
     ASM_KEYWORD = 316,
     TYPEOF = 317,
     ALIGNOF = 318,
     SIGOF = 319,
     ATTRIBUTE = 320,
     EXTENSION = 321,
     LABEL = 322,
     REALPART = 323,
     IMAGPART = 324,
     VA_ARG = 325,
     AGGR = 326,
     VISSPEC = 327,
     DELETE = 328,
     NEW = 329,
     THIS = 330,
     OPERATOR = 331,
     CXX_TRUE = 332,
     CXX_FALSE = 333,
     OFFSETOF = 334,
     NAMESPACE = 335,
     TYPENAME_KEYWORD = 336,
     USING = 337,
     LEFT_RIGHT = 338,
     TEMPLATE = 339,
     TYPEID = 340,
     DYNAMIC_CAST = 341,
     STATIC_CAST = 342,
     REINTERPRET_CAST = 343,
     CONST_CAST = 344,
     SCOPE = 345,
     EXPORT = 346,
     EMPTY = 347,
     NSNAME = 348,
     PTYPENAME = 349,
     THROW = 350,
     ASSIGN = 351,
     OROR = 352,
     ANDAND = 353,
     MIN_MAX = 354,
     EQCOMPARE = 355,
     ARITHCOMPARE = 356,
     RSHIFT = 357,
     LSHIFT = 358,
     DOT_STAR = 359,
     POINTSAT_STAR = 360,
     MINUSMINUS = 361,
     PLUSPLUS = 362,
     UNARY = 363,
     HYPERUNARY = 364,
     POINTSAT = 365,
     CATCH = 366,
     TRY = 367,
     EXTERN_LANG_STRING = 368,
     ALL = 369,
     PRE_PARSED_CLASS_DECL = 370,
     DEFARG = 371,
     DEFARG_MARKER = 372,
     PRE_PARSED_FUNCTION_DECL = 373,
     TYPENAME_DEFN = 374,
     IDENTIFIER_DEFN = 375,
     PTYPENAME_DEFN = 376,
     SL2_SECTIONS = 377,
     SL2_MINOR_SECTIONS = 378,
     SL2_SECTION = 379,
     PRAGMA_SL2 = 380,
     SL2_MINOR_SECTION = 381,
     END_OF_LINE = 382,
     END_OF_SAVED_INPUT = 383
   };
# 35 "../../../kg++fe/gnu/cp/parse.y"

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
# 37 "../../../kg++fe/gnu/cp/parse.y" 2

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
        
# 39 "../../../kg++fe/gnu/cp/parse.y" 2

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
# 41 "../../../kg++fe/gnu/cp/parse.y" 2
# 1 "../../../kg++fe/omp_types.h" 1
# 42 "../../../kg++fe/gnu/cp/parse.y" 2
# 1 "../../../kg++fe/omp_directive.h" 1
# 31 "../../../kg++fe/omp_directive.h"
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
extern void expand_start_do_loop (tree, tree, tree);
extern void expand_end_do_loop(void);



extern void expand_start_sl2_sections (_Bool is_minor_thread);
extern void expand_end_sl2_sections ();
extern void expand_start_sl2_section (_Bool is_minor_thread);
extern void expand_end_sl2_section ();
# 43 "../../../kg++fe/gnu/cp/parse.y" 2
# 1 "../../../kg++fe/gnu/input.h" 1
# 23 "../../../kg++fe/gnu/input.h"
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
# 44 "../../../kg++fe/gnu/cp/parse.y" 2
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
# 45 "../../../kg++fe/gnu/cp/parse.y" 2
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
# 46 "../../../kg++fe/gnu/cp/parse.y" 2
# 1 "../../../kg++fe/gnu/cp/decl.h" 1
# 22 "../../../kg++fe/gnu/cp/decl.h"
enum decl_context
{ NORMAL,
  FUNCDEF,
  PARM,
  CATCHPARM,
  FIELD,
  BITFIELD,
  TYPENAME,
  MEMFUNCDEF
};


extern tree grokdeclarator (tree, tree, enum decl_context, int, tree *);




extern tree last_function_parms;
# 47 "../../../kg++fe/gnu/cp/parse.y" 2
# 1 "../../../kg++fe/gnu/cp/lex.h" 1
# 55 "../../../kg++fe/gnu/cp/lex.h"
typedef unsigned long RID_BIT_TYPE;
# 71 "../../../kg++fe/gnu/cp/lex.h"
extern tree lastiddecl;


extern int looking_for_typename;
extern int looking_for_template;


extern tree got_scope;
extern tree got_object;



extern int pending_lang_change;

extern int yylex (void);
# 48 "../../../kg++fe/gnu/cp/parse.y" 2
# 1 "../../../kg++fe/gnu/c-pragma.h" 1
# 31 "../../../kg++fe/gnu/c-pragma.h"
extern int yydebug;

struct cpp_reader;
extern struct cpp_reader* parse_in;
# 52 "../../../kg++fe/gnu/c-pragma.h"
extern tree weak_decls;
# 61 "../../../kg++fe/gnu/c-pragma.h"
extern void init_pragma (void);
# 73 "../../../kg++fe/gnu/c-pragma.h"
extern void maybe_apply_pragma_weak (tree);
extern tree maybe_apply_renaming_pragma (tree, tree);
extern void add_to_renaming_pragma_list (tree, tree);

extern int c_lex (tree *);
# 49 "../../../kg++fe/gnu/cp/parse.y" 2
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
# 50 "../../../kg++fe/gnu/cp/parse.y" 2
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
# 51 "../../../kg++fe/gnu/cp/parse.y" 2
# 1 "../../../kg++fe/gnu/ggc.h" 1
# 25 "../../../kg++fe/gnu/ggc.h"
# 1 "../../../kg++fe/gnu/varray.h" 1
# 26 "../../../kg++fe/gnu/ggc.h" 2
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
# 52 "../../../kg++fe/gnu/cp/parse.y" 2
# 63 "../../../kg++fe/gnu/cp/parse.y"
static short *malloced_yyss;
static void *malloced_yyvs;
static int class_template_ok_as_expr;
# 104 "../../../kg++fe/gnu/cp/parse.y"
static const char *cond_stmt_keyword;


static tree current_declspecs;






static tree prefix_attributes;


static tree current_enum_type;



static tree saved_scopes;

static tree empty_parms (void);
static tree parse_decl0 (tree, tree, tree, tree, int);
static tree parse_decl (tree, tree, int);
static void parse_end_decl (tree, tree, tree);
static tree parse_field0 (tree, tree, tree, tree, tree, tree);
static tree parse_field (tree, tree, tree, tree);
static tree parse_bitfield0 (tree, tree, tree, tree, tree);
static tree parse_bitfield (tree, tree, tree);
static tree parse_method (tree, tree, tree);
static void frob_specs (tree, tree);
static void check_class_key (tree, tree);
static tree parse_scoped_id (tree);
static tree parse_xref_tag (tree, tree, int);
static tree parse_handle_class_head (tree, tree, tree, int, int *);
static void parse_decl_instantiation (tree, tree, tree);
static int parse_begin_function_definition (tree, tree);
static tree parse_finish_call_expr (tree, tree, int);

_Bool In_MP_Region = 0;
static _Bool In_MP_Section = 0;

static tree mp_locals[10];
static int mp_nesting = -1;


static __inline__ tree
empty_parms ()
{
  tree parms;


  if (in_system_header && scope_chain->class_type == ((void *)0)
      && scope_chain->lang_name == cp_global_trees[CPTI_LANG_NAME_C])
    parms = (tree) ((void *)0);
  else

  parms = global_trees[TI_VOID_LIST_NODE];
  return parms;
}




static void
frob_specs (specs_attrs, lookups)
     tree specs_attrs, lookups;
{
  save_type_access_control (lookups);
  split_specs_attrs (specs_attrs, &current_declspecs, &prefix_attributes);
  if (current_declspecs
      && ((enum tree_code) (current_declspecs)->common.code) != TREE_LIST)
    current_declspecs = build_tree_list ((tree) ((void *)0), current_declspecs);
  if (have_extern_spec)
    {






      current_declspecs = tree_cons (global_trees[TI_ERROR_MARK],
         (__builtin_constant_p ("extern") ? get_identifier_with_length (("extern"), (unsigned) strlen ("extern")) : (get_identifier) ("extern")),
         current_declspecs);
      have_extern_spec = 0;
    }
}

static tree
parse_decl (declarator, attributes, initialized)
     tree declarator, attributes;
     int initialized;
{
  return start_decl (declarator, current_declspecs, initialized,
       attributes, prefix_attributes);
}

static tree
parse_decl0 (declarator, specs_attrs, lookups, attributes, initialized)
     tree declarator, specs_attrs, lookups, attributes;
     int initialized;
{
  frob_specs (specs_attrs, lookups);
  return parse_decl (declarator, attributes, initialized);
}

extern tree pop_mp_local_vars (void);



static _Bool
Is_shared_mp_var (tree decl)
{
  return ((enum tree_code) (decl)->common.code) == VAR_DECL && ((decl)->decl.context) &&
         ((enum tree_code) (((decl)->decl.context))->common.code) != NAMESPACE_DECL &&
  ((enum tree_code) (((decl)->decl.context))->common.code) != RECORD_TYPE &&
  !((decl)->decl.external_flag) && !((decl)->decl.weak_flag) &&
  !((decl)->common.static_flag);
}

static void
parse_end_decl (decl, init, asmspec)
     tree decl, init, asmspec;
{


  if (decl)
    decl_type_access_control (decl);
  cp_finish_decl (decl, init, asmspec, init ? (128) : 0);

  if (In_MP_Region && decl && Is_shared_mp_var (decl))
    mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting],
                                     build_tree_list (((void *)0), decl));
  else if (In_MP_Region && !decl)
  {
    decl = pop_mp_local_vars ();


    while (decl)
    {
      if (Is_shared_mp_var (decl))
        mp_locals[mp_nesting] = chainon (mp_locals[mp_nesting],
                                         build_tree_list (((void *)0), decl));
      decl = pop_mp_local_vars ();
    }
  }
}

static tree
parse_field (declarator, attributes, asmspec, init)
     tree declarator, attributes, asmspec, init;
{
  tree d = grokfield (declarator, current_declspecs, init, asmspec,
        chainon (attributes, prefix_attributes));
  decl_type_access_control (d);
  return d;
}

static tree
parse_field0 (declarator, specs_attrs, lookups, attributes, asmspec, init)
     tree declarator, specs_attrs, lookups, attributes, asmspec, init;
{
  frob_specs (specs_attrs, lookups);
  return parse_field (declarator, attributes, asmspec, init);
}

static tree
parse_bitfield (declarator, attributes, width)
     tree declarator, attributes, width;
{
  tree d = grokbitfield (declarator, current_declspecs, width);
  cplus_decl_attributes (&d, chainon (attributes, prefix_attributes), 0);
  decl_type_access_control (d);
  return d;
}

static tree
parse_bitfield0 (declarator, specs_attrs, lookups, attributes, width)
     tree declarator, specs_attrs, lookups, attributes, width;
{
  frob_specs (specs_attrs, lookups);
  return parse_bitfield (declarator, attributes, width);
}

static tree
parse_method (declarator, specs_attrs, lookups)
     tree declarator, specs_attrs, lookups;
{
  tree d;
  frob_specs (specs_attrs, lookups);
  d = start_method (current_declspecs, declarator, prefix_attributes);
  decl_type_access_control (d);
  return d;
}

static void
check_class_key (key, aggr)
     tree key;
     tree aggr;
{
  if (((enum tree_code) (key)->common.code) == TREE_LIST)
    key = ((key)->list.value);
  if ((key == cp_global_trees[CPTI_UNION_TYPE]) != (((enum tree_code) (aggr)->common.code) == UNION_TYPE))
    pedwarn ("`%s' tag used in naming `%#T'",
      key == cp_global_trees[CPTI_UNION_TYPE] ? "union"
      : key == cp_global_trees[CPTI_RECORD_TYPE] ? "struct" : "class", aggr);
}
# 331 "../../../kg++fe/gnu/cp/parse.y"
typedef union YYSTYPE
# 314 "../../../kg++fe/gnu/cp/parse.y"
{
  long itype;
  tree ttype;
  char *strtype;
  enum tree_code code;
  flagged_type_tree ftype;
  struct unparsed_text *pi;
  enum reduction_op_type red_op_type;
  enum schedule_kind_type sch_k_type;
  struct parallel_clause_list * pclause_type;
  struct for_clause_list * for_clause_type;
  struct sections_clause_list * sections_clause_type;
  struct single_clause_list * single_clause_type;
  struct parallel_for_clause_list * parallel_for_clause_type;
  struct parallel_sections_clause_list * parallel_sections_clause_type;
}
# 646 "parse.c"
 YYSTYPE;
# 565 "../../../kg++fe/gnu/cp/parse.y"



extern void yyprint (FILE *, int, YYSTYPE);
# 665 "parse.c"
# 673 "parse.c"
typedef unsigned char yytype_uint8;






typedef signed char yytype_int8;







typedef unsigned short int yytype_uint16;





typedef short int yytype_int16;
# 898 "parse.c"
static const yytype_uint8 yytranslate[] =
{
       0, 2, 2, 2, 2, 2, 2, 2, 2, 2,
     153, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 151, 2, 2, 2, 119, 107, 2,
     128, 149, 117, 115, 96, 116, 127, 118, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 99, 97,
     110, 100, 111, 102, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 129, 2, 152, 106, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 95, 105, 150, 122, 2, 2, 2,
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
      75, 76, 77, 78, 79, 80, 81, 82, 83, 84,
      85, 86, 87, 88, 89, 90, 91, 92, 93, 94,
      98, 101, 103, 104, 108, 109, 112, 113, 114, 120,
     121, 123, 124, 125, 126, 130, 131, 132, 133, 134,
     135, 136, 137, 138, 139, 140, 141, 142, 143, 144,
     145, 146, 147, 148
};




static const yytype_uint16 yyprhs[] =
{
       0, 0, 3, 4, 6, 7, 10, 13, 15, 16,
      17, 18, 20, 22, 23, 26, 29, 31, 32, 36,
      38, 44, 49, 55, 60, 61, 68, 69, 75, 77,
      80, 82, 85, 87, 89, 90, 97, 100, 104, 108,
     112, 116, 121, 122, 123, 131, 134, 138, 140, 142,
     145, 148, 150, 153, 154, 160, 164, 166, 168, 170,
     174, 176, 177, 180, 183, 187, 189, 193, 195, 199,
     201, 205, 208, 211, 214, 216, 218, 224, 229, 232,
     235, 239, 243, 246, 249, 253, 257, 260, 263, 266,
     269, 272, 275, 277, 279, 281, 283, 284, 286, 289,
     290, 292, 293, 300, 304, 308, 312, 313, 322, 328,
     329, 339, 346, 347, 356, 362, 363, 373, 380, 383,
     386, 388, 391, 393, 400, 409, 414, 421, 428, 433,
     436, 438, 441, 444, 446, 449, 451, 454, 457, 462,
     465, 466, 470, 471, 472, 474, 478, 481, 482, 484,
     486, 488, 493, 496, 498, 500, 502, 504, 506, 508,
     510, 512, 514, 516, 518, 520, 521, 528, 529, 536,
     537, 543, 544, 550, 551, 559, 560, 568, 569, 576,
     577, 584, 585, 586, 592, 598, 600, 602, 608, 614,
     615, 617, 619, 620, 622, 624, 628, 629, 632, 634,
     636, 639, 641, 645, 647, 649, 651, 653, 655, 657,
     659, 661, 665, 667, 671, 672, 674, 676, 677, 685,
     687, 689, 693, 698, 702, 706, 710, 714, 718, 720,
     722, 724, 727, 730, 733, 736, 739, 742, 745, 750,
     753, 758, 761, 765, 769, 774, 779, 785, 791, 798,
     801, 806, 812, 815, 818, 822, 826, 830, 832, 836,
     839, 843, 848, 850, 853, 859, 861, 865, 869, 873,
     877, 881, 885, 889, 893, 897, 901, 905, 909, 913,
     917, 921, 925, 929, 933, 937, 943, 947, 951, 953,
     956, 958, 962, 966, 970, 974, 978, 982, 986, 990,
     994, 998, 1002, 1006, 1010, 1014, 1018, 1022, 1026, 1030,
    1036, 1040, 1044, 1046, 1049, 1053, 1057, 1059, 1061, 1063,
    1065, 1067, 1068, 1074, 1080, 1086, 1092, 1098, 1100, 1102,
    1104, 1106, 1109, 1111, 1114, 1117, 1121, 1126, 1131, 1133,
    1135, 1137, 1141, 1143, 1145, 1147, 1149, 1151, 1155, 1159,
    1163, 1164, 1169, 1174, 1177, 1182, 1185, 1192, 1197, 1202,
    1205, 1208, 1210, 1215, 1217, 1225, 1233, 1241, 1249, 1254,
    1259, 1262, 1265, 1268, 1270, 1275, 1278, 1281, 1287, 1291,
    1294, 1297, 1303, 1307, 1313, 1317, 1322, 1329, 1332, 1334,
    1337, 1339, 1342, 1344, 1346, 1347, 1350, 1353, 1357, 1361,
    1365, 1368, 1371, 1374, 1376, 1378, 1380, 1383, 1386, 1389,
    1392, 1394, 1396, 1398, 1400, 1403, 1406, 1410, 1414, 1418,
    1423, 1425, 1428, 1431, 1433, 1435, 1438, 1441, 1444, 1446,
    1449, 1452, 1456, 1458, 1461, 1464, 1466, 1468, 1470, 1472,
    1474, 1476, 1478, 1483, 1488, 1493, 1498, 1500, 1502, 1504,
    1506, 1510, 1512, 1516, 1518, 1522, 1523, 1528, 1529, 1536,
    1540, 1541, 1546, 1548, 1552, 1556, 1557, 1562, 1566, 1567,
    1569, 1571, 1574, 1581, 1583, 1587, 1588, 1590, 1595, 1602,
    1607, 1609, 1611, 1613, 1615, 1617, 1621, 1622, 1625, 1627,
    1630, 1634, 1639, 1641, 1643, 1647, 1652, 1656, 1662, 1666,
    1670, 1674, 1675, 1679, 1683, 1687, 1688, 1691, 1694, 1695,
    1702, 1703, 1709, 1712, 1715, 1718, 1719, 1720, 1721, 1733,
    1735, 1736, 1738, 1739, 1741, 1743, 1746, 1749, 1752, 1755,
    1758, 1761, 1765, 1770, 1774, 1777, 1781, 1786, 1788, 1791,
    1793, 1796, 1799, 1802, 1805, 1809, 1813, 1816, 1817, 1820,
    1824, 1826, 1831, 1833, 1837, 1839, 1841, 1844, 1847, 1851,
    1855, 1856, 1858, 1862, 1865, 1868, 1870, 1873, 1876, 1879,
    1882, 1885, 1888, 1891, 1893, 1896, 1899, 1903, 1905, 1908,
    1911, 1916, 1921, 1924, 1926, 1932, 1937, 1939, 1940, 1942,
    1946, 1947, 1949, 1953, 1955, 1957, 1959, 1961, 1966, 1971,
    1976, 1981, 1986, 1990, 1995, 2000, 2005, 2010, 2014, 2017,
    2019, 2021, 2025, 2027, 2031, 2034, 2036, 2043, 2044, 2047,
    2049, 2052, 2054, 2057, 2061, 2065, 2067, 2071, 2073, 2076,
    2080, 2084, 2087, 2090, 2094, 2096, 2101, 2106, 2110, 2114,
    2117, 2119, 2121, 2124, 2126, 2128, 2131, 2134, 2136, 2139,
    2143, 2147, 2150, 2153, 2157, 2159, 2163, 2167, 2170, 2173,
    2177, 2179, 2184, 2188, 2193, 2197, 2199, 2202, 2205, 2208,
    2211, 2214, 2217, 2220, 2222, 2225, 2230, 2235, 2238, 2240,
    2242, 2244, 2246, 2249, 2254, 2258, 2262, 2265, 2268, 2271,
    2274, 2276, 2279, 2282, 2285, 2288, 2292, 2294, 2297, 2301,
    2306, 2309, 2312, 2315, 2318, 2321, 2324, 2329, 2332, 2334,
    2337, 2340, 2344, 2346, 2350, 2353, 2357, 2360, 2363, 2367,
    2369, 2373, 2378, 2380, 2383, 2387, 2390, 2393, 2395, 2399,
    2402, 2405, 2407, 2410, 2414, 2416, 2420, 2427, 2432, 2437,
    2441, 2447, 2451, 2455, 2459, 2462, 2464, 2466, 2469, 2472,
    2475, 2476, 2478, 2480, 2483, 2487, 2488, 2493, 2495, 2496,
    2497, 2503, 2505, 2506, 2510, 2512, 2514, 2516, 2519, 2521,
    2524, 2525, 2530, 2532, 2533, 2534, 2540, 2541, 2542, 2550,
    2551, 2552, 2553, 2554, 2567, 2568, 2569, 2577, 2578, 2584,
    2585, 2593, 2594, 2599, 2602, 2605, 2608, 2612, 2619, 2628,
    2639, 2648, 2661, 2672, 2683, 2688, 2692, 2695, 2698, 2700,
    2702, 2704, 2706, 2708, 2709, 2710, 2716, 2717, 2718, 2724,
    2726, 2729, 2730, 2731, 2732, 2738, 2740, 2742, 2746, 2750,
    2753, 2756, 2759, 2762, 2765, 2767, 2770, 2771, 2773, 2774,
    2776, 2778, 2779, 2781, 2783, 2787, 2792, 2800, 2802, 2806,
    2807, 2809, 2811, 2813, 2816, 2819, 2822, 2824, 2827, 2830,
    2831, 2835, 2837, 2839, 2841, 2844, 2847, 2850, 2855, 2858,
    2861, 2865, 2869, 2873, 2877, 2880, 2884, 2886, 2889, 2891,
    2893, 2894, 2895, 2897, 2903, 2907, 2908, 2912, 2913, 2914,
    2919, 2922, 2924, 2926, 2928, 2932, 2933, 2937, 2941, 2945,
    2947, 2948, 2952, 2956, 2960, 2964, 2968, 2972, 2976, 2980,
    2984, 2988, 2992, 2996, 3000, 3004, 3008, 3012, 3016, 3020,
    3024, 3028, 3032, 3036, 3040, 3045, 3049, 3053, 3057, 3061,
    3066, 3070, 3074, 3080, 3086, 3091, 3095, 3096, 3097, 3101,
    3105, 3110, 3112, 3115, 3120, 3125, 3130, 3135, 3140, 3145,
    3150, 3157, 3162, 3163, 3167, 3168, 3169, 3170, 3171, 3184,
    3188, 3193, 3195, 3198, 3203, 3208, 3213, 3220, 3225, 3232,
    3234, 3236, 3238, 3240, 3242, 3244, 3245, 3249, 3253, 3258,
    3260, 3263, 3268, 3273, 3278, 3285, 3287, 3288, 3293, 3295,
    3297, 3300, 3302, 3304, 3307, 3308, 3312, 3316, 3317, 3321,
    3325, 3330, 3332, 3335, 3340, 3345, 3350, 3352, 3353, 3357,
    3362, 3368, 3370, 3373, 3378, 3383, 3388, 3393, 3398, 3403,
    3408, 3413, 3418, 3425, 3430, 3435, 3442, 3444, 3445, 3449,
    3454, 3460, 3462, 3465, 3470, 3475, 3480, 3485, 3490, 3495,
    3500, 3505, 3510, 3517, 3522, 3523, 3527, 3531, 3532, 3536,
    3540, 3547, 3549, 3553, 3554, 3559, 3563, 3567, 3574, 3575,
    3579, 3583, 3590, 3592, 3594, 3596, 3598, 3600, 3602, 3604,
    3606, 3608, 3610, 3612, 3613, 3619, 3620, 3626, 3630, 3632,
    3634, 3637, 3639, 3641, 3644, 3645, 3651, 3652, 3658, 3660,
    3662, 3664, 3666, 3668, 3672, 3677, 3679, 3681, 3683, 3687,
    3689, 3691, 3693, 3695, 3697, 3701, 3703, 3705, 3707, 3709,
    3711, 3713, 3715
};


static const yytype_int16 yyrhs[] =
{
     155, 0, -1, -1, 156, -1, -1, 157, 163, -1,
     156, 163, -1, 156, -1, -1, -1, -1, 66, -1,
      61, -1, -1, 164, 165, -1, 197, 194, -1, 191,
      -1, -1, 91, 166, 188, -1, 188, -1, 162, 128,
      12, 149, 97, -1, 178, 95, 158, 150, -1, 178,
     159, 197, 160, 194, -1, 178, 159, 191, 160, -1,
      -1, 80, 214, 95, 167, 158, 150, -1, -1, 80,
      95, 168, 158, 150, -1, 169, -1, 171, 97, -1,
     173, -1, 161, 165, -1, 511, -1, 525, -1, -1,
      80, 214, 100, 170, 177, 97, -1, 82, 360, -1,
      82, 374, 360, -1, 82, 374, 259, -1, 82, 176,
     214, -1, 82, 374, 214, -1, 82, 374, 176, 214,
      -1, -1, -1, 82, 80, 174, 177, 175, 298, 97,
      -1, 93, 90, -1, 176, 93, 90, -1, 259, -1,
     360, -1, 374, 360, -1, 374, 259, -1, 133, -1,
     178, 133, -1, -1, 84, 110, 180, 183, 111, -1,
      84, 110, 111, -1, 179, -1, 181, -1, 187, -1,
     183, 96, 187, -1, 214, -1, -1, 320, 184, -1,
      81, 184, -1, 179, 320, 184, -1, 185, -1, 185,
     100, 274, -1, 438, -1, 438, 100, 254, -1, 186,
      -1, 186, 100, 235, -1, 182, 189, -1, 182, 1,
      -1, 197, 194, -1, 190, -1, 188, -1, 178, 159,
     197, 160, 194, -1, 178, 159, 190, 160, -1, 161,
     189, -1, 288, 97, -1, 278, 287, 97, -1, 275,
     286, 97, -1, 312, 97, -1, 288, 97, -1, 278,
     287, 97, -1, 275, 286, 97, -1, 278, 97, -1,
     217, 97, -1, 275, 97, -1, 1, 97, -1, 1,
     150, -1, 1, 148, -1, 97, -1, 441, -1, 269,
      -1, 208, -1, -1, 207, -1, 207, 97, -1, -1,
     148, -1, -1, 210, 192, 451, 95, 196, 245, -1,
     203, 193, 195, -1, 203, 193, 409, -1, 203, 193,
       1, -1, -1, 365, 5, 128, 199, 429, 149, 347,
     444, -1, 365, 5, 83, 347, 444, -1, -1, 374,
     365, 5, 128, 200, 429, 149, 347, 444, -1, 374,
     365, 5, 83, 347, 444, -1, -1, 365, 230, 128,
     201, 429, 149, 347, 444, -1, 365, 230, 83, 347,
     444, -1, -1, 374, 365, 230, 128, 202, 429, 149,
     347, 444, -1, 374, 365, 230, 83, 347, 444, -1,
     275, 272, -1, 278, 357, -1, 357, -1, 278, 198,
      -1, 198, -1, 5, 128, 429, 149, 347, 444, -1,
     128, 5, 149, 128, 429, 149, 347, 444, -1, 5,
      83, 347, 444, -1, 128, 5, 149, 83, 347, 444,
      -1, 230, 128, 429, 149, 347, 444, -1, 230, 83,
     347, 444, -1, 278, 204, -1, 204, -1, 275, 272,
      -1, 278, 357, -1, 357, -1, 278, 198, -1, 198,
      -1, 59, 3, -1, 206, 305, -1, 206, 128, 247,
     149, -1, 206, 83, -1, -1, 99, 209, 211, -1,
      -1, -1, 213, -1, 211, 96, 213, -1, 211, 1,
      -1, -1, 215, -1, 353, -1, 367, -1, 212, 128,
     247, 149, -1, 212, 83, -1, 1, -1, 3, -1,
       4, -1, 5, -1, 94, -1, 93, -1, 3, -1,
      94, -1, 93, -1, 140, -1, 139, -1, 141, -1,
      -1, 84, 226, 284, 97, 218, 227, -1, -1, 84,
     226, 275, 272, 219, 227, -1, -1, 84, 226, 357,
     220, 227, -1, -1, 84, 226, 198, 221, 227, -1,
      -1, 7, 84, 226, 284, 97, 222, 227, -1, -1,
       7, 84, 226, 275, 272, 223, 227, -1, -1, 7,
      84, 226, 357, 224, 227, -1, -1, 7, 84, 226,
     198, 225, 227, -1, -1, -1, 94, 110, 233, 232,
     231, -1, 4, 110, 233, 232, 231, -1, 230, -1,
     228, -1, 214, 110, 233, 111, 231, -1, 5, 110,
     233, 232, 231, -1, -1, 111, -1, 113, -1, -1,
     234, -1, 235, -1, 234, 96, 235, -1, -1, 236,
     237, -1, 274, -1, 94, -1, 374, 94, -1, 254,
      -1, 365, 84, 214, -1, 116, -1, 115, -1, 124,
      -1, 123, -1, 151, -1, 246, -1, 253, -1, 83,
      -1, 128, 239, 149, -1, 83, -1, 128, 243, 149,
      -1, -1, 243, -1, 1, -1, -1, 419, 272, 289,
     298, 100, 244, 306, -1, 239, -1, 150, -1, 382,
     380, 150, -1, 382, 380, 1, 150, -1, 382, 1,
     150, -1, 253, 96, 253, -1, 253, 96, 1, -1,
     246, 96, 253, -1, 246, 96, 1, -1, 253, -1,
     246, -1, 264, -1, 161, 252, -1, 117, 252, -1,
     107, 252, -1, 122, 252, -1, 238, 252, -1, 104,
     214, -1, 281, 248, -1, 281, 128, 274, 149, -1,
     282, 248, -1, 282, 128, 274, 149, -1, 266, 346,
      -1, 266, 346, 250, -1, 266, 249, 346, -1, 266,
     249, 346, 250, -1, 266, 128, 274, 149, -1, 266,
     128, 274, 149, 250, -1, 266, 249, 128, 274, 149,
      -1, 266, 249, 128, 274, 149, 250, -1, 267, 252,
      -1, 267, 129, 152, 252, -1, 267, 129, 239, 152,
     252, -1, 68, 252, -1, 69, 252, -1, 128, 247,
     149, -1, 95, 247, 150, -1, 128, 247, 149, -1,
      83, -1, 128, 284, 149, -1, 100, 306, -1, 128,
     274, 149, -1, 251, 128, 274, 149, -1, 248, -1,
     251, 248, -1, 251, 95, 307, 318, 150, -1, 252,
      -1, 253, 121, 253, -1, 253, 120, 253, -1, 253,
     115, 253, -1, 253, 116, 253, -1, 253, 117, 253,
      -1, 253, 118, 253, -1, 253, 119, 253, -1, 253,
     114, 253, -1, 253, 113, 253, -1, 253, 112, 253,
      -1, 253, 110, 253, -1, 253, 111, 253, -1, 253,
     109, 253, -1, 253, 108, 253, -1, 253, 107, 253,
      -1, 253, 105, 253, -1, 253, 106, 253, -1, 253,
     104, 253, -1, 253, 103, 253, -1, 253, 102, 424,
      99, 253, -1, 253, 100, 253, -1, 253, 101, 253,
      -1, 98, -1, 98, 253, -1, 252, -1, 254, 121,
     254, -1, 254, 120, 254, -1, 254, 115, 254, -1,
     254, 116, 254, -1, 254, 117, 254, -1, 254, 118,
     254, -1, 254, 119, 254, -1, 254, 114, 254, -1,
     254, 113, 254, -1, 254, 112, 254, -1, 254, 110,
     254, -1, 254, 109, 254, -1, 254, 108, 254, -1,
     254, 107, 254, -1, 254, 105, 254, -1, 254, 106,
     254, -1, 254, 104, 254, -1, 254, 103, 254, -1,
     254, 102, 424, 99, 254, -1, 254, 100, 254, -1,
     254, 101, 254, -1, 98, -1, 98, 254, -1, 122,
     439, 214, -1, 122, 439, 228, -1, 257, -1, 450,
      -1, 3, -1, 94, -1, 93, -1, -1, 6, 110,
     256, 233, 232, -1, 450, 110, 256, 233, 232, -1,
      84, 214, 110, 233, 232, -1, 84, 6, 110, 233,
     232, -1, 84, 450, 110, 233, 232, -1, 255, -1,
       4, -1, 5, -1, 261, -1, 299, 261, -1, 255,
      -1, 117, 260, -1, 107, 260, -1, 128, 260, 149,
      -1, 3, 110, 233, 232, -1, 93, 110, 234, 232,
      -1, 359, -1, 255, -1, 262, -1, 128, 260, 149,
      -1, 255, -1, 10, -1, 268, -1, 12, -1, 11,
      -1, 128, 239, 149, -1, 128, 260, 149, -1, 128,
       1, 149, -1, -1, 128, 265, 385, 149, -1, 255,
     128, 247, 149, -1, 255, 83, -1, 264, 128, 247,
     149, -1, 264, 83, -1, 70, 128, 253, 96, 274,
     149, -1, 79, 128, 253, 149, -1, 264, 129, 239,
     152, -1, 264, 124, -1, 264, 123, -1, 75, -1,
       9, 128, 247, 149, -1, 363, -1, 86, 110, 274,
     111, 128, 239, 149, -1, 87, 110, 274, 111, 128,
     239, 149, -1, 88, 110, 274, 111, 128, 239, 149,
      -1, 89, 110, 274, 111, 128, 239, 149, -1, 85,
     128, 239, 149, -1, 85, 128, 274, 149, -1, 374,
       3, -1, 374, 257, -1, 374, 450, -1, 362, -1,
     362, 128, 247, 149, -1, 362, 83, -1, 270, 258,
      -1, 270, 258, 128, 247, 149, -1, 270, 258, 83,
      -1, 270, 259, -1, 270, 362, -1, 270, 259, 128,
     247, 149, -1, 270, 259, 83, -1, 270, 362, 128,
     247, 149, -1, 270, 362, 83, -1, 270, 122, 8,
      83, -1, 270, 8, 90, 122, 8, 83, -1, 270,
       1, -1, 74, -1, 374, 74, -1, 73, -1, 374,
     267, -1, 77, -1, 78, -1, -1, 264, 127, -1,
     264, 130, -1, 284, 286, 97, -1, 275, 286, 97,
      -1, 278, 287, 97, -1, 275, 97, -1, 278, 97,
      -1, 161, 271, -1, 351, -1, 357, -1, 83, -1,
     273, 83, -1, 279, 378, -1, 348, 378, -1, 284,
     378, -1, 279, -1, 348, -1, 279, -1, 276, -1,
     278, 284, -1, 284, 277, -1, 284, 280, 277, -1,
     278, 284, 277, -1, 278, 284, 280, -1, 278, 284,
     280, 277, -1, 7, -1, 277, 285, -1, 277, 7,
      -1, 348, -1, 7, -1, 278, 9, -1, 278, 7,
      -1, 278, 299, -1, 284, -1, 348, 284, -1, 284,
     280, -1, 348, 284, 280, -1, 285, -1, 280, 285,
      -1, 280, 299, -1, 299, -1, 47, -1, 63, -1,
      62, -1, 312, -1, 8, -1, 354, -1, 283, 128,
     239, 149, -1, 283, 128, 274, 149, -1, 64, 128,
     239, 149, -1, 64, 128, 274, 149, -1, 8, -1,
       9, -1, 312, -1, 294, -1, 286, 96, 290, -1,
     295, -1, 287, 96, 290, -1, 296, -1, 288, 96,
     290, -1, -1, 162, 128, 12, 149, -1, -1, 272,
     289, 298, 100, 291, 306, -1, 272, 289, 298, -1,
      -1, 298, 100, 293, 306, -1, 298, -1, 272, 289,
     292, -1, 357, 289, 292, -1, -1, 357, 289, 297,
     292, -1, 198, 289, 298, -1, -1, 299, -1, 300,
      -1, 299, 300, -1, 65, 128, 128, 301, 149, 149,
      -1, 302, -1, 301, 96, 302, -1, -1, 303, -1,
     303, 128, 3, 149, -1, 303, 128, 3, 96, 247,
     149, -1, 303, 128, 247, 149, -1, 214, -1, 7,
      -1, 8, -1, 9, -1, 214, -1, 304, 96, 214,
      -1, -1, 100, 306, -1, 253, -1, 95, 150, -1,
      95, 307, 150, -1, 95, 307, 96, 150, -1, 1,
      -1, 306, -1, 307, 96, 306, -1, 129, 253, 152,
     306, -1, 214, 99, 306, -1, 307, 96, 214, 99,
     306, -1, 138, 193, 195, -1, 138, 193, 409, -1,
     138, 193, 1, -1, -1, 309, 308, 194, -1, 137,
     253, 148, -1, 137, 1, 148, -1, -1, 311, 310,
      -1, 311, 1, -1, -1, 48, 214, 95, 313, 343,
     150, -1, -1, 48, 95, 314, 343, 150, -1, 48,
     214, -1, 48, 372, -1, 81, 367, -1, -1, -1,
      -1, 324, 325, 95, 315, 330, 150, 298, 316, 311,
     317, 309, -1, 323, -1, -1, 96, -1, -1, 96,
      -1, 71, -1, 320, 7, -1, 320, 8, -1, 320,
       9, -1, 320, 71, -1, 320, 299, -1, 320, 214,
      -1, 320, 365, 214, -1, 320, 374, 365, 214, -1,
     320, 374, 214, -1, 320, 229, -1, 320, 365, 229,
      -1, 320, 374, 365, 229, -1, 321, -1, 320, 216,
      -1, 322, -1, 321, 95, -1, 321, 99, -1, 322,
      95, -1, 322, 99, -1, 320, 216, 95, -1, 320,
     216, 99, -1, 320, 95, -1, -1, 99, 439, -1,
      99, 439, 326, -1, 327, -1, 326, 96, 439, 327,
      -1, 328, -1, 329, 439, 328, -1, 367, -1, 353,
      -1, 72, 439, -1, 7, 439, -1, 329, 72, 439,
      -1, 329, 7, 439, -1, -1, 332, -1, 330, 331,
     332, -1, 330, 331, -1, 72, 99, -1, 333, -1,
     332, 333, -1, 334, 97, -1, 334, 150, -1, 205,
      99, -1, 205, 132, -1, 205, 59, -1, 205, 95,
      -1, 97, -1, 161, 333, -1, 182, 333, -1, 182,
     275, 97, -1, 441, -1, 275, 335, -1, 278, 336,
      -1, 357, 289, 298, 305, -1, 198, 289, 298, 305,
      -1, 99, 253, -1, 1, -1, 278, 204, 289, 298,
     305, -1, 204, 289, 298, 305, -1, 171, -1, -1,
     337, -1, 335, 96, 338, -1, -1, 340, -1, 336,
      96, 342, -1, 339, -1, 340, -1, 341, -1, 342,
      -1, 351, 289, 298, 305, -1, 4, 99, 253, 298,
      -1, 357, 289, 298, 305, -1, 198, 289, 298, 305,
      -1, 3, 99, 253, 298, -1, 99, 253, 298, -1,
     351, 289, 298, 305, -1, 4, 99, 253, 298, -1,
     357, 289, 298, 305, -1, 3, 99, 253, 298, -1,
      99, 253, 298, -1, 344, 319, -1, 319, -1, 345,
      -1, 344, 96, 345, -1, 214, -1, 214, 100, 253,
      -1, 419, 375, -1, 419, -1, 128, 274, 149, 129,
     239, 152, -1, -1, 347, 9, -1, 9, -1, 348,
       9, -1, 299, -1, 348, 299, -1, 128, 247, 149,
      -1, 128, 429, 149, -1, 83, -1, 128, 1, 149,
      -1, 351, -1, 299, 351, -1, 117, 348, 350, -1,
     107, 348, 350, -1, 117, 350, -1, 107, 350, -1,
     373, 347, 350, -1, 352, -1, 352, 349, 347, 444,
      -1, 352, 129, 239, 152, -1, 352, 129, 152, -1,
     128, 350, 149, -1, 365, 364, -1, 364, -1, 364,
      -1, 374, 364, -1, 353, -1, 355, -1, 374, 355,
      -1, 365, 364, -1, 357, -1, 299, 357, -1, 117,
     348, 356, -1, 107, 348, 356, -1, 117, 356, -1,
     107, 356, -1, 373, 347, 356, -1, 263, -1, 117,
     348, 356, -1, 107, 348, 356, -1, 117, 358, -1,
     107, 358, -1, 373, 347, 356, -1, 359, -1, 263,
     349, 347, 444, -1, 128, 358, 149, -1, 263, 129,
     239, 152, -1, 263, 129, 152, -1, 361, -1, 374,
     361, -1, 374, 255, -1, 365, 262, -1, 365, 259,
      -1, 365, 258, -1, 365, 255, -1, 365, 258, -1,
     361, -1, 374, 361, -1, 284, 128, 247, 149, -1,
     284, 128, 260, 149, -1, 284, 273, -1, 4, -1,
       5, -1, 228, -1, 366, -1, 365, 366, -1, 365,
      84, 371, 90, -1, 365, 3, 90, -1, 365, 94,
      90, -1, 4, 90, -1, 5, 90, -1, 93, 90,
      -1, 228, 90, -1, 368, -1, 374, 368, -1, 369,
     214, -1, 369, 228, -1, 369, 371, -1, 369, 84,
     371, -1, 370, -1, 369, 370, -1, 369, 371, 90,
      -1, 369, 84, 371, 90, -1, 4, 90, -1, 5,
      90, -1, 228, 90, -1, 94, 90, -1, 3, 90,
      -1, 93, 90, -1, 214, 110, 233, 232, -1, 374,
     364, -1, 355, -1, 374, 355, -1, 365, 117, -1,
     374, 365, 117, -1, 90, -1, 117, 347, 375, -1,
     117, 347, -1, 107, 347, 375, -1, 107, 347, -1,
     373, 347, -1, 373, 347, 375, -1, 376, -1, 129,
     239, 152, -1, 376, 129, 239, 152, -1, 378, -1,
     299, 378, -1, 117, 348, 377, -1, 117, 377, -1,
     117, 348, -1, 117, -1, 107, 348, 377, -1, 107,
     377, -1, 107, 348, -1, 107, -1, 373, 347, -1,
     373, 347, 377, -1, 379, -1, 128, 377, 149, -1,
     379, 128, 429, 149, 347, 444, -1, 379, 83, 347,
     444, -1, 379, 129, 239, 152, -1, 379, 129, 152,
      -1, 128, 430, 149, 347, 444, -1, 251, 347, 444,
      -1, 273, 347, 444, -1, 129, 239, 152, -1, 129,
     152, -1, 393, -1, 381, -1, 380, 393, -1, 380,
     381, -1, 1, 97, -1, -1, 383, -1, 384, -1,
     383, 384, -1, 67, 304, 97, -1, -1, 451, 95,
     386, 245, -1, 385, -1, -1, -1, 49, 389, 241,
     390, 391, -1, 387, -1, -1, 392, 451, 394, -1,
     523, -1, 512, -1, 387, -1, 451, 394, -1, 271,
      -1, 239, 97, -1, -1, 388, 50, 395, 391, -1,
     388, -1, -1, -1, 51, 396, 241, 397, 391, -1,
      -1, -1, 52, 398, 391, 51, 399, 240, 97, -1,
      -1, -1, -1, -1, 53, 400, 128, 422, 401, 242,
      97, 402, 424, 149, 403, 391, -1, -1, -1, 54,
     404, 128, 243, 149, 405, 391, -1, -1, 55, 253,
      99, 406, 393, -1, -1, 55, 253, 13, 253, 99,
     407, 393, -1, -1, 56, 99, 408, 393, -1, 57,
      97, -1, 58, 97, -1, 59, 97, -1, 59, 239,
      97, -1, 162, 423, 128, 12, 149, 97, -1, 162,
     423, 128, 12, 99, 425, 149, 97, -1, 162, 423,
     128, 12, 99, 425, 99, 425, 149, 97, -1, 162,
     423, 128, 12, 90, 425, 149, 97, -1, 162, 423,
     128, 12, 99, 425, 99, 425, 99, 428, 149, 97,
      -1, 162, 423, 128, 12, 90, 425, 99, 428, 149,
      97, -1, 162, 423, 128, 12, 99, 425, 90, 428,
     149, 97, -1, 60, 117, 239, 97, -1, 60, 214,
      97, -1, 421, 393, -1, 421, 150, -1, 97, -1,
     412, -1, 173, -1, 172, -1, 169, -1, -1, -1,
     132, 410, 195, 411, 415, -1, -1, -1, 132, 413,
     387, 414, 415, -1, 416, -1, 415, 416, -1, -1,
      -1, -1, 131, 417, 420, 418, 387, -1, 279, -1,
     348, -1, 128, 13, 149, -1, 128, 438, 149, -1,
       3, 99, -1, 94, 99, -1, 4, 99, -1, 5,
      99, -1, 424, 97, -1, 271, -1, 95, 245, -1,
      -1, 9, -1, -1, 239, -1, 1, -1, -1, 426,
      -1, 427, -1, 426, 96, 427, -1, 12, 128, 239,
     149, -1, 129, 214, 152, 12, 128, 239, 149, -1,
      12, -1, 428, 96, 12, -1, -1, 430, -1, 274,
      -1, 434, -1, 435, 13, -1, 434, 13, -1, 274,
      13, -1, 13, -1, 434, 99, -1, 274, 99, -1,
      -1, 100, 432, 433, -1, 136, -1, 306, -1, 436,
      -1, 438, 431, -1, 435, 437, -1, 435, 440, -1,
     435, 440, 100, 306, -1, 434, 96, -1, 274, 96,
      -1, 276, 272, 298, -1, 279, 272, 298, -1, 284,
     272, 298, -1, 276, 378, 298, -1, 276, 298, -1,
     278, 357, 298, -1, 438, -1, 438, 431, -1, 436,
      -1, 274, -1, -1, -1, 357, -1, 3, 442, 3,
     443, 97, -1, 110, 233, 232, -1, -1, 128, 247,
     149, -1, -1, -1, 98, 128, 446, 149, -1, 98,
      83, -1, 274, -1, 1, -1, 445, -1, 446, 96,
     445, -1, -1, 117, 347, 447, -1, 107, 347, 447,
      -1, 373, 347, 447, -1, 76, -1, -1, 448, 117,
     449, -1, 448, 118, 449, -1, 448, 119, 449, -1,
     448, 115, 449, -1, 448, 116, 449, -1, 448, 107,
     449, -1, 448, 105, 449, -1, 448, 106, 449, -1,
     448, 122, 449, -1, 448, 96, 449, -1, 448, 112,
     449, -1, 448, 110, 449, -1, 448, 111, 449, -1,
     448, 109, 449, -1, 448, 101, 449, -1, 448, 100,
     449, -1, 448, 114, 449, -1, 448, 113, 449, -1,
     448, 124, 449, -1, 448, 123, 449, -1, 448, 104,
     449, -1, 448, 103, 449, -1, 448, 151, 449, -1,
     448, 102, 99, 449, -1, 448, 108, 449, -1, 448,
     130, 449, -1, 448, 121, 449, -1, 448, 83, 449,
      -1, 448, 129, 152, 449, -1, 448, 74, 449, -1,
     448, 73, 449, -1, 448, 74, 129, 152, 449, -1,
     448, 73, 129, 152, 449, -1, 448, 419, 447, 449,
      -1, 448, 1, 449, -1, -1, -1, 454, 453, 529,
      -1, 19, 20, 153, -1, 19, 20, 455, 153, -1,
     456, -1, 455, 456, -1, 49, 128, 253, 149, -1,
      36, 128, 253, 149, -1, 21, 128, 530, 149, -1,
      23, 128, 530, 149, -1, 25, 128, 530, 149, -1,
      56, 128, 25, 149, -1, 56, 128, 27, 149, -1,
      28, 128, 531, 99, 530, 149, -1, 29, 128, 530,
     149, -1, -1, 464, 458, 459, -1, -1, -1, -1,
      -1, 53, 460, 128, 422, 461, 242, 97, 462, 424,
     149, 463, 391, -1, 19, 53, 153, -1, 19, 53,
     465, 153, -1, 466, -1, 465, 466, -1, 21, 128,
     530, 149, -1, 23, 128, 530, 149, -1, 24, 128,
     530, 149, -1, 28, 128, 531, 99, 530, 149, -1,
      34, 128, 467, 149, -1, 34, 128, 467, 96, 253,
     149, -1, 33, -1, 35, -1, 46, -1, 30, -1,
      31, -1, 32, -1, -1, 470, 469, 473, -1, 19,
      37, 153, -1, 19, 37, 471, 153, -1, 472, -1,
     471, 472, -1, 21, 128, 530, 149, -1, 23, 128,
     530, 149, -1, 24, 128, 530, 149, -1, 28, 128,
     531, 99, 530, 149, -1, 35, -1, -1, 95, 474,
     475, 150, -1, 477, -1, 476, -1, 476, 477, -1,
     529, -1, 478, -1, 477, 478, -1, -1, 480, 479,
     529, -1, 19, 38, 153, -1, -1, 483, 482, 529,
      -1, 19, 39, 153, -1, 19, 39, 484, 153, -1,
     485, -1, 484, 485, -1, 21, 128, 530, 149, -1,
      23, 128, 530, 149, -1, 22, 128, 530, 149, -1,
      35, -1, -1, 488, 487, 459, -1, 19, 20, 53,
     153, -1, 19, 20, 53, 489, 153, -1, 490, -1,
     489, 490, -1, 49, 128, 253, 149, -1, 36, 128,
     253, 149, -1, 21, 128, 530, 149, -1, 22, 128,
     530, 149, -1, 23, 128, 530, 149, -1, 24, 128,
     530, 149, -1, 25, 128, 530, 149, -1, 56, 128,
      25, 149, -1, 56, 128, 27, 149, -1, 28, 128,
     531, 99, 530, 149, -1, 29, 128, 530, 149, -1,
      34, 128, 467, 149, -1, 34, 128, 467, 96, 253,
     149, -1, 33, -1, -1, 493, 492, 473, -1, 19,
      20, 37, 153, -1, 19, 20, 37, 494, 153, -1,
     495, -1, 494, 495, -1, 49, 128, 253, 149, -1,
      36, 128, 253, 149, -1, 21, 128, 530, 149, -1,
      22, 128, 530, 149, -1, 23, 128, 530, 149, -1,
      24, 128, 530, 149, -1, 25, 128, 530, 149, -1,
      56, 128, 25, 149, -1, 56, 128, 27, 149, -1,
      28, 128, 531, 99, 530, 149, -1, 29, 128, 530,
     149, -1, -1, 498, 497, 529, -1, 19, 40, 153,
      -1, -1, 501, 500, 529, -1, 19, 41, 153, -1,
      19, 41, 128, 502, 149, 153, -1, 3, -1, 19,
      42, 153, -1, -1, 506, 505, 253, 97, -1, 19,
      43, 153, -1, 19, 44, 153, -1, 19, 44, 128,
     530, 149, 153, -1, -1, 510, 509, 529, -1, 19,
      33, 153, -1, 19, 45, 128, 530, 149, 153, -1,
     452, -1, 457, -1, 468, -1, 481, -1, 486, -1,
     491, -1, 496, -1, 499, -1, 504, -1, 508, -1,
     513, -1, -1, 145, 142, 153, 514, 516, -1, -1,
     145, 143, 153, 515, 516, -1, 95, 517, 150, -1,
     519, -1, 518, -1, 518, 519, -1, 529, -1, 520,
      -1, 519, 520, -1, -1, 145, 144, 153, 521, 529,
      -1, -1, 145, 146, 153, 522, 529, -1, 503, -1,
     507, -1, 511, -1, 524, -1, 527, -1, 14, 12,
     153, -1, 15, 526, 3, 153, -1, 16, -1, 17,
      -1, 18, -1, 15, 528, 153, -1, 16, -1, 17,
      -1, 18, -1, 393, -1, 3, -1, 530, 96, 3,
      -1, 115, -1, 117, -1, 116, -1, 107, -1, 106,
      -1, 105, -1, 104, -1, 103, -1
};


static const yytype_uint16 yyrline[] =
{
       0, 575, 575, 576, 585, 585, 588, 593, 594, 598,
     602, 606, 612, 616, 616, 624, 626, 630, 629, 633,
     635, 637, 639, 641, 644, 643, 648, 647, 651, 652,
     654, 655, 657, 658, 664, 663, 675, 677, 679, 684,
     686, 688, 694, 696, 693, 709, 715, 725, 726, 727,
     729, 734, 736, 744, 743, 750, 756, 757, 761, 763,
     768, 771, 775, 777, 782, 794, 796, 798, 800, 802,
     804, 812, 814, 819, 821, 823, 825, 828, 831, 836,
     837, 839, 841, 852, 853, 855, 857, 859, 860, 867,
     868, 869, 871, 872, 876, 877, 880, 882, 883, 886,
     888, 896, 895, 906, 908, 910, 916, 915, 919, 924,
     923, 927, 932, 931, 935, 940, 939, 943, 950, 954,
     957, 960, 963, 972, 974, 977, 979, 981, 983, 990,
     998, 1001, 1003, 1005, 1008, 1010, 1016, 1023, 1025, 1027,
    1032, 1032, 1042, 1049, 1053, 1058, 1069, 1074, 1080, 1083,
    1086, 1092, 1095, 1098, 1104, 1105, 1106, 1107, 1108, 1112,
    1113, 1114, 1118, 1119, 1120, 1125, 1124, 1129, 1128, 1133,
    1132, 1136, 1135, 1139, 1138, 1145, 1143, 1150, 1149, 1154,
    1153, 1160, 1164, 1172, 1175, 1178, 1182, 1183, 1189, 1195,
    1205, 1206, 1216, 1217, 1221, 1223, 1228, 1228, 1237, 1239,
    1245, 1251, 1252, 1265, 1267, 1269, 1271, 1273, 1278, 1280,
    1284, 1288, 1293, 1297, 1303, 1304, 1305, 1311, 1310, 1332,
    1336, 1337, 1338, 1339, 1343, 1346, 1349, 1351, 1356, 1358,
    1362, 1365, 1368, 1370, 1372, 1374, 1377, 1379, 1382, 1386,
    1389, 1396, 1399, 1402, 1405, 1408, 1413, 1416, 1419, 1423,
    1425, 1429, 1433, 1435, 1440, 1442, 1448, 1450, 1452, 1457,
    1468, 1472, 1479, 1480, 1482, 1496, 1498, 1500, 1502, 1504,
    1506, 1508, 1510, 1512, 1514, 1516, 1518, 1520, 1522, 1524,
    1526, 1528, 1530, 1532, 1534, 1536, 1538, 1542, 1544, 1546,
    1551, 1553, 1555, 1557, 1559, 1561, 1563, 1565, 1567, 1569,
    1571, 1573, 1575, 1577, 1579, 1581, 1583, 1585, 1587, 1589,
    1591, 1595, 1597, 1599, 1604, 1606, 1608, 1609, 1610, 1611,
    1612, 1616, 1629, 1636, 1646, 1648, 1650, 1656, 1657, 1658,
    1662, 1663, 1672, 1673, 1675, 1677, 1682, 1684, 1689, 1692,
    1693, 1694, 1699, 1706, 1707, 1708, 1718, 1720, 1722, 1725,
    1728, 1727, 1742, 1744, 1746, 1748, 1750, 1753, 1755, 1757,
    1759, 1762, 1764, 1775, 1776, 1780, 1784, 1788, 1792, 1794,
    1798, 1800, 1802, 1810, 1819, 1821, 1823, 1825, 1827, 1829,
    1831, 1833, 1835, 1837, 1839, 1842, 1844, 1846, 1891, 1893,
    1898, 1900, 1905, 1907, 1913, 1920, 1922, 1930, 1935, 1939,
    1941, 1946, 1948, 1956, 1957, 1962, 1965, 1972, 1975, 1978,
    1982, 1985, 1996, 1998, 2003, 2006, 2009, 2012, 2015, 2018,
    2025, 2030, 2032, 2054, 2056, 2061, 2066, 2074, 2085, 2088,
    2091, 2094, 2100, 2102, 2104, 2106, 2111, 2115, 2119, 2127,
    2129, 2131, 2133, 2137, 2141, 2156, 2176, 2178, 2180, 2184,
    2185, 2190, 2191, 2196, 2197, 2203, 2204, 2210, 2209, 2214,
    2229, 2228, 2235, 2242, 2247, 2253, 2252, 2260, 2269, 2270,
    2275, 2277, 2282, 2287, 2289, 2295, 2296, 2298, 2300, 2302,
    2310, 2311, 2312, 2313, 2318, 2320, 2325, 2327, 2335, 2336,
    2339, 2342, 2345, 2352, 2354, 2357, 2359, 2361, 2366, 2371,
    2376, 2382, 2384, 2390, 2392, 2397, 2398, 2400, 2406, 2405,
    2415, 2414, 2423, 2426, 2429, 2436, 2461, 2479, 2435, 2488,
    2496, 2498, 2501, 2503, 2509, 2510, 2512, 2514, 2516, 2518,
    2523, 2528, 2533, 2538, 2546, 2551, 2556, 2564, 2571, 2577,
    2585, 2594, 2602, 2608, 2614, 2622, 2630, 2645, 2646, 2649,
    2654, 2655, 2660, 2662, 2667, 2670, 2675, 2676, 2680, 2691,
    2705, 2706, 2707, 2708, 2712, 2721, 2727, 2736, 2737, 2742,
    2744, 2746, 2748, 2750, 2752, 2755, 2765, 2770, 2778, 2799,
    2805, 2807, 2809, 2811, 2822, 2827, 2829, 2837, 2838, 2845,
    2857, 2858, 2865, 2876, 2877, 2881, 2882, 2886, 2889, 2895,
    2898, 2901, 2904, 2910, 2912, 2917, 2919, 2921, 2926, 2927,
    2935, 2936, 2940, 2942, 2948, 2951, 2956, 2967, 2969, 2974,
    2977, 2980, 2983, 2993, 2995, 2997, 2999, 3006, 3007, 3017,
    3019, 3021, 3023, 3025, 3029, 3033, 3035, 3037, 3039, 3041,
    3045, 3049, 3059, 3070, 3071, 3072, 3077, 3085, 3086, 3095,
    3097, 3099, 3101, 3103, 3107, 3111, 3113, 3115, 3117, 3119,
    3123, 3127, 3129, 3131, 3133, 3135, 3137, 3139, 3143, 3151,
    3154, 3160, 3163, 3169, 3170, 3175, 3177, 3179, 3184, 3185,
    3186, 3190, 3191, 3193, 3197, 3200, 3208, 3218, 3224, 3230,
    3235, 3236, 3241, 3254, 3256, 3258, 3263, 3270, 3283, 3286,
    3294, 3306, 3312, 3314, 3315, 3316, 3325, 3330, 3338, 3339,
    3344, 3346, 3353, 3359, 3361, 3363, 3365, 3367, 3371, 3375,
    3380, 3382, 3387, 3388, 3398, 3400, 3402, 3404, 3406, 3408,
    3410, 3412, 3414, 3418, 3422, 3427, 3430, 3432, 3434, 3436,
    3438, 3440, 3442, 3444, 3446, 3455, 3456, 3457, 3458, 3462,
    3467, 3469, 3475, 3476, 3480, 3492, 3491, 3499, 3505, 3508,
    3504, 3515, 3517, 3517, 3525, 3526, 3528, 3529, 3534, 3537,
    3540, 3539, 3547, 3551, 3556, 3550, 3561, 3563, 3560, 3571,
    3573, 3575, 3577, 3570, 3582, 3584, 3581, 3589, 3588, 3593,
    3592, 3597, 3596, 3600, 3602, 3604, 3606, 3608, 3613, 3616,
    3619, 3622, 3625, 3628, 3631, 3637, 3639, 3641, 3645, 3648,
    3650, 3652, 3655, 3661, 3663, 3660, 3670, 3672, 3669, 3678,
    3679, 3681, 3693, 3695, 3692, 3701, 3702, 3706, 3722, 3731,
    3733, 3735, 3737, 3742, 3744, 3745, 3755, 3756, 3761, 3762,
    3763, 3771, 3772, 3776, 3777, 3782, 3784, 3791, 3793, 3805,
    3808, 3809, 3817, 3819, 3822, 3824, 3827, 3829, 3839, 3855,
    3854, 3861, 3862, 3867, 3870, 3873, 3876, 3878, 3883, 3884,
    3895, 3898, 3901, 3905, 3908, 3911, 3917, 3920, 3926, 3927,
    3931, 3936, 3941, 3958, 3966, 3968, 3972, 3974, 3978, 3980,
    3982, 3987, 3992, 3997, 3999, 4004, 4006, 4008, 4010, 4017,
    4030, 4039, 4041, 4043, 4045, 4047, 4049, 4051, 4053, 4055,
    4057, 4059, 4061, 4063, 4065, 4067, 4069, 4071, 4073, 4075,
    4077, 4079, 4081, 4083, 4085, 4087, 4089, 4091, 4093, 4095,
    4097, 4099, 4101, 4103, 4105, 4107, 4115, 4124, 4123, 4157,
    4159, 4164, 4166, 4171, 4173, 4175, 4177, 4179, 4181, 4182,
    4184, 4186, 4192, 4191, 4204, 4207, 4209, 4211, 4203, 4218,
    4220, 4225, 4227, 4232, 4234, 4236, 4238, 4240, 4242, 4244,
    4246, 4251, 4257, 4259, 4261, 4268, 4267, 4277, 4279, 4284,
    4286, 4290, 4292, 4294, 4296, 4298, 4305, 4304, 4313, 4314,
    4315, 4319, 4327, 4328, 4333, 4332, 4346, 4351, 4350, 4360,
    4362, 4367, 4369, 4374, 4376, 4378, 4380, 4386, 4385, 4419,
    4421, 4426, 4428, 4433, 4435, 4436, 4438, 4439, 4441, 4442,
    4444, 4446, 4448, 4450, 4452, 4454, 4455, 4461, 4460, 4494,
    4496, 4501, 4503, 4508, 4510, 4512, 4514, 4516, 4518, 4520,
    4522, 4524, 4526, 4528, 4534, 4533, 4540, 4545, 4544, 4551,
    4553, 4558, 4563, 4569, 4568, 4582, 4586, 4589, 4595, 4594,
    4601, 4605, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617,
    4618, 4619, 4620, 4625, 4624, 4631, 4630, 4640, 4646, 4647,
    4648, 4652, 4656, 4657, 4662, 4661, 4673, 4672, 4688, 4689,
    4691, 4692, 4694, 4699, 4705, 4710, 4710, 4710, 4714, 4719,
    4720, 4721, 4725, 4729, 4735, 4744, 4746, 4748, 4750, 4752,
    4754, 4756, 4758
};





static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "tTYPENAME", "SELFNAME",
  "PFUNCNAME", "SCSPEC", "TYPESPEC", "CV_QUALIFIER", "CONSTANT",
  "VAR_FUNC_NAME", "STRING", "ELLIPSIS", "OPTIONS_PRAGMA",
  "EXEC_FREQ_PRAGMA", "FREQ_NEVER", "FREQ_INIT", "FREQ_FREQUENT",
  "OMP_PRAGMA", "OMP_PARALLEL", "OMP_PRIVATE", "OMP_COPYPRIVATE",
  "OMP_FIRSTPRIVATE", "OMP_LASTPRIVATE", "OMP_SHARED", "OMP_DEFAULT",
  "OMP_NONE", "OMP_REDUCTION", "OMP_COPYIN", "OMP_DYNAMIC", "OMP_GUIDED",
  "OMP_RUNTIME", "OMP_ORDERED", "OMP_SCHEDULE", "OMP_NOWAIT",
  "OMP_NUM_THREADS", "OMP_SECTIONS", "OMP_SECTION", "OMP_SINGLE",
  "OMP_MASTER", "OMP_CRITICAL", "OMP_BARRIER", "OMP_ATOMIC", "OMP_FLUSH",
  "OMP_THREADPRIVATE", "OMP_STATIC", "SIZEOF", "ENUM", "IF", "ELSE",
  "WHILE", "DO", "FOR", "SWITCH", "CASE", "DEFAULT", "BREAK", "CONTINUE",
  "RETURN_KEYWORD", "GOTO", "ASM_KEYWORD", "TYPEOF", "ALIGNOF", "SIGOF",
  "ATTRIBUTE", "EXTENSION", "LABEL", "REALPART", "IMAGPART", "VA_ARG",
  "AGGR", "VISSPEC", "DELETE", "NEW", "THIS", "OPERATOR", "CXX_TRUE",
  "CXX_FALSE", "OFFSETOF", "NAMESPACE", "TYPENAME_KEYWORD", "USING",
  "LEFT_RIGHT", "TEMPLATE", "TYPEID", "DYNAMIC_CAST", "STATIC_CAST",
  "REINTERPRET_CAST", "CONST_CAST", "SCOPE", "EXPORT", "EMPTY", "NSNAME",
  "PTYPENAME", "'{'", "','", "';'", "THROW", "':'", "'='", "ASSIGN", "'?'",
  "OROR", "ANDAND", "'|'", "'^'", "'&'", "MIN_MAX", "EQCOMPARE", "'<'",
  "'>'", "ARITHCOMPARE", "RSHIFT", "LSHIFT", "'+'", "'-'", "'*'", "'/'",
  "'%'", "DOT_STAR", "POINTSAT_STAR", "'~'", "MINUSMINUS", "PLUSPLUS",
  "UNARY", "HYPERUNARY", "'.'", "'('", "'['", "POINTSAT", "CATCH", "TRY",
  "EXTERN_LANG_STRING", "ALL", "PRE_PARSED_CLASS_DECL", "DEFARG",
  "DEFARG_MARKER", "PRE_PARSED_FUNCTION_DECL", "TYPENAME_DEFN",
  "IDENTIFIER_DEFN", "PTYPENAME_DEFN", "SL2_SECTIONS",
  "SL2_MINOR_SECTIONS", "SL2_SECTION", "PRAGMA_SL2", "SL2_MINOR_SECTION",
  "END_OF_LINE", "END_OF_SAVED_INPUT", "')'", "'}'", "'!'", "']'", "'\\n'",
  "$accept", "program", "extdefs", "@1", "extdefs_opt", ".hush_warning",
  ".warning_ok", "extension", "asm_keyword", "lang_extdef", "@2", "extdef",
  "@3", "@4", "@5", "namespace_alias", "@6", "using_decl",
  "namespace_using_decl", "using_directive", "@7", "@8",
  "namespace_qualifier", "any_id", "extern_lang_string",
  "template_parm_header", "@9", "template_spec_header", "template_header",
  "template_parm_list", "maybe_identifier", "template_type_parm",
  "template_template_parm", "template_parm", "template_def",
  "template_extdef", "template_datadef", "datadef", "ctor_initializer_opt",
  "maybe_return_init", "eat_saved_input", "function_body", "@10", "fndef",
  "constructor_declarator", "@11", "@12", "@13", "@14", "fn.def1",
  "component_constructor_declarator", "fn_def2", "return_id",
  "return_init", "base_init", "@15", "begin_function_body_",
  "member_init_list", "begin_member_init", "member_init", "identifier",
  "notype_identifier", "identifier_defn", "explicit_instantiation", "@16",
  "@17", "@18", "@19", "@20", "@21", "@22", "@23",
  "begin_explicit_instantiation", "end_explicit_instantiation",
  "template_type", "apparent_template_type", "self_template_type",
  "finish_template_type_", "template_close_bracket",
  "template_arg_list_opt", "template_arg_list", "template_arg", "@24",
  "template_arg_1", "unop", "expr", "paren_expr_or_null",
  "paren_cond_or_null", "xcond", "condition", "@25", "compstmtend",
  "nontrivial_exprlist", "nonnull_exprlist", "unary_expr", "new_placement",
  "new_initializer", "regcast_or_absdcl", "cast_expr", "expr_no_commas",
  "expr_no_comma_rangle", "notype_unqualified_id", "do_id", "template_id",
  "object_template_id", "unqualified_id", "expr_or_declarator_intern",
  "expr_or_declarator", "notype_template_declarator",
  "direct_notype_declarator", "primary", "@26", "new", "delete",
  "boolean_literal", "nodecls", "object", "decl", "declarator",
  "fcast_or_absdcl", "type_id", "typed_declspecs", "typed_declspecs1",
  "reserved_declspecs", "declmods", "typed_typespecs",
  "reserved_typespecquals", "sizeof", "alignof", "typeof", "typespec",
  "typespecqual_reserved", "initdecls", "notype_initdecls",
  "nomods_initdecls", "maybeasm", "initdcl", "@27", "initdcl0_innards",
  "@28", "initdcl0", "notype_initdcl0", "nomods_initdcl0", "@29",
  "maybe_attribute", "attributes", "attribute", "attribute_list", "attrib",
  "any_word", "identifiers_or_typenames", "maybe_init", "init", "initlist",
  "pending_inline", "pending_inlines", "defarg_again", "pending_defargs",
  "structsp", "@30", "@31", "@32", "@33", "@34", "maybecomma",
  "maybecomma_warn", "aggr", "class_head", "class_head_apparent_template",
  "class_head_decl", "class_head_defn", "maybe_base_class_list",
  "base_class_list", "base_class", "base_class_1",
  "base_class_access_list", "opt.component_decl_list", "access_specifier",
  "component_decl_list", "component_decl", "component_decl_1",
  "components", "notype_components", "component_declarator0",
  "component_declarator", "after_type_component_declarator0",
  "notype_component_declarator0", "after_type_component_declarator",
  "notype_component_declarator", "enumlist_opt", "enumlist", "enumerator",
  "new_type_id", "cv_qualifiers", "nonempty_cv_qualifiers",
  "maybe_parmlist", "after_type_declarator_intern",
  "after_type_declarator", "direct_after_type_declarator",
  "nonnested_type", "complete_type_name", "nested_type",
  "notype_declarator_intern", "notype_declarator",
  "complex_notype_declarator", "complex_direct_notype_declarator",
  "qualified_id", "notype_qualified_id", "overqualified_id",
  "functional_cast", "type_name", "nested_name_specifier",
  "nested_name_specifier_1", "typename_sub", "typename_sub0",
  "typename_sub1", "typename_sub2", "explicit_template_type",
  "complex_type_name", "ptr_to_mem", "global_scope", "new_declarator",
  "direct_new_declarator", "absdcl_intern", "absdcl",
  "direct_abstract_declarator", "stmts", "errstmt", "maybe_label_decls",
  "label_decls", "label_decl", "compstmt_or_stmtexpr", "@35", "compstmt",
  "simple_if", "@36", "@37", "implicitly_scoped_stmt", "@38", "stmt",
  "simple_stmt", "@39", "@40", "@41", "@42", "@43", "@44", "@45", "@46",
  "@47", "@48", "@49", "@50", "@51", "@52", "function_try_block", "@53",
  "@54", "try_block", "@55", "@56", "handler_seq", "handler", "@57", "@58",
  "type_specifier_seq", "handler_args", "label_colon",
  "for.init.statement", "maybe_cv_qualifier", "xexpr", "asm_operands",
  "nonnull_asm_operands", "asm_operand", "asm_clobbers", "parmlist",
  "complex_parmlist", "defarg", "@59", "defarg1", "parms", "parms_comma",
  "named_parm", "full_parm", "parm", "see_typename", "bad_parm",
  "bad_decl", "template_arg_list_ignore", "arg_list_ignore",
  "exception_specification_opt", "ansi_raise_identifier",
  "ansi_raise_identifiers", "conversion_declarator", "operator",
  "unoperator", "operator_name", "save_lineno", "parallel_construct",
  "@60", "parallel_directive", "parallel_clause_list", "parallel_clause",
  "for_construct", "@61", "iteration_statement", "@62", "@63", "@64",
  "@65", "for_directive", "for_clause_list", "for_clause", "schedule_kind",
  "sections_construct", "@66", "sections_directive",
  "sections_clause_list", "sections_clause", "section_scope", "@67",
  "maybe_section_sequence", "maybe_structured_block", "section_sequence",
  "section_construct", "@68", "section_directive", "single_construct",
  "@69", "single_directive", "single_clause_list", "single_clause",
  "parallel_for_construct", "@70", "parallel_for_directive",
  "parallel_for_clause_list", "parallel_for_clause",
  "parallel_sections_construct", "@71", "parallel_sections_directive",
  "parallel_sections_clause_list", "parallel_sections_clause",
  "master_construct", "@72", "master_directive", "critical_construct",
  "@73", "critical_directive", "region_phrase", "barrier_directive",
  "atomic_construct", "@74", "atomic_directive", "flush_directive",
  "ordered_construct", "@75", "ordered_directive",
  "threadprivate_directive", "openmp_construct", "sl2_sections_construct",
  "@76", "@77", "sl2_section_scope", "sl2_maybe_section_sequence",
  "sl2_maybe_structured_block", "sl2_section_sequence",
  "sl2_section_construct", "@78", "@79", "pragma_directives",
  "options_directive", "exec_freq_directive_ignore", "freq_hint_ignore",
  "exec_freq_directive", "freq_hint", "structured_block", "variable_list",
  "reduction_operator", 0
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
     325, 326, 327, 328, 329, 330, 331, 332, 333, 334,
     335, 336, 337, 338, 339, 340, 341, 342, 343, 344,
     345, 346, 347, 348, 349, 123, 44, 59, 350, 58,
      61, 351, 63, 352, 353, 124, 94, 38, 354, 355,
      60, 62, 356, 357, 358, 43, 45, 42, 47, 37,
     359, 360, 126, 361, 362, 363, 364, 46, 40, 91,
     365, 366, 367, 368, 369, 370, 371, 372, 373, 374,
     375, 376, 377, 378, 379, 380, 381, 382, 383, 41,
     125, 33, 93, 10
};



static const yytype_uint16 yyr1[] =
{
       0, 154, 155, 155, 157, 156, 156, 158, 158, 159,
     160, 161, 162, 164, 163, 165, 165, 166, 165, 165,
     165, 165, 165, 165, 167, 165, 168, 165, 165, 165,
     165, 165, 165, 165, 170, 169, 171, 171, 171, 172,
     172, 172, 174, 175, 173, 176, 176, 177, 177, 177,
     177, 178, 178, 180, 179, 181, 182, 182, 183, 183,
     184, 184, 185, 185, 186, 187, 187, 187, 187, 187,
     187, 188, 188, 189, 189, 189, 189, 189, 189, 190,
     190, 190, 190, 191, 191, 191, 191, 191, 191, 191,
     191, 191, 191, 191, 192, 192, 193, 193, 193, 194,
     194, 196, 195, 197, 197, 197, 199, 198, 198, 200,
     198, 198, 201, 198, 198, 202, 198, 198, 203, 203,
     203, 203, 203, 204, 204, 204, 204, 204, 204, 205,
     205, 205, 205, 205, 205, 205, 206, 207, 207, 207,
     209, 208, 210, 211, 211, 211, 211, 212, 212, 212,
     212, 213, 213, 213, 214, 214, 214, 214, 214, 215,
     215, 215, 216, 216, 216, 218, 217, 219, 217, 220,
     217, 221, 217, 222, 217, 223, 217, 224, 217, 225,
     217, 226, 227, 228, 228, 228, 229, 229, 230, 231,
     232, 232, 233, 233, 234, 234, 236, 235, 237, 237,
     237, 237, 237, 238, 238, 238, 238, 238, 239, 239,
     240, 240, 241, 241, 242, 242, 242, 244, 243, 243,
     245, 245, 245, 245, 246, 246, 246, 246, 247, 247,
     248, 248, 248, 248, 248, 248, 248, 248, 248, 248,
     248, 248, 248, 248, 248, 248, 248, 248, 248, 248,
     248, 248, 248, 248, 249, 249, 250, 250, 250, 250,
     251, 251, 252, 252, 252, 253, 253, 253, 253, 253,
     253, 253, 253, 253, 253, 253, 253, 253, 253, 253,
     253, 253, 253, 253, 253, 253, 253, 253, 253, 253,
     254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
     254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
     254, 254, 254, 254, 255, 255, 255, 255, 255, 255,
     255, 256, 257, 257, 258, 258, 258, 259, 259, 259,
     260, 260, 261, 261, 261, 261, 262, 262, 263, 263,
     263, 263, 264, 264, 264, 264, 264, 264, 264, 264,
     265, 264, 264, 264, 264, 264, 264, 264, 264, 264,
     264, 264, 264, 264, 264, 264, 264, 264, 264, 264,
     264, 264, 264, 264, 264, 264, 264, 264, 264, 264,
     264, 264, 264, 264, 264, 264, 264, 264, 266, 266,
     267, 267, 268, 268, 269, 270, 270, 271, 271, 271,
     271, 271, 271, 272, 272, 273, 273, 274, 274, 274,
     274, 274, 275, 275, 276, 276, 276, 276, 276, 276,
     277, 277, 277, 278, 278, 278, 278, 278, 279, 279,
     279, 279, 280, 280, 280, 280, 281, 282, 283, 284,
     284, 284, 284, 284, 284, 284, 285, 285, 285, 286,
     286, 287, 287, 288, 288, 289, 289, 291, 290, 290,
     293, 292, 292, 294, 295, 297, 296, 296, 298, 298,
     299, 299, 300, 301, 301, 302, 302, 302, 302, 302,
     303, 303, 303, 303, 304, 304, 305, 305, 306, 306,
     306, 306, 306, 307, 307, 307, 307, 307, 308, 308,
     308, 309, 309, 310, 310, 311, 311, 311, 313, 312,
     314, 312, 312, 312, 312, 315, 316, 317, 312, 312,
     318, 318, 319, 319, 320, 320, 320, 320, 320, 320,
     321, 321, 321, 321, 322, 322, 322, 323, 323, 323,
     324, 324, 324, 324, 324, 324, 324, 325, 325, 325,
     326, 326, 327, 327, 328, 328, 329, 329, 329, 329,
     330, 330, 330, 330, 331, 332, 332, 333, 333, 333,
     333, 333, 333, 333, 333, 333, 333, 333, 334, 334,
     334, 334, 334, 334, 334, 334, 334, 335, 335, 335,
     336, 336, 336, 337, 337, 338, 338, 339, 339, 340,
     340, 340, 340, 341, 341, 342, 342, 342, 343, 343,
     344, 344, 345, 345, 346, 346, 346, 347, 347, 348,
     348, 348, 348, 349, 349, 349, 349, 350, 350, 351,
     351, 351, 351, 351, 351, 352, 352, 352, 352, 352,
     352, 353, 353, 354, 354, 354, 355, 356, 356, 357,
     357, 357, 357, 357, 357, 358, 358, 358, 358, 358,
     358, 359, 359, 359, 359, 359, 359, 359, 359, 360,
     360, 361, 361, 362, 362, 363, 363, 363, 364, 364,
     364, 365, 365, 365, 365, 365, 366, 366, 366, 366,
     367, 367, 368, 368, 368, 368, 369, 369, 369, 369,
     370, 370, 370, 370, 370, 370, 371, 372, 372, 372,
     373, 373, 374, 375, 375, 375, 375, 375, 375, 375,
     376, 376, 377, 377, 378, 378, 378, 378, 378, 378,
     378, 378, 378, 378, 378, 379, 379, 379, 379, 379,
     379, 379, 379, 379, 379, 380, 380, 380, 380, 381,
     382, 382, 383, 383, 384, 386, 385, 387, 389, 390,
     388, 391, 392, 391, 393, 393, 393, 393, 394, 394,
     395, 394, 394, 396, 397, 394, 398, 399, 394, 400,
     401, 402, 403, 394, 404, 405, 394, 406, 394, 407,
     394, 408, 394, 394, 394, 394, 394, 394, 394, 394,
     394, 394, 394, 394, 394, 394, 394, 394, 394, 394,
     394, 394, 394, 410, 411, 409, 413, 414, 412, 415,
     415, 415, 417, 418, 416, 419, 419, 420, 420, 421,
     421, 421, 421, 422, 422, 422, 423, 423, 424, 424,
     424, 425, 425, 426, 426, 427, 427, 428, 428, 429,
     429, 429, 430, 430, 430, 430, 430, 430, 430, 432,
     431, 433, 433, 434, 434, 434, 434, 434, 435, 435,
     436, 436, 436, 436, 436, 436, 437, 437, 438, 438,
     439, 440, 440, 441, 442, 442, 443, 443, 444, 444,
     444, 445, 445, 446, 446, 447, 447, 447, 447, 448,
     449, 450, 450, 450, 450, 450, 450, 450, 450, 450,
     450, 450, 450, 450, 450, 450, 450, 450, 450, 450,
     450, 450, 450, 450, 450, 450, 450, 450, 450, 450,
     450, 450, 450, 450, 450, 450, 451, 453, 452, 454,
     454, 455, 455, 456, 456, 456, 456, 456, 456, 456,
     456, 456, 458, 457, 460, 461, 462, 463, 459, 464,
     464, 465, 465, 466, 466, 466, 466, 466, 466, 466,
     466, 467, 467, 467, 467, 469, 468, 470, 470, 471,
     471, 472, 472, 472, 472, 472, 474, 473, 475, 475,
     475, 476, 477, 477, 479, 478, 480, 482, 481, 483,
     483, 484, 484, 485, 485, 485, 485, 487, 486, 488,
     488, 489, 489, 490, 490, 490, 490, 490, 490, 490,
     490, 490, 490, 490, 490, 490, 490, 492, 491, 493,
     493, 494, 494, 495, 495, 495, 495, 495, 495, 495,
     495, 495, 495, 495, 497, 496, 498, 500, 499, 501,
     501, 502, 503, 505, 504, 506, 507, 507, 509, 508,
     510, 511, 512, 512, 512, 512, 512, 512, 512, 512,
     512, 512, 512, 514, 513, 515, 513, 516, 517, 517,
     517, 518, 519, 519, 521, 520, 522, 520, 523, 523,
     523, 523, 523, 524, 525, 526, 526, 526, 527, 528,
     528, 528, 529, 530, 530, 531, 531, 531, 531, 531,
     531, 531, 531
};


static const yytype_uint8 yyr2[] =
{
       0, 2, 0, 1, 0, 2, 2, 1, 0, 0,
       0, 1, 1, 0, 2, 2, 1, 0, 3, 1,
       5, 4, 5, 4, 0, 6, 0, 5, 1, 2,
       1, 2, 1, 1, 0, 6, 2, 3, 3, 3,
       3, 4, 0, 0, 7, 2, 3, 1, 1, 2,
       2, 1, 2, 0, 5, 3, 1, 1, 1, 3,
       1, 0, 2, 2, 3, 1, 3, 1, 3, 1,
       3, 2, 2, 2, 1, 1, 5, 4, 2, 2,
       3, 3, 2, 2, 3, 3, 2, 2, 2, 2,
       2, 2, 1, 1, 1, 1, 0, 1, 2, 0,
       1, 0, 6, 3, 3, 3, 0, 8, 5, 0,
       9, 6, 0, 8, 5, 0, 9, 6, 2, 2,
       1, 2, 1, 6, 8, 4, 6, 6, 4, 2,
       1, 2, 2, 1, 2, 1, 2, 2, 4, 2,
       0, 3, 0, 0, 1, 3, 2, 0, 1, 1,
       1, 4, 2, 1, 1, 1, 1, 1, 1, 1,
       1, 1, 1, 1, 1, 0, 6, 0, 6, 0,
       5, 0, 5, 0, 7, 0, 7, 0, 6, 0,
       6, 0, 0, 5, 5, 1, 1, 5, 5, 0,
       1, 1, 0, 1, 1, 3, 0, 2, 1, 1,
       2, 1, 3, 1, 1, 1, 1, 1, 1, 1,
       1, 3, 1, 3, 0, 1, 1, 0, 7, 1,
       1, 3, 4, 3, 3, 3, 3, 3, 1, 1,
       1, 2, 2, 2, 2, 2, 2, 2, 4, 2,
       4, 2, 3, 3, 4, 4, 5, 5, 6, 2,
       4, 5, 2, 2, 3, 3, 3, 1, 3, 2,
       3, 4, 1, 2, 5, 1, 3, 3, 3, 3,
       3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
       3, 3, 3, 3, 3, 5, 3, 3, 1, 2,
       1, 3, 3, 3, 3, 3, 3, 3, 3, 3,
       3, 3, 3, 3, 3, 3, 3, 3, 3, 5,
       3, 3, 1, 2, 3, 3, 1, 1, 1, 1,
       1, 0, 5, 5, 5, 5, 5, 1, 1, 1,
       1, 2, 1, 2, 2, 3, 4, 4, 1, 1,
       1, 3, 1, 1, 1, 1, 1, 3, 3, 3,
       0, 4, 4, 2, 4, 2, 6, 4, 4, 2,
       2, 1, 4, 1, 7, 7, 7, 7, 4, 4,
       2, 2, 2, 1, 4, 2, 2, 5, 3, 2,
       2, 5, 3, 5, 3, 4, 6, 2, 1, 2,
       1, 2, 1, 1, 0, 2, 2, 3, 3, 3,
       2, 2, 2, 1, 1, 1, 2, 2, 2, 2,
       1, 1, 1, 1, 2, 2, 3, 3, 3, 4,
       1, 2, 2, 1, 1, 2, 2, 2, 1, 2,
       2, 3, 1, 2, 2, 1, 1, 1, 1, 1,
       1, 1, 4, 4, 4, 4, 1, 1, 1, 1,
       3, 1, 3, 1, 3, 0, 4, 0, 6, 3,
       0, 4, 1, 3, 3, 0, 4, 3, 0, 1,
       1, 2, 6, 1, 3, 0, 1, 4, 6, 4,
       1, 1, 1, 1, 1, 3, 0, 2, 1, 2,
       3, 4, 1, 1, 3, 4, 3, 5, 3, 3,
       3, 0, 3, 3, 3, 0, 2, 2, 0, 6,
       0, 5, 2, 2, 2, 0, 0, 0, 11, 1,
       0, 1, 0, 1, 1, 2, 2, 2, 2, 2,
       2, 3, 4, 3, 2, 3, 4, 1, 2, 1,
       2, 2, 2, 2, 3, 3, 2, 0, 2, 3,
       1, 4, 1, 3, 1, 1, 2, 2, 3, 3,
       0, 1, 3, 2, 2, 1, 2, 2, 2, 2,
       2, 2, 2, 1, 2, 2, 3, 1, 2, 2,
       4, 4, 2, 1, 5, 4, 1, 0, 1, 3,
       0, 1, 3, 1, 1, 1, 1, 4, 4, 4,
       4, 4, 3, 4, 4, 4, 4, 3, 2, 1,
       1, 3, 1, 3, 2, 1, 6, 0, 2, 1,
       2, 1, 2, 3, 3, 1, 3, 1, 2, 3,
       3, 2, 2, 3, 1, 4, 4, 3, 3, 2,
       1, 1, 2, 1, 1, 2, 2, 1, 2, 3,
       3, 2, 2, 3, 1, 3, 3, 2, 2, 3,
       1, 4, 3, 4, 3, 1, 2, 2, 2, 2,
       2, 2, 2, 1, 2, 4, 4, 2, 1, 1,
       1, 1, 2, 4, 3, 3, 2, 2, 2, 2,
       1, 2, 2, 2, 2, 3, 1, 2, 3, 4,
       2, 2, 2, 2, 2, 2, 4, 2, 1, 2,
       2, 3, 1, 3, 2, 3, 2, 2, 3, 1,
       3, 4, 1, 2, 3, 2, 2, 1, 3, 2,
       2, 1, 2, 3, 1, 3, 6, 4, 4, 3,
       5, 3, 3, 3, 2, 1, 1, 2, 2, 2,
       0, 1, 1, 2, 3, 0, 4, 1, 0, 0,
       5, 1, 0, 3, 1, 1, 1, 2, 1, 2,
       0, 4, 1, 0, 0, 5, 0, 0, 7, 0,
       0, 0, 0, 12, 0, 0, 7, 0, 5, 0,
       7, 0, 4, 2, 2, 2, 3, 6, 8, 10,
       8, 12, 10, 10, 4, 3, 2, 2, 1, 1,
       1, 1, 1, 0, 0, 5, 0, 0, 5, 1,
       2, 0, 0, 0, 5, 1, 1, 3, 3, 2,
       2, 2, 2, 2, 1, 2, 0, 1, 0, 1,
       1, 0, 1, 1, 3, 4, 7, 1, 3, 0,
       1, 1, 1, 2, 2, 2, 1, 2, 2, 0,
       3, 1, 1, 1, 2, 2, 2, 4, 2, 2,
       3, 3, 3, 3, 2, 3, 1, 2, 1, 1,
       0, 0, 1, 5, 3, 0, 3, 0, 0, 4,
       2, 1, 1, 1, 3, 0, 3, 3, 3, 1,
       0, 3, 3, 3, 3, 3, 3, 3, 3, 3,
       3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
       3, 3, 3, 3, 4, 3, 3, 3, 3, 4,
       3, 3, 5, 5, 4, 3, 0, 0, 3, 3,
       4, 1, 2, 4, 4, 4, 4, 4, 4, 4,
       6, 4, 0, 3, 0, 0, 0, 0, 12, 3,
       4, 1, 2, 4, 4, 4, 6, 4, 6, 1,
       1, 1, 1, 1, 1, 0, 3, 3, 4, 1,
       2, 4, 4, 4, 6, 1, 0, 4, 1, 1,
       2, 1, 1, 2, 0, 3, 3, 0, 3, 3,
       4, 1, 2, 4, 4, 4, 1, 0, 3, 4,
       5, 1, 2, 4, 4, 4, 4, 4, 4, 4,
       4, 4, 6, 4, 4, 6, 1, 0, 3, 4,
       5, 1, 2, 4, 4, 4, 4, 4, 4, 4,
       4, 4, 6, 4, 0, 3, 3, 0, 3, 3,
       6, 1, 3, 0, 4, 3, 3, 6, 0, 3,
       3, 6, 1, 1, 1, 1, 1, 1, 1, 1,
       1, 1, 1, 0, 5, 0, 5, 3, 1, 1,
       2, 1, 1, 2, 0, 5, 0, 5, 1, 1,
       1, 1, 1, 3, 4, 1, 1, 1, 3, 1,
       1, 1, 1, 1, 3, 1, 1, 1, 1, 1,
       1, 1, 1
};




static const yytype_uint16 yydefact[] =
{
       4, 0, 13, 13, 1, 6, 0, 5, 0, 318,
     678, 679, 0, 424, 440, 619, 0, 0, 0, 12,
     438, 0, 0, 11, 524, 899, 0, 0, 0, 181,
     712, 17, 320, 319, 92, 0, 0, 880, 0, 51,
       0, 0, 14, 28, 0, 30, 9, 56, 57, 0,
      19, 16, 99, 122, 96, 0, 680, 185, 339, 316,
     340, 654, 0, 413, 0, 412, 0, 428, 0, 453,
     621, 470, 439, 0, 537, 539, 519, 547, 423, 643,
     441, 644, 120, 338, 665, 641, 0, 681, 617, 0,
      93, 0, 317, 32, 33, 89, 91, 90, 196, 0,
     686, 196, 687, 196, 321, 181, 1095, 1096, 1097, 0,
       0, 154, 155, 156, 158, 157, 510, 512, 0, 708,
       0, 513, 0, 0, 0, 155, 156, 158, 157, 26,
       0, 0, 0, 0, 0, 0, 0, 514, 690, 0,
     696, 0, 0, 0, 42, 0, 0, 36, 0, 0,
      53, 0, 0, 688, 196, 196, 318, 621, 0, 652,
     647, 0, 0, 0, 651, 0, 0, 0, 0, 339,
       0, 330, 0, 0, 0, 338, 617, 31, 0, 29,
       4, 52, 0, 72, 424, 0, 0, 9, 75, 71,
      74, 99, 0, 0, 0, 439, 100, 15, 0, 468,
       0, 0, 486, 97, 87, 689, 625, 0, 0, 617,
      88, 0, 0, 0, 118, 0, 449, 403, 634, 404,
     640, 0, 617, 426, 425, 86, 121, 414, 0, 451,
     427, 119, 0, 420, 446, 447, 415, 430, 432, 435,
     448, 0, 83, 471, 525, 526, 527, 528, 546, 163,
     162, 164, 530, 538, 186, 534, 529, 0, 0, 540,
     541, 542, 543, 880, 0, 620, 429, 622, 0, 465,
     318, 679, 0, 319, 710, 185, 671, 672, 668, 646,
     682, 0, 318, 320, 667, 645, 666, 642, 0, 900,
     900, 900, 900, 900, 900, 900, 0, 900, 900, 900,
     900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
     900, 900, 900, 900, 900, 900, 900, 900, 0, 900,
     900, 825, 428, 826, 895, 321, 0, 193, 194, 0,
     887, 0, 0, 196, 0, 0, 0, 522, 508, 0,
       0, 0, 709, 707, 619, 343, 346, 345, 436, 437,
       0, 0, 0, 390, 388, 361, 392, 393, 0, 0,
       0, 0, 0, 0, 288, 0, 0, 204, 203, 0,
       0, 206, 205, 0, 207, 0, 0, 0, 208, 262,
       0, 265, 209, 342, 230, 0, 0, 344, 0, 0,
     410, 0, 0, 428, 411, 673, 373, 363, 0, 0,
     475, 4, 24, 34, 704, 700, 701, 705, 703, 702,
     154, 155, 156, 0, 158, 157, 692, 693, 697, 694,
     691, 0, 318, 328, 329, 327, 670, 669, 38, 37,
      55, 0, 171, 0, 0, 428, 169, 18, 0, 0,
     196, 648, 622, 650, 0, 649, 155, 156, 314, 315,
     334, 621, 0, 658, 333, 0, 657, 0, 341, 320,
     319, 0, 0, 0, 332, 331, 662, 0, 0, 13,
       0, 181, 10, 10, 78, 0, 73, 0, 0, 79,
      82, 0, 467, 469, 136, 105, 813, 103, 394, 104,
     139, 0, 0, 137, 98, 0, 856, 229, 0, 228,
     851, 468, 0, 410, 428, 411, 0, 850, 852, 881,
     863, 0, 0, 664, 0, 0, 888, 621, 0, 632,
     627, 0, 631, 0, 0, 0, 0, 0, 617, 468,
       0, 85, 0, 617, 639, 0, 417, 418, 0, 84,
     468, 0, 0, 422, 421, 416, 433, 434, 455, 454,
     196, 544, 545, 154, 157, 531, 535, 533, 0, 548,
     515, 431, 468, 684, 617, 106, 0, 0, 0, 0,
     685, 617, 112, 618, 0, 653, 679, 711, 185, 935,
       0, 931, 0, 930, 928, 910, 916, 915, 900, 922,
     921, 907, 908, 906, 925, 914, 912, 913, 911, 918,
     917, 904, 905, 901, 902, 903, 927, 909, 920, 919,
     900, 926, 923, 430, 617, 617, 0, 617, 0, 900,
     196, 190, 191, 336, 196, 319, 312, 197, 290, 201,
     198, 0, 0, 0, 0, 189, 189, 0, 179, 0,
     428, 177, 1094, 1103, 0, 523, 612, 609, 0, 522,
     610, 522, 0, 0, 252, 253, 0, 0, 0, 0,
       0, 0, 0, 289, 236, 233, 232, 234, 0, 0,
       0, 0, 0, 342, 0, 936, 0, 231, 235, 444,
       0, 0, 0, 263, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 353, 0, 355,
     360, 359, 395, 0, 0, 396, 0, 0, 0, 241,
     615, 0, 249, 387, 0, 0, 880, 376, 379, 380,
       0, 0, 445, 405, 731, 727, 0, 0, 617, 617,
     617, 407, 734, 0, 237, 0, 239, 0, 677, 409,
       0, 0, 408, 375, 0, 370, 389, 371, 391, 674,
       0, 372, 481, 482, 483, 480, 0, 473, 476, 0,
       4, 0, 695, 196, 698, 43, 47, 48, 0, 61,
       0, 0, 0, 65, 69, 58, 879, 428, 61, 878,
      67, 182, 167, 165, 182, 337, 189, 0, 656, 655,
     341, 0, 659, 0, 21, 23, 99, 10, 10, 81,
      80, 0, 142, 140, 936, 95, 94, 492, 0, 488,
     487, 0, 626, 623, 855, 869, 858, 731, 727, 0,
     468, 874, 617, 468, 468, 0, 0, 468, 0, 468,
     624, 854, 868, 857, 853, 882, 865, 876, 866, 859,
     864, 663, 0, 677, 0, 661, 628, 622, 630, 629,
     621, 0, 0, 0, 0, 0, 0, 617, 638, 0,
     463, 462, 450, 637, 0, 888, 0, 633, 419, 452,
     464, 442, 443, 468, 0, 532, 536, 678, 679, 880,
     880, 680, 549, 550, 552, 880, 555, 554, 0, 0,
     466, 888, 849, 196, 196, 683, 196, 888, 849, 617,
     109, 617, 115, 900, 900, 924, 929, 895, 895, 895,
       0, 934, 0, 195, 313, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 200, 0, 883,
     184, 188, 322, 182, 175, 173, 182, 0, 0, 0,
     511, 523, 608, 0, 0, 0, 0, 0, 0, 0,
     428, 0, 0, 0, 349, 0, 347, 348, 0, 0,
     260, 227, 226, 318, 678, 679, 320, 319, 0, 0,
     493, 520, 0, 225, 224, 286, 287, 840, 839, 0,
     284, 283, 281, 282, 280, 279, 278, 276, 277, 275,
     274, 273, 268, 269, 270, 271, 272, 267, 266, 0,
       0, 0, 0, 0, 0, 0, 243, 257, 0, 0,
     242, 617, 617, 0, 617, 614, 719, 0, 0, 0,
       0, 0, 378, 0, 382, 0, 384, 0, 621, 730,
     729, 722, 726, 725, 879, 0, 0, 744, 0, 0,
     888, 406, 888, 732, 617, 849, 0, 0, 0, 731,
     727, 0, 0, 617, 0, 621, 0, 0, 0, 0,
     475, 0, 0, 27, 0, 0, 699, 0, 468, 50,
      49, 63, 60, 53, 61, 0, 54, 0, 196, 62,
     530, 0, 172, 182, 182, 170, 183, 336, 335, 20,
      22, 77, 99, 456, 814, 0, 0, 489, 0, 138,
     621, 730, 726, 731, 727, 0, 621, 641, 0, 617,
     870, 732, 873, 875, 0, 871, 731, 727, 0, 342,
       0, 673, 0, 872, 877, 0, 0, 890, 0, 0,
       0, 0, 460, 636, 635, 459, 189, 557, 556, 880,
     880, 880, 0, 583, 679, 0, 573, 0, 0, 0,
     586, 0, 135, 130, 0, 185, 587, 590, 0, 0,
     565, 0, 133, 577, 108, 0, 0, 0, 0, 114,
       0, 888, 849, 888, 849, 933, 932, 897, 896, 898,
     323, 310, 311, 0, 308, 307, 305, 306, 304, 303,
     302, 301, 300, 299, 298, 293, 294, 295, 296, 297,
     292, 291, 202, 886, 180, 182, 182, 178, 1104, 1061,
     613, 611, 509, 362, 0, 357, 368, 369, 0, 0,
       0, 0, 348, 351, 755, 0, 0, 0, 0, 261,
       0, 352, 354, 358, 255, 254, 245, 0, 244, 259,
       0, 0, 716, 714, 0, 717, 0, 250, 0, 0,
     196, 385, 0, 0, 0, 723, 622, 728, 724, 735,
     617, 743, 741, 742, 0, 733, 888, 0, 739, 0,
     238, 240, 675, 676, 731, 727, 0, 374, 474, 472,
     318, 0, 25, 35, 706, 0, 64, 59, 66, 70,
      68, 168, 166, 76, 821, 153, 159, 161, 160, 0,
       0, 144, 148, 149, 150, 101, 0, 490, 622, 730,
     726, 731, 727, 0, 617, 646, 732, 0, 0, 676,
     370, 371, 674, 372, 867, 861, 862, 860, 892, 891,
     893, 0, 0, 0, 0, 622, 0, 0, 457, 187,
       0, 559, 558, 553, 617, 849, 582, 0, 574, 587,
     575, 468, 468, 571, 572, 569, 570, 617, 849, 318,
     678, 0, 455, 131, 578, 588, 593, 594, 455, 455,
       0, 0, 455, 129, 579, 591, 455, 0, 468, 0,
     566, 567, 568, 468, 617, 325, 324, 326, 617, 111,
       0, 117, 0, 0, 176, 174, 0, 0, 0, 0,
       0, 750, 0, 496, 0, 494, 264, 285, 0, 246,
     247, 256, 258, 715, 713, 720, 718, 0, 251, 0,
       0, 377, 381, 383, 888, 737, 617, 738, 0, 477,
     479, 44, 822, 815, 819, 146, 0, 152, 0, 750,
     491, 730, 726, 0, 732, 348, 0, 889, 621, 461,
       0, 551, 888, 0, 0, 576, 486, 486, 888, 0,
       0, 0, 468, 468, 0, 468, 468, 0, 468, 0,
     564, 516, 0, 486, 888, 888, 617, 617, 309, 356,
       0, 0, 0, 0, 0, 220, 756, 0, 751, 752,
     495, 0, 0, 248, 721, 386, 324, 740, 888, 0,
       0, 820, 145, 0, 102, 731, 727, 0, 622, 0,
     894, 458, 125, 617, 617, 849, 581, 585, 128, 617,
     468, 468, 602, 486, 318, 678, 0, 589, 595, 596,
     455, 455, 486, 486, 0, 486, 592, 505, 580, 107,
     113, 888, 888, 364, 365, 366, 367, 484, 0, 0,
       0, 0, 0, 0, 0, 746, 757, 766, 745, 0,
    1062, 937, 1063, 952, 1064, 975, 1065, 997, 1066, 1007,
    1067, 1027, 1068, 1044, 1069, 1047, 1088, 1070, 1053, 1089,
    1071, 1058, 1090, 765, 1072, 764, 1091, 1092, 753, 497,
     616, 736, 478, 0, 823, 151, 621, 888, 888, 0,
     888, 601, 598, 600, 0, 0, 468, 468, 468, 597,
     599, 584, 0, 110, 116, 0, 754, 749, 223, 0,
    1099, 1100, 1101, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 221, 748, 747,
     318, 678, 679, 758, 773, 776, 779, 784, 0, 0,
       0, 0, 0, 0, 0, 0, 319, 808, 816, 0,
     836, 812, 811, 810, 0, 768, 0, 0, 428, 772,
     767, 809, 936, 936, 0, 0, 936, 0, 0, 936,
     936, 0, 936, 0, 0, 936, 123, 126, 617, 127,
     468, 468, 607, 486, 486, 507, 0, 506, 501, 485,
    1093, 1098, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 939, 0, 941, 1060, 0, 0, 0, 0,
     985, 977, 0, 979, 0, 0, 0, 1006, 999, 0,
    1001, 1046, 0, 1049, 1052, 1055, 0, 1056, 0, 0,
       0, 0, 969, 0, 970, 959, 0, 961, 1073, 1075,
     222, 829, 831, 832, 0, 0, 762, 0, 0, 0,
     791, 793, 794, 795, 0, 0, 0, 0, 0, 0,
       0, 830, 936, 402, 837, 0, 769, 400, 455, 0,
     401, 0, 455, 0, 0, 770, 807, 806, 1102, 938,
     954, 953, 986, 976, 998, 1008, 1028, 1045, 1048, 0,
    1059, 827, 828, 824, 888, 606, 604, 603, 605, 0,
       0, 518, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 1029, 0,
    1031, 0, 0, 0, 0, 0, 0, 0, 0, 1026,
       0, 0, 0, 0, 1009, 0, 1011, 0, 940, 942,
       0, 0, 0, 0, 978, 980, 0, 0, 0, 1000,
    1002, 1051, 0, 0, 0, 0, 0, 0, 0, 960,
     962, 0, 0, 212, 0, 759, 774, 761, 0, 936,
       0, 0, 0, 787, 936, 796, 0, 805, 45, 158,
      39, 158, 0, 40, 817, 0, 398, 399, 0, 0,
       0, 397, 762, 0, 936, 1054, 124, 504, 503, 96,
      99, 0, 0, 0, 1112, 1111, 1110, 1109, 1108, 1105,
    1107, 1106, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 1030, 1032, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 1010,
    1012, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 972, 973, 974, 971,
       0, 936, 1074, 1076, 219, 0, 428, 0, 762, 762,
     777, 0, 750, 834, 780, 0, 0, 0, 936, 792,
     804, 46, 41, 821, 0, 771, 0, 0, 0, 989,
     988, 992, 994, 991, 0, 502, 945, 946, 947, 0,
     951, 944, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 943, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 948, 949, 981, 982,
     983, 0, 1003, 1005, 1004, 1050, 1057, 963, 964, 965,
       0, 0, 967, 0, 0, 1079, 1078, 1082, 1081, 213,
     455, 760, 775, 0, 763, 835, 0, 833, 785, 789,
     788, 818, 841, 841, 0, 955, 0, 987, 0, 990,
     993, 936, 500, 498, 499, 0, 1035, 1036, 1037, 1038,
    1039, 0, 1043, 1034, 1033, 1040, 1041, 1015, 1016, 1017,
    1018, 1019, 0, 1023, 0, 1024, 1014, 1013, 1020, 1021,
       0, 0, 0, 0, 0, 1077, 0, 1080, 1083, 468,
     210, 0, 0, 216, 0, 215, 762, 936, 0, 0,
       0, 842, 843, 0, 797, 0, 996, 995, 950, 0,
       0, 0, 984, 966, 968, 1084, 1086, 0, 0, 778,
     781, 786, 790, 0, 0, 0, 0, 0, 0, 841,
       0, 0, 1042, 1022, 1025, 936, 936, 217, 211, 0,
       0, 0, 847, 0, 800, 844, 0, 0, 798, 956,
    1085, 1087, 0, 0, 845, 0, 0, 0, 0, 0,
       0, 0, 218, 782, 0, 848, 802, 803, 0, 799,
       0, 762, 0, 0, 957, 783, 846, 801, 762, 958
};


static const yytype_int16 yydefgoto[] =
{
      -1, 1, 469, 3, 470, 182, 805, 375, 198, 5,
       6, 42, 152, 770, 401, 43, 771, 1170, 1682, 45,
     421, 1088, 1789, 775, 46, 47, 431, 48, 1171, 782,
    1091, 783, 784, 785, 50, 189, 190, 51, 814, 201,
     197, 487, 1459, 52, 53, 902, 1192, 908, 1194, 54,
    1173, 1174, 202, 203, 815, 1115, 488, 1319, 1320, 1321,
     646, 1322, 253, 55, 1104, 1103, 794, 791, 1226, 1225,
     956, 953, 151, 1102, 56, 255, 57, 950, 623, 326,
     327, 328, 329, 627, 376, 672, 2142, 1895, 2144, 2145,
    2202, 1506, 378, 1072, 379, 718, 1030, 380, 381, 382,
     629, 383, 333, 59, 277, 776, 450, 171, 60, 61,
     384, 675, 385, 386, 387, 816, 388, 1685, 548, 739,
    1054, 1176, 501, 236, 502, 503, 237, 391, 392, 66,
     515, 238, 215, 228, 68, 529, 549, 1470, 870, 1357,
     216, 229, 69, 562, 871, 70, 71, 766, 767, 768,
    1568, 493, 990, 991, 1930, 1831, 1717, 1632, 72, 651,
     337, 899, 1557, 1718, 1248, 647, 73, 74, 75, 76,
      77, 264, 892, 893, 894, 895, 1178, 1399, 1179, 1180,
    1181, 1384, 1394, 1385, 1547, 1386, 1387, 1548, 1549, 648,
     649, 650, 719, 1060, 505, 209, 527, 520, 218, 79,
      80, 81, 159, 160, 174, 83, 147, 395, 396, 397,
      85, 398, 87, 897, 138, 139, 140, 568, 121, 88,
     399, 1035, 1036, 1055, 1051, 742, 1574, 1575, 1507, 1508,
    1509, 1576, 1421, 1577, 1689, 1774, 1998, 1898, 1899, 1808,
    1690, 1922, 1775, 1999, 1776, 2083, 1777, 2086, 2189, 2221,
    1778, 2146, 2008, 2147, 1904, 489, 812, 1314, 1691, 1792,
    2013, 1453, 1454, 1520, 1705, 1997, 1614, 1692, 2004, 1795,
    2005, 2150, 2151, 2152, 2193, 506, 1056, 850, 1146, 1347,
     508, 509, 510, 846, 511, 165, 848, 1183, 99, 634,
     855, 1350, 1351, 619, 91, 579, 92, 1579, 1580, 1693,
    1581, 1733, 1734, 1582, 1694, 1811, 1923, 2155, 2211, 2228,
    1583, 1766, 1767, 1990, 1584, 1695, 1585, 1742, 1743, 1813,
    1924, 2018, 2019, 2020, 2021, 2101, 2022, 1586, 1696, 1587,
    1749, 1750, 1588, 1697, 1589, 1865, 1866, 1590, 1698, 1591,
    1849, 1850, 1592, 1699, 1593, 1594, 1700, 1595, 1882, 1596,
    1597, 1701, 1598, 1599, 1600, 1702, 1601, 1602, 1603, 1604,
    1891, 1892, 1992, 2074, 2075, 2076, 2077, 2185, 2186, 1605,
    1606, 94, 109, 1607, 1643, 1809, 644, 1942
};




static const yytype_int16 yypact[] =
{
     129, 167, 285, -2029, -2029, -2029, 7208, -2029, 681, 110,
     519, 521, 63, 240, -2029, -2029, 1412, 331, 842, -2029,
   -2029, 274, 290, -2029, -2029, -2029, 1034, 1547, 1109, 341,
   -2029, -2029, 578, 355, -2029, 1469, 1469, -2029, 7069, -2029,
    7208, 370, -2029, -2029, 408, -2029, 28, -2029, -2029, 3573,
   -2029, -2029, 380, 545, 463, 434, 448, -2029, -2029, -2029,
   -2029, 689, 4760, -2029, 14325, -2029, 452, 1035, 989, -2029,
     480, -2029, -2029, 2151, 716, 1012, -2029, 494, 7532, -2029,
   -2029, -2029, 620, -2029, -2029, -2029, 1784, -2029, -2029, 1484,
   -2029, 6255, 580, -2029, -2029, -2029, -2029, -2029, 376, 695,
   -2029, 376, -2029, 376, -2029, -2029, -2029, -2029, -2029, 704,
     479, -2029, 519, 521, 707, 355, -2029, 726, 448, -2029,
     311, -2029, 347, 12213, 706, -2029, -2029, -2029, -2029, -2029,
      31, 719, 677, 714, 783, 890, 795, -2029, -2029, 786,
   -2029, 1045, 519, 521, -2029, 707, 355, -2029, 1449, 2433,
     750, 14581, 811, -2029, -2029, 376, 757, 7169, 4262, -2029,
   -2029, 1984, 2659, 4262, -2029, 1064, 4594, 4594, 7069, 807,
     826, -2029, 689, 1190, 838, 845, -2029, -2029, 1004, -2029,
     910, -2029, 4105, -2029, -2029, 341, 3850, 922, -2029, -2029,
   -2029, 380, 7113, 14629, 1029, 966, -2029, -2029, 974, 480,
    1117, 135, 246, 1048, -2029, -2029, -2029, 6495, 10815, -2029,
   -2029, 6044, 6044, 9234, 620, 1179, -2029, -2029, 886, -2029,
   -2029, 2554, -2029, -2029, -2029, -2029, -2029, 1035, 1405, -2029,
     480, 620, 12213, -2029, -2029, -2029, 1230, 1035, -2029, 480,
   -2029, 7113, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, 1057, 1124, 448, -2029, 480, 1260, 1591, -2029,
   -2029, -2029, -2029, -2029, 1088, -2029, 1366, 480, 347, -2029,
     907, 1132, 1805, 982, -2029, 258, -2029, -2029, -2029, -2029,
   -2029, 6660, -2029, 707, -2029, -2029, -2029, -2029, 3095, -2029,
    1103, 1119, -2029, -2029, -2029, -2029, 1158, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, 1065, -2029,
   -2029, -2029, 1366, 7532, 1515, -2029, 1284, 1165, -2029, 12339,
    1139, 1284, 1284, 376, 14581, 1129, 1267, 261, -2029, 1198,
    1644, 982, -2029, -2029, 1163, -2029, -2029, -2029, -2029, -2029,
   13852, 13852, 1172, -2029, -2029, -2029, -2029, -2029, 1180, 1185,
    1212, 1216, 1219, 1222, 12969, 1644, 13852, -2029, -2029, 13852,
   13852, -2029, -2029, 9126, -2029, 13852, 13852, 1189, 1252, -2029,
   13095, -2029, 11757, 694, 1854, 2857, 13221, -2029, 2490, 1202,
     918, 13978, 14104, 3674, 5261, -2029, 754, -2029, 2710, 3463,
    2394, 910, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
     719, 677, 714, 1644, 783, 890, 1263, 795, -2029, 1280,
   -2029, 3020, 1198, 519, 521, -2029, -2029, -2029, -2029, -2029,
   -2029, 4227, -2029, 7113, 7312, 364, -2029, -2029, 1283, 1284,
     376, -2029, 7169, -2029, 3479, -2029, 1288, 1302, -2029, -2029,
   -2029, 1190, 4262, -2029, -2029, 4262, -2029, 1294, -2029, -2029,
   -2029, 1190, 1190, 1190, -2029, -2029, -2029, 6660, 1299, 1271,
    1301, -2029, -2029, -2029, -2029, 14581, -2029, 1452, 1487, -2029,
   -2029, 1446, -2029, 480, -2029, -2029, -2029, -2029, 1362, -2029,
   -2029, 10059, 12969, -2029, -2029, 1318, -2029, 1252, 1364, 11757,
     459, 3074, 14629, 2108, 5614, 7877, 1373, -2029, 211, 14362,
    1391, 1426, 1163, -2029, 1378, 994, 97, 9479, 7457, -2029,
   -2029, 7457, -2029, 7493, 7493, 9234, 9730, 1383, -2029, 480,
    7113, -2029, 10941, -2029, -2029, 8560, 1230, 1035, 7113, -2029,
     480, 1392, 1395, -2029, -2029, 1230, -2029, 480, 1474, -2029,
    1447, -2029, -2029, 1198, 982, 1057, -2029, -2029, 1260, 3062,
   -2029, 1366, 480, -2029, -2029, -2029, 1451, 1471, 1503, 1489,
   -2029, -2029, -2029, -2029, 7169, -2029, 1277, -2029, 1005, -2029,
    1461, -2029, 1465, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, 1366, -2029, -2029, 497, -2029, 940, -2029,
     376, -2029, -2029, 1600, -2029, 983, 13348, -2029, -2029, 8808,
   -2029, 3032, 4078, 12969, 1504, -2029, -2029, 1284, -2029, 7113,
    2034, -2029, -2029, -2029, 36, -2029, 1519, -2029, 1473, 1531,
   -2029, 261, 1263, 12969, -2029, -2029, 12969, 12969, 12213, 9021,
    9021, 9021, 9021, 12138, -2029, -2029, -2029, -2029, 1480, 13474,
   13474, 9126, 1494, 490, 1496, -2029, 1520, -2029, -2029, -2029,
   10437, 9297, 9126, -2029, 10563, 12969, 12969, 10185, 12969, 12969,
   12969, 12969, 12969, 12969, 12969, 12969, 12969, 12969, 12969, 12969,
   12969, 12969, 12969, 12969, 12969, 12969, 12969, -2029, 12969, -2029,
   -2029, -2029, -2029, 12969, 12969, -2029, 12969, 12213, 3944, 657,
    1678, 11067, -2029, -2029, 1584, 1805, 1613, 1067, 1072, 1083,
    3331, 940, -2029, -2029, 1047, 1047, 8523, 11193, 1571, 1622,
   -2029, -2029, 1015, 9126, -2029, 9126, -2029, 11705, 878, -2029,
     544, 347, -2029, -2029, 12969, -2029, -2029, -2029, -2029, -2029,
     201, 580, -2029, -2029, -2029, -2029, 146, -2029, 1580, 1546,
     910, 3020, 1621, 376, -2029, -2029, -2029, -2029, 2433, 1851,
    1603, 1646, 902, 1625, 1627, -2029, -2029, 14233, 2151, -2029,
    1630, -2029, -2029, -2029, -2029, -2029, -2029, 1284, -2029, -2029,
    1583, 1586, -2029, 1632, -2029, -2029, 380, -2029, -2029, -2029,
   -2029, 1607, -2029, -2029, -2029, -2029, -2029, -2029, 8895, 12138,
   -2029, 1608, -2029, -2029, -2029, -2029, -2029, 2784, 2784, 5006,
     480, -2029, -2029, 480, 480, 2554, 1484, 480, 11832, 480,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, 1426, 1641, -2029,
   -2029, -2029, 12465, 1622, 1101, -2029, -2029, 9479, -2029, -2029,
    9730, 7457, 7457, 9000, 9000, 9730, 544, -2029, -2029, 8560,
   -2029, 1660, -2029, -2029, 1615, 97, 9479, -2029, 1230, -2029,
   -2029, -2029, -2029, 480, 1652, 1057, -2029, 677, 714, -2029,
   -2029, 795, 1673, -2029, -2029, 253, -2029, -2029, 1649, 4558,
   -2029, 97, 8115, 376, 376, -2029, 376, 97, 8115, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, 422, 422, 422,
    1342, -2029, 1284, -2029, 8808, 13348, 13348, 10185, 13348, 13348,
   13348, 13348, 13348, 13348, 13348, 13348, 13348, 13348, 13348, 13348,
   13348, 13348, 13348, 13348, 13348, 13348, 1805, 355, 1624, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, 1773, 1617, 12969,
   -2029, 1644, -2029, 1633, 1628, 11884, 9155, 1635, 1642, 1668,
    4135, 1682, 1688, 1701, -2029, 1666, -2029, -2029, 1667, 1722,
   -2029, -2029, 12138, 1723, 1272, 1372, 200, 282, 12969, 1729,
   -2029, 1725, 1683, -2029, 12138, 12138, 12138, -2029, -2029, 1734,
    8189, 5297, 6564, 8112, 7012, 7651, 4437, 3753, 3753, 3753,
    2479, 2479, 1629, 1629, 1077, 1077, 1077, -2029, -2029, 1685,
    1690, 1689, 1695, 1691, 1697, 9021, 657, -2029, 10059, 12969,
   -2029, -2029, -2029, 12969, -2029, -2029, 1720, 13852, 1698, 1730,
    1743, 1776, -2029, 12969, -2029, 12969, -2029, 12969, 3433, 2911,
   -2029, -2029, 2911, -2029, 70, 1708, 1718, -2029, 1717, 9021,
      97, -2029, 97, 3144, -2029, 8115, 11319, 1724, 1736, 11959,
   11959, 7711, 1738, 13095, 1747, 5456, 3626, 3463, 1399, 1753,
    2394, 1755, 13600, -2029, 1721, 1775, -2029, 1284, 480, -2029,
   -2029, -2029, -2029, -2029, 2419, 4227, -2029, 9021, -2029, -2029,
    1385, 13348, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, 380, -2029, -2029, 2051, 1812, -2029, 14, -2029,
    3074, 3413, 3413, 3810, 3810, 5006, 6853, 314, 2554, -2029,
   -2029, 4309, -2029, -2029, 4739, -2029, 12086, 12086, 8313, 534,
    1760, 771, 3288, -2029, -2029, 10059, 9426, -2029, 6054, 2188,
    2188, 2668, -2029, -2029, -2029, 1810, -2029, -2029, -2029, -2029,
   -2029, -2029, 1879, -2029, 1482, 1386, -2029, 12969, 9856, 8453,
   -2029, 8453, 391, 391, 675, 1118, 2847, 14454, -9, 5191,
   -2029, 171, 391, -2029, -2029, 1770, 1284, 1284, 1284, -2029,
    1789, 97, 8115, 97, 8115, -2029, -2029, -2029, -2029, -2029,
   -2029, 8808, 8808, 1824, 7625, 6994, 4014, 5853, 8374, 5685,
    5372, 4755, 4755, 2487, 2487, 2018, 2018, 1236, 1236, 1236,
   -2029, -2029, 1471, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   12138, -2029, -2029, -2029, 9021, -2029, -2029, -2029, 1815, 1818,
    1820, 1822, 1583, -2029, -2029, 7555, 10059, 9555, 1801, -2029,
   12969, -2029, -2029, -2029, -2029, -2029, 1125, 1804, -2029, -2029,
    1809, 594, 1796, 1796, 1811, 1796, 12969, -2029, 13852, 1953,
     376, -2029, 1825, 1830, 1831, -2029, 3433, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, 3433, -2029, 97, 1837, -2029, 1819,
   -2029, -2029, -2029, -2029, 4772, 4772, 6123, -2029, -2029, -2029,
     241, 1845, -2029, -2029, -2029, 1867, -2029, -2029, -2029, -2029,
    8808, -2029, -2029, -2029, 1836, -2029, 719, 783, 890, 191,
    1144, -2029, -2029, -2029, -2029, -2029, 9681, -2029, 3074, 3413,
    3413, 5255, 5255, 14196, -2029, 1032, 4309, 3074, 1849, 1237,
    1316, 1537, 1551, 1102, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, 251, 3771, 3771, 1187, 1187, 1187, 10059, -2029, -2029,
    3062, -2029, -2029, -2029, -2029, 8115, 12138, 228, -2029, 2293,
   -2029, 480, 480, -2029, -2029, -2029, -2029, -2029, 8115, 1159,
    1525, 12969, 1474, -2029, 1903, -2029, -2029, -2029, 565, 619,
    1784, 2659, 967, 391, 1905, -2029, 1543, 1904, 480, 6714,
   -2029, -2029, -2029, 480, -2029, -2029, 1915, -2029, -2029, -2029,
    1858, -2029, 1859, 13348, -2029, -2029, 1862, 12969, 12969, 12969,
   12969, 48, 10059, -2029, 1916, -2029, -2029, 12138, 12969, -2029,
    1125, -2029, -2029, -2029, -2029, -2029, -2029, 1865, -2029, 1931,
    1284, -2029, -2029, -2029, 97, -2029, -2029, -2029, 12969, -2029,
   -2029, -2029, -2029, 1836, -2029, -2029, 981, -2029, 12969, 48,
   -2029, 3237, 3237, 544, 3505, 1587, 6054, -2029, 1187, -2029,
   10059, -2029, 97, 1876, 1203, -2029, 1926, 1926, 97, 1880,
   12969, 12969, 7991, 480, 4497, 480, 480, 5555, 480, 4880,
   -2029, -2029, 7445, 1926, 97, 97, -2029, -2029, 8808, -2029,
    1882, 1883, 1884, 1890, 1644, -2029, -2029, 8691, 1961, -2029,
   -2029, 10059, 1888, -2029, -2029, -2029, -2029, -2029, 97, 1897,
    1921, -2029, -2029, 1908, -2029, 3924, 3924, 14677, 4329, 4329,
   -2029, -2029, -2029, -2029, -2029, 8115, -2029, -2029, -2029, -2029,
    7991, 7991, -2029, 1926, 1229, 1526, 12969, -2029, -2029, -2029,
    1474, 1474, 1926, 1926, 1277, 1926, -2029, -2029, -2029, -2029,
   -2029, 97, 97, -2029, -2029, -2029, -2029, -2029, 1492, 269,
    2041, 1645, 5193, 1534, 5808, -2029, -2029, -2029, -2029, 11445,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, 8792, -2029, -2029, 4329, 97, 97, 1909,
      97, -2029, -2029, -2029, 12969, 12969, 7991, 480, 480, -2029,
   -2029, -2029, 6919, -2029, -2029, 1644, -2029, -2029, -2029, 1906,
   -2029, -2029, -2029, 1911, 283, 1914, 436, 190, 1917, 326,
    1919, 1922, 837, 599, 1930, 1935, 294, -2029, -2029, -2029,
    1963, 1568, 1611, -2029, -2029, -2029, -2029, -2029, 12969, 1970,
    1982, 1992, 12591, 477, 1644, 1056, 1259, -2029, -2029, 12717,
    2083, -2029, -2029, -2029, 1996, -2029, 5053, 14502, 14726, 2048,
   -2029, -2029, 138, 160, 2047, 2008, 160, 2047, 2008, 160,
     160, 12969, 160, 1955, 1967, -2029, -2029, -2029, -2029, -2029,
    7991, 7991, -2029, 1926, 1926, -2029, 10689, -2029, -2029, -2029,
   -2029, -2029, 1989, 1995, 1997, 2000, 2001, 2002, 539, 2004,
    1802, 2005, -2029, 828, -2029, -2029, 2014, 2015, 2020, 2022,
   -2029, -2029, 483, -2029, 2024, 2025, 2033, -2029, -2029, 340,
   -2029, -2029, 2107, -2029, -2029, -2029, 1267, -2029, 2035, 2036,
    2037, 2039, -2029, 2042, -2029, -2029, 905, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, 1213, 1213, 2029, 2043, 2044, 6167,
   -2029, -2029, -2029, -2029, 2072, 12969, 2077, 2075, 2087, 1799,
    1839, -2029, -2029, -2029, -2029, 2053, -2029, -2029, 1474, 1592,
   -2029, 1598, 1474, 12843, 1626, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, 12011,
   -2029, -2029, -2029, -2029, 97, -2029, -2029, -2029, -2029, 2038,
   14921, 2049, 1267, 1267, 1267, 1759, 1267, 12969, 2054, 2057,
    2060, 2062, 2067, 2068, 2071, 2076, 2078, 2079, -2029, 777,
   -2029, 12969, 2080, 2085, 2086, 2089, 2091, 2093, 2095, -2029,
    2096, 2098, 2100, 2101, -2029, 2500, -2029, 1381, -2029, -2029,
    1267, 1267, 1267, 1759, -2029, -2029, 1267, 1267, 1267, -2029,
   -2029, -2029, 2056, 324, 1267, 1267, 1267, 1759, 1478, -2029,
   -2029, 2105, 2105, -2029, 12213, -2029, -2029, -2029, 2152, -2029,
    8067, 12213, 12969, -2029, 160, -2029, 2114, -2029, -2029, 2141,
   -2029, 2087, 1799, -2029, -2029, 2222, -2029, -2029, 13726, 13726,
    9807, -2029, 2029, 2111, 225, -2029, -2029, -2029, -2029, 463,
     380, 371, 374, 388, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, 2143, 394, 9349, 1267, 1267, 1267, 1267, 1267,
    1759, 1267, 12969, 12969, 1384, -2029, -2029, 11498, 1267, 1267,
    1267, 1267, 1267, 1759, 1267, 1478, 12969, 12969, 1472, -2029,
   -2029, 2094, 2099, 417, 456, 491, 2148, 552, 561, 595,
    2124, 2130, 604, 635, 665, 2150, -2029, -2029, -2029, -2029,
     720, 256, -2029, -2029, -2029, 2102, 638, 7113, 2029, 2029,
   -2029, 11575, 48, -2029, -2029, 2155, 2136, 14971, 160, -2029,
   -2029, -2029, -2029, 1836, 173, -2029, 8067, 2726, 2090, 2267,
    2267, -2029, -2029, -2029, 181, -2029, -2029, -2029, -2029, 1267,
   -2029, -2029, 723, 734, 740, 752, 756, 2189, 762, 11628,
   14755, 2138, 2140, -2029, 764, 782, 792, 798, 801, 2195,
     813, 856, 14777, 14827, 2153, 2154, -2029, -2029, -2029, -2029,
   -2029, 1267, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
    1267, 12969, -2029, 1774, 2157, 2156, 2156, -2029, -2029, -2029,
    1474, -2029, -2029, 1227, -2029, -2029, 9933, -2029, -2029, -2029,
   -2029, 1836, 76, 76, 2203, -2029, 2158, -2029, 2266, 2267,
   -2029, 160, -2029, -2029, -2029, 861, -2029, -2029, -2029, -2029,
   -2029, 1267, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, 1267, -2029, 12969, -2029, -2029, -2029, -2029, -2029,
     871, 875, 14849, 2159, 2160, -2029, 1361, 2156, -2029, 480,
   -2029, 12969, 2211, -2029, 2213, -2029, 2029, 160, 2187, 1644,
      61, 2221, -2029, 437, -2029, 9933, -2029, -2029, -2029, 883,
     892, 14899, -2029, -2029, -2029, -2029, -2029, 2218, 2170, -2029,
   -2029, -2029, -2029, 12969, 2169, 2312, 2228, 76, 2312, 76,
    2232, 2233, -2029, -2029, -2029, 160, 160, -2029, -2029, 10311,
    2182, 2320, -2029, 896, -2029, -2029, 935, 153, -2029, -2029,
   -2029, -2029, 10059, 2186, -2029, 2208, 2325, 2241, 2242, 2312,
    2243, 10311, -2029, -2029, 12969, -2029, -2029, -2029, 961, -2029,
    2194, 2029, 2204, 2255, -2029, -2029, -2029, -2029, 2029, -2029
};


static const yytype_int16 yypgoto[] =
{
   -2029, -2029, 2354, -2029, -331, 2168, -397, 47, -5, 2358,
   -2029, 2322, -2029, -2029, -2029, -1539, -2029, 115, -2029, -1527,
   -2029, -2029, 573, 1595, 32, -400, -2029, -2029, 93, -2029,
    -709, -2029, -2029, 1273, 55, 2181, 1895, 2191, -2029, 442,
    -185, -803, -2029, 20, 64, -2029, -2029, -2029, -2029, -2029,
    1197, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, 919,
      24, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, 2271, -626, 7892, -165, -74, -600, -184, 15,
    2230, -579, -2029, -2029, -2029, 21, -2029, 610, 234, -1478,
   -2029, -1426, -139, 127, -318, -2029, -972, 3457, 4575, 1763,
    1331, 5566, 2066, -371, -53, -111, 1209, -158, -67, 430,
   -2029, -2029, -2029, -373, -2029, -2029, -2029, -1602, -55, -385,
    2626, 49, 8, -115, 35, 65, -222, -2029, -2029, -2029,
      -6, -128, -182, -189, 17, -4, 428, -2029, -262, -2029,
   -2029, -2029, -2029, -2029, 29, 1257, 1767, -2029, 1324, -2029,
   -2029, -951, -471, 1593, -2029, -2029, -2029, -2029, -28, -2029,
   -2029, -2029, -2029, -2029, -2029, 1756, -401, -2029, -2029, -2029,
   -2029, -2029, -2029, 1049, 1250, -2029, -2029, -2029, 1014, -1089,
   -2029, -2029, -2029, -2029, -2029, -2029, 1240, -2029, 929, 1778,
   -2029, 1479, 1715, 2996, 11, 2217, 1495, 492, -2029, -532,
   -2029, 147, 2202, 3308, -164, 628, -120, 6016, 2058, -2029,
    7116, 2925, 1814, -14, -117, -2029, 2302, -80, -2029, 6560,
    4304, 118, -2029, 2145, -255, -2029, -2029, 868, -2029, -2029,
     942, 1795, -2029, -1649, -2029, -2029, -2029, -1815, -2029, -1383,
     471, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, 450, -2029, -2029, -2029, -2029,
   -2029, 464, -1442, -2029, -2029, -59, -2029, -2029, 462, -2029,
    -671, -1942, -2029, 304, -2028, -762, -116, 1638, -2029, -2029,
   -2029, -2029, -408, -2029, -406, -245, -2029, 80, -2029, -2029,
    1282, 1016, -2029, 785, -2029, 2392, -250, -582, -2029, -2029,
   -2029, -2029, 753, -2029, -2029, 800, -2029, -2029, -2029, -2029,
   -2029, -2029, 733, 527, -2029, -2029, -2029, -2029, 758, 803,
   -2029, -2029, -2029, 484, -1895, -2029, -2029, -2029, -2029, -2029,
   -2029, 759, -2029, -2029, -2029, -2029, 637, -2029, -2029, -2029,
   -2029, 658, -2029, -2029, -2029, -2029, -2029, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -2029, -2029, 252, -2029, -2029,
   -2029, -2029, 614, -2029, -2029, 439, -1965, -2029, -2029, -2029,
   -2029, -2029, -2029, -2029, -2029, -1635, 3157, -1529
};






static const yytype_int16 yytable[] =
{
      67, 41, 453, 456, 478, 537, 476, 214, 748, 1114,
     477, 1521, 275, 137, 63, 465, 999, 78, 559, 278,
     820, 195, 569, 789, 420, 790, 758, 896, 757, 429,
     788, 781, 324, 1524, 67, 41, 951, 427, 428, 240,
    1681, 64, 117, 67, 561, 923, 158, 163, 63, 199,
     130, 78, 1683, 40, 1258, 62, 1823, 63, 227, 419,
      78, 1814, 683, 1397, 1817, 1818, 194, 1820, 497, 191,
     769, 65, 266, 744, 746, 64, 806, 1793, 269, 1099,
    1368, 187, 1370, 824, 193, 322, 90, 40, 2148, 62,
    1400, 507, 556, 979, 278, 426, 186, 252, 192, 49,
     613, 789, 323, 847, 188, 65, 573, 2015, 544, 546,
    1326, 2138, 536, -885, 65, 1504, 331, 393, 332, 748,
      90, 44, 545, 180, 1578, 2100, 402, 1897, 226, -2,
     853, 403, 957, 49, 394, 741, 485, 214, 749, 752,
    1185, 1398, 49, 1914, 377, 435, 1190, 635, 636, 761,
    2196, 2153, 1570, 1571, 278, 44, 321, 1572, 195, 63,
    2175, 181, 78, 416, 1327, 119, 825, 4, 1105, 826,
     439, 613, 2138, 104, 1570, 1571, 67, 452, 455, 1572,
      67, 2218, 2102, 2081, 2082, 958, 434, 227, 390, 448,
      63, 1659, 1455, 78, 63, 854, 1106, 78, 1505, 240,
     433, 504, 473, 194, 2100, 2149, 191, 437, 240, 240,
    2176, 1744, 1745, 1746, 578, 432, 65, 64, 187, 980,
      98, 193, 518, 521, 841, 1747, 393, 540, 482, 514,
    -142, 62, 1116, 186, -142, 192, 285, 2197, 240, 1570,
    1571, 188, 1080, 394, 2017, 49, 833, 65, 741, 749,
     752, 65, 2209, 541, 795, 796, 1203, 226, 93, 758,
    1160, 757, 90, 2092, 111, 125, 126, 486, 1401, 342,
    1570, 1571, 2093, 1897, 353, 1572, -142, 728, 880, 49,
    -142, 555, 557, 1573, 1429, -3, -141, 1456, 1806, 2023,
     153, 30, 93, 465, 240, 1081, 567, 390, 2003, -158,
     900, 777, 2210, 1287, 1722, 1573, 1723, 842, 1724, 1807,
     843, 1725, 1726, 486, 339, 10, 11, 266, 102, 1727,
    1728, 1402, 2094, 393, 105, 1161, 720, 1224, 640, 490,
    1227, 2171, 1729, 772, 498, 727, 1730, 1448, 103, 1731,
     394, 571, 63, 1748, 1976, 78, 491, 1466, 637, 1897,
    1897, 10, 11, 497, 127, 128, 2078, 645, 1985, 453,
     456, 1744, 1745, 1746, 652, 240, 1637, 393, 465, 434,
    1573, 233, 234, 235, 492, 1747, 110, 1474, 792, 322,
    1094, -157, 761, 639, 394, 1306, 572, 758, 266, 664,
    1449, 1637, 155, 886, 390, 340, 323, -640, 638, 65,
    1467, 2073, 123, 1400, 145, 341, 2225, 240, 544, 546,
    1111, 1112, 18, 2229, 2003, 285, 1995, 544, 124, 1638,
     957, 2037, 878, 2006, 765, 787, 142, 143, 227, 22,
    1410, 573, 1412, 546, 2049, 24, 1732, 652, 390, 1084,
     145, 146, -640, -640, 1770, 27, 830, 195, 837, 839,
     321, 150, 19, 952, 1752, 797, -455, 1736, 1513, 1737,
    1738, 793, 1681, -640, 1739, 155, 2157, 957, 172, 67,
     957, 1740, 824, 1981, 1683, 569, 240, 1311, 1312, 1753,
     111, 125, 126, 63, 957, 546, 78, -192, -455, -192,
     957, -455, 194, 1879, 497, 808, 227, 1897, 178, 266,
     339, 142, 143, 787, 1736, 179, 1737, 1738, 240, 240,
     193, 1739, 30, 957, 497, 145, 146, 240, 1740, 1309,
    2026, 2009, 200, 2027, 192, 1536, 1537, 2178, 196, 614,
     831, 204, 749, 240, 861, 862, 2179, 2028, 205, 615,
      65, -455, 1558, 2030, 883, 22, 285, 339, 10, 11,
    2200, 2201, 957, 874, 217, 825, 1359, 1259, 826, -879,
    1838, 1839, 1840, 1841, 1842, 884, 2058, 1843, 1844, 497,
     127, 128, 1897, 707, 497, 1845, 2085, 497, 497, 1897,
     232, 340, 885, 1323, 954, 240, 2180, 957, 1846, 1741,
     145, 341, 1623, 263, 1785, 1847, 172, 172, 172, 1414,
    1415, 1629, 1630, 1473, 1631, 2059, 19, 336, 497, 100,
    -455, 102, 240, 1107, 274, 497, 1479, -339, 708, 821,
    1758, 1110, 1759, 1760, -403, 2090, 19, 1761, 340, 101,
     896, 103, 1762, 1763, 1764, 922, 1874, 145, 341, -332,
    2060, -455, -455, 172, 1157, 1158, 234, 235, 957, 1521,
    1162, 777, 393, 970, 970, 970, 970, 957, 1090, 720,
    -403, 274, -339, -339, -403, 393, 175, 1089, 153, 394,
     394, 394, 394, 394, 1344, 1346, 393, 733, -404, 967,
      19, 19, 394, -332, 217, -455, 18, 789, 154, 790,
     325, 957, 1848, 394, 788, 781, 569, -403, 330, 497,
     957, 2062, 465, 22, 758, 989, 757, 335, 998, 24,
    2063, 393, 322, 497, -404, 749, -455, -455, -404, 27,
    -455, 733, 852, 390, 390, 390, 390, 390, 394, 323,
     787, 957, 839, 217, 1373, 1021, 390, 393, 1200, 393,
    1027, 504, 1038, 1432, 2064, 1049, 1052, 390, 613, 1040,
     544, -404, 1765, 2067, 394, 683, 394, 1028, 1058, 240,
     948, 957, 1827, 1828, 2172, 137, 852, 405, 278, 758,
    1374, 1341, 206, 1619, 1375, 1423, 1425, 707, 95, 285,
     964, 420, 390, 321, 2068, 1029, 507, 101, 1087, 410,
     411, 412, 507, 1275, 175, 175, 175, 153, 1838, 1839,
    1840, 1841, 1842, 1092, 406, 1843, 1844, 1376, 390, 404,
     390, 259, 1100, 1845, 2069, 260, 2071, 207, 208, 957,
    1275, 338, 708, 787, 103, 1175, 1846, 761, 896, 96,
     957, 97, 504, 1847, 400, 1019, 957, 753, 1121, 1122,
    1020, 175, 989, 1022, 1023, 111, 112, 113, 957, 1722,
     240, 1723, 957, 1724, -665, 1425, 1725, 1726, 957, 1130,
     957, 430, 1132, 1133, 1727, 1275, 1135, 440, 1143, 2072,
     413, 1275, 2106, 407, 1149, 1150, 853, 1729, 957, 414,
     415, 1079, 754, 2107, 1731, 409, 1469, -617, 957, 2108,
     497, -617, 1343, 67, 957, 185, 787, 957, 285, -665,
    -665, 2109, 787, 1304, 497, 2110, 497, 63, 497, 957,
      78, 2112, 1155, 2117, 1360, 1361, 1362, 465, 1186, 1187,
    -665, 1188, 142, 143, 1323, 217, 1758, 1313, 1759, 1760,
    1955, 2118, 30, 1761, 1177, 114, 115, 116, 1762, 1763,
    1764, 2119, 240, 497, 142, 143, 1169, 2120, 998, 507,
    2121, 1510, 2124, 172, 172, 172, -332, 957, 872, 453,
     456, 1061, 2123, 1172, 65, 1756, 879, 957, 465, 206,
    1222, 957, 453, 456, -617, 458, -617, -617, -617, 957,
     408, 1868, 1315, 285, 1316, 887, 888, 466, 957, -617,
    1757, -617, 2206, 217, -660, 217, 217, 563, 1095, 1531,
     155, 733, 1405, 1406, 1407, 2125, -617, -617, 30, 856,
    2158, 145, 146, 1096, 207, 532, 468, 440, 856, 970,
    2162, 1275, 217, 1261, 2163, 734, -134, -617, 19, 1275,
     217, 2206, 2182, 145, 146, 735, 394, 111, 125, 126,
    1609, 2183, 233, 234, 235, 2207, 736, 737, 131, 132,
     133, 142, 143, 970, 1264, 181, 15, 2206, 1889, 787,
      -8, 278, -134, 480, -147, 504, -134, 111, 446, 447,
     394, 30, 570, 1275, 1317, 1318, 507, 733, 507, -199,
    1049, 1052, 1275, 18, 2208, 241, 242, 1289, 911, 787,
     390, 970, 155, 155, -199, 1175, -199, 1175, 1064, -134,
      22, 1324, 481, 1175, 765, 1175, 24, 261, 394, -147,
    2223, 262, 22, 142, 143, -639, 27, 1305, 1092, 787,
     484, 1383, 852, 979, 390, 241, 479, 127, 128, 129,
     733, 217, 504, 912, 1329, 1330, 144, 30, 134, 135,
     145, 146, 970, 1065, 1066, 494, 30, 1329, 1330, 1788,
    1042, 175, 175, 175, 734, 1044, 1260, 127, 115, 394,
    -639, -639, 390, 67, 735, 67, 1046, 550, 1371, 1372,
    1272, 227, 1273, 67, 1274, 736, 737, 63, 1403, 63,
      78, -639, 78, 560, 1147, -317, 787, 63, 787, 144,
      78, 10, 11, 282, 979, 1043, 12, 705, 706, 30,
    1045, 1377, 145, 146, 1177, 789, 1177, 1704, 1027, 1301,
     979, 1047, 325, 390, 1177, 564, 1169, 610, 1169, 551,
    1369, 2103, 102, 552, 285, 1028, 1169, 1457, 970, 1148,
    -317, -317, 580, 1172, 65, 1172, 65, 543, 234, 235,
    1382, 1392, 103, 1172, 65, 394, 1378, 170, 582, 507,
    -341, -317, 22, 1029, 1428, 22, 1516, 588, 1480, 172,
     565, 624, 507, 553, 112, 113, 25, 633, 172, 440,
     643, 1424, 1458, 1275, 1275, 530, 531, 30, 18, 217,
     145, 146, 642, 459, 460, 1440, 1534, 1437, 563, 285,
     787, 653, 157, 157, 1352, 173, 1893, 461, -341, 390,
     656, 24, -341, 853, 1353, 1049, 1052, 462, 657, 497,
    2140, 27, 37, 658, 1383, 1354, 275, 2001, 463, 497,
    -341, 230, 659, 278, 239, 1175, 660, 787, 1624, 661,
     256, 1535, 662, -341, -341, 267, -341, -341, 679, 440,
     979, 1894, 1461, 1462, 340, 339, 142, 143, 680, 856,
    1424, 732, 856, 114, 554, 2141, 944, 945, 1791, 787,
     909, 1275, 100, 1149, 1150, -341, -341, 102, 856, 155,
     774, -155, 787, 773, 234, 235, 454, 457, 1483, 624,
    1433, 1434, 101, 1436, 1485, 1486, -341, 103, 1483, 1488,
     142, 143, 1486, 67, 621, 621, 622, 622, 101, -318,
    1476, 1477, 339, 10, 11, 910, 1971, 63, 1972, 2041,
      78, 2042, 103, 578, 18, 442, 979, 979, 1175, 507,
     442, -7, 170, 451, 451, 173, 340, 1491, 106, 107,
     108, 22, 1493, 1382, 1177, 145, 341, 24, 1500, 1501,
    1502, 1503, 1324, 800, -318, -318, 1169, 27, 803, 1512,
     230, 804, 422, 423, 424, 12, 483, 175, 811, 577,
     970, 813, 102, 1172, 65, -318, 175, 822, 517, 517,
     526, -156, 156, 142, 143, 12, 30, 394, 15, 145,
     146, -60, 103, 340, 239, -60, 67, 282, 10, 11,
      12, -878, 145, 341, 547, 550, -60, 2054, 1801, 2055,
      63, 538, 539, 78, 1799, 2133, 1804, 2134, 1986, 1987,
    1988, 1542, 1543, 823, 1552, 1553, 577, 1555, 2203, 142,
     143, 787, 840, 239, 1989, 25, 849, 1177, 1567, 787,
     851, 390, 868, 272, 22, 19, 1461, 1462, 574, 1169,
    2220, 881, 283, 273, 882, 25, 1627, 1628, 530, 809,
     131, 132, 133, 172, 172, 172, 1172, 65, -192, 30,
      25, 903, 32, 33, 979, 1364, 172, 172, 172, 1621,
    1622, 37, 102, 1688, 1680, 1519, 35, 283, 33, 239,
     267, 904, 674, 538, 810, 1523, 36, 63, 1635, 1636,
      78, 37, 103, 905, 111, 112, 113, 38, 172, 906,
    1684, 949, -132, -884, 19, 30, 37, 787, 145, 146,
    1365, 853, 856, 913, 1687, 100, 100, 914, 856, 959,
    -316, 1041, 614, 960, 1481, 1625, 1679, 961, 1686, 974,
     451, 1798, 615, 1798, -666, 101, 101, 30, -132, 979,
     134, 135, -132, 976, 65, 977, 979, 111, 125, 126,
     239, 267, 131, 887, 888, 1712, 1713, 1714, 100, 1719,
     240, 1640, 1641, 1642, 497, -316, -316, 1772, 1388, 980,
    -341, 454, 801, 1688, 1039, -132, 1654, 1655, 101, -666,
    -666, 227, 142, 143, 114, 115, -316, 63, 530, 1916,
      78, 230, 239, 1784, 538, 1917, 1083, 1786, 1787, 1059,
    -666, 102, 1197, 1198, 1199, 1061, 519, 522, 1082, 442,
    1773, 1086, 442, 1093, 1687, -341, -341, 24, 173, 173,
     173, 103, 530, 1921, 574, 1097, 1679, 1098, 1686, 1109,
    1101, 2212, -335, 454, 457, 1108, -335, 127, 128, 1825,
    1826, 1145, 134, 135, 65, 2025, 702, 703, 704, 705,
     706, 175, 175, 175, 453, 456, 1113, 1119, 483, 230,
    1152, 239, 267, 1156, 175, 175, 175, 1153, 30, 1159,
    1229, 145, 146, 1223, 613, 857, 1228, 1233, 857, 1238,
     860, 860, 526, 1232, 1236, 1031, 483, 270, 10, 271,
      12, 1237, 876, 1239, 547, 1032, 175, 483, 540, 1240,
     142, 143, 111, 125, 126, 573, 1906, 1033, 111, 125,
     126, 566, 1241, 1910, 1913, 1242, 1243, 1244, 547, 483,
     856, 1247, -154, 1852, 1853, 1854, 1855, 1856, 1246, 856,
    1857, 1858, 1249, 1250, 1251, 1859, 1860, 243, 1861, 1252,
    1255, 1253, 111, 125, 126, 1254, 1256, 856, 856, 1266,
    1268, 1862, 1269, 1270, 410, 411, 412, 1279, 1863, 1271,
      25, 1388, 1934, 1935, 1936, 1937, 1938, 1280, 272, 1281,
     547, 1302, 1303, 1290, 1939, 1940, 1941, 32, 273, 454,
     975, 25, 131, 887, 888, 1291, 30, 1292, 1996, 145,
     146, 674, 1909, 128, 1688, 1996, 1293, 239, 127, 128,
     280, 274, 1297, 1031, 1299, 323, 37, 1325, 63, 1339,
    1358, 78, 323, 1032, 393, 1994, 1654, 1655, 2133, 1404,
    2134, 998, 1994, 1413, 243, 1033, 173, 173, 451, 861,
     862, 394, 1911, 128, 280, 1687, 2012, 709, 1408, 451,
     243, 30, 2080, 1417, 414, 415, 1418, 1679, 1419, 1686,
    1420, 1426, 674, 1430, 674, 1864, 1074, 924, 1431, 321,
     856, 1439, 280, 1435, 1451, 65, 321, 1452, 240, 30,
     499, 1447, 134, 135, 1441, 280, 1550, 710, 711, 1442,
    1443, 712, 713, 714, 715, 390, 1446, 270, 142, 143,
      12, 1048, 1048, 1048, 1450, 1688, 1680, 243, 1465, 1484,
     451, 1489, 451, 1490, 1075, -706, 243, 1496, 1497, 63,
    1688, 1499, 78, 858, 1515, 1511, 859, 1514, 519, 522,
     856, 856, 1684, 243, 63, 1533, 491, 78, 1504, 1539,
     877, 1563, 1564, 1565, 243, 280, 1687, 998, 170, 1566,
    1610, 233, 234, 235, 239, 256, 1612, 1140, 1679, 1613,
    1686, 1687, 1315, 1639, 1316, 887, 888, 1615, 1708, 1720,
      25, 1074, 1771, 1679, 1721, 1686, 65, 1735, 272, 1780,
    1751, 280, 1754, 454, 801, 1755, 2139, 32, 273, 1781,
    1996, 65, 18, 1768, 1120, 1120, 1126, 483, 1769, 1782,
     483, 483, 1794, 1796, 483, 1126, 483, 323, 1805, 22,
    1810, 274, 280, 1812, 1821, 24, 37, 1994, 856, 173,
    1881, 156, 10, 11, 12, 27, 1822, 1832, 857, 857,
     860, 860, 526, 1833, -936, 1834, 876, 663, 1835, 1836,
    1837, 955, 1851, 1867, -147, 941, 942, 943, 944, 945,
     483, 30, 1870, 1871, 1317, 1318, -143, -143, 1872, 1996,
    1873, 321, 1876, 1877, 111, 112, 113, 1154, 244, 245,
     246, 1878, 2168, 1884, 1885, 1886, 323, 1887, 2167, 1905,
    1888, 1900, 1901, 2174, 1907, 403, 1994, 1908, 217, -147,
     217, 1915, 1945, 1184, 25, 1946, 1927, 1929, 1947, 1189,
    1948, 733, 10, 11, 2190, 1949, 1950, 265, 30, 1951,
    1991, 32, 33, 2000, 1952, 1980, 1953, 1954, 1958, 243,
     998, 2010, 280, 1959, 1960, 827, 22, 1961, 243, 1962,
     321, 1963, 247, 1964, 1965, 828, 1966, 239, 1967, 1968,
      37, 2011, 998, 172, 2014, 2222, 829, 737, 164, 2016,
    2097, 30, 2029, 2056, 114, 115, 248, 2061, 2057, 2070,
     243, 2079, 2087, 22, 819, 499, 1201, 1202, 280, 1204,
    1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214,
    1215, 1216, 1217, 1218, 1219, 1220, 1221, 2065, 30, 454,
     975, 145, 146, 2066, 243, 2088, 2098, 2115, 2111, 2116,
     249, 250, 251, 243, 2122, 1352, 1379, 1380, 11, 12,
    2154, 2136, 2128, 2129, 2096, 1353, 1276, 2135, 2169, 1276,
    2170, 2156, 2165, 2166, 243, 2173, 1354, 2177, 2187, 2188,
    1284, 2191, 519, 522, 2192, 2194, 1075, 1075, 1075, 2198,
    2199, 2204, 2205, 454, 457, 2213, 2214, 2215, 2216, 2217,
    2219, 243, 1282, 2224, 1283, 483, 454, 1338, 172, 172,
     172, 256, 2227, 2226, 2, 475, 858, 859, 519, 522,
     443, 7, 177, 1912, 877, 445, 1085, 474, 1307, 25,
     807, 2024, 280, 472, 1393, 1522, 334, 170, 1328, 1328,
    1126, 1126, 1126, 30, 438, 1896, 32, 33, 1337, 2181,
    1475, 620, 1381, 1126, 1126, 1126, 499, 111, 125, 126,
     211, 762, 763, 764, 1298, 962, 1355, 1355, 1356, 1471,
     212, 1118, 1363, 1492, 164, 37, 499, 1395, 1556, 965,
     966, 213, 111, 125, 126, 173, 244, 245, 246, 963,
     280, 175, 1310, 1026, 230, 533, 282, 423, 424, 12,
    1231, 418, 1658, 982, 819, 280, 729, 994, 995, 996,
    1608, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008,
    1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018,
     978, 499, 2084, 1409, 2104, 1411, 499, 2091, 2095, 499,
     499, 2195, 1530, 575, 22, 1144, 1869, 127, 128, 217,
     247, 723, 2051, 282, 423, 424, 12, 1815, 724, 1890,
    1875, 1816, 1970, 2099, 454, 801, 1993, 1956, 1880, 25,
     499, 0, 127, 128, 2137, 0, 0, 499, 0, 0,
       0, 1852, 1853, 1854, 1855, 1856, 283, 33, 1857, 1858,
       0, 0, 0, 1859, 1860, 0, 1861, 0, 0, 0,
       0, 454, 801, 0, 280, 0, 175, 175, 175, 1862,
       0, 1075, 1075, 1075, 0, 37, 1863, 270, 10, 11,
      12, 0, 0, 0, 280, 0, 25, 0, 1445, 0,
       0, 0, 0, 0, 725, 0, 0, 0, 0, 0,
      30, 819, 0, 283, 33, 0, 1328, 1328, 1126, 1126,
    1126, 0, 0, 1337, 700, 701, 702, 703, 704, 705,
     706, 499, 939, 940, 941, 942, 943, 944, 945, 1468,
    1468, 1356, 726, 0, 0, 499, 858, 859, 519, 522,
       0, 0, 0, 0, 243, 0, 877, 243, 483, 483,
      25, 519, 522, 0, 0, 0, 0, 0, 272, 0,
       0, 0, 0, 243, 858, 859, 877, 32, 273, 280,
       0, 0, 0, 1969, 798, 483, 0, 799, 0, 0,
     483, 0, 282, 142, 143, 12, 0, 0, 0, 802,
       0, 274, 10, 11, 0, 0, 37, 573, 0, 0,
     280, 0, 581, 583, 584, 585, 586, 587, 0, 589,
     590, 591, 592, 593, 594, 595, 596, 597, 598, 599,
     600, 601, 602, 603, 604, 605, 606, 607, 608, 609,
       0, 611, 612, 422, 10, 11, 12, 0, 1528, 1528,
     443, 1529, 1230, 445, 0, 0, 1517, 0, 0, 0,
       0, 0, 0, 22, 280, 25, 0, 575, 0, 483,
     483, 0, 483, 483, 1498, 483, 1644, 0, 0, 389,
       0, 1245, 283, 33, 1532, 0, 0, 0, 30, 1645,
    1538, 145, 146, 1646, 2096, 1647, 1648, 1649, 1650, 1651,
    1652, 110, 0, 0, 0, 1352, 1559, 1560, 0, 1653,
       0, 37, 1616, 1616, 1616, 1353, 25, 156, 10, 11,
      12, 819, 499, 15, 272, 0, 1354, 483, 483, 0,
    1611, 0, 0, 283, 273, 0, 499, 0, 499, 0,
     499, 0, 0, 0, 0, 243, 0, 0, 0, 0,
       0, 0, 0, 0, 858, 859, 519, 522, 0, 0,
       0, 877, 37, 500, 0, 0, 0, 0, 0, 0,
       0, 0, 243, 1633, 1634, 499, 0, 519, 522, 22,
    1379, 1380, 11, 12, 0, 0, 0, 0, 542, 0,
      25, 10, 11, 0, 0, 14, 15, 733, 0, 0,
       0, 0, 0, 0, 30, 0, 0, 32, 33, 1050,
    1053, 0, 0, 483, 483, 483, 0, 243, 0, 0,
     280, 827, 280, 243, 0, 0, 0, 0, 0, 1706,
    1707, 828, 1709, 0, 0, 18, 37, 0, 819, 819,
       0, 0, 829, 737, 0, 142, 143, 0, 0, 20,
     265, 21, 22, 25, 0, 0, 0, 0, 24, 0,
    1366, 86, 0, 0, 0, 0, 0, 30, 27, 0,
      32, 33, 280, 120, 230, 239, 1381, 30, 280, 0,
     145, 146, 716, 148, 211, 630, 858, 859, 0, 877,
     161, 161, 0, 161, 212, 86, 0, 483, 483, 37,
       0, 0, 1050, 1053, 86, 213, 22, 0, 0, 0,
     915, 0, 0, 0, 0, 717, 0, 221, 0, 86,
       0, 0, 0, 0, 733, 0, 0, 0, 257, 676,
       0, 30, 916, 120, 145, 146, 0, 0, 0, 819,
     819, 921, 1140, 1427, 288, 0, 120, 0, 734, 0,
     519, 522, 0, 282, 423, 424, 12, 0, 735, 0,
     164, 0, 0, 0, 0, 422, 10, 11, 12, 736,
     737, 0, 0, 243, 0, 0, 0, 120, 0, 0,
       0, 243, 0, 0, 0, 0, 0, 786, 0, 0,
     526, 0, 0, 798, 799, 131, 887, 888, 0, 889,
       0, 802, 0, 0, 148, 0, 86, 156, 10, 11,
      12, 0, 161, 161, 281, 0, 0, 444, 161, 819,
       0, 161, 161, 161, 0, 243, 25, 0, 422, 10,
     576, 12, 0, 0, 243, 0, 1926, 86, 25, 0,
      30, 86, 0, 283, 33, 0, 946, 221, 86, 0,
     819, 0, 243, 243, 0, 283, 273, 0, 454, 1338,
       0, 0, 0, 0, 890, 786, 221, 221, 221, 22,
       0, 0, 37, 0, 1482, 0, 0, 0, 142, 143,
      25, 0, 30, 573, 37, 134, 135, 733, 0, 0,
       0, 0, 0, 0, 30, 0, 221, 32, 33, 0,
       0, 25, 467, 0, 0, 860, 860, 860, 0, 272,
       0, 827, 0, 558, 0, 819, 0, 0, 283, 273,
       0, 828, 0, 120, 1277, 0, 37, 1278, 0, 0,
       0, 0, 829, 737, 280, 516, 161, 0, 1285, 22,
       0, 499, 577, 0, 1050, 1053, 0, 37, 535, 0,
       0, 499, 0, 0, 0, 0, 0, 733, 0, 0,
       0, 0, 0, 819, 30, 243, 0, 145, 146, 0,
       0, 10, 11, 1540, 1541, 0, 265, 0, 120, 616,
       0, 734, 0, 239, 631, 0, 0, 0, 0, 86,
       0, 735, 0, 0, 0, 0, 1277, 1278, 1050, 1053,
       0, 0, 736, 737, 819, 0, 1285, 280, 0, 0,
       0, 1050, 1053, 0, 968, 969, 971, 972, 973, 0,
       0, 1340, 10, 11, 12, 243, 243, 676, 0, 0,
       0, 280, 22, 0, 0, 1195, 1196, 0, 992, 1626,
     120, 0, 0, 730, 82, 616, 0, 0, 616, 750,
     733, 0, 0, 443, 445, 0, 0, 30, 0, 0,
     145, 146, 0, 575, 422, 142, 143, 12, 0, 0,
       0, 0, 0, 1024, 1525, 0, 148, 0, 82, 0,
       0, 0, 0, 0, 1526, 0, 120, 82, 221, 120,
       0, 353, 756, 0, 25, 1527, 737, 161, 0, 1067,
     219, 1068, 231, 0, 0, 0, 0, 161, 30, 0,
     161, 283, 33, 243, 0, 0, 0, 1710, 1711, 0,
       0, 0, 161, 0, 0, 0, 483, 0, 0, 0,
      86, 0, 0, 0, 0, 0, 0, 25, 0, 0,
      37, 0, 0, 519, 522, 272, 156, 10, 11, 12,
       0, 0, 265, 0, 283, 273, 221, 835, 221, 221,
     750, 1779, 0, 0, 835, 0, 0, 142, 143, 1050,
    1053, 0, 221, 221, 0, 0, 221, 0, 221, 221,
     221, 866, 0, 37, 0, 221, 0, 0, 0, 436,
     221, 0, 0, 221, 1819, 441, 755, 10, 11, 12,
       0, 0, 0, 0, 1277, 1278, 1050, 1053, 22, 1830,
       0, 1285, 422, 142, 143, 12, 0, 0, 0, 25,
      82, 0, 0, 0, 82, 0, 733, 0, 22, 161,
     219, 231, 0, 30, 0, 0, 32, 33, 0, 10,
      11, 0, 0, 0, 573, 0, 733, 0, 0, 0,
     827, 0, 0, 30, 869, 0, 145, 146, 500, 875,
     828, 798, 799, 0, 500, 37, 353, 756, 802, 25,
     734, 829, 737, 920, 0, 0, 0, 0, 0, 219,
     735, 0, 0, 30, 0, 25, 145, 146, 0, 0,
     901, 736, 737, 272, 221, 0, 499, 907, 0, 0,
      22, 0, 283, 273, 183, 0, 156, 10, 11, 12,
     184, 14, 15, 0, 120, 120, 120, 120, 733, 0,
       0, 0, 0, 0, 0, 30, 577, 0, 145, 146,
    1944, 37, 0, 0, 0, 0, 1277, 1278, 0, 1285,
     917, 918, 1525, 919, 1957, 0, 0, 0, 0, 0,
       0, 18, 1526, 0, 0, 0, 0, 0, 0, 422,
      10, 11, 12, 1527, 737, 20, 0, 21, 22, 23,
       0, 0, 641, 120, 24, 616, 0, 0, 0, 25,
       0, 1257, 0, 0, 27, 0, 730, 185, 0, 616,
     616, 750, 0, 30, 0, 2007, 32, 33, 0, 0,
    1050, 1053, 1076, 0, 0, 0, 1078, 0, 142, 143,
      35, 0, 234, 235, 0, 992, 0, 0, 0, 0,
      36, 500, 0, 0, 0, 37, 148, 0, 0, 0,
       0, 38, 25, 148, 0, 0, 39, 0, 0, 0,
     272, 0, 221, 257, 0, 2039, 2040, 0, 0, 283,
     273, 786, 18, 1308, 0, 0, 0, 0, 0, 2052,
    2053, 0, 0, 0, 0, 1062, 1063, 0, 0, 22,
       0, 219, 0, 274, 1062, 24, 0, 0, 37, 0,
     441, 0, 221, 221, 1128, 27, 0, 733, 0, 0,
       0, 1134, 0, 1128, 30, 0, 0, 145, 146, 0,
       0, 0, 0, 0, 1349, 10, 11, 0, 0, 0,
      15, 734, 221, 82, 0, 866, 221, 221, 866, 866,
     866, 735, 0, 0, 221, 0, 0, 0, 0, 0,
       0, 221, 747, 737, 0, 0, 0, 0, 0, 219,
     834, 219, 219, 156, 10, 11, 12, 845, 500, 15,
     500, 0, 0, 0, 86, 441, 0, 120, 1131, 0,
       0, 0, 0, 120, 2132, 0, 22, 0, 219, 0,
       0, 0, 616, 616, 616, 0, 219, 738, 0, 0,
     738, 738, 0, 156, 10, 11, 12, 184, 14, 15,
    1416, 30, 0, 1151, 145, 146, 698, 699, 700, 701,
     702, 703, 704, 705, 706, 22, 0, 0, 1352, 0,
       0, 0, 441, 0, 0, 0, 25, 2161, 1353, 0,
       0, 0, 0, 733, 0, 616, 0, 0, 18, 1354,
      30, 0, 0, 32, 33, 1191, 0, 1193, 0, 0,
       0, 0, 20, 0, 21, 22, 23, 1123, 0, 0,
       0, 24, 0, 0, 0, 0, 25, 1124, 10, 11,
       0, 27, 37, 15, 185, 0, 0, 0, 1125, 737,
      30, 0, 0, 32, 33, 0, 0, 219, 10, 11,
     120, 0, 14, 15, 0, 0, 0, 35, 738, 0,
     738, 738, 738, 0, 0, 819, 0, 36, 0, 0,
       0, 0, 37, 616, 616, 0, 0, 616, 38, 0,
       0, 0, 0, 39, 120, 0, 0, 0, 616, 22,
     120, 500, 18, 0, 1076, 1076, 1076, 0, 0, 0,
     616, 0, 1134, 0, 500, 0, 20, 733, 21, 22,
       0, 0, 0, 0, 30, 24, 0, 145, 146, 0,
     120, 0, 120, 0, 0, 27, 0, 1262, 1263, 0,
    1265, 1525, 0, 0, 30, 0, 0, 145, 146, 0,
       0, 1526, 0, 0, 0, 221, 221, 221, 221, 221,
    1128, 866, 1527, 737, 0, 0, 221, 0, 0, 0,
    1286, 1128, 1128, 1128, 0, 0, 0, 1134, 0, 0,
       0, 0, 1025, 120, 866, 866, 866, 0, 0, 0,
       0, 755, 10, 11, 12, 0, 0, 0, 0, 0,
     148, 0, 1349, 161, 86, 219, 86, 0, 0, 0,
       0, 1390, 86, 0, 86, 0, 8, 0, 9, 10,
      11, 12, 13, 14, 15, 0, 0, 120, 0, 120,
     931, 932, 933, 934, 935, 1336, 936, 937, 938, 939,
     940, 941, 942, 943, 944, 945, 0, 0, 0, 142,
     143, 0, 0, 234, 235, 0, 0, 0, 0, 0,
       0, 353, 756, 18, 25, 0, 0, 0, 0, 120,
       0, 500, 0, 0, 0, 441, 0, 20, 30, 21,
      22, 145, 947, 0, 0, 0, 24, 0, 0, 0,
       0, 25, 0, 18, 441, 0, 27, 616, 616, 471,
     616, 738, 738, 738, 0, 30, 0, 0, 32, 33,
      22, 616, 34, 0, 1073, 0, 24, 1182, 0, 616,
       0, 0, 35, 0, 0, 0, 27, 0, 733, 616,
     616, 750, 36, 0, 0, 30, 0, 37, 145, 146,
       0, 10, 11, 38, 184, 14, 15, 0, 0, 786,
       0, 0, 734, 0, 738, 0, 0, 0, 0, 0,
       0, 0, 735, 221, 221, 221, 866, 866, 1463, 0,
       0, 221, 221, 736, 737, 156, 142, 143, 12, 0,
       0, 265, 0, 0, 0, 18, 1444, 866, 866, 866,
     866, 866, 0, 0, 738, 738, 738, 0, 0, 20,
     120, 21, 22, 0, 1390, 1073, 0, 0, 24, 0,
       0, 0, 0, 120, 0, 0, 0, 0, 779, 0,
      89, 780, 156, 10, 11, 12, 1487, 30, 573, 0,
     145, 146, 122, 0, 86, 0, 0, 22, 0, 0,
    1464, 141, 149, 10, 11, 0, 0, 0, 25, 162,
     162, 0, 162, 0, 89, 0, 0, 0, 0, 0,
       0, 0, 30, 89, 0, 32, 33, 0, 0, 0,
    1472, 0, 0, 0, 0, 0, 162, 0, 89, 35,
       0, 0, 0, 1478, 22, 0, 0, 258, 0, 36,
       0, 0, 268, 0, 37, 25, 866, 866, 0, 866,
      38, 120, 733, 866, 22, 268, 0, 0, 0, 30,
    1494, 0, 32, 33, 1495, 0, 0, 0, 0, 221,
       0, 0, 733, 0, 161, 0, 827, 86, 0, 30,
       0, 0, 145, 146, 0, 0, 828, 738, 441, 0,
       0, 37, 0, 0, 0, 0, 1525, 829, 737, 0,
       0, 0, 1518, 0, 0, 0, 1526, 0, 0, 0,
     866, 866, 1463, 866, 866, 89, 0, 1527, 737, 0,
     120, 162, 162, 0, 0, 0, 0, 162, 0, 0,
     162, 162, 162, 0, 0, 0, 0, 1182, 0, 1182,
       0, 0, 0, 0, 1389, 1396, 89, 1182, 0, 0,
      89, 0, 1561, 1562, 0, 0, 162, 89, 0, 0,
    1544, 1545, 11, 12, 0, 738, 738, 0, 0, 738,
       0, 0, 0, 0, 0, 162, 162, 162, 0, 0,
     738, 0, 0, 0, 0, 0, 1073, 1073, 1073, 1617,
    1618, 0, 738, 0, 0, 1620, 0, 0, 120, 0,
       0, 866, 0, 0, 0, 162, 676, 695, 696, 697,
     698, 699, 700, 701, 702, 703, 704, 705, 706, 1163,
       0, 9, 10, 1164, 12, 184, 14, 15, 0, 0,
       0, 0, 0, 25, 0, 0, 0, 738, 738, 738,
     738, 738, 738, 738, 0, 162, 0, 30, 738, 0,
      32, 33, 0, 1073, 1073, 1073, 1546, 156, 142, 143,
      12, 0, 0, 15, 211, 0, 18, 0, 0, 0,
       0, 221, 835, 221, 212, 0, 0, 0, 0, 37,
      20, 0, 21, 22, 23, 213, 0, 268, 618, 24,
    -560, 0, 0, 632, 25, 0, 441, 0, 89, 27,
    1165, 0, 185, 0, 0, 441, 0, 0, 30, 0,
       0, 32, 33, 0, 0, 1166, 0, 1167, 0, 22,
       0, 0, 0, 0, 0, 35, 0, 0, 0, 0,
      25, 0, 0, 0, 0, 36, 0, 1389, 0, 0,
      37, 0, 0, 0, 30, 0, 1168, 32, 33, 268,
       0, 0, 731, 0, 618, 0, 0, 618, 751, 0,
       0, 166, 0, 760, 1824, 0, 0, 1182, -560, 0,
       0, 167, 0, 0, 0, 0, 37, 0, 0, 0,
       0, 0, 168, 0, 0, 778, 0, 0, 1128, 0,
       0, 0, 0, 738, 0, 268, 0, 162, 268, 0,
       0, 738, 422, 10, 11, 12, 162, 0, 0, 0,
       0, 738, 738, 738, 0, 0, 162, 0, 0, 162,
       0, 0, 0, 156, 10, 11, 12, 0, 0, 0,
       0, 162, 0, 0, 0, 282, 142, 143, 12, 89,
       0, 15, 0, 0, 0, 738, 738, 738, 738, 738,
     738, 0, 1551, 738, 738, 0, 0, 1551, 0, 0,
    1182, 0, 0, 0, 0, 162, 836, 162, 162, 751,
       0, 0, 0, 836, 0, 25, 0, 0, 0, 0,
       0, 162, 162, 272, 0, 162, 0, 162, 162, 162,
     618, 0, 283, 273, 162, 0, 25, 22, 0, 162,
       0, 0, 162, 1128, 1128, 1128, 0, 0, 25, 0,
      30, 0, 0, 32, 33, 733, 577, 210, 0, 0,
       0, 37, 30, 898, 0, 283, 33, 211, 937, 938,
     939, 940, 941, 942, 943, 944, 945, 212, 162, 1294,
       0, 0, 37, 1544, 142, 143, 12, 0, 213, 1295,
       0, 0, 0, 0, 37, 0, 0, 0, 0, 0,
    1296, 737, 0, 0, 628, 0, 0, 0, 0, 0,
       0, 0, 0, 1883, 0, 0, 0, 0, 738, 738,
       0, 738, 221, 0, 0, 654, 655, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 760, 0, 0, 0,
       0, 665, 0, 162, 666, 667, 0, 0, 0, 0,
     677, 678, 0, 0, 0, 0, 25, 0, 0, 0,
       0, 722, 0, 268, 268, 268, 268, 0, 0, 0,
      30, 0, 0, 32, 33, 0, 0, 0, 0, 1546,
       0, 0, 738, 738, 738, 738, 738, 35, 0, 1931,
    1932, 1933, 0, 1943, 219, 1802, 219, 36, 0, 0,
       0, 0, 37, 0, 0, 0, 0, 0, 38, 156,
      10, 11, 12, 184, 14, 15, 0, 0, 0, 496,
       0, 0, 268, 0, 618, 0, 0, 1973, 1974, 1975,
       0, 0, 0, 1977, 1978, 1979, 0, 0, 618, 618,
     751, 1982, 1983, 1984, 0, 0, 0, 0, 0, 0,
       0, 1077, 0, 0, 18, 0, 156, 10, 11, 12,
       0, 0, 0, 0, 760, 0, 0, 0, 20, 0,
      21, 22, 0, 738, 0, 778, 0, 24, 0, 0,
       0, 0, 25, 141, 0, 0, 0, 27, 0, 733,
       0, 162, 258, 0, 0, 0, 30, 0, 0, 32,
      33, 0, 2032, 2033, 2034, 2035, 2036, 0, 2038, 0,
       0, 0, 0, 1123, 0, 2044, 2045, 2046, 2047, 2048,
       0, 2050, 0, 1124, 0, 0, 0, 0, 37, 25,
       0, 162, 162, 836, 1125, 737, 0, 0, 0, 0,
       0, 0, 1142, 30, 0, 0, 32, 33, 0, 0,
    1797, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     211, 162, 0, 0, 618, 162, 162, 618, 618, 618,
     212, 0, 0, 162, 0, 37, 0, 0, 0, 0,
     162, 213, 0, 0, 0, 0, 2105, 0, 0, 0,
       0, 0, 1163, 0, 9, 10, 1164, 12, 184, 14,
      15, 628, 0, 89, 0, 0, 268, 0, 0, 0,
       0, 0, 268, 1644, 0, 0, 0, 0, 2130, 0,
       0, 618, 618, 618, 0, 0, 1645, 2131, 0, 0,
    1646, 0, 1647, 1648, 1649, 1650, 1651, 1652, 110, 18,
       0, 0, 0, 0, 665, 666, 1653, 0, 0, 0,
       0, 0, 0, 20, 0, 21, 22, 23, 282, 10,
      11, 12, 24, -561, 15, 10, 11, 25, 2159, 14,
     265, 0, 27, 1165, 618, 185, 0, 0, 0, 2160,
       0, 30, 0, 0, 32, 33, 0, 0, 1166, 0,
    1167, 0, 0, 0, 0, 0, 0, 0, 35, 0,
       0, 0, 0, 0, 0, 219, 0, 0, 36, 18,
       0, 0, 0, 37, 0, 0, 0, 0, 0, 1168,
      22, 0, 0, 20, 0, 21, 22, 0, 0, 268,
       0, 25, 24, 0, 0, 0, 0, 0, 733, 0,
       0, -561, 27, 0, 733, 30, 0, 0, 283, 33,
       0, 30, 618, 618, 145, 146, 618, 0, 0, 0,
       0, 0, 1331, 268, 0, 0, 0, 618, 734, 268,
       0, 0, 1332, 1077, 1077, 1077, 0, 37, 735, 618,
       0, 760, 0, 1333, 737, 0, 0, 0, 0, 736,
     737, 0, 0, 0, 0, 0, 0, 0, 0, 268,
       0, 268, 690, 691, 692, 693, 694, 695, 696, 697,
     698, 699, 700, 701, 702, 703, 704, 705, 706, 898,
       0, 0, 0, 0, 162, 162, 162, 162, 162, 836,
     618, 0, 0, 0, 0, 162, 0, 0, 0, 0,
    1142, 1142, 1142, 0, 0, 0, 760, 0, 0, 0,
       0, 0, 268, 618, 618, 618, 0, 0, 0, 282,
     142, 143, 12, 0, 0, 0, 898, 0, 0, 149,
       0, 0, 162, 89, 0, 89, 0, 0, 0, 0,
    1391, 89, 935, 89, 936, 937, 938, 939, 940, 941,
     942, 943, 944, 945, 0, 0, 268, 0, 268, 0,
     628, 628, 0, 628, 628, 628, 628, 628, 628, 628,
     628, 628, 628, 628, 628, 628, 628, 628, 628, 628,
     628, 22, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 25, 0, 0, 0, 0, 0, 268, 733,
       0, 0, 0, 0, 0, 0, 30, 0, 0, 283,
      33, 0, 0, 0, 0, 0, 0, 0, 422, 142,
    1554, 12, 0, 1294, 0, 0, 618, 618, 0, 618,
       0, 0, 58, 1295, 0, 0, 0, 0, 37, 0,
     618, 0, 0, 0, 1296, 737, 0, 0, 618, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 618, 618,
     751, 58, 58, 0, 169, 0, 58, 0, 0, 0,
       0, 0, 1267, 0, 0, 58, 0, 156, 10, 11,
      12, 233, 234, 235, 0, 0, 0, 0, 58, 0,
      58, 25, 162, 162, 162, 618, 618, 751, 0, 272,
     162, 162, 0, 0, 665, 666, 0, 0, 283, 273,
       0, 0, 276, 0, 0, 284, 618, 618, 618, 618,
     618, 0, 18, 0, 898, 0, 0, 0, 0, 268,
       0, 0, 577, 1391, 0, 0, 628, 37, 0, 22,
       0, 0, 268, 0, 0, 24, 0, 0, 0, 0,
      25, 0, 0, 0, 0, 27, 0, 733, 0, 0,
       0, 0, 0, 89, 30, 0, 0, 32, 33, 0,
       0, 665, 666, 0, 425, 425, 0, 58, 0, 0,
       0, 827, 0, 58, 58, 0, 0, 276, 284, 58,
       0, 828, 169, 169, 169, 0, 37, 0, 0, 464,
       0, 0, 838, 737, 0, 0, 0, 0, 58, 0,
       0, 0, 58, 0, 0, 0, 0, 0, 58, 58,
     898, 0, 0, 0, 0, 618, 618, 0, 618, 0,
     268, 0, 618, 0, 0, 0, 0, 58, 58, 169,
       0, 0, 0, 0, 0, 0, 0, 276, 162, 0,
       0, 0, 0, 162, 934, 935, 89, 936, 937, 938,
     939, 940, 941, 942, 943, 944, 945, 58, 0, 1656,
       0, -936, -936, -936, -936, -936, -936, -936, -936, -936,
    -936, 0, 1570, 1571, 0, 0, 0, 1572, 0, 618,
     618, 751, 618, 618, 0, 0, 0, 0, 0, 268,
       0, 0, 0, 1438, 0, 0, 0, 58, 0, 0,
       0, 0, 0, 0, 276, -936, -936, -936, 0, -936,
    -936, -936, -936, -936, -936, -936, -936, -936, -936, -936,
    -936, -936, -936, -936, -936, 0, -936, -936, -936, -936,
       0, -936, -936, -936, -936, -936, -936, -936, -936, -936,
    -936, 0, 0, -936, -936, -936, -936, -936, -936, 0,
      58, -936, -936, -936, 0, -936, -936, 0, 0, 0,
       0, 0, -936, 0, 0, -936, 0, 268, 0, 0,
     618, 0, 0, -936, -936, -936, 0, 0, 0, 0,
    -936, -936, -936, 0, 0, 0, -936, 0, 0, 673,
    -936, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 1573, 425, 0, 0, 0, 1657, -936,
     932, 933, 934, 935, 276, 936, 937, 938, 939, 940,
     941, 942, 943, 944, 945, 0, 0, 0, 0, 1790,
       0, 0, 0, 0, 0, 0, 0, 425, 628, 0,
     162, 836, 162, 0, 0, 0, 0, 0, 0, 58,
       0, 0, 0, 0, 0, 0, 0, 0, 58, 0,
     276, 0, 0, 0, 0, 0, 0, 464, 58, 0,
       0, 58, 84, 0, 0, 0, 0, 464, 464, 464,
       0, 0, 0, 58, 0, 0, 0, 0, 0, 0,
       0, 58, 0, 0, 0, 0, 0, 156, 10, 11,
      12, 84, 84, 15, 84, 1348, 84, 0, 10, 11,
       0, 0, 14, 15, 0, 84, 0, 58, 58, 58,
      58, 0, 0, 0, 0, 58, 0, 0, 84, 0,
      84, 0, 0, 58, 58, 0, 0, 58, 0, 169,
     169, 169, 464, 0, 0, 0, 58, 0, 0, 0,
       0, 58, 18, 0, 58, 286, 0, 1142, 0, 22,
       0, 0, 0, 0, 0, 0, 20, 0, 21, 22,
      25, 0, 0, 0, 0, 24, 282, 10, 11, 12,
     184, 14, 15, 0, 30, 27, 496, 32, 33, 0,
      58, 0, 0, 0, 30, 0, 0, 145, 146, 0,
       0, 211, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 212, 0, 0, 0, 0, 37, 84, 0, 0,
       0, 18, 213, 84, 84, 0, 0, 0, 286, 84,
    1902, 0, 84, 84, 84, 20, 0, 21, 22, 0,
       0, 0, 0, 0, 24, 0, 0, 276, 84, 25,
       0, 0, 84, 0, 27, 58, 733, 0, 84, 84,
       0, 0, 0, 30, 0, 0, 283, 33, 0, 0,
       0, 0, 1142, 1142, 1142, 0, 0, 84, 84, 84,
    1294, 0, 0, 0, 0, 673, 673, 673, 0, 0,
    1295, 0, 0, 0, 0, 37, 0, 0, 673, 0,
       0, 1296, 737, 0, 677, 0, 289, 84, 0, 10,
      11, 0, 0, 14, 15, 0, 1903, 685, 686, 687,
     688, 689, 690, 691, 692, 693, 694, 695, 696, 697,
     698, 699, 700, 701, 702, 703, 704, 705, 706, 0,
       0, 0, 0, 0, 0, 0, 276, 84, 0, 0,
       0, 162, 0, 18, 0, 0, 0, 0, 0, 673,
       0, 673, 0, 673, 0, 0, 0, 20, 0, 21,
      22, 0, 0, 0, 0, 0, 24, 0, 290, 291,
       0, 0, 0, 0, 0, 0, 27, 425, 292, 0,
       0, 0, 0, 0, 425, 30, 0, 0, 145, 146,
      84, 293, 0, 58, 0, 294, 295, 296, 297, 298,
     299, 300, 301, 302, 303, 304, 305, 306, 307, 308,
     309, 310, 311, 312, 313, 0, 314, 315, 316, 317,
       0, 0, 0, 0, 318, 319, 0, 0, 0, 0,
       0, 0, 0, 58, 58, 169, 0, 0, 0, 0,
       0, 276, 284, 0, 1139, 0, 320, 0, 0, 0,
       0, 0, 0, 0, 0, 759, 0, 0, 673, 0,
       0, 0, 0, 58, 0, 0, 464, 58, 58, 464,
     464, 464, 0, 0, 0, 58, 0, 0, 0, 0,
       0, 0, 58, 0, 0, 0, 0, 0, 0, 84,
       0, 0, 0, 0, 0, 0, 0, 0, 84, 0,
       0, 0, 0, 0, 0, 58, 0, 0, 84, 0,
       0, 84, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 84, 0, 0, 0, 0, 0, 0,
       0, 84, 0, 665, 666, 0, 495, 0, 282, 10,
      11, 12, 184, 14, 344, 345, 346, 347, 496, 0,
       0, 0, 0, 0, 0, 0, 0, 84, 84, 84,
      84, 0, 0, 0, 0, 84, 0, 0, 0, 0,
       0, 0, 0, 84, 84, 0, 0, 84, 0, 84,
      84, 84, 348, 18, 0, 0, 84, 0, 0, 0,
       0, 84, 0, 0, 84, 0, 0, 20, 349, 21,
      22, 23, 0, 350, 351, 352, 24, 0, 353, 354,
     355, 25, 356, 357, 358, 0, 27, 0, 0, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 283, 33,
      84, 0, 0, 364, 0, 0, 0, 0, 176, 365,
       0, 0, 366, 0, 0, 0, 0, 0, 0, 0,
     367, 368, 369, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 222, 373, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 673, 673, 673, 0, 0,
       0, 464, 276, 0, -849, 0, 374, 0, 759, 0,
       0, 0, 0, 0, 0, 84, 0, 0, 0, 0,
       0, 0, 0, 156, 142, 143, 12, 0, 0, 573,
     691, 692, 693, 694, 695, 696, 697, 698, 699, 700,
     701, 702, 703, 704, 705, 706, 58, 58, 58, 169,
     169, 169, 464, 0, 276, 0, 0, 58, 0, 0,
     276, 0, 1139, 1139, 1139, 0, 0, 0, 284, 0,
       0, 0, 0, 0, 0, 1163, 0, 9, 10, 1164,
      12, 184, 14, 15, 0, 22, 176, 176, 176, 0,
       0, 0, 0, 0, 169, 58, 25, 58, 0, 0,
       0, 0, 58, 58, 0, 58, 0, 759, 0, 0,
      30, 0, 222, 32, 33, 0, 0, 0, 0, 0,
       0, 0, 18, 0, 0, 0, 0, 35, 0, 0,
       0, 222, 222, 528, 0, 0, 20, 36, 21, 22,
      23, 0, 37, 0, 0, 24, -563, 0, 38, 0,
      25, 0, 0, 0, 0, 27, 1165, 0, 185, 0,
       0, 222, 0, 84, 30, 0, 0, 32, 33, 0,
       0, 1166, 0, 1167, 0, 0, 0, 0, 0, 0,
       0, 35, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 36, 0, 0, 0, 0, 37, 0, 0, 0,
       0, 0, 1168, 84, 84, 84, 0, 0, 0, 0,
       0, 0, 286, 0, 1141, 0, 282, 10, 11, 12,
     464, 464, 464, 0, -563, 0, 0, 0, 0, 0,
       0, 0, 0, 84, 0, 0, 0, 84, 84, 0,
       0, 0, 0, 0, 617, 84, 0, 0, 0, 0,
       0, 0, 84, 0, 58, 58, 58, 464, 464, 464,
       0, 0, 58, 58, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 84, 0, 0, 22, 0,
    1715, 0, -517, -517, -517, -517, -517, -517, -517, 25,
       0, 0, -517, 0, 0, 58, 733, 0, 0, 0,
       0, 0, 0, 30, 0, 0, 283, 33, 0, 0,
     740, 0, 0, 740, 740, 0, 276, 284, 0, 0,
    1331, 0, 0, 0, 0, 58, 0, -517, 0, 0,
    1332, 0, 0, 0, 0, 37, 0, 0, -517, 0,
    -517, 1333, 737, 0, -517, 0, 0, 0, 0, 0,
    -517, 0, 0, 222, 0, -517, 0, 0, 0, 0,
    -517, 0, -517, 0, 0, 0, 0, 0, 0, -517,
       0, 0, -517, -517, -517, -517, -517, 0, -517, -517,
    -517, -517, -517, -517, -517, -517, -517, -517, -517, -517,
    -517, -517, -517, -517, -517, -517, -517, -517, -517, -517,
    -517, -517, -517, -517, 0, 0, -517, -517, -517, -517,
      58, -517, 0, 276, 0, 58, 1716, -517, 58, 0,
       0, 832, 0, 832, 832, 740, 0, -517, -517, -517,
       0, -517, 156, 142, 143, 12, 0, 222, 222, 0,
       0, 222, 0, 528, 528, 528, 867, 0, 0, 0,
     222, 0, 0, 759, 0, 222, 0, 0, 222, 930,
     931, 932, 933, 934, 935, 0, 936, 937, 938, 939,
     940, 941, 942, 943, 944, 945, 156, 10, 11, 12,
     693, 694, 695, 696, 697, 698, 699, 700, 701, 702,
     703, 704, 705, 706, 22, 0, 84, 84, 84, 84,
      84, 84, 0, 0, 0, 25, 0, 84, 0, 0,
       0, 0, 1141, 1141, 1141, 0, 0, 0, 1342, 30,
       0, 0, 32, 33, 0, 0, 0, 0, 0, 0,
       0, 0, 156, 142, 143, 12, 166, 0, 220, 0,
       0, 0, 0, 0, 84, 84, 167, 84, 0, 25,
       0, 37, 84, 84, 0, 84, 0, 168, 0, 222,
       0, 0, 279, 30, 0, 287, 32, 33, 0, 8,
       0, 9, 10, 11, 12, 13, 14, 15, 0, 0,
     211, 0, 0, 16, 0, 0, 0, 17, 0, 0,
     212, 0, 0, 0, 22, 37, 279, 0, 343, 0,
       0, 213, 0, 0, 0, 25, 0, 0, 0, 0,
       0, 0, 58, 58, 58, 0, 18, 0, 0, 30,
       0, 0, 32, 33, 0, 0, 0, 0, 0, 19,
      20, 0, 21, 22, 23, 0, 35, 0, 0, 24,
    1034, 0, 0, 0, 25, 0, 36, 0, 26, 27,
      28, 37, 29, 0, 740, 740, 740, 38, 30, 31,
       0, 32, 33, 0, 0, 34, 0, 740, 220, 0,
       0, 0, 0, 0, 0, 35, 10, 11, 0, 223,
      14, 224, 0, 0, 0, 36, 0, 220, 220, 220,
      37, 0, 0, 0, 0, 0, 38, 534, 0, 0,
       0, 39, 0, 0, 84, 84, 84, 832, 0, 0,
       0, 0, 84, 84, 0, 0, 0, 220, 0, 0,
      18, 0, 0, 0, 0, 0, 0, 0, 0, 1139,
       0, 0, 0, 0, 20, 0, 21, 22, 0, 0,
       0, 0, 0, 24, 287, 84, 0, 832, 832, 1129,
       0, 0, 0, 27, 0, 0, 0, 0, 1129, 0,
       0, 0, 30, 0, 279, 145, 146, 286, 0, 0,
       0, 0, 0, 0, 0, 84, 0, 222, 0, 0,
     867, 222, 222, 867, 867, 867, 0, 0, 0, 222,
       0, 0, 0, 0, 0, 0, 222, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 1163, 0, 9, 10,
    1164, 12, 184, 14, 15, 0, 0, 0, 0, 0,
     156, 10, 11, 12, 0, 0, 265, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 617, 617, 617,
       0, 0, 0, 0, 1139, 1139, 1139, 0, 0, 0,
       0, 0, 0, 18, 0, 0, 156, 10, 11, 12,
      84, 0, 15, 0, 0, 84, 0, 20, 84, 21,
      22, 23, 0, 0, 279, 287, 24, -562, 0, 0,
       0, 25, 22, 0, 0, 0, 27, 1165, 0, 185,
     740, 0, 0, 25, 0, 30, 10, 11, 32, 33,
      14, 265, 1166, 0, 1167, 0, 0, 30, 0, 220,
      32, 33, 35, 0, 0, 0, 0, 0, 22, 0,
       0, 0, 36, 58, 211, 0, 0, 37, 0, 25,
       0, 0, 0, 1168, 212, 0, 0, 0, 0, 37,
      18, 0, 0, 30, 0, 213, 32, 33, 0, 0,
       0, 0, 0, 0, 20, -562, 21, 22, 0, 0,
     523, 0, 0, 24, 0, 0, 0, 0, 740, 740,
     524, 0, 740, 27, 0, 37, 0, 220, 0, 220,
     220, 525, 30, 740, 0, 145, 146, 0, 0, 740,
     740, 740, 0, 220, 220, 740, 0, 220, 0, 220,
     220, 220, 220, 0, 0, 0, 220, 0, 0, 0,
       0, 220, 0, 0, 220, 685, 686, 687, 688, 689,
     690, 691, 692, 693, 694, 695, 696, 697, 698, 699,
     700, 701, 702, 703, 704, 705, 706, 0, 0, 0,
     832, 832, 832, 1129, 1129, 1129, 1334, 0, 0, 0,
       0, 832, 0, 0, 0, 0, 1129, 1129, 1129, 0,
       0, 0, 84, 84, 84, 0, 0, 1422, 0, 867,
     867, 867, 668, 0, 282, 10, 11, 12, 184, 14,
     344, 345, 346, 347, 496, 0, 0, 0, 176, 929,
     930, 931, 932, 933, 934, 935, 222, 936, 937, 938,
     939, 940, 941, 942, 943, 944, 945, 279, 287, 0,
       0, 0, 0, 0, 0, 220, 0, 0, 348, 18,
     694, 695, 696, 697, 698, 699, 700, 701, 702, 703,
     704, 705, 706, 20, 349, 21, 22, 23, 0, 350,
     351, 352, 24, 0, 353, 354, 355, 25, 356, 357,
     358, 0, 27, 0, 733, 0, 359, 360, 361, 362,
     363, 30, 0, 0, 283, 33, -350, 0, 0, 364,
       0, 0, 0, 0, 0, 365, 0, 0, 1069, 1141,
       0, 0, 1034, 1034, 0, 1034, 367, 368, 1070, 0,
       0, 0, 0, 370, 371, 372, 740, 0, 0, 1071,
     737, 0, 0, 0, 740, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 740, 740, 740, 0, 0, 0,
       0, 0, 374, 0, 0, 0, 279, 287, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    -423, 10, 11, -423, -423, 14, 265, 0, 832, 832,
     832, 1334, 1334, 1334, 0, 0, 832, 832, 0, 0,
       0, 0, 0, 220, 0, 0, 0, 0, 0, 0,
     118, 0, 867, 867, 867, 867, 867, 0, 0, 136,
     118, 0, 0, 0, 0, 18, 0, 118, 118, 222,
     118, 0, 0, 0, 1141, 1141, 1141, 0, 0, 20,
       0, 21, 22, 220, 220, 1127, 0, 0, 24, 0,
       0, 279, 287, -423, 1127, 0, 0, 0, 27, 0,
     733, 0, 0, 0, 0, 254, 0, 30, 0, 0,
     145, 146, 0, 220, 0, 0, 220, 220, 220, 220,
     220, 220, 534, 0, 734, 220, 0, 0, 0, 0,
       0, 0, 220, 0, 735, 0, 0, 0, 0, -423,
       0, 0, 0, 0, 0, 736, 737, 0, 0, 0,
       0, 0, 0, 84, 287, 0, 0, 0, 0, 0,
       0, 1334, 1334, 0, 1334, 0, 0, 0, 867, 0,
       0, 417, 0, 136, 0, 0, 0, 0, 0, 0,
     118, 118, 0, 0, 222, 0, 0, 0, 0, 118,
     118, 0, 0, 118, 118, 118, 22, 449, 118, 118,
     118, 0, 0, 0, 0, 0, 0, 0, 997, 0,
     282, 10, 11, 12, 184, 14, 344, 345, 346, 347,
       0, 0, 0, 0, 0, 1334, 1334, 1334, 1334, 1334,
       0, 685, 686, 687, 688, 689, 690, 691, 692, 693,
     694, 695, 696, 697, 698, 699, 700, 701, 702, 703,
     704, 705, 706, 0, 348, 18, 0, 0, 0, 10,
      11, 0, 184, 14, 15, 0, 0, 0, 496, 20,
     349, 21, 22, 23, 0, 350, 351, 352, 24, 0,
     353, 354, 355, 25, 356, 357, 358, 0, 27, 254,
     118, 0, 359, 360, 361, 362, 363, 30, 0, 0,
     283, 33, 2002, 18, -838, 364, 0, 0, 0, 0,
       0, 365, 0, 118, 366, 0, 1334, 20, 0, 21,
      22, 0, 367, 368, 369, 0, 24, 0, 0, 370,
     371, 372, 279, 287, 279, 373, 27, 0, 0, 0,
       0, 0, 0, 0, 0, 30, 0, 0, 145, 146,
       0, 0, 0, 0, 0, 0, 118, 0, 374, 692,
     693, 694, 695, 696, 697, 698, 699, 700, 701, 702,
     703, 704, 705, 706, 0, 0, 220, 220, 220, 220,
     220, 1127, 220, 0, 1335, 0, 222, 220, 222, 0,
     279, 0, 1127, 1127, 1127, 0, 0, 0, 287, 0,
       0, 0, 0, 0, 0, 220, 220, 220, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     118, 0, 118, 0, 0, 118, 0, 0, 0, 0,
       0, 0, 220, 689, 690, 691, 692, 693, 694, 695,
     696, 697, 698, 699, 700, 701, 702, 703, 704, 705,
     706, 0, 0, 118, 668, 0, 156, 10, 11, 12,
     184, 14, 344, 345, 346, 347, 496, 0, 0, 0,
       0, 0, 0, 0, 118, 0, 118, 0, 0, 0,
       0, 0, 0, 0, 118, 0, 0, 118, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 118,
     348, 18, 0, 528, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 20, 349, 21, 22, 23,
       0, 350, 351, 352, 24, 0, 353, 354, 355, 25,
     356, 357, 358, 0, 27, 0, 733, 0, 359, 360,
     361, 362, 363, 30, 0, 0, 32, 33, -350, 0,
       0, 364, 0, 0, 0, 0, 0, 365, 0, 0,
    1136, 0, 0, 0, 0, 0, 0, 0, 367, 368,
    1137, 0, 0, 0, 0, 370, 371, 372, 0, 0,
       0, 1138, 737, 0, 220, 220, 220, 220, 220, 1127,
     254, 891, 220, 220, 1163, 0, 9, 10, 1164, 12,
     184, 14, 15, 0, 374, 0, 118, 0, 220, 220,
     220, 220, 220, 0, 0, 0, 0, 0, 528, 528,
     528, 0, 933, 934, 935, 220, 936, 937, 938, 939,
     940, 941, 942, 943, 944, 945, 0, 0, 0, 0,
       0, 18, 0, 0, 0, 0, 534, 0, 118, 0,
     118, 0, 0, 0, 0, 20, 0, 21, 22, 23,
       0, 0, 0, 0, 24, 0, 0, 10, 11, 25,
     184, 14, 15, 0, 27, 1165, 496, 185, 0, 0,
       0, 0, 0, 30, 0, 0, 32, 33, 0, 0,
    1166, 0, 1167, 0, 0, 0, 0, 222, 0, 0,
      35, 0, 0, 156, 10, 11, 12, 0, 0, 573,
      36, 18, 0, 0, 0, 37, 0, 220, 220, 1335,
     220, 1168, 0, 0, 220, 20, 0, 21, 22, 0,
       0, 0, 0, 0, 24, 0, 0, 0, 0, 0,
     220, 0, 0, 0, 27, 0, 733, 0, 0, 0,
       0, 0, 118, 30, 0, 0, 145, 146, 0, 0,
       0, 0, 118, 118, 0, 22, 118, 118, 0, 0,
     734, 0, 0, 0, 0, 0, 25, 0, 0, 0,
     735, 220, 220, 1127, 220, 220, 0, 0, 0, 0,
      30, 736, 737, 32, 33, 0, 0, 0, 0, 0,
       0, 0, 0, 118, 0, 0, 0, 211, 0, 0,
     118, 136, 0, 0, 0, 0, 0, 212, 0, 0,
     254, 0, 37, 0, 0, 0, 0, 0, 213, 0,
       0, 0, 1569, 0, -936, -936, -936, -936, -936, -936,
    -936, -936, -936, -936, 0, 1570, 1571, 0, 0, 0,
    1572, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 220, 0, 0, 0, 0, 0, -936, -936,
    -936, 0, -936, -936, -936, -936, -936, -936, -936, -936,
    -936, -936, -936, -936, -936, -936, -936, -936, 0, -936,
    -936, -936, -936, 0, -936, -936, -936, -936, -936, -936,
    -936, -936, -936, -936, 0, 0, -936, -936, -936, -936,
    -936, -936, 0, 0, -936, -936, -936, 0, -936, -936,
     891, 0, 0, 0, 0, -936, 10, 11, -936, 184,
      14, 15, 220, 0, 220, 1703, -936, -936, -936, 118,
     118, 118, 118, -936, -936, -936, 0, 0, 0, -936,
       0, 0, 0, -936, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 1573, 0, 0, 0,
      18, 0, -936, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 20, 0, 21, 22, 0, 0,
       0, 0, 118, 24, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 27, 0, 0, 0, 0, 0, 0,
       0, 0, 30, 0, 0, 145, 146, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 817, 0, 983, 984,
     985, 12, 0, 14, 512, 345, 346, 347, 925, 926,
     927, 928, 929, 930, 931, 932, 933, 934, 935, 1127,
     936, 937, 938, 939, 940, 941, 942, 943, 944, 945,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     118, 118, 348, 18, 118, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 118, 0, 20, 349, 21,
       0, 23, 0, 350, 351, 352, 24, 118, 353, 354,
     355, 25, 356, 357, 358, 0, 27, 0, 0, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 986, 987,
     818, 0, 0, 364, 0, 0, 0, 0, 0, 365,
       0, 0, 366, 282, 10, 11, 12, 891, 0, 15,
     367, 368, 369, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 0, 373, 988, 10, 11, 0, 0, 14,
      15, 0, 0, 0, 1127, 1127, 1127, 0, 0, 0,
       0, 0, 0, 0, 0, 1117, 374, 0, 0, 0,
       0, 0, 0, 0, 891, 0, 0, 118, 0, 0,
     118, 0, 0, 0, 0, 22, 0, 0, 0, 18,
       0, 0, 0, 0, 0, 0, 25, 0, 0, 0,
       0, 0, 0, 20, 0, 21, 22, 0, 0, 0,
      30, 0, 24, 283, 33, 0, 0, 0, 0, 0,
       0, 0, 27, 0, 0, 0, 0, 863, 0, 0,
       0, 30, 0, 220, 145, 146, 0, 864, 0, 0,
       0, 0, 37, 0, 0, 0, 0, 668, 865, 282,
      10, 11, 12, 0, 14, 344, 345, 346, 347, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 118, 118, 0, 118, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 118, 0,
       0, 0, 0, 348, 18, 0, 118, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 118, 118, 20, 349,
      21, 22, 23, 0, 350, 351, 352, 24, 0, 353,
     354, 355, 25, 356, 357, 358, 0, 27, 0, 0,
       0, 359, 360, 361, 362, 363, 30, 0, 0, 283,
      33, -350, 0, 0, 364, 0, 0, 0, 0, 0,
     365, 0, 0, 669, 0, 0, 0, 156, 10, 11,
      12, 367, 368, 670, 0, 0, 0, 0, 370, 371,
     372, 0, 891, 0, 671, 685, 686, 687, 688, 689,
     690, 691, 692, 693, 694, 695, 696, 697, 698, 699,
     700, 701, 702, 703, 704, 705, 706, 374, 0, 0,
       0, 0, 0, 118, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 817, 22,
     983, 984, 985, 12, 1235, 14, 512, 345, 346, 347,
      25, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 30, 0, 0, 32, 33, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 523, 0, 0, 348, 18, 0, 0, 891, 0,
       0, 524, 0, 0, 0, 0, 37, 0, 0, 20,
     349, 21, 525, 23, 0, 350, 351, 352, 24, 0,
     353, 354, 355, 25, 356, 357, 358, 0, 27, 118,
       0, 118, 359, 360, 361, 362, 363, 30, 0, 0,
     986, 987, 818, 0, 0, 364, 0, 0, 0, 0,
       0, 365, 0, 0, 366, 0, 0, 0, 0, 0,
       0, 0, 367, 368, 369, 0, 0, 0, 0, 370,
     371, 372, 0, 0, 0, 373, 988, 817, 0, 282,
      10, 11, 12, 0, 14, 512, 345, 346, 347, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 374, 685,
     686, 687, 688, 689, 690, 691, 692, 693, 694, 695,
     696, 697, 698, 699, 700, 701, 702, 703, 704, 705,
     706, 0, 0, 348, 18, 0, 0, 0, 0, 0,
       0, 0, 156, 10, 11, 12, 0, 0, 20, 349,
      21, 0, 23, 0, 350, 351, 352, 24, 2031, 353,
     354, 355, 25, 356, 357, 358, 0, 27, 0, 0,
       0, 359, 360, 361, 362, 363, 30, 0, 0, 283,
      33, 818, 0, 0, 364, 0, 0, 0, 0, 0,
     365, 0, 0, 366, 0, 0, 0, 0, 0, 0,
       0, 367, 368, 369, 22, 0, 0, 0, 370, 371,
     372, 0, 0, 0, 373, 25, 817, 0, 983, 984,
     985, 12, 1345, 14, 512, 345, 346, 347, 0, 30,
       0, 0, 32, 33, 0, 0, 0, 374, 0, 0,
       0, 0, 0, 0, 0, 0, 211, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 212, 0, 0, 0,
       0, 37, 348, 18, 0, 0, 0, 213, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 20, 349, 21,
       0, 23, 0, 350, 351, 352, 24, 0, 353, 354,
     355, 25, 356, 357, 358, 0, 27, 0, 0, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 986, 987,
     818, 0, 0, 364, 0, 0, 0, 0, 0, 365,
       0, 0, 366, 0, 0, 0, 0, 0, 0, 0,
     367, 368, 369, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 817, 373, 983, 984, 985, 12, 0, 14,
     512, 345, 346, 347, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, -521, 374, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 348, 18,
       0, 0, 0, 282, 10, 11, 12, 0, 0, 0,
       0, 0, 0, 20, 349, 21, 0, 23, 0, 350,
     351, 352, 24, 0, 353, 354, 355, 25, 356, 357,
     358, 0, 27, 0, 0, 0, 359, 360, 361, 362,
     363, 30, 0, 0, 986, 987, 818, 0, 0, 364,
       0, 0, 0, 0, 0, 365, 0, 0, 366, 0,
       0, 0, 0, 0, 0, 22, 367, 368, 369, 0,
       0, 0, 0, 370, 371, 372, 25, 0, 668, 373,
     156, 10, 11, 12, 0, 14, 344, 345, 346, 347,
      30, 0, 0, 283, 33, 0, 0, 0, 0, 0,
       0, 1460, 374, 0, 0, 0, 0, 863, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 864, 0, 0,
       0, 0, 37, 0, 348, 18, 0, 0, 865, 156,
     142, 1367, 12, 0, 0, 0, 0, 0, 0, 20,
     349, 21, 22, 23, 0, 350, 351, 352, 24, 0,
     353, 354, 355, 25, 356, 357, 358, 0, 27, 0,
       0, 0, 359, 360, 361, 362, 363, 30, 0, 0,
      32, 33, -350, 0, 0, 364, 0, 0, 0, 0,
       0, 365, 0, 0, 1918, 0, 0, 0, 0, 0,
       0, 22, 367, 368, 1919, 0, 0, 0, 0, 370,
     371, 372, 25, 0, 2143, 1920, 282, 10, 11, 12,
       0, 14, 344, 345, 346, 347, 30, 0, 0, 32,
      33, 0, 0, 0, 0, 0, 0, 0, 374, 0,
       0, 0, 0, 166, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 167, 0, 0, 0, 0, 37, 0,
     348, 18, 0, 0, 168, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 20, 349, 21, 22, 23,
       0, 350, 351, 352, 24, 0, 353, 354, 355, 25,
     356, 357, 358, 0, 27, 0, 0, 0, 359, 360,
     361, 362, 363, 30, 0, 0, 283, 33, 0, 0,
    -214, 364, 0, 0, 0, 0, 0, 365, 0, 0,
     366, 0, 0, 0, 0, 0, 0, 0, 367, 368,
     369, 0, 0, 0, 0, 370, 371, 372, 0, 0,
     817, 373, 282, 10, 11, 12, 0, 14, 512, 345,
     346, 347, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 374, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 348, 18, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 20, 349, 21, 0, 23, 0, 350, 351, 352,
      24, 0, 353, 354, 355, 25, 356, 357, 358, 0,
      27, 0, 0, 0, 359, 360, 361, 362, 363, 30,
       0, 0, 283, 33, 818, 0, 0, 364, 0, 0,
       0, 0, 0, 365, 0, 0, 366, 0, 0, 0,
       0, 0, 0, 0, 367, 368, 369, 0, 0, 0,
       0, 370, 371, 372, 0, 0, 997, 373, 282, 10,
      11, 12, 0, 14, 512, 345, 346, 347, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     374, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 348, 18, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 20, 349, 21,
       0, 23, 0, 350, 351, 352, 24, 0, 353, 354,
     355, 25, 356, 357, 358, 0, 27, 0, 0, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 283, 33,
       0, 0, 0, 364, -838, 0, 0, 0, 0, 365,
       0, 0, 366, 0, 0, 0, 0, 0, 0, 0,
     367, 368, 369, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 997, 373, 282, 10, 11, 12, 0, 14,
     512, 345, 346, 347, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 374, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 348, 18,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 20, 349, 21, 0, 23, 0, 350,
     351, 352, 24, 0, 353, 354, 355, 25, 356, 357,
     358, 0, 27, 0, 0, 0, 359, 360, 361, 362,
     363, 30, 0, 0, 283, 33, 0, 0, 0, 364,
       0, 0, 0, 0, 0, 365, 0, 0, 366, 0,
       0, 0, 0, 0, 0, 0, 367, 368, 369, 0,
       0, 0, 0, 370, 371, 372, 0, 0, 981, 373,
     282, 10, 11, 12, 0, 14, 512, 345, 346, 347,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    -838, 0, 374, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 348, 18, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 20,
     349, 21, 0, 23, 0, 350, 351, 352, 24, 0,
     353, 354, 355, 25, 356, 357, 358, 0, 27, 0,
       0, 0, 359, 360, 361, 362, 363, 30, 0, 0,
     283, 33, 0, 0, 0, 364, 0, 0, 0, 0,
       0, 365, 0, 0, 366, 0, 0, 0, 0, 0,
       0, 0, 367, 368, 369, 0, 0, 0, 0, 370,
     371, 372, 0, 0, 993, 373, 282, 10, 11, 12,
       0, 14, 512, 345, 346, 347, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 374, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     348, 18, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 20, 349, 21, 0, 23,
       0, 350, 351, 352, 24, 0, 353, 354, 355, 25,
     356, 357, 358, 0, 27, 0, 0, 0, 359, 360,
     361, 362, 363, 30, 0, 0, 283, 33, 0, 0,
       0, 364, 0, 0, 0, 0, 0, 365, 0, 0,
     366, 0, 0, 0, 0, 0, 0, 0, 367, 368,
     369, 0, 0, 0, 0, 370, 371, 372, 0, 0,
    1829, 373, 282, 10, 11, 12, 0, 14, 512, 345,
     346, 347, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 374, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 348, 18, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 20, 349, 21, 0, 23, 0, 350, 351, 352,
      24, 0, 353, 354, 355, 25, 356, 357, 358, 0,
      27, 0, 0, 0, 359, 360, 361, 362, 363, 30,
       0, 0, 283, 33, 0, 0, 0, 364, 0, 0,
       0, 0, 0, 365, 0, 0, 366, 0, 0, 0,
       0, 0, 0, 0, 367, 368, 369, 0, 0, 0,
       0, 370, 371, 372, 0, 0, 0, 373, 282, 10,
      11, 12, 0, 14, 512, 345, 346, 347, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     374, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 348, 18, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 20, 349, 21,
       0, 23, 0, 350, 351, 352, 24, 0, 353, 354,
     355, 25, 356, 357, 358, 0, 27, 0, 0, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 283, 33,
       0, 0, 0, 364, 0, 0, 0, 0, 0, 365,
       0, 0, 366, 0, 0, 0, 0, 0, 0, 0,
     367, 368, 369, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 0, 373, 282, 10, 11, 12, 0, 14,
     512, 345, 346, 347, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 374, 513, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 348, 18,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 20, 349, 21, 0, 23, 0, 350,
     351, 352, 24, 0, 353, 354, 355, 25, 356, 357,
     358, 0, 27, 0, 0, 0, 359, 360, 361, 362,
     363, 30, 0, 0, 283, 33, 0, 0, 0, 364,
       0, 0, 0, 0, 0, 365, 0, 0, 366, 0,
       0, 0, 0, 0, 0, 0, 367, 368, 369, 0,
       0, 0, 0, 370, 371, 372, 0, 0, 0, 373,
     282, 10, 11, 12, 0, 14, 512, 345, 346, 347,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 374, 873, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 348, 18, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 20,
     349, 21, 0, 23, 0, 350, 351, 352, 24, 0,
     353, 354, 355, 25, 356, 357, 358, 0, 27, 0,
       0, 0, 359, 360, 361, 362, 363, 30, 0, 0,
     283, 33, 0, 0, 0, 364, 0, 0, 0, 0,
       0, 365, 0, 0, 366, 0, 0, 0, 0, 0,
       0, 0, 367, 368, 369, 0, 0, 0, 0, 370,
     371, 372, 0, 0, 0, 373, 282, 10, 11, 12,
       0, 14, 512, 345, 346, 347, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 374, 1037,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     348, 18, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 20, 349, 21, 0, 23,
       0, 350, 351, 352, 24, 0, 353, 354, 355, 25,
     356, 357, 358, 0, 27, 0, 0, 0, 359, 360,
     361, 362, 363, 30, 0, 0, 283, 33, 0, 0,
       0, 364, 0, 0, 0, 0, 0, 365, 0, 0,
     366, 0, 0, 0, 0, 0, 0, 0, 367, 368,
     369, 0, 0, 0, 0, 370, 371, 372, 0, 0,
       0, 373, 282, 10, 11, 12, 0, 14, 512, 345,
     346, 347, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 374, 1057, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 348, 18, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 20, 349, 21, 0, 23, 0, 350, 351, 352,
      24, 0, 353, 354, 355, 25, 356, 357, 358, 0,
      27, 0, 0, 0, 359, 360, 361, 362, 363, 30,
       0, 0, 283, 33, 0, 0, 0, 364, 0, 0,
       0, 0, 0, 365, 0, 0, 366, 0, 0, 0,
       0, 0, 0, 0, 367, 368, 369, 0, 0, 0,
       0, 370, 371, 372, 0, 0, 0, 373, 1660, 1661,
    1662, 12, 184, 14, 344, 345, 346, 347, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     374, 1288, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 348, 18, 1663, 0, 1664, 1665, 1666, 1667,
    1668, 1669, 1670, 1671, 1672, 1673, 19, 20, 349, 21,
      22, 23, 0, 350, 351, 352, 24, 0, 353, 354,
     355, 25, 356, 357, 358, 1674, 27, 1675, 0, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 283, 1676,
    1244, 0, 1677, 364, 0, 0, 0, 0, 0, 365,
       0, 0, 366, 0, 0, 0, 0, 0, 0, 0,
     367, 368, 369, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 0, 373, 0, 0, 0, 1678, 1660, 1661,
    1662, 12, 184, 14, 344, 345, 346, 347, 0, 0,
       0, 0, 0, 0, 0, 0, 374, 0, 685, 686,
     687, 688, 689, 690, 691, 692, 693, 694, 695, 696,
     697, 698, 699, 700, 701, 702, 703, 704, 705, 706,
       0, 0, 348, 18, 1663, 0, 1664, 1665, 1666, 1667,
    1668, 1669, 1670, 1671, 1672, 1673, 19, 20, 349, 21,
      22, 23, 0, 350, 351, 352, 24, 2043, 353, 354,
     355, 25, 356, 357, 358, 1674, 27, 1675, 0, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 283, 1676,
       0, 0, 1677, 364, 0, 0, 0, 0, 0, 365,
       0, 0, 366, 0, 0, 0, 0, 0, 0, 0,
     367, 368, 369, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 0, 373, 0, 0, 0, 1678, 282, 10,
      11, 12, 184, 14, 344, 345, 346, 347, 496, 0,
       0, 0, 0, 0, 0, 0, 374, 0, 685, 686,
     687, 688, 689, 690, 691, 692, 693, 694, 695, 696,
     697, 698, 699, 700, 701, 702, 703, 704, 705, 706,
       0, 0, 348, 18, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 20, 349, 21,
      22, 23, 0, 350, 351, 352, 24, 2113, 353, 354,
     355, 25, 356, 357, 358, 0, 27, 0, 733, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 283, 33,
       0, 0, 0, 364, 0, 0, 0, 0, 0, 365,
       0, 0, 1069, 0, 0, 0, 0, 0, 0, 0,
     367, 368, 1070, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 0, 1071, 737, 156, 10, 11, 12, 184,
      14, 344, 345, 346, 347, 496, 0, 0, 0, 0,
       0, 0, 0, 684, 0, 0, 374, 685, 686, 687,
     688, 689, 690, 691, 692, 693, 694, 695, 696, 697,
     698, 699, 700, 701, 702, 703, 704, 705, 706, 348,
      18, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 20, 349, 21, 22, 23, 0,
     350, 351, 352, 24, 0, 353, 354, 355, 25, 356,
     357, 358, 0, 27, 0, 733, 0, 359, 360, 361,
     362, 363, 30, 0, 0, 32, 33, 0, 0, 0,
     364, 0, 0, 0, 0, 0, 365, 0, 0, 1136,
       0, 0, 0, 0, 0, 0, 0, 367, 368, 1137,
       0, 0, 0, 0, 370, 371, 372, 0, 0, 0,
    1138, 737, 282, 10, 11, 12, 0, 14, 344, 345,
     346, 347, 0, 0, 0, 0, 0, 0, 0, 0,
    1234, 0, 0, 374, 685, 686, 687, 688, 689, 690,
     691, 692, 693, 694, 695, 696, 697, 698, 699, 700,
     701, 702, 703, 704, 705, 706, 348, 18, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 20, 349, 21, 22, 23, 0, 350, 351, 352,
      24, 0, 353, 354, 355, 25, 356, 357, 358, 0,
      27, 0, 733, 0, 359, 360, 361, 362, 363, 30,
       0, 0, 283, 33, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 365, 0, 0, 1069, 0, 0, 0,
       0, 0, 0, 0, 367, 368, 1070, 0, 0, 0,
       0, 370, 371, 372, 0, 0, 0, 1071, 737, 156,
      10, 11, 12, 0, 14, 344, 345, 346, 347, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 1925, 0,
     374, 685, 686, 687, 688, 689, 690, 691, 692, 693,
     694, 695, 696, 697, 698, 699, 700, 701, 702, 703,
     704, 705, 706, 348, 18, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 20, 349,
      21, 22, 23, 0, 350, 351, 352, 24, 0, 353,
     354, 355, 25, 356, 357, 358, 0, 27, 0, 733,
       0, 359, 360, 361, 362, 363, 30, 0, 0, 32,
      33, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     365, 0, 0, 1136, 0, 0, 0, 0, 0, 0,
       0, 367, 368, 1137, 0, 0, 0, 0, 370, 371,
     372, 0, 0, 0, 1138, 737, 282, 10, 11, 12,
       0, 14, 344, 345, 346, 347, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 374, 685, 686,
     687, 688, 689, 690, 691, 692, 693, 694, 695, 696,
     697, 698, 699, 700, 701, 702, 703, 704, 705, 706,
     348, 18, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 20, 349, 21, 22, 23,
       0, 350, 351, 352, 24, 0, 353, 354, 355, 25,
     356, 357, 358, 0, 27, 0, 0, 0, 359, 360,
     361, 362, 363, 30, 0, 0, 283, 33, 0, 0,
       0, 364, 0, 0, 0, 0, 0, 365, 0, 0,
     366, 0, 0, 0, 0, 0, 0, 0, 367, 368,
     369, 0, 0, 0, 0, 370, 371, 372, 0, 0,
       0, 373, 282, 10, 11, 12, 0, 14, 344, 345,
     346, 347, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 374, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 348, 18, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 20, 349, 21, 22, 23, 0, 350, 351, 352,
      24, 0, 353, 354, 355, 25, 356, 357, 358, 0,
      27, 0, 0, 0, 359, 360, 361, 362, 363, 30,
       0, 0, 283, 625, 0, 0, 0, 626, 0, 0,
       0, 0, 0, 365, 0, 0, 366, 0, 0, 0,
       0, 0, 0, 0, 367, 368, 369, 0, 0, 0,
       0, 370, 371, 372, 0, 0, 0, 373, 282, 10,
      11, 12, 0, 14, 512, 345, 346, 347, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     374, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 348, 18, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 20, 349, 21,
      22, 23, 0, 350, 351, 352, 24, 0, 353, 354,
     355, 25, 356, 357, 358, 0, 27, 0, 0, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 283, 33,
       0, 0, 0, 364, 0, 0, 0, 0, 0, 365,
       0, 0, 669, 0, 0, 0, 0, 0, 0, 0,
     367, 368, 670, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 0, 671, 282, 10, 11, 12, 0, 14,
     512, 345, 346, 347, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 374, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 348, 18,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 20, 349, 21, 0, 23, 0, 350,
     351, 352, 24, 0, 353, 354, 355, 25, 356, 357,
     358, 0, 27, 0, 0, 0, 359, 360, 361, 362,
     363, 30, 0, 0, 283, 33, 0, 0, 1783, 364,
       0, 0, 0, 0, 0, 365, 0, 0, 366, 0,
       0, 0, 0, 0, 0, 0, 367, 368, 369, 0,
       0, 0, 0, 370, 371, 372, 0, 0, 0, 373,
     282, 10, 11, 12, 184, 14, 344, 345, 346, 347,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 374, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 348, 18, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 20,
     349, 21, 22, 23, 0, 350, 351, 352, 24, 0,
     353, 354, 355, 25, 356, 357, 358, 0, 27, 0,
       0, 0, 359, 360, 361, 362, 363, 30, 0, 0,
     283, 33, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 365, 0, 0, 366, 0, 0, 0, 0, 0,
       0, 0, 367, 368, 369, 0, 0, 0, 0, 370,
     371, 372, 0, 0, 0, 373, 156, 10, 11, 12,
       0, 14, 512, 345, 346, 347, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 374, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     348, 18, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 20, 349, 21, 22, 23,
       0, 350, 351, 352, 24, 0, 353, 354, 355, 25,
     356, 357, 358, 0, 27, 0, 0, 0, 359, 360,
     361, 362, 363, 30, 0, 0, 32, 33, 0, 0,
       0, 364, 0, 0, 0, 0, 0, 365, 0, 0,
    1918, 0, 0, 0, 0, 0, 0, 0, 367, 368,
    1919, 0, 0, 0, 0, 370, 371, 372, 0, 0,
       0, 1920, 282, 10, 11, 12, 0, 14, 512, 345,
     346, 347, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 374, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 348, 18, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 20, 349, 21, 0, 23, 0, 350, 351, 352,
      24, 0, 353, 354, 355, 25, 356, 357, 358, 0,
      27, 0, 0, 0, 359, 360, 361, 362, 363, 30,
       0, 0, 283, 33, 0, 0, 0, 364, 0, 0,
       0, 0, 0, 365, 0, 0, 366, 0, 0, 0,
       0, 0, 0, 0, 367, 368, 369, 0, 0, 0,
       0, 370, 371, 372, 0, 0, 0, 373, 282, 10,
      11, 12, 0, 14, 512, 345, 346, 347, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     374, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 348, 18, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 20, 349, 21,
       0, 23, 0, 350, 351, 352, 24, 0, 353, 354,
     355, 25, 356, 357, 358, 0, 27, 0, 0, 0,
     359, 360, 361, 362, 363, 30, 0, 0, 283, 33,
     681, 0, 0, 0, 0, 0, 0, 0, 0, 365,
       0, 0, 366, 0, 0, 0, 0, 0, 0, 0,
     367, 368, 369, 0, 0, 0, 0, 370, 371, 372,
       0, 0, 0, 682, 282, 10, 11, 12, 0, 14,
     512, 345, 346, 347, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 374, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 348, 18,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 20, 349, 21, 0, 23, 0, 350,
     351, 352, 24, 0, 353, 354, 355, 25, 356, 357,
     358, 0, 27, 0, 0, 0, 359, 360, 361, 362,
     363, 30, 0, 0, 283, 33, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 365, 0, 0, 366, 0,
       0, 0, 0, 0, 0, 0, 367, 368, 369, 0,
       0, 0, 0, 370, 371, 372, 0, 0, 0, 373,
     721, 282, 10, 11, 12, 0, 14, 512, 345, 346,
     347, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 374, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 348, 18, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      20, 349, 21, 0, 23, 0, 350, 351, 352, 24,
       0, 353, 354, 355, 25, 356, 357, 358, 0, 27,
       0, 0, 0, 359, 360, 361, 362, 363, 30, 0,
       0, 283, 33, 0, 0, 0, 626, 0, 0, 0,
       0, 0, 365, 0, 0, 366, 0, 0, 0, 0,
       0, 0, 0, 367, 368, 369, 0, 0, 0, 0,
     370, 371, 372, 0, 0, 0, 373, 282, 10, 11,
      12, 0, 14, 512, 345, 346, 347, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 374,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 348, 18, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 20, 349, 21, 22,
      23, 0, 350, 351, 352, 24, 0, 353, 354, 355,
      25, 356, 357, 358, 0, 27, 0, 0, 0, 359,
     360, 361, 362, 363, 30, 0, 0, 283, 33, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 365, 0,
       0, 669, 0, 0, 0, 0, 0, 0, 0, 367,
     368, 670, 0, 0, 0, 0, 370, 371, 372, 0,
       0, 0, 671, 1300, 10, 11, 12, 0, 14, 512,
     345, 346, 347, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 374, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 348, 18, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 20, 349, 21, 0, 23, 0, 350, 351,
     352, 24, 0, 353, 354, 355, 25, 356, 357, 358,
       0, 27, 0, 0, 0, 359, 360, 361, 362, 363,
      30, 0, 0, 283, 33, 0, 0, 0, 364, 0,
       0, 0, 0, 0, 365, 0, 0, 366, 0, 0,
       0, 0, 0, 0, 0, 367, 368, 369, 0, 0,
       0, 0, 370, 371, 372, 0, 0, 0, 373, 156,
      10, 11, 12, 0, 14, 344, 345, 346, 347, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 374, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 348, 18, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 20, 349,
      21, 22, 23, 0, 350, 351, 352, 24, 0, 353,
     354, 355, 25, 356, 357, 358, 0, 27, 0, 0,
       0, 359, 360, 361, 362, 363, 30, 0, 0, 32,
      33, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     365, 0, 0, 1918, 0, 0, 0, 0, 0, 0,
       0, 367, 368, 1919, 0, 0, 0, 0, 370, 371,
     372, 0, 0, 0, 1920, 282, 10, 11, 12, 0,
      14, 512, 345, 346, 347, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 374, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 348,
      18, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 20, 349, 21, 0, 23, 0,
     350, 351, 352, 24, 0, 353, 354, 355, 25, 356,
     357, 358, 0, 27, 0, 0, 0, 359, 360, 361,
     362, 363, 30, 0, 0, 283, 33, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 365, 0, 0, 366,
       0, 0, 0, 0, 0, 0, 0, 367, 368, 369,
       0, 0, 0, 0, 370, 371, 372, 0, 0, 0,
     373, 282, 10, 11, 12, 0, 14, 512, 345, 346,
     347, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 374, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 348, 18, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      20, 349, 21, 0, 23, 0, 350, 351, 352, 24,
       0, 353, 354, 355, 25, 356, 357, 358, 0, 27,
       0, 0, 0, 359, 360, 361, 362, 363, 30, 0,
       0, 283, 33, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 365, 0, 0, 366, 0, 0, 0, 0,
       0, 0, 0, 367, 368, 369, 0, 0, 0, 0,
     370, 371, 372, 0, 0, 0, 743, 282, 10, 11,
      12, 0, 14, 512, 345, 346, 347, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 374,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 348, 18, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 20, 349, 21, 0,
      23, 0, 350, 351, 352, 24, 0, 353, 354, 355,
      25, 356, 357, 358, 0, 27, 0, 0, 0, 359,
     360, 361, 362, 363, 30, 0, 0, 283, 33, 282,
      10, 11, 12, 184, 14, 15, 0, 0, 365, 496,
       0, 366, 0, 0, 0, 0, 0, 0, 0, 367,
     368, 369, 0, 0, 0, 0, 370, 371, 372, 0,
       0, 0, 745, 0, 0, 0, 156, 10, 11, 12,
     233, 234, 235, 0, 18, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 374, 0, 0, 20, 0,
      21, 22, 0, 0, 0, 0, 0, 24, 0, 0,
       0, 0, 25, 0, 0, 0, 0, 27, 0, 733,
       0, 18, 0, 0, 0, 0, 30, 0, 0, 283,
      33, 0, 0, 0, 0, 0, 0, 0, 22, 0,
       0, 0, 0, 1331, 24, 0, 0, 0, 0, 25,
       0, 0, 0, 1332, 27, 0, 733, 0, 37, 0,
       0, 0, 0, 30, 1333, 737, 32, 33, 156, 10,
      11, 12, 223, 14, 224, 0, 0, 0, 0, 0,
     827, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     828, 0, 0, 0, 0, 37, 0, 0, 0, 0,
       0, 829, 737, 0, 0, 156, 10, 11, 12, 184,
      14, 15, 0, 18, 0, 844, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 20, 0, 21,
      22, 0, 0, 0, 0, 0, 24, 0, 0, 0,
       0, 25, 0, 0, 0, 0, 27, 0, 0, 0,
      18, 0, 0, 0, 0, 30, 0, 0, 32, 33,
       0, 0, 225, 0, 20, 0, 21, 22, 0, 0,
       0, 0, 35, 24, 0, 0, 0, 0, 25, 0,
       0, 0, 36, 27, 0, 0, 0, 37, 0, 0,
       0, 0, 30, 38, 0, 32, 33, 1379, 10, 1164,
      12, 223, 14, 224, 0, 0, 0, 0, 0, 35,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 36,
       0, 0, 0, 0, 37, 0, 0, 0, 0, 0,
      38, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 18, 0, 0, 156, 10, 11, 12, 223,
      14, 224, 0, 0, 0, 0, 20, 0, 21, 22,
       0, 0, 0, 0, 0, 24, 0, 0, 0, 0,
      25, 0, 0, 0, 0, 27, 0, 0, 0, 0,
       0, 0, 0, 0, 30, 0, 0, 32, 33, 0,
      18, 0, 0, 1381, 0, 0, 0, 0, 0, 0,
       0, 35, 0, 0, 20, 0, 21, 22, 0, 0,
       0, 36, 0, 24, 0, 0, 37, 0, 25, 0,
       0, 0, 1168, 27, 156, 10, 11, 12, 184, 14,
      15, 0, 30, 0, 0, 32, 33, 0, 0, 1800,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 35,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 36,
       0, 0, 0, 0, 37, 0, 0, 0, 0, 18,
      38, 0, 156, 10, 11, 12, 223, 14, 224, 0,
       0, 0, 0, 20, 0, 21, 22, 0, 0, 0,
       0, 0, 24, 0, 0, 0, 0, 25, 0, 0,
       0, 0, 27, 0, 0, 0, 0, 0, 0, 0,
       0, 30, 0, 0, 32, 33, 0, 18, 0, 0,
       0, 10, 11, 0, 184, 14, 15, 0, 35, 0,
     496, 20, 0, 21, 22, 0, 0, 0, 36, 0,
      24, 0, 0, 37, 0, 25, 0, 0, 0, 38,
      27, 0, 0, 0, 0, 0, 0, 0, 0, 30,
       0, 0, 32, 33, 0, 18, 0, 0, 0, 156,
      10, 11, 12, 233, 234, 235, 35, 0, 0, 20,
       0, 21, 22, 0, 0, 0, 36, 0, 24, 0,
       0, 37, 0, 0, 0, 0, 0, 38, 27, 0,
     733, 0, 0, 0, 0, 0, 0, 30, 0, 0,
     145, 146, 0, 0, 18, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 1525, 0, 0, 0, 0, 0,
       0, 22, 0, 0, 1526, 0, 0, 24, 0, 0,
       0, 0, 25, 0, 0, 1527, 737, 27, 0, 733,
       0, 0, 0, 0, 0, 0, 30, 0, 0, 32,
      33, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 211, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 212, 0, 0, 0, 0, 37, 0,
       0, 0, 0, 0, 1803, 685, 686, 687, 688, 689,
     690, 691, 692, 693, 694, 695, 696, 697, 698, 699,
     700, 701, 702, 703, 704, 705, 706, 685, 686, 687,
     688, 689, 690, 691, 692, 693, 694, 695, 696, 697,
     698, 699, 700, 701, 702, 703, 704, 705, 706, 0,
       0, 0, 0, 0, 2114, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 2126, 685, 686, 687,
     688, 689, 690, 691, 692, 693, 694, 695, 696, 697,
     698, 699, 700, 701, 702, 703, 704, 705, 706, 685,
     686, 687, 688, 689, 690, 691, 692, 693, 694, 695,
     696, 697, 698, 699, 700, 701, 702, 703, 704, 705,
     706, 0, 0, 0, 0, 0, 2127, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 2164, 685,
     686, 687, 688, 689, 690, 691, 692, 693, 694, 695,
     696, 697, 698, 699, 700, 701, 702, 703, 704, 705,
     706, 685, 686, 687, 688, 689, 690, 691, 692, 693,
     694, 695, 696, 697, 698, 699, 700, 701, 702, 703,
     704, 705, 706, 0, 0, 0, 0, 0, 2184, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 1928,
    2089, 685, 686, 687, 688, 689, 690, 691, 692, 693,
     694, 695, 696, 697, 698, 699, 700, 701, 702, 703,
     704, 705, 706
};

static const yytype_int16 yycheck[] =
{
       6, 6, 166, 167, 193, 227, 191, 62, 393, 812,
     192, 1453, 86, 27, 6, 173, 687, 6, 263, 86,
     491, 49, 272, 431, 141, 431, 399, 559, 399, 149,
     431, 431, 91, 1459, 40, 40, 636, 148, 149, 67,
    1579, 6, 18, 49, 266, 624, 35, 36, 40, 53,
      26, 40, 1579, 6, 1026, 6, 1705, 49, 64, 139,
      49, 1696, 380, 72, 1699, 1700, 49, 1702, 207, 49,
     401, 6, 78, 391, 392, 40, 473, 1679, 82, 788,
    1169, 49, 1171, 13, 49, 91, 6, 40, 12, 40,
    1179, 207, 257, 675, 161, 148, 49, 73, 49, 6,
     322, 509, 91, 509, 49, 40, 9, 1922, 236, 237,
      96, 2076, 227, 3, 49, 67, 101, 123, 103, 504,
      40, 6, 237, 95, 1507, 2020, 95, 1776, 64, 0,
     515, 100, 96, 40, 123, 390, 1, 192, 393, 394,
     902, 150, 49, 1792, 123, 151, 908, 331, 332, 399,
    2178, 2093, 14, 15, 221, 40, 91, 19, 186, 151,
      99, 133, 151, 139, 150, 18, 96, 0, 794, 99,
     155, 393, 2137, 110, 14, 15, 182, 166, 167, 19,
     186, 2209, 1, 1998, 1999, 149, 151, 193, 123, 165,
     182, 1574, 1, 182, 186, 98, 796, 186, 150, 227,
     151, 207, 182, 186, 2099, 129, 186, 152, 236, 237,
     149, 21, 22, 23, 288, 151, 151, 182, 186, 149,
     110, 186, 211, 212, 13, 35, 232, 231, 199, 208,
      95, 182, 814, 186, 99, 186, 89, 2179, 266, 14,
      15, 186, 96, 232, 19, 152, 501, 182, 503, 504,
     505, 186, 99, 232, 438, 439, 927, 193, 6, 632,
       7, 632, 182, 90, 3, 4, 5, 132, 97, 122,
      14, 15, 99, 1922, 73, 19, 95, 388, 540, 186,
      99, 257, 258, 145, 1256, 0, 95, 96, 150, 1924,
      90, 90, 40, 451, 322, 149, 272, 232, 1900, 99,
     562, 421, 149, 1065, 21, 145, 23, 96, 25, 1692,
      99, 28, 29, 132, 3, 4, 5, 323, 90, 36,
      37, 150, 149, 329, 84, 72, 385, 953, 334, 83,
     956, 2146, 49, 413, 207, 388, 53, 96, 110, 56,
     329, 83, 334, 153, 1873, 334, 100, 96, 333, 1998,
    1999, 4, 5, 492, 93, 94, 1991, 96, 1887, 523,
     524, 21, 22, 23, 340, 393, 97, 373, 526, 334,
     145, 7, 8, 9, 128, 35, 45, 149, 433, 385,
     781, 99, 632, 334, 373, 1094, 128, 760, 394, 365,
     149, 97, 110, 558, 329, 84, 385, 83, 334, 334,
     149, 145, 128, 1492, 93, 94, 2221, 435, 536, 537,
     807, 808, 48, 2228, 2016, 268, 1894, 545, 128, 150,
      96, 1950, 537, 1901, 400, 431, 4, 5, 434, 65,
    1192, 9, 1194, 561, 1963, 71, 153, 413, 373, 770,
      93, 94, 128, 129, 150, 81, 501, 475, 503, 504,
     385, 110, 61, 637, 128, 440, 65, 21, 1430, 23,
      24, 97, 2001, 149, 28, 110, 2101, 96, 38, 475,
      96, 35, 13, 149, 2001, 725, 504, 1103, 1104, 153,
       3, 4, 5, 475, 96, 613, 475, 111, 97, 113,
      96, 100, 475, 153, 633, 475, 502, 2146, 128, 505,
       3, 4, 5, 509, 21, 97, 23, 24, 536, 537,
     475, 28, 90, 96, 653, 93, 94, 545, 35, 1098,
     149, 1904, 59, 149, 475, 1476, 1477, 90, 148, 107,
     501, 97, 787, 561, 523, 524, 99, 149, 90, 117,
     475, 150, 1493, 149, 548, 65, 399, 3, 4, 5,
    2185, 2186, 96, 532, 62, 96, 1156, 1028, 99, 100,
      21, 22, 23, 24, 25, 550, 149, 28, 29, 708,
      93, 94, 2221, 83, 713, 36, 2002, 716, 717, 2228,
     128, 84, 558, 1115, 639, 613, 149, 96, 49, 153,
      93, 94, 1543, 99, 117, 56, 166, 167, 168, 1225,
    1226, 1552, 1553, 1365, 1555, 149, 61, 128, 747, 90,
      65, 90, 640, 797, 117, 754, 1378, 83, 128, 492,
      21, 806, 23, 24, 59, 2008, 61, 28, 84, 110,
    1162, 110, 33, 34, 35, 620, 153, 93, 94, 149,
     149, 96, 97, 213, 889, 890, 8, 9, 96, 2091,
     895, 771, 658, 659, 660, 661, 662, 96, 778, 718,
      95, 117, 128, 129, 99, 671, 38, 778, 90, 658,
     659, 660, 661, 662, 1145, 1146, 682, 83, 59, 658,
      61, 61, 671, 149, 192, 65, 48, 1095, 110, 1095,
     110, 96, 153, 682, 1095, 1095, 946, 132, 3, 838,
      96, 149, 860, 65, 1077, 681, 1077, 3, 687, 71,
     149, 717, 718, 852, 95, 970, 96, 97, 99, 81,
     100, 83, 128, 658, 659, 660, 661, 662, 717, 718,
     736, 96, 787, 241, 59, 714, 671, 743, 922, 745,
      83, 747, 721, 149, 149, 734, 735, 682, 970, 725,
     878, 132, 153, 149, 743, 1073, 745, 100, 737, 787,
     633, 96, 1713, 1714, 2147, 779, 128, 90, 835, 1142,
      95, 1142, 83, 1535, 99, 1246, 1247, 83, 97, 632,
     653, 898, 717, 718, 149, 128, 902, 110, 773, 3,
       4, 5, 908, 1048, 166, 167, 168, 90, 21, 22,
      23, 24, 25, 779, 90, 28, 29, 132, 743, 90,
     745, 95, 788, 36, 149, 99, 96, 128, 129, 96,
    1075, 95, 128, 829, 110, 899, 49, 1077, 1360, 148,
      96, 150, 838, 56, 128, 708, 96, 83, 827, 828,
     713, 213, 818, 716, 717, 3, 4, 5, 96, 21,
     878, 23, 96, 25, 83, 1326, 28, 29, 96, 830,
      96, 111, 833, 834, 36, 1120, 837, 110, 839, 149,
      84, 1126, 149, 90, 863, 864, 1261, 49, 96, 93,
      94, 754, 128, 149, 56, 90, 1357, 9, 96, 149,
    1029, 13, 1142, 899, 96, 84, 902, 96, 751, 128,
     129, 149, 908, 1087, 1043, 149, 1045, 899, 1047, 96,
     899, 149, 883, 149, 1159, 1160, 1161, 1075, 903, 904,
     149, 906, 4, 5, 1456, 433, 21, 1112, 23, 24,
     153, 149, 90, 28, 899, 93, 94, 95, 33, 34,
      35, 149, 970, 1082, 4, 5, 899, 149, 927, 1065,
     149, 1422, 96, 523, 524, 525, 149, 96, 530, 1123,
    1124, 83, 149, 899, 899, 128, 538, 96, 1126, 83,
     946, 96, 1136, 1137, 96, 149, 98, 99, 100, 96,
      90, 153, 1, 836, 3, 4, 5, 149, 96, 111,
     153, 113, 96, 501, 149, 503, 504, 90, 96, 1470,
     110, 83, 1186, 1187, 1188, 149, 128, 129, 90, 517,
     149, 93, 94, 111, 128, 129, 12, 110, 526, 1025,
     149, 1276, 530, 1029, 149, 107, 59, 149, 61, 1284,
     538, 96, 149, 93, 94, 117, 1025, 3, 4, 5,
    1511, 149, 7, 8, 9, 149, 128, 129, 3, 4,
       5, 4, 5, 1059, 1033, 133, 9, 96, 153, 1065,
     150, 1128, 95, 97, 83, 1071, 99, 3, 4, 5,
    1059, 90, 90, 1328, 93, 94, 1192, 83, 1194, 96,
    1069, 1070, 1337, 48, 149, 96, 97, 1066, 83, 1095,
    1025, 1097, 110, 110, 111, 1169, 113, 1171, 83, 132,
      65, 1115, 128, 1177, 1080, 1179, 71, 95, 1097, 128,
     149, 99, 65, 4, 5, 83, 81, 1088, 1094, 1125,
       3, 1176, 128, 1705, 1059, 96, 97, 93, 94, 95,
      83, 639, 1138, 128, 1123, 1124, 80, 90, 93, 94,
      93, 94, 1148, 128, 129, 97, 90, 1136, 1137, 93,
      83, 523, 524, 525, 107, 83, 1029, 93, 94, 1148,
     128, 129, 1097, 1169, 117, 1171, 83, 110, 1172, 1173,
    1043, 1177, 1045, 1179, 1047, 128, 129, 1169, 1182, 1171,
    1169, 149, 1171, 95, 83, 83, 1192, 1179, 1194, 80,
    1179, 4, 5, 3, 1776, 128, 6, 120, 121, 90,
     128, 83, 93, 94, 1169, 1613, 1171, 1613, 83, 1082,
    1792, 128, 110, 1148, 1179, 83, 1169, 152, 1171, 95,
    1171, 2024, 90, 99, 1077, 100, 1179, 83, 1234, 128,
     128, 129, 129, 1169, 1169, 1171, 1171, 7, 8, 9,
    1176, 1177, 110, 1179, 1179, 1234, 128, 38, 129, 1365,
      13, 149, 65, 128, 129, 65, 1440, 99, 99, 829,
     128, 96, 1378, 3, 4, 5, 76, 128, 838, 110,
       3, 1247, 128, 1528, 1529, 96, 97, 90, 48, 787,
      93, 94, 153, 93, 94, 1270, 83, 1266, 90, 1142,
    1296, 128, 35, 36, 107, 38, 83, 107, 61, 1234,
     128, 71, 65, 1688, 117, 1294, 1295, 117, 128, 1448,
      83, 81, 122, 128, 1369, 128, 1390, 1899, 128, 1458,
      83, 64, 110, 1390, 67, 1399, 110, 1333, 99, 110,
      73, 128, 110, 96, 97, 78, 99, 100, 149, 110,
    1922, 128, 1331, 1332, 84, 3, 4, 5, 96, 857,
    1326, 149, 860, 93, 94, 128, 120, 121, 99, 1365,
      83, 1616, 90, 1352, 1353, 128, 129, 90, 876, 110,
      90, 99, 1378, 110, 8, 9, 167, 168, 1382, 96,
    1262, 1263, 110, 1265, 1388, 1389, 149, 110, 1392, 1393,
       4, 5, 1396, 1399, 111, 111, 113, 113, 110, 83,
    1371, 1372, 3, 4, 5, 128, 25, 1399, 27, 25,
    1399, 27, 110, 1487, 48, 158, 1998, 1999, 1492, 1535,
     163, 150, 213, 166, 167, 168, 84, 1398, 16, 17,
      18, 65, 1403, 1369, 1399, 93, 94, 71, 1417, 1418,
    1419, 1420, 1456, 149, 128, 129, 1399, 81, 149, 1428,
     193, 150, 3, 4, 5, 6, 199, 829, 12, 117,
    1466, 99, 90, 1399, 1399, 149, 838, 149, 211, 212,
     213, 99, 3, 4, 5, 6, 90, 1466, 9, 93,
      94, 96, 110, 84, 227, 100, 1492, 3, 4, 5,
       6, 100, 93, 94, 237, 110, 111, 25, 1687, 27,
    1492, 96, 97, 1492, 1686, 144, 1688, 146, 30, 31,
      32, 1482, 1483, 149, 1485, 1486, 117, 1488, 2189, 4,
       5, 1527, 149, 266, 46, 76, 100, 1492, 1504, 1535,
     152, 1466, 149, 84, 65, 61, 1525, 1526, 281, 1492,
    2211, 149, 93, 94, 149, 76, 1550, 1551, 96, 97,
       3, 4, 5, 1123, 1124, 1125, 1492, 1492, 111, 90,
      76, 110, 93, 94, 2146, 83, 1136, 1137, 1138, 1540,
    1541, 122, 90, 1579, 1579, 1448, 107, 93, 94, 322,
     323, 110, 373, 96, 97, 1458, 117, 1579, 96, 97,
    1579, 122, 110, 90, 3, 4, 5, 128, 1168, 110,
    1579, 97, 59, 3, 61, 90, 122, 1613, 93, 94,
     128, 1996, 1120, 152, 1579, 90, 90, 152, 1126, 100,
      83, 8, 107, 150, 99, 99, 1579, 96, 1579, 149,
     373, 1686, 117, 1688, 83, 110, 110, 90, 95, 2221,
      93, 94, 99, 149, 1579, 149, 2228, 3, 4, 5,
     393, 394, 3, 4, 5, 1626, 1627, 1628, 90, 1635,
    1688, 16, 17, 18, 1803, 128, 129, 99, 1176, 149,
      83, 462, 463, 1679, 90, 132, 142, 143, 110, 128,
     129, 1687, 4, 5, 93, 94, 149, 1679, 96, 97,
    1679, 434, 435, 1672, 96, 97, 150, 1673, 1674, 128,
     149, 90, 917, 918, 919, 83, 211, 212, 128, 452,
      99, 90, 455, 110, 1679, 128, 129, 71, 461, 462,
     463, 110, 96, 97, 467, 100, 1679, 100, 1679, 97,
     100, 2202, 149, 524, 525, 149, 149, 93, 94, 1710,
    1711, 100, 93, 94, 1679, 1930, 117, 118, 119, 120,
     121, 1123, 1124, 1125, 1918, 1919, 149, 149, 501, 502,
     100, 504, 505, 111, 1136, 1137, 1138, 152, 90, 96,
     153, 93, 94, 149, 1996, 518, 3, 149, 521, 111,
     523, 524, 525, 150, 149, 107, 529, 3, 4, 5,
       6, 149, 535, 111, 537, 117, 1168, 540, 1802, 111,
       4, 5, 3, 4, 5, 9, 1785, 129, 3, 4,
       5, 6, 111, 1789, 1790, 149, 149, 95, 561, 562,
    1328, 96, 99, 21, 22, 23, 24, 25, 99, 1337,
      28, 29, 149, 99, 149, 33, 34, 70, 36, 149,
     149, 152, 3, 4, 5, 150, 149, 1355, 1356, 129,
     152, 49, 122, 110, 3, 4, 5, 149, 56, 83,
      76, 1369, 103, 104, 105, 106, 107, 149, 84, 152,
     613, 150, 97, 149, 115, 116, 117, 93, 94, 670,
     671, 76, 3, 4, 5, 149, 90, 149, 1894, 93,
      94, 682, 93, 94, 1900, 1901, 149, 640, 93, 94,
      86, 117, 149, 107, 149, 1894, 122, 95, 1900, 149,
     100, 1900, 1901, 117, 1920, 1894, 142, 143, 144, 149,
     146, 1900, 1901, 99, 157, 129, 669, 670, 671, 1918,
    1919, 1920, 93, 94, 120, 1900, 1912, 83, 149, 682,
     173, 90, 1997, 128, 93, 94, 128, 1900, 128, 1900,
     128, 150, 743, 149, 745, 153, 747, 626, 149, 1894,
    1468, 8, 148, 152, 97, 1900, 1901, 131, 1996, 90,
     207, 152, 93, 94, 149, 161, 1484, 123, 124, 149,
     149, 127, 128, 129, 130, 1920, 149, 3, 4, 5,
       6, 734, 735, 736, 149, 2001, 2001, 230, 149, 96,
     743, 96, 745, 99, 747, 90, 239, 149, 149, 2001,
    2016, 149, 2001, 518, 83, 99, 521, 152, 523, 524,
    1528, 1529, 2001, 256, 2016, 149, 100, 2016, 67, 149,
     535, 149, 149, 149, 267, 221, 2001, 2016, 829, 149,
     152, 7, 8, 9, 787, 788, 149, 838, 2001, 128,
    2001, 2016, 1, 12, 3, 4, 5, 149, 149, 153,
      76, 852, 99, 2016, 153, 2016, 2001, 153, 84, 99,
     153, 257, 153, 864, 865, 153, 2080, 93, 94, 97,
    2086, 2016, 48, 153, 827, 828, 829, 830, 153, 97,
     833, 834, 9, 97, 837, 838, 839, 2086, 50, 65,
      53, 117, 288, 95, 149, 71, 122, 2086, 1616, 852,
       3, 3, 4, 5, 6, 81, 149, 128, 861, 862,
     863, 864, 865, 128, 95, 128, 869, 364, 128, 128,
     128, 97, 128, 128, 83, 117, 118, 119, 120, 121,
     883, 90, 128, 128, 93, 94, 95, 96, 128, 2155,
     128, 2086, 128, 128, 3, 4, 5, 875, 7, 8,
       9, 128, 2141, 128, 128, 128, 2155, 128, 2139, 97,
     128, 128, 128, 2149, 97, 100, 2155, 90, 1686, 128,
    1688, 128, 128, 901, 76, 128, 148, 138, 128, 907,
     128, 83, 4, 5, 2173, 128, 128, 9, 90, 128,
      95, 93, 94, 51, 128, 149, 128, 128, 128, 442,
    2189, 97, 398, 128, 128, 107, 65, 128, 451, 128,
    2155, 128, 71, 128, 128, 117, 128, 970, 128, 128,
     122, 90, 2211, 1803, 12, 2214, 128, 129, 36, 128,
     150, 90, 99, 149, 93, 94, 95, 99, 149, 99,
     483, 149, 97, 65, 491, 492, 925, 926, 444, 928,
     929, 930, 931, 932, 933, 934, 935, 936, 937, 938,
     939, 940, 941, 942, 943, 944, 945, 153, 90, 1070,
    1071, 93, 94, 153, 517, 149, 19, 149, 99, 149,
     139, 140, 141, 526, 99, 107, 3, 4, 5, 6,
      97, 145, 149, 149, 38, 117, 1049, 150, 97, 1052,
      97, 153, 153, 153, 547, 128, 128, 96, 100, 149,
    1063, 152, 827, 828, 12, 97, 1069, 1070, 1071, 97,
      97, 149, 12, 1124, 1125, 149, 128, 12, 97, 97,
      97, 574, 1060, 149, 1062, 1088, 1137, 1138, 1918, 1919,
    1920, 1094, 97, 149, 0, 187, 861, 862, 863, 864,
     158, 3, 40, 1790, 869, 163, 771, 186, 1095, 76,
     475, 1929, 558, 182, 1177, 1456, 105, 1168, 1121, 1122,
    1123, 1124, 1125, 90, 154, 1775, 93, 94, 1131, 2155,
      97, 325, 99, 1136, 1137, 1138, 633, 3, 4, 5,
     107, 7, 8, 9, 1080, 649, 1149, 1150, 1151, 1360,
     117, 818, 1162, 1399, 212, 122, 653, 1177, 1489, 656,
     657, 128, 3, 4, 5, 1168, 7, 8, 9, 651,
     616, 1803, 1101, 718, 1177, 218, 3, 4, 5, 6,
     961, 139, 1574, 680, 681, 631, 388, 684, 685, 686,
    1508, 688, 689, 690, 691, 692, 693, 694, 695, 696,
     697, 698, 699, 700, 701, 702, 703, 704, 705, 706,
     675, 708, 2001, 1191, 2024, 1193, 713, 2013, 2016, 716,
     717, 2177, 1466, 281, 65, 847, 1733, 93, 94, 1997,
      71, 1, 1965, 3, 4, 5, 6, 1697, 8, 1766,
    1742, 1698, 1865, 2019, 1295, 1296, 1892, 1849, 1749, 76,
     747, -1, 93, 94, 2075, -1, -1, 754, -1, -1,
      -1, 21, 22, 23, 24, 25, 93, 94, 28, 29,
      -1, -1, -1, 33, 34, -1, 36, -1, -1, -1,
      -1, 1332, 1333, -1, 730, -1, 1918, 1919, 1920, 49,
      -1, 1294, 1295, 1296, -1, 122, 56, 3, 4, 5,
       6, -1, -1, -1, 750, -1, 76, -1, 1286, -1,
      -1, -1, -1, -1, 84, -1, -1, -1, -1, -1,
      90, 818, -1, 93, 94, -1, 1329, 1330, 1331, 1332,
    1333, -1, -1, 1336, 115, 116, 117, 118, 119, 120,
     121, 838, 115, 116, 117, 118, 119, 120, 121, 1352,
    1353, 1354, 122, -1, -1, 852, 1121, 1122, 1123, 1124,
      -1, -1, -1, -1, 857, -1, 1131, 860, 1371, 1372,
      76, 1136, 1137, -1, -1, -1, -1, -1, 84, -1,
      -1, -1, -1, 876, 1149, 1150, 1151, 93, 94, 835,
      -1, -1, -1, 153, 452, 1398, -1, 455, -1, -1,
    1403, -1, 3, 4, 5, 6, -1, -1, -1, 467,
      -1, 117, 4, 5, -1, -1, 122, 9, -1, -1,
     866, -1, 290, 291, 292, 293, 294, 295, -1, 297,
     298, 299, 300, 301, 302, 303, 304, 305, 306, 307,
     308, 309, 310, 311, 312, 313, 314, 315, 316, 317,
      -1, 319, 320, 3, 4, 5, 6, -1, 1461, 1462,
     518, 1464, 959, 521, -1, -1, 1444, -1, -1, -1,
      -1, -1, -1, 65, 920, 76, -1, 535, -1, 1482,
    1483, -1, 1485, 1486, 1413, 1488, 20, -1, -1, 123,
      -1, 988, 93, 94, 1472, -1, -1, -1, 90, 33,
    1478, 93, 94, 37, 38, 39, 40, 41, 42, 43,
      44, 45, -1, -1, -1, 107, 1494, 1495, -1, 53,
      -1, 122, 1525, 1526, 1527, 117, 76, 3, 4, 5,
       6, 1028, 1029, 9, 84, -1, 128, 1540, 1541, -1,
    1518, -1, -1, 93, 94, -1, 1043, -1, 1045, -1,
    1047, -1, -1, -1, -1, 1048, -1, -1, -1, -1,
      -1, -1, -1, -1, 1329, 1330, 1331, 1332, -1, -1,
      -1, 1336, 122, 207, -1, -1, -1, -1, -1, -1,
      -1, -1, 1075, 1561, 1562, 1082, -1, 1352, 1353, 65,
       3, 4, 5, 6, -1, -1, -1, -1, 232, -1,
      76, 4, 5, -1, -1, 8, 9, 83, -1, -1,
      -1, -1, -1, -1, 90, -1, -1, 93, 94, 734,
     735, -1, -1, 1626, 1627, 1628, -1, 1120, -1, -1,
    1076, 107, 1078, 1126, -1, -1, -1, -1, -1, 1617,
    1618, 117, 1620, -1, -1, 48, 122, -1, 1145, 1146,
      -1, -1, 128, 129, -1, 4, 5, -1, -1, 62,
       9, 64, 65, 76, -1, -1, -1, -1, 71, -1,
    1167, 6, -1, -1, -1, -1, -1, 90, 81, -1,
      93, 94, 1128, 18, 1687, 1688, 99, 90, 1134, -1,
      93, 94, 95, 28, 107, 329, 1461, 1462, -1, 1464,
      35, 36, -1, 38, 117, 40, -1, 1710, 1711, 122,
      -1, -1, 827, 828, 49, 128, 65, -1, -1, -1,
     588, -1, -1, -1, -1, 128, -1, 62, -1, 64,
      -1, -1, -1, -1, 83, -1, -1, -1, 73, 373,
      -1, 90, 610, 78, 93, 94, -1, -1, -1, 1246,
    1247, 619, 1803, 1250, 89, -1, 91, -1, 107, -1,
    1525, 1526, -1, 3, 4, 5, 6, -1, 117, -1,
     828, -1, -1, -1, -1, 3, 4, 5, 6, 128,
     129, -1, -1, 1276, -1, -1, -1, 122, -1, -1,
      -1, 1284, -1, -1, -1, -1, -1, 431, -1, -1,
    1803, -1, -1, 861, 862, 3, 4, 5, -1, 7,
      -1, 869, -1, -1, 149, -1, 151, 3, 4, 5,
       6, -1, 157, 158, 88, -1, -1, 162, 163, 1326,
      -1, 166, 167, 168, -1, 1328, 76, -1, 3, 4,
       5, 6, -1, -1, 1337, -1, 1824, 182, 76, -1,
      90, 186, -1, 93, 94, -1, 84, 192, 193, -1,
    1357, -1, 1355, 1356, -1, 93, 94, -1, 1919, 1920,
      -1, -1, -1, -1, 72, 509, 211, 212, 213, 65,
      -1, -1, 122, -1, 1381, -1, -1, -1, 4, 5,
      76, -1, 90, 9, 122, 93, 94, 83, -1, -1,
      -1, -1, -1, -1, 90, -1, 241, 93, 94, -1,
      -1, 76, 176, -1, -1, 1918, 1919, 1920, -1, 84,
      -1, 107, -1, 258, -1, 1422, -1, -1, 93, 94,
      -1, 117, -1, 268, 1049, -1, 122, 1052, -1, -1,
      -1, -1, 128, 129, 1390, 209, 281, -1, 1063, 65,
      -1, 1448, 117, -1, 1069, 1070, -1, 122, 222, -1,
      -1, 1458, -1, -1, -1, -1, -1, 83, -1, -1,
      -1, -1, -1, 1470, 90, 1468, -1, 93, 94, -1,
      -1, 4, 5, 1480, 1481, -1, 9, -1, 323, 324,
      -1, 107, -1, 1996, 329, -1, -1, -1, -1, 334,
      -1, 117, -1, -1, -1, -1, 1121, 1122, 1123, 1124,
      -1, -1, 128, 129, 1511, -1, 1131, 1463, -1, -1,
      -1, 1136, 1137, -1, 658, 659, 660, 661, 662, -1,
      -1, 3, 4, 5, 6, 1528, 1529, 671, -1, -1,
      -1, 1487, 65, -1, -1, 913, 914, -1, 682, 1546,
     385, -1, -1, 388, 6, 390, -1, -1, 393, 394,
      83, -1, -1, 1121, 1122, -1, -1, 90, -1, -1,
      93, 94, -1, 1131, 3, 4, 5, 6, -1, -1,
      -1, -1, -1, 717, 107, -1, 421, -1, 40, -1,
      -1, -1, -1, -1, 117, -1, 431, 49, 433, 434,
      -1, 73, 74, -1, 76, 128, 129, 442, -1, 743,
      62, 745, 64, -1, -1, -1, -1, 452, 90, -1,
     455, 93, 94, 1616, -1, -1, -1, 1624, 1625, -1,
      -1, -1, 467, -1, -1, -1, 2139, -1, -1, -1,
     475, -1, -1, -1, -1, -1, -1, 76, -1, -1,
     122, -1, -1, 1918, 1919, 84, 3, 4, 5, 6,
      -1, -1, 9, -1, 93, 94, 501, 502, 503, 504,
     505, 1668, -1, -1, 509, -1, -1, 4, 5, 1294,
    1295, -1, 517, 518, -1, -1, 521, -1, 523, 524,
     525, 526, -1, 122, -1, 530, -1, -1, -1, 151,
     535, -1, -1, 538, 1701, 157, 3, 4, 5, 6,
      -1, -1, -1, -1, 1329, 1330, 1331, 1332, 65, 1716,
      -1, 1336, 3, 4, 5, 6, -1, -1, -1, 76,
     182, -1, -1, -1, 186, -1, 83, -1, 65, 574,
     192, 193, -1, 90, -1, -1, 93, 94, -1, 4,
       5, -1, -1, -1, 9, -1, 83, -1, -1, -1,
     107, -1, -1, 90, 528, -1, 93, 94, 902, 533,
     117, 1329, 1330, -1, 908, 122, 73, 74, 1336, 76,
     107, 128, 129, 618, -1, -1, -1, -1, -1, 241,
     117, -1, -1, 90, -1, 76, 93, 94, -1, -1,
     564, 128, 129, 84, 639, -1, 1803, 571, -1, -1,
      65, -1, 93, 94, 1, -1, 3, 4, 5, 6,
       7, 8, 9, -1, 659, 660, 661, 662, 83, -1,
      -1, -1, -1, -1, -1, 90, 117, -1, 93, 94,
    1837, 122, -1, -1, -1, -1, 1461, 1462, -1, 1464,
     614, 615, 107, 617, 1851, -1, -1, -1, -1, -1,
      -1, 48, 117, -1, -1, -1, -1, -1, -1, 3,
       4, 5, 6, 128, 129, 62, -1, 64, 65, 66,
      -1, -1, 334, 718, 71, 720, -1, -1, -1, 76,
      -1, 1025, -1, -1, 81, -1, 731, 84, -1, 734,
     735, 736, -1, 90, -1, 1902, 93, 94, -1, -1,
    1525, 1526, 747, -1, -1, -1, 751, -1, 4, 5,
     107, -1, 8, 9, -1, 1059, -1, -1, -1, -1,
     117, 1065, -1, -1, -1, 122, 771, -1, -1, -1,
      -1, 128, 76, 778, -1, -1, 133, -1, -1, -1,
      84, -1, 787, 788, -1, 1952, 1953, -1, -1, 93,
      94, 1095, 48, 1097, -1, -1, -1, -1, -1, 1966,
    1967, -1, -1, -1, -1, 739, 740, -1, -1, 65,
      -1, 433, -1, 117, 748, 71, -1, -1, 122, -1,
     442, -1, 827, 828, 829, 81, -1, 83, -1, -1,
      -1, 836, -1, 838, 90, -1, -1, 93, 94, -1,
      -1, -1, -1, -1, 1148, 4, 5, -1, -1, -1,
       9, 107, 857, 475, -1, 860, 861, 862, 863, 864,
     865, 117, -1, -1, 869, -1, -1, -1, -1, -1,
      -1, 876, 128, 129, -1, -1, -1, -1, -1, 501,
     502, 503, 504, 3, 4, 5, 6, 509, 1192, 9,
    1194, -1, -1, -1, 899, 517, -1, 902, 832, -1,
      -1, -1, -1, 908, 2071, -1, 65, -1, 530, -1,
      -1, -1, 917, 918, 919, -1, 538, 390, -1, -1,
     393, 394, -1, 3, 4, 5, 6, 7, 8, 9,
    1234, 90, -1, 867, 93, 94, 113, 114, 115, 116,
     117, 118, 119, 120, 121, 65, -1, -1, 107, -1,
      -1, -1, 574, -1, -1, -1, 76, 2124, 117, -1,
      -1, -1, -1, 83, -1, 970, -1, -1, 48, 128,
      90, -1, -1, 93, 94, 909, -1, 911, -1, -1,
      -1, -1, 62, -1, 64, 65, 66, 107, -1, -1,
      -1, 71, -1, -1, -1, -1, 76, 117, 4, 5,
      -1, 81, 122, 9, 84, -1, -1, -1, 128, 129,
      90, -1, -1, 93, 94, -1, -1, 639, 4, 5,
    1025, -1, 8, 9, -1, -1, -1, 107, 501, -1,
     503, 504, 505, -1, -1, 2202, -1, 117, -1, -1,
      -1, -1, 122, 1048, 1049, -1, -1, 1052, 128, -1,
      -1, -1, -1, 133, 1059, -1, -1, -1, 1063, 65,
    1065, 1365, 48, -1, 1069, 1070, 1071, -1, -1, -1,
    1075, -1, 1077, -1, 1378, -1, 62, 83, 64, 65,
      -1, -1, -1, -1, 90, 71, -1, 93, 94, -1,
    1095, -1, 1097, -1, -1, 81, -1, 1031, 1032, -1,
    1034, 107, -1, -1, 90, -1, -1, 93, 94, -1,
      -1, 117, -1, -1, -1, 1120, 1121, 1122, 1123, 1124,
    1125, 1126, 128, 129, -1, -1, 1131, -1, -1, -1,
    1064, 1136, 1137, 1138, -1, -1, -1, 1142, -1, -1,
      -1, -1, 128, 1148, 1149, 1150, 1151, -1, -1, -1,
      -1, 3, 4, 5, 6, -1, -1, -1, -1, -1,
    1165, -1, 1466, 1168, 1169, 787, 1171, -1, -1, -1,
      -1, 1176, 1177, -1, 1179, -1, 1, -1, 3, 4,
       5, 6, 7, 8, 9, -1, -1, 1192, -1, 1194,
     106, 107, 108, 109, 110, 1129, 112, 113, 114, 115,
     116, 117, 118, 119, 120, 121, -1, -1, -1, 4,
       5, -1, -1, 8, 9, -1, -1, -1, -1, -1,
      -1, 73, 74, 48, 76, -1, -1, -1, -1, 1234,
      -1, 1535, -1, -1, -1, 857, -1, 62, 90, 64,
      65, 93, 94, -1, -1, -1, 71, -1, -1, -1,
      -1, 76, -1, 48, 876, -1, 81, 1262, 1263, 84,
    1265, 734, 735, 736, -1, 90, -1, -1, 93, 94,
      65, 1276, 97, -1, 747, -1, 71, 899, -1, 1284,
      -1, -1, 107, -1, -1, -1, 81, -1, 83, 1294,
    1295, 1296, 117, -1, -1, 90, -1, 122, 93, 94,
      -1, 4, 5, 128, 7, 8, 9, -1, -1, 1613,
      -1, -1, 107, -1, 787, -1, -1, -1, -1, -1,
      -1, -1, 117, 1328, 1329, 1330, 1331, 1332, 1333, -1,
      -1, 1336, 1337, 128, 129, 3, 4, 5, 6, -1,
      -1, 9, -1, -1, -1, 48, 1280, 1352, 1353, 1354,
    1355, 1356, -1, -1, 827, 828, 829, -1, -1, 62,
    1365, 64, 65, -1, 1369, 838, -1, -1, 71, -1,
      -1, -1, -1, 1378, -1, -1, -1, -1, 81, -1,
       6, 84, 3, 4, 5, 6, 1391, 90, 9, -1,
      93, 94, 18, -1, 1399, -1, -1, 65, -1, -1,
    1334, 27, 28, 4, 5, -1, -1, -1, 76, 35,
      36, -1, 38, -1, 40, -1, -1, -1, -1, -1,
      -1, -1, 90, 49, -1, 93, 94, -1, -1, -1,
    1364, -1, -1, -1, -1, -1, 62, -1, 64, 107,
      -1, -1, -1, 1377, 65, -1, -1, 73, -1, 117,
      -1, -1, 78, -1, 122, 76, 1461, 1462, -1, 1464,
     128, 1466, 83, 1468, 65, 91, -1, -1, -1, 90,
    1404, -1, 93, 94, 1408, -1, -1, -1, -1, 1484,
      -1, -1, 83, -1, 1489, -1, 107, 1492, -1, 90,
      -1, -1, 93, 94, -1, -1, 117, 970, 1120, -1,
      -1, 122, -1, -1, -1, -1, 107, 128, 129, -1,
      -1, -1, 1446, -1, -1, -1, 117, -1, -1, -1,
    1525, 1526, 1527, 1528, 1529, 151, -1, 128, 129, -1,
    1535, 157, 158, -1, -1, -1, -1, 163, -1, -1,
     166, 167, 168, -1, -1, -1, -1, 1169, -1, 1171,
      -1, -1, -1, -1, 1176, 1177, 182, 1179, -1, -1,
     186, -1, 1496, 1497, -1, -1, 192, 193, -1, -1,
       3, 4, 5, 6, -1, 1048, 1049, -1, -1, 1052,
      -1, -1, -1, -1, -1, 211, 212, 213, -1, -1,
    1063, -1, -1, -1, -1, -1, 1069, 1070, 1071, 1533,
    1534, -1, 1075, -1, -1, 1539, -1, -1, 1613, -1,
      -1, 1616, -1, -1, -1, 241, 1920, 110, 111, 112,
     113, 114, 115, 116, 117, 118, 119, 120, 121, 1,
      -1, 3, 4, 5, 6, 7, 8, 9, -1, -1,
      -1, -1, -1, 76, -1, -1, -1, 1120, 1121, 1122,
    1123, 1124, 1125, 1126, -1, 281, -1, 90, 1131, -1,
      93, 94, -1, 1136, 1137, 1138, 99, 3, 4, 5,
       6, -1, -1, 9, 107, -1, 48, -1, -1, -1,
      -1, 1686, 1687, 1688, 117, -1, -1, -1, -1, 122,
      62, -1, 64, 65, 66, 128, -1, 323, 324, 71,
      72, -1, -1, 329, 76, -1, 1328, -1, 334, 81,
      82, -1, 84, -1, -1, 1337, -1, -1, 90, -1,
      -1, 93, 94, -1, -1, 97, -1, 99, -1, 65,
      -1, -1, -1, -1, -1, 107, -1, -1, -1, -1,
      76, -1, -1, -1, -1, 117, -1, 1369, -1, -1,
     122, -1, -1, -1, 90, -1, 128, 93, 94, 385,
      -1, -1, 388, -1, 390, -1, -1, 393, 394, -1,
      -1, 107, -1, 399, 1708, -1, -1, 1399, 150, -1,
      -1, 117, -1, -1, -1, -1, 122, -1, -1, -1,
      -1, -1, 128, -1, -1, 421, -1, -1, 1803, -1,
      -1, -1, -1, 1276, -1, 431, -1, 433, 434, -1,
      -1, 1284, 3, 4, 5, 6, 442, -1, -1, -1,
      -1, 1294, 1295, 1296, -1, -1, 452, -1, -1, 455,
      -1, -1, -1, 3, 4, 5, 6, -1, -1, -1,
      -1, 467, -1, -1, -1, 3, 4, 5, 6, 475,
      -1, 9, -1, -1, -1, 1328, 1329, 1330, 1331, 1332,
    1333, -1, 1484, 1336, 1337, -1, -1, 1489, -1, -1,
    1492, -1, -1, -1, -1, 501, 502, 503, 504, 505,
      -1, -1, -1, 509, -1, 76, -1, -1, -1, -1,
      -1, 517, 518, 84, -1, 521, -1, 523, 524, 525,
     526, -1, 93, 94, 530, -1, 76, 65, -1, 535,
      -1, -1, 538, 1918, 1919, 1920, -1, -1, 76, -1,
      90, -1, -1, 93, 94, 83, 117, 97, -1, -1,
      -1, 122, 90, 559, -1, 93, 94, 107, 113, 114,
     115, 116, 117, 118, 119, 120, 121, 117, 574, 107,
      -1, -1, 122, 3, 4, 5, 6, -1, 128, 117,
      -1, -1, -1, -1, 122, -1, -1, -1, -1, -1,
     128, 129, -1, -1, 329, -1, -1, -1, -1, -1,
      -1, -1, -1, 1756, -1, -1, -1, -1, 1461, 1462,
      -1, 1464, 1997, -1, -1, 350, 351, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 632, -1, -1, -1,
      -1, 366, -1, 639, 369, 370, -1, -1, -1, -1,
     375, 376, -1, -1, -1, -1, 76, -1, -1, -1,
      -1, 386, -1, 659, 660, 661, 662, -1, -1, -1,
      90, -1, -1, 93, 94, -1, -1, -1, -1, 99,
      -1, -1, 1525, 1526, 1527, 1528, 1529, 107, -1, 1832,
    1833, 1834, -1, 1836, 1686, 1687, 1688, 117, -1, -1,
      -1, -1, 122, -1, -1, -1, -1, -1, 128, 3,
       4, 5, 6, 7, 8, 9, -1, -1, -1, 13,
      -1, -1, 718, -1, 720, -1, -1, 1870, 1871, 1872,
      -1, -1, -1, 1876, 1877, 1878, -1, -1, 734, 735,
     736, 1884, 1885, 1886, -1, -1, -1, -1, -1, -1,
      -1, 747, -1, -1, 48, -1, 3, 4, 5, 6,
      -1, -1, -1, -1, 760, -1, -1, -1, 62, -1,
      64, 65, -1, 1616, -1, 771, -1, 71, -1, -1,
      -1, -1, 76, 779, -1, -1, -1, 81, -1, 83,
      -1, 787, 788, -1, -1, -1, 90, -1, -1, 93,
      94, -1, 1945, 1946, 1947, 1948, 1949, -1, 1951, -1,
      -1, -1, -1, 107, -1, 1958, 1959, 1960, 1961, 1962,
      -1, 1964, -1, 117, -1, -1, -1, -1, 122, 76,
      -1, 827, 828, 829, 128, 129, -1, -1, -1, -1,
      -1, -1, 838, 90, -1, -1, 93, 94, -1, -1,
      97, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     107, 857, -1, -1, 860, 861, 862, 863, 864, 865,
     117, -1, -1, 869, -1, 122, -1, -1, -1, -1,
     876, 128, -1, -1, -1, -1, 2029, -1, -1, -1,
      -1, -1, 1, -1, 3, 4, 5, 6, 7, 8,
       9, 626, -1, 899, -1, -1, 902, -1, -1, -1,
      -1, -1, 908, 20, -1, -1, -1, -1, 2061, -1,
      -1, 917, 918, 919, -1, -1, 33, 2070, -1, -1,
      37, -1, 39, 40, 41, 42, 43, 44, 45, 48,
      -1, -1, -1, -1, 669, 670, 53, -1, -1, -1,
      -1, -1, -1, 62, -1, 64, 65, 66, 3, 4,
       5, 6, 71, 72, 9, 4, 5, 76, 2111, 8,
       9, -1, 81, 82, 970, 84, -1, -1, -1, 2122,
      -1, 90, -1, -1, 93, 94, -1, -1, 97, -1,
      99, -1, -1, -1, -1, -1, -1, -1, 107, -1,
      -1, -1, -1, -1, -1, 1997, -1, -1, 117, 48,
      -1, -1, -1, 122, -1, -1, -1, -1, -1, 128,
      65, -1, -1, 62, -1, 64, 65, -1, -1, 1025,
      -1, 76, 71, -1, -1, -1, -1, -1, 83, -1,
      -1, 150, 81, -1, 83, 90, -1, -1, 93, 94,
      -1, 90, 1048, 1049, 93, 94, 1052, -1, -1, -1,
      -1, -1, 107, 1059, -1, -1, -1, 1063, 107, 1065,
      -1, -1, 117, 1069, 1070, 1071, -1, 122, 117, 1075,
      -1, 1077, -1, 128, 129, -1, -1, -1, -1, 128,
     129, -1, -1, -1, -1, -1, -1, -1, -1, 1095,
      -1, 1097, 105, 106, 107, 108, 109, 110, 111, 112,
     113, 114, 115, 116, 117, 118, 119, 120, 121, 1115,
      -1, -1, -1, -1, 1120, 1121, 1122, 1123, 1124, 1125,
    1126, -1, -1, -1, -1, 1131, -1, -1, -1, -1,
    1136, 1137, 1138, -1, -1, -1, 1142, -1, -1, -1,
      -1, -1, 1148, 1149, 1150, 1151, -1, -1, -1, 3,
       4, 5, 6, -1, -1, -1, 1162, -1, -1, 1165,
      -1, -1, 1168, 1169, -1, 1171, -1, -1, -1, -1,
    1176, 1177, 110, 1179, 112, 113, 114, 115, 116, 117,
     118, 119, 120, 121, -1, -1, 1192, -1, 1194, -1,
     925, 926, -1, 928, 929, 930, 931, 932, 933, 934,
     935, 936, 937, 938, 939, 940, 941, 942, 943, 944,
     945, 65, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 76, -1, -1, -1, -1, -1, 1234, 83,
      -1, -1, -1, -1, -1, -1, 90, -1, -1, 93,
      94, -1, -1, -1, -1, -1, -1, -1, 3, 4,
       5, 6, -1, 107, -1, -1, 1262, 1263, -1, 1265,
      -1, -1, 6, 117, -1, -1, -1, -1, 122, -1,
    1276, -1, -1, -1, 128, 129, -1, -1, 1284, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 1294, 1295,
    1296, 35, 36, -1, 38, -1, 40, -1, -1, -1,
      -1, -1, 1037, -1, -1, 49, -1, 3, 4, 5,
       6, 7, 8, 9, -1, -1, -1, -1, 62, -1,
      64, 76, 1328, 1329, 1330, 1331, 1332, 1333, -1, 84,
    1336, 1337, -1, -1, 1069, 1070, -1, -1, 93, 94,
      -1, -1, 86, -1, -1, 89, 1352, 1353, 1354, 1355,
    1356, -1, 48, -1, 1360, -1, -1, -1, -1, 1365,
      -1, -1, 117, 1369, -1, -1, 1101, 122, -1, 65,
      -1, -1, 1378, -1, -1, 71, -1, -1, -1, -1,
      76, -1, -1, -1, -1, 81, -1, 83, -1, -1,
      -1, -1, -1, 1399, 90, -1, -1, 93, 94, -1,
      -1, 1136, 1137, -1, 148, 149, -1, 151, -1, -1,
      -1, 107, -1, 157, 158, -1, -1, 161, 162, 163,
      -1, 117, 166, 167, 168, -1, 122, -1, -1, 173,
      -1, -1, 128, 129, -1, -1, -1, -1, 182, -1,
      -1, -1, 186, -1, -1, -1, -1, -1, 192, 193,
    1456, -1, -1, -1, -1, 1461, 1462, -1, 1464, -1,
    1466, -1, 1468, -1, -1, -1, -1, 211, 212, 213,
      -1, -1, -1, -1, -1, -1, -1, 221, 1484, -1,
      -1, -1, -1, 1489, 109, 110, 1492, 112, 113, 114,
     115, 116, 117, 118, 119, 120, 121, 241, -1, 1,
      -1, 3, 4, 5, 6, 7, 8, 9, 10, 11,
      12, -1, 14, 15, -1, -1, -1, 19, -1, 1525,
    1526, 1527, 1528, 1529, -1, -1, -1, -1, -1, 1535,
      -1, -1, -1, 1268, -1, -1, -1, 281, -1, -1,
      -1, -1, -1, -1, 288, 47, 48, 49, -1, 51,
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61,
      62, 63, 64, 65, 66, -1, 68, 69, 70, 71,
      -1, 73, 74, 75, 76, 77, 78, 79, 80, 81,
      82, -1, -1, 85, 86, 87, 88, 89, 90, -1,
     334, 93, 94, 95, -1, 97, 98, -1, -1, -1,
      -1, -1, 104, -1, -1, 107, -1, 1613, -1, -1,
    1616, -1, -1, 115, 116, 117, -1, -1, -1, -1,
     122, 123, 124, -1, -1, -1, 128, -1, -1, 373,
     132, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 145, 388, -1, -1, -1, 150, 151,
     107, 108, 109, 110, 398, 112, 113, 114, 115, 116,
     117, 118, 119, 120, 121, -1, -1, -1, -1, 1675,
      -1, -1, -1, -1, -1, -1, -1, 421, 1413, -1,
    1686, 1687, 1688, -1, -1, -1, -1, -1, -1, 433,
      -1, -1, -1, -1, -1, -1, -1, -1, 442, -1,
     444, -1, -1, -1, -1, -1, -1, 451, 452, -1,
      -1, 455, 6, -1, -1, -1, -1, 461, 462, 463,
      -1, -1, -1, 467, -1, -1, -1, -1, -1, -1,
      -1, 475, -1, -1, -1, -1, -1, 3, 4, 5,
       6, 35, 36, 9, 38, 1, 40, -1, 4, 5,
      -1, -1, 8, 9, -1, 49, -1, 501, 502, 503,
     504, -1, -1, -1, -1, 509, -1, -1, 62, -1,
      64, -1, -1, 517, 518, -1, -1, 521, -1, 523,
     524, 525, 526, -1, -1, -1, 530, -1, -1, -1,
      -1, 535, 48, -1, 538, 89, -1, 1803, -1, 65,
      -1, -1, -1, -1, -1, -1, 62, -1, 64, 65,
      76, -1, -1, -1, -1, 71, 3, 4, 5, 6,
       7, 8, 9, -1, 90, 81, 13, 93, 94, -1,
     574, -1, -1, -1, 90, -1, -1, 93, 94, -1,
      -1, 107, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 117, -1, -1, -1, -1, 122, 151, -1, -1,
      -1, 48, 128, 157, 158, -1, -1, -1, 162, 163,
      13, -1, 166, 167, 168, 62, -1, 64, 65, -1,
      -1, -1, -1, -1, 71, -1, -1, 631, 182, 76,
      -1, -1, 186, -1, 81, 639, 83, -1, 192, 193,
      -1, -1, -1, 90, -1, -1, 93, 94, -1, -1,
      -1, -1, 1918, 1919, 1920, -1, -1, 211, 212, 213,
     107, -1, -1, -1, -1, 669, 670, 671, -1, -1,
     117, -1, -1, -1, -1, 122, -1, -1, 682, -1,
      -1, 128, 129, -1, 1679, -1, 1, 241, -1, 4,
       5, -1, -1, 8, 9, -1, 99, 100, 101, 102,
     103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
     113, 114, 115, 116, 117, 118, 119, 120, 121, -1,
      -1, -1, -1, -1, -1, -1, 730, 281, -1, -1,
      -1, 1997, -1, 48, -1, -1, -1, -1, -1, 743,
      -1, 745, -1, 747, -1, -1, -1, 62, -1, 64,
      65, -1, -1, -1, -1, -1, 71, -1, 73, 74,
      -1, -1, -1, -1, -1, -1, 81, 771, 83, -1,
      -1, -1, -1, -1, 778, 90, -1, -1, 93, 94,
     334, 96, -1, 787, -1, 100, 101, 102, 103, 104,
     105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
     115, 116, 117, 118, 119, -1, 121, 122, 123, 124,
      -1, -1, -1, -1, 129, 130, -1, -1, -1, -1,
      -1, -1, -1, 827, 828, 829, -1, -1, -1, -1,
      -1, 835, 836, -1, 838, -1, 151, -1, -1, -1,
      -1, -1, -1, -1, -1, 399, -1, -1, 852, -1,
      -1, -1, -1, 857, -1, -1, 860, 861, 862, 863,
     864, 865, -1, -1, -1, 869, -1, -1, -1, -1,
      -1, -1, 876, -1, -1, -1, -1, -1, -1, 433,
      -1, -1, -1, -1, -1, -1, -1, -1, 442, -1,
      -1, -1, -1, -1, -1, 899, -1, -1, 452, -1,
      -1, 455, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 467, -1, -1, -1, -1, -1, -1,
      -1, 475, -1, 1918, 1919, -1, 1, -1, 3, 4,
       5, 6, 7, 8, 9, 10, 11, 12, 13, -1,
      -1, -1, -1, -1, -1, -1, -1, 501, 502, 503,
     504, -1, -1, -1, -1, 509, -1, -1, -1, -1,
      -1, -1, -1, 517, 518, -1, -1, 521, -1, 523,
     524, 525, 47, 48, -1, -1, 530, -1, -1, -1,
      -1, 535, -1, -1, 538, -1, -1, 62, 63, 64,
      65, 66, -1, 68, 69, 70, 71, -1, 73, 74,
      75, 76, 77, 78, 79, -1, 81, -1, -1, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
     574, -1, -1, 98, -1, -1, -1, -1, 38, 104,
      -1, -1, 107, -1, -1, -1, -1, -1, -1, -1,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, 62, 128, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 1069, 1070, 1071, -1, -1,
      -1, 1075, 1076, -1, 149, -1, 151, -1, 632, -1,
      -1, -1, -1, -1, -1, 639, -1, -1, -1, -1,
      -1, -1, -1, 3, 4, 5, 6, -1, -1, 9,
     106, 107, 108, 109, 110, 111, 112, 113, 114, 115,
     116, 117, 118, 119, 120, 121, 1120, 1121, 1122, 1123,
    1124, 1125, 1126, -1, 1128, -1, -1, 1131, -1, -1,
    1134, -1, 1136, 1137, 1138, -1, -1, -1, 1142, -1,
      -1, -1, -1, -1, -1, 1, -1, 3, 4, 5,
       6, 7, 8, 9, -1, 65, 166, 167, 168, -1,
      -1, -1, -1, -1, 1168, 1169, 76, 1171, -1, -1,
      -1, -1, 1176, 1177, -1, 1179, -1, 731, -1, -1,
      90, -1, 192, 93, 94, -1, -1, -1, -1, -1,
      -1, -1, 48, -1, -1, -1, -1, 107, -1, -1,
      -1, 211, 212, 213, -1, -1, 62, 117, 64, 65,
      66, -1, 122, -1, -1, 71, 72, -1, 128, -1,
      76, -1, -1, -1, -1, 81, 82, -1, 84, -1,
      -1, 241, -1, 787, 90, -1, -1, 93, 94, -1,
      -1, 97, -1, 99, -1, -1, -1, -1, -1, -1,
      -1, 107, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 117, -1, -1, -1, -1, 122, -1, -1, -1,
      -1, -1, 128, 827, 828, 829, -1, -1, -1, -1,
      -1, -1, 836, -1, 838, -1, 3, 4, 5, 6,
    1294, 1295, 1296, -1, 150, -1, -1, -1, -1, -1,
      -1, -1, -1, 857, -1, -1, -1, 861, 862, -1,
      -1, -1, -1, -1, 324, 869, -1, -1, -1, -1,
      -1, -1, 876, -1, 1328, 1329, 1330, 1331, 1332, 1333,
      -1, -1, 1336, 1337, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 899, -1, -1, 65, -1,
       1, -1, 3, 4, 5, 6, 7, 8, 9, 76,
      -1, -1, 13, -1, -1, 1369, 83, -1, -1, -1,
      -1, -1, -1, 90, -1, -1, 93, 94, -1, -1,
     390, -1, -1, 393, 394, -1, 1390, 1391, -1, -1,
     107, -1, -1, -1, -1, 1399, -1, 48, -1, -1,
     117, -1, -1, -1, -1, 122, -1, -1, 59, -1,
      61, 128, 129, -1, 65, -1, -1, -1, -1, -1,
      71, -1, -1, 433, -1, 76, -1, -1, -1, -1,
      81, -1, 83, -1, -1, -1, -1, -1, -1, 90,
      -1, -1, 93, 94, 95, 96, 97, -1, 99, 100,
     101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
     111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
     121, 122, 123, 124, -1, -1, 127, 128, 129, 130,
    1484, 132, -1, 1487, -1, 1489, 137, 138, 1492, -1,
      -1, 501, -1, 503, 504, 505, -1, 148, 149, 150,
      -1, 152, 3, 4, 5, 6, -1, 517, 518, -1,
      -1, 521, -1, 523, 524, 525, 526, -1, -1, -1,
     530, -1, -1, 1077, -1, 535, -1, -1, 538, 105,
     106, 107, 108, 109, 110, -1, 112, 113, 114, 115,
     116, 117, 118, 119, 120, 121, 3, 4, 5, 6,
     108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
     118, 119, 120, 121, 65, -1, 1120, 1121, 1122, 1123,
    1124, 1125, -1, -1, -1, 76, -1, 1131, -1, -1,
      -1, -1, 1136, 1137, 1138, -1, -1, -1, 1142, 90,
      -1, -1, 93, 94, -1, -1, -1, -1, -1, -1,
      -1, -1, 3, 4, 5, 6, 107, -1, 62, -1,
      -1, -1, -1, -1, 1168, 1169, 117, 1171, -1, 76,
      -1, 122, 1176, 1177, -1, 1179, -1, 128, -1, 639,
      -1, -1, 86, 90, -1, 89, 93, 94, -1, 1,
      -1, 3, 4, 5, 6, 7, 8, 9, -1, -1,
     107, -1, -1, 15, -1, -1, -1, 19, -1, -1,
     117, -1, -1, -1, 65, 122, 120, -1, 122, -1,
      -1, 128, -1, -1, -1, 76, -1, -1, -1, -1,
      -1, -1, 1686, 1687, 1688, -1, 48, -1, -1, 90,
      -1, -1, 93, 94, -1, -1, -1, -1, -1, 61,
      62, -1, 64, 65, 66, -1, 107, -1, -1, 71,
     720, -1, -1, -1, 76, -1, 117, -1, 80, 81,
      82, 122, 84, -1, 734, 735, 736, 128, 90, 91,
      -1, 93, 94, -1, -1, 97, -1, 747, 192, -1,
      -1, -1, -1, -1, -1, 107, 4, 5, -1, 7,
       8, 9, -1, -1, -1, 117, -1, 211, 212, 213,
     122, -1, -1, -1, -1, -1, 128, 221, -1, -1,
      -1, 133, -1, -1, 1328, 1329, 1330, 787, -1, -1,
      -1, -1, 1336, 1337, -1, -1, -1, 241, -1, -1,
      48, -1, -1, -1, -1, -1, -1, -1, -1, 1803,
      -1, -1, -1, -1, 62, -1, 64, 65, -1, -1,
      -1, -1, -1, 71, 268, 1369, -1, 827, 828, 829,
      -1, -1, -1, 81, -1, -1, -1, -1, 838, -1,
      -1, -1, 90, -1, 288, 93, 94, 1391, -1, -1,
      -1, -1, -1, -1, -1, 1399, -1, 857, -1, -1,
     860, 861, 862, 863, 864, 865, -1, -1, -1, 869,
      -1, -1, -1, -1, -1, -1, 876, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 1, -1, 3, 4,
       5, 6, 7, 8, 9, -1, -1, -1, -1, -1,
       3, 4, 5, 6, -1, -1, 9, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 917, 918, 919,
      -1, -1, -1, -1, 1918, 1919, 1920, -1, -1, -1,
      -1, -1, -1, 48, -1, -1, 3, 4, 5, 6,
    1484, -1, 9, -1, -1, 1489, -1, 62, 1492, 64,
      65, 66, -1, -1, 398, 399, 71, 72, -1, -1,
      -1, 76, 65, -1, -1, -1, 81, 82, -1, 84,
     970, -1, -1, 76, -1, 90, 4, 5, 93, 94,
       8, 9, 97, -1, 99, -1, -1, 90, -1, 433,
      93, 94, 107, -1, -1, -1, -1, -1, 65, -1,
      -1, -1, 117, 1997, 107, -1, -1, 122, -1, 76,
      -1, -1, -1, 128, 117, -1, -1, -1, -1, 122,
      48, -1, -1, 90, -1, 128, 93, 94, -1, -1,
      -1, -1, -1, -1, 62, 150, 64, 65, -1, -1,
     107, -1, -1, 71, -1, -1, -1, -1, 1048, 1049,
     117, -1, 1052, 81, -1, 122, -1, 501, -1, 503,
     504, 128, 90, 1063, -1, 93, 94, -1, -1, 1069,
    1070, 1071, -1, 517, 518, 1075, -1, 521, -1, 523,
     524, 525, 526, -1, -1, -1, 530, -1, -1, -1,
      -1, 535, -1, -1, 538, 100, 101, 102, 103, 104,
     105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
     115, 116, 117, 118, 119, 120, 121, -1, -1, -1,
    1120, 1121, 1122, 1123, 1124, 1125, 1126, -1, -1, -1,
      -1, 1131, -1, -1, -1, -1, 1136, 1137, 1138, -1,
      -1, -1, 1686, 1687, 1688, -1, -1, 152, -1, 1149,
    1150, 1151, 1, -1, 3, 4, 5, 6, 7, 8,
       9, 10, 11, 12, 13, -1, -1, -1, 1168, 104,
     105, 106, 107, 108, 109, 110, 1176, 112, 113, 114,
     115, 116, 117, 118, 119, 120, 121, 631, 632, -1,
      -1, -1, -1, -1, -1, 639, -1, -1, 47, 48,
     109, 110, 111, 112, 113, 114, 115, 116, 117, 118,
     119, 120, 121, 62, 63, 64, 65, 66, -1, 68,
      69, 70, 71, -1, 73, 74, 75, 76, 77, 78,
      79, -1, 81, -1, 83, -1, 85, 86, 87, 88,
      89, 90, -1, -1, 93, 94, 95, -1, -1, 98,
      -1, -1, -1, -1, -1, 104, -1, -1, 107, 1803,
      -1, -1, 1262, 1263, -1, 1265, 115, 116, 117, -1,
      -1, -1, -1, 122, 123, 124, 1276, -1, -1, 128,
     129, -1, -1, -1, 1284, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 1294, 1295, 1296, -1, -1, -1,
      -1, -1, 151, -1, -1, -1, 750, 751, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
       3, 4, 5, 6, 7, 8, 9, -1, 1328, 1329,
    1330, 1331, 1332, 1333, -1, -1, 1336, 1337, -1, -1,
      -1, -1, -1, 787, -1, -1, -1, -1, -1, -1,
      18, -1, 1352, 1353, 1354, 1355, 1356, -1, -1, 27,
      28, -1, -1, -1, -1, 48, -1, 35, 36, 1369,
      38, -1, -1, -1, 1918, 1919, 1920, -1, -1, 62,
      -1, 64, 65, 827, 828, 829, -1, -1, 71, -1,
      -1, 835, 836, 76, 838, -1, -1, -1, 81, -1,
      83, -1, -1, -1, -1, 73, -1, 90, -1, -1,
      93, 94, -1, 857, -1, -1, 860, 861, 862, 863,
     864, 865, 866, -1, 107, 869, -1, -1, -1, -1,
      -1, -1, 876, -1, 117, -1, -1, -1, -1, 122,
      -1, -1, -1, -1, -1, 128, 129, -1, -1, -1,
      -1, -1, -1, 1997, 898, -1, -1, -1, -1, -1,
      -1, 1461, 1462, -1, 1464, -1, -1, -1, 1468, -1,
      -1, 139, -1, 141, -1, -1, -1, -1, -1, -1,
     148, 149, -1, -1, 1484, -1, -1, -1, -1, 157,
     158, -1, -1, 161, 162, 163, 65, 165, 166, 167,
     168, -1, -1, -1, -1, -1, -1, -1, 1, -1,
       3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
      -1, -1, -1, -1, -1, 1525, 1526, 1527, 1528, 1529,
      -1, 100, 101, 102, 103, 104, 105, 106, 107, 108,
     109, 110, 111, 112, 113, 114, 115, 116, 117, 118,
     119, 120, 121, -1, 47, 48, -1, -1, -1, 4,
       5, -1, 7, 8, 9, -1, -1, -1, 13, 62,
      63, 64, 65, 66, -1, 68, 69, 70, 71, -1,
      73, 74, 75, 76, 77, 78, 79, -1, 81, 257,
     258, -1, 85, 86, 87, 88, 89, 90, -1, -1,
      93, 94, 95, 48, 97, 98, -1, -1, -1, -1,
      -1, 104, -1, 281, 107, -1, 1616, 62, -1, 64,
      65, -1, 115, 116, 117, -1, 71, -1, -1, 122,
     123, 124, 1076, 1077, 1078, 128, 81, -1, -1, -1,
      -1, -1, -1, -1, -1, 90, -1, -1, 93, 94,
      -1, -1, -1, -1, -1, -1, 324, -1, 151, 107,
     108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
     118, 119, 120, 121, -1, -1, 1120, 1121, 1122, 1123,
    1124, 1125, 1126, -1, 1128, -1, 1686, 1131, 1688, -1,
    1134, -1, 1136, 1137, 1138, -1, -1, -1, 1142, -1,
      -1, -1, -1, -1, -1, 1149, 1150, 1151, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     388, -1, 390, -1, -1, 393, -1, -1, -1, -1,
      -1, -1, 1176, 104, 105, 106, 107, 108, 109, 110,
     111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
     121, -1, -1, 421, 1, -1, 3, 4, 5, 6,
       7, 8, 9, 10, 11, 12, 13, -1, -1, -1,
      -1, -1, -1, -1, 442, -1, 444, -1, -1, -1,
      -1, -1, -1, -1, 452, -1, -1, 455, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 467,
      47, 48, -1, 1803, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 62, 63, 64, 65, 66,
      -1, 68, 69, 70, 71, -1, 73, 74, 75, 76,
      77, 78, 79, -1, 81, -1, 83, -1, 85, 86,
      87, 88, 89, 90, -1, -1, 93, 94, 95, -1,
      -1, 98, -1, -1, -1, -1, -1, 104, -1, -1,
     107, -1, -1, -1, -1, -1, -1, -1, 115, 116,
     117, -1, -1, -1, -1, 122, 123, 124, -1, -1,
      -1, 128, 129, -1, 1328, 1329, 1330, 1331, 1332, 1333,
     558, 559, 1336, 1337, 1, -1, 3, 4, 5, 6,
       7, 8, 9, -1, 151, -1, 574, -1, 1352, 1353,
    1354, 1355, 1356, -1, -1, -1, -1, -1, 1918, 1919,
    1920, -1, 108, 109, 110, 1369, 112, 113, 114, 115,
     116, 117, 118, 119, 120, 121, -1, -1, -1, -1,
      -1, 48, -1, -1, -1, -1, 1390, -1, 616, -1,
     618, -1, -1, -1, -1, 62, -1, 64, 65, 66,
      -1, -1, -1, -1, 71, -1, -1, 4, 5, 76,
       7, 8, 9, -1, 81, 82, 13, 84, -1, -1,
      -1, -1, -1, 90, -1, -1, 93, 94, -1, -1,
      97, -1, 99, -1, -1, -1, -1, 1997, -1, -1,
     107, -1, -1, 3, 4, 5, 6, -1, -1, 9,
     117, 48, -1, -1, -1, 122, -1, 1461, 1462, 1463,
    1464, 128, -1, -1, 1468, 62, -1, 64, 65, -1,
      -1, -1, -1, -1, 71, -1, -1, -1, -1, -1,
    1484, -1, -1, -1, 81, -1, 83, -1, -1, -1,
      -1, -1, 720, 90, -1, -1, 93, 94, -1, -1,
      -1, -1, 730, 731, -1, 65, 734, 735, -1, -1,
     107, -1, -1, -1, -1, -1, 76, -1, -1, -1,
     117, 1525, 1526, 1527, 1528, 1529, -1, -1, -1, -1,
      90, 128, 129, 93, 94, -1, -1, -1, -1, -1,
      -1, -1, -1, 771, -1, -1, -1, 107, -1, -1,
     778, 779, -1, -1, -1, -1, -1, 117, -1, -1,
     788, -1, 122, -1, -1, -1, -1, -1, 128, -1,
      -1, -1, 1, -1, 3, 4, 5, 6, 7, 8,
       9, 10, 11, 12, -1, 14, 15, -1, -1, -1,
      19, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 1616, -1, -1, -1, -1, -1, 47, 48,
      49, -1, 51, 52, 53, 54, 55, 56, 57, 58,
      59, 60, 61, 62, 63, 64, 65, 66, -1, 68,
      69, 70, 71, -1, 73, 74, 75, 76, 77, 78,
      79, 80, 81, 82, -1, -1, 85, 86, 87, 88,
      89, 90, -1, -1, 93, 94, 95, -1, 97, 98,
     898, -1, -1, -1, -1, 104, 4, 5, 107, 7,
       8, 9, 1686, -1, 1688, 13, 115, 116, 117, 917,
     918, 919, 920, 122, 123, 124, -1, -1, -1, 128,
      -1, -1, -1, 132, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 145, -1, -1, -1,
      48, -1, 151, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 62, -1, 64, 65, -1, -1,
      -1, -1, 970, 71, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 81, -1, -1, -1, -1, -1, -1,
      -1, -1, 90, -1, -1, 93, 94, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 1, -1, 3, 4,
       5, 6, -1, 8, 9, 10, 11, 12, 100, 101,
     102, 103, 104, 105, 106, 107, 108, 109, 110, 1803,
     112, 113, 114, 115, 116, 117, 118, 119, 120, 121,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    1048, 1049, 47, 48, 1052, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 1063, -1, 62, 63, 64,
      -1, 66, -1, 68, 69, 70, 71, 1075, 73, 74,
      75, 76, 77, 78, 79, -1, 81, -1, -1, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
      95, -1, -1, 98, -1, -1, -1, -1, -1, 104,
      -1, -1, 107, 3, 4, 5, 6, 1115, -1, 9,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, -1, 128, 129, 4, 5, -1, -1, 8,
       9, -1, -1, -1, 1918, 1919, 1920, -1, -1, -1,
      -1, -1, -1, -1, -1, 150, 151, -1, -1, -1,
      -1, -1, -1, -1, 1162, -1, -1, 1165, -1, -1,
    1168, -1, -1, -1, -1, 65, -1, -1, -1, 48,
      -1, -1, -1, -1, -1, -1, 76, -1, -1, -1,
      -1, -1, -1, 62, -1, 64, 65, -1, -1, -1,
      90, -1, 71, 93, 94, -1, -1, -1, -1, -1,
      -1, -1, 81, -1, -1, -1, -1, 107, -1, -1,
      -1, 90, -1, 1997, 93, 94, -1, 117, -1, -1,
      -1, -1, 122, -1, -1, -1, -1, 1, 128, 3,
       4, 5, 6, -1, 8, 9, 10, 11, 12, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 1262, 1263, -1, 1265, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 1276, -1,
      -1, -1, -1, 47, 48, -1, 1284, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 1294, 1295, 62, 63,
      64, 65, 66, -1, 68, 69, 70, 71, -1, 73,
      74, 75, 76, 77, 78, 79, -1, 81, -1, -1,
      -1, 85, 86, 87, 88, 89, 90, -1, -1, 93,
      94, 95, -1, -1, 98, -1, -1, -1, -1, -1,
     104, -1, -1, 107, -1, -1, -1, 3, 4, 5,
       6, 115, 116, 117, -1, -1, -1, -1, 122, 123,
     124, -1, 1360, -1, 128, 100, 101, 102, 103, 104,
     105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
     115, 116, 117, 118, 119, 120, 121, 151, -1, -1,
      -1, -1, -1, 1391, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 1, 65,
       3, 4, 5, 6, 149, 8, 9, 10, 11, 12,
      76, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 90, -1, -1, 93, 94, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 107, -1, -1, 47, 48, -1, -1, 1456, -1,
      -1, 117, -1, -1, -1, -1, 122, -1, -1, 62,
      63, 64, 128, 66, -1, 68, 69, 70, 71, -1,
      73, 74, 75, 76, 77, 78, 79, -1, 81, 1487,
      -1, 1489, 85, 86, 87, 88, 89, 90, -1, -1,
      93, 94, 95, -1, -1, 98, -1, -1, -1, -1,
      -1, 104, -1, -1, 107, -1, -1, -1, -1, -1,
      -1, -1, 115, 116, 117, -1, -1, -1, -1, 122,
     123, 124, -1, -1, -1, 128, 129, 1, -1, 3,
       4, 5, 6, -1, 8, 9, 10, 11, 12, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 151, 100,
     101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
     111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
     121, -1, -1, 47, 48, -1, -1, -1, -1, -1,
      -1, -1, 3, 4, 5, 6, -1, -1, 62, 63,
      64, -1, 66, -1, 68, 69, 70, 71, 149, 73,
      74, 75, 76, 77, 78, 79, -1, 81, -1, -1,
      -1, 85, 86, 87, 88, 89, 90, -1, -1, 93,
      94, 95, -1, -1, 98, -1, -1, -1, -1, -1,
     104, -1, -1, 107, -1, -1, -1, -1, -1, -1,
      -1, 115, 116, 117, 65, -1, -1, -1, 122, 123,
     124, -1, -1, -1, 128, 76, 1, -1, 3, 4,
       5, 6, 136, 8, 9, 10, 11, 12, -1, 90,
      -1, -1, 93, 94, -1, -1, -1, 151, -1, -1,
      -1, -1, -1, -1, -1, -1, 107, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 117, -1, -1, -1,
      -1, 122, 47, 48, -1, -1, -1, 128, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 62, 63, 64,
      -1, 66, -1, 68, 69, 70, 71, -1, 73, 74,
      75, 76, 77, 78, 79, -1, 81, -1, -1, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
      95, -1, -1, 98, -1, -1, -1, -1, -1, 104,
      -1, -1, 107, -1, -1, -1, -1, -1, -1, -1,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, 1, 128, 3, 4, 5, 6, -1, 8,
       9, 10, 11, 12, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 150, 151, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 47, 48,
      -1, -1, -1, 3, 4, 5, 6, -1, -1, -1,
      -1, -1, -1, 62, 63, 64, -1, 66, -1, 68,
      69, 70, 71, -1, 73, 74, 75, 76, 77, 78,
      79, -1, 81, -1, -1, -1, 85, 86, 87, 88,
      89, 90, -1, -1, 93, 94, 95, -1, -1, 98,
      -1, -1, -1, -1, -1, 104, -1, -1, 107, -1,
      -1, -1, -1, -1, -1, 65, 115, 116, 117, -1,
      -1, -1, -1, 122, 123, 124, 76, -1, 1, 128,
       3, 4, 5, 6, -1, 8, 9, 10, 11, 12,
      90, -1, -1, 93, 94, -1, -1, -1, -1, -1,
      -1, 150, 151, -1, -1, -1, -1, 107, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 117, -1, -1,
      -1, -1, 122, -1, 47, 48, -1, -1, 128, 3,
       4, 5, 6, -1, -1, -1, -1, -1, -1, 62,
      63, 64, 65, 66, -1, 68, 69, 70, 71, -1,
      73, 74, 75, 76, 77, 78, 79, -1, 81, -1,
      -1, -1, 85, 86, 87, 88, 89, 90, -1, -1,
      93, 94, 95, -1, -1, 98, -1, -1, -1, -1,
      -1, 104, -1, -1, 107, -1, -1, -1, -1, -1,
      -1, 65, 115, 116, 117, -1, -1, -1, -1, 122,
     123, 124, 76, -1, 1, 128, 3, 4, 5, 6,
      -1, 8, 9, 10, 11, 12, 90, -1, -1, 93,
      94, -1, -1, -1, -1, -1, -1, -1, 151, -1,
      -1, -1, -1, 107, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 117, -1, -1, -1, -1, 122, -1,
      47, 48, -1, -1, 128, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 62, 63, 64, 65, 66,
      -1, 68, 69, 70, 71, -1, 73, 74, 75, 76,
      77, 78, 79, -1, 81, -1, -1, -1, 85, 86,
      87, 88, 89, 90, -1, -1, 93, 94, -1, -1,
      97, 98, -1, -1, -1, -1, -1, 104, -1, -1,
     107, -1, -1, -1, -1, -1, -1, -1, 115, 116,
     117, -1, -1, -1, -1, 122, 123, 124, -1, -1,
       1, 128, 3, 4, 5, 6, -1, 8, 9, 10,
      11, 12, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 151, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 47, 48, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 62, 63, 64, -1, 66, -1, 68, 69, 70,
      71, -1, 73, 74, 75, 76, 77, 78, 79, -1,
      81, -1, -1, -1, 85, 86, 87, 88, 89, 90,
      -1, -1, 93, 94, 95, -1, -1, 98, -1, -1,
      -1, -1, -1, 104, -1, -1, 107, -1, -1, -1,
      -1, -1, -1, -1, 115, 116, 117, -1, -1, -1,
      -1, 122, 123, 124, -1, -1, 1, 128, 3, 4,
       5, 6, -1, 8, 9, 10, 11, 12, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     151, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 47, 48, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 62, 63, 64,
      -1, 66, -1, 68, 69, 70, 71, -1, 73, 74,
      75, 76, 77, 78, 79, -1, 81, -1, -1, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
      -1, -1, -1, 98, 99, -1, -1, -1, -1, 104,
      -1, -1, 107, -1, -1, -1, -1, -1, -1, -1,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, 1, 128, 3, 4, 5, 6, -1, 8,
       9, 10, 11, 12, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 151, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 47, 48,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 62, 63, 64, -1, 66, -1, 68,
      69, 70, 71, -1, 73, 74, 75, 76, 77, 78,
      79, -1, 81, -1, -1, -1, 85, 86, 87, 88,
      89, 90, -1, -1, 93, 94, -1, -1, -1, 98,
      -1, -1, -1, -1, -1, 104, -1, -1, 107, -1,
      -1, -1, -1, -1, -1, -1, 115, 116, 117, -1,
      -1, -1, -1, 122, 123, 124, -1, -1, 1, 128,
       3, 4, 5, 6, -1, 8, 9, 10, 11, 12,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     149, -1, 151, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 47, 48, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 62,
      63, 64, -1, 66, -1, 68, 69, 70, 71, -1,
      73, 74, 75, 76, 77, 78, 79, -1, 81, -1,
      -1, -1, 85, 86, 87, 88, 89, 90, -1, -1,
      93, 94, -1, -1, -1, 98, -1, -1, -1, -1,
      -1, 104, -1, -1, 107, -1, -1, -1, -1, -1,
      -1, -1, 115, 116, 117, -1, -1, -1, -1, 122,
     123, 124, -1, -1, 1, 128, 3, 4, 5, 6,
      -1, 8, 9, 10, 11, 12, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 151, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      47, 48, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 62, 63, 64, -1, 66,
      -1, 68, 69, 70, 71, -1, 73, 74, 75, 76,
      77, 78, 79, -1, 81, -1, -1, -1, 85, 86,
      87, 88, 89, 90, -1, -1, 93, 94, -1, -1,
      -1, 98, -1, -1, -1, -1, -1, 104, -1, -1,
     107, -1, -1, -1, -1, -1, -1, -1, 115, 116,
     117, -1, -1, -1, -1, 122, 123, 124, -1, -1,
       1, 128, 3, 4, 5, 6, -1, 8, 9, 10,
      11, 12, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 151, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 47, 48, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 62, 63, 64, -1, 66, -1, 68, 69, 70,
      71, -1, 73, 74, 75, 76, 77, 78, 79, -1,
      81, -1, -1, -1, 85, 86, 87, 88, 89, 90,
      -1, -1, 93, 94, -1, -1, -1, 98, -1, -1,
      -1, -1, -1, 104, -1, -1, 107, -1, -1, -1,
      -1, -1, -1, -1, 115, 116, 117, -1, -1, -1,
      -1, 122, 123, 124, -1, -1, -1, 128, 3, 4,
       5, 6, -1, 8, 9, 10, 11, 12, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     151, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 47, 48, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 62, 63, 64,
      -1, 66, -1, 68, 69, 70, 71, -1, 73, 74,
      75, 76, 77, 78, 79, -1, 81, -1, -1, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
      -1, -1, -1, 98, -1, -1, -1, -1, -1, 104,
      -1, -1, 107, -1, -1, -1, -1, -1, -1, -1,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, -1, 128, 3, 4, 5, 6, -1, 8,
       9, 10, 11, 12, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 151, 152, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 47, 48,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 62, 63, 64, -1, 66, -1, 68,
      69, 70, 71, -1, 73, 74, 75, 76, 77, 78,
      79, -1, 81, -1, -1, -1, 85, 86, 87, 88,
      89, 90, -1, -1, 93, 94, -1, -1, -1, 98,
      -1, -1, -1, -1, -1, 104, -1, -1, 107, -1,
      -1, -1, -1, -1, -1, -1, 115, 116, 117, -1,
      -1, -1, -1, 122, 123, 124, -1, -1, -1, 128,
       3, 4, 5, 6, -1, 8, 9, 10, 11, 12,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 151, 152, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 47, 48, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 62,
      63, 64, -1, 66, -1, 68, 69, 70, 71, -1,
      73, 74, 75, 76, 77, 78, 79, -1, 81, -1,
      -1, -1, 85, 86, 87, 88, 89, 90, -1, -1,
      93, 94, -1, -1, -1, 98, -1, -1, -1, -1,
      -1, 104, -1, -1, 107, -1, -1, -1, -1, -1,
      -1, -1, 115, 116, 117, -1, -1, -1, -1, 122,
     123, 124, -1, -1, -1, 128, 3, 4, 5, 6,
      -1, 8, 9, 10, 11, 12, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 151, 152,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      47, 48, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 62, 63, 64, -1, 66,
      -1, 68, 69, 70, 71, -1, 73, 74, 75, 76,
      77, 78, 79, -1, 81, -1, -1, -1, 85, 86,
      87, 88, 89, 90, -1, -1, 93, 94, -1, -1,
      -1, 98, -1, -1, -1, -1, -1, 104, -1, -1,
     107, -1, -1, -1, -1, -1, -1, -1, 115, 116,
     117, -1, -1, -1, -1, 122, 123, 124, -1, -1,
      -1, 128, 3, 4, 5, 6, -1, 8, 9, 10,
      11, 12, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 151, 152, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 47, 48, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 62, 63, 64, -1, 66, -1, 68, 69, 70,
      71, -1, 73, 74, 75, 76, 77, 78, 79, -1,
      81, -1, -1, -1, 85, 86, 87, 88, 89, 90,
      -1, -1, 93, 94, -1, -1, -1, 98, -1, -1,
      -1, -1, -1, 104, -1, -1, 107, -1, -1, -1,
      -1, -1, -1, -1, 115, 116, 117, -1, -1, -1,
      -1, 122, 123, 124, -1, -1, -1, 128, 3, 4,
       5, 6, 7, 8, 9, 10, 11, 12, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     151, 152, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 47, 48, 49, -1, 51, 52, 53, 54,
      55, 56, 57, 58, 59, 60, 61, 62, 63, 64,
      65, 66, -1, 68, 69, 70, 71, -1, 73, 74,
      75, 76, 77, 78, 79, 80, 81, 82, -1, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
      95, -1, 97, 98, -1, -1, -1, -1, -1, 104,
      -1, -1, 107, -1, -1, -1, -1, -1, -1, -1,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, -1, 128, -1, -1, -1, 132, 3, 4,
       5, 6, 7, 8, 9, 10, 11, 12, -1, -1,
      -1, -1, -1, -1, -1, -1, 151, -1, 100, 101,
     102, 103, 104, 105, 106, 107, 108, 109, 110, 111,
     112, 113, 114, 115, 116, 117, 118, 119, 120, 121,
      -1, -1, 47, 48, 49, -1, 51, 52, 53, 54,
      55, 56, 57, 58, 59, 60, 61, 62, 63, 64,
      65, 66, -1, 68, 69, 70, 71, 149, 73, 74,
      75, 76, 77, 78, 79, 80, 81, 82, -1, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
      -1, -1, 97, 98, -1, -1, -1, -1, -1, 104,
      -1, -1, 107, -1, -1, -1, -1, -1, -1, -1,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, -1, 128, -1, -1, -1, 132, 3, 4,
       5, 6, 7, 8, 9, 10, 11, 12, 13, -1,
      -1, -1, -1, -1, -1, -1, 151, -1, 100, 101,
     102, 103, 104, 105, 106, 107, 108, 109, 110, 111,
     112, 113, 114, 115, 116, 117, 118, 119, 120, 121,
      -1, -1, 47, 48, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 62, 63, 64,
      65, 66, -1, 68, 69, 70, 71, 149, 73, 74,
      75, 76, 77, 78, 79, -1, 81, -1, 83, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
      -1, -1, -1, 98, -1, -1, -1, -1, -1, 104,
      -1, -1, 107, -1, -1, -1, -1, -1, -1, -1,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, -1, 128, 129, 3, 4, 5, 6, 7,
       8, 9, 10, 11, 12, 13, -1, -1, -1, -1,
      -1, -1, -1, 96, -1, -1, 151, 100, 101, 102,
     103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
     113, 114, 115, 116, 117, 118, 119, 120, 121, 47,
      48, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 62, 63, 64, 65, 66, -1,
      68, 69, 70, 71, -1, 73, 74, 75, 76, 77,
      78, 79, -1, 81, -1, 83, -1, 85, 86, 87,
      88, 89, 90, -1, -1, 93, 94, -1, -1, -1,
      98, -1, -1, -1, -1, -1, 104, -1, -1, 107,
      -1, -1, -1, -1, -1, -1, -1, 115, 116, 117,
      -1, -1, -1, -1, 122, 123, 124, -1, -1, -1,
     128, 129, 3, 4, 5, 6, -1, 8, 9, 10,
      11, 12, -1, -1, -1, -1, -1, -1, -1, -1,
      96, -1, -1, 151, 100, 101, 102, 103, 104, 105,
     106, 107, 108, 109, 110, 111, 112, 113, 114, 115,
     116, 117, 118, 119, 120, 121, 47, 48, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 62, 63, 64, 65, 66, -1, 68, 69, 70,
      71, -1, 73, 74, 75, 76, 77, 78, 79, -1,
      81, -1, 83, -1, 85, 86, 87, 88, 89, 90,
      -1, -1, 93, 94, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 104, -1, -1, 107, -1, -1, -1,
      -1, -1, -1, -1, 115, 116, 117, -1, -1, -1,
      -1, 122, 123, 124, -1, -1, -1, 128, 129, 3,
       4, 5, 6, -1, 8, 9, 10, 11, 12, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 97, -1,
     151, 100, 101, 102, 103, 104, 105, 106, 107, 108,
     109, 110, 111, 112, 113, 114, 115, 116, 117, 118,
     119, 120, 121, 47, 48, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 62, 63,
      64, 65, 66, -1, 68, 69, 70, 71, -1, 73,
      74, 75, 76, 77, 78, 79, -1, 81, -1, 83,
      -1, 85, 86, 87, 88, 89, 90, -1, -1, 93,
      94, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     104, -1, -1, 107, -1, -1, -1, -1, -1, -1,
      -1, 115, 116, 117, -1, -1, -1, -1, 122, 123,
     124, -1, -1, -1, 128, 129, 3, 4, 5, 6,
      -1, 8, 9, 10, 11, 12, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 151, 100, 101,
     102, 103, 104, 105, 106, 107, 108, 109, 110, 111,
     112, 113, 114, 115, 116, 117, 118, 119, 120, 121,
      47, 48, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 62, 63, 64, 65, 66,
      -1, 68, 69, 70, 71, -1, 73, 74, 75, 76,
      77, 78, 79, -1, 81, -1, -1, -1, 85, 86,
      87, 88, 89, 90, -1, -1, 93, 94, -1, -1,
      -1, 98, -1, -1, -1, -1, -1, 104, -1, -1,
     107, -1, -1, -1, -1, -1, -1, -1, 115, 116,
     117, -1, -1, -1, -1, 122, 123, 124, -1, -1,
      -1, 128, 3, 4, 5, 6, -1, 8, 9, 10,
      11, 12, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 151, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 47, 48, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 62, 63, 64, 65, 66, -1, 68, 69, 70,
      71, -1, 73, 74, 75, 76, 77, 78, 79, -1,
      81, -1, -1, -1, 85, 86, 87, 88, 89, 90,
      -1, -1, 93, 94, -1, -1, -1, 98, -1, -1,
      -1, -1, -1, 104, -1, -1, 107, -1, -1, -1,
      -1, -1, -1, -1, 115, 116, 117, -1, -1, -1,
      -1, 122, 123, 124, -1, -1, -1, 128, 3, 4,
       5, 6, -1, 8, 9, 10, 11, 12, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     151, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 47, 48, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 62, 63, 64,
      65, 66, -1, 68, 69, 70, 71, -1, 73, 74,
      75, 76, 77, 78, 79, -1, 81, -1, -1, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
      -1, -1, -1, 98, -1, -1, -1, -1, -1, 104,
      -1, -1, 107, -1, -1, -1, -1, -1, -1, -1,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, -1, 128, 3, 4, 5, 6, -1, 8,
       9, 10, 11, 12, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 151, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 47, 48,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 62, 63, 64, -1, 66, -1, 68,
      69, 70, 71, -1, 73, 74, 75, 76, 77, 78,
      79, -1, 81, -1, -1, -1, 85, 86, 87, 88,
      89, 90, -1, -1, 93, 94, -1, -1, 97, 98,
      -1, -1, -1, -1, -1, 104, -1, -1, 107, -1,
      -1, -1, -1, -1, -1, -1, 115, 116, 117, -1,
      -1, -1, -1, 122, 123, 124, -1, -1, -1, 128,
       3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 151, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 47, 48, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 62,
      63, 64, 65, 66, -1, 68, 69, 70, 71, -1,
      73, 74, 75, 76, 77, 78, 79, -1, 81, -1,
      -1, -1, 85, 86, 87, 88, 89, 90, -1, -1,
      93, 94, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 104, -1, -1, 107, -1, -1, -1, -1, -1,
      -1, -1, 115, 116, 117, -1, -1, -1, -1, 122,
     123, 124, -1, -1, -1, 128, 3, 4, 5, 6,
      -1, 8, 9, 10, 11, 12, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 151, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      47, 48, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 62, 63, 64, 65, 66,
      -1, 68, 69, 70, 71, -1, 73, 74, 75, 76,
      77, 78, 79, -1, 81, -1, -1, -1, 85, 86,
      87, 88, 89, 90, -1, -1, 93, 94, -1, -1,
      -1, 98, -1, -1, -1, -1, -1, 104, -1, -1,
     107, -1, -1, -1, -1, -1, -1, -1, 115, 116,
     117, -1, -1, -1, -1, 122, 123, 124, -1, -1,
      -1, 128, 3, 4, 5, 6, -1, 8, 9, 10,
      11, 12, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 151, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 47, 48, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 62, 63, 64, -1, 66, -1, 68, 69, 70,
      71, -1, 73, 74, 75, 76, 77, 78, 79, -1,
      81, -1, -1, -1, 85, 86, 87, 88, 89, 90,
      -1, -1, 93, 94, -1, -1, -1, 98, -1, -1,
      -1, -1, -1, 104, -1, -1, 107, -1, -1, -1,
      -1, -1, -1, -1, 115, 116, 117, -1, -1, -1,
      -1, 122, 123, 124, -1, -1, -1, 128, 3, 4,
       5, 6, -1, 8, 9, 10, 11, 12, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     151, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 47, 48, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 62, 63, 64,
      -1, 66, -1, 68, 69, 70, 71, -1, 73, 74,
      75, 76, 77, 78, 79, -1, 81, -1, -1, -1,
      85, 86, 87, 88, 89, 90, -1, -1, 93, 94,
      95, -1, -1, -1, -1, -1, -1, -1, -1, 104,
      -1, -1, 107, -1, -1, -1, -1, -1, -1, -1,
     115, 116, 117, -1, -1, -1, -1, 122, 123, 124,
      -1, -1, -1, 128, 3, 4, 5, 6, -1, 8,
       9, 10, 11, 12, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 151, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 47, 48,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 62, 63, 64, -1, 66, -1, 68,
      69, 70, 71, -1, 73, 74, 75, 76, 77, 78,
      79, -1, 81, -1, -1, -1, 85, 86, 87, 88,
      89, 90, -1, -1, 93, 94, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 104, -1, -1, 107, -1,
      -1, -1, -1, -1, -1, -1, 115, 116, 117, -1,
      -1, -1, -1, 122, 123, 124, -1, -1, -1, 128,
     129, 3, 4, 5, 6, -1, 8, 9, 10, 11,
      12, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 151, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 47, 48, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      62, 63, 64, -1, 66, -1, 68, 69, 70, 71,
      -1, 73, 74, 75, 76, 77, 78, 79, -1, 81,
      -1, -1, -1, 85, 86, 87, 88, 89, 90, -1,
      -1, 93, 94, -1, -1, -1, 98, -1, -1, -1,
      -1, -1, 104, -1, -1, 107, -1, -1, -1, -1,
      -1, -1, -1, 115, 116, 117, -1, -1, -1, -1,
     122, 123, 124, -1, -1, -1, 128, 3, 4, 5,
       6, -1, 8, 9, 10, 11, 12, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 151,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 47, 48, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 62, 63, 64, 65,
      66, -1, 68, 69, 70, 71, -1, 73, 74, 75,
      76, 77, 78, 79, -1, 81, -1, -1, -1, 85,
      86, 87, 88, 89, 90, -1, -1, 93, 94, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 104, -1,
      -1, 107, -1, -1, -1, -1, -1, -1, -1, 115,
     116, 117, -1, -1, -1, -1, 122, 123, 124, -1,
      -1, -1, 128, 3, 4, 5, 6, -1, 8, 9,
      10, 11, 12, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 151, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 47, 48, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 62, 63, 64, -1, 66, -1, 68, 69,
      70, 71, -1, 73, 74, 75, 76, 77, 78, 79,
      -1, 81, -1, -1, -1, 85, 86, 87, 88, 89,
      90, -1, -1, 93, 94, -1, -1, -1, 98, -1,
      -1, -1, -1, -1, 104, -1, -1, 107, -1, -1,
      -1, -1, -1, -1, -1, 115, 116, 117, -1, -1,
      -1, -1, 122, 123, 124, -1, -1, -1, 128, 3,
       4, 5, 6, -1, 8, 9, 10, 11, 12, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 151, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 47, 48, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 62, 63,
      64, 65, 66, -1, 68, 69, 70, 71, -1, 73,
      74, 75, 76, 77, 78, 79, -1, 81, -1, -1,
      -1, 85, 86, 87, 88, 89, 90, -1, -1, 93,
      94, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     104, -1, -1, 107, -1, -1, -1, -1, -1, -1,
      -1, 115, 116, 117, -1, -1, -1, -1, 122, 123,
     124, -1, -1, -1, 128, 3, 4, 5, 6, -1,
       8, 9, 10, 11, 12, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 151, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 47,
      48, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 62, 63, 64, -1, 66, -1,
      68, 69, 70, 71, -1, 73, 74, 75, 76, 77,
      78, 79, -1, 81, -1, -1, -1, 85, 86, 87,
      88, 89, 90, -1, -1, 93, 94, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 104, -1, -1, 107,
      -1, -1, -1, -1, -1, -1, -1, 115, 116, 117,
      -1, -1, -1, -1, 122, 123, 124, -1, -1, -1,
     128, 3, 4, 5, 6, -1, 8, 9, 10, 11,
      12, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 151, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 47, 48, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      62, 63, 64, -1, 66, -1, 68, 69, 70, 71,
      -1, 73, 74, 75, 76, 77, 78, 79, -1, 81,
      -1, -1, -1, 85, 86, 87, 88, 89, 90, -1,
      -1, 93, 94, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 104, -1, -1, 107, -1, -1, -1, -1,
      -1, -1, -1, 115, 116, 117, -1, -1, -1, -1,
     122, 123, 124, -1, -1, -1, 128, 3, 4, 5,
       6, -1, 8, 9, 10, 11, 12, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 151,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, 47, 48, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 62, 63, 64, -1,
      66, -1, 68, 69, 70, 71, -1, 73, 74, 75,
      76, 77, 78, 79, -1, 81, -1, -1, -1, 85,
      86, 87, 88, 89, 90, -1, -1, 93, 94, 3,
       4, 5, 6, 7, 8, 9, -1, -1, 104, 13,
      -1, 107, -1, -1, -1, -1, -1, -1, -1, 115,
     116, 117, -1, -1, -1, -1, 122, 123, 124, -1,
      -1, -1, 128, -1, -1, -1, 3, 4, 5, 6,
       7, 8, 9, -1, 48, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, 151, -1, -1, 62, -1,
      64, 65, -1, -1, -1, -1, -1, 71, -1, -1,
      -1, -1, 76, -1, -1, -1, -1, 81, -1, 83,
      -1, 48, -1, -1, -1, -1, 90, -1, -1, 93,
      94, -1, -1, -1, -1, -1, -1, -1, 65, -1,
      -1, -1, -1, 107, 71, -1, -1, -1, -1, 76,
      -1, -1, -1, 117, 81, -1, 83, -1, 122, -1,
      -1, -1, -1, 90, 128, 129, 93, 94, 3, 4,
       5, 6, 7, 8, 9, -1, -1, -1, -1, -1,
     107, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     117, -1, -1, -1, -1, 122, -1, -1, -1, -1,
      -1, 128, 129, -1, -1, 3, 4, 5, 6, 7,
       8, 9, -1, 48, -1, 13, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, 62, -1, 64,
      65, -1, -1, -1, -1, -1, 71, -1, -1, -1,
      -1, 76, -1, -1, -1, -1, 81, -1, -1, -1,
      48, -1, -1, -1, -1, 90, -1, -1, 93, 94,
      -1, -1, 97, -1, 62, -1, 64, 65, -1, -1,
      -1, -1, 107, 71, -1, -1, -1, -1, 76, -1,
      -1, -1, 117, 81, -1, -1, -1, 122, -1, -1,
      -1, -1, 90, 128, -1, 93, 94, 3, 4, 5,
       6, 7, 8, 9, -1, -1, -1, -1, -1, 107,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 117,
      -1, -1, -1, -1, 122, -1, -1, -1, -1, -1,
     128, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, 48, -1, -1, 3, 4, 5, 6, 7,
       8, 9, -1, -1, -1, -1, 62, -1, 64, 65,
      -1, -1, -1, -1, -1, 71, -1, -1, -1, -1,
      76, -1, -1, -1, -1, 81, -1, -1, -1, -1,
      -1, -1, -1, -1, 90, -1, -1, 93, 94, -1,
      48, -1, -1, 99, -1, -1, -1, -1, -1, -1,
      -1, 107, -1, -1, 62, -1, 64, 65, -1, -1,
      -1, 117, -1, 71, -1, -1, 122, -1, 76, -1,
      -1, -1, 128, 81, 3, 4, 5, 6, 7, 8,
       9, -1, 90, -1, -1, 93, 94, -1, -1, 97,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 107,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 117,
      -1, -1, -1, -1, 122, -1, -1, -1, -1, 48,
     128, -1, 3, 4, 5, 6, 7, 8, 9, -1,
      -1, -1, -1, 62, -1, 64, 65, -1, -1, -1,
      -1, -1, 71, -1, -1, -1, -1, 76, -1, -1,
      -1, -1, 81, -1, -1, -1, -1, -1, -1, -1,
      -1, 90, -1, -1, 93, 94, -1, 48, -1, -1,
      -1, 4, 5, -1, 7, 8, 9, -1, 107, -1,
      13, 62, -1, 64, 65, -1, -1, -1, 117, -1,
      71, -1, -1, 122, -1, 76, -1, -1, -1, 128,
      81, -1, -1, -1, -1, -1, -1, -1, -1, 90,
      -1, -1, 93, 94, -1, 48, -1, -1, -1, 3,
       4, 5, 6, 7, 8, 9, 107, -1, -1, 62,
      -1, 64, 65, -1, -1, -1, 117, -1, 71, -1,
      -1, 122, -1, -1, -1, -1, -1, 128, 81, -1,
      83, -1, -1, -1, -1, -1, -1, 90, -1, -1,
      93, 94, -1, -1, 48, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, 107, -1, -1, -1, -1, -1,
      -1, 65, -1, -1, 117, -1, -1, 71, -1, -1,
      -1, -1, 76, -1, -1, 128, 129, 81, -1, 83,
      -1, -1, -1, -1, -1, -1, 90, -1, -1, 93,
      94, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 107, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, 117, -1, -1, -1, -1, 122, -1,
      -1, -1, -1, -1, 128, 100, 101, 102, 103, 104,
     105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
     115, 116, 117, 118, 119, 120, 121, 100, 101, 102,
     103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
     113, 114, 115, 116, 117, 118, 119, 120, 121, -1,
      -1, -1, -1, -1, 149, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, 149, 100, 101, 102,
     103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
     113, 114, 115, 116, 117, 118, 119, 120, 121, 100,
     101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
     111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
     121, -1, -1, -1, -1, -1, 149, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, 149, 100,
     101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
     111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
     121, 100, 101, 102, 103, 104, 105, 106, 107, 108,
     109, 110, 111, 112, 113, 114, 115, 116, 117, 118,
     119, 120, 121, -1, -1, -1, -1, -1, 149, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
      -1, -1, -1, -1, -1, -1, -1, -1, -1, 148,
      99, 100, 101, 102, 103, 104, 105, 106, 107, 108,
     109, 110, 111, 112, 113, 114, 115, 116, 117, 118,
     119, 120, 121
};



static const yytype_uint16 yystos[] =
{
       0, 155, 156, 157, 0, 163, 164, 163, 1, 3,
       4, 5, 6, 7, 8, 9, 15, 19, 48, 61,
      62, 64, 65, 66, 71, 76, 80, 81, 82, 84,
      90, 91, 93, 94, 97, 107, 117, 122, 128, 133,
     161, 162, 165, 169, 171, 173, 178, 179, 181, 182,
     188, 191, 197, 198, 203, 217, 228, 230, 255, 257,
     262, 263, 275, 276, 278, 279, 283, 284, 288, 296,
     299, 300, 312, 320, 321, 322, 323, 324, 348, 353,
     354, 355, 357, 359, 361, 364, 365, 366, 373, 374,
     441, 448, 450, 511, 525, 97, 148, 150, 110, 442,
      90, 110, 90, 110, 110, 84, 16, 17, 18, 526,
      45, 3, 4, 5, 93, 94, 95, 214, 228, 355,
     365, 372, 374, 128, 128, 4, 5, 93, 94, 95,
     214, 3, 4, 5, 93, 94, 228, 367, 368, 369,
     370, 374, 4, 5, 80, 93, 94, 360, 365, 374,
     110, 226, 166, 90, 110, 110, 3, 299, 348, 356,
     357, 365, 374, 348, 356, 439, 107, 117, 128, 255,
     260, 261, 263, 299, 358, 359, 373, 165, 128, 97,
      95, 133, 159, 1, 7, 84, 161, 178, 188, 189,
     190, 197, 275, 278, 288, 312, 148, 194, 162, 289,
      59, 193, 206, 207, 97, 90, 83, 128, 129, 349,
      97, 107, 117, 128, 272, 286, 294, 351, 352, 357,
     364, 365, 373, 7, 9, 97, 198, 284, 287, 295,
     299, 357, 128, 7, 8, 9, 277, 280, 285, 299,
     312, 96, 97, 300, 7, 8, 9, 71, 95, 139,
     140, 141, 214, 216, 228, 229, 299, 365, 374, 95,
      99, 95, 99, 99, 325, 9, 284, 299, 374, 289,
       3, 5, 84, 94, 117, 230, 255, 258, 262, 364,
     366, 347, 3, 93, 255, 355, 361, 364, 365, 1,
      73, 74, 83, 96, 100, 101, 102, 103, 104, 105,
     106, 107, 108, 109, 110, 111, 112, 113, 114, 115,
     116, 117, 118, 119, 121, 122, 123, 124, 129, 130,
     151, 279, 284, 348, 419, 110, 233, 234, 235, 236,
       3, 233, 233, 256, 226, 3, 128, 314, 95, 3,
      84, 94, 355, 364, 9, 10, 11, 12, 47, 63,
      68, 69, 70, 73, 74, 75, 77, 78, 79, 85,
      86, 87, 88, 89, 98, 104, 107, 115, 116, 117,
     122, 123, 124, 128, 151, 161, 238, 239, 246, 248,
     251, 252, 253, 255, 264, 266, 267, 268, 270, 274,
     279, 281, 282, 284, 348, 361, 362, 363, 365, 374,
     128, 168, 95, 100, 90, 90, 90, 90, 90, 90,
       3, 4, 5, 84, 93, 94, 214, 228, 370, 371,
     368, 174, 3, 4, 5, 255, 258, 259, 259, 360,
     111, 180, 198, 275, 278, 284, 357, 188, 234, 233,
     110, 357, 299, 356, 365, 356, 4, 5, 214, 228,
     260, 299, 348, 358, 260, 348, 358, 260, 149, 93,
      94, 107, 117, 128, 255, 261, 149, 347, 12, 156,
     158, 84, 191, 197, 189, 159, 194, 286, 287, 97,
      97, 128, 298, 299, 3, 1, 132, 195, 210, 409,
      83, 100, 128, 305, 97, 1, 13, 246, 247, 253,
     274, 276, 278, 279, 284, 348, 429, 430, 434, 435,
     436, 438, 9, 152, 239, 284, 347, 299, 348, 350,
     351, 348, 350, 107, 117, 128, 299, 350, 373, 289,
      96, 97, 129, 349, 364, 347, 277, 280, 96, 97,
     289, 239, 274, 7, 285, 277, 285, 299, 272, 290,
     110, 95, 99, 3, 94, 214, 229, 214, 365, 439,
      95, 280, 297, 90, 83, 128, 6, 214, 371, 450,
      90, 83, 128, 9, 299, 356, 5, 117, 230, 449,
     129, 449, 129, 449, 449, 449, 449, 449, 99, 449,
     449, 449, 449, 449, 449, 449, 449, 449, 449, 449,
     449, 449, 449, 449, 449, 449, 449, 449, 449, 449,
     152, 449, 449, 280, 107, 117, 365, 373, 374, 447,
     256, 111, 113, 232, 96, 94, 98, 237, 252, 254,
     274, 365, 374, 128, 443, 232, 232, 233, 198, 275,
     284, 357, 153, 3, 530, 96, 214, 319, 343, 344,
     345, 313, 214, 128, 252, 252, 128, 128, 128, 110,
     110, 110, 110, 253, 214, 252, 252, 252, 1, 107,
     117, 128, 239, 255, 260, 265, 274, 252, 252, 149,
      96, 95, 128, 248, 96, 100, 101, 102, 103, 104,
     105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
     115, 116, 117, 118, 119, 120, 121, 83, 128, 83,
     123, 124, 127, 128, 129, 130, 95, 128, 249, 346,
     419, 129, 252, 1, 8, 84, 122, 258, 259, 362,
     365, 374, 149, 83, 107, 117, 128, 129, 251, 273,
     373, 378, 379, 128, 248, 128, 248, 128, 273, 378,
     365, 374, 378, 83, 128, 3, 74, 257, 267, 361,
     374, 450, 7, 8, 9, 214, 301, 302, 303, 158,
     167, 170, 371, 110, 90, 177, 259, 360, 374, 81,
      84, 179, 183, 185, 186, 187, 274, 284, 320, 436,
     438, 221, 272, 97, 220, 232, 232, 233, 356, 356,
     149, 260, 356, 149, 150, 160, 160, 190, 197, 97,
      97, 12, 410, 99, 192, 208, 269, 1, 95, 253,
     306, 247, 149, 149, 13, 96, 99, 107, 117, 128,
     272, 298, 373, 378, 357, 365, 374, 272, 128, 272,
     149, 13, 96, 99, 13, 357, 437, 438, 440, 100,
     431, 152, 128, 273, 98, 444, 351, 299, 350, 350,
     299, 348, 348, 107, 117, 128, 365, 373, 149, 347,
     292, 298, 290, 152, 239, 347, 299, 350, 277, 290,
     292, 149, 149, 289, 233, 214, 229, 4, 5, 7,
      72, 228, 326, 327, 328, 329, 353, 367, 374, 315,
     292, 347, 199, 110, 110, 90, 110, 347, 201, 83,
     128, 83, 128, 152, 152, 449, 449, 347, 347, 347,
     365, 449, 233, 235, 254, 100, 101, 102, 103, 104,
     105, 106, 107, 108, 109, 110, 112, 113, 114, 115,
     116, 117, 118, 119, 120, 121, 84, 94, 247, 97,
     231, 231, 232, 225, 272, 97, 224, 96, 149, 100,
     150, 96, 319, 343, 247, 253, 253, 239, 274, 274,
     284, 274, 274, 274, 149, 260, 149, 149, 385, 451,
     149, 1, 253, 3, 4, 5, 93, 94, 129, 214,
     306, 307, 274, 1, 253, 253, 253, 1, 239, 424,
     253, 253, 253, 253, 253, 253, 253, 253, 253, 253,
     253, 253, 253, 253, 253, 253, 253, 253, 253, 247,
     247, 239, 247, 247, 274, 128, 346, 83, 100, 128,
     250, 107, 117, 129, 373, 375, 376, 152, 239, 90,
     214, 8, 83, 128, 83, 128, 83, 128, 299, 348,
     377, 378, 348, 377, 274, 377, 430, 152, 239, 128,
     347, 83, 347, 347, 83, 128, 129, 274, 274, 107,
     117, 128, 247, 251, 260, 299, 365, 374, 365, 247,
      96, 149, 128, 150, 158, 177, 90, 233, 175, 259,
     360, 184, 214, 110, 320, 96, 111, 100, 100, 184,
     214, 100, 227, 219, 218, 227, 231, 232, 149, 97,
     194, 160, 160, 149, 195, 209, 451, 150, 307, 149,
     299, 348, 348, 107, 117, 128, 299, 364, 365, 373,
     298, 347, 298, 298, 365, 298, 107, 117, 128, 255,
     260, 361, 374, 298, 431, 100, 432, 83, 128, 348,
     348, 347, 100, 152, 444, 298, 111, 439, 439, 96,
       7, 72, 439, 1, 5, 82, 97, 99, 128, 161,
     171, 182, 198, 204, 205, 230, 275, 278, 330, 332,
     333, 334, 357, 441, 444, 429, 233, 233, 233, 444,
     429, 347, 200, 347, 202, 449, 449, 447, 447, 447,
     232, 254, 254, 424, 254, 254, 254, 254, 254, 254,
     254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
     254, 254, 214, 149, 227, 223, 222, 227, 3, 153,
     253, 345, 150, 149, 96, 149, 149, 149, 111, 111,
     111, 111, 149, 149, 95, 253, 99, 96, 318, 149,
      99, 149, 149, 152, 150, 149, 149, 274, 250, 306,
     247, 284, 347, 347, 239, 347, 129, 252, 152, 122,
     110, 83, 247, 247, 247, 378, 299, 377, 377, 149,
     149, 152, 444, 444, 299, 377, 347, 429, 152, 239,
     149, 149, 149, 149, 107, 117, 128, 149, 302, 149,
       3, 247, 150, 97, 232, 298, 184, 187, 274, 235,
     254, 227, 227, 194, 411, 1, 3, 93, 94, 211,
     212, 213, 215, 353, 367, 95, 96, 150, 299, 348,
     348, 107, 117, 128, 373, 364, 347, 299, 260, 149,
       3, 257, 361, 450, 306, 136, 306, 433, 1, 274,
     445, 446, 107, 117, 128, 299, 299, 293, 100, 231,
     439, 439, 439, 328, 83, 128, 253, 5, 333, 275,
     333, 289, 289, 59, 95, 99, 132, 83, 128, 3,
       4, 99, 198, 272, 335, 337, 339, 340, 351, 357,
     365, 374, 198, 204, 336, 340, 357, 72, 150, 331,
     333, 97, 150, 289, 149, 232, 232, 232, 149, 444,
     429, 444, 429, 99, 227, 227, 274, 128, 128, 128,
     128, 386, 152, 306, 214, 306, 150, 253, 129, 250,
     149, 149, 149, 375, 375, 152, 375, 239, 252, 8,
     233, 149, 149, 149, 347, 444, 149, 152, 96, 149,
     149, 97, 131, 415, 416, 1, 96, 83, 128, 196,
     150, 348, 348, 365, 347, 149, 96, 149, 299, 306,
     291, 327, 347, 429, 149, 97, 298, 298, 347, 429,
      99, 99, 253, 289, 96, 289, 289, 365, 289, 96,
      99, 298, 332, 298, 347, 347, 149, 149, 254, 149,
     239, 239, 239, 239, 67, 150, 245, 382, 383, 384,
     306, 99, 239, 250, 152, 83, 232, 444, 347, 247,
     417, 416, 213, 247, 245, 107, 117, 128, 299, 299,
     445, 306, 444, 149, 83, 128, 305, 305, 444, 149,
     253, 253, 298, 298, 3, 4, 99, 338, 341, 342,
     351, 357, 298, 298, 5, 298, 342, 316, 305, 444,
     444, 347, 347, 149, 149, 149, 149, 214, 304, 1,
      14, 15, 19, 145, 380, 381, 385, 387, 393, 451,
     452, 454, 457, 464, 468, 470, 481, 483, 486, 488,
     491, 493, 496, 498, 499, 501, 503, 504, 506, 507,
     508, 510, 511, 512, 513, 523, 524, 527, 384, 306,
     152, 444, 149, 128, 420, 149, 299, 347, 347, 429,
     347, 298, 298, 305, 99, 99, 253, 289, 289, 305,
     305, 305, 311, 444, 444, 96, 97, 97, 150, 12,
      16, 17, 18, 528, 20, 33, 37, 39, 40, 41,
      42, 43, 44, 53, 142, 143, 1, 150, 381, 393,
       3, 4, 5, 49, 51, 52, 53, 54, 55, 56,
      57, 58, 59, 60, 80, 82, 94, 97, 132, 161,
     162, 169, 172, 173, 239, 271, 275, 278, 284, 388,
     394, 412, 421, 453, 458, 469, 482, 487, 492, 497,
     500, 505, 509, 13, 438, 418, 444, 444, 149, 444,
     253, 253, 298, 298, 298, 1, 137, 310, 317, 214,
     153, 153, 21, 23, 25, 28, 29, 36, 37, 49,
      53, 56, 153, 455, 456, 153, 21, 23, 24, 28,
      35, 153, 471, 472, 21, 22, 23, 35, 153, 484,
     485, 153, 128, 153, 153, 153, 128, 153, 21, 23,
      24, 28, 33, 34, 35, 153, 465, 466, 153, 153,
     150, 99, 99, 99, 389, 396, 398, 400, 404, 253,
      99, 97, 97, 97, 239, 117, 214, 214, 93, 176,
     374, 99, 413, 271, 9, 423, 97, 97, 272, 286,
      97, 287, 357, 128, 286, 50, 150, 393, 393, 529,
      53, 459, 95, 473, 529, 459, 473, 529, 529, 253,
     529, 149, 149, 387, 347, 298, 298, 305, 305, 1,
     253, 309, 128, 128, 128, 128, 128, 128, 21, 22,
      23, 24, 25, 28, 29, 36, 49, 56, 153, 494,
     495, 128, 21, 22, 23, 24, 25, 28, 29, 33,
      34, 36, 49, 56, 153, 489, 490, 128, 153, 456,
     128, 128, 128, 128, 153, 472, 128, 128, 128, 153,
     485, 3, 502, 530, 128, 128, 128, 128, 128, 153,
     466, 514, 515, 83, 128, 241, 241, 387, 391, 392,
     128, 128, 13, 99, 408, 97, 239, 97, 90, 93,
     214, 93, 176, 214, 387, 128, 97, 97, 107, 117,
     128, 97, 395, 460, 474, 97, 444, 148, 148, 138,
     308, 530, 530, 530, 103, 104, 105, 106, 107, 115,
     116, 117, 531, 530, 253, 128, 128, 128, 128, 128,
     128, 128, 128, 128, 128, 153, 495, 253, 128, 128,
     128, 128, 128, 128, 128, 128, 128, 128, 128, 153,
     490, 25, 27, 530, 530, 530, 531, 530, 530, 530,
     149, 149, 530, 530, 530, 531, 30, 31, 32, 46,
     467, 95, 516, 516, 239, 243, 284, 419, 390, 397,
      51, 451, 95, 271, 422, 424, 243, 253, 406, 393,
      97, 90, 214, 414, 12, 391, 128, 19, 475, 476,
     477, 478, 480, 529, 193, 194, 149, 149, 149, 99,
     149, 149, 530, 530, 530, 530, 530, 531, 530, 253,
     253, 25, 27, 149, 530, 530, 530, 530, 530, 531,
     530, 467, 253, 253, 25, 27, 149, 149, 149, 149,
     149, 99, 149, 149, 149, 153, 153, 149, 149, 149,
      99, 96, 149, 145, 517, 518, 519, 520, 529, 149,
     272, 391, 391, 399, 394, 245, 401, 97, 149, 99,
     393, 415, 90, 99, 149, 422, 38, 150, 19, 477,
     478, 479, 1, 195, 409, 530, 149, 149, 149, 149,
     149, 99, 149, 149, 149, 149, 149, 149, 149, 149,
     149, 149, 99, 149, 96, 149, 149, 149, 149, 149,
     530, 530, 253, 144, 146, 150, 145, 519, 520, 289,
      83, 128, 240, 1, 242, 243, 405, 407, 12, 129,
     425, 426, 427, 425, 97, 461, 153, 529, 149, 530,
     530, 253, 149, 149, 149, 153, 153, 298, 239, 97,
      97, 391, 393, 128, 214, 99, 149, 96, 90, 99,
     149, 242, 149, 149, 149, 521, 522, 100, 149, 402,
     239, 152, 12, 428, 97, 427, 428, 425, 97, 97,
     529, 529, 244, 424, 149, 12, 96, 149, 149, 99,
     149, 462, 306, 149, 128, 12, 97, 97, 428, 97,
     424, 403, 239, 149, 149, 391, 149, 97, 463, 391
};
# 5878 "parse.c"
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)







{
  if (!yyvaluep)
    return;

  if (yytype < 154)
    yyprint(yyoutput,yytoknum[yytype],*yyvaluep);



  switch (yytype)
    {
      default:
 break;
    }
}
# 5910 "parse.c"
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)







{
  if (yytype < 154)
    fprintf (yyoutput, "token %s (", yytname[yytype]);
  else
    fprintf (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  fprintf (yyoutput, ")");
}
# 5936 "parse.c"
static void
yy_stack_print (yytype_int16 *bottom, yytype_int16 *top)






{
  fprintf (stderr, "Stack now");
  for (; bottom <= top; ++bottom)
    fprintf (stderr, " %d", *bottom);
  fprintf (stderr, "\n");
}
# 5964 "parse.c"
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
# 5997 "parse.c"
int yydebug;
# 6242 "parse.c"
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
# 6277 "parse.c"
int yyparse (void);
# 6286 "parse.c"
int yychar;


YYSTYPE yylval;


int yynerrs;
# 6313 "parse.c"
int
yyparse (void)






{

  int yystate;
  int yyn;
  int yyresult;

  int yyerrstatus;

  int yytoken = 0;
# 6346 "parse.c"
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
# 6452 "parse.c"
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
  if (yyn == -2029)
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
      yytoken = ((unsigned int) (yychar) <= 383 ? yytranslate[yychar] : 2);
      do { if (yydebug) { fprintf (stderr, "%s ", "Next token is"); yy_symbol_print (stderr, yytoken, &yylval); fprintf (stderr, "\n"); } } while ((0));
    }



  yyn += yytoken;
  if (yyn < 0 || 15092 < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == -937)
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
# 6560 "parse.c"
  yyval = yyvsp[1-yylen];


  do { if (yydebug) yy_reduce_print (yyvsp, yyn); } while ((0));
  switch (yyn)
    {
        case 2:
# 575 "../../../kg++fe/gnu/cp/parse.y"
    { finish_translation_unit (); ;}
    break;

  case 3:
# 577 "../../../kg++fe/gnu/cp/parse.y"
    { finish_translation_unit (); ;}
    break;

  case 4:
# 585 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 5:
# 587 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ggc_collect (); ;}
    break;

  case 6:
# 589 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ggc_collect (); ;}
    break;

  case 9:
# 598 "../../../kg++fe/gnu/cp/parse.y"
    { have_extern_spec = 1;
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 10:
# 602 "../../../kg++fe/gnu/cp/parse.y"
    { have_extern_spec = 0; ;}
    break;

  case 11:
# 607 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.itype) = pedantic;
    pedantic = 0; ;}
    break;

  case 13:
# 616 "../../../kg++fe/gnu/cp/parse.y"
    { if (pending_lang_change) do_pending_lang_change();
    scope_chain->lookups = (tree) ((void *)0); ;}
    break;

  case 14:
# 619 "../../../kg++fe/gnu/cp/parse.y"
    { if (! toplevel_bindings_p ())
    pop_everything (); ;}
    break;

  case 15:
# 625 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 16:
# 627 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 17:
# 630 "../../../kg++fe/gnu/cp/parse.y"
    { warning ("keyword `export' not implemented, and will be ignored"); ;}
    break;

  case 18:
# 632 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 19:
# 634 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 20:
# 636 "../../../kg++fe/gnu/cp/parse.y"
    { assemble_asm ((yyvsp[(3) - (5)].ttype)); ;}
    break;

  case 21:
# 638 "../../../kg++fe/gnu/cp/parse.y"
    { pop_lang_context (); ;}
    break;

  case 22:
# 640 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines (); pop_lang_context (); ;}
    break;

  case 23:
# 642 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines (); pop_lang_context (); ;}
    break;

  case 24:
# 644 "../../../kg++fe/gnu/cp/parse.y"
    { push_namespace ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 25:
# 646 "../../../kg++fe/gnu/cp/parse.y"
    { pop_namespace (); ;}
    break;

  case 26:
# 648 "../../../kg++fe/gnu/cp/parse.y"
    { push_namespace ((tree) ((void *)0)); ;}
    break;

  case 27:
# 650 "../../../kg++fe/gnu/cp/parse.y"
    { pop_namespace (); ;}
    break;

  case 29:
# 653 "../../../kg++fe/gnu/cp/parse.y"
    { do_toplevel_using_decl ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 31:
# 656 "../../../kg++fe/gnu/cp/parse.y"
    { pedantic = (yyvsp[(1) - (2)].itype); ;}
    break;

  case 33:
# 659 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 34:
# 664 "../../../kg++fe/gnu/cp/parse.y"
    { begin_only_namespace_names (); ;}
    break;

  case 35:
# 666 "../../../kg++fe/gnu/cp/parse.y"
    {
    end_only_namespace_names ();
    if (lastiddecl)
      (yyvsp[(5) - (6)].ttype) = lastiddecl;
    do_namespace_alias ((yyvsp[(2) - (6)].ttype), (yyvsp[(5) - (6)].ttype));
  ;}
    break;

  case 36:
# 676 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 37:
# 678 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype); ;}
    break;

  case 38:
# 680 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype); ;}
    break;

  case 39:
# 685 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 40:
# 687 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (SCOPE_REF, global_namespace, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 41:
# 689 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(3) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 42:
# 694 "../../../kg++fe/gnu/cp/parse.y"
    { begin_only_namespace_names (); ;}
    break;

  case 43:
# 696 "../../../kg++fe/gnu/cp/parse.y"
    {
    end_only_namespace_names ();



    if (((enum tree_code) ((yyvsp[(4) - (4)].ttype))->common.code) == IDENTIFIER_NODE && lastiddecl)
      (yyvsp[(4) - (4)].ttype) = lastiddecl;
    do_using_directive ((yyvsp[(4) - (4)].ttype));
  ;}
    break;

  case 45:
# 710 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyval.ttype))->common.code) == IDENTIFIER_NODE)
      (yyval.ttype) = lastiddecl;
    got_scope = (yyval.ttype);
  ;}
    break;

  case 46:
# 716 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = (yyvsp[(2) - (3)].ttype);
    if (((enum tree_code) ((yyval.ttype))->common.code) == IDENTIFIER_NODE)
      (yyval.ttype) = lastiddecl;
    got_scope = (yyval.ttype);
  ;}
    break;

  case 49:
# 728 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 50:
# 730 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 51:
# 735 "../../../kg++fe/gnu/cp/parse.y"
    { push_lang_context ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 52:
# 737 "../../../kg++fe/gnu/cp/parse.y"
    { if (scope_chain->lang_name != (yyvsp[(2) - (2)].ttype))
      error ("use of linkage spec `%D' is different from previous spec `%D'", (yyvsp[(2) - (2)].ttype), scope_chain->lang_name);
    pop_lang_context (); push_lang_context ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 53:
# 744 "../../../kg++fe/gnu/cp/parse.y"
    { begin_template_parm_list (); ;}
    break;

  case 54:
# 746 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = end_template_parm_list ((yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 55:
# 751 "../../../kg++fe/gnu/cp/parse.y"
    { begin_specialization();
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 58:
# 762 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = process_template_parm ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 59:
# 764 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = process_template_parm ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 60:
# 769 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 61:
# 771 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 62:
# 776 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_template_type_parm ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 63:
# 778 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_template_type_parm (cp_global_trees[CPTI_CLASS_TYPE], (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 64:
# 783 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_template_template_parm ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 65:
# 795 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 66:
# 797 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list (groktypename ((yyvsp[(3) - (3)].ftype).t), (yyvsp[(1) - (3)].ttype)); ;}
    break;

  case 67:
# 799 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ftype).t); ;}
    break;

  case 68:
# 801 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ftype).t); ;}
    break;

  case 69:
# 803 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 70:
# 805 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyvsp[(3) - (3)].ttype) = check_template_template_default_arg ((yyvsp[(3) - (3)].ttype));
    (yyval.ttype) = build_tree_list ((yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ttype));
  ;}
    break;

  case 71:
# 813 "../../../kg++fe/gnu/cp/parse.y"
    { finish_template_decl ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 72:
# 815 "../../../kg++fe/gnu/cp/parse.y"
    { finish_template_decl ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 73:
# 820 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 74:
# 822 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 75:
# 824 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines (); ;}
    break;

  case 76:
# 826 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines ();
    pop_lang_context (); ;}
    break;

  case 77:
# 829 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_inlines ();
    pop_lang_context (); ;}
    break;

  case 78:
# 832 "../../../kg++fe/gnu/cp/parse.y"
    { pedantic = (yyvsp[(1) - (2)].itype); ;}
    break;

  case 80:
# 838 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 81:
# 840 "../../../kg++fe/gnu/cp/parse.y"
    { note_list_got_semicolon ((yyvsp[(1) - (3)].ftype).t); ;}
    break;

  case 82:
# 842 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((yyvsp[(1) - (2)].ftype).t != global_trees[TI_ERROR_MARK])
                    {
        maybe_process_partial_specialization ((yyvsp[(1) - (2)].ftype).t);
        note_got_semicolon ((yyvsp[(1) - (2)].ftype).t);
             }
                ;}
    break;

  case 84:
# 854 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 85:
# 856 "../../../kg++fe/gnu/cp/parse.y"
    { note_list_got_semicolon ((yyvsp[(1) - (3)].ftype).t); ;}
    break;

  case 86:
# 858 "../../../kg++fe/gnu/cp/parse.y"
    { pedwarn ("empty declaration"); ;}
    break;

  case 88:
# 861 "../../../kg++fe/gnu/cp/parse.y"
    {
    tree t, attrs;
    split_specs_attrs ((yyvsp[(1) - (2)].ftype).t, &t, &attrs);
    shadow_tag (t);
    note_list_got_semicolon ((yyvsp[(1) - (2)].ftype).t);
  ;}
    break;

  case 91:
# 870 "../../../kg++fe/gnu/cp/parse.y"
    { end_input (); ;}
    break;

  case 101:
# 896 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_compound_stmt ( 1); ;}
    break;

  case 102:
# 898 "../../../kg++fe/gnu/cp/parse.y"
    {
    (((((yyvsp[(5) - (6)].ttype)))->exp.complexity)) = (yyvsp[(3) - (6)].itype);
    finish_compound_stmt ( 1, (yyvsp[(5) - (6)].ttype));
    finish_function_body ((yyvsp[(1) - (6)].ttype));
  ;}
    break;

  case 103:
# 907 "../../../kg++fe/gnu/cp/parse.y"
    { expand_body (finish_function (0)); ;}
    break;

  case 104:
# 909 "../../../kg++fe/gnu/cp/parse.y"
    { expand_body (finish_function (0)); ;}
    break;

  case 105:
# 911 "../../../kg++fe/gnu/cp/parse.y"
    { ;}
    break;

  case 106:
# 916 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 107:
# 918 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(4) - (8)].ttype), (yyvsp[(5) - (8)].ttype), (yyvsp[(7) - (8)].ttype), (yyvsp[(8) - (8)].ttype)); ;}
    break;

  case 108:
# 920 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[(1) - (5)].ttype), (yyvsp[(2) - (5)].ttype));
    (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[(4) - (5)].ttype), (yyvsp[(5) - (5)].ttype));
  ;}
    break;

  case 109:
# 924 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 110:
# 926 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(5) - (9)].ttype), (yyvsp[(6) - (9)].ttype), (yyvsp[(8) - (9)].ttype), (yyvsp[(9) - (9)].ttype)); ;}
    break;

  case 111:
# 928 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[(2) - (6)].ttype), (yyvsp[(3) - (6)].ttype));
    (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype));
  ;}
    break;

  case 112:
# 932 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 113:
# 934 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(4) - (8)].ttype), (yyvsp[(5) - (8)].ttype), (yyvsp[(7) - (8)].ttype), (yyvsp[(8) - (8)].ttype)); ;}
    break;

  case 114:
# 936 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[(1) - (5)].ttype), (yyvsp[(2) - (5)].ttype));
    (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[(4) - (5)].ttype), (yyvsp[(5) - (5)].ttype));
  ;}
    break;

  case 115:
# 940 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 116:
# 942 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(5) - (9)].ttype), (yyvsp[(6) - (9)].ttype), (yyvsp[(8) - (9)].ttype), (yyvsp[(9) - (9)].ttype)); ;}
    break;

  case 117:
# 944 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_constructor_declarator ((yyvsp[(2) - (6)].ttype), (yyvsp[(3) - (6)].ttype));
    (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype));
  ;}
    break;

  case 118:
# 951 "../../../kg++fe/gnu/cp/parse.y"
    { check_for_new_type ("return type", (yyvsp[(1) - (2)].ftype));
    if (!parse_begin_function_definition ((yyvsp[(1) - (2)].ftype).t, (yyvsp[(2) - (2)].ttype)))
      { yyerror ("syntax error"); goto yyerrorlab; }; ;}
    break;

  case 119:
# 955 "../../../kg++fe/gnu/cp/parse.y"
    { if (!parse_begin_function_definition ((yyvsp[(1) - (2)].ftype).t, (yyvsp[(2) - (2)].ttype)))
      { yyerror ("syntax error"); goto yyerrorlab; }; ;}
    break;

  case 120:
# 958 "../../../kg++fe/gnu/cp/parse.y"
    { if (!parse_begin_function_definition ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype)))
      { yyerror ("syntax error"); goto yyerrorlab; }; ;}
    break;

  case 121:
# 961 "../../../kg++fe/gnu/cp/parse.y"
    { if (!parse_begin_function_definition ((yyvsp[(1) - (2)].ftype).t, (yyvsp[(2) - (2)].ttype)))
      { yyerror ("syntax error"); goto yyerrorlab; }; ;}
    break;

  case 122:
# 964 "../../../kg++fe/gnu/cp/parse.y"
    { if (!parse_begin_function_definition ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype)))
      { yyerror ("syntax error"); goto yyerrorlab; }; ;}
    break;

  case 123:
# 973 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(1) - (6)].ttype), (yyvsp[(3) - (6)].ttype), (yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype)); ;}
    break;

  case 124:
# 976 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(2) - (8)].ttype), (yyvsp[(5) - (8)].ttype), (yyvsp[(7) - (8)].ttype), (yyvsp[(8) - (8)].ttype)); ;}
    break;

  case 125:
# 978 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(1) - (4)].ttype), empty_parms (), (yyvsp[(3) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 126:
# 980 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(2) - (6)].ttype), empty_parms (), (yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype)); ;}
    break;

  case 127:
# 982 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(1) - (6)].ttype), (yyvsp[(3) - (6)].ttype), (yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype)); ;}
    break;

  case 128:
# 984 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyvsp[(1) - (4)].ttype), empty_parms (), (yyvsp[(3) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 129:
# 991 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ftype).t, (yyvsp[(1) - (2)].ftype).lookups);
   rest_of_mdef:
    if (! (yyval.ttype))
      { yyerror ("syntax error"); goto yyerrorlab; };
    if (yychar == (-2))
      yychar = yylex ();
    snarf_method ((yyval.ttype)); ;}
    break;

  case 130:
# 999 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0), (tree) ((void *)0));
    goto rest_of_mdef; ;}
    break;

  case 131:
# 1002 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ftype).t, (yyvsp[(1) - (2)].ftype).lookups); goto rest_of_mdef;;}
    break;

  case 132:
# 1004 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ftype).t, (yyvsp[(1) - (2)].ftype).lookups); goto rest_of_mdef;;}
    break;

  case 133:
# 1006 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0), (tree) ((void *)0));
    goto rest_of_mdef; ;}
    break;

  case 134:
# 1009 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ftype).t, (yyvsp[(1) - (2)].ftype).lookups); goto rest_of_mdef;;}
    break;

  case 135:
# 1011 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_method ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0), (tree) ((void *)0));
    goto rest_of_mdef; ;}
    break;

  case 136:
# 1017 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
  ;}
    break;

  case 137:
# 1024 "../../../kg++fe/gnu/cp/parse.y"
    { finish_named_return_value ((yyval.ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 138:
# 1026 "../../../kg++fe/gnu/cp/parse.y"
    { finish_named_return_value ((yyval.ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 139:
# 1028 "../../../kg++fe/gnu/cp/parse.y"
    { finish_named_return_value ((yyval.ttype), (tree) ((void *)0)); ;}
    break;

  case 140:
# 1032 "../../../kg++fe/gnu/cp/parse.y"
    { begin_mem_initializers (); ;}
    break;

  case 141:
# 1033 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((yyvsp[(3) - (3)].ftype).new_type_flag == 0)
      error ("no base or member initializers given following ':'");
    finish_mem_initializers ((yyvsp[(3) - (3)].ftype).t);
  ;}
    break;

  case 142:
# 1042 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = begin_function_body ();
  ;}
    break;

  case 143:
# 1049 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ftype).new_type_flag = 0;
    (yyval.ftype).t = (tree) ((void *)0);
  ;}
    break;

  case 144:
# 1054 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ftype).new_type_flag = 1;
    (yyval.ftype).t = (yyvsp[(1) - (1)].ttype);
  ;}
    break;

  case 145:
# 1059 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((yyvsp[(3) - (3)].ttype))
      {
        (yyval.ftype).new_type_flag = 1;
        (((yyvsp[(3) - (3)].ttype))->common.chain) = (yyvsp[(1) - (3)].ftype).t;
        (yyval.ftype).t = (yyvsp[(3) - (3)].ttype);
      }
    else
      (yyval.ftype) = (yyvsp[(1) - (3)].ftype);
  ;}
    break;

  case 147:
# 1074 "../../../kg++fe/gnu/cp/parse.y"
    {
     if (scope_chain->class_name)
      pedwarn ("anachronistic old style base class initializer");
    (yyval.ttype) = expand_member_init ((tree) ((void *)0));
    (cfun->language)->in_base_initializer = (yyval.ttype) && !(tree_code_type[(int) (((enum tree_code) ((yyval.ttype))->common.code))] == 'd');
  ;}
    break;

  case 148:
# 1081 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = expand_member_init ((yyvsp[(1) - (1)].ttype));
    (cfun->language)->in_base_initializer = (yyval.ttype) && !(tree_code_type[(int) (((enum tree_code) ((yyval.ttype))->common.code))] == 'd'); ;}
    break;

  case 149:
# 1084 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = expand_member_init ((yyvsp[(1) - (1)].ttype));
    (cfun->language)->in_base_initializer = (yyval.ttype) && !(tree_code_type[(int) (((enum tree_code) ((yyval.ttype))->common.code))] == 'd'); ;}
    break;

  case 150:
# 1087 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = expand_member_init ((yyvsp[(1) - (1)].ttype));
    (cfun->language)->in_base_initializer = (yyval.ttype) && !(tree_code_type[(int) (((enum tree_code) ((yyval.ttype))->common.code))] == 'd'); ;}
    break;

  case 151:
# 1093 "../../../kg++fe/gnu/cp/parse.y"
    { (cfun->language)->in_base_initializer = 0;
    (yyval.ttype) = (yyvsp[(1) - (4)].ttype) ? build_tree_list ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)) : (tree) ((void *)0); ;}
    break;

  case 152:
# 1096 "../../../kg++fe/gnu/cp/parse.y"
    { (cfun->language)->in_base_initializer = 0;
    (yyval.ttype) = (yyvsp[(1) - (2)].ttype) ? build_tree_list ((yyvsp[(1) - (2)].ttype), global_trees[TI_VOID_TYPE]) : (tree) ((void *)0); ;}
    break;

  case 153:
# 1099 "../../../kg++fe/gnu/cp/parse.y"
    { (cfun->language)->in_base_initializer = 0;
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 165:
# 1125 "../../../kg++fe/gnu/cp/parse.y"
    { do_type_instantiation ((yyvsp[(3) - (4)].ftype).t, (tree) ((void *)0), 1);
    yyungetc (';', 1); ;}
    break;

  case 167:
# 1129 "../../../kg++fe/gnu/cp/parse.y"
    { tree specs = strip_attrs ((yyvsp[(3) - (4)].ftype).t);
    parse_decl_instantiation (specs, (yyvsp[(4) - (4)].ttype), (tree) ((void *)0)); ;}
    break;

  case 169:
# 1133 "../../../kg++fe/gnu/cp/parse.y"
    { parse_decl_instantiation ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 171:
# 1136 "../../../kg++fe/gnu/cp/parse.y"
    { parse_decl_instantiation ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 173:
# 1139 "../../../kg++fe/gnu/cp/parse.y"
    { do_type_instantiation ((yyvsp[(4) - (5)].ftype).t, (yyvsp[(1) - (5)].ttype), 1);
    yyungetc (';', 1); ;}
    break;

  case 174:
# 1142 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 175:
# 1145 "../../../kg++fe/gnu/cp/parse.y"
    { tree specs = strip_attrs ((yyvsp[(4) - (5)].ftype).t);
    parse_decl_instantiation (specs, (yyvsp[(5) - (5)].ttype), (yyvsp[(1) - (5)].ttype)); ;}
    break;

  case 176:
# 1148 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 177:
# 1150 "../../../kg++fe/gnu/cp/parse.y"
    { parse_decl_instantiation ((tree) ((void *)0), (yyvsp[(4) - (4)].ttype), (yyvsp[(1) - (4)].ttype)); ;}
    break;

  case 178:
# 1152 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 179:
# 1154 "../../../kg++fe/gnu/cp/parse.y"
    { parse_decl_instantiation ((tree) ((void *)0), (yyvsp[(4) - (4)].ttype), (yyvsp[(1) - (4)].ttype)); ;}
    break;

  case 180:
# 1156 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 181:
# 1160 "../../../kg++fe/gnu/cp/parse.y"
    { begin_explicit_instantiation(); ;}
    break;

  case 182:
# 1164 "../../../kg++fe/gnu/cp/parse.y"
    { end_explicit_instantiation(); ;}
    break;

  case 183:
# 1174 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(5) - (5)].ttype); ;}
    break;

  case 184:
# 1177 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(5) - (5)].ttype); ;}
    break;

  case 187:
# 1185 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(5) - (5)].ttype); ;}
    break;

  case 188:
# 1191 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(5) - (5)].ttype); ;}
    break;

  case 189:
# 1195 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (yychar == (-2))
      yychar = yylex ();

    (yyval.ttype) = finish_template_type ((yyvsp[(-3) - (0)].ttype), (yyvsp[(-1) - (0)].ttype),
          yychar == 345);
  ;}
    break;

  case 191:
# 1207 "../../../kg++fe/gnu/cp/parse.y"
    {

    pedwarn ("`>>' should be `> >' in template class name");
    yyungetc ('>', 1);
  ;}
    break;

  case 192:
# 1216 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 194:
# 1222 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyval.ttype)); ;}
    break;

  case 195:
# 1224 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 196:
# 1228 "../../../kg++fe/gnu/cp/parse.y"
    { ++class_template_ok_as_expr; ;}
    break;

  case 197:
# 1230 "../../../kg++fe/gnu/cp/parse.y"
    {
    --class_template_ok_as_expr;
    (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
  ;}
    break;

  case 198:
# 1238 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = groktypename ((yyvsp[(1) - (1)].ftype).t); ;}
    break;

  case 199:
# 1240 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = lastiddecl;
    if ((((enum tree_code) ((yyval.ttype))->common.code) == TEMPLATE_DECL && ((((yyval.ttype))->decl.lang_flag_0) && (((enum tree_code) ((yyval.ttype))->common.code) == CONST_DECL || ((enum tree_code) ((yyval.ttype))->common.code) == PARM_DECL || ((enum tree_code) ((yyval.ttype))->common.code) == TYPE_DECL || ((enum tree_code) ((yyval.ttype))->common.code) == TEMPLATE_DECL))))
      (yyval.ttype) = (((yyval.ttype))->common.type);
  ;}
    break;

  case 200:
# 1246 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = lastiddecl;
    if ((((enum tree_code) ((yyval.ttype))->common.code) == TEMPLATE_DECL && ((((yyval.ttype))->decl.lang_flag_0) && (((enum tree_code) ((yyval.ttype))->common.code) == CONST_DECL || ((enum tree_code) ((yyval.ttype))->common.code) == PARM_DECL || ((enum tree_code) ((yyval.ttype))->common.code) == TYPE_DECL || ((enum tree_code) ((yyval.ttype))->common.code) == TEMPLATE_DECL))))
      (yyval.ttype) = (((yyval.ttype))->common.type);
  ;}
    break;

  case 202:
# 1253 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (!scope_chain->x_processing_template_decl)
      {
        error ("use of template qualifier outside template");
        (yyval.ttype) = global_trees[TI_ERROR_MARK];
      }
    else
      (yyval.ttype) = make_unbound_class_template ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), tf_error | tf_parsing);
  ;}
    break;

  case 203:
# 1266 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.code) = NEGATE_EXPR; ;}
    break;

  case 204:
# 1268 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.code) = CONVERT_EXPR; ;}
    break;

  case 205:
# 1270 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.code) = PREINCREMENT_EXPR; ;}
    break;

  case 206:
# 1272 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.code) = PREDECREMENT_EXPR; ;}
    break;

  case 207:
# 1274 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.code) = TRUTH_NOT_EXPR; ;}
    break;

  case 208:
# 1279 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_compound_expr ((yyval.ttype)); ;}
    break;

  case 210:
# 1285 "../../../kg++fe/gnu/cp/parse.y"
    { error ("ISO C++ forbids an empty condition for `%s'",
    cond_stmt_keyword);
    (yyval.ttype) = global_trees[TI_INTEGER_ZERO]; ;}
    break;

  case 211:
# 1289 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 212:
# 1294 "../../../kg++fe/gnu/cp/parse.y"
    { error ("ISO C++ forbids an empty condition for `%s'",
    cond_stmt_keyword);
    (yyval.ttype) = global_trees[TI_INTEGER_ZERO]; ;}
    break;

  case 213:
# 1298 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 214:
# 1303 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 216:
# 1306 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 217:
# 1311 "../../../kg++fe/gnu/cp/parse.y"
    { {
    tree d;
    for (d = getdecls (); d; d = ((d)->common.chain))
      if (((enum tree_code) (d)->common.code) == TYPE_DECL) {
        tree s = ((d)->common.type);
        if (((enum tree_code) (s)->common.code) == RECORD_TYPE)
   error ("definition of class `%T' in condition", s);
        else if (((enum tree_code) (s)->common.code) == ENUMERAL_TYPE)
   error ("definition of enum `%T' in condition", s);
      }
    }
    current_declspecs = (yyvsp[(1) - (5)].ftype).t;
    (yyval.ttype) = parse_decl ((yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype), 1);
  ;}
    break;

  case 218:
# 1326 "../../../kg++fe/gnu/cp/parse.y"
    {
    parse_end_decl ((yyvsp[(6) - (7)].ttype), (yyvsp[(7) - (7)].ttype), (yyvsp[(4) - (7)].ttype));
    (yyval.ttype) = convert_from_reference ((yyvsp[(6) - (7)].ttype));
    if (((enum tree_code) ((((yyval.ttype))->common.type))->common.code) == ARRAY_TYPE)
      error ("definition of array `%#D' in condition", (yyval.ttype));
  ;}
    break;

  case 224:
# 1344 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyval.ttype),
                    build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 225:
# 1347 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyval.ttype),
                    build_tree_list ((tree) ((void *)0), global_trees[TI_ERROR_MARK])); ;}
    break;

  case 226:
# 1350 "../../../kg++fe/gnu/cp/parse.y"
    { chainon ((yyval.ttype), build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 227:
# 1352 "../../../kg++fe/gnu/cp/parse.y"
    { chainon ((yyval.ttype), build_tree_list ((tree) ((void *)0), global_trees[TI_ERROR_MARK])); ;}
    break;

  case 228:
# 1357 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyval.ttype)); ;}
    break;

  case 230:
# 1363 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 231:
# 1366 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
    pedantic = (yyvsp[(1) - (2)].itype); ;}
    break;

  case 232:
# 1369 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_indirect_ref ((yyvsp[(2) - (2)].ttype), "unary *"); ;}
    break;

  case 233:
# 1371 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_unary_op (ADDR_EXPR, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 234:
# 1373 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_unary_op (BIT_NOT_EXPR, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 235:
# 1375 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_unary_op_expr ((yyvsp[(1) - (2)].code), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 236:
# 1378 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_label_address_expr ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 237:
# 1380 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_sizeof ((yyvsp[(2) - (2)].ttype));
    skip_evaluation--; ;}
    break;

  case 238:
# 1383 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_sizeof (groktypename ((yyvsp[(3) - (4)].ftype).t));
    check_for_new_type ("sizeof", (yyvsp[(3) - (4)].ftype));
    skip_evaluation--; ;}
    break;

  case 239:
# 1387 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_alignof ((yyvsp[(2) - (2)].ttype));
    skip_evaluation--; ;}
    break;

  case 240:
# 1390 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_alignof (groktypename ((yyvsp[(3) - (4)].ftype).t));
    check_for_new_type ("alignof", (yyvsp[(3) - (4)].ftype));
    skip_evaluation--; ;}
    break;

  case 241:
# 1397 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_new ((tree) ((void *)0), (yyvsp[(2) - (2)].ftype).t, (tree) ((void *)0), (yyvsp[(1) - (2)].itype));
    check_for_new_type ("new", (yyvsp[(2) - (2)].ftype)); ;}
    break;

  case 242:
# 1400 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_new ((tree) ((void *)0), (yyvsp[(2) - (3)].ftype).t, (yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].itype));
    check_for_new_type ("new", (yyvsp[(2) - (3)].ftype)); ;}
    break;

  case 243:
# 1403 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_new ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ftype).t, (tree) ((void *)0), (yyvsp[(1) - (3)].itype));
    check_for_new_type ("new", (yyvsp[(3) - (3)].ftype)); ;}
    break;

  case 244:
# 1406 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_new ((yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ftype).t, (yyvsp[(4) - (4)].ttype), (yyvsp[(1) - (4)].itype));
    check_for_new_type ("new", (yyvsp[(3) - (4)].ftype)); ;}
    break;

  case 245:
# 1410 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_new ((tree) ((void *)0), groktypename((yyvsp[(3) - (4)].ftype).t),
      (tree) ((void *)0), (yyvsp[(1) - (4)].itype));
    check_for_new_type ("new", (yyvsp[(3) - (4)].ftype)); ;}
    break;

  case 246:
# 1414 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_new ((tree) ((void *)0), groktypename((yyvsp[(3) - (5)].ftype).t), (yyvsp[(5) - (5)].ttype), (yyvsp[(1) - (5)].itype));
    check_for_new_type ("new", (yyvsp[(3) - (5)].ftype)); ;}
    break;

  case 247:
# 1417 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_new ((yyvsp[(2) - (5)].ttype), groktypename((yyvsp[(4) - (5)].ftype).t), (tree) ((void *)0), (yyvsp[(1) - (5)].itype));
    check_for_new_type ("new", (yyvsp[(4) - (5)].ftype)); ;}
    break;

  case 248:
# 1420 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_new ((yyvsp[(2) - (6)].ttype), groktypename((yyvsp[(4) - (6)].ftype).t), (yyvsp[(6) - (6)].ttype), (yyvsp[(1) - (6)].itype));
    check_for_new_type ("new", (yyvsp[(4) - (6)].ftype)); ;}
    break;

  case 249:
# 1424 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = delete_sanity ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), 0, (yyvsp[(1) - (2)].itype)); ;}
    break;

  case 250:
# 1426 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = delete_sanity ((yyvsp[(4) - (4)].ttype), (tree) ((void *)0), 1, (yyvsp[(1) - (4)].itype));
    if (yychar == (-2))
      yychar = yylex (); ;}
    break;

  case 251:
# 1430 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = delete_sanity ((yyvsp[(5) - (5)].ttype), (yyvsp[(3) - (5)].ttype), 2, (yyvsp[(1) - (5)].itype));
    if (yychar == (-2))
      yychar = yylex (); ;}
    break;

  case 252:
# 1434 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_unary_op (REALPART_EXPR, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 253:
# 1436 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_unary_op (IMAGPART_EXPR, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 254:
# 1441 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 255:
# 1443 "../../../kg++fe/gnu/cp/parse.y"
    { pedwarn ("old style placement syntax, use () instead");
    (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 256:
# 1449 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 257:
# 1451 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = c_global_trees[CTI_VOID_ZERO]; ;}
    break;

  case 258:
# 1453 "../../../kg++fe/gnu/cp/parse.y"
    {
    error ("`%T' is not a valid expression", (yyvsp[(2) - (3)].ftype).t);
    (yyval.ttype) = global_trees[TI_ERROR_MARK];
  ;}
    break;

  case 259:
# 1458 "../../../kg++fe/gnu/cp/parse.y"
    {


    error ("initialization of new expression with `='");
    (yyval.ttype) = global_trees[TI_ERROR_MARK];
  ;}
    break;

  case 260:
# 1469 "../../../kg++fe/gnu/cp/parse.y"
    { (yyvsp[(2) - (3)].ftype).t = finish_parmlist (build_tree_list ((tree) ((void *)0), (yyvsp[(2) - (3)].ftype).t), 0);
    (yyval.ttype) = make_call_declarator ((tree) ((void *)0), (yyvsp[(2) - (3)].ftype).t, (tree) ((void *)0), (tree) ((void *)0));
    check_for_new_type ("cast", (yyvsp[(2) - (3)].ftype)); ;}
    break;

  case 261:
# 1473 "../../../kg++fe/gnu/cp/parse.y"
    { (yyvsp[(3) - (4)].ftype).t = finish_parmlist (build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (4)].ftype).t), 0);
    (yyval.ttype) = make_call_declarator ((yyval.ttype), (yyvsp[(3) - (4)].ftype).t, (tree) ((void *)0), (tree) ((void *)0));
    check_for_new_type ("cast", (yyvsp[(3) - (4)].ftype)); ;}
    break;

  case 263:
# 1481 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = reparse_absdcl_as_casts ((yyval.ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 264:
# 1483 "../../../kg++fe/gnu/cp/parse.y"
    {
    tree init = build_nt (CONSTRUCTOR, (tree) ((void *)0),
     nreverse ((yyvsp[(3) - (5)].ttype)));
    if (pedantic)
      pedwarn ("ISO C++ forbids compound literals");

    (((init)->common.lang_flag_4)) = 1;

    (yyval.ttype) = reparse_absdcl_as_casts ((yyval.ttype), init);
  ;}
    break;

  case 266:
# 1499 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op (MEMBER_REF, (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 267:
# 1501 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_m_component_ref ((yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 268:
# 1503 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 269:
# 1505 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 270:
# 1507 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 271:
# 1509 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 272:
# 1511 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 273:
# 1513 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 274:
# 1515 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 275:
# 1517 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 276:
# 1519 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op (LT_EXPR, (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 277:
# 1521 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op (GT_EXPR, (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 278:
# 1523 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 279:
# 1525 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 280:
# 1527 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 281:
# 1529 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 282:
# 1531 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 283:
# 1533 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op (TRUTH_ANDIF_EXPR, (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 284:
# 1535 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op (TRUTH_ORIF_EXPR, (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 285:
# 1537 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_conditional_expr ((yyval.ttype), (yyvsp[(3) - (5)].ttype), (yyvsp[(5) - (5)].ttype)); ;}
    break;

  case 286:
# 1539 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_modify_expr ((yyval.ttype), NOP_EXPR, (yyvsp[(3) - (3)].ttype));
    if ((yyval.ttype) != global_trees[TI_ERROR_MARK])
                    ((((yyval.ttype))->exp.complexity) = (int)(MODIFY_EXPR)); ;}
    break;

  case 287:
# 1543 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_modify_expr ((yyval.ttype), (yyvsp[(2) - (3)].code), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 288:
# 1545 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_throw ((tree) ((void *)0)); ;}
    break;

  case 289:
# 1547 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_throw ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 291:
# 1554 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op (MEMBER_REF, (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 292:
# 1556 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_m_component_ref ((yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 293:
# 1558 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 294:
# 1560 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 295:
# 1562 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 296:
# 1564 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 297:
# 1566 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 298:
# 1568 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 299:
# 1570 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 300:
# 1572 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 301:
# 1574 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op (LT_EXPR, (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 302:
# 1576 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 303:
# 1578 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 304:
# 1580 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 305:
# 1582 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 306:
# 1584 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op ((yyvsp[(2) - (3)].code), (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 307:
# 1586 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op (TRUTH_ANDIF_EXPR, (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 308:
# 1588 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_binary_op (TRUTH_ORIF_EXPR, (yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 309:
# 1590 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_conditional_expr ((yyval.ttype), (yyvsp[(3) - (5)].ttype), (yyvsp[(5) - (5)].ttype)); ;}
    break;

  case 310:
# 1592 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_modify_expr ((yyval.ttype), NOP_EXPR, (yyvsp[(3) - (3)].ttype));
    if ((yyval.ttype) != global_trees[TI_ERROR_MARK])
                    ((((yyval.ttype))->exp.complexity) = (int)(MODIFY_EXPR)); ;}
    break;

  case 311:
# 1596 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_modify_expr ((yyval.ttype), (yyvsp[(2) - (3)].code), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 312:
# 1598 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_throw ((tree) ((void *)0)); ;}
    break;

  case 313:
# 1600 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_throw ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 314:
# 1605 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (BIT_NOT_EXPR, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 315:
# 1607 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (BIT_NOT_EXPR, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 321:
# 1616 "../../../kg++fe/gnu/cp/parse.y"
    {




           if (!lastiddecl || !(((enum tree_code) (lastiddecl)->common.code) == BASELINK))
      (yyval.ttype) = do_identifier ((yyvsp[(-1) - (0)].ttype), 3, (tree) ((void *)0));
    else
      (yyval.ttype) = (yyvsp[(-1) - (0)].ttype);
  ;}
    break;

  case 322:
# 1630 "../../../kg++fe/gnu/cp/parse.y"
    {
    tree template_name = (yyvsp[(3) - (5)].ttype);
    if (((enum tree_code) (template_name)->common.code) == COMPONENT_REF)
      template_name = ((template_name)->exp.operands[1]);
    (yyval.ttype) = lookup_template_function (template_name, (yyvsp[(4) - (5)].ttype));
  ;}
    break;

  case 323:
# 1637 "../../../kg++fe/gnu/cp/parse.y"
    {
    tree template_name = (yyvsp[(3) - (5)].ttype);
    if (((enum tree_code) (template_name)->common.code) == COMPONENT_REF)
      template_name = ((template_name)->exp.operands[1]);
    (yyval.ttype) = lookup_template_function (template_name, (yyvsp[(4) - (5)].ttype));
  ;}
    break;

  case 324:
# 1647 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 325:
# 1649 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 326:
# 1652 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 331:
# 1664 "../../../kg++fe/gnu/cp/parse.y"
    {


    (yyval.ttype) = tree_cons ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype), (tree) ((void *)0));
  ;}
    break;

  case 333:
# 1674 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (INDIRECT_REF, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 334:
# 1676 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ADDR_EXPR, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 335:
# 1678 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 336:
# 1683 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 337:
# 1685 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = lookup_template_function ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 341:
# 1695 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_decl_parsing ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 342:
# 1700 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyvsp[(1) - (1)].ttype))->common.code) == BIT_NOT_EXPR)
      (yyval.ttype) = build_x_unary_op (BIT_NOT_EXPR, (((yyvsp[(1) - (1)].ttype))->exp.operands[0]));
    else
      (yyval.ttype) = finish_id_expr ((yyvsp[(1) - (1)].ttype));
  ;}
    break;

  case 345:
# 1709 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = fix_string_type ((yyval.ttype));


    if (flag_const_strings)
      (((yyval.ttype))->common.type) = build_cplus_array_type
        ((((((yyval.ttype))->common.type))->common.type),
         (((((yyval.ttype))->common.type))->type.values));
  ;}
    break;

  case 346:
# 1719 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_fname ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 347:
# 1721 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_parenthesized_expr ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 348:
# 1723 "../../../kg++fe/gnu/cp/parse.y"
    { (yyvsp[(2) - (3)].ttype) = reparse_decl_as_expr ((tree) ((void *)0), (yyvsp[(2) - (3)].ttype));
    (yyval.ttype) = finish_parenthesized_expr ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 349:
# 1726 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = global_trees[TI_ERROR_MARK]; ;}
    break;

  case 350:
# 1728 "../../../kg++fe/gnu/cp/parse.y"
    { if (!at_function_scope_p ())
      {
        error ("braced-group within expression allowed only inside a function");
        goto yyerrorlab;
      }
    if (pedantic)
      pedwarn ("ISO C++ forbids braced-groups within expressions");
    (yyval.ttype) = begin_stmt_expr ();
  ;}
    break;

  case 351:
# 1738 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_stmt_expr ((yyvsp[(2) - (4)].ttype)); ;}
    break;

  case 352:
# 1743 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype), 1); ;}
    break;

  case 353:
# 1745 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[(1) - (2)].ttype), (tree) ((void *)0), 1); ;}
    break;

  case 354:
# 1747 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype), 0); ;}
    break;

  case 355:
# 1749 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[(1) - (2)].ttype), (tree) ((void *)0), 0); ;}
    break;

  case 356:
# 1751 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_x_va_arg ((yyvsp[(3) - (6)].ttype), groktypename ((yyvsp[(5) - (6)].ftype).t));
    check_for_new_type ("__builtin_va_arg", (yyvsp[(5) - (6)].ftype)); ;}
    break;

  case 357:
# 1754 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 358:
# 1756 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = grok_array_decl ((yyval.ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 359:
# 1758 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_increment_expr ((yyvsp[(1) - (2)].ttype), POSTINCREMENT_EXPR); ;}
    break;

  case 360:
# 1760 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_increment_expr ((yyvsp[(1) - (2)].ttype), POSTDECREMENT_EXPR); ;}
    break;

  case 361:
# 1763 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_this_expr (); ;}
    break;

  case 362:
# 1765 "../../../kg++fe/gnu/cp/parse.y"
    {



    tree type;

    type = hash_tree_cons ((tree) ((void *)0), (yyvsp[(1) - (4)].ttype), (tree) ((void *)0));
    type = groktypename (build_tree_list (type, (tree) ((void *)0)));
    (yyval.ttype) = build_functional_cast (type, (yyvsp[(3) - (4)].ttype));
  ;}
    break;

  case 364:
# 1777 "../../../kg++fe/gnu/cp/parse.y"
    { tree type = groktypename ((yyvsp[(3) - (7)].ftype).t);
    check_for_new_type ("dynamic_cast", (yyvsp[(3) - (7)].ftype));
    (yyval.ttype) = build_dynamic_cast (type, (yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 365:
# 1781 "../../../kg++fe/gnu/cp/parse.y"
    { tree type = groktypename ((yyvsp[(3) - (7)].ftype).t);
    check_for_new_type ("static_cast", (yyvsp[(3) - (7)].ftype));
    (yyval.ttype) = build_static_cast (type, (yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 366:
# 1785 "../../../kg++fe/gnu/cp/parse.y"
    { tree type = groktypename ((yyvsp[(3) - (7)].ftype).t);
    check_for_new_type ("reinterpret_cast", (yyvsp[(3) - (7)].ftype));
    (yyval.ttype) = build_reinterpret_cast (type, (yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 367:
# 1789 "../../../kg++fe/gnu/cp/parse.y"
    { tree type = groktypename ((yyvsp[(3) - (7)].ftype).t);
    check_for_new_type ("const_cast", (yyvsp[(3) - (7)].ftype));
    (yyval.ttype) = build_const_cast (type, (yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 368:
# 1793 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_typeid ((yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 369:
# 1795 "../../../kg++fe/gnu/cp/parse.y"
    { tree type = groktypename ((yyvsp[(3) - (4)].ftype).t);
    check_for_new_type ("typeid", (yyvsp[(3) - (4)].ftype));
    (yyval.ttype) = get_typeid (type); ;}
    break;

  case 370:
# 1799 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_scoped_id ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 371:
# 1801 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 372:
# 1803 "../../../kg++fe/gnu/cp/parse.y"
    {
    got_scope = (tree) ((void *)0);
    if (((enum tree_code) ((yyvsp[(2) - (2)].ttype))->common.code) == IDENTIFIER_NODE)
      (yyval.ttype) = parse_scoped_id ((yyvsp[(2) - (2)].ttype));
    else
      (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
  ;}
    break;

  case 373:
# 1811 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_offset_ref (((((yyval.ttype))->exp.operands[0])), ((((yyval.ttype))->exp.operands[1])));
    if (!class_template_ok_as_expr
        && (((enum tree_code) ((yyval.ttype))->common.code) == TEMPLATE_DECL && ((enum tree_code) ((((yyval.ttype))->decl.result))->common.code) == TYPE_DECL && !(((enum tree_code) ((yyval.ttype))->common.code) == TEMPLATE_DECL && ((((yyval.ttype))->decl.lang_flag_0) && (((enum tree_code) ((yyval.ttype))->common.code) == CONST_DECL || ((enum tree_code) ((yyval.ttype))->common.code) == PARM_DECL || ((enum tree_code) ((yyval.ttype))->common.code) == TYPE_DECL || ((enum tree_code) ((yyval.ttype))->common.code) == TEMPLATE_DECL)))))
      {
        error ("invalid use of template `%D'", (yyval.ttype));
        (yyval.ttype) = global_trees[TI_ERROR_MARK];
      }
                ;}
    break;

  case 374:
# 1820 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype), 0); ;}
    break;

  case 375:
# 1822 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_finish_call_expr ((yyvsp[(1) - (2)].ttype), (tree) ((void *)0), 0); ;}
    break;

  case 376:
# 1824 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_class_member_access_expr ((yyval.ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 377:
# 1826 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_object_call_expr ((yyvsp[(2) - (5)].ttype), (yyvsp[(1) - (5)].ttype), (yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 378:
# 1828 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_object_call_expr ((yyvsp[(2) - (3)].ttype), (yyvsp[(1) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 379:
# 1830 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_class_member_access_expr ((yyval.ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 380:
# 1832 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_class_member_access_expr ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 381:
# 1834 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_object_call_expr ((yyvsp[(2) - (5)].ttype), (yyvsp[(1) - (5)].ttype), (yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 382:
# 1836 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_object_call_expr ((yyvsp[(2) - (3)].ttype), (yyvsp[(1) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 383:
# 1838 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_qualified_object_call_expr ((yyvsp[(2) - (5)].ttype), (yyvsp[(1) - (5)].ttype), (yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 384:
# 1840 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_qualified_object_call_expr ((yyvsp[(2) - (3)].ttype), (yyvsp[(1) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 385:
# 1843 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_pseudo_destructor_call_expr ((yyvsp[(1) - (4)].ttype), (tree) ((void *)0), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 386:
# 1845 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_pseudo_destructor_call_expr ((yyvsp[(1) - (6)].ttype), (yyvsp[(2) - (6)].ttype), (yyvsp[(5) - (6)].ttype)); ;}
    break;

  case 387:
# 1847 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = global_trees[TI_ERROR_MARK];
  ;}
    break;

  case 388:
# 1892 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.itype) = 0; ;}
    break;

  case 389:
# 1894 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (tree) ((void *)0); (yyval.itype) = 1; ;}
    break;

  case 390:
# 1899 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.itype) = 0; ;}
    break;

  case 391:
# 1901 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (tree) ((void *)0); (yyval.itype) = 1; ;}
    break;

  case 392:
# 1906 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = c_global_trees[CTI_BOOLEAN_TRUE]; ;}
    break;

  case 393:
# 1908 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = c_global_trees[CTI_BOOLEAN_FALSE]; ;}
    break;

  case 394:
# 1913 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((((current_function_decl)->decl.lang_specific)->decl_flags.constructor_attr))
      finish_mem_initializers ((tree) ((void *)0));
  ;}
    break;

  case 395:
# 1921 "../../../kg++fe/gnu/cp/parse.y"
    { got_object = (((yyval.ttype))->common.type); ;}
    break;

  case 396:
# 1923 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = build_x_arrow ((yyval.ttype));
    got_object = (((yyval.ttype))->common.type);
  ;}
    break;

  case 397:
# 1931 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((yyvsp[(1) - (3)].ftype).t && ((((enum tree_code) ((yyvsp[(1) - (3)].ftype).t)->common.code)) == RECORD_TYPE || (((enum tree_code) ((yyvsp[(1) - (3)].ftype).t)->common.code)) == UNION_TYPE))
      note_got_semicolon ((yyvsp[(1) - (3)].ftype).t);
  ;}
    break;

  case 398:
# 1936 "../../../kg++fe/gnu/cp/parse.y"
    {
    note_list_got_semicolon ((yyvsp[(1) - (3)].ftype).t);
  ;}
    break;

  case 399:
# 1940 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 400:
# 1942 "../../../kg++fe/gnu/cp/parse.y"
    {
    shadow_tag ((yyvsp[(1) - (2)].ftype).t);
    note_list_got_semicolon ((yyvsp[(1) - (2)].ftype).t);
  ;}
    break;

  case 401:
# 1947 "../../../kg++fe/gnu/cp/parse.y"
    { warning ("empty declaration"); ;}
    break;

  case 402:
# 1949 "../../../kg++fe/gnu/cp/parse.y"
    { pedantic = (yyvsp[(1) - (2)].itype); ;}
    break;

  case 405:
# 1963 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((tree) ((void *)0), empty_parms (),
          (tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 406:
# 1966 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (tree) ((void *)0),
          (tree) ((void *)0)); ;}
    break;

  case 407:
# 1973 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (2)].ftype).t, (yyvsp[(2) - (2)].ttype));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 408:
# 1976 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (2)].ftype).t, (yyvsp[(2) - (2)].ttype));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 409:
# 1979 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list (build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (2)].ftype).t),
       (yyvsp[(2) - (2)].ttype));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 410:
# 1983 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (1)].ftype).t, (tree) ((void *)0));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (1)].ftype).new_type_flag; ;}
    break;

  case 411:
# 1986 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (1)].ftype).t, (tree) ((void *)0));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (1)].ftype).new_type_flag; ;}
    break;

  case 412:
# 1997 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).lookups = scope_chain->lookups; ;}
    break;

  case 413:
# 1999 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).lookups = scope_chain->lookups; ;}
    break;

  case 414:
# 2004 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ftype).t, (yyvsp[(1) - (2)].ftype).t);
    (yyval.ftype).new_type_flag = (yyvsp[(2) - (2)].ftype).new_type_flag; ;}
    break;

  case 415:
# 2007 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = tree_cons ((tree) ((void *)0), (yyvsp[(1) - (2)].ftype).t, (yyvsp[(2) - (2)].ttype));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 416:
# 2010 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = tree_cons ((tree) ((void *)0), (yyvsp[(1) - (3)].ftype).t, chainon ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (3)].ftype).new_type_flag; ;}
    break;

  case 417:
# 2013 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (3)].ftype).t, chainon ((yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ftype).t));
    (yyval.ftype).new_type_flag = (yyvsp[(2) - (3)].ftype).new_type_flag; ;}
    break;

  case 418:
# 2016 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (3)].ftype).t, chainon ((yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ftype).t));
    (yyval.ftype).new_type_flag = (yyvsp[(2) - (3)].ftype).new_type_flag; ;}
    break;

  case 419:
# 2019 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (4)].ftype).t,
        chainon ((yyvsp[(3) - (4)].ttype), chainon ((yyvsp[(4) - (4)].ttype), (yyvsp[(1) - (4)].ftype).t)));
    (yyval.ftype).new_type_flag = (yyvsp[(2) - (4)].ftype).new_type_flag; ;}
    break;

  case 420:
# 2026 "../../../kg++fe/gnu/cp/parse.y"
    { if (extra_warnings)
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyval.ttype))->identifier.id.str));
    (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyval.ttype)); ;}
    break;

  case 421:
# 2031 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ftype).t, (yyval.ttype)); ;}
    break;

  case 422:
# 2033 "../../../kg++fe/gnu/cp/parse.y"
    { if (extra_warnings)
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyval.ttype)); ;}
    break;

  case 423:
# 2055 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).lookups = (tree) ((void *)0); (((yyval.ftype).t)->common.static_flag) = 1; ;}
    break;

  case 424:
# 2057 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ftype).t = hash_tree_cons ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype), (tree) ((void *)0));
    (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = (tree) ((void *)0);
  ;}
    break;

  case 425:
# 2062 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ftype).t = hash_tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ftype).t);
    (((yyval.ftype).t)->common.static_flag) = 1;
  ;}
    break;

  case 426:
# 2067 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (extra_warnings && (((yyval.ftype).t)->common.static_flag))
      warning ("`%s' is not at beginning of declaration",
        ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str));
    (yyval.ftype).t = hash_tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ftype).t);
    (((yyval.ftype).t)->common.static_flag) = (((yyvsp[(1) - (2)].ftype).t)->common.static_flag);
  ;}
    break;

  case 427:
# 2075 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = hash_tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ftype).t); ;}
    break;

  case 428:
# 2086 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ftype).t);
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (1)].ftype).new_type_flag; ;}
    break;

  case 429:
# 2089 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ftype).t, (yyvsp[(1) - (2)].ftype).t);
    (yyval.ftype).new_type_flag = (yyvsp[(2) - (2)].ftype).new_type_flag; ;}
    break;

  case 430:
# 2092 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = tree_cons ((tree) ((void *)0), (yyvsp[(1) - (2)].ftype).t, (yyvsp[(2) - (2)].ttype));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 431:
# 2095 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (3)].ftype).t, chainon ((yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ftype).t));
    (yyval.ftype).new_type_flag = (yyvsp[(2) - (3)].ftype).new_type_flag; ;}
    break;

  case 432:
# 2101 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ftype).t); ;}
    break;

  case 433:
# 2103 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ftype).t, (yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 434:
# 2105 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 435:
# 2107 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 436:
# 2111 "../../../kg++fe/gnu/cp/parse.y"
    { skip_evaluation++; ;}
    break;

  case 437:
# 2115 "../../../kg++fe/gnu/cp/parse.y"
    { skip_evaluation++; ;}
    break;

  case 438:
# 2119 "../../../kg++fe/gnu/cp/parse.y"
    { skip_evaluation++; ;}
    break;

  case 439:
# 2128 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).lookups = (tree) ((void *)0); ;}
    break;

  case 440:
# 2130 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = (yyvsp[(1) - (1)].ttype); (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = (tree) ((void *)0); ;}
    break;

  case 441:
# 2132 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = (yyvsp[(1) - (1)].ttype); (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = (tree) ((void *)0); ;}
    break;

  case 442:
# 2134 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = finish_typeof ((yyvsp[(3) - (4)].ttype));
    (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = (tree) ((void *)0);
    skip_evaluation--; ;}
    break;

  case 443:
# 2138 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = groktypename ((yyvsp[(3) - (4)].ftype).t);
    (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = (tree) ((void *)0);
    skip_evaluation--; ;}
    break;

  case 444:
# 2142 "../../../kg++fe/gnu/cp/parse.y"
    { tree type = (((yyvsp[(3) - (4)].ttype))->common.type);

                  (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = (tree) ((void *)0);
    if ((((enum tree_code) (type)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (type)->common.code) == TYPENAME_TYPE || ((enum tree_code) (type)->common.code) == TYPEOF_TYPE || ((enum tree_code) (type)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((type)->type.lang_flag_5)))
      {
        sorry ("sigof type specifier");
        (yyval.ftype).t = type;
      }
    else
      {
        error ("`sigof' applied to non-aggregate expression");
        (yyval.ftype).t = global_trees[TI_ERROR_MARK];
      }
  ;}
    break;

  case 445:
# 2157 "../../../kg++fe/gnu/cp/parse.y"
    { tree type = groktypename ((yyvsp[(3) - (4)].ftype).t);

                  (yyval.ftype).new_type_flag = 0; (yyval.ftype).lookups = (tree) ((void *)0);
    if ((((enum tree_code) (type)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (type)->common.code) == TYPENAME_TYPE || ((enum tree_code) (type)->common.code) == TYPEOF_TYPE || ((enum tree_code) (type)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((type)->type.lang_flag_5)))
      {
        sorry ("sigof type specifier");
        (yyval.ftype).t = type;
      }
    else
      {
        error("`sigof' applied to non-aggregate type");
        (yyval.ftype).t = global_trees[TI_ERROR_MARK];
      }
  ;}
    break;

  case 446:
# 2177 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = (yyvsp[(1) - (1)].ttype); (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 447:
# 2179 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = (yyvsp[(1) - (1)].ttype); (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 450:
# 2186 "../../../kg++fe/gnu/cp/parse.y"
    { check_multiple_declarators (); ;}
    break;

  case 452:
# 2192 "../../../kg++fe/gnu/cp/parse.y"
    { check_multiple_declarators (); ;}
    break;

  case 454:
# 2198 "../../../kg++fe/gnu/cp/parse.y"
    { check_multiple_declarators (); ;}
    break;

  case 455:
# 2203 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 456:
# 2205 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 457:
# 2210 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_decl ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype), 1); ;}
    break;

  case 458:
# 2213 "../../../kg++fe/gnu/cp/parse.y"
    { parse_end_decl ((yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype), (yyvsp[(2) - (6)].ttype)); ;}
    break;

  case 459:
# 2215 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = parse_decl ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), 0);
    parse_end_decl ((yyval.ttype), (tree) ((void *)0), (yyvsp[(2) - (3)].ttype));
  ;}
    break;

  case 460:
# 2229 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_decl0 ((yyvsp[(-1) - (2)].ttype), (yyvsp[(-2) - (2)].ftype).t,
        (yyvsp[(-2) - (2)].ftype).lookups, (yyvsp[(1) - (2)].ttype), 1); ;}
    break;

  case 461:
# 2234 "../../../kg++fe/gnu/cp/parse.y"
    { parse_end_decl ((yyvsp[(3) - (4)].ttype), (yyvsp[(4) - (4)].ttype), (yyvsp[(0) - (4)].ttype)); ;}
    break;

  case 462:
# 2236 "../../../kg++fe/gnu/cp/parse.y"
    { tree d = parse_decl0 ((yyvsp[(-1) - (1)].ttype), (yyvsp[(-2) - (1)].ftype).t,
     (yyvsp[(-2) - (1)].ftype).lookups, (yyvsp[(1) - (1)].ttype), 0);
    parse_end_decl (d, (tree) ((void *)0), (yyvsp[(0) - (1)].ttype)); ;}
    break;

  case 463:
# 2243 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 464:
# 2248 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 465:
# 2253 "../../../kg++fe/gnu/cp/parse.y"
    {
       (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
       (yyvsp[(2) - (2)].ttype) = (yyvsp[(1) - (2)].ttype);
              (yyvsp[(1) - (2)].ftype).t = (tree) ((void *)0);
       (yyvsp[(1) - (2)].ftype).lookups = (tree) ((void *)0); ;}
    break;

  case 466:
# 2259 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 467:
# 2261 "../../../kg++fe/gnu/cp/parse.y"
    { tree d = parse_decl0 ((yyvsp[(1) - (3)].ttype), (tree) ((void *)0), (tree) ((void *)0), (yyvsp[(3) - (3)].ttype), 0);
    parse_end_decl (d, (tree) ((void *)0), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 468:
# 2269 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 469:
# 2271 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 470:
# 2276 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 471:
# 2278 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 472:
# 2283 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(4) - (6)].ttype); ;}
    break;

  case 473:
# 2288 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 474:
# 2290 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 475:
# 2295 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 476:
# 2297 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0)); ;}
    break;

  case 477:
# 2299 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (4)].ttype), build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (4)].ttype))); ;}
    break;

  case 478:
# 2301 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (6)].ttype), tree_cons ((tree) ((void *)0), (yyvsp[(3) - (6)].ttype), (yyvsp[(5) - (6)].ttype))); ;}
    break;

  case 479:
# 2303 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 484:
# 2319 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 485:
# 2321 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), build_tree_list ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype))); ;}
    break;

  case 486:
# 2326 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 487:
# 2328 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 489:
# 2337 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (CONSTRUCTOR, (tree) ((void *)0), (tree) ((void *)0));
    ((((yyval.ttype))->common.lang_flag_4)) = 1; ;}
    break;

  case 490:
# 2340 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (CONSTRUCTOR, (tree) ((void *)0), nreverse ((yyvsp[(2) - (3)].ttype)));
    ((((yyval.ttype))->common.lang_flag_4)) = 1; ;}
    break;

  case 491:
# 2343 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (CONSTRUCTOR, (tree) ((void *)0), nreverse ((yyvsp[(2) - (4)].ttype)));
    ((((yyval.ttype))->common.lang_flag_4)) = 1; ;}
    break;

  case 492:
# 2346 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 493:
# 2353 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyval.ttype)); ;}
    break;

  case 494:
# 2355 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype), (yyval.ttype)); ;}
    break;

  case 495:
# 2358 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(2) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 496:
# 2360 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 497:
# 2362 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((yyvsp[(3) - (5)].ttype), (yyvsp[(5) - (5)].ttype), (yyval.ttype)); ;}
    break;

  case 498:
# 2367 "../../../kg++fe/gnu/cp/parse.y"
    {
    expand_body (finish_function (2));
    process_next_inline ((yyvsp[(1) - (3)].pi));
  ;}
    break;

  case 499:
# 2372 "../../../kg++fe/gnu/cp/parse.y"
    {
    expand_body (finish_function (2));
                  process_next_inline ((yyvsp[(1) - (3)].pi));
  ;}
    break;

  case 500:
# 2377 "../../../kg++fe/gnu/cp/parse.y"
    {
    finish_function (2);
    process_next_inline ((yyvsp[(1) - (3)].pi)); ;}
    break;

  case 503:
# 2391 "../../../kg++fe/gnu/cp/parse.y"
    { replace_defarg ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 504:
# 2393 "../../../kg++fe/gnu/cp/parse.y"
    { replace_defarg ((yyvsp[(1) - (3)].ttype), global_trees[TI_ERROR_MARK]); ;}
    break;

  case 506:
# 2399 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_defargs (); ;}
    break;

  case 507:
# 2401 "../../../kg++fe/gnu/cp/parse.y"
    { do_pending_defargs (); ;}
    break;

  case 508:
# 2406 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = current_enum_type;
    current_enum_type = start_enum ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 509:
# 2409 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = current_enum_type;
    finish_enum (current_enum_type);
    (yyval.ftype).new_type_flag = 1;
    current_enum_type = (yyvsp[(4) - (6)].ttype);
    check_for_missing_semicolon ((yyval.ftype).t); ;}
    break;

  case 510:
# 2415 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = current_enum_type;
    current_enum_type = start_enum (make_anon_name ()); ;}
    break;

  case 511:
# 2418 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = current_enum_type;
    finish_enum (current_enum_type);
    (yyval.ftype).new_type_flag = 1;
    current_enum_type = (yyvsp[(3) - (5)].ttype);
    check_for_missing_semicolon ((yyval.ftype).t); ;}
    break;

  case 512:
# 2424 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = parse_xref_tag (cp_global_trees[CPTI_ENUM_TYPE], (yyvsp[(2) - (2)].ttype), 1);
    (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 513:
# 2427 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = parse_xref_tag (cp_global_trees[CPTI_ENUM_TYPE], (yyvsp[(2) - (2)].ttype), 1);
    (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 514:
# 2430 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = (yyvsp[(2) - (2)].ttype);
    (yyval.ftype).new_type_flag = 0;
    if (!scope_chain->x_processing_template_decl)
      pedwarn ("using `typename' outside of template"); ;}
    break;

  case 515:
# 2436 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((yyvsp[(2) - (3)].ttype) && (yyvsp[(1) - (3)].ftype).t != global_trees[TI_ERROR_MARK])
      {
        tree type = (((yyvsp[(1) - (3)].ftype).t)->common.type);

        if (((enum tree_code) (type)->common.code) == TYPENAME_TYPE)
   {
     if ((((enum tree_code) (type)->common.code) == TYPENAME_TYPE && ((type)->common.type)))



       type = ((type)->common.type);
     else
       {
         error ("qualified name does not name a class");
         type = global_trees[TI_ERROR_MARK];
       }
   }
        maybe_process_partial_specialization (type);
        xref_basetypes (type, (yyvsp[(2) - (3)].ttype));
      }
    (yyvsp[(1) - (3)].ftype).t = begin_class_definition ((((yyvsp[(1) - (3)].ftype).t)->common.type));
    check_class_key (cp_global_trees[CPTI_AGGR_TAG], (yyvsp[(1) - (3)].ftype).t);
                  cp_global_trees[CPTI_AGGR_TAG] = (tree) ((void *)0); ;}
    break;

  case 516:
# 2461 "../../../kg++fe/gnu/cp/parse.y"
    {
    int semi;
    tree t;

    if (yychar == (-2))
      yychar = yylex ();
    semi = yychar == ';';

    t = finish_class_definition ((yyvsp[(1) - (7)].ftype).t, (yyvsp[(7) - (7)].ttype), semi, (yyvsp[(1) - (7)].ftype).new_type_flag);
    (yyval.ttype) = t;


    cp_global_trees[CPTI_AGGR_TAG] = ((enum tree_code) (t)->common.code) != RECORD_TYPE
     ? cp_global_trees[CPTI_UNION_TYPE]
     : ((&((t)->type.lang_specific)->u.c)->declared_class)
     ? cp_global_trees[CPTI_CLASS_TYPE] : cp_global_trees[CPTI_RECORD_TYPE];
  ;}
    break;

  case 517:
# 2479 "../../../kg++fe/gnu/cp/parse.y"
    {
    done_pending_defargs ();
    begin_inline_definitions ();
  ;}
    break;

  case 518:
# 2484 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ftype).t = (yyvsp[(8) - (11)].ttype);
    (yyval.ftype).new_type_flag = 1;
  ;}
    break;

  case 519:
# 2489 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ftype).t = (((yyvsp[(1) - (1)].ftype).t)->common.type);
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (1)].ftype).new_type_flag;
    check_class_key (cp_global_trees[CPTI_AGGR_TAG], (yyval.ftype).t);
  ;}
    break;

  case 523:
# 2504 "../../../kg++fe/gnu/cp/parse.y"
    { if (pedantic && !in_system_header)
      pedwarn ("comma at end of enumerator list"); ;}
    break;

  case 525:
# 2511 "../../../kg++fe/gnu/cp/parse.y"
    { error ("storage class specifier `%s' not allowed after struct or class", ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str)); ;}
    break;

  case 526:
# 2513 "../../../kg++fe/gnu/cp/parse.y"
    { error ("type specifier `%s' not allowed after struct or class", ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str)); ;}
    break;

  case 527:
# 2515 "../../../kg++fe/gnu/cp/parse.y"
    { error ("type qualifier `%s' not allowed after struct or class", ((char *)((yyvsp[(2) - (2)].ttype))->identifier.id.str)); ;}
    break;

  case 528:
# 2517 "../../../kg++fe/gnu/cp/parse.y"
    { error ("no body nor ';' separates two class, struct or union declarations"); ;}
    break;

  case 529:
# 2519 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 530:
# 2524 "../../../kg++fe/gnu/cp/parse.y"
    {
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (2)].ttype);
    (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype));
  ;}
    break;

  case 531:
# 2529 "../../../kg++fe/gnu/cp/parse.y"
    {
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (3)].ttype);
    (yyval.ttype) = build_tree_list ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype));
  ;}
    break;

  case 532:
# 2534 "../../../kg++fe/gnu/cp/parse.y"
    {
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (4)].ttype);
    (yyval.ttype) = build_tree_list ((yyvsp[(3) - (4)].ttype), (yyvsp[(4) - (4)].ttype));
  ;}
    break;

  case 533:
# 2539 "../../../kg++fe/gnu/cp/parse.y"
    {
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (3)].ttype);
    (yyval.ttype) = build_tree_list (global_namespace, (yyvsp[(3) - (3)].ttype));
  ;}
    break;

  case 534:
# 2547 "../../../kg++fe/gnu/cp/parse.y"
    {
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (2)].ttype);
    (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
  ;}
    break;

  case 535:
# 2552 "../../../kg++fe/gnu/cp/parse.y"
    {
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (3)].ttype);
    (yyval.ttype) = (yyvsp[(3) - (3)].ttype);
  ;}
    break;

  case 536:
# 2557 "../../../kg++fe/gnu/cp/parse.y"
    {
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (4)].ttype);
    (yyval.ttype) = (yyvsp[(4) - (4)].ttype);
  ;}
    break;

  case 537:
# 2565 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ftype).t = parse_handle_class_head (cp_global_trees[CPTI_AGGR_TAG],
        (((yyvsp[(1) - (1)].ttype))->list.purpose),
        (((yyvsp[(1) - (1)].ttype))->list.value),
        0, &(yyval.ftype).new_type_flag);
  ;}
    break;

  case 538:
# 2572 "../../../kg++fe/gnu/cp/parse.y"
    {
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (2)].ttype);
    (yyval.ftype).t = (((((parse_xref_tag (cp_global_trees[CPTI_AGGR_TAG], (yyvsp[(2) - (2)].ttype), 0))->type.main_variant))->common.chain));
    (yyval.ftype).new_type_flag = 1;
  ;}
    break;

  case 539:
# 2578 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ftype).t = (yyvsp[(1) - (1)].ttype);
    (yyval.ftype).new_type_flag = 0;
  ;}
    break;

  case 540:
# 2586 "../../../kg++fe/gnu/cp/parse.y"
    {
    yyungetc ('{', 1);
    (yyval.ftype).t = parse_handle_class_head (cp_global_trees[CPTI_AGGR_TAG],
        (((yyvsp[(1) - (2)].ttype))->list.purpose),
        (((yyvsp[(1) - (2)].ttype))->list.value),
        1,
        &(yyval.ftype).new_type_flag);
  ;}
    break;

  case 541:
# 2595 "../../../kg++fe/gnu/cp/parse.y"
    {
    yyungetc (':', 1);
    (yyval.ftype).t = parse_handle_class_head (cp_global_trees[CPTI_AGGR_TAG],
        (((yyvsp[(1) - (2)].ttype))->list.purpose),
        (((yyvsp[(1) - (2)].ttype))->list.value),
        1, &(yyval.ftype).new_type_flag);
  ;}
    break;

  case 542:
# 2603 "../../../kg++fe/gnu/cp/parse.y"
    {
    yyungetc ('{', 1);
    (yyval.ftype).t = handle_class_head_apparent_template
      ((yyvsp[(1) - (2)].ttype), &(yyval.ftype).new_type_flag);
  ;}
    break;

  case 543:
# 2609 "../../../kg++fe/gnu/cp/parse.y"
    {
    yyungetc (':', 1);
    (yyval.ftype).t = handle_class_head_apparent_template
      ((yyvsp[(1) - (2)].ttype), &(yyval.ftype).new_type_flag);
  ;}
    break;

  case 544:
# 2615 "../../../kg++fe/gnu/cp/parse.y"
    {
    yyungetc ('{', 1);
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (3)].ttype);
    (yyval.ftype).t = parse_handle_class_head (cp_global_trees[CPTI_AGGR_TAG],
        (tree) ((void *)0), (yyvsp[(2) - (3)].ttype),
        1, &(yyval.ftype).new_type_flag);
  ;}
    break;

  case 545:
# 2623 "../../../kg++fe/gnu/cp/parse.y"
    {
    yyungetc (':', 1);
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (3)].ttype);
    (yyval.ftype).t = parse_handle_class_head (cp_global_trees[CPTI_AGGR_TAG],
        (tree) ((void *)0), (yyvsp[(2) - (3)].ttype),
        1, &(yyval.ftype).new_type_flag);
  ;}
    break;

  case 546:
# 2631 "../../../kg++fe/gnu/cp/parse.y"
    {
    cp_global_trees[CPTI_AGGR_TAG] = (yyvsp[(1) - (2)].ttype);
    (yyval.ftype).t = (((((parse_xref_tag ((yyvsp[(1) - (2)].ttype), make_anon_name (), 0))->type.main_variant))->common.chain));


    (yyval.ftype).new_type_flag = 0;
    ((&(((((yyval.ftype).t)->common.type))->type.lang_specific)->u.c)->declared_class)
      = (yyvsp[(1) - (2)].ttype) == cp_global_trees[CPTI_CLASS_TYPE];
    yyungetc ('{', 1);
  ;}
    break;

  case 547:
# 2645 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 548:
# 2647 "../../../kg++fe/gnu/cp/parse.y"
    { error ("no bases given following `:'");
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 549:
# 2650 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype); ;}
    break;

  case 551:
# 2656 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 552:
# 2661 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_base_specifier (cp_global_trees[CPTI_ACCESS_DEFAULT], (yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 553:
# 2663 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_base_specifier ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 554:
# 2668 "../../../kg++fe/gnu/cp/parse.y"
    { if (!(tree_code_type[(int) (((enum tree_code) ((yyval.ttype))->common.code))] == 't'))
      (yyval.ttype) = global_trees[TI_ERROR_MARK]; ;}
    break;

  case 555:
# 2671 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (((yyval.ttype))->common.type); ;}
    break;

  case 557:
# 2677 "../../../kg++fe/gnu/cp/parse.y"
    { if ((yyvsp[(1) - (2)].ttype) != ridpointers[(int)RID_VIRTUAL])
      error ("`%D' access", (yyvsp[(1) - (2)].ttype));
    (yyval.ttype) = cp_global_trees[CPTI_ACCESS_DEFAULT_VIRTUAL]; ;}
    break;

  case 558:
# 2681 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((yyvsp[(1) - (3)].ttype) != cp_global_trees[CPTI_ACCESS_DEFAULT_VIRTUAL])
      error ("multiple access specifiers");
    else if ((yyvsp[(2) - (3)].ttype) == cp_global_trees[CPTI_ACCESS_PUBLIC])
      (yyval.ttype) = cp_global_trees[CPTI_ACCESS_PUBLIC_VIRTUAL];
    else if ((yyvsp[(2) - (3)].ttype) == cp_global_trees[CPTI_ACCESS_PROTECTED])
      (yyval.ttype) = cp_global_trees[CPTI_ACCESS_PROTECTED_VIRTUAL];
    else
      (yyval.ttype) = cp_global_trees[CPTI_ACCESS_PRIVATE_VIRTUAL];
  ;}
    break;

  case 559:
# 2692 "../../../kg++fe/gnu/cp/parse.y"
    { if ((yyvsp[(2) - (3)].ttype) != ridpointers[(int)RID_VIRTUAL])
      error ("`%D' access", (yyvsp[(2) - (3)].ttype));
    else if ((yyval.ttype) == cp_global_trees[CPTI_ACCESS_PUBLIC])
      (yyval.ttype) = cp_global_trees[CPTI_ACCESS_PUBLIC_VIRTUAL];
    else if ((yyval.ttype) == cp_global_trees[CPTI_ACCESS_PROTECTED])
      (yyval.ttype) = cp_global_trees[CPTI_ACCESS_PROTECTED_VIRTUAL];
    else if ((yyval.ttype) == cp_global_trees[CPTI_ACCESS_PRIVATE])
      (yyval.ttype) = cp_global_trees[CPTI_ACCESS_PRIVATE_VIRTUAL];
    else
      error ("multiple `virtual' specifiers");
  ;}
    break;

  case 564:
# 2713 "../../../kg++fe/gnu/cp/parse.y"
    {
    scope_chain->access_specifier = (yyvsp[(1) - (2)].ttype);
                ;}
    break;

  case 565:
# 2722 "../../../kg++fe/gnu/cp/parse.y"
    {
    finish_member_declaration ((yyvsp[(1) - (1)].ttype));
    cp_global_trees[CPTI_AGGR_TAG] = (tree) ((void *)0);
    reset_type_access_control ();
  ;}
    break;

  case 566:
# 2728 "../../../kg++fe/gnu/cp/parse.y"
    {
    finish_member_declaration ((yyvsp[(2) - (2)].ttype));
    cp_global_trees[CPTI_AGGR_TAG] = (tree) ((void *)0);
    reset_type_access_control ();
  ;}
    break;

  case 568:
# 2738 "../../../kg++fe/gnu/cp/parse.y"
    { error ("missing ';' before right brace");
    yyungetc ('}', 0); ;}
    break;

  case 569:
# 2743 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_method ((yyval.ttype)); ;}
    break;

  case 570:
# 2745 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_method ((yyval.ttype)); ;}
    break;

  case 571:
# 2747 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_method ((yyval.ttype)); ;}
    break;

  case 572:
# 2749 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_method ((yyval.ttype)); ;}
    break;

  case 573:
# 2751 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 574:
# 2753 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
    pedantic = (yyvsp[(1) - (2)].itype); ;}
    break;

  case 575:
# 2756 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((yyvsp[(2) - (2)].ttype))
      (yyval.ttype) = finish_member_template_decl ((yyvsp[(2) - (2)].ttype));
    else

      (yyval.ttype) = (tree) ((void *)0);

    finish_template_decl ((yyvsp[(1) - (2)].ttype));
  ;}
    break;

  case 576:
# 2766 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = finish_member_class_template ((yyvsp[(2) - (3)].ftype).t);
    finish_template_decl ((yyvsp[(1) - (3)].ttype));
  ;}
    break;

  case 577:
# 2771 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 578:
# 2779 "../../../kg++fe/gnu/cp/parse.y"
    {
# 2795 "../../../kg++fe/gnu/cp/parse.y"
    if (!(yyvsp[(2) - (2)].itype))
      grok_x_components ((yyvsp[(1) - (2)].ftype).t);
    (yyval.ttype) = (tree) ((void *)0);
  ;}
    break;

  case 579:
# 2800 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (!(yyvsp[(2) - (2)].itype))
      grok_x_components ((yyvsp[(1) - (2)].ftype).t);
    (yyval.ttype) = (tree) ((void *)0);
  ;}
    break;

  case 580:
# 2806 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = grokfield ((yyval.ttype), (tree) ((void *)0), (yyvsp[(4) - (4)].ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 581:
# 2808 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = grokfield ((yyval.ttype), (tree) ((void *)0), (yyvsp[(4) - (4)].ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 582:
# 2810 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = grokbitfield ((tree) ((void *)0), (tree) ((void *)0), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 583:
# 2812 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 584:
# 2823 "../../../kg++fe/gnu/cp/parse.y"
    { tree specs, attrs;
    split_specs_attrs ((yyvsp[(1) - (5)].ftype).t, &specs, &attrs);
    (yyval.ttype) = grokfield ((yyvsp[(2) - (5)].ttype), specs, (yyvsp[(5) - (5)].ttype), (yyvsp[(3) - (5)].ttype),
      chainon ((yyvsp[(4) - (5)].ttype), attrs)); ;}
    break;

  case 585:
# 2828 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = grokfield ((yyval.ttype), (tree) ((void *)0), (yyvsp[(4) - (4)].ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 586:
# 2830 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = do_class_using_decl ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 587:
# 2837 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.itype) = 0; ;}
    break;

  case 588:
# 2839 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((scope_chain->x_processing_template_decl > template_class_depth (current_scope ())))
      (yyvsp[(1) - (1)].ttype) = finish_member_template_decl ((yyvsp[(1) - (1)].ttype));
    finish_member_declaration ((yyvsp[(1) - (1)].ttype));
    (yyval.itype) = 1;
  ;}
    break;

  case 589:
# 2846 "../../../kg++fe/gnu/cp/parse.y"
    {
    check_multiple_declarators ();
    if ((scope_chain->x_processing_template_decl > template_class_depth (current_scope ())))
      (yyvsp[(3) - (3)].ttype) = finish_member_template_decl ((yyvsp[(3) - (3)].ttype));
    finish_member_declaration ((yyvsp[(3) - (3)].ttype));
    (yyval.itype) = 2;
  ;}
    break;

  case 590:
# 2857 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.itype) = 0; ;}
    break;

  case 591:
# 2859 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((scope_chain->x_processing_template_decl > template_class_depth (current_scope ())))
      (yyvsp[(1) - (1)].ttype) = finish_member_template_decl ((yyvsp[(1) - (1)].ttype));
    finish_member_declaration ((yyvsp[(1) - (1)].ttype));
    (yyval.itype) = 1;
  ;}
    break;

  case 592:
# 2866 "../../../kg++fe/gnu/cp/parse.y"
    {
    check_multiple_declarators ();
    if ((scope_chain->x_processing_template_decl > template_class_depth (current_scope ())))
      (yyvsp[(3) - (3)].ttype) = finish_member_template_decl ((yyvsp[(3) - (3)].ttype));
    finish_member_declaration ((yyvsp[(3) - (3)].ttype));
    (yyval.itype) = 2;
  ;}
    break;

  case 597:
# 2887 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_field0 ((yyvsp[(1) - (4)].ttype), (yyvsp[(0) - (4)].ftype).t, (yyvsp[(0) - (4)].ftype).lookups,
         (yyvsp[(3) - (4)].ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 598:
# 2890 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_bitfield0 ((yyvsp[(1) - (4)].ttype), (yyvsp[(0) - (4)].ftype).t, (yyvsp[(0) - (4)].ftype).lookups,
     (yyvsp[(4) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 599:
# 2896 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_field0 ((yyvsp[(1) - (4)].ttype), (yyvsp[(0) - (4)].ftype).t, (yyvsp[(0) - (4)].ftype).lookups,
         (yyvsp[(3) - (4)].ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 600:
# 2899 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_field0 ((yyvsp[(1) - (4)].ttype), (yyvsp[(0) - (4)].ftype).t, (yyvsp[(0) - (4)].ftype).lookups,
         (yyvsp[(3) - (4)].ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 601:
# 2902 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_bitfield0 ((yyvsp[(1) - (4)].ttype), (yyvsp[(0) - (4)].ftype).t, (yyvsp[(0) - (4)].ftype).lookups,
     (yyvsp[(4) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 602:
# 2905 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_bitfield0 ((tree) ((void *)0), (yyvsp[(0) - (3)].ftype).t,
     (yyvsp[(0) - (3)].ftype).lookups, (yyvsp[(3) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 603:
# 2911 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_field ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 604:
# 2913 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_bitfield ((yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 605:
# 2918 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_field ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 606:
# 2920 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_bitfield ((yyvsp[(1) - (4)].ttype), (yyvsp[(4) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 607:
# 2922 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = parse_bitfield ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 612:
# 2941 "../../../kg++fe/gnu/cp/parse.y"
    { build_enumerator ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0), current_enum_type); ;}
    break;

  case 613:
# 2943 "../../../kg++fe/gnu/cp/parse.y"
    { build_enumerator ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), current_enum_type); ;}
    break;

  case 614:
# 2949 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (2)].ftype).t, (yyvsp[(2) - (2)].ttype));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 615:
# 2952 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (1)].ftype).t, (tree) ((void *)0));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (1)].ftype).new_type_flag; ;}
    break;

  case 616:
# 2957 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (pedantic)
      pedwarn ("ISO C++ forbids array dimensions with parenthesized type in new");
    (yyval.ftype).t = build_nt (ARRAY_REF, (((yyvsp[(2) - (6)].ftype).t)->list.value), (yyvsp[(5) - (6)].ttype));
    (yyval.ftype).t = build_tree_list ((((yyvsp[(2) - (6)].ftype).t)->list.purpose), (yyval.ftype).t);
    (yyval.ftype).new_type_flag = (yyvsp[(2) - (6)].ftype).new_type_flag;
  ;}
    break;

  case 617:
# 2968 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 618:
# 2970 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyval.ttype)); ;}
    break;

  case 619:
# 2975 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = hash_tree_cons ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype), (tree) ((void *)0));
    (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 620:
# 2978 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = hash_tree_cons ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ftype).t);
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 621:
# 2981 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = hash_tree_cons ((yyvsp[(1) - (1)].ttype), (tree) ((void *)0), (tree) ((void *)0));
    (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 622:
# 2984 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = hash_tree_cons ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0), (yyvsp[(1) - (2)].ftype).t);
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 623:
# 2994 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 624:
# 2996 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 625:
# 2998 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = empty_parms (); ;}
    break;

  case 626:
# 3000 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 628:
# 3008 "../../../kg++fe/gnu/cp/parse.y"
    {


    (yyval.ttype) = tree_cons ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype), (tree) ((void *)0));
  ;}
    break;

  case 629:
# 3018 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ftype).t, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 630:
# 3020 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[(2) - (3)].ftype).t, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 631:
# 3022 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 632:
# 3024 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 633:
# 3026 "../../../kg++fe/gnu/cp/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype));
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (3)].ttype), arg);
  ;}
    break;

  case 635:
# 3034 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 636:
# 3036 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 637:
# 3038 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (tree) ((void *)0)); ;}
    break;

  case 638:
# 3040 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 639:
# 3042 "../../../kg++fe/gnu/cp/parse.y"
    { push_nested_class ((yyvsp[(1) - (2)].ttype), 3);
    (yyval.ttype) = build_nt (SCOPE_REF, (yyval.ttype), (yyvsp[(2) - (2)].ttype));
    (((yyval.ttype))->exp.complexity) = current_class_depth; ;}
    break;

  case 641:
# 3050 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyvsp[(1) - (1)].ttype))->common.code) == IDENTIFIER_NODE)
      {
        (yyval.ttype) = lookup_name ((yyvsp[(1) - (1)].ttype), 1);
        maybe_note_name_used_in_class ((yyvsp[(1) - (1)].ttype), (yyval.ttype));
      }
    else
      (yyval.ttype) = (yyvsp[(1) - (1)].ttype);
  ;}
    break;

  case 642:
# 3060 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyvsp[(2) - (2)].ttype))->common.code) == IDENTIFIER_NODE)
      (yyval.ttype) = namespace_binding (((yyvsp[(2) - (2)].ttype)), global_namespace);
    else
      (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
    got_scope = (tree) ((void *)0);
  ;}
    break;

  case 645:
# 3073 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 646:
# 3078 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = get_type_decl ((yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 648:
# 3087 "../../../kg++fe/gnu/cp/parse.y"
    {


    (yyval.ttype) = tree_cons ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype), (tree) ((void *)0));
  ;}
    break;

  case 649:
# 3096 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ftype).t, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 650:
# 3098 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[(2) - (3)].ftype).t, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 651:
# 3100 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 652:
# 3102 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 653:
# 3104 "../../../kg++fe/gnu/cp/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype));
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (3)].ttype), arg);
  ;}
    break;

  case 655:
# 3112 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ftype).t, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 656:
# 3114 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[(2) - (3)].ftype).t, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 657:
# 3116 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 658:
# 3118 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 659:
# 3120 "../../../kg++fe/gnu/cp/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype));
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (3)].ttype), arg);
  ;}
    break;

  case 661:
# 3128 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), (yyvsp[(2) - (4)].ttype), (yyvsp[(3) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 662:
# 3130 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 663:
# 3132 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 664:
# 3134 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (tree) ((void *)0)); ;}
    break;

  case 665:
# 3136 "../../../kg++fe/gnu/cp/parse.y"
    { enter_scope_of ((yyvsp[(1) - (1)].ttype)); ;}
    break;

  case 666:
# 3138 "../../../kg++fe/gnu/cp/parse.y"
    { enter_scope_of ((yyvsp[(2) - (2)].ttype)); (yyval.ttype) = (yyvsp[(2) - (2)].ttype);;}
    break;

  case 667:
# 3140 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (SCOPE_REF, global_namespace, (yyvsp[(2) - (2)].ttype));
    enter_scope_of ((yyval.ttype));
  ;}
    break;

  case 668:
# 3144 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (tree) ((void *)0);
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype));
    enter_scope_of ((yyval.ttype));
  ;}
    break;

  case 669:
# 3152 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (tree) ((void *)0);
    (yyval.ttype) = build_nt (SCOPE_REF, (yyval.ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 670:
# 3155 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (tree) ((void *)0);
     (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 671:
# 3161 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (tree) ((void *)0);
    (yyval.ttype) = build_nt (SCOPE_REF, (yyval.ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 672:
# 3164 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (tree) ((void *)0);
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 674:
# 3171 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 675:
# 3176 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_functional_cast ((yyvsp[(1) - (4)].ftype).t, (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 676:
# 3178 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = reparse_decl_as_expr ((yyvsp[(1) - (4)].ftype).t, (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 677:
# 3180 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = reparse_absdcl_as_expr ((yyvsp[(1) - (2)].ftype).t, (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 682:
# 3192 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 683:
# 3194 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (yyval.ttype)
      = make_typename_type ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype), tf_error | tf_parsing); ;}
    break;

  case 684:
# 3198 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (yyval.ttype)
      = make_typename_type ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].ttype), tf_error | tf_parsing); ;}
    break;

  case 685:
# 3201 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (yyval.ttype)
      = make_typename_type ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].ttype), tf_error | tf_parsing); ;}
    break;

  case 686:
# 3209 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyvsp[(1) - (2)].ttype))->common.code) == IDENTIFIER_NODE)
      {
        (yyval.ttype) = lastiddecl;
        maybe_note_name_used_in_class ((yyvsp[(1) - (2)].ttype), (yyval.ttype));
      }
    got_scope = (yyval.ttype) =
      complete_type ((((((yyval.ttype))->common.type))->type.main_variant));
  ;}
    break;

  case 687:
# 3219 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyvsp[(1) - (2)].ttype))->common.code) == IDENTIFIER_NODE)
      (yyval.ttype) = lastiddecl;
    got_scope = (yyval.ttype) = (((yyval.ttype))->common.type);
  ;}
    break;

  case 688:
# 3225 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyval.ttype))->common.code) == IDENTIFIER_NODE)
      (yyval.ttype) = lastiddecl;
    got_scope = (yyval.ttype);
  ;}
    break;

  case 689:
# 3231 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (yyval.ttype) = complete_type ((((yyvsp[(1) - (2)].ttype))->common.type)); ;}
    break;

  case 691:
# 3237 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 692:
# 3242 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((tree_code_type[(int) (((enum tree_code) ((yyvsp[(1) - (2)].ttype))->common.code))] == 't'))
      (yyval.ttype) = make_typename_type ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype), tf_error | tf_parsing);
    else if (((enum tree_code) ((yyvsp[(2) - (2)].ttype))->common.code) == IDENTIFIER_NODE)
      error ("`%T' is not a class or namespace", (yyvsp[(2) - (2)].ttype));
    else
      {
        (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
        if (((enum tree_code) ((yyval.ttype))->common.code) == TYPE_DECL)
   (yyval.ttype) = (((yyval.ttype))->common.type);
      }
  ;}
    break;

  case 693:
# 3255 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (((yyvsp[(2) - (2)].ttype))->common.type); ;}
    break;

  case 694:
# 3257 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_typename_type ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype), tf_error | tf_parsing); ;}
    break;

  case 695:
# 3259 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_typename_type ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), tf_error | tf_parsing); ;}
    break;

  case 696:
# 3264 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyvsp[(1) - (1)].ttype))->common.code) == IDENTIFIER_NODE)
      error ("`%T' is not a class or namespace", (yyvsp[(1) - (1)].ttype));
    else if (((enum tree_code) ((yyvsp[(1) - (1)].ttype))->common.code) == TYPE_DECL)
      (yyval.ttype) = (((yyvsp[(1) - (1)].ttype))->common.type);
  ;}
    break;

  case 697:
# 3271 "../../../kg++fe/gnu/cp/parse.y"
    {
    if ((tree_code_type[(int) (((enum tree_code) ((yyvsp[(1) - (2)].ttype))->common.code))] == 't'))
      (yyval.ttype) = make_typename_type ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype), tf_error | tf_parsing);
    else if (((enum tree_code) ((yyvsp[(2) - (2)].ttype))->common.code) == IDENTIFIER_NODE)
      error ("`%T' is not a class or namespace", (yyvsp[(2) - (2)].ttype));
    else
      {
        (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
        if (((enum tree_code) ((yyval.ttype))->common.code) == TYPE_DECL)
   (yyval.ttype) = (((yyval.ttype))->common.type);
      }
  ;}
    break;

  case 698:
# 3284 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (yyval.ttype)
      = make_typename_type ((yyvsp[(1) - (3)].ttype), (yyvsp[(2) - (3)].ttype), tf_error | tf_parsing); ;}
    break;

  case 699:
# 3287 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (yyval.ttype)
      = make_typename_type ((yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype), tf_error | tf_parsing); ;}
    break;

  case 700:
# 3295 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyvsp[(1) - (2)].ttype))->common.code) != TYPE_DECL)
      (yyval.ttype) = lastiddecl;



    got_scope = complete_type ((((yyval.ttype))->common.type));

    if ((yyval.ttype) == global_trees[TI_ERROR_MARK])
      error ("`%T' is not a class or namespace", (yyvsp[(1) - (2)].ttype));
  ;}
    break;

  case 701:
# 3307 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyvsp[(1) - (2)].ttype))->common.code) != TYPE_DECL)
      (yyval.ttype) = lastiddecl;
    got_scope = complete_type ((((yyval.ttype))->common.type));
  ;}
    break;

  case 702:
# 3313 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (yyval.ttype) = complete_type ((((yyval.ttype))->common.type)); ;}
    break;

  case 705:
# 3317 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyval.ttype))->common.code) == IDENTIFIER_NODE)
      (yyval.ttype) = lastiddecl;
    got_scope = (yyval.ttype);
  ;}
    break;

  case 706:
# 3326 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_min_nt (TEMPLATE_ID_EXPR, (yyvsp[(1) - (4)].ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 707:
# 3331 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyvsp[(2) - (2)].ttype))->common.code) == IDENTIFIER_NODE)
      (yyval.ttype) = namespace_binding (((yyvsp[(2) - (2)].ttype)), global_namespace);
    else
      (yyval.ttype) = (yyvsp[(2) - (2)].ttype);
    got_scope = (tree) ((void *)0);
  ;}
    break;

  case 709:
# 3340 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (2)].ttype); ;}
    break;

  case 710:
# 3345 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = (tree) ((void *)0); ;}
    break;

  case 711:
# 3347 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); got_scope = (tree) ((void *)0); ;}
    break;

  case 712:
# 3354 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = global_trees[TI_VOID_TYPE]; ;}
    break;

  case 713:
# 3360 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 714:
# 3362 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0)); ;}
    break;

  case 715:
# 3364 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 716:
# 3366 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0)); ;}
    break;

  case 717:
# 3368 "../../../kg++fe/gnu/cp/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0));
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (2)].ttype), arg);
  ;}
    break;

  case 718:
# 3372 "../../../kg++fe/gnu/cp/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype));
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (3)].ttype), arg);
  ;}
    break;

  case 720:
# 3381 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (tree) ((void *)0), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 721:
# 3383 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 723:
# 3389 "../../../kg++fe/gnu/cp/parse.y"
    {


    (yyval.ttype) = tree_cons ((yyvsp[(1) - (2)].ttype), (yyvsp[(2) - (2)].ttype), (tree) ((void *)0));
  ;}
    break;

  case 724:
# 3399 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ftype).t, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 725:
# 3401 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 726:
# 3403 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (2)].ftype).t, (tree) ((void *)0)); ;}
    break;

  case 727:
# 3405 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 728:
# 3407 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[(2) - (3)].ftype).t, (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 729:
# 3409 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype)); ;}
    break;

  case 730:
# 3411 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[(2) - (2)].ftype).t, (tree) ((void *)0)); ;}
    break;

  case 731:
# 3413 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 732:
# 3415 "../../../kg++fe/gnu/cp/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[(2) - (2)].ttype), (tree) ((void *)0));
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (2)].ttype), arg);
  ;}
    break;

  case 733:
# 3419 "../../../kg++fe/gnu/cp/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype));
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (3)].ttype), arg);
  ;}
    break;

  case 735:
# 3428 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (3)].ttype); ;}
    break;

  case 736:
# 3431 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), (yyvsp[(3) - (6)].ttype), (yyvsp[(5) - (6)].ttype), (yyvsp[(6) - (6)].ttype)); ;}
    break;

  case 737:
# 3433 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((yyval.ttype), empty_parms (), (yyvsp[(3) - (4)].ttype), (yyvsp[(4) - (4)].ttype)); ;}
    break;

  case 738:
# 3435 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 739:
# 3437 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (yyval.ttype), (tree) ((void *)0)); ;}
    break;

  case 740:
# 3439 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_call_declarator ((tree) ((void *)0), (yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype), (yyvsp[(5) - (5)].ttype)); ;}
    break;

  case 741:
# 3441 "../../../kg++fe/gnu/cp/parse.y"
    { set_quals_and_spec ((yyval.ttype), (yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 742:
# 3443 "../../../kg++fe/gnu/cp/parse.y"
    { set_quals_and_spec ((yyval.ttype), (yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 743:
# 3445 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (tree) ((void *)0), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 744:
# 3447 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_nt (ARRAY_REF, (tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 751:
# 3470 "../../../kg++fe/gnu/cp/parse.y"
    { if (pedantic)
      pedwarn ("ISO C++ forbids label declarations"); ;}
    break;

  case 754:
# 3481 "../../../kg++fe/gnu/cp/parse.y"
    {
    while ((yyvsp[(2) - (3)].ttype))
      {
        finish_label_decl ((((yyvsp[(2) - (3)].ttype))->list.value));
        (yyvsp[(2) - (3)].ttype) = (((yyvsp[(2) - (3)].ttype))->common.chain);
      }
  ;}
    break;

  case 755:
# 3492 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_compound_stmt (0); ;}
    break;

  case 756:
# 3494 "../../../kg++fe/gnu/cp/parse.y"
    { (((((yyvsp[(3) - (4)].ttype)))->exp.complexity)) = (yyvsp[(1) - (4)].itype);
    finish_compound_stmt (0, (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 757:
# 3500 "../../../kg++fe/gnu/cp/parse.y"
    { (current_stmt_tree ()->x_last_expr_type) = (tree) ((void *)0); ;}
    break;

  case 758:
# 3505 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_if_stmt ();
    cond_stmt_keyword = "if"; ;}
    break;

  case 759:
# 3508 "../../../kg++fe/gnu/cp/parse.y"
    { finish_if_stmt_cond ((yyvsp[(3) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 760:
# 3510 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (5)].ttype);
    finish_then_clause ((yyvsp[(2) - (5)].ttype)); ;}
    break;

  case 762:
# 3517 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_compound_stmt (0); ;}
    break;

  case 763:
# 3519 "../../../kg++fe/gnu/cp/parse.y"
    { (((((yyvsp[(1) - (3)].ttype)))->exp.complexity)) = (yyvsp[(2) - (3)].itype);
    if ((yyvsp[(3) - (3)].ttype)) (((((yyvsp[(3) - (3)].ttype)))->exp.complexity)) = (yyvsp[(2) - (3)].itype);
    finish_compound_stmt (0, (yyvsp[(1) - (3)].ttype)); ;}
    break;

  case 765:
# 3527 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 767:
# 3530 "../../../kg++fe/gnu/cp/parse.y"
    { if ((yyvsp[(2) - (2)].ttype)) (((((yyvsp[(2) - (2)].ttype)))->exp.complexity)) = (yyvsp[(1) - (2)].itype); ;}
    break;

  case 768:
# 3535 "../../../kg++fe/gnu/cp/parse.y"
    { finish_stmt ();
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 769:
# 3538 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_expr_stmt ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 770:
# 3540 "../../../kg++fe/gnu/cp/parse.y"
    { begin_else_clause (); ;}
    break;

  case 771:
# 3542 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = (yyvsp[(1) - (4)].ttype);
    finish_else_clause ((yyvsp[(1) - (4)].ttype));
    finish_if_stmt ();
  ;}
    break;

  case 772:
# 3548 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype);
    finish_if_stmt (); ;}
    break;

  case 773:
# 3551 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = begin_while_stmt ();
    cond_stmt_keyword = "while";
  ;}
    break;

  case 774:
# 3556 "../../../kg++fe/gnu/cp/parse.y"
    { finish_while_stmt_cond ((yyvsp[(3) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 775:
# 3558 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (5)].ttype);
    finish_while_stmt ((yyvsp[(2) - (5)].ttype)); ;}
    break;

  case 776:
# 3561 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_do_stmt (); ;}
    break;

  case 777:
# 3563 "../../../kg++fe/gnu/cp/parse.y"
    {
    finish_do_body ((yyvsp[(2) - (4)].ttype));
    cond_stmt_keyword = "do";
  ;}
    break;

  case 778:
# 3568 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (7)].ttype);
    finish_do_stmt ((yyvsp[(6) - (7)].ttype), (yyvsp[(2) - (7)].ttype)); ;}
    break;

  case 779:
# 3571 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_for_stmt (); ;}
    break;

  case 780:
# 3573 "../../../kg++fe/gnu/cp/parse.y"
    { finish_for_init_stmt ((yyvsp[(2) - (4)].ttype)); ;}
    break;

  case 781:
# 3575 "../../../kg++fe/gnu/cp/parse.y"
    { finish_for_cond ((yyvsp[(6) - (7)].ttype), (yyvsp[(2) - (7)].ttype)); ;}
    break;

  case 782:
# 3577 "../../../kg++fe/gnu/cp/parse.y"
    { finish_for_expr ((yyvsp[(9) - (10)].ttype), (yyvsp[(2) - (10)].ttype)); ;}
    break;

  case 783:
# 3579 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (12)].ttype);
    finish_for_stmt ((yyvsp[(2) - (12)].ttype)); ;}
    break;

  case 784:
# 3582 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_switch_stmt (); ;}
    break;

  case 785:
# 3584 "../../../kg++fe/gnu/cp/parse.y"
    { finish_switch_cond ((yyvsp[(4) - (5)].ttype), (yyvsp[(2) - (5)].ttype)); ;}
    break;

  case 786:
# 3586 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (7)].ttype);
    finish_switch_stmt ((yyvsp[(2) - (7)].ttype)); ;}
    break;

  case 787:
# 3589 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_case_label ((yyvsp[(2) - (3)].ttype), (tree) ((void *)0)); ;}
    break;

  case 788:
# 3591 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(4) - (5)].ttype); ;}
    break;

  case 789:
# 3593 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_case_label ((yyvsp[(2) - (5)].ttype), (yyvsp[(4) - (5)].ttype)); ;}
    break;

  case 790:
# 3595 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(6) - (7)].ttype); ;}
    break;

  case 791:
# 3597 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_case_label ((tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 792:
# 3599 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 793:
# 3601 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_break_stmt (); ;}
    break;

  case 794:
# 3603 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_continue_stmt (); ;}
    break;

  case 795:
# 3605 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_return_stmt ((tree) ((void *)0)); ;}
    break;

  case 796:
# 3607 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_return_stmt ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 797:
# 3609 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[(2) - (6)].ttype), (yyvsp[(4) - (6)].ttype), (tree) ((void *)0), (tree) ((void *)0),
     (tree) ((void *)0));
    ((((yyval.ttype))->common.lang_flag_0)) = 1; ;}
    break;

  case 798:
# 3614 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[(2) - (8)].ttype), (yyvsp[(4) - (8)].ttype), (yyvsp[(6) - (8)].ttype), (tree) ((void *)0), (tree) ((void *)0)); ;}
    break;

  case 799:
# 3618 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[(2) - (10)].ttype), (yyvsp[(4) - (10)].ttype), (yyvsp[(6) - (10)].ttype), (yyvsp[(8) - (10)].ttype), (tree) ((void *)0)); ;}
    break;

  case 800:
# 3620 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[(2) - (8)].ttype), (yyvsp[(4) - (8)].ttype), (tree) ((void *)0), (yyvsp[(6) - (8)].ttype), (tree) ((void *)0)); ;}
    break;

  case 801:
# 3624 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[(2) - (12)].ttype), (yyvsp[(4) - (12)].ttype), (yyvsp[(6) - (12)].ttype), (yyvsp[(8) - (12)].ttype), (yyvsp[(10) - (12)].ttype)); ;}
    break;

  case 802:
# 3627 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[(2) - (10)].ttype), (yyvsp[(4) - (10)].ttype), (tree) ((void *)0), (yyvsp[(6) - (10)].ttype), (yyvsp[(8) - (10)].ttype)); ;}
    break;

  case 803:
# 3630 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_asm_stmt ((yyvsp[(2) - (10)].ttype), (yyvsp[(4) - (10)].ttype), (yyvsp[(6) - (10)].ttype), (tree) ((void *)0), (yyvsp[(8) - (10)].ttype)); ;}
    break;

  case 804:
# 3632 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (pedantic)
      pedwarn ("ISO C++ forbids computed gotos");
    (yyval.ttype) = finish_goto_stmt ((yyvsp[(3) - (4)].ttype));
  ;}
    break;

  case 805:
# 3638 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_goto_stmt ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 806:
# 3640 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 807:
# 3642 "../../../kg++fe/gnu/cp/parse.y"
    { error ("label must be followed by statement");
    yyungetc ('}', 0);
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 808:
# 3646 "../../../kg++fe/gnu/cp/parse.y"
    { finish_stmt ();
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 809:
# 3649 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 810:
# 3651 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 811:
# 3653 "../../../kg++fe/gnu/cp/parse.y"
    { do_local_using_decl ((yyvsp[(1) - (1)].ttype));
    (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 812:
# 3656 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 813:
# 3661 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_function_try_block (); ;}
    break;

  case 814:
# 3663 "../../../kg++fe/gnu/cp/parse.y"
    { finish_function_try_block ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 815:
# 3665 "../../../kg++fe/gnu/cp/parse.y"
    { finish_function_handler_sequence ((yyvsp[(2) - (5)].ttype)); ;}
    break;

  case 816:
# 3670 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_try_block (); ;}
    break;

  case 817:
# 3672 "../../../kg++fe/gnu/cp/parse.y"
    { finish_try_block ((yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 818:
# 3674 "../../../kg++fe/gnu/cp/parse.y"
    { finish_handler_sequence ((yyvsp[(2) - (5)].ttype)); ;}
    break;

  case 821:
# 3681 "../../../kg++fe/gnu/cp/parse.y"
    {
    tree fake_handler = begin_handler ();
    finish_handler_parms ((tree) ((void *)0), fake_handler);
    finish_handler (fake_handler);
    (yyval.ttype) = fake_handler;

    error ("must have at least one catch per try block");
  ;}
    break;

  case 822:
# 3693 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_handler (); ;}
    break;

  case 823:
# 3695 "../../../kg++fe/gnu/cp/parse.y"
    { finish_handler_parms ((yyvsp[(3) - (3)].ttype), (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 824:
# 3697 "../../../kg++fe/gnu/cp/parse.y"
    { finish_handler ((yyvsp[(2) - (5)].ttype)); ;}
    break;

  case 827:
# 3707 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 828:
# 3723 "../../../kg++fe/gnu/cp/parse.y"
    {
    check_for_new_type ("inside exception declarations", (yyvsp[(2) - (3)].ftype));
    (yyval.ttype) = start_handler_parms ((((yyvsp[(2) - (3)].ftype).t)->list.purpose),
         (((yyvsp[(2) - (3)].ftype).t)->list.value));
  ;}
    break;

  case 829:
# 3732 "../../../kg++fe/gnu/cp/parse.y"
    { finish_label_stmt ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 830:
# 3734 "../../../kg++fe/gnu/cp/parse.y"
    { finish_label_stmt ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 831:
# 3736 "../../../kg++fe/gnu/cp/parse.y"
    { finish_label_stmt ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 832:
# 3738 "../../../kg++fe/gnu/cp/parse.y"
    { finish_label_stmt ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 833:
# 3743 "../../../kg++fe/gnu/cp/parse.y"
    { finish_expr_stmt ((yyvsp[(1) - (2)].ttype)); ;}
    break;

  case 835:
# 3746 "../../../kg++fe/gnu/cp/parse.y"
    { if (pedantic)
      pedwarn ("ISO C++ forbids compound statements inside for initializations");
  ;}
    break;

  case 836:
# 3755 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 838:
# 3761 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 840:
# 3764 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 841:
# 3771 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 844:
# 3778 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 845:
# 3783 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_tree_list (build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (4)].ttype)), (yyvsp[(3) - (4)].ttype)); ;}
    break;

  case 846:
# 3785 "../../../kg++fe/gnu/cp/parse.y"
    { (yyvsp[(2) - (7)].ttype) = build_string ((((yyvsp[(2) - (7)].ttype))->identifier.id.len),
         ((char *)((yyvsp[(2) - (7)].ttype))->identifier.id.str));
    (yyval.ttype) = build_tree_list (build_tree_list ((yyvsp[(2) - (7)].ttype), (yyvsp[(4) - (7)].ttype)), (yyvsp[(6) - (7)].ttype)); ;}
    break;

  case 847:
# 3792 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype), (tree) ((void *)0));;}
    break;

  case 848:
# 3794 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = tree_cons ((tree) ((void *)0), (yyvsp[(3) - (3)].ttype), (yyvsp[(1) - (3)].ttype)); ;}
    break;

  case 849:
# 3805 "../../../kg++fe/gnu/cp/parse.y"
    {
    (yyval.ttype) = empty_parms();
  ;}
    break;

  case 851:
# 3810 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_parmlist (build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ftype).t), 0);
    check_for_new_type ("inside parameter list", (yyvsp[(1) - (1)].ftype)); ;}
    break;

  case 852:
# 3818 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_parmlist ((yyval.ttype), 0); ;}
    break;

  case 853:
# 3820 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_parmlist ((yyvsp[(1) - (2)].ttype), 1); ;}
    break;

  case 854:
# 3823 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_parmlist ((yyvsp[(1) - (2)].ttype), 1); ;}
    break;

  case 855:
# 3825 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_parmlist (build_tree_list ((tree) ((void *)0),
        (yyvsp[(1) - (2)].ftype).t), 1); ;}
    break;

  case 856:
# 3828 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = finish_parmlist ((tree) ((void *)0), 1); ;}
    break;

  case 857:
# 3830 "../../../kg++fe/gnu/cp/parse.y"
    {



    yyerror ("possibly missing ')'");
    (yyval.ttype) = finish_parmlist ((yyvsp[(1) - (2)].ttype), 0);
    yyungetc (':', 0);
    yychar = ')';
  ;}
    break;

  case 858:
# 3840 "../../../kg++fe/gnu/cp/parse.y"
    {



    yyerror ("possibly missing ')'");
    (yyval.ttype) = finish_parmlist (build_tree_list ((tree) ((void *)0),
        (yyvsp[(1) - (2)].ftype).t), 0);
    yyungetc (':', 0);
    yychar = ')';
  ;}
    break;

  case 859:
# 3855 "../../../kg++fe/gnu/cp/parse.y"
    { maybe_snarf_defarg (); ;}
    break;

  case 860:
# 3857 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (3)].ttype); ;}
    break;

  case 863:
# 3868 "../../../kg++fe/gnu/cp/parse.y"
    { check_for_new_type ("in a parameter list", (yyvsp[(1) - (1)].ftype));
    (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ftype).t); ;}
    break;

  case 864:
# 3871 "../../../kg++fe/gnu/cp/parse.y"
    { check_for_new_type ("in a parameter list", (yyvsp[(1) - (2)].ftype));
    (yyval.ttype) = build_tree_list ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ftype).t); ;}
    break;

  case 865:
# 3874 "../../../kg++fe/gnu/cp/parse.y"
    { check_for_new_type ("in a parameter list", (yyvsp[(2) - (2)].ftype));
    (yyval.ttype) = chainon ((yyval.ttype), (yyvsp[(2) - (2)].ftype).t); ;}
    break;

  case 866:
# 3877 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), build_tree_list ((tree) ((void *)0), (yyvsp[(2) - (2)].ttype))); ;}
    break;

  case 867:
# 3879 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = chainon ((yyval.ttype), build_tree_list ((yyvsp[(4) - (4)].ttype), (yyvsp[(2) - (4)].ttype))); ;}
    break;

  case 869:
# 3885 "../../../kg++fe/gnu/cp/parse.y"
    { check_for_new_type ("in a parameter list", (yyvsp[(1) - (2)].ftype));
    (yyval.ttype) = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (2)].ftype).t); ;}
    break;

  case 870:
# 3896 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).new_type_flag = (yyvsp[(1) - (3)].ftype).new_type_flag;
    (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (3)].ftype).t, (yyvsp[(2) - (3)].ttype)); ;}
    break;

  case 871:
# 3899 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (3)].ftype).t, (yyvsp[(2) - (3)].ttype));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (3)].ftype).new_type_flag; ;}
    break;

  case 872:
# 3902 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list (build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (3)].ftype).t),
       (yyvsp[(2) - (3)].ttype));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (3)].ftype).new_type_flag; ;}
    break;

  case 873:
# 3906 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (3)].ftype).t, (yyvsp[(2) - (3)].ttype));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (3)].ftype).new_type_flag; ;}
    break;

  case 874:
# 3909 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (2)].ftype).t, (tree) ((void *)0));
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 875:
# 3912 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(1) - (3)].ftype).t, (yyvsp[(2) - (3)].ttype));
    (yyval.ftype).new_type_flag = 0; ;}
    break;

  case 876:
# 3918 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((tree) ((void *)0), (yyvsp[(1) - (1)].ftype).t);
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (1)].ftype).new_type_flag; ;}
    break;

  case 877:
# 3921 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ftype).t = build_tree_list ((yyvsp[(2) - (2)].ttype), (yyvsp[(1) - (2)].ftype).t);
    (yyval.ftype).new_type_flag = (yyvsp[(1) - (2)].ftype).new_type_flag; ;}
    break;

  case 880:
# 3932 "../../../kg++fe/gnu/cp/parse.y"
    { see_typename (); ;}
    break;

  case 881:
# 3937 "../../../kg++fe/gnu/cp/parse.y"
    {
    error ("type specifier omitted for parameter");
    (yyval.ttype) = build_tree_list (integer_types[itk_int], (tree) ((void *)0));
  ;}
    break;

  case 882:
# 3942 "../../../kg++fe/gnu/cp/parse.y"
    {
    if (((enum tree_code) ((yyval.ttype))->common.code) == SCOPE_REF)
      {
        if (((enum tree_code) ((((yyval.ttype))->exp.operands[0]))->common.code) == TEMPLATE_TYPE_PARM
     || ((enum tree_code) ((((yyval.ttype))->exp.operands[0]))->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM)
   error ("`%E' is not a type, use `typename %E' to make it one", (yyval.ttype), (yyval.ttype));
        else
   error ("no type `%D' in `%T'", (((yyval.ttype))->exp.operands[1]), (((yyval.ttype))->exp.operands[0]));
      }
    else
      error ("type specifier omitted for parameter `%E'", (yyval.ttype));
    (yyval.ttype) = build_tree_list (integer_types[itk_int], (yyval.ttype));
  ;}
    break;

  case 883:
# 3959 "../../../kg++fe/gnu/cp/parse.y"
    {
                  error("'%D' is used as a type, but is not defined as a type.", (yyvsp[(1) - (5)].ttype));
                  (yyvsp[(3) - (5)].ttype) = global_trees[TI_ERROR_MARK];
  ;}
    break;

  case 884:
# 3967 "../../../kg++fe/gnu/cp/parse.y"
    { ;}
    break;

  case 886:
# 3973 "../../../kg++fe/gnu/cp/parse.y"
    { ;}
    break;

  case 888:
# 3979 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 889:
# 3981 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(3) - (4)].ttype); ;}
    break;

  case 890:
# 3983 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = cp_global_trees[CPTI_EMPTY_EXCEPT_SPEC]; ;}
    break;

  case 891:
# 3988 "../../../kg++fe/gnu/cp/parse.y"
    {
    check_for_new_type ("exception specifier", (yyvsp[(1) - (1)].ftype));
    (yyval.ttype) = groktypename ((yyvsp[(1) - (1)].ftype).t);
  ;}
    break;

  case 892:
# 3993 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = global_trees[TI_ERROR_MARK]; ;}
    break;

  case 893:
# 3998 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = add_exception_specifier ((tree) ((void *)0), (yyvsp[(1) - (1)].ttype), 1); ;}
    break;

  case 894:
# 4000 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = add_exception_specifier ((yyvsp[(1) - (3)].ttype), (yyvsp[(3) - (3)].ttype), 1); ;}
    break;

  case 895:
# 4005 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (tree) ((void *)0); ;}
    break;

  case 896:
# 4007 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 897:
# 4009 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = make_reference_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype)); ;}
    break;

  case 898:
# 4011 "../../../kg++fe/gnu/cp/parse.y"
    { tree arg = make_pointer_declarator ((yyvsp[(2) - (3)].ttype), (yyvsp[(3) - (3)].ttype));
    (yyval.ttype) = build_nt (SCOPE_REF, (yyvsp[(1) - (3)].ttype), arg);
  ;}
    break;

  case 899:
# 4018 "../../../kg++fe/gnu/cp/parse.y"
    {
   saved_scopes = tree_cons (got_scope, got_object, saved_scopes);
   ((saved_scopes)->common.lang_flag_0) = looking_for_typename;


   looking_for_typename = 1;
   got_object = got_scope;
          got_scope = (tree) ((void *)0);
 ;}
    break;

  case 900:
# 4030 "../../../kg++fe/gnu/cp/parse.y"
    { got_scope = ((saved_scopes)->list.purpose);
          got_object = ((saved_scopes)->list.value);
   looking_for_typename = ((saved_scopes)->common.lang_flag_0);
          saved_scopes = ((saved_scopes)->common.chain);
   (yyval.ttype) = got_scope;
 ;}
    break;

  case 901:
# 4040 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (MULT_EXPR)].identifier)); ;}
    break;

  case 902:
# 4042 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (TRUNC_DIV_EXPR)].identifier)); ;}
    break;

  case 903:
# 4044 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (TRUNC_MOD_EXPR)].identifier)); ;}
    break;

  case 904:
# 4046 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (PLUS_EXPR)].identifier)); ;}
    break;

  case 905:
# 4048 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (MINUS_EXPR)].identifier)); ;}
    break;

  case 906:
# 4050 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (BIT_AND_EXPR)].identifier)); ;}
    break;

  case 907:
# 4052 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (BIT_IOR_EXPR)].identifier)); ;}
    break;

  case 908:
# 4054 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (BIT_XOR_EXPR)].identifier)); ;}
    break;

  case 909:
# 4056 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (BIT_NOT_EXPR)].identifier)); ;}
    break;

  case 910:
# 4058 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (COMPOUND_EXPR)].identifier)); ;}
    break;

  case 911:
# 4060 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) ((yyvsp[(2) - (3)].code))].identifier)); ;}
    break;

  case 912:
# 4062 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (LT_EXPR)].identifier)); ;}
    break;

  case 913:
# 4064 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (GT_EXPR)].identifier)); ;}
    break;

  case 914:
# 4066 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) ((yyvsp[(2) - (3)].code))].identifier)); ;}
    break;

  case 915:
# 4068 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((assignment_operator_name_info[(int) ((yyvsp[(2) - (3)].code))].identifier)); ;}
    break;

  case 916:
# 4070 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((assignment_operator_name_info[(int) (NOP_EXPR)].identifier)); ;}
    break;

  case 917:
# 4072 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) ((yyvsp[(2) - (3)].code))].identifier)); ;}
    break;

  case 918:
# 4074 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) ((yyvsp[(2) - (3)].code))].identifier)); ;}
    break;

  case 919:
# 4076 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (POSTINCREMENT_EXPR)].identifier)); ;}
    break;

  case 920:
# 4078 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (PREDECREMENT_EXPR)].identifier)); ;}
    break;

  case 921:
# 4080 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (TRUTH_ANDIF_EXPR)].identifier)); ;}
    break;

  case 922:
# 4082 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (TRUTH_ORIF_EXPR)].identifier)); ;}
    break;

  case 923:
# 4084 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (TRUTH_NOT_EXPR)].identifier)); ;}
    break;

  case 924:
# 4086 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (COND_EXPR)].identifier)); ;}
    break;

  case 925:
# 4088 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) ((yyvsp[(2) - (3)].code))].identifier)); ;}
    break;

  case 926:
# 4090 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (COMPONENT_REF)].identifier)); ;}
    break;

  case 927:
# 4092 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (MEMBER_REF)].identifier)); ;}
    break;

  case 928:
# 4094 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (CALL_EXPR)].identifier)); ;}
    break;

  case 929:
# 4096 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (ARRAY_REF)].identifier)); ;}
    break;

  case 930:
# 4098 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (NEW_EXPR)].identifier)); ;}
    break;

  case 931:
# 4100 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (DELETE_EXPR)].identifier)); ;}
    break;

  case 932:
# 4102 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (VEC_NEW_EXPR)].identifier)); ;}
    break;

  case 933:
# 4104 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (VEC_DELETE_EXPR)].identifier)); ;}
    break;

  case 934:
# 4106 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname (grokoptypename ((yyvsp[(2) - (4)].ftype).t, (yyvsp[(3) - (4)].ttype), (yyvsp[(4) - (4)].ttype))); ;}
    break;

  case 935:
# 4108 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = frob_opname ((operator_name_info[(int) (ERROR_MARK)].identifier)); ;}
    break;

  case 936:
# 4115 "../../../kg++fe/gnu/cp/parse.y"
    { if (yychar == (-2))
      yychar = yylex ();
    (yyval.itype) = lineno; ;}
    break;

  case 937:
# 4124 "../../../kg++fe/gnu/cp/parse.y"
    {
   (yyval.ttype) = add_stmt (build_omp_stmt (parallel_dir_b, (yyvsp[(1) - (1)].pclause_type)));
   In_MP_Region = 1;
   mp_nesting++;
   if (mp_nesting == 10)
   {

     printf ("MP nesting > %d not supported\n", 10 -1);
     fancy_abort ("../../../kg++fe/gnu/cp/parse.y", 4132, __FUNCTION__);
   }
   mp_locals[mp_nesting] = ((void *)0);
 ;}
    break;

  case 938:
# 4137 "../../../kg++fe/gnu/cp/parse.y"
    {
   add_stmt (build_omp_stmt (parallel_dir_e, ((void *)0)));
   (yyval.ttype) = ((void *)0);
   In_MP_Region = 0;
   if (mp_locals[mp_nesting])
   {
     (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
       chain_parallel_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
         build_parallel_clause_list (((void *)0), p_private, 0, 0));
     (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
       chain_parallel_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
         build_parallel_clause_list (mp_locals[mp_nesting],
    p_private, 0, 0));
   }
   mp_locals[mp_nesting] = ((void *)0);
   mp_nesting--;
 ;}
    break;

  case 939:
# 4158 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = ((void *)0); ;}
    break;

  case 940:
# 4160 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = (yyvsp[(3) - (4)].pclause_type); ;}
    break;

  case 941:
# 4165 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = (yyvsp[(1) - (1)].pclause_type); ;}
    break;

  case 942:
# 4167 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = chain_parallel_list_on ((yyvsp[(1) - (2)].pclause_type), (yyvsp[(2) - (2)].pclause_type)); ;}
    break;

  case 943:
# 4172 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_if, 0, 0); ;}
    break;

  case 944:
# 4174 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_num_threads, 0, 0); ;}
    break;

  case 945:
# 4176 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_private, 0, 0); ;}
    break;

  case 946:
# 4178 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_firstprivate, 0, 0); ;}
    break;

  case 947:
# 4180 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_shared, 0, 0); ;}
    break;

  case 948:
# 4182 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(((void *)0), p_default, default_shared, 0); ;}
    break;

  case 949:
# 4183 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list(((void *)0), p_default, default_none, 0); ;}
    break;

  case 950:
# 4185 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(5) - (6)].ttype), p_reduction, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 951:
# 4187 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.pclause_type) = build_parallel_clause_list((yyvsp[(3) - (4)].ttype), p_copyin, 0, 0); ;}
    break;

  case 952:
# 4192 "../../../kg++fe/gnu/cp/parse.y"
    {
            add_stmt (build_omp_stmt (for_dir_b, (yyvsp[(1) - (1)].for_clause_type)));
            (yyval.ttype) = ((void *)0);
        ;}
    break;

  case 953:
# 4198 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (for_dir_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 954:
# 4204 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = begin_for_stmt ();
                  (((yyval.ttype))->common.addressable_flag) = 1; ;}
    break;

  case 955:
# 4207 "../../../kg++fe/gnu/cp/parse.y"
    { finish_for_init_stmt ((yyvsp[(2) - (4)].ttype)); ;}
    break;

  case 956:
# 4209 "../../../kg++fe/gnu/cp/parse.y"
    { finish_for_cond ((yyvsp[(6) - (7)].ttype), (yyvsp[(2) - (7)].ttype)); ;}
    break;

  case 957:
# 4211 "../../../kg++fe/gnu/cp/parse.y"
    { finish_for_expr ((yyvsp[(9) - (10)].ttype), (yyvsp[(2) - (10)].ttype)); ;}
    break;

  case 958:
# 4213 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(2) - (12)].ttype);
    finish_for_stmt ((yyvsp[(2) - (12)].ttype)); ;}
    break;

  case 959:
# 4219 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = ((void *)0); ;}
    break;

  case 960:
# 4221 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = (yyvsp[(3) - (4)].for_clause_type); ;}
    break;

  case 961:
# 4226 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = (yyvsp[(1) - (1)].for_clause_type); ;}
    break;

  case 962:
# 4228 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = chain_for_list_on ((yyvsp[(1) - (2)].for_clause_type), (yyvsp[(2) - (2)].for_clause_type)); ;}
    break;

  case 963:
# 4233 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(3) - (4)].ttype), f_private, 0, 0); ;}
    break;

  case 964:
# 4235 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(3) - (4)].ttype), f_firstprivate, 0, 0); ;}
    break;

  case 965:
# 4237 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(3) - (4)].ttype), f_lastprivate, 0, 0); ;}
    break;

  case 966:
# 4239 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(5) - (6)].ttype), f_reduction, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 967:
# 4241 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(((void *)0), f_schedule_1, (yyvsp[(3) - (4)].sch_k_type), 0); ;}
    break;

  case 968:
# 4243 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list((yyvsp[(5) - (6)].ttype), f_schedule_2, (yyvsp[(3) - (6)].sch_k_type), 0); ;}
    break;

  case 969:
# 4245 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(((void *)0), f_ordered, 0, 0); ;}
    break;

  case 970:
# 4247 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.for_clause_type) = build_for_clause_list(((void *)0), f_nowait, 0, 0); ;}
    break;

  case 971:
# 4252 "../../../kg++fe/gnu/cp/parse.y"
    {
       if (strcmp (((char *)((yyvsp[(1) - (1)].ttype))->identifier.id.str), "static"))
              error ("'%s' is not a valid schedule kind\n", ((char *)((yyvsp[(1) - (1)].ttype))->identifier.id.str));
       else
              (yyval.sch_k_type)=SK_STATIC; ;}
    break;

  case 972:
# 4258 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sch_k_type)=SK_DYNAMIC; ;}
    break;

  case 973:
# 4260 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sch_k_type)=SK_GUIDED; ;}
    break;

  case 974:
# 4262 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sch_k_type)=SK_RUNTIME; ;}
    break;

  case 975:
# 4268 "../../../kg++fe/gnu/cp/parse.y"
    {
            add_stmt (build_omp_stmt (sections_cons_b, (yyvsp[(1) - (1)].sections_clause_type)));
            (yyval.ttype) = ((void *)0);
        ;}
    break;

  case 976:
# 4273 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (sections_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 977:
# 4278 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sections_clause_type) = ((void *)0); ;}
    break;

  case 978:
# 4280 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sections_clause_type) = (yyvsp[(3) - (4)].sections_clause_type); ;}
    break;

  case 979:
# 4285 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sections_clause_type) = (yyvsp[(1) - (1)].sections_clause_type); ;}
    break;

  case 980:
# 4287 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sections_clause_type) = chain_sections_list_on ((yyvsp[(1) - (2)].sections_clause_type), (yyvsp[(2) - (2)].sections_clause_type)); ;}
    break;

  case 981:
# 4291 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(3) - (4)].ttype), sections_private, 0); ;}
    break;

  case 982:
# 4293 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(3) - (4)].ttype), sections_firstprivate, 0); ;}
    break;

  case 983:
# 4295 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(3) - (4)].ttype), sections_lastprivate, 0); ;}
    break;

  case 984:
# 4297 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list((yyvsp[(5) - (6)].ttype), sections_reduction, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 985:
# 4299 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.sections_clause_type) = build_sections_clause_list(((void *)0), sections_nowait, 0); ;}
    break;

  case 986:
# 4305 "../../../kg++fe/gnu/cp/parse.y"
    {
           In_MP_Section = 1;
           add_stmt (build_omp_stmt (section_cons_b, ((void *)0)));
        ;}
    break;

  case 991:
# 4320 "../../../kg++fe/gnu/cp/parse.y"
    {
          In_MP_Section = 0;
          add_stmt (build_omp_stmt (section_cons_e, ((void *)0)));
        ;}
    break;

  case 994:
# 4333 "../../../kg++fe/gnu/cp/parse.y"
    {
          if (!In_MP_Section)
            add_stmt (build_omp_stmt (section_cons_b, ((void *)0)));
          else
            In_MP_Section = 0;
        ;}
    break;

  case 995:
# 4340 "../../../kg++fe/gnu/cp/parse.y"
    {
          add_stmt (build_omp_stmt (section_cons_e, ((void *)0)));
        ;}
    break;

  case 997:
# 4351 "../../../kg++fe/gnu/cp/parse.y"
    {
            add_stmt (build_omp_stmt (single_cons_b, (yyvsp[(1) - (1)].single_clause_type)));
            (yyval.ttype) = ((void *)0);
        ;}
    break;

  case 998:
# 4356 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (single_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 999:
# 4361 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.single_clause_type) = ((void *)0);;}
    break;

  case 1000:
# 4363 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.single_clause_type) = (yyvsp[(3) - (4)].single_clause_type);;}
    break;

  case 1001:
# 4368 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.single_clause_type) = (yyvsp[(1) - (1)].single_clause_type); ;}
    break;

  case 1002:
# 4370 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.single_clause_type) = chain_single_list_on ((yyvsp[(1) - (2)].single_clause_type), (yyvsp[(2) - (2)].single_clause_type)); ;}
    break;

  case 1003:
# 4375 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[(3) - (4)].ttype), single_private); ;}
    break;

  case 1004:
# 4377 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[(3) - (4)].ttype), single_firstprivate); ;}
    break;

  case 1005:
# 4379 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.single_clause_type) = build_single_clause_list((yyvsp[(3) - (4)].ttype), single_copyprivate); ;}
    break;

  case 1006:
# 4381 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.single_clause_type) = build_single_clause_list(((void *)0), single_nowait); ;}
    break;

  case 1007:
# 4386 "../../../kg++fe/gnu/cp/parse.y"
    {
            (yyval.ttype) = add_stmt (build_omp_stmt (par_for_cons_b, (yyvsp[(1) - (1)].parallel_for_clause_type)));
            In_MP_Region = 1;
            mp_nesting++;
            if (mp_nesting == 10)
            {

              printf ("MP nesting > %d not supported\n", 10 -1);
              fancy_abort ("../../../kg++fe/gnu/cp/parse.y", 4394, __FUNCTION__);
            }
            mp_locals[mp_nesting] = ((void *)0);
        ;}
    break;

  case 1008:
# 4399 "../../../kg++fe/gnu/cp/parse.y"
    {
            add_stmt (build_omp_stmt (par_for_cons_e, ((void *)0)));
            (yyval.ttype) = ((void *)0);
            In_MP_Region = 0;
            if (mp_locals[mp_nesting])
            {
              (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
                chain_parallel_for_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
                   build_parallel_for_clause_list (((void *)0), p_for_private,
                                                   0, 0, 0));
              (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
                chain_parallel_for_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
                          build_parallel_for_clause_list (mp_locals[mp_nesting], p_for_private, 0, 0, 0));
            }
            mp_locals[mp_nesting] = ((void *)0);
            mp_nesting--;
        ;}
    break;

  case 1009:
# 4420 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.parallel_for_clause_type) = ((void *)0);;}
    break;

  case 1010:
# 4422 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.parallel_for_clause_type) = (yyvsp[(4) - (5)].parallel_for_clause_type);;}
    break;

  case 1011:
# 4427 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = (yyvsp[(1) - (1)].parallel_for_clause_type); ;}
    break;

  case 1012:
# 4429 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = chain_parallel_for_list_on ((yyvsp[(1) - (2)].parallel_for_clause_type), (yyvsp[(2) - (2)].parallel_for_clause_type)); ;}
    break;

  case 1013:
# 4434 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_if, 0, 0, 0); ;}
    break;

  case 1014:
# 4436 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_num_threads, 0, 0, 0); ;}
    break;

  case 1015:
# 4437 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_private, 0, 0, 0); ;}
    break;

  case 1016:
# 4439 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_copyprivate, 0, 0, 0); ;}
    break;

  case 1017:
# 4440 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_firstprivate, 0, 0, 0); ;}
    break;

  case 1018:
# 4442 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_lastprivate, 0, 0, 0); ;}
    break;

  case 1019:
# 4443 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_shared, 0, 0, 0); ;}
    break;

  case 1020:
# 4445 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(((void *)0), p_for_default, default_shared, 0, 0); ;}
    break;

  case 1021:
# 4447 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(((void *)0), p_for_default, default_none, 0, 0); ;}
    break;

  case 1022:
# 4449 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(5) - (6)].ttype), p_for_reduction, 0, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 1023:
# 4451 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(3) - (4)].ttype), p_for_copyin, 0, 0, 0); ;}
    break;

  case 1024:
# 4453 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(((void *)0), p_for_schedule_1, 0, (yyvsp[(3) - (4)].sch_k_type), 0); ;}
    break;

  case 1025:
# 4455 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list((yyvsp[(5) - (6)].ttype), p_for_schedule_2, 0, (yyvsp[(3) - (6)].sch_k_type), 0); ;}
    break;

  case 1026:
# 4456 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_for_clause_type) = build_parallel_for_clause_list(((void *)0), p_for_ordered, 0, 0, 0); ;}
    break;

  case 1027:
# 4461 "../../../kg++fe/gnu/cp/parse.y"
    {
            (yyval.ttype) = add_stmt (build_omp_stmt (par_sctn_cons_b, (yyvsp[(1) - (1)].parallel_sections_clause_type)));
            In_MP_Region = 1;
            mp_nesting++;
            if (mp_nesting == 10)
            {

              printf ("MP nesting > %d not supported\n", 10 -1);
              fancy_abort ("../../../kg++fe/gnu/cp/parse.y", 4469, __FUNCTION__);
            }
            mp_locals[mp_nesting] = ((void *)0);
        ;}
    break;

  case 1028:
# 4474 "../../../kg++fe/gnu/cp/parse.y"
    {
            add_stmt (build_omp_stmt (par_sctn_cons_e, ((void *)0)));
            (yyval.ttype) = ((void *)0);
            In_MP_Region = 0;
            if (mp_locals[mp_nesting])
            {
              (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
                chain_parallel_sections_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list,
                   build_parallel_sections_clause_list (((void *)0),
                                                  p_sections_private, 0, 0));
              (yyvsp[(2) - (3)].ttype)->omp.omp_clause_list =
                chain_parallel_sections_list_on ((yyvsp[(2) - (3)].ttype)->omp.omp_clause_list, build_parallel_sections_clause_list (mp_locals[mp_nesting],
                   p_sections_private, 0, 0));
            }
            mp_locals[mp_nesting] = ((void *)0);
            mp_nesting--;
        ;}
    break;

  case 1029:
# 4495 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.parallel_sections_clause_type) = ((void *)0);;}
    break;

  case 1030:
# 4497 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.parallel_sections_clause_type) = (yyvsp[(4) - (5)].parallel_sections_clause_type);;}
    break;

  case 1031:
# 4502 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type)=(yyvsp[(1) - (1)].parallel_sections_clause_type); ;}
    break;

  case 1032:
# 4504 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = chain_parallel_sections_list_on ((yyvsp[(1) - (2)].parallel_sections_clause_type), (yyvsp[(2) - (2)].parallel_sections_clause_type)); ;}
    break;

  case 1033:
# 4509 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_if, 0, 0); ;}
    break;

  case 1034:
# 4511 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_num_threads, 0, 0); ;}
    break;

  case 1035:
# 4513 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_private, 0, 0); ;}
    break;

  case 1036:
# 4515 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_copyprivate, 0, 0); ;}
    break;

  case 1037:
# 4517 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_firstprivate, 0, 0); ;}
    break;

  case 1038:
# 4519 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_lastprivate, 0, 0); ;}
    break;

  case 1039:
# 4521 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_shared, 0, 0); ;}
    break;

  case 1040:
# 4523 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(((void *)0), p_sections_default, default_shared, 0); ;}
    break;

  case 1041:
# 4525 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list(((void *)0), p_sections_default, default_none, 0); ;}
    break;

  case 1042:
# 4527 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(5) - (6)].ttype), p_sections_reduction, 0, (yyvsp[(3) - (6)].red_op_type)); ;}
    break;

  case 1043:
# 4529 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.parallel_sections_clause_type) = build_parallel_sections_clause_list((yyvsp[(3) - (4)].ttype), p_sections_copyin, 0, 0); ;}
    break;

  case 1044:
# 4534 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (master_cons_b, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1045:
# 4536 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (master_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1047:
# 4545 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (critical_cons_b, (yyvsp[(1) - (1)].ttype))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1048:
# 4547 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (critical_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1049:
# 4552 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = ((void *)0); ;}
    break;

  case 1050:
# 4554 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(4) - (6)].ttype); ;}
    break;

  case 1051:
# 4559 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = (yyvsp[(1) - (1)].ttype); ;}
    break;

  case 1052:
# 4564 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (barrier_dir, ((void *)0))); ;}
    break;

  case 1053:
# 4569 "../../../kg++fe/gnu/cp/parse.y"
    {
            add_stmt (build_omp_stmt (atomic_cons_b, ((void *)0)));
            (yyval.ttype) = ((void *)0);
        ;}
    break;

  case 1054:
# 4574 "../../../kg++fe/gnu/cp/parse.y"
    {
            finish_expr_stmt ((yyvsp[(3) - (4)].ttype));
            add_stmt (build_omp_stmt (atomic_cons_e, ((void *)0)));
            (yyval.ttype) = ((void *)0);
        ;}
    break;

  case 1056:
# 4587 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (flush_dir, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1057:
# 4590 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (flush_dir, (yyvsp[(4) - (6)].ttype))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1058:
# 4595 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_b, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1059:
# 4597 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (ordered_cons_e, ((void *)0))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1061:
# 4606 "../../../kg++fe/gnu/cp/parse.y"
    { expand_threadprivate ((yyvsp[(4) - (6)].ttype)); ;}
    break;

  case 1073:
# 4625 "../../../kg++fe/gnu/cp/parse.y"
    {
           add_stmt(build_omp_stmt(sl2_sections_cons_b, ((void *)0)));
  ;}
    break;

  case 1074:
# 4629 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt(build_omp_stmt(sl2_sections_cons_e, ((void *)0))); (yyval.ttype)=((void *)0);;}
    break;

  case 1075:
# 4631 "../../../kg++fe/gnu/cp/parse.y"
    {
           add_stmt(build_omp_stmt(sl2_minor_sections_cons_b, ((void *)0)));
  ;}
    break;

  case 1076:
# 4635 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt(build_omp_stmt(sl2_sections_cons_e, ((void *)0))); (yyval.ttype)=((void *)0);;}
    break;

  case 1084:
# 4662 "../../../kg++fe/gnu/cp/parse.y"
    {
   if (!In_MP_Section)
     add_stmt (build_omp_stmt (sl2_section_cons_b, ((void *)0)));
   else
     In_MP_Section = 0;
        ;}
    break;

  case 1085:
# 4669 "../../../kg++fe/gnu/cp/parse.y"
    {
   add_stmt (build_omp_stmt (sl2_section_cons_e, ((void *)0)));
        ;}
    break;

  case 1086:
# 4673 "../../../kg++fe/gnu/cp/parse.y"
    {
   if (!In_MP_Section)
     add_stmt (build_omp_stmt (sl2_minor_section_cons_b, ((void *)0)));
   else
     In_MP_Section = 0;
        ;}
    break;

  case 1087:
# 4680 "../../../kg++fe/gnu/cp/parse.y"
    {
   add_stmt (build_omp_stmt (sl2_minor_section_cons_e, ((void *)0)));
        ;}
    break;

  case 1089:
# 4690 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 1091:
# 4693 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 1092:
# 4695 "../../../kg++fe/gnu/cp/parse.y"
    {;}
    break;

  case 1093:
# 4700 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (options_dir, (yyvsp[(2) - (3)].ttype))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1094:
# 4706 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = ((void *)0); ;}
    break;

  case 1098:
# 4715 "../../../kg++fe/gnu/cp/parse.y"
    { add_stmt (build_omp_stmt (exec_freq_dir, (yyvsp[(2) - (3)].ttype))); (yyval.ttype) = ((void *)0); ;}
    break;

  case 1099:
# 4719 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_string (6, "never"); ;}
    break;

  case 1100:
# 4720 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_string (5, "init"); ;}
    break;

  case 1101:
# 4721 "../../../kg++fe/gnu/cp/parse.y"
    { (yyval.ttype) = build_string (9, "frequent"); ;}
    break;

  case 1103:
# 4730 "../../../kg++fe/gnu/cp/parse.y"
    {
           if(lookup_name((yyvsp[(1) - (1)].ttype), 0)==0)
                        error("Undefined variable %s", ((char *)((yyvsp[(1) - (1)].ttype))->identifier.id.str));
          (yyval.ttype) = build_tree_list ((tree) ((void *)0), lookup_name ((yyvsp[(1) - (1)].ttype), 0));
        ;}
    break;

  case 1104:
# 4736 "../../../kg++fe/gnu/cp/parse.y"
    {
      if (lookup_name ((yyvsp[(3) - (3)].ttype), 0) == 0)
        error ("Undefined variable %s", ((char *)((yyvsp[(3) - (3)].ttype))->identifier.id.str));
      (yyval.ttype) = chainon ((yyvsp[(1) - (3)].ttype), build_tree_list ((tree) ((void *)0), lookup_name ((yyvsp[(3) - (3)].ttype), 0)));
    ;}
    break;

  case 1105:
# 4745 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_ADD;;}
    break;

  case 1106:
# 4747 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_MPY;;}
    break;

  case 1107:
# 4749 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_SUB;;}
    break;

  case 1108:
# 4751 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BAND;;}
    break;

  case 1109:
# 4753 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BXOR;;}
    break;

  case 1110:
# 4755 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_BIOR;;}
    break;

  case 1111:
# 4757 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CAND;;}
    break;

  case 1112:
# 4759 "../../../kg++fe/gnu/cp/parse.y"
    {(yyval.red_op_type) = REDUCTION_OPR_CIOR;;}
    break;
# 12218 "parse.c"
      default: break;
    }
  do { if (yydebug) { fprintf (stderr, "%s ", "-> $$ ="); yy_symbol_print (stderr, yyr1[yyn], &yyval); fprintf (stderr, "\n"); } } while ((0));

  (yyvsp -= (yylen), yyssp -= (yylen));
  yylen = 0;
  do { if (yydebug) yy_stack_print ((yyss), (yyssp)); } while ((0));

  *++yyvsp = yyval;






  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - 154] + *yyssp;
  if (0 <= yystate && yystate <= 15092 && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - 154];

  goto yynewstate;





yyerrlab:

  if (!yyerrstatus)
    {
      ++yynerrs;

      yyerror ("syntax error");
# 12287 "parse.c"
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
      if (yyn != -2029)
 {
   yyn += 1;
   if (0 <= yyn && yyn <= 15092 && yycheck[yyn] == 1)
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
# 12404 "parse.c"
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
# 12427 "parse.c"
  return (yyresult);
}
# 4762 "../../../kg++fe/gnu/cp/parse.y"
# 4775 "../../../kg++fe/gnu/cp/parse.y"
void
free_parser_stacks ()
{
  if (malloced_yyss)
    {
      free (malloced_yyss);
      free (malloced_yyvs);
    }
}



static tree
parse_scoped_id (token)
     tree token;
{
  cxx_binding binding;

  memset ((&binding), 0, sizeof (cxx_binding));
  if (!qualified_lookup_using_namespace (token, global_namespace, &binding, 0))
    binding.value = ((void *)0);
  if (yychar == (-2))
    yychar = yylex();

  return do_scoped_id (token, binding.value);
}






static void
parse_split_aggr (tree aggr, enum tag_types *tag_kind, tree *attributes)
{
  if (((enum tree_code) (aggr)->common.code) == TREE_LIST)
    {
      *attributes = ((aggr)->list.purpose);
      aggr = ((aggr)->list.value);
    }
  else
    *attributes = (tree) ((void *)0);
  *tag_kind = (enum tag_types) tree_low_cst (aggr, 1);
}





static tree
parse_xref_tag (tree aggr, tree name, int globalize)
{
  tree attributes;
  enum tag_types tag_kind;
  parse_split_aggr (aggr, &tag_kind, &attributes);
  return xref_tag (tag_kind, name, attributes, globalize);
}



static tree
parse_handle_class_head (tree aggr, tree scope, tree id,
    int defn_p, int *new_type_p)
{
  tree attributes;
  enum tag_types tag_kind;
  parse_split_aggr (aggr, &tag_kind, &attributes);
  return handle_class_head (tag_kind, scope, id, attributes,
       defn_p, new_type_p);
}




static void
parse_decl_instantiation (tree declspecs, tree declarator, tree storage)
{
  tree decl = grokdeclarator (declarator, declspecs, NORMAL, 0, ((void *)0));
  do_decl_instantiation (decl, storage);
}




static int
parse_begin_function_definition (tree specs_attrs, tree declarator)
{
  tree specs;
  tree attrs;

  split_specs_attrs (specs_attrs, &specs, &attrs);
  return begin_function_definition (specs, attrs, declarator);
}




static tree
parse_finish_call_expr (tree fn, tree args, int koenig)
{
  _Bool disallow_virtual;

  if (((enum tree_code) (fn)->common.code) == OFFSET_REF)
    return build_offset_ref_call_from_tree (fn, args);

  if (((enum tree_code) (fn)->common.code) == SCOPE_REF)
    {
      tree scope = ((fn)->exp.operands[0]);
      tree name = ((fn)->exp.operands[1]);

      if (scope == global_trees[TI_ERROR_MARK] || name == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];
      if (!scope_chain->x_processing_template_decl)
 fn = resolve_scoped_fn_name (scope, name);
      disallow_virtual = 1;
    }
  else
    disallow_virtual = 0;

  if (koenig && ((enum tree_code) (fn)->common.code) == IDENTIFIER_NODE)
    {
      tree f;


      fn = do_identifier (fn, 2, args);


      if (((enum tree_code) (fn)->common.code) == IDENTIFIER_NODE)
 {



   if (((fn)->common.lang_flag_4) && scope_chain->class_type)
     {
       f = lookup_member (scope_chain->class_type, fn,
                 1, 0);
       if (f)
  return finish_call_expr (f, args,
                           0);
     }


   if (((enum tree_code) (fn)->common.code) == IDENTIFIER_NODE)
     {
       unqualified_name_lookup_error (fn);
       return global_trees[TI_ERROR_MARK];
     }
 }
      else if (((enum tree_code) (fn)->common.code) == FUNCTION_DECL
        || (((enum tree_code) (fn)->common.code) == TEMPLATE_DECL && ((enum tree_code) (((fn)->decl.result))->common.code) == FUNCTION_DECL)
        || ((enum tree_code) (fn)->common.code) == OVERLOAD)
 {
   tree scope = ((get_first_fn (fn))->decl.context);
   if (scope && (tree_code_type[(int) (((enum tree_code) (scope)->common.code))] == 't'))
     {
       tree access_scope;

       if ((lookup_base ((scope_chain->class_type), scope, ba_any, ((void *)0)) != (tree) ((void *)0))
    && (cfun ? (cfun->language)->x_current_class_ref : (tree) ((void *)0)))
  {
    fn = build_baselink (lookup_base (scope_chain->class_type,
          scope,
          ba_any,
          ((void *)0)),
           ((scope_chain->class_type)->type.binfo),
           fn,
                      (tree) ((void *)0));
    return finish_object_call_expr (fn,
        (cfun ? (cfun->language)->x_current_class_ref : (tree) ((void *)0)),
        args);
  }


       access_scope = scope_chain->class_type;
       while (!(lookup_base ((access_scope), scope, ba_any, ((void *)0)) != (tree) ((void *)0)))
  {
    access_scope = ((access_scope)->type.context);
    while ((tree_code_type[(int) (((enum tree_code) (access_scope)->common.code))] == 'd'))
      access_scope = ((access_scope)->decl.context);
  }

       fn = build_baselink ((tree) ((void *)0),
       ((access_scope)->type.binfo),
       fn,
                  (tree) ((void *)0));
     }
 }
    }

  if (((enum tree_code) (fn)->common.code) == COMPONENT_REF)



    return finish_object_call_expr (((fn)->exp.operands[1]),
        ((fn)->exp.operands[0]),
        args);

  if (scope_chain->x_processing_template_decl)
    return build_nt (CALL_EXPR, fn, args, (tree) ((void *)0));

  return build_call_from_tree (fn, args, disallow_virtual);
}

# 1 "../../../kg++fe/gnu/MIPS/gt-cp-parse.h" 1
# 25 "../../../kg++fe/gnu/MIPS/gt-cp-parse.h"
const struct ggc_root_tab gt_ggc_r_gt_cp_parse_h[] = {
  {
    &saved_scopes,
    1,
    sizeof (saved_scopes),
    &gt_ggc_mx_lang_tree_node

  },
  {
    &current_enum_type,
    1,
    sizeof (current_enum_type),
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
# 4979 "../../../kg++fe/gnu/cp/parse.y" 2
