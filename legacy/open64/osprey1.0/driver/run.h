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


#include "basic.h"
#include "string_utils.h"
#ifndef LANG_DEFS_H
#include "lang_defs.h"
#endif

extern boolean show_version;	/* show the compiler version */
extern boolean show_flag;	/* show what driver does */
extern boolean execute_flag;	/* execute phases */
extern boolean time_flag;	/* give time info */
extern boolean memory_flag;	/* give memory usage info */
extern boolean run_m4;		/* run m4 on each ratfor file */
extern boolean prelink_flag;	/* C++ only:  run the prelinker before ld */
extern boolean quiet_flag;	/* g++: suppress timing information */

/* run a phase of the compiler */
extern void run_phase (phases_t, string, string_list_t *); 

/* exec another program, putting result in output.
 * This is simple version of full run_phase. */
extern void run_simple_program (string name, char **argv, string output);

/* Handler () is used for catching signals.  */
extern void handler (int sig);

/* set signal handler */ 
extern void catch_signals (void);

