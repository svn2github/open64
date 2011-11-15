//TAG:kernel
struct T {
  int u;
  int v;
} t;
int main(void)
{
  void * ret__;
  t.v=5;
  asm volatile ("movq ""%" "1"",%0" : "=r" (ret__) : "i" (&t.v));
  return 0;
}
