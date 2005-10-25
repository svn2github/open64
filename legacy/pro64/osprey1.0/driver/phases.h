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

extern string source_file;
extern boolean multiple_source_files;

extern string outfile;		/* outfile for -o */
extern string prof_file;        /*  executable file for prof to work upon */
extern string fb_file;		/* feedback file for -fb */
extern string fb_xdir;		/* dir where pixie emits dso's */
extern string fb_cdir;		/* dir where pixie emits count files */

extern string ldpath_for_pixie;  /* Tell pixie where to find ld */
extern string command_line;	/* original command line */

extern boolean keep_mp;		/* keep pfa/pca file */
extern boolean keep_list;	/* keep pfa/pca listing */
extern boolean keep_listing;	/* keep listing file */
extern boolean keep_cif;	/* keep cif file */
extern boolean auto_parallelize;	/* invoke lno:ap=1 */
extern boolean Gen_feedback;	/* Generate pixified binary for spec */
extern boolean Use_feedback;	/* Use feedback for spec */
extern boolean Disable_open_mp; /* Disable the recognition of open mp */
extern boolean Disable_old_mp;  /* Disable the recognition old style mp */
extern char roundoff;		/* roundoff level for pfa */
extern boolean O3_flag;		/* -O3 has been specified */
extern boolean nocpp_flag;	/* don't invoke cpp */
extern boolean use_cpp;		/* Use cpp instead of ftpp for F90 */
extern boolean expand_ftpp_macros; /* fully macro-expand in ftpp */
extern int     fortran_line_length;	/* Line length for fixed form fortran */

extern string ld_library_path;	/* env. variable LD_LIBRARY_PATH */
extern string ld_libraryn32_path;   /* env. variable LD_LIBRARYN32_PATH */

extern string orig_program_name; /* actual name passed in to argv[0] */

/* call once before running compiler */
extern void init_phase_info (void);

/* run dsm_prelink */
extern void run_dsm_prelink(void);

/* run ld only */
extern void run_ld (void);
extern void run_ar (void);
extern void run_pixie (void);
extern void run_prof (void);

/* run whole compiler */
extern void run_compiler (void);

/* save original command line */
extern void save_command_line(int, char **);
extern void set_current_arg_pos(int n);
extern void cancel_saved_arg(int count);
extern void add_minus_c_option(void);

/* save user options for ipl */
extern void save_ipl_commands (void);
extern char *dirname(char *const s);

#define PASS1 0
#define PASS2 1



