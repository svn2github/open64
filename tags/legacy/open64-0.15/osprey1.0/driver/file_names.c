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
#include <errno.h>
#include "phases.h"
#include "lang_defs.h"
#include "string_utils.h"
#include "file_names.h"
#include "file_utils.h"
#include "errors.h"
#include "opt_actions.h"
#include "option_seen.h"
#include "option_names.h"
#include "run.h"

extern int errno;

boolean keep_flag = FALSE;

string_list_t *count_files = NULL;
static string_list_t *temp_files = NULL;
static string tmpdir;
static string saved_object = NULL;

#define DEFAULT_TMPDIR	"/tmp"

/* get object file corresponding to src file */
extern string
get_object_file (string src)
{
	return change_suffix(drop_path(src), "o");
}

/*
 * Need temp file names to be same if use same suffix
 * (because this can be called for both producer and consumer
 * of temp file), but also need names that won't conflict.
 * Put suffix in standard place so have easy way to check 
 * if file already created. 
 * Use tempnam to generate unique file name;
 * tempnam verifies that file is writable.
 */
string
create_temp_file_name (string suffix)
{
	buffer_t buf;
	buffer_t pathbuf;
	size_t pathbuf_len;
	string s;
	string_item_t *p;
	/* use same prefix as gcc compilers;
	 * tempnam limits us to 5 chars, and may have 2-letter suffix. */
	sprintf(buf, "cc%s.", suffix);
	sprintf(pathbuf, "%s/%s", tmpdir, buf); /* full path of tmp files */
	pathbuf_len = strlen(pathbuf);

	for (p = temp_files->head; p != NULL; p = p->next) {
		/* Can't use get_suffix here because we don't actually
		 * want the suffix. tempnam may return a value with a period
		 * in it. This will confuse our duplicates check below.
		 * We can't change get_suffix, because in other cases we
		 * actually want the right-most period. foo.bar.c
		 * We are guaranteed here that the first period after the last
		 * directory divider is the position we want because we chose
		 * its contents above.
		 */
		string file_name = strrchr(p->name, '/');
		if (file_name == NULL)
			file_name = p->name;
		s = strchr(file_name, '.');
		/* we know that s won't be null because we created a string
		 * with a period in it. */
		s++;
		/* assume that s points inside p->name,
		 * e.g. /tmp/ccB.abc, s points to a */
		if (strncmp(s-pathbuf_len, pathbuf, pathbuf_len) == 0) {
			/* matches the prefix and suffix character */
			return p->name;
		}
	}
	/* need new file name */
	s = tempnam (tmpdir, buf);
	add_string (temp_files, s);
	return s;
}

extern string
construct_name (string src, string suffix)
{
	if (keep_flag || current_phase == remember_last_phase) {
		string srcname;
		/* 
		 * if -c -o <name>, then use name.suffix
		 * (this helps when use same source to create different .o's)
		 * if outfile doesn't have .o suffix, don't do this.
		 */
		if (outfile && option_was_seen(O_c) && get_suffix(outfile))
			srcname = outfile;
		else
			srcname = src;
		return change_suffix(drop_path(srcname), suffix);
	} else {
		return create_temp_file_name (suffix);
	}
}

/* use given src name, but check if treated as a temp file or not */
extern string
construct_given_name (string src, string suffix, boolean keep)
{
	string s;
	s = change_suffix(drop_path(src), suffix);
	if (keep || current_phase == remember_last_phase) {
		return s;
	} else {
		s = string_copy(s);
		add_string_if_new (temp_files, s);
		return s;
	}
}

extern void
mark_saved_object_for_cleanup ( void )
{
	if (saved_object != NULL)
	add_string_if_new (temp_files, saved_object);
}

/* Create filename with the given extension; eg. foo.anl from foo.f */
extern string
construct_file_with_extension (string src, string ext)
{
	return change_suffix(drop_path(src),ext);
}

extern void
init_temp_files (void)
{
        tmpdir = getenv("TMPDIR");
        if (tmpdir == NULL) {
                tmpdir = DEFAULT_TMPDIR;
	} 
	else if (!is_directory(tmpdir)) {
		error("$TMPDIR does not exist: %s", tmpdir);
	} 
	else if (!directory_is_writable(tmpdir)) {
		error("$TMPDIR not writable: %s", tmpdir);
	} 
	else if (tmpdir[strlen(tmpdir)-1] == '/') {
		/* drop / at end so strcmp matches */
		tmpdir[strlen(tmpdir)-1] = '\0';
	}
	temp_files = init_string_list();
}

extern void
init_count_files (void)
{
        count_files = init_string_list();
}

extern void
cleanup (void)
{
	/* cleanup temp-files */
	string_item_t *p;
	int status;
	if (temp_files == NULL) return;
	for (p = temp_files->head; p != NULL; p = p->next) {
		if (debug) printf("unlink %s\n", p->name);
		if (execute_flag) {
		    status = unlink(p->name);
		    if (status != 0 && errno != ENOENT) {
			internal_error("cannot unlink temp file %s", p->name);
			perror(program_name);			
		    }
		}
	}
	temp_files->head = temp_files->tail = NULL; 
}

