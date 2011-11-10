//OBJ
//FLAGS: -O0
//FLAGS: -g
//TAG: kernel
#include <stdlib.h>

typedef unsigned long int uintptr_t;
struct Header
{
   int self;
   uintptr_t stack_guard; 
};

void foo(struct Header header, uintptr_t stack_chk_guard)
{
  if (sizeof (header.stack_guard) == 1)
    asm volatile ("movb %b0,%%fs:%P1" : : "iq" (stack_chk_guard), 
                  "i" (__builtin_offsetof (struct Header, stack_guard)));

  else if (sizeof (header.stack_guard) == 4)
    asm volatile ("movl %0,%%fs:%P1" : : "ir" (stack_chk_guard), 
                  "i" (__builtin_offsetof (struct Header, stack_guard)));
  else 
  {
    if (sizeof (header.stack_guard) !=8 )
      abort ();

    asm volatile ("movq %q0,%%fs:%P1" : 
                  : "ir" ((unsigned long int) stack_chk_guard), 
                  "i" (__builtin_offsetof (struct Header, stack_guard)));
  }
};

