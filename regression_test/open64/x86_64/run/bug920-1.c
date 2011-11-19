//TAG:kernel
int main(void)
{
  void * ret__;
  asm volatile ("mov" "q ""%%""gs"":%P" "1"",%0" : "=r" (ret__) : "i" ("test"));
  return 0;
}
