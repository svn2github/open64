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


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/param.h>
#include <errno.h>
#include "string_utils.h"
#include "file_utils.h"

extern int errno;

/* drops path prefix in string */
extern string
drop_path (string s)
{
        string tail;
        tail = strrchr (s, '/');
	if (tail == NULL) {
		return s;	/* no path prefix */
	} else {
		tail++;		/* skip the slash */
		return tail;	/* points inside s, not new string! */
	}
}

extern boolean
file_exists (string path)
{
	int st;
	struct stat sbuf;
	st = stat(path, &sbuf);
	if (st == -1 && (errno == ENOENT || errno == ENOTDIR))
		return FALSE;
	else
		return TRUE;
}

extern boolean
is_directory (string path)
{
        /* check if . file exists */
        buffer_t buf;
	if (*path == NIL) return FALSE;		/* empty path */
        strcpy(buf, path);
        strcat(buf, "/.");
        if (file_exists(buf)) 
		return TRUE;
        else 
		return FALSE;
}

/* check if directory is writable */
extern boolean
directory_is_writable (string path)
{
	FILE *f;
	string s;
	s = concat_strings(path, "/ctm.XXXXXX");
	s = mktemp(s);
	f = fopen(s, "w");
	if (f == NULL) {
		return FALSE;
	} else {
		fclose (f);
		unlink(s);
		return TRUE;
	}
}

extern string
get_cwd (void)
{
	string cwd = getcwd((char *) NULL, MAXPATHLEN);
	if (cwd == NULL) {
		cwd = getenv("PWD");
		if (cwd == NULL) {
			/* can't get path */
			cwd = ".";
		}
	}
	return cwd;
}
