int
seq_cal (int n)
{
  int i;
  int quo;
  int sum_remain = 0;
  int mk;
  quo = n;
  while (quo != 0)
    {
      sum_remain = sum_remain + quo % 4;
      quo = (int) quo / 4;
    }
  
#define OLD_VERSION 0
#if OLD_VERSION
  if (n > 255)
		sum_remain = sum_remain - 1;
#endif
  mk = sum_remain % 4;
  return (mk);
}
