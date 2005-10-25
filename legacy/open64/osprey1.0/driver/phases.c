
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
#include <strings.h>
#include <unistd.h>
#include <errno.h>

#include "phases.h"
#include "options.h"
#include "lang_defs.h"
#include "option_seen.h"
#include "option_names.h"
#include "string_utils.h"
#include "errors.h"
#include "file_names.h"
#include "file_utils.h"
#include "run.h"
#include "objects.h"
#include "opt_actions.h"

string outfile = NULL;		/* from -o <outfile> */
string prof_file = NULL;	/* executable file for prof to work upon */
string fb_file = NULL;		/* from -fb <feedback-file> */
string fb_xdir = NULL;		/* dir where pixie emits dso's */
string fb_cdir = NULL; 		/* dir where pixie emits count files */
string command_line = NULL;	/* original command line */

string source_file = NULL;
boolean multiple_source_files = FALSE;

boolean keep_mp = FALSE;
boolean keep_list = FALSE;
boolean keep_cif = FALSE;
boolean keep_listing = FALSE;
boolean auto_parallelize = FALSE;
boolean Gen_feedback = FALSE;
boolean Use_feedback = FALSE;
boolean Disable_open_mp = FALSE;
boolean Disable_old_mp = FALSE;
boolean O3_flag = FALSE;
boolean use_cpp = FALSE;
boolean expand_ftpp_macros = FALSE;
int     fortran_line_length = 72; /* Fortran line length */
char roundoff=0;
boolean nocpp_flag = FALSE;

string ld_library_path = NULL;
string ld_libraryn32_path = NULL;
string orig_program_name = NULL;

static string_list_t *ipl_cmds = 0; /* record the user options that needed
				       to be passed to ipl */
extern string_list_t *feedback_files;

extern boolean is_replacement_combo (int);
static void convert_saved_command_line_into_string(void);
static char *make_ii_file_name(char *objname);
static char *make_rii_file_name(char *objname);
static int update_instantiation_info_file(char* ii_file_name, char *sourcefile);
static void write_command_string_into_file(FILE *cmdfile,
					   char *sourcefile,
					   int for_ii_file);
static void add_command_line_arg(string_list_t *args, char *sourcefile);

static void do_f90_common_args(string_list_t *args) ;
static void set_f90_source_form(string_list_t *args,boolean set_line_length) ;

static phases_t
post_fe_phase (void);

static void
add_implied_string (string_list_t *list, int iflag)
{
	/* assume inside a FOREACH_IMPLIED_OPTION iteration */
	string iname = get_current_implied_name();
	if (option_has_blank(iflag))
		/* add a string for each blank-separated sub-string. */
		add_multi_strings(list, iname);
	else
		add_string(list, iname);
}

static void
copy_phase_options (string_list_t *phase_list, phases_t phase)
{
	int flag;
	int iflag;
	FOREACH_OPTION_SEEN(flag) {
		FOREACH_IMPLIED_OPTION(iflag, flag) {
			/* Only add if option is legal for phase and lang.
			 * Make sure it matches both parent and implied lang.
			 * Also, don't add object options. */

			if (option_matches_phase(iflag, phase)
			    && option_matches_language(flag, source_lang)
			    && !is_object_option(iflag) )
			{
			    /* add check for cpp options that transcend real
			     * source language. */
			    if (option_matches_language(iflag, source_lang)
				|| (is_matching_phase(get_phase_mask(phase), P_any_cpp)
				    && option_matches_language(iflag, L_cpp) ) )
			    {
				add_implied_string (phase_list, iflag);
			    }
			}
		}
	}
}

/* ====================================================================
 *
 * add_language_option
 *
 * The back end needs to know the language, so that -LIST:cite can
 * determine which of whirl2c/whirl2f to invoke.  Pass it as the
 * no-name -LANG: suboption.
 *
 * ====================================================================
 */

static void
add_language_option ( string_list_t *args )
{
  switch ( invoked_lang ) {
    case L_f77:
	add_string ( args, "-LANG:=f77" );
	break;
    case L_f90:
	add_string ( args, "-LANG:=f90" );
	break;
    case L_cc:
	if ( ansi == KR_ANSI ) {
	  add_string ( args, "-LANG:=kr_c" );
	} else {
	  add_string ( args, "-LANG:=ansi_c" );
	}
	break;
    case L_CC:
	add_string ( args, "-LANG:=cplus" );
	break;
  }
}

static char basebuf[4096];

char *driver_basename(char *const s)
{
    register char *p;
    register char *const t = basebuf;

    if (s == NULL || *s == 0) {
	return strcpy(t, ".");
    } else {
	p = strcpy(t, s);
	p += strlen(p);
        while( p != t  &&  *--p == '/' )        /* skip trailing /s */
	    *p = '\0';
        while( p != t ) {
	    if( *--p == '/' )
		return  ++p;
	}
	return p;
    }
}
static char dirbuf[4096];

char *dirname(char *const s)
{
    register char *p;
    register char *const t = dirbuf;

    if (s == NULL || *s == 0) {
	return strcpy(t, ".");
    } else {
	p = strcpy(t, s);
	p += strlen(p);
        while( p != t  &&  *--p == '/' )        /* skip trailing /s */
	    ;

        if ( p == t && *p == '/' )
	    return strcpy(t, "/");

        while( p != t ) {
	    if( *--p == '/' ) {
		if ( p == t )
		    return strcpy(t, "/");
		while ( *p == '/' )
		    p--;
		*++p = '\0';
		return  t;
	    }
	}
	return strcpy(t, ".");
    }
}


static string input_source ;	/* src to next phase */

static void
add_file_args (string_list_t *args, phases_t index)
{
	buffer_t buf;
	string temp;
	string_item_t *p;
	string count_file_name;
	/* boolean dsm_crt_init_needed = FALSE; */

	/* current_phase is used to say which file might be the last output 
	 * file and thus might need a local name rather than a tmp name */
	current_phase = P_NONE;
	switch (index) {
	case P_m4:
		add_string(args, source_file);
		add_string(args, ">");
		input_source = construct_given_name(source_file,"p", keep_flag);
		add_string(args, input_source);
		break;
	case P_ratfor:
		if (run_m4) {
			input_source = construct_given_name(source_file,"p", keep_flag);
			add_string(args, input_source);
		} else {
			add_string(args, source_file);
		}
		add_string(args, ">");
		input_source = construct_given_name(source_file,"f", TRUE);
		add_string(args, input_source);
		break;
	case P_cpp:
		if (source_lang == L_as) {
			add_string(args, "-Xdo_linesplice");
			add_string(args, "-dollar");
		}
		/* fallthru */
	case P_c_cpp:
	case P_cplus_cpp:
	case P_f_cpp:
	case P_f90_cpp:
		if (option_was_seen(O_usegfe)) {
			add_string(args, "-E");
		}
 	        if (index == P_f90_cpp) {
		   if (expand_ftpp_macros) {
		      add_string(args, "-F");
		   }
		   set_f90_source_form(args,TRUE);
		}
		if (input_source == NULL)
		   input_source = string_copy(source_file);
		add_string(args, input_source);
		if (last_phase != P_any_cpp) {
			add_string(args, ">");
			current_phase = P_any_cpp;
			input_source = construct_name(input_source,"i");
			add_string(args, input_source);
		}
		break;
	case P_gcpp:
	case P_gcpp_plus:
		if (source_lang == L_f90) {
			/* -traditional -E same as -traditional-cpp */
			add_string(args, "-traditional");
			/* tell gcc to treat it as C file for preprocessing */
			add_string(args, "-xc");
		}
		else if (source_lang == L_as) {
			/* tell gcc to preprocess the file */
			add_string(args, "-xassembler-with-cpp");
		}
		add_string(args, input_source);
		if (read_stdin && option_was_seen(O_E)) 
			break;
		if (option_was_seen(O_E) && outfile != NULL) {
			add_string(args, "-o");
			add_string(args, outfile);
		}
		else if (last_phase != P_any_cpp) {
			current_phase = P_any_cpp;
			add_string(args, "-E");
                	add_string(args, ">");
			if (source_lang == L_CC)
			    input_source = construct_name(input_source,"ii");
			else
			    input_source = construct_name(input_source,"i");
			add_string(args, input_source);
		}
		break;
	case P_pca:
	case P_pfa:
		sprintf(buf, "-I=%s", input_source);
		add_string(args, buf);
		sprintf(buf, "-original_filename=%s", source_file);
		add_string(args, buf);
		if (index == P_pfa)
		    add_string(args, "-include=/usr/include");
		{
		  string list_suffix, cmp_suffix;
		  extern string optargs;

		  if (roundoff) {
		    /* if roundoff has been specified, pass it to pfa/pca */
		    sprintf(buf, "-r=%c", roundoff);
		    add_string(args, buf);
		  } else if (O3_flag) {
		    /* if -O3 has been specified, but not roundoff, pass -r=2
		       to pfa/pca */
		    add_string(args, "-r=2");
		  }
		  if (index == P_pca) {
		     cmp_suffix = "M";
		     list_suffix = "L";
		  } else {
		     /* pfa */
		     cmp_suffix = "m";
		     list_suffix = "l";
		  }
		  if (keep_list) {
		     sprintf(buf, "-L=%s", 
		         construct_given_name(
			   source_file, list_suffix, TRUE /* keep*/));
		     add_string(args, buf);
		  } else {
		     sprintf(buf, "-L=%s", 
			  construct_name(input_source,list_suffix));
		     add_string(args, buf);
		  }
		  if (keep_mp) {
		     input_source = construct_given_name(source_file,
			 cmp_suffix, TRUE);
		     sprintf(buf, "-analysis=%snl", 
		         construct_given_name(
			   source_file, "a", TRUE /* keep*/));
		     add_string(args, buf);
		  } else {
		     input_source = construct_name(input_source,cmp_suffix);
		     add_string(args, "-noanalysis");
		  }
		}
		if (keep_listing) {
		   sprintf(buf, "-lo=ocktl");
		   add_string(args, buf);
		}
		sprintf(buf, "-CMP=%s", input_source);
		add_string(args, buf);
		add_string(args, "-cp=i");
		if ( option_was_seen(O_cckr)) {
		   add_string(args, "-sy=k");
		}
		break;
        case P_mpc:
                sprintf(buf, "%s", input_source);
                add_string(args, buf);
                if (keep_mp) {
                   input_source = construct_given_name(source_file, "P", TRUE);
                } else {
                   input_source = construct_name(input_source, "P");
                }
                sprintf(buf, "-XK%s", input_source);
                add_string(args, buf);
                break;
	case P_f_fe:
	case P_cppf_fe:
		/* If doing IPA or inlining, can't do full-split: */
		if ( ipa == TRUE || inline_t == TRUE ) {
		  add_string ( args, "-FE:full_split=off" );
		}

                /* create .rii file */
                if (option_was_seen(O_dsm)) {
                    if (outfile != NULL && !multiple_source_files
                                        && remember_last_phase != P_any_ld)
                            sprintf(buf, "-rii%s", make_rii_file_name(outfile));                    else
                            sprintf(buf,
                                    "-rii./rii_files/%s",
                                    construct_file_with_extension(source_file,
                                                                  "rii"));
                    add_string(args,  buf);
                }

		sprintf(buf, "-fB,%s", construct_name(source_file,"B"));
 		add_string(args, buf); 
		if (keep_listing) {
			sprintf(buf, "-fl,%s",construct_given_name(source_file,"L",TRUE));
			add_string(args, buf);
		}

		if (index == P_cppf_fe) {
		   if (Disable_open_mp) {
		      add_string(args,"-disable_open_mp");
                   } 
		   if (Disable_old_mp) {
		      add_string(args,"-disable_old_mp");
                   }
                }

		if (use_craylibs == TRUE) {
		  add_string(args,"-TENV:io_library=cray");
		} else if (use_mipslibs == TRUE) {
		  add_string(args,"-TENV:io_library=mips");
		} else {
		  /* This is the default for f77.  For release 7.2 the
		     default is to use to old (libftn.so.1) library.  For
		     release 7.3 (?) it should be switched to use the
		     new (libftn.so.2) library. */
		  add_string(args,"-TENV:io_library=mips");
		}

		if (dashdash_flag)
		  add_string(args,"--");
		add_string(args, input_source);
		break;

        case P_lister:
		if (keep_listing) {
		   string listing_file;
		   string cif_file;
		   string has_path;
		   input_source = string_copy(source_file);
		   listing_file = construct_given_name(input_source,"L", TRUE);
		   cif_file = construct_given_name(drop_path(source_file), "T", keep_flag || keep_cif);
		   add_string(args, "-rs");
		   add_string(args, "-rx");
		   add_string(args, "-o");
		   add_string(args, listing_file);
		   add_string(args, input_source);
		   has_path = strrchr (input_source, '/');
		   if (has_path != NULL)
		     /* The .f file is not in the current directory */
		     add_string(args, cif_file);
                }
		break;

	case P_f90_fe:
	case P_cppf90_fe:
                if (index == P_cppf90_fe) {
                   if (expand_ftpp_macros) {
                      add_string(args, "-F");
                   }

                   if (use_ftpp == 1) {
                      add_string(args, "-ftpp");
                   }
                }

		if ( ipa == TRUE || inline_t == TRUE ) {
		  add_string ( args, "-FE:full_split=off" );
		}

		if (keep_listing) {
			add_string(args, "-Ca");
		}

                /* create .rii file */
                if (option_was_seen(O_dsm)) {
                    if (outfile != NULL && !multiple_source_files
                                        && remember_last_phase != P_any_ld)
                            sprintf(buf, "-rii%s", make_rii_file_name(outfile));                    else
                            sprintf(buf,
                                    "-rii./rii_files/%s",
                                    construct_file_with_extension(source_file,
                                                                  "rii"));
                    add_string(args,  buf);
                }

		sprintf(buf, "-fB,%s", construct_name(source_file,"B"));
 		add_string(args, buf); 
		sprintf(buf, "-fC,%s", construct_given_name(source_file,"T",TRUE));
 		add_string(args, buf); 
		sprintf(buf, "-fD,%s", construct_given_name(source_file,"l",TRUE));
 		add_string(args, buf); 
		/* It's much easier for the driver to generate this */
		if (option_was_seen(O_MDupdate) && !option_was_seen(O_MDtarget)) {
		   add_string(args, "-MDtarget"); 
		   add_string(args, construct_given_name(source_file,"o",TRUE));
		}
		if (keep_listing) {
			sprintf(buf, "-fl,%s",construct_given_name(source_file,"L",TRUE));
			add_string(args, buf);
		}
		do_f90_common_args(args) ;

                if (Disable_open_mp) {
                   add_string(args,"-disable_open_mp");
                }

                if (Disable_old_mp) {
                   add_string(args,"-disable_old_mp");
                }

		if (dashdash_flag)
		  add_string(args,"--");
		add_string(args, input_source);
		break;

	case P_c_gfe:
	case P_cplus_gfe:
		add_string(args, "-dx");
#if !(defined(TARG_IA64) || defined(TARG_IA32))
		if (abi == ABI_64) add_string(args, "-mabi=64");
		else if (abi == ABI_I64) add_string(args, "-mabi=i64");
		else if (abi == ABI_N32) add_string(args, "-mabi=n32");
		else if (abi == ABI_I32) add_string(args, "-mabi=i32");
		else if (abi == ABI_IA32) add_string(args, "-mabi=ia32");
#endif
		if (show_version) {
			add_string(args, "-version");
		}
#ifdef linux
		if (quiet_flag) 
			add_string(args, "-quiet");
#endif
		add_string(args, "-dumpbase");
		add_string(args, drop_path(source_file));
		add_string(args, input_source);
		add_string(args, "-o");
		add_string(args, construct_name(source_file,"B"));
		break;
	case P_inline:
		if (source_kind == S_B)
		    sprintf (buf, "-fB,%s", source_file);
		else
		    sprintf(buf, "-fB,%s",
			    construct_name(source_file,"B"));
		add_string (args, buf);
		sprintf (buf, "-fI,%s", construct_name(source_file,"I"));
		add_string (args, buf);
		if (dashdash_flag)
		  add_string(args,"--");
		add_string(args, source_file);
		break;
	case P_ipl:
		add_language_option ( args );
		if (source_kind == S_B)
		    sprintf (buf, "-fB,%s", source_file);
		else
		    sprintf(buf, "-fB,%s",
			    construct_name(source_file,"B"));
		add_string (args, buf);

		if (instrumentation_invoked == TRUE) {
		  if (fb_file != NULL)
			sprintf(buf, "-fi,%s.instr", fb_file);
		  else if (outfile != NULL)
		       sprintf (buf, "-fi,%s.instr", outfile);
                  else
		       sprintf (buf, "-fi,a.out.instr");
		  add_string(args,buf);
                }
		else if (fb_file != NULL) {
			/* pass feedback file */
			sprintf(buf, "-ff,%s.instr", fb_file);
			add_string(args, buf);
		}
		current_phase = P_any_as;
		if (outfile != NULL && last_phase == current_phase
	 			    && !multiple_source_files
				    && !(remember_last_phase == P_any_ld &&
				         (option_was_seen(O_dsm) ||
				          (invoked_lang==L_CC))))
			{
			  sprintf(buf, "-fo,%s", outfile);
			} else {
			  sprintf(buf, "-fo,%s", 
			    construct_given_name(source_file,"o",
				(keep_flag || multiple_source_files || ((shared == RELOCATABLE) && (ipa == TRUE))) ? TRUE : FALSE));
			}
		add_string(args, buf);
		if (dashdash_flag)
		  add_string(args,"--");
		add_string(args, source_file);

		/* ipl_cmds must be added last */
		if (ipl_cmds != 0) {
		    add_string (args, "-cmds");
		    append_string_lists (args, ipl_cmds);
		}
		break; 
	case P_be:
		add_language_option ( args );

		if (invoked_lang == L_f77) {
		  if (use_craylibs == TRUE) {
		    add_string(args,"-TENV:io_library=cray");
		  } else if (use_mipslibs == TRUE) {
		    add_string(args,"-TENV:io_library=mips");
		  } else {
		    /* This is the default for f77.  For release 7.2 the
		       default is to use to old (libftn.so.1) library.  For
		       release 7.3 (?) it should be switched to use the
		       new (libftn.so.2) library. */
		    add_string(args,"-TENV:io_library=mips");
		  }
		}

		switch (source_kind) {
		case S_B:
		    if (post_fe_phase () == P_inline) {
			temp = construct_name(source_file,"I");
			break;
		    }
		    /* fall through */
		case S_I:
		case S_N:
		case S_O:
		    temp = source_file;
		    break;
		default:
		    if (post_fe_phase () == P_inline)
			temp = construct_name(source_file,"I");
		    else
			temp = construct_name(source_file,"B");
		    break;
		}
		sprintf (buf, "-fB,%s", temp);
		add_string(args, buf);

		if (instrumentation_invoked == TRUE) {
		  if (fb_file != NULL)
			sprintf(buf, "-fi,%s.instr", fb_file);
		  else if (outfile != NULL)
		       sprintf (buf, "-fi,%s.instr", outfile);
                  else
		       sprintf (buf, "-fi,a.out.instr");
		  add_string(args,buf);
                }
		else if (fb_file != NULL) {
			/* pass feedback file */
			sprintf(buf, "-ff,%s.instr", fb_file);
			add_string(args, buf);
		}
		if (skip_as != TRUE || last_phase == P_be || keep_flag) {
			/* create .s file */
			add_string(args, "-s");
			current_phase = P_be;
			if (last_phase == P_be && outfile != NULL)
				input_source = outfile;
			else
				input_source = construct_name(source_file,"s");
			sprintf(buf, "-fs,%s", input_source);
			add_string(args, buf);
		}
		if (skip_as == TRUE && last_phase != P_be) {
			/* generate object file directly */
			current_phase = P_any_as;
			/* cc -c -o <file> uses <file> rather than .o */
		        if (outfile != NULL
					&& last_phase == current_phase
	 				&& !multiple_source_files
					&& !(remember_last_phase == P_any_ld &&
				         option_was_seen(O_dsm) ))
			  {
			    sprintf(buf, "-fo,%s", outfile);
			  } else {
			        sprintf(buf, "-fo,%s", 
			            construct_given_name(source_file,"o",
					(keep_flag || multiple_source_files || ((shared == RELOCATABLE) && (ipa == TRUE))) ? TRUE : FALSE));
			  }
			  add_string(args, buf);
		}
		if (dashdash_flag)
		  add_string(args,"--");
		add_string(args, source_file);
		break;
	case P_as:
	case P_gas:
		if (dashdash_flag)
		  add_string(args,"--");
		add_string(args, input_source);
		current_phase = P_any_as;
		add_string(args, "-o");
		/* cc -c -o <file> puts output from as in <file>,
		 * unless there are multiple source files. */
		if (outfile != NULL
			&& last_phase == current_phase
	 		&& !multiple_source_files
			&& !(remember_last_phase == P_any_ld &&
			         option_was_seen(O_dsm) ))
		{
			add_string(args, outfile);
		} else {
			add_string(args, construct_given_name(source_file,"o",
			  (keep_flag || multiple_source_files || ((shared == RELOCATABLE) && (ipa == TRUE))) ? TRUE : FALSE));
		}
		break;
	case P_ld:
	case P_ldplus:
		/* gcc invokes collect2 which invokes ld.
		 * Because the path to collect2 varies, 
		 * just invoke gcc to do the link. */

		/* add lib paths for standard libraries like libgcc.a */
		append_libraries_to_list (args);
		if (outfile != NULL) {
			add_string(args, "-o");
			add_string(args, outfile);
        	}
		if (ftz_crt) {
			add_string(args, find_crt_path("ftz.o"));
		}
		break;
	case P_collect:
	case P_ipa_link:
		if (show_version) {
			add_string(args, "-V");
		}
		/* add lib paths for standard libraries */
		append_libraries_to_list (args);

		/* -shared only adds user objects, no predefined stuff */
		if ((shared != DSO_SHARED) && (shared != RELOCATABLE)
		    && ! option_was_seen(O_nostartfiles)) 
		{
			add_string(args, find_crt_path("crt1.o"));
			add_string(args, find_crt_path("crti.o"));
			add_string(args, find_crt_path("crtbegin.o"));
			if (ftz_crt) {
				add_string(args, find_crt_path("ftz.o"));
			}
		}
                if (outfile != NULL) {
			add_string(args, "-o");
			add_string(args, outfile);
		}
		/* object file should be in list of options */
		break;
	case P_cord:
		/* specify the output file */
		if (outfile != NULL)
			{
			add_string(args, "-o");
			add_string(args, outfile);
			}
		else
			{
			add_string(args, "-o");
			add_string(args, "a.out");
			}
		/* specify the input file */
		add_string(args, create_temp_file_name("C"));
		/* now specify the feedback file(s) */
		if (feedback_files->head) {
			/* has user specified feedback files */
			append_string_lists(args, feedback_files);
			}
		else if (outfile != NULL) {
			/* feedback file is output file + .fb */
			add_string(args, concat_strings(outfile,".fb"));
			}
		else {
			/* feedback file is a.out.fb */
			add_string(args, "a.out.fb");
		}
		break;
          case P_pixie:
		/* Specify the output file */
		if (outfile != NULL) {
		   add_string(args, "-pixie_file");
		   if (fb_xdir != NULL) {
		     temp = concat_strings(fb_xdir,  "/");
		     temp = concat_strings(temp, drop_path(outfile));
		     add_string(args, temp);
                   } else {
		     add_string(args, outfile);
                   }
	           count_file_name = concat_strings(drop_path(outfile), ".x.Counts");
                } else {
		   add_string(args, "-pixie_file");
		   if (fb_xdir != NULL) {
		      temp = concat_strings(fb_xdir,  "/");
		      temp = concat_strings(temp, "a.out");
		      add_string(args, temp);
                   } else {
		      add_string(args, "a.out");
                   }
		   count_file_name = concat_strings("a.out", ".x.Counts");
                }
		if (fb_xdir != NULL) {
		   add_string(args, "-directory");
		   add_string(args, fb_xdir);
		   add_string(args, "-rpath");
		   add_string(args, fb_xdir);
                }
		if (fb_cdir != NULL) {
		   add_string(args, "-counts_file");
		   temp = concat_strings(fb_cdir, "/");
		   temp = concat_strings(temp, count_file_name);
		   add_string(args, temp);
                }
		if (ldpath_for_pixie != NULL) {
		   add_string(args, "-ldpath");
		   add_string(args, ldpath_for_pixie);
                }
                add_string(args, input_source);
		break;
         case P_prof:
		/* Generate the .fb files */
		add_string(args, "-pixie");
		add_string(args, "-feedback");
		if (prof_file != NULL) {
                  add_string(args, concat_strings(prof_file, ".x"));
                } else {
		   internal_error("No count file was specified for a prof run");
		   perror(program_name);
                }
		for (p = count_files->head; p != NULL; p = p->next) 
		   add_string(args, p->name);
                add_string(args, ">");
		add_string(args, "/dev/null");
		break;
	}
}

static void
add_final_ld_args (string_list_t *args)
{
	/* add -l libs and ending crt files */
	if ((!option_was_seen(O_nodefaultlibs)) && (shared != RELOCATABLE)) {
	    if (invoked_lang == L_f90) {
		add_string(args, "-lfortran");
		add_string(args, "-lffio");
		add_string(args, "-lmsgi");
		add_string(args, "-lmv");
		add_string(args, "-lm");
	    }
	    if (option_was_seen(O_mp)) {
		add_string(args, "-lpthread");
		add_string(args, "-lmp");
	    }
	}
	if (ipa == TRUE) {
	    	if (invoked_lang == L_CC) {
			add_string(args, "-lstdc++");
			add_string(args, "-lm");
	    	}
		add_string(args, "-lgcc");
		add_string(args, "-lc");
		add_string(args, "-lgcc");
		if ((shared != DSO_SHARED) && (shared != RELOCATABLE)
			&& ! option_was_seen(O_nostartfiles)) 
		{
			add_string(args, find_crt_path("crtend.o"));
			add_string(args, find_crt_path("crtn.o"));
		}
	}
}

#define MAX_PHASE_ORDER 10
static phases_t phase_order[MAX_PHASE_ORDER];
static int phase_order_index = 0;

static void
add_phase (phases_t p)
{
	phase_order[phase_order_index] = p;
	phase_order_index++;
	if (phase_order_index >= MAX_PHASE_ORDER)
		internal_error("too many phases");
}

/* determine which of inline, ipl, or be should be executed after the front
   end */
static phases_t
post_fe_phase (void)
{
    if (ipa == TRUE)
      return P_ipl;
#ifndef linux
    else if ((glevel == 2) && (inline_t != TRUE))
      { 
	inline_t = FALSE;
	return P_be; /* disable inliner for -g compiles  */
      }
#endif /* linux */
    else if (inline_t == TRUE || inline_t == UNDEFINED)
	return P_inline;
    else
	return P_be;
} /* post_fe_phase */
    
/* If -INLINE:%s option was seen, pass it to ld if ipa run, or inline if
   stand-alone inliner run */

static void
add_inline_option(void)
{
  if (option_was_seen(O_INLINE_) || ( inline_t!= FALSE)) {
    switch (post_fe_phase()) {
    case P_ipl:
      add_phase_for_option(O_INLINE_, P_ipa_link);
      break;
    case P_inline:
      add_phase_for_option(O_INLINE_, P_inline);
      break;
    }
  }
}

static void
determine_phase_order (void)
{
	phases_t next_phase = P_NONE;
	phases_t cpp_phase;
	phases_t asm_phase;
	phases_t link_phase;
	phase_order[0] = P_NONE;
	phase_order_index = 0;
 
	/* determine which cpp to use */
	if (source_lang == L_CC) {
		if (option_was_seen(O_usegfe)) {
			cpp_phase = P_gcpp_plus;
		} else {
			cpp_phase = P_cplus_cpp;
		}
	} else if (source_lang == L_cc) {
		if (option_was_seen(O_mp)) {
			/* power C */
                        cpp_phase = P_cpp;
		}
		else if (option_was_seen(O_usegfe)) {
			cpp_phase = P_gcpp;
		} else {
			cpp_phase = P_c_cpp;
		}
	} else if (source_lang == L_f77) {
		if (option_was_seen(O_mp)) {
			/* power Ftn */
			cpp_phase = P_cpp;	/* default */
		} else {
			cpp_phase = P_f_cpp;
		}
	} else if (source_lang == L_f90) {
	   if (option_was_seen(O_cpp)) {
	      if (option_was_seen(O_usegfe))
	      	cpp_phase = P_gcpp; 
	      else
	      	cpp_phase = P_cpp; 
	   } else if (use_ftpp == TRUE
		|| option_was_seen(O_P) 
		|| option_was_seen(O_E)) 
	   {
	      cpp_phase = P_cppf90_fe;
	   } else {
	      cpp_phase = P_NONE;
	   }
	} else if (source_lang == L_as
		&& (abi == ABI_I32 || abi == ABI_I64 || abi == ABI_IA32))
	{
		cpp_phase = P_gcpp;	/* use ansi-style cpp */
	} else if (option_was_seen(O_usegfe)) {
			cpp_phase = P_gcpp;
	} else {
			cpp_phase = P_cpp;
	}

	if (last_phase == P_any_cpp) {
		add_phase(cpp_phase);
		return;
	}

	/* determine which asm to run */
	asm_phase = P_gas;

	/* determine which linker to run */
	if (ipa == TRUE)
		link_phase = P_ipa_link;
	else if (invoked_lang == L_CC)
		link_phase = P_ldplus;
	else
		link_phase = P_ld;

	switch (source_kind) {
	case S_c:
	case S_C:
		if (first_phase != P_any_cpp) {
		    next_phase = (source_lang == L_CC ? 
					P_cplus_gfe : P_c_gfe);
		} else {
		    if (source_lang == L_CC)
			add_phase(P_gcpp_plus);
		    else
		    	add_phase(P_gcpp);
		    next_phase = (source_lang == L_CC ? 
					P_cplus_gfe : P_c_gfe);
		}
		break;
	case S_i:
	case S_ii:
		if (source_lang == L_f77)
			next_phase = P_f_fe;
		else if (source_lang == L_f90)
			next_phase = P_f90_fe;
		else if (source_lang == L_as)
			next_phase = asm_phase;
		else if (source_lang == L_CC)
			next_phase = P_cplus_gfe;
		else if (source_lang == L_cc)
			next_phase = P_c_gfe;
		else if (source_kind == S_ii)
			next_phase = P_cplus_gfe;
		else
			next_phase = P_c_gfe;
		break;
	case S_r:
		if (run_m4) add_phase(P_m4);
		add_phase(P_ratfor);
		/* FALLTHRU */
        case S_f:
        case S_f90:
		if (cpp_phase == P_NONE) {
			next_phase = P_f90_fe;
		} else if (cpp_phase == P_cppf90_fe) {
			/* invoke combined cpp/fe phase */
			next_phase = P_cppf90_fe;
		}
		else {
			add_phase(cpp_phase);
			next_phase = P_f90_fe;
		}
		break;
	case S_F:
	case S_F90:
		if ( option_was_seen(O_nocpp)) {
			next_phase = P_f90_fe;
		} else if (cpp_phase == P_NONE || cpp_phase == P_cppf90_fe) {
			/* invoke combined cpp/fe phase */
			next_phase = P_cppf90_fe;
		} else {
			add_phase(cpp_phase);
			next_phase = P_f90_fe;
		}
		break;
	case S_s:
		if (option_was_seen(O_cpp)) {
			add_phase(cpp_phase);
		}
		next_phase = asm_phase;
		break;
	case S_S:
		if ( ! option_was_seen(O_nocpp)) {
			add_phase(cpp_phase);
		}
		next_phase = asm_phase;
		break;
	case S_B:
		next_phase = post_fe_phase ();
		break;
	case S_I:
	case S_N:
	case S_O:
		next_phase = P_be;
		break;
	case S_o:
		next_phase = link_phase;
		break;
	}

	while (next_phase != P_NONE) {
		if (last_phase < next_phase) {
			add_phase(P_NONE);
			next_phase = P_NONE;
		}
		switch (next_phase) {
		case P_pfa:
			add_phase(next_phase);
			next_phase = P_cppf_fe;
			break;
		case P_f_fe:
		case P_cppf_fe:
		case P_lister:
		case P_c_gfe:
		case P_cplus_gfe:
			add_phase(next_phase);
			next_phase = post_fe_phase ();
			break;
		case P_f90_fe:
                case P_cppf90_fe:
			if (keep_listing) {
			   add_phase(next_phase);
			   next_phase = P_lister;
                        } else {
			   add_phase (next_phase);
			   next_phase = post_fe_phase ();
                        }
			break;
		case P_inline:
			add_phase (next_phase);
			next_phase = P_be;
			break;
		case P_ipl:
			add_phase(next_phase);
			if (option_was_seen(O_ar)) {
			    next_phase = P_ar;
			}
			else {
			    next_phase = link_phase;
			}
			break;
		case P_be:
			add_phase(next_phase);
			/* may or may not generate objects directly */
			if (skip_as == TRUE) {
			   if (option_was_seen(O_ar)) {
			       next_phase = P_ar;
			   }
			   else {
			       next_phase = link_phase;
			   }
			}
			else next_phase = asm_phase;
			break;
		case P_as:
		case P_gas:
			add_phase(next_phase);
			if (option_was_seen(O_ar)) {
			    next_phase = P_ar;
			}
			else {
			    next_phase = link_phase;
			}
			break;
		case P_ld:
		case P_ldplus:
		case P_collect:
		case P_ipa_link:
			add_phase(next_phase);
                        if (cordflag==TRUE) {
			   next_phase = P_cord;
			} else {
			  add_phase(P_NONE);
			  next_phase = P_NONE;
			}
			break;
		case P_cord:
			add_phase(next_phase);
			add_phase(P_NONE);
			next_phase = P_NONE;
			break;
		case P_NONE:
			break;
		default:
			internal_error("unexpected phase order");
		}
	}
}

static void
check_existence_of_phases (void)
{
    int i;
    for (i = 0; phase_order[i] != P_NONE; i++) {
	int give_warning = FALSE;
	switch (phase_order[i]) {

	case P_pfa:
	    if (!file_exists(get_full_phase_name(phase_order[i]))) {
		error("Power Fortran is not installed on this system");
	    }
	    break;

	case P_mpc:
	    /* pca also invokes mpc, so just check mpc */
	    if (!file_exists(get_full_phase_name(phase_order[i]))) {
		error("Power C is not installed on this system");
	    }
	    break;

			
	    /* check if be phase exists, to warn about wrong toolroot */
	case P_ipl:
	    if (!file_exists (concat_strings (get_phase_dir(phase_order[i]),
					      "/ipl.so")))
		give_warning = TRUE;

	    /* fall through */
	    
	case P_be:

	    if (!file_exists (concat_strings (get_phase_dir(phase_order[i]),
					      "/be.so")))
		give_warning = TRUE;

	    if (!file_exists(get_full_phase_name(phase_order[i])))
		give_warning = TRUE;

	    if (give_warning)
#ifndef linux
		warning ("%s does not contain all of the MIPSPro compiler"
			 " phases; perhaps you need a different toolroot?",
			 get_phase_dir(phase_order[i])); 
#else
		warning ("%s does not contain all of the SGIcc compiler"
			 " phases.", get_phase_dir(phase_order[i])); 
#endif
	    break;
	}
    }
}

extern void
init_phase_info (void)
{
	string toolroot;
	string comp_target_root;

	if (getenv("_XPG") != NULL) 
	   xpg_flag = TRUE;
	ld_library_path = getenv("LD_LIBRARY_PATH");
	ld_libraryn32_path = getenv("LD_LIBRARYN32_PATH");

	toolroot = getenv("TOOLROOT");
	if (toolroot != NULL) {
		/* add toolroot as prefix to phase dirs */
                prefix_all_phase_dirs(PHASE_MASK, toolroot);
	}
	comp_target_root = getenv("COMP_TARGET_ROOT");
	if (comp_target_root != NULL) {
		/* add comp_target_root as prefix to phase dirs */
                prefix_all_phase_dirs(LIB_MASK, comp_target_root);
	}

	/* check whether gcc exists */
	if (!file_exists (get_full_phase_name(P_ld))) {
		if (file_exists("/usr/local/bin/gcc")) {
			set_phase_dir (get_phase_mask(P_gcpp), "/usr/local/bin");
			set_phase_dir (get_phase_mask(P_gcpp_plus), "/usr/local/bin");
			set_phase_dir (get_phase_mask(P_ld), "/usr/local/bin");
			set_phase_dir (get_phase_mask(P_ldplus), "/usr/local/bin");
		}
		else {
			warning ("can't find %s/%s", get_phase_dir(P_ld), get_phase_name(P_ld));
		}
	}
}

extern void
run_dsm_prelink(void)
{
	string_list_t *args = init_string_list();
	copy_phase_options(args, P_dsm_prelink);
	append_objects_to_list(args);
 	run_phase(P_dsm_prelink, get_full_phase_name(P_dsm_prelink), args);
}


extern void
run_ld (void)
{
	phases_t ldphase;
	string ldpath;
	string_list_t *args = init_string_list();

	if (ipa == TRUE) {
		ldphase = P_ipa_link;
	}
	else if (invoked_lang == L_CC) {
		ldphase = P_ldplus;
	}
	else {
		ldphase = P_ld;
	}

	if (ipa == TRUE) {
	    ldpath = get_phase_dir (ldphase);
	    ldpath = concat_strings (ldpath, "/ipa.so");
	    if (!file_exists (ldpath)) {
		error ("ipa.so is not installed on %s", get_phase_dir (ldphase));
		return;
	    }
	    init_crt_paths ();
	}
	ldpath = get_full_phase_name(ldphase);

	/* for ld, we first have options, then files, then objects,
	 * where objects includes object-specific options */
	add_inline_option ();
	copy_phase_options (args, ldphase);

	if (invoked_lang == L_CC) {
#ifndef linux
	    add_string(args, "-cxx");
#endif /* linux */
	    if (!multiple_source_files && !((shared == RELOCATABLE) && (ipa == TRUE) && (outfile == NULL)) && !keep_flag)
		mark_saved_object_for_cleanup();
	}
	add_file_args (args, ldphase);

	if (shared == RELOCATABLE && source_file != NULL)
	    add_string(args, construct_given_name(source_file,"o",((outfile == NULL))? TRUE: keep_flag));
  	else
	    append_objects_to_list (args);

	add_final_ld_args (args);
	run_phase (ldphase, ldpath, args);
}

extern void
run_ar(void)
{
     string_list_t *args = init_string_list();
     string arpath;
     arpath = get_full_phase_name(P_ar);

     add_string (args, "-rc");
     copy_phase_options (args, P_ar);
     add_string (args, outfile);
     append_ar_objects_to_list(args);
     run_phase (P_ar, arpath, args);
}



extern void
run_pixie (void)
{
 int link_status;
 string_list_t *args = init_string_list();
 string pixie_file;
 string temp;

 copy_phase_options (args, P_pixie);
 add_file_args (args, P_pixie);
 run_phase (P_pixie, get_full_phase_name(P_pixie), args);
 if (outfile != NULL) 
   temp = string_copy(outfile);
 else
   temp = string_copy("a.out");
 if (fb_xdir != NULL) {
   pixie_file = concat_strings(fb_xdir,  "/");
   pixie_file = concat_strings(pixie_file, drop_path(temp));
   link_status = symlink(pixie_file, temp);
   if (link_status != 0) {
      if (errno == EEXIST) {
          warning("%s already exists; link from %s to %s not created",
                            temp, temp, pixie_file);
      } else {
          internal_error("cannot create link from %s to %s",
                                 temp, pixie_file );
          perror(program_name);
      }
   }
 }
}

extern void
run_prof (void)
{
 int link_status;
 string_list_t *args = init_string_list();
 string bin_dot_pixie, bin_plain;
 boolean delete_link = TRUE;

 if (prof_file != NULL) {
    bin_plain = string_copy (prof_file);
    bin_dot_pixie = concat_strings(prof_file, ".x.pixie");
 } else {
    internal_error("No count file was specified for a prof run");
    perror(program_name);
 }
 link_status = link(bin_plain, bin_dot_pixie);
 if (link_status != 0) {
    delete_link = FALSE;
    if (errno == EEXIST) {
        warning("Link from %s to %s already exists",
                          bin_dot_pixie, bin_plain );
    } else {
        internal_error("cannot create link from %s to %s",
                               bin_dot_pixie, bin_plain );
        perror(program_name);
    }
 }

 copy_phase_options (args, P_prof);
 add_file_args (args, P_prof);
 run_phase (P_prof, get_full_phase_name(P_prof), args);
  
 if (delete_link) {
    int unlink_status;
    unlink_status = unlink(bin_dot_pixie);
    if (unlink_status != 0 && errno != ENOENT) {
      internal_error("cannot unlink %s", bin_dot_pixie );
      perror(program_name);
    }
 }
				
}

extern void
run_compiler (void)
{
	int i;
	string_list_t *args;
	boolean inst_info_updated = FALSE;
	boolean cmd_line_updated = FALSE;
        buffer_t rii_file_name;
        buffer_t ii_file_name;

	clear_current_errors();
	determine_phase_order();
	add_inline_option();
	if (execute_flag) {
		check_existence_of_phases();
	}
	input_source = source_file;
	for (i = 0; phase_order[i] != P_NONE; i++) {

	        /* special case where the frontend decided that
		   inliner should not be run */
	        if (inline_t == FALSE &&
		    phase_order[i] == P_inline)
		    continue;
		
		if (is_matching_phase(get_phase_mask(phase_order[i]), P_any_ld)) {
			source_kind = S_o;
			/* reset source-lang to be invoked-lang for linking */
			source_lang = get_source_lang(source_kind);
			run_ld ();
			if (Gen_feedback)
			   run_pixie ();
		} else {
			args = init_string_list();
			copy_phase_options (args, phase_order[i]);
			if (!cmd_line_updated &&
			    phase_order[i] > P_any_optfe &&
			    phase_order[i] != P_c_gfe &&
			    phase_order[i] != P_cplus_gfe &&
			    phase_order[i] < P_any_fe) 
			{
			    add_command_line_arg(args, source_file);
			    cmd_line_updated = TRUE;
			}
			add_file_args (args, phase_order[i]);
			run_phase (phase_order[i],
				   get_full_phase_name(phase_order[i]), args);
			if (!inst_info_updated &&
			    phase_order[i] > P_any_optfe &&
			    phase_order[i] < P_any_fe) {
			    /*
			     * Update the instantiation information file
			     * with the new command line, if applicable.
			     */
		            if (option_was_seen(O_dsm)) {
		                if (outfile != NULL && !multiple_source_files
					&& remember_last_phase != P_any_ld)

			          sprintf(rii_file_name, "%s",
                                    make_rii_file_name(outfile));
		                else
			          sprintf(rii_file_name, "./rii_files/%s",
				    construct_file_with_extension(source_file,
								  "rii"));
			        update_instantiation_info_file(
                                        rii_file_name,source_file);
		            }
			    if (prelink_flag && source_lang == L_CC) {
		  		if (outfile != NULL && !multiple_source_files
				      	  && remember_last_phase != P_any_ld) 
				    sprintf(ii_file_name, "%s",
					    make_ii_file_name(outfile));
		  		else
				    sprintf(ii_file_name,
				   	    "./ii_files/%s",
					    construct_file_with_extension(
					        source_file, "ii"));
			        update_instantiation_info_file(
				        ii_file_name, source_file);

                            }
			    inst_info_updated = TRUE;
			}
		}
		if (has_current_errors()) break;
	}
}

/*
 * The mechanism for updating the template instantiation info file for
 * the current object file.
 *
 * We base the .ii filename on the object file name by creating a name
 * as follows: dirname(obj)/ii_files/basename(obj,.o).ii.
 *
 * If this file exists, we look for a terminator (a line with the contents
 * "----"), and replace everything before that line with updated information
 * about the command-line used to compile the object file, and the working
 * directory from where the command was issued. If the terminator is missing,
 * it is prepended to the file.
 */


/*
 * Is "c" a character that would need quoting to the shell?
 */

#define is_shell_special(c) \
    ( (c) == '\'' || \
      (c) == '|' || \
      (c) == '&' || \
      (c) == '*' || \
      (c) == '?' || \
      (c) == '[' || \
      (c) == ']' || \
      (c) == ';' || \
      (c) == '!' || \
      (c) == '(' || \
      (c) == ')' || \
      (c) == '^' || \
      (c) == '<' || \
      (c) == '>' || \
      (c) <= ' ' || \
      (c) == '\t' || \
      is_shell_quote_special(c) )

/*
 * Is "c" a character that would have to be \-escaped inside double-quotes?
 *
 * The answer to this one actually depends on the shell. Especially
 * troublesome is '!': for csh, it *must* be \-escaped inside quotes,
 * and for sh, it *must not* be \-escaped. sh preserves the \ if it
 * is not quoting something significant. Sigh.
 *
 * However, since most "make"s and "make"-clones use /bin/sh as the shell
 * regardless of the SHELL setting, and since system() always uses /bin/sh
 * to execute the command, I am going to stick with whatever sh needs.
 */
#define is_shell_quote_special(c) \
    ( (c) == '"' || \
      (c) == '\\' || \
      (c) == '`' || \
      (c) == '$' )


/*
 * returns the length of the argument after inserting any required quoting
 * characters.
 */
int quoted_length(char *p, int *quoted)
{
    int len = 0;
    char c;

    *quoted = 0;

    while (c = *p++) {
	if (!(*quoted) &&
	    is_shell_special(c)) {
	    (*quoted) = 1;
	    len += 2;
	}
	if (is_shell_quote_special(c))
	    len ++;
	len ++;	/* the character itself */
    }
    return len;
}

/*
 * writes a quoted (if necessary) copy of p into the buffer pointed to
 * by buf, and returns the length of the quoted string written.
 */
int quote_shell_arg(char *p, char *buf)
{
    char c;
    int quoted = 0;
    int len;

    len = quoted_length(p, &quoted);

    if (quoted)
	*buf++ = '"';
    while (c = *p++) {
	if (is_shell_quote_special(c))
	    *buf++ = '\\';
	*buf++ = c;
    }
    if (quoted)
	*buf++ = '"';

    return len;
}


static int saved_argc;
static char **saved_argv;
static int curr_argc;
static int add_c = 0;

/*
 * Save off the command-line in a quote-protected string that can be re-fed
 * to the shell later by edg_prelink.  We save off any "-o" and its argument
 * to a separate global. This is *not* emitted into the ii_file if we are
 * doing a single-source compile and link with libraries.
 */

void add_minus_c_option(void)
{
    add_c = 1;
}

void save_command_line(int argc, char **argv)
{
    int i;
    saved_argc = argc;
    saved_argv = malloc((saved_argc+1) * sizeof(char *));

    for (i = 0; i < argc; i++) {
	if (argv[i])
	    saved_argv[i] = string_copy(argv[i]);
	else
	    saved_argv[i] = NULL;
    }
    saved_argv[saved_argc] = NULL;
}

void set_current_arg_pos(int n)
{
    curr_argc = n;
}

void cancel_saved_arg(int count)
{
    int i;
    for (i = 0; i < count; i++) {
	if (saved_argv[curr_argc+i] != NULL)
	    free(saved_argv[curr_argc+i]);
	saved_argv[curr_argc+i] = NULL;
    }
}

/*
 * Save off the command-line in a quote-protected string that can be re-fed
 * to the shell later by edg_prelink.  We save off any "-o" and its argument
 * to a separate global. This is *not* emitted into the ii_file if we are
 * doing a single-source compile and link with libraries.
 */
static void convert_saved_command_line_into_string ( void )
{
    int len = 0;
    int quoted = 0;
    int i;
    char *p;

    /* first, count the length */
    for (i = 1; i < saved_argc; i++) {
	if (saved_argv[i] != NULL) {
	    len += quoted_length(saved_argv[i], &quoted) + 1;
	}
    }

    /* allocate the space */
    command_line = p = malloc(len+1);

    /* Now copy the arguments */
    for (i = 1; i < saved_argc; i++) {
	if (saved_argv[i] != NULL) {
	    p += quote_shell_arg(saved_argv[i], p);
	    *p++ = ' ';
	}
    }

    if (p > command_line)
	p[-1] = '\0';
    else
	p[0] = '\0';
}

static void write_command_string_into_file(FILE *cmdfile,
					   char *sourcefile,
					   int for_ii_file)
{
    if (for_ii_file)
	fputs("CMDLINE=", cmdfile);
    
    fprintf(cmdfile, "%s ", orig_program_name);

    if (add_c) {
	/* always emit -c into file, because we will always be
	 * recompiling only one file at a time downstream in, e.g.,
	 * the prelinker, or the Fix and Continue mechanism
	 */
	fputs("-c ", cmdfile);
    }
    fprintf(cmdfile, "%s %s", command_line, sourcefile);
    if (outfile != NULL        && 
	!multiple_source_files && 
	(!option_was_seen(O_dsm) && invoked_lang != L_CC ||
         !for_ii_file || remember_last_phase != P_any_ld)) {
	/* Got a "cc -c -o foo foo.o", so emit the object file name */
	fprintf(cmdfile, " -o %s", outfile);
    }
    fprintf(cmdfile, "\n");
    
    /* Now write out current working directory */
    if (for_ii_file)
	fputs("PWD=", cmdfile);
    fprintf(cmdfile, "%s\n", get_cwd());

    /* trailer */
    if (for_ii_file)
	fputs("----\n", cmdfile);
}

static void add_command_line_arg(string_list_t *args, char *source_file)
{
    char *cmd_file_name;
    FILE *cmd_file;
    /*
     * convert the saved command line prefix
     * into a string (to which the filename will be
     * appended.
     */
    convert_saved_command_line_into_string();
    /*
     * Now write out a command line and pwd for
     * passing down to the frontends for DWARF.
     */
    /*
     * cmd_file_name = construct_name(source_file,"L");
     */
    cmd_file_name = create_temp_file_name("L");
    if (execute_flag) {
	cmd_file = fopen(cmd_file_name, "w");
    	if (cmd_file == NULL) {
	    error("write_command_string: could not create %s", cmd_file_name);
    	} else {
	    write_command_string_into_file(cmd_file, source_file,
				       /*for_ii_file=*/FALSE);
	    fclose(cmd_file);
	}
    }
    if (source_lang == L_cc ||
	source_lang == L_CC ||
	source_lang == L_f77 ||
	source_lang == L_f90) 
    {
	    add_string(args, concat_strings("-FE:cmdline=", cmd_file_name));
    }
}

/*
 * Skip over leading lines upto and including the terminator (a line that
 * starts with ----). If the terminator is not found, rewind back to start.
 */
void skip_old_ii_controls(FILE *f)
{
    int c;
    int terminator_found = 0;

    c = getc(f);
    while (c != EOF) {
	if (c == '-' &&
	    (c = getc(f)) == '-' &&
	    (c = getc(f)) == '-' &&
	    (c = getc(f)) == '-') {
	    terminator_found = 1;
	}
	while (c != '\n' && c != EOF)
	    c = getc(f);
	if (terminator_found)
	    break;
	if (c == '\n')
	    c = getc(f);
    }

    if (c == EOF)
	rewind(f);
}

/*
 * Make the ".ii" file name from the object file name.
 */
static char *make_ii_file_name(char *objname)
{
    char *base = driver_basename(objname);
    int baselen = strlen(base);

    base = concat_strings(base, "   ");
    if (base[baselen-2] == '.'&& base[baselen-1] == 'o')
	strcpy(&base[baselen-1], "ii");
    else
	strcpy(&base[baselen], ".ii");

    return concat_strings(
		dirname(objname),
		concat_strings("/ii_files/", base));
}

/*
 * Make the ".rii" file name from the object file name.
 */
static char *make_rii_file_name(char *objname)
{
    char *base = driver_basename(objname);
    int baselen = strlen(base);

    base = concat_strings(base, "    ");
    if (base[baselen-2] == '.' && base[baselen-1] == 'o')
	strcpy(&base[baselen-1], "rii");
    else
	strcpy(&base[baselen], ".rii");

    return concat_strings(
		dirname(objname),
		concat_strings("/rii_files/", base));
}

/*
 * The actual function that updates the instantiation information
 * in the .ii file.
 */
int update_instantiation_info_file(char *ii_file_name, char* sourcefile)
{
    char *new_ii_file_name = concat_strings(ii_file_name, ".NEW");
    
    FILE *old_ii = fopen(ii_file_name, "r");
    FILE *new_ii;
    int c;
    
    if (old_ii != NULL) {
	/* There is an existing .ii file (may be empty) */
	/* need to update that file! */

	if (show_flag) {
	    fprintf(stderr, "%s: update_instantiation_info_file %s\n",
		    program_name, ii_file_name);
	}

	new_ii = fopen(new_ii_file_name, "w");
	if (new_ii == NULL) {
	    /* could not open the (new) file: permission problem in
	     * directory? */
	    error("update_instantiation_info_file: error in creating file %s",
		  new_ii_file_name);
	    perror("update_instantiation_info_file");
	    return 1;
	}

	/*
	 * skip over the existing control information (upto the standard
	 * separator), if any.
	 */
	skip_old_ii_controls(old_ii);

	/*
	 * Now, write out the new control information. For now, we have
	 * only two lines:
	 * CMDLINE=<compiler name> <quote-protected command-line arguments>
	 * PWD=<current working directory>
	 */
	write_command_string_into_file(new_ii, sourcefile,
				       /*for_ii_file=*/TRUE);

	/* Now copy over the remainder of the old file. */
	while ((c = getc(old_ii)) != EOF)
	    putc(c, new_ii);

	/* Rename the new file to replace the existing .ii file */
	fclose(old_ii);
	fclose(new_ii);
	if (rename(new_ii_file_name, ii_file_name) < 0) {
	    error("update_instantiation_info_file: error in renaming %s to %s",
		  new_ii_file_name, ii_file_name);
	    perror("update_instantiation_info_file");
	    return 1;
	}
    }
    free(new_ii_file_name);
    return 0;
}


/* ====================================================================
 *
 * add_ipl_cmd_string
 *
 * Given an option identified by iflag, add the appropriate option
 * string(s) to the ipl_cmds list used by IPL as the back end command
 * list to be passed via the object file to the back end under IPA.
 *
 * ====================================================================
 */

static void
add_ipl_cmd_string (int iflag)
{
  if (option_matches_phase (iflag, P_be)) {
    /* Assume inside a FOREACH_IMPLIED_OPTION iteration */
    string name = get_current_implied_name();
    
    /* For the first one, build the string list initialized with
     * the command name and -non_shared if necessary:
     */
    if (ipl_cmds == 0) {
      ipl_cmds = init_string_list ();
      add_string (ipl_cmds, program_name);
      if ( shared == NON_SHARED ) {
	add_string (ipl_cmds, "-non_shared");
      }
    }
    
    /* If this is not one of the driver-recognized options, then
     * we need to prefix it with -Wb, -- doing so also requires
     * replacing internal spaces with commas:
     */
    if ( debug ) {
	fprintf ( stderr, "%s: %sternal, #%d of %d, %s\n",
		name,
		is_internal_option (iflag) ? "in" : "ex",
		iflag, LAST_PREDEFINED_OPTION,
		is_derived_option (iflag) ? "derived" : "primary"
	       );
    }

    if ( is_internal_option (iflag)
      || ( iflag >= LAST_PREDEFINED_OPTION
	&& ! is_derived_option (iflag) ) )
    {
      char *p;
      name = concat_strings ("-Wb,", name );
      for ( p = name; *p != 0; p++ ) {
	if ( *p == ' ' ) *p = ',';
      }
    }

    if (strcmp(name,"-pfa") == 0) {
      /* change pfa to -Wb,-pfa, since after IPA we only want auto-parallelism
       * from be/LNO, but not the mfef77/rii_files or be/dsm_clone, etc.
       */
      name = concat_strings ("-Wb,", name);
    }
    
    /* Add the option (possibly with blanks) to the list: */
    if (strcmp(name,"-dsm_clone")!=0)
      add_multi_strings (ipl_cmds, name);
  }
} /* add_ipl_cmd_string */


void
save_ipl_commands (void)
{
    int i;
    int iflag;

    FOREACH_OPTION_SEEN(i) {
	if ( i == O_Unrecognized || i == O_show )
	    continue;
	if (option_matches_language (i, invoked_lang)) {
	    FOREACH_IMPLIED_OPTION(iflag, i) {
	   	 add_ipl_cmd_string (iflag);
	    }
	}
    }

} /* save_ipl_commands */



/*
 * set the freeform/fixedform switch appropriately 
 * for mfef90 and ftpp. Also set the line length for ftpp, but only in 
 * fixed form.
 */
static void
set_f90_source_form(string_list_t *args,boolean set_line_length)
{
   char buf[16];
   
   sprintf(buf,"-N%d",fortran_line_length);

   if (fortran_form == 2) {
      /* User specified -freeform */
      add_string(args,"-ffree");
   } else if (fortran_form == 1) {
      /* User specified fixed form */
      add_string(args,"-ffixed");
      if (set_line_length) add_string(args,buf);
   } else {
      /* Unspecified, need to get the extension (.f or .f90) */
      if (source_kind == S_f90 || source_kind == S_F90) {
	 add_string(args,"-ffree");
      } else {
	 add_string(args,"-ffixed");
	 if (set_line_length) add_string(args,buf);
      }
   }
}

/*
 * utility routine to set arguments used by both passes of f90
 *
 */

static void
do_f90_common_args(string_list_t *args)
{
   /* Handle the source form options */
   set_f90_source_form(args,FALSE);

   add_string(args,"-LANG:=F90");
}
