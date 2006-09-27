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

#pragma ident "@(#) libu/clib/signal.c	92.1	07/01/99 13:42:20"

/*    signal.c     */

/* SIGNAL has been called from both FORTRAN and PASCAL but the two
 * compilers generate code that calls SIGNAL that is not compatible.
 * Because of this SIGNAL may vary from site to site and we discourage
 * its use. Codes should be changed to call either FSIGNAL or PSIGNAL.
 * This will allow codes to be ported to other CRAY sites. The use
 * of SIGNAL may give different results at different sites. */

SIGNAL (sig,func)
int  *sig, *func;
{
	return ((long)signal(*sig,*func));
}

/* FSIGNAL is the FORTRAN callable link to 'signal' */
FSIGNAL (sig,func)
int  *sig, *func;
{
	return ((long)signal(*sig,func));
}

/* PSIGNAL is the PASCAL callable link to 'signal' */
PSIGNAL (sig,func)
int  *sig, *func;
{
	return ((long)signal(*sig,*func));
}
