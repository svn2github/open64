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


#pragma ident "@(#) libfi/mathlb/cdcos.c	92.1	07/09/99 11:00:36"

#include <fortran.h>
#include <math.h>
#include "mathdefs.h"

extern void _CDCOS(d_complex_t *ret_val, d_complex_t z);
extern void _CDCOS_(d_complex_t *ret_val, d_complex_t *z);

/*
 * CDCOS  - complex(kind=16) - pass by value
 * 128-bit float complex cosine
 *
 * Semantics:  cos(z) = cos(a)*cosh(b)-sin(a)*sinh(b)*i
 *   (where z = a + b*i)
 */

void
_CDCOS(d_complex_t *ret_val,
        d_complex_t z )
{
	_f_real16 __cosl(_f_real16 x);
	_f_real16 __coshl(_f_real16 x);
	_f_real16 __sinl(_f_real16 x);
	_f_real16 __sinhl(_f_real16 x);
	ret_val->real = (__cosl(z.real) * __coshl(z.imag));
	ret_val->imag = - (__sinl(z.real) * __sinhl(z.imag));
}

/*
 * CDCOS  - complex(kind=16) - pass by address
 * 128-bit float complex cosine
 */

void
_CDCOS_(d_complex_t *ret_val,
	d_complex_t *z)
{
	_CDCOS(ret_val, *z);
}
