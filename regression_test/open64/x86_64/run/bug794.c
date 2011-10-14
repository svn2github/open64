//FLAGS: -O1
//FLAGS: -m64
//FLAGS: -fpic
int one;
float i;
int main()
{
  i = 1.0;
  one = *((int *)&i);
  printf("%d\n", one);
  return 0;
}

