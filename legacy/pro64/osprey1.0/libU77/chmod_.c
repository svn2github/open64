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

/* --------------------------------------------------- */
/* | All Rights Reserved.                            | */
/* --------------------------------------------------- */
/* $Header: /proj/osprey/CVS/open64/osprey1.0/libU77/chmod_.c,v 1.1.1.1 2005/10/21 19:00:00 marcel Exp $ */
/* $Header: /proj/osprey/CVS/open64/osprey1.0/libU77/chmod_.c,v 1.1.1.1 2005/10/21 19:00:00 marcel Exp $ */
/*
 *
 * chmod - change file mode bits
 *
 * synopsis:
 *	integer function chmod (fname, mode)
 *	character*(*) fname, mode
 */

#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>
#include <malloc.h>
#include "cmplrs/f_errno.h"
#include <sys/param.h>
#ifndef	MAXPATHLEN
#define MAXPATHLEN	128
#endif
#include <sgidefs.h>
#include "externals.h"

extern __int32_t
chmod_ (char *name, char *mode, __int32_t namlen, __int32_t modlen)
{
	char	*modbuf;
	__int32_t retcode;

	if (!bufarg && !(bufarg=malloc(bufarglen=namlen+modlen+2)))
#ifdef __sgi
	{
		errno=F_ERSPACE;
		return(-1);
	}
#else
		return(errno=F_ERSPACE);
#endif
	else if (bufarglen <= namlen+modlen+1 && !(bufarg=realloc(bufarg, bufarglen=namlen+modlen+2)))
#ifdef __sgi
	{
		errno=F_ERSPACE;
		return(-1);
	}
#else
		return(errno=F_ERSPACE);
#endif
	modbuf = &bufarg[namlen+1];
	g_char(name, namlen, bufarg);
	g_char(mode, modlen, modbuf);
	if (bufarg[0] == '\0')
#ifdef __sgi
	{
		errno=ENOENT;
		return(-1);
	}
#else
		return(errno=ENOENT);
#endif
	if (modbuf[0] == '\0')
#ifdef __sgi
	{
		errno=F_ERARG;
		return(-1);
	}
#else
		return(errno=F_ERARG);
#endif
	if (fork())
	{
		if (wait(&retcode) == -1)
			return(errno);
		return(retcode);
	}
	else
		/* child */
		execl("/bin/chmod", "chmod", modbuf, bufarg, (char *)0);
		/* NOTREACHED */
}
