#include "ffe.h"

char symbol[36];
char symbol_hex[9];


void
bin2hex (int bit_width)
{
  char symbol_temp[20];
  int i;
  int hex_no;

  if (bit_width == 18)
    {
      symbol_temp[0] = '0';
      symbol_temp[1] = '0';
      for (i = 0; i < bit_width; i++)
	symbol_temp[i + 2] = symbol[i];
      hex_no = 5;
    }
	else if (bit_width == 17)
    {
      symbol_temp[0] = '0';
      //symbol_temp[1] = '0';
      for (i = 0; i < bit_width; i++)
	symbol_temp[i + 1] = symbol[i];
      hex_no = 5;
    }
  else if (bit_width == 16)
    {
      hex_no = 4;
      for (i = 0; i < bit_width; i++)
	symbol_temp[i] = symbol[i];
    }
  
  else if (bit_width == 32)
    {
      hex_no = 8;
      for (i = 0; i < bit_width; i++)
	symbol_temp[i] = symbol[i];
    }
  
  else
    return;
	

  for (i = 0; i < hex_no; i++)
    {
      if (symbol_temp[4 * i] == '0' && symbol_temp[4 * i + 1] == '0'
	  && symbol_temp[4 * i + 2] == '0' && symbol_temp[4 * i + 3] == '0')
	symbol_hex[i] = '0';
      if (symbol_temp[4 * i] == '0' && symbol_temp[4 * i + 1] == '0'
	  && symbol_temp[4 * i + 2] == '0' && symbol_temp[4 * i + 3] == '1')
	symbol_hex[i] = '1';
      if (symbol_temp[4 * i] == '0' && symbol_temp[4 * i + 1] == '0'
	  && symbol_temp[4 * i + 2] == '1' && symbol_temp[4 * i + 3] == '0')
	symbol_hex[i] = '2';
      if (symbol_temp[4 * i] == '0' && symbol_temp[4 * i + 1] == '0'
	  && symbol_temp[4 * i + 2] == '1' && symbol_temp[4 * i + 3] == '1')
	symbol_hex[i] = '3';
      if (symbol_temp[4 * i] == '0' && symbol_temp[4 * i + 1] == '1'
	  && symbol_temp[4 * i + 2] == '0' && symbol_temp[4 * i + 3] == '0')
	symbol_hex[i] = '4';
      if (symbol_temp[4 * i] == '0' && symbol_temp[4 * i + 1] == '1'
	  && symbol_temp[4 * i + 2] == '0' && symbol_temp[4 * i + 3] == '1')
	symbol_hex[i] = '5';
      if (symbol_temp[4 * i] == '0' && symbol_temp[4 * i + 1] == '1'
	  && symbol_temp[4 * i + 2] == '1' && symbol_temp[4 * i + 3] == '0')
	symbol_hex[i] = '6';
      if (symbol_temp[4 * i] == '0' && symbol_temp[4 * i + 1] == '1'
	  && symbol_temp[4 * i + 2] == '1' && symbol_temp[4 * i + 3] == '1')
	symbol_hex[i] = '7';
      if (symbol_temp[4 * i] == '1' && symbol_temp[4 * i + 1] == '0'
	  && symbol_temp[4 * i + 2] == '0' && symbol_temp[4 * i + 3] == '0')
	symbol_hex[i] = '8';
      if (symbol_temp[4 * i] == '1' && symbol_temp[4 * i + 1] == '0'
	  && symbol_temp[4 * i + 2] == '0' && symbol_temp[4 * i + 3] == '1')
	symbol_hex[i] = '9';
      if (symbol_temp[4 * i] == '1' && symbol_temp[4 * i + 1] == '0'
	  && symbol_temp[4 * i + 2] == '1' && symbol_temp[4 * i + 3] == '0')
	symbol_hex[i] = 'a';
      if (symbol_temp[4 * i] == '1' && symbol_temp[4 * i + 1] == '0'
	  && symbol_temp[4 * i + 2] == '1' && symbol_temp[4 * i + 3] == '1')
	symbol_hex[i] = 'b';
      if (symbol_temp[4 * i] == '1' && symbol_temp[4 * i + 1] == '1'
	  && symbol_temp[4 * i + 2] == '0' && symbol_temp[4 * i + 3] == '0')
	symbol_hex[i] = 'c';
      if (symbol_temp[4 * i] == '1' && symbol_temp[4 * i + 1] == '1'
	  && symbol_temp[4 * i + 2] == '0' && symbol_temp[4 * i + 3] == '1')
	symbol_hex[i] = 'd';
      if (symbol_temp[4 * i] == '1' && symbol_temp[4 * i + 1] == '1'
	  && symbol_temp[4 * i + 2] == '1' && symbol_temp[4 * i + 3] == '0')
	symbol_hex[i] = 'e';
      if (symbol_temp[4 * i] == '1' && symbol_temp[4 * i + 1] == '1'
	  && symbol_temp[4 * i + 2] == '1' && symbol_temp[4 * i + 3] == '1')
	symbol_hex[i] = 'f';
    }
}

double
bin2float (int bit_width)
{
  int i;
  double a;
  a = 0.0;
  for (i = 1; i < bit_width; i++)
    {
      if (symbol[i] == '1')
	a = a + pow (2.0, -i);
    }
  if (symbol[0] == '1')
    a = a - 1.0;

  return (a);
}

void
float2bin (double x, int bit_width)
{

  double z, s;
  int i;

  if (x >= 0 && x < 1.0)
    {
      symbol[0] = '0';
      z = x;

      for (i = 1; i < bit_width; i++)
	{
	  z = z * 2.0;
	  s = floor (z);
	  z = z - s;
	  if (s == 1.0)
	    symbol[i] = '1';
	  else
	    symbol[i] = '0';
	}

    }

  else if (x >= -1.0 && x < 0)
    {
      z = 2.0 + x - 1.0;
      symbol[0] = '1';

      for (i = 1; i < bit_width; i++)
	{
	  z = z * 2.0;
	  s = floor (z);
	  z = z - s;
	  if (s == 1.0)
	    symbol[i] = '1';
	  else
	    symbol[i] = '0';
	}
    }
  else if (x == 1.0)
    {
      symbol[0] = '0';
      for (i = 1; i < bit_width; i++)
	symbol[i] = '1';
    }

}

double
bit_convert (double data, int bit_width, int point_pos,int guard_set)
{
  double x, x_cut;
  x = data / pow (2, point_pos);
  if ( ( guard_set == 2 ) || ( guard_set == 1 ) ) {
    if ( x >= 1.0 ) x = 1.0;
  	if ( x <= -1.0 ) x = -1.0;	  	
	}
 	
  float2bin (x, bit_width);	//convert float number to binary number  
  x_cut = bin2float (bit_width);	//cut the binary number,only keep bit_width bits
  data = x_cut * pow (2, point_pos);	//convert binary number to float number
  bin2hex (bit_width);  
  return (data); 
}
