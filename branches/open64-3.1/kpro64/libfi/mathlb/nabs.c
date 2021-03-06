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


#pragma ident "@(#) libfi/mathlb/nabs.c	92.2	10/04/99 16:45:21"

#include <fortran.h>

extern _f_int4 _NABS_(_f_int4 *x);
extern _f_int4 _NABS(_f_int4 x);

/*
 * NABS: integer(kind=4) - pass by address
 */
_f_int4
_NABS_(_f_int4 *x)
{
        return (_NABS(*x) );
}

/*
 * NABS: integer(kind=4)  - pass by value
 */
_f_int4
_NABS( _f_int4 x )
{
        return ( (x > 0) ? x : -x);
}

#if	defined(__mips) || defined(_LITTLE_ENDIAN)

_f_int4
__i_abs_(_f_int4 *x)
{
        return (_NABS(*x));
}

_f_int4
i_abs(_f_int4 *x)
{
        return (_NABS(*x));
}

#endif  /* mips or little endian */

