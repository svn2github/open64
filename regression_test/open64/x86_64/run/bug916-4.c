//TAG:kernel
int main(void)
{
  void * ret__;
  int u=3;
  asm volatile ("mov" "q ""%%""gs"":%P" "1"",%0" : "=r" (ret__) : "i" (&u));
  return 0;
}
