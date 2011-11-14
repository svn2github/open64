//TAG:kernel
int p[600];
int main(void)
{
  void * ret__;
  asm volatile ("mov ""%P" "1"",%0" : "=r" (ret__) : "p" (p+3));
  return 0;
}
