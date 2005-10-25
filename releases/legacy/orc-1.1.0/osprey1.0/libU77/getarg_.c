/*

  Copyright (C) 1999-2001, Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2.1 of the GNU Lesser General Public License
  as published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  Further, any
  license provided herein, whether implied or otherwise, is limited to 
  this program in accordance with the express provisions of the 
  GNU Lesser General Public License.  

  Patent licenses, if any, provided herein do not apply to combinations 
  of this program with other product or programs, or any other product 
  whatsoever.  This program is distributed without any warranty that the 
  program is delivered free of the rightful claim of any third person by 
  way of infringement or the like.  

  See the GNU Lesser General Public License for more details.

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

*/

/* $Header: /proj/osprey/CVS/open64/osprey1.0/libU77/getarg_.c,v 1.1.1.1 2005/10/21 19:00:00 marcel Exp $ */
 /*
 * subroutine getarg(k, c)
 * returns the kth unix command argument in fortran character
 * variable argument c
*/
#include "externals.h"

#if defined(__mips)
#ifdef FTN90_IO
#define ARGC __Argc
#define ARGV __Argv
#else
#define ARGC f77argc
#define ARGV f77argv
#endif
#elif defined(__linux)
#define ARGC _f90argc
#define ARGV _f90argv 
#endif


extern void
getarg_ (int *n, register char *s, int ls)
{
register char *t;
register int i;

if(*n>=0 && *n<ARGC)
	t = ARGV[*n];
else
	t = "";
for(i = 0; i<ls && *t!='\0' ; ++i)
	*s++ = *t++;
for( ; i<ls ; ++i)
	*s++ = ' ';
}
