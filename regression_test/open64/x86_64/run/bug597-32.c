//TAG:kernel
//NOEXEC
int main(void)
{
  void * ret__;
  asm volatile ("mov " "%1"",%0" : "=r" (ret__) : "p" (0x100000000));
  return 0;
}
