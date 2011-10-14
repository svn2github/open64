typedef TYPE alia __attribute__((may_alias));

void foo(TYPE *x)
{
  if (x) {}
}

int main()
{
  int x = 0;
  foo(reinterpret_cast<alia *>(&x));
  return 0;
}
