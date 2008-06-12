/*
 * Copyright 2003, 2004 PathScale, Inc.  All Rights Reserved.
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


#include <stdio.h>
#include <stdlib.h>
#include <libelf.h>
#include <sys/unwindP.h>
#include <list>

#include "defs.h"
#include "erglob.h"
#include "glob.h"
#include "flags.h"
#include "tracing.h"
#include "config.h"
#include "config_asm.h"
#include "be_util.h"
#include "cgir.h"
#include "register.h"
#include "tn_map.h"
#include "em_elf.h"
#include "em_dwarf.h"
#include "cgtarget.h"
#include "calls.h"
#include "cgemit.h"
#include "data_layout.h"
#include "cgdwarf_targ.h"

static BOOL Trace_Unwind = FALSE;

// rp == ra
// psp == fp
 
// Procedure regions:
typedef enum {
  UNDEFINED_UREGION,
  PROLOGUE_UREGION,
  EPILOGUE_BODY_UREGION,
  LABEL_BODY_UREGION,
  COPY_BODY_UREGION
} UREGION_TYPE;

// Unwind elements:
enum {
  UE_UNDEFINED,
  UE_CREATE_FRAME,
  UE_DESTROY_FRAME,
  UE_SAVE_GR,		// save a reg to a GR reg
  UE_SAVE_M,		// save a reg to memory
  UE_RESTORE,		// restore a reg
  UE_LABEL,		// body label
  UE_COPY		// body copy 
};

typedef struct unwind_elem {
  mUINT32 when;
  BB *bb;
  mUINT8 kind;
  mBOOL save_sp_relative;	// true if sp-relative, false if fp
  mUINT16 label;		// body label id
  CLASS_REG_PAIR rc_reg;	// reg whose state is changing
  CLASS_REG_PAIR save_rc_reg;	// reg being saved into
  union {
  	mINT64 offset;			// stack offset
	struct {
		mUINT32 size;		// region size
		mUINT32 start;		// when at start of region
	} region;
  } u;
} UNWIND_ELEM;

// use list not slist cause append to end
static std::list < UNWIND_ELEM > ue_list;
static std::list < UNWIND_ELEM >::iterator ue_iter;
static UINT last_when;
static BOOL simple_unwind = FALSE;
static BOOL has_asm = FALSE;
static UINT last_label = 0;
static BOOL has_create = FALSE;

static void
Print_Unwind_Elem (UNWIND_ELEM ue, char *msg)
{
	fprintf(TFile, "<%s> at bb %d when %d: ", msg, ue.bb->id, ue.when);
	switch (ue.kind) {
	case UE_CREATE_FRAME:
		fprintf(TFile, " create_frame, size %d, start %d", 
			ue.u.region.size, ue.u.region.start); 
		break;
	case UE_DESTROY_FRAME:
		fprintf(TFile, " destroy_frame, size %d, start %d",
			ue.u.region.size, ue.u.region.start); 
		break;
	case UE_LABEL:  
		fprintf(TFile, " label state %d, size %d, start %d",
			ue.label, ue.u.region.size, ue.u.region.start);
		break;
	case UE_COPY:  
		fprintf(TFile, " copy label state %d, size %d, start %d",
			ue.label, ue.u.region.size, ue.u.region.start);
		break;
	case UE_SAVE_GR:  
		fprintf(TFile, " save %s in gr %s",
		    REGISTER_name(
			CLASS_REG_PAIR_rclass(ue.rc_reg),
        		CLASS_REG_PAIR_reg(ue.rc_reg) ),
		    REGISTER_name(
			CLASS_REG_PAIR_rclass(ue.save_rc_reg),
        		CLASS_REG_PAIR_reg(ue.save_rc_reg) ));
		break;
	case UE_SAVE_M:
		fprintf(TFile, "save %s", REGISTER_name(
				CLASS_REG_PAIR_rclass(ue.rc_reg),
        			CLASS_REG_PAIR_reg(ue.rc_reg) ));
		fprintf(TFile, " to mem %lld(%s)",
			ue.u.offset,
			(ue.save_sp_relative ? "sp" : "psp") );
		break;
	case UE_RESTORE:  
		fprintf(TFile, " restore %s", REGISTER_name(
			CLASS_REG_PAIR_rclass(ue.rc_reg),
        		CLASS_REG_PAIR_reg(ue.rc_reg) ));
		break;
	}
	fprintf(TFile, "\n");
}

static void
Print_All_Unwind_Elem (char *msg)
{
  for (ue_iter = ue_list.begin(); ue_iter != ue_list.end(); ++ue_iter) {
    	Print_Unwind_Elem (*ue_iter, msg);
  }
}

static BOOL
TN_Is_Unwind_Reg (TN *tn)
{
	if (REGISTER_SET_MemberP(
		REGISTER_CLASS_callee_saves(TN_register_class(tn)),
		TN_register(tn)))
	{
		return TRUE;
	}
	else if (CLASS_REG_PAIR_EqualP(TN_class_reg(tn), CLASS_REG_PAIR_ra)) {
		return TRUE;
	}
	else if (CLASS_REG_PAIR_EqualP(TN_class_reg(tn), CLASS_REG_PAIR_pfs)) {
		return TRUE;
	}
	return FALSE;
}

static OP*
Find_Def_Of_TN (TN *tn, OP *last_op)
{
	// search backwards to find def of tn
	DEF_KIND kind;
	OP *op = TN_Reaching_Value_At_Op(tn, last_op, &kind, TRUE);
	if (op && OP_has_result(op) && OP_result(op,0) == tn) {
			return op;
	}
	return NULL;
}

static TN*
Find_Spill_TN (OP *last_op, TN *reg_tn)
{
  return NULL;
}

// search for save-tn that "tn" is copied from.
static TN*
Get_Copied_Save_TN (TN *tn, OP *cur_op)
{
  return NULL;
}

// find tn that we are restoring from
// (go past temporary tn that holds address)
static TN*
Get_Source_Of_Restore (TN *tn, OP *cur_op)
{
  return tn;
}

static void
Analyze_OP_For_Unwind_Info (OP *op, UINT when, BB *bb)
{
}

static UINT
Get_BB_When_Length (BB *bb) 
{
  UINT w = 0;
  OP *op;
  FOR_ALL_BB_OPs_FWD(bb, op) {
  	if (OP_dummy(op)) continue;
  	w += OP_Real_Inst_Words(op);
  }
  return w;
}

static void
Find_Unwind_Info (void)
{
  OP *op;
  UINT when = 0;
  BB_Mark_Unreachable_Blocks ();
  for (BB *bb = REGION_First_BB; bb; bb = BB_next(bb)) {
    if (BB_unreachable(bb)) {
	when += Get_BB_When_Length(bb); 
	continue;
    }
    if (Trace_Unwind) Print_BB(bb);
    FOR_ALL_BB_OPs_FWD(bb, op) {
      if (OP_dummy(op)) continue;
      Analyze_OP_For_Unwind_Info(op, when, bb);
      when += OP_Real_Inst_Words(op);
    }
  }
  last_when = when - 1;
}



// enum of all preserved regs (PR) that can be saved/restored
typedef enum {
	PR_SP,
	PR_R4,
	PR_R5,
	PR_R6,
	PR_R7,
	PR_F2,
	PR_F3,
	PR_F4,
	PR_F5,
	PR_F16,
	PR_F17,
	PR_F18,
	PR_F19,
	PR_F20,
	PR_F21,
	PR_F22,
	PR_F23,
	PR_F24,
	PR_F25,
	PR_F26,
	PR_F27,
	PR_F28,
	PR_F29,
	PR_F30,
	PR_F31,
	PR_PRED,
	PR_RP,
	PR_B1,
	PR_B2,
	PR_B3,
	PR_B4,
	PR_B5,
	PR_PFS,
	PR_LC,
	PR_FPSR,
	PR_UNAT,
	PR_RNAT,
	PR_PRIUNAT,
	PR_BSP,
	PR_BSPSTORE,
	// note that ar.ec is marked as callee-save,
	// but is saved by hardware in ar.pfs so don't need unwind info.
	PR_LAST
} PR_TYPE;
#define PR_FIRST PR_SP
#define INCR(p)	(p = static_cast<PR_TYPE>(static_cast<INT>(p) +1))

static PR_TYPE
CR_To_PR (CLASS_REG_PAIR crp)
{
  FmtAssert(FALSE, ("unexpected reg in CR_To_PR"));
}

static CLASS_REG_PAIR
PR_To_CR (PR_TYPE p)
{
  FmtAssert(FALSE, ("unexpected pr (%d) in PR_To_CR", p));
}

typedef UINT64 PR_BITSET;	// bit mask for PR enumeration
static inline BOOL Get_PR (PR_BITSET state, PR_TYPE p)
{
	return (BOOL) ((state >> p) & 1);
}
static inline BOOL Get_PR (PR_BITSET *state, BB *bb, PR_TYPE p)
{
	return (BOOL) ((state[bb->id] >> p) & 1);
}
static inline PR_BITSET Set_PR (PR_BITSET state, PR_TYPE p)
{
	return (state | (1LL << p));
}
static inline void Set_PR (PR_BITSET *state, BB *bb, PR_TYPE p)
{
	state[bb->id] |= (1LL << p);
}
static inline PR_BITSET Clear_PR (PR_BITSET state, PR_TYPE p)
{
	return (state & (~(1LL << p)));
}

// iterate thru list and mark all saves/restores in local state
static void
Mark_Local_Saves_Restores (PR_BITSET *local_save_state, 
	PR_BITSET *local_restore_state)
{
  PR_TYPE p;
  memset (local_save_state, 0, ((PU_BB_Count+1) * sizeof(PR_BITSET)));
  memset (local_restore_state, 0, ((PU_BB_Count+1) * sizeof(PR_BITSET)));

  for (ue_iter = ue_list.begin(); ue_iter != ue_list.end(); ++ue_iter) {
	switch (ue_iter->kind) {
	case UE_CREATE_FRAME:
	case UE_SAVE_GR:
	case UE_SAVE_M:
  		p = CR_To_PR (ue_iter->rc_reg);
  		Set_PR(local_save_state, ue_iter->bb, p);
		break;
	case UE_DESTROY_FRAME:
	case UE_RESTORE:
  		p = CR_To_PR (ue_iter->rc_reg);
  		Set_PR(local_restore_state, ue_iter->bb, p);
		break;
	}
  }
}

static void
Propagate_Save_Restore_State (PR_BITSET *entry_state,
	PR_BITSET *local_save_state,
	PR_BITSET *local_restore_state,
	PR_BITSET *exit_state)
{
  BB *bb;
  BBLIST *blst;
  INT bbid;
  BOOL changed = TRUE;
  INT count = 0;
  memset (entry_state, 0, ((PU_BB_Count+1) * sizeof(PR_BITSET)));
  memset (exit_state, -1, ((PU_BB_Count+1) * sizeof(PR_BITSET)));

  while (changed) {
	++count;
	if (count > 100) {	// to avoid infinite loops
		DevWarn("infinite loop in propagating unwind info");
		break;
	}
	changed = FALSE;
	for (bb = REGION_First_BB; bb; bb = BB_next(bb)) {
		if (BB_unreachable(bb)) continue;
		if (Trace_Unwind) 
			fprintf (TFile, "curbb: %d, preds: ", BB_id(bb));
		if (BB_preds(bb) != NULL) {
			PR_BITSET new_entry_state = (PR_BITSET) -1; // all 1's
			FOR_ALL_BB_PREDS (bb, blst) {
				bbid = BB_id(BBLIST_item(blst));
				new_entry_state &= exit_state[bbid];
				if (Trace_Unwind) fprintf (TFile, "[%d %llx], ",
					bbid, exit_state[bbid]);
			}
        		entry_state[BB_id(bb)] = new_entry_state;
		}
		bbid = BB_id(bb);
		if (Trace_Unwind) 
			fprintf (TFile, "\n entry_state: %llx\n", entry_state[bbid]);
		PR_BITSET new_exit_state = 
			entry_state[bbid] | local_save_state[bbid];
		new_exit_state ^= local_restore_state[bbid];
		if (new_exit_state != exit_state[bbid]) {
			changed = TRUE;
			exit_state[bbid] = new_exit_state;
		}
	}
  }
  if (Trace_Unwind) {
	fprintf(TFile, "bb\tentry\t\tlocal_save\tlocal_restore\texit:\n");
	for (INT i = 1; i <= PU_BB_Count; ++i) {
		fprintf(TFile, "%4d:\t%12llx\t%12llx\t%12llx\t%12llx\n", 
			i, entry_state[i], local_save_state[i], local_restore_state[i], exit_state[i]);
	}
  }
}

static UNWIND_ELEM
Find_Prev_Save_UE_For_BB (std::list < UNWIND_ELEM > prev_ue, BB *bb, UINT level)
{
  BBLIST *blst;
  std::list < UNWIND_ELEM >::iterator prev_iter;
  FOR_ALL_BB_PREDS (bb, blst) {
	// find ue in nbb that does a save
  	for (prev_iter = prev_ue.begin(); prev_iter != prev_ue.end(); ++prev_iter) {
		if (prev_iter->bb != BBLIST_item(blst)) continue;
		if (prev_iter->kind == UE_SAVE_GR || prev_iter->kind == UE_SAVE_M) {
			return *prev_iter;
		}
	}
  }
  UNWIND_ELEM ue;
  ue.kind = UE_UNDEFINED;
  ++level;
  if (level > 10) return ue;
  // if not found recurse
  FOR_ALL_BB_PREDS (bb, blst) {
	ue = Find_Prev_Save_UE_For_BB (prev_ue, BBLIST_item(blst), level);
	if (ue.kind != UE_UNDEFINED) return ue;
  }
  return ue;
}

// overload some routines to add unwind elements
static void
Add_UE (std::list < UNWIND_ELEM > prev_ue, PR_TYPE p, UINT when, BB *bb)
{
  std::list < UNWIND_ELEM >::iterator prev_iter;
  UNWIND_ELEM ue;
  ue.kind = UE_UNDEFINED;
  UINT num_found = 0;
  for (prev_iter = prev_ue.begin(); prev_iter != prev_ue.end(); ++prev_iter) {
	// look for save
	if (prev_iter->kind == UE_SAVE_GR || prev_iter->kind == UE_SAVE_M) {
		ue = *prev_iter;
		++num_found;
	}
  }
  if (num_found == 0) {
	DevWarn("unwind: no pr_info found for %d", p);
	return;
  }
  if (num_found > 1) {
	// check if all are same
  	for (prev_iter = prev_ue.begin(); prev_iter != prev_ue.end(); ++prev_iter) {
		if (prev_iter->kind == ue.kind 
		  && CLASS_REG_PAIR_EqualP(prev_iter->rc_reg, ue.rc_reg))
			--num_found;
	}
	++num_found;	// original still counts
  }
  if (num_found > 1) {
	UNWIND_ELEM nue;
	nue = Find_Prev_Save_UE_For_BB (prev_ue, bb, 0);
	if (nue.kind == UE_UNDEFINED) {
		// just use memory save if exists
  		for (prev_iter = prev_ue.begin(); prev_iter != prev_ue.end(); ++prev_iter) {
			if (prev_iter->kind == UE_SAVE_M) {
				nue = *prev_iter;
				break;
			}
		}
		if (nue.kind == UE_UNDEFINED) {
			DevWarn("couldn't find unwind save for %d", p);
		}
		else
			ue = nue;
	}
	else
		ue = nue;
  }
  ue.when = when;
  ue.bb = bb;
  ue_list.insert(ue_iter, ue);
  if (Trace_Unwind) 
	fprintf(TFile, "state change for %d at entry to bb %d\n", p, BB_id(bb));
}

static void
Add_UE (INT8 kind, PR_TYPE p, UINT when, BB *bb)
{
  UNWIND_ELEM ue;
  ue.kind = kind;
  ue.rc_reg = PR_To_CR(p);
  ue.when = when;
  ue.bb = bb;
  ue_list.insert(ue_iter, ue);
  if (Trace_Unwind) 
	fprintf(TFile, "state change for %d at entry to bb %d\n", p, BB_id(bb));
}

static void
Add_UE (INT8 kind, UINT label, UINT when, BB *bb)
{
  UNWIND_ELEM ue;
  ue.kind = kind;
  ue.label = label;
  ue.when = when;
  ue.bb = bb;
  ue_list.insert(ue_iter, ue);
  if (Trace_Unwind) 
	fprintf(TFile, "add ue kind %d label %d at bb %d\n", kind, label, BB_id(bb));
}

#if 0
static void
Do_Control_Flow_Analysis_Of_Unwind_Info (void)
{
  // we know what unwind changes happen in each block;
  // now have to propagate that info so each bb has correct info upon entry.

  // QUESTION:  can we assume that saved reg is only saved to one place?
  // (we did on MIPS, except for local spills via prev_fd_to_spill_loc).
  // E.g. can b1 be saved to r33 in one path and 8(sp) in another path?
  // or saved to r33 in one path and r34 in another path?
  // A:  I think only one stack location will be used, but multiple saveregs
  // can be used.

  // have 4 bit vectors for each bb:  
  // entry, local-save, local-restore, and exit state.
  // first fill in the local state info with changes that happen in that bb.

  PR_BITSET entry_state[PU_BB_Count+1];
  PR_BITSET local_save_state[PU_BB_Count+1];
  PR_BITSET local_restore_state[PU_BB_Count+1];
  PR_BITSET exit_state[PU_BB_Count+1];

  // mark all saves/restores in local state
  Mark_Local_Saves_Restores (local_save_state, local_restore_state);

  // now propagate the save/restore state thru the control flow.
  // foreach pred bb, copy its exit-state to the entry-state.
  Propagate_Save_Restore_State (entry_state, local_save_state,
	local_restore_state, exit_state);

  PR_TYPE p;
  // keep list of ue's for each pr.
  list < UNWIND_ELEM > pr_last_info[PR_LAST];
  for (ue_iter = ue_list.begin(); ue_iter != ue_list.end(); ++ue_iter) {
		p = CR_To_PR (ue_iter->rc_reg);
		// put last ue for bb on list
		if ( ! pr_last_info[p].empty()
		    && pr_last_info[p].front().bb == ue_iter->bb)
		{
			pr_last_info[p].pop_front();
		}
		pr_last_info[p].push_front (*ue_iter);
  }

  // now determine save/restore changes at each when point
  // and update ue_list with changes
  PR_BITSET current_state = 0;
  INT bbid;
  UINT lwhen = 0;
  ue_iter = ue_list.begin();
  for (BB *bb = REGION_First_BB; bb; bb = BB_next(bb)) {
	if (BB_unreachable(bb)) {
		lwhen += Get_BB_When_Length(bb); 
		continue;
	}
	if (BB_length(bb) == 0) {
		// empty, so ignore
		continue;
	}
	bbid = BB_id(bb);

	// if an alternate entry point,
	// reset current state so no implicit changes at entry.
	if (BB_entry(bb)) {
		current_state = entry_state[bbid];
	}
	// in case have exit that follows exit,
	// first copy previous label then do new label.
	if (BB_prev(bb) != NULL && BB_exit(BB_prev(bb))) {
		// in bb that follows exit, so copy above label
		Add_UE (UE_COPY, last_label, lwhen, bb);
		current_state = entry_state[BB_id(BB_prev(bb))];
	}
	if (BB_exit(bb) && BB_next(bb) != NULL) {
		// if have an exit that is followed by another bb
		// then want to create body label before exit and
		// copy from label after exit (i.e. skip destroy frame)
		if (BB_entry(bb) && BB_prev(bb) == NULL) {
			// if in first bb, then make sure label
			// comes after create_frame.
			while (ue_iter != ue_list.end() && ue_iter->bb == bb) {
				if (ue_iter->kind == UE_CREATE_FRAME) {
					++ue_iter;
					Add_UE (UE_LABEL, ++last_label, 
						ue_iter->when, bb);
					break;
				}
				++ue_iter;
			}
		}
		else {
			Add_UE (UE_LABEL, ++last_label, lwhen, bb);
		}
	}

	// add implicit changes upon entry
	if (current_state != entry_state[bbid]) {
  		for (p = PR_FIRST; p < PR_LAST; INCR(p)) {
			// ignore implicit sp changes,
			// as label/copy should handle those.
			if (p == PR_SP) continue;
			if (Get_PR(current_state,p) != Get_PR(entry_state[bbid],p)) 
			{
				// add into ue_list
				if (Get_PR(entry_state[bbid],p) == FALSE) {
					// add restore
					Add_UE (UE_RESTORE, p, lwhen, bb);
				}
				else {
					// add save
					Add_UE (pr_last_info[p], p, lwhen, bb);
				}
			}
  		}
		current_state = entry_state[bbid];
	}

	// look for changes in bb
	while (ue_iter != ue_list.end() && ue_iter->bb == bb) {
		p = CR_To_PR (ue_iter->rc_reg);
		if (Trace_Unwind) fprintf(TFile, 
			"state change for %d in bb %d\n", p, bbid);
		if (ue_iter->kind == UE_RESTORE) {
			current_state = Clear_PR(current_state, p);
		}
		else {
			current_state = Set_PR(current_state, p);
		}
		++ue_iter;
	}
	lwhen += Get_BB_When_Length(bb);
  }
}
#endif

// does unwind follow simple pattern of saves in entry, restores in exit?
static BOOL
Is_Unwind_Simple (void)
{
  if (has_asm) return FALSE;

  for (ue_iter = ue_list.begin(); ue_iter != ue_list.end(); ++ue_iter) {
    	// if not first or last bb, then not a simple unwind
    	if (BB_prev(ue_iter->bb) != NULL && BB_next(ue_iter->bb) != NULL) {
		return FALSE;
    	}
	// if not entry or exit bb, then not a simple unwind
	if ( ! BB_entry(ue_iter->bb) && ! BB_exit(ue_iter->bb)) {
		return FALSE;
	}
  }
  return TRUE;
}

// compute sizes of each prolog and body region
static void
Compute_Region_Sizes (void)
{
  std::list < UNWIND_ELEM >::iterator current_ue = ue_list.end();
  for (ue_iter = ue_list.begin(); ue_iter != ue_list.end(); ++ue_iter) {
    switch (ue_iter->kind) {
    case UE_CREATE_FRAME:
	// assume create frame will be first, and only appear once
	Is_True (current_ue == ue_list.end(), ("multiple unwind create frames?"));
	current_ue = ue_iter;
	current_ue->u.region.start = 0;
	break;
    case UE_DESTROY_FRAME:
    case UE_LABEL:
    case UE_COPY:
	// set size of previous region
	current_ue->u.region.size = ue_iter->when - current_ue->u.region.start;
	current_ue = ue_iter;
	current_ue->u.region.start = ue_iter->when;
	break;
    }
  }
  if (current_ue != ue_list.end())
  	current_ue->u.region.size = last_when - current_ue->u.region.start + 1;
}

static UINT next_when;
static UREGION_TYPE proc_region;

// call per-PU
void 
Init_Unwind_Info (BOOL trace)
{
  Trace_Unwind = trace;
  has_asm = FALSE;
  has_create = FALSE;

  Find_Unwind_Info ();
#if 0
  simple_unwind = Is_Unwind_Simple();
#else
  simple_unwind = TRUE;
#endif

  last_label = 0;
  next_when = 0;
  proc_region = UNDEFINED_UREGION;

  if ( ! simple_unwind) {
	if (Trace_Unwind) fprintf (TFile, "need to propagate unwind info\n");
	// need to propagate unwind info to each block,
	// and update ue_list with state changes
	// Do_Control_Flow_Analysis_Of_Unwind_Info ();
	if ( ! has_asm) simple_unwind = TRUE;
  }
  Compute_Region_Sizes();

  if (Trace_Unwind) {
	fprintf (TFile, "%s unwind\n", (simple_unwind ? "simple" : "complicated"));
	Print_All_Unwind_Elem ("unwind2");
  }

  // for use in emit_unwind
  ue_iter = ue_list.begin();
}

void 
Finalize_Unwind_Info(void)
{
  ue_list.clear();
}


void 
Emit_Unwind_Directives_For_OP(OP *op, FILE *f)
{
  if (ue_iter == ue_list.end()) return;	// none left
  if (OP_dummy(op)) return;

  const char *prefix = "//";	// until actually works

#if 0
  if (proc_region == UNDEFINED_UREGION) {
    fprintf(f, "%s\t.prologue\n", prefix);
    proc_region = PROLOGUE_UREGION;
  } else if (   proc_region == PROLOGUE_UREGION 
	     && ue_iter->kind == UE_DESTROY_FRAME)
  {
    fprintf(f, "%s\t.body\n", prefix);
    proc_region = EPILOGUE_BODY_UREGION;
  }
#endif

  if (ue_iter->when == next_when) {
    ISA_REGISTER_CLASS rc = CLASS_REG_PAIR_rclass(ue_iter->rc_reg);
    REGISTER reg = CLASS_REG_PAIR_reg(ue_iter->rc_reg);

    switch (ue_iter->kind) {
    case UE_CREATE_FRAME:
      if (Current_PU_Stack_Model == SMODEL_SMALL) {
	fprintf(f, "%s\t.fframe %lld\n", prefix, Frame_Len);
      } else {
	fprintf(f, "%s\t.vframe %s\n", 
		   prefix,
		   REGISTER_name(TN_register_class(FP_TN), TN_register(FP_TN)));
      }
      break;
    case UE_DESTROY_FRAME:
      fprintf(f, "%s\t.restore %s\n", 
		 prefix,
		 REGISTER_name(TN_register_class(SP_TN), TN_register(SP_TN)));
      break;
    case UE_SAVE_GR:
      fprintf(f, "%s\t.save %s\n", prefix, REGISTER_name(rc, reg));
      break;
    case UE_RESTORE:
      fprintf(f, "%s\t.restore %s\n", prefix, REGISTER_name(rc, reg));
      break;
    case UE_SAVE_M:
      fprintf(f, "%s\t.save %s mem\n", prefix, REGISTER_name(rc, reg));
      break;
    case UE_LABEL:
      fprintf(f, "%s\t.label %d\n", prefix, ue_iter->label);
      break;
    case UE_COPY:
      fprintf(f, "%s\t.copy %d\n", prefix, ue_iter->label);
      break;
    default:
      FmtAssert(FALSE, ("Unhandled UNWIND_ELEM kind (%d)\n", ue_iter->kind));
      /*NOTREACHED*/
    }

    ++ue_iter;
  }

  next_when += OP_Real_Inst_Words(op);
}



static void
Add_Prologue_Header (__unw_info_t *uinfo, UINT64 size)
{
  	__unw_error_t st = 0;
  	if (Trace_Unwind) fprintf(TFile, "prolog header size %llu\n", size);
  	st |= unwind_info_add_prologue_header(uinfo, size);
  	Is_True(st == __UNW_OK, ("unwind_info prolog error (%d)", st));
}
static void
Add_Body_Header (__unw_info_t *uinfo, UINT64 size)
{
  	__unw_error_t st = 0;
  	if (Trace_Unwind) fprintf(TFile, "body header size %llu\n", size);
  	st = unwind_info_add_body_header(uinfo, size);
  	Is_True(st == __UNW_OK, ("unwind_info body error (%d)", st));
}

// process info we've collected and create the unwind descriptors
static void
Create_Unwind_Descriptors (__unw_info_t *uinfo)
{
  __unw_error_t st = 0;
  ISA_REGISTER_CLASS rc;
  REGISTER reg;
  UREGION_TYPE uregion = UNDEFINED_UREGION;
  UINT start_when = 0;

  if (!simple_unwind) return;	// TODO

  for (ue_iter = ue_list.begin(); ue_iter != ue_list.end(); ++ue_iter) {
    if (ue_iter->kind == UE_CREATE_FRAME)
	break;
  }
  if (ue_iter == ue_list.end()) {
    // no frame
    Add_Prologue_Header (uinfo, last_when);
  }
  else {
    Add_Prologue_Header (uinfo, ue_iter->u.region.size);

    if (Current_PU_Stack_Model == SMODEL_SMALL) {
      if (Trace_Unwind) fprintf(TFile, "fixed stack frame of size %lld, set at when %d\n", 
		Frame_Len, ue_iter->when);
      st |= unwind_info_add_prologue_mem_stack_f_info(uinfo, 
			ue_iter->when, Frame_Len / INST_BYTES);
    }
    else {
      if (Trace_Unwind) fprintf(TFile, "large or variable-size stack frame, when = %d\n", ue_iter->when); 
      st |= unwind_info_add_prologue_mem_stack_v_info (uinfo, ue_iter->when);
      st |= unwind_info_add_prologue_psp_gr_info (uinfo,
		REGISTER_machine_id (
			TN_register_class(FP_TN), TN_register(FP_TN) ) );
    }
    Is_True(st == __UNW_OK, ("unwind_info mem_stack error (%d)", st));
  }
  uregion = PROLOGUE_UREGION;

  for (ue_iter = ue_list.begin(); ue_iter != ue_list.end(); ++ue_iter) {
    switch (ue_iter->kind) {
    case UE_DESTROY_FRAME:
	Add_Body_Header (uinfo, ue_iter->u.region.size);
	uregion = EPILOGUE_BODY_UREGION;
	{
	  INT when_from_end = ue_iter->u.region.size 
		- (ue_iter->when - ue_iter->u.region.start) - 1;
	  if (Trace_Unwind) fprintf(TFile, "body epilogue at when %d\n", when_from_end);
	  st |= unwind_info_add_body_epilogue_info(uinfo, when_from_end, 0);
	  Is_True(st == __UNW_OK, ("unwind_info frame restore error (%d)",st));
	}
	start_when = ue_iter->u.region.start;
	break;
    case UE_LABEL:
	Add_Body_Header (uinfo, ue_iter->u.region.size);
	uregion = LABEL_BODY_UREGION;

	if (Trace_Unwind) fprintf(TFile, "body label at when %d\n", ue_iter->when);
	st |= unwind_info_add_body_label_state_info(uinfo, ue_iter->label);
	Is_True(st == __UNW_OK, ("unwind_info label error (%d)",st));
	start_when = ue_iter->u.region.start;
	break;
    case UE_COPY:
	Add_Body_Header (uinfo, ue_iter->u.region.size);
	uregion = COPY_BODY_UREGION;

	if (Trace_Unwind) fprintf(TFile, "body copy at when %d\n", ue_iter->when);
	st |= unwind_info_add_body_copy_state_info(uinfo, ue_iter->label);
	Is_True(st == __UNW_OK, ("unwind_info copy error (%d)",st));
	start_when = ue_iter->u.region.start;
	break;

    case UE_SAVE_GR:
      {
	rc = CLASS_REG_PAIR_rclass(ue_iter->rc_reg);
	reg = CLASS_REG_PAIR_reg(ue_iter->rc_reg);
	ISA_REGISTER_CLASS save_rc = CLASS_REG_PAIR_rclass(ue_iter->save_rc_reg);
	REGISTER save_reg = CLASS_REG_PAIR_reg(ue_iter->save_rc_reg);
	if (Trace_Unwind) fprintf(TFile, "save reg to reg at when %d\n", ue_iter->when);

	if (uregion == PROLOGUE_UREGION) {
		st |= unwind_info_add_prologue_info_reg (
			  uinfo, 
			  rc,
			  REGISTER_machine_id(rc, reg),
			  ue_iter->when - start_when,
			  save_rc,
			  REGISTER_machine_id(save_rc, save_reg));
	}
	else {
		// need to handle saves and restores in copy and label bodies
		st |= unwind_info_add_body_info_reg (
			  uinfo, 
			  rc,
			  REGISTER_machine_id(rc, reg),
			  ue_iter->when - start_when,
			  save_rc,
			  REGISTER_machine_id(save_rc, save_reg));
	}
      }
      Is_True(st == __UNW_OK, ("unwind_info save error (%d) on reg %s", 
			       st, REGISTER_name(rc, reg) ));
      break;
    case UE_SAVE_M:
      {
	rc = CLASS_REG_PAIR_rclass(ue_iter->rc_reg);
	reg = CLASS_REG_PAIR_reg(ue_iter->rc_reg);
	INT64 save_offset = ue_iter->u.offset;

	if (ue_iter->save_sp_relative) {
	  if (Trace_Unwind) fprintf(TFile, "save reg to sp mem at when %d\n", ue_iter->when);
	  if (uregion == PROLOGUE_UREGION) {
		st |= unwind_info_add_prologue_info_sp_offset(
				uinfo,
				rc,
				REGISTER_machine_id(rc, reg),
				ue_iter->when - start_when,
				save_offset);
	  }
	  else {
		st |= unwind_info_add_body_info_sp_offset(
				uinfo,
				rc,
				REGISTER_machine_id(rc, reg),
				ue_iter->when - start_when,
				save_offset);
	  }
	} else {
	  if (Trace_Unwind) fprintf(TFile, "save reg to psp mem at when %d\n", ue_iter->when);
	  if (uregion == PROLOGUE_UREGION) {
	  	st |= unwind_info_add_prologue_info_psp_offset(
				uinfo, 
				rc,
				REGISTER_machine_id(rc, reg),
				ue_iter->when - start_when,
				save_offset);
	  }
	  else {
	  	st |= unwind_info_add_body_info_psp_offset(
				uinfo, 
				rc,
				REGISTER_machine_id(rc, reg),
				ue_iter->when - start_when,
				save_offset);
	  }
	}
      }
      Is_True(st == __UNW_OK, ("unwind_info prolog error (%d) on reg %s", 
			       st, REGISTER_name(rc, reg) ));
      break;

    case UE_RESTORE:
	// need to handle saves and restores in copy bodies
	if (uregion != COPY_BODY_UREGION)
		break;
	rc = CLASS_REG_PAIR_rclass(ue_iter->rc_reg);
	reg = CLASS_REG_PAIR_reg(ue_iter->rc_reg);
	if (Trace_Unwind) fprintf(TFile, "restore reg at when %d\n", ue_iter->when);
	st |= unwind_info_add_body_info_restore (uinfo, 
		rc, 
		REGISTER_machine_id(rc, reg),
		ue_iter->when - start_when);
	Is_True(st == __UNW_OK, ("unwind_info restore error (%d) on reg %s", 
		st, REGISTER_name(rc, reg) ));
	break;
    }
  }
}

// dump unwind table and info to .s file
__unw_error_t 
unwind_dump2asm (char *unwind_table_ptr,
		__uint64_t unwind_table_size,
		char *unwind_info_ptr,
		__uint64_t unwind_info_size,
		void *arg) // last_pc-first_pc
{
	static __uint64_t last_info_size = 0;
	static __uint64_t last_table_size = 0;
        __uint64_t i;
        __uint64_t unwind_table_size_in_entries =
                        unwind_table_size/sizeof(__unw_table_entry_t);
	fprintf(Asm_File, "// emit unwind info\n");
	// gas knows what attributes to give unwind sections
	fprintf(Asm_File, "\t%s %s\n", AS_SECTION, IA64_UNWIND_INFO);
	// dump section in 8-byte chunks
	fprintf(Asm_File, ".Lunwind_info_%d:\n", Current_PU_Count());
	for (i = last_info_size; i < unwind_info_size; i+=8) {
		fprintf(Asm_File, "\t%s %#llx\n", AS_DWORD, *(__uint64_t *)(unwind_info_ptr+i));
	}
	fprintf(Asm_File, "\t%s %s\n", AS_SECTION, IA64_UNWIND);
	// should always be 3 double-words
	i = last_table_size;
	fprintf(Asm_File, "\t%s @segrel(%s#)\n", AS_DWORD, Cur_PU_Name);
	i+=8;
	fprintf(Asm_File, "\t%s @segrel(%s#+%#llx)\n", AS_DWORD, Cur_PU_Name, 
		(__uint64_t) UINTPS(arg));
	fprintf(Asm_File, "\t%s @segrel(.Lunwind_info_%d)\n", AS_DWORD, Current_PU_Count());
	last_info_size = unwind_info_size;
	last_table_size = unwind_table_size;
}

/* construct the fde for the current procedure. */
extern Dwarf_P_Fde
Build_Fde_For_Proc (Dwarf_P_Debug dw_dbg, BB *firstbb,
		    Dwarf_Unsigned begin_label,
		    Dwarf_Unsigned end_label,
		    Dwarf_Unsigned pushbp_label,
		    Dwarf_Unsigned movespbp_label,
		    Dwarf_Unsigned adjustsp_label,
		    Dwarf_Unsigned *callee_saved_reg,
		    INT32     end_offset,
		    // The following two arguments need to go away
		    // once libunwind gives us an interface that
		    // supports symbolic ranges.
		    INT       low_pc,
		    INT       high_pc)
{
  __unw_info_t *uinfo = NULL;
  __unw_error_t st;
  Dwarf_Error dw_error;
  Dwarf_P_Fde fde;

  if ( ! CG_emit_unwind_info) return NULL;
  if ( CG_emit_unwind_directives) return NULL;
  // else emit unwind info directly as data

  st = unwind_info_initialize(&uinfo, low_pc, high_pc);
  Is_True(st == __UNW_OK, ("unwind_info initialize error (%d)", st));

  // process info we've collected and create the unwind descriptors
  Create_Unwind_Descriptors (uinfo);

#if 0	// enable
  if (unwind_info_add_personality_routine_info (uinfo, 
  	(__unw_addr_t) 0x1e1e /*dummy value*/, 1, 0) == __UNW_NULL_ERROR)
    DevWarn ("Personality routine info not added: NULL unwind info");
#endif

  st = unwind_info_finalize(uinfo);
  FmtAssert(st == __UNW_OK, ("unwind_info finalize error (%d)", st));

  if (has_asm)
	DevWarn("no unwind info cause PU has asm");
  else if ( ! simple_unwind)
	DevWarn("no unwind info cause PU is too complicated");
  if (simple_unwind) {
    // This function gives an useful trace to stdout.
    //	unwind_process (unwind_dump2ascii, 0 /*print to stdout*/);
  }

  fde = dwarf_new_fde (dw_dbg, &dw_error);

  // Generate FDE instructions
  dwarf_add_fde_inst (fde, DW_CFA_advance_loc4, 
		      begin_label, movespbp_label, &dw_error);
  dwarf_add_fde_inst (fde, DW_CFA_def_cfa_offset, 
		      Is_Target_64bit() ? 0x10 : 0x8, 
		      0x0, &dw_error);
  dwarf_add_fde_inst (fde, DW_CFA_offset, Is_Target_64bit() ? 0x6 : 0x5, 
		      0x2, &dw_error);
  dwarf_add_fde_inst (fde, DW_CFA_advance_loc4, 
		      movespbp_label, adjustsp_label, &dw_error);
  dwarf_add_fde_inst (fde, DW_CFA_def_cfa_register, 
		      Is_Target_64bit() ? 0x6 : 0x5, 0x0, &dw_error);
  if (callee_saved_reg) {
    INT num = Cgdwarf_Num_Callee_Saved_Regs();    
    for (INT i = num - 1; i >= 0; i --) {
      TN* tn = Cgdwarf_Nth_Callee_Saved_Reg(i);
      ST* sym = Cgdwarf_Nth_Callee_Saved_Reg_Location(i);
      INT n = Is_Target_64bit() ? 16 : 8;
      // data alignment factor
      INT d_align = Is_Target_64bit() ? 8 : 4;
      dwarf_add_fde_inst (fde, DW_CFA_advance_loc4, 
      			  (i == num - 1)? adjustsp_label : callee_saved_reg[i+1],
			  callee_saved_reg[i], &dw_error);
      mUINT8 reg_id = REGISTER_machine_id (TN_register_class(tn), TN_register(tn));
      // If we need the DWARF register id's for all registers, we need a 
      // general register mapping from REGISTER_machine_id to DWARF register
      // id. But the following suffices for this case,
      // The machine_id is the same as the DWARF id for all callee-saved 
      // registers except rbx, so give it the proper id here.
      if (reg_id == 1) reg_id = 3;
      dwarf_add_fde_inst (fde, DW_CFA_offset, reg_id,
	          ((ST_base(sym) == FP_Sym ? -1 : 1)*ST_ofst(sym)+n)/d_align,
	          &dw_error);
    }
  }
  
  return fde;
}

#include <elf.h>
#include <elfaccess.h>

void
Check_Dwarf_Rel(const Elf32_Rel &current_reloc)
{
  FmtAssert(REL32_type(current_reloc) == R_IA_64_DIR32MSB,
	    ("Unimplemented 32-bit relocation type %d",
	     REL32_type(current_reloc)));
}

void
Check_Dwarf_Rel(const Elf64_Rel &current_reloc)
{
  FmtAssert(REL64_type(current_reloc) == R_IA_64_DIR64MSB,
	    ("Unimplemented 64-bit relocation type %d",
	     REL64_type(current_reloc)));
}

void
Check_Dwarf_Rela(const Elf64_Rela &current_reloc)
{
  FmtAssert(FALSE,
	    ("Unimplemented 64-bit relocation type %d",
	     REL64_type(current_reloc)));
}

void
Check_Dwarf_Rela(const Elf32_Rela &current_reloc)
{
  FmtAssert(FALSE,
	    ("Unimplemented 32-bit relocation type %d",
	     REL32_type(current_reloc)));
}
static char *drop_these[] = {
      // Assembler generates .debug_line from directives itself, so we
      // don't output it.
	".debug_line",
#if 0
     // gdb does not use the MIPS sections
     // debug_weaknames, etc.
	".debug_varnames",
	".debug_typenames",
	".debug_weaknames",
	".debug_funcnames",
     // we don't use debug_frame in IA-64.
#endif
#ifndef KEY
// we are trying to use GNU .eh_frame instead
	".debug_frame",
#endif // !KEY
	0
};
// return TRUE if we want to emit the section (IA-64).
// return FALSE if we do not want to for IA-64.
extern BOOL Is_Dwarf_Section_To_Emit(const char *name)
{

	for(int  i = 0; drop_these[i]; ++i) {
	  if(strcmp(name,drop_these[i]) == 0) {
	    return FALSE;
	  }
	}
        // Bug 1516 - do not emit .debug_* sections if not -g
	if (Debug_Level < 1 && strncmp(name, ".debug_", 7) == 0)
	  return FALSE;
        return TRUE;
}

