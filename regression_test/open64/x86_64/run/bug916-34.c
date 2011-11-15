//TAG:kernel
//NOEXEC
int main(void)
{
  void * ret__;
  asm volatile ("mov" "q ""%%""gs"":%P" "1"",%0" : "=r" (ret__) : "i" (0x7fffffff));
  return 0;
}
