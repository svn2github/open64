//TAG:kernel
struct u{
  int a;
  void (*f)(void);
} p;
int main(void)
{
  void * ret__;
  asm volatile ("mov %" "1"",%0" : "=r" (ret__) : "i" (&(p.f)));
  asm volatile ("mov %" "1"",%0" : "=r" (ret__) : "i" (&(p.f)));
  return 0;
}
