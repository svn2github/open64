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


/* ====================================================================
 * ====================================================================
 *
 * Module: config_platform.h
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/driver/config_platform.h,v $
 *
 * Revision history:
 *  11-May-96 - Original Version
 *
 * Description:
 *
 * Definitions of the various platforms supported by the compiler.
 * This package is used to configure certain platform-specific options
 * like the -Ofast option set and cache configuration for LNO.
 *
 * This is separate from config_targ.h because it has a very small set
 * of clients, whereas config_targ.h is included in config.h and hence
 * everywhere.
 *
 * NOTE:  There is an outstanding bug, PV 378171, to base this
 * functionality on an external configuration file.
 *
 * WARNING:  This header should be usable by the driver, so it should
 * be clean of special compiler types.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef config_platform_INCLUDED
#define config_platform_INCLUDED

#ifdef _KEEP_RCS_ID
static char *config_platform_rcs_id = "$Source: /proj/osprey/CVS/open64/osprey1.0/driver/config_platform.h,v $ $Revision: 1.1.1.1 $";
#endif /* _KEEP_RCS_ID */

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/* What are the supported platforms? */
typedef enum {
  IP0,		/* Unknown processor */
  IP19,		/* 	    R4000 Challenge */
  IP20,		/* Blackjack: R4000 Indigo */
  IP21,		/* Everest: R8000 Power Challenge */
  IP22_4K,	/*	    R4x00 Indy/Indigo2 */
  IP22_5K,	/* Guiness: R5000 Indy */
  IP24,		/* Guiness: R5000 Indy (same as IP22_5K) */
  IP25,		/* Shiva:   R10000 Power Challenge */
  IP26,		/* Teton:   R8000 Indigo2 */
  IP27,		/* Lego:    R10000 Origin 2000 */
  IP28,		/* Pacecar: R10000 Indigo2 */
  IP30,		/* TopCat:  R10000 Octane, a.k.a. Speedracer */
  IP32_5K,	/* Moosehead: R5000 O2 */
  IP32_10K,	/* Moosehead: R10000 O2 */
  IP_END	/* End of platform list */
} PLATFORM;

/* What are the supported platforms (for driver): */
typedef enum {
  PROC_NONE	= 0,
  PROC_R3K	= 3,
  PROC_R4K	= 4,
  PROC_R5K	= 5,
  PROC_R8K	= 8,
  PROC_R10K	= 10,
  PROC_R12K	= 12,
  PROC_ITANIUM	= 20,
} PROCESSOR;

extern PLATFORM Platform;	/* Target platform */

/* How should we set the options? */
typedef struct {
  PLATFORM id;		/* Which IP? */
  char *name;		/* "ipxx" */
  char *pname;		/* "r10000" */
  PROCESSOR processor;	/* PROC_RxK */
  /* Add fields here for values of options which vary per processor */
  char *nickname;	/* "Shiva" */
} PLATFORM_OPTIONS;

#define POPTS_id(p)		((p)->id)
#define POPTS_name(p)		((p)->name)
#define POPTS_pname(p)		((p)->pname)
#define POPTS_processor(p)	((p)->processor)
#define POPTS_nickname(p)	((p)->nickname)

extern PLATFORM_OPTIONS * Get_Platform_Options ( char *name );

#ifdef __cplusplus
}
#endif /* __cplusplus */
    
#endif /* config_platform_INCLUDED */
