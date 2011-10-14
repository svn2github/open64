//OBJ
int foo(int a, int b)
{
  int x=a;
  int j=0;
  if (a)
  E:
    x=x+b;
  {
    for (; j<10; j++) {
      if (x<0) {
        goto E;
      }
    }
  }
  return x;
}
