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


/*
 * This module encapsulates the generation of exception range tables.
 */

#ifdef USE_PCH
#include "cg_pch.h"
#endif // USE_PCH
#pragma hdrstop

#include <algorithm>
#include <vector>
#include "defs.h"
#include "errors.h"
#include "tracing.h"
#include "mempool.h"
#include "symtab.h"
#include "wn.h"
#include "irbdata.h"
#include "strtab.h"
#include "stblock.h"
#include "config.h"
#include "config_opt.h"
#include "xstats.h"
#include "eh_region.h"
#include "data_layout.h"
#include "region_util.h"
#include "region_main.h"
#include "bb.h"
#include "whirl2ops.h"
#include "label_util.h"

#include "dwarf_stuff.h"
extern "C" {
#include "pro_encode_nm.h"
}
#include <map>
#include <set>


/*
 * eh_region.cxx is responsible for building the EH range tables
 * used to implement exception handling.  It does this by building
 * an initialized object for each PU.  The emitter will use these
 * initialized objects to write the tables into the object file.
 * Each range  table consists of a header and an array of ranges,
 * each range specifying the following:
 *   a region supplement pointer
 *   a kind (try-block, cleanup, mask, or exception specification)
 *   a low and high adress (offsets from start of function)
 *   a pointer to the parent range.
 *
 * A table may use either short (16-bit) or long (32-bit) offsets
 * to represent the low and high addresses.  16 bits almost always
 * suffices.  The header specifies which kind of offset is used.
 *
 * Before the initialized object is created, the range table is
 * represented internally by an object of type EH_RANGE_LIST.
 * An EH_RANGE_LIST is implemented using a vector of objects
 * of type EH_RANGE.  An EH_RANGE contains the components which
 * will form the range table, together with a number of fields
 * required during the process of building and modifying the
 * range list.
 *
 * An EH range list is built in a number of stages:
 *
 * An initial list is built before optimization and code generation,
 * by the routine EH_Generate_Range_List.
 * This uses the RID tree for the PU to create a tree of EH ranges,
 * represented as a postorder list.  The tree structure is indicated
 * only by the parent fields.  The tree is the natural subtree of
 * the RID tree formed by the EH regions.  A pointer to each
 * range is put into the corresponding RID, for use during code
 * generation.

 *
 * During code generation, when an EH region is encountered,
 * EH_Set_Start_Label is called at the beginning and EH_Set_EndLabel
 * at the end to set the start_label and end_label fields in the
 * range.  When a call is processed, EH_Set_Has_Call is called
 * for each EH region currently on the region stack, to set the
 * has_call field in the range.  Ranges for which this field is
 * not set will be eliminated later (by EH_Prune_Range_list).
 *
 * Prior to CG optimization, EH_Prune_Range_List is called to
 * eliminate unneeded EH ranges.  This gets rid of ranges which
 * do not have calls or throws.  Such ranges are irrelevant to
 * exception handling.  Eliminating them before CG optimization
 * allows transformations which might otherwise be unsafe.
 *
 * EH_Write_Range_Table does some transformations before
 * generating the INITO for a PU.  First of all, mask ranges
 * need to be eliminated.  This is done by resetting the parent
 * of each mask region to the parent of the nearest ancestor
 * cleanup range.  Then both mask regions and guard regions
 * must be replaced by cleanup regions with a trivial cleanup.
 * (Mask regions cannot be left in the range table because of backwards
 * compatibility requirements).
 *
 * At this point, we need to take account of the fact that CG
 * optimization may have reordered the basic blocks.  The range
 * table needs to be reordered accordingly.
 * 
 * Finally, the INITO is created.
 */

 /* Iterators and function objects related to the RIDs. */

 /* Generation of the range list requires doing a post-order
  * tree walk of the RIDs.  After the tree walk, we need to
  * set the parent fields in the ranges.  These two phases
  * require defining iterators RID_POST_ITER and RID_PARENT_ITER.
  */

 /* We also define a function object IS_EH_RID to identify the
  * EH regions in the RID.  It is important to note that
  * null-cleanup regions are not counted as EH regions.  They
  * are retained during the frontend but eliminated at this
  * point.
  */

class RID_POST_ITER {
private:
  RID * start;
  RID * own;
public:
  typedef std::forward_iterator_tag iterator_category;
  typedef RID * 	       value_type;
  typedef ptrdiff_t            difference_type;
  typedef value_type *         pointer;
  typedef value_type &         reference;
  RID_POST_ITER(RID* p = NULL);
  RID * operator*() const {return own;}
  RID_POST_ITER& operator++();
  RID_POST_ITER  operator++(int);
  friend bool operator==(const RID_POST_ITER&, const RID_POST_ITER&);
  friend bool operator!=(const RID_POST_ITER&, const RID_POST_ITER&);
};

RID_POST_ITER::RID_POST_ITER(RID * p): start(p), own(p) {
  if (own != NULL) {
    while (RID_first_kid(own) != NULL)
      own = RID_first_kid(own);
  }
}

RID_POST_ITER& RID_POST_ITER::operator++()
{
  if (own == start) {
    own = NULL;
  }
  else
  if (RID_next(own) != NULL) {
    own = RID_next(own);
    while (RID_first_kid(own) != NULL)
      own = RID_first_kid(own);
  }
  else
    own = RID_parent(own);

  return *this;
}

RID_POST_ITER RID_POST_ITER::operator++(int)
{
  RID_POST_ITER tmp(*this);
  ++*this;
  return tmp;
}

inline bool operator==(const RID_POST_ITER& x, const RID_POST_ITER & y)
{
  return x.own == y.own;
}

inline bool operator!=(const RID_POST_ITER& x, const RID_POST_ITER & y)
{
  return x.own != y.own;
}


class RID_PARENT_ITER {
private:
  RID * p;
public:
  typedef std::forward_iterator_tag iterator_category;
  typedef RID * 	       value_type;
  typedef ptrdiff_t	       difference_type;
  typedef value_type *         pointer;
  typedef value_type &         reference;
  RID_PARENT_ITER(RID* x = NULL): p(x) {}
  RID * operator*() const {return p;}
  RID_PARENT_ITER& operator++() {p = RID_parent(p); return *this;}
  RID_PARENT_ITER  operator++(int) {
    RID_PARENT_ITER tmp = *this;
    ++*this;
    return tmp;
  }
  friend bool operator==(const RID_PARENT_ITER&, const RID_PARENT_ITER &);
  friend bool operator!=(const RID_PARENT_ITER&, const RID_PARENT_ITER &);
};

bool operator==(const RID_PARENT_ITER& x, const RID_PARENT_ITER& y) {
  return x.p == y.p;
}

bool operator!=(const RID_PARENT_ITER& x, const RID_PARENT_ITER& y) {
  return x.p != y.p;
}


struct IS_EH_RID
{
  bool operator()(const RID* rid) {
    return RID_TYPE_eh(rid);}
};

/* The EH_RANGE and EH_RANGE_LIST classes. */

/* The first three eh_range_kind enumerators correspond to the
 * kinds that appear in the range table.  eh_mask and eh_guard
 * will be replaced by eh_cleanup before the table is created.
 */


enum eh_range_kind {
  ehk_try_block,
  ehk_exc_spec,
  ehk_cleanup,
  ehk_mask,
  ehk_guard,
  ehk_last};

static eh_range_kind Range_Kind(RID * rid)
{
  if (RID_TYPE_try(rid))
    return ehk_try_block;
  if (RID_TYPE_exc_spec(rid))
    return ehk_exc_spec;
  if (RID_TYPE_cleanup(rid))
    return ehk_cleanup;
  if (RID_TYPE_null_cleanup(rid))
    return ehk_cleanup;
  if (RID_TYPE_mask(rid))
    return ehk_mask;
  if (RID_TYPE_guard(rid))
    return ehk_guard;
  return ehk_last;
}

struct EH_RANGE {
// components of range table
  INITO_IDX    	ereg_supp;
  LABEL_IDX     start_label;
  LABEL_IDX     end_label;
  EH_RANGE      *parent;
  eh_range_kind kind;

// bookkeeping items
  RID *		rid;		// for setting parents
  BB		*end_bb;	// for sorting
  EH_RANGE*	id;		// for sorting
  INT32		key;		// for sorting
  INT32		adjustment;	// to adjust parents after compression
  bool		has_call;	// ranges without calls get deleted

// constructor
  EH_RANGE(RID * x):
    ereg_supp(WN_ereg_supp(RID_rwn(x))),
    start_label(LABEL_IDX_ZERO),
    end_label(LABEL_IDX_ZERO),
    parent(NULL),
    kind(Range_Kind(x)),
    rid(x),
    end_bb(NULL),
    id(this),
    key(0),
    adjustment(0),
    has_call(false) {}
};

/* an EH_RANGE_LIST is essentially just a vector of EH_RANGE.  We
 * make it a separate type because it has a tree structure
 * and we want to define a parent iterator on it.
 */

class EH_RANGE_LIST {
private:
  std::vector<EH_RANGE> v;
public:
  EH_RANGE_LIST(): v() {}
  void add_range(EH_RANGE range) {
    v.push_back(range);
  }
  void clear() {v.clear();}
  size_t size() {return v.size();}
  EH_RANGE& operator[](size_t i) {return v[i];}
  typedef std::vector<EH_RANGE>::iterator 	     iterator;
  typedef std::vector<EH_RANGE>::reverse_iterator reverse_iterator;
  iterator begin() {return v.begin();}
  iterator end()   {return v.end();}
  reverse_iterator rbegin() {return v.rbegin();}
  reverse_iterator rend()   {return v.rend();}
  iterator erase(iterator first, iterator last) {
    return v.erase(first, last);}
};

class EH_RANGE_LIST_PARENT_ITER {
private:
  EH_RANGE_LIST::iterator iter;
public:
  typedef std::forward_iterator_tag iterator_category;
  typedef EH_RANGE             value_type;
  typedef ptrdiff_t            difference_type;
  typedef value_type *         pointer;
  typedef value_type &         reference;
  EH_RANGE_LIST_PARENT_ITER(): iter() {}
  EH_RANGE_LIST_PARENT_ITER(EH_RANGE_LIST::iterator x): iter(x) {}
  EH_RANGE& operator*() {return *iter;}
  EH_RANGE_LIST_PARENT_ITER& operator++() {
    iter = EH_RANGE_LIST::iterator(iter->parent);
    return *this;
  }
  EH_RANGE_LIST_PARENT_ITER operator++(int) {
    EH_RANGE_LIST_PARENT_ITER tmp = *this;
    ++*this;
    return tmp;
  }
  friend bool operator==(const EH_RANGE_LIST_PARENT_ITER&,
			 const EH_RANGE_LIST_PARENT_ITER&);
  friend bool operator!=(const EH_RANGE_LIST_PARENT_ITER&,
			 const EH_RANGE_LIST_PARENT_ITER&);
};

inline bool operator==(const EH_RANGE_LIST_PARENT_ITER & x,
		       const EH_RANGE_LIST_PARENT_ITER &y) {
  return x.iter == y.iter;
}

inline bool operator!=(const EH_RANGE_LIST_PARENT_ITER & x,
		       const EH_RANGE_LIST_PARENT_ITER &y) {
  return x.iter != y.iter;
}


/* There is always just one EH_RANGE_LIST which belongs to
 * eh_region.cxx and which is cleared at the beginning of
 * EH_Generate_Range_List.
 */

static EH_RANGE_LIST range_list;

/* We define a function object ADD_EH_RANGE to be passed to
 * for_each as we iterate over the RID using RID_POST_ITER.
 * This will add a range for every EH region.
 */

struct ADD_EH_RANGE {
  void operator()(RID * rid) {
    if (RID_TYPE_eh(rid)) {
      range_list.add_range(rid);
    }
  }
};

/* The function object SET_PARENT finds the nearest ancestor 
 * EH region and sets the parent accordingly.
 */

struct SET_PARENT {
  void operator()(EH_RANGE& r) {
    RID_PARENT_ITER first(r.rid);
    RID_PARENT_ITER last(NULL);
    first = std::find_if(++first, last, IS_EH_RID());
    if (first == last)
      r.parent = NULL;
    else
      r.parent = RID_eh_range_ptr(*first);
  }
};

/* EH_Generate_Range_List does a post-order RID walk to create
 * the range list, then iterates over the range list to set the
 * parent fields.
 */
 
void
EH_Generate_Range_List(WN * pu)
{
  range_list.clear();

  RID * rid = (RID *) WN_MAP_Get(RID_map, pu);
  RID_POST_ITER rid_first(rid);
  RID_POST_ITER rid_last(NULL);

  std::for_each(rid_first, rid_last, ADD_EH_RANGE());

  EH_RANGE_LIST::iterator list_first(range_list.begin());
  EH_RANGE_LIST::iterator list_last (range_list.end());

  for (EH_RANGE_LIST::iterator p = list_first; p!=list_last; p++)
    RID_eh_range_ptr(p->rid) = &(*p);

  std::for_each(list_first, list_last, SET_PARENT());
}


/* Normally EH_Set_Start_Label just creates a label and an
 * associated basic block and sets the start_label field of
 * the designated range accordingly.  This simple picture is
 * complicated by the requirements of guard ranges.  A guard
 * range is required before every mask range to fill up the
 * unused space in the enclosing cleanup region:  otherwise
 * binary search can be foiled and incorrectly attribute an
 * address to a mask region.  So we don't create a new label
 * for a guard range:  instead we use the end label of the
 * elder sibling, if any, and otherwise the start label of the
 * enclosing range.  The function object IS_SIB_RANGE is
 * used to search for the elder sibling.
 */

struct IS_SIB_RANGE {
  const EH_RANGE* me;
  IS_SIB_RANGE(const EH_RANGE * x): me(x) {}
  bool operator()(const EH_RANGE& r) const {
    return (r.rid != me->rid)       &&
           (r.parent == me->parent) &&
           (r.end_label != (LABEL_IDX)NULL);
  }
};


static LABEL_IDX Duplicate_LABEL (LABEL_IDX oldi)
{
	LABEL_IDX lbi;
	LABEL& lab = New_LABEL (CURRENT_SYMTAB, lbi);
	LABEL old = Label_Table[oldi];
	Set_LABEL_name_idx(lab, Save_Str2(LABEL_name(old), ".dup"));
	Set_LABEL_kind(lab, LABEL_kind(old));
	return lbi;
}
void
EH_Set_Start_Label(EH_RANGE* p)
{
  LABEL_IDX label;
  if (p->kind == ehk_guard) {
    EH_RANGE_LIST::reverse_iterator rfirst = range_list.rbegin();
    while (&(*rfirst) != p)
	rfirst++;
    EH_RANGE_LIST::reverse_iterator rlast  = range_list.rend();
    EH_RANGE_LIST::reverse_iterator riter =
      std::find_if(rfirst, rlast, IS_SIB_RANGE(p));
    if (riter == rlast) {
      if (p->parent != NULL) {
	label = Duplicate_LABEL(p->parent->start_label);
     	Set_Label_BB(label, NULL);
      }
    }

    else {
      label = Duplicate_LABEL(riter->end_label);
      Set_Label_BB(label, NULL);
      Set_LABEL_kind(Label_Table[label], LKIND_DEFAULT);
      Set_LABEL_begin_eh_range(label);
    }
    Add_Label(label);
  }

  else {
    label   = Gen_Temp_Label();
    BB * bb = Add_Label(label);
    Set_LABEL_begin_eh_range(label);
  }

  p->start_label = label;
}

/* No complications with EH_Set_End_Label. */

void
EH_Set_End_Label(EH_RANGE* p)
{
  LABEL_IDX label;
  label = Gen_Temp_Label();
  BB * bb    = Add_Label(label);
  p->end_label = label;
  p->end_bb    = bb;
  Set_LABEL_end_eh_range(label);
}

/* Guard regions also complicate EH_Set_Has_Call.  We don't want
 * to eliminate guard regions when they are required by a mask
 * region.  Therefore when we find a call in a mask region, we
 * set has_call in the associated guard region as well.
 */


void EH_Set_Has_Call(EH_RANGE* p)
{
  p->has_call = TRUE;
  if (p->kind == ehk_mask) {
    // set has_call for associated guard region also
    EH_RANGE_LIST::reverse_iterator rfirst = range_list.rbegin();
    while (&(*rfirst) != p)
	rfirst++;
    EH_RANGE_LIST::reverse_iterator rlast  = range_list.rend();
    rfirst = std::find_if(rfirst, rlast, IS_SIB_RANGE(p));
    Is_True(rfirst != rlast && rfirst->kind == ehk_guard,
		      ("mask region must have guard"));
    rfirst->has_call = TRUE;
  }    
}

/*
 * EH_Prune_Range_list has four phases:
 *  (1) The adjustment field of each range is set to the number
 *      of ranges prior to this one which contain no call and
 *      will therefore be eliminated.
 *
 *  (2) The adjustment field of each range is replace by the
 *	adjustment of its parent.
 *
 *  (3) The ranges with no call are eliminated.
 *
 *  (4) The parents are adjusted.
 *
 */


struct HAS_NO_CALL_OR_HAS_NULL_OR_UNREACHABLE_LABEL {
  bool operator()(const EH_RANGE& r) {
    if (Inhibit_EH_opt) return false;
    if (r.has_call && r.start_label != (LABEL_IDX)NULL) {
      BB *start_bb = Get_Label_BB(r.start_label);
      if (start_bb && !BB_unreachable(start_bb)) return false;
    }
    return true;
    }
};

struct SET_ADJUSTMENT {
  INT32 amount;
  SET_ADJUSTMENT(): amount(0) {}
  void operator()(EH_RANGE& r) {
    if (HAS_NO_CALL_OR_HAS_NULL_OR_UNREACHABLE_LABEL()(r)) {
      ++amount;
      if (r.start_label != (LABEL_IDX) NULL)
        Set_LABEL_kind(Label_Table[r.start_label], LKIND_DEFAULT);
      if (r.end_label != (LABEL_IDX) NULL) 
        Set_LABEL_kind(Label_Table[r.end_label], LKIND_DEFAULT);
      Set_ST_is_not_used(INITO_st(r.ereg_supp));
    }
    r.adjustment = amount;
  }
};

struct CLEAR_USED {
  CLEAR_USED() {}
  void operator()(EH_RANGE& r) {
    if (!HAS_NO_CALL_OR_HAS_NULL_OR_UNREACHABLE_LABEL()(r))
      Clear_ST_is_not_used(INITO_st(r.ereg_supp));
  }
};

struct SET_ADJUSTMENT_TO_PARENT_ADJUSTMENT {
  void operator()(EH_RANGE & r) {
    if (r.parent == NULL) {
      r.adjustment = 0;
    }
    else {
      r.adjustment = r.parent->adjustment;
    }
  }
};

struct ADJUST_PARENT {
  void operator()(EH_RANGE&r) {r.parent -= r.adjustment;}
};

// added by winux
struct FIX_PARENT_IF_TO_BE_REMOVED
{
  bool operator() (EH_RANGE& r)
  {
    while (r.parent && HAS_NO_CALL_OR_HAS_NULL_OR_UNREACHABLE_LABEL()(*r.parent))
      r.parent = r.parent->parent;
  }
};
// end added by winux

void
EH_Prune_Range_List(void)
{
  EH_RANGE_LIST::iterator first(range_list.begin());
  EH_RANGE_LIST::iterator last(range_list.end());
  if (first == last) return;
  if (!PU_has_exc_scopes(Get_Current_PU()) && !Inhibit_EH_opt) {
    range_list.erase(first, last);
    return;
  }
  std::for_each  (first, last, FIX_PARENT_IF_TO_BE_REMOVED());	// added by winux
  std::for_each  (first, last, SET_ADJUSTMENT());
  std::for_each  (first, last, CLEAR_USED());
  std::for_each  (first, last, SET_ADJUSTMENT_TO_PARENT_ADJUSTMENT());
  range_list.erase(
    remove_if (first, last, 
               HAS_NO_CALL_OR_HAS_NULL_OR_UNREACHABLE_LABEL()), 
    last);
  std::for_each  (range_list.begin(), range_list.end(), ADJUST_PARENT());
} 

struct COMPARE_RANGES {
  bool operator()(const EH_RANGE& r1, const EH_RANGE& r2) {
    if (r1.key < r2.key) return true;
    if (r1.key > r2.key) return false;
    return r1.id < r2.id;
  }
};

void
reorder_range_list()
{
  BB * bb;
  INT32 bb_count;
  size_t i;

  for (bb = REGION_First_BB, bb_count = 0;
       bb != NULL;
       bb = BB_next(bb), ++bb_count) {
    for (i = 0; i < range_list.size(); ++i) {
      if (range_list[i].end_bb == bb)
	range_list[i].key = bb_count;
      range_list[i].id = &range_list[i];
    }
  }

  EH_RANGE_LIST::iterator first(range_list.begin());
  EH_RANGE_LIST::iterator last (range_list.end());

  stable_sort(first, last, COMPARE_RANGES());

  // reset parent pointers using inverse vector

  std::vector<int> inv(range_list.size());
  for (i = 0; i < range_list.size(); ++i)
    inv[range_list[i].id - &range_list[0]] = i;

  for (i = 0; i < range_list.size(); ++i)
    if (range_list[i].parent != NULL)
      range_list[i].parent = &range_list[0] + 
			     inv[range_list[i].parent - &range_list[0]];
}

struct IS_CLEANUP_RANGE {
  bool operator()(const EH_RANGE& r) const {return r.kind == ehk_cleanup;}
};

struct FIX_MASK_PARENT {
  void operator()(EH_RANGE& r) {
    if (r.kind == ehk_mask) {
      EH_RANGE_LIST_PARENT_ITER first(EH_RANGE_LIST::iterator(r.parent));
      EH_RANGE_LIST_PARENT_ITER last(EH_RANGE_LIST::iterator(NULL));
      first = std::find_if(first, last, IS_CLEANUP_RANGE());
      Is_True(first != last, ("mask region must have cleanup ancestor"));
      r.parent = (*first).parent;
    }
  }
};

struct CHANGE_MASK_OR_GUARD_TO_CLEANUP {
  void operator()(EH_RANGE& r) {
    if (r.kind == ehk_mask || r.kind == ehk_guard)
      r.kind = ehk_cleanup;
    }
};

static void
fix_mask_ranges(void)
{
  /*
   * For mask regions the parent pointers need to be readjusted.
   * This needs to be done from the outside in, so we traverse the
   * range table in reverse.  For every mask region, we follow the 
   * parent pointers till we encounter a cleanup region, then set
   * the parent to the parent of that cleanup region. Then we make
   * a second pass and replace eh_mask by eh_cleanup.
   */

  EH_RANGE_LIST::reverse_iterator rfirst(range_list.rbegin());
  EH_RANGE_LIST::reverse_iterator rlast (range_list.rend());

  std::for_each(rfirst, rlast, FIX_MASK_PARENT());
  std::for_each(range_list.begin(), range_list.end(),
	   CHANGE_MASK_OR_GUARD_TO_CLEANUP());
}

static ST * eh_pu_range_st;

extern ST* EH_Get_PU_Range_ST(void)
{
  return eh_pu_range_st;
}

inline BOOL Use_Long_EH_Range_Offsets(void)
{
  return Force_Long_EH_Range_Offsets ||
	 PU_WN_BB_Cnt + PU_WN_Stmt_Cnt > 2000;
}

static ST*
ST_For_Range_Table(WN * wn)
{
  ST * pu = WN_st(wn);
  ST * st;

  // Size:
  // header_size + number_of_ranges * range_size
  // range_size: size of
  //	one pointer 	      (ereg_supp)
  //    one offset into table (parent)
  //    two bytes             (kind)
  //    two offsets	      (low and high, 2 or 4 bytes each)

  UINT32 header_size = 8;
  UINT32 number_of_ranges = range_list.size();
  UINT32 parent_size = 2;
  UINT32 kind_size   = 2;
  UINT32 offset_size = Use_Long_EH_Range_Offsets() ? 4 : 2;
  UINT32 range_size = Pointer_Size + parent_size + kind_size + 
		      2 * offset_size;
  UINT32 size = header_size + number_of_ranges * range_size;

  size = 0;// added by winux

  TY_IDX tyi;
  TY& ty = New_TY(tyi);
  TY_Init(ty, size, KIND_STRUCT, MTYPE_M,
	  Save_Str2(".range_table.",ST_name(pu)));
  Set_TY_align(tyi, 4);
  st = New_ST(CURRENT_SYMTAB);
  ST_Init(st, TY_name_idx(ty),
	  CLASS_VAR, SCLASS_EH_REGION, EXPORT_LOCAL, tyi);
  Set_ST_is_initialized(st);
  Allocate_Object(st);
  return st;
}

#define SHORT_OFFSETS  0
#define LONG_OFFSETS   1
#define HEADER_VERSION 1

inline INT16 parent_offset(INT32 i)
{
  if (range_list[i].parent == NULL)
    return 0;
  else
    return (INT16) (range_list[i].parent - &range_list[i]);
}

// added by winux
#include <map>
#include <set>
typedef std::map< ST_IDX, int > 	TF_MAP;		// <type_ST_IDX, filter>
typedef std::map< int, ST_IDX > 	FT_MAP; 	// <filter, type_ST_IDX>
typedef std::set< ST_IDX >      	EH_PTS; 	// eh pic type set

static void
EH_Build_PIC_Type(ST_IDX idx)
{
  static EH_PTS pts;
  if (pts.find(idx) != pts.end())	
    return;
  pts.insert(idx);

  ST* st = &St_Table[idx];
  ST* pst = New_ST(GLOBAL_SYMTAB);
  STR_IDX pname = Save_Str2 ("DW.ref.", ST_name (st));
  ST_Init(pst, pname, CLASS_VAR, SCLASS_DGLOBAL, EXPORT_HIDDEN, MTYPE_TO_TY_array[MTYPE_U8]);
  Set_ST_is_weak_symbol (pst);
  Set_ST_is_initialized (pst);
  
  ST_ATTR_IDX st_attr_idx;
  ST_ATTR&    st_attr = New_ST_ATTR(GLOBAL_SYMTAB, st_attr_idx);
  ST_ATTR_Init(st_attr, ST_st_idx(pst), ST_ATTR_SECTION_NAME, 
               Save_Str2 (".gnu.linkonce.d.", ST_name(pst)));
                                                                                
  INITV_IDX iv = New_INITV();
  INITV_Init_Symoff(iv, st, 0, 1);
  New_INITO (ST_st_idx(pst), iv);
  Assign_ST_To_Named_Section (pst, ST_ATTR_section_name (st_attr));
}

static int
Get_EH_Filter_By_Type(ST_IDX idx, TF_MAP& tfmap)
{
  TF_MAP::iterator it;
  it = tfmap.find(idx);
  return (it != tfmap.end()) ? it->second : 0;
}

static ST_IDX
Get_EH_ST_By_Filter(int filter, FT_MAP& ftmap)
{
  FT_MAP::iterator it;
  it = ftmap.find(filter);
  return (it != ftmap.end() ? it->second : 0);
}

// return max_filter
static int
Convert_TF_Map_To_FT_Map(TF_MAP& src, FT_MAP& dst)
{
  TF_MAP::iterator it;
  int filter = 0;
  
  dst.clear();
  for (it = src.begin(); it != src.end(); it++)
  {
    dst.insert(std::make_pair(it->second, it->first));
    if (it->second > filter) filter = it->second;
  }
  return filter;
}

static INITV_IDX
Get_TF_Map_and_EH_Spec_List(PU& pu, TF_MAP& tfmap)
{
  INITO_IDX ino_idx = pu.unused;
  tfmap.clear();

  if (ino_idx == INITO_IDX_ZERO) {
    return INITV_IDX_ZERO;
  }

  INITV_IDX exc_ptr_iv = INITO_val(ino_idx);
  INITV_IDX filter_iv  = INITV_next(exc_ptr_iv);
  INITV_IDX tinfo      = INITV_next(filter_iv);
  INITV_IDX eh_spec    = INITV_next(tinfo);

  INITO_IDX id  = TCON_uval(INITV_tc_val(tinfo));

  // tfmap init
  if (id != INITO_IDX_ZERO) {
    ST *st = INITO_st(id);
    INITV_IDX blk = INITO_val(id);

    while (blk != INITV_IDX_ZERO) {
      INITV_IDX type_st_iv = INITV_blk(blk);
      int filter = TCON_ival(INITV_tc_val(INITV_next(type_st_iv)));
      ST_IDX    type_st_idx = 0;
      if (INITVKIND_ZERO != INITV_kind(type_st_iv))
        type_st_idx = TCON_uval(INITV_tc_val(type_st_iv));

      if (/*(Gen_PIC_Call_Shared || Gen_PIC_Shared) &&*/ type_st_idx != 0)
        EH_Build_PIC_Type(type_st_idx);
      tfmap.insert(std::make_pair(type_st_idx, filter));
      blk = INITV_next(blk);
    }
  }

  // eh_spec blk list
  id = TCON_uval(INITV_tc_val(eh_spec));
  return (id != 0) ? INITV_blk(INITO_val(id)) : INITV_IDX_ZERO;
}

static void
Print_EH_Range(EH_RANGE& range, FILE* fp)
{
  fprintf(fp, "==== EH_RANGE %p ====\n", &range);
  fprintf(fp, "\t.kind        = %d\n", (int)range.kind);
  fprintf(fp, "\t.ereg_supp   = %d\n", (int)range.ereg_supp);
  fprintf(fp, "\t.has_call    = %d\n", (int)range.has_call);
  fprintf(fp, "\t.start_label = %d (%d)(%s)\n", (int)range.start_label,
	Label_Table[range.start_label].kind, LABEL_name(Label_Table[range.start_label]));
  fprintf(fp, "\t.end_label   = %d (%d)(%s)\n", (int)range.end_label,
	Label_Table[range.end_label].kind, LABEL_name(Label_Table[range.end_label]));
  fprintf(fp, "\t.parent      = %p\n", range.parent);
  
  if (range.ereg_supp == 0)	return;
  INITV_IDX blk = INITO_val(range.ereg_supp);
  fprintf(fp, "%3d.\t.ereg_supp(INITO).INITV.kind = %d", blk, (int)INITV_kind(blk));
  if (INITV_kind(blk) == INITVKIND_LABEL) {
    LABEL& lab = Label_Table[INITV_lab(blk)];
    fprintf(fp, ", lab:%d (%d)(%s),", INITV_lab(blk), lab.kind, LABEL_name(lab));
  }
  fprintf(fp, "\n");
  
  if (INITV_kind(blk) != INITVKIND_BLOCK)  return;

  fprintf(fp, "\t.ereg_supp(INITO).INITV.kind = block, action info:\n");
  INITV_IDX first = INITV_blk(blk);
  for (INITV_IDX tmp = first; tmp; tmp = INITV_next(tmp)) {
    fprintf(fp, "\t\t.INITV.kind = %d", (int)INITV_kind(tmp));
    if (INITV_kind(tmp) == INITVKIND_LABEL) {
      LABEL& lab = Label_Table[INITV_lab(tmp)];
      fprintf(fp, ", lab:%d (%d)(%s),", INITV_lab(tmp), lab.kind, LABEL_name(lab));
    }
    if (INITV_kind(tmp) == INITVKIND_VAL) {
      int sym = TCON_ival(INITV_tc_val(tmp));
      fprintf(fp, ", val:0x%08x", sym);
    }
    fprintf(fp, "\n");
  }
}

static void
Print_PU_EH_Entry(PU& pu, ST* pu_st, FILE* fp)
{
  INITO_IDX ino_idx = pu.unused;
/*
.unused (INITO) = <etable (ST), exc_ptr_iv (INITV)>
			--> exc_ptr_iv(__Exc_Ptr__)			(ST_IDX)
			--> filter_iv (___Exc_Filter__)			(ST_IDX)
			--> tinfo (type filter entry, 0 if none)	(INITO_IDX)
			--> eh_spec (eh spec, 0 if none)		(INITO_IDX)
*/
  fprintf(fp, "==== EH ENTRY INFO for %s ====\n", ST_name(pu_st));
  if (ino_idx == INITO_IDX_ZERO) {
    fprintf(fp, "\tno eh entry\n");
    return;
  }

  INITV_IDX exc_ptr_iv = INITO_val(ino_idx);
  INITV_IDX filter_iv  = INITV_next(exc_ptr_iv);
  INITV_IDX tinfo      = INITV_next(filter_iv);
  INITV_IDX eh_spec    = INITV_next(tinfo);

/*	id (INITO) = <typeinfo (ST), start (INITV)> (this is stored in tinfo)
	-->	[blk <typest --> filter>]+
*/
  INITO_IDX id 	= TCON_uval(INITV_tc_val(tinfo));
  ST*	    st;
  INITV_IDX blk;
 
  if (id != 0) {
    st  = INITO_st(id);
    blk = INITO_val(id);
  
    fprintf(fp, "\t.tinfo list:\n");
    while (blk != INITV_IDX_ZERO) {
      INITV_IDX type_st_iv = INITV_blk(blk);
      int filter = TCON_ival(INITV_tc_val(INITV_next(type_st_iv)));
      ST_IDX    type_st_idx = 0;
      if (INITVKIND_ZERO != INITV_kind(type_st_iv))
        type_st_idx = TCON_uval(INITV_tc_val(type_st_iv));

      fprintf(fp, "\t\tST_IDX = 0x%08x [%s (%d)], filter = %d\n", type_st_idx,
              type_st_idx ? ST_name(&St_Table[type_st_idx]) : "*ALL*", 
 	      type_st_idx ? (int)(!ST_is_not_used(&St_Table[type_st_idx])) : 0,
	      filter);
      blk = INITV_next(blk);
    }
  }
  else
    fprintf(fp, "\t.tinfo list: <none>\n");
   
/*	id (INITO) = <eh_spec (ST), start (INITV)>  (this is stored in eh_spec)
	-->block	[ st]+
*/  
  id = TCON_uval(INITV_tc_val(eh_spec));
  if (id != 0) {
    st  = INITO_st(id);
    blk = INITO_val(id);

    fprintf(fp, "\t.eh_spec list:\n");
    FmtAssert (INITV_kind(blk) == INITVKIND_BLOCK, ("root initv for eh_spec must be block"));
    INITV_IDX type_st_iv = INITV_blk(blk);
    while (type_st_iv != INITV_IDX_ZERO) {
      ST_IDX    type_st_idx = 0;
      if (INITVKIND_ZERO == INITV_kind(type_st_iv))
	      break;
      
      type_st_idx = TCON_uval(INITV_tc_val(type_st_iv));
      fprintf(fp, "\t\t0x%08x [%s]\n", type_st_idx, 
              type_st_idx ? ST_name(&St_Table[type_st_idx]):"*END*");
      type_st_iv = INITV_next(type_st_iv);
    }
  }
  else
    fprintf(fp, "\t.eh_spec list: <none>\n");  
}

static int
sizeof_signed_leb128 (int value)
{
  char buff[ENCODE_SPACE_NEEDED];
  int size;
  int res = _dwarf_pro_encode_signed_leb128_nm (value, &size, buff, sizeof(buff));
  FmtAssert (res == DW_DLV_OK, ("Encoding for exception table failed"));
  return size;
}

static void
INITV_Init_Integer_2(INITV_IDX inv, TYPE_ID mtype, INT64 val, UINT16 repeat)
{
    if (val == 0)
	INITV_Set_ZERO (Initv_Table[inv], mtype, repeat);
    else {
    	TCON tc  = Host_To_Targ (mtype, val);
    	INITV_Set_VAL (Initv_Table[inv], Enter_tcon(tc), repeat);
    }
}


static void
Check_Initv(INITV_IDX idx, FILE* fp)
{
  if (idx == 0) return;
  fprintf(fp, "idx = %d, type = %d, val = %d\n", (int)idx, (int)INITV_kind(idx),
      (INITV_kind(idx) == INITVKIND_VAL ? TCON_ival(INITV_tc_val(idx)) : -1));
  FmtAssert(INITVKIND_UNK != INITV_kind(idx), ("INITV.kind = UNKNOWN\n"));
  if (INITVKIND_BLOCK == INITV_kind(idx))
    Check_Initv(INITV_blk(idx), fp);
  Check_Initv(INITV_next(idx), fp);
}

static INITO* eh_pu_range_inito = NULL;
INITO*
EH_Get_PU_Range_INITO(bool bSetNull)
{
  INITO* ret = eh_pu_range_inito;
  if (bSetNull == true)
    eh_pu_range_inito = NULL;
  return ret;
}

#define THU_EH_IMP 1
static void
Create_INITO_For_Range_Table(ST * st, ST * pu)
{
#if (THU_EH_IMP == 1)
  TF_MAP tfmap;
  FT_MAP ftmap;
  INITV_IDX eh_spec_iv = Get_TF_Map_and_EH_Spec_List(Get_Current_PU(), tfmap);
  INITO_IDX inito = New_INITO(st);
  INITV_IDX inv_blk = New_INITV();
  INITV_IDX inv, prev_inv, cinv, inv_action, backup;
  int act_offset = 1;	// biased by 1

  eh_pu_range_inito = &Inito_Table[inito];

  Print_PU_EH_Entry(Get_Current_PU(), pu, stdout);

  /*
  inito-> inv_blk -> list of INITVs (start with inv)

  [inv]			-> mark where action table starts
  call-site-table-initvS
  [inv-action]		-> mark where type table starts
  action-table-initvS
  [cinv]		-> mark where eh-spec table starts
  single-type-table	
  eh-spec-table		
  */
  Set_INITO_val(inito, inv_blk);
  inv = New_INITV();
  INITV_Init_Block(inv_blk, inv);

#define WINUX_ALLOC_INV(inv) 	\
  prev_inv = inv;		\
  inv = New_INITV();		\
  Set_INITV_next(prev_inv, inv);

  // prepare action table, start with cinv
  inv_action = cinv = New_INITV();
  INITV_Init_Integer_2(inv, MTYPE_U4, inv_action, 1);	// mark where action table start:)

  // call-site table and action table  
  for (INT32 i = 0; i < range_list.size(); i++) {
    EH_RANGE& range = range_list[i];
    Print_EH_Range(range, stdout);

    if (range.ereg_supp == 0)	continue;
    ST* st = INITO_st(range.ereg_supp);
    if (ST_is_not_used(st)) 	continue;

    Set_ST_is_not_used(st);
    INITV_IDX blk = INITO_val(range.ereg_supp);
    if (INITV_kind(blk) != INITVKIND_BLOCK) {
	    Set_ST_is_not_used(st);
	    continue;
    }
    FmtAssert(INITV_kind(blk) == INITVKIND_BLOCK, 
		    ("eh_range.ereg_supp.inito.initv.kind != block, %d\n", INITV_kind(blk)));
    
    INITV_IDX first = INITV_blk(blk);
   
/*
struct CallSiteRecord
{
char*	cs_start; //	offset to Start IP of current proc
char*	cs_len;	  //	length to the next call-site?
char*	cs_lp;	  //	ladding pad offset to lpStart
char*	cs_action;// the first action table offset (biased by 1, 0 indicates there are no actions)
};
*/  // call-site record
 
    // cs_start
    WINUX_ALLOC_INV(inv)
    INITV_Init_Symdiff(inv, range.start_label, pu, !Use_Long_EH_Range_Offsets());

    // cs_len (we have to init two labels instead of Symdiff
    WINUX_ALLOC_INV(inv)
    INITV_Init_Label(inv, range.start_label, 1);
    WINUX_ALLOC_INV(inv)
    INITV_Init_Label(inv, range.end_label, 1);

    // cs_lp
    WINUX_ALLOC_INV(inv)
    bool bHasLandingPad = true;
    if (INITV_kind(first) == INITVKIND_LABEL) {
      INITV_Init_Symdiff(inv, INITV_lab(first), pu, !Use_Long_EH_Range_Offsets());
    }
    else {	// no landing pad
      INITV_Init_Integer_2(inv, MTYPE_U4, 0, 1);
      bHasLandingPad = false;
    }

    // cs_action pointer
    WINUX_ALLOC_INV(inv)
    INITV_Init_Integer_2(inv, MTYPE_U4, act_offset, 1);

/*
struct	ActionRecord
{
uint16	ar_filter;	
// 0, cleanup, 
// >0, exception handler, ar_filter is an index to the type table, ttType.
// <0, exception specification, ar_filter is a offset to the type list table, ttType
// for example, throw (B,C)then ar_filter = -1, ttType[-1] = (2,3,0), ttType[2] = B, ttType[3] = C.
uint16	ar_disp;	
// next action record = &ar_disp + ar_disp (if ar_disp != 0)
};
*/  // action record
    int ar_count = 0;
    bool bNeedCleanup = false;
    for (INITV_IDX next = INITV_next(first); next; next = INITV_next(next)) {
      // begin write action record (cinv, next)
      int filter = 0;
      if (INITVKIND_ZERO != INITV_kind(next))
	filter = TCON_ival(INITV_tc_val(next));

      if (filter > 0) { // handler
        filter = Get_EH_Filter_By_Type(filter, tfmap);
	FmtAssert(bHasLandingPad, ("Landing pad must exist for handler."));
      }
      else if (filter < 0) {// eh-spec 
      } 
      else {  // filter = 0, eh-spec or catch-all or cleanup?
        if (INITV_next(next)) {
          INITV_IDX next_tmp = INITV_next(next);
          if (INITVKIND_VAL == INITV_kind(next_tmp))
            if (TCON_ival(INITV_tc_val(next_tmp)) < 0) { // eh-spec
              continue;	// omit current mark (0)
            }
        }

	if (bHasLandingPad == false) continue;

        // catch all or clean-up
	// FmtAssert(bHasLandingPad, ("Landing pad must exist for catch-all or cleanup."));
	filter = Get_EH_Filter_By_Type(filter, tfmap);
        if (filter == 0) {
		bNeedCleanup = true;
		continue; // cleanup
	}
      }

      ar_count++;
      WINUX_ALLOC_INV(cinv)
      INITV_Init_Integer_2(cinv, MTYPE_I4, filter, 1); // ar_filter
      
      WINUX_ALLOC_INV(cinv)
      if (INITV_next(next) == 0) {
	INITV_Init_Integer_2(cinv, MTYPE_I4, 0, 1); // ar_next
      }
      else {
	INITV_Init_Integer_2(cinv, MTYPE_I4, 1, 1);
      } 
      act_offset += sizeof_signed_leb128(filter) + 1;
      // end write action record
    } // end action record .for

    if (bNeedCleanup && ar_count) {
      FmtAssert(bHasLandingPad, ("Landing pad must exist for cleanup"));
      INITV_Init_Integer_2(cinv, MTYPE_I4, 1, 1);	// reset ar_next, not finished yet
      
      WINUX_ALLOC_INV(cinv)
      INITV_Init_Integer_2(cinv, MTYPE_I4, 0, 1);	// ar_filter
      WINUX_ALLOC_INV(cinv)
      INITV_Init_Integer_2(cinv, MTYPE_I4, 0, 1);    	// ar_next, end of action record list

      act_offset += 2;
    }
    if (ar_count == 0)
      INITV_Init_Integer_2(inv, MTYPE_U4, 0, 1);
    else
      INITV_Init_Integer_2(cinv, MTYPE_U4, 0, 1);
      
  } // end range_list.for

  Set_INITV_next(inv, inv_action);

  WINUX_ALLOC_INV(cinv)
  backup = INITV_next(inv_action);
  INITV_Init_Integer_2(inv_action, MTYPE_U4, cinv, 1); // mark where type table start:)
  Set_INITV_next(inv_action, backup);
  inv_action = cinv;

  // single-type table
  int maxft = Convert_TF_Map_To_FT_Map(tfmap, ftmap);
  for (int i=maxft; i >= 1; i--) {
    ST_IDX ix = Get_EH_ST_By_Filter(i, ftmap);
    WINUX_ALLOC_INV(cinv)
    INITV_Init_Integer_2(cinv, MTYPE_U4, ix, 1); 	// ST_IDX
  }
/*  
  TF_MAP::iterator it;
  for (it = tfmap.begin(); it != tfmap.end(); it++) {
    WINUX_ALLOC_INV(cinv)
    INITV_Init_Integer_2(cinv, MTYPE_U4, it->first, 1); // ST_IDX
  }
*/
  WINUX_ALLOC_INV(cinv)
  backup = INITV_next(inv_action);
  INITV_Init_Integer_2(inv_action, MTYPE_U4, cinv, 1); // mark where eh-spec-table starts;0
  Set_INITV_next(inv_action, backup);
  INITV_Init_Integer_2(cinv, MTYPE_U4, cinv, 1);

  // eh-spec table
  int eh_filter = 0;
  for (INITV_IDX next = eh_spec_iv; next; next = INITV_next(next)) {
    WINUX_ALLOC_INV(cinv)
    eh_filter = 0;
    if (INITVKIND_ZERO != INITV_kind(next)) {
      eh_filter = Get_EH_Filter_By_Type(TCON_ival(INITV_tc_val(next)), tfmap);
    }
    INITV_Init_Integer_2(cinv, MTYPE_I4, eh_filter, 1);
  }
  if (eh_filter != 0) {
    WINUX_ALLOC_INV(cinv)
    INITV_Init_Integer_2(cinv, MTYPE_I1, 0, 1);
  }
#undef WINUX_ALLOC_INV

#else
  INITO_IDX inito = New_INITO(st);
  INITV_IDX inv_blk = New_INITV ();
  INITV_IDX inv;
  INITV_IDX prev_inv;

  // create block of blocks
  prev_inv = Append_INITV (inv_blk, inito, INITV_IDX_ZERO);
  inv_blk = New_INITV ();
  INITV_Init_Block(prev_inv, inv_blk);
  // header: pad(31), short/long(1), version(16), count(16)
  inv = New_INITV ();
  INITV_Init_Integer (inv, MTYPE_I4, 
               	         (Use_Long_EH_Range_Offsets() ? LONG_OFFSETS 
						      : SHORT_OFFSETS) );
  INITV_Init_Block (inv_blk, inv);
  prev_inv = inv;
  inv = New_INITV ();
  INITV_Init_Integer (inv, MTYPE_I2, HEADER_VERSION);
  prev_inv = Append_INITV(inv, INITO_IDX_ZERO, prev_inv);
  inv = New_INITV ();
  INITV_Init_Integer (inv, MTYPE_I2, range_list.size());
  prev_inv = Append_INITV(inv, INITO_IDX_ZERO, prev_inv);

  for (INT32 i = 0; i < range_list.size(); i++) {
    /* block for each range */
    inv_blk = Append_INITV (New_INITV (), INITO_IDX_ZERO, inv_blk);
    // supp(32), parent(16), pad(14), kind(2), low(16/32), high(16/32)
    inv = New_INITV();
    if (range_list[i].ereg_supp == 0)
        INITV_Init_Integer (inv, MTYPE_I4, 0);
    else
        INITV_Init_Symoff (inv, INITO_st(range_list[i].ereg_supp), 0);
    INITV_Init_Block (inv_blk, inv);
    prev_inv = inv;
    inv = New_INITV();
    INITV_Init_Integer (inv, MTYPE_I2, parent_offset(i));
    prev_inv = Append_INITV(inv, INITO_IDX_ZERO, prev_inv);
    inv = New_INITV();
    INITV_Init_Integer (inv, MTYPE_I2, range_list[i].kind);
    prev_inv = Append_INITV(inv, INITO_IDX_ZERO, prev_inv);
    inv = New_INITV();
    INITV_Init_Symdiff (inv, range_list[i].start_label,
			   pu, !Use_Long_EH_Range_Offsets());
    prev_inv = Append_INITV(inv, INITO_IDX_ZERO, prev_inv);
    inv = New_INITV();
    INITV_Init_Symdiff (inv, range_list[i].end_label,
			   pu, !Use_Long_EH_Range_Offsets());
    prev_inv = Append_INITV(inv, INITO_IDX_ZERO, prev_inv);
  }
#endif
}

void 
EH_Write_Range_Table(WN * wn)
{
  if (range_list.size() == 0) {
    eh_pu_range_st = NULL;
    return;
  }
  fix_mask_ranges();
  reorder_range_list();

  ST * st = ST_For_Range_Table(wn);
  eh_pu_range_st = st;
  Create_INITO_For_Range_Table(st, WN_st(wn));  
}

void print_label(LABEL_IDX label)
{
  Label_Table[label].Print(stderr);
}
