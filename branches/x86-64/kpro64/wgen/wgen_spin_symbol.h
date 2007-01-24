/*
 * Copyright (C) 2006. QLogic Corporation. All Rights Reserved.
 */

/* 
   Copyright 2003, 2004, 2005, 2006 PathScale, Inc.  All Rights Reserved.
   File modified June 20, 2003 by PathScale, Inc. to update Open64 C/C++ 
   front-ends to GNU 3.2.2 release.
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


/* translate gnu decl trees to symtab references */

#ifndef spin_symtab_INCLUDED
#define spin_symtab_INCLUDED

extern TY_IDX Create_TY_For_Tree (gs_t, TY_IDX idx = TY_IDX_ZERO);
extern "C" ST* Create_ST_For_Tree (gs_t);
extern "C" void Create_DST_For_Tree (gs_t, ST*);

TY_IDX& TYPE_TY_IDX(gs_t);
extern "C" void add_duplicates (gs_t, gs_t);
extern "C" void erase_duplicates (gs_t);
void set_DECL_ST(gs_t, ST*);
ST*& get_DECL_ST(gs_t);
BOOL& expanded_decl(gs_t);
BOOL& func_PU_uplevel(gs_t);
#define DECL_ST(x)	get_DECL_ST(x)
SYMTAB_IDX& DECL_SYMTAB_IDX(gs_t);
LABEL_IDX& DECL_LABEL_IDX(gs_t);
ST*& TREE_STRING_ST(gs_t);
BOOL& DECL_LABEL_DEFINED(gs_t);
INT32& DECL_FIELD_ID(gs_t);
INT32& TYPE_FIELD_IDS_USED(gs_t);
INT32& SCOPE_NUMBER(gs_t);
gs_t& LABEL_SCOPE(gs_t);
DST_INFO_IDX& DECL_DST_IDX(gs_t);
DST_INFO_IDX& DECL_DST_FIELD_IDX(gs_t);
DST_INFO_IDX& TYPE_DST_IDX(gs_t);
DST_INFO_IDX& DECL_DST_SPECIFICATION_IDX(gs_t);
DST_INFO_IDX& DECL_DST_ABSTRACT_ROOT_IDX(gs_t);
LABEL_IDX& HANDLER_LABEL(gs_t);
#ifdef KEY
gs_t& PARENT_SCOPE(gs_t);
INT32& WEAK_WORKAROUND(ST*);
#endif
ST* & DECL_ST2(gs_t);

extern BOOL flag_no_common;

#ifdef KEY
// States for tracking whether we want to make a symbol weak as a workaround
// for emitting all symbols referenced in cleanup code.
#define WEAK_WORKAROUND_unknown		0
#define WEAK_WORKAROUND_dont_make_weak	1
#define WEAK_WORKAROUND_made_weak	2
#endif

/* 
 * either return a previously created TY_IDX associated with a type,
 * or create a new one.
 */
inline TY_IDX
Get_TY (gs_t type_tree)
{
#ifdef KEY
	// If the type is a nested record and we are generating DSTs, then
	// create the type for the enclosing record first, so that the current
	// record can be specified as a child of the parent in the DST.
	// Bug 4168.
	if (gs_type_context(type_tree) &&
	    (gs_tree_code(type_tree) == GS_RECORD_TYPE ||
	     gs_tree_code(type_tree) == GS_UNION_TYPE) &&
	    (gs_tree_code(gs_type_context(type_tree)) == GS_RECORD_TYPE ||
	     gs_tree_code(gs_type_context(type_tree)) == GS_UNION_TYPE) &&
	    !TYPE_TY_IDX(gs_type_context(type_tree))) {
	  Get_TY(gs_type_context(type_tree));	// get type for parent record
	}
#endif
	TY_IDX idx = TYPE_TY_IDX(type_tree);
        if (idx > 1) {
	    if (gs_tree_code(type_tree) == GS_RECORD_TYPE ||
	        gs_tree_code(type_tree) == GS_UNION_TYPE) {
	      FLD_HANDLE elt_fld = TY_fld(idx);
	      if (elt_fld.Is_Null() && TY_content_seen(idx) == 0)
		return Create_TY_For_Tree (type_tree, idx); // forward declared
	      else return idx;
	    }
	    else return idx;
        }
	return Create_TY_For_Tree (type_tree, TY_IDX_ZERO);
}

/*
 * either return a previously created ST associated with a
 * var-decl/parm-decl/function_decl, or create a new one.
 */
inline ST *
Get_ST (gs_t decl_tree)
{
	ST *st = DECL_ST(decl_tree);
        if (st != NULL) {
		if (gs_tree_code(decl_tree) == GS_VAR_DECL &&
		    ST_sclass(st) == SCLASS_EXTERN   &&
		    !ST_is_weak_symbol(st) &&
		    !gs_decl_external(decl_tree)        &&
		    !gs_decl_initial(decl_tree)
#if 1 // wgen, bug 10324
		     &&
		    gs_tree_static(decl_tree)
#endif
		    )
		{
		    if (flag_no_common || gs_decl_section_name(decl_tree))
			Set_ST_sclass (st, SCLASS_UGLOBAL);
		    else {
		      if (Debug_Level >= 2) { 
			  // Bug 6183 
			  // If this symbol was declared extern before and 
			  // later instantiated in this file, then we need to 
			  // create a DST entry now.
		          Create_DST_For_Tree(decl_tree, st);
			}
		      Set_ST_sclass (st, SCLASS_COMMON);
		    }
		}
#ifdef KEY // the earlier definition may not have the complete type
		if (gs_tree_code(decl_tree) == GS_VAR_DECL) {
		  TY_IDX ty_idx = Get_TY(gs_tree_type(decl_tree));
		  if (ty_idx && TY_IDX_index(ty_idx) != TY_IDX_index(st->u2.type)) {
		    // Preserve volatile.
		    if (TY_is_volatile(ST_type(st)))
		      Set_TY_is_volatile(ty_idx);
		    st->u2.type = ty_idx;
		  }
		}
#endif
        }
	else st = Create_ST_For_Tree (decl_tree);
	if ((CURRENT_SYMTAB > GLOBAL_SYMTAB + 1) &&
	    ((gs_tree_code(decl_tree) == GS_VAR_DECL) ||
	     (gs_tree_code(decl_tree) == GS_PARM_DECL)) &&
	    (ST_level(st) < CURRENT_SYMTAB) &&
	    (ST_level(st) > GLOBAL_SYMTAB)) {
		Set_ST_has_nested_ref (st);
		ST *base_st = st;
		while (base_st != ST_base (base_st)) {
			base_st = ST_base (base_st);
			Set_ST_has_nested_ref (base_st);
		}
	}
	return st;
}

bool is_empty_base_class (gs_t type_tree);
gs_t next_real_field (gs_t type_tree, gs_t field);
gs_t get_first_real_or_virtual_field (gs_t);
size_t Roundup (size_t offset, int alignment);
size_t Type_Size_Without_Vbases (gs_t type_tree);

#endif
