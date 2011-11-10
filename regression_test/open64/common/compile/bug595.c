//OBJ
//TAG: kernel
extern void doit(int);
void
quick_doit(int x)
{
  if (__builtin_constant_p (x)
      && x != 0)
    asm volatile ("%0" : : "i#*X"(x));
  else
    doit(x);
}
