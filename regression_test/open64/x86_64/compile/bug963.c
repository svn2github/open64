//OBJ
static inline __attribute__((always_inline)) __attribute__((pure)) unsigned char __static_cpu_has(unsigned short bit)
{
  unsigned char flag;

  asm volatile("1: movb $0,%0\n"
        "2:\n"
        ".section .altinstructions,\"a\"\n"
        " " ".balign 8" " " "\n"
        " " ".quad" " " "1b\n"
        " " ".quad" " " "3f\n"
        " .word %P1\n"
        " .byte 2b - 1b\n"
        " .byte 4f - 3f\n"
        ".previous\n"
        ".section .discard,\"aw\",@progbits\n"
        " .byte 0xff + (4f-3f) - (2b-1b)\n"
        ".previous\n"
        ".section .altinstr_replacement,\"ax\"\n"
        "3: movb $1,%0\n"
        "4:\n"
        ".previous\n"
        : "=qm" (flag) : "i" (bit));
  return flag;

}

unsigned char f(void){ 
  return __static_cpu_has(24) ;
}

