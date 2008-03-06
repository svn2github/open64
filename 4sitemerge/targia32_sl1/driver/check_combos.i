# 1 "check_combos.c"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/driver//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "check_combos.c"


# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 152 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 326 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int wchar_t;
# 4 "check_combos.c" 2
# 1 "../../driver/options.h" 1
# 40 "../../driver/options.h"
# 1 "../../driver/basic.h" 1
# 44 "../../driver/basic.h"
typedef int boolean;


typedef char buffer_t[512];
# 41 "../../driver/options.h" 2
# 1 "../../driver/lang_defs.h" 1
# 47 "../../driver/lang_defs.h"
typedef enum {
 L_NONE,
 L_ALL,
 L_cpp,
 L_cc,
 L_CC,
 L_f77,
 L_f90,
 L_as,
 L_ld,
 L_internal,
 L_LAST
} languages_t;


typedef enum {
 S_NONE,
 S_c,
 S_C,
 S_f,
 S_F,
 S_f90,
 S_F90,
 S_r,
 S_i,
 S_ii,
 S_s,
 S_S,
 S_I,
 S_B,
 S_N,
 S_O,
 S_o,
 S_LAST
} source_kind_t;


typedef enum {
 P_NONE,
 P_All,

 P_m4,
 P_ratfor,

 P_cpp,
 P_gcpp,
 P_gcpp_plus,
 P_c_cpp,
 P_cplus_cpp,
 P_f_cpp,
 P_f90_cpp,

 P_f_coco,

 P_any_cpp,

 P_pfa,
 P_pca,
        P_mpc,
 P_any_optfe,

 P_f_fe,
 P_cppf_fe,
 P_f90_fe,
 P_cppf90_fe,
 P_c_gfe,
 P_cplus_gfe,
 P_any_fe,
 P_pseudo_f_fe,

 P_pseudo_c_fe,

 P_lister,

 P_inline,
 P_ipl,
 p_any_ipl,

 P_be,

 P_as,
 P_gas,
 P_any_as,

 P_dsm_prelink,
 P_ipa_link,
 P_collect,
 P_ld,
 P_ldplus,
 P_any_ld,
 P_cord,
 P_pixie,
 P_prof,
 P_ar,


 P_startup,
 P_include,
 P_library,
 P_alt_library,

       P_sl2startup,

 P_LAST
} phases_t;

extern languages_t invoked_lang;
extern languages_t source_lang;

extern source_kind_t source_kind;
extern source_kind_t default_source_kind;

extern phases_t first_phase;
extern phases_t last_phase;
extern phases_t remember_last_phase;

extern phases_t current_phase;


extern phases_t earliest_phase (phases_t a, phases_t b);


extern languages_t get_language (char key);

extern phases_t get_phase (char key);

typedef long long mask_t;
extern mask_t PHASE_MASK;
extern mask_t LIB_MASK;

extern mask_t get_language_mask (languages_t i);
extern mask_t get_phase_mask (phases_t i);


extern void substitute_phase_dirs (char *orig_dir, char *new_dir, char *leaf);

extern void set_phase_dir (mask_t mask, char *path);

extern void prefix_all_phase_dirs (mask_t mask, char *path);

extern void append_all_phase_dirs (mask_t mask, char *path);

extern void append_phase_dir (phases_t index, char *path);

extern char *get_phase_dir (phases_t index);

extern char *get_phase_ld_library_path (phases_t index);

extern char *get_phase_name (phases_t index);

extern char *get_full_phase_name (phases_t index);

extern void set_phase_name (phases_t index, char *s);


extern languages_t get_named_language (char *name);

extern char *get_lang_name (languages_t index);


extern source_kind_t get_source_kind_from_suffix (char *suf);

extern source_kind_t get_source_kind (char *src);
extern boolean is_object_source_kind (char *src);

extern char *get_suffix_string (source_kind_t sk);


extern languages_t get_source_lang (source_kind_t sk);
extern boolean ignore_suffix;


extern boolean is_matching_language (mask_t lang_mask, languages_t l);

extern boolean is_matching_phase (mask_t phase_mask, phases_t p);

extern boolean show_but_not_run;

typedef enum {
 M_SMALL,
 M_MEDIUM,
 M_LARGE,
 M_KERNEL,
 M_LAST,
} mem_model_t;

extern mem_model_t mem_model;
# 42 "../../driver/options.h" 2






extern void init_options (void);

extern char *get_option_name (int flag);
extern char *get_option_help (int flag);


extern boolean option_has_blank (int flag);


extern boolean option_matches_language (int flag, languages_t l);

extern boolean option_matches_phase (int flag, phases_t p);

extern boolean is_internal_option (int flag);
extern void set_internal_option (int flag);


extern void add_phase_for_option(int flag, phases_t p);

extern void remove_phase_for_option(int flag, phases_t p);

extern void set_language_for_option (int flag, languages_t l);


extern int add_new_option (char *arg);







extern int add_derived_option (int parent, char *arg);
extern boolean is_derived_option (int flag);
extern int get_derived_parent (int flag);
# 91 "../../driver/options.h"
extern int first_option (void);
extern int next_option (void);
extern boolean no_more_options (void);




extern int first_combo_item (int combo_flag);
extern int next_combo_item (int combo_flag);
extern boolean no_more_combo_items (int combo_flag);




extern int first_implied_option (int flag);
extern int next_implied_option (int flag);
extern boolean no_more_implied_options (int flag);



extern char *get_current_implied_name (void);
# 5 "check_combos.c" 2
# 1 "../../driver/option_seen.h" 1
# 43 "../../driver/option_seen.h"
extern void init_option_seen (void);
extern void double_max_option_seen (void);


extern boolean option_was_seen (int optflag);

extern boolean option_was_implicitly_seen (int optflag);


extern void add_option_seen (int optflag);

extern void prepend_option_seen (int optflag);

extern void add_option_implicitly_seen (int optflag);


extern void replace_option_seen (int old_optflag, int new_optflag);


extern void set_option_unseen (int optflag);







extern int first_option_seen (void);
extern int next_option_seen (void);
extern boolean more_option_seen (void);



extern boolean current_option_seen_later (int optflag);

extern void set_current_option_unseen (void);
# 6 "check_combos.c" 2
# 1 "option_names.h" 1
# 805 "option_names.h"
extern int max_options;

extern int msglevel;
extern int skip_as;
extern int shared;
extern int rflag;
extern int qwalign2;
extern int qwalign1;
extern int iflag;
extern int abi;
extern int sse2;
extern int ospace;
extern int mpkind;
extern int sse3;
extern int m3dnow;
extern int isa;
extern int ipa;
extern int use_h264libs;
extern int glevel;
extern int use_ftpp;
extern int fortran_form;
extern int pic;
extern int fmath_errno;
extern int ffast_math;
extern int fbuiltin;
extern int use_coco;
extern int dflag;
extern int cordflag;
extern int io_byteswap;
extern int compat_gcc;
extern int use_bblibs;
extern int isstatic;
extern int ansi;
extern int olevel;
extern int standard_cplusplus;
extern int gnum;
# 7 "check_combos.c" 2
# 1 "../../driver/opt_actions.h" 1
# 62 "../../driver/opt_actions.h"
typedef enum {
  M_CPU,
  M_ARCH,
  M_TUNE,
} m_flag;

typedef enum {
  ABI_RAG32,
  ABI_N32,
  ABI_64,
  ABI_I32,
  ABI_I64,
  ABI_IA32
} ABI;
typedef enum {
  ISA_NONE = 0,
  ISA_MIPS1 = 1,
  ISA_MIPS2 = 2,
  ISA_MIPS3 = 3,
  ISA_MIPS4 = 4,
  ISA_MIPS5 = 5,
  ISA_MIPS6 = 6,
  ISA_MIPSX = 9,
  ISA_MIPS64 = 10,
  ISA_IA641 = 11,
  ISA_IA32 = 12,
  ISA_X8664 = 13,
  ISA_SL = 14,
} ISA;


typedef enum {
  SYSTEM_NONE = 0,
  SYSTEM_BB = 1,
  SYSTEM_H264 = 2,
} SL_SYSTEM;


extern boolean debug;

extern boolean nostdinc;

extern char *help_pattern;

extern int inline_t;

extern boolean dashdash_flag;


extern boolean read_stdin;

extern boolean xpg_flag;

extern int default_olevel;

extern int ofast;

extern int instrumentation_invoked;

extern boolean ftz_crt;


extern char *f90_module_dir;



extern boolean is_toggled (int obj);


extern void toggle (int *obj, int value);




extern void Check_Target ( void );


extern void dash_F_option(void);


extern void untoggle (int *obj, int value);


extern void save_name (char **obj, char *value);


extern void opt_action (int optflag);


extern boolean flag_is_superceded (int optflag);


extern void check_convert_name(char *name);



extern void check_dashdash ( void );


extern void set_dsm_options (void);

extern void Process_Mp (void);
extern void Process_Cray_Mp (void);

extern void print_file_path (char *, int);

extern int subverbose ;

extern char *target_cpu;
# 8 "check_combos.c" 2
# 1 "../../driver/errors.h" 1
# 39 "../../driver/errors.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 1 3 4
# 43 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 105 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 40 "../../driver/errors.h" 2



typedef int status_codes;
extern int internal_error_occurred;
extern status_codes error_status;

extern char *program_name;

extern boolean print_warnings;
extern boolean fullwarn;
extern boolean pass_exit_codes;


extern void init_error_list ();

extern void error (char *format, ...)
     __attribute__((format (printf, 1, 2)));

extern void parse_error (const char *name, const char *msg);

extern void warning (char *format, ...)
     __attribute__((format (printf, 1, 2)));

extern void warn_ignored (char *name);

extern void warn_nyi (char *name);

extern void warn_no_longer_needed (char *name);
extern void warn_no_longer_supported (char *name);
extern void warn_no_longer_supported2 (char *name, char *newname);

extern void internal_error (char *format, ...)
     __attribute__((format (printf, 1, 2)));


extern void vlog_error (char *format, va_list ap);
extern void log_error (char *format, ...)
     __attribute__((format (printf, 1, 2)));


extern void nomsg_error (int);


extern boolean has_errors (void);

extern boolean has_current_errors (void);

extern void clear_current_errors (void);
# 9 "check_combos.c" 2


static void
replace_with_combo (int combo_index)
{
 int flag;
 int count = 1;
 for (flag = first_combo_item(combo_index); !no_more_combo_items(combo_index); flag = next_combo_item(combo_index)) {
  if (count == 1) {
   replace_option_seen(flag, combo_index);
  } else {
   set_option_unseen(flag);
  }
  count++;
 }
}

static void
report_combo_errors (void)
{
}

extern boolean
is_replacement_combo (int combo_index)
{
 switch (combo_index) {
 default:
  return 0;
 }
}

extern void
check_for_combos (void)
{
 report_combo_errors();
}
