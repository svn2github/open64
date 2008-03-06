# 1 "../../driver/opt_actions.c"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/driver//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../driver/opt_actions.c"
# 37 "../../driver/opt_actions.c"
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

# 38 "../../driver/opt_actions.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 33 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 326 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int wchar_t;
# 34 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 43 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 65 "/usr/include/bits/waitstatus.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 38 "/usr/include/endian.h" 2 3 4
# 66 "/usr/include/bits/waitstatus.h" 2 3 4

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
# 32 "/usr/include/sys/types.h" 2 3 4



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

# 39 "../../driver/opt_actions.c" 2
# 1 "/usr/include/sys/utsname.h" 1 3 4
# 28 "/usr/include/sys/utsname.h" 3 4


# 1 "/usr/include/bits/utsname.h" 1 3 4
# 31 "/usr/include/sys/utsname.h" 2 3 4
# 49 "/usr/include/sys/utsname.h" 3 4
struct utsname
  {

    char sysname[65];


    char nodename[65];


    char release[65];

    char version[65];


    char machine[65];




    char domainname[65];




  };
# 82 "/usr/include/sys/utsname.h" 3 4
extern int uname (struct utsname *__name) __attribute__ ((__nothrow__));



# 40 "../../driver/opt_actions.c" 2
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
# 1 "/usr/include/getopt.h" 1 3 4
# 59 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 73 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 152 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__));
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

# 41 "../../driver/opt_actions.c" 2
# 1 "../include/cmplrs/rcodes.h" 1
# 42 "../../driver/opt_actions.c" 2
# 1 "../../driver/config_platform.h" 1
# 80 "../../driver/config_platform.h"
typedef enum {
  IP0,
  IP19,
  IP20,
  IP21,
  IP22_4K,
  IP22_5K,
  IP24,
  IP25,
  IP26,
  IP27,
  IP28,
  IP30,
  IP32_5K,
  IP32_10K,
  IP_END
} PLATFORM;


typedef enum {
  PROC_NONE = 0,
  PROC_R3K = 3,
  PROC_R4K = 4,
  PROC_R5K = 5,
  PROC_R8K = 8,
  PROC_R10K = 10,
  PROC_R12K = 12,
  PROC_ITANIUM = 20,
  PROC_SIMPLIGHT= 30
} PROCESSOR;

extern PLATFORM Platform;


typedef struct {
  PLATFORM id;
  char *name;
  char *pname;
  PROCESSOR processor;

  char *nickname;
} PLATFORM_OPTIONS;







extern PLATFORM_OPTIONS * Get_Platform_Options ( char *name );
# 43 "../../driver/opt_actions.c" 2
# 1 "../../driver/opt_actions.h" 1
# 40 "../../driver/opt_actions.h"
# 1 "../../driver/basic.h" 1
# 44 "../../driver/basic.h"
typedef int boolean;


typedef char buffer_t[512];
# 41 "../../driver/opt_actions.h" 2
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
# 44 "../../driver/opt_actions.c" 2
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
# 45 "../../driver/opt_actions.c" 2
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
# 46 "../../driver/opt_actions.c" 2
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
# 47 "../../driver/opt_actions.c" 2

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
# 49 "../../driver/opt_actions.c" 2
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
# 50 "../../driver/opt_actions.c" 2
# 1 "../../driver/file_names.h" 1
# 41 "../../driver/file_names.h"
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

# 44 "../../driver/string_utils.h" 2




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
# 42 "../../driver/file_names.h" 2

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
# 51 "../../driver/opt_actions.c" 2

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
# 53 "../../driver/opt_actions.c" 2
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
# 54 "../../driver/opt_actions.c" 2



# 1 "../../common/com/lib_phase_dir.h" 1
# 53 "../../common/com/lib_phase_dir.h"
# 1 "../include/stamp.h" 1
# 54 "../../common/com/lib_phase_dir.h" 2
# 58 "../../driver/opt_actions.c" 2

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
# 60 "../../driver/opt_actions.c" 2
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
# 61 "../../driver/opt_actions.c" 2
# 1 "../../common/com/profile_type.h" 1
# 68 "../../common/com/profile_type.h"
enum PROFILE_PHASE
{
  PROFILE_PHASE_NONE = -1,
  PROFILE_PHASE_BEFORE_VHO = 0,
  PROFILE_PHASE_IPA_CUTOFF = 0,



  PROFILE_PHASE_BEFORE_LNO = 1,
  PROFILE_PHASE_BEFORE_WOPT = 2,
  PROFILE_PHASE_BEFORE_CG = 3,
  PROFILE_PHASE_BEFORE_REGION = 4,
  PROFILE_PHASE_LAST = 5,
  PROFILE_PHASE_MAX = 2147483647
};



enum PROFILE_TYPE
{
  WHIRL_PROFILE = 1,
  CG_EDGE_PROFILE = 2,
  CG_VALUE_PROFILE = 4,
  CG_STRIDE_PROFILE = 8,
  PROFILE_TYPE_LAST = 16,
  PROFILE_TYPE_MAX = 2147483647
};
# 62 "../../driver/opt_actions.c" 2


typedef struct toggle_name_struct {
 int *address;
 char *name;
} toggle_name;

static toggle_name toggled_names[50];
static int last_toggle_index = 0;
static int inline_on_seen = 0;
int inline_t = -1;
boolean dashdash_flag = 0;
boolean read_stdin = 0;
boolean xpg_flag = 0;
int default_olevel = 2;
static int default_isa = -1;
static int default_proc = -1;
int instrumentation_invoked = -1;
int profile_type = 0;
boolean ftz_crt = 0;



int proc = -1;

static int target_supported_abi = -1;
static boolean target_supports_sse2 = 0;
static boolean target_prefers_sse3 = 0;;
extern boolean parsing_default_options;
extern boolean drop_option;

static void set_cpu(char *name, m_flag flag_type);


void set_memory_model(char *model);
static int get_platform_abi();
# 123 "../../driver/opt_actions.c"
static struct {
  PROCESSOR p;
  ISA isa;
  int opt;
} P_to_I_Map[] =
{






  { PROC_ITANIUM, ISA_IA641, 0 },
  { PROC_SIMPLIGHT, ISA_SL, 0 },
  { PROC_NONE, ISA_NONE, 0 }
};

static struct {
  char *pname;
  PROCESSOR pid;
} Proc_Map[] =
{
  { "r4000", PROC_R4K },
  { "r4k", PROC_R4K },
  { "r5000", PROC_R5K },
  { "r5k", PROC_R5K },
  { "r8000", PROC_R8K },
  { "r8k", PROC_R8K },
  { "r10000", PROC_R10K },
  { "r10k", PROC_R10K },
  { "r12000", PROC_R10K },
  { "r12k", PROC_R10K },
  { "r14000", PROC_R10K },
  { "r14k", PROC_R10K },
  { "r16000", PROC_R10K },
  { "r16k", PROC_R10K },
  { "itanium", PROC_ITANIUM },
  { "sl1", PROC_SIMPLIGHT },
  { ((void *)0), PROC_NONE }
};


int ofast = -1;
char *Ofast_Name = ((void *)0);


static void
add_toggle_name (int *obj, char *name)
{
 int i;
 for (i = 0; i < last_toggle_index; i++) {
  if (obj == toggled_names[i].address) {
   break;
  }
 }
 if (i == last_toggle_index) {
  if (last_toggle_index >= 50) {
   internal_error("too many toggle names\n");
  } else {
   last_toggle_index++;
  }
 }
 toggled_names[i].address = obj;
 toggled_names[i].name = string_copy(option_name);
}

static char *
get_toggle_name (int *obj)
{
 int i;
 for (i = 0; i < last_toggle_index; i++) {
  if (obj == toggled_names[i].address) {
   return toggled_names[i].name;
  }
 }
 internal_error("no previously toggled name?");
 return "<unknown>";
}


boolean
is_toggled (int obj)
{
 return (obj != -1);
}


void
toggle (int *obj, int value)
{


 if (parsing_default_options &&
     is_toggled(*obj)) {
   drop_option = 1;
   return;
 }

 if (*obj != -1 && *obj != value) {
  warning ("%s conflicts with %s; using latter value (%s)",
   get_toggle_name(obj), option_name, option_name);
 }
 *obj = value;
 add_toggle_name(obj, option_name);
}
# 240 "../../driver/opt_actions.c"
static char *
Get_Group_Option_Value (
  char *arg,
  char *name,
  char *abbrev)
{
  char *endc = arg;
  int n;

  while ( 1 ) {
    n = strcspn ( arg, ":=" );
    if ( strncasecmp ( arg, abbrev, strlen(abbrev) ) == 0
      && strncasecmp ( arg, name, n ) == 0 )
    {
      endc += n;
      if ( *endc == '=' ) {

 char *result = strdup ( endc+1 );

 * ( result + strcspn ( result, ":=" ) ) = 0;
 return result;
      } else {

 return "";
      }
    }
    if ( ( endc = strchr ( arg, ':' ) ) == ((void *)0) ) return ((void *)0);
    arg = ++endc;
  }



}
# 284 "../../driver/opt_actions.c"
static boolean
Bool_Group_Value ( char *val )
{
  if ( *val == 0 ) {

    return 1;
  }

  if ( strcasecmp ( val, "OFF" ) == 0
    || strcasecmp ( val, "NO" ) == 0
    || strcasecmp ( val, "FALSE" ) == 0
    || strcasecmp ( val, "0" ) == 0 )
  {
    return 0;
  } else {
    return 1;
  }
}
# 312 "../../driver/opt_actions.c"
char *f90_module_dir = 0;

void
Process_module ( char *dirname )
{
  if (0 != f90_module_dir)
  {
    error("Only one -module option allowed");
  }
  strcat(
    strcpy(
      f90_module_dir = malloc(sizeof "-J" + strlen(dirname)),
      "-J"),
    dirname);
}
# 339 "../../driver/opt_actions.c"
void
Process_Ofast ( char *ipname )
{
  int flag;
  char *suboption;



  Ofast_Name = string_copy (ipname);



  if (!Gen_feedback) {
     O3_flag = 1;
     toggle ( &olevel, 3 );
     add_option_seen ( 700 );






     toggle ( &fmath_errno, 0);
     add_option_seen (336);


     toggle ( &ffast_math, 1);
     add_option_seen (389);



     toggle ( &ipa, 1 );
     add_option_seen ( 728 );






     toggle ( &ofast, 1 );
     suboption = concat_strings ( "Ofast=", ipname );
     flag = add_string_option ( 699, suboption );
     add_option_seen ( flag );
   } else {
     suboption = concat_strings ( "platform=", ipname );
     flag = add_string_option ( 686, suboption );
     add_option_seen ( flag );
   }
}
# 402 "../../driver/opt_actions.c"
void
Process_Opt_Group ( char *opt_args )
{
  char *optval = ((void *)0);

  if ( debug ) {
    fprintf ( stderr, "Process_Opt_Group: %s\n", opt_args );
  }


  optval = Get_Group_Option_Value ( opt_args, "instrument", "instr");
  if (optval != ((void *)0)) {
     instrumentation_invoked = 1;
  }


  optval = Get_Group_Option_Value ( opt_args, "reorg_common", "reorg");
  if ( optval != ((void *)0) && Bool_Group_Value(optval)) {





  }
}

void
Process_Default_Group (char *default_args)
{
  char *s;
  int i;

  if ( debug ) {
    fprintf ( stderr, "Process_Default_Group: %s\n", default_args );
  }


  s = Get_Group_Option_Value ( default_args, "isa", "isa");
  if (s != ((void *)0) && (strncmp(s,"mips",strlen("mips")) == 0)) {
 default_isa = atoi(s + strlen("mips"));
  }


  s = Get_Group_Option_Value ( default_args, "proc", "proc");
  if (s != ((void *)0)) {
 for (i = 0; Proc_Map[i].pname != ((void *)0); i++) {
  if (strcmp(s, Proc_Map[i].pname) == 0) {
   default_proc = Proc_Map[i].pid;
  }
 }
  }



  s = Get_Group_Option_Value ( default_args, "opt", "opt");
  if (s != ((void *)0)) {
 default_olevel = atoi(s);
  }

  s = Get_Group_Option_Value ( default_args, "arith", "arith");
  if (s != ((void *)0)) {
 i = add_string_option (699, concat_strings("IEEE_arith=", s));
 add_option_seen (i);
  }
}
# 491 "../../driver/opt_actions.c"
void
Process_Targ_Group ( char *targ_args )
{
  char *cp = targ_args;
  char *cpeq;
  char *ftz;

  if ( debug ) {
    fprintf ( stderr, "Process_Targ_Group: %s\n", targ_args );
  }

  ftz = Get_Group_Option_Value ( targ_args, "flush_to_zero", "flush_to_zero");
  if ( ftz != ((void *)0) && Bool_Group_Value(ftz)) {

    ftz_crt = 1;
  }

  while ( *cp != 0 ) {
    switch ( *cp ) {
      case 'a':
 if ( strncasecmp ( cp, "abi", 3 ) == 0 && *(cp+3) == '=' ) {

   if ( strncasecmp ( cp+4, "n32", 3 ) == 0 ) {







   }
# 536 "../../driver/opt_actions.c"
 }
 break;

      case 'i':




 if ( strncasecmp ( cp, "isa", 3 ) != 0 || *(cp+3) != '=' ) {
   break;
 } else {
   cp += 4;
 }


      case 'm':

 if ( strncasecmp ( cp, "mips", 4 ) == 0 ) {
   if ( '1' <= *(cp+4) && *(cp+4) <= '6' ) {
     toggle ( &isa, *(cp+4) - '0' );
# 570 "../../driver/opt_actions.c"
   }
 }

 break;

      case 'p':
# 599 "../../driver/opt_actions.c"
 cpeq = strchr ( cp, '=' );
 if ( cpeq != ((void *)0)
   && strncasecmp ( cp, "processor", cpeq-cp ) == 0 )
 {




   int i;
   cp = cpeq+1;
   for (i = 0; Proc_Map[i].pname != ((void *)0); i++) {
  if (strcmp(cp, Proc_Map[i].pname) == 0) {
   toggle (&proc, Proc_Map[i].pid);
  }
   }
 }

 break;
    }


    while ( *cp != 0 && *cp != ':' ) ++cp;
    if ( *cp == ':' ) ++cp;
  }
}
# 639 "../../driver/opt_actions.c"
static void
Ofast_Target ( void )
{
  int ix;
  PLATFORM_OPTIONS *popts;


  if ( abi == -1 ) {





  }


  popts = Get_Platform_Options ( Ofast_Name );





  if ( proc == -1 ) {
    if ( Ofast_Name != ((void *)0)
      && *Ofast_Name != 0
      && popts->id == IP0 )
    {
      warning ( "Unrecognized -Ofast value '%s': defaulting to '%s' (%s)",
  Ofast_Name, popts->name, popts->nickname );
    }
    proc = popts->processor;
  }


  if ( isa == -1 ) {
    for ( ix = 0;
   P_to_I_Map[ix].p != proc && P_to_I_Map[ix].p != PROC_NONE;
   ++ix )
    { }
    add_option_seen ( P_to_I_Map[ix].opt );
    option_name = get_option_name ( P_to_I_Map[ix].opt );
    toggle ( &isa, P_to_I_Map[ix].isa );
  }

  if ( debug ) {
    fprintf ( stderr,
       "Ofast_Target -Ofast=%s: '%s' (%s) r%dk mips%d\n",
       Ofast_Name, popts->name, popts->nickname, proc, isa );
  }
}
# 700 "../../driver/opt_actions.c"
void
Check_Target ( void )
{
  int opt_id;
  int opt_val;

  if ( debug ) {
    fprintf ( stderr, "Check_Target ABI=%d ISA=%d Processor=%d\n",
       abi, isa, proc );
  }
# 722 "../../driver/opt_actions.c"
  if ( (ofast == 1) || (Gen_feedback == 1)) {
    Ofast_Target ();
  }


  if (abi == -1) {
# 736 "../../driver/opt_actions.c"
 toggle(&abi, ABI_N32);
     add_option_seen ( 157 );
# 764 "../../driver/opt_actions.c"
  }







  if ( isa != -1 ) {
    switch ( abi ) {

      case ABI_N32:
 if ( isa < ISA_MIPS3 ) {
# 785 "../../driver/opt_actions.c"
   isa = -1;
   toggle ( &isa, ISA_MIPS3 );
 }
 break;

      case ABI_64:
 if ( isa < ISA_MIPS3 ) {

   if ( proc == -1 || proc >= PROC_R5K ) {
# 803 "../../driver/opt_actions.c"
   }

   warning ( "ABI specification %s conflicts with ISA "
      "specification %s: defaulting ISA to mips%d",
      get_toggle_name (&abi),
      get_toggle_name (&isa),
      opt_val );
   option_name = get_option_name ( opt_id );
   isa = -1;
   toggle ( &isa, opt_val );
 }
 break;

    }

  } else {


    switch ( abi ) {

      case ABI_N32:
      case ABI_64:
        if (default_isa == ISA_MIPS3) {
   opt_val = ISA_MIPS3;



 }
 else if (default_isa == ISA_MIPS4) {
   opt_val = ISA_MIPS4;
   opt_id = 185;
 }
 else {

   opt_val = ISA_MIPS4;
   opt_id = 185;




 }
 toggle ( &isa, opt_val );
 add_option_seen ( opt_id );
 option_name = get_option_name ( opt_id );
 break;







      case ABI_I32:
      case ABI_I64:
 opt_val = ISA_IA641;
 toggle ( &isa, opt_val );
 break;
      case ABI_IA32:

 opt_val = ISA_SL;



 toggle ( &isa, opt_val );
 break;
    }
  }
  if (isa == -1) {
 internal_error ("isa should have been defined by now");
  }


  if ( proc != -1 ) {
    switch ( abi ) {

      case ABI_N32:
      case ABI_64:
# 892 "../../driver/opt_actions.c"
 break;

    }
  }


  if ( proc != -1 ) {
    switch ( isa ) {

      case ISA_MIPS1:

 break;
# 933 "../../driver/opt_actions.c"
    }
  }
  else if (default_proc != -1) {

 opt_id = 0;
# 959 "../../driver/opt_actions.c"
 if (abi == ABI_I64 || abi == ABI_IA32) {
  opt_id = 0;
 }
 if (opt_id != 0) {
  add_option_seen ( opt_id );
  option_name = get_option_name ( opt_id );
  toggle ( &proc, default_proc);
 }
  }

  if ( debug ) {
    fprintf ( stderr, "Check_Target done; ABI=%d ISA=%d Processor=%d\n",
       abi, isa, proc );
  }
}
# 984 "../../driver/opt_actions.c"
static void
toggle_inline_normal(void)
{
  if (inline_t == -1)
    inline_t = 1;
}



static void
toggle_inline_on(void)
{
  if (inline_t == 0) {
    warning ("-noinline or -INLINE:=off has been seen, %s ignored",
      option_name);
  }
  else {

    inline_t = 1;
    inline_on_seen = 1;
  }
}



static void
toggle_inline_off(void)
{
  if (inline_on_seen == 1) {
    warning ("Earlier request for inline processing has been overridden by %s",
      option_name);
  }
  inline_t = 0;
}

void
Process_Profile_Arcs( void )
{
  if (strncmp (option_name, "-fprofile-arcs", 14) == 0)
    add_string_option (699, "profile_arcs=true");
}

void
Process_Test_Coverage( void )
{
  if (strncmp (option_name, "-ftest-coverage", 15) == 0)
    add_string_option (747, "test_coverage=true");
}


void
Process_Inline ( void )
{
  int more_symbols = 1;
  char *args = option_name+7;

  if (strncmp (option_name, "-noinline", 9) == 0)
      toggle_inline_off();
  else if (*args == '\0')

    toggle_inline_on();
  else do {
    char *endc;
    *args = ':';
    if ((endc = strchr(++args, ':')) == ((void *)0))
      more_symbols = 0;
    else
      *endc = '\0';
    if (strcasecmp(args, "=off") == 0)
      toggle_inline_off();
    else if (strcasecmp(args, "=on") == 0)
      toggle_inline_on();
    else
      toggle_inline_normal();
    args = endc;
  }
  while (more_symbols);
}





void dash_F_option(void)
{
    if (invoked_lang == L_f77) {
 last_phase=earliest_phase(P_ratfor,last_phase);
    } else if (invoked_lang == L_CC) {
 error("-F is not supported: cannot generate intermediate C code");
    } else {
 parse_error("-F", "unknown flag");
    }
}


void
untoggle (int *obj, int value)

{
  *obj = -1;
}


static void
change_phase_path (char *arg)
{
 char *dir;
 char *s;
 for (s = arg; s != ((void *)0) && *s != '\0' && *s != ','; s++)
  ;
 if (s == ((void *)0) || *s == '\0') {
  parse_error(option_name, "bad syntax for -Y option");
  return;
 }
 dir = s+1;
 if (dir[0] == '~' && (dir[1] == '/' || dir[1] == '\0')) {
     char *home = getenv("HOME");
     if (home)
  dir = concat_strings(home, dir+1);
 }
 if (!is_directory(dir))
  parse_error(option_name, "not a directory");
 for (s = arg; *s != ','; s++) {

  if (get_phase(*s) == P_NONE) {
   parse_error(option_name, "bad phase for -Y option");
  } else {
   set_phase_dir(get_phase_mask(get_phase(*s)), dir);
  }
 }
}



static void
change_last_phase (char *s)
{
 phases_t phase;
 if (s == ((void *)0) || *s == '\0') {
  warn_ignored("-H");
 } else if ( *(s+1)!='\0') {
  parse_error(option_name, "bad syntax for -H option");
 } else if ((phase=get_phase(*s)) == P_NONE) {
   parse_error(option_name, "bad phase for -H option");
 } else {
   last_phase=earliest_phase(phase, last_phase);
 }
}

void
save_name (char **obj, char *value)
{
 *obj = string_copy(value);
}

static void
check_output_name (char *name)
{
 if (name == ((void *)0)) return;
 if (get_source_kind(name) != S_o && file_exists(name)) {
  warning("%s %s will overwrite a file that has a source-file suffix", option_name, name);
 }
}


void
check_convert_name(char *name)
{
 static char *legal_names[] = {
   "big_endian",
   "big-endian",
   "little_endian",
   "little-endian",
   "native"
   };
 for (int i = 0; i < ((sizeof legal_names) / (sizeof *legal_names));
   i += 1) {
   if (0 == strcmp(name, legal_names[i])) {
     return;
   }
 }
 parse_error(option_name, "bad conversion name");
}


void
check_dashdash (void)
{
# 1180 "../../driver/opt_actions.c"
}

static char *
Get_Binary_Name ( char *name)
{
  char *new;
  int len, i;
  new = string_copy(name);
  len = strlen(new);
  for ( i=0; i<len; i++ ) {
    if (strncmp(&new[i], ".x.Counts", 9) == 0) {
      new[i] = 0;
      break;
    }
  }
  return new;
}

void
Process_fbuse ( char *fname )
{
  static boolean is_first_count_file = 1;
  Use_feedback = 1;
  add_string (count_files, fname);
  if (is_first_count_file && (prof_file == ((void *)0)))
    prof_file = Get_Binary_Name(drop_path(fname));
  is_first_count_file = 0;
}

void
Process_fb_type ( char* typename )
{
  char str[10];
  int flag, tmp;
  fb_type = string_copy(typename);
  sprintf(str,"fb_type=%s",fb_type);
  flag = add_string_option (699, str);
  add_option_seen(flag);

  sscanf (typename, "%d", &tmp);
  profile_type |= tmp;
}


void
Process_fb_create ( char *fname )
{
   int flag;
   fb_file = string_copy(fname);

   if (instrumentation_invoked == 1) {

     flag = add_string_option (699, "instr_unique_output=on");
   }
   else {
     toggle ( &instrumentation_invoked, 1 );
     flag = add_string_option (699, "instr=on:instr_unique_output=on");
   }
   add_option_seen (flag);
}


void
Process_fb_phase(char *phase)
{
  char str[10];
  int flag;
  fb_phase = string_copy(phase);
  sprintf(str,"fb_phase=%s",fb_phase);
  flag = add_string_option (699, str);
  add_option_seen(flag);
}


void
Process_fb_opt ( char *fname )
{
  opt_file = string_copy(fname);
  toggle ( &instrumentation_invoked, 0);
}


void
Process_fbexe ( char *fname )
{
  prof_file = string_copy(fname);
}

void
Process_fb_xdir ( char *fname )
{
  fb_xdir = string_copy(fname);
}

void
Process_fb_cdir ( char *fname )
{
  fb_cdir = string_copy(fname);
}
# 1461 "../../driver/opt_actions.c"
void
Process_Promp ( void )
{

  if ( debug ) {
    fprintf ( stderr, "Process_Promp\n" );
  }




  if (invoked_lang == L_f77 || invoked_lang == L_f90) {
    add_option_seen ( 104 );
    add_option_seen(add_string_option(740, "endloop_marker=1"));
  } else if (invoked_lang == L_cc) {

    add_option_seen ( 104 );
  }
  if ( debug ) {
    fprintf ( stderr, "Process_Promp done\n" );
  }
}

void
Process_Tenv_Group ( char *opt_args )
{
  if ( debug ) {
    fprintf ( stderr, "Process_TENV_Group: %s\n", opt_args );
  }







}

static int
print_magic_path(const char *base, const char *fname)
{
  int m32 = check_for_saved_option("-m32");
  char *slash;
  char *path;

  if (m32) {
    char *sfx;

    asprintf(&path, "%s/32/%s", base, fname);

    if (file_exists(path))
      goto good;

    if (ends_with(base, "/lib64")) {
      asprintf(&path, "%.*s/%s", strlen(base) - 2, base, fname);

      if (file_exists(path))
 goto good;
    }

    sfx = get_suffix(fname);

    if (sfx != ((void *)0) &&
 strcmp(sfx, "a") == 0 || strcmp(sfx, "o") == 0 || strcmp(sfx, "so") == 0)
      goto bad;

    if ((slash = strrchr(path, '/')) && strstr(slash, ".so."))
      goto bad;
  }

  asprintf(&path, "%s/%s", base, fname);

  if (file_exists(path))
    goto good;

 bad:
  return 0;

 good:
  puts(path);
  return 1;
}

static int
print_phase_path(phases_t phase, const char *fname)
{
  return print_magic_path(get_phase_dir(phase), fname);
}

static int print_relative_path(const char *s, const char *fname)
{
  char *root_prefix = directory_path(get_executable_dir());
  char *base;

  asprintf(&base, "%s/%s", root_prefix, s);
  return print_magic_path(base, fname);
}



void
print_file_path (char *fname, int exe)
{






  if (print_relative_path("lib/gcc-lib/" "" "/" "3.2", fname))
    return;

  if (print_relative_path("lib/gcc-lib/" "" "/lib64", fname))
    return;

  if (print_relative_path("" "/lib64", fname))
    return;

  if (print_relative_path("lib/" "" "", fname))
    return;

  if (print_magic_path("/usr/lib64", fname))
    return;

  if (print_magic_path("/lib64", fname))
    return;

  if (print_phase_path(P_be, fname))
    return;

  if (print_phase_path(P_library, fname))
    return;

  if (print_phase_path(P_gcpp, fname))
    return;

  if (print_phase_path(P_gas, fname))
    return;

  if (print_phase_path(P_alt_library, fname))
    return;
# 1616 "../../driver/opt_actions.c"
  printf("%s\n", fname);

}

void
print_multi_lib ()
{
  char *argv[3];
  argv[0] = "gcc";
  asprintf(&argv[1], "-print-multi-lib");
  argv[2] = ((void *)0);
  execvp(argv[0], argv);
  fprintf(stderr, "could not execute %s: %m\n", argv[0]);
  exit(1);
}

mem_model_t mem_model;

void
set_memory_model(char *model)
{
  if (strcmp(model, "small") == 0) {
    mem_model = M_SMALL;
  }
  else if (strcmp(model, "medium") == 0) {
    mem_model = M_MEDIUM;
  }
  else if (strcmp(model, "large") == 0) {
    mem_model = M_LARGE;
  }
  else if (strcmp(model, "kernel") == 0) {
    mem_model = M_KERNEL;
  } else {
    error("unknown memory model \"%s\"", model);
  }

  if (abi == ABI_N32) {
    error("code model \"%s\" not supported in 32-bit mode", model );
    do_exit(2);
  }
}

static struct
{
  char *cpu_name;
  char *target_name;
  int abi;
  boolean supports_sse2;
  boolean prefers_sse3;
} supported_cpu_types[] = {
  { "any_64bit_x86", "anyx86", ABI_64, 1, 0 },
  { "any_32bit_x86", "anyx86", ABI_N32, 0, 0 },
  { "i386", "anyx86", ABI_N32, 0, 0 },
  { "i486", "anyx86", ABI_N32, 0, 0 },
  { "i586", "anyx86", ABI_N32, 0, 0 },
  { "athlon", "athlon", ABI_N32, 0, 0 },
  { "athlon-mp", "athlon", ABI_N32, 0, 0 },
  { "athlon-xp", "athlon", ABI_N32, 0, 0 },
  { "athlon64", "athlon64", ABI_64, 1, 0 },
  { "athlon64fx", "opteron", ABI_64, 1, 0 },
  { "i686", "pentium4", ABI_N32, 0, 0 },
  { "ia32", "pentium4", ABI_N32, 1, 0 },
  { "k7", "athlon", ABI_N32, 0, 0 },
  { "k8", "opteron", ABI_64, 1, 0 },
  { "opteron", "opteron", ABI_64, 1, 0 },
  { "pentium4", "pentium4", ABI_N32, 1, 0 },
  { "xeon", "xeon", ABI_N32, 1, 0 },
  { "em64t", "em64t", ABI_64, 1, 1 },
  { ((void *)0), ((void *)0), },
};

char *target_cpu = ((void *)0);


static int
get_platform_abi()
{
  struct utsname u;

  uname(&u);
  if (!strcmp(u.machine, "x86_64"))
    return ABI_64;
  return ABI_N32;
}


char *
get_auto_cpu_name ()
{
  FILE *f;
  char buf[256];
  char *cpu_name = ((void *)0);
  char *cpu_name_64bit = ((void *)0);

  f = fopen("/proc/cpuinfo", "r");
  if (f == ((void *)0)) {
    error("cannot read /proc/cpuinfo");
    return ((void *)0);
  }
  while (fgets(buf, 256, f) != ((void *)0)) {
    if (!strncmp("model name", buf, 10)) {
      if (strstr(buf, "AMD Athlon(tm) 64 ") != ((void *)0))
 cpu_name = "athlon64";
      else if (strstr(buf, "AMD Athlon(tm) MP ") != ((void *)0))
 cpu_name = "athlon-mp";
      else if (strstr(buf, "AMD Athlon(tm) Processor") != ((void *)0))
 cpu_name = "athlon";
      else if (strstr(buf, "AMD Opteron(tm) ") != ((void *)0))
 cpu_name = "opteron";
      else if (strstr(buf, "Intel(R) Pentium(R) 4 ") != ((void *)0))
 cpu_name = "pentium4";
      else if (strstr(buf, "Intel(R) Xeon(TM) ") != ((void *)0)) {
 cpu_name = "xeon";
 cpu_name_64bit = "em64t";
      } else if (strstr(buf, "unknown") != ((void *)0)) {
 char *abi_name;
 if (get_platform_abi() == ABI_64) {
   cpu_name = "anyx86";
   abi_name = "64-bit";
 } else {
   cpu_name = "i386";
   abi_name = "32-bit";
 }
 warning("CPU model name in /proc/cpuinfo is \"unknown\".  "
  "Defaulting to basic %s x86.", abi_name);
      } else {
 error("/proc/cpuinfo contains unknown CPU model name");
 return ((void *)0);
      }
      break;
    }
  }
  fclose(f);
  if (cpu_name == ((void *)0)) {
    error("cannot find CPU model name in /proc/cpuinfo");
    return ((void *)0);
  }


  if (cpu_name_64bit != ((void *)0)) {
    if (get_platform_abi() == ABI_64) {
      cpu_name = cpu_name_64bit;
    }
  }

  return cpu_name;
}


static void
set_cpu(char *name, m_flag flag_type)
{


  if (parsing_default_options &&
      target_cpu != ((void *)0)) {
    drop_option = 1;
    return;
  }




  if (target_cpu != ((void *)0) &&
      strcmp(target_cpu, name)) {
    warning("CPU target %s conflicts with %s; using latter (%s)",
     get_toggle_name((int*)&target_cpu), name, name);


    target_cpu = ((void *)0);
  }
  target_cpu = name;
  add_toggle_name((int*)&target_cpu, name);
}
# 1868 "../../driver/opt_actions.c"
# 1 "./opt_action.i" 1


# 1 "../../driver/string_utils.h" 1
# 4 "./opt_action.i" 2

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
# 6 "./opt_action.i" 2


extern void
opt_action (int optflag)
{
switch (optflag) {
case 32:
 set_explicit_lang(option_name,optargs);
 break;
case 34:
 toggle(&msglevel,0);
 break;
case 39:
 toggle(&msglevel,0);
 break;
case 44:
 warn_no_longer_supported2(option_name,"-vms_cc");
 break;
case 45:
 {show_version++; show_copyright = 1; execute_flag = 0;}
 break;
case 47:
 {show_flag = 1; show_version++;}
 break;
case 51:
 toggle(&skip_as,0);
 break;
case 62:
 subverbose=1;
 break;
case 63:
 nostdinc=0;
 break;
case 81:
 warn_ignored(option_name);
 break;
case 84:
 {time_flag = 1; }
 break;
case 85:
 {show_flag = debug = 1; execute_flag = 0;}
 break;
case 86:
 {show_flag = 1; }
 break;
case 87:
 {show_flag = 1; execute_flag = 0;}
 break;
case 88:
 {show_defaults = 1; execute_flag = 0;}
 break;
case 89:
 {show_flag = 1; }
 break;
case 91:
 toggle(&shared,2);
 break;
case 92:
 keep_flag=1;
 break;
case 98:
 toggle(&rflag,2);
 break;
case 99:
 toggle(&rflag,1);
 break;
case 100:
 toggle(&shared,4);last_phase=P_any_ld;
 break;
case 101:
 toggle(&qwalign2,1);toggle(&qwalign1,0);
 break;
case 102:
 toggle(&qwalign1,1);toggle(&qwalign2,0);
 break;
case 106:
 {show_search_path=1; execute_flag=0;}
 break;
case 107:
 {execute_flag=0; print_file_path(optargs, 1);}
 break;
case 108:
 {execute_flag=0; print_multi_lib();}
 break;
case 110:
 {execute_flag=0; print_file_path(optargs, 0);}
 break;
case 116:
 warn_no_longer_supported2(option_name,"-pfa");
 break;
case 117:
 {auto_parallelize=1; warning("options after -pfa, are ignored; should just use -pfa");}
 break;
case 118:
 auto_parallelize=1;keep_list=1;
 break;
case 119:
 auto_parallelize=1;keep_list=keep_mp=1;Process_Promp();
 break;
case 120:
 auto_parallelize=1;
 break;
case 123:
 {auto_parallelize=1; warning("options after -pca, are ignored; should just use -pca");}
 break;
case 124:
 auto_parallelize=1;keep_list=1;
 break;
case 125:
 auto_parallelize=1;keep_list=keep_mp=1;Process_Promp();
 break;
case 126:
 auto_parallelize=1;
 break;
case 128:
 pass_exit_codes=1;
 break;
case 129:
 last_phase=earliest_phase(P_any_fe,last_phase);
 break;
case 136:
 save_name(&outfile,optargs);check_output_name(optargs);cancel_saved_arg(2);
 break;
case 138:
 nostdinc=1;
 break;
case 139:
 nostdinc=1;
 break;
case 141:
 Process_Inline();
 break;
case 142:
 toggle(&iflag,1);
 break;
case 144:
 fortran_line_length=72;
 break;
case 148:
 nocpp_flag=1;first_phase=P_any_fe;
 break;
case 150:
 toggle(&skip_as,1);
 break;
case 151:
 prelink_flag=0;
 break;
case 157:
 toggle(&abi,ABI_N32);
 break;
case 161:
 set_cpu(optargs,M_TUNE);
 break;
case 162:
 toggle(&sse2,1);toggle(&sse3,1);
 break;
case 163:
 toggle(&sse2,1);
 break;
case 165:
 toggle(&ospace,1);
 break;
case 166:
 warn_ignored(option_name);
 break;
case 169:
 warn_no_longer_needed(option_name);
 break;
case 170:
 warn_no_longer_needed(option_name);
 break;
case 172:
 warn_no_longer_supported2(option_name,"-CLIST/-FLIST");
 break;
case 174:
 toggle(&mpkind,0);
 break;
case 175:
 Process_module(optargs);
 break;
case 176:
 toggle(&sse3,0);
 break;
case 177:
 toggle(&sse2,0);toggle(&sse3,0);
 break;
case 178:
 toggle(&sse2,0);toggle(&sse3,0);
 break;
case 179:
 warn_ignored(option_name);
 break;
case 181:
 warn_ignored(option_name);
 break;
case 183:
 toggle(&m3dnow,0);
 break;
case 185:
 toggle(&isa,ISA_MIPS4);
 break;
case 190:
 set_cpu(optargs,M_CPU);
 break;
case 192:
 set_memory_model(optargs);
 break;
case 194:
 set_cpu(optargs,M_ARCH);
 break;
case 195:
 warn_ignored(option_name);
 break;
case 196:
 warn_ignored(option_name);
 break;
case 197:
 warn_ignored(option_name);
 break;
case 198:
 expand_ftpp_macros=1;
 break;
case 201:
 toggle(&abi,ABI_64);
 break;
case 202:
 toggle(&m3dnow,1);
 break;
case 203:
 warn_ignored(option_name);
 break;
case 204:
 toggle(&abi,ABI_N32);
 break;
case 206:
 ldscript_file=1;
 break;
case 209:
 keep_flag=1;
 break;
case 215:
 toggle(&ipa,1);
 break;
case 217:
 Process_Inline();
 break;
case 220:
 ignore_suffix=1;
 break;
case 223:
 toggle(&iflag,3);
 break;
case 224:
 toggle(&iflag,2);
 break;
case 225:
 toggle(&iflag,1);
 break;
case 226:
 save_name(&help_pattern,optargs);
 break;
case 228:
 toggle(&use_h264libs,1);toggle(&use_bblibs,0);
 break;
case 229:
 warn_ignored(option_name);
 break;
case 230:
 warn_ignored(option_name);
 break;
case 231:
 warn_ignored(option_name);
 break;
case 232:
 warn_ignored(option_name);
 break;
case 233:
 warn_ignored(option_name);
 break;
case 234:
 warn_ignored(option_name);
 break;
case 235:
 toggle(&glevel,3);
 break;
case 236:
 toggle(&glevel,2);
 break;
case 237:
 toggle(&glevel,3);
 break;
case 238:
 toggle(&glevel,2);
 break;
case 239:
 toggle(&glevel,1);
 break;
case 240:
 toggle(&glevel,0);
 break;
case 241:
 toggle(&glevel,2);
 break;
case 242:
 warn_ignored(option_name);
 break;
case 243:
 warn_ignored(option_name);
 break;
case 244:
 warn_ignored(option_name);
 break;
case 246:
 toggle(&glevel,3);
 break;
case 247:
 toggle(&glevel,2);
 break;
case 248:
 toggle(&glevel,1);
 break;
case 249:
 toggle(&glevel,0);
 break;
case 250:
 toggle(&glevel,2);
 break;
case 252:
 warn_ignored(option_name);
 break;
case 266:
 toggle(&msglevel,2);
 break;
case 268:
 toggle(&use_ftpp,1);
 break;
case 270:
 Process_Test_Coverage();
 break;
case 275:
 warn_ignored(option_name);
 break;
case 276:
 warn_ignored(option_name);
 break;
case 277:
 warn_ignored(option_name);
 break;
case 292:
 toggle(&fortran_form,2);
 break;
case 294:
 warn_no_longer_supported2(option_name,"-TENV:large_stack");
 break;
case 295:
 Process_Profile_Arcs();
 break;
case 299:
 toggle(&pic,1);
 break;
case 303:
 warn_ignored(option_name);
 break;
case 305:
 warn_ignored(option_name);
 break;
case 310:
 warn_ignored(option_name);
 break;
case 320:
 warn_ignored(option_name);
 break;
case 321:
 warn_ignored(option_name);
 break;
case 322:
 warn_ignored(option_name);
 break;
case 329:
 toggle(&pic,0);
 break;
case 332:
 warn_ignored(option_name);
 break;
case 333:
 warn_ignored(option_name);
 break;
case 336:
 toggle(&fmath_errno,0);
 break;
case 350:
 toggle(&ffast_math,0);
 break;
case 357:
 toggle(&fbuiltin,0);
 break;
case 360:
 toggle(&pic,0);
 break;
case 364:
 toggle(&fmath_errno,1);
 break;
case 369:
 toggle(&fortran_form,1);
 break;
case 389:
 toggle(&ffast_math,1);
 break;
case 391:
 warn_ignored(option_name);
 break;
case 395:
 add_string(feedback_files,optargs);
 break;
case 396:
 last_phase=earliest_phase(P_any_fe,last_phase);
 break;
case 406:
 toggle(&use_coco,1);save_name(&coco_setfile,optargs);
 break;
case 407:
 toggle(&use_coco,1);
 break;
case 413:
 Process_fbuse(optargs);
 break;
case 414:
 toggle(&fbuiltin,1);
 break;
case 416:
 Gen_feedback=1;
 break;
case 417:
 Process_fbexe(optargs);
 break;
case 418:
 Process_fb_xdir(optargs);
 break;
case 419:
 Process_fb_type(optargs);
 break;
case 420:
 Process_fb_phase(optargs);
 break;
case 421:
 Process_fb_opt(optargs);
 break;
case 422:
 Process_fb_create(optargs);
 break;
case 423:
 Process_fb_cdir(optargs);
 break;
case 428:
 save_name(&internal_fb_file,optargs);
 break;
case 435:
 toggle(&pic,1);
 break;
case 436:
 fortran_line_length=132;
 break;
case 440:
 warn_ignored(option_name);
 break;
case 441:
 warn_ignored(option_name);
 break;
case 442:
 warn_ignored(option_name);
 break;
case 443:
 warn_ignored(option_name);
 break;
case 444:
 {dump_version = 1; execute_flag = 0;}
 break;
case 445:
 warn_ignored(option_name);
 break;
case 446:
 {printf("" "\n"); execute_flag=0;}
 break;
case 449:
 warn_ignored(option_name);
 break;
case 450:
 warn_ignored(option_name);
 break;
case 451:
 warn_ignored(option_name);
 break;
case 452:
 warn_ignored(option_name);
 break;
case 453:
 warn_ignored(option_name);
 break;
case 454:
 warn_ignored(option_name);
 break;
case 455:
 warn_ignored(option_name);
 break;
case 456:
 warn_ignored(option_name);
 break;
case 457:
 warn_ignored(option_name);
 break;
case 458:
 warn_ignored(option_name);
 break;
case 459:
 warn_ignored(option_name);
 break;
case 460:
 warn_ignored(option_name);
 break;
case 461:
 warn_ignored(option_name);
 break;
case 464:
 warn_ignored(option_name);
 break;
case 465:
 warn_ignored(option_name);
 break;
case 466:
 warn_ignored(option_name);
 break;
case 467:
 warn_ignored(option_name);
 break;
case 468:
 warn_ignored(option_name);
 break;
case 470:
 warn_ignored(option_name);
 break;
case 471:
 warn_ignored(option_name);
 break;
case 472:
 warn_ignored(option_name);
 break;
case 473:
 warn_ignored(option_name);
 break;
case 476:
 warn_ignored(option_name);
 break;
case 478:
 warn_ignored(option_name);
 break;
case 479:
 warn_ignored(option_name);
 break;
case 480:
 warn_ignored(option_name);
 break;
case 482:
 warn_ignored(option_name);
 break;
case 483:
 warn_ignored(option_name);
 break;
case 484:
 warn_ignored(option_name);
 break;
case 485:
 toggle(&dflag,1);
 break;
case 488:
 toggle(&use_ftpp,0);first_phase=P_any_cpp;
 break;
case 489:
 toggle(&cordflag,1);
 break;
case 490:
 {show_copyright = 1; execute_flag = 0;}
 break;
case 491:
 toggle(&io_byteswap,2);check_convert_name(optargs);
 break;
case 492:
 toggle(&compat_gcc,1);
 break;
case 493:
 fortran_line_length=80;
 break;
case 494:
 fortran_line_length=72;
 break;
case 495:
 fortran_line_length=120;
 break;
case 497:
 keep_cif=1;
 break;
case 501:
 last_phase=(((ipa==1)&&(shared==4))?P_any_ld:earliest_phase(P_any_as,last_phase));
 break;
case 502:
 toggle(&io_byteswap,1);
 break;
case 504:
 toggle(&use_bblibs,1);toggle(&use_h264libs,0);
 break;
case 505:
 first_phase=P_any_fe;
 break;
case 506:
 warn_ignored(option_name);
 break;
case 508:
 toggle(&isstatic,1);
 break;
case 512:
 auto_parallelize=1;keep_list=1;
 break;
case 513:
 auto_parallelize=1;keep_list=keep_mp=1;Process_Promp();
 break;
case 514:
 auto_parallelize=1;
 break;
case 515:
 toggle(&ansi,2);
 break;
case 522:
 change_phase_path(optargs);
 break;
case 661:
 warn_ignored(option_name);
 break;
case 674:
 warn_ignored(option_name);
 break;
case 681:
 {warn_ignored("-V <version>");}
 break;
case 682:
 warn_ignored("-V");
 break;
case 685:
 Process_Tenv_Group(optargs);
 break;
case 686:
 Process_Targ_Group(optargs);
 break;
case 688:
 last_phase=earliest_phase(P_be,last_phase);
 break;
case 690:
 {quiet_flag = 0; }
 break;
case 696:
 toggle(&ospace,1);
 break;
case 697:
 warn_no_longer_supported2(option_name,"-OPT:Olimit=n");
 break;
case 698:
 Process_Ofast("");
 break;
case 699:
 Process_Opt_Group(optargs);
 break;
case 700:
 O3_flag=1;toggle(&olevel,3);
 break;
case 701:
 toggle(&olevel,2);
 break;
case 702:
 toggle(&olevel,1);
 break;
case 703:
 toggle(&olevel,0);
 break;
case 705:
 toggle(&olevel,2);
 break;
case 711:
 last_phase=P_any_cpp;
 break;
case 718:
 last_phase=P_any_cpp;
 break;
case 723:
 toggle(&standard_cplusplus,1);
 break;
case 725:
 add_library_dir(optargs);
 break;
case 727:
 toggle(&ipa,1);
 break;
case 728:
 toggle(&ipa,1);
 break;
case 730:
 Process_Inline();
 break;
case 731:
 Process_Inline();
 break;
case 737:
 {warning("-GCM group no longer supported");}
 break;
case 738:
 toggle(&gnum,optargd);
 break;
case 741:
 dash_F_option();
 break;
case 742:
 last_phase=P_any_cpp;
 break;
case 743:
 Process_Default_Group(optargs);
 break;
case 811:
 check_dashdash();
 break;
case 812:
 {show_version++; show_but_not_run = 1;}
 break;
case 813:
 read_stdin=1;
 break;
}
}


extern boolean
flag_is_superceded (int optflag)
{
switch (optflag) {
case 34:
 if (msglevel != 0) return 1;
 break;
case 39:
 if (msglevel != 0) return 1;
 break;
case 51:
 if (skip_as != 0) return 1;
 break;
case 91:
 if (shared != 2) return 1;
 break;
case 98:
 if (rflag != 2) return 1;
 break;
case 99:
 if (rflag != 1) return 1;
 break;
case 100:
 if (shared != 4) return 1;
 break;
case 101:
 if (qwalign2 != 1) return 1;
 break;
case 102:
 if (qwalign1 != 1) return 1;
 break;
case 142:
 if (iflag != 1) return 1;
 break;
case 150:
 if (skip_as != 1) return 1;
 break;
case 157:
 if (abi != ABI_N32) return 1;
 break;
case 162:
 if (sse2 != 1) return 1;
 break;
case 163:
 if (sse2 != 1) return 1;
 break;
case 165:
 if (ospace != 1) return 1;
 break;
case 174:
 if (mpkind != 0) return 1;
 break;
case 176:
 if (sse3 != 0) return 1;
 break;
case 177:
 if (sse2 != 0) return 1;
 break;
case 178:
 if (sse2 != 0) return 1;
 break;
case 183:
 if (m3dnow != 0) return 1;
 break;
case 185:
 if (isa != ISA_MIPS4) return 1;
 break;
case 201:
 if (abi != ABI_64) return 1;
 break;
case 202:
 if (m3dnow != 1) return 1;
 break;
case 204:
 if (abi != ABI_N32) return 1;
 break;
case 215:
 if (ipa != 1) return 1;
 break;
case 223:
 if (iflag != 3) return 1;
 break;
case 224:
 if (iflag != 2) return 1;
 break;
case 225:
 if (iflag != 1) return 1;
 break;
case 228:
 if (use_h264libs != 1) return 1;
 break;
case 235:
 if (glevel != 3) return 1;
 break;
case 236:
 if (glevel != 2) return 1;
 break;
case 237:
 if (glevel != 3) return 1;
 break;
case 238:
 if (glevel != 2) return 1;
 break;
case 239:
 if (glevel != 1) return 1;
 break;
case 240:
 if (glevel != 0) return 1;
 break;
case 241:
 if (glevel != 2) return 1;
 break;
case 246:
 if (glevel != 3) return 1;
 break;
case 247:
 if (glevel != 2) return 1;
 break;
case 248:
 if (glevel != 1) return 1;
 break;
case 249:
 if (glevel != 0) return 1;
 break;
case 250:
 if (glevel != 2) return 1;
 break;
case 266:
 if (msglevel != 2) return 1;
 break;
case 268:
 if (use_ftpp != 1) return 1;
 break;
case 292:
 if (fortran_form != 2) return 1;
 break;
case 299:
 if (pic != 1) return 1;
 break;
case 329:
 if (pic != 0) return 1;
 break;
case 336:
 if (fmath_errno != 0) return 1;
 break;
case 350:
 if (ffast_math != 0) return 1;
 break;
case 357:
 if (fbuiltin != 0) return 1;
 break;
case 360:
 if (pic != 0) return 1;
 break;
case 364:
 if (fmath_errno != 1) return 1;
 break;
case 369:
 if (fortran_form != 1) return 1;
 break;
case 389:
 if (ffast_math != 1) return 1;
 break;
case 406:
 if (use_coco != 1) return 1;
 break;
case 407:
 if (use_coco != 1) return 1;
 break;
case 414:
 if (fbuiltin != 1) return 1;
 break;
case 435:
 if (pic != 1) return 1;
 break;
case 485:
 if (dflag != 1) return 1;
 break;
case 488:
 if (use_ftpp != 0) return 1;
 break;
case 489:
 if (cordflag != 1) return 1;
 break;
case 491:
 if (io_byteswap != 2) return 1;
 break;
case 492:
 if (compat_gcc != 1) return 1;
 break;
case 502:
 if (io_byteswap != 1) return 1;
 break;
case 504:
 if (use_bblibs != 1) return 1;
 break;
case 508:
 if (isstatic != 1) return 1;
 break;
case 515:
 if (ansi != 2) return 1;
 break;
case 696:
 if (ospace != 1) return 1;
 break;
case 701:
 if (olevel != 2) return 1;
 break;
case 702:
 if (olevel != 1) return 1;
 break;
case 703:
 if (olevel != 0) return 1;
 break;
case 705:
 if (olevel != 2) return 1;
 break;
case 723:
 if (standard_cplusplus != 1) return 1;
 break;
case 727:
 if (ipa != 1) return 1;
 break;
case 728:
 if (ipa != 1) return 1;
 break;
case 738:
 if (gnum != optargd) return 1;
 break;
}
return 0;
}
# 1869 "../../driver/opt_actions.c" 2
