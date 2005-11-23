/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2.1 of the GNU Lesser General Public License 
  as published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU Lesser General Public 
  License along with this program; if not, write the Free Software 
  Foundation, Inc., 59 Temple Place - Suite 330, Boston MA 02111-1307, 
  USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/



#include "cmplx.h"
#include <math.h>
#include "moremath.h"

extern  void    sincosf(float, float *, float *);

complex __powcc(float areal, float aimag, float breal, float bimag)
{
  float logr, logi, x, y;
  float sinx, cosx;
  complex r;

  logr = logf(hypotf(areal,aimag));
  logi = atan2f(aimag,areal);

  x = expf(logr*breal-logi*bimag);
  y = logr*bimag+logi*breal;

  sincosf(y, &sinx, &cosx);
  r.real = x*cosx;
  r.imag = x*sinx;

  return r;
}

void pow_cc(complex *r, complex *a, complex *b)
{
  *r = __powcc(a->real, a->imag, b->real, b->imag);
}

void pow_cc_(complex *r, complex *a, complex *b)
{
  *r = __powcc(a->real, a->imag, b->real, b->imag);
}
