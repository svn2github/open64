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

//
//  GRA_LRANGE implementation
/////////////////////////////////////
//
//  Thigs that weren't inlined
//
/////////////////////////////////////


//  $Revision: 1.1.1.1 $
//  $Date: 2005/10/21 19:00:00 $
//  $Author: marcel $
//  $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/gra_mon/gra_lrange.cxx,v $

#ifdef USE_PCH
#include "cg_pch.h"
#endif // USE_PCH
#pragma hdrstop

#ifdef _KEEP_RCS_ID
static char *rcs_id = "$Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/gra_mon/gra_lrange.cxx,v $ $Revision: 1.1.1.1 $";
#endif

#if defined(__GNUC__)
#include <math.h>	// FLT_MAX
#else
#include <limits.h>
#endif
#include "defs.h"
#include "errors.h"
#include "cgir.h"
#include "tn_map.h"
#include "gtn_universe.h"
#include "gtn_set.h"
#include "cg_spill.h"

#include "gra_bb.h"
#include "gra_trace.h"
#include "gra_lrange.h"
#include "gra_lunit.h"
#include "gra_region.h"
#include "gra_lrange_subuniverse.h"
#include "gra_grant.h"
#include "gra_interfere.h"

LRANGE_MGR lrange_mgr;

static INT32 complement_lrange_count, region_lrange_count, local_lrange_count,
	     duplicate_lrange_count;


/////////////////////////////////////
//  called at the start of each GRA invocation
void
LRANGE_MGR::Initialize(void)
{
  one_set_counter = 0;
  tn_map = TN_MAP_Create();
  complement_lrange_count = region_lrange_count = local_lrange_count = 0;
  duplicate_lrange_count = 0;
}

/////////////////////////////////////
//  called at the end of each GRA invocation
void
LRANGE_MGR::Finalize(void)
{
  TN_MAP_Delete(tn_map);
  GRA_Trace_LRANGE_Stats(complement_lrange_count,region_lrange_count,
                         local_lrange_count,duplicate_lrange_count);
}

/////////////////////////////////////
//  Common LRANGE creation stuff.  <type> is the type of LRANGE to create
//  and <rc> is its register class.  Common field are initialized as
//  appropriate.  <size> is how big to make it, which is more easily
//  determined in the clients.
//  Description
LRANGE*
LRANGE_MGR::Create( LRANGE_TYPE type, ISA_REGISTER_CLASS rc, size_t size )
{
  LRANGE* result = (LRANGE*) MEM_POOL_Alloc(GRA_pool,size);
  result->reg = 0;
  result->rc = rc;
  result->type = type;
  result->flags = (LR_FLAG) 0;
  result->mark = 0;
  result->pref = NULL;
  result->pref_priority = 0.0;

  return result;
}

/////////////////////////////////////
// Create and return a new complement LRANGE, corresponding
// to the given <tn>.  Uses the GRA_pool.  The newly created
// LRANGE is entered into the LRANGE_SUBUNIVERSE for the
// complement region (useful only for the representation of
// inteference, which is not exported from gra_lrange.c anyway.)
LRANGE*
LRANGE_MGR::Create_Complement( TN* tn )
{
  LRANGE* result = Create(LRANGE_TYPE_COMPLEMENT,
                                 TN_register_class(tn), sizeof(LRANGE));

  DevAssert(TN_Is_Allocatable(tn),
            ("Invalid TN for register allocation"));

  ++complement_lrange_count;

  result->u.c.tn = tn;
  result->u.c.original_tn = tn;     // Replaced if call from _Create_Duplicate
  result->u.c.first_lunit = NULL;
  // Why +2?  I think because 0 is reserved.
  result->u.c.live_bb_set = BB_SET_Create_Empty(PU_BB_Count+2,GRA_pool);
  result->u.c.global_pref_set = NULL;
  gra_region_mgr.Complement_Region()->Add_LRANGE(result);
  TN_MAP_Set(tn_map,tn,result);
  if (TN_is_save_reg(tn))
    result->Tn_Is_Save_Reg_Set();
  if (TN_is_gra_cannot_split(tn))
    result->Cannot_Split_Set();
  return result;
}

/////////////////////////////////////
// Create and return a new region LRANGE for the given <tn>.
// Enter it in <region>'s LRANGE_SUBUNIVERSE.
LRANGE*
LRANGE_MGR::Create_Region( TN* tn, GRA_REGION* region )
{
  LRANGE* result = Create(LRANGE_TYPE_REGION,
                                 TN_register_class(tn), sizeof(LRANGE));
  ++region_lrange_count;
  result->u.r.tn = tn;
  result->u.r.region = region;
  result->u.r.complement_bbs = NULL;
  result->orig_reg = TN_register(tn);
  region->Add_LRANGE(result);
  TN_MAP_Set(tn_map,tn,result);
  return result;
}

/////////////////////////////////////
// Create and return a new local LRANGE for the given <bb> and <cl>
LRANGE*
LRANGE_MGR::Create_Local( GRA_BB* gbb, ISA_REGISTER_CLASS cl )
{
  LRANGE* result = Create(LRANGE_TYPE_LOCAL, cl, sizeof(LRANGE) -
                                   sizeof(result->u.c) + sizeof(result->u.l));
  ++local_lrange_count;
  result->u.l.gbb = gbb;
  result->priority = gbb->Freq() * 2.0F;
  gra_region_mgr.Complement_Region()->Add_LRANGE(result);
  return result;
}

/////////////////////////////////////
// Create a new duplicate of the given <lrange> with a brand new
// GTN.  The intererence information, LUNITs, live_set, etc. are not copied.
LRANGE*
LRANGE_MGR::Create_Duplicate( LRANGE* lrange )
{
  TN* tn;
  LRANGE* result;

  DevAssert(lrange->type == LRANGE_TYPE_COMPLEMENT,
            ("Duplicating a non-COMPLEMENT LRANGE"));

  ++duplicate_lrange_count;
  tn = Dup_TN_Even_If_Dedicated(lrange->Tn());

  Set_TN_spill(tn, TN_spill(lrange->Original_TN()));

  GTN_UNIVERSE_Add_TN(tn);
  result = Create_Complement(tn);
  result->u.c.original_tn = lrange->u.c.original_tn;
  result->flags = (LR_FLAG)(result->flags | (lrange->flags & LRANGE_FLAGS_avoid_ra));
  return result;
}

/////////////////////////////////////
// Return the count of registers that can hold <lrange>.  This
// count is sensitive to whether <lrange> spans a call.  It could
// also be made more accurate for splitting purposes by keeping
// forbidden sets...
INT32 
LRANGE::Candidate_Reg_Count(void) {
  GRA_REGION *region;
  if ( Type() == LRANGE_TYPE_REGION )
    region = Region();
  else region = gra_region_mgr.Complement_Region();
  if ( Spans_A_Call() ) 
    return region->Callee_Saves_Registers_Available_Count(rc);
  else return REGISTER_SET_Size(region->Registers_Available(rc));
}	

/////////////////////////////////////
void 
LRANGE::Add_Live_BB(GRA_BB *gbb) { 
  if (Type() == LRANGE_TYPE_COMPLEMENT)
    u.c.live_bb_set = BB_SET_Union1D(u.c.live_bb_set, gbb->Bb(), GRA_pool);
}

/////////////////////////////////////
void 
LRANGE::Remove_Live_BB(GRA_BB *gbb) { 
  if (Type() == LRANGE_TYPE_COMPLEMENT)
    u.c.live_bb_set = BB_SET_Difference1D(u.c.live_bb_set, gbb->Bb());
}

/////////////////////////////////////
BOOL 
LRANGE::Contains_BB(GRA_BB *gbb) { 
  FmtAssert(Type() == LRANGE_TYPE_COMPLEMENT,
	    ("LRANGE_Contains_BB: LRANGE not a complement LRANGE"));
  return BB_SET_MemberP(u.c.live_bb_set, gbb->Bb());   
}

/////////////////////////////////////
void 
LRANGE::Add_Global_Pref(TN *tn) {
  if (u.c.global_pref_set == NULL) {
    u.c.global_pref_set = GTN_SET_Create_Empty(GTN_UNIVERSE_size,
					       GRA_pool);
  }
  u.c.global_pref_set = GTN_SET_Union1D(u.c.global_pref_set, tn, GRA_pool);
}

/////////////////////////////////////
void 
LRANGE::Remove_Global_Pref(TN *tn) {
  u.c.global_pref_set = GTN_SET_Difference1D(u.c.global_pref_set, tn);
}

/////////////////////////////////////
BOOL 
LRANGE::Check_Global_Pref(TN *tn) {
  return Global_Pref_Set() != NULL && GTN_SET_MemberP(Global_Pref_Set(), tn);
}

/////////////////////////////////////
// Add <lunit> to <lrange>'s LUNIT_List, resetting <lunit>'s
// _lrange field.
void 
LRANGE::Add_LUNIT( LUNIT* lunit ) {
  u.c.first_lunit = u.c.first_lunit->Lrange_List_Push(lunit);
  lunit->Lrange_Set(this);
}

/////////////////////////////////////
// Prepare to present the inteference graph neighbors of
// <lrange>, a complement LRANGE.  It becomes "the current
// LRANGE".
void 
LRANGE_MGR::Begin_Complement_Interference(LRANGE *lrange) {
  Is_True(lrange->Type() == LRANGE_TYPE_COMPLEMENT, 
	  ("Not a complement LRANGE"));
  interference_creation_lrange = lrange;
  intf_mgr.Create_Begin(gra_region_mgr.Complement_Region()->Subuniverse(
					(ISA_REGISTER_CLASS)lrange->Rc()));
}

/////////////////////////////////////
// Present the next inteference graph <neighbor> of "the
// current LRANGE".  It is not necessary, but harmless to
// call this function for local LRANGEs.  Note that only one
// direction of the inteference arc is entered, that from the
// current LRANGE to <neighbor>
void 
LRANGE_MGR::Complement_Interference( LRANGE* neighbor ) {
  Is_True(neighbor->Type() == LRANGE_TYPE_COMPLEMENT,
	  ("Not a complement LRANGE"));
  if ( neighbor != interference_creation_lrange )
    intf_mgr.Create_Add_Neighbor(neighbor);
}

/////////////////////////////////////
// Complete the creation of the interference graph neighbors
// of "the current LRANGE".
void 
LRANGE_MGR::End_Complement_Interference( void ) {
  interference_creation_lrange->u.c.neighbors = intf_mgr.Create_End();
}

/////////////////////////////////////
// Initialize a REGION type <lrange> associated with the
// given <region> for creating of interference graph
// neighbors.  Unlike complement LRANGEs, there is no concept
// of a current LRANGE for inteference creation and
// inteferences may be created in any order.
void 
LRANGE::Initialize_Region_Inteference(GRA_REGION* region) {
  u.c.neighbors = intf_mgr.Create_Empty(region->Subuniverse(Rc()));
}

/////////////////////////////////////
// Create an interference arc from <lrange0> to <lrange1> and
// from <lrange1> to <lrange0>.  Both LRANGEs must be in the
// given <region>.
void
LRANGE::Region_Interference( LRANGE*     lrange1, GRA_REGION* region )
{
  LRANGE_SUBUNIVERSE* su = region->Subuniverse(lrange1->Rc());

  if ( this != lrange1 ) {
    u.c.neighbors = u.c.neighbors->Add_Neighbor(lrange1, su);
    lrange1->u.c.neighbors =
      lrange1->u.c.neighbors->Add_Neighbor(this, su);
  }
}

/////////////////////////////////////
// Search for a LUNIT associated with <lrange> and <gbb>.  Return
// TRUE to indicate success, the the found LUNIT returned by
// reference in <lunitp>.
BOOL
LRANGE::Find_LUNIT_For_GBB( const GRA_BB* gbb, LUNIT** lunitp )
{
  LRANGE_LUNIT_ITER iter;

  if ( Type() != LRANGE_TYPE_COMPLEMENT )
    return FALSE;

  for (iter.Init(this); ! iter.Done(); iter.Step())
  {
    LUNIT* lunit = iter.Current();

    if ( lunit->Gbb() == gbb ) {
      *lunitp = lunit;
      return TRUE;
    }
  }

  return FALSE;
}

/////////////////////////////////////
// Delete <neighbor> from <lrange>'s interference graph
// neighbors.  Both LRANGEs must be in <region>.  It is an
// error if <neighbor> is not actually found among the
// neighbors of <lrange>.  Both <lrange> and <neighbor>
// should be complement or region LRANGEs or the function
// will have no effect.  (Local LRANGEs represent their
// neighbors represent their neighbors implicitly based on
// their associated BB.  Compliment LRANGEs represent their
// interference relation with local LRANGEs implicitly via
// their _live_bb_set.
//
// Our splitting algorithm doesn't ever need to be able to
// add neighbors.  This is beasue it will always color one of
// the two halves of the split right away and thus not need
// to keep valid interference arcs either from or to it.  We
// may need to delete after splitting because the remaining
// (deferred) half of the split won't in general interfere
// with all the same nodes as it did before a part was split
// off and colored.
void
LRANGE::Remove_Neighbor( LRANGE*     neighbor, GRA_REGION* region )
{
  //  Local interference is implicit in the BBs in the lrange and thus don't
  //  have to be maintained.
  if ( Type() != LRANGE_TYPE_LOCAL && neighbor->Type() != LRANGE_TYPE_LOCAL) {
    u.c.neighbors = u.c.neighbors->Remove_Neighbor(neighbor,
						   region->Subuniverse(Rc()));
  }
}

/////////////////////////////////////
// Use the live_gbb information to determone if <lrange0> and
// <lrange1> interference graph neighbors?  Since this is really
// coarse interference it is meaningless for REGION LRANGEs and
// will assert if either argument is one.
BOOL
LRANGE::Interferes( LRANGE* lr1 )
{
  DevAssert(Type() != LRANGE_TYPE_REGION && lr1->Type() != LRANGE_TYPE_REGION,
             ("LRANGE_Interferes not valid for REGION LRANGEs."));

  if ( Type() == LRANGE_TYPE_COMPLEMENT ) {
    if ( lr1->Type() == LRANGE_TYPE_COMPLEMENT ) {
      return BB_SET_IntersectsP(u.c.live_bb_set, lr1->u.c.live_bb_set);
    }
    else {
      return BB_SET_MemberP(u.c.live_bb_set, lr1->u.l.gbb->Bb());
    }
  }
  else if ( lr1->Type() == LRANGE_TYPE_COMPLEMENT ) {
    return BB_SET_MemberP(lr1->u.c.live_bb_set, u.l.gbb->Bb());
  }
  else
    return u.l.gbb->Bb() == lr1->u.l.gbb->Bb();
}

/////////////////////////////////////
void
LRANGE::Calculate_Priority(void)
/////////////////////////////////////
//
//  Notice how our definition of priority differs from the classic Chow
//  definition.  Fred wants to penalize sparsely used live ranges compared
//  to ones with the same number of references in fewer blocks.  We just
//  use the frequency weighted count of memory operations that will have
//  to be added if the LRANGE is spilled.
//
//  Why the difference?  At least in part it is because we handle
//  splitting differently.  Fred splits continuously.  After each LRANGE
//  is allocated to a register, he checks all its neighbors and splits any
//  that become uncolorable.  We skip this step and only split when a
//  coloring attempt fails.  Thus we coloring priorities to reflect the
//  priority of the hightest priority split we could posssibly pick out of
//  the LRANGE.  But we'll see...
//
/////////////////////////////////////
{
  if ( Must_Allocate() )
    priority = FLT_MAX;
  else if ( Type() == LRANGE_TYPE_LOCAL )
    priority = u.l.gbb->Freq() * 2.0F;
  else if ( Type() == LRANGE_TYPE_REGION )
    priority = 0.0;
  else {
    LRANGE_LUNIT_ITER iter;
    float value = 0;
    float sc, rc;

    CGSPILL_Cost_Estimate(Tn(),NULL,&sc,&rc,CGSPILL_GRA);

    for (iter.Init(this); ! iter.Done(); iter.Step())
    {
      LUNIT* lunit = iter.Current();
      float  freq = lunit->Gbb()->Freq();

      // What's the cost of spilling?  If we have a def/use here, the cost is
      // that we will have to spill/restore.  If we have a restores/spills
      // caused by splitting, on the other hand, we won't have to perform
      // them, so that's a benefit.

      if ( lunit->Has_Exposed_Use() && ! lunit->Restore_Above() ) {
        value += (freq * rc);
	GRA_Trace_Split_Add_Priority(lunit->Gbb(), FALSE);
      } else if (!lunit->Has_Exposed_Use() && lunit->Restore_Above() ){
        value -= (freq * rc);
	GRA_Trace_Split_Sub_Priority(lunit->Gbb(), FALSE);	
      }
      if ( lunit->Has_Def() && lunit->Live_Out() &&
	   !lunit->Spill_Below()) {
        value += (freq * sc);
	GRA_Trace_Split_Add_Priority(lunit->Gbb(), TRUE);
      } else if ( ! lunit->Has_Def() && lunit->Spill_Below() ) {
        value -= (freq * sc);
	GRA_Trace_Split_Sub_Priority(lunit->Gbb(), TRUE);
      }
    }
    priority = value;
  }
}

/////////////////////////////////////
static REGISTER_SET
Global_Preferenced_Regs(LRANGE* lrange, GRA_BB* gbb)
/////////////////////////////////////
//
//  return the set of registers for tn's preferenced to this live 
//  range that are live in this block
//
/////////////////////////////////////
{
  REGISTER_SET global_prefs = REGISTER_SET_EMPTY_SET;
  if (lrange->Global_Pref_Set()) {
    for (TN *tn = GTN_SET_Choose(lrange->Global_Pref_Set());
	 tn != GTN_SET_CHOOSE_FAILURE;
	 tn = GTN_SET_Choose_Next(lrange->Global_Pref_Set(), tn)) {
      LRANGE *plrange = lrange_mgr.Get(tn);
      if (plrange->Contains_BB(gbb) && plrange->Allocated()) {
	global_prefs = REGISTER_SET_Union1(global_prefs, plrange->Reg());
      }
    }
  }
  return global_prefs;
}

/////////////////////////////////////
// Return the set of registers still allowed for <lrange>.
// This means finding the set of registers such that there is
// no conflict with any already allocated neighbor of
// <lrange>.  <lrange> must belong to <region>.
REGISTER_SET
LRANGE::Allowed_Registers( GRA_REGION* region )
{
  LRANGE_LIVE_GBB_ITER gbb_iter;
  LRANGE_LUNIT_ITER    lunit_iter;
  INTERFERE_ITER       int_iter;
  ISA_REGISTER_CLASS   rc      = Rc();
  REGISTER_SET         allowed = REGISTER_CLASS_allocatable(rc);

#ifdef HAS_STACKED_REGISTERS
  if (REGISTER_Has_Stacked_Registers(rc)) {
    allowed = REGISTER_SET_Difference(allowed, REGISTER_CLASS_stacked(rc));
    //
    // Add in the appropriate used stacked registers if available.  Don't
    // allow non-call-spanning live ranges a chance at the callee saved
    // yet.  The register choosing code will try to allocate a new caller
    // saved before using up a callee saved.
    //
    if (Has_Wired_Register() &&
        REGISTER_Is_Stacked(rc, Reg())) {
      allowed = REGISTER_SET_Union1(allowed, Reg());
    } else if ( Spans_A_Setjmp() ) {
    } else if ( Spans_A_Call() ) {
      REGISTER_SET stacked =
        REGISTER_Get_Stacked_Avail_Set(ABI_PROPERTY_callee, rc);
      allowed = REGISTER_SET_Union(allowed, stacked);
    } else {
      REGISTER_SET stacked =
        REGISTER_Get_Stacked_Avail_Set(ABI_PROPERTY_stacked, rc);
      allowed = REGISTER_SET_Union(allowed, stacked);
    }
  }
#endif

  // if the live range spans an instruction that clobbers rotating registers,
  // disallow rotating registers
  if (Spans_Rot_Reg_Clob()) 
    allowed = REGISTER_SET_Difference(allowed,
				      REGISTER_CLASS_rotating(rc));

  // if the live range spans a setjmp, disallow callee-saved registers
  if (Spans_A_Setjmp() && ! TN_is_save_reg(Tn()))
    allowed = REGISTER_SET_Difference(allowed,
				      REGISTER_CLASS_callee_saves(rc));

  if (   Type() != LRANGE_TYPE_LOCAL && TN_is_save_reg(Tn())
  ) {
    REGISTER sv_reg = TN_save_reg(Tn());
    REGISTER_SET singleton = REGISTER_SET_Union1(REGISTER_SET_EMPTY_SET,sv_reg);
    allowed = REGISTER_SET_Intersection(allowed,singleton);
  }

  switch (Type()) {

  case LRANGE_TYPE_LOCAL:
    return
      REGISTER_SET_Difference(allowed, Gbb()->Registers_Used(rc));

  case LRANGE_TYPE_COMPLEMENT:
    gbb_mgr.Clear_One_Set();

    //
    // First visit it's LUNITs.  These may contain allowed_preferences, which
    // are registers that we are permitted to use even if they are already
    // used in their blocks.  The reason for this is that the user is
    // guaranteed to be a local LRANGE with a wired register which is
    // preferenced to <lrange>.  allow registers used by globally preferenced
    // tn's in the block.  we've already guaranteed that there is no conflict
    // between them (though this won't guarantee that the register will be
    // usable as it may be used by another tn outside the preferenced tn's
    // live range but within this tn's live range).
    //
    for (lunit_iter.Init(this); ! lunit_iter.Done(); lunit_iter.Step()) {
      LUNIT* lunit = lunit_iter.Current();
      GRA_BB* gbb = lunit->Gbb();
      REGISTER_SET used = gbb->Registers_Used(rc);
      REGISTER_SET allowd_prefs = lunit->Allowed_Preferences();
      
      allowd_prefs = REGISTER_SET_Union(allowd_prefs,
					Global_Preferenced_Regs(this, gbb));
      gbb_mgr.One_Set_Union1(gbb);
      allowed =
        REGISTER_SET_Difference(allowed,
                                REGISTER_SET_Difference(used,allowd_prefs));
    }

    for (gbb_iter.Init(this); ! gbb_iter.Done(); gbb_iter.Step()) {
      GRA_BB* gbb = gbb_iter.Current();

      if ( ! gbb_mgr.One_Set_MemberP(gbb) ) {
	REGISTER_SET prefs = Global_Preferenced_Regs(this, gbb);
	REGISTER_SET used = gbb->Registers_Used(rc);
        allowed = REGISTER_SET_Difference(allowed,
					  REGISTER_SET_Difference(used,
								  prefs));
      }
    }
    if ( Avoid_RA() )
      allowed = REGISTER_SET_Difference1(allowed,TN_register(RA_TN));

    if ( Spans_A_Call() ) {
      return REGISTER_SET_Difference(allowed,
				     REGISTER_CLASS_caller_saves(rc));
    } else {
      return allowed;
    }
  case LRANGE_TYPE_REGION:
    //  This will be a little faster than using the generic itertaion method
    //  and this is probably an important case since we will have to calculate
    //  the allowed registers at least once per LR and each calculation has to
    //  visit all the neighbors.
    //
    for (int_iter.Init(u.r.neighbors, region->Subuniverse(Rc()));
         ! int_iter.Done();
         int_iter.Step() ) {
      LRANGE* nlr = int_iter.Current();

      if ( nlr->Allocated() )
        allowed = REGISTER_SET_Difference1(allowed, nlr->Reg());
    }
    if ( Spans_A_Call() ) {
      return REGISTER_SET_Difference(allowed,
				     REGISTER_CLASS_caller_saves(rc));
    } else {
      return allowed;
    }

  default:
    FmtAssert(FALSE,("Unknown type of LRANGE %d",Type()));
    return REGISTER_SET_EMPTY_SET;
  }
}

/////////////////////////////////////
// We've picked <reg> as the register for <lrange>.  Update
// <lrange> and other data structures as appropriate
// (particularly GRA_BBs and GRA_REGIONS.)
void
LRANGE::Allocate_Register( REGISTER r )
{
  LRANGE_LIVE_GBB_ITER live_gbb_iter;
  LRANGE_GLUE_REF_GBB_ITER glue_gbb_iter;

  DevAssert(! Allocated(),("Reallocating a LRANGE register"));
  reg = r;
  flags = (LR_FLAG)(flags | LRANGE_FLAGS_allocated);

  if ( Pref() != NULL )
    Pref()->Allocate_LRANGE(this);

  switch ( Type() ) {
  case LRANGE_TYPE_LOCAL:
    GRA_GRANT_Local_Register(Gbb(),Rc(),r);
    Gbb()->Make_Register_Used((ISA_REGISTER_CLASS) Rc(),r);
    break;
  case LRANGE_TYPE_REGION:
    TN_Allocate_Register(Tn(),r);
    Region()->Make_Register_Used(Rc(), r);
    for (glue_gbb_iter.Init(this); ! glue_gbb_iter.Done(); glue_gbb_iter.Step())
    {
      GRA_BB* gbb = glue_gbb_iter.Current();
      gbb->Make_Glue_Register_Used(Rc(),r);
    }
    break;
  case LRANGE_TYPE_COMPLEMENT:
    TN_Allocate_Register(Tn(),r);
    for (live_gbb_iter.Init(this); ! live_gbb_iter.Done(); live_gbb_iter.Step())
    {
      GRA_BB* gbb = live_gbb_iter.Current();
      gbb->Make_Register_Used(Rc(), r);
    }
  }

  GRA_Trace_LRANGE_Allocate(this);
}

/////////////////////////////////////
// Return the total number of interference graph neighbors.
INT32
LRANGE::Neighbor_Count(void)
{
  LRANGE_LIVE_GBB_ITER gbb_iter;
  INT32 result;
  ISA_REGISTER_CLASS rc = Rc();

  switch ( Type() ) {
  case LRANGE_TYPE_REGION:
    return u.c.neighbors->Count();
  case LRANGE_TYPE_LOCAL:
    return Gbb()->Local_Lrange_Count(rc) + Gbb()->Global_Live_Lrange_Count(rc)
           - 1;
  case LRANGE_TYPE_COMPLEMENT:
    result = 0;
    for (gbb_iter.Init(this); ! gbb_iter.Done(); gbb_iter.Step()) {
      GRA_BB* gbb = gbb_iter.Current();
      if ( gbb->Region_Is_Complement() )
	result += gbb->Local_Lrange_Count(rc);
      else {
        // FIXIT: horrible hack that penalizes LRANGES that psss through
        // SWP loops.  We need something better here.
        result -= 300;
      }
    }

    return result + u.c.neighbors->Count();
  default:
    FmtAssert(FALSE,("_Neighbor_Count of unknown type of LRANGE"));
    return UNDEFINED;
  }
}

/////////////////////////////////////
// put here because in the header file, gbb_mgr has not yet been defined
GRA_BB *
LRANGE_LIVE_GBB_ITER::Current(void)
{
  return gbb_mgr.Get(current);
}

//  Iterating over complement LRANGEs' inteference graph neighbors
//////////////////////////////////////////////////////////////////////////
//
//  THis is pretty hairy because we have to a fairly complex representation.
//  The global neighbors are all safely tucked away in the _neighbors INTEFERE
//  data structure associated with each complement LRANGE.  But we also need
//  to visit each same register-class local in each block in its LRANGE.  In
//  order to do this, we'll have to walk the BBs and walk the lranges in each
//  BB.
//
//  Notice the trick of representing the states (iterating over
//  globals/locals) with the _step function.  This prevents having to check
//  whether the globals are done each time we step the locals.
//
//////////////////////////////////////////////////////////////////////////

/////////////////////////////////////
static void
LRANGE_NEIGHBOR_ITER_Complement_Local_Init( LRANGE_NEIGHBOR_ITER* iter )
/////////////////////////////////////
//
//  Find the next gbb (inclusive to the current) with interfering local
//  LRANGEs.  Set up to loop over the locals in the found gbb.
//
/////////////////////////////////////
{
  LRANGE_LIVE_GBB_ITER*     gbb_iter   = &(iter->live_gbb_iter);
  GRA_BB_LOCAL_LRANGE_ITER* local_iter = &(iter->bb_local_iter);

  for ( ; ! gbb_iter->Done(); gbb_iter->Step()) {
    GRA_BB* gbb = gbb_iter->Current();

    if ( gbb->Region() == gra_region_mgr.Complement_Region() ) {
      local_iter->Init(gbb,iter->rc);
      if ( ! local_iter->Done() ) {
        iter->done = FALSE;
        iter->current = local_iter->Current();
        return;
      }
    }
  }

  //  Couldn't find a bb in the range with local neighbors.
  iter->done = TRUE;
}

/////////////////////////////////////
static void
LRANGE_NEIGHBOR_ITER_Complement_Local_Step( LRANGE_NEIGHBOR_ITER* iter )
/////////////////////////////////////
//
//  Step to the next interfering local LRANGE, advancing to a new block if
//  required.
//
/////////////////////////////////////
{
  GRA_BB_LOCAL_LRANGE_ITER* local_iter = &(iter->bb_local_iter);

  local_iter->Step();

  if ( ! local_iter->Done()) {
    //  At least one more in this block.
    iter->current = local_iter->Current();
  }
  else {
    //  Advance to the next block containing at least one conflicting local
    //  live range:
    iter->live_gbb_iter.Step();
    LRANGE_NEIGHBOR_ITER_Complement_Local_Init(iter);
  }
}

/////////////////////////////////////
static void
LRANGE_NEIGHBOR_ITER_Complement_Global_Step( LRANGE_NEIGHBOR_ITER* iter )
/////////////////////////////////////
//
//  Step to the next intefering non-local LRANGE.  If there are no more, start
//  stepping locals.
//
/////////////////////////////////////
{
  INTERFERE_ITER* neighbor_iter = &(iter->neighbor_iter);

  neighbor_iter->Step();

  if ( ! neighbor_iter->Done() )
    iter->current = neighbor_iter->Current();
  else {
    //  No more global neighbors.  Set up to loop over the local neighbors.
    iter->step = LRANGE_NEIGHBOR_ITER_Complement_Local_Step;
    LRANGE_NEIGHBOR_ITER_Complement_Local_Init(iter);
  }
}

/////////////////////////////////////
static void
LRANGE_NEIGHBOR_ITER_Complement_Init( LRANGE_NEIGHBOR_ITER* iter,
                                      LRANGE*               lrange,
                                      GRA_REGION*           region )
/////////////////////////////////////
//
//  Prepare to iterate over any global neighbors and then over all the locals
//  in all the blocks in the live range.
//
/////////////////////////////////////
{
  LRANGE_LIVE_GBB_ITER* gbb_iter = &(iter->live_gbb_iter);
  INTERFERE             c_neighbors = lrange->Neighbors();
  LRANGE_SUBUNIVERSE* su = region->Subuniverse(lrange->Rc());

  iter->rc = lrange->Rc();

  gbb_iter->Init(lrange);

  if ( c_neighbors->Count() > 0 ) {
    //  We have global neighbors to work on  Set up to step over the
    //  INTEFERE:
    iter->done = FALSE;
    iter->neighbor_iter.Init(c_neighbors,su);
    iter->current = iter->neighbor_iter.Current();
    iter->step = LRANGE_NEIGHBOR_ITER_Complement_Global_Step;
  }
  else {
    //  No global neighbors.  Set up to loop over the local neighbors.
    iter->step = LRANGE_NEIGHBOR_ITER_Complement_Local_Step;
    //  This finds the first local neighbor starting
    //  with the current gbb from _live_gbb_iter:
    LRANGE_NEIGHBOR_ITER_Complement_Local_Init(iter);
  }
}


//  Iterating over REGION LRANGEs' inteference graph neighbors
//////////////////////////////////////////////////////////////////////////

/////////////////////////////////////
static void
LRANGE_NEIGHBOR_ITER_Region_Step( LRANGE_NEIGHBOR_ITER* iter )
/////////////////////////////////////
//  See interface description.
/////////////////////////////////////
{
  iter->neighbor_iter.Step();
  iter->done = iter->neighbor_iter.Done();
  if ( ! iter->done )
    iter->current = iter->neighbor_iter.Current();
}

/////////////////////////////////////
static void
LRANGE_NEIGHBOR_ITER_Region_Init( LRANGE_NEIGHBOR_ITER* iter,
                                  LRANGE*               lrange,
                                  GRA_REGION*           region )
/////////////////////////////////////
//  See interface description.
/////////////////////////////////////
{
  LRANGE_SUBUNIVERSE* su = region->Subuniverse(lrange->Rc());

  iter->step = LRANGE_NEIGHBOR_ITER_Region_Step;
  iter->neighbor_iter.Init(lrange->Neighbors(), su);

  iter->done = iter->neighbor_iter.Done();
  if ( ! iter->done )
    iter->current = iter->neighbor_iter.Current();
}


//  Iterating over LOCAL LRANGEs' inteference graph neighbors
//////////////////////////////////////////////////////////////////////////
//
//  Problems similar to but different from iterating over the neighbors of the
//  complement LRANGEs.  But now we have to visit the locals (skipping
//  the given <lrange> and the neighbors of the GBB itself.
//
//////////////////////////////////////////////////////////////////////////


/////////////////////////////////////
static void
LRANGE_NEIGHBOR_ITER_Local_Global_Step( LRANGE_NEIGHBOR_ITER* iter )
/////////////////////////////////////
//
//  Step through the globals for the block of the local on which <iter> was
//  initialized.  We've already stepped the locals if any, so when we are done
//  here, we are really done.
//
/////////////////////////////////////
{
  INTERFERE_ITER* global_iter = &(iter->bb_live_global_iter);

  global_iter->Step();
  iter->done = global_iter->Done();
  if ( ! iter->done )
    iter->current = global_iter->Current();
}

/////////////////////////////////////
inline void
LRANGE_NEIGHBOR_ITER_Local_Global_Init( LRANGE_NEIGHBOR_ITER* iter,
                                        GRA_BB*               gbb,
                                        ISA_REGISTER_CLASS    rc )
/////////////////////////////////////
//
//  Prepare <iter> to step the locals in the given <gbb> and <rc>.
//
/////////////////////////////////////
{
  INTERFERE_ITER* bb_iter = &(iter->bb_live_global_iter);

  bb_iter->Init(gbb->Global_Lranges(rc), gbb->Region()->Subuniverse(rc));
  iter->step = LRANGE_NEIGHBOR_ITER_Local_Global_Step;
  iter->done = bb_iter->Done();
  iter->current = bb_iter->Current();
}

/////////////////////////////////////
inline void
Local_Skip_Self( LRANGE* self, LRANGE_NEIGHBOR_ITER* iter )
/////////////////////////////////////
//
//  If the local iterator if <iter> is pointing at <self> advance it.  Leave
//  _done valid, but no need to set _Current
//
/////////////////////////////////////
{
  GRA_BB_LOCAL_LRANGE_ITER* local_iter = &(iter->bb_local_iter);

  if (! local_iter->Done() && local_iter->Current() == self) {
    local_iter->Step();
  }

  iter->done = local_iter->Done();
}


/////////////////////////////////////
static void
LRANGE_NEIGHBOR_ITER_Local_Local_Step( LRANGE_NEIGHBOR_ITER* iter )
/////////////////////////////////////
//
//  Step through the locals for the block of the local on which <iter> was
//  initialized.  When we are done with locals, start stepping the globals
//  that are live in the block and that want the register class.
//
/////////////////////////////////////
{
  GRA_BB_LOCAL_LRANGE_ITER* local_iter = &(iter->bb_local_iter);

  local_iter->Step();
  Local_Skip_Self(iter->u.l.lrange,iter);

  if ( iter->done ) {
    LRANGE_NEIGHBOR_ITER_Local_Global_Init(iter,iter->u.l.lrange->Gbb(),
                                                iter->rc);
  }
  else
    iter->current = local_iter->Current();
}

/////////////////////////////////////
/*ARGSUSED2*/
static void
LRANGE_NEIGHBOR_ITER_Local_Init( LRANGE_NEIGHBOR_ITER*  iter,
                                 LRANGE*                lrange,
                                 GRA_REGION*            region )
/////////////////////////////////////
//
//  Prepare to step over the interference graph neighbors of a local lrange.
//
/////////////////////////////////////
{
  GRA_BB_LOCAL_LRANGE_ITER* local_iter = &(iter->bb_local_iter);
  GRA_BB* gbb = lrange->Gbb();

  iter->rc = lrange->Rc();
  iter->u.l.lrange = lrange;

  local_iter->Init(gbb,iter->rc);
  Local_Skip_Self(lrange,iter);

  if ( local_iter->Done() ) {
    //  No ohter locals 's of the correct register class for this <gbb>.
    //  Perpare to step the globals are live in the block and want the
    //  register class.
    LRANGE_NEIGHBOR_ITER_Local_Global_Init(iter,gbb,iter->rc);
  }
  else {
    iter->step = LRANGE_NEIGHBOR_ITER_Local_Local_Step;
    iter->done = FALSE;
    iter->current = local_iter->Current();
  }
}


/////////////////////////////////////
// Initlalize <iter> to loop over the interference graph
// neighbors of <lrange> which is a LRANGE in the given
// <region>.
void
LRANGE_NEIGHBOR_ITER::Init( LRANGE*      lrange, GRA_REGION*  region )
{
  switch ( lrange->Type() ) {
  case LRANGE_TYPE_COMPLEMENT:
    LRANGE_NEIGHBOR_ITER_Complement_Init(this,lrange,region);
    return;
  case LRANGE_TYPE_REGION:
    LRANGE_NEIGHBOR_ITER_Region_Init(this,lrange,region);
    return;
  case LRANGE_TYPE_LOCAL:
    LRANGE_NEIGHBOR_ITER_Local_Init(this,lrange,region);
    return;
  default:
    FmtAssert(FALSE,("Unknown LRANGE type"));
  }
}

/////////////////////////////////////
// Make both <clist1> and <clist2> be the list
// c00,..,c0n,c10,...,c1m.  Only one of these two
// LRANGE_CLISTs can continue to be valid after this
// operation.  Choose one and discard the other.
void
LRANGE_CLIST::Append( LRANGE_CLIST* clist1 )
{
  if ( first == NULL )
    *this = *clist1;
  else if ( clist1->first == NULL )
    *clist1 = *this;
  else {
    last->clist_next = clist1->first;
    last = clist1->last;
    clist1->first = first;
  }
}

/////////////////////////////////////
// The _Current LRANGE of <iter> is replaced by
// <lrange>.  This means that _Current is spliced out of
// the LRANGE_CLIST on which <iter> was initialized and
// _lrange is spliced into the list in its place.  This
// is used during splitting.  We need to replace the
// split LRANGE with a new LRANGE representing the part
// that can be colored and splice the old LRANGE out of
// the list.  We use the following two functions to put
// it back into the coloring list at the appropriate place.
void
LRANGE_CLIST_ITER::Replace_Current( LRANGE* lrange )
{
  DevAssert(! Done(), ("Trying to splice into a _Done coloring."));
  if ( clist->first == Current() )
    clist->first = lrange;
  if ( clist->last == Current() )
    clist->last = lrange;
  lrange->clist_next = Current()->clist_next;
  prev->clist_next = lrange;
}

/////////////////////////////////////
// Add <new> just after _Current to the LRANGE_CLIST
// associated with <lrange>.  This is used during
// splitting in order to put the deferred part of the
// split LRANGE back into the coloring list for
// appropriate later consideration.
void
LRANGE_CLIST_ITER::Splice( LRANGE* lrange )
{
  DevAssert(! Done(), ("Trying to splice into a _Done coloring."));
  lrange->clist_next = Current()->clist_next;
  Current()->clist_next = lrange;
  if ( lrange->clist_next == NULL )
    clist->last = lrange;
}

/////////////////////////////////////
// Note that a copy between <lrange0> and <lrange1> in <gbb>
// which we can remove if the two LRANGEs are allocated to the
// same register.
void
LRANGE::Preference_Copy( LRANGE* lrange1, GRA_BB* gbb )
{
  LUNIT*    lunit;
  GRA_PREF* pref0 = Pref();
  GRA_PREF* pref1 = lrange1->Pref();
  GRA_PREF* pref_;

 GRA_Trace_Preference_Copy(this,lrange1,gbb);

  pref_priority += gbb->Freq();
  lrange1->pref_priority += gbb->Freq();

  if ( Find_LUNIT_For_GBB(gbb,&lunit) )
    lunit->Preference_Copy(lrange1);

  if ( lrange1->Find_LUNIT_For_GBB(gbb,&lunit) )
    lunit->Preference_Copy(this);

  if ( pref0 != NULL ) {
    if ( pref1 != NULL )
      pref_ = gra_pref_mgr.UnionD(pref0,pref1);
    else
      pref_ = pref0;
  }
  else if ( pref1 != NULL )
    pref_ = pref1;
  else
    pref_ = gra_pref_mgr.Create();

  pref = pref_;
  lrange1->pref = pref_;

  if ( gbb->Region_Is_Complement() ) {
    if ( Type() == LRANGE_TYPE_REGION )
      lrange_mgr.Add_GBB_With_Glue_Reference(this,gbb);
    if ( lrange1->Type() == LRANGE_TYPE_REGION )
      lrange_mgr.Add_GBB_With_Glue_Reference(lrange1,gbb);
  }
}

/////////////////////////////////////
// Use after aplitting a LRANGE to recompute it's preference
// class and _Preference_Priority.
void
LRANGE::Recompute_Preference(void)
{
  LRANGE_LUNIT_ITER iter;
  float priority = 0.0;

  for (iter.Init(this); ! iter.Done(); iter.Step()) {
    priority += iter.Current()->Pref_Priority();
  }

  pref_priority = priority;

  if ( priority == 0.0 )
    pref = NULL;
}


/////////////////////////////////////
//  Format a description of <lrange> into <buff> to be used for tracing 
// preferences or debugging.
char *
LRANGE::Format( char* buff )
{
  INT count;

  switch ( Type() ) {
  case LRANGE_TYPE_LOCAL:
    count = sprintf(buff,"[LRANGE L rc %d  BB:%d", Rc(), BB_id(Gbb()->Bb()));
    break;
  case LRANGE_TYPE_REGION:
    count = sprintf(buff,"[LRANGE R rc %d TN%d", Rc(), TN_number(Tn()));
    break;
  case LRANGE_TYPE_COMPLEMENT:
    count = sprintf(buff,"[LRANGE C rc %d TN%d", Rc(), TN_number(Tn()));
    break;
  default:
    DevWarn("Invalid LRANGE_TYPE");
    return NULL;
  }
  

  if ( Allocated() ) {
    count += sprintf(buff+count," alloc %s",
                                REGISTER_name(Rc(), Reg()));
  }

  if ( Has_Wired_Register() ) {
    count += sprintf(buff+count," wired");
    if ( ! Allocated() ) {
      count += sprintf(buff+count, " %s", REGISTER_name(Rc(),Reg()));
    }
  }

  if ( Tn_Is_Save_Reg() ) 
    count += sprintf(buff+count," save");

  sprintf(buff+count,"]");
  return buff;
}

