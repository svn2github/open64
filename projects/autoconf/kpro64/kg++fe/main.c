/* 
   Copyright 2003, 2004, 2005 PathScale, Inc.  All Rights Reserved.
   File modified June 20, 2003 by PathScale, Inc. to update Open64 C/C++ 
   front-ends to GNU 3.2.2 release.
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


/* main driver for front end */
#include <stdio.h>
#include <stdlib.h>
#include <cmplrs/rcodes.h>

#include "erfe.desc"            /* Front end error codes */

#define IN_GCC
#include <config.h>
#include <system.h>
#include <diagnostic.h>
#undef IN_GCC

extern const char *Orig_Src_File_Name;

static int saved_argc;
static char **saved_argv;
static char **saved_envp;

void whirl_compile_file(const char *filename)
{
	Orig_Src_File_Name = filename;

	WFE_Init (saved_argc, saved_argv, saved_envp);
	WFE_File_Init (saved_argc, saved_argv);
}

int gnu_errors()
{
	return (diagnostic_kind_count (global_dc, DK_ERROR) ||
		diagnostic_kind_count (global_dc, DK_SORRY)) ? 1 : 0;
}

int
main(int argc, char *argv[], char *envp[])
{
	INT error_count, sorry_count;
	BOOL need_inliner;
	int exitcode;

	saved_argc = argc;
	saved_argv = argv;
	saved_envp = envp;

	Set_Error_Descriptor(EP_FE, EDESC_FE, "Front End");

	/* GCC foo */
	exitcode = toplev_main(argc, argv);

        WFE_File_Finish ();
        WFE_Finish ();

	if (exitcode)
		exit(exitcode);

	WFE_Check_Errors (&error_count, &sorry_count, &need_inliner);
	if (error_count)
		Terminate (RC_INTERNAL_ERROR) ;
	if (need_inliner)
		exit ( RC_NEED_INLINER );

	exit (RC_OKAY);
}
