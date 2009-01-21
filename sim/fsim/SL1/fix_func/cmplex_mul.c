#include "ffe.h"
double
cmplex_mul_r (double rr, double jj, int points, int i, int point_pos,
	      int ex_point_pos,int guard_set)
{
  double x, y, z;
  double a;

  double a2, a3;

  double temp0;
  double temp1;
  double temp2;


  // y = rr*c;
  // z = jj*s;
  // a = y - z ;
  int imod;
  imod = ( points == 8192 ) ? i % 2048 : 
    ( points == 2048 ) ? i % 512 : 
    ( points == 512 )  ? i % 128 : 
    ( points == 128 )  ? i % 32 : 
    i ;
  
  a2 = c (points, imod);
  a3 = s (points, imod);

  a2 =  bit_convert (a2, 18, 1,guard_set);
  a3 =  bit_convert (a3, 18, 1,guard_set);

  if ( ( ( points == 8192 ) && ( i >= 2048 ) ) ||
       ( ( points == 2048 ) && ( i >= 512 ) ) ||
       ( ( points == 512 ) && ( i >= 128 ) ) ||
       ( ( points == 128 ) && ( i >= 32 ) ) )
    {
      temp0 = a2;
      a2 = a3;
      a3 = -temp0;
    }

  y = a2 * rr ;	//18bit
 
  z = a3 * jj;	//18*18=36bit

  a = y - z ;
  if ( guard_set == 1 )
  	a = bit_convert (a, 17, ex_point_pos + 1,guard_set);
  else if ( guard_set == 2 )
  	a = bit_convert (a, 18, ex_point_pos + 2,guard_set);
  else
  	a = bit_convert (a, 19, ex_point_pos + 3,guard_set);	//y*jj also cut to 19vbit	
  
  return (a);
}

double
cmplex_mul_i (double rr, double jj, int points, int i, int point_pos,
	      int ex_point_pos,int guard_set)
{
  double x, y, z;
  double b;

  double a2, a3;
  double temp0;
  double temp1;
  double temp2;


  //x=c+s,y=c-s,z=c*(rr-jj)
  //b=x*rr - z

  // y = c * jj 
  // z = s * rr
  // b = y + z 
  // a = y - z ;
  int imod;
  imod = ( points == 8192 ) ? i % 2048 : 
    ( points == 2048 ) ? i % 512 : 
    ( points == 512 )  ? i % 128 : 
    ( points == 128 )  ? i % 32 : 
    i ;
  
  a2 = c (points, imod);
  a3 = s (points, imod);

  a2 =  bit_convert (a2, 18, 1,guard_set);
  a3 =  bit_convert (a3, 18, 1,guard_set);

  if ( ( ( points == 8192 ) && ( i >= 2048 ) ) ||
       ( ( points == 2048 ) && ( i >= 512 ) ) ||
       ( ( points == 512 ) && ( i >= 128 ) ) ||
       ( ( points == 128 ) && ( i >= 32 ) ) )
    {
      temp0 = a2;
      a2 = a3;
      a3 = -temp0;
    }

  y = a2 * jj;
  z = a3 * rr;
  b = y + z ;
  if ( guard_set == 1 ) 
  	b = bit_convert (b, 17, ex_point_pos + 1,guard_set);
  else if ( guard_set == 2 ) 
  	b = bit_convert (b, 18, ex_point_pos + 2,guard_set);
  else 
  	b = bit_convert (b, 19, ex_point_pos + 3,guard_set) ;

  return (b);
}
