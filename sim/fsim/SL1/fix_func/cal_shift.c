
#include "ffe.h"

int
cal_shift (double *a, double *b, int point_no, int point_pos,int guard_set)
{
  int shift_no;
  int i;
  int flag0, flag1, flag2, flag3;

  double limit_s3, limit_s2, limit_s1, limit_s0;

	limit_s3 = pow(2,point_pos-1);
	limit_s2 = pow(2,point_pos-2);
	limit_s1 = pow(2,point_pos-3);
	/*
  limit_s3 = (1 << (point_pos - 1)) * (1.0);
  if ( point_pos > 1 )  
  	limit_s2 = (1 << (point_pos - 2)) * (1.0);
  else	
  	limit_s2 = 0.5;  	
  if(point_pos>2)
  	limit_s1 = (1 << (point_pos - 3)) * (1.0);
  else if ( point_pos == 2 )
  	limit_s1 = 0.5;
  else
    limit_s1 = 0.25;
*/
  shift_no = 0;
  flag3 = 0;
  flag2 = 0;
  flag1 = 0;
  for (i = 0; i < point_no; i++)
    {
      if ((fabs (a[i]) > limit_s3)
	  || ((fabs (a[i]) == limit_s3) && (a[i] > 0)))
	{
	  flag3 = 1;
                      //printf("i=%d: a[i] = %f  limit=%f\n",i,fabs(a[i]),limit_s3);
	}
      else if ((fabs (a[i]) > limit_s2)
	       || ((fabs (a[i]) == limit_s2) && (a[i] > 0)))
	{
	  //      printf("___i=%d %f\n",i,fabs(a[i]));
	  flag2 = 1;
	}
      else if ((fabs (a[i]) > limit_s1)
	       || ((fabs (a[i]) == limit_s1) && (a[i] > 0)))
	flag1 = 1;
    }
  for (i = 0; i < point_no; i++)
    {
      if ((fabs (b[i]) > limit_s3)
	  || ((fabs (b[i]) == limit_s3) && (b[i] > 0)))
	flag3 = 1;
      else if ((fabs (b[i]) > limit_s2)
	       || ((fabs (b[i]) == limit_s2) && (b[i] > 0)))
	{
	  //      printf("___i=%d %f",i,fabs(b[i]));
	  flag2 = 1;
	}
      else if ((fabs (b[i]) > limit_s1)
	       || ((fabs (b[i]) == limit_s1) && (b[i] > 0)))
	flag1 = 1;
    }
	
	
  if (flag3 == 1)  	
    shift_no = 3;	
  else if (flag2 == 1)
    shift_no = 2;
  else if (flag1 == 1)
    shift_no = 1;
  else
    shift_no = 0;

	if ( ( guard_set == 1 ) && ( shift_no > 1 ) )
		shift_no = 1;
	else if ( ( guard_set == 2 ) && ( shift_no > 2 ) )
		shift_no = 2;
	else
		shift_no = shift_no;										
      //printf("\n-------@ this stage,the shift no is %d\n",shift_no);
  return (shift_no);

}
