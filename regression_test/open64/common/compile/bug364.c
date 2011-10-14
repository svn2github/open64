//OBJ
#define __get_user(x,ptr)                     \
  __get_user_nocheck((x),(ptr),sizeof(*(ptr)))

struct __large_struct { unsigned long buf[100]; };
#define __m(x) (*(struct __large_struct *)(x))

#define __get_user_nocheck(x,ptr,size)          \
  ({                      \
  int __gu_err;                 \
  unsigned long __gu_val;             \
  __get_user_size(__gu_val,(ptr),(size),__gu_err);   \
  (x) = (typeof(*(ptr)))__gu_val;        \
  __gu_err;                  \
  })

#define __get_user_size(x,ptr,size,retval)            \
  do {                          \
  retval = 0;                   \
  __chk_user_ptr(ptr);                \
  switch (size) {                     \
 case 1: __get_user_asm(x,ptr,retval,"b","b","=q",-1); break;\
 case 2: \
__get_user_asm(x,ptr,retval,"w","w","=r",-1); break;\
 case 4:\
__get_user_asm(x,ptr,retval,"l","k","=r",-1); break;\
 case 8:\
__get_user_asm(x,ptr,retval,"q","","=r",-1); break;\
 default: (x)\
 = __get_user_bad();           \
}\
                      \
} while (0)

#define __get_user_asm(x, addr, err, itype, rtype, ltype, errno)  \
    asm volatile(              \
    "1:   mov"itype" %2,%"rtype"1\n"    \
    "2:\n"                  \
    ".section .fixup,\"ax\"\n"       \
    "3:   mov %3,%0\n"            \
    "  xor"itype" %"rtype"1,%"rtype"1\n"   \
               "  jmp 2b\n"            \
               ".previous\n"              \
    ".section __ex_table,\"a\"\n"       \
               "  .align 8\n"          \
    "  .quad 1b,3b\n"          \
               ".previous"             \
    : "=r"(err), ltype (x)           \
    : "m"(__m(addr)), "i"(errno), "0"(err))


    long arch_ptrace(double c)
    {
      long ret;
      long  p;
      ret |= __get_user(ret, (unsigned long *)p);
      return ret;
    }
