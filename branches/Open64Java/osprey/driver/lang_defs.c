/*
 * Copyright 2002, 2003, 2004, 2005 PathScale, Inc.  All Rights Reserved.
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


/* this is used by both table and the driver */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "lib_phase_dir.h"
#include "lang_defs.h"
#include "file_utils.h"
#include "string_utils.h"
#include "errors.h"
char *ldpath_for_pixie = NULL;

/*
 * If you change any of these keys, be sure to also change the keys
 * in the OPTIONS table.
 */

#define MAX_LANG_NAMES 5
typedef struct lang_struct {
	char key;
	mask_t mask;
	char *name[MAX_LANG_NAMES];	/* list of strings */
} lang_info_t;
/* languages_t is index into language_info array */
static lang_info_t language_info[] = {
	{'N',	0x00000000,	{""}},		/* NONE */
	{'A',	0x0fffffff,	{""}},		/* ALL */
	{'p',	0x00000001,	{"cpp"}},		/* cpp */
	#ifdef PSC_TO_OPEN64
	{'c',	0x00000002,	{"cc", OPEN64_NAME_PREFIX "cc", OPEN64_TARGET "-" OPEN64_NAME_PREFIX "cc","gcc","c89"}},	/* cc */
	{'C',	0x00000004,	{"CC", OPEN64_NAME_PREFIX "CC", OPEN64_NAME_PREFIX "++","g++"}},	/* c++ */
	{'f',	0x00000008,	{"f77", OPEN64_NAME_PREFIX "f77","gf77","fort77"}}, /* f77 */
	{'F',	0x00000010,	{"f90", OPEN64_NAME_PREFIX "f95"}},		/* f90/95 */
	{'a',	0x00000020,	{"as", OPEN64_NAME_PREFIX "as","gas"}},		/* as */
	{'l',	0x00000040,	{"ld", OPEN64_NAME_PREFIX "ld"}},		/* ld */
//yzm
	{'j',	0x00000080, {"java", OPEN64_NAME_PREFIX "java"}},	/* java */

	#endif
	{'I',	0x80000000,	{"int"}},		/* Internal option */
};

typedef struct phase_struct {
	char key;
	mask_t mask;
	char *name;
	char *dir;
	boolean set_ld_library_path; /* true if need to set LD_LIBRARY_PATH
					to "dir" */
	boolean find_dir_by_path; /* find phase dir from $PATH */
} phase_info_t;
/* phases_t is index into phase_info array */
static phase_info_t phase_info[] = {
   {'N',  0x0000000000000000LL,	"", 	"",		FALSE, FALSE},	/* NONE */
   {'A',  0x0fffffffffffffffLL,	"", 	"",		FALSE, FALSE},	/* ALL */

   {'m',  0x0000000000000008LL,	"m4",	BINPATH,	FALSE, FALSE},	/* m4 */
   {'r',  0x0000000000000001LL,	"ratfor",BINPATH,	FALSE, FALSE},	/* ratfor */

   {'p',  0x0000000000000010LL,	"cpp",	PHASEPATH,	FALSE, FALSE},	/* cpp */
   /* invoke gcc driver directly rather than cpp
    * because cpp can have different paths, reads spec file,
    * and may eventually be merged with cc1. */
   {'p',  0x0000000000000020LL,	NAMEPREFIX "gcc", ALTBINPATH, FALSE, TRUE}, /* gcpp */
   {'p',  0x0000000000000040LL,	NAMEPREFIX "g++", ALTBINPATH, FALSE, TRUE}, /* gcpp_plus */
   {'p',  0x0000000000000080LL,	"fec",	 PHASEPATH,	FALSE, FALSE},	/* c_cpp */
   {'p',  0x0000000000000100LL, "cpp",   PHASEPATH,     FALSE, FALSE}, /* cplus_cpp */
   {'p',  0x0000000000000200LL,	"mfef77",PHASEPATH,	FALSE, FALSE},	/* f_cpp */
   {'p',  0x0000000000000400LL,	"ftpp"   ,PHASEPATH,	FALSE, FALSE},	/* f90_cpp */
#ifdef KEY	// bug 9058
   {'p',  0x0000000000000800LL,	"coco"   ,PHASEPATH,	FALSE, FALSE},	/* coco */
#endif
   /* place-holder for generic cpp, whose mask unites all cpp's; */
   {'p',  0x0000000000000ff0LL,	"",	"",		FALSE, FALSE},	/* any_cpp */

   {'K',  0x0000000000001000LL,	"pfa",	PHASEPATH,	FALSE, FALSE},	/* pfa */
   {'K',  0x0000000000002000LL,	"pca",	PHASEPATH,	FALSE, FALSE},	/* pca */
   {'M',  0x0000000000008000LL, "mpc",  PHASEPATH,      FALSE, FALSE}, /* mpc */
   /* place-holder for generic fe optimizer, whose mask unites opts's */
   /* don't include mpc which is controlled by a different phase letter */
   {'K',  0x0000000000007000LL, "",     "",             FALSE, FALSE}, /* any_optfe */

   /* the mask field really has two uses:
    * 1) to produce a union value given a set of phase keys;
    * 2) to specify which phase an option is passed to.
    * Usually these two meanings are the same, but for cppc_fe,
    * we want a unique value for the phase key, but we also
    * want it to match both cpp and cfe; if we used the union
    * of cpp and cfe for getting the phase key, then we would
    * end up saying that a cpp option also applies to cfe.
    * So what we do is give it a unique value, but when matching
    * the value for options then we compare against both cpp and cfe. */
   /* ffe is chosen by same letter as cfe */
   {'f',  0x0000000000010000LL,	"mfef77",PHASEPATH,	FALSE, FALSE},	/* f_fe */
   {'f',  0x0000000000020000LL, "mfef77",PHASEPATH,     FALSE, FALSE}, /* cppf_fe */
   {'f',  0x0000000000040000LL,	"mfef95",PHASEPATH,	FALSE, FALSE},	/* f90_fe */
   {'f',  0x0000000000080000LL,	"mfef95",PHASEPATH,	FALSE, FALSE},	/* cppf90_fe */
   {'f',  0x0000000000100000LL,	"gfec",PHASEPATH,	TRUE , FALSE}, /* c_gfe */
   {'f',  0x0000000000200000LL,	"gfecc",PHASEPATH,	TRUE , FALSE}, /* cplus_gfe */
#ifdef KEY
   {'f',  0x0000000000400000LL, "cc1"   ,PHASEPATH, TRUE , FALSE}, /* spin_cc1  */
   {'f',  0x0000000000800000LL, "cc1plus",PHASEPATH,    TRUE , FALSE}, /* spin_cc1plus */
//yzm
   {'f',  0x0000000001000000LL, "jc1",   PHASEPATH,  TRUE,  FALSE},
   {'f',  0x0000000010000000LL, "wgen",PHASEPATH,   TRUE , FALSE}, /* wgen      */
//yzm
   {'f',  0x0000000002000000LL, "jvgenmain", PHASEPATH, TRUE, FALSE},
#endif
   /* place-holder for generic fe, whose mask unites all fe's; */
   /* this is so -Wf will apply to whatever fe is being invoked. */
   {'f',  0x000000000fff0000LL,	"",	"",		FALSE, FALSE},	/* any_fe */
   {'F',  0x00000000000f0000LL,	"",	"",		FALSE, FALSE},	/* pseudo_f_fe */
   {'C',  0x0000000000f00000LL,	"",	"",		FALSE, FALSE},	/* pseudo_c_fe */

   {'X',  0x0000000040000000LL, "ftnlx", PHASEPATH,	FALSE, FALSE}, /* Lister */ 

   {'i',  0x0000000100000000LL,	"inline",PHASEPATH,	TRUE, FALSE},	/* inline */
   {'i',  0x0000000200000000LL,	"ipl",	PHASEPATH,	TRUE, FALSE},	/* ipl */
   {'i',  0x0000000f00000000LL,	"",	"",		TRUE, FALSE},	/* ipl, inline*/

   {'b',  0x0000001000000000LL,	"be",	PHASEPATH,	TRUE, FALSE},	/* be */
   /* We use 'B' for options to be passed to be via ipacom. */
#ifdef KEY
//yzm
   {'b',  0x0000001000000000LL, "",   PHASEPATH,        TRUE, FALSE},
#endif

   {'a',  0x0000010000000000LL,	"asm",	PHASEPATH,	FALSE, FALSE},	/* as */
#if defined(TARG_X8664) || ( defined(KEY) && !defined(CROSS_COMPILATION))
   /* on x8664, we alwayse use gcc as the assembler */
   {'a',  0x0000020000000000LL,	NAMEPREFIX "gcc", BINPATH, FALSE, TRUE}, /* gcc */
#else
   {'a',  0x0000020000000000LL,	"as",	BINPATH,	FALSE, TRUE},	/* gas */
#endif

//yzm
/*#ifdef KEY
   {'a',  0x0000042026000000LL, "",     "",            FALSE,  FALSE},  
#endif
*/


   {'a',  0x0000030000000000LL,	"",	"",		FALSE, FALSE},	/* any_as */

   {'d',  0x0000080000000000LL, "dsm_prelink", PHASEPATH,FALSE, FALSE},/* dsm_prelink*/
   {'j',  0x0000100000000000LL,	"ipa_link", GNUPHASEPATH, TRUE, FALSE},	/* ipa_link */
   {'l',  0x0000200000000000LL,	"ld", BINPATH, TRUE, TRUE},	/* collect */
#if defined(TARG_X8664) || ( defined(KEY) && !defined(CROSS_COMPILATION))
   /* on x8664, we alwayse use gcc/g++ as the linker */
   {'l',  0x0000400000000000LL,	NAMEPREFIX "gcc", BINPATH, FALSE, TRUE}, /* ld */
   {'l',  0x0000800000000000LL,	NAMEPREFIX "g++", BINPATH, FALSE, TRUE}, /* ldplus */
#else
   {'l',  0x0000400000000000LL,	"ld", BINPATH, FALSE, TRUE}, /* ld */
   {'l',  0x0000800000000000LL,	"ld", BINPATH, FALSE, TRUE}, /* ldplus */
#endif
   {'l',  0x0001000000000000LL, NAMEPREFIX "gcj", BINPATH, FALSE, TRUE}, /*ld_gcj  ykq*/ 

   {'l',  0x0001f00000000000LL, "", "",     TRUE, FALSE},   /* any_ld */
   {'c',  0x0002000000000000LL, "cord", BINPATH,	FALSE, FALSE},	/* cord */
   {'x',  0x0004000000000000LL, "pixie", BINPATH,   FALSE, FALSE}, /* pixie */
   {'x',  0x0008000000000000LL, "prof",  BINPATH,   FALSE, FALSE}, /* prof */

   {'R',  0x0010000000000000LL, "ar",  BINPATH,      FALSE, FALSE}, /* ar */

   {'S',  0x0100000000000000LL,	"crt",	LIBPATH,	FALSE, FALSE},	/* startup */
   {'I',  0x0200000000000000LL,	"inc",	"/include",	FALSE, FALSE},	/* include */
   {'L',  0x0400000000000000LL,	"lib",	LIBPATH,	FALSE, FALSE},	/* library */
   {'L',  0x0800000000000000LL,	"alib",	ALTLIBPATH,	FALSE, FALSE},	/* alt_library */
};

//yzm
mask_t PHASE_MASK=
          0x00ffffffffffffffLL;
mask_t LIB_MASK =
          0xff00000000000000LL;

#define MAX_SUFFIXES	8
typedef struct source_struct {
	char *suffix[MAX_SUFFIXES];	/* list of strings */
} source_info_t;
/* source_kind_t is index into source_info array */
static source_info_t source_info[] = {
#ifdef KEY  // If no suffix, treat as linker object.  Bug 9430.
    {},             /* NONE */
#else
    {""},               /* NONE */
#endif
	{"c"},				/* c */
	{"C","CC","CPP","CXX","cc","cpp","cxx","c++"},	/* C */
	{"f","for"},			/* f */
	{"F","FOR"},			/* F */
	{"f90","f95"},			/* f90 */
	{"F90","F95"},			/* F90 */
	{"r"},				/* r */
	{"i"},				/* i */
	{"ii"},				/* ii */
	{"s"},				/* s */
	{"S"},				/* S */
	{"I"},				/* I */
	{"B"},				/* B */
	{"N"},				/* N */
	{"O"},				/* O */
	{"o"},				/* o */
//yzm
	{"java","class","jar"}, 			/* java */

};

languages_t invoked_lang;
languages_t source_lang;
phases_t first_phase = P_any_cpp;
phases_t last_phase = P_cord;
phases_t remember_last_phase = P_NONE;
phases_t current_phase = P_NONE;
source_kind_t source_kind = S_NONE;
source_kind_t default_source_kind = S_NONE;
boolean ignore_suffix = FALSE;

/* return earliest phase */
/* (this routine assumes that phases in enumeration are ordered) */
phases_t
earliest_phase (phases_t a, phases_t b)
{
	if (b < a)
		return b;
	else
		return a;
}

languages_t
get_language (char key)
{
	languages_t i;
	for (i = L_NONE; i < L_LAST; i++) {
		if (language_info[i].key == key) {
			return i;
		}
	}
	internal_error("bad language key (%c)", key);
	return L_NONE;
}

mask_t
get_language_mask (languages_t i)
{
	return language_info[i].mask;
}

phases_t 
get_phase (char key)
{
        int i;
	buffer_t buf;
	/* iterate in reverse, so find generic fe for 'f' */
	for (i = P_LAST-1; i >= (int) P_NONE; i--) {
		if (phase_info[i].key == key) {
			return (phases_t) i;
		}
	}
	sprintf(buf, "phase key (%c) ", key);
	warn_no_longer_supported(buf);
	return P_NONE;
}

mask_t
get_phase_mask (phases_t i)
{
	return phase_info[i].mask;
}

/* return whether the language matches the mask */
boolean
is_matching_language (mask_t lang_mask, languages_t l)
{
	return ((lang_mask & language_info[l].mask) != 0);
}

/* return whether the phase matches the mask */
boolean
is_matching_phase (mask_t phase_mask, phases_t p)
{
	if (p == P_cppf_fe) {
		return (is_matching_phase (phase_mask, P_f_cpp)
			|| is_matching_phase (phase_mask, P_f_fe) );
	} else {
		return ((phase_mask & phase_info[p].mask) != 0);
	}
}

/* set phase dir for associated mask of phases */
void
set_phase_dir (mask_t mask, char *path)
{
	/* handle case of same key for multiple phases */
	phases_t i;
	for (i = P_NONE; i < P_LAST; i++) {
		if ((phase_info[i].mask & mask) != 0) {
			phase_info[i].dir = string_copy(path);
			if (i == P_ld)
			  ldpath_for_pixie = string_copy(path);
		}
	}
}

/* Replace the directory of all matching phases. */
/* I.e. substitute ("/usr/bin", base, "bin") => base/bin */
void
substitute_phase_dirs (char *orig_dir, char *new_dir, char *leaf)
{
	phases_t i;
	char *odir;
	char *ndir;

	ndir = concat_strings (new_dir, leaf);
	if (! is_directory (ndir))
	        return;

	for (i = P_NONE; i < P_LAST; i++) {
		if (strcmp(orig_dir, phase_info[i].dir) == 0) {
			phase_info[i].dir = ndir;
			if (i == P_ld)
				ldpath_for_pixie = ndir;
		}
	}
}

/* prefix all phase dirs with path */
void
prefix_all_phase_dirs (mask_t mask, char *path)
{
	phases_t i;
	for (i = P_NONE; i < P_LAST; i++) {
		if ((phase_info[i].mask & mask) != 0)
			phase_info[i].dir = 
				concat_strings(path, phase_info[i].dir);
	}
}

/* append all phase dirs with path */
void
append_all_phase_dirs (mask_t mask, char *path)
{
	phases_t i;
	for (i = P_NONE; i < P_LAST; i++) {
		if ((phase_info[i].mask & mask) != 0) {
			/* only append if end with preset PHASEPATH */
			if (strcmp(phase_info[i].dir + strlen(phase_info[i].dir) -
				   strlen(PHASEPATH), PHASEPATH) == 0)
			{
				phase_info[i].dir = 
					concat_strings(phase_info[i].dir, path);
			}
		}
	}
}

/* append path to end of phase dir */
void
append_phase_dir (phases_t index, char *path)
{
	phase_info[index].dir = concat_strings (phase_info[index].dir, path);
}

/* read output of cmd from pipe */
char *
read_cmd_out(char *cmd, char *out_buf)
{
	char buf[PATH_BUF_LEN];
	FILE* fp;
	int tail;

	if((fp = popen(cmd, "r")) == NULL)
		return NULL;

	out_buf[0] = '\0';
	while(fgets(buf, PATH_BUF_LEN, fp) != NULL)
		strcat(out_buf, buf);

	pclose(fp);

	tail = strlen(out_buf);
	if(out_buf[tail - 1] == '\n')
		out_buf[tail - 1] = '\0';

	return out_buf;
}

/* return phase path */
char *
get_phase_dir (phases_t index)
{
	if (index == P_ipa_link) {
	  return phase_info[index].dir;
	}
	else if(phase_info[index].find_dir_by_path) {
		char cmd[PATH_BUF_LEN];
		char result[PATH_BUF_LEN];

		sprintf(cmd, "dirname \"`which %s`\"", phase_info[index].name);
		if(read_cmd_out(cmd, result) == NULL)
			return phase_info[index].dir;
		return string_copy(result);
	}
	  return phase_info[index].dir;
}

void
get_phases_real_path (void) {
#ifdef PATH_MAX
       char pathstr[PATH_MAX];
#else
       char pathstr[4096];
#endif
       phases_t i;
       for (i = P_NONE; i < P_LAST; i++) {
               if (!phase_info[i].dir) { continue; }
               char* p = realpath (phase_info[i].dir, pathstr);
               if (p && strcmp (p, phase_info[i].dir)) {
                       phase_info[i].dir = string_copy (p);
               }
       }
}

char *
get_phase_ld_library_path (phases_t index)
{
    if (phase_info[index].set_ld_library_path)
	return phase_info[index].dir;
    else
	return 0;
}

/* return phase name */
char *
get_phase_name (phases_t index)
{
	return phase_info[index].name;
}

/* set phase name */
void
set_phase_name (phases_t index, char *s)
{
	phase_info[index].name = s;
}

/* return path and name of phase */
char *
get_full_phase_name (phases_t index)
{
	buffer_t tmp;
	strcpy(tmp, get_phase_dir(index));
	strcat(tmp, "/");
	return concat_strings (tmp, get_phase_name(index));
}

/* return language name */
char *
get_lang_name (languages_t index)
{
	return language_info[index].name[0];
}

languages_t
get_named_language (char *name)
{
	languages_t i, lang = L_NONE;
	int j;
	char *p;
	char *nomen = strdup(name);

#ifdef PSC_TO_OPEN64
	if ((p = strstr(nomen, "-" OPEN64_FULL_VERSION))) {
#endif
	    *p = '\0';
	    name = nomen;
	}
	
	for (i = L_NONE; i < L_LAST; i++) {
	    for (j = 0; j < MAX_LANG_NAMES && language_info[i].name[j] != NULL; j++) {
		/* skip if blank string */
		if (*language_info[i].name[j] == NIL) 
			continue;
		/* look for language name at end of string */
		p = name+strlen(name)-strlen(language_info[i].name[j]);
		if (strcmp(language_info[i].name[j], p) == 0) {
			/* as does not invoke ld */
			if (i == L_as)
			    last_phase = P_any_as;
			lang = i;
			goto done;
		}
	    }
	}
	internal_error("unknown language (%s)", name);

 done:
	free(nomen);
	return lang;
}

source_kind_t
get_source_kind_from_suffix (char *suf)
{
	source_kind_t i;
	int j;
	if (suf == NULL) return S_o;
	for (i = S_NONE; i < S_LAST; i++) {
		for (j = 0; j < MAX_SUFFIXES && source_info[i].suffix[j] != NULL; j++) {
			if (strcmp(source_info[i].suffix[j], suf) == 0) {
				return i;
			}
		}
	}
	/* unrecognized kind */
	return S_o;
}

source_kind_t
get_source_kind (char *src)
{
	if (ignore_suffix) {
		if (default_source_kind != S_NONE)
			return default_source_kind;
		else {
			/* assume is of invoked lang */
			switch (invoked_lang) {
			case L_cc: return S_c;
			case L_CC: return S_C;
			case L_f77: return S_f;
			case L_f90: return S_f90;
			case L_as: return S_s;
//yzm
#ifdef KEY
			case L_java:  return S_java;
#endif

			}
		}
	}
	return get_source_kind_from_suffix (get_suffix(src));
}

char *
get_suffix_string (source_kind_t sk)
{
	return source_info[sk].suffix[0];
}

/* is_object_source_kind returns TRUE only for objects. FALSE everything else
   including archives (.a) and shared objects (.so) */
boolean
is_object_source_kind(char *src)
{
	int j;
	char *suf = get_suffix(src);
	if (suf == NULL) return FALSE;
	for (j = 0; j < MAX_SUFFIXES && source_info[S_o].suffix[j] != NULL; j++) {
	    if (strcmp(source_info[S_o].suffix[j], suf) == 0) {
		return TRUE;
	    }

	}
	return FALSE;
}



languages_t 
get_source_lang (source_kind_t sk)
{
	switch (sk) {
	case S_i:
	case S_B:
	case S_I:
	case S_N:
	case S_O:
		/* for intermediate file, determine type from invoker */
		return invoked_lang;
	case S_ii:
		return L_CC;
	case S_c:
		if (invoked_lang == L_CC) return L_CC;
		else return L_cc;
	case S_C:
		return L_CC;
	case S_s:
	case S_S:
		return L_as;
	case S_r:
		return L_f77;
	case S_f:
	case S_F:
	case S_f90:
	case S_F90:
		/* no f77 in linux release */
		return L_f90;
	case S_o:
		return invoked_lang;
//yzm
#ifdef KEY
	case S_java:
		return L_java;
#endif
	}
	return L_NONE;
}
