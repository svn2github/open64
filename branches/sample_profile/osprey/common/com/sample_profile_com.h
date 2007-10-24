/*
 * Copyright 2003, 2004, 2005, 2006 PathScale, Inc.  All Rights Reserved.
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


//-*-c++-*-
// ====================================================================
// ====================================================================
//
// Module: sample_profile_com.h
// $Revision: 1.1.1.1 $
// $Date: 2007/8/15 19:00:00 $
// $Author: vinodha ramasamy $
// $Source: /proj/osprey/CVS/open64/osprey1.0/common/com/sample_profile_com.h,v $
//
// Revision history:
//  15-Aug-07 - Original Version
//
// Description: Definitions for feedback file created from sample profiles.
//
// ====================================================================
// ====================================================================

#ifndef sample_profile_com_INCLUDED
#define sample_profile_com_INCLUDED

#include "defs.h"

#if defined(defs_INCLUDED) && ! defined(USE_STANDARD_TYPES)
#undef short                            // get around bogus type defs.
#undef int
#undef long
#endif // defined(defs_INCLUDED) && !defined(USE_STANDARD_TYPES)

/* Feedback File Format */

#define FB_SAMPLE_NIDENT       16
#define FB_SAMPLE_MAJOR_VERSION      1
#define FB_SAMPLE_MINOR_VERSION      1

struct Fb_Sample_Hdr {
  char fb_ident[FB_SAMPLE_NIDENT];     /* ident bytes */
  UINT32 fb_version;             /* file version */
  UINT64 fb_pu_hdr_offset;       /* PU header file offset */
  UINT32 fb_pu_hdr_ent_size;     /* PU header entry size */ 
  UINT32 fb_pu_hdr_num;          /* Number of PU header entries */
  UINT64 fb_str_table_offset;
  UINT64 fb_str_table_size;
  UINT64 fb_profile_offset;	/* file offset for profile data */
  // PROFILE_PHASE phase_num;

  Fb_Sample_Hdr() {}
  Fb_Sample_Hdr(Fb_Sample_Hdr& x) 
  {
    memcpy((void *)fb_ident,(void *)x.fb_ident, FB_SAMPLE_NIDENT);
    fb_version = x.fb_version;
    fb_pu_hdr_offset = x.fb_pu_hdr_offset;
    fb_pu_hdr_ent_size = x.fb_pu_hdr_ent_size;
    fb_pu_hdr_num = x.fb_pu_hdr_num;
    fb_str_table_offset = x.fb_str_table_offset;
    fb_str_table_size = x.fb_str_table_size;
    fb_profile_offset = x.fb_profile_offset;
    // phase_num = x.phase_num;
  }
  void Print( FILE *fp ) const {
  	fprintf(fp, "\n**********      FILE HEADER     **************\n");
  	fprintf(fp, "fb_ident = %s\n", fb_ident);
  	fprintf(fp, "fb_version = %u\n",fb_version);
  	fprintf(fp, "fb_profile_offset = %llu\n",fb_profile_offset);
  	fprintf(fp, "fb_pu_hdr_offset = %llu\n",fb_pu_hdr_offset);
  	fprintf(fp, "fb_pu_hdr_ent_size = %u\n",fb_pu_hdr_ent_size);
  	fprintf(fp, "fb_pu_hdr_num = %u\n",fb_pu_hdr_num);
  	fprintf(fp, "fb_str_table_offset = %llu\n",fb_str_table_offset);
  	fprintf(fp, "fb_str_table_size = %llu\n",fb_str_table_size);
  	// fprintf(fp, "phase_num = %u\n",phase_num);
  };

}; 

struct Pu_Sample_Hdr {
  INT32 pu_checksum;
  INT32 pu_size;
  UINT64 runtime_func_address;
  UINT64 pu_name_index;
  /* Offset into profile section relative to fb_profile_offset*/
  UINT64 pu_profile_offset; 
  /* Offsets into different profile data follows */
  /* Currently only support frequency counts */
  UINT64 pu_freq_offset;
  UINT64 pu_num_freq_entries;
  
  Pu_Sample_Hdr() {
    pu_size=54321;
    runtime_func_address=0;
    pu_name_index=0;
    pu_profile_offset=0;
    pu_freq_offset=0;
    pu_num_freq_entries=0;
  }

  void Print( FILE * fp, int id=-1) const {
  	fprintf(fp, "\n**********   PU Header No %d   **************\n", id);
  	fprintf(fp, "pu_checksum = %d\n", pu_checksum);
  	fprintf(fp, "pu_size = %d\n", pu_size);
  	fprintf(fp, "runtime_func_address= %llu\n", runtime_func_address);
  	fprintf(fp, "pu_name_index = %llu\n", pu_name_index);
  	fprintf(fp, "pu_profile_offset = %llu\n", pu_profile_offset);
  	fprintf(fp, "pu_freq_offset = %llu\n", pu_freq_offset);
  	fprintf(fp, "pu_num_freq_entries = %llu\n", pu_num_freq_entries);
  };
};

struct Fb_Info_Freq {
  /* Store line number and it's associated count */
  UINT64 filename_offset;  // Offset into string table
  INT32 line_num;
  float freq;  // float used to be consistent with existing profile counts

  void Print (FILE *fp) const {
    fprintf( fp, "FB---> line = %d freq = %f\n", line_num, freq);
  }
};

#endif /* sample_profile_com_INCLUDED */
