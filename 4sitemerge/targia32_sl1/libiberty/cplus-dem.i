# 1 "../../libiberty/cplus-dem.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../libiberty/cplus-dem.c"
# 47 "../../libiberty/cplus-dem.c"
# 1 "../../libiberty/config.h" 1
# 48 "../../libiberty/cplus-dem.c" 2


# 1 "../../include/gnu/safe-ctype.h" 1
# 44 "../../include/gnu/safe-ctype.h"
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
# 97 "../../include/gnu/safe-ctype.h"
extern const unsigned char _sch_toupper[256];
extern const unsigned char _sch_tolower[256];
# 51 "../../libiberty/cplus-dem.c" 2

# 1 "/usr/include/sys/types.h" 1 3 4
# 27 "/usr/include/sys/types.h" 3 4
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
# 28 "/usr/include/sys/types.h" 2 3 4



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



# 53 "../../libiberty/cplus-dem.c" 2
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

# 54 "../../libiberty/cplus-dem.c" 2
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

# 55 "../../libiberty/cplus-dem.c" 2


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

# 58 "../../libiberty/cplus-dem.c" 2





# 1 "../../include/gnu/demangle.h" 1
# 28 "../../include/gnu/demangle.h"
# 1 "../../include/gnu/ansidecl.h" 1
# 29 "../../include/gnu/demangle.h" 2
# 65 "../../include/gnu/demangle.h"
extern enum demangling_styles
{
  no_demangling = -1,
  unknown_demangling = 0,
  auto_demangling = (1 << 8),
  gnu_demangling = (1 << 9),
  lucid_demangling = (1 << 10),
  arm_demangling = (1 << 11),
  hp_demangling = (1 << 12),
  edg_demangling = (1 << 13),
  gnu_v3_demangling = (1 << 14),
  java_demangling = (1 << 2),
  gnat_demangling = (1 << 15)
} current_demangling_style;
# 109 "../../include/gnu/demangle.h"
extern const struct demangler_engine
{
  const char *const demangling_style_name;
  const enum demangling_styles demangling_style;
  const char *const demangling_style_doc;
} libiberty_demanglers[];

extern char *
cplus_demangle (const char *mangled, int options);

extern int
cplus_demangle_opname (const char *opname, char *result, int options);

extern const char *
cplus_mangle_opname (const char *opname, int options);



extern void
set_cplus_marker_for_demangling (int ch);

extern enum demangling_styles
cplus_demangle_set_style (enum demangling_styles style);

extern enum demangling_styles
cplus_demangle_name_to_style (const char *name);


extern char*
cplus_demangle_v3 (const char* mangled, int options);

extern char*
java_demangle_v3 (const char* mangled);


enum gnu_v3_ctor_kinds {
  gnu_v3_complete_object_ctor = 1,
  gnu_v3_base_object_ctor,
  gnu_v3_complete_object_allocating_ctor
};





extern enum gnu_v3_ctor_kinds
 is_gnu_v3_mangled_ctor (const char *name);


enum gnu_v3_dtor_kinds {
  gnu_v3_deleting_dtor = 1,
  gnu_v3_complete_object_dtor,
  gnu_v3_base_object_dtor
};





extern enum gnu_v3_dtor_kinds
 is_gnu_v3_mangled_dtor (const char *name);
# 64 "../../libiberty/cplus-dem.c" 2



# 1 "../../include/gnu/libiberty.h" 1
# 50 "../../include/gnu/libiberty.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 152 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 51 "../../include/gnu/libiberty.h" 2

# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 1 3 4
# 53 "../../include/gnu/libiberty.h" 2





extern char **buildargv (const char *) __attribute__ ((__malloc__));



extern void freeargv (char **);




extern char **dupargv (char **) __attribute__ ((__malloc__));
# 82 "../../include/gnu/libiberty.h"
extern char *basename (const char *);







extern const char *lbasename (const char *);





extern char *concat (const char *, ...) __attribute__ ((__malloc__));
# 105 "../../include/gnu/libiberty.h"
extern char *reconcat (char *, const char *, ...) __attribute__ ((__malloc__));





extern unsigned long concat_length (const char *, ...);






extern char *concat_copy (char *, const char *, ...);






extern char *concat_copy2 (const char *, ...);



extern char *libiberty_concat_ptr;
# 141 "../../include/gnu/libiberty.h"
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
# 203 "../../include/gnu/libiberty.h"
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
# 274 "../../include/gnu/libiberty.h"
extern int pexecute (const char *, char * const *, const char *, const char *, char **, char **, int);




extern int pwait (int, int *, int);





extern int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__nonnull__ (2)));






extern int vasprintf (char **, const char *, va_list)
  __attribute__ ((__format__ (__printf__, 2, 0))) __attribute__ ((__nonnull__ (2)));
# 304 "../../include/gnu/libiberty.h"
extern void * C_alloca (size_t) __attribute__ ((__malloc__));
# 68 "../../libiberty/cplus-dem.c" 2

static char *ada_demangle (const char *, int);







extern void fancy_abort (void) __attribute__ ((__noreturn__));
# 99 "../../libiberty/cplus-dem.c"
enum demangling_styles current_demangling_style = auto_demangling;

static char cplus_markers[] = { '$', '.', '$', '\0' };

static char char_str[2] = { '\000', '\000' };

void
set_cplus_marker_for_demangling (ch)
     int ch;
{
  cplus_markers[0] = ch;
}

typedef struct string
{
  char *b;
  char *p;
  char *e;
} string;




struct work_stuff
{
  int options;
  char **typevec;
  char **ktypevec;
  char **btypevec;
  int numk;
  int numb;
  int ksize;
  int bsize;
  int ntypes;
  int typevec_size;
  int constructor;
  int destructor;
  int static_type;
  int temp_start;
  int type_quals;
  int dllimported;
  char **tmpl_argvec;
  int ntmpl_args;
  int forgetting_types;

  string* previous_argument;
  int nrepeats;

};




static const struct optable
{
  const char *const in;
  const char *const out;
  const int flags;
} optable[] = {
  {"nw", " new", (1 << 1)},
  {"dl", " delete", (1 << 1)},
  {"new", " new", 0},
  {"delete", " delete", 0},
  {"vn", " new []", (1 << 1)},
  {"vd", " delete []", (1 << 1)},
  {"as", "=", (1 << 1)},
  {"ne", "!=", (1 << 1)},
  {"eq", "==", (1 << 1)},
  {"ge", ">=", (1 << 1)},
  {"gt", ">", (1 << 1)},
  {"le", "<=", (1 << 1)},
  {"lt", "<", (1 << 1)},
  {"plus", "+", 0},
  {"pl", "+", (1 << 1)},
  {"apl", "+=", (1 << 1)},
  {"minus", "-", 0},
  {"mi", "-", (1 << 1)},
  {"ami", "-=", (1 << 1)},
  {"mult", "*", 0},
  {"ml", "*", (1 << 1)},
  {"amu", "*=", (1 << 1)},
  {"aml", "*=", (1 << 1)},
  {"convert", "+", 0},
  {"negate", "-", 0},
  {"trunc_mod", "%", 0},
  {"md", "%", (1 << 1)},
  {"amd", "%=", (1 << 1)},
  {"trunc_div", "/", 0},
  {"dv", "/", (1 << 1)},
  {"adv", "/=", (1 << 1)},
  {"truth_andif", "&&", 0},
  {"aa", "&&", (1 << 1)},
  {"truth_orif", "||", 0},
  {"oo", "||", (1 << 1)},
  {"truth_not", "!", 0},
  {"nt", "!", (1 << 1)},
  {"postincrement","++", 0},
  {"pp", "++", (1 << 1)},
  {"postdecrement","--", 0},
  {"mm", "--", (1 << 1)},
  {"bit_ior", "|", 0},
  {"or", "|", (1 << 1)},
  {"aor", "|=", (1 << 1)},
  {"bit_xor", "^", 0},
  {"er", "^", (1 << 1)},
  {"aer", "^=", (1 << 1)},
  {"bit_and", "&", 0},
  {"ad", "&", (1 << 1)},
  {"aad", "&=", (1 << 1)},
  {"bit_not", "~", 0},
  {"co", "~", (1 << 1)},
  {"call", "()", 0},
  {"cl", "()", (1 << 1)},
  {"alshift", "<<", 0},
  {"ls", "<<", (1 << 1)},
  {"als", "<<=", (1 << 1)},
  {"arshift", ">>", 0},
  {"rs", ">>", (1 << 1)},
  {"ars", ">>=", (1 << 1)},
  {"component", "->", 0},
  {"pt", "->", (1 << 1)},
  {"rf", "->", (1 << 1)},
  {"indirect", "*", 0},
  {"method_call", "->()", 0},
  {"addr", "&", 0},
  {"array", "[]", 0},
  {"vc", "[]", (1 << 1)},
  {"compound", ", ", 0},
  {"cm", ", ", (1 << 1)},
  {"cond", "?:", 0},
  {"cn", "?:", (1 << 1)},
  {"max", ">?", 0},
  {"mx", ">?", (1 << 1)},
  {"min", "<?", 0},
  {"mn", "<?", (1 << 1)},
  {"nop", "", 0},
  {"rm", "->*", (1 << 1)},
  {"sz", "sizeof ", (1 << 1)}
};




typedef enum type_kind_t
{
  tk_none,
  tk_pointer,
  tk_reference,
  tk_integral,
  tk_bool,
  tk_char,
  tk_real
} type_kind_t;

const struct demangler_engine libiberty_demanglers[] =
{
  {
    "none",
    no_demangling,
    "Demangling disabled"
  }
  ,
  {
    "auto",
      auto_demangling,
      "Automatic selection based on executable"
  }
  ,
  {
    "gnu",
      gnu_demangling,
      "GNU (g++) style demangling"
  }
  ,
  {
    "lucid",
      lucid_demangling,
      "Lucid (lcc) style demangling"
  }
  ,
  {
    "arm",
      arm_demangling,
      "ARM style demangling"
  }
  ,
  {
    "hp",
      hp_demangling,
      "HP (aCC) style demangling"
  }
  ,
  {
    "edg",
      edg_demangling,
      "EDG style demangling"
  }
  ,
  {
    "gnu-v3",
    gnu_v3_demangling,
    "GNU (g++) V3 ABI-style demangling"
  }
  ,
  {
    "java",
    java_demangling,
    "Java style demangling"
  }
  ,
  {
    "gnat",
    gnat_demangling,
    "GNAT style demangling"
  }
  ,
  {
    ((void *)0), unknown_demangling, ((void *)0)
  }
};
# 334 "../../libiberty/cplus-dem.c"
static void
delete_work_stuff (struct work_stuff *);

static void
delete_non_B_K_work_stuff (struct work_stuff *);

static char *
mop_up (struct work_stuff *, string *, int);

static void
squangle_mop_up (struct work_stuff *);

static void
work_stuff_copy_to_from (struct work_stuff *, struct work_stuff *);






static char *
internal_cplus_demangle (struct work_stuff *, const char *);

static int
demangle_template_template_parm (struct work_stuff *work, const char **, string *);


static int
demangle_template (struct work_stuff *work, const char **, string *, string *, int, int);


static int
arm_pt (struct work_stuff *, const char *, int, const char **, const char **);


static int
demangle_class_name (struct work_stuff *, const char **, string *);

static int
demangle_qualified (struct work_stuff *, const char **, string *, int, int);


static int
demangle_class (struct work_stuff *, const char **, string *);

static int
demangle_fund_type (struct work_stuff *, const char **, string *);

static int
demangle_signature (struct work_stuff *, const char **, string *);

static int
demangle_prefix (struct work_stuff *, const char **, string *);

static int
gnu_special (struct work_stuff *, const char **, string *);

static int
arm_special (const char **, string *);

static void
string_need (string *, int);

static void
string_delete (string *);

static void
string_init (string *);

static void
string_clear (string *);






static void
string_append (string *, const char *);

static void
string_appends (string *, string *);

static void
string_appendn (string *, const char *, int);

static void
string_prepend (string *, const char *);

static void
string_prependn (string *, const char *, int);

static void
string_append_template_idx (string *, int);

static int
get_count (const char **, int *);

static int
consume_count (const char **);

static int
consume_count_with_underscores (const char**);

static int
demangle_args (struct work_stuff *, const char **, string *);

static int
demangle_nested_args (struct work_stuff*, const char**, string*);

static int
do_type (struct work_stuff *, const char **, string *);

static int
do_arg (struct work_stuff *, const char **, string *);

static void
demangle_function_name (struct work_stuff *, const char **, string *, const char *);


static int
iterate_demangle_function (struct work_stuff *, const char **, string *, const char *);


static void
remember_type (struct work_stuff *, const char *, int);

static void
remember_Btype (struct work_stuff *, const char *, int, int);

static int
register_Btype (struct work_stuff *);

static void
remember_Ktype (struct work_stuff *, const char *, int);

static void
forget_types (struct work_stuff *);

static void
forget_B_and_K_types (struct work_stuff *);

static void
string_prepends (string *, string *);

static int
demangle_template_value_parm (struct work_stuff*, const char**, string*, type_kind_t);


static int
do_hpacc_template_const_value (struct work_stuff *, const char **, string *);

static int
do_hpacc_template_literal (struct work_stuff *, const char **, string *);

static int
snarf_numeric_literal (const char **, string *);
# 501 "../../libiberty/cplus-dem.c"
static int
code_for_qualifier (int);

static const char*
qualifier_string (int);

static const char*
demangle_qualifier (int);

static int
demangle_expression (struct work_stuff *, const char **, string *, type_kind_t);


static int
demangle_integral_value (struct work_stuff *, const char **, string *);


static int
demangle_real_value (struct work_stuff *, const char **, string *);

static void
demangle_arm_hp_template (struct work_stuff *, const char **, int, string *);


static void
recursively_demangle (struct work_stuff *, const char **, string *, int);


static void
grow_vect (char **, size_t *, size_t, int);
# 540 "../../libiberty/cplus-dem.c"
static int
consume_count (type)
     const char **type;
{
  int count = 0;

  if (! (_sch_istable[((unsigned char)**type) & 0xff] & (unsigned short)(_sch_isdigit)))
    return -1;

  while ((_sch_istable[((unsigned char)**type) & 0xff] & (unsigned short)(_sch_isdigit)))
    {
      count *= 10;






      if ((count % 10) != 0)
 {
   while ((_sch_istable[((unsigned char) **type) & 0xff] & (unsigned short)(_sch_isdigit)))
     (*type)++;
   return -1;
 }

      count += **type - '0';
      (*type)++;
    }

  if (count < 0)
    count = -1;

  return (count);
}






static int
consume_count_with_underscores (mangled)
     const char **mangled;
{
  int idx;

  if (**mangled == '_')
    {
      (*mangled)++;
      if (!(_sch_istable[((unsigned char)**mangled) & 0xff] & (unsigned short)(_sch_isdigit)))
 return -1;

      idx = consume_count (mangled);
      if (**mangled != '_')

 return -1;

      (*mangled)++;
    }
  else
    {
      if (**mangled < '0' || **mangled > '9')
 return -1;

      idx = **mangled - '0';
      (*mangled)++;
    }

  return idx;
}




static int
code_for_qualifier (c)
  int c;
{
  switch (c)
    {
    case 'C':
      return 0x1;

    case 'V':
      return 0x2;

    case 'u':
      return 0x4;

    default:
      break;
    }


  abort ();
}




static const char*
qualifier_string (type_quals)
     int type_quals;
{
  switch (type_quals)
    {
    case 0x0:
      return "";

    case 0x1:
      return "const";

    case 0x2:
      return "volatile";

    case 0x4:
      return "__restrict";

    case 0x1 | 0x2:
      return "const volatile";

    case 0x1 | 0x4:
      return "const __restrict";

    case 0x2 | 0x4:
      return "volatile __restrict";

    case 0x1 | 0x2 | 0x4:
      return "const volatile __restrict";

    default:
      break;
    }


  abort ();
}





static const char*
demangle_qualifier (c)
  int c;
{
  return qualifier_string (code_for_qualifier (c));
}

int
cplus_demangle_opname (opname, result, options)
     const char *opname;
     char *result;
     int options;
{
  int len, len1, ret;
  string type;
  struct work_stuff work[1];
  const char *tem;

  len = strlen(opname);
  result[0] = '\0';
  ret = 0;
  memset ((char *) work, 0, sizeof (work));
  work->options = options;

  if (opname[0] == '_' && opname[1] == '_'
      && opname[2] == 'o' && opname[3] == 'p')
    {


      tem = opname + 4;
      if (do_type (work, &tem, &type))
 {
   strcat (result, "operator ");
   strncat (result, type.b, type.p - type.b);
   string_delete (&type);
   ret = 1;
 }
    }
  else if (opname[0] == '_' && opname[1] == '_'
    && (_sch_istable[((unsigned char)opname[2]) & 0xff] & (unsigned short)(_sch_islower))
    && (_sch_istable[((unsigned char)opname[3]) & 0xff] & (unsigned short)(_sch_islower)))
    {
      if (opname[4] == '\0')
 {

   size_t i;
   for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); i++)
     {
       if (strlen (optable[i].in) == 2
    && memcmp (optable[i].in, opname + 2, 2) == 0)
  {
    strcat (result, "operator");
    strcat (result, optable[i].out);
    ret = 1;
    break;
  }
     }
 }
      else
 {
   if (opname[2] == 'a' && opname[5] == '\0')
     {

       size_t i;
       for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); i++)
  {
    if (strlen (optable[i].in) == 3
        && memcmp (optable[i].in, opname + 2, 3) == 0)
      {
        strcat (result, "operator");
        strcat (result, optable[i].out);
        ret = 1;
        break;
      }
  }
     }
 }
    }
  else if (len >= 3
    && opname[0] == 'o'
    && opname[1] == 'p'
    && strchr (cplus_markers, opname[2]) != ((void *)0))
    {

      if (len >= 10
   && memcmp (opname + 3, "assign_", 7) == 0)
 {
   size_t i;
   for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); i++)
     {
       len1 = len - 10;
       if ((int) strlen (optable[i].in) == len1
    && memcmp (optable[i].in, opname + 10, len1) == 0)
  {
    strcat (result, "operator");
    strcat (result, optable[i].out);
    strcat (result, "=");
    ret = 1;
    break;
  }
     }
 }
      else
 {
   size_t i;
   for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); i++)
     {
       len1 = len - 3;
       if ((int) strlen (optable[i].in) == len1
    && memcmp (optable[i].in, opname + 3, len1) == 0)
  {
    strcat (result, "operator");
    strcat (result, optable[i].out);
    ret = 1;
    break;
  }
     }
 }
    }
  else if (len >= 5 && memcmp (opname, "type", 4) == 0
    && strchr (cplus_markers, opname[4]) != ((void *)0))
    {

      tem = opname + 5;
      if (do_type (work, &tem, &type))
 {
   strcat (result, "operator ");
   strncat (result, type.b, type.p - type.b);
   string_delete (&type);
   ret = 1;
 }
    }
  squangle_mop_up (work);
  return ret;

}







const char *
cplus_mangle_opname (opname, options)
     const char *opname;
     int options;
{
  size_t i;
  int len;

  len = strlen (opname);
  for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); i++)
    {
      if ((int) strlen (optable[i].out) == len
   && (options & (1 << 1)) == (optable[i].flags & (1 << 1))
   && memcmp (optable[i].out, opname, len) == 0)
 return optable[i].in;
    }
  return (0);
}




enum demangling_styles
cplus_demangle_set_style (style)
     enum demangling_styles style;
{
  const struct demangler_engine *demangler = libiberty_demanglers;

  for (; demangler->demangling_style != unknown_demangling; ++demangler)
    if (style == demangler->demangling_style)
      {
 current_demangling_style = style;
 return current_demangling_style;
      }

  return unknown_demangling;
}



enum demangling_styles
cplus_demangle_name_to_style (name)
     const char *name;
{
  const struct demangler_engine *demangler = libiberty_demanglers;

  for (; demangler->demangling_style != unknown_demangling; ++demangler)
    if (strcmp (name, demangler->demangling_style_name) == 0)
      return demangler->demangling_style;

  return unknown_demangling;
}
# 906 "../../libiberty/cplus-dem.c"
char *
cplus_demangle (mangled, options)
     const char *mangled;
     int options;
{
  char *ret;
  struct work_stuff work[1];

  if (current_demangling_style == no_demangling)
    return xstrdup (mangled);

  memset ((char *) work, 0, sizeof (work));
  work->options = options;
  if ((work->options & ((1 << 8)|(1 << 9)|(1 << 10)|(1 << 11)|(1 << 12)|(1 << 13)|(1 << 14)|(1 << 2)|(1 << 15))) == 0)
    work->options |= (int) current_demangling_style & ((1 << 8)|(1 << 9)|(1 << 10)|(1 << 11)|(1 << 12)|(1 << 13)|(1 << 14)|(1 << 2)|(1 << 15));


  if ((((int) work->options) & (1 << 14)) || (((int) work->options) & (1 << 8)))
    {
      ret = cplus_demangle_v3 (mangled, work->options);
      if (ret || (((int) work->options) & (1 << 14)))
 return ret;
    }

  if ((((int) work->options) & (1 << 2)))
    {
      ret = java_demangle_v3 (mangled);
      if (ret)
        return ret;
    }

  if ((((int) work->options) & (1 << 15)))
    return ada_demangle(mangled,options);

  ret = internal_cplus_demangle (work, mangled);
  squangle_mop_up (work);
  return (ret);
}






static void
grow_vect (old_vect, size, min_size, element_size)
     char **old_vect;
     size_t *size;
     size_t min_size;
     int element_size;
{
  if (*size < min_size)
    {
      *size *= 2;
      if (*size < min_size)
 *size = min_size;
      *old_vect = (void *) xrealloc (*old_vect, *size * element_size);
    }
}
# 974 "../../libiberty/cplus-dem.c"
static char *
ada_demangle (mangled, option)
     const char *mangled;
     int option __attribute__ ((__unused__));
{
  int i, j;
  int len0;
  const char* p;
  char *demangled = ((void *)0);
  int at_start_name;
  int changed;
  size_t demangled_size = 0;

  changed = 0;

  if (strncmp (mangled, "_ada_", 5) == 0)
    {
      mangled += 5;
      changed = 1;
    }

  if (mangled[0] == '_' || mangled[0] == '<')
    goto Suppress;

  p = strstr (mangled, "___");
  if (p == ((void *)0))
    len0 = strlen (mangled);
  else
    {
      if (p[3] == 'X')
 {
   len0 = p - mangled;
   changed = 1;
 }
      else
 goto Suppress;
    }


  grow_vect (&demangled,
      &demangled_size, 2 * len0 + 1,
      sizeof (char));

  if ((_sch_istable[((unsigned char) mangled[len0 - 1]) & 0xff] & (unsigned short)(_sch_isdigit))) {
    for (i = len0 - 2; i >= 0 && (_sch_istable[((unsigned char) mangled[i]) & 0xff] & (unsigned short)(_sch_isdigit)); i -= 1)
      ;
    if (i > 1 && mangled[i] == '_' && mangled[i - 1] == '_')
      {
 len0 = i - 1;
 changed = 1;
      }
    else if (mangled[i] == '$')
      {
 len0 = i;
 changed = 1;
      }
  }

  for (i = 0, j = 0; i < len0 && ! (_sch_istable[((unsigned char)mangled[i]) & 0xff] & (unsigned short)(_sch_isalpha));
       i += 1, j += 1)
    demangled[j] = mangled[i];

  at_start_name = 1;
  while (i < len0)
    {
      at_start_name = 0;

      if (i < len0 - 2 && mangled[i] == '_' && mangled[i + 1] == '_')
 {
   demangled[j] = '.';
   changed = at_start_name = 1;
   i += 2; j += 1;
 }
      else
 {
   demangled[j] = mangled[i];
   i += 1; j += 1;
 }
    }
  demangled[j] = '\000';

  for (i = 0; demangled[i] != '\0'; i += 1)
    if ((_sch_istable[((unsigned char)demangled[i]) & 0xff] & (unsigned short)(_sch_isupper)) || demangled[i] == ' ')
      goto Suppress;

  if (! changed)
    return ((void *)0);
  else
    return demangled;

 Suppress:
  grow_vect (&demangled,
      &demangled_size, strlen (mangled) + 3,
      sizeof (char));

  if (mangled[0] == '<')
     strcpy (demangled, mangled);
  else
    sprintf (demangled, "<%s>", mangled);

  return demangled;
}







static char *
internal_cplus_demangle (work, mangled)
     struct work_stuff *work;
     const char *mangled;
{

  string decl;
  int success = 0;
  char *demangled = ((void *)0);
  int s1, s2, s3, s4;
  s1 = work->constructor;
  s2 = work->destructor;
  s3 = work->static_type;
  s4 = work->type_quals;
  work->constructor = work->destructor = 0;
  work->type_quals = 0x0;
  work->dllimported = 0;

  if ((mangled != ((void *)0)) && (*mangled != '\0'))
    {
      string_init (&decl);
# 1112 "../../libiberty/cplus-dem.c"
      if (((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 9))))
 {
   success = gnu_special (work, &mangled, &decl);
 }
      if (!success)
 {
   success = demangle_prefix (work, &mangled, &decl);
 }
      if (success && (*mangled != '\0'))
 {
   success = demangle_signature (work, &mangled, &decl);
 }
      if (work->constructor == 2)
        {
          string_prepend (&decl, "global constructors keyed to ");
          work->constructor = 0;
        }
      else if (work->destructor == 2)
        {
          string_prepend (&decl, "global destructors keyed to ");
          work->destructor = 0;
        }
      else if (work->dllimported == 1)
        {
          string_prepend (&decl, "import stub for ");
          work->dllimported = 0;
        }
      demangled = mop_up (work, &decl, success);
    }
  work->constructor = s1;
  work->destructor = s2;
  work->static_type = s3;
  work->type_quals = s4;
  return demangled;
}



static void
squangle_mop_up (work)
     struct work_stuff *work;
{

  forget_B_and_K_types (work);
  if (work -> btypevec != ((void *)0))
    {
      free ((char *) work -> btypevec);
    }
  if (work -> ktypevec != ((void *)0))
    {
      free ((char *) work -> ktypevec);
    }
}




static void
work_stuff_copy_to_from (to, from)
     struct work_stuff *to;
     struct work_stuff *from;
{
  int i;

  delete_work_stuff (to);


  memcpy (to, from, sizeof (*to));


  if (from->typevec_size)
    to->typevec
      = (char **) xmalloc (from->typevec_size * sizeof (to->typevec[0]));

  for (i = 0; i < from->ntypes; i++)
    {
      int len = strlen (from->typevec[i]) + 1;

      to->typevec[i] = xmalloc (len);
      memcpy (to->typevec[i], from->typevec[i], len);
    }

  if (from->ksize)
    to->ktypevec
      = (char **) xmalloc (from->ksize * sizeof (to->ktypevec[0]));

  for (i = 0; i < from->numk; i++)
    {
      int len = strlen (from->ktypevec[i]) + 1;

      to->ktypevec[i] = xmalloc (len);
      memcpy (to->ktypevec[i], from->ktypevec[i], len);
    }

  if (from->bsize)
    to->btypevec
      = (char **) xmalloc (from->bsize * sizeof (to->btypevec[0]));

  for (i = 0; i < from->numb; i++)
    {
      int len = strlen (from->btypevec[i]) + 1;

      to->btypevec[i] = xmalloc (len);
      memcpy (to->btypevec[i], from->btypevec[i], len);
    }

  if (from->ntmpl_args)
    to->tmpl_argvec
      = (char **) xmalloc (from->ntmpl_args * sizeof (to->tmpl_argvec[0]));

  for (i = 0; i < from->ntmpl_args; i++)
    {
      int len = strlen (from->tmpl_argvec[i]) + 1;

      to->tmpl_argvec[i] = xmalloc (len);
      memcpy (to->tmpl_argvec[i], from->tmpl_argvec[i], len);
    }

  if (from->previous_argument)
    {
      to->previous_argument = (string*) xmalloc (sizeof (string));
      string_init (to->previous_argument);
      string_appends (to->previous_argument, from->previous_argument);
    }
}




static void
delete_non_B_K_work_stuff (work)
     struct work_stuff *work;
{


  forget_types (work);
  if (work -> typevec != ((void *)0))
    {
      free ((char *) work -> typevec);
      work -> typevec = ((void *)0);
      work -> typevec_size = 0;
    }
  if (work->tmpl_argvec)
    {
      int i;

      for (i = 0; i < work->ntmpl_args; i++)
 if (work->tmpl_argvec[i])
   free ((char*) work->tmpl_argvec[i]);

      free ((char*) work->tmpl_argvec);
      work->tmpl_argvec = ((void *)0);
    }
  if (work->previous_argument)
    {
      string_delete (work->previous_argument);
      free ((char*) work->previous_argument);
      work->previous_argument = ((void *)0);
    }
}



static void
delete_work_stuff (work)
     struct work_stuff *work;
{
  delete_non_B_K_work_stuff (work);
  squangle_mop_up (work);
}




static char *
mop_up (work, declp, success)
     struct work_stuff *work;
     string *declp;
     int success;
{
  char *demangled = ((void *)0);

  delete_non_B_K_work_stuff (work);




  if (!success)
    {
      string_delete (declp);
    }
  else
    {
      string_appendn (declp, "", 1);
      demangled = declp->b;
    }
  return (demangled);
}
# 1341 "../../libiberty/cplus-dem.c"
static int
demangle_signature (work, mangled, declp)
     struct work_stuff *work;
     const char **mangled;
     string *declp;
{
  int success = 1;
  int func_done = 0;
  int expect_func = 0;
  int expect_return_type = 0;
  const char *oldmangled = ((void *)0);
  string trawname;
  string tname;

  while (success && (**mangled != '\0'))
    {
      switch (**mangled)
 {
 case 'Q':
   oldmangled = *mangled;
   success = demangle_qualified (work, mangled, declp, 1, 0);
   if (success)
     remember_type (work, oldmangled, *mangled - oldmangled);
   if ((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 9)))
     expect_func = 1;
   oldmangled = ((void *)0);
   break;

        case 'K':
   oldmangled = *mangled;
   success = demangle_qualified (work, mangled, declp, 1, 0);
   if ((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 9)))
     {
       expect_func = 1;
     }
   oldmangled = ((void *)0);
   break;

 case 'S':

   if (oldmangled == ((void *)0))
     {
       oldmangled = *mangled;
     }
   (*mangled)++;
   work -> static_type = 1;
   break;

 case 'C':
 case 'V':
 case 'u':
   work->type_quals |= code_for_qualifier (**mangled);


   if (oldmangled == ((void *)0))
     oldmangled = *mangled;
   (*mangled)++;
   break;

 case 'L':

   if ((((int) work->options) & (1 << 12)))
     {
       while (**mangled && (**mangled != '_'))
  (*mangled)++;
       if (!**mangled)
  success = 0;
       else
  (*mangled)++;
     }
   else
     success = 0;
   break;

 case '0': case '1': case '2': case '3': case '4':
 case '5': case '6': case '7': case '8': case '9':
   if (oldmangled == ((void *)0))
     {
       oldmangled = *mangled;
     }
          work->temp_start = -1;
   success = demangle_class (work, mangled, declp);
   if (success)
     {
       remember_type (work, oldmangled, *mangled - oldmangled);
     }
   if ((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 9)) || (((int) work->options) & (1 << 13)))
     {


              if (**mangled != 'F')
                 expect_func = 1;
     }
   oldmangled = ((void *)0);
   break;

 case 'B':
   {
     string s;
     success = do_type (work, mangled, &s);
     if (success)
       {
  string_append (&s, ((work->options & (1 << 2)) ? "." : "::"));
  string_prepends (declp, &s);
       }
     oldmangled = ((void *)0);
     expect_func = 1;
   }
   break;

 case 'F':






   oldmangled = ((void *)0);
   func_done = 1;
   (*mangled)++;






   if ((((int) work->options) & (1 << 10)) || (((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 12)) || (((int) work->options) & (1 << 13)))
     {
       forget_types (work);
     }
   success = demangle_args (work, mangled, declp);



   if (success && ((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 13))) && **mangled == '_')
     {
       ++(*mangled);

              success = do_type (work, mangled, &tname);
              string_delete (&tname);
            }

   break;

 case 't':

   string_init(&trawname);
   string_init(&tname);
   if (oldmangled == ((void *)0))
     {
       oldmangled = *mangled;
     }
   success = demangle_template (work, mangled, &tname,
           &trawname, 1, 1);
   if (success)
     {
       remember_type (work, oldmangled, *mangled - oldmangled);
     }
   string_append (&tname, ((work->options & (1 << 2)) ? "." : "::"));

   string_prepends(declp, &tname);
   if (work -> destructor & 1)
     {
       string_prepend (&trawname, "~");
       string_appends (declp, &trawname);
       work->destructor -= 1;
     }
   if ((work->constructor & 1) || (work->destructor & 1))
     {
       string_appends (declp, &trawname);
       work->constructor -= 1;
     }
   string_delete(&trawname);
   string_delete(&tname);
   oldmangled = ((void *)0);
   expect_func = 1;
   break;

 case '_':
   if (((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 9))) && expect_return_type)
     {

       string return_type;
       string_init (&return_type);

       (*mangled)++;
       success = do_type (work, mangled, &return_type);
       {if (!((&return_type) -> b == (&return_type) -> p)) string_append(&return_type, " ");};

       string_prepends (declp, &return_type);
       string_delete (&return_type);
       break;
     }
   else
# 1543 "../../libiberty/cplus-dem.c"
            if ((((int) work->options) & (1 << 12)))
              {
                (*mangled)++;
                while (**mangled && (_sch_istable[((unsigned char)**mangled) & 0xff] & (unsigned short)(_sch_isdigit)))
                  (*mangled)++;
              }
            else
       success = 0;
   break;

 case 'H':
   if ((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 9)))
     {

       success = demangle_template (work, mangled, declp, 0, 0,
        0);
       if (!(work->constructor & 1))
  expect_return_type = 1;
       (*mangled)++;
       break;
     }
   else

     {;}

 default:
   if ((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 9)))
     {


       func_done = 1;
       success = demangle_args (work, mangled, declp);
     }
   else
     {




       success = 0;
     }
   break;
 }



      {
 if (success && expect_func)
   {
     func_done = 1;
              if ((((int) work->options) & (1 << 10)) || (((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 13)))
                {
                  forget_types (work);
                }
     success = demangle_args (work, mangled, declp);



     expect_func = 0;
   }
      }
    }
  if (success && !func_done)
    {
      if ((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 9)))
 {






   success = demangle_args (work, mangled, declp);
 }
    }
  if (success && (work -> options & (1 << 0)))
    {
      if (work->static_type)
 string_append (declp, " static");
      if (work->type_quals != 0x0)
 {
   {if (!((declp) -> b == (declp) -> p)) string_append(declp, " ");};
   string_append (declp, qualifier_string (work->type_quals));
 }
    }

  return (success);
}
# 1657 "../../libiberty/cplus-dem.c"
static int
demangle_template_template_parm (work, mangled, tname)
     struct work_stuff *work;
     const char **mangled;
     string *tname;
{
  int i;
  int r;
  int need_comma = 0;
  int success = 1;
  string temp;

  string_append (tname, "template <");

  if (get_count (mangled, &r))
    {
      for (i = 0; i < r; i++)
 {
   if (need_comma)
     {
       string_append (tname, ", ");
     }


     if (**mangled == 'Z')
       {
  (*mangled)++;
  string_append (tname, "class");
       }

     else if (**mangled == 'z')
       {
  (*mangled)++;
  success =
    demangle_template_template_parm (work, mangled, tname);
  if (!success)
    {
      break;
    }
       }
     else
       {

  success = do_type (work, mangled, &temp);
  if (success)
    {
      string_appends (tname, &temp);
    }
  string_delete(&temp);
  if (!success)
    {
      break;
    }
       }
   need_comma = 1;
 }

    }
  if (tname->p[-1] == '>')
    string_append (tname, " ");
  string_append (tname, "> class");
  return (success);
}

static int
demangle_expression (work, mangled, s, tk)
     struct work_stuff *work;
     const char** mangled;
     string* s;
     type_kind_t tk;
{
  int need_operator = 0;
  int success;

  success = 1;
  string_appendn (s, "(", 1);
  (*mangled)++;
  while (success && **mangled != 'W' && **mangled != '\0')
    {
      if (need_operator)
 {
   size_t i;
   size_t len;

   success = 0;

   len = strlen (*mangled);

   for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); ++i)
     {
       size_t l = strlen (optable[i].in);

       if (l <= len
    && memcmp (optable[i].in, *mangled, l) == 0)
  {
    string_appendn (s, " ", 1);
    string_append (s, optable[i].out);
    string_appendn (s, " ", 1);
    success = 1;
    (*mangled) += l;
    break;
  }
     }

   if (!success)
     break;
 }
      else
 need_operator = 1;

      success = demangle_template_value_parm (work, mangled, s, tk);
    }

  if (**mangled != 'W')
    success = 0;
  else
    {
      string_appendn (s, ")", 1);
      (*mangled)++;
    }

  return success;
}

static int
demangle_integral_value (work, mangled, s)
     struct work_stuff *work;
     const char** mangled;
     string* s;
{
  int success;

  if (**mangled == 'E')
    success = demangle_expression (work, mangled, s, tk_integral);
  else if (**mangled == 'Q' || **mangled == 'K')
    success = demangle_qualified (work, mangled, s, 0, 1);
  else
    {
      int value;



      int multidigit_without_leading_underscore = 0;
      int leave_following_underscore = 0;

      success = 0;


      if (**mangled == 'm')
 {
   string_appendn (s, "-", 1);
   (*mangled)++;
 }
      else if (mangled[0][0] == '_' && mangled[0][1] == 'm')
 {




   multidigit_without_leading_underscore = 1;
   string_appendn (s, "-", 1);
   (*mangled) += 2;
 }
      else if (**mangled == '_')
 {



   leave_following_underscore = 1;
 }
      else
 {




   multidigit_without_leading_underscore = 1;


   leave_following_underscore = 1;
 }





      if (multidigit_without_leading_underscore)
 value = consume_count (mangled);
      else
 value = consume_count_with_underscores (mangled);

      if (value != -1)
 {
   char buf[32];
   sprintf (buf, "%d", value);
   string_append (s, buf);
# 1861 "../../libiberty/cplus-dem.c"
   if ((value > 9 || multidigit_without_leading_underscore)
       && ! leave_following_underscore
       && **mangled == '_')
     (*mangled)++;


   success = 1;
 }
    }

  return success;
}



static int
demangle_real_value (work, mangled, s)
     struct work_stuff *work;
     const char **mangled;
     string* s;
{
  if (**mangled == 'E')
    return demangle_expression (work, mangled, s, tk_real);

  if (**mangled == 'm')
    {
      string_appendn (s, "-", 1);
      (*mangled)++;
    }
  while ((_sch_istable[((unsigned char)**mangled) & 0xff] & (unsigned short)(_sch_isdigit)))
    {
      string_appendn (s, *mangled, 1);
      (*mangled)++;
    }
  if (**mangled == '.')
    {
      string_appendn (s, ".", 1);
      (*mangled)++;
      while ((_sch_istable[((unsigned char)**mangled) & 0xff] & (unsigned short)(_sch_isdigit)))
 {
   string_appendn (s, *mangled, 1);
   (*mangled)++;
 }
    }
  if (**mangled == 'e')
    {
      string_appendn (s, "e", 1);
      (*mangled)++;
      while ((_sch_istable[((unsigned char)**mangled) & 0xff] & (unsigned short)(_sch_isdigit)))
 {
   string_appendn (s, *mangled, 1);
   (*mangled)++;
 }
    }

  return 1;
}

static int
demangle_template_value_parm (work, mangled, s, tk)
     struct work_stuff *work;
     const char **mangled;
     string* s;
     type_kind_t tk;
{
  int success = 1;

  if (**mangled == 'Y')
    {

      int idx;

      (*mangled)++;
      idx = consume_count_with_underscores (mangled);
      if (idx == -1
   || (work->tmpl_argvec && idx >= work->ntmpl_args)
   || consume_count_with_underscores (mangled) == -1)
 return -1;
      if (work->tmpl_argvec)
 string_append (s, work->tmpl_argvec[idx]);
      else
 string_append_template_idx (s, idx);
    }
  else if (tk == tk_integral)
    success = demangle_integral_value (work, mangled, s);
  else if (tk == tk_char)
    {
      char tmp[2];
      int val;
      if (**mangled == 'm')
 {
   string_appendn (s, "-", 1);
   (*mangled)++;
 }
      string_appendn (s, "'", 1);
      val = consume_count(mangled);
      if (val <= 0)
 success = 0;
      else
 {
   tmp[0] = (char)val;
   tmp[1] = '\0';
   string_appendn (s, &tmp[0], 1);
   string_appendn (s, "'", 1);
 }
    }
  else if (tk == tk_bool)
    {
      int val = consume_count (mangled);
      if (val == 0)
 string_appendn (s, "false", 5);
      else if (val == 1)
 string_appendn (s, "true", 4);
      else
 success = 0;
    }
  else if (tk == tk_real)
    success = demangle_real_value (work, mangled, s);
  else if (tk == tk_pointer || tk == tk_reference)
    {
      if (**mangled == 'Q')
 success = demangle_qualified (work, mangled, s,
                         0,
                     1);
      else
 {
   int symbol_len = consume_count (mangled);
   if (symbol_len == -1)
     return -1;
   if (symbol_len == 0)
     string_appendn (s, "0", 1);
   else
     {
       char *p = xmalloc (symbol_len + 1), *q;
       strncpy (p, *mangled, symbol_len);
       p [symbol_len] = '\0';





       q = cplus_demangle (p, work->options);
       if (tk == tk_pointer)
  string_appendn (s, "&", 1);


       if (q)
  {
    string_append (s, q);
    free (q);
  }
       else
  string_append (s, p);
       free (p);
     }
   *mangled += symbol_len;
 }
    }

  return success;
}
# 2031 "../../libiberty/cplus-dem.c"
static int
demangle_template (work, mangled, tname, trawname, is_type, remember)
     struct work_stuff *work;
     const char **mangled;
     string *tname;
     string *trawname;
     int is_type;
     int remember;
{
  int i;
  int r;
  int need_comma = 0;
  int success = 0;
  const char *start;
  int is_java_array = 0;
  string temp;
  int bindex = 0;

  (*mangled)++;
  if (is_type)
    {
      if (remember)
 bindex = register_Btype (work);
      start = *mangled;

      if (**mangled == 'z')
 {
   int idx;
   (*mangled)++;
   (*mangled)++;

   idx = consume_count_with_underscores (mangled);
   if (idx == -1
       || (work->tmpl_argvec && idx >= work->ntmpl_args)
       || consume_count_with_underscores (mangled) == -1)
     return (0);

   if (work->tmpl_argvec)
     {
       string_append (tname, work->tmpl_argvec[idx]);
       if (trawname)
  string_append (trawname, work->tmpl_argvec[idx]);
     }
   else
     {
       string_append_template_idx (tname, idx);
       if (trawname)
  string_append_template_idx (trawname, idx);
     }
 }
      else
 {
   if ((r = consume_count (mangled)) <= 0
       || (int) strlen (*mangled) < r)
     {
       return (0);
     }
   is_java_array = (work -> options & (1 << 2))
     && strncmp (*mangled, "JArray1Z", 8) == 0;
   if (! is_java_array)
     {
       string_appendn (tname, *mangled, r);
     }
   if (trawname)
     string_appendn (trawname, *mangled, r);
   *mangled += r;
 }
    }
  if (!is_java_array)
    string_append (tname, "<");

  if (!get_count (mangled, &r))
    {
      return (0);
    }
  if (!is_type)
    {

      work->tmpl_argvec = (char**) xmalloc (r * sizeof (char *));
      work->ntmpl_args = r;
      for (i = 0; i < r; i++)
 work->tmpl_argvec[i] = 0;
    }
  for (i = 0; i < r; i++)
    {
      if (need_comma)
 {
   string_append (tname, ", ");
 }

      if (**mangled == 'Z')
 {
   (*mangled)++;

   success = do_type (work, mangled, &temp);
   if (success)
     {
       string_appends (tname, &temp);

       if (!is_type)
  {

    int len = temp.p - temp.b;
    work->tmpl_argvec[i] = xmalloc (len + 1);
    memcpy (work->tmpl_argvec[i], temp.b, len);
    work->tmpl_argvec[i][len] = '\0';
  }
     }
   string_delete(&temp);
   if (!success)
     {
       break;
     }
 }

      else if (**mangled == 'z')
 {
   int r2;
   (*mangled)++;
   success = demangle_template_template_parm (work, mangled, tname);

   if (success
       && (r2 = consume_count (mangled)) > 0
       && (int) strlen (*mangled) >= r2)
     {
       string_append (tname, " ");
       string_appendn (tname, *mangled, r2);
       if (!is_type)
  {

    int len = r2;
    work->tmpl_argvec[i] = xmalloc (len + 1);
    memcpy (work->tmpl_argvec[i], *mangled, len);
    work->tmpl_argvec[i][len] = '\0';
  }
       *mangled += r2;
     }
   if (!success)
     {
       break;
     }
 }
      else
 {
   string param;
   string* s;




   success = do_type (work, mangled, &temp);
   string_delete(&temp);
   if (!success)
     break;

   if (!is_type)
     {
       s = &param;
       string_init (s);
     }
   else
     s = tname;

   success = demangle_template_value_parm (work, mangled, s,
        (type_kind_t) success);

   if (!success)
     {
       if (!is_type)
  string_delete (s);
       success = 0;
       break;
     }

   if (!is_type)
     {
       int len = s->p - s->b;
       work->tmpl_argvec[i] = xmalloc (len + 1);
       memcpy (work->tmpl_argvec[i], s->b, len);
       work->tmpl_argvec[i][len] = '\0';

       string_appends (tname, s);
       string_delete (s);
     }
 }
      need_comma = 1;
    }
  if (is_java_array)
    {
      string_append (tname, "[]");
    }
  else
    {
      if (tname->p[-1] == '>')
 string_append (tname, " ");
      string_append (tname, ">");
    }

  if (is_type && remember)
    remember_Btype (work, tname->b, ( (((tname) -> b == (tname) -> p))?0:((tname)->p - (tname)->b)), bindex);
# 2245 "../../libiberty/cplus-dem.c"
  return (success);
}

static int
arm_pt (work, mangled, n, anchor, args)
     struct work_stuff *work;
     const char *mangled;
     int n;
     const char **anchor, **args;
{


  if (((((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 12))) && (*anchor = strstr (mangled, "__pt__")))
    {
      int len;
      *args = *anchor + 6;
      len = consume_count (args);
      if (len == -1)
 return 0;
      if (*args + len == mangled + n && **args == '_')
 {
   ++*args;
   return 1;
 }
    }
  if ((((int) work->options) & (1 << 8)) || (((int) work->options) & (1 << 13)))
    {
      if ((*anchor = strstr (mangled, "__tm__"))
          || (*anchor = strstr (mangled, "__ps__"))
          || (*anchor = strstr (mangled, "__pt__")))
        {
          int len;
          *args = *anchor + 6;
          len = consume_count (args);
   if (len == -1)
     return 0;
          if (*args + len == mangled + n && **args == '_')
            {
              ++*args;
              return 1;
            }
        }
      else if ((*anchor = strstr (mangled, "__S")))
        {
    int len;
    *args = *anchor + 3;
    len = consume_count (args);
   if (len == -1)
     return 0;
    if (*args + len == mangled + n && **args == '_')
            {
              ++*args;
        return 1;
            }
        }
    }

  return 0;
}

static void
demangle_arm_hp_template (work, mangled, n, declp)
     struct work_stuff *work;
     const char **mangled;
     int n;
     string *declp;
{
  const char *p;
  const char *args;
  const char *e = *mangled + n;
  string arg;



  if ((((int) work->options) & (1 << 12)) && ((*mangled)[n] == 'X'))
    {
      char *start_spec_args = ((void *)0);



      start_spec_args = strchr (*mangled, '<');
      if (start_spec_args && (start_spec_args - *mangled < n))
        string_appendn (declp, *mangled, start_spec_args - *mangled);
      else
        string_appendn (declp, *mangled, n);
      (*mangled) += n + 1;
      string_init (&arg);
      if (work->temp_start == -1)
        work->temp_start = declp->p - declp->b;
      string_append (declp, "<");
      while (1)
        {
          string_clear (&arg);
          switch (**mangled)
            {
              case 'T':

                (*mangled)++;
                if (!do_type (work, mangled, &arg))
                  goto hpacc_template_args_done;
                break;

              case 'U':
              case 'S':

                if (!do_hpacc_template_const_value (work, mangled, &arg))
                  goto hpacc_template_args_done;
                break;

              case 'A':

                if (!do_hpacc_template_literal (work, mangled, &arg))
                  goto hpacc_template_args_done;
                break;

              default:



                goto hpacc_template_args_done;
            }
          string_appends (declp, &arg);



          if ((**mangled == '\000') || (**mangled == '_'))
            break;
          else
            string_append (declp, ",");
        }
    hpacc_template_args_done:
      string_append (declp, ">");
      string_delete (&arg);
      if (**mangled == '_')
        (*mangled)++;
      return;
    }

  else if (arm_pt (work, *mangled, n, &p, &args))
    {
      string type_str;

      string_init (&arg);
      string_appendn (declp, *mangled, p - *mangled);
      if (work->temp_start == -1)
 work->temp_start = declp->p - declp->b;
      string_append (declp, "<");

      while (args < e) {
 string_clear (&arg);


 switch (*args)
   {



          case 'X':

            args++;
            if (!do_type (work, &args, &type_str))
       goto cfront_template_args_done;
            string_append (&arg, "(");
            string_appends (&arg, &type_str);
            string_append (&arg, ")");
            if (*args != 'L')
              goto cfront_template_args_done;
            args++;

            if (!snarf_numeric_literal (&args, &arg))
       goto cfront_template_args_done;
            break;

          case 'L':

            args++;
            if (!snarf_numeric_literal (&args, &arg))
       goto cfront_template_args_done;
            break;
          default:

            {
              const char* old_args = args;
              if (!do_type (work, &args, &arg))
                goto cfront_template_args_done;


              if (args == old_args)
                return;
            }
   }
 string_appends (declp, &arg);
 string_append (declp, ",");
      }
    cfront_template_args_done:
      string_delete (&arg);
      if (args >= e)
 --declp->p;
      string_append (declp, ">");
    }
  else if (n>10 && strncmp (*mangled, "_GLOBAL_", 8) == 0
    && (*mangled)[9] == 'N'
    && (*mangled)[8] == (*mangled)[10]
    && strchr (cplus_markers, (*mangled)[8]))
    {

      string_append (declp, "{anonymous}");
    }
  else
    {
      if (work->temp_start == -1)
 work->temp_start = 0;
      string_appendn (declp, *mangled, n);
    }
  *mangled += n;
}





static int
demangle_class_name (work, mangled, declp)
     struct work_stuff *work;
     const char **mangled;
     string *declp;
{
  int n;
  int success = 0;

  n = consume_count (mangled);
  if (n == -1)
    return 0;
  if ((int) strlen (*mangled) >= n)
    {
      demangle_arm_hp_template (work, mangled, n, declp);
      success = 1;
    }

  return (success);
}
# 2522 "../../libiberty/cplus-dem.c"
static int
demangle_class (work, mangled, declp)
     struct work_stuff *work;
     const char **mangled;
     string *declp;
{
  int success = 0;
  int btype;
  string class_name;
  char *save_class_name_end = 0;

  string_init (&class_name);
  btype = register_Btype (work);
  if (demangle_class_name (work, mangled, &class_name))
    {
      save_class_name_end = class_name.p;
      if ((work->constructor & 1) || (work->destructor & 1))
 {

          if (work->temp_start && (work->temp_start != -1))
            {
              class_name.p = class_name.b + work->temp_start;
            }
   string_prepends (declp, &class_name);
   if (work -> destructor & 1)
     {
       string_prepend (declp, "~");
              work -> destructor -= 1;
     }
   else
     {
       work -> constructor -= 1;
     }
 }
      class_name.p = save_class_name_end;
      remember_Ktype (work, class_name.b, ( (((&class_name) -> b == (&class_name) -> p))?0:((&class_name)->p - (&class_name)->b)));
      remember_Btype (work, class_name.b, ( (((&class_name) -> b == (&class_name) -> p))?0:((&class_name)->p - (&class_name)->b)), btype);
      string_prepend (declp, ((work->options & (1 << 2)) ? "." : "::"));
      string_prepends (declp, &class_name);
      success = 1;
    }
  string_delete (&class_name);
  return (success);
}
# 2577 "../../libiberty/cplus-dem.c"
static int
iterate_demangle_function (work, mangled, declp, scan)
     struct work_stuff *work;
     const char **mangled;
     string *declp;
     const char *scan;
{
  const char *mangle_init = *mangled;
  int success = 0;
  string decl_init;
  struct work_stuff work_init;

  if (*(scan + 2) == '\0')
    return 0;



  if ((((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 10)) || (((int) work->options) & (1 << 12)) || (((int) work->options) & (1 << 13))
      || strstr (scan + 2, "__") == ((void *)0))
    {
      demangle_function_name (work, mangled, declp, scan);
      return 1;
    }



  string_init (&decl_init);
  string_appends (&decl_init, declp);
  memset (&work_init, 0, sizeof work_init);
  work_stuff_copy_to_from (&work_init, work);







  while (scan[2])
    {
      demangle_function_name (work, mangled, declp, scan);
      success = demangle_signature (work, mangled, declp);
      if (success)
 break;


      *mangled = mangle_init;
      string_clear (declp);
      string_appends (declp, &decl_init);
      work_stuff_copy_to_from (work, &work_init);


      scan += 2;


      while (*scan && (scan[0] != '_' || scan[1] != '_'))
 scan++;


      while (*scan && *scan == '_')
 scan++;
      scan -= 2;
    }


  delete_work_stuff (&work_init);
  string_delete (&decl_init);

  return success;
}
# 2680 "../../libiberty/cplus-dem.c"
static int
demangle_prefix (work, mangled, declp)
     struct work_stuff *work;
     const char **mangled;
     string *declp;
{
  int success = 1;
  const char *scan;
  int i;

  if (strlen(*mangled) > 6
      && (strncmp(*mangled, "_imp__", 6) == 0
          || strncmp(*mangled, "__imp_", 6) == 0))
    {



      (*mangled) += 6;
      work->dllimported = 1;
    }
  else if (strlen(*mangled) >= 11 && strncmp(*mangled, "_GLOBAL_", 8) == 0)
    {
      char *marker = strchr (cplus_markers, (*mangled)[8]);
      if (marker != ((void *)0) && *marker == (*mangled)[10])
 {
   if ((*mangled)[9] == 'D')
     {

       (*mangled) += 11;
       work->destructor = 2;
       if (gnu_special (work, mangled, declp))
  return success;
     }
   else if ((*mangled)[9] == 'I')
     {

       (*mangled) += 11;
       work->constructor = 2;
       if (gnu_special (work, mangled, declp))
  return success;
     }
 }
    }
  else if (((((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 12)) || (((int) work->options) & (1 << 13))) && strncmp(*mangled, "__std__", 7) == 0)
    {

      (*mangled) += 7;
      work->destructor = 2;
    }
  else if (((((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 12)) || (((int) work->options) & (1 << 13))) && strncmp(*mangled, "__sti__", 7) == 0)
    {

      (*mangled) += 7;
      work->constructor = 2;
    }





  {
    scan = *mangled;

    do {
      scan = strchr (scan, '_');
    } while (scan != ((void *)0) && *++scan != '_');

    if (scan != ((void *)0)) --scan;
  }

  if (scan != ((void *)0))
    {


      i = strspn (scan, "_");
      if (i > 2)
 {
   scan += (i - 2);
 }
    }

  if (scan == ((void *)0))
    {
      success = 0;
    }
  else if (work -> static_type)
    {
      if (!(_sch_istable[((unsigned char)scan[0]) & 0xff] & (unsigned short)(_sch_isdigit)) && (scan[0] != 't'))
 {
   success = 0;
 }
    }
  else if ((scan == *mangled)
    && ((_sch_istable[((unsigned char)scan[2]) & 0xff] & (unsigned short)(_sch_isdigit)) || (scan[2] == 'Q')
        || (scan[2] == 't') || (scan[2] == 'K') || (scan[2] == 'H')))
    {



      if (((((int) work->options) & (1 << 10)) || (((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 12)))
   && (_sch_istable[((unsigned char)scan[2]) & 0xff] & (unsigned short)(_sch_isdigit)))
 {
   *mangled = scan + 2;
   consume_count (mangled);
   string_append (declp, *mangled);
   *mangled += strlen (*mangled);
   success = 1;
 }
      else
 {




   if (!((((int) work->options) & (1 << 10)) || (((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 12)) || (((int) work->options) & (1 << 13))))
     work -> constructor += 1;
   *mangled = scan + 2;
 }
    }
  else if ((((int) work->options) & (1 << 11)) && scan[2] == 'p' && scan[3] == 't')
    {

      success = 1;


      demangle_arm_hp_template (work, mangled, strlen (*mangled), declp);
    }
  else if ((((int) work->options) & (1 << 13)) && ((scan[2] == 't' && scan[3] == 'm')
                              || (scan[2] == 'p' && scan[3] == 's')
                              || (scan[2] == 'p' && scan[3] == 't')))
    {

      success = 1;


      demangle_arm_hp_template (work, mangled, strlen (*mangled), declp);
    }
  else if ((scan == *mangled) && !(_sch_istable[((unsigned char)scan[2]) & 0xff] & (unsigned short)(_sch_isdigit))
    && (scan[2] != 't'))
    {



      if (!((((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 10)) || (((int) work->options) & (1 << 12)) || (((int) work->options) & (1 << 13)))
   || (arm_special (mangled, declp) == 0))
 {
   while (*scan == '_')
     {
       scan++;
     }
   if ((scan = strstr (scan, "__")) == ((void *)0) || (*(scan + 2) == '\0'))
     {


       success = 0;
     }
   else
     return iterate_demangle_function (work, mangled, declp, scan);
 }
    }
  else if (*(scan + 2) != '\0')
    {




      return iterate_demangle_function (work, mangled, declp, scan);
    }
  else
    {

      success = 0;
    }

  if (!success && (work->constructor == 2 || work->destructor == 2))
    {
      string_append (declp, *mangled);
      *mangled += strlen (*mangled);
      success = 1;
    }
  return (success);
}
# 2891 "../../libiberty/cplus-dem.c"
static int
gnu_special (work, mangled, declp)
     struct work_stuff *work;
     const char **mangled;
     string *declp;
{
  int n;
  int success = 1;
  const char *p;

  if ((*mangled)[0] == '_'
      && strchr (cplus_markers, (*mangled)[1]) != ((void *)0)
      && (*mangled)[2] == '_')
    {

      (*mangled) += 3;
      work -> destructor += 1;
    }
  else if ((*mangled)[0] == '_'
    && (((*mangled)[1] == '_'
  && (*mangled)[2] == 'v'
  && (*mangled)[3] == 't'
  && (*mangled)[4] == '_')
        || ((*mangled)[1] == 'v'
     && (*mangled)[2] == 't'
     && strchr (cplus_markers, (*mangled)[3]) != ((void *)0))))
    {




      if ((*mangled)[2] == 'v')
 (*mangled) += 5;
      else
 (*mangled) += 4;
      while (**mangled != '\0')
 {
   switch (**mangled)
     {
     case 'Q':
     case 'K':
       success = demangle_qualified (work, mangled, declp, 0, 1);
       break;
     case 't':
       success = demangle_template (work, mangled, declp, 0, 1,
        1);
       break;
     default:
       if ((_sch_istable[((unsigned char)*mangled[0]) & 0xff] & (unsigned short)(_sch_isdigit)))
  {
    n = consume_count(mangled);




    if (n > (int) strlen (*mangled))
      {
        success = 1;
        break;
      }
  }
       else
  {
    n = strcspn (*mangled, cplus_markers);
  }
       string_appendn (declp, *mangled, n);
       (*mangled) += n;
     }

   p = strpbrk (*mangled, cplus_markers);
   if (success && ((p == ((void *)0)) || (p == *mangled)))
     {
       if (p != ((void *)0))
  {
    string_append (declp, ((work->options & (1 << 2)) ? "." : "::"));
    (*mangled)++;
  }
     }
   else
     {
       success = 0;
       break;
     }
 }
      if (success)
 string_append (declp, " virtual table");
    }
  else if ((*mangled)[0] == '_'
    && (strchr("0123456789Qt", (*mangled)[1]) != ((void *)0))
    && (p = strpbrk (*mangled, cplus_markers)) != ((void *)0))
    {

      (*mangled)++;
      switch (**mangled)
 {
 case 'Q':
 case 'K':
   success = demangle_qualified (work, mangled, declp, 0, 1);
   break;
 case 't':
   success = demangle_template (work, mangled, declp, 0, 1, 1);
   break;
 default:
   n = consume_count (mangled);
   if (n < 0 || n > (long) strlen (*mangled))
     {
       success = 0;
       break;
     }

   if (n > 10 && strncmp (*mangled, "_GLOBAL_", 8) == 0
       && (*mangled)[9] == 'N'
       && (*mangled)[8] == (*mangled)[10]
       && strchr (cplus_markers, (*mangled)[8]))
     {




       string_append (declp, "{anonymous}");
       (*mangled) += n;



       p = strpbrk (*mangled, cplus_markers);
       break;
     }

   string_appendn (declp, *mangled, n);
   (*mangled) += n;
 }
      if (success && (p == *mangled))
 {


   (*mangled)++;
   string_append (declp, ((work->options & (1 << 2)) ? "." : "::"));
   n = strlen (*mangled);
   string_appendn (declp, *mangled, n);
   (*mangled) += n;
 }
      else
 {
   success = 0;
 }
    }
  else if (strncmp (*mangled, "__thunk_", 8) == 0)
    {
      int delta;

      (*mangled) += 8;
      delta = consume_count (mangled);
      if (delta == -1)
 success = 0;
      else
 {
   char *method = internal_cplus_demangle (work, ++*mangled);

   if (method)
     {
       char buf[50];
       sprintf (buf, "virtual function thunk (delta:%d) for ", -delta);
       string_append (declp, buf);
       string_append (declp, method);
       free (method);
       n = strlen (*mangled);
       (*mangled) += n;
     }
   else
     {
       success = 0;
     }
 }
    }
  else if (strncmp (*mangled, "__t", 3) == 0
    && ((*mangled)[3] == 'i' || (*mangled)[3] == 'f'))
    {
      p = (*mangled)[3] == 'i' ? " type_info node" : " type_info function";
      (*mangled) += 4;
      switch (**mangled)
 {
 case 'Q':
 case 'K':
   success = demangle_qualified (work, mangled, declp, 0, 1);
   break;
 case 't':
   success = demangle_template (work, mangled, declp, 0, 1, 1);
   break;
 default:
   success = do_type (work, mangled, declp);
   break;
 }
      if (success && **mangled != '\0')
 success = 0;
      if (success)
 string_append (declp, p);
    }
  else
    {
      success = 0;
    }
  return (success);
}

static void
recursively_demangle(work, mangled, result, namelength)
     struct work_stuff *work;
     const char **mangled;
     string *result;
     int namelength;
{
  char * recurse = (char *)((void *)0);
  char * recurse_dem = (char *)((void *)0);

  recurse = (char *) xmalloc (namelength + 1);
  memcpy (recurse, *mangled, namelength);
  recurse[namelength] = '\000';

  recurse_dem = cplus_demangle (recurse, work->options);

  if (recurse_dem)
    {
      string_append (result, recurse_dem);
      free (recurse_dem);
    }
  else
    {
      string_appendn (result, *mangled, namelength);
    }
  free (recurse);
  *mangled += namelength;
}
# 3147 "../../libiberty/cplus-dem.c"
static int
arm_special (mangled, declp)
     const char **mangled;
     string *declp;
{
  int n;
  int success = 1;
  const char *scan;

  if (strncmp (*mangled, "__vtbl__", 8) == 0)
    {




      scan = *mangled + 8;
      while (*scan != '\0')
        {
          n = consume_count (&scan);
          if (n == -1)
     {
       return (0);
     }
          scan += n;
          if (scan[0] == '_' && scan[1] == '_')
     {
       scan += 2;
     }
        }
      (*mangled) += 8;
      while (**mangled != '\0')
 {
   n = consume_count (mangled);
          if (n == -1
       || n > (long) strlen (*mangled))
     return 0;
   string_prependn (declp, *mangled, n);
   (*mangled) += n;
   if ((*mangled)[0] == '_' && (*mangled)[1] == '_')
     {
       string_prepend (declp, "::");
       (*mangled) += 2;
     }
 }
      string_append (declp, " virtual table");
    }
  else
    {
      success = 0;
    }
  return (success);
}
# 3232 "../../libiberty/cplus-dem.c"
static int
demangle_qualified (work, mangled, result, isfuncname, append)
     struct work_stuff *work;
     const char **mangled;
     string *result;
     int isfuncname;
     int append;
{
  int qualifiers = 0;
  int success = 1;
  char num[2];
  string temp;
  string last_name;
  int bindex = register_Btype (work);



  isfuncname = (isfuncname
  && ((work->constructor & 1) || (work->destructor & 1)));

  string_init (&temp);
  string_init (&last_name);

  if ((*mangled)[0] == 'K')
    {

      int idx;
      (*mangled)++;
      idx = consume_count_with_underscores (mangled);
      if (idx == -1 || idx >= work -> numk)
        success = 0;
      else
        string_append (&temp, work -> ktypevec[idx]);
    }
  else
    switch ((*mangled)[1])
    {
    case '_':



      (*mangled)++;
      qualifiers = consume_count_with_underscores (mangled);
      if (qualifiers == -1)
 success = 0;
      break;

    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':

      num[0] = (*mangled)[1];
      num[1] = '\0';
      qualifiers = atoi (num);




      if ((*mangled)[2] == '_')
 {
   (*mangled)++;
 }
      (*mangled) += 2;
      break;

    case '0':
    default:
      success = 0;
    }

  if (!success)
    return success;




  while (qualifiers-- > 0)
    {
      int remember_K = 1;
      string_clear (&last_name);

      if (*mangled[0] == '_')
 (*mangled)++;

      if (*mangled[0] == 't')
 {






   success = demangle_template(work, mangled, &temp,
          &last_name, 1, 0);
   if (!success)
     break;
 }
      else if (*mangled[0] == 'K')
 {
          int idx;
          (*mangled)++;
          idx = consume_count_with_underscores (mangled);
          if (idx == -1 || idx >= work->numk)
            success = 0;
          else
            string_append (&temp, work->ktypevec[idx]);
          remember_K = 0;

   if (!success) break;
 }
      else
 {
   if ((((int) work->options) & (1 << 13)))
            {
       int namelength;



       namelength = consume_count (mangled);
       if (namelength == -1)
  {
    success = 0;
    break;
  }
        recursively_demangle(work, mangled, &temp, namelength);
            }
          else
            {
              success = do_type (work, mangled, &last_name);
              if (!success)
                break;
              string_appends (&temp, &last_name);
            }
 }

      if (remember_K)
 remember_Ktype (work, temp.b, ( (((&temp) -> b == (&temp) -> p))?0:((&temp)->p - (&temp)->b)));

      if (qualifiers > 0)
 string_append (&temp, ((work->options & (1 << 2)) ? "." : "::"));
    }

  remember_Btype (work, temp.b, ( (((&temp) -> b == (&temp) -> p))?0:((&temp)->p - (&temp)->b)), bindex);






  if (isfuncname)
    {
      string_append (&temp, ((work->options & (1 << 2)) ? "." : "::"));
      if (work -> destructor & 1)
 string_append (&temp, "~");
      string_appends (&temp, &last_name);
    }




  if (append)
    string_appends (result, &temp);
  else
    {
      if (!((result) -> b == (result) -> p))
 string_append (&temp, ((work->options & (1 << 2)) ? "." : "::"));
      string_prepends (result, &temp);
    }

  string_delete (&last_name);
  string_delete (&temp);
  return (success);
}
# 3458 "../../libiberty/cplus-dem.c"
static int
get_count (type, count)
     const char **type;
     int *count;
{
  const char *p;
  int n;

  if (!(_sch_istable[((unsigned char)**type) & 0xff] & (unsigned short)(_sch_isdigit)))
    return (0);
  else
    {
      *count = **type - '0';
      (*type)++;
      if ((_sch_istable[((unsigned char)**type) & 0xff] & (unsigned short)(_sch_isdigit)))
 {
   p = *type;
   n = *count;
   do
     {
       n *= 10;
       n += *p - '0';
       p++;
     }
   while ((_sch_istable[((unsigned char)*p) & 0xff] & (unsigned short)(_sch_isdigit)));
   if (*p == '_')
     {
       *type = p + 1;
       *count = n;
     }
 }
    }
  return (1);
}




static int
do_type (work, mangled, result)
     struct work_stuff *work;
     const char **mangled;
     string *result;
{
  int n;
  int done;
  int success;
  string decl;
  const char *remembered_type;
  int type_quals;
  string btype;
  type_kind_t tk = tk_none;

  string_init (&btype);
  string_init (&decl);
  string_init (result);

  done = 0;
  success = 1;
  while (success && !done)
    {
      int member;
      switch (**mangled)
 {


 case 'P':
 case 'p':
   (*mangled)++;
   if (! (work -> options & (1 << 2)))
     string_prepend (&decl, "*");
   if (tk == tk_none)
     tk = tk_pointer;
   break;


 case 'R':
   (*mangled)++;
   string_prepend (&decl, "&");
   if (tk == tk_none)
     tk = tk_reference;
   break;


 case 'A':
   {
     ++(*mangled);
     if (!((&decl) -> b == (&decl) -> p)
  && (decl.b[0] == '*' || decl.b[0] == '&'))
       {
  string_prepend (&decl, "(");
  string_append (&decl, ")");
       }
     string_append (&decl, "[");
     if (**mangled != '_')
       success = demangle_template_value_parm (work, mangled, &decl,
            tk_integral);
     if (**mangled == '_')
       ++(*mangled);
     string_append (&decl, "]");
     break;
   }


 case 'T':
   (*mangled)++;
   if (!get_count (mangled, &n) || n >= work -> ntypes)
     {
       success = 0;
     }
   else
     {
       remembered_type = work -> typevec[n];
       mangled = &remembered_type;
     }
   break;


 case 'F':
   (*mangled)++;
     if (!((&decl) -> b == (&decl) -> p)
  && (decl.b[0] == '*' || decl.b[0] == '&'))
     {
       string_prepend (&decl, "(");
       string_append (&decl, ")");
     }



   if (!demangle_nested_args (work, mangled, &decl)
       || (**mangled != '_' && **mangled != '\0'))
     {
       success = 0;
       break;
     }
   if (success && (**mangled == '_'))
     (*mangled)++;
   break;

 case 'M':
 case 'O':
   {
     type_quals = 0x0;

     member = **mangled == 'M';
     (*mangled)++;

     string_append (&decl, ")");



     if (**mangled != 'Q')
       string_prepend (&decl, ((work->options & (1 << 2)) ? "." : "::"));

     if ((_sch_istable[((unsigned char)**mangled) & 0xff] & (unsigned short)(_sch_isdigit)))
       {
  n = consume_count (mangled);
  if (n == -1
      || (int) strlen (*mangled) < n)
    {
      success = 0;
      break;
    }
  string_prependn (&decl, *mangled, n);
  *mangled += n;
       }
     else if (**mangled == 'X' || **mangled == 'Y')
       {
  string temp;
  do_type (work, mangled, &temp);
  string_prepends (&decl, &temp);
       }
     else if (**mangled == 't')
       {
  string temp;
  string_init (&temp);
  success = demangle_template (work, mangled, &temp,
          ((void *)0), 1, 1);
  if (success)
    {
      string_prependn (&decl, temp.b, temp.p - temp.b);
      string_clear (&temp);
    }
  else
    break;
       }
     else if (**mangled == 'Q')
       {
  success = demangle_qualified (work, mangled, &decl,
                         0,
                      0);
  if (!success)
    break;
       }
     else
       {
  success = 0;
  break;
       }

     string_prepend (&decl, "(");
     if (member)
       {
  switch (**mangled)
    {
    case 'C':
    case 'V':
    case 'u':
      type_quals |= code_for_qualifier (**mangled);
      (*mangled)++;
      break;

    default:
      break;
    }

  if (*(*mangled)++ != 'F')
    {
      success = 0;
      break;
    }
       }
     if ((member && !demangle_nested_args (work, mangled, &decl))
  || **mangled != '_')
       {
  success = 0;
  break;
       }
     (*mangled)++;
     if (! (work -> options & (1 << 1)))
       {
  break;
       }
     if (type_quals != 0x0)
       {
  {if (!((&decl) -> b == (&decl) -> p)) string_append(&decl, " ");};
  string_append (&decl, qualifier_string (type_quals));
       }
     break;
   }
        case 'G':
   (*mangled)++;
   break;

 case 'C':
 case 'V':
 case 'u':
   if ((work -> options & (1 << 1)))
     {
       if (!((&decl) -> b == (&decl) -> p))
  string_prepend (&decl, " ");

       string_prepend (&decl, demangle_qualifier (**mangled));
     }
   (*mangled)++;
   break;





 default:
   done = 1;
   break;
 }
    }

  if (success) switch (**mangled)
    {

    case 'Q':
    case 'K':
      {
        success = demangle_qualified (work, mangled, result, 0, 1);
        break;
      }


    case 'B':
      (*mangled)++;
      if (!get_count (mangled, &n) || n >= work -> numb)
 success = 0;
      else
 string_append (result, work->btypevec[n]);
      break;

    case 'X':
    case 'Y':

      {
 int idx;

 (*mangled)++;
 idx = consume_count_with_underscores (mangled);

 if (idx == -1
     || (work->tmpl_argvec && idx >= work->ntmpl_args)
     || consume_count_with_underscores (mangled) == -1)
   {
     success = 0;
     break;
   }

 if (work->tmpl_argvec)
   string_append (result, work->tmpl_argvec[idx]);
 else
   string_append_template_idx (result, idx);

 success = 1;
      }
    break;

    default:
      success = demangle_fund_type (work, mangled, result);
      if (tk == tk_none)
 tk = (type_kind_t) success;
      break;
    }

  if (success)
    {
      if (!((&decl) -> b == (&decl) -> p))
 {
   string_append (result, " ");
   string_appends (result, &decl);
 }
    }
  else
    string_delete (result);
  string_delete (&decl);

  if (success)

    return (int) ((tk == tk_none) ? tk_integral : tk);
  else
    return 0;
}
# 3809 "../../libiberty/cplus-dem.c"
static int
demangle_fund_type (work, mangled, result)
     struct work_stuff *work;
     const char **mangled;
     string *result;
{
  int done = 0;
  int success = 1;
  char buf[10];
  unsigned int dec = 0;
  string btype;
  type_kind_t tk = tk_integral;

  string_init (&btype);



  while (!done)
    {
      switch (**mangled)
 {
 case 'C':
 case 'V':
 case 'u':
   if ((work -> options & (1 << 1)))
     {
              if (!((result) -> b == (result) -> p))
                string_prepend (result, " ");
       string_prepend (result, demangle_qualifier (**mangled));
     }
   (*mangled)++;
   break;
 case 'U':
   (*mangled)++;
   {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
   string_append (result, "unsigned");
   break;
 case 'S':
   (*mangled)++;
   {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
   string_append (result, "signed");
   break;
 case 'J':
   (*mangled)++;
   {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
   string_append (result, "__complex");
   break;
 default:
   done = 1;
   break;
 }
    }



  switch (**mangled)
    {
    case '\0':
    case '_':
      break;
    case 'v':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "void");
      break;
    case 'x':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "long long");
      break;
    case 'l':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "long");
      break;
    case 'i':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "int");
      break;
    case 's':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "short");
      break;
    case 'b':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "bool");
      tk = tk_bool;
      break;
    case 'c':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "char");
      tk = tk_char;
      break;
    case 'w':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "wchar_t");
      tk = tk_char;
      break;
    case 'r':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "long double");
      tk = tk_real;
      break;
    case 'd':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "double");
      tk = tk_real;
      break;
    case 'f':
      (*mangled)++;
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, "float");
      tk = tk_real;
      break;
    case 'G':
      (*mangled)++;
      if (!(_sch_istable[((unsigned char)**mangled) & 0xff] & (unsigned short)(_sch_isdigit)))
 {
   success = 0;
   break;
 }
    case 'I':
      (*mangled)++;
      if (**mangled == '_')
 {
   int i;
   (*mangled)++;
   for (i = 0;
        i < (long) sizeof (buf) - 1 && **mangled && **mangled != '_';
        (*mangled)++, i++)
     buf[i] = **mangled;
   if (**mangled != '_')
     {
       success = 0;
       break;
     }
   buf[i] = '\0';
   (*mangled)++;
 }
      else
 {
   strncpy (buf, *mangled, 2);
   buf[2] = '\0';
   *mangled += (((strlen (*mangled)) < (2)) ? (strlen (*mangled)) : (2));
 }
      sscanf (buf, "%x", &dec);
      sprintf (buf, "int%u_t", dec);
      {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
      string_append (result, buf);
      break;



    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      {
        int bindex = register_Btype (work);
        string btype;
        string_init (&btype);
        if (demangle_class_name (work, mangled, &btype)) {
          remember_Btype (work, btype.b, ( (((&btype) -> b == (&btype) -> p))?0:((&btype)->p - (&btype)->b)), bindex);
          {if (!((result) -> b == (result) -> p)) string_append(result, " ");};
          string_appends (result, &btype);
        }
        else
          success = 0;
        string_delete (&btype);
        break;
      }
    case 't':
      {
        success = demangle_template (work, mangled, &btype, 0, 1, 1);
        string_appends (result, &btype);
        break;
      }
    default:
      success = 0;
      break;
    }

  return success ? ((int) tk) : 0;
}





static int
do_hpacc_template_const_value (work, mangled, result)
     struct work_stuff *work __attribute__ ((__unused__));
     const char **mangled;
     string *result;
{
  int unsigned_const;

  if (**mangled != 'U' && **mangled != 'S')
    return 0;

  unsigned_const = (**mangled == 'U');

  (*mangled)++;

  switch (**mangled)
    {
      case 'N':
        string_append (result, "-");

      case 'P':
        (*mangled)++;
        break;
      case 'M':

        string_append (result, "-2147483648");
        (*mangled)++;
        return 1;
      default:
        return 0;
    }


  if (!((_sch_istable[((unsigned char)**mangled) & 0xff] & (unsigned short)(_sch_isdigit))))
    return 0;



  while ((_sch_istable[((unsigned char)**mangled) & 0xff] & (unsigned short)(_sch_isdigit)))
    {
      char_str[0] = **mangled;
      string_append (result, char_str);
      (*mangled)++;
    }

  if (unsigned_const)
    string_append (result, "U");




  return 1;
}




static int
do_hpacc_template_literal (work, mangled, result)
     struct work_stuff *work;
     const char **mangled;
     string *result;
{
  int literal_len = 0;
  char * recurse;
  char * recurse_dem;

  if (**mangled != 'A')
    return 0;

  (*mangled)++;

  literal_len = consume_count (mangled);

  if (literal_len <= 0)
    return 0;



  string_append (result, "&");


  recurse = (char *) xmalloc (literal_len + 1);
  memcpy (recurse, *mangled, literal_len);
  recurse[literal_len] = '\000';

  recurse_dem = cplus_demangle (recurse, work->options);

  if (recurse_dem)
    {
      string_append (result, recurse_dem);
      free (recurse_dem);
    }
  else
    {
      string_appendn (result, *mangled, literal_len);
    }
  (*mangled) += literal_len;
  free (recurse);

  return 1;
}

static int
snarf_numeric_literal (args, arg)
     const char ** args;
     string * arg;
{
  if (**args == '-')
    {
      char_str[0] = '-';
      string_append (arg, char_str);
      (*args)++;
    }
  else if (**args == '+')
    (*args)++;

  if (!(_sch_istable[((unsigned char)**args) & 0xff] & (unsigned short)(_sch_isdigit)))
    return 0;

  while ((_sch_istable[((unsigned char)**args) & 0xff] & (unsigned short)(_sch_isdigit)))
    {
      char_str[0] = **args;
      string_append (arg, char_str);
      (*args)++;
    }

  return 1;
}





static int
do_arg (work, mangled, result)
     struct work_stuff *work;
     const char **mangled;
     string *result;
{


  const char *start = *mangled;

  string_init (result);

  if (work->nrepeats > 0)
    {
      --work->nrepeats;

      if (work->previous_argument == 0)
 return 0;


      string_appends (result, work->previous_argument);
      return 1;
    }

  if (**mangled == 'n')
    {

      (*mangled)++;
      work->nrepeats = consume_count(mangled);

      if (work->nrepeats <= 0)

 return 0;

      if (work->nrepeats > 9)
 {
   if (**mangled != '_')


     return 0;
   else
     (*mangled)++;
 }


      return do_arg (work, mangled, result);
    }





  if (work->previous_argument)
    string_clear (work->previous_argument);
  else
    {
      work->previous_argument = (string*) xmalloc (sizeof (string));
      string_init (work->previous_argument);
    }

  if (!do_type (work, mangled, work->previous_argument))
    return 0;

  string_appends (result, work->previous_argument);

  remember_type (work, start, *mangled - start);
  return 1;
}

static void
remember_type (work, start, len)
     struct work_stuff *work;
     const char *start;
     int len;
{
  char *tem;

  if (work->forgetting_types)
    return;

  if (work -> ntypes >= work -> typevec_size)
    {
      if (work -> typevec_size == 0)
 {
   work -> typevec_size = 3;
   work -> typevec
     = (char **) xmalloc (sizeof (char *) * work -> typevec_size);
 }
      else
 {
   work -> typevec_size *= 2;
   work -> typevec
     = (char **) xrealloc ((char *)work -> typevec,
      sizeof (char *) * work -> typevec_size);
 }
    }
  tem = xmalloc (len + 1);
  memcpy (tem, start, len);
  tem[len] = '\0';
  work -> typevec[work -> ntypes++] = tem;
}



static void
remember_Ktype (work, start, len)
     struct work_stuff *work;
     const char *start;
     int len;
{
  char *tem;

  if (work -> numk >= work -> ksize)
    {
      if (work -> ksize == 0)
 {
   work -> ksize = 5;
   work -> ktypevec
     = (char **) xmalloc (sizeof (char *) * work -> ksize);
 }
      else
 {
   work -> ksize *= 2;
   work -> ktypevec
     = (char **) xrealloc ((char *)work -> ktypevec,
      sizeof (char *) * work -> ksize);
 }
    }
  tem = xmalloc (len + 1);
  memcpy (tem, start, len);
  tem[len] = '\0';
  work -> ktypevec[work -> numk++] = tem;
}





static int
register_Btype (work)
     struct work_stuff *work;
{
  int ret;

  if (work -> numb >= work -> bsize)
    {
      if (work -> bsize == 0)
 {
   work -> bsize = 5;
   work -> btypevec
     = (char **) xmalloc (sizeof (char *) * work -> bsize);
 }
      else
 {
   work -> bsize *= 2;
   work -> btypevec
     = (char **) xrealloc ((char *)work -> btypevec,
      sizeof (char *) * work -> bsize);
 }
    }
  ret = work -> numb++;
  work -> btypevec[ret] = ((void *)0);
  return(ret);
}



static void
remember_Btype (work, start, len, index)
     struct work_stuff *work;
     const char *start;
     int len, index;
{
  char *tem;

  tem = xmalloc (len + 1);
  memcpy (tem, start, len);
  tem[len] = '\0';
  work -> btypevec[index] = tem;
}


static void
forget_B_and_K_types (work)
     struct work_stuff *work;
{
  int i;

  while (work -> numk > 0)
    {
      i = --(work -> numk);
      if (work -> ktypevec[i] != ((void *)0))
 {
   free (work -> ktypevec[i]);
   work -> ktypevec[i] = ((void *)0);
 }
    }

  while (work -> numb > 0)
    {
      i = --(work -> numb);
      if (work -> btypevec[i] != ((void *)0))
 {
   free (work -> btypevec[i]);
   work -> btypevec[i] = ((void *)0);
 }
    }
}


static void
forget_types (work)
     struct work_stuff *work;
{
  int i;

  while (work -> ntypes > 0)
    {
      i = --(work -> ntypes);
      if (work -> typevec[i] != ((void *)0))
 {
   free (work -> typevec[i]);
   work -> typevec[i] = ((void *)0);
 }
    }
}
# 4414 "../../libiberty/cplus-dem.c"
static int
demangle_args (work, mangled, declp)
     struct work_stuff *work;
     const char **mangled;
     string *declp;
{
  string arg;
  int need_comma = 0;
  int r;
  int t;
  const char *tem;
  char temptype;

  if ((work -> options & (1 << 0)))
    {
      string_append (declp, "(");
      if (**mangled == '\0')
 {
   string_append (declp, "void");
 }
    }

  while ((**mangled != '_' && **mangled != '\0' && **mangled != 'e')
  || work->nrepeats > 0)
    {
      if ((**mangled == 'N') || (**mangled == 'T'))
 {
   temptype = *(*mangled)++;

   if (temptype == 'N')
     {
       if (!get_count (mangled, &r))
  {
    return (0);
  }
     }
   else
     {
       r = 1;
     }
          if (((((int) work->options) & (1 << 12)) || (((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 13))) && work -> ntypes >= 10)
            {






              if ((t = consume_count(mangled)) <= 0)
                {
                  return (0);
                }
            }
          else
     {
       if (!get_count (mangled, &t))
      {
           return (0);
      }
     }
   if ((((int) work->options) & (1 << 10)) || (((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 12)) || (((int) work->options) & (1 << 13)))
     {
       t--;
     }


   if ((t < 0) || (t >= work -> ntypes))
     {
       return (0);
     }
   while (work->nrepeats > 0 || --r >= 0)
     {
       tem = work -> typevec[t];
       if (need_comma && (work -> options & (1 << 0)))
  {
    string_append (declp, ", ");
  }
       if (!do_arg (work, &tem, &arg))
  {
    return (0);
  }
       if ((work -> options & (1 << 0)))
  {
    string_appends (declp, &arg);
  }
       string_delete (&arg);
       need_comma = 1;
     }
 }
      else
 {
   if (need_comma && (work -> options & (1 << 0)))
     string_append (declp, ", ");
   if (!do_arg (work, mangled, &arg))
     return (0);
   if ((work -> options & (1 << 0)))
     string_appends (declp, &arg);
   string_delete (&arg);
   need_comma = 1;
 }
    }

  if (**mangled == 'e')
    {
      (*mangled)++;
      if ((work -> options & (1 << 0)))
 {
   if (need_comma)
     {
       string_append (declp, ",");
     }
   string_append (declp, "...");
 }
    }

  if ((work -> options & (1 << 0)))
    {
      string_append (declp, ")");
    }
  return (1);
}




static int
demangle_nested_args (work, mangled, declp)
     struct work_stuff *work;
     const char **mangled;
     string *declp;
{
  string* saved_previous_argument;
  int result;
  int saved_nrepeats;





  ++work->forgetting_types;



  saved_previous_argument = work->previous_argument;
  saved_nrepeats = work->nrepeats;
  work->previous_argument = 0;
  work->nrepeats = 0;


  result = demangle_args (work, mangled, declp);


  if (work->previous_argument)
    string_delete (work->previous_argument);
  work->previous_argument = saved_previous_argument;
  --work->forgetting_types;
  work->nrepeats = saved_nrepeats;

  return result;
}

static void
demangle_function_name (work, mangled, declp, scan)
     struct work_stuff *work;
     const char **mangled;
     string *declp;
     const char *scan;
{
  size_t i;
  string type;
  const char *tem;

  string_appendn (declp, (*mangled), scan - (*mangled));
  string_need (declp, 1);
  *(declp -> p) = '\0';





  (*mangled) = scan + 2;





  if ((((int) work->options) & (1 << 12)) && (**mangled == 'X'))
    {
      demangle_arm_hp_template (work, mangled, 0, declp);

    }

  if ((((int) work->options) & (1 << 10)) || (((int) work->options) & (1 << 11)) || (((int) work->options) & (1 << 12)) || (((int) work->options) & (1 << 13)))
    {






      if (strcmp (declp -> b, "__ct") == 0)
 {
   work -> constructor += 1;
   string_clear (declp);
   return;
 }
      else if (strcmp (declp -> b, "__dt") == 0)
 {
   work -> destructor += 1;
   string_clear (declp);
   return;
 }
    }

  if (declp->p - declp->b >= 3
      && declp->b[0] == 'o'
      && declp->b[1] == 'p'
      && strchr (cplus_markers, declp->b[2]) != ((void *)0))
    {

      if (declp->p - declp->b >= 10
   && memcmp (declp->b + 3, "assign_", 7) == 0)
 {
   for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); i++)
     {
       int len = declp->p - declp->b - 10;
       if ((int) strlen (optable[i].in) == len
    && memcmp (optable[i].in, declp->b + 10, len) == 0)
  {
    string_clear (declp);
    string_append (declp, "operator");
    string_append (declp, optable[i].out);
    string_append (declp, "=");
    break;
  }
     }
 }
      else
 {
   for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); i++)
     {
       int len = declp->p - declp->b - 3;
       if ((int) strlen (optable[i].in) == len
    && memcmp (optable[i].in, declp->b + 3, len) == 0)
  {
    string_clear (declp);
    string_append (declp, "operator");
    string_append (declp, optable[i].out);
    break;
  }
     }
 }
    }
  else if (declp->p - declp->b >= 5 && memcmp (declp->b, "type", 4) == 0
    && strchr (cplus_markers, declp->b[4]) != ((void *)0))
    {

      tem = declp->b + 5;
      if (do_type (work, &tem, &type))
 {
   string_clear (declp);
   string_append (declp, "operator ");
   string_appends (declp, &type);
   string_delete (&type);
 }
    }
  else if (declp->b[0] == '_' && declp->b[1] == '_'
    && declp->b[2] == 'o' && declp->b[3] == 'p')
    {


      tem = declp->b + 4;
      if (do_type (work, &tem, &type))
 {
   string_clear (declp);
   string_append (declp, "operator ");
   string_appends (declp, &type);
   string_delete (&type);
 }
    }
  else if (declp->b[0] == '_' && declp->b[1] == '_'
    && (_sch_istable[((unsigned char)declp->b[2]) & 0xff] & (unsigned short)(_sch_islower))
    && (_sch_istable[((unsigned char)declp->b[3]) & 0xff] & (unsigned short)(_sch_islower)))
    {
      if (declp->b[4] == '\0')
 {

   for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); i++)
     {
       if (strlen (optable[i].in) == 2
    && memcmp (optable[i].in, declp->b + 2, 2) == 0)
  {
    string_clear (declp);
    string_append (declp, "operator");
    string_append (declp, optable[i].out);
    break;
  }
     }
 }
      else
 {
   if (declp->b[2] == 'a' && declp->b[5] == '\0')
     {

       for (i = 0; i < (sizeof (optable) / sizeof ((optable)[0])); i++)
  {
    if (strlen (optable[i].in) == 3
        && memcmp (optable[i].in, declp->b + 2, 3) == 0)
      {
        string_clear (declp);
        string_append (declp, "operator");
        string_append (declp, optable[i].out);
        break;
      }
  }
     }
 }
    }
}



static void
string_need (s, n)
     string *s;
     int n;
{
  int tem;

  if (s->b == ((void *)0))
    {
      if (n < 32)
 {
   n = 32;
 }
      s->p = s->b = xmalloc (n);
      s->e = s->b + n;
    }
  else if (s->e - s->p < n)
    {
      tem = s->p - s->b;
      n += tem;
      n *= 2;
      s->b = xrealloc (s->b, n);
      s->p = s->b + tem;
      s->e = s->b + n;
    }
}

static void
string_delete (s)
     string *s;
{
  if (s->b != ((void *)0))
    {
      free (s->b);
      s->b = s->e = s->p = ((void *)0);
    }
}

static void
string_init (s)
     string *s;
{
  s->b = s->p = s->e = ((void *)0);
}

static void
string_clear (s)
     string *s;
{
  s->p = s->b;
}
# 4799 "../../libiberty/cplus-dem.c"
static void
string_append (p, s)
     string *p;
     const char *s;
{
  int n;
  if (s == ((void *)0) || *s == '\0')
    return;
  n = strlen (s);
  string_need (p, n);
  memcpy (p->p, s, n);
  p->p += n;
}

static void
string_appends (p, s)
     string *p, *s;
{
  int n;

  if (s->b != s->p)
    {
      n = s->p - s->b;
      string_need (p, n);
      memcpy (p->p, s->b, n);
      p->p += n;
    }
}

static void
string_appendn (p, s, n)
     string *p;
     const char *s;
     int n;
{
  if (n != 0)
    {
      string_need (p, n);
      memcpy (p->p, s, n);
      p->p += n;
    }
}

static void
string_prepend (p, s)
     string *p;
     const char *s;
{
  if (s != ((void *)0) && *s != '\0')
    {
      string_prependn (p, s, strlen (s));
    }
}

static void
string_prepends (p, s)
     string *p, *s;
{
  if (s->b != s->p)
    {
      string_prependn (p, s->b, s->p - s->b);
    }
}

static void
string_prependn (p, s, n)
     string *p;
     const char *s;
     int n;
{
  char *q;

  if (n != 0)
    {
      string_need (p, n);
      for (q = p->p - 1; q >= p->b; q--)
 {
   q[n] = q[0];
 }
      memcpy (p->b, s, n);
      p->p += n;
    }
}

static void
string_append_template_idx (s, idx)
     string *s;
     int idx;
{
  char buf[32 + 1 ];
  sprintf(buf, "T%d", idx);
  string_append (s, buf);
}
