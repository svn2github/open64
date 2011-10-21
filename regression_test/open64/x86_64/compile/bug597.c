//OBJ

static  test(void)
{
  char *per_cpu__kernel_stack;
  void *ret__;
  asm("mov" "b ""%%""gs"":%P" "1"",%0"
      : "=q" (ret__)
      : "p" (&per_cpu__kernel_stack));
}
