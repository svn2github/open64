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

extern void init_objects (void);

/* need to init crt paths if doing ipa link */
extern void init_crt_paths (void);

/*
 * Whether option is an object or not.
 * Our definition of "object" includes libraries and library path options,
 * because we need to keep the order of those correct. 
 */
extern boolean is_object_option (int flag);

/* add object to list of objects */
extern void add_object (int flag, string arg);
/* add object to list of objects to pass to archive phase. */
extern void add_ar_objects (string arg);

/* add library to list */
extern void add_library_dir (string path);

/* append objects to end of list */
extern void append_objects_to_list (string_list_t *list);
extern void append_implicit_lib_path_to_lst (string_list_t *list);
extern void append_cxx_prelinker_objects_to_list (string_list_t *list);
extern void append_ar_objects_to_list (string_list_t *list);

extern void dump_objects (void);	/* for debugging */

/* extra hand-coded stuff for library options */
extern void add_library_options (void);

/* search library_dirs for the crt file */
extern string find_crt_path (string crtname);

