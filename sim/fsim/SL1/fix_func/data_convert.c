#include <stdio.h>

float
data_convert (int data_in, int bit_width)
{
  float data_out;
  int i, first, flag, sign, expo;
  unsigned int z, mant;
  int width;

  width = bit_width - 1;

  data_out = 0;
  flag = 0;

  if (data_in == 0x8000)
    {
      data_out = -1.0;
      return (data_out);
    }

  sign = ((data_in >> width) & 0x01);
  if (sign == 1)
    {
      data_in = (((~data_in) & 0x7fff) + 1) & 0x7fff;
      data_in = data_in + (1 << 15);
    }


  for (i = 1; i < bit_width; i++)
    {
      if (((data_in >> (width - i)) & 0x01) == 1)
	{
	  flag = 1;
	  break;
	}
    }

  if (flag == 1)
    {
      first = i + 1;

      mant = 0;

      for (i = first; i < bit_width; i++)
	{
	  if ((data_in >> (width - i) & 0x01) == 1)
	    {
	      mant = mant + (1 << (22 - (i - first)));
	    }
	}

      expo = 127 + 1 - first;

      sign = ((data_in >> width) & 0x01);

//              printf("sign=%d\n",sign);
//              printf("mant=%x\n",mant);
      //mant=~mant;
      //printf("mant=%x\n",mant);

//              if(sign==1)
//                      mant = (((~(mant-1))&0x7fffff) )&0x7fffff;
//              printf("mant=%x\n",mant);
    }
  else if (flag == 0)
    {
      mant = 0;
      expo = 0;
      sign = ((data_in >> width) & 0x01);
    }

  z = (sign << 31) + (expo << 23) + mant;


  data_out = *(float *) &z;



  return data_out;
}
