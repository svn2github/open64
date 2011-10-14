extern int foo;

static __inline__ int
func0(int baz)
{
  return baz;
}

static __inline__ int
func(int bar)
{
  int old = foo;

  foo = bar;
  return func0(old);
}

int main()
{
  if (sizeof (int) == 1)
    return func(0);
  return 0;
}
