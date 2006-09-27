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

extern boolean keep_flag;	/* keep intermediate files */

extern string_list_t *count_files;

/* return object file that corresponds to source name */
extern string get_object_file (string src);

/* construct name for intermediate file with given suffix */
extern string construct_name (string src, string suffix);
/* create name for temp file (similar to construct_name except
   it always gives a temp file even in the presence of -keep */
extern string create_temp_file_name (string suffix);
/* use given src name, but check if treated as a temp file or not */
extern string construct_given_name (string src, string suffix, boolean keep);

/* For C++ single-source compilations, we still do multiple phases.
 * We need a special mechanism for getting rid of the .o file. */
extern void mark_saved_object_for_cleanup(void);

/* Create filename with the given extension, eg. create foo.anl from foo.f*/
extern string construct_file_with_extension (string src, string ext);

/* init the maintenance of temp files */
extern void init_temp_files (void);

/* init the maintenance of count files */
extern void init_count_files (void );

/* this will clean up temp files */
extern void cleanup (void);

