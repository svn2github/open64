  struct S
  {
    unsigned char b : 3;
  } s;

int main (void)
{
  s.b = 4;
  if (s.b > 0 && s.b < 4)
    abort();  
  return 0;
}
