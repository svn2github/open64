/*
 * Copyright 2002, 2003, 2004 PathScale, Inc.  All Rights Reserved.
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


static char *rcs_id = "$Source: /proj/osprey/CVS/open64/osprey1.0/driver/main.c,v $ $Revision: 1.1.1.1 $";

#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <stamp.h>
#include <cmplrs/rcodes.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <time.h>
#include "pathscale_defs.h"
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
#include "version.h"

char *help_pattern;
boolean debug;
boolean nostdinc = TRUE;
int show_version;
boolean show_copyright;
boolean dump_version;
boolean show_search_path;

extern void check_for_combos(void);
extern boolean is_replacement_combo(int);
extern void toggle_implicits(void);
extern void set_defaults(void);
extern void add_special_options (void);

static void check_old_CC_options (char *name);
static void check_makedepend_flags (void);
static void mark_used (void);
static void dump_args (char *msg);
static void print_help_msg (void);

static string_list_t *files;
static string_list_t *file_suffixes;
string_list_t *feedback_files;

static char compiler_version[] = INCLUDE_STAMP;
static void set_executable_dir (void);

#ifdef KEY
static void prescan_options (int argc, char *argv[]);
#endif

static void no_args(void)
{
	fprintf(stderr, "%s: no input files\n", program_name);
	fprintf(stderr, "For general help: %s --help\n", program_name);
	fprintf(stderr, "To search help: %s -help:<string>\n", program_name);
	do_exit(RC_USER_ERROR);
}

int 
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
        file_utils_set_program_name(orig_program_name);
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

        if (0 && time(NULL) > 1080719999) {
            fprintf(stderr, "This software has expired.\n"
		    "Please contact PathScale, Inc. at "
		    "http://www.pathscale.com for infomation on\n"
		    "upgrade options.\n");
            do_exit(1);
        }

	/* Try to find where the compiler is located and set the phase
	   and library directories appropriately. */
	set_executable_dir();

	// "-o -" will set this to TRUE.
	dump_outfile_to_stdout = FALSE;

	// Change the phase names based on run-time info.
	init_phase_names();

	init_phase_info();	/* can't add toolroot until other prefixes */

        /* Hack for F90 ftpp; For pre processing F90 calls ftpp;
         * Unlike cpp, ftpp does not like the -Amachine(mips) and -Asystem(unix)
         * that are passed to cpp; we need to remove these if ftpp is used for
         * preprocessing. Also remove all the woff options for cpp and ftpp.
         */

	remove_phase_for_option(O_A,P_f90_cpp);
	remove_phase_for_option(O_E,P_f90_cpp);

#ifdef KEY
	// First check for the existence of certain options anywhere in the
	// command line, because these options affect the behavior of other
	// actions.
	prescan_options(argc, argv);
#endif

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

#ifdef KEY
			// Add options that are potentially linker options, in
			// case pathcc is called as a linker.
			if (is_maybe_linker_option(base_flag)) {
				add_maybe_linker_option(base_flag);
			} else
#endif
			if (is_object_option(base_flag)) {
				/* put in separate object list */
				add_object (base_flag, optargs);
				source_kind = S_o;
			} else {
				/* add unique real flag to list */
				add_option_seen (flag);
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

#ifdef KEY
	// By now we know if pathcc is called as a linker.  If so, turned all
	// the potential linker options into real linker options; otherwise
	// delete them.
	finalize_maybe_linker_options (num_files == 0);
#endif

	/* Check target specifications for consistency: */
	Check_Target ();

	if (dump_version) {
	    if (option_was_seen(O_compat_gcc))
		puts(PSC_GCC_VERSION);
	    else
		puts(PSC_FULL_VERSION);
	}

        if (show_version) {
            fprintf(stderr, "PathScale EKO Compiler Suite(TM): Version %s\n",
		    compiler_version);
	    if (show_version > 1) {
		fprintf(stderr, "ChangeSet: %s (%s)\n", cset_rev, cset_key);
		fprintf(stderr, "Built by: %s@%s in %s\n", build_user,
			build_host, build_root);
	    }
            fprintf(stderr, "Built on: %s\n", build_date);
            fprintf(stderr, "gcc version " PSC_GCC_VERSION
                    " (PathScale " PSC_FULL_VERSION " driver)\n");
        }
	if (show_copyright) {
	    if (show_version)
		fputc('\n', stderr);
	    char *exe_dir = get_executable_dir();

	    fprintf(stderr, "Copyright 2000, 2001 Silicon Graphics, Inc.  "
		    "All Rights Reserved.\n");
	    fprintf(stderr, "Copyright 2002, 2003, 2004 PathScale, Inc.  "
		    "All Rights Reserved.\n");

	    fprintf(stderr, "See complete copyright, patent and legal notices "
		    "in the\n");
	    fprintf(stderr, "%.*s/share/doc/pathscale-compilers-" 
	    	    PSC_FULL_VERSION "/LEGAL.pdf file.\n",
		    strlen(exe_dir) - 4, exe_dir);
	}
	if (show_search_path) {
		char *exe_dir = get_executable_dir();
		fprintf (stderr, "install: %.*s\n", strlen(exe_dir) - 4,
			 exe_dir);
		fprintf (stderr, "programs: %s\n", get_phase_dir (P_be));
		fprintf (stderr, "libraries: %s\n", get_phase_dir (P_library));
	}

	if (argc == 1)
	{
		no_args();
	}
	
	if (option_was_seen(O_help) || option_was_seen(O__help) ||
	    help_pattern != NULL)
	{
		print_help_msg();
	}
	if ( ! execute_flag && ! show_flag) {
		do_exit(RC_OKAY);	/* just exit */
	}
	if (dump_version) {
		do_exit(RC_OKAY);
	}
	if (source_kind == S_NONE || read_stdin) {
		if (read_stdin) {
			source_file = "-";
			if (option_was_seen(O_E)) {
				source_lang = L_cpp;
			} else {
				source_kind = get_source_kind(source_file);
				source_lang = invoked_lang;
				char *obj_name =
				  get_object_file(
				    fix_name_by_lang(source_file));
				add_object (O_object, obj_name);
			}
		}
		else if (show_version) {	/* just exit */
			do_exit(RC_OKAY);
		}
		else {
			no_args();
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
#ifdef KEY
	if ((option_was_seen(O_fpic) ||
	     option_was_seen(O_fPIC))
	     && mem_model == M_MEDIUM) {
	  error("unimplemented: code model medium not supported in PIC mode");
	}
#endif

	if (debug) {
		dump_args("user flags");
	}
	if (ipa == TRUE)
	    save_ipl_commands ();

	if (outfile != NULL && (strcmp(outfile, "-") == 0)) {
	  // Use suffix "x" just because it's not used.
	  outfile = create_temp_file_name("x");
	  dump_outfile_to_stdout = TRUE;
	}

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
			run_compiler(argc, argv);
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
		run_compiler(argc, argv);
		if (multiple_source_files) cleanup();
	}
	if (has_errors()) {
		cleanup();
#ifdef KEY
		cleanup_temp_objects();
#endif
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
#ifdef KEY
		      cleanup_temp_objects();
#endif
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
	if (dump_outfile_to_stdout == TRUE)
	  dump_file_to_stdout(outfile);
	cleanup();
#ifdef KEY
	cleanup_temp_objects();
#endif
	return error_status;
}

static void set_executable_dir (void) {
  char *dir;
  size_t dirlen;
  char *ldir;

  /* Try to find where the compiler is located in the
     filesystem, and relocate the phase and library
     directories based on where the executable is found. */
  dir = get_executable_dir ();
  if (dir == NULL) return;	

  /* If installed in a bin directory; get phases and stuff from
     a peer directory. */
  ldir = drop_path (dir);
  if (strcmp (ldir, "bin") == 0) {
    char *basedir = directory_path (dir);
    substitute_phase_dirs ("/usr/bin", basedir, "/" PSC_TARGET "/bin");
    substitute_phase_dirs ("/usr/lib", basedir, "/lib/" PSC_FULL_VERSION);
    substitute_phase_dirs ("/usr/lib/" PSC_NAME_PREFIX "cc-lib",
			   basedir, "/lib/" PSC_FULL_VERSION);
    substitute_phase_dirs ("/usr/include", basedir, "/include");
    return;
  }

  /* If installed in x/lib/gcc-lib/ */
  ldir = strstr (dir, "/lib/gcc-lib");
  if (ldir != 0) {
    if (ldir[12] == '/') {
      /* In target/version subdirectory. */
      ldir = substring_copy (dir, 0, ldir+4-dir);
      substitute_phase_dirs ("/usr/bin", dir, "");
      substitute_phase_dirs ("/usr/lib", ldir, "");
      substitute_phase_dirs ("/usr/lib/" PSC_NAME_PREFIX "cc-lib", dir, "");
      substitute_phase_dirs ("/usr/include", dir, "/include");
    } else if (ldir[12] == '\0') {
      /* directly in gcc-lib */
      ldir = substring_copy (dir, 0, ldir+4-dir);
      substitute_phase_dirs ("/usr/bin", dir, "");
      substitute_phase_dirs ("/usr/lib", ldir, "");
      substitute_phase_dirs ("/usr/lib/" PSC_NAME_PREFIX "cc-lib", dir, "");
      substitute_phase_dirs ("/usr/include", dir, "/include");
    }
    return;
  }
}

static void
check_old_CC_options (char *name)
{
	if (strcmp(name, "+I") == 0) {
		warn_no_longer_supported2(name, "-keep");
	} else if (strcmp(name, "+L") == 0) {
		warn_no_longer_supported(name);
	} else if (strcmp(name, "+d") == 0) {
		warn_no_longer_supported2(name, "-INLINE:none");
	} else if (strcmp(name, "+p") == 0  ||
	           strcmp(name, "+pc") == 0 ||
	           strcmp(name, "+pa") == 0) {
		warn_ignored(name);
		warning("the effect of +p is now the default (see -anach and -cfront)");
	} else if (strcmp(name, "+v") == 0) {
		warn_no_longer_supported2(name, "-show");
	} else if (strcmp(name, "+w") == 0) {
		warn_no_longer_supported2(name, "-fullwarn");
	} else if (strcmp(name, "+a0") == 0) {
		warn_no_longer_supported(name);
	} else if (strcmp(name, "+a1") == 0) {
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
			char *s = change_suffix(files->head->name, NULL);
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
	char *msg;
	char *name;
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
			    && strstr(name, help_pattern) == NULL
			    && strstr(msg, help_pattern) == NULL)
			{
				continue;	/* to next option */
			}
			fprintf(stderr, "\t%s:  %s\n", name, msg);
		    }
		}
	}
	if (help_pattern == NULL && invoked_lang == L_cc) {
	  fprintf(stderr, "The environment variable PSC_CC is also checked\n");
	}
	do_exit(RC_OKAY);
}

static void
dump_args (char *msg)
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


/*
 * GCC exits with status code 1 if any phase fails, unless given
 * -pass-exit-codes.  We want to compress all of our weirdo exit codes
 * into simple 1/0 for compatiblity.
 */
void do_exit(int code)
{
	if (code != 0) {
		code = 1;
	}

	exit(code);
}


static struct explicit_lang {
	const char *name;
	source_kind_t kind;
	languages_t lang;
} explicit_langs[] = {
	{ "assembler", S_s, L_as, },
	{ "assembler-with-cpp", S_S, L_as, },
	{ "c", S_c, L_cc, },
	{ "c++", S_C, L_CC, },
	{ "c++-cpp-output", S_ii, L_CC, },
	{ "c-header", S_c, L_cc, },
	{ "cpp-output", S_i, L_cc, },
	{ "f77", S_f90, L_f77, },
	{ "f77-cpp-input", S_i, L_f77, },
	{ "f90", S_f90, L_f90, },
	{ "f90-cpp-input", S_i, L_f90, },
	{ "f95", S_f90, L_f90, },
	{ "f95-cpp-input", S_i, L_f90, },
	{ "none", S_NONE, L_NONE, },
	{ "ratfor", S_r, L_f77, },
	{ NULL, S_NONE, L_NONE, },
};

void set_explicit_lang(const char *flag, const char *lang)
{
	struct explicit_lang *x;
	
	for (x = explicit_langs; x->name != NULL; x++) {
		if (strcmp(lang, x->name) == 0) {
			ignore_suffix = x->lang != S_NONE;
			source_kind = default_source_kind = x->kind;
			source_lang = x->lang;
			break;
		}
	}

	if (x->name == NULL) {
		parse_error(flag, "Unknown language");
		do_exit(RC_USER_ERROR);
	}
}

#ifdef KEY
// Quick and dirty way to scan for options that must be parsed first.
static void
prescan_options (int argc, char *argv[])
{
  int i;
  for (i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-ipa") == 0) {
      ipa = TRUE;
    } else if (strcmp(argv[i], "-keep") == 0) {	// bug 2181
      keep_flag = TRUE;
    } else if (strcmp(argv[i], "-save_temps") == 0) {
      keep_flag = TRUE;
    }
  }
}
#endif	// KEY
