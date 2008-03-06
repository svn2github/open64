# 1 "../../driver/options.c"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/driver//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../driver/options.c"
# 40 "../../driver/options.c"
# 1 "/usr/include/malloc.h" 1 3 4
# 23 "/usr/include/malloc.h" 3 4
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
# 24 "/usr/include/malloc.h" 2 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 152 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 326 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int wchar_t;
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



# 41 "../../driver/options.c" 2
# 1 "../../driver/phases.h" 1
# 40 "../../driver/phases.h"
# 1 "../../driver/basic.h" 1
# 44 "../../driver/basic.h"
typedef int boolean;


typedef char buffer_t[512];
# 41 "../../driver/phases.h" 2

extern char *source_file;
extern boolean multiple_source_files;

extern char *outfile;
extern char *prof_file;
extern char *fb_file;
extern char *internal_fb_file;
extern char *opt_file;
extern char *fb_xdir;
extern char *fb_cdir;
extern char *fb_phase;
extern char *fb_type;

extern char *coco_setfile;


extern boolean ldscript_file;


extern char *ldpath_for_pixie;
extern int saved_argc;
extern char **saved_argv;
extern char *command_line;

extern boolean keep_mp;
extern boolean keep_list;
extern boolean keep_listing;
extern boolean keep_cif;
extern boolean auto_parallelize;
extern boolean Gen_feedback;
extern boolean Use_feedback;
extern boolean Disable_open_mp;
extern boolean Disable_old_mp;
extern char roundoff;
extern boolean O3_flag;
extern boolean nocpp_flag;
extern boolean use_cpp;
extern boolean expand_ftpp_macros;
extern int fortran_line_length;

extern char *ld_library_path;
extern char *ld_libraryn32_path;

extern char *orig_program_name;

boolean dump_outfile_to_stdout;



extern void init_phase_info (void);


extern void run_dsm_prelink(void);


extern void run_ld (void);
extern void run_ar (void);
extern void run_pixie (void);
extern void run_prof (void);


extern void run_compiler (int argc, char *argv[]);


extern char *fix_name_by_lang (char *name);


extern void save_command_line(int, char **);
extern void set_current_arg_pos(int n);
extern int check_for_saved_option(char *s);
extern void cancel_saved_arg(int count);
extern void add_minus_c_option(void);


extern void save_ipl_commands (void);
extern char *dirname(char *const s);

int quote_shell_arg (char *p, char *buf);


extern void init_phase_names (void);
# 42 "../../driver/options.c" 2
# 1 "../../driver/options.h" 1
# 41 "../../driver/options.h"
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
# 43 "../../driver/options.c" 2
# 1 "../../driver/string_utils.h" 1
# 43 "../../driver/string_utils.h"
# 1 "/usr/include/stdio.h" 1 3 4
# 30 "/usr/include/stdio.h" 3 4




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
# 53 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 1 3 4
# 43 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 54 "/usr/include/libio.h" 2 3 4
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




typedef __gnuc_va_list va_list;
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

# 44 "../../driver/string_utils.h" 2
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

# 45 "../../driver/string_utils.h" 2



extern char *string_copy (char *s);


extern char *substring_copy (char *s, int i, int len);


extern char *concat_strings (const char *a, const char *b);


extern char *get_suffix (const char *s);


extern char *change_suffix (char *s, char *suffix);


extern boolean has_blank (char *s);





extern char *expand_template_string (char *template, char *arg);






extern void replace_substring (char *base, char *old_pattern, char *new_pattern);



typedef struct string_item_rec {
 char *name;
 struct string_item_rec *next;
} string_item_t;
typedef struct string_list_rec {
 string_item_t *head;
 string_item_t *tail;
} string_list_t;


extern string_list_t * init_string_list (void);


extern int string_list_size(const string_list_t *l);


extern void add_string (string_list_t *list, char *s);


extern void add_after_string (string_list_t *list, string_item_t *item, char *s);





extern void add_multi_strings (string_list_t *list, char *s, boolean only_one);



extern void add_string_if_new (string_list_t *list, char *s);


extern void replace_string (string_list_t *list, char *old, char *new);


extern void append_string_lists (string_list_t *a, string_list_t *b);


extern void print_string_list (FILE *f, string_list_t *list);

extern const char *ends_with(const char *s, const char *sfx);







typedef struct string_pair_item_rec {
 char *key;
 char *val;
 struct string_pair_item_rec *next;
} string_pair_item_t;
typedef struct string_pair_list_rec {
 string_pair_item_t *head;
 string_pair_item_t *tail;
} string_pair_list_t;


extern string_pair_list_t * init_string_pair_list (void);


extern void add_string_pair (string_pair_list_t *list, char *key, char *val);
# 44 "../../driver/options.c" 2
# 1 "../../driver/errors.h" 1
# 39 "../../driver/errors.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 1 3 4
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
# 45 "../../driver/options.c" 2
# 1 "./option_names.h" 1
# 805 "./option_names.h"
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
# 46 "../../driver/options.c" 2
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
# 47 "../../driver/options.c" 2
# 55 "../../driver/options.c"
typedef struct option_list_rec {
 int info_index;
 char *name;
 struct option_list_rec *next;
} option_list_t;

typedef struct index_list_rec {
 int info_index;
 struct index_list_rec *next;
} index_list_t;

typedef struct option_info_rec {
 mask_t valid_langs;
 mask_t valid_phases;
 index_list_t *combo_list;
 option_list_t *implies;
 char *name;
 char *help_msg;
} option_info_t;


static option_info_t *options;
int max_options = 814 +100;





static int last_option = 814;


char *
get_option_name (int flag)
{

 if (options[flag].name == ((void *)0) && options[flag].implies != ((void *)0)) {
  return options[flag].implies->name;
 } else {
  return options[flag].name;
 }
}


char *
get_option_help (int flag)
{
 return options[flag].help_msg;
}



boolean
option_has_blank (int flag)
{
 return (options[flag].implies != ((void *)0)
           && has_blank(options[flag].implies->name));
}


void
set_language_for_option (int flag, languages_t l)
{
  options[flag].valid_langs = get_language_mask(l);
}

void
add_language_for_option (int flag, languages_t l)
{
  options[flag].valid_langs |= get_language_mask(l);
}


boolean
option_matches_language (int flag, languages_t l)
{
  return (is_matching_language (options[flag].valid_langs, l));
}


boolean
is_internal_option (int flag)
{
  return (is_matching_language (options[flag].valid_langs, L_internal));
}


void
set_internal_option (int flag)
{
  add_language_for_option ( flag, L_internal );
}


boolean
option_matches_phase (int flag, phases_t p)
{
 return (is_matching_phase (options[flag].valid_phases, p));
}


void
add_phase_for_option(int flag, phases_t p)
{
                options[flag].valid_phases |= get_phase_mask(p);
}


void
remove_phase_for_option(int flag, phases_t p)
{
                options[flag].valid_phases &= ~(get_phase_mask(p));
}


static void
double_max_options (void)
{
 max_options *= 2;
 options = (option_info_t *) realloc((char*)options, max_options*sizeof(option_info_t));
 double_max_option_seen();
}


int
add_new_option (char *arg)
{
 option_list_t *p;
 if (last_option >= max_options) {
  double_max_options();
 }
 p = (option_list_t*)malloc(sizeof(option_list_t));
 p->name = string_copy(arg);
 p->info_index = last_option;
 p->next = ((void *)0);
 options[last_option].implies = p;
 options[last_option].name = ((void *)0);
 options[last_option].help_msg = ((void *)0);
 options[last_option].valid_langs = get_language_mask(L_ALL);
 options[last_option].valid_phases = get_phase_mask(P_NONE);
 last_option++;
 return last_option-1;
}







int
add_derived_option (int parent, char *arg)
{
 option_list_t *pi;
 option_list_t *ni;
 char* loc;
 int new = add_new_option (arg);
 if (loc = strstr(arg, "roundoff")) {

          roundoff = loc[9];
 }

 options[new].valid_langs = options[parent].valid_langs;
 options[new].valid_phases = options[parent].valid_phases;

 pi = options[parent].implies;
 ni = options[new].implies;

 ni->info_index = parent;
 while (pi != ((void *)0)) {
  ni->info_index = pi->info_index;
  ni->name = expand_template_string (pi->name, arg);


  if (strncmp(pi->name, "-Wl,",4) == 0) {
    ni->name +=4;
  }
  pi = pi->next;
  if (pi != ((void *)0)) {

   ni->next = (option_list_t*)malloc(sizeof(option_list_t));
   ni = ni->next;
  }
 }
 ni->next = ((void *)0);
 return new;
}


boolean
is_derived_option (int flag)
{
 return (options[flag].name == ((void *)0));
}


int
get_derived_parent (int flag)
{
 return options[flag].implies->info_index;
}
# 265 "../../driver/options.c"
static int current_option;

int
first_option (void)
{
 current_option = last_option-1;
 return current_option;
}

int
next_option (void)
{
 current_option--;
 return current_option;
}

boolean
no_more_options (void)
{
 return (current_option == 0);
}






static index_list_t *current_combo;

int
first_combo_item (int combo_flag)
{
 current_combo = options[combo_flag].combo_list;
 if (current_combo == ((void *)0))
  return 0;
 else
  return current_combo->info_index;
}

int
next_combo_item (int combo_flag)
{
 current_combo = current_combo->next;
 if (current_combo == ((void *)0))
  return 0;
 else
  return current_combo->info_index;
}

boolean
no_more_combo_items (int combo_flag)
{
 return (current_combo == ((void *)0));
}






static option_list_t *current_implied;

int
first_implied_option (int flag)
{
 current_implied = options[flag].implies;
 if (current_implied == ((void *)0))
  return 0;
 else
  return current_implied->info_index;
}

int
next_implied_option (int flag)
{
 current_implied = current_implied->next;
 if (current_implied == ((void *)0))
  return 0;
 else
  return current_implied->info_index;
}

boolean
no_more_implied_options (int flag)
{
 return (current_implied == ((void *)0));
}



char *
get_current_implied_name (void)
{
 return (current_implied->name);
}

void
dump_option (int flag)
{
 option_list_t *pi = options[flag].implies;
 index_list_t *pc = options[flag].combo_list;
 printf("dump option %d", flag);
 if (options[flag].name != ((void *)0)) {
  printf(" (%s)", options[flag].name);
 }
 printf("\n");
 printf("\tlangs = %llx, phases = %llx\n", options[flag].valid_langs,
  options[flag].valid_phases);
 if (pi != ((void *)0)) {
  printf("\timplies:");
  while (pi != ((void *)0)) {
   printf("  %d(%s)", pi->info_index, pi->name);
   pi = pi->next;
  }
 }
 printf("\n");
 if (pc != ((void *)0)) {
  printf("\tcombos:");
  while (pc != ((void *)0)) {
   printf("  %d", pc->info_index);
   pc = pc->next;
  }
  printf("\n");
 }
}

# 1 "./init_options.i" 1


# 1 "./option_names.h" 1
# 805 "./option_names.h"
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
# 4 "./init_options.i" 2
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
# 5 "./init_options.i" 2

int msglevel = -1;
int skip_as = -1;
int shared = -1;
int rflag = -1;
int qwalign2 = -1;
int qwalign1 = -1;
int iflag = -1;
int abi = -1;
int sse2 = -1;
int ospace = -1;
int mpkind = -1;
int sse3 = -1;
int m3dnow = -1;
int isa = -1;
int ipa = -1;
int use_h264libs = -1;
int glevel = -1;
int use_ftpp = -1;
int fortran_form = -1;
int pic = -1;
int fmath_errno = -1;
int ffast_math = -1;
int fbuiltin = -1;
int use_coco = -1;
int dflag = -1;
int cordflag = -1;
int io_byteswap = -1;
int compat_gcc = -1;
int use_bblibs = -1;
int isstatic = -1;
int ansi = -1;
int olevel = -1;
int standard_cplusplus = -1;
int gnum = -1;

static void
create_option_info (int flag, mask_t lang_mask, mask_t phase_mask, char *name, char *help_msg)
{
 options[flag].valid_langs = lang_mask;
 options[flag].valid_phases = phase_mask;
 options[flag].combo_list = ((void *)0);
 options[flag].implies = ((void *)0);
 options[flag].name = string_copy(name);
 options[flag].help_msg = string_copy(help_msg);
}

static void
create_implies_item (int key, int index, char *name)
{
 option_list_t *p;
 p = (option_list_t *) malloc(sizeof(option_list_t));
 p->info_index = index;
 p->name = string_copy(name);
 p->next = options[key].implies;
 options[key].implies = p;
}

static void
create_combo_item (int key, int index)
{
 index_list_t *p;
 p = (index_list_t *) malloc(sizeof(index_list_t));
 p->info_index = index;
 p->next = options[key].combo_list;
 options[key].combo_list = p;
}


extern void
init_options (void)
{
 options = (option_info_t *) malloc(max_options*sizeof(option_info_t));
 create_option_info(0,0LL,0LL,"",((void *)0));
 create_option_info(1,0x80000018LL,0xf0000LL,"-xall",((void *)0));
 create_implies_item(1, 1, "-xall");
 create_option_info(2,0x80000006LL,0x1000f0000000000LL,"-u",((void *)0));
 create_implies_item(2, 2, "-u %s");
 create_option_info(3,0x80000018LL,0x7000LL,"-scan",((void *)0));
 create_implies_item(3, 3, "-scan");
 create_option_info(4,0x8fffffffLL,0x1000f0000000000LL,"-object",((void *)0));
 create_option_info(5,0x8fffffffLL,0x1f00f0000LL,"-m2",((void *)0));
 create_implies_item(5, 5, "-m2");
 create_option_info(6,0x8fffffffLL,0x1f00f0000LL,"-m1",((void *)0));
 create_implies_item(6, 6, "-m1");
 create_option_info(7,0x8fffffffLL,0x1f00f0000LL,"-m0",((void *)0));
 create_implies_item(7, 7, "-m0");
 create_option_info(8,0x80000018LL,0x7000LL,"-lo=ocktl",((void *)0));
 create_implies_item(8, 8, "-lo=ocktl");
 create_option_info(9,0x80000004LL,0x1000f0000000000LL,"-init",((void *)0));
 create_implies_item(9, 9, "-init %s");
 create_option_info(10,0x80000018LL,0xf7000LL,"-include=",((void *)0));
 create_implies_item(10, 10, "-include=%D");
 create_option_info(11,0x80000004LL,0x1000f0000000000LL,"-fini",((void *)0));
 create_implies_item(11, 11, "-fini %s");
 create_option_info(12,0x80000018LL,0xf0000LL,"-cvs_nosrc,",((void *)0));
 create_implies_item(12, 12, "-cvs_nosrc,%D");
 create_option_info(13,0x80000018LL,0xf0000LL,"-cvs_nosrc",((void *)0));
 create_implies_item(13, 13, "-cvs_nosrc");
 create_option_info(14,0x80000018LL,0xf0000LL,"-cvs,",((void *)0));
 create_implies_item(14, 14, "-cvs,%D");
 create_option_info(15,0x80000018LL,0xf0000LL,"-cvs",((void *)0));
 create_implies_item(15, 15, "-cvs");
 create_option_info(16,0x8fffffffLL,0LL,"-cpp_pic",((void *)0));
 create_implies_item(16, 745, "-D__DSO__");
 create_implies_item(16, 745, "-D_PIC");
 create_option_info(17,0x8fffffffLL,0LL,"-cpp_nonansi",((void *)0));
 create_implies_item(17, 745, "-D_LONGLONG");
 create_option_info(18,0x80000010LL,0xff0LL,"-cpp_fortran90",((void *)0));
 create_implies_item(18, 745, "-DLANGUAGE_FORTRAN90");
 create_implies_item(18, 745, "-D_LANGUAGE_FORTRAN90");
 create_option_info(19,0x80000008LL,0xff0LL,"-cpp_fortran77",((void *)0));
 create_implies_item(19, 745, "-DLANGUAGE_FORTRAN77");
 create_implies_item(19, 745, "-D_LANGUAGE_FORTRAN77");
 create_option_info(20,0x80000018LL,0xff0LL,"-cpp_fortran",((void *)0));
 create_implies_item(20, 745, "-DLANGUAGE_FORTRAN");
 create_implies_item(20, 26, "-D_LANGUAGE_FORTRAN");
 create_option_info(21,0x8fffffffLL,0LL,"-cpp_extensions",((void *)0));
 create_implies_item(21, 745, "-D__MATH_HAS_NO_SIDE_EFFECTS");
 create_implies_item(21, 25, "-D__EXTENSIONS__");
 create_option_info(22,0x80000020LL,0xff0LL,"-cpp_assembly",((void *)0));
 create_implies_item(22, 745, "-DLANGUAGE_ASSEMBLY");
 create_implies_item(22, 29, "-D_LANGUAGE_ASSEMBLY");
 create_option_info(23,0x80000002LL,0x8000LL,"-Xansi",((void *)0));
 create_implies_item(23, 23, "-Xansi");
 create_option_info(24,0x80000006LL,0xff0LL,"-D__GNUC__",((void *)0));
 create_implies_item(24, 24, "-D__GNUC__");
 create_option_info(25,0x80000006LL,0xff0LL,"-D__EXTENSIONS__",((void *)0));
 create_implies_item(25, 25, "-D__EXTENSIONS__");
 create_option_info(26,0x80000018LL,0xff0LL,"-D_LANGUAGE_FORTRAN",((void *)0));
 create_implies_item(26, 26, "-D_LANGUAGE_FORTRAN");
 create_option_info(27,0x80000004LL,0xff0LL,"-D_LANGUAGE_C_PLUS_PLUS=1",((void *)0));
 create_implies_item(27, 27, "-D_LANGUAGE_C_PLUS_PLUS=1");
 create_option_info(28,0x80000002LL,0xff0LL,"-D_LANGUAGE_C",((void *)0));
 create_implies_item(28, 28, "-D_LANGUAGE_C");
 create_option_info(29,0x80000020LL,0xff0LL,"-D_LANGUAGE_ASSEMBLY",((void *)0));
 create_implies_item(29, 29, "-D_LANGUAGE_ASSEMBLY");
 create_option_info(30,0x1eLL,0x100000000LL,"-zerouv","set uninitialized variables to zero");
 create_implies_item(30, 744, "-DEBUG:zero_uninitialized");
 create_option_info(31,0x1eLL,0x1000f0000000000LL,"-y",((void *)0));
 create_implies_item(31, 31, "-y %s");
 create_option_info(32,0xfffffffLL,0LL,"-x","Specify explicit language for input files");
 create_option_info(33,0xfffffffLL,0LL,"-woffoptions","turn off warnings about options");
 create_option_info(34,0xfffffffLL,0LL,"-woffall","turn off all warnings");
 create_implies_item(34, 7, "-m0");
 create_implies_item(34, 39, "-w");
 create_option_info(35,0x18LL,0x1000f0000LL,"-woff","turn off named warnings");
 create_implies_item(35, 35, "-woff%d");
 create_option_info(36,0x8LL,0xf0000LL,"-w66","turn off F66 incompatibility warnings");
 create_implies_item(36, 36, "-w66");
 create_option_info(37,0x8LL,0xf0000LL,"-w3","supress warnings but exit with error status");
 create_implies_item(37, 37, "-w3");
 create_option_info(38,0x8LL,0xf0000LL,"-w2","warnings count as errors");
 create_implies_item(38, 38, "-w2");
 create_option_info(39,0xfffffffLL,0x3000f07ff0LL,"-w",((void *)0));
 create_implies_item(39, 7, "-m0");
 create_implies_item(39, 39, "-w");
 create_option_info(40,0x8LL,0xf0000LL,"-vms_stdin",((void *)0));
 create_implies_item(40, 40, "-vms_stdin");
 create_option_info(41,0x8LL,0xf0000LL,"-vms_library",((void *)0));
 create_implies_item(41, 41, "-vms_library");
 create_option_info(42,0x8LL,0xf0000LL,"-vms_endfile",((void *)0));
 create_implies_item(42, 42, "-vms_endfile");
 create_option_info(43,0x8LL,0xf0000LL,"-vms_cc",((void *)0));
 create_implies_item(43, 43, "-vms_cc");
 create_option_info(44,0x18LL,0LL,"-vms",((void *)0));
 create_implies_item(44, 44, "-vms");
 create_option_info(45,0xfffffffLL,0LL,"-version","Show the version of the compiler being used");
 create_option_info(46,0x8LL,0xf0000LL,"-varargs","MATRA varargs");
 create_implies_item(46, 46, "-varargs");
 create_option_info(47,0xfffffffLL,0x1000f3000000ff0LL,"-v","show phases and version as they are being invoked");
 create_implies_item(47, 89, "-show");
 create_implies_item(47, 47, "-v");
 create_option_info(48,0x6LL,0LL,"-usegfe",((void *)0));
 create_implies_item(48, 729, "-INTERNAL:return_info=on");
 create_implies_item(48, 729, "-INTERNAL:mldid_mstid=on");
 create_implies_item(48, 729, "-INTERNAL:return_val=on");
 create_option_info(49,0x8LL,0xf0000LL,"-usefpidx",((void *)0));
 create_implies_item(49, 49, "-usefpidx");
 create_option_info(50,0x10LL,0LL,"-usef90",((void *)0));
 create_implies_item(50, 729, "-INTERNAL:return_info=on");
 create_implies_item(50, 729, "-INTERNAL:mldid_mstid=on");
 create_implies_item(50, 729, "-INTERNAL:return_val=on");
 create_option_info(51,0xfffffffLL,0LL,"-useas",((void *)0));
 create_option_info(52,0x18LL,0xf00000LL,"-use_readwrite_const",((void *)0));
 create_implies_item(52, 52, "-use_readwrite_const");
 create_option_info(53,0x18LL,0xf00000LL,"-use_readonly_const",((void *)0));
 create_implies_item(53, 53, "-use_readonly_const");
 create_option_info(54,0x27LL,0xff0LL,"-undef",((void *)0));
 create_implies_item(54, 54, "-undef");
 create_option_info(55,0xfffffffLL,0LL,"-u",((void *)0));
 create_option_info(56,0x7LL,0xff0LL,"-trigraphs",((void *)0));
 create_implies_item(56, 56, "-trigraphs");
 create_option_info(57,0x1eLL,0x100000000LL,"-trapuv","trap uninitialized variables");
 create_implies_item(57, 744, "-DEBUG:trap_uninitialized");
 create_option_info(58,0x7LL,0LL,"-traditional-cpp",((void *)0));
 create_implies_item(58, 59, "-traditional");
 create_option_info(59,0x7LL,0xff0LL,"-traditional","Attempt to support traditional K&R style C");
 create_implies_item(59, 59, "-traditional");
 create_option_info(60,0x6LL,0xff0000LL,"-syntax-only",((void *)0));
 create_implies_item(60, 60, "-syntax-only");
 create_option_info(61,0x1eLL,0x1000f0000000000LL,"-symbolic",((void *)0));
 create_implies_item(61, 61, "-symbolic");
 create_option_info(62,0xfffffffLL,0LL,"-subverbose","Print diagnostic information about subscription management");
 create_implies_item(62, 62, "-subverbose");
 create_option_info(63,0xfffffffLL,0xff0LL,"-stdinc","predefined include search path list");
 create_option_info(64,0x7LL,0xff0ff0LL,"-std=iso9899:199x","Support revised ISO C, from 1999");
 create_implies_item(64, 64, "-std=iso9899:199x");
 create_option_info(65,0x7LL,0xff0ff0LL,"-std=iso9899:1999","Support revised ISO C, from 1999");
 create_implies_item(65, 65, "-std=iso9899:1999");
 create_option_info(66,0x7LL,0xff0ff0LL,"-std=iso9899:199409","Support ISO C from 1990, with 1994 amendments");
 create_implies_item(66, 66, "-std=iso9899:199409");
 create_option_info(67,0x7LL,0xff0ff0LL,"-std=iso9899:1990","Support ISO C from 1990");
 create_implies_item(67, 67, "-std=iso9899:1990");
 create_option_info(68,0x7LL,0xff0ff0LL,"-std=gnu9x","Support ISO C from 1999, with GNU extensions");
 create_implies_item(68, 68, "-std=gnu9x");
 create_option_info(69,0x7LL,0xff0ff0LL,"-std=gnu99","Support ISO C from 1999, with GNU extensions");
 create_implies_item(69, 69, "-std=gnu99");
 create_option_info(70,0x7LL,0xff0ff0LL,"-std=gnu89","Support ISO C from 1990, with GNU extensions");
 create_implies_item(70, 70, "-std=gnu89");
 create_option_info(71,0x5LL,0xff0ff0LL,"-std=gnu++98","The same as `-std=c++98' plus GNU extensions.  This is the default for C++ code.");
 create_implies_item(71, 71, "-std=gnu++98");
 create_option_info(72,0x7LL,0xff0ff0LL,"-std=c9x","Support revised ISO C, from 1999");
 create_implies_item(72, 72, "-std=c9x");
 create_option_info(73,0x7LL,0xff0ff0LL,"-std=c99","Support revised ISO C, from 1999");
 create_implies_item(73, 73, "-std=c99");
 create_option_info(74,0x7LL,0xff0ff0LL,"-std=c89","Support ISO C from 1990");
 create_implies_item(74, 74, "-std=c89");
 create_option_info(75,0x5LL,0xff0ff0LL,"-std=c++98","Support 1998 ISO C++ standard plus amendments");
 create_implies_item(75, 75, "-std=c++98");
 create_option_info(76,0x18LL,0xf0000LL,"-static_threadprivate",((void *)0));
 create_implies_item(76, 76, "-static_threadprivate");
 create_option_info(78,0x1eLL,0x1000f0000000000LL,"-static-libgcc","Force the use of the static libgcc library");
 create_implies_item(78, 78, "-static-libgcc");
 create_option_info(79,0x18LL,0xf0000LL,"-static-data","treat local data as static");
 create_implies_item(79, 79, "-static-data");
 create_option_info(80,0x1eLL,0x1000f0000000000LL,"-static",((void *)0));
 create_implies_item(80, 80, "-static");
 create_option_info(81,0xfffffffLL,0LL,"-specs=",((void *)0));
 create_implies_item(81, 81, "-specs=");
 create_option_info(82,0x1eLL,0x1000f0000000000LL,"-soname",((void *)0));
 create_implies_item(82, 82, "-soname %s");
 create_option_info(83,0xfffffffLL,0x100000000LL,"-sl2_lut=","tell which application is compiled, to decide the right LUT");
 create_implies_item(83, 747, "-CG:app_name=%s");
 create_option_info(84,0xfffffffLL,0LL,"-showt","show time taken by each phase");
 create_option_info(85,0xfffffffLL,0LL,"-showd",((void *)0));
 create_option_info(86,0xfffffffLL,0LL,"-show1",((void *)0));
 create_option_info(87,0xfffffffLL,0LL,"-show0","show what phases would be called, but don't invoke anything");
 create_option_info(88,0xfffffffLL,0LL,"-show-defaults","Show the default compiler options being used");
 create_option_info(89,0xfffffffLL,0x101f00f0000LL,"-show","show phases as they are being invoked");
 create_implies_item(89, 89, "-show");
 create_option_info(90,0x1eLL,0x1000f0000000000LL,"-shared-libgcc","Force the use of the shared libgcc library");
 create_implies_item(90, 90, "-shared-libgcc");
 create_option_info(91,0xfffffffLL,0x1000f0000000000LL,"-shared","dso-shared PIC code");
 create_implies_item(91, 91, "-shared");
 create_implies_item(91, 685, "-TENV:PIC");
 create_option_info(92,0xfffffffLL,0LL,"-save-temps",((void *)0));
 create_option_info(93,0x1eLL,0x1000f0000000000LL,"-s","Strip symbol table and relocation information");
 create_implies_item(93, 93, "-s");
 create_option_info(94,0x1eLL,0x1000f0000000000LL,"-rpath",((void *)0));
 create_implies_item(94, 94, "-rpath %s");
 create_option_info(95,0xfffffffLL,0LL,"-realO","override the turning down of optimization levels");
 create_option_info(96,0x1eLL,0x1000f0000000000LL,"-rdynamic",((void *)0));
 create_implies_item(96, 644, "-Wl,--export-dynamic");
 create_option_info(97,0x8LL,0xf0000LL,"-r8const",((void *)0));
 create_implies_item(97, 97, "-r8const");
 create_option_info(98,0x18LL,0xf0000LL,"-r8","use REAL*8 and COMPLEX*16 as the defaults for real and complex");
 create_implies_item(98, 98, "-r8");
 create_option_info(99,0x18LL,0xf0000LL,"-r4","use REAL*4 and COMPLEX*8 as the defaults for real and complex");
 create_implies_item(99, 99, "-r4");
 create_option_info(100,0xfffffffLL,0x1000f0000000000LL,"-r","produce a relocatable .o and stop");
 create_implies_item(100, 100, "-r");
 create_option_info(101,0xfffffffLL,0x3000000000LL,"-qwa2","quadword alignment: do pu alignment");
 create_implies_item(101, 747, "-CG:qw_aligned=2");
 create_option_info(102,0xfffffffLL,0x3000000000LL,"-qwa1","quadword alignment");
 create_implies_item(102, 747, "-CG:qw_aligned=1");
 create_option_info(103,0xfffffffLL,0LL,"-pthread","Compile with pthreads support");
 create_option_info(104,0x1eLL,0x100000000LL,"-promp",((void *)0));
 create_implies_item(104, 693, "-PROMP:=on");
 create_implies_item(104, 694, "-PHASE:prompf");
 create_option_info(105,0xfffffffLL,0x1000f0000000000LL,"-profile",((void *)0));
 create_implies_item(105, 685, "-TENV:call_mcount");
 create_implies_item(105, 207, "-lm");
 create_implies_item(105, 105, "-profile");
 create_option_info(106,0xfffffffLL,0LL,"-print-search-dirs","Print the installation directory and directories the compiler will search");
 create_option_info(107,0xfffffffLL,0LL,"-print-prog-name=",((void *)0));
 create_option_info(108,0xfffffffLL,0LL,"-print-multi-lib","Print the mapping from multilib directory names to compiler switches that enable them.");
 create_option_info(109,0xfffffffLL,0LL,"-print-libgcc-file-name",((void *)0));
 create_implies_item(109, 110, "-print-file-name=libgcc.a");
 create_option_info(110,0xfffffffLL,0LL,"-print-file-name=",((void *)0));
 create_option_info(111,0x4LL,0LL,"-prelink","use prelinker (default)");
 create_option_info(112,0xfffffffLL,0LL,"-pipe",((void *)0));
 create_option_info(113,0xfffffffLL,0x1000f0000000000LL,"-pie","Generate position independent code, if possible");
 create_implies_item(113, 685, "-TENV:PIC");
 create_implies_item(113, 113, "-pie");
 create_option_info(114,0xfffffffLL,0LL,"-pic1",((void *)0));
 create_implies_item(114, 685, "-TENV:CPIC");
 create_option_info(115,0xfffffffLL,0x1000f0000000000LL,"-pg",((void *)0));
 create_implies_item(115, 685, "-TENV:call_mcount");
 create_implies_item(115, 207, "-lm");
 create_implies_item(115, 115, "-pg");
 create_option_info(116,0xfffffffLL,0LL,"-pfa2",((void *)0));
 create_option_info(117,0x1eLL,0x100000000LL,"-pfa,",((void *)0));
 create_implies_item(117, 120, "-pfa");
 create_option_info(118,0x1eLL,0x100000000LL,"-pfalist",((void *)0));
 create_implies_item(118, 719, "-LNO:prompl");
 create_implies_item(118, 120, "-pfa");
 create_option_info(119,0x1eLL,0x100000000LL,"-pfakeep",((void *)0));
 create_implies_item(119, 719, "-LNO:prompl");
 create_implies_item(119, 120, "-pfa");
 create_option_info(120,0x1eLL,0x100000000LL,"-pfa",((void *)0));
 create_implies_item(120, 120, "-pfa");
 create_option_info(121,0x7LL,0xff0ff0LL,"-pedantic-errors","Issue warnings needed by strict compliance to ANSI C");
 create_implies_item(121, 121, "-pedantic-errors");
 create_option_info(122,0x7LL,0xf00ff0LL,"-pedantic",((void *)0));
 create_implies_item(122, 122, "-pedantic");
 create_option_info(123,0x1eLL,0x100000000LL,"-pca,",((void *)0));
 create_implies_item(123, 120, "-pfa");
 create_option_info(124,0x1eLL,0x100000000LL,"-pcalist",((void *)0));
 create_implies_item(124, 719, "-LNO:prompl");
 create_implies_item(124, 120, "-pfa");
 create_option_info(125,0x1aLL,0x100000000LL,"-pcakeep",((void *)0));
 create_implies_item(125, 719, "-LNO:prompl");
 create_implies_item(125, 120, "-pfa");
 create_option_info(126,0x1eLL,0x100000000LL,"-pca",((void *)0));
 create_implies_item(126, 120, "-pfa");
 create_option_info(127,0x6LL,0xff0LL,"-pathcc","Define __PATHCC__ and other macros");
 create_option_info(128,0xfffffffLL,0LL,"-pass-exit-codes","Return the highest error code encountered by any phase");
 create_option_info(129,0x6LL,0xf00000LL,"-parse",((void *)0));
 create_implies_item(129, 129, "-parse");
 create_option_info(130,0x10LL,0xf0000LL,"-pad_char_literals",((void *)0));
 create_implies_item(130, 130, "-pad_char_literals");
 create_option_info(132,0xfffffffLL,0x1000f0000000000LL,"-p",((void *)0));
 create_implies_item(132, 685, "-TENV:call_mcount");
 create_implies_item(132, 132, "-p");
 create_option_info(133,0x1eLL,0xf0000LL,"-openmp","enable the multiprocessing directives (same as -mp)");
 create_implies_item(133, 174, "-mp");
 create_option_info(134,0x8LL,0xf0000LL,"-onetrip","One trip DO loops");
 create_implies_item(134, 751, "-1");
 create_option_info(135,0x8LL,0xf0000LL,"-old_rl",((void *)0));
 create_implies_item(135, 135, "-old_rl");
 create_option_info(136,0xfffffffLL,0LL,"-o","put output in following file name rather than a.out");
 create_option_info(137,0x1eLL,0x1000f0000000000LL,"-nostdlib","Do not use standard system startup files or libraries when linking");
 create_implies_item(137, 137, "-nostdlib");
 create_option_info(138,0x5LL,0xff0LL,"-nostdinc++","Do not search for header files in the standard directories specific to C++");
 create_implies_item(138, 138, "-nostdinc++");
 create_option_info(139,0xfffffffLL,0xff0LL,"-nostdinc","no predefined include search path list");
 create_implies_item(139, 139, "-nostdinc");
 create_option_info(140,0x1eLL,0x1000f0000000000LL,"-nostartfiles","Do not use standard system startup files when linking");
 create_implies_item(140, 140, "-nostartfiles");
 create_option_info(141,0x6LL,0LL,"-noinline","suppress inline processing");
 create_implies_item(141, 730, "-INLINE:=OFF");
 create_option_info(142,0x8LL,0xf0000LL,"-noi4","make integer and logical quantities short (2 bytes)");
 create_implies_item(142, 142, "-noi4");
 create_option_info(143,0x8LL,0xf0000LL,"-nof77",((void *)0));
 create_implies_item(143, 143, "-nof77");
 create_option_info(144,0x18LL,0xf0000LL,"-noextend_source",((void *)0));
 create_implies_item(144, 3, "-scan=72");
 create_implies_item(144, 144, "-noextend_source");
 create_option_info(146,0x18LL,0x100000000LL,"-noexpopt","Don't optimize exponentiation operations");
 create_implies_item(146, 699, "-OPT:fast_exp=no");
 create_option_info(147,0x1eLL,0x1000f0000000000LL,"-nodefaultlibs","Do not use standard system libraries when linking");
 create_implies_item(147, 147, "-nodefaultlibs");
 create_option_info(148,0x18LL,0xff0000LL,"-nocpp","don't do cpp processing");
 create_implies_item(148, 148, "-nocpp");
 create_option_info(149,0x4LL,0xf00000LL,"-nobool","disallow bool keyword");
 create_implies_item(149, 149, "-nobool");
 create_option_info(150,0xfffffffLL,0LL,"-noas",((void *)0));
 create_option_info(151,0x4LL,0xf00000LL,"-no_prelink",((void *)0));
 create_implies_item(151, 151, "-no_prelink");
 create_option_info(152,0x6LL,0xff0000LL,"-no-traditional",((void *)0));
 create_implies_item(152, 152, "-no-traditional");
 create_option_info(154,0x6LL,0xff0LL,"-no-pathcc","Don't define __PATHCC__ and other macros");
 create_option_info(155,0x18LL,0xf0000LL,"-no-intrinsic=","Remove intrinsic from the initial set the compiler recognizes");
 create_implies_item(155, 155, "-no-intrinsic=%s");
 create_option_info(156,0x6LL,0xff0LL,"-no-gcc","Don't define __GNUC__ and other macros");
 create_implies_item(156, 156, "-no-gcc");
 create_option_info(157,0xfffffffLL,0x7000LL,"-n32","Compile for 32-bit ABI");
 create_implies_item(157, 686, "-TARG:abi=n32");
 create_implies_item(157, 157, "-n32");
 create_option_info(158,0x1eLL,0x1000f0000000000LL,"-n",((void *)0));
 create_implies_item(158, 158, "-n");
 create_option_info(159,0xfffffffLL,0x100000000LL,"-mx87-precision=","Specify the precision of x87 floating-point calculations (32/64/80-bit)");
 create_implies_item(159, 686, "-TARG:x87-precision=%d");
 create_option_info(160,0xfffffffLL,0LL,"-mvolatile-asm-stop",((void *)0));
 create_implies_item(160, 747, "-CG:volatile_asm_stop=on");
 create_option_info(161,0xfffffffLL,0LL,"-mtune=","Set CPU type");
 create_option_info(162,0xfffffffLL,0x100000000LL,"-msse3","Enable SSE3 extensions");
 create_option_info(163,0xfffffffLL,0x100000000LL,"-msse2","Enable SSE2 extensions");
 create_option_info(164,0xfffffffLL,0LL,"-msse","Enable SSE extensions");
 create_implies_item(164, 164, "-msse");
 create_option_info(165,0xfffffffLL,0x1f0ff0000LL,"-mspace",((void *)0));
 create_implies_item(165, 699, "-OPT:space");
 create_option_info(166,0xfffffffLL,0LL,"-msoft-float",((void *)0));
 create_option_info(167,0x1aLL,0x100000000LL,"-mplist",((void *)0));
 create_implies_item(167, 167, "-mplist");
 create_option_info(168,0x18LL,0x100000000LL,"-mpio",((void *)0));
 create_implies_item(168, 168, "-mpio");
 create_option_info(169,0x18LL,0LL,"-mp_use_locks",((void *)0));
 create_option_info(170,0x18LL,0LL,"-mp_use_copy",((void *)0));
 create_option_info(171,0x18LL,0xf7000LL,"-mp_schedtype=",((void *)0));
 create_implies_item(171, 171, "-mp_schedtype=%s");
 create_option_info(172,0x1aLL,0LL,"-mp_keep",((void *)0));
 create_option_info(173,0x18LL,0xf0000LL,"-mp_chunk=",((void *)0));
 create_implies_item(173, 173, "-mp_chunk=%d");
 create_option_info(174,0x1eLL,0xff0000LL,"-mp","enable the multiprocessing directives");
 create_implies_item(174, 174, "-mp");
 create_option_info(175,0x10LL,0LL,"-module","Directory in which to create .mod file");
 create_option_info(176,0xfffffffLL,0x100000000LL,"-mno-sse3","Disable SSE3 extensions");
 create_option_info(177,0xfffffffLL,0x100000000LL,"-mno-sse2","Disable SSE2/SSE3 extensions");
 create_option_info(178,0xfffffffLL,0x100000000LL,"-mno-sse","Disable SSE2/SSE3 extensions");
 create_option_info(179,0xfffffffLL,0LL,"-mno-soft-float",((void *)0));
 create_option_info(180,0x6LL,0LL,"-mno-sdata",((void *)0));
 create_implies_item(180, 738, "-G0");
 create_option_info(181,0xfffffffLL,0LL,"-mno-mmx","Disable MMX extensions");
 create_implies_item(181, 181, "-mno-mmx");
 create_option_info(182,0xfffffffLL,0x100000000LL,"-mno-ieee-fp","IEEE floating point comparisons not required");
 create_implies_item(182, 699, "-OPT:IEEE_NaN_Inf=off");
 create_option_info(183,0xfffffffLL,0x100000000LL,"-mno-3dnow","Disable 3Dnow extensions");
 create_option_info(184,0xfffffffLL,0LL,"-mmmx","Enable MMX extensions");
 create_implies_item(184, 184, "-mmmx");
 create_option_info(185,0xfffffffLL,0x3000000000LL,"-mips4","compile for mips4 instruction set");
 create_implies_item(185, 686, "-TARG:isa=mips4");
 create_implies_item(185, 205, "-mips4 MIPS4_DEFS");
 create_option_info(186,0xfffffffLL,0x100000000LL,"-mieee-fp","Use IEEE floating point comparisons");
 create_implies_item(186, 699, "-OPT:IEEE_NaN_Inf=on");
 create_option_info(187,0x6LL,0LL,"-mfixed-range=",((void *)0));
 create_implies_item(187, 685, "-TENV:registers_not_allocatable=%s");
 create_option_info(188,0xfffffffLL,0LL,"-memsim",((void *)0));
 create_implies_item(188, 207, "-lmemsim");
 create_implies_item(188, 719, "-LNO:mem_sim=TRUE");
 create_option_info(189,0xfffffffLL,0x100000000LL,"-memctr",((void *)0));
 create_implies_item(189, 189, "-memctr");
 create_option_info(190,0xfffffffLL,0LL,"-mcpu=","Set CPU type");
 create_option_info(191,0x6LL,0LL,"-mconstant-gp",((void *)0));
 create_implies_item(191, 685, "-TENV:constant_gp=on");
 create_option_info(192,0xfffffffLL,0LL,"-mcmodel=","Set the memory model to use");
 create_implies_item(192, 685, "-TENV:mcmodel=%s");
 create_implies_item(192, 192, "-mcmodel=%s");
 create_option_info(193,0xfffffffLL,0LL,"-mb-step",((void *)0));
 create_option_info(194,0xfffffffLL,0LL,"-march=","Set CPU type");
 create_option_info(195,0xfffffffLL,0LL,"-malign-loops=",((void *)0));
 create_implies_item(195, 195, "-malign-loops=");
 create_option_info(196,0xfffffffLL,0LL,"-malign-jumps=",((void *)0));
 create_implies_item(196, 196, "-malign-jumps=");
 create_option_info(197,0xfffffffLL,0LL,"-malign-functions=",((void *)0));
 create_implies_item(197, 197, "-malign-functions=");
 create_option_info(198,0x10LL,0LL,"-macro_expand",((void *)0));
 create_option_info(200,0xfffffffLL,0LL,"-ma-step",((void *)0));
 create_implies_item(200, 193, "-mb-step");
 create_implies_item(200, 686, "-TARG:ma0_step=on");
 create_option_info(201,0xfffffffLL,0x100000000LL,"-m64","Compile for 64-bit ABI");
 create_implies_item(201, 686, "-TARG:abi=n64");
 create_option_info(202,0xfffffffLL,0x100000000LL,"-m3dnow","Enable 3Dnow extensions");
 create_option_info(203,0xfffffffLL,0LL,"-m386",((void *)0));
 create_implies_item(203, 203, "-m386");
 create_option_info(204,0xfffffffLL,0x100000000LL,"-m32","Compile for 32-bit ABI");
 create_implies_item(204, 686, "-TARG:abi=n32");
 create_option_info(205,0xfffffffLL,0LL,"-m","Pass -m args to as");
 create_implies_item(205, 205, "-m %s");
 create_option_info(206,0xfffffffLL,0x1000f0000000000LL,"-ldscript",((void *)0));
 create_option_info(207,0x1eLL,0x1000f0000000000LL,"-l","-l<arg> adds library lib<arg> to link list");
 create_implies_item(207, 207, "-l%s");
 create_option_info(208,0x8LL,0xf0000LL,"-keepdollar","Treat $ as a normal last character in symbol names");
 create_implies_item(208, 208, "-keepdollar");
 create_option_info(209,0xfffffffLL,0x10000000000LL,"-keep","keep intermediate files");
 create_implies_item(209, 209, "-keep");
 create_option_info(210,0xfffffffLL,0LL,"-jalr",((void *)0));
 create_implies_item(210, 686, "-TARG:force_jalr");
 create_option_info(211,0x27LL,0xff0LL,"-iwithprefixbefore",((void *)0));
 create_implies_item(211, 211, "-iwithprefixbefore %D");
 create_option_info(212,0x27LL,0xff0LL,"-iwithprefix",((void *)0));
 create_implies_item(212, 212, "-iwithprefix %D");
 create_option_info(213,0x3fLL,0xff0LL,"-isystem",((void *)0));
 create_implies_item(213, 213, "-isystem %D");
 create_option_info(214,0x27LL,0xff0LL,"-iprefix",((void *)0));
 create_implies_item(214, 214, "-iprefix %s");
 create_option_info(215,0xfffffffLL,0x10000000000LL,"-ipa","Perform interprocedural analysis and optimization");
 create_implies_item(215, 215, "-ipa");
 create_option_info(216,0x18LL,0xf0000LL,"-intrinsic=","Add intrinsic to the initial set the compiler recognizes");
 create_implies_item(216, 216, "-intrinsic=%s");
 create_option_info(217,0x6LL,0LL,"-inline","request inline processing");
 create_implies_item(217, 731, "-INLINE");
 create_option_info(218,0x27LL,0xff0LL,"-include",((void *)0));
 create_implies_item(218, 218, "-include %s");
 create_option_info(219,0x27LL,0xff0LL,"-imacros",((void *)0));
 create_implies_item(219, 219, "-imacros %s");
 create_option_info(220,0xfffffffLL,0LL,"-ignore_suffix",((void *)0));
 create_option_info(222,0x27LL,0xff0LL,"-idirafter",((void *)0));
 create_implies_item(222, 222, "-idirafter %D");
 create_option_info(223,0x18LL,0xf0000LL,"-i8","make integer and logical quantities long long (8 bytes)");
 create_implies_item(223, 223, "-i8");
 create_option_info(224,0x18LL,0xf0000LL,"-i4","make integer and logical quantities long (4 bytes)");
 create_implies_item(224, 224, "-i4");
 create_option_info(225,0x8LL,0xf0000LL,"-i2","make integer and logical quantities short (2 bytes)");
 create_implies_item(225, 225, "-i2");
 create_option_info(226,0xfffffffLL,0LL,"-help:","print list of possible options that contain given string");
 create_option_info(227,0xfffffffLL,0LL,"-help","print list of possible options");
 create_option_info(228,0xfffffffLL,0LL,"-h264lib",((void *)0));
 create_implies_item(228, 686, "-TARG:processor=sl2_pcore");
 create_implies_item(228, 747, "-CG:sl2=on");
 create_option_info(229,0xfffffffLL,0LL,"-gstabs3",((void *)0));
 create_option_info(230,0xfffffffLL,0LL,"-gstabs2",((void *)0));
 create_option_info(231,0xfffffffLL,0LL,"-gstabs1",((void *)0));
 create_option_info(232,0xfffffffLL,0LL,"-gstabs0",((void *)0));
 create_option_info(233,0xfffffffLL,0LL,"-gstabs+",((void *)0));
 create_option_info(234,0xfffffffLL,0LL,"-gstabs",((void *)0));
 create_option_info(235,0xfffffffLL,0x1f0ff0000LL,"-ggdb3","Produce debugging information for use by GDB");
 create_implies_item(235, 246, "-g3");
 create_option_info(236,0xfffffffLL,0x1f0ff0000LL,"-ggdb","Produce debugging information for use by GDB");
 create_implies_item(236, 247, "-g2");
 create_option_info(237,0xfffffffLL,0x1f0ff0000LL,"-gdwarf-23","Produce DWARF 2 debugging information at debug level 3");
 create_implies_item(237, 246, "-g3");
 create_option_info(238,0xfffffffLL,0x1f0ff0000LL,"-gdwarf-22","Produce DWARF 2 debugging information at debug level 2");
 create_implies_item(238, 247, "-g2");
 create_option_info(239,0xfffffffLL,0x1f0ff0000LL,"-gdwarf-21","Produce DWARF 2 debugging information at debug level 1");
 create_implies_item(239, 248, "-g1");
 create_option_info(240,0xfffffffLL,0x1f0ff0000LL,"-gdwarf-20","Produce DWARF 2 debugging information at debug level 0");
 create_implies_item(240, 249, "-g0");
 create_option_info(241,0xfffffffLL,0x1f0ff0000LL,"-gdwarf-2","Produce debugging information in DWARF version 2 format");
 create_implies_item(241, 247, "-g2");
 create_option_info(242,0xfffffffLL,0LL,"-gdwarf-1+",((void *)0));
 create_option_info(243,0xfffffffLL,0LL,"-gdwarf-1",((void *)0));
 create_option_info(244,0xfffffffLL,0LL,"-gdwarf",((void *)0));
 create_option_info(245,0x6LL,0xff0LL,"-gcc","Define __GNUC__ and other macros");
 create_implies_item(245, 245, "-gcc");
 create_option_info(246,0xfffffffLL,0x1f0ff0ff0LL,"-g3","Add debugging information for C preprocessor macros");
 create_implies_item(246, 246, "-g3");
 create_option_info(247,0xfffffffLL,0x1f0ff0000LL,"-g2",((void *)0));
 create_implies_item(247, 247, "-g2");
 create_option_info(248,0xfffffffLL,0x1f0ff0000LL,"-g1",((void *)0));
 create_implies_item(248, 644, "-Wl,--export-dynamic");
 create_implies_item(248, 248, "-g1");
 create_option_info(249,0xfffffffLL,0x1f0ff0000LL,"-g0","no debug info");
 create_implies_item(249, 249, "-g0");
 create_option_info(250,0xfffffffLL,0x1f0ff0000LL,"-g","full debug info");
 create_implies_item(250, 247, "-g2");
 create_option_info(251,0x6LL,0xff0000LL,"-fwritable-strings","Attempt to support writable-strings K&R style C");
 create_implies_item(251, 251, "-fwritable-strings");
 create_option_info(252,0xfffffffLL,0LL,"-fweak",((void *)0));
 create_option_info(253,0x6LL,0LL,"-fvolatile-static",((void *)0));
 create_option_info(254,0x6LL,0LL,"-fvolatile-global","Consider all mem refs to global data to be volatile");
 create_option_info(255,0x6LL,0LL,"-fvolatile","Consider all mem refs through pointers as volatile");
 create_option_info(256,0x4LL,0xff0000LL,"-fverify-tree","Run verification routine before tree-to-whirl conversion");
 create_implies_item(256, 256, "-fverify-tree");
 create_option_info(257,0x6LL,0LL,"-fverbose-asm",((void *)0));
 create_option_info(258,0x4LL,0xf00000LL,"-fuse-cxa-atexit","Register static destructors with __cxa_atexit instead of atexit");
 create_implies_item(258, 258, "-fuse-cxa-atexit");
 create_option_info(259,0xfffffffLL,0LL,"-funwind-tables",((void *)0));
 create_implies_item(259, 685, "-TENV:frame_pointer=on");
 create_implies_item(259, 747, "-CG:emit_unwind_info=on");
 create_option_info(260,0x6LL,0xff0000LL,"-funsigned-char","Make 'char' be unsigned by default");
 create_implies_item(260, 745, "-D__CHAR_UNSIGNED__");
 create_implies_item(260, 260, "-funsigned-char");
 create_option_info(261,0x6LL,0xff0000LL,"-funsigned-bitfields","Make bitfields be unsigned by default");
 create_implies_item(261, 261, "-funsigned-bitfields");
 create_option_info(262,0x6LL,0xff0000LL,"-funsafe-math-optimizations","Improve FP speed by violating ANSI & IEEE rules");
 create_implies_item(262, 336, "-fno-math-errno");
 create_implies_item(262, 699, "-OPT:funsafe_math_optimizations=ON");
 create_option_info(263,0x6LL,0xff0000LL,"-funroll-loops","unroll-loops");
 create_implies_item(263, 263, "-funroll-loops");
 create_option_info(264,0x6LL,0xff0000LL,"-funroll-all-loops","Peform loop onrolling for all loops");
 create_implies_item(264, 264, "-funroll-all-loops");
 create_option_info(265,0x18LL,0xf0000LL,"-funderscoring","Append underscores to symbols");
 create_implies_item(265, 265, "-funderscoring");
 create_option_info(266,0x18LL,0xff0LL,"-fullwarn","give more warnings, especially about missing prototypes");
 create_implies_item(266, 5, "-m2");
 create_option_info(267,0x6LL,0xff0000LL,"-ftraditional",((void *)0));
 create_implies_item(267, 267, "-ftraditional");
 create_option_info(268,0x10LL,0LL,"-ftpp",((void *)0));
 create_option_info(269,0x6LL,0xff0000LL,"-fthread-jumps","Perform jump threading optimisations");
 create_implies_item(269, 269, "-fthread-jumps");
 create_option_info(270,0xfffffffLL,0x100000000LL,"-ftest-coverage","turn on test coverage");
 create_implies_item(270, 747, "-CG:test_coverage=true");
 create_option_info(271,0x4LL,0xff0000LL,"-ftemplate-depth-","Set maximum instantiation depth for template classes");
 create_implies_item(271, 271, "-ftemplate-depth-%d");
 create_option_info(272,0x6LL,0xff0000LL,"-fstrict-aliasing","Assume strictest aliasing rules");
 create_implies_item(272, 699, "-OPT:alias=typed");
 create_implies_item(272, 272, "-fstrict-aliasing");
 create_option_info(273,0x6LL,0xff0000LL,"-fstrength-reduce","Perform strength reduction optimisations");
 create_implies_item(273, 273, "-fstrength-reduce");
 create_option_info(274,0x6LL,0LL,"-fstack-check",((void *)0));
 create_option_info(275,0xfffffffLL,0LL,"-fssa-dce",((void *)0));
 create_option_info(276,0xfffffffLL,0LL,"-fssa-ccp",((void *)0));
 create_option_info(277,0xfffffffLL,0LL,"-fssa",((void *)0));
 create_option_info(278,0x6LL,0xff0000LL,"-fsigned-char","Make 'char' be signed by default");
 create_implies_item(278, 278, "-fsigned-char");
 create_option_info(279,0x6LL,0xff0000LL,"-fsigned-bitfields","Make bitfields be signed by default");
 create_implies_item(279, 279, "-fsigned-bitfields");
 create_option_info(280,0x6LL,0xff0000LL,"-fshort-wchar","Use short unsigned int for wchar_t instead of the default underlying type for the target.");
 create_implies_item(280, 280, "-fshort-wchar");
 create_option_info(281,0x6LL,0LL,"-fshort-enums","Use the smallest fitting integer to hold enums");
 create_option_info(282,0x6LL,0LL,"-fshort-double","Use the same size for double as for float");
 create_option_info(283,0x6LL,0LL,"-fshared-data","Mark data as shared rather than private");
 create_option_info(284,0x18LL,0xf0000LL,"-fsecond-underscore","Append a second underscore to symbols that already contain an underscore");
 create_implies_item(284, 284, "-fsecond-underscore");
 create_option_info(285,0x6LL,0xff0000LL,"-fschedule-insns2",((void *)0));
 create_implies_item(285, 285, "-fschedule-insns2");
 create_option_info(286,0x6LL,0xff0000LL,"-fschedule-insns",((void *)0));
 create_implies_item(286, 286, "-fschedule-insns");
 create_option_info(287,0x4LL,0xf00000LL,"-frtti","Generate runtime type information");
 create_implies_item(287, 287, "-frtti");
 create_option_info(288,0x6LL,0xff0000LL,"-frerun-loop-opt",((void *)0));
 create_implies_item(288, 288, "-frerun-loop-opt");
 create_option_info(289,0x6LL,0xff0000LL,"-frerun-cse-after-loop",((void *)0));
 create_implies_item(289, 289, "-frerun-cse-after-loop");
 create_option_info(290,0x6LL,0xff0000LL,"-fregmove",((void *)0));
 create_implies_item(290, 290, "-fregmove");
 create_option_info(291,0x6LL,0LL,"-freg-struct-return",((void *)0));
 create_option_info(292,0x10LL,0xf0000LL,"-freeform","sets Fortran 90 free form source statement formatting");
 create_option_info(293,0x6LL,0xff0000LL,"-freduce-all-givs",((void *)0));
 create_implies_item(293, 293, "-freduce-all-givs");
 create_option_info(294,0xfffffffLL,0LL,"-framepointer",((void *)0));
 create_option_info(295,0xfffffffLL,0x100000000LL,"-fprofile-arcs",((void *)0));
 create_implies_item(295, 699, "-OPT:profile_arcs=true");
 create_option_info(296,0x27LL,0xf00ff0LL,"-fpreprocessed","Tell preprocessor that input has already been preprocessed");
 create_implies_item(296, 296, "-fpreprocessed");
 create_option_info(297,0x6LL,0LL,"-fprefix-function-name","Add a prefix to all function names");
 create_option_info(298,0xfffffffLL,0xff0000LL,"-fpie","Generate position independent code, if possible");
 create_implies_item(298, 685, "-TENV:PIC");
 create_implies_item(298, 298, "-fpie");
 create_option_info(299,0xfffffffLL,0xff0000LL,"-fpic","Generate position independent code, if possible");
 create_implies_item(299, 685, "-TENV:PIC");
 create_implies_item(299, 299, "-fpic");
 create_option_info(300,0x4LL,0xf00000LL,"-fpermissive","Downgrade messages about nonconformant code to warnings");
 create_implies_item(300, 300, "-fpermissive");
 create_option_info(301,0x6LL,0LL,"-fpcc-struct-return",((void *)0));
 create_option_info(302,0x6LL,0LL,"-fpack-struct","Pack structure members together without holes");
 create_option_info(303,0xfffffffLL,0LL,"-foptimize-sibling-calls",((void *)0));
 create_option_info(304,0x6LL,0xff0000LL,"-foptimize-register-moves",((void *)0));
 create_implies_item(304, 304, "-foptimize-register-moves");
 create_option_info(305,0xfffffffLL,0LL,"-foptimize-register-move",((void *)0));
 create_option_info(306,0x8LL,0xf0000LL,"-fonetrip","One trip DO loops");
 create_implies_item(306, 751, "-1");
 create_option_info(307,0x6LL,0xff0000LL,"-fomit-frame-pointer","When possible do not generate stack frames");
 create_implies_item(307, 307, "-fomit-frame-pointer");
 create_option_info(308,0x6LL,0xff0000LL,"-fnotraditional",((void *)0));
 create_implies_item(308, 308, "-fnotraditional");
 create_option_info(309,0x6LL,0xff0000LL,"-fno-writable-strings",((void *)0));
 create_implies_item(309, 309, "-fno-writable-strings");
 create_option_info(310,0xfffffffLL,0LL,"-fno-weak",((void *)0));
 create_option_info(311,0x4LL,0xf00000LL,"-fno-use-cxa-atexit","Register static destructors with atexit instead of __cxa_atexit");
 create_implies_item(311, 311, "-fno-use-cxa-atexit");
 create_option_info(312,0x6LL,0LL,"-fno-unwind-tables",((void *)0));
 create_implies_item(312, 747, "-CG:emit_unwind_info=off");
 create_option_info(313,0x6LL,0xff0000LL,"-fno-unsigned-char",((void *)0));
 create_implies_item(313, 313, "-fno-unsigned-char");
 create_option_info(314,0x6LL,0xff0000LL,"-fno-unsigned-bitfields","Make bitfields be signed by default");
 create_implies_item(314, 314, "-fno-unsigned-bitfields");
 create_option_info(315,0x6LL,0xff0000LL,"-fno-unsafe-math-optimizations","Conform to ANSI & IEEE math rules at the expense of speed");
 create_implies_item(315, 364, "-fmath-errno");
 create_implies_item(315, 699, "-OPT:funsafe_math_optimizations=OFF");
 create_option_info(316,0x18LL,0xf0000LL,"-fno-underscoring","Don't append underscores to symbols");
 create_implies_item(316, 316, "-fno-underscoring");
 create_option_info(317,0x6LL,0xff0000LL,"-fno-traditional",((void *)0));
 create_implies_item(317, 317, "-fno-traditional");
 create_option_info(318,0x6LL,0xff0000LL,"-fno-strict-aliasing","Do not assume strict aliasing rules");
 create_implies_item(318, 318, "-fno-strict-aliasing");
 create_option_info(319,0x6LL,0xff0000LL,"-fno-strength-reduce",((void *)0));
 create_implies_item(319, 319, "-fno-strength-reduce");
 create_option_info(320,0xfffffffLL,0LL,"-fno-ssa-dce",((void *)0));
 create_option_info(321,0xfffffffLL,0LL,"-fno-ssa-ccp",((void *)0));
 create_option_info(322,0xfffffffLL,0LL,"-fno-ssa",((void *)0));
 create_option_info(323,0x6LL,0xff0000LL,"-fno-signed-char","Make 'char' be unsigned by default");
 create_implies_item(323, 745, "-D__CHAR_UNSIGNED__");
 create_implies_item(323, 323, "-fno-signed-char");
 create_option_info(324,0x6LL,0xff0000LL,"-fno-signed-bitfields","Make bitfields be unsigned by default");
 create_implies_item(324, 324, "-fno-signed-bitfields");
 create_option_info(325,0x18LL,0xf0000LL,"-fno-second-underscore","Don't append a second underscore to symbols that already contain an underscore");
 create_implies_item(325, 325, "-fno-second-underscore");
 create_option_info(326,0x4LL,0xf00000LL,"-fno-rtti","Do not generate runtime type information");
 create_implies_item(326, 326, "-fno-rtti");
 create_option_info(327,0x27LL,0xf00ff0LL,"-fno-preprocessed","Tell preprocessor that input has not already been preprocessed");
 create_implies_item(327, 327, "-fno-preprocessed");
 create_option_info(328,0xfffffffLL,0xff0000LL,"-fno-pie","Do not generate position independent code");
 create_implies_item(328, 328, "-fno-pie");
 create_option_info(329,0xfffffffLL,0xff0000LL,"-fno-pic","Do not generate position independent code");
 create_implies_item(329, 329, "-fno-pic");
 create_option_info(330,0x4LL,0xf00000LL,"-fno-permissive","Keep messages about nonconformant code as errors");
 create_implies_item(330, 330, "-fno-permissive");
 create_option_info(331,0x6LL,0xff0000LL,"-fno-peephole",((void *)0));
 create_implies_item(331, 331, "-fno-peephole");
 create_option_info(332,0xfffffffLL,0LL,"-fno-optimize-sibling-calls",((void *)0));
 create_option_info(333,0xfffffffLL,0LL,"-fno-optimize-register-move",((void *)0));
 create_option_info(334,0x4LL,0xff0000LL,"-fno-operator-names","Do not treat operator keywords and, bitand, bitor, compl, not, or and xor as keywords.");
 create_implies_item(334, 334, "-fno-operator-names");
 create_option_info(335,0x6LL,0xff0000LL,"-fno-omit-frame-pointer",((void *)0));
 create_implies_item(335, 335, "-fno-omit-frame-pointer");
 create_option_info(336,0x1eLL,0LL,"-fno-math-errno","Do not set ERRNO after calling math functions that are executed with a single instruction");
 create_implies_item(336, 724, "-LANG:math_errno=off");
 create_implies_item(336, 336, "-fno-math-errno");
 create_option_info(337,0x6LL,0xff0000LL,"-fno-inline-functions","Do not automatically integrate simple functions into their callers");
 create_implies_item(337, 337, "-fno-inline-functions");
 create_option_info(338,0x6LL,0xff0000LL,"-fno-inline",((void *)0));
 create_implies_item(338, 730, "-INLINE:=off");
 create_implies_item(338, 338, "-fno-inline");
 create_option_info(339,0x4LL,0xf00000LL,"-fno-implicit-templates","Never emit code for non-inline templates instantiated implicitly");
 create_implies_item(339, 339, "-fno-implicit-templates");
 create_option_info(340,0x4LL,0xf00000LL,"-fno-implicit-inline-templates","Never emit code for inline templates instantiated implicitly");
 create_implies_item(340, 340, "-fno-implicit-inline-templates");
 create_option_info(341,0x6LL,0xf00000LL,"-fno-ident","Ignore #ident directives");
 create_implies_item(341, 341, "-fno-ident");
 create_option_info(342,0x6LL,0xff0000LL,"-fno-hosted",((void *)0));
 create_implies_item(342, 342, "-fno-hosted");
 create_option_info(343,0x6LL,0xf00000LL,"-fno-handle-exceptions","Disable exception handling");
 create_implies_item(343, 343, "-fno-handle-exceptions");
 create_option_info(344,0x6LL,0LL,"-fno-gnu-linker",((void *)0));
 create_option_info(345,0x6LL,0xff0000LL,"-fno-gnu-keywords","Do not recognize 'typeof' as a keyword");
 create_implies_item(345, 345, "-fno-gnu-keywords");
 create_option_info(346,0x6LL,0xff0000LL,"-fno-function-cse",((void *)0));
 create_implies_item(346, 346, "-fno-function-cse");
 create_option_info(347,0x6LL,0xff0000LL,"-fno-freestanding",((void *)0));
 create_implies_item(347, 347, "-fno-freestanding");
 create_option_info(348,0x4LL,0xf00000LL,"-fno-for-scope","Variables declared in a for-init loop extend to the enclosing scope");
 create_implies_item(348, 348, "-fno-for-scope");
 create_option_info(349,0xfffffffLL,0x1000f0000ff0000LL,"-fno-fast-stdlib","Do not use faster versions of standard library functions");
 create_implies_item(349, 699, "-OPT:fast_stdlib=off");
 create_option_info(350,0x1eLL,0xff0000LL,"-fno-fast-math","Conform to ANSI & IEEE math rules at the expense of speed");
 create_implies_item(350, 364, "-fmath-errno");
 create_implies_item(350, 699, "-OPT:ffast_math=OFF");
 create_option_info(351,0x6LL,0xf00000LL,"-fno-exceptions","Disable exception handling");
 create_implies_item(351, 351, "-fno-exceptions");
 create_option_info(352,0x18LL,0xf0000LL,"-fno-directives","Ignore Fortran compiler directives inside comments");
 create_implies_item(352, 1, "-xall");
 create_option_info(353,0x6LL,0xff0000LL,"-fno-defer-pop",((void *)0));
 create_implies_item(353, 353, "-fno-defer-pop");
 create_option_info(354,0x6LL,0xff0000LL,"-fno-default-inline",((void *)0));
 create_implies_item(354, 354, "-fno-default-inline");
 create_option_info(355,0x6LL,0xf00000LL,"-fno-common","use strict ref/def initialization model");
 create_implies_item(355, 355, "-fno-common");
 create_option_info(356,0x4LL,0xf00000LL,"-fno-check-new","Do not check result of operator new for NULL");
 create_implies_item(356, 356, "-fno-check-new");
 create_option_info(357,0x6LL,0LL,"-fno-builtin","Do not recognise any built in functions");
 create_implies_item(357, 357, "-fno-builtin");
 create_option_info(358,0x6LL,0xff0000LL,"-fno-asm","Do not recognise the 'asm' keyword");
 create_implies_item(358, 358, "-fno-asm");
 create_option_info(359,0xfffffffLL,0xff0000LL,"-fno-PIE","Do not generate position independent code");
 create_implies_item(359, 359, "-fno-PIE");
 create_option_info(360,0xfffffffLL,0xff0000LL,"-fno-PIC","Do not generate position independent code");
 create_implies_item(360, 360, "-fno-PIC");
 create_option_info(361,0x6LL,0xff0000LL,"-fms-extensions","Accept broken MFC extensions without warning");
 create_implies_item(361, 361, "-fms-extensions");
 create_option_info(362,0x6LL,0xff0000LL,"-fmove-all-movables",((void *)0));
 create_implies_item(362, 362, "-fmove-all-movables");
 create_option_info(363,0x4LL,0xff0000LL,"-fmessage-length=","Try to format error messages so that they fit on lines of about n characters.");
 create_implies_item(363, 363, "-fmessage-length=%d");
 create_option_info(364,0x1eLL,0LL,"-fmath-errno",((void *)0));
 create_implies_item(364, 364, "-fmath-errno");
 create_option_info(365,0x18LL,0x100000000LL,"-flist",((void *)0));
 create_implies_item(365, 739, "-FLIST:=ON");
 create_implies_item(365, 694, "-PHASE:flist");
 create_option_info(366,0x6LL,0LL,"-fleading-underscore",((void *)0));
 create_option_info(367,0x6LL,0xff0000LL,"-flang-isoc9x",((void *)0));
 create_implies_item(367, 367, "-flang-isoc9x");
 create_option_info(368,0x6LL,0xff0000LL,"-fkeep-inline-functions","Generate code for funcs even if they are fully inlined");
 create_implies_item(368, 368, "-fkeep-inline-functions");
 create_option_info(369,0x10LL,0xf0000LL,"-fixedform","sets Fortran 90 fixed form source statement formatting");
 create_option_info(370,0x6LL,0xff0000LL,"-finline-limit=",((void *)0));
 create_implies_item(370, 370, "-finline-limit=%d");
 create_option_info(371,0x6LL,0xff0000LL,"-finline-functions","Automatically integrate simple functions into their callers");
 create_implies_item(371, 371, "-finline-functions");
 create_option_info(372,0x6LL,0xff0000LL,"-finline",((void *)0));
 create_implies_item(372, 372, "-finline");
 create_option_info(373,0x6LL,0x100000000LL,"-finhibit-size-directive","Do not generate .size directives");
 create_implies_item(373, 747, "-CG:inhibit_size_directive=1:emit_asm_dwarf=0");
 create_option_info(374,0x4LL,0xf00000LL,"-fimplicit-templates","Emit code for non-inline templates instantiated implicitly");
 create_implies_item(374, 374, "-fimplicit-templates");
 create_option_info(375,0x4LL,0xf00000LL,"-fimplicit-inline-templates","Emit code for inline templates instantiated implicitly");
 create_implies_item(375, 375, "-fimplicit-inline-templates");
 create_option_info(376,0x6LL,0xff0000LL,"-fhosted",((void *)0));
 create_implies_item(376, 376, "-fhosted");
 create_option_info(377,0x6LL,0xf00000LL,"-fhandle-exceptions","Enable exception handling");
 create_implies_item(377, 377, "-fhandle-exceptions");
 create_option_info(378,0x6LL,0xff0000LL,"-fgnu-keywords","Recognize 'typeof' as a keyword");
 create_implies_item(378, 378, "-fgnu-keywords");
 create_option_info(379,0x6LL,0xff0000LL,"-fgcse",((void *)0));
 create_implies_item(379, 379, "-fgcse");
 create_option_info(380,0x6LL,0xff0000LL,"-ffunction-sections",((void *)0));
 create_implies_item(380, 380, "-ffunction-sections");
 create_option_info(381,0x6LL,0xff0000LL,"-ffreestanding",((void *)0));
 create_implies_item(381, 381, "-ffreestanding");
 create_option_info(382,0x18LL,0xf0000LL,"-ffortran-bounds-check","check bounds");
 create_implies_item(382, 744, "-DEBUG:subscript_check");
 create_option_info(383,0x6LL,0xff0000LL,"-fforce-mem",((void *)0));
 create_implies_item(383, 383, "-fforce-mem");
 create_option_info(384,0x6LL,0xff0000LL,"-fforce-addr",((void *)0));
 create_implies_item(384, 384, "-fforce-addr");
 create_option_info(385,0x4LL,0xf00000LL,"-ffor-scope","Variables declared in a for-init loop are constrained to that scope");
 create_implies_item(385, 385, "-ffor-scope");
 create_option_info(386,0x1eLL,0x100000000LL,"-ffloat-store","Do not store floats in registers");
 create_implies_item(386, 747, "-CG:x87_store=1:min_spill_loc_size=1");
 create_option_info(387,0x6LL,0LL,"-ffixed-",((void *)0));
 create_implies_item(387, 685, "-TENV:registers_not_allocatable=%s");
 create_option_info(388,0xfffffffLL,0x1000f0000ff0000LL,"-ffast-stdlib","Use faster versions of some standard library functions, when available");
 create_implies_item(388, 699, "-OPT:fast_stdlib=on");
 create_option_info(389,0x1eLL,0x100ff0000LL,"-ffast-math","Improve FP speed by violating ANSI & IEEE rules");
 create_implies_item(389, 336, "-fno-math-errno");
 create_implies_item(389, 699, "-OPT:ffast_math=ON");
 create_option_info(390,0x18LL,0LL,"-ff90","Allow Fortran 90 constructs");
 create_option_info(391,0x18LL,0LL,"-ff77","Use idiomatic UNIX FORTRAN 77");
 create_option_info(392,0xfffffffLL,0xf0000LL,"-ff2c-abi","Tell Fortran compiler to use the f2c ABI for symbols in file");
 create_implies_item(392, 392, "-ff2c-abi %s");
 create_option_info(393,0x6LL,0xff0000LL,"-fexpensive-optimizations",((void *)0));
 create_implies_item(393, 393, "-fexpensive-optimizations");
 create_option_info(394,0xfffffffLL,0xf00000LL,"-fexceptions","Enable exception handling");
 create_implies_item(394, 685, "-TENV:frame_pointer=on");
 create_implies_item(394, 394, "-fexceptions");
 create_option_info(395,0xfffffffLL,0LL,"-feedback",((void *)0));
 create_option_info(396,0x1eLL,0LL,"-fe","stop after the front end is run");
 create_option_info(397,0x18LL,0xf0000LL,"-fdirectives","Recognize Fortran compiler directives inside comments");
 create_option_info(398,0x4LL,0xff0000LL,"-fdiagnostics-show-location=once","Instructs the diagnostic messages reporter to emit source location information once");
 create_implies_item(398, 398, "-fdiagnostics-show-location=once");
 create_option_info(399,0x4LL,0xff0000LL,"-fdiagnostics-show-location=every-line","Instructs the diagnostic messages reporter to emit source location information on every line");
 create_implies_item(399, 399, "-fdiagnostics-show-location=every-line");
 create_option_info(400,0x6LL,0xff0000LL,"-fdelayed-branch",((void *)0));
 create_implies_item(400, 400, "-fdelayed-branch");
 create_option_info(401,0xfffffffLL,0xf0000LL,"-fdecorate","File tells Fortran compiler how to transform ids into linker symbols");
 create_implies_item(401, 401, "-fdecorate %s");
 create_option_info(402,0x6LL,0xff0000LL,"-fdata-sections",((void *)0));
 create_implies_item(402, 402, "-fdata-sections");
 create_option_info(403,0x6LL,0xff0000LL,"-fcse-skip-blocks",((void *)0));
 create_implies_item(403, 403, "-fcse-skip-blocks");
 create_option_info(404,0x6LL,0xff0000LL,"-fcse-follow-jumps",((void *)0));
 create_implies_item(404, 404, "-fcse-follow-jumps");
 create_option_info(405,0x6LL,0xff0000LL,"-fcond-mismatch",((void *)0));
 create_implies_item(405, 405, "-fcond-mismatch");
 create_option_info(406,0x18LL,0LL,"-fcoco=","use coco Fortran preprocessor");
 create_option_info(407,0x18LL,0LL,"-fcoco","use coco Fortran preprocessor");
 create_option_info(408,0x4LL,0xf00000LL,"-fcheck-new","Check result of operator new for NULL");
 create_implies_item(408, 408, "-fcheck-new");
 create_option_info(409,0x6LL,0LL,"-fcheck-memory-usage",((void *)0));
 create_option_info(410,0x6LL,0xff0000LL,"-fcaller-saves",((void *)0));
 create_implies_item(410, 410, "-fcaller-saves");
 create_option_info(411,0x6LL,0LL,"-fcall-used-",((void *)0));
 create_option_info(412,0x6LL,0LL,"-fcall-saved-",((void *)0));
 create_option_info(413,0xfffffffLL,0LL,"-fbuse",((void *)0));
 create_option_info(414,0x6LL,0LL,"-fbuiltin",((void *)0));
 create_implies_item(414, 414, "-fbuiltin");
 create_option_info(415,0x6LL,0xff0000LL,"-fbranch-probabilities",((void *)0));
 create_implies_item(415, 415, "-fbranch-probabilities");
 create_option_info(416,0xfffffffLL,0LL,"-fbgen",((void *)0));
 create_option_info(417,0xfffffffLL,0LL,"-fbexe",((void *)0));
 create_option_info(418,0xfffffffLL,0LL,"-fb_xdir",((void *)0));
 create_option_info(419,0xfffffffLL,0LL,"-fb_type=",((void *)0));
 create_option_info(420,0xfffffffLL,0LL,"-fb_phase=",((void *)0));
 create_option_info(421,0xfffffffLL,0LL,"-fb_opt",((void *)0));
 create_option_info(422,0xfffffffLL,0LL,"-fb_create",((void *)0));
 create_option_info(423,0xfffffffLL,0LL,"-fb_cdir",((void *)0));
 create_option_info(428,0xfffffffLL,0LL,"-fb",((void *)0));
 create_option_info(429,0x6LL,0xff0000LL,"-fasm",((void *)0));
 create_implies_item(429, 429, "-fasm");
 create_option_info(430,0x6LL,0LL,"-fargument-noalias-global",((void *)0));
 create_option_info(431,0x6LL,0LL,"-fargument-noalias",((void *)0));
 create_option_info(432,0x6LL,0LL,"-fargument-alias",((void *)0));
 create_option_info(433,0x4LL,0xff0000LL,"-fabi-version=",((void *)0));
 create_implies_item(433, 433, "-fabi-version=%d");
 create_option_info(434,0xfffffffLL,0xff0000LL,"-fPIE","Generate position independent code, if possible");
 create_implies_item(434, 685, "-TENV:PIC");
 create_implies_item(434, 434, "-fPIE");
 create_option_info(435,0xfffffffLL,0xff0000LL,"-fPIC","Generate position independent code, if possible");
 create_implies_item(435, 685, "-TENV:PIC");
 create_implies_item(435, 435, "-fPIC");
 create_option_info(436,0x18LL,0xf0000LL,"-extend_source",((void *)0));
 create_implies_item(436, 3, "-scan=132");
 create_implies_item(436, 436, "-extend_source");
 create_option_info(438,0x18LL,0xf0000LL,"-expand_include",((void *)0));
 create_implies_item(438, 438, "-expand_include");
 create_option_info(439,0x1eLL,0x1000f0000000000LL,"-e",((void *)0));
 create_option_info(440,0x6LL,0LL,"-dz",((void *)0));
 create_implies_item(440, 440, "-dz");
 create_option_info(441,0x6LL,0LL,"-dx",((void *)0));
 create_implies_item(441, 441, "-dx");
 create_option_info(442,0x6LL,0LL,"-dw",((void *)0));
 create_implies_item(442, 442, "-dw");
 create_option_info(443,0x6LL,0LL,"-dv",((void *)0));
 create_implies_item(443, 443, "-dv");
 create_option_info(444,0xfffffffLL,0LL,"-dumpversion","Show the version of the compiler being used, and nothing else");
 create_option_info(445,0xfffffffLL,0xff0000LL,"-dumpspecs",((void *)0));
 create_implies_item(445, 445, "-dumpspecs");
 create_option_info(446,0xfffffffLL,0LL,"-dumpmachine","Print the compiler's target machine");
 create_option_info(447,0x8LL,0xf0000LL,"-dump_input",((void *)0));
 create_implies_item(447, 447, "-dump_input");
 create_option_info(448,0xfffffffLL,0LL,"-dummy",((void *)0));
 create_option_info(449,0x6LL,0LL,"-dt",((void *)0));
 create_implies_item(449, 449, "-dt");
 create_option_info(450,0x6LL,0LL,"-ds",((void *)0));
 create_implies_item(450, 450, "-ds");
 create_option_info(451,0x6LL,0LL,"-dr",((void *)0));
 create_implies_item(451, 451, "-dr");
 create_option_info(452,0x6LL,0LL,"-dp",((void *)0));
 create_implies_item(452, 452, "-dp");
 create_option_info(453,0x6LL,0LL,"-do",((void *)0));
 create_implies_item(453, 453, "-do");
 create_option_info(454,0x6LL,0LL,"-dm",((void *)0));
 create_implies_item(454, 454, "-dm");
 create_option_info(455,0x6LL,0LL,"-dl",((void *)0));
 create_implies_item(455, 455, "-dl");
 create_option_info(456,0x6LL,0LL,"-dk",((void *)0));
 create_implies_item(456, 456, "-dk");
 create_option_info(457,0x6LL,0LL,"-dj",((void *)0));
 create_implies_item(457, 457, "-dj");
 create_option_info(458,0x6LL,0LL,"-di",((void *)0));
 create_implies_item(458, 458, "-di");
 create_option_info(459,0x6LL,0LL,"-dh",((void *)0));
 create_implies_item(459, 459, "-dh");
 create_option_info(460,0x6LL,0LL,"-dg",((void *)0));
 create_implies_item(460, 460, "-dg");
 create_option_info(461,0x6LL,0LL,"-df",((void *)0));
 create_implies_item(461, 461, "-df");
 create_option_info(462,0x4LL,0x1000f0000000000LL,"-demangle",((void *)0));
 create_implies_item(462, 462, "-demangle");
 create_option_info(463,0x10LL,0xf0000LL,"-default64","Cray compatibility mode for F90");
 create_implies_item(463, 463, "-default64");
 create_option_info(464,0x6LL,0LL,"-de",((void *)0));
 create_implies_item(464, 464, "-de");
 create_option_info(465,0x6LL,0LL,"-dd",((void *)0));
 create_implies_item(465, 465, "-dd");
 create_option_info(466,0x6LL,0LL,"-dc",((void *)0));
 create_implies_item(466, 466, "-dc");
 create_option_info(467,0x6LL,0LL,"-db",((void *)0));
 create_implies_item(467, 467, "-db");
 create_option_info(468,0x6LL,0LL,"-da",((void *)0));
 create_implies_item(468, 468, "-da");
 create_option_info(469,0x18LL,0xf0000LL,"-d_lines",((void *)0));
 create_implies_item(469, 469, "-d_lines");
 create_option_info(470,0x6LL,0LL,"-dX",((void *)0));
 create_implies_item(470, 470, "-dX");
 create_option_info(471,0x6LL,0LL,"-dS",((void *)0));
 create_implies_item(471, 471, "-dS");
 create_option_info(472,0x6LL,0LL,"-dR",((void *)0));
 create_implies_item(472, 472, "-dR");
 create_option_info(473,0x6LL,0LL,"-dP",((void *)0));
 create_implies_item(473, 473, "-dP");
 create_option_info(474,0x27LL,0xff0LL,"-dN","Generate list of all macro names defined");
 create_implies_item(474, 474, "-dN");
 create_option_info(475,0x27LL,0xff0LL,"-dM","Generate list of directives for all macros");
 create_implies_item(475, 475, "-dM");
 create_option_info(476,0x6LL,0LL,"-dL",((void *)0));
 create_implies_item(476, 476, "-dL");
 create_option_info(477,0x27LL,0xff0LL,"-dI","Output #include directives in addition to preprocessor results");
 create_implies_item(477, 477, "-dI");
 create_option_info(478,0x6LL,0LL,"-dG",((void *)0));
 create_implies_item(478, 478, "-dG");
 create_option_info(479,0x6LL,0LL,"-dF",((void *)0));
 create_implies_item(479, 479, "-dF");
 create_option_info(480,0x6LL,0LL,"-dE",((void *)0));
 create_implies_item(480, 480, "-dE");
 create_option_info(481,0x27LL,0xff0LL,"-dD","Generate list of non-predefined macro directives");
 create_implies_item(481, 481, "-dD");
 create_option_info(482,0x6LL,0LL,"-dC",((void *)0));
 create_implies_item(482, 482, "-dC");
 create_option_info(483,0x6LL,0LL,"-dB",((void *)0));
 create_implies_item(483, 483, "-dB");
 create_option_info(484,0x6LL,0LL,"-dA",((void *)0));
 create_implies_item(484, 484, "-dA");
 create_option_info(485,0x18LL,0xf0000LL,"-d8","use double=8 and dcomplex=16");
 create_implies_item(485, 485, "-d8");
 create_option_info(487,0x18LL,0LL,"-cray_directives",((void *)0));
 create_implies_item(487, 487, "-cray_directives");
 create_option_info(488,0xfffffffLL,0LL,"-cpp",((void *)0));
 create_option_info(489,0xfffffffLL,0LL,"-cord",((void *)0));
 create_option_info(490,0xfffffffLL,0LL,"-copyright","Show the copyright for the compiler being used");
 create_option_info(491,0x10LL,0xf0000LL,"-convert","Convert files by swapping bytes during I/O");
 create_implies_item(491, 491, "-convert %s");
 create_option_info(492,0xfffffffLL,0LL,"-compat-gcc",((void *)0));
 create_option_info(493,0x10LL,0xf0000LL,"-col80","sets the source statement length to 80 columns");
 create_implies_item(493, 3, "-scan=80");
 create_implies_item(493, 493, "-col80");
 create_option_info(494,0x18LL,0xf0000LL,"-col72","sets the source statement length to 72 columns");
 create_implies_item(494, 3, "-scan=72");
 create_implies_item(494, 494, "-col72");
 create_option_info(495,0x18LL,0xf0000LL,"-col120","sets the source statement length to 120 columns");
 create_implies_item(495, 3, "-scan=120");
 create_implies_item(495, 495, "-col120");
 create_option_info(496,0x2LL,0x100000000LL,"-clist",((void *)0));
 create_implies_item(496, 746, "-CLIST:=ON");
 create_implies_item(496, 694, "-PHASE:clist");
 create_option_info(497,0x10LL,0xff0000LL,"-cif",((void *)0));
 create_implies_item(497, 497, "-cif");
 create_option_info(498,0x18LL,0xf7000LL,"-chunk=","Set the MP chunksize");
 create_implies_item(498, 498, "-chunk=%d");
 create_option_info(499,0x8LL,0xf0000LL,"-chararg1",((void *)0));
 create_implies_item(499, 499, "-chararg1");
 create_option_info(500,0x18LL,0LL,"-change_const",((void *)0));
 create_option_info(501,0xfffffffLL,0LL,"-c","produce a .o and stop");
 create_option_info(502,0x10LL,0xf0000LL,"-byteswapio","Swap bytes during file I/O");
 create_implies_item(502, 502, "-byteswapio");
 create_option_info(503,0x8LL,0xf0000LL,"-bytereclen",((void *)0));
 create_implies_item(503, 135, "-old_rl");
 create_option_info(504,0xfffffffLL,0LL,"-bblib",((void *)0));
 create_implies_item(504, 686, "-TARG:processor=sl1_dsp");
 create_implies_item(504, 747, "-CG:dsp_thread=on");
 create_option_info(505,0x8LL,0xf0000LL,"-backslash","treat backslash as normal character rather than an escape");
 create_implies_item(505, 505, "-backslash");
 create_option_info(506,0xfffffffLL,0LL,"-b",((void *)0));
 create_implies_item(506, 506, "-b");
 create_option_info(507,0x20LL,0xf00000LL,"-aux-info",((void *)0));
 create_implies_item(507, 507, "-aux-info %s");
 create_option_info(508,0x18LL,0LL,"-automatic",((void *)0));
 create_option_info(509,0x10LL,0xf0000LL,"-auto_use",((void *)0));
 create_implies_item(509, 509, "-auto_use=%s");
 create_option_info(511,0xfffffffLL,0LL,"-ar","create an archive (instead of a shared object or executable) using ar");
 create_option_info(512,0x1eLL,0x100000000LL,"-apolist",((void *)0));
 create_implies_item(512, 719, "-LNO:prompl");
 create_implies_item(512, 120, "-pfa");
 create_option_info(513,0x1eLL,0x100000000LL,"-apokeep",((void *)0));
 create_implies_item(513, 719, "-LNO:prompl");
 create_implies_item(513, 120, "-pfa");
 create_option_info(514,0x1eLL,0x100000000LL,"-apo",((void *)0));
 create_implies_item(514, 120, "-pfa");
 create_option_info(515,0x2LL,0xff0ff0LL,"-ansi","strict ansi and standard intrinsics only");
 create_implies_item(515, 745, "-D__STRICT_ANSI__");
 create_implies_item(515, 23, "-Xansi");
 create_implies_item(515, 515, "-ansi");
 create_option_info(516,0x1eLL,0x1000f0000000000LL,"-all",((void *)0));
 create_implies_item(516, 754, "--whole-archive");
 create_option_info(517,0xeLL,0x1000f0000LL,"-align8","align data in common blocks to 8-bit boundaries");
 create_implies_item(517, 517, "-align8");
 create_option_info(518,0x1eLL,0x1000f0000LL,"-align64","align data in common blocks to 64-bit boundaries");
 create_implies_item(518, 518, "-align64");
 create_option_info(519,0x1eLL,0x1000f0000LL,"-align32","align data in common blocks to 32-bit boundaries");
 create_implies_item(519, 519, "-align32");
 create_option_info(520,0xeLL,0x1000f0000LL,"-align16","align data in common blocks to 16-bit boundaries");
 create_implies_item(520, 520, "-align16");
 create_option_info(521,0xeLL,0x1000f0000LL,"-align128","align data in common blocks to 128-bit boundaries");
 create_implies_item(521, 521, "-align128");
 create_option_info(522,0xfffffffLL,0x10000000000LL,"-Y","-Y<phase>,<path> uses path to find phase {p=cpp,f=fe,b=be,a=as,l=ld,i=inline,I=include,S=startup,L=libraries}");
 create_implies_item(522, 522, "-Y%s");
 create_option_info(523,0x1eLL,0x1000f0000000000LL,"-Xlinker",((void *)0));
 create_option_info(524,0x6LL,0xff0000LL,"-Wwrite-strings","Mark strings as 'const char *'");
 create_implies_item(524, 524, "-Wwrite-strings");
 create_option_info(525,0x6LL,0xff0000LL,"-Wunused-variable","Warn about local and static variables that are not used");
 create_implies_item(525, 525, "-Wunused-variable");
 create_option_info(526,0x6LL,0xff0000LL,"-Wunused-value","Warn about statements whose results are not used");
 create_implies_item(526, 526, "-Wunused-value");
 create_option_info(527,0x6LL,0xff0000LL,"-Wunused-parameter","Warn about unused function parameters");
 create_implies_item(527, 527, "-Wunused-parameter");
 create_option_info(528,0x7LL,0xff0ff0LL,"-Wunused-macros","Warn about macros defined but not used");
 create_implies_item(528, 528, "-Wunused-macros");
 create_option_info(529,0x6LL,0xff0000LL,"-Wunused-label","Warn about unused labels");
 create_implies_item(529, 529, "-Wunused-label");
 create_option_info(530,0x6LL,0xff0000LL,"-Wunused-function","Warn about unused static and inline functions");
 create_implies_item(530, 530, "-Wunused-function");
 create_option_info(531,0x6LL,0xff0000LL,"-Wunused","Warn when a variable is unused");
 create_implies_item(531, 531, "-Wunused");
 create_option_info(532,0x6LL,0xff0000LL,"-Wunreachable-code","Warn about code that will never be executed");
 create_implies_item(532, 532, "-Wunreachable-code");
 create_option_info(533,0x6LL,0xff0000LL,"-Wunknown-pragmas","Warn when an unknown #pragma directive is encountered");
 create_implies_item(533, 533, "-Wunknown-pragmas");
 create_option_info(534,0x1eLL,0xff0000LL,"-Wuninitialized","Warn about unitialized automatic variables");
 create_implies_item(534, 676, "-WOPT:warn_uninit=on");
 create_option_info(535,0x7LL,0xff0ff0LL,"-Wundef","Warn if an undefined identifier appears in a #if directive");
 create_implies_item(535, 535, "-Wundef");
 create_option_info(536,0x7LL,0xff0ff0LL,"-Wtrigraphs","Warn when trigraphs are encountered");
 create_implies_item(536, 536, "-Wtrigraphs");
 create_option_info(537,0x7LL,0xff0ff0LL,"-Wtraditional","Warn about constructs whoes meaning change in ANSI C");
 create_implies_item(537, 537, "-Wtraditional");
 create_option_info(538,0x7LL,0xff0ff0LL,"-Wsystem-headers","Print warnings for constructs in system header files");
 create_implies_item(538, 538, "-Wsystem-headers");
 create_option_info(539,0x4LL,0xff0000LL,"-Wsynth","Warn about synthesis that is not backwards compatible with cfront");
 create_implies_item(539, 539, "-Wsynth");
 create_option_info(540,0x6LL,0xff0000LL,"-Wswitch-enum","Warn when a switch statement is missing a case for an enum member");
 create_implies_item(540, 540, "-Wswitch-enum");
 create_option_info(541,0x6LL,0xff0000LL,"-Wswitch-default","Warn when a switch statement has no default");
 create_implies_item(541, 541, "-Wswitch-default");
 create_option_info(542,0x6LL,0xff0000LL,"-Wswitch","Warn when a switch statement is incorrectly indexed with an enum");
 create_implies_item(542, 542, "-Wswitch");
 create_option_info(543,0x6LL,0xff0000LL,"-Wstrict-prototypes","Warn about non-prototyped function decls");
 create_implies_item(543, 543, "-Wstrict-prototypes");
 create_option_info(544,0x6LL,0xff0000LL,"-Wstrict-aliasing","Warn about code that breaks strict aliasing rules");
 create_implies_item(544, 544, "-Wstrict-aliasing");
 create_option_info(545,0x4LL,0xff0000LL,"-Wsign-promo","Warn when overload resolution promotes from unsigned to signed");
 create_implies_item(545, 545, "-Wsign-promo");
 create_option_info(546,0x6LL,0xff0000LL,"-Wsign-compare","Warn about signed/unsigned comparisons");
 create_implies_item(546, 546, "-Wsign-compare");
 create_option_info(547,0x6LL,0xff0000LL,"-Wshadow","Warn when one local variable shadows another");
 create_implies_item(547, 547, "-Wshadow");
 create_option_info(548,0x6LL,0xff0000LL,"-Wsequence-point","Warn about code violating sequence point rules");
 create_implies_item(548, 548, "-Wsequence-point");
 create_option_info(549,0x6LL,0xff0000LL,"-Wreturn-type","Warn when a function return type defaults to int");
 create_implies_item(549, 549, "-Wreturn-type");
 create_option_info(550,0x4LL,0xff0000LL,"-Wreorder","Warn when reordering member initializers");
 create_implies_item(550, 550, "-Wreorder");
 create_option_info(551,0x6LL,0xff0000LL,"-Wredundant-decls","Warn about multiple declarations of the same object");
 create_implies_item(551, 551, "-Wredundant-decls");
 create_option_info(552,0x6LL,0xff0000LL,"-Wpointer-arith","Warn about function pointer arithmetic");
 create_implies_item(552, 552, "-Wpointer-arith");
 create_option_info(553,0x6LL,0xff0000LL,"-Wparentheses","Warn about possible missing parentheses");
 create_implies_item(553, 553, "-Wparentheses");
 create_option_info(554,0x6LL,0xff0000LL,"-Wpadded","Warn when padding is included in a struct");
 create_implies_item(554, 554, "-Wpadded");
 create_option_info(555,0x6LL,0xff0000LL,"-Wpacked","Warn when packed attribute of a struct has no effect");
 create_implies_item(555, 555, "-Wpacked");
 create_option_info(556,0xfffffffLL,0xff0LL,"-Wp,","pass comma-separated opts to preprocessor as individual opts");
 create_implies_item(556, 556, "-Wp,%s");
 create_option_info(557,0x4LL,0xff0000LL,"-Woverloaded-virtual","Warn when a function declaration hides virtual functions");
 create_implies_item(557, 557, "-Woverloaded-virtual");
 create_option_info(558,0x4LL,0xff0000LL,"-Wold-style-cast","Warn when a C-style cast to a non-void type is used");
 create_implies_item(558, 558, "-Wold-style-cast");
 create_option_info(559,0x6LL,0xff0000LL,"-Wnonnull","Warn when passing null to functions requiring non-null pointers");
 create_implies_item(559, 559, "-Wnonnull");
 create_option_info(560,0x4LL,0xff0000LL,"-Wnon-virtual-dtor","Warn when a class declares a dtor that should be virtual");
 create_implies_item(560, 560, "-Wnon-virtual-dtor");
 create_option_info(561,0x6LL,0xff0000LL,"-Wno-write-strings","Do not mark strings as 'const char *'");
 create_implies_item(561, 561, "-Wno-write-strings");
 create_option_info(562,0x6LL,0xff0000LL,"-Wno-unused-variable","Do not warnarn about local and static variables that are not used");
 create_implies_item(562, 562, "-Wno-unused-variable");
 create_option_info(563,0x6LL,0xff0000LL,"-Wno-unused-value","Do not warn about statements whose results are not used");
 create_implies_item(563, 563, "-Wno-unused-value");
 create_option_info(564,0x6LL,0xff0000LL,"-Wno-unused-parameter","Do not warn about unused function parameters");
 create_implies_item(564, 564, "-Wno-unused-parameter");
 create_option_info(565,0x7LL,0xff0ff0LL,"-Wno-unused-macros","Do not warn about macros defined but not used");
 create_implies_item(565, 565, "-Wno-unused-macros");
 create_option_info(566,0x6LL,0xff0000LL,"-Wno-unused-label","Do not warn about unused labels");
 create_implies_item(566, 566, "-Wno-unused-label");
 create_option_info(567,0x6LL,0xff0000LL,"-Wno-unused-function","Do not warn about unused static and inline functions");
 create_implies_item(567, 567, "-Wno-unused-function");
 create_option_info(568,0x6LL,0xff0000LL,"-Wno-unused","Do not warn when a variable is unused");
 create_implies_item(568, 568, "-Wno-unused");
 create_option_info(569,0x6LL,0xff0000LL,"-Wno-unreachable-code","Do not warn about code that will never be executed");
 create_implies_item(569, 569, "-Wno-unreachable-code");
 create_option_info(570,0x6LL,0xff0000LL,"-Wno-unknown-pragmas","Do not warn when an unknown #pragma directive is encountered");
 create_implies_item(570, 570, "-Wno-unknown-pragmas");
 create_option_info(571,0x6LL,0xff0000LL,"-Wno-uninitialized","Do not warn about unitialized automatic variables");
 create_implies_item(571, 571, "-Wno-uninitialized");
 create_option_info(572,0x7LL,0xff0ff0LL,"-Wno-undef","Do not warn if an undefined identifier appears in a #if directive");
 create_implies_item(572, 572, "-Wno-undef");
 create_option_info(573,0x7LL,0xff0ff0LL,"-Wno-trigraphs","Do not warn when trigraphs are encountered");
 create_implies_item(573, 573, "-Wno-trigraphs");
 create_option_info(574,0x7LL,0xff0ff0LL,"-Wno-traditional","Do not warn about constructs whoes meaning change in ANSI C");
 create_implies_item(574, 574, "-Wno-traditional");
 create_option_info(575,0x7LL,0xff0ff0LL,"-Wno-system-headers","Do not print warnings for constructs in system header files");
 create_implies_item(575, 575, "-Wno-system-headers");
 create_option_info(576,0x4LL,0xff0000LL,"-Wno-synth","Do not warn about synthesis that is not backwards compatible with cfront");
 create_implies_item(576, 576, "-Wno-synth");
 create_option_info(577,0x6LL,0xff0000LL,"-Wno-switch","Do not warn when a switch statement is incorrectly indexed with an enum");
 create_implies_item(577, 577, "-Wno-switch");
 create_option_info(578,0x6LL,0xff0000LL,"-Wno-strict-prototypes","Do not warn about non-prototyped function decls");
 create_implies_item(578, 578, "-Wno-strict-prototypes");
 create_option_info(579,0x6LL,0xff0000LL,"-Wno-strict-aliasing","Do not warn about code that breaks strict aliasing rules");
 create_implies_item(579, 579, "-Wno-strict-aliasing");
 create_option_info(580,0x4LL,0xff0000LL,"-Wno-sign-promo","Do not warn when overload resolution promotes from unsigned to signed");
 create_implies_item(580, 580, "-Wno-sign-promo");
 create_option_info(581,0x6LL,0xff0000LL,"-Wno-sign-compare","Do not warn about signed/unsigned comparisons");
 create_implies_item(581, 581, "-Wno-sign-compare");
 create_option_info(582,0x6LL,0xff0000LL,"-Wno-shadow","Do not warn when one local variable shadows another");
 create_implies_item(582, 582, "-Wno-shadow");
 create_option_info(583,0x6LL,0xff0000LL,"-Wno-sequence-point","Do not warn about code violating sequence point rules");
 create_implies_item(583, 583, "-Wno-sequence-point");
 create_option_info(584,0x6LL,0xff0000LL,"-Wno-return-type","Do not warn when a function return type defaults to int");
 create_implies_item(584, 584, "-Wno-return-type");
 create_option_info(585,0x4LL,0xff0000LL,"-Wno-reorder","Do not warn when reordering member initializers");
 create_implies_item(585, 585, "-Wno-reorder");
 create_option_info(586,0x6LL,0xff0000LL,"-Wno-redundant-decls","Do not warn about multiple declarations of the same object");
 create_implies_item(586, 586, "-Wno-redundant-decls");
 create_option_info(587,0x6LL,0xff0000LL,"-Wno-pointer-arith","Do not warn about function pointer arithmetic");
 create_implies_item(587, 587, "-Wno-pointer-arith");
 create_option_info(588,0x4LL,0xff0000LL,"-Wno-pmf-conversions","Do not warn about converting PMFs to plain pointers");
 create_implies_item(588, 588, "-Wno-pmf-conversions");
 create_option_info(589,0x6LL,0xff0000LL,"-Wno-parentheses","Do not warn about possible missing parentheses");
 create_implies_item(589, 589, "-Wno-parentheses");
 create_option_info(590,0x6LL,0xff0000LL,"-Wno-padded","Do not warn when padding is included in a struct");
 create_implies_item(590, 590, "-Wno-padded");
 create_option_info(591,0x6LL,0xff0000LL,"-Wno-packed","Do not warn when packed attribute of a struct has no effect");
 create_implies_item(591, 591, "-Wno-packed");
 create_option_info(592,0x4LL,0xff0000LL,"-Wno-overloaded-virtual","Do not warn when a function declaration hides virtual functions");
 create_implies_item(592, 592, "-Wno-overloaded-virtual");
 create_option_info(593,0x4LL,0xff0000LL,"-Wno-old-style-cast","Do not warn when a C-style cast to a non-void type is used");
 create_implies_item(593, 593, "-Wno-old-style-cast");
 create_option_info(594,0x4LL,0xff0000LL,"-Wno-non-virtual-dtor","Do not warn when a class declares a dtor that should be virtual");
 create_implies_item(594, 594, "-Wno-non-virtual-dtor");
 create_option_info(595,0x4LL,0xff0000LL,"-Wno-non-template-friend","Do not warn about friend functions declared in templates");
 create_implies_item(595, 595, "-Wno-non-template-friend");
 create_option_info(596,0x6LL,0xff0000LL,"-Wno-nested-externs","Do not warn about externs not at file scope level");
 create_implies_item(596, 596, "-Wno-nested-externs");
 create_option_info(597,0x6LL,0xff0000LL,"-Wno-multichar","Do not warn if a multicharacter constant is used");
 create_implies_item(597, 597, "-Wno-multichar");
 create_option_info(598,0x6LL,0xff0000LL,"-Wno-missing-prototypes","Do not warn about global funcs without prototypes");
 create_implies_item(598, 598, "-Wno-missing-prototypes");
 create_option_info(599,0x6LL,0xff0000LL,"-Wno-missing-noreturn","Do not warn about functions that are candidates for 'noreturn' attribute");
 create_implies_item(599, 599, "-Wno-missing-noreturn");
 create_option_info(600,0x6LL,0xff0000LL,"-Wno-missing-format-attribute","Do not warn on candidates for `format' attributes");
 create_implies_item(600, 600, "-Wno-missing-format-attribute");
 create_option_info(601,0x6LL,0xff0000LL,"-Wno-missing-declarations","Do not warn about global funcs without previous declarations");
 create_implies_item(601, 601, "-Wno-missing-declarations");
 create_option_info(602,0x6LL,0xff0000LL,"-Wno-missing-braces","Do not warn about possibly missing braces around initialisers");
 create_implies_item(602, 602, "-Wno-missing-braces");
 create_option_info(603,0x6LL,0xff0000LL,"-Wno-main","Do not warn about suspicious declarations of main");
 create_implies_item(603, 603, "-Wno-main");
 create_option_info(604,0x6LL,0xff0000LL,"-Wno-long-long","Do not warn if the long long type is used");
 create_implies_item(604, 604, "-Wno-long-long");
 create_option_info(605,0x6LL,0xff0000LL,"-Wno-larger-than-","Do not warn if an object is larger than <number> bytes");
 create_implies_item(605, 605, "-Wno-larger-than-%d");
 create_option_info(606,0x6LL,0xff0000LL,"-Wno-invalid-pch",((void *)0));
 create_option_info(607,0x6LL,0xff0000LL,"-Wno-inline","Do not warn if a function declared as inline cannot be inlined");
 create_implies_item(607, 607, "-Wno-inline");
 create_option_info(608,0x7LL,0xff0ff0LL,"-Wno-import","Do not warn about the use of the #import directive");
 create_implies_item(608, 608, "-Wno-import");
 create_option_info(609,0x6LL,0xff0000LL,"-Wno-implicit-int","Do not warn when a declaration does not specify a type");
 create_implies_item(609, 609, "-Wno-implicit-int");
 create_option_info(610,0x6LL,0xff0000LL,"-Wno-implicit-function-declaration","Do not warn when a function is used before being declared");
 create_implies_item(610, 610, "-Wno-implicit-function-declaration");
 create_option_info(611,0x6LL,0xff0000LL,"-Wno-implicit","Do not warn about implicit declarations of functions or variables");
 create_implies_item(611, 611, "-Wno-implicit");
 create_option_info(612,0x6LL,0xff0000LL,"-Wno-format-y2k","Do not warn about `strftime' formats that yield two-digit years");
 create_implies_item(612, 612, "-Wno-format-y2k");
 create_option_info(613,0x6LL,0xff0000LL,"-Wno-format-security","Do not warn on potentially insecure format functions");
 create_implies_item(613, 613, "-Wno-format-security");
 create_option_info(614,0x6LL,0xff0000LL,"-Wno-format-nonliteral","Do not warn if format string is not a string literal");
 create_implies_item(614, 614, "-Wno-format-nonliteral");
 create_option_info(615,0x6LL,0xff0000LL,"-Wno-format-extra-args","Do not warn about extra arguments to printf-like functions");
 create_implies_item(615, 615, "-Wno-format-extra-args");
 create_option_info(616,0x6LL,0xff0000LL,"-Wno-format","Do not warn about printf format anomalies");
 create_implies_item(616, 616, "-Wno-format");
 create_option_info(617,0x6LL,0xff0000LL,"-Wno-float-equal","Do not warn if floating point values are compared for equality");
 create_implies_item(617, 617, "-Wno-float-equal");
 create_option_info(618,0x7LL,0xff0ff0LL,"-Wno-error","Do not make all warnings into errors");
 create_implies_item(618, 618, "-Wno-error");
 create_option_info(619,0xfLL,0xff0LL,"-Wno-endif-labels","Do not warn if #if or #endif is followed by text");
 create_implies_item(619, 619, "-Wno-endif-labels");
 create_option_info(620,0x4LL,0xff0000LL,"-Wno-effc++","Do not warn on `Effective C++' style violations");
 create_implies_item(620, 620, "-Wno-effc++");
 create_option_info(621,0x6LL,0xff0000LL,"-Wno-div-by-zero","Suppress warnings about compile-time integer division by zero");
 create_implies_item(621, 621, "-Wno-div-by-zero");
 create_option_info(622,0x6LL,0xff0000LL,"-Wno-disabled-optimization","Do not warn if a requested optimization pass is disabled");
 create_implies_item(622, 622, "-Wno-disabled-optimization");
 create_option_info(623,0x6LL,0xff0000LL,"-Wno-deprecated-declarations","Do not warn about deprecated code");
 create_implies_item(623, 623, "-Wno-deprecated-declarations");
 create_option_info(624,0xeLL,0xff0LL,"-Wno-deprecated","Don't announce deprecation of compiler features");
 create_implies_item(624, 624, "-Wno-deprecated");
 create_option_info(625,0x4LL,0xff0LL,"-Wno-ctor-dtor-privacy","Do not warn when all constructors/destructors are private");
 create_implies_item(625, 625, "-Wno-ctor-dtor-privacy");
 create_option_info(626,0x6LL,0xff0000LL,"-Wno-conversion","Do not warn about possibly confusing type conversions");
 create_implies_item(626, 626, "-Wno-conversion");
 create_option_info(627,0x7LL,0xff0ff0LL,"-Wno-comments","Do not warn if nested comments are detected");
 create_implies_item(627, 627, "-Wno-comments");
 create_option_info(628,0x7LL,0xff0ff0LL,"-Wno-comment","Do not warn if nested comments are detected");
 create_implies_item(628, 628, "-Wno-comment");
 create_option_info(629,0x6LL,0xff0000LL,"-Wno-char-subscripts","Do not warn about subscripts whose type is 'char'");
 create_implies_item(629, 629, "-Wno-char-subscripts");
 create_option_info(630,0x6LL,0xff0000LL,"-Wno-cast-qual","Do not warn about casts which discard qualifiers");
 create_implies_item(630, 630, "-Wno-cast-qual");
 create_option_info(631,0x6LL,0xff0000LL,"-Wno-cast-align","Do not warn about pointer casts which increase alignment");
 create_implies_item(631, 631, "-Wno-cast-align");
 create_option_info(632,0x6LL,0xff0000LL,"-Wno-bad-function-cast","Do not warn when a function call is cast to a non-matching type");
 create_implies_item(632, 632, "-Wno-bad-function-cast");
 create_option_info(633,0x6LL,0xff0000LL,"-Wno-aggregate-return","Do not warn about returning structures, unions or arrays");
 create_implies_item(633, 633, "-Wno-aggregate-return");
 create_option_info(634,0x6LL,0xff0000LL,"-Wnested-externs","Warn about externs not at file scope level");
 create_implies_item(634, 634, "-Wnested-externs");
 create_option_info(635,0x6LL,0xff0000LL,"-Wmultichar","Warn if a multicharacter constant is used");
 create_implies_item(635, 635, "-Wmultichar");
 create_option_info(636,0x6LL,0xff0000LL,"-Wmissing-prototypes","Warn about global funcs without prototypes");
 create_implies_item(636, 636, "-Wmissing-prototypes");
 create_option_info(637,0x6LL,0xff0000LL,"-Wmissing-noreturn","Warn about functions that are candidates for 'noreturn' attribute");
 create_implies_item(637, 637, "-Wmissing-noreturn");
 create_option_info(638,0x6LL,0xff0000LL,"-Wmissing-format-attribute","If -Wformat, warn on candidates for `format' attributes");
 create_implies_item(638, 638, "-Wmissing-format-attribute");
 create_option_info(639,0x6LL,0xff0000LL,"-Wmissing-declarations","Warn about global funcs without previous declarations");
 create_implies_item(639, 639, "-Wmissing-declarations");
 create_option_info(640,0x6LL,0xff0000LL,"-Wmissing-braces","Warn about possibly missing braces around initialisers");
 create_implies_item(640, 640, "-Wmissing-braces");
 create_option_info(641,0x6LL,0xff0000LL,"-Wmain","Warn about suspicious declarations of main");
 create_implies_item(641, 641, "-Wmain");
 create_option_info(642,0x6LL,0xff0000LL,"-Wlong-long","Warn if the long long type is used");
 create_implies_item(642, 642, "-Wlong-long");
 create_option_info(643,0x6LL,0xff0000LL,"-Wlarger-than-","Warn if an object is larger than <number> bytes");
 create_implies_item(643, 643, "-Wlarger-than-%d");
 create_option_info(644,0x1eLL,0x1000f0000000000LL,"-Wl,","pass comma-separated opts to linker as individual opts");
 create_implies_item(644, 644, "-Wl,%s");
 create_option_info(645,0x6LL,0xff0000LL,"-Winvalid-pch",((void *)0));
 create_option_info(646,0x6LL,0xff0000LL,"-Winline","Warn if a function declared as inline cannot be inlined");
 create_implies_item(646, 646, "-Winline");
 create_option_info(647,0x7LL,0xff0ff0LL,"-Wimport","Warn about the use of the #import directive");
 create_implies_item(647, 647, "-Wimport");
 create_option_info(648,0x6LL,0xff0000LL,"-Wimplicit-int","Warn when a declaration does not specify a type");
 create_implies_item(648, 648, "-Wimplicit-int");
 create_option_info(649,0x6LL,0xff0000LL,"-Wimplicit-function-declaration","Warn when a function is used before being declared");
 create_implies_item(649, 649, "-Wimplicit-function-declaration");
 create_option_info(650,0x6LL,0xff0000LL,"-Wimplicit","Warn about implicit declarations of functions or variables");
 create_implies_item(650, 650, "-Wimplicit");
 create_option_info(651,0x6LL,0xff0000LL,"-Wformat=2","Enable -Wformat plus format checks not included in -Wformat");
 create_implies_item(651, 652, "-Wformat-security");
 create_implies_item(651, 653, "-Wformat-nonliteral");
 create_implies_item(651, 654, "-Wformat");
 create_option_info(652,0x6LL,0xff0000LL,"-Wformat-security","If -Wformat, warn on potentially insecure format functions");
 create_implies_item(652, 652, "-Wformat-security");
 create_option_info(653,0x6LL,0xff0000LL,"-Wformat-nonliteral","If -Wformat, warn if format string is not a string literal");
 create_implies_item(653, 653, "-Wformat-nonliteral");
 create_option_info(654,0x6LL,0xff0000LL,"-Wformat","Warn about printf format anomalies");
 create_implies_item(654, 654, "-Wformat");
 create_option_info(655,0x6LL,0xff0000LL,"-Wfloat-equal","Warn if floating point values are compared for equality");
 create_implies_item(655, 655, "-Wfloat-equal");
 create_option_info(656,0x6LL,0xff0000LL,"-Werror-implicit-function-declaration","Give an error when a function is used before being declared");
 create_implies_item(656, 656, "-Werror-implicit-function-declaration");
 create_option_info(657,0x7LL,0xff0ff0LL,"-Werror","Make all warnings into errors");
 create_implies_item(657, 657, "-Werror");
 create_option_info(658,0xfLL,0xff0LL,"-Wendif-labels","Warn if #if or #endif is followed by text");
 create_implies_item(658, 658, "-Wendif-labels");
 create_option_info(659,0x4LL,0xff0000LL,"-Weffc++","Warn on `Effective C++' style violations");
 create_implies_item(659, 659, "-Weffc++");
 create_option_info(660,0x6LL,0xff0000LL,"-Wdiv-by-zero","Warn about compile-time integer division by zero");
 create_implies_item(660, 660, "-Wdiv-by-zero");
 create_option_info(661,0x6LL,0LL,"-Wdisabled-optimization","Warn if a requested optimization pass is disabled");
 create_option_info(662,0xeLL,0xff0LL,"-Wdeprecated","Announce deprecation of compiler features");
 create_implies_item(662, 662, "-Wdeprecated");
 create_option_info(663,0x2LL,0xff0000LL,"-Wdeclaration-after-statement","Warn about declarations after statements (pre-C99)");
 create_implies_item(663, 663, "-Wdeclaration-after-statement");
 create_option_info(664,0x4LL,0xff0LL,"-Wctor-dtor-privacy","Warn when all constructors/destructors are private");
 create_implies_item(664, 664, "-Wctor-dtor-privacy");
 create_option_info(665,0x6LL,0xff0000LL,"-Wconversion","Warn about possibly confusing type conversions");
 create_implies_item(665, 665, "-Wconversion");
 create_option_info(666,0x7LL,0xff0ff0LL,"-Wcomments","Warn if nested comments are detected");
 create_implies_item(666, 666, "-Wcomments");
 create_option_info(667,0x7LL,0xff0ff0LL,"-Wcomment","Warn if nested comments are detected");
 create_implies_item(667, 667, "-Wcomment");
 create_option_info(668,0x6LL,0xff0000LL,"-Wchar-subscripts","Warn about subscripts whose type is 'char'");
 create_implies_item(668, 668, "-Wchar-subscripts");
 create_option_info(669,0x6LL,0xff0000LL,"-Wcast-qual","Warn about casts which discard qualifiers");
 create_implies_item(669, 669, "-Wcast-qual");
 create_option_info(670,0x6LL,0xff0000LL,"-Wcast-align","Warn about pointer casts which increase alignment");
 create_implies_item(670, 670, "-Wcast-align");
 create_option_info(671,0x6LL,0xff0000LL,"-Wbad-function-cast","Attempt to support writable-strings K&R style C");
 create_implies_item(671, 671, "-Wbad-function-cast");
 create_option_info(672,0x7LL,0xff0ff0LL,"-Wall","Enable most warning messages");
 create_implies_item(672, 672, "-Wall");
 create_option_info(673,0x6LL,0xff0000LL,"-Waggregate-return","Warn about returning structures, unions or arrays");
 create_implies_item(673, 673, "-Waggregate-return");
 create_option_info(674,0xfffffffLL,0xf00000LL,"-Wabi",((void *)0));
 create_implies_item(674, 674, "-Wabi");
 create_option_info(675,0x1eLL,0x3000000000LL,"-Wa,","pass comma-separated opts to assembler as individual opts");
 create_implies_item(675, 675, "-Wa,%s");
 create_option_info(676,0xfffffffLL,0x1f0000000LL,"-WOPT:","option group internal-use WOPT options");
 create_implies_item(676, 676, "-WOPT:%s");
 create_option_info(677,0x1eLL,0x1000f0000000000LL,"-WB,","-WB,<arg> passes <arg> to the back-end via ipacom");
 create_implies_item(677, 677, "-WB,%s");
 create_option_info(678,0xfffffffLL,0LL,"-W","-W<phase>,<arg> sends arg to phase {p=cpp,f=fe,b=be,a=as,l=ld}");
 create_option_info(679,0x6LL,0xff0000LL,"-W","Enable extra warnings");
 create_implies_item(679, 679, "-W");
 create_option_info(680,0xfffffffLL,0x1f00f0000LL,"-VHO:","option group to control vho lowering");
 create_implies_item(680, 680, "-VHO:%s");
 create_option_info(681,0x2LL,0x1000f01f0ff0ff0LL,"-V",((void *)0));
 create_option_info(682,0x2LL,0x1000f01f0ff0ff0LL,"-V",((void *)0));
 create_option_info(683,0xfffffffLL,0LL,"-U",((void *)0));
 create_option_info(684,0xfffffffLL,0xff0LL,"-U","undefine the following macro");
 create_implies_item(684, 684, "-U%s");
 create_option_info(685,0xfffffffLL,0x1f00f0000LL,"-TENV:","option group to control target environment");
 create_implies_item(685, 685, "-TENV:%s");
 create_option_info(686,0xfffffffLL,0x1f00f0000LL,"-TARG:","option group to control compilation target");
 create_implies_item(686, 686, "-TARG:%s");
 create_option_info(687,0xfffffffLL,0x100000000LL,"-SWP:",((void *)0));
 create_implies_item(687, 687, "-SWP:%s");
 create_option_info(688,0x1eLL,0LL,"-S","produce a .s and stop");
 create_option_info(689,0xfffffffLL,0LL,"-R","pass flags to RATFOR");
 create_option_info(690,0xfffffffLL,0LL,"-Q","suppress timing information (g++) ");
 create_option_info(691,0x8LL,0x100000000LL,"-PURPLE:","option group to control problem isolation slicing tool");
 create_implies_item(691, 691, "-PURPLE:%s");
 create_implies_item(691, 694, "-PHASE:purple");
 create_option_info(692,0x1eLL,0x100000000LL,"-PROMP:next_id=",((void *)0));
 create_implies_item(692, 692, "-PROMP:next_id=%d");
 create_option_info(693,0x1eLL,0x100000000LL,"-PROMP:",((void *)0));
 create_implies_item(693, 693, "-PROMP:%s");
 create_implies_item(693, 694, "-PHASE:prompf");
 create_option_info(694,0xfffffffLL,0x1f0000000LL,"-PHASE:",((void *)0));
 create_implies_item(694, 694, "-PHASE:%s");
 create_option_info(695,0xfffffffLL,0xff0LL,"-P",((void *)0));
 create_implies_item(695, 695, "-P");
 create_option_info(696,0xfffffffLL,0x1f0ff0000LL,"-Os","Optimize for space");
 create_implies_item(696, 699, "-OPT:space");
 create_option_info(697,0xfffffffLL,0LL,"-Olimit",((void *)0));
 create_implies_item(697, 697, "-Olimit");
 create_option_info(698,0xfffffffLL,0LL,"-Ofast","default fast option configuration");
 create_option_info(699,0xfffffffLL,0x101f0ff0000LL,"-OPT:","option group to control optimization");
 create_implies_item(699, 699, "-OPT:%s");
 create_option_info(700,0xfffffffLL,0x1f0ff0ff0LL,"-O3","full optimization");
 create_implies_item(700, 745, "-D__OPTIMIZE__");
 create_implies_item(700, 700, "-O3");
 create_option_info(701,0xfffffffLL,0x1f0ff0ff0LL,"-O2","global optimization");
 create_implies_item(701, 745, "-D__OPTIMIZE__");
 create_implies_item(701, 701, "-O2");
 create_option_info(702,0xfffffffLL,0x1f0ff0ff0LL,"-O1","minimal optimization");
 create_implies_item(702, 745, "-D__OPTIMIZE__");
 create_implies_item(702, 702, "-O1");
 create_option_info(703,0xfffffffLL,0x1f0ff0ff0LL,"-O0","no optimization");
 create_implies_item(703, 703, "-O0");
 create_option_info(704,0xfffffffLL,0x1f0ff0ff0LL,"-O","full optimization");
 create_implies_item(704, 700, "-O3");
 create_option_info(705,0xfffffffLL,0x1f0ff0ff0LL,"-O","same as -O2");
 create_implies_item(705, 745, "-D__OPTIMIZE__");
 create_implies_item(705, 701, "-O2");
 create_option_info(706,0x18LL,0xf0000LL,"-NC","set max # of continuation lines");
 create_implies_item(706, 706, "-NC%d");
 create_option_info(707,0x27LL,0xff0LL,"-MT","Change the target of the generated dependency rules");
 create_implies_item(707, 707, "-MT %s");
 create_option_info(708,0x27LL,0xff0LL,"-MQ","Same as -MT, but quote characters that are special to Make");
 create_implies_item(708, 708, "-MQ %s");
 create_option_info(709,0x27LL,0xff0LL,"-MP","With -M or -MM, add phony targets for each dependency");
 create_implies_item(709, 709, "-MP");
 create_option_info(710,0x27LL,0xff0LL,"-MMD","Write user dependencies to .d output file");
 create_implies_item(710, 710, "-MMD");
 create_option_info(711,0x27LL,0xff0LL,"-MM","Output user dependencies of source file");
 create_implies_item(711, 711, "-MM");
 create_option_info(712,0x27LL,0xff0LL,"-MG","With -M or -MM, treat missing header files as generated files");
 create_implies_item(712, 712, "-MG");
 create_option_info(713,0x27LL,0xff0LL,"-MF","Write dependencies to specified output file");
 create_implies_item(713, 713, "-MF %s");
 create_option_info(714,0xfffffffLL,0x1000f0000000ff0LL,"-MDupdate","update the following file with make dependencies");
 create_implies_item(714, 714, "-MDupdate %s");
 create_option_info(715,0xfffffffLL,0xff0LL,"-MDtarget","use the following as the target for make dependencies");
 create_implies_item(715, 715, "-MDtarget %s");
 create_option_info(716,0xfffffffLL,0x1000f0000000000LL,"-MDignore",((void *)0));
 create_implies_item(716, 716, "-MDignore %s");
 create_option_info(717,0x27LL,0xff0LL,"-MD","Write dependencies to .d output file");
 create_implies_item(717, 717, "-MD");
 create_option_info(718,0xfffffffLL,0xff0LL,"-M","run cpp and print list of make dependencies");
 create_implies_item(718, 718, "-M");
 create_option_info(719,0xfffffffLL,0x1000f0100000000LL,"-LNO:","option group to control loop nest optimization");
 create_implies_item(719, 719, "-LNO:%s");
 create_option_info(720,0xfffffffLL,0x1000f0000000000LL,"-LMSG:","option group to control error/warning messages in ld");
 create_implies_item(720, 720, "-LMSG:%s");
 create_option_info(721,0xfffffffLL,0x1f0000000LL,"-LIST:","option group to control listing file and contents");
 create_implies_item(721, 721, "-LIST:%s");
 create_option_info(722,0xfffffffLL,0x1000f0000000000LL,"-LD_",((void *)0));
 create_implies_item(722, 722, "-LD_%s");
 create_option_info(723,0x4LL,0x1f00f0000LL,"-LANG:std","Use ISO/ANSI standard-conforming C++ language and library");
 create_implies_item(723, 723, "-LANG:std");
 create_option_info(724,0x1eLL,0x1f00f0000LL,"-LANG:","option group to control language features");
 create_implies_item(724, 724, "-LANG:%s");
 create_option_info(725,0x1eLL,0x1000f0000000000LL,"-L","add following directory to the library search path list");
 create_implies_item(725, 725, "-L%D");
 create_option_info(726,0x1eLL,0x1000f0000000000LL,"-L",((void *)0));
 create_implies_item(726, 726, "-L");
 create_option_info(727,0xfffffffLL,0x100f0000000LL,"-IPA:","option group to control interprocedural optimizations");
 create_implies_item(727, 727, "-IPA:%s");
 create_option_info(728,0xfffffffLL,0LL,"-IPA","Perform interprocedural analysis and optimization");
 create_implies_item(728, 215, "-ipa");
 create_option_info(729,0x1eLL,0x101f00f0000LL,"-INTERNAL:","option group to control features while testing");
 create_implies_item(729, 729, "-INTERNAL:%s");
 create_option_info(730,0xfffffffLL,0x10000000000LL,"-INLINE:","specify inline processing option group");
 create_implies_item(730, 730, "-INLINE:%s");
 create_option_info(731,0xfffffffLL,0LL,"-INLINE","request inline processing");
 create_option_info(732,0xfffffffLL,0xff0LL,"-I-",((void *)0));
 create_implies_item(732, 732, "-I-");
 create_option_info(733,0xfffffffLL,0xff0LL,"-I","add following directory to the include search path list");
 create_implies_item(733, 10, "-include=%D");
 create_implies_item(733, 733, "-I%D");
 create_option_info(734,0x27LL,0xff0LL,"-H","print name of each header file used");
 create_implies_item(734, 734, "-H");
 create_option_info(735,0xfffffffLL,0x100000000LL,"-Gspace",((void *)0));
 create_implies_item(735, 685, "-TENV:Gspace=%d");
 create_option_info(736,0xfffffffLL,0x100000000LL,"-GRA:","option group to control global register allocation");
 create_implies_item(736, 736, "-GRA:%s");
 create_option_info(737,0LL,0LL,"-GCM:",((void *)0));
 create_option_info(738,0xfffffffLL,0x1000f0000LL,"-G",((void *)0));
 create_implies_item(738, 738, "-G%d");
 create_option_info(739,0x18LL,0x100000000LL,"-FLIST:","option group to control Fortran source listing of compiler intermediate");
 create_implies_item(739, 739, "-FLIST:%s");
 create_implies_item(739, 694, "-PHASE:flist");
 create_option_info(740,0xfffffffLL,0xf0000LL,"-FE:",((void *)0));
 create_implies_item(740, 740, "-FE:%s");
 create_option_info(741,0x8LL,0LL,"-F","stop after RATFOR (f77 only)");
 create_option_info(742,0xfffffffLL,0LL,"-E","run cpp and send result to standard output");
 create_implies_item(742, 742, "-E");
 create_option_info(743,0xfffffffLL,0LL,"-DEFAULT:",((void *)0));
 create_option_info(744,0xfffffffLL,0x1f00f0000LL,"-DEBUG:","option group to debugging options");
 create_implies_item(744, 744, "-DEBUG:%s");
 create_option_info(745,0xfffffffLL,0xff0LL,"-D","add following macro define");
 create_implies_item(745, 745, "-D%s");
 create_option_info(746,0x2LL,0x100000000LL,"-CLIST:","option group to control C source listing of compiler intermediate");
 create_implies_item(746, 746, "-CLIST:%s");
 create_implies_item(746, 694, "-PHASE:clist");
 create_option_info(747,0xfffffffLL,0x100000000LL,"-CG:","option group to control code generation");
 create_implies_item(747, 747, "-CG:%s");
 create_option_info(748,0xfffffffLL,0LL,"-C","C/C++: keep C comments after cpp; Fortran: runtime subscript checking");
 create_option_info(749,0xfffffffLL,0xff0LL,"-A","add following cpp assertions");
 create_implies_item(749, 749, "-A%s");
 create_option_info(750,0x8LL,0xf0000LL,"-66","issue errors when non-F66 feature used");
 create_implies_item(750, 750, "-66");
 create_option_info(751,0x8LL,0xf0000LL,"-1","One trip DO loops");
 create_implies_item(751, 751, "-1");
 create_option_info(752,0xfffffffLL,0LL,"--write-user-dependencies",((void *)0));
 create_implies_item(752, 710, "-MMD");
 create_option_info(753,0xfffffffLL,0LL,"--write-dependencies",((void *)0));
 create_implies_item(753, 717, "-MD");
 create_option_info(754,0x1eLL,0x1000f0000000000LL,"--whole-archive",((void *)0));
 create_implies_item(754, 754, "--whole-archive");
 create_option_info(755,0xfffffffLL,0LL,"--version",((void *)0));
 create_implies_item(755, 45, "-version");
 create_option_info(756,0xfffffffLL,0LL,"--verbose",((void *)0));
 create_implies_item(756, 47, "-v");
 create_option_info(757,0xfffffffLL,0LL,"--user-dependencies",((void *)0));
 create_implies_item(757, 711, "-MM");
 create_option_info(758,0xfffffffLL,0LL,"--undefine-macro",((void *)0));
 create_implies_item(758, 684, "-U%s");
 create_option_info(759,0xfffffffLL,0LL,"--trigraphs",((void *)0));
 create_implies_item(759, 56, "-trigraphs");
 create_option_info(760,0xfffffffLL,0LL,"--traditional-cpp",((void *)0));
 create_implies_item(760, 58, "-traditional-cpp");
 create_option_info(761,0xfffffffLL,0LL,"--traditional",((void *)0));
 create_implies_item(761, 59, "-traditional");
 create_option_info(762,0xfffffffLL,0LL,"--trace-includes",((void *)0));
 create_implies_item(762, 734, "-H");
 create_option_info(763,0xfffffffLL,0LL,"--target",((void *)0));
 create_implies_item(763, 506, "-b%s");
 create_option_info(764,0xfffffffLL,0LL,"--symbolic",((void *)0));
 create_implies_item(764, 61, "-symbolic");
 create_option_info(765,0x1eLL,0x1000f0000000000LL,"--static",((void *)0));
 create_implies_item(765, 765, "--static");
 create_option_info(766,0xfffffffLL,0LL,"--specs=",((void *)0));
 create_implies_item(766, 81, "-specs=%s");
 create_option_info(767,0xfffffffLL,0LL,"--specs",((void *)0));
 create_implies_item(767, 81, "-specs=%s");
 create_option_info(768,0xfffffffLL,0LL,"--shared",((void *)0));
 create_implies_item(768, 91, "-shared");
 create_option_info(769,0xfffffffLL,0LL,"--save-temps",((void *)0));
 create_implies_item(769, 92, "-save-temps");
 create_option_info(770,0xfffffffLL,0LL,"--profile",((void *)0));
 create_implies_item(770, 132, "-p");
 create_option_info(771,0xfffffffLL,0LL,"--print-search-dirs",((void *)0));
 create_implies_item(771, 106, "-print-search-dirs");
 create_option_info(772,0xfffffffLL,0LL,"--print-prog-name=",((void *)0));
 create_implies_item(772, 107, "-print-prog-name=%s");
 create_option_info(773,0xfffffffLL,0LL,"--print-prog-name",((void *)0));
 create_implies_item(773, 107, "-print-prog-name=%s");
 create_option_info(774,0xfffffffLL,0LL,"--print-multi-lib",((void *)0));
 create_implies_item(774, 108, "-print-multi-lib");
 create_option_info(775,0xfffffffLL,0LL,"--print-missing-file-dependencies",((void *)0));
 create_implies_item(775, 712, "-MG");
 create_option_info(776,0xfffffffLL,0LL,"--print-libgcc-file-name",((void *)0));
 create_implies_item(776, 110, "-print-file-name=libgcc.a");
 create_option_info(777,0xfffffffLL,0LL,"--print-file-name=",((void *)0));
 create_implies_item(777, 110, "-print-file-name=%s");
 create_option_info(778,0xfffffffLL,0LL,"--print-file-name",((void *)0));
 create_implies_item(778, 110, "-print-file-name=%s");
 create_option_info(779,0xfffffffLL,0LL,"--preprocess",((void *)0));
 create_implies_item(779, 742, "-E");
 create_option_info(780,0xfffffffLL,0LL,"--pipe",((void *)0));
 create_implies_item(780, 112, "-pipe");
 create_option_info(781,0xfffffffLL,0LL,"--pedantic-errors",((void *)0));
 create_implies_item(781, 121, "-pedantic-errors");
 create_option_info(782,0xfffffffLL,0LL,"--pedantic",((void *)0));
 create_implies_item(782, 122, "-pedantic");
 create_option_info(783,0xfffffffLL,0LL,"--output",((void *)0));
 create_implies_item(783, 136, "-o %s");
 create_option_info(784,0xfffffffLL,0LL,"--optimize",((void *)0));
 create_implies_item(784, 705, "-O");
 create_option_info(785,0x1eLL,0x1000f0000000000LL,"--no-whole-archive",((void *)0));
 create_implies_item(785, 785, "--no-whole-archive");
 create_option_info(786,0xfffffffLL,0LL,"--no-warnings",((void *)0));
 create_implies_item(786, 39, "-w");
 create_option_info(787,0xfffffffLL,0LL,"--no-standard-libraries",((void *)0));
 create_implies_item(787, 137, "-nostdlib");
 create_option_info(788,0xfffffffLL,0LL,"--no-standard-includes",((void *)0));
 create_implies_item(788, 139, "-nostdinc");
 create_option_info(789,0xfffffffLL,0LL,"--no-line-commands",((void *)0));
 create_implies_item(789, 695, "-P");
 create_option_info(790,0xfffffffLL,0LL,"--library-directory",((void *)0));
 create_implies_item(790, 725, "-L%D");
 create_option_info(791,0xfffffffLL,0LL,"--include-with-prefix-before",((void *)0));
 create_implies_item(791, 211, "-iwithprefixbefore %D");
 create_option_info(792,0xfffffffLL,0LL,"--include-with-prefix",((void *)0));
 create_implies_item(792, 212, "-iwithprefix %D");
 create_option_info(793,0xfffffffLL,0LL,"--include-prefix",((void *)0));
 create_implies_item(793, 214, "-iprefix %s");
 create_option_info(794,0xfffffffLL,0LL,"--include-directory-after",((void *)0));
 create_implies_item(794, 222, "-idirafter %D");
 create_option_info(795,0xfffffffLL,0LL,"--include-directory",((void *)0));
 create_implies_item(795, 733, "-I%D");
 create_option_info(796,0xfffffffLL,0LL,"--include-barrier",((void *)0));
 create_implies_item(796, 732, "-I-");
 create_option_info(797,0xfffffffLL,0LL,"--include",((void *)0));
 create_implies_item(797, 218, "-include %s");
 create_option_info(798,0xfffffffLL,0LL,"--imacros",((void *)0));
 create_implies_item(798, 219, "-imacros %s");
 create_option_info(799,0xfffffffLL,0LL,"--help","print list of possible options");
 create_option_info(800,0xfffffffLL,0LL,"--force-link",((void *)0));
 create_implies_item(800, 2, "-u %s");
 create_option_info(801,0xfffffffLL,0LL,"--extra-warnings",((void *)0));
 create_implies_item(801, 678, "-W");
 create_option_info(802,0xfffffffLL,0LL,"--dependencies",((void *)0));
 create_implies_item(802, 718, "-M");
 create_option_info(803,0xfffffffLL,0LL,"--define-macro",((void *)0));
 create_implies_item(803, 745, "-D%s");
 create_option_info(804,0xfffffffLL,0LL,"--debug",((void *)0));
 create_implies_item(804, 250, "-g");
 create_option_info(805,0xfffffffLL,0LL,"--compile",((void *)0));
 create_implies_item(805, 501, "-c");
 create_option_info(806,0xfffffffLL,0LL,"--comments",((void *)0));
 create_implies_item(806, 748, "-C");
 create_option_info(807,0xfffffffLL,0LL,"--assert",((void *)0));
 create_implies_item(807, 749, "-A%s");
 create_option_info(808,0xfffffffLL,0LL,"--assemble",((void *)0));
 create_implies_item(808, 688, "-S");
 create_option_info(809,0xfffffffLL,0LL,"--ansi",((void *)0));
 create_implies_item(809, 515, "-ansi");
 create_option_info(810,0xfffffffLL,0LL,"--all-warnings",((void *)0));
 create_implies_item(810, 672, "-Wall");
 create_option_info(811,0xfffffffLL,0LL,"--",((void *)0));
 create_option_info(812,0xfffffffLL,0LL,"-###","Like -v, only nothing is run and args are quoted");
 create_implies_item(812, 812, "-###");
 create_option_info(813,0xfffffffLL,0xff0LL,"-",((void *)0));
}
# 391 "../../driver/options.c" 2
