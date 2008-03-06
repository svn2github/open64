# 1 "../../driver/get_options.c"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/driver//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../driver/get_options.c"
# 40 "../../driver/get_options.c"
# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
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
# 27 "/usr/include/string.h" 2 3 4






# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 214 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef unsigned int size_t;
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

# 41 "../../driver/get_options.c" 2
# 1 "/usr/include/ctype.h" 1 3 4
# 28 "/usr/include/ctype.h" 3 4
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

# 42 "../../driver/get_options.c" 2
# 1 "/usr/include/malloc.h" 1 3 4
# 24 "/usr/include/malloc.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 152 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
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



# 43 "../../driver/get_options.c" 2
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

# 44 "../../driver/get_options.c" 2
# 1 "/usr/include/getopt.h" 1 3 4
# 59 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 73 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 106 "/usr/include/getopt.h" 3 4
struct option
{
  const char *name;


  int has_arg;
  int *flag;
  int val;
};
# 152 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__));





extern int getopt_long (int ___argc, char *const *___argv,
   const char *__shortopts,
          const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__));
extern int getopt_long_only (int ___argc, char *const *___argv,
        const char *__shortopts,
               const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__));
# 45 "../../driver/get_options.c" 2
# 1 "../../driver/string_utils.h" 1
# 43 "../../driver/string_utils.h"
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
# 46 "../../driver/get_options.c" 2
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
# 47 "../../driver/get_options.c" 2
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
# 48 "../../driver/get_options.c" 2
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
# 49 "../../driver/get_options.c" 2
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
# 50 "../../driver/get_options.c" 2
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
# 51 "../../driver/get_options.c" 2

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
# 53 "../../driver/get_options.c" 2
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
# 54 "../../driver/get_options.c" 2

char *option_name;
# 64 "../../driver/get_options.c"
char *optargs = ((void *)0);
int optargd = 0;
static int optindex = 1;
# 77 "../../driver/get_options.c"
extern int getsubopt(char **, char *const *, char **);



static void
get_next_char (char **argv, int *argi)
{
 if ((argv[*argi][optindex+1] == '\0')) {
  (*argi)++; optindex = 1;;
 } else {
  optindex++;
 }
}


static void
end_option (char **argv, int *argi, int length)

{
 optindex = length-1;
}




static char *
get_optarg (char **argv, int *argi)
{
 if ((argv[*argi][optindex+1] == '\0')) {
  (*argi)++;
  optindex = 0;
 } else {
  optindex++;
 }
 return &argv[*argi][optindex];
}

static char *null_string = "";


static char *
next_string (char **argv, int *argi)
{
 if ((argv[*argi][optindex+1] == '\0')) {
  if (argv[*argi+1] == ((void *)0))
   return null_string;
  else
   return argv[*argi+1];
 } else {
  return &argv[*argi][optindex+1];
 }
}


static char *
next_string_after (char *prefix, char **argv, int *argi)
{

 size_t new_optindex = strlen(prefix);
 if (argv[*argi][new_optindex] == '\0') {
  if (argv[*argi+1] == ((void *)0))
   return null_string;
  else
   return argv[*argi+1];
 } else {
  return &argv[*argi][new_optindex];
 }
}

static boolean
is_decimal (char *s)
{
 if (((*__ctype_b_loc ())[(int) ((*s))] & (unsigned short int) _ISdigit)) return 1;
 else return 0;
}


int
add_string_option (int flag, char *arg)
{



 char *s = get_option_name(flag);
 if (arg == ((void *)0) || (*arg == '-' && s[strlen(s)-1] != ',')) {
  parse_error(get_option_name(flag), "no argument given for option");
  return flag;
 }
 return add_derived_option(flag, arg);
}


int
add_string_option_or_dash (int flag, char *arg)
{



 char *s = get_option_name(flag);
 if (arg == ((void *)0) ||
     (*arg == '-' &&
      arg[1] != '\0' &&
      s[strlen(s)-1] != ',')) {
  parse_error(get_option_name(flag), "no argument given for option");
  return flag;
 }
 return add_derived_option(flag, arg);
}




int
add_any_string_option (int flag, char *arg)
{

 char *s = get_option_name(flag);
 if (arg == ((void *)0)) {
  parse_error(get_option_name(flag), "no argument given for option");
  return flag;
 }
 return add_derived_option(flag, arg);
}



void
check_for_driver_controls (int argc, char *argv[])
{
        int i;
 char *s;
 for (i = 1; i < argc; i++) {
                if (strncmp(argv[i], "-woff", 5) == 0) {
   s = next_string_after("-woff",argv,&i);
   if (strcmp(s, "options") == 0) {
                                print_warnings = 0;
   } else if (strcmp(s, "all") == 0) {
                                print_warnings = 0;
                        }
  }
  else if (strcmp(argv[i], "-fullwarn") == 0) {
   fullwarn = 1;
  }
  else if (strcmp(argv[i], "-v") == 0) {
   fullwarn = 1;
                }
  else if (strcmp(argv[i], "-fbgen") == 0) {
   Gen_feedback = 1;
                }
  else if (strcmp(argv[i], "-fbuse") == 0) {
   Use_feedback = 1;
                }
  else if (strcmp(argv[i], "-E") == 0) {
   last_phase = P_any_cpp;
                }
  else if (strcmp(argv[i], "-ignore_suffix") == 0) {
   ignore_suffix = 1;
                }
  else if (strcmp(argv[i], "-i32") == 0) {
   abi = ABI_I32;
                }
  else if (strcmp(argv[i], "-i64") == 0) {
   abi = ABI_I64;
                }
  else if (strcmp(argv[i], "-ia32") == 0) {
   abi = ABI_IA32;
                }
        }
}






static int
parse_u_option (char **argv, int *argi)
{
 if (invoked_lang == L_f77 || invoked_lang == L_f90) {
  int flag;
         (*argi)++; optindex = 1;;
  flag = add_new_option("-u");
  add_phase_for_option(flag, P_f_fe);
  return flag;
 } else {
                optargs = get_optarg(argv, argi);
                (*argi)++; optindex = 1;;
                return add_string_option(2,optargs);
 }
}





static int
parse_U_option (char **argv, int *argi)
{
 if ((invoked_lang == L_f77 || invoked_lang == L_f90)
  && (argv[*argi][optindex+1] == '\0'))
 {

  int flag;
         (*argi)++; optindex = 1;;
  flag = add_new_option("-U");
  add_phase_for_option(flag, P_f_fe);
  return flag;
 } else {

                optargs = get_optarg(argv, argi);
                (*argi)++; optindex = 1;;
                return add_string_option(684,optargs);
 }
}





static int
parse_C_option (char **argv, int *argi)
{
   if ((argv[*argi][optindex+1] == '\0')) {
      if (invoked_lang == L_f77 || invoked_lang == L_f90)
 {

    int flag;
    (*argi)++; optindex = 1;;
    flag = add_new_option("-DEBUG:subscript_check");
    add_phase_for_option(flag, P_f_fe);
    add_phase_for_option(flag, P_f90_fe);
    return flag;
 } else {

    int flag;
    (*argi)++; optindex = 1;;
    flag = add_new_option("-C");
    add_phase_for_option(flag, P_any_cpp);
    return flag;
 }
   } else {
      (*argi)++; optindex = 1;;
      return 0;
   }
}



static int
parse_R_option (char **argv, int *argi)
{
 if ((invoked_lang == L_f77 || invoked_lang == L_f90)
  && !(argv[*argi][optindex+1] == '\0'))
 {

  int flag;
  optargs = get_optarg(argv, argi);
         (*argi)++; optindex = 1;;
  flag = add_new_option(optargs);
  add_phase_for_option(flag, P_ratfor);
  return flag;
 } else {
  parse_error(option_name, "no argument given for option");
         (*argi)++; optindex = 1;;
  return 0;
 }
}


static int
parse_e_option (char **argv, int *argi)
{

  optargs = argv[*argi];
  (*argi)++; optindex = 1;;
  return add_string_option(644, optargs);
}



static int
parse_Xlinker_option (char **argv, int *argi)
{
 if (!strcmp(argv[*argi], "-Xlinker"))
 {

  int flag;
  (*argi)++; optindex = 1;;
  warning("%s is no longer supported, use %s instead",
   option_name, "-Wl,");
  if (argv[*argi] == ((void *)0)) {
    parse_error(option_name, "no argument given for option");
    return add_new_option(option_name);
  }
  flag = add_derived_option(523, argv[*argi]);
  add_phase_for_option(flag, P_any_ld);
  (*argi)++; optindex = 1;;
  return flag;
 } else {
         (*argi)++; optindex = 1;;
  return 0;
 }
}


static boolean middle_of_multi_option = 0;


static void
end_multi_option (char **argv, int *argi, char *p)
{
 if (*p == '\0') {
  middle_of_multi_option = 0;
         (void) get_optarg(argv, argi);
         (*argi)++; optindex = 1;;
 } else {
  middle_of_multi_option = 1;
  optargs = p+1;
 }
}

static int
parse_multi_option (char **argv, int *argi)
{
 int flag;
 char *p, *q;
 buffer_t buf;
 if (! middle_of_multi_option) {
         optargs = next_string(argv,argi);
  for (p = optargs; *p != '\0' && *p != ','; p++)
   ;
  if (*p == '\0') {
   parse_error(option_name, "bad syntax for option");
   end_multi_option(argv, argi, p);
   return 0;
  }
  p++;
 } else {
  p = optargs;
 }
 if (*p == '\0') {

  parse_error(option_name, "bad syntax for option");
  end_multi_option(argv, argi, p);
  return 0;
 }

 q = buf;
 while (*p != '\0' && *p != ',') {
  if (*p == '\\' && *(p+1) == ',') {
   *q = ',';
   p++;
  } else {
   *q = *p;
  }
  p++;
  q++;
 }
 *q = '\0';
 flag = add_new_option(buf);
 end_multi_option(argv, argi, p);
 return flag;
}




static int
parse_W_option (char **argv, int *argi)
{
 int flag;
 phases_t phase;
 char *start = next_string(argv,argi);
 if ( strchr(start, ',') == ((void *)0) || *start == '-') {
  get_next_char(argv,argi);
  return 679;
 }
 flag = parse_multi_option (argv, argi);

 for (; *start != '\0' && *start != ','; start++) {
  phase = get_phase(*start);
  if (phase == P_NONE) {
   parse_error(option_name, "bad phase for -W option");
  }
  add_phase_for_option(flag, phase);
 }


 if (auto_parallelize && phase == P_any_optfe) {
  warning("-WK,<options> is ignored with new -pfa/-pca");
 }




 set_internal_option ( flag );

 return flag;
}
# 541 "../../driver/get_options.c"
# 1 "./get_option.i" 1



extern int
get_option(int *argi, char *argv[])
{

optargd = 0;
switch (argv[*argi][optindex]) {
case 'z':
 if (strcmp(argv[*argi],"-zerouv") == 0) {
  (*argi)++; optindex = 1;;
  return 30;

 }
 break;
case 'y':
 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(31,optargs);

 break;
case 'x':
 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option_or_dash(32,optargs);

 break;
case 'w':
 if ((strncmp(argv[*argi],"-woff",5) == 0)
 && strcmp(next_string_after("-woff",argv,argi),"options") == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 33;

 }
 if ((strncmp(argv[*argi],"-woff",5) == 0)
 && strcmp(next_string_after("-woff",argv,argi),"all") == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 34;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-woff",5) == 0) {
  end_option(argv, argi, 5);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(35,optargs);

 }
 }
 if (strcmp(argv[*argi],"-w66") == 0) {
  (*argi)++; optindex = 1;;
  return 36;

 }
 if (strcmp(argv[*argi],"-w3") == 0) {
  (*argi)++; optindex = 1;;
  return 37;

 }
 if (strcmp(argv[*argi],"-w2") == 0) {
  (*argi)++; optindex = 1;;
  return 38;

 }
 get_next_char(argv, argi);
 return 39;

 break;
case 'v':
 if (strcmp(argv[*argi],"-vms_stdin") == 0) {
  (*argi)++; optindex = 1;;
  return 40;

 }
 if (strcmp(argv[*argi],"-vms_library") == 0) {
  (*argi)++; optindex = 1;;
  return 41;

 }
 if (strcmp(argv[*argi],"-vms_endfile") == 0) {
  (*argi)++; optindex = 1;;
  return 42;

 }
 if (strcmp(argv[*argi],"-vms_cc") == 0) {
  (*argi)++; optindex = 1;;
  return 43;

 }
 if (strcmp(argv[*argi],"-vms") == 0) {
  (*argi)++; optindex = 1;;
  return 44;

 }
 if (strcmp(argv[*argi],"-version") == 0) {
  (*argi)++; optindex = 1;;
  return 45;

 }
 if (strcmp(argv[*argi],"-varargs") == 0) {
  (*argi)++; optindex = 1;;
  return 46;

 }
 get_next_char(argv, argi);
 return 47;

 break;
case 'u':
 if (strcmp(argv[*argi],"-usegfe") == 0) {
  (*argi)++; optindex = 1;;
  return 48;

 }
 if (strcmp(argv[*argi],"-usefpidx") == 0) {
  (*argi)++; optindex = 1;;
  return 49;

 }
 if (strcmp(argv[*argi],"-usef90") == 0) {
  (*argi)++; optindex = 1;;
  return 50;

 }
 if (strcmp(argv[*argi],"-useas") == 0) {
  (*argi)++; optindex = 1;;
  return 51;

 }
 if (strcmp(argv[*argi],"-use_readwrite_const") == 0) {
  (*argi)++; optindex = 1;;
  return 52;

 }
 if (strcmp(argv[*argi],"-use_readonly_const") == 0) {
  (*argi)++; optindex = 1;;
  return 53;

 }
 if (strcmp(argv[*argi],"-undef") == 0) {
  (*argi)++; optindex = 1;;
  return 54;

 }
  return parse_u_option(argv, argi);

 break;
case 't':
 if (strcmp(argv[*argi],"-trigraphs") == 0) {
  (*argi)++; optindex = 1;;
  return 56;

 }
 if (strcmp(argv[*argi],"-trapuv") == 0) {
  (*argi)++; optindex = 1;;
  return 57;

 }
 if (strcmp(argv[*argi],"-traditional-cpp") == 0) {
  (*argi)++; optindex = 1;;
  return 58;

 }
 if (strcmp(argv[*argi],"-traditional") == 0) {
  (*argi)++; optindex = 1;;
  return 59;

 }
 break;
case 's':
 if (strcmp(argv[*argi],"-syntax-only") == 0) {
  (*argi)++; optindex = 1;;
  return 60;

 }
 if (strcmp(argv[*argi],"-symbolic") == 0) {
  (*argi)++; optindex = 1;;
  return 61;

 }
 if (strcmp(argv[*argi],"-subverbose") == 0) {
  (*argi)++; optindex = 1;;
  return 62;

 }
 if (strcmp(argv[*argi],"-stdinc") == 0) {
  (*argi)++; optindex = 1;;
  return 63;

 }
 if (strcmp(argv[*argi],"-std=iso9899:199x") == 0) {
  (*argi)++; optindex = 1;;
  return 64;

 }
 if (strcmp(argv[*argi],"-std=iso9899:1999") == 0) {
  (*argi)++; optindex = 1;;
  return 65;

 }
 if (strcmp(argv[*argi],"-std=iso9899:199409") == 0) {
  (*argi)++; optindex = 1;;
  return 66;

 }
 if (strcmp(argv[*argi],"-std=iso9899:1990") == 0) {
  (*argi)++; optindex = 1;;
  return 67;

 }
 if (strcmp(argv[*argi],"-std=gnu9x") == 0) {
  (*argi)++; optindex = 1;;
  return 68;

 }
 if (strcmp(argv[*argi],"-std=gnu99") == 0) {
  (*argi)++; optindex = 1;;
  return 69;

 }
 if (strcmp(argv[*argi],"-std=gnu89") == 0) {
  (*argi)++; optindex = 1;;
  return 70;

 }
 if (strcmp(argv[*argi],"-std=gnu++98") == 0) {
  (*argi)++; optindex = 1;;
  return 71;

 }
 if (strcmp(argv[*argi],"-std=c9x") == 0) {
  (*argi)++; optindex = 1;;
  return 72;

 }
 if (strcmp(argv[*argi],"-std=c99") == 0) {
  (*argi)++; optindex = 1;;
  return 73;

 }
 if (strcmp(argv[*argi],"-std=c89") == 0) {
  (*argi)++; optindex = 1;;
  return 74;

 }
 if (strcmp(argv[*argi],"-std=c++98") == 0) {
  (*argi)++; optindex = 1;;
  return 75;

 }
 if (strcmp(argv[*argi],"-static_threadprivate") == 0) {
  (*argi)++; optindex = 1;;
  return 76;

 }
 if (strcmp(argv[*argi],"-static-threadprivate") == 0) {
  (*argi)++; optindex = 1;;
  return 76;

 }
 if (strcmp(argv[*argi],"-static-libgcc") == 0) {
  (*argi)++; optindex = 1;;
  return 78;

 }
 if (strcmp(argv[*argi],"-static-data") == 0) {
  (*argi)++; optindex = 1;;
  return 79;

 }
 if (strcmp(argv[*argi],"-static") == 0) {
  (*argi)++; optindex = 1;;
  return 80;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-specs=",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(81,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-soname",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(82,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-sl2_lut=",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(83,optargs);

 }
 if (strcmp(argv[*argi],"-showt") == 0) {
  (*argi)++; optindex = 1;;
  return 84;

 }
 if (strcmp(argv[*argi],"-showd") == 0) {
  (*argi)++; optindex = 1;;
  return 85;

 }
 if (strcmp(argv[*argi],"-show1") == 0) {
  (*argi)++; optindex = 1;;
  return 86;

 }
 if (strcmp(argv[*argi],"-show0") == 0) {
  (*argi)++; optindex = 1;;
  return 87;

 }
 if (strcmp(argv[*argi],"-show-defaults") == 0) {
  (*argi)++; optindex = 1;;
  return 88;

 }
 if (strcmp(argv[*argi],"-show") == 0) {
  (*argi)++; optindex = 1;;
  return 89;

 }
 if (strcmp(argv[*argi],"-shared-libgcc") == 0) {
  (*argi)++; optindex = 1;;
  return 90;

 }
 if (strcmp(argv[*argi],"-shared") == 0) {
  (*argi)++; optindex = 1;;
  return 91;

 }
 if (strcmp(argv[*argi],"-save-temps") == 0) {
  (*argi)++; optindex = 1;;
  return 92;

 }
 get_next_char(argv, argi);
 return 93;

 break;
case 'r':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-rpath",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(94,optargs);

 }
 if (strcmp(argv[*argi],"-realO") == 0) {
  (*argi)++; optindex = 1;;
  return 95;

 }
 if (strcmp(argv[*argi],"-rdynamic") == 0) {
  (*argi)++; optindex = 1;;
  return 96;

 }
 if (strcmp(argv[*argi],"-r8const") == 0) {
  (*argi)++; optindex = 1;;
  return 97;

 }
 if (strcmp(argv[*argi],"-r8") == 0) {
  (*argi)++; optindex = 1;;
  return 98;

 }
 if (strcmp(argv[*argi],"-r4") == 0) {
  (*argi)++; optindex = 1;;
  return 99;

 }
 get_next_char(argv, argi);
 return 100;

 break;
case 'q':
 if (strcmp(argv[*argi],"-qwa2") == 0) {
  (*argi)++; optindex = 1;;
  return 101;

 }
 if (strcmp(argv[*argi],"-qwa1") == 0) {
  (*argi)++; optindex = 1;;
  return 102;

 }
 break;
case 'p':
 if (strcmp(argv[*argi],"-pthread") == 0) {
  (*argi)++; optindex = 1;;
  return 103;

 }
 if (strcmp(argv[*argi],"-promp") == 0) {
  (*argi)++; optindex = 1;;
  return 104;

 }
 if (strcmp(argv[*argi],"-profile") == 0) {
  (*argi)++; optindex = 1;;
  return 105;

 }
 if (strcmp(argv[*argi],"-print-search-dirs") == 0) {
  (*argi)++; optindex = 1;;
  return 106;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-print-prog-name=",17) == 0) {
  end_option(argv, argi, 17);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(107,optargs);

 }
 if (strcmp(argv[*argi],"-print-multi-lib") == 0) {
  (*argi)++; optindex = 1;;
  return 108;

 }
 if (strcmp(argv[*argi],"-print-libgcc-file-name") == 0) {
  (*argi)++; optindex = 1;;
  return 109;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-print-file-name=",17) == 0) {
  end_option(argv, argi, 17);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(110,optargs);

 }
 if (strcmp(argv[*argi],"-prelink") == 0) {
  (*argi)++; optindex = 1;;
  return 111;

 }
 if (strcmp(argv[*argi],"-pipe") == 0) {
  (*argi)++; optindex = 1;;
  return 112;

 }
 if (strcmp(argv[*argi],"-pie") == 0) {
  (*argi)++; optindex = 1;;
  return 113;

 }
 if (strcmp(argv[*argi],"-pic1") == 0) {
  (*argi)++; optindex = 1;;
  return 114;

 }
 if (strcmp(argv[*argi],"-pg") == 0) {
  (*argi)++; optindex = 1;;
  return 115;

 }
 if (strcmp(argv[*argi],"-pfa2") == 0) {
  (*argi)++; optindex = 1;;
  return 116;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-pfa,",5) == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(117,optargs);

 }
 if ((strncmp(argv[*argi],"-pfa",4) == 0)
 && strcmp(next_string_after("-pfa",argv,argi),"list") == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 118;

 }
 if ((strncmp(argv[*argi],"-pfa",4) == 0)
 && strcmp(next_string_after("-pfa",argv,argi),"keep") == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 119;

 }
 if (strcmp(argv[*argi],"-pfa") == 0) {
  (*argi)++; optindex = 1;;
  return 120;

 }
 if (strcmp(argv[*argi],"-pedantic-errors") == 0) {
  (*argi)++; optindex = 1;;
  return 121;

 }
 if (strcmp(argv[*argi],"-pedantic") == 0) {
  (*argi)++; optindex = 1;;
  return 122;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-pca,",5) == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(123,optargs);

 }
 if ((strncmp(argv[*argi],"-pca",4) == 0)
 && strcmp(next_string_after("-pca",argv,argi),"list") == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 124;

 }
 if ((strncmp(argv[*argi],"-pca",4) == 0)
 && strcmp(next_string_after("-pca",argv,argi),"keep") == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 125;

 }
 if (strcmp(argv[*argi],"-pca") == 0) {
  (*argi)++; optindex = 1;;
  return 126;

 }
 if (strcmp(argv[*argi],"-pathcc") == 0) {
  (*argi)++; optindex = 1;;
  return 127;

 }
 if (strcmp(argv[*argi],"-pass-exit-codes") == 0) {
  (*argi)++; optindex = 1;;
  return 128;

 }
 if (strcmp(argv[*argi],"-parse") == 0) {
  (*argi)++; optindex = 1;;
  return 129;

 }
 if (strcmp(argv[*argi],"-pad_char_literals") == 0) {
  (*argi)++; optindex = 1;;
  return 130;

 }
 if (strcmp(argv[*argi],"-pad-char-literals") == 0) {
  (*argi)++; optindex = 1;;
  return 130;

 }
 get_next_char(argv, argi);
 return 132;

 break;
case 'o':
 if (strcmp(argv[*argi],"-openmp") == 0) {
  (*argi)++; optindex = 1;;
  return 133;

 }
 if (strcmp(argv[*argi],"-onetrip") == 0) {
  (*argi)++; optindex = 1;;
  return 134;

 }
 if (strcmp(argv[*argi],"-old_rl") == 0) {
  (*argi)++; optindex = 1;;
  return 135;

 }
 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option_or_dash(136,optargs);

 break;
case 'n':
 if (strcmp(argv[*argi],"-nostdlib") == 0) {
  (*argi)++; optindex = 1;;
  return 137;

 }
 if (strcmp(argv[*argi],"-nostdinc++") == 0) {
  (*argi)++; optindex = 1;;
  return 138;

 }
 if (strcmp(argv[*argi],"-nostdinc") == 0) {
  (*argi)++; optindex = 1;;
  return 139;

 }
 if (strcmp(argv[*argi],"-nostartfiles") == 0) {
  (*argi)++; optindex = 1;;
  return 140;

 }
 if (strcmp(argv[*argi],"-noinline") == 0) {
  (*argi)++; optindex = 1;;
  return 141;

 }
 if (strcmp(argv[*argi],"-noi4") == 0) {
  (*argi)++; optindex = 1;;
  return 142;

 }
 if (strcmp(argv[*argi],"-nof77") == 0) {
  (*argi)++; optindex = 1;;
  return 143;

 }
 if (strcmp(argv[*argi],"-noextend_source") == 0) {
  (*argi)++; optindex = 1;;
  return 144;

 }
 if (strcmp(argv[*argi],"-noextend-source") == 0) {
  (*argi)++; optindex = 1;;
  return 144;

 }
 if (strcmp(argv[*argi],"-noexpopt") == 0) {
  (*argi)++; optindex = 1;;
  return 146;

 }
 if (strcmp(argv[*argi],"-nodefaultlibs") == 0) {
  (*argi)++; optindex = 1;;
  return 147;

 }
 if (strcmp(argv[*argi],"-nocpp") == 0) {
  (*argi)++; optindex = 1;;
  return 148;

 }
 if (strcmp(argv[*argi],"-nobool") == 0) {
  (*argi)++; optindex = 1;;
  return 149;

 }
 if (strcmp(argv[*argi],"-noas") == 0) {
  (*argi)++; optindex = 1;;
  return 150;

 }
 if (strcmp(argv[*argi],"-no_prelink") == 0) {
  (*argi)++; optindex = 1;;
  return 151;

 }
 if (strcmp(argv[*argi],"-no-traditional") == 0) {
  (*argi)++; optindex = 1;;
  return 152;

 }
 if (strcmp(argv[*argi],"-no-prelink") == 0) {
  (*argi)++; optindex = 1;;
  return 151;

 }
 if (strcmp(argv[*argi],"-no-pathcc") == 0) {
  (*argi)++; optindex = 1;;
  return 154;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-no-intrinsic=",14) == 0) {
  end_option(argv, argi, 14);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(155,optargs);

 }
 if (strcmp(argv[*argi],"-no-gcc") == 0) {
  (*argi)++; optindex = 1;;
  return 156;

 }
 if (strcmp(argv[*argi],"-n32") == 0) {
  (*argi)++; optindex = 1;;
  return 157;

 }
 get_next_char(argv, argi);
 return 158;

 break;
case 'm':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-mx87-precision=",16) == 0) {
  end_option(argv, argi, 16);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(159,optargs);

 }
 }
 if (strcmp(argv[*argi],"-mvolatile-asm-stop") == 0) {
  (*argi)++; optindex = 1;;
  return 160;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-mtune=",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(161,optargs);

 }
 if (strcmp(argv[*argi],"-msse3") == 0) {
  (*argi)++; optindex = 1;;
  return 162;

 }
 if (strcmp(argv[*argi],"-msse2") == 0) {
  (*argi)++; optindex = 1;;
  return 163;

 }
 if (strcmp(argv[*argi],"-msse") == 0) {
  (*argi)++; optindex = 1;;
  return 164;

 }
 if (strcmp(argv[*argi],"-mspace") == 0) {
  (*argi)++; optindex = 1;;
  return 165;

 }
 if (strcmp(argv[*argi],"-msoft-float") == 0) {
  (*argi)++; optindex = 1;;
  return 166;

 }
 if (strcmp(argv[*argi],"-mplist") == 0) {
  (*argi)++; optindex = 1;;
  return 167;

 }
 if (strcmp(argv[*argi],"-mpio") == 0) {
  (*argi)++; optindex = 1;;
  return 168;

 }
 if (strcmp(argv[*argi],"-mp_use_locks") == 0) {
  (*argi)++; optindex = 1;;
  return 169;

 }
 if (strcmp(argv[*argi],"-mp_use_copy") == 0) {
  (*argi)++; optindex = 1;;
  return 170;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-mp_schedtype=",14) == 0) {
  end_option(argv, argi, 14);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(171,optargs);

 }
 if (strcmp(argv[*argi],"-mp_keep") == 0) {
  (*argi)++; optindex = 1;;
  return 172;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-mp_chunk=",10) == 0) {
  end_option(argv, argi, 10);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(173,optargs);

 }
 }
 if (strcmp(argv[*argi],"-mp") == 0) {
  (*argi)++; optindex = 1;;
  return 174;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-module",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(175,optargs);

 }
 if (strcmp(argv[*argi],"-mno-sse3") == 0) {
  (*argi)++; optindex = 1;;
  return 176;

 }
 if (strcmp(argv[*argi],"-mno-sse2") == 0) {
  (*argi)++; optindex = 1;;
  return 177;

 }
 if (strcmp(argv[*argi],"-mno-sse") == 0) {
  (*argi)++; optindex = 1;;
  return 178;

 }
 if (strcmp(argv[*argi],"-mno-soft-float") == 0) {
  (*argi)++; optindex = 1;;
  return 179;

 }
 if (strcmp(argv[*argi],"-mno-sdata") == 0) {
  (*argi)++; optindex = 1;;
  return 180;

 }
 if (strcmp(argv[*argi],"-mno-mmx") == 0) {
  (*argi)++; optindex = 1;;
  return 181;

 }
 if (strcmp(argv[*argi],"-mno-ieee-fp") == 0) {
  (*argi)++; optindex = 1;;
  return 182;

 }
 if (strcmp(argv[*argi],"-mno-3dnow") == 0) {
  (*argi)++; optindex = 1;;
  return 183;

 }
 if (strcmp(argv[*argi],"-mmmx") == 0) {
  (*argi)++; optindex = 1;;
  return 184;

 }
 if (strcmp(argv[*argi],"-mips4") == 0) {
  (*argi)++; optindex = 1;;
  return 185;

 }
 if (strcmp(argv[*argi],"-mieee-fp") == 0) {
  (*argi)++; optindex = 1;;
  return 186;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-mfixed-range=",14) == 0) {
  end_option(argv, argi, 14);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(187,optargs);

 }
 if (strcmp(argv[*argi],"-memsim") == 0) {
  (*argi)++; optindex = 1;;
  return 188;

 }
 if (strcmp(argv[*argi],"-memctr") == 0) {
  (*argi)++; optindex = 1;;
  return 189;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-mcpu=",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(190,optargs);

 }
 if (strcmp(argv[*argi],"-mconstant-gp") == 0) {
  (*argi)++; optindex = 1;;
  return 191;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-mcmodel=",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(192,optargs);

 }
 if (strcmp(argv[*argi],"-mb-step") == 0) {
  (*argi)++; optindex = 1;;
  return 193;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-march=",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(194,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-malign-loops=",14) == 0) {
  end_option(argv, argi, 14);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(195,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-malign-jumps=",14) == 0) {
  end_option(argv, argi, 14);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(196,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-malign-functions=",18) == 0) {
  end_option(argv, argi, 18);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(197,optargs);

 }
 }
 if (strcmp(argv[*argi],"-macro_expand") == 0) {
  (*argi)++; optindex = 1;;
  return 198;

 }
 if (strcmp(argv[*argi],"-macro-expand") == 0) {
  (*argi)++; optindex = 1;;
  return 198;

 }
 if (strcmp(argv[*argi],"-ma-step") == 0) {
  (*argi)++; optindex = 1;;
  return 200;

 }
 if (strcmp(argv[*argi],"-m64") == 0) {
  (*argi)++; optindex = 1;;
  return 201;

 }
 if (strcmp(argv[*argi],"-m3dnow") == 0) {
  (*argi)++; optindex = 1;;
  return 202;

 }
 if (strcmp(argv[*argi],"-m386") == 0) {
  (*argi)++; optindex = 1;;
  return 203;

 }
 if (strcmp(argv[*argi],"-m32") == 0) {
  (*argi)++; optindex = 1;;
  return 204;

 }
 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(205,optargs);

 break;
case 'l':
 if (strcmp(argv[*argi],"-ldscript") == 0) {
  (*argi)++; optindex = 1;;
  return 206;

 }
 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(207,optargs);

 break;
case 'k':
 if (strcmp(argv[*argi],"-keepdollar") == 0) {
  (*argi)++; optindex = 1;;
  return 208;

 }
 if (strcmp(argv[*argi],"-keep") == 0) {
  (*argi)++; optindex = 1;;
  return 209;

 }
 break;
case 'j':
 if (strcmp(argv[*argi],"-jalr") == 0) {
  (*argi)++; optindex = 1;;
  return 210;

 }
 break;
case 'i':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-iwithprefixbefore",18) == 0) {
  end_option(argv, argi, 18);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(211,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(211,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-iwithprefix",12) == 0) {
  end_option(argv, argi, 12);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(212,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(212,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-isystem",8) == 0) {
  end_option(argv, argi, 8);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(213,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(213,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-iprefix",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(214,optargs);

 }
 if (strcmp(argv[*argi],"-ipa") == 0) {
  (*argi)++; optindex = 1;;
  return 215;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-intrinsic=",11) == 0) {
  end_option(argv, argi, 11);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(216,optargs);

 }
 if (strcmp(argv[*argi],"-inline") == 0) {
  (*argi)++; optindex = 1;;
  return 217;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-include",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(218,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-imacros",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(219,optargs);

 }
 if (strcmp(argv[*argi],"-ignore_suffix") == 0) {
  (*argi)++; optindex = 1;;
  return 220;

 }
 if (strcmp(argv[*argi],"-ignore-suffix") == 0) {
  (*argi)++; optindex = 1;;
  return 220;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-idirafter",10) == 0) {
  end_option(argv, argi, 10);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(222,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(222,optargs);

 }
 }
 if (strcmp(argv[*argi],"-i8") == 0) {
  (*argi)++; optindex = 1;;
  return 223;

 }
 if (strcmp(argv[*argi],"-i4") == 0) {
  (*argi)++; optindex = 1;;
  return 224;

 }
 if (strcmp(argv[*argi],"-i2") == 0) {
  (*argi)++; optindex = 1;;
  return 225;

 }
 break;
case 'h':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-help:",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(226,optargs);

 }
 if (strcmp(argv[*argi],"-help") == 0) {
  (*argi)++; optindex = 1;;
  return 227;

 }
 if (strcmp(argv[*argi],"-h264lib") == 0) {
  (*argi)++; optindex = 1;;
  return 228;

 }
 break;
case 'g':
 if (strcmp(argv[*argi],"-gstabs3") == 0) {
  (*argi)++; optindex = 1;;
  return 229;

 }
 if (strcmp(argv[*argi],"-gstabs2") == 0) {
  (*argi)++; optindex = 1;;
  return 230;

 }
 if (strcmp(argv[*argi],"-gstabs1") == 0) {
  (*argi)++; optindex = 1;;
  return 231;

 }
 if (strcmp(argv[*argi],"-gstabs0") == 0) {
  (*argi)++; optindex = 1;;
  return 232;

 }
 if (strcmp(argv[*argi],"-gstabs+") == 0) {
  (*argi)++; optindex = 1;;
  return 233;

 }
 if (strcmp(argv[*argi],"-gstabs") == 0) {
  (*argi)++; optindex = 1;;
  return 234;

 }
 if (strcmp(argv[*argi],"-ggdb3") == 0) {
  (*argi)++; optindex = 1;;
  return 235;

 }
 if (strcmp(argv[*argi],"-ggdb") == 0) {
  (*argi)++; optindex = 1;;
  return 236;

 }
 if (strcmp(argv[*argi],"-gdwarf-23") == 0) {
  (*argi)++; optindex = 1;;
  return 237;

 }
 if (strcmp(argv[*argi],"-gdwarf-22") == 0) {
  (*argi)++; optindex = 1;;
  return 238;

 }
 if (strcmp(argv[*argi],"-gdwarf-21") == 0) {
  (*argi)++; optindex = 1;;
  return 239;

 }
 if (strcmp(argv[*argi],"-gdwarf-20") == 0) {
  (*argi)++; optindex = 1;;
  return 240;

 }
 if (strcmp(argv[*argi],"-gdwarf-2") == 0) {
  (*argi)++; optindex = 1;;
  return 241;

 }
 if (strcmp(argv[*argi],"-gdwarf-1+") == 0) {
  (*argi)++; optindex = 1;;
  return 242;

 }
 if (strcmp(argv[*argi],"-gdwarf-1") == 0) {
  (*argi)++; optindex = 1;;
  return 243;

 }
 if (strcmp(argv[*argi],"-gdwarf") == 0) {
  (*argi)++; optindex = 1;;
  return 244;

 }
 if (strcmp(argv[*argi],"-gcc") == 0) {
  (*argi)++; optindex = 1;;
  return 245;

 }
 if (strcmp(argv[*argi],"-g3") == 0) {
  (*argi)++; optindex = 1;;
  return 246;

 }
 if (strcmp(argv[*argi],"-g2") == 0) {
  (*argi)++; optindex = 1;;
  return 247;

 }
 if (strcmp(argv[*argi],"-g1") == 0) {
  (*argi)++; optindex = 1;;
  return 248;

 }
 if (strcmp(argv[*argi],"-g0") == 0) {
  (*argi)++; optindex = 1;;
  return 249;

 }
 get_next_char(argv, argi);
 return 250;

 break;
case 'f':
 if (strcmp(argv[*argi],"-fwritable-strings") == 0) {
  (*argi)++; optindex = 1;;
  return 251;

 }
 if (strcmp(argv[*argi],"-fweak") == 0) {
  (*argi)++; optindex = 1;;
  return 252;

 }
 if (strcmp(argv[*argi],"-fvolatile-static") == 0) {
  (*argi)++; optindex = 1;;
  return 253;

 }
 if (strcmp(argv[*argi],"-fvolatile-global") == 0) {
  (*argi)++; optindex = 1;;
  return 254;

 }
 if (strcmp(argv[*argi],"-fvolatile") == 0) {
  (*argi)++; optindex = 1;;
  return 255;

 }
 if (strcmp(argv[*argi],"-fverify-tree") == 0) {
  (*argi)++; optindex = 1;;
  return 256;

 }
 if (strcmp(argv[*argi],"-fverbose-asm") == 0) {
  (*argi)++; optindex = 1;;
  return 257;

 }
 if (strcmp(argv[*argi],"-fuse-cxa-atexit") == 0) {
  (*argi)++; optindex = 1;;
  return 258;

 }
 if (strcmp(argv[*argi],"-funwind-tables") == 0) {
  (*argi)++; optindex = 1;;
  return 259;

 }
 if (strcmp(argv[*argi],"-funsigned-char") == 0) {
  (*argi)++; optindex = 1;;
  return 260;

 }
 if (strcmp(argv[*argi],"-funsigned-bitfields") == 0) {
  (*argi)++; optindex = 1;;
  return 261;

 }
 if (strcmp(argv[*argi],"-funsafe-math-optimizations") == 0) {
  (*argi)++; optindex = 1;;
  return 262;

 }
 if (strcmp(argv[*argi],"-funroll-loops") == 0) {
  (*argi)++; optindex = 1;;
  return 263;

 }
 if (strcmp(argv[*argi],"-funroll-all-loops") == 0) {
  (*argi)++; optindex = 1;;
  return 264;

 }
 if (strcmp(argv[*argi],"-funderscoring") == 0) {
  (*argi)++; optindex = 1;;
  return 265;

 }
 if (strcmp(argv[*argi],"-fullwarn") == 0) {
  (*argi)++; optindex = 1;;
  return 266;

 }
 if (strcmp(argv[*argi],"-ftraditional") == 0) {
  (*argi)++; optindex = 1;;
  return 267;

 }
 if (strcmp(argv[*argi],"-ftpp") == 0) {
  (*argi)++; optindex = 1;;
  return 268;

 }
 if (strcmp(argv[*argi],"-fthread-jumps") == 0) {
  (*argi)++; optindex = 1;;
  return 269;

 }
 if (strcmp(argv[*argi],"-ftest-coverage") == 0) {
  (*argi)++; optindex = 1;;
  return 270;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-ftemplate-depth-",17) == 0) {
  end_option(argv, argi, 17);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(271,optargs);

 }
 }
 if (strcmp(argv[*argi],"-fstrict-aliasing") == 0) {
  (*argi)++; optindex = 1;;
  return 272;

 }
 if (strcmp(argv[*argi],"-fstrength-reduce") == 0) {
  (*argi)++; optindex = 1;;
  return 273;

 }
 if (strcmp(argv[*argi],"-fstack-check") == 0) {
  (*argi)++; optindex = 1;;
  return 274;

 }
 if (strcmp(argv[*argi],"-fssa-dce") == 0) {
  (*argi)++; optindex = 1;;
  return 275;

 }
 if (strcmp(argv[*argi],"-fssa-ccp") == 0) {
  (*argi)++; optindex = 1;;
  return 276;

 }
 if (strcmp(argv[*argi],"-fssa") == 0) {
  (*argi)++; optindex = 1;;
  return 277;

 }
 if (strcmp(argv[*argi],"-fsigned-char") == 0) {
  (*argi)++; optindex = 1;;
  return 278;

 }
 if (strcmp(argv[*argi],"-fsigned-bitfields") == 0) {
  (*argi)++; optindex = 1;;
  return 279;

 }
 if (strcmp(argv[*argi],"-fshort-wchar") == 0) {
  (*argi)++; optindex = 1;;
  return 280;

 }
 if (strcmp(argv[*argi],"-fshort-enums") == 0) {
  (*argi)++; optindex = 1;;
  return 281;

 }
 if (strcmp(argv[*argi],"-fshort-double") == 0) {
  (*argi)++; optindex = 1;;
  return 282;

 }
 if (strcmp(argv[*argi],"-fshared-data") == 0) {
  (*argi)++; optindex = 1;;
  return 283;

 }
 if (strcmp(argv[*argi],"-fsecond-underscore") == 0) {
  (*argi)++; optindex = 1;;
  return 284;

 }
 if (strcmp(argv[*argi],"-fschedule-insns2") == 0) {
  (*argi)++; optindex = 1;;
  return 285;

 }
 if (strcmp(argv[*argi],"-fschedule-insns") == 0) {
  (*argi)++; optindex = 1;;
  return 286;

 }
 if (strcmp(argv[*argi],"-frtti") == 0) {
  (*argi)++; optindex = 1;;
  return 287;

 }
 if (strcmp(argv[*argi],"-frerun-loop-opt") == 0) {
  (*argi)++; optindex = 1;;
  return 288;

 }
 if (strcmp(argv[*argi],"-frerun-cse-after-loop") == 0) {
  (*argi)++; optindex = 1;;
  return 289;

 }
 if (strcmp(argv[*argi],"-fregmove") == 0) {
  (*argi)++; optindex = 1;;
  return 290;

 }
 if (strcmp(argv[*argi],"-freg-struct-return") == 0) {
  (*argi)++; optindex = 1;;
  return 291;

 }
 if (strcmp(argv[*argi],"-freeform") == 0) {
  (*argi)++; optindex = 1;;
  return 292;

 }
 if (strcmp(argv[*argi],"-freduce-all-givs") == 0) {
  (*argi)++; optindex = 1;;
  return 293;

 }
 if (strcmp(argv[*argi],"-framepointer") == 0) {
  (*argi)++; optindex = 1;;
  return 294;

 }
 if (strcmp(argv[*argi],"-fprofile-arcs") == 0) {
  (*argi)++; optindex = 1;;
  return 295;

 }
 if (strcmp(argv[*argi],"-fpreprocessed") == 0) {
  (*argi)++; optindex = 1;;
  return 296;

 }
 if (strcmp(argv[*argi],"-fprefix-function-name") == 0) {
  (*argi)++; optindex = 1;;
  return 297;

 }
 if (strcmp(argv[*argi],"-fpie") == 0) {
  (*argi)++; optindex = 1;;
  return 298;

 }
 if (strcmp(argv[*argi],"-fpic") == 0) {
  (*argi)++; optindex = 1;;
  return 299;

 }
 if (strcmp(argv[*argi],"-fpermissive") == 0) {
  (*argi)++; optindex = 1;;
  return 300;

 }
 if (strcmp(argv[*argi],"-fpcc-struct-return") == 0) {
  (*argi)++; optindex = 1;;
  return 301;

 }
 if (strcmp(argv[*argi],"-fpack-struct") == 0) {
  (*argi)++; optindex = 1;;
  return 302;

 }
 if (strcmp(argv[*argi],"-foptimize-sibling-calls") == 0) {
  (*argi)++; optindex = 1;;
  return 303;

 }
 if (strcmp(argv[*argi],"-foptimize-register-moves") == 0) {
  (*argi)++; optindex = 1;;
  return 304;

 }
 if (strcmp(argv[*argi],"-foptimize-register-move") == 0) {
  (*argi)++; optindex = 1;;
  return 305;

 }
 if (strcmp(argv[*argi],"-fonetrip") == 0) {
  (*argi)++; optindex = 1;;
  return 306;

 }
 if (strcmp(argv[*argi],"-fomit-frame-pointer") == 0) {
  (*argi)++; optindex = 1;;
  return 307;

 }
 if (strcmp(argv[*argi],"-fnotraditional") == 0) {
  (*argi)++; optindex = 1;;
  return 308;

 }
 if (strcmp(argv[*argi],"-fno-writable-strings") == 0) {
  (*argi)++; optindex = 1;;
  return 309;

 }
 if (strcmp(argv[*argi],"-fno-weak") == 0) {
  (*argi)++; optindex = 1;;
  return 310;

 }
 if (strcmp(argv[*argi],"-fno-use-cxa-atexit") == 0) {
  (*argi)++; optindex = 1;;
  return 311;

 }
 if (strcmp(argv[*argi],"-fno-unwind-tables") == 0) {
  (*argi)++; optindex = 1;;
  return 312;

 }
 if (strcmp(argv[*argi],"-fno-unsigned-char") == 0) {
  (*argi)++; optindex = 1;;
  return 313;

 }
 if (strcmp(argv[*argi],"-fno-unsigned-bitfields") == 0) {
  (*argi)++; optindex = 1;;
  return 314;

 }
 if (strcmp(argv[*argi],"-fno-unsafe-math-optimizations") == 0) {
  (*argi)++; optindex = 1;;
  return 315;

 }
 if (strcmp(argv[*argi],"-fno-underscoring") == 0) {
  (*argi)++; optindex = 1;;
  return 316;

 }
 if (strcmp(argv[*argi],"-fno-traditional") == 0) {
  (*argi)++; optindex = 1;;
  return 317;

 }
 if (strcmp(argv[*argi],"-fno-strict-aliasing") == 0) {
  (*argi)++; optindex = 1;;
  return 318;

 }
 if (strcmp(argv[*argi],"-fno-strength-reduce") == 0) {
  (*argi)++; optindex = 1;;
  return 319;

 }
 if (strcmp(argv[*argi],"-fno-ssa-dce") == 0) {
  (*argi)++; optindex = 1;;
  return 320;

 }
 if (strcmp(argv[*argi],"-fno-ssa-ccp") == 0) {
  (*argi)++; optindex = 1;;
  return 321;

 }
 if (strcmp(argv[*argi],"-fno-ssa") == 0) {
  (*argi)++; optindex = 1;;
  return 322;

 }
 if (strcmp(argv[*argi],"-fno-signed-char") == 0) {
  (*argi)++; optindex = 1;;
  return 323;

 }
 if (strcmp(argv[*argi],"-fno-signed-bitfields") == 0) {
  (*argi)++; optindex = 1;;
  return 324;

 }
 if (strcmp(argv[*argi],"-fno-second-underscore") == 0) {
  (*argi)++; optindex = 1;;
  return 325;

 }
 if (strcmp(argv[*argi],"-fno-rtti") == 0) {
  (*argi)++; optindex = 1;;
  return 326;

 }
 if (strcmp(argv[*argi],"-fno-preprocessed") == 0) {
  (*argi)++; optindex = 1;;
  return 327;

 }
 if (strcmp(argv[*argi],"-fno-pie") == 0) {
  (*argi)++; optindex = 1;;
  return 328;

 }
 if (strcmp(argv[*argi],"-fno-pic") == 0) {
  (*argi)++; optindex = 1;;
  return 329;

 }
 if (strcmp(argv[*argi],"-fno-permissive") == 0) {
  (*argi)++; optindex = 1;;
  return 330;

 }
 if (strcmp(argv[*argi],"-fno-peephole") == 0) {
  (*argi)++; optindex = 1;;
  return 331;

 }
 if (strcmp(argv[*argi],"-fno-optimize-sibling-calls") == 0) {
  (*argi)++; optindex = 1;;
  return 332;

 }
 if (strcmp(argv[*argi],"-fno-optimize-register-move") == 0) {
  (*argi)++; optindex = 1;;
  return 333;

 }
 if (strcmp(argv[*argi],"-fno-operator-names") == 0) {
  (*argi)++; optindex = 1;;
  return 334;

 }
 if (strcmp(argv[*argi],"-fno-omit-frame-pointer") == 0) {
  (*argi)++; optindex = 1;;
  return 335;

 }
 if (strcmp(argv[*argi],"-fno-math-errno") == 0) {
  (*argi)++; optindex = 1;;
  return 336;

 }
 if (strcmp(argv[*argi],"-fno-inline-functions") == 0) {
  (*argi)++; optindex = 1;;
  return 337;

 }
 if (strcmp(argv[*argi],"-fno-inline") == 0) {
  (*argi)++; optindex = 1;;
  return 338;

 }
 if (strcmp(argv[*argi],"-fno-implicit-templates") == 0) {
  (*argi)++; optindex = 1;;
  return 339;

 }
 if (strcmp(argv[*argi],"-fno-implicit-inline-templates") == 0) {
  (*argi)++; optindex = 1;;
  return 340;

 }
 if (strcmp(argv[*argi],"-fno-ident") == 0) {
  (*argi)++; optindex = 1;;
  return 341;

 }
 if (strcmp(argv[*argi],"-fno-hosted") == 0) {
  (*argi)++; optindex = 1;;
  return 342;

 }
 if (strcmp(argv[*argi],"-fno-handle-exceptions") == 0) {
  (*argi)++; optindex = 1;;
  return 343;

 }
 if (strcmp(argv[*argi],"-fno-gnu-linker") == 0) {
  (*argi)++; optindex = 1;;
  return 344;

 }
 if (strcmp(argv[*argi],"-fno-gnu-keywords") == 0) {
  (*argi)++; optindex = 1;;
  return 345;

 }
 if (strcmp(argv[*argi],"-fno-function-cse") == 0) {
  (*argi)++; optindex = 1;;
  return 346;

 }
 if (strcmp(argv[*argi],"-fno-freestanding") == 0) {
  (*argi)++; optindex = 1;;
  return 347;

 }
 if (strcmp(argv[*argi],"-fno-for-scope") == 0) {
  (*argi)++; optindex = 1;;
  return 348;

 }
 if (strcmp(argv[*argi],"-fno-fast-stdlib") == 0) {
  (*argi)++; optindex = 1;;
  return 349;

 }
 if (strcmp(argv[*argi],"-fno-fast-math") == 0) {
  (*argi)++; optindex = 1;;
  return 350;

 }
 if (strcmp(argv[*argi],"-fno-exceptions") == 0) {
  (*argi)++; optindex = 1;;
  return 351;

 }
 if (strcmp(argv[*argi],"-fno-directives") == 0) {
  (*argi)++; optindex = 1;;
  return 352;

 }
 if (strcmp(argv[*argi],"-fno-defer-pop") == 0) {
  (*argi)++; optindex = 1;;
  return 353;

 }
 if (strcmp(argv[*argi],"-fno-default-inline") == 0) {
  (*argi)++; optindex = 1;;
  return 354;

 }
 if (strcmp(argv[*argi],"-fno-common") == 0) {
  (*argi)++; optindex = 1;;
  return 355;

 }
 if (strcmp(argv[*argi],"-fno-check-new") == 0) {
  (*argi)++; optindex = 1;;
  return 356;

 }
 if (strcmp(argv[*argi],"-fno-builtin") == 0) {
  (*argi)++; optindex = 1;;
  return 357;

 }
 if (strcmp(argv[*argi],"-fno-asm") == 0) {
  (*argi)++; optindex = 1;;
  return 358;

 }
 if (strcmp(argv[*argi],"-fno-PIE") == 0) {
  (*argi)++; optindex = 1;;
  return 359;

 }
 if (strcmp(argv[*argi],"-fno-PIC") == 0) {
  (*argi)++; optindex = 1;;
  return 360;

 }
 if (strcmp(argv[*argi],"-fms-extensions") == 0) {
  (*argi)++; optindex = 1;;
  return 361;

 }
 if (strcmp(argv[*argi],"-fmove-all-movables") == 0) {
  (*argi)++; optindex = 1;;
  return 362;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fmessage-length=",17) == 0) {
  end_option(argv, argi, 17);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(363,optargs);

 }
 }
 if (strcmp(argv[*argi],"-fmath-errno") == 0) {
  (*argi)++; optindex = 1;;
  return 364;

 }
 if (strcmp(argv[*argi],"-flist") == 0) {
  (*argi)++; optindex = 1;;
  return 365;

 }
 if (strcmp(argv[*argi],"-fleading-underscore") == 0) {
  (*argi)++; optindex = 1;;
  return 366;

 }
 if (strcmp(argv[*argi],"-flang-isoc9x") == 0) {
  (*argi)++; optindex = 1;;
  return 367;

 }
 if (strcmp(argv[*argi],"-fkeep-inline-functions") == 0) {
  (*argi)++; optindex = 1;;
  return 368;

 }
 if (strcmp(argv[*argi],"-fixedform") == 0) {
  (*argi)++; optindex = 1;;
  return 369;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-finline-limit=",15) == 0) {
  end_option(argv, argi, 15);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(370,optargs);

 }
 }
 if (strcmp(argv[*argi],"-finline-functions") == 0) {
  (*argi)++; optindex = 1;;
  return 371;

 }
 if (strcmp(argv[*argi],"-finline") == 0) {
  (*argi)++; optindex = 1;;
  return 372;

 }
 if (strcmp(argv[*argi],"-finhibit-size-directive") == 0) {
  (*argi)++; optindex = 1;;
  return 373;

 }
 if (strcmp(argv[*argi],"-fimplicit-templates") == 0) {
  (*argi)++; optindex = 1;;
  return 374;

 }
 if (strcmp(argv[*argi],"-fimplicit-inline-templates") == 0) {
  (*argi)++; optindex = 1;;
  return 375;

 }
 if (strcmp(argv[*argi],"-fhosted") == 0) {
  (*argi)++; optindex = 1;;
  return 376;

 }
 if (strcmp(argv[*argi],"-fhandle-exceptions") == 0) {
  (*argi)++; optindex = 1;;
  return 377;

 }
 if (strcmp(argv[*argi],"-fgnu-keywords") == 0) {
  (*argi)++; optindex = 1;;
  return 378;

 }
 if (strcmp(argv[*argi],"-fgcse") == 0) {
  (*argi)++; optindex = 1;;
  return 379;

 }
 if (strcmp(argv[*argi],"-ffunction-sections") == 0) {
  (*argi)++; optindex = 1;;
  return 380;

 }
 if (strcmp(argv[*argi],"-ffreestanding") == 0) {
  (*argi)++; optindex = 1;;
  return 381;

 }
 if (strcmp(argv[*argi],"-ffortran-bounds-check") == 0) {
  (*argi)++; optindex = 1;;
  return 382;

 }
 if (strcmp(argv[*argi],"-fforce-mem") == 0) {
  (*argi)++; optindex = 1;;
  return 383;

 }
 if (strcmp(argv[*argi],"-fforce-addr") == 0) {
  (*argi)++; optindex = 1;;
  return 384;

 }
 if (strcmp(argv[*argi],"-ffor-scope") == 0) {
  (*argi)++; optindex = 1;;
  return 385;

 }
 if (strcmp(argv[*argi],"-ffloat-store") == 0) {
  (*argi)++; optindex = 1;;
  return 386;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-ffixed-",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(387,optargs);

 }
 if (strcmp(argv[*argi],"-ffast-stdlib") == 0) {
  (*argi)++; optindex = 1;;
  return 388;

 }
 if (strcmp(argv[*argi],"-ffast-math") == 0) {
  (*argi)++; optindex = 1;;
  return 389;

 }
 if (strcmp(argv[*argi],"-ff90") == 0) {
  (*argi)++; optindex = 1;;
  return 390;

 }
 if (strcmp(argv[*argi],"-ff77") == 0) {
  (*argi)++; optindex = 1;;
  return 391;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-ff2c-abi",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(392,optargs);

 }
 if (strcmp(argv[*argi],"-fexpensive-optimizations") == 0) {
  (*argi)++; optindex = 1;;
  return 393;

 }
 if (strcmp(argv[*argi],"-fexceptions") == 0) {
  (*argi)++; optindex = 1;;
  return 394;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-feedback",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(395,optargs);

 }
 if (strcmp(argv[*argi],"-fe") == 0) {
  (*argi)++; optindex = 1;;
  return 396;

 }
 if (strcmp(argv[*argi],"-fdirectives") == 0) {
  (*argi)++; optindex = 1;;
  return 397;

 }
 if (strcmp(argv[*argi],"-fdiagnostics-show-location=once") == 0) {
  (*argi)++; optindex = 1;;
  return 398;

 }
 if (strcmp(argv[*argi],"-fdiagnostics-show-location=every-line") == 0) {
  (*argi)++; optindex = 1;;
  return 399;

 }
 if (strcmp(argv[*argi],"-fdelayed-branch") == 0) {
  (*argi)++; optindex = 1;;
  return 400;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fdecorate",10) == 0) {
  end_option(argv, argi, 10);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(401,optargs);

 }
 if (strcmp(argv[*argi],"-fdata-sections") == 0) {
  (*argi)++; optindex = 1;;
  return 402;

 }
 if (strcmp(argv[*argi],"-fcse-skip-blocks") == 0) {
  (*argi)++; optindex = 1;;
  return 403;

 }
 if (strcmp(argv[*argi],"-fcse-follow-jumps") == 0) {
  (*argi)++; optindex = 1;;
  return 404;

 }
 if (strcmp(argv[*argi],"-fcond-mismatch") == 0) {
  (*argi)++; optindex = 1;;
  return 405;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fcoco=",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(406,optargs);

 }
 if (strcmp(argv[*argi],"-fcoco") == 0) {
  (*argi)++; optindex = 1;;
  return 407;

 }
 if (strcmp(argv[*argi],"-fcheck-new") == 0) {
  (*argi)++; optindex = 1;;
  return 408;

 }
 if (strcmp(argv[*argi],"-fcheck-memory-usage") == 0) {
  (*argi)++; optindex = 1;;
  return 409;

 }
 if (strcmp(argv[*argi],"-fcaller-saves") == 0) {
  (*argi)++; optindex = 1;;
  return 410;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fcall-used-",12) == 0) {
  end_option(argv, argi, 12);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(411,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fcall-saved-",13) == 0) {
  end_option(argv, argi, 13);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(412,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fbuse",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(413,optargs);

 }
 if (strcmp(argv[*argi],"-fbuiltin") == 0) {
  (*argi)++; optindex = 1;;
  return 414;

 }
 if (strcmp(argv[*argi],"-fbranch-probabilities") == 0) {
  (*argi)++; optindex = 1;;
  return 415;

 }
 if (strcmp(argv[*argi],"-fbgen") == 0) {
  (*argi)++; optindex = 1;;
  return 416;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fbexe",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(417,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb_xdir",8) == 0) {
  end_option(argv, argi, 8);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(418,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(418,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb_type=",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(419,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb_phase=",10) == 0) {
  end_option(argv, argi, 10);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(420,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb_opt",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(421,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb_create",10) == 0) {
  end_option(argv, argi, 10);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(422,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb_cdir",8) == 0) {
  end_option(argv, argi, 8);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(423,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(423,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb-type=",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(419,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb-phase=",10) == 0) {
  end_option(argv, argi, 10);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(420,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb-opt",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(421,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb-create",10) == 0) {
  end_option(argv, argi, 10);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(422,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fb",3) == 0) {
  end_option(argv, argi, 3);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(428,optargs);

 }
 if (strcmp(argv[*argi],"-fasm") == 0) {
  (*argi)++; optindex = 1;;
  return 429;

 }
 if (strcmp(argv[*argi],"-fargument-noalias-global") == 0) {
  (*argi)++; optindex = 1;;
  return 430;

 }
 if (strcmp(argv[*argi],"-fargument-noalias") == 0) {
  (*argi)++; optindex = 1;;
  return 431;

 }
 if (strcmp(argv[*argi],"-fargument-alias") == 0) {
  (*argi)++; optindex = 1;;
  return 432;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-fabi-version=",14) == 0) {
  end_option(argv, argi, 14);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(433,optargs);

 }
 }
 if (strcmp(argv[*argi],"-fPIE") == 0) {
  (*argi)++; optindex = 1;;
  return 434;

 }
 if (strcmp(argv[*argi],"-fPIC") == 0) {
  (*argi)++; optindex = 1;;
  return 435;

 }
 break;
case 'e':
 if (strcmp(argv[*argi],"-extend_source") == 0) {
  (*argi)++; optindex = 1;;
  return 436;

 }
 if (strcmp(argv[*argi],"-extend-source") == 0) {
  (*argi)++; optindex = 1;;
  return 436;

 }
 if (strcmp(argv[*argi],"-expand_include") == 0) {
  (*argi)++; optindex = 1;;
  return 438;

 }
  return parse_e_option(argv, argi);

 break;
case 'd':
 if (strcmp(argv[*argi],"-dz") == 0) {
  (*argi)++; optindex = 1;;
  return 440;

 }
 if (strcmp(argv[*argi],"-dx") == 0) {
  (*argi)++; optindex = 1;;
  return 441;

 }
 if (strcmp(argv[*argi],"-dw") == 0) {
  (*argi)++; optindex = 1;;
  return 442;

 }
 if (strcmp(argv[*argi],"-dv") == 0) {
  (*argi)++; optindex = 1;;
  return 443;

 }
 if (strcmp(argv[*argi],"-dumpversion") == 0) {
  (*argi)++; optindex = 1;;
  return 444;

 }
 if (strcmp(argv[*argi],"-dumpspecs") == 0) {
  (*argi)++; optindex = 1;;
  return 445;

 }
 if (strcmp(argv[*argi],"-dumpmachine") == 0) {
  (*argi)++; optindex = 1;;
  return 446;

 }
 if (strcmp(argv[*argi],"-dump_input") == 0) {
  (*argi)++; optindex = 1;;
  return 447;

 }
 if (strcmp(argv[*argi],"-dummy") == 0) {
  (*argi)++; optindex = 1;;
  return 448;

 }
 if (strcmp(argv[*argi],"-dt") == 0) {
  (*argi)++; optindex = 1;;
  return 449;

 }
 if (strcmp(argv[*argi],"-ds") == 0) {
  (*argi)++; optindex = 1;;
  return 450;

 }
 if (strcmp(argv[*argi],"-dr") == 0) {
  (*argi)++; optindex = 1;;
  return 451;

 }
 if (strcmp(argv[*argi],"-dp") == 0) {
  (*argi)++; optindex = 1;;
  return 452;

 }
 if (strcmp(argv[*argi],"-do") == 0) {
  (*argi)++; optindex = 1;;
  return 453;

 }
 if (strcmp(argv[*argi],"-dm") == 0) {
  (*argi)++; optindex = 1;;
  return 454;

 }
 if (strcmp(argv[*argi],"-dl") == 0) {
  (*argi)++; optindex = 1;;
  return 455;

 }
 if (strcmp(argv[*argi],"-dk") == 0) {
  (*argi)++; optindex = 1;;
  return 456;

 }
 if (strcmp(argv[*argi],"-dj") == 0) {
  (*argi)++; optindex = 1;;
  return 457;

 }
 if (strcmp(argv[*argi],"-di") == 0) {
  (*argi)++; optindex = 1;;
  return 458;

 }
 if (strcmp(argv[*argi],"-dh") == 0) {
  (*argi)++; optindex = 1;;
  return 459;

 }
 if (strcmp(argv[*argi],"-dg") == 0) {
  (*argi)++; optindex = 1;;
  return 460;

 }
 if (strcmp(argv[*argi],"-df") == 0) {
  (*argi)++; optindex = 1;;
  return 461;

 }
 if (strcmp(argv[*argi],"-demangle") == 0) {
  (*argi)++; optindex = 1;;
  return 462;

 }
 if (strcmp(argv[*argi],"-default64") == 0) {
  (*argi)++; optindex = 1;;
  return 463;

 }
 if (strcmp(argv[*argi],"-de") == 0) {
  (*argi)++; optindex = 1;;
  return 464;

 }
 if (strcmp(argv[*argi],"-dd") == 0) {
  (*argi)++; optindex = 1;;
  return 465;

 }
 if (strcmp(argv[*argi],"-dc") == 0) {
  (*argi)++; optindex = 1;;
  return 466;

 }
 if (strcmp(argv[*argi],"-db") == 0) {
  (*argi)++; optindex = 1;;
  return 467;

 }
 if (strcmp(argv[*argi],"-da") == 0) {
  (*argi)++; optindex = 1;;
  return 468;

 }
 if (strcmp(argv[*argi],"-d_lines") == 0) {
  (*argi)++; optindex = 1;;
  return 469;

 }
 if (strcmp(argv[*argi],"-dX") == 0) {
  (*argi)++; optindex = 1;;
  return 470;

 }
 if (strcmp(argv[*argi],"-dS") == 0) {
  (*argi)++; optindex = 1;;
  return 471;

 }
 if (strcmp(argv[*argi],"-dR") == 0) {
  (*argi)++; optindex = 1;;
  return 472;

 }
 if (strcmp(argv[*argi],"-dP") == 0) {
  (*argi)++; optindex = 1;;
  return 473;

 }
 if (strcmp(argv[*argi],"-dN") == 0) {
  (*argi)++; optindex = 1;;
  return 474;

 }
 if (strcmp(argv[*argi],"-dM") == 0) {
  (*argi)++; optindex = 1;;
  return 475;

 }
 if (strcmp(argv[*argi],"-dL") == 0) {
  (*argi)++; optindex = 1;;
  return 476;

 }
 if (strcmp(argv[*argi],"-dI") == 0) {
  (*argi)++; optindex = 1;;
  return 477;

 }
 if (strcmp(argv[*argi],"-dG") == 0) {
  (*argi)++; optindex = 1;;
  return 478;

 }
 if (strcmp(argv[*argi],"-dF") == 0) {
  (*argi)++; optindex = 1;;
  return 479;

 }
 if (strcmp(argv[*argi],"-dE") == 0) {
  (*argi)++; optindex = 1;;
  return 480;

 }
 if (strcmp(argv[*argi],"-dD") == 0) {
  (*argi)++; optindex = 1;;
  return 481;

 }
 if (strcmp(argv[*argi],"-dC") == 0) {
  (*argi)++; optindex = 1;;
  return 482;

 }
 if (strcmp(argv[*argi],"-dB") == 0) {
  (*argi)++; optindex = 1;;
  return 483;

 }
 if (strcmp(argv[*argi],"-dA") == 0) {
  (*argi)++; optindex = 1;;
  return 484;

 }
 if (strcmp(argv[*argi],"-d8") == 0) {
  (*argi)++; optindex = 1;;
  return 485;

 }
 if (strcmp(argv[*argi],"-d-lines") == 0) {
  (*argi)++; optindex = 1;;
  return 469;

 }
 break;
case 'c':
 if (strcmp(argv[*argi],"-cray_directives") == 0) {
  (*argi)++; optindex = 1;;
  return 487;

 }
 if (strcmp(argv[*argi],"-cpp") == 0) {
  (*argi)++; optindex = 1;;
  return 488;

 }
 if (strcmp(argv[*argi],"-cord") == 0) {
  (*argi)++; optindex = 1;;
  return 489;

 }
 if (strcmp(argv[*argi],"-copyright") == 0) {
  (*argi)++; optindex = 1;;
  return 490;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-convert",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(491,optargs);

 }
 if (strcmp(argv[*argi],"-compat-gcc") == 0) {
  (*argi)++; optindex = 1;;
  return 492;

 }
 if (strcmp(argv[*argi],"-col80") == 0) {
  (*argi)++; optindex = 1;;
  return 493;

 }
 if (strcmp(argv[*argi],"-col72") == 0) {
  (*argi)++; optindex = 1;;
  return 494;

 }
 if (strcmp(argv[*argi],"-col120") == 0) {
  (*argi)++; optindex = 1;;
  return 495;

 }
 if (strcmp(argv[*argi],"-clist") == 0) {
  (*argi)++; optindex = 1;;
  return 496;

 }
 if (strcmp(argv[*argi],"-cif") == 0) {
  (*argi)++; optindex = 1;;
  return 497;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-chunk=",7) == 0) {
  end_option(argv, argi, 7);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(498,optargs);

 }
 }
 if (strcmp(argv[*argi],"-chararg1") == 0) {
  (*argi)++; optindex = 1;;
  return 499;

 }
 if (strcmp(argv[*argi],"-change_const") == 0) {
  (*argi)++; optindex = 1;;
  return 500;

 }
 get_next_char(argv, argi);
 return 501;

 break;
case 'b':
 if (strcmp(argv[*argi],"-byteswapio") == 0) {
  (*argi)++; optindex = 1;;
  return 502;

 }
 if (strcmp(argv[*argi],"-bytereclen") == 0) {
  (*argi)++; optindex = 1;;
  return 503;

 }
 if (strcmp(argv[*argi],"-bblib") == 0) {
  (*argi)++; optindex = 1;;
  return 504;

 }
 if (strcmp(argv[*argi],"-backslash") == 0) {
  (*argi)++; optindex = 1;;
  return 505;

 }
 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(506,optargs);

 break;
case 'a':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-aux-info",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(507,optargs);

 }
 if (strcmp(argv[*argi],"-automatic") == 0) {
  (*argi)++; optindex = 1;;
  return 508;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-auto_use",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(509,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-auto-use",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(509,optargs);

 }
 if (strcmp(argv[*argi],"-ar") == 0) {
  (*argi)++; optindex = 1;;
  return 511;

 }
 if ((strncmp(argv[*argi],"-apo",4) == 0)
 && strcmp(next_string_after("-apo",argv,argi),"list") == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 512;

 }
 if ((strncmp(argv[*argi],"-apo",4) == 0)
 && strcmp(next_string_after("-apo",argv,argi),"keep") == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 513;

 }
 if (strcmp(argv[*argi],"-apo") == 0) {
  (*argi)++; optindex = 1;;
  return 514;

 }
 if (strcmp(argv[*argi],"-ansi") == 0) {
  (*argi)++; optindex = 1;;
  return 515;

 }
 if (strcmp(argv[*argi],"-all") == 0) {
  (*argi)++; optindex = 1;;
  return 516;

 }
 if (strcmp(argv[*argi],"-align8") == 0) {
  (*argi)++; optindex = 1;;
  return 517;

 }
 if (strcmp(argv[*argi],"-align64") == 0) {
  (*argi)++; optindex = 1;;
  return 518;

 }
 if (strcmp(argv[*argi],"-align32") == 0) {
  (*argi)++; optindex = 1;;
  return 519;

 }
 if (strcmp(argv[*argi],"-align16") == 0) {
  (*argi)++; optindex = 1;;
  return 520;

 }
 if (strcmp(argv[*argi],"-align128") == 0) {
  (*argi)++; optindex = 1;;
  return 521;

 }
 break;
case 'Y':
 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(522,optargs);

 break;
case 'X':
 if (strncmp(argv[*argi],"-Xlinker",8) == 0) {
  return parse_Xlinker_option(argv, argi);

 }
 break;
case 'W':
 if (strcmp(argv[*argi],"-Wwrite-strings") == 0) {
  (*argi)++; optindex = 1;;
  return 524;

 }
 if (strcmp(argv[*argi],"-Wunused-variable") == 0) {
  (*argi)++; optindex = 1;;
  return 525;

 }
 if (strcmp(argv[*argi],"-Wunused-value") == 0) {
  (*argi)++; optindex = 1;;
  return 526;

 }
 if (strcmp(argv[*argi],"-Wunused-parameter") == 0) {
  (*argi)++; optindex = 1;;
  return 527;

 }
 if (strcmp(argv[*argi],"-Wunused-macros") == 0) {
  (*argi)++; optindex = 1;;
  return 528;

 }
 if (strcmp(argv[*argi],"-Wunused-label") == 0) {
  (*argi)++; optindex = 1;;
  return 529;

 }
 if (strcmp(argv[*argi],"-Wunused-function") == 0) {
  (*argi)++; optindex = 1;;
  return 530;

 }
 if (strcmp(argv[*argi],"-Wunused") == 0) {
  (*argi)++; optindex = 1;;
  return 531;

 }
 if (strcmp(argv[*argi],"-Wunreachable-code") == 0) {
  (*argi)++; optindex = 1;;
  return 532;

 }
 if (strcmp(argv[*argi],"-Wunknown-pragmas") == 0) {
  (*argi)++; optindex = 1;;
  return 533;

 }
 if (strcmp(argv[*argi],"-Wuninitialized") == 0) {
  (*argi)++; optindex = 1;;
  return 534;

 }
 if (strcmp(argv[*argi],"-Wundef") == 0) {
  (*argi)++; optindex = 1;;
  return 535;

 }
 if (strcmp(argv[*argi],"-Wtrigraphs") == 0) {
  (*argi)++; optindex = 1;;
  return 536;

 }
 if (strcmp(argv[*argi],"-Wtraditional") == 0) {
  (*argi)++; optindex = 1;;
  return 537;

 }
 if (strcmp(argv[*argi],"-Wsystem-headers") == 0) {
  (*argi)++; optindex = 1;;
  return 538;

 }
 if (strcmp(argv[*argi],"-Wsynth") == 0) {
  (*argi)++; optindex = 1;;
  return 539;

 }
 if (strcmp(argv[*argi],"-Wswitch-enum") == 0) {
  (*argi)++; optindex = 1;;
  return 540;

 }
 if (strcmp(argv[*argi],"-Wswitch-default") == 0) {
  (*argi)++; optindex = 1;;
  return 541;

 }
 if (strcmp(argv[*argi],"-Wswitch") == 0) {
  (*argi)++; optindex = 1;;
  return 542;

 }
 if (strcmp(argv[*argi],"-Wstrict-prototypes") == 0) {
  (*argi)++; optindex = 1;;
  return 543;

 }
 if (strcmp(argv[*argi],"-Wstrict-aliasing") == 0) {
  (*argi)++; optindex = 1;;
  return 544;

 }
 if (strcmp(argv[*argi],"-Wsign-promo") == 0) {
  (*argi)++; optindex = 1;;
  return 545;

 }
 if (strcmp(argv[*argi],"-Wsign-compare") == 0) {
  (*argi)++; optindex = 1;;
  return 546;

 }
 if (strcmp(argv[*argi],"-Wshadow") == 0) {
  (*argi)++; optindex = 1;;
  return 547;

 }
 if (strcmp(argv[*argi],"-Wsequence-point") == 0) {
  (*argi)++; optindex = 1;;
  return 548;

 }
 if (strcmp(argv[*argi],"-Wreturn-type") == 0) {
  (*argi)++; optindex = 1;;
  return 549;

 }
 if (strcmp(argv[*argi],"-Wreorder") == 0) {
  (*argi)++; optindex = 1;;
  return 550;

 }
 if (strcmp(argv[*argi],"-Wredundant-decls") == 0) {
  (*argi)++; optindex = 1;;
  return 551;

 }
 if (strcmp(argv[*argi],"-Wpointer-arith") == 0) {
  (*argi)++; optindex = 1;;
  return 552;

 }
 if (strcmp(argv[*argi],"-Wparentheses") == 0) {
  (*argi)++; optindex = 1;;
  return 553;

 }
 if (strcmp(argv[*argi],"-Wpadded") == 0) {
  (*argi)++; optindex = 1;;
  return 554;

 }
 if (strcmp(argv[*argi],"-Wpacked") == 0) {
  (*argi)++; optindex = 1;;
  return 555;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-Wp,",4) == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(556,optargs);

 }
 if (strcmp(argv[*argi],"-Woverloaded-virtual") == 0) {
  (*argi)++; optindex = 1;;
  return 557;

 }
 if (strcmp(argv[*argi],"-Wold-style-cast") == 0) {
  (*argi)++; optindex = 1;;
  return 558;

 }
 if (strcmp(argv[*argi],"-Wnonnull") == 0) {
  (*argi)++; optindex = 1;;
  return 559;

 }
 if (strcmp(argv[*argi],"-Wnon-virtual-dtor") == 0) {
  (*argi)++; optindex = 1;;
  return 560;

 }
 if (strcmp(argv[*argi],"-Wno-write-strings") == 0) {
  (*argi)++; optindex = 1;;
  return 561;

 }
 if (strcmp(argv[*argi],"-Wno-unused-variable") == 0) {
  (*argi)++; optindex = 1;;
  return 562;

 }
 if (strcmp(argv[*argi],"-Wno-unused-value") == 0) {
  (*argi)++; optindex = 1;;
  return 563;

 }
 if (strcmp(argv[*argi],"-Wno-unused-parameter") == 0) {
  (*argi)++; optindex = 1;;
  return 564;

 }
 if (strcmp(argv[*argi],"-Wno-unused-macros") == 0) {
  (*argi)++; optindex = 1;;
  return 565;

 }
 if (strcmp(argv[*argi],"-Wno-unused-label") == 0) {
  (*argi)++; optindex = 1;;
  return 566;

 }
 if (strcmp(argv[*argi],"-Wno-unused-function") == 0) {
  (*argi)++; optindex = 1;;
  return 567;

 }
 if (strcmp(argv[*argi],"-Wno-unused") == 0) {
  (*argi)++; optindex = 1;;
  return 568;

 }
 if (strcmp(argv[*argi],"-Wno-unreachable-code") == 0) {
  (*argi)++; optindex = 1;;
  return 569;

 }
 if (strcmp(argv[*argi],"-Wno-unknown-pragmas") == 0) {
  (*argi)++; optindex = 1;;
  return 570;

 }
 if (strcmp(argv[*argi],"-Wno-uninitialized") == 0) {
  (*argi)++; optindex = 1;;
  return 571;

 }
 if (strcmp(argv[*argi],"-Wno-undef") == 0) {
  (*argi)++; optindex = 1;;
  return 572;

 }
 if (strcmp(argv[*argi],"-Wno-trigraphs") == 0) {
  (*argi)++; optindex = 1;;
  return 573;

 }
 if (strcmp(argv[*argi],"-Wno-traditional") == 0) {
  (*argi)++; optindex = 1;;
  return 574;

 }
 if (strcmp(argv[*argi],"-Wno-system-headers") == 0) {
  (*argi)++; optindex = 1;;
  return 575;

 }
 if (strcmp(argv[*argi],"-Wno-synth") == 0) {
  (*argi)++; optindex = 1;;
  return 576;

 }
 if (strcmp(argv[*argi],"-Wno-switch") == 0) {
  (*argi)++; optindex = 1;;
  return 577;

 }
 if (strcmp(argv[*argi],"-Wno-strict-prototypes") == 0) {
  (*argi)++; optindex = 1;;
  return 578;

 }
 if (strcmp(argv[*argi],"-Wno-strict-aliasing") == 0) {
  (*argi)++; optindex = 1;;
  return 579;

 }
 if (strcmp(argv[*argi],"-Wno-sign-promo") == 0) {
  (*argi)++; optindex = 1;;
  return 580;

 }
 if (strcmp(argv[*argi],"-Wno-sign-compare") == 0) {
  (*argi)++; optindex = 1;;
  return 581;

 }
 if (strcmp(argv[*argi],"-Wno-shadow") == 0) {
  (*argi)++; optindex = 1;;
  return 582;

 }
 if (strcmp(argv[*argi],"-Wno-sequence-point") == 0) {
  (*argi)++; optindex = 1;;
  return 583;

 }
 if (strcmp(argv[*argi],"-Wno-return-type") == 0) {
  (*argi)++; optindex = 1;;
  return 584;

 }
 if (strcmp(argv[*argi],"-Wno-reorder") == 0) {
  (*argi)++; optindex = 1;;
  return 585;

 }
 if (strcmp(argv[*argi],"-Wno-redundant-decls") == 0) {
  (*argi)++; optindex = 1;;
  return 586;

 }
 if (strcmp(argv[*argi],"-Wno-pointer-arith") == 0) {
  (*argi)++; optindex = 1;;
  return 587;

 }
 if (strcmp(argv[*argi],"-Wno-pmf-conversions") == 0) {
  (*argi)++; optindex = 1;;
  return 588;

 }
 if (strcmp(argv[*argi],"-Wno-parentheses") == 0) {
  (*argi)++; optindex = 1;;
  return 589;

 }
 if (strcmp(argv[*argi],"-Wno-padded") == 0) {
  (*argi)++; optindex = 1;;
  return 590;

 }
 if (strcmp(argv[*argi],"-Wno-packed") == 0) {
  (*argi)++; optindex = 1;;
  return 591;

 }
 if (strcmp(argv[*argi],"-Wno-overloaded-virtual") == 0) {
  (*argi)++; optindex = 1;;
  return 592;

 }
 if (strcmp(argv[*argi],"-Wno-old-style-cast") == 0) {
  (*argi)++; optindex = 1;;
  return 593;

 }
 if (strcmp(argv[*argi],"-Wno-non-virtual-dtor") == 0) {
  (*argi)++; optindex = 1;;
  return 594;

 }
 if (strcmp(argv[*argi],"-Wno-non-template-friend") == 0) {
  (*argi)++; optindex = 1;;
  return 595;

 }
 if (strcmp(argv[*argi],"-Wno-nested-externs") == 0) {
  (*argi)++; optindex = 1;;
  return 596;

 }
 if (strcmp(argv[*argi],"-Wno-multichar") == 0) {
  (*argi)++; optindex = 1;;
  return 597;

 }
 if (strcmp(argv[*argi],"-Wno-missing-prototypes") == 0) {
  (*argi)++; optindex = 1;;
  return 598;

 }
 if (strcmp(argv[*argi],"-Wno-missing-noreturn") == 0) {
  (*argi)++; optindex = 1;;
  return 599;

 }
 if (strcmp(argv[*argi],"-Wno-missing-format-attribute") == 0) {
  (*argi)++; optindex = 1;;
  return 600;

 }
 if (strcmp(argv[*argi],"-Wno-missing-declarations") == 0) {
  (*argi)++; optindex = 1;;
  return 601;

 }
 if (strcmp(argv[*argi],"-Wno-missing-braces") == 0) {
  (*argi)++; optindex = 1;;
  return 602;

 }
 if (strcmp(argv[*argi],"-Wno-main") == 0) {
  (*argi)++; optindex = 1;;
  return 603;

 }
 if (strcmp(argv[*argi],"-Wno-long-long") == 0) {
  (*argi)++; optindex = 1;;
  return 604;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-Wno-larger-than-",17) == 0) {
  end_option(argv, argi, 17);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(605,optargs);

 }
 }
 if (strcmp(argv[*argi],"-Wno-invalid-pch") == 0) {
  (*argi)++; optindex = 1;;
  return 606;

 }
 if (strcmp(argv[*argi],"-Wno-inline") == 0) {
  (*argi)++; optindex = 1;;
  return 607;

 }
 if (strcmp(argv[*argi],"-Wno-import") == 0) {
  (*argi)++; optindex = 1;;
  return 608;

 }
 if (strcmp(argv[*argi],"-Wno-implicit-int") == 0) {
  (*argi)++; optindex = 1;;
  return 609;

 }
 if (strcmp(argv[*argi],"-Wno-implicit-function-declaration") == 0) {
  (*argi)++; optindex = 1;;
  return 610;

 }
 if (strcmp(argv[*argi],"-Wno-implicit") == 0) {
  (*argi)++; optindex = 1;;
  return 611;

 }
 if (strcmp(argv[*argi],"-Wno-format-y2k") == 0) {
  (*argi)++; optindex = 1;;
  return 612;

 }
 if (strcmp(argv[*argi],"-Wno-format-security") == 0) {
  (*argi)++; optindex = 1;;
  return 613;

 }
 if (strcmp(argv[*argi],"-Wno-format-nonliteral") == 0) {
  (*argi)++; optindex = 1;;
  return 614;

 }
 if (strcmp(argv[*argi],"-Wno-format-extra-args") == 0) {
  (*argi)++; optindex = 1;;
  return 615;

 }
 if (strcmp(argv[*argi],"-Wno-format") == 0) {
  (*argi)++; optindex = 1;;
  return 616;

 }
 if (strcmp(argv[*argi],"-Wno-float-equal") == 0) {
  (*argi)++; optindex = 1;;
  return 617;

 }
 if (strcmp(argv[*argi],"-Wno-error") == 0) {
  (*argi)++; optindex = 1;;
  return 618;

 }
 if (strcmp(argv[*argi],"-Wno-endif-labels") == 0) {
  (*argi)++; optindex = 1;;
  return 619;

 }
 if (strcmp(argv[*argi],"-Wno-effc++") == 0) {
  (*argi)++; optindex = 1;;
  return 620;

 }
 if (strcmp(argv[*argi],"-Wno-div-by-zero") == 0) {
  (*argi)++; optindex = 1;;
  return 621;

 }
 if (strcmp(argv[*argi],"-Wno-disabled-optimization") == 0) {
  (*argi)++; optindex = 1;;
  return 622;

 }
 if (strcmp(argv[*argi],"-Wno-deprecated-declarations") == 0) {
  (*argi)++; optindex = 1;;
  return 623;

 }
 if (strcmp(argv[*argi],"-Wno-deprecated") == 0) {
  (*argi)++; optindex = 1;;
  return 624;

 }
 if (strcmp(argv[*argi],"-Wno-ctor-dtor-privacy") == 0) {
  (*argi)++; optindex = 1;;
  return 625;

 }
 if (strcmp(argv[*argi],"-Wno-conversion") == 0) {
  (*argi)++; optindex = 1;;
  return 626;

 }
 if (strcmp(argv[*argi],"-Wno-comments") == 0) {
  (*argi)++; optindex = 1;;
  return 627;

 }
 if (strcmp(argv[*argi],"-Wno-comment") == 0) {
  (*argi)++; optindex = 1;;
  return 628;

 }
 if (strcmp(argv[*argi],"-Wno-char-subscripts") == 0) {
  (*argi)++; optindex = 1;;
  return 629;

 }
 if (strcmp(argv[*argi],"-Wno-cast-qual") == 0) {
  (*argi)++; optindex = 1;;
  return 630;

 }
 if (strcmp(argv[*argi],"-Wno-cast-align") == 0) {
  (*argi)++; optindex = 1;;
  return 631;

 }
 if (strcmp(argv[*argi],"-Wno-bad-function-cast") == 0) {
  (*argi)++; optindex = 1;;
  return 632;

 }
 if (strcmp(argv[*argi],"-Wno-aggregate-return") == 0) {
  (*argi)++; optindex = 1;;
  return 633;

 }
 if (strcmp(argv[*argi],"-Wnested-externs") == 0) {
  (*argi)++; optindex = 1;;
  return 634;

 }
 if (strcmp(argv[*argi],"-Wmultichar") == 0) {
  (*argi)++; optindex = 1;;
  return 635;

 }
 if (strcmp(argv[*argi],"-Wmissing-prototypes") == 0) {
  (*argi)++; optindex = 1;;
  return 636;

 }
 if (strcmp(argv[*argi],"-Wmissing-noreturn") == 0) {
  (*argi)++; optindex = 1;;
  return 637;

 }
 if (strcmp(argv[*argi],"-Wmissing-format-attribute") == 0) {
  (*argi)++; optindex = 1;;
  return 638;

 }
 if (strcmp(argv[*argi],"-Wmissing-declarations") == 0) {
  (*argi)++; optindex = 1;;
  return 639;

 }
 if (strcmp(argv[*argi],"-Wmissing-braces") == 0) {
  (*argi)++; optindex = 1;;
  return 640;

 }
 if (strcmp(argv[*argi],"-Wmain") == 0) {
  (*argi)++; optindex = 1;;
  return 641;

 }
 if (strcmp(argv[*argi],"-Wlong-long") == 0) {
  (*argi)++; optindex = 1;;
  return 642;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-Wlarger-than-",14) == 0) {
  end_option(argv, argi, 14);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(643,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-Wl,",4) == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(644,optargs);

 }
 if (strcmp(argv[*argi],"-Winvalid-pch") == 0) {
  (*argi)++; optindex = 1;;
  return 645;

 }
 if (strcmp(argv[*argi],"-Winline") == 0) {
  (*argi)++; optindex = 1;;
  return 646;

 }
 if (strcmp(argv[*argi],"-Wimport") == 0) {
  (*argi)++; optindex = 1;;
  return 647;

 }
 if (strcmp(argv[*argi],"-Wimplicit-int") == 0) {
  (*argi)++; optindex = 1;;
  return 648;

 }
 if (strcmp(argv[*argi],"-Wimplicit-function-declaration") == 0) {
  (*argi)++; optindex = 1;;
  return 649;

 }
 if (strcmp(argv[*argi],"-Wimplicit") == 0) {
  (*argi)++; optindex = 1;;
  return 650;

 }
 if (strcmp(argv[*argi],"-Wformat=2") == 0) {
  (*argi)++; optindex = 1;;
  return 651;

 }
 if (strcmp(argv[*argi],"-Wformat-security") == 0) {
  (*argi)++; optindex = 1;;
  return 652;

 }
 if (strcmp(argv[*argi],"-Wformat-nonliteral") == 0) {
  (*argi)++; optindex = 1;;
  return 653;

 }
 if (strcmp(argv[*argi],"-Wformat") == 0) {
  (*argi)++; optindex = 1;;
  return 654;

 }
 if (strcmp(argv[*argi],"-Wfloat-equal") == 0) {
  (*argi)++; optindex = 1;;
  return 655;

 }
 if (strcmp(argv[*argi],"-Werror-implicit-function-declaration") == 0) {
  (*argi)++; optindex = 1;;
  return 656;

 }
 if (strcmp(argv[*argi],"-Werror") == 0) {
  (*argi)++; optindex = 1;;
  return 657;

 }
 if (strcmp(argv[*argi],"-Wendif-labels") == 0) {
  (*argi)++; optindex = 1;;
  return 658;

 }
 if (strcmp(argv[*argi],"-Weffc++") == 0) {
  (*argi)++; optindex = 1;;
  return 659;

 }
 if (strcmp(argv[*argi],"-Wdiv-by-zero") == 0) {
  (*argi)++; optindex = 1;;
  return 660;

 }
 if (strcmp(argv[*argi],"-Wdisabled-optimization") == 0) {
  (*argi)++; optindex = 1;;
  return 661;

 }
 if (strcmp(argv[*argi],"-Wdeprecated") == 0) {
  (*argi)++; optindex = 1;;
  return 662;

 }
 if (strcmp(argv[*argi],"-Wdeclaration-after-statement") == 0) {
  (*argi)++; optindex = 1;;
  return 663;

 }
 if (strcmp(argv[*argi],"-Wctor-dtor-privacy") == 0) {
  (*argi)++; optindex = 1;;
  return 664;

 }
 if (strcmp(argv[*argi],"-Wconversion") == 0) {
  (*argi)++; optindex = 1;;
  return 665;

 }
 if (strcmp(argv[*argi],"-Wcomments") == 0) {
  (*argi)++; optindex = 1;;
  return 666;

 }
 if (strcmp(argv[*argi],"-Wcomment") == 0) {
  (*argi)++; optindex = 1;;
  return 667;

 }
 if (strcmp(argv[*argi],"-Wchar-subscripts") == 0) {
  (*argi)++; optindex = 1;;
  return 668;

 }
 if (strcmp(argv[*argi],"-Wcast-qual") == 0) {
  (*argi)++; optindex = 1;;
  return 669;

 }
 if (strcmp(argv[*argi],"-Wcast-align") == 0) {
  (*argi)++; optindex = 1;;
  return 670;

 }
 if (strcmp(argv[*argi],"-Wbad-function-cast") == 0) {
  (*argi)++; optindex = 1;;
  return 671;

 }
 if (strcmp(argv[*argi],"-Wall") == 0) {
  (*argi)++; optindex = 1;;
  return 672;

 }
 if (strcmp(argv[*argi],"-Waggregate-return") == 0) {
  (*argi)++; optindex = 1;;
  return 673;

 }
 if (strcmp(argv[*argi],"-Wabi") == 0) {
  (*argi)++; optindex = 1;;
  return 674;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-Wa,",4) == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(675,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-WOPT:",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(676,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-WB,",4) == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(677,optargs);

 }
  return parse_W_option(argv, argi);

 get_next_char(argv, argi);
 return 679;

 break;
case 'V':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-VHO:",5) == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(680,optargs);

 }
 if (!(optindex == 1)) break;
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(681,optargs);

 }
 get_next_char(argv, argi);
 return 682;

 break;
case 'U':
  return parse_U_option(argv, argi);

 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(684,optargs);

 break;
case 'T':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-TENV:",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(685,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-TARG:",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(686,optargs);

 }
 break;
case 'S':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-SWP:",5) == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(687,optargs);

 }
 get_next_char(argv, argi);
 return 688;

 break;
case 'R':
  return parse_R_option(argv, argi);

 break;
case 'Q':
 get_next_char(argv, argi);
 return 690;

 break;
case 'P':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-PURPLE:",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(691,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-PROMP:next_id=",15) == 0) {
  end_option(argv, argi, 15);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(692,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-PROMP:",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(693,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-PHASE:",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(694,optargs);

 }
 get_next_char(argv, argi);
 return 695;

 break;
case 'O':
 if (strcmp(argv[*argi],"-Os") == 0) {
  (*argi)++; optindex = 1;;
  return 696;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-Olimit",7) == 0) {
  end_option(argv, argi, 7);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(697,optargs);

 }
 }
 if (strcmp(argv[*argi],"-Ofast") == 0) {
  (*argi)++; optindex = 1;;
  return 698;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-OPT:",5) == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(699,optargs);

 }
 if (strcmp(next_string(argv,argi), "3") == 0) {
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 700;

 }
 if (strcmp(next_string(argv,argi), "2") == 0) {
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 701;

 }
 if (strcmp(next_string(argv,argi), "1") == 0) {
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 702;

 }
 if (strcmp(next_string(argv,argi), "0") == 0) {
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return 703;

 }
 if (!(optindex == 1)) break;
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(704,optargs);

 }
 get_next_char(argv, argi);
 return 705;

 break;
case 'N':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-NC",3) == 0) {
  end_option(argv, argi, 3);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(706,optargs);

 }
 }
 break;
case 'M':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-MT",3) == 0) {
  end_option(argv, argi, 3);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(707,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-MQ",3) == 0) {
  end_option(argv, argi, 3);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(708,optargs);

 }
 if (strcmp(argv[*argi],"-MP") == 0) {
  (*argi)++; optindex = 1;;
  return 709;

 }
 if (strcmp(argv[*argi],"-MMD") == 0) {
  (*argi)++; optindex = 1;;
  return 710;

 }
 if (strcmp(argv[*argi],"-MM") == 0) {
  (*argi)++; optindex = 1;;
  return 711;

 }
 if (strcmp(argv[*argi],"-MG") == 0) {
  (*argi)++; optindex = 1;;
  return 712;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-MF",3) == 0) {
  end_option(argv, argi, 3);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(713,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-MDupdate",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(714,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-MDtarget",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(715,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-MDignore",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(716,optargs);

 }
 if (strcmp(argv[*argi],"-MD") == 0) {
  (*argi)++; optindex = 1;;
  return 717;

 }
 get_next_char(argv, argi);
 return 718;

 break;
case 'L':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-LNO:",5) == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(719,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-LMSG:",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(720,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-LIST:",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(721,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-LD_",4) == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(722,optargs);

 }
 if (strcmp(argv[*argi],"-LANG:std") == 0) {
  (*argi)++; optindex = 1;;
  return 723;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-LANG:",6) == 0) {
  end_option(argv, argi, 6);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(724,optargs);

 }
 if (!(optindex == 1)) break;
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(725,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(725,optargs);

 }
 get_next_char(argv, argi);
 return 726;

 break;
case 'I':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-IPA:",5) == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(727,optargs);

 }
 if (strcmp(argv[*argi],"-IPA") == 0) {
  (*argi)++; optindex = 1;;
  return 728;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-INTERNAL:",10) == 0) {
  end_option(argv, argi, 10);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(729,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-INLINE:",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(730,optargs);

 }
 if (strcmp(argv[*argi],"-INLINE") == 0) {
  (*argi)++; optindex = 1;;
  return 731;

 }
 if (strcmp(argv[*argi],"-I-") == 0) {
  (*argi)++; optindex = 1;;
  return 732;

 }
 if (!(optindex == 1)) break;
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(733,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(733,optargs);

 }
 break;
case 'H':
 get_next_char(argv, argi);
 return 734;

 break;
case 'G':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-Gspace",7) == 0) {
  end_option(argv, argi, 7);
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(735,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-GRA:",5) == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(736,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-GCM:",5) == 0) {
  end_option(argv, argi, 5);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(737,optargs);

 }
 if (!(optindex == 1)) break;
 if (is_decimal(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  optargd = atoi(optargs);
  (*argi)++; optindex = 1;;
  return add_string_option(738,optargs);

 }
 break;
case 'F':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-FLIST:",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(739,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-FE:",4) == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(740,optargs);

 }
 get_next_char(argv, argi);
 return 741;

 break;
case 'E':
 get_next_char(argv, argi);
 return 742;

 break;
case 'D':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-DEFAULT:",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(743,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-DEBUG:",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(744,optargs);

 }
 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(745,optargs);

 break;
case 'C':
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-CLIST:",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(746,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"-CG:",4) == 0) {
  end_option(argv, argi, 4);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(747,optargs);

 }
  return parse_C_option(argv, argi);

 break;
case 'A':
 if (!(optindex == 1)) break;
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(749,optargs);

 break;
case '6':
 if (strcmp(argv[*argi],"-66") == 0) {
  (*argi)++; optindex = 1;;
  return 750;

 }
 break;
case '1':
 get_next_char(argv, argi);
 return 751;

 break;
case '-':
 if (strcmp(argv[*argi],"--write-user-dependencies") == 0) {
  (*argi)++; optindex = 1;;
  return 752;

 }
 if (strcmp(argv[*argi],"--write-dependencies") == 0) {
  (*argi)++; optindex = 1;;
  return 753;

 }
 if (strcmp(argv[*argi],"--whole-archive") == 0) {
  (*argi)++; optindex = 1;;
  return 754;

 }
 if (strcmp(argv[*argi],"--version") == 0) {
  (*argi)++; optindex = 1;;
  return 755;

 }
 if (strcmp(argv[*argi],"--verbose") == 0) {
  (*argi)++; optindex = 1;;
  return 756;

 }
 if (strcmp(argv[*argi],"--user-dependencies") == 0) {
  (*argi)++; optindex = 1;;
  return 757;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--undefine-macro",16) == 0) {
  end_option(argv, argi, 16);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(758,optargs);

 }
 if (strcmp(argv[*argi],"--trigraphs") == 0) {
  (*argi)++; optindex = 1;;
  return 759;

 }
 if (strcmp(argv[*argi],"--traditional-cpp") == 0) {
  (*argi)++; optindex = 1;;
  return 760;

 }
 if (strcmp(argv[*argi],"--traditional") == 0) {
  (*argi)++; optindex = 1;;
  return 761;

 }
 if (strcmp(argv[*argi],"--trace-includes") == 0) {
  (*argi)++; optindex = 1;;
  return 762;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--target",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(763,optargs);

 }
 if (strcmp(argv[*argi],"--symbolic") == 0) {
  (*argi)++; optindex = 1;;
  return 764;

 }
 if (strcmp(argv[*argi],"--static") == 0) {
  (*argi)++; optindex = 1;;
  return 765;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--specs=",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(766,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--specs",7) == 0) {
  end_option(argv, argi, 7);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(767,optargs);

 }
 if (strcmp(argv[*argi],"--shared") == 0) {
  (*argi)++; optindex = 1;;
  return 768;

 }
 if (strcmp(argv[*argi],"--save-temps") == 0) {
  (*argi)++; optindex = 1;;
  return 769;

 }
 if (strcmp(argv[*argi],"--profile") == 0) {
  (*argi)++; optindex = 1;;
  return 770;

 }
 if (strcmp(argv[*argi],"--print-search-dirs") == 0) {
  (*argi)++; optindex = 1;;
  return 771;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--print-prog-name=",18) == 0) {
  end_option(argv, argi, 18);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(772,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--print-prog-name",17) == 0) {
  end_option(argv, argi, 17);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(773,optargs);

 }
 if (strcmp(argv[*argi],"--print-multi-lib") == 0) {
  (*argi)++; optindex = 1;;
  return 774;

 }
 if (strcmp(argv[*argi],"--print-missing-file-dependencies") == 0) {
  (*argi)++; optindex = 1;;
  return 775;

 }
 if (strcmp(argv[*argi],"--print-libgcc-file-name") == 0) {
  (*argi)++; optindex = 1;;
  return 776;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--print-file-name=",18) == 0) {
  end_option(argv, argi, 18);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(777,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--print-file-name",17) == 0) {
  end_option(argv, argi, 17);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(778,optargs);

 }
 if (strcmp(argv[*argi],"--preprocess") == 0) {
  (*argi)++; optindex = 1;;
  return 779;

 }
 if (strcmp(argv[*argi],"--pipe") == 0) {
  (*argi)++; optindex = 1;;
  return 780;

 }
 if (strcmp(argv[*argi],"--pedantic-errors") == 0) {
  (*argi)++; optindex = 1;;
  return 781;

 }
 if (strcmp(argv[*argi],"--pedantic") == 0) {
  (*argi)++; optindex = 1;;
  return 782;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--output",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(783,optargs);

 }
 if (strcmp(argv[*argi],"--optimize") == 0) {
  (*argi)++; optindex = 1;;
  return 784;

 }
 if (strcmp(argv[*argi],"--no-whole-archive") == 0) {
  (*argi)++; optindex = 1;;
  return 785;

 }
 if (strcmp(argv[*argi],"--no-warnings") == 0) {
  (*argi)++; optindex = 1;;
  return 786;

 }
 if (strcmp(argv[*argi],"--no-standard-libraries") == 0) {
  (*argi)++; optindex = 1;;
  return 787;

 }
 if (strcmp(argv[*argi],"--no-standard-includes") == 0) {
  (*argi)++; optindex = 1;;
  return 788;

 }
 if (strcmp(argv[*argi],"--no-line-commands") == 0) {
  (*argi)++; optindex = 1;;
  return 789;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--library-directory",19) == 0) {
  end_option(argv, argi, 19);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(790,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(790,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--include-with-prefix-before",28) == 0) {
  end_option(argv, argi, 28);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(791,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(791,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--include-with-prefix",21) == 0) {
  end_option(argv, argi, 21);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(792,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(792,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--include-prefix",16) == 0) {
  end_option(argv, argi, 16);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(793,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--include-directory-after",25) == 0) {
  end_option(argv, argi, 25);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(794,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(794,optargs);

 }
 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--include-directory",19) == 0) {
  end_option(argv, argi, 19);
 if (want_directory(next_string(argv,argi))) {
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(795,optargs);

 } else if (!(argv[*argi][optindex+1] == '\0')) {
  if (fullwarn) {
   warning("%s does not refer to a valid directory", option_name);
  }
  optargs = get_optarg(argv,argi);
  (*argi)++; optindex = 1;;
  return add_any_string_option(795,optargs);

 }
 }
 if (strcmp(argv[*argi],"--include-barrier") == 0) {
  (*argi)++; optindex = 1;;
  return 796;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--include",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(797,optargs);

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--imacros",9) == 0) {
  end_option(argv, argi, 9);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(798,optargs);

 }
 if (strcmp(argv[*argi],"--help") == 0) {
  (*argi)++; optindex = 1;;
  return 799;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--force-link",12) == 0) {
  end_option(argv, argi, 12);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(800,optargs);

 }
 if (strcmp(argv[*argi],"--extra-warnings") == 0) {
  (*argi)++; optindex = 1;;
  return 801;

 }
 if (strcmp(argv[*argi],"--dependencies") == 0) {
  (*argi)++; optindex = 1;;
  return 802;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--define-macro",14) == 0) {
  end_option(argv, argi, 14);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(803,optargs);

 }
 if (strcmp(argv[*argi],"--debug") == 0) {
  (*argi)++; optindex = 1;;
  return 804;

 }
 if (strcmp(argv[*argi],"--compile") == 0) {
  (*argi)++; optindex = 1;;
  return 805;

 }
 if (strcmp(argv[*argi],"--comments") == 0) {
  (*argi)++; optindex = 1;;
  return 806;

 }
 if (!(optindex == 1)) break;
 if (strncmp(argv[*argi],"--assert",8) == 0) {
  end_option(argv, argi, 8);
  optargs = get_optarg(argv, argi);
  (*argi)++; optindex = 1;;
  return add_string_option(807,optargs);

 }
 if (strcmp(argv[*argi],"--assemble") == 0) {
  (*argi)++; optindex = 1;;
  return 808;

 }
 if (strcmp(argv[*argi],"--ansi") == 0) {
  (*argi)++; optindex = 1;;
  return 809;

 }
 if (strcmp(argv[*argi],"--all-warnings") == 0) {
  (*argi)++; optindex = 1;;
  return 810;

 }
 get_next_char(argv, argi);
 return 811;

 break;
case '#':
 if (strcmp(argv[*argi],"-###") == 0) {
  (*argi)++; optindex = 1;;
  return 812;

 }
 break;
case '\0':
 if (strcmp(argv[*argi],"-") == 0) {
  (*argi)++; optindex = 1;;
  return 813;

 }
 break;
}
optargs = &argv[*argi][optindex];
(*argi)++; optindex = 1;;
return 0;
}

extern int
get_real_option_if_aliased(int flag)
{
  switch (flag) {
 case 109: {
  optargs = "libgcc.a";
  return add_string_option(110,optargs);
  }
 case 114: {
  optargs = "CPIC";
  return add_string_option(685,optargs);
  }
 case 160: {
  optargs = "volatile_asm_stop=on";
  return add_string_option(747,optargs);
  }
 case 164: return 164;
 case 184: return 184;
 case 205: return 205;
 case 210: {
  optargs = "force_jalr";
  return add_string_option(686,optargs);
  }
 case 752: return 710;
 case 753: return 717;
 case 755: return 45;
 case 757: return 711;
 case 758: return 684;
 case 759: return 56;
 case 760: return 58;
 case 761: return 59;
 case 763: return 506;
 case 764: return 61;
 case 766: return 81;
 case 767: return 81;
 case 768: return 91;
 case 769: return 92;
 case 771: return 106;
 case 772: return 107;
 case 773: return 107;
 case 774: return 108;
 case 775: return 712;
 case 776: {
  optargs = "libgcc.a";
  return add_string_option(110,optargs);
  }
 case 777: return 110;
 case 778: return 110;
 case 780: return 112;
 case 781: return 121;
 case 782: return 122;
 case 787: return 137;
 case 788: return 139;
 case 790: return 725;
 case 791: return 211;
 case 792: return 212;
 case 793: return 214;
 case 794: return 222;
 case 795: return 733;
 case 796: return 732;
 case 797: return 218;
 case 798: return 219;
 case 800: return 2;
 case 803: return 745;
 case 807: return 749;
 case 809: return 515;
 case 810: return 672;
 default: return flag;
  }
}
# 542 "../../driver/get_options.c" 2
