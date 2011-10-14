int one, p = 2;
int f[10];
float i[5];
int main(void)
{
  i[4] = 1.0;
  one = *((int *)&i[4]);
  printf("%d\n", one);
  i[2] = 2.0;
  i[3] = i[p];
  one = *((int *)&i[3]);
  printf("%d\n", one);
  return 0;
}
