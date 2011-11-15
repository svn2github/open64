//TAG:kernel
const char *p="abdce";

int main(void)
{
  void * ret__;
  asm volatile ("mov" "q ""%%""gs"":%P" "1"",%0" : "=r" (ret__) : "i" (&p));
  return 0;
}
