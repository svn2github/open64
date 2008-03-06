# 1 "../../driver/main.c"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/driver//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../driver/main.c"
# 40 "../../driver/main.c"
static char *rcs_id = "$Source: /depot/CVSROOT/javi/src/sw/cmplr/driver/main.c,v $ $Revision: 1.1 $";

# 1 "/usr/include/ctype.h" 1 3 4
# 27 "/usr/include/ctype.h" 3 4
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
# 28 "/usr/include/ctype.h" 2 3 4
# 1 "/usr/include/bits/types.h" 1 3 4
# 28 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/types.h" 2 3 4


# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 214 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef unsigned int size_t;
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
# 29 "/usr/include/ctype.h" 2 3 4


# 41 "/usr/include/ctype.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 38 "/usr/include/endian.h" 2 3 4
# 42 "/usr/include/ctype.h" 2 3 4






enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
# 81 "/usr/include/ctype.h" 3 4
extern __const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__const));
extern __const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__const));
extern __const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__const));
# 96 "/usr/include/ctype.h" 3 4






extern int isalnum (int) __attribute__ ((__nothrow__));
extern int isalpha (int) __attribute__ ((__nothrow__));
extern int iscntrl (int) __attribute__ ((__nothrow__));
extern int isdigit (int) __attribute__ ((__nothrow__));
extern int islower (int) __attribute__ ((__nothrow__));
extern int isgraph (int) __attribute__ ((__nothrow__));
extern int isprint (int) __attribute__ ((__nothrow__));
extern int ispunct (int) __attribute__ ((__nothrow__));
extern int isspace (int) __attribute__ ((__nothrow__));
extern int isupper (int) __attribute__ ((__nothrow__));
extern int isxdigit (int) __attribute__ ((__nothrow__));



extern int tolower (int __c) __attribute__ ((__nothrow__));


extern int toupper (int __c) __attribute__ ((__nothrow__));








extern int isblank (int) __attribute__ ((__nothrow__));






extern int isctype (int __c, int __mask) __attribute__ ((__nothrow__));






extern int isascii (int __c) __attribute__ ((__nothrow__));



extern int toascii (int __c) __attribute__ ((__nothrow__));



extern int _toupper (int) __attribute__ ((__nothrow__));
extern int _tolower (int) __attribute__ ((__nothrow__));
# 233 "/usr/include/ctype.h" 3 4
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
# 234 "/usr/include/ctype.h" 2 3 4
# 247 "/usr/include/ctype.h" 3 4
extern int isalnum_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int isalpha_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int iscntrl_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int isdigit_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int islower_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int isgraph_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int isprint_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int ispunct_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int isspace_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int isupper_l (int, __locale_t) __attribute__ ((__nothrow__));
extern int isxdigit_l (int, __locale_t) __attribute__ ((__nothrow__));

extern int isblank_l (int, __locale_t) __attribute__ ((__nothrow__));



extern int __tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__));
extern int tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__));


extern int __toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__));
extern int toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__));
# 323 "/usr/include/ctype.h" 3 4

# 43 "../../driver/main.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 30 "/usr/include/stdio.h" 3 4




# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 35 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4


typedef struct _IO_FILE FILE;





# 62 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 72 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 32 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 14 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 326 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int wchar_t;
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

# 44 "../../driver/main.c" 2
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
# 220 "/usr/include/sys/types.h" 3 4
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



# 439 "/usr/include/stdlib.h" 2 3 4






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

# 45 "../../driver/main.c" 2
# 1 "/usr/include/strings.h" 1 3 4
# 29 "/usr/include/strings.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 30 "/usr/include/strings.h" 2 3 4




extern int bcmp (__const void *__s1, __const void *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__));


extern void bcopy (__const void *__src, void *__dest, size_t __n) __attribute__ ((__nothrow__));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__));



extern int ffs (int __i) __attribute__ ((__nothrow__)) __attribute__ ((const));


extern char *index (__const char *__s, int __c) __attribute__ ((__nothrow__)) __attribute__ ((__pure__));


extern char *rindex (__const char *__s, int __c) __attribute__ ((__nothrow__)) __attribute__ ((__pure__));


extern int strcasecmp (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__));


extern int strncasecmp (__const char *__s1, __const char *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__));


# 46 "../../driver/main.c" 2
# 1 "../include/stamp.h" 1
# 47 "../../driver/main.c" 2
# 1 "../include/cmplrs/rcodes.h" 1
# 48 "../../driver/main.c" 2

# 1 "/usr/include/sys/stat.h" 1 3 4
# 37 "/usr/include/sys/stat.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 38 "/usr/include/sys/stat.h" 2 3 4
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







# 50 "../../driver/main.c" 2
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
# 51 "../../driver/main.c" 2
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



# 52 "../../driver/main.c" 2



# 1 "../../common/com/lib_phase_dir.h" 1
# 56 "../../driver/main.c" 2

# 1 "../../driver/string_utils.h" 1
# 44 "../../driver/string_utils.h"
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

# 121 "/usr/include/string.h" 3 4
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
# 1 "../../driver/basic.h" 1
# 44 "../../driver/basic.h"
typedef int boolean;


typedef char buffer_t[512];
# 46 "../../driver/string_utils.h" 2


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
# 58 "../../driver/main.c" 2
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
# 59 "../../driver/main.c" 2
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
# 60 "../../driver/main.c" 2
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
# 61 "../../driver/main.c" 2
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
# 62 "../../driver/main.c" 2
# 1 "../../driver/get_options.h" 1
# 42 "../../driver/get_options.h"
extern char *option_name;

extern char *optargs;
extern int optargd;


extern int add_string_option (int flag, char *arg);
extern int add_string_option_or_dash (int flag, char *arg);


extern int get_option(int *argi, char *argv[]);


extern int get_real_option_if_aliased (int flag);


extern void check_for_driver_controls (int argc, char *argv[]);

extern string_list_t *feedback_files;


void set_explicit_lang(const char *flag, const char *lang);
# 63 "../../driver/main.c" 2

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
# 65 "../../driver/main.c" 2
# 1 "../../driver/phases.h" 1
# 42 "../../driver/phases.h"
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
# 66 "../../driver/main.c" 2
# 1 "../../driver/file_utils.h" 1
# 43 "../../driver/file_utils.h"
extern char *drop_path (char *s);


extern char *directory_path (char *s);


extern boolean file_exists (char *path);


extern boolean is_executable (char *path);


extern boolean is_directory (char *path);


extern boolean want_directory (char *path);


extern boolean directory_is_writable (char *path);


extern char *get_cwd (void);


extern void file_utils_set_program_name(char *name);


extern char *get_executable_dir (void);


extern void dump_file_to_stdout (char *filename);
# 67 "../../driver/main.c" 2
# 1 "../../driver/file_names.h" 1
# 43 "../../driver/file_names.h"
extern boolean keep_flag;

extern string_list_t *error_list;

extern string_list_t *count_files;


extern char *get_object_file (char *src);


extern char *construct_name (char *src, char *suffix);


extern char *create_temp_file_name (char *suffix);

extern char *construct_given_name (char *src, char *suffix, boolean keep);



extern void mark_saved_object_for_cleanup(void);


extern char *construct_file_with_extension (char *src, char *ext);


extern void init_temp_files (void);


extern void init_crash_reporting (void);


extern void init_count_files (void );


extern void cleanup (void);


extern void mark_for_cleanup (char *file);


extern void cleanup_temp_objects ();
# 68 "../../driver/main.c" 2
# 1 "../../driver/run.h" 1
# 46 "../../driver/run.h"
extern int show_version;
extern boolean show_copyright;
extern boolean dump_version;
extern boolean show_flag;
extern boolean execute_flag;
extern boolean time_flag;
extern boolean run_m4;
extern boolean prelink_flag;
extern boolean quiet_flag;
extern boolean show_search_path;
extern boolean show_defaults;

extern const char compiler_version[];


extern void run_phase (phases_t, char *, string_list_t *);



extern void run_simple_program (char *name, char **argv, char *output);


extern void handler (int sig);


extern void catch_signals (void);


extern void do_exit (int code)
     __attribute__ ((noreturn));



extern const char *get_gcc_version (int *, int);
# 69 "../../driver/main.c" 2
# 1 "../../driver/objects.h" 1
# 42 "../../driver/objects.h"
extern void init_objects (void);


extern void init_crt_paths (void);
extern void init_stdc_plus_plus_path( void );






extern boolean is_object_option (int flag);


extern void add_object (int flag, char *arg);

extern void add_ar_objects (char *arg);


extern void add_library_dir (char *path);


extern string_list_t *get_library_dirs (void);


extern void append_objects_to_list (string_list_t *list);
extern void append_libraries_to_list (string_list_t *list);
extern void append_cxx_prelinker_objects_to_list (string_list_t *list);
extern void append_ar_objects_to_list (string_list_t *list);

extern void dump_objects (void);


extern void add_library_options (void);


extern int prof_lib_exists (const char *lib);


extern void add_library (string_list_t *list, const char *lib);


extern char *find_crt_path (char *crtname);

boolean is_maybe_linker_option (int flag);
void add_maybe_linker_option (int flag);
void finalize_maybe_linker_options (boolean is_linker);
# 70 "../../driver/main.c" 2




char *help_pattern = ((void *)0);
boolean debug = 0;
boolean nostdinc = 1;
boolean show_version = 0;




boolean show_copyright = 0;
boolean dump_version = 0;
boolean show_search_path;
boolean show_defaults;


extern void check_for_combos(void);
extern boolean is_replacement_combo(int);
extern void toggle_implicits(void);
extern void set_defaults(void);
extern void add_special_options (void);

static void check_old_CC_options (char *name);
static void check_makedepend_flags (void);
static void mark_used (void);
static void dump_args (char *msg);
static void print_help_msg (void);
static void print_defaults (int argc, char *argv[]);
static void append_default_options (int *argc, char *(*argv[]));
static void append_psc_env_flags (int *argc, char *(*argv[]), char *env_var);
static void print_search_path (void);

static string_list_t *files;
static string_list_t *file_suffixes;
string_list_t *feedback_files;
boolean parsing_default_options = 0;
boolean drop_option;


char lut_app_name[128];






const char compiler_version[] = "7.40";
static void set_executable_dir (void);
static void prescan_options (int argc, char *argv[]);

static void no_args(void)
{
 fprintf(stderr, "%s: no input files\n", program_name);
 fprintf(stderr, "For general help: %s --help\n", program_name);
 fprintf(stderr, "To search help: %s -help:<string>\n", program_name);
 do_exit(2);
}

int
main (int argc, char *argv[])
{
 int i;
 int flag;
 int base_flag;
 string_item_t *p, *q;
 int num_files = 0;
 char *unrecognized_dashdash_option_name = ((void *)0);
# 149 "../../driver/main.c"
 save_command_line(argc, argv);
 program_name = drop_path(argv[0]);
 orig_program_name = string_copy(argv[0]);
        file_utils_set_program_name(orig_program_name);
 files = init_string_list();
 file_suffixes = init_string_list();
 feedback_files = init_string_list ();
 init_options();
 init_temp_files();
 init_crash_reporting();
 init_count_files();
 init_option_seen();
 init_objects();
 init_error_list();

 invoked_lang = get_named_language(program_name);
# 176 "../../driver/main.c"
 check_for_driver_controls (argc, argv);
# 194 "../../driver/main.c"
 dump_outfile_to_stdout = 0;


 init_phase_names();

 init_phase_info();







 remove_phase_for_option(749,P_f90_cpp);
 remove_phase_for_option(742,P_f90_cpp);





 prescan_options(argc, argv);

 i = 1;
 while (i < argc) {
  option_name = argv[i];




  if (!strcmp(option_name, "-default_options")) {
    parsing_default_options = 1;
    i++;
    continue;
  }

  set_current_arg_pos(i);
  if (argv[i][0] == '-' && !dashdash_flag) {
    flag = get_option(&i, argv);
    if (flag == 0) {
      if (print_warnings) {







        if (!strncmp(option_name, "--", 2)) {
   unrecognized_dashdash_option_name =
     option_name;
        }
        else if (option_was_seen(492) ||
          getenv("PSC_STRICT_GCC")) {

   warning("unknown flag: %s", option_name);
        } else {

   parse_error(option_name, "unknown flag");
        }
      }
    }
    else {


      option_name = get_option_name(flag);
    }

    flag = get_real_option_if_aliased (flag);


    if (is_derived_option (flag)) {
      base_flag = get_derived_parent(flag);

      base_flag = get_real_option_if_aliased (base_flag);
    }
    else {
      base_flag = flag;
    }

    drop_option = 0;


    opt_action(base_flag);


    if (!drop_option) {
      if (is_maybe_linker_option(base_flag)) {
        add_maybe_linker_option(base_flag);
      } else if (is_object_option(base_flag)) {

        add_object (base_flag, optargs);
        source_kind = S_o;
      } else {

        add_option_seen (flag);
      }
    }


  } else if (argv[i][0] == '+') {
    check_old_CC_options(argv[i]);
    i++;
  } else {
    source_kind = get_source_kind(argv[i]);

    if (last_phase == P_any_cpp && source_kind == S_o)
      {
        source_kind = S_c;
      }
    if (source_kind == S_o) {

      add_object (4, argv[i]);


      add_ar_objects(argv[i]);
    } else {







      char *obj_name = get_object_file(argv[i]);
      add_object (4, obj_name);
      add_ar_objects(obj_name);
      add_string(files, argv[i]);
# 332 "../../driver/main.c"
      add_string(file_suffixes,
          get_suffix_string(source_kind));
      num_files++;
    }
    cancel_saved_arg(1);
    i++;
  }
 }



 finalize_maybe_linker_options (num_files == 0);



 if (num_files > 0 &&
     unrecognized_dashdash_option_name != ((void *)0)) {
   parse_error(unrecognized_dashdash_option_name, "unknown flag");
 }


 Check_Target ();

 if (dump_version) {
     if (option_was_seen(492))
  puts("" "");
     else
  puts("" "");
 }

        if (show_version) {


            fprintf(stderr, "Open64 Compiler Suite: Version %s\n", compiler_version);
# 376 "../../driver/main.c"
        }

 if (option_was_seen(88)) {

  do_exit(0);
 }

 if (argc == 1)
 {
  no_args();
 }

 if (option_was_seen(227) || option_was_seen(799) ||
     help_pattern != ((void *)0))
 {
  print_help_msg();
 }
 if ( ! execute_flag && ! show_flag) {
  do_exit(0);
 }
 if (dump_version) {
  do_exit(0);
 }
 if (source_kind == S_NONE) {
  if (show_version) {
   do_exit(0);
  }
  if (read_stdin) {
   source_file = "-";
   if (option_was_seen(742)) {



    if (source_lang == L_NONE)

    source_lang = L_cpp;
   } else {
    source_kind = get_source_kind(source_file);
    source_lang = invoked_lang;
    char *obj_name =
      get_object_file(
        fix_name_by_lang(source_file));
    add_object (4, obj_name);
   }
  }
  else if (show_version) {
   do_exit(0);
  }
  else {
   no_args();
  }
 }




 for (i = first_option_seen(); more_option_seen(); i = next_option_seen()) {
  if (current_option_seen_later(i)) {
   set_current_option_unseen();
  } else if (flag_is_superceded(i)) {
   set_option_unseen(i);
  }
 }


 check_for_combos();

 check_for_combos();
 if ((option_was_seen(299) ||
      option_was_seen(435))
      && mem_model == M_MEDIUM) {
   error("unimplemented: code model medium not supported in PIC mode");
 }
# 468 "../../driver/main.c"
 if (debug) {
  dump_args("user flags");
 }
 if (ipa == 1)
     save_ipl_commands ();


 if (outfile != ((void *)0) && (strcmp(outfile, "-") == 0)) {

   outfile = create_temp_file_name("x");
   dump_outfile_to_stdout = 1;
 }



 if (feedback_files->head) cordflag=1;


 if (cordflag!=1) {
      last_phase=earliest_phase(P_any_ld, last_phase);
         }


 mark_used();


 toggle_implicits();


 set_defaults();

 if (num_files > 1) {
  multiple_source_files = 1;
 }

 check_makedepend_flags ();
 add_library_options();
 add_special_options();

 if (debug) {
  dump_args("with defaults");
  dump_objects();
 }
 if (has_errors()) return error_status;

 catch_signals();
 remember_last_phase = last_phase;





 if ((multiple_source_files ||
      option_was_seen(511)



      ) &&
      ((last_phase == P_any_ld) && (shared != 4)) ||
      (last_phase == P_pixie)) {

  last_phase = P_any_as;
  add_minus_c_option();
 }

 if (Use_feedback) {
    struct stat stat_buf;
    time_t fb_file_mod_time;
    time_t count_file_mod_time;
    boolean fb_file_exists = 1;

    if (fb_cdir != ((void *)0))
       warning ("-fb_cdir cannot be used with -fbuse; -fb_cdir ignored");
    save_name(&fb_file, concat_strings(drop_path(prof_file), ".x.cfb"));
    if (!(stat(fb_file, &stat_buf) != 0 && (*__errno_location ()) == 2))
  fb_file_mod_time = stat_buf.st_mtim.tv_sec;
           else
  fb_file_exists = 0;
           if (!(stat(count_files->head->name, &stat_buf) != 0 && (*__errno_location ()) == 2))
  count_file_mod_time = stat_buf.st_mtim.tv_sec;
           else {
  internal_error("%s doesn't exist", count_files->head->name);
  perror(program_name);
           }

    if (!fb_file_exists || (fb_file_mod_time <= count_file_mod_time))
        run_prof();
        }

 if (read_stdin) {
  if ( option_was_seen(742)
   || (source_lang != L_NONE && source_kind != S_o))
  {
   run_compiler(argc, argv);
  }
  else {
   error("-E or specified language required when input is from standard input");
  }
  cleanup();
  return error_status;
 }

 for (p = files->head, q=file_suffixes->head; p != ((void *)0); p = p->next, q=q->next)
 {
  source_file = p->name;
  if (multiple_source_files) {
   fprintf(stderr, "%s:\n", source_file);
  }
  if (execute_flag && !file_exists(source_file)) {
   error("file does not exist:  %s", source_file);
   continue;
  }
  source_kind = get_source_kind_from_suffix(q->name);
  source_lang = get_source_lang(source_kind);
  if (source_lang != invoked_lang
   && source_lang != L_as
   && (fullwarn || (source_lang == L_f90)) )
  {
   warning("compiler not invoked with language of source file; will compile with %s but link with %s", get_lang_name(source_lang), get_lang_name(invoked_lang));
  }
  run_compiler(argc, argv);
  if (multiple_source_files) cleanup();
 }
 if (has_errors()) {
  cleanup();
  cleanup_temp_objects();
  return error_status;
 }

 if (num_files == 0 || remember_last_phase != last_phase) {

  last_phase = remember_last_phase;
  source_file = ((void *)0);
  source_kind = S_o;
  source_lang = get_source_lang(source_kind);
# 614 "../../driver/main.c"
  if (option_was_seen(511)) {
     run_ar();
  }
  else {
      run_ld ();
  }
  if (Gen_feedback)
    run_pixie();
 }
 if (dump_outfile_to_stdout == 1)
   dump_file_to_stdout(outfile);
 cleanup();
 cleanup_temp_objects();
 return error_status;
}

static void set_executable_dir (void) {

  char *dir;
  size_t dirlen;
  char *ldir;




  dir = get_executable_dir ();
  if (dir == ((void *)0)) return;
# 653 "../../driver/main.c"
  ldir = drop_path (dir);
  if (strcmp (ldir, "bin") == 0) {
    char *basedir = directory_path (dir);





    substitute_phase_dirs ("/usr/bin", basedir, "/" "" "/bin");
    substitute_phase_dirs ("/usr/lib", basedir, "/lib/" "" "");
    substitute_phase_dirs ("/usr/lib/" "" "cc-lib",
      basedir, "/lib/" "" "");

    substitute_phase_dirs ("/usr/include", basedir, "/include");
    return;
  }


  ldir = strstr (dir, "/lib/gcc-lib");
  if (ldir != 0) {
    if (ldir[12] == '/') {

      ldir = substring_copy (dir, 0, ldir+4-dir);
      substitute_phase_dirs ("/usr/bin", dir, "");
      substitute_phase_dirs ("/usr/lib", ldir, "");




      substitute_phase_dirs ("/usr/include", dir, "/include");
    } else if (ldir[12] == '\0') {

      ldir = substring_copy (dir, 0, ldir+4-dir);
      substitute_phase_dirs ("/usr/bin", dir, "");
      substitute_phase_dirs ("/usr/lib", ldir, "");



      substitute_phase_dirs ("/usr/lib/" "" "cc-lib", dir, "");

      substitute_phase_dirs ("/usr/include", dir, "/include");
    }
    return;
  }

}

static void
check_old_CC_options (char *name)
{
 if (strcmp(name, "+I") == 0) {
  warn_no_longer_supported2(name, "-keep");
 } else if (strcmp(name, "+L") == 0) {
  warn_no_longer_supported(name);
 } else if (strcmp(name, "+d") == 0) {
  warn_no_longer_supported2(name, "-INLINE:none");
 } else if (strcmp(name, "+p") == 0 ||
            strcmp(name, "+pc") == 0 ||
            strcmp(name, "+pa") == 0) {
  warn_ignored(name);
  warning("the effect of +p is now the default (see -anach and -cfront)");
 } else if (strcmp(name, "+v") == 0) {
  warn_no_longer_supported2(name, "-show");
 } else if (strcmp(name, "+w") == 0) {
  warn_no_longer_supported2(name, "-fullwarn");
 } else if (strcmp(name, "+a0") == 0) {
  warn_no_longer_supported(name);
 } else if (strcmp(name, "+a1") == 0) {
  warn_no_longer_supported(name);
 } else {
  parse_error(name, "bad syntax");
 }
}






static void
check_makedepend_flags (void)
{
 int flag;
 if (option_was_seen(714)) {
     if (outfile != ((void *)0)) {




  flag = add_string_option(715, outfile);
  add_option_seen (flag);
     }
     if (!multiple_source_files && files->head != ((void *)0)
  && last_phase == P_any_ld)
     {


  if (outfile == ((void *)0)) {
   char *s = change_suffix(files->head->name, ((void *)0));
   s[strlen(s)-1] = '\0';
   flag = add_string_option(715, s);
   add_option_seen (flag);
  }
  flag = add_string_option(716,
   get_object_file(files->head->name) );
  add_option_seen (flag);
     }
 }
}


static void
mark_used (void)
{
  int i;
  int iflag;

  for (i = first_option(); !no_more_options(); i = next_option()) {
    if (option_was_seen(i) && !option_was_implicitly_seen(i)) {
      for (iflag = first_implied_option(i); !no_more_implied_options(i); iflag = next_implied_option(i)) {
 if (option_was_seen(iflag)) {
  continue;
 }
 add_option_implicitly_seen (iflag);
 if (is_object_option(iflag)
   && option_matches_language(i, invoked_lang) )
 {





   add_object (4, get_current_implied_name());
 }
      }
    }
  }
}

static void
print_help_msg (void)
{
 int i;
 char *msg;
 char *name;
 fprintf(stderr, "usage:  %s <options> <files>\n", program_name);
 if (help_pattern != ((void *)0))
   fprintf(stderr, "available options that contain %s:\n", help_pattern);
 else
   fprintf(stderr, "available options:\n");

 for (i = first_option(); !no_more_options(); i = next_option()) {
  msg = get_option_help(i);
  if (msg != ((void *)0)) {
      if (option_matches_language (i, invoked_lang)) {
   name = get_option_name(i);

   if (help_pattern != ((void *)0)
       && strstr(name, help_pattern) == ((void *)0)
       && strstr(msg, help_pattern) == ((void *)0))
   {
    continue;
   }
   fprintf(stderr, "\t%s:  %s\n", name, msg);
      }
  }
 }
 if (help_pattern == ((void *)0) && invoked_lang == L_cc) {
   fprintf(stderr, "The environment variable OPEN64_CC is also checked\n");
 }
 do_exit(0);
}

static void
dump_args (char *msg)
{
 int i;
 printf("dump args %s: ", msg);
 for (i = first_option_seen(); more_option_seen(); i = next_option_seen()) {
  if (i == 0) continue;




  if (is_replacement_combo(i)) {
   int iflag;
   for (iflag = first_implied_option(i); !no_more_implied_options(i); iflag = next_implied_option(i)) {
    printf(" %s", get_current_implied_name());
   }
  } else {
   printf(" %s", get_option_name(i));
  }
 }
 printf("\n");
}







void do_exit(int code)
{
 if (code != 0) {
  code = 1;
 }

 exit(code);
}

static struct explicit_lang {
 const char *name;
 source_kind_t kind;
 languages_t lang;
} explicit_langs[] = {
 { "assembler", S_s, L_as, },
 { "assembler-with-cpp", S_S, L_as, },
 { "c", S_c, L_cc, },
 { "c++", S_C, L_CC, },
 { "c++-cpp-output", S_ii, L_CC, },
 { "c++-header", S_C, L_CC, },
 { "c-header", S_c, L_cc, },
 { "cpp-output", S_i, L_cc, },
 { "f77", S_f90, L_f77, },
 { "f77-cpp-input", S_i, L_f77, },
 { "f90", S_f90, L_f90, },
 { "f90-cpp-input", S_i, L_f90, },
 { "f95", S_f90, L_f90, },
 { "f95-cpp-input", S_i, L_f90, },
 { "none", S_NONE, L_NONE, },
 { "ratfor", S_r, L_f77, },
 { ((void *)0), S_NONE, L_NONE, },
};

void set_explicit_lang(const char *flag, const char *lang)
{
 struct explicit_lang *x;

 for (x = explicit_langs; x->name != ((void *)0); x++) {
  if (strcmp(lang, x->name) == 0) {
   ignore_suffix = x->lang != S_NONE;
   source_kind = default_source_kind = x->kind;
   source_lang = x->lang;
   break;
  }
 }

 if (x->name == ((void *)0)) {
  parse_error(flag, "Unknown language");
  do_exit(2);
 }
}


static void
prescan_options (int argc, char *argv[])
{
  boolean turn_off_ipa = 0;
  char *ipa_conflict_option = ((void *)0);
  int i;

  for (i = 1; i < argc; i++) {
    if (!strcasecmp(argv[i], "-ipa") ||
 !strcmp(argv[i], "-Ofast")) {
      ipa = 1;
    } else if (!strcmp(argv[i], "-keep")) {
      keep_flag = 1;
    } else if (!strcmp(argv[i], "-save_temps")) {
      keep_flag = 1;
    } else if (!strcmp(argv[i], "-compat-gcc")) {
      compat_gcc = 1;
    } else if (!strcmp(argv[i], "-S")) {
      ipa_conflict_option = argv[i];
    } else if (!strcmp(argv[i], "-fbgen")) {
      ipa_conflict_option = argv[i];
    } else if (argv[i][0] == '-' && argv[i][1] == 'g') {
      if (!strcmp(argv[i], "-g") ||
   !strcmp(argv[i], "-g1") ||
   !strcmp(argv[i], "-g2") ||
   !strcmp(argv[i], "-g3") ||
   !strcmp(argv[i], "-gdwarf-2") ||
   !strcmp(argv[i], "-gdwarf-21") ||
   !strcmp(argv[i], "-gdwarf-22") ||
   !strcmp(argv[i], "-gdwarf-23") ||
   !strcmp(argv[i], "-ggdb") ||
   !strcmp(argv[i], "-ggdb3")) {
 ipa_conflict_option = argv[i];
      }
    }
  }




  if (ipa &&
      ipa_conflict_option != ((void *)0)) {
    char msg[200];
    for (i = 1; i < argc; i++) {
      if (!strcasecmp(argv[i], "-ipa") ||
   !strcmp(argv[i], "-Ofast")) {
 sprintf(msg, "%s %s combination not allowed, replaced with %s",
  argv[i], ipa_conflict_option, ipa_conflict_option);
 warning(msg);
 ipa = 0;
 argv[i] = "-dummy";
      }
    }
  }
}

static void
print_defaults(int argc, char *argv[])
{
  int i;
  boolean parsing_defaults;

  fprintf(stderr, "Optimization level and compilation target:\n  ");


  if (olevel == -1)
    fprintf(stderr, " -O2");
  else
    fprintf(stderr, " -O%d", olevel);


  if (target_cpu != ((void *)0))
    fprintf(stderr, " -mcpu=%s", target_cpu);
  else
    internal_error("no default target cpu");


  switch (abi) {
    case ABI_N32: fprintf(stderr, " -m32"); break;
    case ABI_64: fprintf(stderr, " -m64"); break;
    default: internal_error("unknown default ABI");
  }


  fprintf(stderr, " -msse");
  fprintf(stderr, " %s", sse2 == 1 ? "-msse2" : "-mno-sse2");
  fprintf(stderr, " %s", sse3 == 1 ? "-msse3" : "-mno-sse3");
  fprintf(stderr, " %s", m3dnow == 1 ? "-m3dnow" : "-mno-3dnow");

  fprintf(stderr, "\n");


  fprintf(stderr, "Options from compiler.defaults file:\n  ");
  parsing_defaults = 0;
  for (i = 0; i < argc; i++) {
    if (!strcmp(argv[i], "-default_options")) {
      parsing_defaults = 1;
    } else if (parsing_defaults == 1) {
      fprintf(stderr, " %s", argv[i]);
    }
  }
  fprintf(stderr, "\n");
}

static int
read_compiler_defaults(FILE *f, string_list_t *default_options_list)
{
  int count = 0;
  char *p, *string, buf[1000];
  while (fgets(buf, 999, f) != ((void *)0)) {

    string = ((void *)0);
    boolean end_of_line = 0;
    for (p = buf; ; p++) {

      if (*p == '#' || *p == '\n' || *p == '\0') {
 end_of_line = 1;
 *p = '\0';
      }
      if (*p == ' ' || *p == '\t' || *p == '\0') {

        if (string != ((void *)0)) {
   *p = '\0';
   add_string(default_options_list, string);
   count++;
   string = ((void *)0);
 }
      } else {

 if (string == ((void *)0))
   string = p;
      }

      if (end_of_line)
        break;
    }
  }
  return count;
}


static void
append_default_options (int *argc, char *(*argv[]))
{
  char *compiler_defaults_path =
  string_copy(getenv("PSC_COMPILER_DEFAULTS_PATH"));
  int default_options_count = 0;
  string_list_t *default_options_list = init_string_list();

  if (compiler_defaults_path == ((void *)0)) {
    char *exe_dir = get_executable_dir();
    asprintf(&compiler_defaults_path, "%.*s/etc",
      strlen(exe_dir) - 4, exe_dir);
  }



  while (compiler_defaults_path) {
    char *p, *path;
    path = compiler_defaults_path;
    for (p = path; ; p++) {
      if (*p == '\0') {
 compiler_defaults_path = ((void *)0);
 break;
      } else if (*p == ':') {
 *p = '\0';
 compiler_defaults_path = p + 1;
 break;
      }
    }


    FILE *f;
    char buf[1000];
    strcpy(buf, path);
    strcat(buf, "/compiler.defaults");
    if ((f = fopen(buf, "r")) != ((void *)0)) {
      default_options_count = read_compiler_defaults(f, default_options_list);
      fclose(f);
      break;
    }
  }


  {
    int new_argc = *argc + default_options_count + 1;
    char **new_argv = malloc(new_argc * sizeof(char*));
    int i, index;


    for (index = 0; index < *argc; index++) {
      new_argv[index] = (*argv)[index];
    }


    new_argv[index++] = "-default_options";


    string_item_t *p;
    for (p = default_options_list->head; p != ((void *)0); p = p->next) {
      new_argv[index++] = p->name;
    }


    *argc = new_argc;
    *argv = new_argv;
  }
}



static void
append_psc_env_flags (int *argc, char *(*argv[]), char *env_var)
{
  char * default_opt = string_copy(getenv(env_var));
  char * p, * q;
  char ** new_argv;
  int new_argc, fin = 0;

  if (default_opt) {
    new_argc = *argc;
    new_argv = (char **) calloc (*argc, sizeof (char *));
    memcpy (new_argv, *argv, *argc * sizeof (char *));
    for (p = default_opt, q = default_opt; fin == 0; p++) {
      switch (*p) {
      case '\0':
 fin = 1;
      case ' ':
 *p = '\0';
 new_argc++;
 new_argv = (char **) realloc (new_argv, new_argc * (sizeof (char *)));
 new_argv [new_argc-1] = strdup (q);
 q = p+1;
 break;
      default:
 break;
      }
    }
    *argc = new_argc;
    *argv = new_argv;
  }


  unsetenv (env_var);
}

static FILE *
read_gcc_output(char *cmdline)
{
 char *gcc_path = get_full_phase_name(P_ld);
 char *gcc_cmd = ((void *)0);
 FILE *fp = ((void *)0);

 if (asprintf(&gcc_cmd, "%s %s", gcc_path, cmdline) == -1) {
  internal_error("cannot allocate memory");
  goto bail;
 }

 if ((fp = popen(gcc_cmd, "r")) == ((void *)0)) {
  internal_error("cannot execute linker");
  fp = ((void *)0);
 }

bail:
 free(gcc_path);
 free(gcc_cmd);
 return fp;
}




static void
print_search_path ()
{
 char *exe_dir = get_executable_dir();
 string_list_t *libdirs = init_string_list();

 char *root_prefix = directory_path(get_executable_dir());
 char *our_path;
 FILE *fp;
 string_item_t *p;
 char *gcc_lib_ptr;
 int buflen;

 printf ("install: %.*s\n", strlen(exe_dir) - 4, exe_dir);
 printf ("programs: %s:%s\n", exe_dir, get_phase_dir (P_be));

 if (abi == ABI_N32) {






  asprintf(&our_path, "%s/lib/" "" "" "/32",
    root_prefix);
 } else {
  asprintf(&our_path, "%s/lib/" "" "", root_prefix);

 }


 add_string(libdirs, our_path);

 if (abi == ABI_N32) {
  add_string(libdirs, ":/lib");
  add_string(libdirs, ":/usr/lib");
 } else {
  add_string(libdirs, ":/lib64");
  add_string(libdirs, ":/usr/lib64");
 }

 if ((fp = read_gcc_output ("-print-search-dirs"))) {
  char buf[8192];
  while (fgets (buf, 8192, fp) != ((void *)0)) {
   if (strncmp (buf, "libraries", 9) == 0) {
    gcc_lib_ptr = strchr (buf, '/');

    buflen = strlen (buf);
    buf[buflen-2] = '\0';
    if (gcc_lib_ptr) {
     add_string (libdirs, concat_strings (":", gcc_lib_ptr));
    }
   }
  }
  pclose (fp);
 }

 fputs ("libraries: ", stdout);
 for (p = libdirs->head; p != ((void *)0); p = p->next) {
  fputs (p->name, stdout);
 }
 _IO_putc ('\n', stdout);

 free (our_path);
}


const char *
get_gcc_version(int *v, int nv)
{
 static char version[128];
 static int major;
 static int minor;
 static int patch;

 if (version[0] == '\0') {
  FILE *fp = read_gcc_output("-dumpversion");
  char *c;
  fread(version, 1, sizeof(version) - 1, fp);
  pclose(fp);

  version[sizeof(version) - 1] = '\0';

  if ((c = strchr(version, '\n'))) {
   *c = '\0';
  }
 }

 if (v) {
  char *l = version + strlen(version);
  char *a;
  int i;

  for (i = 0, a = version; i < nv; i++) {
   char *d;
   if (a < l && ((*__ctype_b_loc ())[(int) ((*a))] & (unsigned short int) _ISdigit)) {
    v[i] = strtol(a, &d, 10);
    a = d + 1;
   } else {
    v[i] = 0;
   }
  }
 }

 return version;
}
