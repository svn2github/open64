/*
 * Copyright 2003, 2004 PathScale, Inc.  All Rights Reserved.
 */

/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if 
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/

/* 
 * PHASEPATH:    Location for *NON* general purpose, non GNU phases(e.g be).
 * GNUPHASEPATH: Location for *NON* general purpose, GNU phases(e.g collect2)
 *
 * BINPATH:      Location for general purpose phases (e.g m4) 
 * ALTBINPAHT:   Another location for general purpose phases (e.g m4 of NUE)
 *
 * LIBPATH:      Location for compiler's specific lib.
 * ALTLIBPATH:   Specify the location where native lib reside.
 */

#ifndef lib_phase_dir_INCLUDED
#define lib_phase_dir_INCLUDED

#include <stamp.h>

#if 0
#include "pathscale_defs.h"


#define NAMEPREFIX	""
#define BINPATH		PSC_INSTALL_PREFIX "/bin"
#define ALTBINPATH	BINPATH
#define LIBPATH		PSC_INSTALL_PREFIX "/lib"
#define ALTLIBPATH	LIBPATH
#define PHASEPATH	PSC_INSTALL_PREFIX "/lib"
#define GNUPHASEPATH	PSC_INSTALL_PREFIX "/lib/gcc-lib/" PSC_TARGET "/" PSC_GCC_VERSION
#endif

#ifndef CROSS_COMPILATION
#if defined(TARG_PR) || defined(TARG_MIPS) || defined(TARG_X8664_SOCC)
#define CROSS_COMPILATION
#endif
#endif

#ifdef TARG_IA64
  #define OPEN64_TARGET "ia64-orc-linux"
  #define VERSION "2.1"
  #define OPEN64_PHASE_PATH ""
  #define OPEN64_CMPLR_NAME_PREFIX "or"
  #define OPEN64_TARGET_NAME "ia64"  // for lang_defs.c
#elif defined(TARG_IA32)
  #define OPEN64_TARGET ""
  #define VERSION ""
  #define OPEN64_PHASE_PATH "ia32-sgi-linux/bin"
  #define OPEN64_CMPLR_NAME_PREFIX "sgi"
  #define OPEN64_TARGET_NAME "ia32"
#elif defined(TARG_PR)
  #define OPEN64_TARGET "pr-linux/bin"
  #define VERSION ""
  #define OPEN64_PHASE_PATH "usr/pr-linux/bin"
  #define OPEN64_CMPLR_NAME_PREFIX "pr"
  #define OPEN64_TARGET_NAME "pr"
#elif defined(TARG_X8664_SOCC)
  #define OPEN64_TARGET "socc-linux/bin"
  #define VERSION ""
  #define OPEN64_PHASE_PATH "usr/socc-linux/bin"
  #define OPEN64_CMPLR_NAME_PREFIX "so"
  #define OPEN64_TARGET_NAME "so"
#elif defined(TARG_MIPS)
#if defined(TARG_SL)
  #define OPEN64_TARGET ""
  #define VERSION ""
  #define OPEN64_PHASE_PATH "/usr/bin"
  #define OPEN64_CMPLR_NAME_PREFIX ""
  #define OPEN64_TARGET_NAME "sl"
#else
  #define OPEN64_TARGET "mips-linux"
  #define VERSION ""
  #define OPEN64_PHASE_PATH "/usr/mips-linux/bin"
  #define OPEN64_CMPLR_NAME_PREFIX "mips"
  #define OPEN64_TARGET_NAME "mips"
#endif
#endif
  #define OPEN64_VERSION OPEN64_CMPLR_NAME_PREFIX VERSION
  #define OPEN64_GCC_VERSION "3.2"
  #define OPEN64_INSTALL_PREFIX "/"


#if defined(linux) 

    #ifdef CROSS_COMPILATION
	    #define NAMEPREFIX	""
	    #define INTERPOSE   OPEN64_TARGET
    #else
	    #define NAMEPREFIX	""
	    #define INTERPOSE   ""
    #endif 

    #define BINPATH		"/usr/" INTERPOSE "/bin"

    #ifdef CROSS_COMPILATION
        #define ALTBINPATH  "/usr/" INTERPOSE "/altbin"
    #else
        #define ALTBINPATH  BINPATH
    #endif 

#if !defined(TARG_SL)
    #define LIBPATH	"/usr/" INTERPOSE "/lib/gcc-lib/" OPEN64_TARGET VERSION
#else
    #define LIBPATH	"/usr/" INTERPOSE "/lib"
#endif
    #define ALTLIBPATH	"/usr/" INTERPOSE "/lib"
  #ifdef TARG_IA64
    #define PHASEPATH       LIBPATH
  #else
    #define PHASEPATH	    OPEN64_PHASE_PATH
  #endif
    #define GNUPHASEPATH	LIBPATH

#else

    #define NAMEPREFIX	""
    #define BINPATH		"/usr/bin"
    #define ALTBINPATH   BINPATH
    #define LIBPATH		"/usr/lib"
    #define ALTLIBPATH	LIBPATH
    #define PHASEPATH	"/usr/lib32/cmplrs"
    #define GNUPHASEPATH	PHASEPATH

#endif

#endif /* lib_phase_dir_INCLUDED */
