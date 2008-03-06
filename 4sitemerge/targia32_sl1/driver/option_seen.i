# 1 "../../driver/option_seen.c"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/driver//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../driver/option_seen.c"
# 40 "../../driver/option_seen.c"
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



# 41 "../../driver/option_seen.c" 2
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

# 42 "../../driver/option_seen.c" 2
# 1 "../../driver/option_seen.h" 1
# 36 "../../driver/option_seen.h"
# 1 "../../driver/basic.h" 1
# 44 "../../driver/basic.h"
typedef int boolean;


typedef char buffer_t[512];
# 37 "../../driver/option_seen.h" 2






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
# 43 "../../driver/option_seen.c" 2
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
# 44 "../../driver/option_seen.c" 2
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
# 45 "../../driver/option_seen.c" 2
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
# 46 "../../driver/option_seen.c" 2
# 63 "../../driver/option_seen.c"
typedef struct int_list_rec {
 int value;
 struct int_list_rec *next;
} int_list, *int_list_p;
typedef struct linked_list_rec {
 int_list *head;
 int_list *tail;
} linked_list;
static linked_list order_options_seen;
static int_list_p *option_is_seen;

static int_list* IMPLICITLY_SEEN;


static int_list* current_seen;


void
init_option_seen (void)
{
 int i;
 option_is_seen = (int_list_p*) malloc(max_options*sizeof(int_list_p));
 for (i = 0; i < max_options; i++) {
  option_is_seen[i] = ((void *)0);
 }

 order_options_seen.head = (int_list*)malloc(sizeof(int_list));
 order_options_seen.head->value = -1;
 order_options_seen.head->next = ((void *)0);
 order_options_seen.tail = order_options_seen.head;
 IMPLICITLY_SEEN = order_options_seen.head;
 current_seen = 0;
}


void
double_max_option_seen (void)
{

 int base;
 int i;
 int_list_p *new_list = (int_list_p*) realloc ((char*)option_is_seen,
  max_options*sizeof(int_list_p));
 if (new_list == ((void *)0)) {
  internal_error("Out of memory allocating %d options_seen",
   max_options);
 }
 option_is_seen = new_list;
 base = max_options/2;

 current_seen = 0;
 for (i = base; i < max_options; i++) {
  option_is_seen[i] = ((void *)0);
 }
}


boolean
option_was_seen (int optflag)
{
 return (option_is_seen[optflag] != ((void *)0));
}


boolean
option_was_implicitly_seen (int optflag)
{
 return (option_is_seen[optflag] == IMPLICITLY_SEEN);
}


void
add_option_seen (int optflag)
{


 int_list *p;
 p = (int_list*)malloc(sizeof(int_list));
 p->value = optflag;
 p->next = ((void *)0);
 order_options_seen.tail->next = p;
 order_options_seen.tail = p;
 option_is_seen[optflag] = p;
}


void
prepend_option_seen (int optflag)
{


 int_list *p;
 p = (int_list*)malloc(sizeof(int_list));
 p->value = optflag;

 p->next = order_options_seen.head->next;
 order_options_seen.head->next = p;
 if (order_options_seen.head == order_options_seen.tail) {
  order_options_seen.tail = p;
 }
 option_is_seen[optflag] = p;
}


void
add_option_implicitly_seen (int optflag)
{


 option_is_seen[optflag] = IMPLICITLY_SEEN;
}


void
replace_option_seen (int old_optflag, int new_optflag)
{
 int_list* p = option_is_seen[old_optflag];
 option_is_seen[old_optflag] = ((void *)0);
 option_is_seen[new_optflag] = p;
 p->value = new_optflag;
}

static void
delete_order_option (int_list *old)
{
 int_list *p;

 for (p = order_options_seen.head; p != ((void *)0); p = p->next) {
  if (p->next == old) {

   p->next = old->next;



   if (p->next == ((void *)0)) {

    order_options_seen.tail = p;
   }
   return;
  }
 }
 internal_error("couldn't unset option %d", old->value);
}


void
set_option_unseen (int optflag)
{
 int_list *p;
 p = option_is_seen[optflag];
 option_is_seen[optflag] = ((void *)0);
 if (p) delete_order_option(p);
}





int
first_option_seen (void)
{
 current_seen = order_options_seen.head->next;
 if (current_seen == ((void *)0)) {
  return 0;
 } else {
  return current_seen->value;
 }
}

int
next_option_seen (void)
{
 current_seen = current_seen->next;
 if (current_seen == ((void *)0)) {
  return 0;
 } else {
  return current_seen->value;
 }
}

boolean
more_option_seen (void)
{
 return (current_seen != ((void *)0));
}



boolean
current_option_seen_later (int optflag)
{

 return (current_seen != option_is_seen[optflag]);
}



void
set_current_option_unseen (void)
{
 delete_order_option(current_seen);
}

void
dump_option_seen (void)
{
 int_list *p;
 printf("order_options_seen:\n");
 for (p = order_options_seen.head; p != ((void *)0); p = p->next) {
  printf("flag %d\n", p->value);
 }
}
