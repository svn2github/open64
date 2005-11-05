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


static char *rcs_id = "$Source: /proj/osprey/CVS/open64/osprey1.0/driver/main.c,v $ $Revision: 1.1.1.1 $";

#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <stamp.h>
#include <cmplrs/rcodes.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include "string_utils.h"
#include "options.h"
#include "option_seen.h"
#include "option_names.h"
#include "opt_actions.h"
#include "get_options.h"
#include "lang_defs.h"
#include "errors.h"
#include "phases.h"
#include "file_utils.h"
#include "file_names.h"
#include "run.h"
#include "objects.h"

string help_pattern = NULL;
boolean debug = FALSE;
boolean nostdinc = FALSE;
boolean show_version = FALSE;

extern void check_for_combos(void);
extern boolean is_replacement_combo(int);
extern void toggle_implicits(void);
extern void set_defaults(void);
extern void add_special_options (void);

static void check_old_CC_options (string name);
static void check_makedepend_flags (void);
static void mark_used (void);
static void dump_args (string msg);
static void print_help_msg (void);

static string_list_t *files;
static string_list_t *file_suffixes;
string_list_t *feedback_files;

static char compiler_version[] = INCLUDE_STAMP;

extern int 
main (int argc, char *argv[])
{
	int i;		/* index to argv */
	int flag;
	int base_flag;
	string_item_t *p, *q;
	int num_files = 0;

	save_command_line(argc, argv);		/* for prelinker    */	
	program_name = drop_path(argv[0]);	/* don't print path */
	orig_program_name = string_copy(argv[0]);
	files = init_string_list();
	file_suffixes = init_string_list();
	feedback_files = init_string_list ();	/* for cord feedback files */
	init_options();
	init_temp_files();
	init_count_files();
	init_option_seen();
	init_objects();

	invoked_lang = get_named_language(program_name);
	check_for_driver_controls (argc, argv);

	if (abi == ABI_I64 || abi == ABI_I32) {
                /* prepend i64 compiler and include path */
#ifndef linux
                prefix_all_phase_dirs(PHASE_MASK, "/m2i");
		prefix_all_phase_dirs(LIB_MASK, "/ia64");
#endif
	}
#if 0
	if (abi == ABI_IA32) {
                /* prepend i32 compiler and include path */
                prefix_all_phase_dirs(PHASE_MASK, "/m2i");
		prefix_all_phase_dirs(LIB_MASK, "/ia32");
	}
#endif
	init_phase_info();	/* can't add toolroot until other prefixes */

        /* Hack for F90 ftpp; For pre processing F90 calls ftpp;
         * Unlike cpp, ftpp does not like the -Amachine(mips) and -Asystem(unix)
         * that are passed to cpp; we need to remove these if ftpp is used for
         * preprocessing. Also remove all the woff options for cpp and ftpp.
         */

	remove_phase_for_option(O_A,P_f90_cpp);
	remove_phase_for_option(O_E,P_f90_cpp);

	i = 1;
	while (i < argc) {
		option_name = argv[i];
		set_current_arg_pos(i);
		if (argv[i][0] == '-' && !dashdash_flag) {
			flag = get_option(&i, argv);
			if (flag == O_Unrecognized) { 
				if (print_warnings) {
				    /* print as error or not at all? */
				    parse_error(option_name, "unknown flag");
				}
			}
			else {
				/* reset option name to possibly include 
				 * 2nd part, e.g. -G 8 */
				option_name = get_option_name(flag);
			}
			/* sometimes is simple alias to another flag */
			flag = get_real_option_if_aliased (flag);

			/* sometimes need to look at parent flag */
			if (is_derived_option (flag)) {
				base_flag = get_derived_parent(flag);
				/* sometimes base is simple alias */
				base_flag = get_real_option_if_aliased (base_flag);
			}
			else {
				base_flag = flag;
			}

			if (is_object_option(base_flag)) {
				/* put in separate object list */
				add_object (base_flag, optargs);
				source_kind = S_o;
			} else {
				/* add unique real flag to list */
				add_option_seen (flag);
			}
			if (base_flag == O_generate_instantiation_info) {
			     /* This is a def_list_file option that is being
				passed by the prelinker to the frontend.
				It should not be recorded in the command
				line. Therefore cancel the saved arg. */
			    cancel_saved_arg(1);
			}

			opt_action(base_flag);

		} else if (argv[i][0] == '+') {
			check_old_CC_options(argv[i]);
			i++;
		} else {
			source_kind = get_source_kind(argv[i]);
			/* if -E used, then preprocess anything, even .o's */
			if (last_phase == P_any_cpp && source_kind == S_o) 
			{
				source_kind = S_c;
			}
			if (source_kind == S_o) {
				/* object file or library */
				add_object (O_object, argv[i]);
				/* Save away objects should it be necessary
				   to invoke the archive phase (-ar option). */
				    add_ar_objects(argv[i]);
			} else {
				/*
				 * Reserve place in object list for .o,
				 * so multiple .o's have same position
				 * relative to other parameters.
				 * If only one source file, then will
				 * treat this as a temp file.
				 */
				char *obj_name = get_object_file(argv[i]);
				add_object (O_object, obj_name);
				add_ar_objects(obj_name);
				add_string(files, argv[i]);
				/* Because of -x <lang> option,
				 * we need position as well as name to
				 * determine a file's source kind.
				 * So we want to record the source_kind now,
				 * before we lose the position info.
				 * Thus have parallel list of file suffixes,
				 * which will be the known suffix that we
				 * want to treat this file as, e.g.
				 * -x assembler t.asm will give suffix "s".
				 * Use string_list just cause it is readily
				 * available. */
				add_string(file_suffixes, 
					get_suffix_string(source_kind));
				num_files++;
			}
			cancel_saved_arg(1);
			i++;
		}
	}

	/* Check target specifications for consistency: */
	Check_Target ();

        if (show_version) {
            /* Echo information about the compiler version */
#ifdef linux
            fprintf(stderr, "ORC Compilers: Version %s"
#ifdef SPECMT_LT
                "[For Speculative Multithreading]"
#endif
            "\n", compiler_version);
#else
            fprintf(stderr, "MIPSpro Compilers: Version %s\n", compiler_version);
#endif
        }
	if (option_was_seen(O_show_defaults)) {
		/* TODO: print default values */
		exit(RC_OKAY);
	}

	if (argc == 1 || option_was_seen(O_help) || option_was_seen(O__help) 
		|| help_pattern != NULL) 
	{
		print_help_msg();
	}
	if ( ! execute_flag && ! show_flag) {
		exit(RC_OKAY);	/* just exit */
	}
	if (source_kind == S_NONE) {
		if (show_version) {	/* just exit */
			exit(RC_OKAY);
		}
		if (read_stdin) {
			source_file = "-";
			if (option_was_seen(O_E)) {
				source_lang = L_cpp;
			}
			else {
				source_kind = get_source_kind(source_file);
				source_lang = invoked_lang;
			}
		}
		else {
			error("no source or object file given");
		}
	}
	/* if toggle flags have superceded previous flags,
	 * or if option has been repeated,
	 * unmark the previous flags:
	 */
	FOREACH_OPTION_SEEN(i) {
		if (current_option_seen_later(i)) {
			set_current_option_unseen();
		} else if (flag_is_superceded(i)) {
			set_option_unseen(i);
		}
	}

	/* check for certain combinations of options */
	check_for_combos();

	if (debug) {
		dump_args("user flags");
	}
	if (ipa == TRUE)
	    save_ipl_commands ();

	/* if user has specified feedback files, turn on cord */
	if (feedback_files->head) cordflag=TRUE;

	/* if cord is not on, set last phase to ld */
	if (cordflag!=TRUE) {
	     last_phase=earliest_phase(P_any_ld, last_phase);
         }

	/* mark the used options */
	mark_used();

	/* call toggle routine for implicitly-used options */
	toggle_implicits();

	/* add defaults if not already set */
	set_defaults();

	if (num_files > 1) {
		multiple_source_files = TRUE;
	}
	/* handle anything else */
	check_makedepend_flags ();
	add_library_options();
	add_special_options();

	if (debug) {
		dump_args("with defaults");
		dump_objects();
	}
	if (has_errors()) return error_status;

	catch_signals();
	remember_last_phase = last_phase;

/* for DRA (Distributed Reshape Array) templitization, we want to
 * run prelinker and ld later
 * ??? why not just have ar and dsm prelink be set in determine_phase_order?
 */
	if ((multiple_source_files || 
	     option_was_seen(O_ar) ||
             option_was_seen(O_dsm)) && 
	     ((last_phase == P_any_ld) && (shared != RELOCATABLE)) || 
	     (last_phase == P_pixie)) {
		/* compile all files to object files, do ld later */
		last_phase = P_any_as;
		add_minus_c_option();	/* for .ii file */
	}

	if (Use_feedback) {
	   struct stat stat_buf;
	   time_t fb_file_mod_time;
	   time_t count_file_mod_time;
	   boolean fb_file_exists = TRUE;

	   if (fb_cdir != NULL) 
	      warning ("-fb_cdir cannot be used with -fbuse; -fb_cdir ignored");
	   save_name(&fb_file, concat_strings(drop_path(prof_file), ".x.cfb"));
	   if (!(stat(fb_file, &stat_buf) != 0 && errno == ENOENT))
		fb_file_mod_time = stat_buf.st_mtime;
           else
		fb_file_exists = FALSE;
           if (!(stat(count_files->head->name, &stat_buf) != 0 && errno == ENOENT))
		count_file_mod_time = stat_buf.st_mtime;
           else {
		internal_error("%s doesn't exist", count_files->head->name);
		perror(program_name);
           }

	   if (!fb_file_exists || (fb_file_mod_time <= count_file_mod_time))
	       run_prof();
        }

	if (read_stdin) {
		if ( option_was_seen(O_E) 
			|| (source_lang != L_NONE && source_kind != S_o)) 
		{
			run_compiler();
		}
		else {
			error("-E or specified language required when input is from standard input");
		}
		cleanup();
		return error_status;
	}

	for (p = files->head, q=file_suffixes->head; p != NULL; p = p->next, q=q->next) 
	{
		source_file = p->name;
		if (multiple_source_files) {
			fprintf(stderr, "%s:\n", source_file);
		}
		if (execute_flag && !file_exists(source_file)) {
			error("file does not exist:  %s", source_file);
			continue;
		}
		source_kind = get_source_kind_from_suffix(q->name);
		source_lang = get_source_lang(source_kind);
		if (source_lang != invoked_lang
			&& source_lang != L_as
			&& (fullwarn || (source_lang == L_f90)) )
		{
			warning("compiler not invoked with language of source file; will compile with %s but link with %s", get_lang_name(source_lang), get_lang_name(invoked_lang));
		}
		run_compiler();
		if (multiple_source_files) cleanup();
	}
	if (has_errors()) {
		cleanup();
		return error_status;
	}

	if (num_files == 0 || remember_last_phase != last_phase) {
		/* run ld */
		last_phase = remember_last_phase;
		source_file = NULL;
		source_kind = S_o;
		source_lang = get_source_lang(source_kind);

		if (option_was_seen(O_dsm_clone)) {
          	    run_dsm_prelink();
          	    if (has_errors()) {
                      cleanup();
                      return error_status;
                    }
                }
		if (option_was_seen(O_ar)) {
		   run_ar();
		}
		else {
		    run_ld ();
		}
		if (Gen_feedback)
		  run_pixie();
	}
	cleanup();
	return error_status;
}


static void
check_old_CC_options (string name)
{
	if (same_string(name, "+I")) {
		warn_no_longer_supported2(name, "-keep");
	} else if (same_string(name, "+L")) {
		warn_no_longer_supported(name);
	} else if (same_string(name, "+d")) {
		warn_no_longer_supported2(name, "-INLINE:none");
	} else if (same_string(name, "+p")  ||
	           same_string(name, "+pc") ||
	           same_string(name, "+pa")) {
		warn_ignored(name);
		warning("the effect of +p is now the default (see -anach and -cfront)");
	} else if (same_string(name, "+v")) {
		warn_no_longer_supported2(name, "-show");
	} else if (same_string(name, "+w")) {
		warn_no_longer_supported2(name, "-fullwarn");
	} else if (same_string(name, "+a0")) {
		warn_no_longer_supported(name);
	} else if (same_string(name, "+a1")) {
		warn_no_longer_supported(name);
	} else {
		parse_error(name, "bad syntax");
	}
}

/*
 * Kludges for MDupdate/target/ignore support;
 * we put this here rather than special_options
 * cause needs to refer to files list.
 */
static void
check_makedepend_flags (void)
{
	int flag;
	if (option_was_seen(O_MDupdate)) {
	    if (outfile != NULL) {
		/* if compiling to something other than .o,
		 * then add MDtarget info */
		/* ??? should we add even if user gives -MDtarget?
		 * ??? sherwood does this, so I guess is okay. */
		flag = add_string_option(O_MDtarget, outfile);
		add_option_seen (flag);
	    } 
	    if (!multiple_source_files && files->head != NULL 
		&& last_phase == P_any_ld)
	    {
		/* if compiling .c to a.out, 
		 * don't put .o in Makedepend list */
		if (outfile == NULL) {
			string s = change_suffix(files->head->name, NULL);
			s[strlen(s)-1] = NIL;	/* drop . of suffix */
			flag = add_string_option(O_MDtarget, s);
			add_option_seen (flag);
		}
		flag = add_string_option(O_MDignore, 
			get_object_file(files->head->name) );
		add_option_seen (flag);
	    }
	} 
}

/* mark all implied options as implicitly seen */
static void
mark_used (void)
{
  int i;
  int iflag;

  FOREACH_OPTION(i) {
    if (option_was_seen(i) && !option_was_implicitly_seen(i)) {
      FOREACH_IMPLIED_OPTION(iflag, i) {
	if (option_was_seen(iflag)) {
		continue;	/* already on list */
	}
	add_option_implicitly_seen (iflag);
	if (is_object_option(iflag)
	  && option_matches_language(i, invoked_lang) )
	{
	  /* put in object list. */
	  /* can assume it is ld option. */
	  /* name is full name, so cheat
	   * by saying it is an object,
	   * even if is really -lname. */
	  add_object (O_object, get_current_implied_name());
	}
      }
    }
  }
}

static void
print_help_msg (void)
{
	int i;
	string msg;
	string name;
	fprintf(stderr, "usage:  %s <options> <files>\n", program_name);
	if (help_pattern != NULL)
	  fprintf(stderr, "available options that contain %s:\n", help_pattern);
	else
	  fprintf(stderr, "available options:\n");

	FOREACH_OPTION(i) {
		msg = get_option_help(i);
		if (msg != NULL) {
		    if (option_matches_language (i, invoked_lang)) {
			name = get_option_name(i);
			/* if pattern specified, only print if pattern found */
			if (help_pattern != NULL
				&& !contains_substring(name, help_pattern)
				&& !contains_substring(msg, help_pattern) )
			{
				continue;	/* to next option */
			}
			fprintf(stderr, "\t%s:  %s\n", name, msg);
		    }
		}
	}
	if (help_pattern == NULL && invoked_lang == L_cc) {
	  fprintf(stderr, "The environment variable SGI_CC is also checked\n");
	}
	exit(RC_OKAY);
}

static void
dump_args (string msg)
{
	int i;
	printf("dump args %s: ", msg);
	FOREACH_OPTION_SEEN(i) {
		if (i == O_Unrecognized) continue;
		/* there are some combos that result in a warning 
		 * and replacing one of the args; in that case the
		 * option name looks like "arg1 arg2" but the implied
		 * list is just "arg1". */
		if (is_replacement_combo(i)) {
			int iflag;
			FOREACH_IMPLIED_OPTION(iflag, i) {
				printf(" %s", get_current_implied_name());
			}
		} else {
			printf(" %s", get_option_name(i));
		}
	}
	printf("\n");
}


