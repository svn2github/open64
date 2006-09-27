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


#pragma ident "@(#) libfi/mathlb/nearest.c	92.1	07/09/99 11:00:36"

#include <fortran.h>
#include <liberrno.h>
#include <fmath.h>
#ifdef  __mips
#include <math.h>
#endif
#include "inline.h"

/* NEAREST - return the nearest different machine representable number in a 
 * 		given direction s for 32-bit and 64-bit values.  Returns
 * 		the argument x if s = zero.  The result is undefined in f90
 * 		when s = zero.
 */
_f_real4
_NEAREST_4(_f_real4 x, _f_real4 s)
{
	REGISTER_4 s1, s2, s3;
	s1.f = x;
	if (s == (_f_real4) 0.0) {
		_lerror (_LELVL_ABORT, FENEARZS);
	}
#if defined (_CRAY1) && defined(_CRAYIEEE)
	s3.ui = s1.ui & ~(IEEE_64_SIGN_BIT);
	s2.ui = (s1.f > 0) ? LL_CONST(0x20000000) : -(LL_CONST(0x20000000));
	if ((_f_real4) TINY_REAL4_F90 > s3.f)
		s1.f = 0.0;
#else
	s2.ui = (s1.f > 0) ? 0x1 : -(0x1);
#endif
	if (s1.f == (_f_real4) 0.0) {
		s1.f = (s > (_f_real4) 0.0) ?
		   (_f_real4) TINY_REAL4_F90 : (_f_real4) -TINY_REAL4_F90;
	} else if (s > (_f_real4) 0.0) {
		s1.ui += s2.ui;
	} else {
		s1.ui -= s2.ui;
	}
#if defined (_CRAY1) && defined(_CRAYIEEE)
	if (isnormal64(s1.ui))
#else
	if (isnormal32(s1.ui))
#endif
		return s1.f;
	if (x > 1.0 || x < -1.0)
		return (s1.f);
	return (0.0);
}

_f_real4
_NEAREST_4_8(_f_real4 x, _f_real8 s)
{
	REGISTER_4 s1, s2, s3;
	s1.f = x;
	if (s == 0.0) {
		_lerror (_LELVL_ABORT, FENEARZS);
	}
#if defined (_CRAY1) && defined(_CRAYIEEE)
	s3.ui = s1.ui & ~(IEEE_64_SIGN_BIT);
	s2.ui = (s1.f > 0) ? LL_CONST(0x20000000) : -(LL_CONST(0x20000000));
	if ((_f_real4) TINY_REAL4_F90 > s3.f)
		s1.f = 0.0;
#else
	s2.ui = (s1.f > 0) ? 0x1 : -(0x1);
#endif
	if (s1.f == 0.0) {
		s1.f = (s > 0.0) ?
			(_f_real4) TINY_REAL4_F90 : (_f_real4) -TINY_REAL4_F90;
	} else if (s > 0.0) {
		s1.ui += s2.ui;
	} else {
		s1.ui -= s2.ui;
	}
#if defined (_CRAY1) && defined(_CRAYIEEE)
	if (isnormal64(s1.ui))
#else
	if (isnormal32(s1.ui))
#endif
		return s1.f;
	if (x > 1.0 || x < -1.0)
		return s1.f;
	return (0.0);
}

_f_real8
_NEAREST_8_4(_f_real8 x, _f_real4 s)
{
	REGISTER_8 s1, s2;
	s1.f = x;
	if (s == 0.0) {
		_lerror (_LELVL_ABORT, FENEARZS);
	}
	s2.ui = (s1.f > 0) ? LL_CONST(0x1) : -(LL_CONST(0x1));
	if (s1.f == 0.0) {
		s1.f = (s > 0.0) ? TINY_REAL8_F90 : -TINY_REAL8_F90;
	} else if (s > 0.0) {
		s1.ui += s2.ui;
	} else {
		s1.ui -= s2.ui;
	}
	if (isnormal64(s1.ui))
		return s1.f;
	if (x > 1.0 || x < -1.0)
		return s1.f;
	return (0.0);
}

_f_real8
_NEAREST(_f_real8 x, _f_real8 s)
{
	REGISTER_8 s1, s2;
	s1.f = x;
	if (s == 0.0) {
		_lerror (_LELVL_ABORT, FENEARZS);
	}
	s2.ui = (s1.f > 0) ? LL_CONST(0x1) : -(LL_CONST(0x1));
	if (s1.f == 0.0) {
		s1.f = (s > 0.0) ? TINY_REAL8_F90 : -TINY_REAL8_F90;
	} else if (s > 0.0) {
		s1.ui += s2.ui;
	} else {
		s1.ui -= s2.ui;
	}
	if (isnormal64(s1.ui))
		return s1.f;
	if (x > 1.0 || x < -1.0)
		return s1.f;
	return (0.0);
}

#ifndef	__mips
#if _F_REAL16 == 1
/* NEAREST - return the nearest different machine representable number
 * 		in a given direction s for 128-bit values.  Returns the
 * 		argument x if s = zero.  The result is undefined in f90
 * 		when s = zero.
 */
_f_real16
_NEAREST_16(_f_real16 x, _f_real16 s)
{
#if defined(_WORD32)
	union ldble_float {
		_f_real16		whole;
		unsigned long long	ui[1];
	} f,rslt;
	unsigned long long	s2, s3, s4;
#else
	union ldble_float {
		_f_real16		whole;
		unsigned long 		ui[1];
	} f,rslt;
	unsigned long 		s2, s3, s4;
#endif

	rslt.whole =	x;
	f.whole =	x;
	if (s == 0.0) {
		_lerror (_LELVL_ABORT, FENEARZS);
	}
	s2 = (rslt.whole > 0) ? LL_CONST(0x1) : -(LL_CONST(0x1));
	if (rslt.whole > 0) {
		/* if x > 0 and s > 0, check for all 7's in 2nd word */
		s3 = IEEE_128_64_MANT2;
		/* if x > 0 and s < 0, check for all zeros in 2nd word */
		s4 = LL_CONST(0x0);
	} else {
		/* if x < 0 and s > 0, check for all zeros in 2nd word */
		s3 = LL_CONST(0x0);
		/* if x < 0 and s < 0, check for all 7's in 2nd word */
		s4 = IEEE_128_64_MANT2;
	}

	if (rslt.whole == 0.0) {
		rslt.whole = (s > 0.0) ? TINY_REAL16_F90 : -TINY_REAL16_F90;
	} else if (s > 0.0) {
		rslt.ui[1] += s2;
		if (f.ui[1] == s3) {
			rslt.ui[0] += s2;
		}
	} else {
		rslt.ui[1] -= s2;
		if (f.ui[1] == s4) {
			rslt.ui[0] -= s2;
		}
	}
	if (isnormal128(rslt.whole))
		return rslt.whole;
	if (x > 1.0 || x < -1.0)
		return rslt.whole;
	return (0.0);
}

_f_real4
_NEAREST_4_16(_f_real4 x, _f_real16 s)
{
	REGISTER_4 s1, s2, s3;
	s1.f = x;
	if (s == 0.0) {
		_lerror (_LELVL_ABORT, FENEARZS);
	}
#if defined (_CRAY1) && defined(_CRAYIEEE)
	s3.ui = s1.ui & ~(IEEE_64_SIGN_BIT);
	s2.ui = (s1.f > 0) ? LL_CONST(0x20000000) : -(LL_CONST(0x20000000));
	if ((_f_real4) TINY_REAL4_F90 > s3.f)
		s1.f = 0.0;
#else
	s2.ui = (s1.f > 0) ? 0x1 : -(0x1);
#endif
	if (s1.f == 0.0) {
		s1.f = (s > 0.0) ?
			(_f_real4) TINY_REAL4_F90 : (_f_real4) -TINY_REAL4_F90;
	} else if (s > 0.0) {
		s1.ui += s2.ui;
	} else {
		s1.ui -= s2.ui;
	}
#if defined (_CRAY1) && defined(_CRAYIEEE)
	if (isnormal64(s1.ui))
#else
	if (isnormal32(s1.ui))
#endif
		return s1.f;
	if (x > 1.0 || x < -1.0)
		return s1.f;
	return (0.0);
}

_f_real8
_NEAREST_8_16(_f_real8 x, _f_real16 s)
{
	REGISTER_8 s1, s2;
	s1.f = x;
	if (s == 0.0) {
		_lerror (_LELVL_ABORT, FENEARZS);
	}
	s2.ui = (s1.f > 0) ? LL_CONST(0x1) : -(LL_CONST(0x1));
	if (s1.f == 0.0) {
		s1.f = (s > 0.0) ? TINY_REAL8_F90 : -TINY_REAL8_F90;
	} else if (s > 0.0) {
		s1.ui += s2.ui;
	} else {
		s1.ui -= s2.ui;
	}
	if (isnormal64(s1.ui))
		return s1.f;
	if (x > 1.0 || x < -1.0)
		return s1.f;
	return (0.0);
}

_f_real16
_NEAREST_16_8(_f_real16 x, _f_real8 s)
{
#if defined(_WORD32)
	union ldble_float {
		_f_real16		whole;
		unsigned long long	ui[1];
	} f,rslt;
	unsigned long long	s2, s3, s4;
#else
	union ldble_float {
		_f_real16		whole;
		unsigned long 		ui[1];
	} f,rslt;
	unsigned long 		s2, s3, s4;
#endif

	rslt.whole =	x;
	f.whole =	x;
	if (s == 0.0) {
		_lerror (_LELVL_ABORT, FENEARZS);
	}
	s2 = (rslt.whole > 0) ? LL_CONST(0x1) : -(LL_CONST(0x1));
	if (rslt.whole > 0) {
		/* if x > 0 and s > 0, check for all 7's in 2nd word */
		s3 = IEEE_128_64_MANT2;
		/* if x > 0 and s < 0, check for all zeros in 2nd word */
		s4 = LL_CONST(0x0);
	} else {
		/* if x < 0 and s > 0, check for all zeros in 2nd word */
		s3 = LL_CONST(0x0);
		/* if x < 0 and s < 0, check for all 7's in 2nd word */
		s4 = IEEE_128_64_MANT2;
	}

	if (rslt.whole == 0.0) {
		rslt.whole = (s > 0.0) ? TINY_REAL16_F90 : -TINY_REAL16_F90;
	} else if (s > 0.0) {
		rslt.ui[1] += s2;
		if (f.ui[1] == s3) {
			rslt.ui[0] += s2;
		}
	} else {
		rslt.ui[1] -= s2;
		if (f.ui[1] == s4) {
			rslt.ui[0] -= s2;
		}
	}
	if (isnormal128(rslt.whole))
		return rslt.whole;
	if (x > 1.0 || x < -1.0)
		return rslt.whole;
	return (0.0);
}
#endif	/* _F_REAL16 */
#else	/* NOT mips */
/* This routine returns the 128-bit real number whose value is the
 *  nearest different machine number in the direction given by the
 *  sign of the real S. The value of S must not be zero.
 */
extern _f_real16 _SPACING_16(_f_real16 a);

_f_real16
_NEAREST_16(_f_real16 a, _f_real16 s)
{
	_f_real16	d;
	_f_real16	result;
	if ( a == 0 || s == 0 ) {
		if ( s < 0 ) {
			result	= -_SPACING_16(a);
		} else {
			result	= _SPACING_16(a);
		}
	} else {
		if (a < 0) {
			d	= a * (-2);
		} else {
			d	= a * 2;
		}
		if (s < 0)
			d	= -d;
		/* use nextafterl routine in libc prototyped in math.h */
		result	= nextafterl(a,d);
	}
	return result;
}
#endif	/* NOT mips */
