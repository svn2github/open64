//OBJ
//FLAGS: -O0
//TAG: kernel
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long u64;
struct __large_struct
{
  unsigned long buf[100];
};
static __inline__ __attribute__ ((always_inline))
     unsigned long __copy_to_user (void *to, const void *from,
				   unsigned long n)
{
  if (__builtin_constant_p (n))
    {
      unsigned long ret;
      switch (n)
	{
	case 4:
	  do
	    {
	      ret = 0;
	      switch (4)
		{
		case 8:
		__asm__ __volatile__ ("1:	mov" "q" " %" "" "1,%2\n" "2:\n" ".section .fixup,\"ax\"\n" "3:	mov %3,%0\n" "	jmp 2b\n" ".previous\n" ".section __ex_table,\"a\"\n" "	" ".align 8" "\n" "	" ".quad" " 1b,3b\n" ".previous": "=r" (ret):"ir" (*(const u32 *) from),
					"m" ((*(const struct __large_struct *)
					      ((u32 *) to))), "i" (4),
					"0" (ret));
		  break;
		default:
		  __put_user_bad ();
		}
	    }
	  while (0);
	  return ret;
	}
    }
  return __copy_to_user_ll (to, from, n);
}
