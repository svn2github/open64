//OBJ
//FLAGS: -m32

static const char power_letter[] =
{
};
human_readable (unsigned long long n, char *buf, int opts,
  unsigned long long from_block_size, unsigned long long to_block_size)
{
  int inexact_style =
    opts & (1 | 2 | 0);
  unsigned int base = opts & 32 ? 1024 : 1000;
  unsigned long long amt;
  char tenths;
  int exponent = -1;
  char *p;
  char *psuffix;
  int rounding;
  if (to_block_size <= from_block_size)
    {
 {
     {
       goto use_integer_arithmetic;
     }
 }
    }
    {
      unsigned long long divisor = to_block_size / from_block_size;
      unsigned long long r10 = (n % divisor) * 10;
      tenths = r10 / divisor;
      {
   {
   }
      }
  }
 use_integer_arithmetic:
  {
      {
   {
       {
  unsigned int r10 = (amt % base) * 10 + tenths;
  unsigned int r2 = (r10 % base) * 2 + (rounding >> 1);
  tenths = r10 / base;
  rounding = (r2 < base
       ? (r2 + rounding) != 0
       : 2 + (base < r2 + rounding));
  if (inexact_style == 1
      ? 2 < rounding + (tenths & 1)
      : inexact_style == 0 && 0 < rounding)
    {
        {
        }
      *--p = '0' + tenths;
    }
       }
   }
      }
 *psuffix++ = (! (opts & 32) && exponent == 1
        ? 'k'
        : power_letter[exponent]);
    }
}
