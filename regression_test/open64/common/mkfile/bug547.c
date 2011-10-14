__asm__ (
        "    .macro    raw_local_irq_save result            \n"
        "    .endm                            \n");

main(){
  unsigned long flags;
  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : :
                        "memory");

}
