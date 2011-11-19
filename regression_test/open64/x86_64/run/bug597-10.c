//TAG:kernel
struct T {
  int u;
  int v;
} t;
int main(void)
{
  void * ret__;
  asm volatile ("mov ""%" "1"",%0" : "=r" (ret__) : "p" (&t.v));
  asm volatile ("mov ""%" "1"",%0" : "=r" (ret__) : "p" (&t.v));
  return 0;
}
