/*
 * Copyright 2004, 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

/* Copyright (C) 1995, 1996 Free Software Foundation, Inc.
This file is part of GNU Fortran libU77 library.

This library is free software; you can redistribute it and/or modify it
under the terms of the GNU Library General Public License as published
by the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

GNU Fortran is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Library General Public License for more details.

You should have received a copy of the GNU Library General Public
License along with GNU Fortran; see the file COPYING.LIB.  If
not, write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
Boston, MA 02111-1307, USA.  */

#include "config.h"
#if HAVE_STDLIB_H
#  include <stdlib.h>
#endif
#if HAVE_UNISTD_H
#  include <unistd.h>
#endif
#include <sys/types.h>
#if HAVE_SYS_TIMES_H
#  include <sys/times.h>
#endif
#if HAVE_SYS_PARAM_H
#  include <sys/param.h>
#endif
#if HAVE_GETRUSAGE
#  include <sys/time.h>
#  include <sys/resource.h>
#endif
#if defined (_WIN32)
#  include <windows.h>
#  undef min
#  undef max
#endif
#include <errno.h>		/* for ENOSYS */
#include "f2c.h"


#include "cray/mtlock.h"

#include "pathf90_libU_intrin.h"

/* Provide this to implement intrinsic without polluting Fortran namespace. */
float
pathf90_dtime (float tarray[2])
{
  float utime, stime;
  static float old_utime = 0.0, old_stime = 0.0;
  static plock_t mut = PTHREAD_MUTEX_INITIALIZER;
  struct rusage rbuff;

  MEM_LOCK(&mut);
  if (getrusage (RUSAGE_SELF, &rbuff) != 0)
    abort ();
  utime = (float) (rbuff.ru_utime).tv_sec +
    (float) (rbuff.ru_utime).tv_usec / 1000000.0;
  tarray[0] = utime - (float) old_utime;
  stime = (float) (rbuff.ru_stime).tv_sec +
    (float) (rbuff.ru_stime).tv_usec / 1000000.0;
  tarray[1] = stime - old_stime;
  old_utime = utime;
  old_stime = stime;
  MEM_UNLOCK(&mut);

  return (tarray[0] + tarray[1]);
}

/* Alternate G77 subroutine form */
void
pathf90_subr_dtime (float tarray[2], float *result)
{
  *result = pathf90_dtime(tarray);
}

