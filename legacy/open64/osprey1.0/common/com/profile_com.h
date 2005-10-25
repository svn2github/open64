/*

  Copyright (C) 2000 Silicon Graphics, Inc.  All Rights Reserved.

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
// Module: profile_com.h
// $Revision: 1.1.1.1 $
// $Date: 2005/10/21 19:00:00 $
// $Author: marcel $ 
// $Source: /proj/osprey/CVS/open64/osprey1.0/common/com/profile_com.h,v $
//
// Revision history:
//  24-Jul-98 - Original Version
//
// Description:
//
// ====================================================================
// ====================================================================

#ifndef profile_com_INCLUDED
#define profile_com_INCLUDED

#include <string.h>
#include <vector.h>
#include "defs.h"

#if defined(defs_INCLUDED) && ! defined(USE_STANDARD_TYPES)
#undef short                            // get around bogus type defs.
#undef int
#undef long
#endif // defined(defs_INCLUDED) && !defined(USE_STANDARD_TYPES)

#define ULONG mUINT32

// When to instrument?  Correlates to Instrumentation_Phase_Num
enum PROFILE_PHASE
{
  PROFILE_PHASE_NONE            = -1,
  PROFILE_PHASE_BEFORE_VHO	= 0,
  PROFILE_PHASE_IPA_CUTOFF	= 0,	// phases less than or equal to
					// IPA_CUTOFF will not be
					// instrumented when the input file 
					// is an ipa-generated file.
  PROFILE_PHASE_BEFORE_LNO	= 1,
  PROFILE_PHASE_BEFORE_WOPT	= 2,
  PROFILE_PHASE_BEFORE_CG	= 3,
  PROFILE_PHASE_BEFORE_REGION	= 4,
  PROFILE_PHASE_LAST		= 5,
  PROFILE_PHASE_MAX             = INT32_MAX  // Fb_Hdr size must be 0 mod 64
};

// What instrument? Correlates to Profile_Type
enum PROFILE_TYPE
{
  WHIRL_PROFILE     = 1,
  CG_EDGE_PROFILE   = 2,
  CG_VALUE_PROFILE  = 4,
  PROFILE_TYPE_LAST = 8,
  PROFILE_TYPE_MAX  = INT32_MAX
};

/* Feedback File Format */

#define FB_NIDENT       16

#define INSTR_MAG          "\177INS"

#define INSTR_CURRENT      1

struct Fb_Hdr {
  char fb_ident[FB_NIDENT];     /* ident bytes */
  ULONG fb_version;             /* file version */
  ULONG fb_profile_offset;	/* file offset for profile data */
  ULONG fb_pu_hdr_offset;       /* PU header file offset */
  ULONG fb_pu_hdr_ent_size;     /* PU header entry size */ 
  ULONG fb_pu_hdr_num;          /* Number of PU header entries */
  ULONG fb_str_table_offset;
  ULONG fb_str_table_size;
  PROFILE_PHASE phase_num;

  Fb_Hdr() {}
  Fb_Hdr(Fb_Hdr& x) 
  {
    memcpy((void *)fb_ident,(void *)x.fb_ident, FB_NIDENT);
    fb_version = x.fb_version;
    fb_profile_offset = x.fb_profile_offset;
    fb_pu_hdr_offset = x.fb_pu_hdr_offset;
    fb_pu_hdr_ent_size = x.fb_pu_hdr_ent_size;
    fb_pu_hdr_num = x.fb_pu_hdr_num;
    fb_str_table_offset = x.fb_str_table_offset;
    fb_str_table_size = x.fb_str_table_size;
    phase_num = x.phase_num;
  }

}; 

struct Pu_Hdr {
  INT32 pu_checksum;
  ULONG pu_name_index;
  ULONG pu_file_offset;
  ULONG pu_inv_offset;
  ULONG pu_num_inv_entries;
  ULONG pu_br_offset;
  ULONG pu_num_br_entries;
  ULONG pu_switch_offset;
  ULONG pu_switch_target_offset;	// # of targets for each swtich stmt
  ULONG pu_num_switch_entries;
  ULONG pu_cgoto_offset;
  ULONG pu_cgoto_target_offset;		// # of targets for each compgoto
  ULONG pu_num_cgoto_entries;
  ULONG pu_loop_offset;
  ULONG pu_num_loop_entries;
  ULONG pu_scircuit_offset;
  ULONG pu_num_scircuit_entries;
  ULONG pu_call_offset;
  ULONG pu_num_call_entries;
  ULONG pu_handle;
  ULONG pu_edge_offset;
  ULONG pu_num_edge_entries;
  ULONG pu_instr_count;
  ULONG pu_instr_exec_count;
  ULONG pu_value_offset;
  Pu_Hdr() {}
};
#endif /* profile_com_INCLUDED */
