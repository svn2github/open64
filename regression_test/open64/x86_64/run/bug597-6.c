//TAG:kernel
int main(void)
{
  void * ret__;
  asm volatile ("mov" "q ""%%""gs"":%P" "1"",%0" : "=r" (ret__) : "p" ("12345"));
  return 0;
}
