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


#include <stdarg.h>
#include <stdio.h>
#include <cmplrs/rcodes.h>
#include "errors.h"

status_codes error_status = RC_OKAY;
#define set_error_status(e)	if (error_status == RC_OKAY) error_status = e;

string program_name;
boolean print_warnings = TRUE;
boolean fullwarn = FALSE;

static int errors = 0;
static int previous_errors = 0;

extern void
error(string format, ...)
{
	va_list args;
	va_start (args, format);
	fprintf(stderr, "%s ERROR:  ", program_name);
	vfprintf(stderr, format, args);
	fprintf(stderr, "\n");
	va_end (args);
	set_error_status(RC_USER_ERROR);
	errors++;
}

extern void
parse_error (string name, string msg)
{
	fprintf(stderr, "%s ERROR parsing %s:  %s\n", 
		program_name, name, msg);
	set_error_status(RC_USER_ERROR);
	errors++;
}

extern void
warning (string format, ...)
{
	va_list args;
	if (!print_warnings) return;
	va_start (args, format);
	fprintf(stderr, "%s WARNING:  ", program_name);
	vfprintf(stderr, format, args);
	fprintf(stderr, "\n");
	va_end (args);
}

extern void
warn_ignored (string name)
{
	warning("%s is ignored", name);
}

extern void
warn_nyi (string name)
{
	warning("%s is not yet implemented", name);
}

extern void
warn_no_longer_needed (string name)
{
	warning("%s is no longer needed", name);
}

extern void
warn_no_longer_supported (string name)
{
	warning("%s is no longer supported", name);
}

extern void
warn_no_longer_supported2 (string name, string newname)
{
	warning("%s is no longer supported, use %s instead", name, newname);
}

extern void
internal_error (string format, ...)
{
	va_list args;
	va_start (args, format);
	fprintf(stderr, "%s INTERNAL ERROR:  ", program_name);
	vfprintf(stderr, format, args);
	fprintf(stderr, "\n");
	va_end (args);
	set_error_status(RC_INTERNAL_ERROR);
	errors++;
}

/* to signal that an error occured but trust previous error messages */
extern void
nomsg_error (void)
{
	set_error_status(RC_USER_ERROR);
	errors++;
}

extern boolean
has_errors(void)
{
	return (errors > 0 || previous_errors > 0);
}

extern boolean
has_current_errors(void)
{
	return (errors > 0);
}

extern void 
clear_current_errors(void)
{
	previous_errors = errors;
	errors = 0;
}
