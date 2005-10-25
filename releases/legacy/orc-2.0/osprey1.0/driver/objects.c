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
#include <alloca.h>
#include "basic.h"
#include "string_utils.h"
#include "objects.h"
#include "option_names.h"
#include "options.h"
#include "option_seen.h"
#include "opt_actions.h"
#include "get_options.h"
#include "errors.h"
#include "lang_defs.h"
#include "file_names.h"
#include "file_utils.h"
#include "run.h"

string_list_t *objects;
string_list_t *lib_objects;
static string_list_t *cxx_prelinker_objects;
static string_list_t *ar_objects; 
static string_list_t *library_dirs;

extern void
init_objects (void)
{
 	objects = init_string_list();
 	lib_objects = init_string_list();
 	cxx_prelinker_objects = init_string_list();
 	ar_objects = init_string_list();
	library_dirs = init_string_list();
}

/* whether option is an object or not */
extern boolean
is_object_option (int flag)
{
	switch (flag) {
	case O_object:
	case O_objectlist:
	case O_l:
	case O_all:
	case O_notall:
        case O__whole_archive:
        case O__no_whole_archive:
	case O_none:
	case O_exports:
	case O_hides:
	case O_ignore_minor:
	case O_require_minor:
	case O_exact_version:
	case O_ignore_version:
	case O_exclude:
	case O_delay_load:
	case O_force_load:
		return TRUE;
	default:
		return FALSE;
	}
}

/* library list options get put in object list,
 * so order w.r.t. libraries is preserved. */
extern void
add_object (int flag, string arg)
{
    /* cxx_prelinker_object_list contains real objects, -objectlist flags. */
	switch (flag) {
	case O_l:
		/* xpg fort77 has weird rule about putting all libs after objects */
		if (xpg_flag && invoked_lang == L_f77) {
			add_string(lib_objects, concat_strings("-l",arg));
		} else {
			add_string(objects, concat_strings("-l",arg));
		}
		if (invoked_lang == L_CC) {
		    add_string(cxx_prelinker_objects,concat_strings("-l",arg));
		}

		/* when -lm, implicitly add extra math libraries */
		if (same_string(arg, "m")) {
			/* add -lmv -lmsgi */
			if (xpg_flag && invoked_lang == L_f77) {
				add_string(lib_objects, "-lmv");
				add_string(lib_objects, "-lmsgi");
			} else {
				add_string(objects, "-lmv");
				add_string(objects, "-lmsgi");
			}
			if (invoked_lang == L_CC) {
			    add_string(cxx_prelinker_objects, "-lmv");
			    add_string(cxx_prelinker_objects, "-lmsgi");
			}
		}
		break;
	case O_objectlist:
		add_multi_strings(objects, concat_strings("-objectlist ",arg));
		if (invoked_lang == L_CC) {
		    add_string(cxx_prelinker_objects,
				concat_strings("-YO=",arg));
		}
		break;
	case O_object:
		if (dashdash_flag && arg[0] == '-') {
		  add_string(objects,"--");
		  dashdash_flag = 1;
		}
		add_string(objects, arg);
		if (invoked_lang == L_CC) {
		    add_string(cxx_prelinker_objects, arg);
		}

		break;
	case O_all:
          /* O_all and O_notall are special cases.  They're object
             options, but (at least for the gnu linker) we don't 
             pass them as-is to the linker.  For normal non-object
             options this would be handled automatically. */
#if defined(linux)
          add_string(objects, get_option_name(O__whole_archive));
          break;
#endif
	case O_notall:
#if defined(linux)
          add_string(objects, get_option_name(O__no_whole_archive));
          break;
#endif
	case O_none:
	case O_exports:
	case O_hides:
	case O_ignore_minor:
	case O_require_minor:
	case O_exact_version:
	case O_ignore_version:
		add_string(objects, get_option_name(flag));
		break;
	case O_delay_load:
	case O_force_load:
		add_string(objects, get_option_name(flag));
		break;
	case O_exclude:
		add_string(objects, get_option_name(flag));
		add_string(objects, arg);
		break;
	default:
		internal_error("add_object called with not-an-object");
	}
}

/* append object files to the ar_objects list. */
extern void
add_ar_objects (string arg)
{
    add_string(ar_objects, arg);
}

/* append objects to end of list */
extern void
append_objects_to_list (string_list_t *list)
{
	append_string_lists (list, objects);
	if (xpg_flag && invoked_lang == L_f77) {
		append_string_lists (list, lib_objects);
	}
}

/* append cxx_prelinker_objects to end of list */
extern void
append_cxx_prelinker_objects_to_list (string_list_t *list)
{
	append_string_lists (list, cxx_prelinker_objects);
}

extern void
append_ar_objects_to_list(string_list_t *list)
{
    append_string_lists (list, ar_objects);
}

extern void
append_implicit_lib_path_to_lst (string_list_t *list)
{
    string libpath = get_phase_dir(P_library);
    add_string (list, concat_strings("-L", libpath));

    libpath = get_phase_dir(P_alt_library);
    add_string (list, concat_strings("-L", libpath));
}

extern void
dump_objects (void)
{
	printf("objects:  ");
	print_string_list (stdout, objects);
}

extern void
add_library_dir (string path)
{
	add_string(library_dirs, path);
}

extern void
add_library_options (void)
{
	int flag;
	buffer_t mbuf;
	buffer_t rbuf;
	string suffix = NULL;
	string mips_lib = NULL;
	string proc_lib = NULL;
	string lib = NULL;
	/*
	 * 32-bit libraries go in /usr/lib32. 
	 * 64-bit libraries go in /usr/lib64.
	 * isa-specific libraries append /mips{2,3,4}.
	 * non_shared libraries append /nonshared.
	 */
	switch (abi) {
#ifdef TARG_MIPS
	case ABI_N32:
	case ABI_I32:
		append_phase_dir(P_library, "32");
		append_phase_dir(P_startup, "32");
		break;
	case ABI_64:
		append_phase_dir(P_library, "64");
		append_phase_dir(P_startup, "64");
		break;
#endif
	case ABI_I64:
		break;
	case ABI_IA32:
 		break;
	default:
		internal_error("no abi set? (%d)", abi);
	}
#ifdef TARG_MIPS
	if (isa > ISA_MIPS1 && isa <= ISA_MIPS6) {
		sprintf(mbuf, "%s/mips%d", get_phase_dir(P_library), isa);
		mips_lib = mbuf;
	}
	if (proc > 4 || (proc == 4 && isa == 3)) {
		/* add processor-specific r* lib-path */
		sprintf(rbuf, "%s/r%d000", mips_lib, proc);
		proc_lib = rbuf;
	}
#endif
#if !defined(linux)
	flag = add_string_option(O_L__, get_phase_dir(P_library));
        add_option_seen (flag);
#endif
}

/* search library_dirs for the crt file */
extern string
find_crt_path (string crtname)
{
        string_item_t *p;
	buffer_t buf;

        for (p = library_dirs->head; p != NULL; p = p->next) {
		sprintf(buf, "%s/%s", p->name, crtname);
		if (file_exists(buf)) {
			return string_copy(buf);
		}
        }
	
        sprintf (buf, "%s/%s", get_phase_dir(P_be), crtname);
        if (file_exists(buf)) { return string_copy(buf); }

        sprintf (buf, "%s/%s", get_phase_dir(P_library), crtname);
        if (file_exists(buf)) { return string_copy(buf); }

        sprintf (buf, "%s/%s", get_phase_dir(P_alt_library), crtname);
        if (file_exists(buf)) { return string_copy(buf); }

        if (option_was_seen(O_L)) {
		error("crt files not found in any -L directories:");
        	for (p = library_dirs->head; p != NULL; p = p->next) {
			fprintf(stderr, "\t%s/%s\n", p->name, crtname);
		}
		
		return crtname;
	}

	/* use default */
	sprintf(buf, "%s/%s", get_phase_dir(P_startup), crtname);
	return string_copy(buf);
}
