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
#include "cmplrs/host.h"
#include <math.h>
#include "moremath.h"

extern	void	sincos(double, double *, double *);

dcomplex __powzz(double_t adreal, double_t adimag, double_t bdreal, double_t bdimag)
{
  double_t logr, logi, x, y;
  double sinx, cosx;
  dcomplex r;

  logr = log(hypot(adreal,adimag));
  logi = atan2(adimag,adreal);

  x = exp(logr*bdreal-logi*bdimag);
  y = logr*bdimag+logi*bdreal;

  sincos(y, &sinx, &cosx);
  r.dreal = x*cosx;
  r.dimag = x*sinx;

  return r;


}

void pow_zz(dcomplex *r, dcomplex *a, dcomplex *b)
{
  *r = __powzz(a->dreal, a->dimag, b->dreal, b->dimag);
}

void pow_zz_(dcomplex *r, dcomplex *a, dcomplex *b)
{
  *r = __powzz(a->dreal, a->dimag, b->dreal, b->dimag);
}
