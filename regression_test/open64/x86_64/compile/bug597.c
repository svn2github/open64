//OBJ
//TAG:kernel
void  test(void)
{
  char *per_cpu__kernel_stack;
  void *ret__;
  asm volatile ("mov" "q ""%%""gs"":%P" "1"",%0"
                : "=q" (ret__)
                : "p" (&per_cpu__kernel_stack));
}
