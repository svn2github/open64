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


/*
 * OPTIONS that are not simple enough to handle in the table
 * are done by hand in these routines.
 */

#include <strings.h>
#include <stdlib.h>
#include <stamp.h>
#include "string_utils.h"
#include "options.h"
#include "option_seen.h"
#include "option_names.h"
#include "lang_defs.h"
#include "errors.h"
#include "opt_actions.h"
#include "file_names.h"
#include "get_options.h"
#include "phases.h"

static char compiler_version[] = INCLUDE_STAMP;

extern void
set_defaults (void)
{
	int flag;
	/* handle SGI_CC environment variable */
	string sgi_cc = getenv("SGI_CC");
	if (sgi_cc != NULL && !is_toggled(ansi)) {
		/* value not set yet */
		if (same_string(sgi_cc, "-cckr")) {
			toggle(&ansi,KR_ANSI);
			prepend_option_seen (O_cckr);
		} else if (same_string(sgi_cc, "-xansi")) {
			toggle(&ansi,EXTENDED_ANSI);
			prepend_option_seen (O_xansi);
		} else if (same_string(sgi_cc, "-ansi")) {
			toggle(&ansi,STRICT_ANSI);
			prepend_option_seen (O_ansi);
		}
	}

	/* XPG fort77 doesn't allow -O with no explicit level */
	if (xpg_flag && invoked_lang == L_f77 && option_was_seen(O_O)) {
		error("XPG compiles must specify explicit optlevel rather than -O");
	}
	{
	  /* QA wants way to turn off this check via environment var */
	  string ir_version_check = getenv("COMPILER_IR_VERSION_CHECK");
	  if (ir_version_check != NULL) {
		if (same_string(ir_version_check, "off")) {
			flag = add_string_option(O_DEBUG_, "ir_version_check=off");
			/* prepend so comes before user option */
			prepend_option_seen(flag);
		}
	  }
	}
#ifdef IRIX62
	flag = add_string_option(O_LNO_, "plower=off");
	prepend_option_seen(flag);
	flag = add_string_option(O_CG_, "pjump_all=off");
	prepend_option_seen(flag);
#endif
#ifdef IRIX64
	flag = add_string_option(O_CG_, "pjump_all=off");
	prepend_option_seen(flag);
#endif
	if (endian == UNDEFINED) {
#ifdef LITTLE_ENDIAN_HOST
		toggle(&endian, ENDIAN_LITTLE);
		prepend_option_seen(O_EL);
#else
		toggle(&endian, ENDIAN_BIG);
		prepend_option_seen(O_EB);
#endif
	}

	prepend_option_seen(O_usegfe);
	prepend_option_seen(O_usef90);

	if (ansi == UNDEFINED) {
		toggle(&ansi,EXTENDED_ANSI);
		prepend_option_seen(O_xansi);
	}
#ifndef linux
	prepend_option_seen (O_cpp_irix);
	prepend_option_seen(O_cpp_svr4);
	prepend_option_seen(O__SYSTYPE_SVR4);
	prepend_option_seen(O_cpp_cfe);
	if (ansi != STRICT_ANSI) {
		prepend_option_seen (O_cpp_nonansi_svr4);
		prepend_option_seen (O_cpp_extensions);
		prepend_option_seen (O_cpp_krdefs);
	}
#endif
#ifdef HOST_IA32
	flag = add_string_option(O_D, "__host_ia32");
	prepend_option_seen (flag);
#endif
#ifdef HOST_IA64
	flag = add_string_option(O_D, "__host_ia64");
	prepend_option_seen (flag);
#endif
#ifdef HOST_MIPS
	flag = add_string_option(O_D, "__host_mips");
	prepend_option_seen (flag);
	if (ansi != STRICT_ANSI) {
		flag = add_string_option(O_D, "host_mips");
		prepend_option_seen (flag);
	}
#endif

#ifdef MIPS
	prepend_option_seen(O_cpp_mips);
#endif
	prepend_option_seen(O_m1);
	prepend_option_seen(O_cpp_version);
#ifndef linux
	/* old compiler-version define */
	flag = add_string_option(O_D, "_COMPILER_VERSION=740");
	prepend_option_seen (flag);
#endif
	prepend_option_seen(O_cpp_nonansi_f77);
	prepend_option_seen(O_cpp_fortran90);
	prepend_option_seen(O_cpp_fortran77);
	prepend_option_seen(O_cpp_fortran);
#ifdef linux 
	prepend_option_seen(O_cpp_cplus_linux);
#else
	prepend_option_seen(O_cpp_cplus);
#endif
	prepend_option_seen(O_cpp_assembly);
	prepend_option_seen(O_D_LANGUAGE_C);
	prepend_option_seen(O_ptnone);
	prepend_option_seen(O_prelink);
	prepend_option_seen(O_demangle);
	if (shared == UNDEFINED) {
		if (abi == ABI_IA32) {
			toggle(&shared,NON_SHARED);
			prepend_option_seen(O_non_shared);
		}
		else {
			toggle(&shared,CALL_SHARED);
			prepend_option_seen(O_call_shared);
		}
	}
#ifndef linux
	if (shared != NON_SHARED) {
		prepend_option_seen(O_cpp_pic);
	}
#endif
#ifndef linux
	if (abi == ABI_64 || abi == ABI_I64)
		add_option_seen(O_cpp_lp64);
	else
		add_option_seen(O_cpp_lp32);
	if (abi == ABI_I32)
		add_option_seen(O_cpp_i32);
	else if (abi == ABI_I64)
		add_option_seen(O_cpp_i64);
	else if (abi == ABI_IA32)
		add_option_seen(O_cpp_ia32);
#endif
	if (!is_toggled(isstatic)) {
		toggle(&isstatic,1);
		prepend_option_seen(O_automatic);
	}
	prepend_option_seen(O_auto_include);
}


static int
get_olevel_flag (int olevel)
{
	switch (olevel) {
	case 0: return O_O0;
	case 1: return O_O1;
	case 2: return O_O2;
	case 3: return O_O3;
	default: return O_Unrecognized;
	}
}

/* replace -O* with O0 */
static void
turn_down_opt_level (int new_olevel, string msg)
{
	int flag;
	int new_flag;
	if (fullwarn) warning(msg);
	flag = get_olevel_flag(olevel);
	new_flag = get_olevel_flag(new_olevel);
	if (option_was_seen(O_O))
		replace_option_seen (O_O, new_flag);
	else if (option_was_seen(flag))
		replace_option_seen (flag, new_flag);
	else
		internal_error("driver didn't find -O flag");
	olevel = new_olevel;
}

static void
turn_off_ipa (string msg)
{
	int flag;
	warning (msg);
	ipa = FALSE;
	/* remove all ipa flags from option_seen list */
	FOREACH_OPTION_SEEN(flag) {
		if (flag == O_ipa)
			set_option_unseen(flag);
		else if (flag == O_IPA)
			set_option_unseen(flag);
		else if (is_derived_option (flag)
		    && get_derived_parent(flag) == O_IPA_)
			set_option_unseen(flag);
	}
}

extern void
add_special_options (void)
{
	int flag;
	buffer_t buf;
	string s;

	/* Hack for F90 -MDupdate. We need to pass the MDupdate to mfef90, because we don't
	 * have an integrated pre-processor. I can't figure out a better way to do this, given
	 * the architecture of the phase generator. 
	 * R. Shapiro, 2/26/97
	 */
	add_phase_for_option(O_MDupdate,P_f90_fe);
	add_phase_for_option(O_MDtarget,P_f90_fe);
	remove_phase_for_option(O_MDupdate,P_f90_cpp);
	remove_phase_for_option(O_MDtarget,P_f90_cpp);

        add_phase_for_option(O_D, P_cppf90_fe);
        add_phase_for_option(O_U, P_cppf90_fe);
        add_phase_for_option(O_E, P_cppf90_fe);
        add_phase_for_option(O_P, P_cppf90_fe);

	if (use_ftpp == TRUE) {
		/* ftpp means pass defines directly to mfef90,
		 * and since not using gcc we have to pass some options
		 * that are otherwise implicit. */
		if (endian == ENDIAN_LITTLE)
    			flag = add_string_option(O_D, "_LITTLE_ENDIAN");
		else
    			flag = add_string_option(O_D, "_BIG_ENDIAN");
		prepend_option_seen (flag);
    		flag = add_string_option(O_D, "__LONG_MAX__=9223372036854775807L");
		prepend_option_seen (flag);
		prepend_option_seen (O_elf);
		prepend_option_seen (O_cpp_unix);
		prepend_option_seen (O_cpp_linux);
		prepend_option_seen (O_cpp_nonansi);
		if (keep_flag) {
			add_phase_for_option (O_keep, P_cppf90_fe);
		}
	}

	if (option_was_seen(O_traditional)
		&& !option_was_seen(O_traditional_cpp)) 
	{
		/* pass -traditional to both gfe and cpp */
		add_phase_for_option(O_traditional, P_c_gfe);
		add_phase_for_option(O_traditional, P_cplus_gfe);
	}

	if (abi == ABI_N32 || abi == ABI_64) {
		if (endian == ENDIAN_LITTLE)
			prepend_option_seen(O_mel);
		else
			prepend_option_seen(O_meb);
	}

#if defined(TARG_IA32)
	flag = add_string_option(O_D, "__NO_MATH_INLINES");
	prepend_option_seen (flag);
#endif

	if (ansi != STRICT_ANSI || invoked_lang == L_CC) {
		/* C++:  Add the extensions that are valid in xansi mode. */
#ifdef linux
		prepend_option_seen(O_xtendefs_linux);
#else
		prepend_option_seen(O_xtendefs);
#endif
	}

	if (mpkind == CRAY_MP) {
		Process_Cray_Mp();
	}
	else if (mpkind == NORMAL_MP || auto_parallelize) {
		Process_Mp();
	}

        if (auto_parallelize && ipa) {
                flag = add_new_option("-IPA:array_summary");
                add_phase_for_option(flag, P_ipl);
                prepend_option_seen (flag);
        }

	if ((mpkind == NORMAL_MP || auto_parallelize) && !Disable_open_mp) {
		flag = add_string_option(O_D, "_OPENMP=199810");
		prepend_option_seen (flag);
	}

	if (olevel == UNDEFINED) {
		olevel = default_olevel;
		if (olevel == UNDEFINED) {
			/* if no default, use -O0 */
			olevel = 0;
		}
		flag = get_olevel_flag(olevel);
		prepend_option_seen (flag);
	}
	if (abi == ABI_N32 || abi == ABI_64) {
		/* mips-based */
		/* can't define _{BIG,LITTLE}_ENDIAN until 6.5.3 */
		if (endian == ENDIAN_LITTLE) {
			flag = add_string_option(O_D, "_MIPSEL");
			prepend_option_seen (flag);
			if (ansi != STRICT_ANSI) {
				flag = add_string_option(O_D, "MIPSEL");
				prepend_option_seen (flag);
			}
		}
		else {
			flag = add_string_option(O_D, "_MIPSEB");
			prepend_option_seen (flag);
			if (ansi != STRICT_ANSI) {
				flag = add_string_option(O_D, "MIPSEB");
				prepend_option_seen (flag);
			}
		}
	}
	if (abi != ABI_I64 && abi != ABI_I32 && abi != ABI_IA32) {
		/* add mips-specific flags */
		if (ansi != STRICT_ANSI) {
			flag = add_string_option(O_D, "mips");
			prepend_option_seen (flag);
		}
	}
	if (!nostdinc) {
                /* mips only: add -I path for MIPS abi include directory */
                if (abi != ABI_I64 && abi != ABI_I32 && abi != ABI_IA32) {
                  if (option_was_seen(O_abi)) {
                          flag = add_string_option(O_I__, 
                             concat_strings(get_phase_dir(P_include),"/abi"));
                          add_option_seen (flag);
                  }
                }

		/* mips only: add -I path for CC */
                if (abi != ABI_I64 && abi != ABI_I32 && abi != ABI_IA32) {
                  flag = add_string_option(O_I__, 
                              concat_strings(get_phase_dir(P_include),"/CC"));
                  set_language_for_option (flag, L_CC);
                  add_option_seen (flag);
                }
	}
	if (!is_toggled(gnum)) {
		/* set gnum default */
		if (abi == ABI_RAG32) {
			/* be compatible with ucode */
			if (shared == NON_SHARED) {
				toggle(&gnum,8);
			} else {
				toggle(&gnum,0);
			}
		} else {
			if (option_was_seen(O_xgot))
				toggle(&gnum,0);
			else
				toggle(&gnum,8);
		}
		sprintf(buf, "%d", gnum);
		flag = add_string_option(O_G__, buf);
		prepend_option_seen(flag);
	}
	/* fix COMPILER_VERSION: */
	FOREACH_IMPLIED_OPTION(flag, O_cpp_version) {
		s = get_current_implied_name();
		if (contains_substring (s, "XXX")) {
		   /* This handles the case of 6.1 vs. 6.02, etc.
		    * better. Richard Shapiro, 8/23/95
		    */
		   buf[0] = compiler_version[0];
		   buf[1] = compiler_version[2];
		   buf[2] = compiler_version[3] ?  compiler_version[3] : '0';
		   buf[3] = '\0';
		   replace_substring (s, "XXX", buf);
		}
	}
	/* some checks are easier to do by hand */
	if (olevel >= 2 && glevel == 2) {
#ifdef linux
		glevel = 3;
		if (option_was_seen (O_g))
			replace_option_seen (O_g, O_g3);
		if (option_was_seen (O_g2))
			replace_option_seen (O_g2, O_g3);
#else
		turn_down_opt_level(0, "-O conflicts with -g; changing to -O0; if you want -O, use -g3");
#endif /* linux */
	}

	if (option_was_seen(O_S) && ipa == TRUE) {
		turn_off_ipa ("-IPA -S combination not allowed, replaced with -S");
	}
	if (instrumentation_invoked == TRUE) {
	    if (ipa == TRUE) {
		inline_t = FALSE;
		turn_off_ipa ("-fb_create requires no -IPA");
	    }
	    if (olevel > 2)
		turn_down_opt_level (2, "-fb_create conflicts with -Ofast/-O3; changing to -O2");
	}
	if (Gen_feedback && olevel > 0) {
		turn_down_opt_level(0, "-fbgen conflicts with -O; changing to -O0");
	}
	if (Gen_feedback && ipa == TRUE) {
		turn_off_ipa ("-IPA -fbgen combination not allowed, replaced with -fbgen");
	}
	if (glevel == 2 && ipa == TRUE) {
		turn_off_ipa ("-IPA -g combination not allowed, replaced with -g");
	}

	if (ipa == TRUE) {
	    if (olevel <= 1)
		flag = add_string_option (O_PHASE_, "i");
	    else
		flag = add_string_option (O_PHASE_, "p:i");
	} else {
	    /*
	     * Determine which back end phase(s) need to be run.
	     *
	     *			-O0/-O1	-O2		-O3
	     *			===========================
	     *		.B,.I:	cg	wopt/cg		lno/wopt/cg
	     *		.N:	cg	wopt/cg		wopt/cg
	     *		.O:	cg	cg		cg
	     */
	    if (source_kind == S_O)
		warning("compiles of WOPT-generated .O files will usually fail due to missing state information");
	    if (olevel <= 1 || source_kind == S_O)
		flag = add_string_option(O_PHASE_, "c");
	    else if (olevel == 2 || source_kind == S_N)
		flag = add_string_option(O_PHASE_, "w:c");
	    else 
		flag = add_string_option(O_PHASE_, "l:w:c");
	}
	prepend_option_seen (flag);

	if (abi == ABI_N32 || abi == ABI_64) {
        	set_dsm_options ();
	}

	if (option_was_seen(O_ar) && outfile == NULL) {
	   error("-ar option requires archive name to be specified with -o option");
	}
	
	if (skip_as == UNDEFINED) {
		/* for mips we generate object directly;
		 * for other targets we go thru as. */
		if (abi == ABI_N32 || abi == ABI_64)
			skip_as = TRUE;
		else
			skip_as = FALSE;
	}
	if (skip_as == FALSE && ! keep_flag && last_phase != P_be) {
		/* if going thru asm and not keeping .s file,
		 * then don't print extra notes and source */
		flag = add_string_option(O_LIST_, "source=off:notes=off");
		prepend_option_seen (flag);
	}

	if (option_was_seen(O_static) && invoked_lang == L_f90) {
		/* IRIX f90 -static was fe option,
		 * but gnu makes it a link option.
		 * Warn about possible misuse. */
		warning("Under Linux, -static is a linker option for using static libraries; if you wanted to put local data in static area, use -static-data instead");
	}
}

