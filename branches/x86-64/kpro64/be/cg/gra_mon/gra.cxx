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

//  Global register allocation driver
/////////////////////////////////////
//
//  Description:
//
//      Top level of global register allocation.  Try to limit to functions
//      exported outside of GRA, per Ken Lesniak.
//
/////////////////////////////////////


//  $Revision$
//  $Date$
//  $Author$
//  $Source$

#ifdef USE_PCH
#include "cg_pch.h"
#endif // USE_PCH
#pragma hdrstop

#ifdef _KEEP_RCS_ID
static char *rcs_id = "$Source$ $Revision$";
#endif

#include "defs.h"
#include "mempool.h"
#include "timing.h"
#include "tracing.h"
#include "cgir.h"
#include "cg.h"
#include "gtn_universe.h"
#include "dominate.h"
#include "cg_flags.h"
#include "gra_bb.h"
#include "gra.h"
#include "gra_region.h"
#include "gra_create.h"
#include "gra_color.h"
#include "gra_spill.h"
#include "gra_grant.h"
#include "gra_cflow.h"
#include "gra_trace.h"


static MEM_POOL  GRA_pool_struct;
MEM_POOL* const GRA_pool = &GRA_pool_struct;
		 // Pointer to a non-zeroed memory pool for general use in GRA. 
		 // Pushed in GRA_Create and Popped in GRA_Delete.
INT GRA_pu_num = 0;
float GRA_call_split_freq;
float GRA_spill_count_factor;

static BOOL gra_spill_around_save_tn_copies;


/////////////////////////////////////
void 
GRA_Initialize(void)
/////////////////////////////////////
//
//  see interface description
//
/////////////////////////////////////
{
  gra_spill_around_save_tn_copies = TRUE;
}

/////////////////////////////////////
BOOL
GRA_Spill_Around_Save_TN_Copies(void)
/////////////////////////////////////
//
//  see interface description
//
/////////////////////////////////////
{
  return gra_spill_around_save_tn_copies;
}

/////////////////////////////////////
static void
Initialize_Memory(void)
/////////////////////////////////////
//
//  Prepare the GRA_pool for memory allocation.
//
/////////////////////////////////////
{
  static BOOL did_init = FALSE;

  if ( ! did_init ) {
    MEM_POOL_Initialize(GRA_pool,"GRA pool",FALSE);
    did_init = TRUE;
  }
  MEM_POOL_Push(GRA_pool);
}

/////////////////////////////////////
static void
Finalize_Memory(void)
/////////////////////////////////////
//
//  Delete all the memory that we used for strictly private stuff.
//
/////////////////////////////////////
{
  if (GRA_loop_splitting) {
    Free_Dominators_Memory();
  }
  MEM_POOL_Pop(GRA_pool);
}


/////////////////////////////////////
REGISTER_SET
GRA_Local_Register_Grant( BB* bb, ISA_REGISTER_CLASS rc )
/////////////////////////////////////
//  See interface description.
/////////////////////////////////////
{
  return GRA_GRANT_Get_Local_Registers(bb,rc);
}

/////////////////////////////////////
void
GRA_Finalize_Grants(void)
/////////////////////////////////////
//  See interface description.
/////////////////////////////////////
{
  GRA_GRANT_Finalize();
}

/////////////////////////////////////
static void
Clear_Spill_BB_Flags(void)
/////////////////////////////////////
//  The BB_gra_spill flag has served its purpose. Clear it now
//  from any blocks that have it set to allow cflow to remove them
//  if they are still empty.
/////////////////////////////////////
{
  BB *bb;

  for (bb = REGION_First_BB; bb; bb = BB_next(bb)) {
    Reset_BB_gra_spill(bb);
  }
}

/////////////////////////////////////
static void
Initialize_Flags()
/////////////////////////////////////
//
//  Initialize flags used by GRA.
//
/////////////////////////////////////
{
  gra_spill_around_save_tn_copies = FALSE;
  GRA_call_split_freq = atof(GRA_call_split_freq_string);
  GRA_spill_count_factor = atof(GRA_spill_count_factor_string);
}

/////////////////////////////////////
void
GRA_Allocate_Global_Registers( BOOL is_region )
/////////////////////////////////////
//  See interface description.
/////////////////////////////////////
{

  Set_Error_Phase ("Global Register Allocation");
  Start_Timer (T_GRA_CU);

  Initialize_Flags();
  Initialize_Memory();
  lrange_sub_mgr.Initialize();
  lrange_mgr.Initialize();
  gbb_mgr.Initialize();
  gra_region_mgr.Initialize();
  GRA_Spill_Initialize();
  GRA_Trace_Initialize();

  GRA_Split_Entry_And_Exit_BBs(is_region);

  GRA_Create();
  GRA_Color();

  // Dump out OPs after GRA
  if (Get_Trace(TKIND_IR, TP_GRA, REGION_First_BB))
    Trace_IR(TP_GRA, "GRA0", NULL);

  GRA_Spill();      // Actually add the spills.
  GRA_Delete();

  GRA_GRANT_Unused_Caller_Saved();

  lrange_sub_mgr.Finalize();
  lrange_mgr.Finalize();
  gbb_mgr.Finalize();
  gra_region_mgr.Finalize();

  GRA_Join_Entry_And_Exit_BBs();

  Clear_Spill_BB_Flags();

  Finalize_Memory();

  // Dump out OPs after GRA
  if (Get_Trace(TKIND_IR, TP_GRA, REGION_First_BB))
    Trace_IR(TP_GRA, "GRA", NULL);

  GRA_pu_num++;

  Stop_Timer ( T_GRA_CU );
}
