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


/* -*-Mode: c++;-*- (Tell emacs to use c++ mode) */
#ifndef cxx_ipa_inline_INCLUDED
#define cxx_ipa_inline_INCLUDED

#ifndef mempool_INCLUDED
#include "mempool.h"			// MEM_POOL
#endif

#ifndef cxx_ipa_cg_INCLUDED
#include "ipa_cg.h"			// IPA_NODE
#endif

extern INT Total_Prog_Size;		// size of the final program

extern INT Total_Inlined;

extern INT Total_Not_Inlined;

/* Report the reason for not inlining a call: */
extern void
Report_Reason (const IPA_NODE *callee, const IPA_NODE *caller,
	       const char *reason , const IPA_EDGE *edge);
extern void
Report_Limit_Reason (const IPA_NODE *callee, const IPA_NODE *caller,
		     const IPA_EDGE *edge, const char *reason, float limit1, float limit2 = -1);

extern void
Perform_Inline_Analysis (IPA_CALL_GRAPH *cg, MEM_POOL* pool);
//INLINING_TUNING static->exportable^
extern void 
Get_Sorted_Callsite_List (IPA_NODE *n, IPA_CALL_GRAPH *cg, AUX_IPA_EDGE<INT32>& cost_vector, vector<IPA_EDGE_INDEX>& callsite_list); //pengzhao
extern float compute_hotness(IPA_EDGE *edge, IPA_NODE *callee, INT callee_size);
//INLINING_TUNING static->exportable$
#endif // cxx_ipa_inline_INCLUDED
