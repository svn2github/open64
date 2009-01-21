//#include <math.h>
//#include <stdio.h>
//#include "bit_convert.c"


#define PI 3.14159265

double
c (int n, int i)
{
  double real_part;
//real_part=cos(2*PI*i/n);
  if (i == 0)
    real_part = 1.0;
  else if ((i * 4) == n)
    real_part = 0;
  else if ((i * 2) == n)
    real_part = -1.0;
  else if (i == n)
    real_part = 1.0;
  else if ((i * 4) == (n * 3))
    real_part = 0;
  else
    real_part = cos (2 * PI * i / n);
  return real_part;
}

double
s (int n, int i)
{
  double cmplex_part;
//cmplex_part=sin(2*PI*i/n)*(-1);
  if (i == 0)
    cmplex_part = 0;
  else if ((i * 4) == n)
    cmplex_part = -1.0;
  else if ((i * 2) == n)
    cmplex_part = 0;
  else if (i == n)
    cmplex_part = 0;
  else if ((i * 4) == (n * 3))
    cmplex_part = 1.0;
  else
    cmplex_part = sin (2 * PI * i / n) * (-1.0);
  return cmplex_part;
}


//computfactors
double
real_w (int n, int i)
{
  double real_part;
//real_part=cos(2*PI*i/n);
  if (i == 0)
    real_part = 1.0;
  else if ((i * 4) == n)
    real_part = 0;
  else if ((i * 2) == n)
    real_part = -1.0;
  else if (i == n)
    real_part = 1.0;
  else if ((i * 4) == (n * 3))
    real_part = 0;
  else
    real_part = cos (2 * PI * i / n);
  real_part = bit_convert (real_part, 18, 1,3);
  return real_part;
}

double
cmplex_w (int n, int i)
{
  double cmplex_part;
//cmplex_part=sin(2*PI*i/n)*(-1);
  if (i == 0)
    cmplex_part = 0;
  else if ((i * 4) == n)
    cmplex_part = -1.0;
  else if ((i * 2) == n)
    cmplex_part = 0;
  else if (i == n)
    cmplex_part = 0;
  else if ((i * 4) == (n * 3))
    cmplex_part = 1.0;
  else
    cmplex_part = sin (2 * PI * i / n) * (-1.0);
  cmplex_part = bit_convert (cmplex_part, 18, 1,3);
  return cmplex_part;
}
