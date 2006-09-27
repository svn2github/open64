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

#include <values.h>
#include "defs.h"
#include "errors.h"
#include "gnu_config.h"
#include "gnu/flags.h"
extern "C" {
#include "gnu/system.h"
#include "gnu/tree.h"
#include "cp-tree.h"
}
#undef TARGET_PENTIUM // hack around macro definition in gnu
#include "symtab.h"
#include "strtab.h"
#include "wn.h"
#include "wfe_expr.h"
#include "wfe_decl.h"
#include "wfe_misc.h"
#include "wfe_dst.h"
#include "ir_reader.h"
#include "tree_symtab.h"

/* extern */ INT pstatic_as_global = 1;
extern FILE *tree_dump_file; /* for debugging */
extern void Push_Deferred_Function(tree);


static char*
Get_Name (tree node)
{
	static UINT anon_num = 0;
	static char buf[64];

	if (node == NULL) {
		++anon_num;
		sprintf(buf, ".anonymous.%d", anon_num);
		return buf;
	}
	else if (TREE_CODE (node) == IDENTIFIER_NODE)
		return ((char *) IDENTIFIER_POINTER (node));
	else if (TREE_CODE (node) == TYPE_DECL)
		// If type has a typedef-name, the TYPE_NAME is a TYPE_DECL.
		return ((char *) IDENTIFIER_POINTER (DECL_NAME (node)));
	else
		FmtAssert(FALSE, ("Get_Name unexpected tree"));
		return NULL;
}

static void
dump_field(tree field)
{
  printf("%s:  ", Get_Name(DECL_NAME(field)));
  printf("%d\n", DECL_FIELD_ID(field));
}


tree
next_real_or_virtual_field (tree type_tree, tree field)
{
  static bool real_field = true;

  if (field == TYPE_VFIELD(type_tree))
    real_field = false;

  if (TREE_CHAIN(field))
    return TREE_CHAIN(field);
  
  if (real_field && TYPE_VFIELD(type_tree)) {
    real_field = false;
    return TYPE_VFIELD(type_tree);
  }

  real_field = true;
  return NULL_TREE;
}

static void
Do_Base_Types (tree type_tree)
{
  tree binfo = TYPE_BINFO(type_tree);
  tree basetypes = binfo ? BINFO_BASETYPES(binfo) : 0;
  INT32 i;
  if (basetypes)
    for (i = 0; i < TREE_VEC_LENGTH(basetypes); ++i)
      (void) Get_TY (BINFO_TYPE(TREE_VEC_ELT(basetypes, i)));
}

size_t 
Roundup (size_t offset, int alignment)
{
  return (offset % alignment) ? offset + alignment - offset % alignment
			      : offset;
}

size_t
Type_Size_Without_Vbases (tree type_tree)
{
  tree field;
  tree last_field_decl = 0;

  for (field = TYPE_FIELDS(type_tree);
       field;
       field = next_real_or_virtual_field (type_tree, field)) {
    if (TREE_CODE(field) == FIELD_DECL)
      last_field_decl = field;
  }

  if (last_field_decl == 0)
    return 0;

  return
    Get_Integer_Value (DECL_FIELD_OFFSET(last_field_decl))  		     +
    Get_Integer_Value (DECL_FIELD_BIT_OFFSET(last_field_decl)) / BITSPERBYTE +
    Get_Integer_Value (DECL_SIZE(last_field_decl)) / BITSPERBYTE;
} 

bool
is_empty_base_class (tree type_tree)
{
  tree field = TYPE_FIELDS(type_tree);
  return TREE_CODE(field) == TYPE_DECL && TREE_CHAIN(field) == 0;
}

// idx is non-zero only for RECORD and UNION, when there is forward declaration
extern TY_IDX
Create_TY_For_Tree (tree type_tree, TY_IDX idx)
{

	if(TREE_CODE(type_tree) == ERROR_MARK)
	   return idx;

	TY_IDX orig_idx = idx;
	if(TREE_CODE_CLASS(TREE_CODE(type_tree)) != 't') {
	  DevWarn("Bad tree class passed to Create_TY_For_Tree %c",
		TREE_CODE_CLASS(TREE_CODE(type_tree)));
          return idx;
	}


	// for typedefs get the information from the base type
	if (TYPE_NAME(type_tree) &&
	    idx == 0 &&
	    (TREE_CODE(type_tree) == RECORD_TYPE ||
	     TREE_CODE(type_tree) == UNION_TYPE) &&
	    TREE_CODE(TYPE_NAME(type_tree)) == TYPE_DECL &&
	    TYPE_MAIN_VARIANT(type_tree) != type_tree) {
		idx = Get_TY (TYPE_MAIN_VARIANT(type_tree));
		if (TYPE_READONLY(type_tree))
			Set_TY_is_const (idx);
		if (TYPE_VOLATILE(type_tree))
			Set_TY_is_volatile (idx);
		// restrict qualifier not supported by gcc
		TYPE_TY_IDX(type_tree) = idx;
		if(Debug_Level >= 2) {
		  DST_INFO_IDX dst = Create_DST_type_For_Tree(type_tree,
			idx,orig_idx);
		  TYPE_DST_IDX(type_tree) = dst;
	        }
		TYPE_FIELD_IDS_USED(type_tree) =
			TYPE_FIELD_IDS_USED(TYPE_MAIN_VARIANT(type_tree));
		return idx;
	}

	TYPE_ID mtype;
	INT tsize;
	BOOL variable_size = FALSE;
	tree type_size = TYPE_SIZE(type_tree);
	UINT align = TYPE_ALIGN(type_tree) / BITSPERBYTE;
	if (type_size == NULL) {
		// incomplete structs have 0 size.  Similarly, 'void' is
                // an incomplete type that can never be completed.
		FmtAssert(TREE_CODE(type_tree) == ARRAY_TYPE 
			|| TREE_CODE(type_tree) == ENUMERAL_TYPE
			|| TREE_CODE(type_tree) == UNION_TYPE
			|| TREE_CODE(type_tree) == RECORD_TYPE
			|| TREE_CODE(type_tree) == LANG_TYPE
			|| TREE_CODE(type_tree) == VOID_TYPE,
			  ("Create_TY_For_Tree: type_size NULL for non ARRAY/RECORD/VOID, type is %d",
                           (int) TREE_CODE(type_tree)));
		tsize = 0;
	}
	else {
		if (TREE_CODE(type_size) != INTEGER_CST) {
			if (TREE_CODE(type_tree) == ARRAY_TYPE)
				DevWarn ("Encountered VLA at line %d", lineno);
			else
				Fail_FmtAssertion ("VLA at line %d not currently implemented", lineno);
			variable_size = TRUE;
			tsize = 0;
		}
		else
			tsize = Get_Integer_Value(type_size) / BITSPERBYTE;
	}
	switch (TREE_CODE(type_tree)) {
	case VOID_TYPE:
	case LANG_TYPE: // unknown type
		idx = MTYPE_To_TY (MTYPE_V);	// use predefined type
		break;
	case BOOLEAN_TYPE:
	case INTEGER_TYPE:
		switch (tsize) {
		case 1:  mtype = MTYPE_I1;  break;
		case 2:  mtype = MTYPE_I2;  break;
		case 4:  mtype = MTYPE_I4;  break;
		case 8:  mtype = MTYPE_I8;  break;
                case 16: mtype = MTYPE_I16; break;
		default:  FmtAssert(FALSE,
                                    ("Get_TY unexpected size %d", tsize));
		}
		if (TREE_UNSIGNED(type_tree)) {
			mtype = MTYPE_complement(mtype);
		}
		idx = MTYPE_To_TY (mtype);	// use predefined type
		Set_TY_align (idx, align);
		break;
	case CHAR_TYPE:
		mtype = (TREE_UNSIGNED(type_tree) ? MTYPE_U1 : MTYPE_I1);
		idx = MTYPE_To_TY (mtype);	// use predefined type
		break;
	case ENUMERAL_TYPE:
		mtype = (TREE_UNSIGNED(type_tree) ? MTYPE_U4 : MTYPE_I4);
		idx = MTYPE_To_TY (mtype);	// use predefined type
		break;
	case REAL_TYPE:
		switch (tsize) {
		case 4:  mtype = MTYPE_F4; break;
		case 8:  mtype = MTYPE_F8; break;
		default:  FmtAssert(FALSE, ("Get_TY unexpected size"));
		}
		idx = MTYPE_To_TY (mtype);	// use predefined type
		break;
	case COMPLEX_TYPE:
		switch (tsize) {
		case  8:  mtype = MTYPE_C4; break;
		case 16:  mtype = MTYPE_C8; break;
		default:  FmtAssert(FALSE, ("Get_TY unexpected size"));
		}
		idx = MTYPE_To_TY (mtype);	// use predefined type
		break;
	case POINTER_TYPE:
		if (TYPE_PTRMEM_P(type_tree)) {
			// pointer to member
			idx = Be_Type_Tbl(Pointer_Size == 8 ? MTYPE_I8 : MTYPE_I4);
			break;
		}
		/* FALLTHRU */
	case REFERENCE_TYPE:
		idx = Make_Pointer_Type (Get_TY (TREE_TYPE(type_tree)));
		Set_TY_align (idx, align);
		break;
	case ARRAY_TYPE:
		{	// new scope for local vars
		TY &ty = New_TY (idx);
		TY_Init (ty, tsize, KIND_ARRAY, MTYPE_M, 
			Save_Str(Get_Name(TYPE_NAME(type_tree))) );
		Set_TY_etype (ty, Get_TY (TREE_TYPE(type_tree)));
		Set_TY_align (idx, TY_align(TY_etype(ty)));
		// assumes 1 dimension
		// nested arrays are treated as arrays of arrays
		ARB_HANDLE arb = New_ARB ();
		ARB_Init (arb, 0, 0, 0);
		Set_TY_arb (ty, arb);
		Set_ARB_first_dimen (arb);
		Set_ARB_last_dimen (arb);
		Set_ARB_dimension (arb, 1);
		if (TYPE_SIZE(TREE_TYPE(type_tree)) == 0)
			break; // anomaly:  type will never be needed
		if (TREE_CODE(TYPE_SIZE(TREE_TYPE(type_tree))) == INTEGER_CST) {
			Set_ARB_const_stride (arb);
			Set_ARB_stride_val (arb, 
				Get_Integer_Value (TYPE_SIZE(TREE_TYPE(type_tree))) 
				/ BITSPERBYTE);
		}
		else {
			WN *swn;
			swn = WFE_Expand_Expr (TYPE_SIZE(TREE_TYPE(type_tree)));
			if (WN_opcode (swn) == OPC_U4I4CVT ||
			    WN_opcode (swn) == OPC_U8I8CVT) {
				swn = WN_kid0 (swn);
			}
			FmtAssert (WN_operator (swn) == OPR_LDID,
				("stride operator for VLA not LDID"));
			ST *st = WN_st (swn);
			TY_IDX ty_idx = ST_type (st);
			WN *wn = WN_CreateXpragma (WN_PRAGMA_COPYIN_BOUND,
						   (ST_IDX) NULL, 1);
			WN_kid0 (wn) = WN_Ldid (TY_mtype (ty_idx), 0, st, ty_idx);
			WFE_Stmt_Append (wn, Get_Srcpos());
			Clear_ARB_const_stride (arb);
			Set_ARB_stride_var (arb, (ST_IDX) ST_st_idx (st));
		}
		Set_ARB_const_lbnd (arb);
		Set_ARB_lbnd_val (arb, 0);
		if (type_size) {
		    if (TREE_CODE(TYPE_MAX_VALUE (TYPE_DOMAIN (type_tree))) ==
			INTEGER_CST) {
			Set_ARB_const_ubnd (arb);
			Set_ARB_ubnd_val (arb, Get_Integer_Value (
				TYPE_MAX_VALUE (TYPE_DOMAIN (type_tree)) ));
		    }
		    else {
			WN *uwn = WFE_Expand_Expr (TYPE_MAX_VALUE (TYPE_DOMAIN (type_tree)) );
			if (WN_opcode (uwn) == OPC_U4I4CVT ||
			    WN_opcode (uwn) == OPC_U8I8CVT) {
				uwn = WN_kid0 (uwn);
			}
			ST *st;
			TY_IDX ty_idx;
			WN *wn;
			if (WN_operator (uwn) != OPR_LDID) {
				ty_idx = Get_TY (TREE_TYPE (TYPE_MAX_VALUE (TYPE_DOMAIN (type_tree)) ) );
				st = Gen_Temp_Symbol (ty_idx, "__vla_bound");
				wn = WN_Stid (TY_mtype (ty_idx), 0, st, ty_idx, uwn);
				WFE_Stmt_Append (wn, Get_Srcpos());
			}
			else {
				st = WN_st (uwn);
				ty_idx = ST_type (st);
			}
			wn = WN_CreateXpragma (WN_PRAGMA_COPYIN_BOUND, (ST_IDX) NULL, 1);
			WN_kid0 (wn) = WN_Ldid (TY_mtype (ty_idx), 0, st, ty_idx);
			WFE_Stmt_Append (wn, Get_Srcpos());
			Clear_ARB_const_ubnd (arb);
			Set_ARB_ubnd_var (arb, ST_st_idx (st));
		    }
		}
		else {
			Clear_ARB_const_ubnd (arb);
			Set_ARB_ubnd_val (arb, 0);
		}
		if (variable_size) {
			WN *swn, *wn;
			swn = WFE_Expand_Expr (type_size);
			if (TY_size(TY_etype(ty))) {
				if (WN_opcode (swn) == OPC_U4I4CVT ||
				    WN_opcode (swn) == OPC_U8I8CVT) {
					swn = WN_kid0 (swn);
				}
				FmtAssert (WN_operator (swn) == OPR_LDID,
					("size operator for VLA not LDID"));
				ST *st = WN_st (swn);
				TY_IDX ty_idx = ST_type (st);
				TYPE_ID mtype = TY_mtype (ty_idx);
				swn = WN_Div (mtype, swn, WN_Intconst (mtype, BITSPERBYTE));
				wn = WN_Stid (mtype, 0, st, ty_idx, swn);
				WFE_Stmt_Append (wn, Get_Srcpos());
			}
		}
		} // end array scope
		break;
	case RECORD_TYPE:
	case UNION_TYPE:
		{	// new scope for local vars

		TY &ty = (idx == TY_IDX_ZERO) ? New_TY(idx) : Ty_Table[idx];
		TY_Init (ty, tsize, KIND_STRUCT, MTYPE_M, 
			Save_Str(Get_Name(TYPE_NAME(type_tree))) );
		if (TREE_CODE(type_tree) == UNION_TYPE) {
			Set_TY_is_union(idx);
		}
		if (align == 0) align = 1;	// in case incomplete type
		Set_TY_align (idx, align);
		// set idx now in case recurse thru fields
		TYPE_TY_IDX(type_tree) = idx;
		Do_Base_Types (type_tree);

		// Process nested structs and static data members first

                for (tree field =  TYPE_FIELDS (type_tree);
                          field;
                          field = next_real_or_virtual_field(type_tree, field))
                        if (TREE_CODE(field) == TYPE_DECL ||
			    TREE_CODE(field) == FIELD_DECL) {
                                tree field_type = TREE_TYPE(field);
				if ((TREE_CODE(field_type) == RECORD_TYPE ||
				     TREE_CODE(field_type) == UNION_TYPE) &&
                                    field_type != type_tree)
                                        Get_TY(field_type);
                        }
			else if (TREE_CODE(field) == VAR_DECL)
				WFE_Expand_Decl(field);
			else if (TREE_CODE(field) == TEMPLATE_DECL)
				WFE_Expand_Decl(field);


  		Set_TY_fld (ty, FLD_HANDLE());
		FLD_IDX first_field_idx = Fld_Table.Size ();
		tree field;
		tree method = TYPE_METHODS(type_tree);
		FLD_HANDLE fld;
		INT32 next_field_id = 1;

		// Generate an anonymous field for every direct, nonempty,
		// nonvirtual base class.  

		INT32 offset = 0;
		INT32 anonymous_fields = 0;
		if (TYPE_BINFO(type_tree) &&
		    BINFO_BASETYPES(TYPE_BINFO(type_tree))) {
		  tree basetypes = BINFO_BASETYPES(TYPE_BINFO(type_tree));
		  INT32 i;
		  for (i = 0; i < TREE_VEC_LENGTH(basetypes); ++i) {
		    tree binfo = TREE_VEC_ELT(basetypes, i);
		    tree basetype = BINFO_TYPE(binfo);
		    offset = Roundup (offset,
				    TYPE_ALIGN(basetype) / BITSPERBYTE);
		    if (!is_empty_base_class(basetype) || 
			!TREE_VIA_VIRTUAL(binfo)) {
		      ++next_field_id;
		      ++anonymous_fields;
		      next_field_id += TYPE_FIELD_IDS_USED(basetype);
		      fld = New_FLD();
		      FLD_Init (fld, Save_Str(Get_Name(0)), 
				Get_TY(basetype) , offset);
		      offset += Type_Size_Without_Vbases (basetype);
		    }
		  }
		}

		for (field = TYPE_FIELDS(type_tree); 
			field;
			field = next_real_or_virtual_field(type_tree, field) )
		{
			if (TREE_CODE(field) == TYPE_DECL) {
				continue;
			}
			if (TREE_CODE(field) == CONST_DECL) {
				DevWarn ("got CONST_DECL in field list");
				continue;
			}
			if (TREE_CODE(field) == VAR_DECL) {
				continue;	
			}
			if (TREE_CODE(field) == TEMPLATE_DECL) {
				continue;
			}
			DECL_FIELD_ID(field) = next_field_id;
			next_field_id += 
			  TYPE_FIELD_IDS_USED(TREE_TYPE(field)) + 1;
			fld = New_FLD ();
			FLD_Init (fld, Save_Str(Get_Name(DECL_NAME(field))), 
				0, // type
				Get_Integer_Value(DECL_FIELD_OFFSET(field)) +
				Get_Integer_Value(DECL_FIELD_BIT_OFFSET(field))
					/ BITSPERBYTE);
		}

		TYPE_FIELD_IDS_USED(type_tree) = next_field_id - 1;
  		FLD_IDX last_field_idx = Fld_Table.Size () - 1;
		if (last_field_idx >= first_field_idx) {
			Set_TY_fld (ty, FLD_HANDLE (first_field_idx));
			Set_FLD_last_field (FLD_HANDLE (last_field_idx));
		}
		// now set the fld types.
		// first skip the anonymous fields, whose types are already
		// set.
		fld = TY_fld(ty);
		while (anonymous_fields--)
		  fld = FLD_next(fld);
		for (field = TYPE_FIELDS(type_tree);
			field;
			field = next_real_or_virtual_field(type_tree, field))
		{
			if (TREE_CODE(field) == TYPE_DECL)
				continue;
			if (TREE_CODE(field) == CONST_DECL)
				continue;
			if (TREE_CODE(field) == VAR_DECL)
				continue;
			if (TREE_CODE(field) == TEMPLATE_DECL)
				continue;
			TY_IDX fty_idx = Get_TY(TREE_TYPE(field));
			if ((TY_align (fty_idx) > align) || (TY_is_packed (fty_idx)))
				Set_TY_is_packed (ty);
			Set_FLD_type(fld, fty_idx);
			if ( ! DECL_BIT_FIELD(field)
				&& Get_Integer_Value(DECL_SIZE(field)) > 0
				&& Get_Integer_Value(DECL_SIZE(field))
				  != (TY_size(Get_TY(TREE_TYPE(field))) 
					* BITSPERBYTE) )
			{
				// for some reason gnu doesn't set bit field
				// when have bit-field of standard size
				// (e.g. int f: 16;).  But we need it set
				// so we know how to pack it, because 
				// otherwise the field type is wrong.
				DevWarn("field size %d doesn't match type size %d", 
					Get_Integer_Value(DECL_SIZE(field)),
					TY_size(Get_TY(TREE_TYPE(field)))
						* BITSPERBYTE );
				DECL_BIT_FIELD(field) = 1;
			}
			if (DECL_BIT_FIELD(field)) {
				Set_FLD_is_bit_field (fld);
				// bofst is remaining bits from byte offset
				Set_FLD_bofst (fld, 
					Get_Integer_Value(
						DECL_FIELD_BIT_OFFSET(field))
						% BITSPERBYTE);
				Set_FLD_bsize (fld, Get_Integer_Value(
                                                           DECL_SIZE(field)));
			}
			fld = FLD_next(fld);
		}
		// process methods
		if (!Enable_WFE_DFE) {
		if (CP_TYPE_QUALS(type_tree) == TYPE_UNQUALIFIED) {
			while (method != NULL_TREE) {
				WFE_Expand_Decl (method);
				method = TREE_CHAIN(method);
			}
		}
		}
		} //end record scope
		break;
	case METHOD_TYPE:
		//DevWarn ("Encountered METHOD_TYPE at line %d", lineno);
	case FUNCTION_TYPE:
		{	// new scope for local vars
		tree arg;
		INT32 num_args;
		TY &ty = New_TY (idx);
		TY_Init (ty, 0, KIND_FUNCTION, MTYPE_UNKNOWN, NULL); 
		Set_TY_align (idx, 1);
		TY_IDX ret_ty_idx;
		TY_IDX arg_ty_idx;
		TYLIST tylist_idx;

		// allocate TYs for return as well as parameters
		// this is needed to avoid mixing TYLISTs if one
		// of the parameters is a pointer to a function

		ret_ty_idx = Get_TY(TREE_TYPE(type_tree));
		for (arg = TYPE_ARG_TYPES(type_tree);
		     arg;
		     arg = TREE_CHAIN(arg))
			arg_ty_idx = Get_TY(TREE_VALUE(arg));

		// if return type is pointer to a zero length struct
		// convert it to void
		if (!WFE_Keep_Zero_Length_Structs    &&
		    TY_mtype (ret_ty_idx) == MTYPE_M &&
		    TY_size (ret_ty_idx) == 0) {
			// zero length struct being returned
		  	DevWarn ("function returning zero length struct at line %d", lineno);
			ret_ty_idx = Be_Type_Tbl (MTYPE_V);
		}

		Set_TYLIST_type (New_TYLIST (tylist_idx), ret_ty_idx);
		Set_TY_tylist (ty, tylist_idx);
		for (num_args = 0, arg = TYPE_ARG_TYPES(type_tree);
		     arg;
		     num_args++, arg = TREE_CHAIN(arg))
		{
			arg_ty_idx = Get_TY(TREE_VALUE(arg));
			if (!WFE_Keep_Zero_Length_Structs    &&
			    TY_mtype (arg_ty_idx) == MTYPE_M &&
			    TY_size (arg_ty_idx) == 0) {
				// zero length struct passed as parameter
				DevWarn ("zero length struct encountered in function prototype at line %d", lineno);
			}
			else
				Set_TYLIST_type (New_TYLIST (tylist_idx), arg_ty_idx);
		}
		if (num_args)
		{
			Set_TY_has_prototype(idx);
			if (arg_ty_idx != Be_Type_Tbl(MTYPE_V))
			{
				Set_TYLIST_type (New_TYLIST (tylist_idx), 0);
				Set_TY_is_varargs(idx);
			}
			else
				Set_TYLIST_type (Tylist_Table [tylist_idx], 0);
		}
		else
			Set_TYLIST_type (New_TYLIST (tylist_idx), 0);
		} // end FUNCTION_TYPE scope
		break;
	default:
		FmtAssert(FALSE, ("Get_TY unexpected tree_type"));
	}
	if (TYPE_READONLY(type_tree))
		Set_TY_is_const (idx);
	if (TYPE_VOLATILE(type_tree))
		Set_TY_is_volatile (idx);
	// restrict qualifier not supported by gcc
	TYPE_TY_IDX(type_tree) = idx;
        if(Debug_Level >= 2) {
          DST_INFO_IDX dst =
            Create_DST_type_For_Tree(type_tree,
              idx,orig_idx);
          TYPE_DST_IDX(type_tree) = dst;
        }

	return idx;
}

ST*
Create_ST_For_Tree (tree decl_node)
{
  TY_IDX     ty_idx;
  ST*        st;
  char      *name;
  char	    tempname[32];
  ST_SCLASS  sclass;
  ST_EXPORT  eclass;
  SYMTAB_IDX level;
  static INT anon_count = 0;

  if(TREE_CODE(decl_node) == ERROR_MARK) {
        Fail_FmtAssertion ("Unable to handle ERROR_MARK. internal error");
  }
  if (DECL_ASSEMBLER_NAME (decl_node))
    name = (char *) IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl_node));
  else {
    sprintf(tempname, "anon%d", ++anon_count);
    name = tempname;
  }


  switch (TREE_CODE(decl_node)) {

    case FUNCTION_DECL:
      {
        if (Enable_WFE_DFE) {
          tree body = DECL_SAVED_TREE(decl_node);
          if (DECL_THUNK_P(decl_node) &&
              TREE_CODE(CP_DECL_CONTEXT(decl_node)) != NAMESPACE_DECL)
            Push_Deferred_Function (decl_node);
/*
          else
          if (DECL_TINFO_FN_P(decl_node))
            Push_Deferred_Function (decl_node);
*/
          else
          if (body != NULL_TREE && !DECL_EXTERNAL(decl_node) &&
              (DECL_TEMPLATE_INFO(decl_node) == NULL              ||
               DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION(decl_node) ||
               DECL_TEMPLATE_INSTANTIATED(decl_node)              ||
               DECL_TEMPLATE_SPECIALIZATION(decl_node))) {
            Push_Deferred_Function (decl_node);
          }
        }

        TY_IDX func_ty_idx = Get_TY(TREE_TYPE(decl_node));

        sclass = SCLASS_EXTERN;
        eclass = TREE_PUBLIC(decl_node) || DECL_WEAK(decl_node) ?
		   EXPORT_PREEMPTIBLE				:
		   EXPORT_LOCAL;
        level  = GLOBAL_SYMTAB+1;

        PU_IDX pu_idx;
        PU&    pu = New_PU (pu_idx);

        PU_Init (pu, func_ty_idx, level);

        st = New_ST (GLOBAL_SYMTAB);

        ST_Init (st,
                 Save_Str ( IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl_node))),
                 CLASS_FUNC, sclass, eclass, TY_IDX (pu_idx));
	if (DECL_THUNK_P(decl_node) &&
            TREE_CODE(CP_DECL_CONTEXT(decl_node)) != NAMESPACE_DECL)
	  Set_ST_is_weak_symbol(st);
      }
      break;

    case PARM_DECL:
    case VAR_DECL:
      {
        if (TREE_CODE(decl_node) == PARM_DECL) {
          sclass = SCLASS_FORMAL;
          eclass = EXPORT_LOCAL;
          level = CURRENT_SYMTAB;
        }
        else {
          if (DECL_CONTEXT (decl_node) == 0 			     ||
	      TREE_CODE (DECL_CONTEXT (decl_node)) == NAMESPACE_DECL ||
 	      TREE_CODE (DECL_CONTEXT (decl_node)) == RECORD_TYPE ) {
            if (TREE_PUBLIC (decl_node)) {
	      if (DECL_EXTERNAL(decl_node))
		sclass = SCLASS_EXTERN;
	      else
	      if (DECL_INITIAL(decl_node))
		sclass = SCLASS_UGLOBAL;
	      else if (TREE_STATIC(decl_node)) {
		if (flag_no_common)
		  sclass = SCLASS_UGLOBAL;
		else
		  sclass = SCLASS_COMMON;
	      }
	      else
              	sclass = SCLASS_EXTERN;
              if(Use_Call_Shared_Link && Gp_Rel_Aggresive_Opt &&  sclass != SCLASS_EXTERN) 
                eclass = EXPORT_PROTECTED;
              else
                eclass = EXPORT_PREEMPTIBLE;
            }
            else {
              	sclass = SCLASS_FSTATIC;
		eclass = EXPORT_LOCAL;
            }
            level = GLOBAL_SYMTAB;
          }
          else {
            if (DECL_EXTERNAL(decl_node) || DECL_WEAK (decl_node)) {
	      sclass = SCLASS_EXTERN;
	      level  = GLOBAL_SYMTAB;
              eclass = EXPORT_PREEMPTIBLE;
            }
            else {
	      if (TREE_STATIC (decl_node)) {
		sclass = SCLASS_PSTATIC;
		if (pstatic_as_global)
			level = GLOBAL_SYMTAB;
		else
			level = CURRENT_SYMTAB;
              }
              else {
		sclass = SCLASS_AUTO;
	 	level = DECL_SYMTAB_IDX(decl_node) ?
			DECL_SYMTAB_IDX(decl_node) : CURRENT_SYMTAB;
              }
              eclass = EXPORT_LOCAL;
            }
          }
        }
        st = New_ST (level);
        ty_idx = Get_TY (TREE_TYPE(decl_node));
        if (TY_kind (ty_idx) == KIND_ARRAY &&
            TREE_STATIC (decl_node) &&
            DECL_INITIAL (decl_node) == FALSE &&
            TY_size (ty_idx) == 0) {
          Set_TY_size (ty_idx, TY_size (Get_TY (TREE_TYPE (TREE_TYPE (decl_node)))));
        }
	if (TY_mtype (ty_idx) == MTYPE_M &&
	    Aggregate_Alignment > 0 &&
	    Aggregate_Alignment > TY_align (ty_idx))
	  Set_TY_align (ty_idx, Aggregate_Alignment);
	// qualifiers are set on decl nodes
	if (TREE_READONLY(decl_node))
		Set_TY_is_const (ty_idx);
	if (TREE_THIS_VOLATILE(decl_node))
		Set_TY_is_volatile (ty_idx);
        ST_Init (st, Save_Str(name), CLASS_VAR, sclass, eclass, ty_idx);
        if (TREE_CODE(decl_node) == PARM_DECL) {
		Set_ST_is_value_parm(st);
        }
      }
      break;

    default:
      {
        Fail_FmtAssertion ("Create_ST_For_Tree: unexpected tree type");
      }
      break;
  }

  DECL_ST(decl_node) = st;

  if (TREE_CODE(decl_node) == VAR_DECL &&
      DECL_CONTEXT(decl_node)	       &&
      TREE_CODE(DECL_CONTEXT(decl_node)) == RECORD_TYPE)
	Get_TY(DECL_CONTEXT(decl_node));

  if (Enable_WFE_DFE) {
    if (TREE_CODE(decl_node) == VAR_DECL &&
        level == GLOBAL_SYMTAB &&
        !DECL_EXTERNAL (decl_node) &&
        DECL_INITIAL (decl_node)) {
      Push_Deferred_Function (decl_node);
    }
  }

  if (DECL_WEAK      (decl_node) &&
      !DECL_EXTERNAL (decl_node)) {
    Set_ST_is_weak_symbol (st);
  }

  if (DECL_SECTION_NAME (decl_node)) {
    DevWarn ("section %s specified for %s",
             TREE_STRING_POINTER (DECL_SECTION_NAME (decl_node)),
             ST_name (st));
    if (TREE_CODE (decl_node) == FUNCTION_DECL)
      level = GLOBAL_SYMTAB;
    ST_ATTR_IDX st_attr_idx;
    ST_ATTR&    st_attr = New_ST_ATTR (level, st_attr_idx);
    ST_ATTR_Init (st_attr, ST_st_idx (st), ST_ATTR_SECTION_NAME,
                  Save_Str (TREE_STRING_POINTER (DECL_SECTION_NAME (decl_node))));
  }
/*
  if (DECL_SYSCALL_LINKAGE (decl_node)) {
	Set_PU_has_syscall_linkage (Pu_Table [ST_pu(st)]);
  }
*/
  if(Debug_Level >= 2) {
    DST_INFO_IDX dst = Create_DST_decl_For_Tree(decl_node,st);
    DECL_DST_IDX(decl_node) = dst;
  }
  return st;
}

#ifndef EXTRA_WORD_IN_TREE_NODES

#include <ext/hash_map>

namespace {

  struct ptrhash {
    size_t operator()(void* p) const { return reinterpret_cast<size_t>(p); }
  };

  __gnu_cxx::hash_map<tree, TY_IDX,     ptrhash>     ty_idx_map;
  __gnu_cxx::hash_map<tree, ST*,        ptrhash>     st_map;
  __gnu_cxx::hash_map<tree, SYMTAB_IDX, ptrhash>     symtab_idx_map;
  __gnu_cxx::hash_map<tree, LABEL_IDX,  ptrhash>     label_idx_map;
  __gnu_cxx::hash_map<tree, ST*,        ptrhash>     string_st_map;
  __gnu_cxx::hash_map<tree, BOOL,       ptrhash>     bool_map;
  __gnu_cxx::hash_map<tree, INT32,      ptrhash>     field_id_map;
  __gnu_cxx::hash_map<tree, INT32,	  ptrhash>     type_field_ids_used_map;
  __gnu_cxx::hash_map<tree, INT32,      ptrhash>     scope_number_map;
  __gnu_cxx::hash_map<tree, tree,       ptrhash>     label_scope_map;
  __gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>    decl_idx_map; 
  __gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>    decl_field_idx_map; 
  __gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>    decl_specification_idx_map; 
  __gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>    type_idx_map;
  __gnu_cxx::hash_map<tree, LABEL_IDX,  ptrhash>     handler_label_map;
  __gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>    abstract_root_map;
}

TY_IDX& TYPE_TY_IDX(tree t)         { return ty_idx_map[t]; }
ST*& DECL_ST(tree t) {
  if (TREE_CODE(t) == VAR_DECL 			     &&
      (DECL_CONTEXT(t) == 0 || 
       TREE_CODE(DECL_CONTEXT(t)) == NAMESPACE_DECL) &&
     DECL_ASSEMBLER_NAME(t))
    return st_map[DECL_ASSEMBLER_NAME(t)];
  else
    return st_map[t];
  }
SYMTAB_IDX& DECL_SYMTAB_IDX(tree t) { return symtab_idx_map[t]; }
LABEL_IDX& DECL_LABEL_IDX(tree t)   { return label_idx_map[t]; }
ST*& TREE_STRING_ST(tree t)         { return string_st_map[t]; }
BOOL& DECL_LABEL_DEFINED(tree t)    { return bool_map[t]; }
INT32& DECL_FIELD_ID(tree t)        { return field_id_map[t]; }
INT32 & TYPE_FIELD_IDS_USED(tree t) { return type_field_ids_used_map[t]; }
INT32 & SCOPE_NUMBER(tree t)        { return scope_number_map[t]; }
tree & LABEL_SCOPE(tree t)	    { return label_scope_map[t]; }

// This is for normal declarations.

// We do not know if the DST entry is filled in.
// So check and ensure a real entry exists.

DST_INFO_IDX & DECL_DST_IDX(tree t) 
{ 
	__gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>::iterator it =
		decl_idx_map.find(t);
	if(it == decl_idx_map.end()) {
		// substitute for lack of default constructor
		DST_INFO_IDX dsti = DST_INVALID_IDX;
		decl_idx_map[t] = dsti;
	}
	return decl_idx_map[t]; 
}
// This is for static class members and member functions.
// We need a distinct DST record for a single ST.
// Note that only the main record actually need be linked
// to ST as only that one gets an address/location.

// We do not know if the DST entry is filled in.
// So check and ensure a real entry exists.
DST_INFO_IDX & DECL_DST_SPECIFICATION_IDX(tree t) 
{ 
	__gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>::iterator it =
		decl_specification_idx_map.find(t);
	if(it == decl_specification_idx_map.end()) {
		// substitute for lack of default constructor
		DST_INFO_IDX dsti = DST_INVALID_IDX;
		decl_specification_idx_map[t] = dsti;
	}
	return decl_specification_idx_map[t]; 
}

// This is for static class members and member functions.
// We need a distinct DST record for a single ST.
// Note that only the main record actually need be linked
// to ST as only that one gets an address/location.

// We do not know if the DST entry is filled in.
// So check and ensure a real entry exists.
DST_INFO_IDX & DECL_DST_FIELD_IDX(tree t) 
{ 
	__gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>::iterator it =
		decl_field_idx_map.find(t);
	if(it == decl_idx_map.end()) {
		// substitute for lack of default constructor
		DST_INFO_IDX dsti = DST_INVALID_IDX;
		decl_field_idx_map[t] = dsti;
	}
	return decl_field_idx_map[t]; 
}

// We do not know if the DST entry is filled in.
// So check and ensure a real entry exists.
DST_INFO_IDX & TYPE_DST_IDX(tree t) 
{
	__gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>::iterator it =
		type_idx_map.find(t);
	if(it == type_idx_map.end()) {
		// substitute for lack of default constructor
		DST_INFO_IDX dsti = DST_INVALID_IDX;
		type_idx_map[t] = dsti;
	}
	return type_idx_map[t]; 
}

// We do not know if the DST entry is filled in.
// So check and ensure a real entry exists.
DST_INFO_IDX & DECL_DST_ABSTRACT_ROOT_IDX(tree t) 
{
	__gnu_cxx::hash_map<tree, DST_INFO_IDX,ptrhash>::iterator it =
		abstract_root_map.find(t);
	if(it == abstract_root_map.end()) {
		// substitute for lack of default constructor
		DST_INFO_IDX dsti = DST_INVALID_IDX;
		abstract_root_map[t] = dsti;
	}
	return abstract_root_map[t]; 
}


LABEL_IDX& HANDLER_LABEL(tree t)    { return handler_label_map[t]; }


#endif
