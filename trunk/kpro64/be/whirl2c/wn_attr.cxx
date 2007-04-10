/*
 * Copyright 2003, 2004, 2005 PathScale, Inc.  All Rights Reserved.
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


/* ====================================================================
 * ====================================================================
 *
 * Module: wn_attr.c
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/be/whirl2c/wn_attr.cxx,v $
 *
 * Revision history:
 *  07-Mar-95 - Original Version
 *
 * Description:
 *
 *   Get WN tree attributes, beyond those provided through 
 *   common/com/wn_core.h.
 *
 * ====================================================================
 * ====================================================================
 */

#ifdef _KEEP_RCS_ID
static char *rcs_id = "$Source: /proj/osprey/CVS/open64/osprey1.0/be/whirl2c/wn_attr.cxx,v $ $Revision: 1.1.1.1 $";
#endif /* _KEEP_RCS_ID */


#include "common_include.h"
#include "wn_util.h"
#include "intrn_info.h"
#include "wutil.h"

/* INTRN_c_name() is only implemented when defined(BUILD_WHIRL2C), while
 * we must use INTRN_specific_name() when defined(BUILD_WHIRL2F).  To 
 * abstract away from this, we define the macro INTRN_high_level_name.
 * NOT TRUE anymore, but keep this cause I'm not sure which they really want.
 */
#ifdef BUILD_WHIRL2C
#define INTRN_high_level_name INTRN_c_name
#else /*BUILD_WHIRL2F*/
#define INTRN_high_level_name INTRN_specific_name
#endif


/*--------- Hidden utility to get type info about a cvtl node ---------*
 *---------------------------------------------------------------------*/

static const MTYPE WN_Cvtl_Mtype[2/*is_signed*/][9/*byte-size*/] =
{/* unsigned */
 {MTYPE_UNKNOWN,      /* 0 bytes */
  MTYPE_U1,           /* 1 byte  */
  MTYPE_U2,           /* 2 bytes */
  MTYPE_UNKNOWN,      /* 3 bytes */
  MTYPE_U4,           /* 4 bytes */
  MTYPE_UNKNOWN,      /* 5 bytes */
  MTYPE_UNKNOWN,      /* 6 bytes */
  MTYPE_UNKNOWN,      /* 7 bytes */
  MTYPE_U8},          /* 8 bytes */
 /* signed */
 {MTYPE_UNKNOWN,      /* 0 bytes */
  MTYPE_I1,           /* 1 byte  */
  MTYPE_I2,           /* 2 bytes */
  MTYPE_UNKNOWN,      /* 3 bytes */
  MTYPE_I4,           /* 4 bytes */
  MTYPE_UNKNOWN,      /* 5 bytes */
  MTYPE_UNKNOWN,      /* 6 bytes */
  MTYPE_UNKNOWN,      /* 7 bytes */
  MTYPE_I8}           /* 8 bytes */
}; /* WN_Cvtl_Mtype */

static TY_IDX
WN_Cvtl_Ty(const WN *wn)
{
   /* The type of a CVTL node is the return type scaled down to the
    * given bitsize.
    */ 
   const INT   cvtl_bytes = WN_cvtl_bits(wn)>>3;
   const MTYPE dest_mtype = WN_opc_rtype(wn);
   const BOOL  is_signed = MTYPE_signed(dest_mtype);
   const MTYPE cvtl_mtype = WN_Cvtl_Mtype[is_signed? 1 : 0][cvtl_bytes];

   return Stab_Mtype_To_Ty(cvtl_mtype);
} /* WN_Cvtl_Ty */


/*------------------------ Exported functions -------------------------
 *---------------------------------------------------------------------*/


UINT
WN_num_var_refs(WN *wn, const ST *st, STAB_OFFSET st_ofst)
{
   /* Count the number of nodes that references the object or address
    * denoted by the given ST.  Only count LDID, STID or LDA references.
    */
   UINT      counter = 0;
   WN_ITER  *wn_iter;
   const WN *subtree;

   for (wn_iter = WN_WALK_TreeIter(wn); 
	wn_iter != NULL;
	wn_iter = WN_WALK_TreeNext(wn_iter))
   {
      subtree = WN_ITER_wn(wn_iter);
      if (subtree != NULL)
	 switch (WN_opc_operator(subtree))
	 {
	 case OPR_LDID:
	 case OPR_STID:
	 case OPR_LDA:
	    if (WN_st(subtree) == st && WN_offset(subtree) == st_ofst)
	       counter += 1;
	    break;
      
	 default:
	    break;
	 }
   } /*loop*/
   return counter;
} /* WN_num_var_refs */


const char *
WN_intrinsic_name(INTRINSIC intr_opc)
{
   const char *name;
   
   Is_True(INTRINSIC_FIRST<=intr_opc && intr_opc<=INTRINSIC_LAST,
	   ("Intrinsic Opcode (%d) out of range", intr_opc)); 
   if (INTRN_high_level_name(intr_opc) != NULL)
      name = INTRN_high_level_name(intr_opc);
#ifdef BUILD_WHIRL2F
   else
   {
      ASSERT_WARN(FALSE, 
		  (DIAG_A_STRING,
		   Concat2_Strings("Missing intrinsic name ", 
				   get_intrinsic_name(intr_opc))));
      name = get_intrinsic_name(intr_opc);
   }
#else /*BUILD_WHIRL2C*/
   else if (INTRN_rt_name(intr_opc) != NULL)
      name = INTRN_rt_name(intr_opc);
   else
   {
      Is_True(FALSE, 
	      ("Expected \"high_level\" or \"rt\" name in WN_intrinsic_name()"));
      name =
	 Concat3_Strings("<INTR: ", Number_as_String(intr_opc, "%lld"), ">");
   }
#endif /*BUILD_WHIRL2F*/

   return name;
} /* WN_intrinsic_name */


TY_IDX
WN_intrinsic_return_ty(OPCODE wn_opc, INTRINSIC intr_opc, const WN *call)
{
   TY_IDX ret_ty;
   
   Is_True(INTRINSIC_FIRST<=intr_opc && intr_opc<=INTRINSIC_LAST,
	   ("Intrinsic Opcode (%d) out of range", intr_opc)); 
   switch (INTRN_return_kind(intr_opc))
   {
   case IRETURN_UNKNOWN:
      /* Use the opcode to get the type */
      ret_ty = Stab_Mtype_To_Ty(OPCODE_rtype(wn_opc));
      break;
   case IRETURN_V:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_V);
      break;
   case IRETURN_I1:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_I1);
      break;
   case IRETURN_I2:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_I2);
      break;
   case IRETURN_I4:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_I4);
      break;
   case IRETURN_I8:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_I8);
      break;
   case IRETURN_U1:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_U1);
      break;
   case IRETURN_U2:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_U2);
      break;
   case IRETURN_U4:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_U4);
      break;
   case IRETURN_U8:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_U8);
      break;
   case IRETURN_F4:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_F4);
      break;
   case IRETURN_F8:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_F8);
      break;
   case IRETURN_FQ:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_FQ);
      break;
   case IRETURN_C4:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_C4);
      break;
   case IRETURN_C8:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_C8);
      break;
   case IRETURN_CQ:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_CQ);
      break;
   case IRETURN_PV:
      ret_ty = Stab_Pointer_To(Stab_Mtype_To_Ty(MTYPE_V));
      break;
   case IRETURN_PU1:
      ret_ty = Stab_Pointer_To(Stab_Mtype_To_Ty(MTYPE_U1));
      break;
   case IRETURN_DA1:
      ret_ty = WN_Tree_Type(WN_kid0(call));
      break;
#ifdef KEY
   case IRETURN_PC:
      ret_ty = Stab_Pointer_To(Stab_Mtype_To_Ty(MTYPE_V));
      break;
   case IRETURN_SZT:
      ret_ty = Stab_Mtype_To_Ty(MTYPE_I4);
      break;
#ifdef TARG_X8664
   case IRETURN_V16F8:
     ret_ty = Stab_Mtype_To_Ty(MTYPE_V16F8);
     break;
   case IRETURN_V16F4:
     ret_ty = Stab_Mtype_To_Ty(MTYPE_V16F4);
     break;     
#endif
#endif
   case IRETURN_PPU2:
     ret_ty = Stab_Pointer_To(Stab_Pointer_To(Stab_Mtype_To_Ty(MTYPE_U2)));
     break;

   case IRETURN_PPI4:
     ret_ty = Stab_Pointer_To(Stab_Pointer_To(Stab_Mtype_To_Ty(MTYPE_I4)));
     break;

   default:
      Is_True(FALSE, 
	      ("Unexpected INTRN_RETKIND in WN_intrinsic_return_ty()"));
      ret_ty = Stab_Mtype_To_Ty(MTYPE_V);
      break;
   }
   
   return ret_ty;
} /* WN_intrinsic_return_ty */


BOOL 
WN_intrinsic_return_to_param(TY_IDX return_ty)
{
   /* We assume there is only one case when the return value
    * cannot be passed through registers, namely for a quad
    * precision complex number.
    */
   return (TY_mtype(return_ty) == MTYPE_CQ);

} /* WN_intrinsic_return_to_param */


WN *
WN_Get_PtrAdd_Intconst(WN    *wn0, 
		       WN    *wn1, 
		       TY_IDX pointed_ty)
{
   /* We make an attempt at retaining pointer types for ptr
    * additions, where we expect the ptr expression to be of
    * one of the following forms:
    *
    *    1)  ptr + expr
    *    2)  ptr + expr*const
    *    3)  ptr + const
    *
    * where const must be a multiple of the size of the pointed_ty
    * and only abscent when the size is 1. If this pattern is not 
    * found, then return NULL; otherwise return the const expression,
    * if one is found, or the integral expression when size==1.
    */
   WN *intconst = NULL;
	 
   /* Identify the integral expression */
   if (!TY_Is_Pointer(WN_Tree_Type(wn0)))
      intconst = wn0;
   else if (!TY_Is_Pointer(WN_Tree_Type(wn1)))
      intconst = wn1;

   /* Get the constant expression */
   if (intconst != NULL && TY_size(pointed_ty) > 1)
   {
      /* Identify the integral constant expression */
      if (WN_opc_operator(intconst) == OPR_MPY)
      {
	 if (WN_opc_operator(WN_kid0(intconst)) == OPR_INTCONST)
	    intconst = WN_kid0(intconst);
	 else if (WN_opc_operator(WN_kid1(intconst)) == OPR_INTCONST)
	    intconst = WN_kid1(intconst);
	 else
	    intconst = NULL;
      }
      else if (WN_opc_operator(intconst) != OPR_INTCONST)
	 intconst = NULL;
   }
   
   /* Make sure the constant expression is a multiple of the size of type
    * pointed to.
    */
   if (TY_size(pointed_ty) == 0 ||    /* incomplete type */
       (intconst != NULL && 
	WN_opc_operator(intconst) == OPR_INTCONST &&
	WN_const_val(intconst)%TY_size(pointed_ty) != 0LL))
   {
      intconst = NULL;
   }
   return intconst;
} /* WN_Get_PtrAdd_Intconst */

TY_IDX
WN_Tree_Type(const WN *wn)
{
   /* Return a TY that as closely as possible represents the type of the
    * given subexpression (wn).
    *
    * TY_is_logical() will only hold true when the TY is resolved from
    * a WN_ty or ST_ty attribute, not when it is resolved from an MTYPE.
    *
    * Pointer types may be created as a result of a call to this routine.
    */
   TY_IDX ty = Stab_Mtype_To_Ty(MTYPE_V); /* return value, default = void */
   
   if (OPCODE_is_expression(WN_opcode(wn)))
   {
      switch (WN_opc_operator(wn))
      {
      case OPR_ILOAD:
      case OPR_ILOADX:
      case OPR_LDID:
      case OPR_LDA:
	 ty = WN_ty(wn);
	 break;

      case OPR_MLOAD:
	 /* There is not much we can do about this case */
	 if (WN_opc_operator(WN_kid1(wn)) == OPR_INTCONST &&
	     TY_Is_Structured(TY_pointed(WN_ty(wn))))
	 {
	    ty = Stab_Get_Mload_Ty(TY_pointed(WN_ty(wn)), 
				   WN_load_offset(wn), 
				   WN_const_val(WN_kid1(wn)));
	 }
	 else
	 {
	    ty = TY_pointed(WN_ty(wn));
	 }
	 break;
	 
      case OPR_ARRAY:
	 /* Get the address type denoted by the base offset by the
	  * given indexing expression. Note that we do handle
	  * pointers as arrays when there is no ambiguity, and
	  * we rely on the flag TY_ptr_as_array() to handle indexing
	  * of an array of arrays.  The following should access the
	  * fifth element, each element consisting of 17 ints:
	  *
	  *    int (*a)[17]; .... a[5] ....
	  *
	  * This will be represented as (OPR_ARRAY (OPR_LDID a) ...),
	  * but, since the type of kid0 is ptr-to-arrayOfInts, we need
	  * the flag TY_ptr_as_array or else the type of the ARRAY
	  * node would be considered a ptr-to-ints (see also 
	  * WN2C_array()).
	  */
	 ty = WN_Tree_Type(WN_kid0(wn));
	 if (!TY_Is_Pointer(ty))
	 {
	    /* Create a pointer to be treated as an array when also used
	     * as the base-type of this OPC_ARRAY.  This must be handled
	     * very carefully in WN2C_array().
	     */
	    ty = Stab_Pointer_To(Stab_Array_Of(Stab_Mtype_To_Ty(MTYPE_U1),
					       WN_element_size(wn)));
	 }
         else if (!TY_ptr_as_array(Ty_Table[ty]) && TY_Is_Array(TY_pointed(ty)))
	 {
	    ty = Stab_Pointer_To(TY_AR_etype(TY_pointed(ty)));
	 }
	 break;

      case OPR_TAS:
	 ty = WN_ty(wn);
	 break;
	 
      case OPR_SELECT:
	 /* We make an attempt at retaining pointer types for ptr
	  * arithmetics.
	  */
	 if (WN_opc_rtype(wn) == Pointer_Mtype)
	 {
	    ty = WN_Tree_Type(WN_kid0(wn));
	    if (!TY_Is_Pointer(ty))
	    {
	       ty = WN_Tree_Type(WN_kid1(wn));
	       if (!TY_Is_Pointer(ty))
		  ty = Stab_Mtype_To_Ty(WN_opc_rtype(wn));
	    }
	 }
	 else
	    ty = Stab_Mtype_To_Ty(WN_opc_rtype(wn));
	 break;	    

      case OPR_CVTL:
	 ty = WN_Cvtl_Ty(wn);
	 break;
	 
      case OPR_PAREN:
	 ty = WN_Tree_Type(WN_kid0(wn));
	 break;

      case OPR_ADD:
	 /* We make an attempt at retaining pointer types for ptr
	  * arithmetics.  If either one of the operands is a pointer,
	  * then return this as the type of the expression, otherwise
	  * return the type indicated by the opc_rtype.
	  */
	 if (WN_opc_rtype(wn) == Pointer_Mtype)
	 {
	    ty = WN_Tree_Type(WN_kid0(wn));
	    if (!TY_Is_Pointer(ty))
	    {
	       ty = WN_Tree_Type(WN_kid1(wn));
	       if (!TY_Is_Pointer(ty))
		  ty = Stab_Mtype_To_Ty(WN_opc_rtype(wn));
	    }
	    
#ifdef _BUILD_WHIRL2C
	    /* Also check that the constant expression can be reduced */
	    if (TY_Is_Pointer(ty) && 
		WN_Get_PtrAdd_Intconst(WN_kid0(wn), 
				       WN_kid1(wn),
				       TY_pointed(ty)) == NULL)
	    {
	       ty = Stab_Mtype_To_Ty(WN_opc_rtype(wn));
	    }
#endif /* _BUILD_WHIRL2C */
	 }
	 else
	    ty = Stab_Mtype_To_Ty(WN_opc_rtype(wn));
	 break;

      case OPR_INTRINSIC_OP:
	 if (INTR_is_adrtmp(WN_intrinsic(wn)))
	 {
	    if (WN_opcode(WN_kid0(wn)) == OPC_VCALL ||
		WN_opcode(WN_kid0(wn)) == OPC_VINTRINSIC_CALL)
	    {
	       ty = WN_Tree_Type(WN_kid0(WN_kid0(wn)));
	    }
	    else
	    {
	       ty = Stab_Pointer_To(WN_Tree_Type(WN_kid0(wn)));
	    }
	 }
	 else if (INTR_is_valtmp(WN_intrinsic(wn)))
	 {
	    if (WN_opcode(WN_kid0(wn)) == OPC_VCALL ||
		WN_opcode(WN_kid0(wn)) == OPC_VINTRINSIC_CALL)
	    {
	       ty = TY_pointed(WN_Tree_Type(WN_kid0(WN_kid0(wn))));
	    }
	    else
	    {
	       ty = WN_Tree_Type(WN_kid0(wn));
	    }
	 }
	 else
	 {
	    ty = WN_intrinsic_return_ty(WN_opcode(wn),
                                        (INTRINSIC)WN_intrinsic(wn), wn);
	 }
	 break;
	 
      case OPR_CVT:
      case OPR_NEG:
      case OPR_ABS:
      case OPR_SQRT:
      case OPR_REALPART:
      case OPR_IMAGPART:
      case OPR_RND:
      case OPR_TRUNC:
      case OPR_CEIL:
      case OPR_FLOOR:
      case OPR_BNOT:
      case OPR_LNOT:
      case OPR_SUB:
      case OPR_MPY:
      case OPR_DIV:
      case OPR_MOD:
      case OPR_REM:
      case OPR_MAX:
      case OPR_MIN:
      case OPR_BAND:
      case OPR_BIOR:
      case OPR_BXOR:
      case OPR_BNOR:
      case OPR_LAND:
      case OPR_LIOR:
      case OPR_CAND:
      case OPR_CIOR:
      case OPR_SHL:
      case OPR_ASHR:
      case OPR_LSHR:
      case OPR_COMPLEX:
      case OPR_RECIP:
      case OPR_RSQRT:
      case OPR_EQ:
      case OPR_NE:
      case OPR_GT:
      case OPR_GE:
      case OPR_LT:
      case OPR_LE:
      case OPR_CONST:
      case OPR_INTCONST:
      case OPR_DIVREM:
      case OPR_HIGHPART:
      case OPR_LOWPART:
      case OPR_HIGHMPY:
	 ty = Stab_Mtype_To_Ty(WN_opc_rtype(wn));
	 break;

      case OPR_PARM:
	 ty = WN_Tree_Type(WN_kid0(wn));
	 break;
	 
      case OPR_COMMA:
         ty = WN_Tree_Type(WN_kid1(wn));
         break;

      case OPR_RCOMMA:
         ty = WN_Tree_Type(WN_kid0(wn));
         break;

      case OPR_ALLOCA:
         ty = WN_ty(wn);
         break;

#ifdef TARG_X8664
      case OPR_REPLICATE:
      case OPR_REDUCE_ADD:
      case OPR_REDUCE_MPY:
      case OPR_REDUCE_MAX:
      case OPR_REDUCE_MIN:
      case OPR_SHUFFLE:
	ty = Stab_Mtype_To_Ty(WN_opc_rtype(wn));
	break;

      case OPR_COMPOSE_BITS:
	ty = WN_Tree_Type(WN_kid0(wn));
	break;

      case OPR_EXTRACT_BITS:
	ty = WN_Tree_Type(WN_kid0(wn));
	break;

#endif /* TARG_X8664 */
      default:
	 /* Only the above forms of expression nodes are handled here */
	 ErrMsg ( EC_Invalid_Case, "WN_Tree_Type", __LINE__ );
      } /* switch */
   } /* else */
   
   return ty;
} /* WN_Tree_Type */


void
Remove_Skips(WN             *ablock,
             W2CF_SKIP_ITEM *skip_info,
             INT            *next_info_idx,
             INT             max_info_idx,
             BOOL            clist)
{
   /* See also the code in prp_wn_mngr.cxx
    */
   WN             *parent;
   WN             *stmt;
   WN_ITER        *iter;
   W2CF_SKIP_ITEM *skip;

   Is_True(WN_opcode(ablock) == OPC_BLOCK,
	   ("expected OPC_BLOCK in Remove_Skips()"));

   for (iter = WN_WALK_StmtIter(ablock);
        iter != NULL;
        iter = WN_WALK_StmtNext(iter))
   {
      parent = WN_ITER_wn(iter);
      if (WN_opcode(parent) == OPC_BLOCK)
      {
         /* Remove any statement sequence enclosed by pragmas indicating
          * that we should skip the statements in w2c or w2f translation.
          */
         stmt = WN_first(parent);
         while (stmt != NULL)
         {
            if (WN_opc_operator(stmt) == OPR_PRAGMA &&
                (clist?
                 WN_pragma(stmt) == WN_PRAGMA_CLIST_SKIP_BEGIN:
                 WN_pragma(stmt) == WN_PRAGMA_FLIST_SKIP_BEGIN))
            {
               Is_True(*next_info_idx <= max_info_idx,
                       ("exceeded max number of skip sequences"));

               /* Get a skipped item info record.
                */
               skip = &skip_info[*next_info_idx];
               *next_info_idx += 1;

               /* Record this skipped item.
                */
               skip->parent = parent;
               skip->first = stmt;
               while (clist?
                      WN_pragma(stmt) != WN_PRAGMA_CLIST_SKIP_END:
                      WN_pragma(stmt) != WN_PRAGMA_FLIST_SKIP_END)
               {
                  stmt = WN_next(stmt);
               }
               skip->last = stmt;

               /* Remove this skipped sequence of statements
                */
               if (WN_prev(skip->first) == NULL)
                  WN_first(parent) = WN_next(skip->last);
               else
                  WN_next(WN_prev(skip->first)) = WN_next(skip->last);

               if (WN_last(parent) == skip->last)
                  WN_last(parent) = WN_prev(skip->first);
               else
                  WN_prev(WN_next(skip->last)) = WN_prev(skip->first);
            }
            stmt = WN_next(stmt);
         } /* if a skip sequence is found */
      } /*if a block is found */
   } /* for each statement */
} /* Remove_Skips */


void
Restore_Skips(const W2CF_SKIP_ITEM *skip_info,
              INT                   number_of_items,
              BOOL                  clist)
{
   WN                   *parent, *prev, *next;
   const W2CF_SKIP_ITEM *skipped;

   while (number_of_items > 0)
   {
      number_of_items--;
      skipped = &skip_info[number_of_items];
      parent = skipped->parent;

      /* Purple might insert instrumentation between the prev and next
       * nodes that used to surround the removed code segment.  We step
       * by any such inserted code, thus re-inserting the temporarily
       * removed code after the instrumentation.
       */
      prev = WN_prev(skipped->first);
      next = WN_next(skipped->last);
      if (prev == NULL && WN_prev(next) != NULL)
	 prev = WN_first(parent); /* Code inserted at beginning of block */
      while (prev != NULL && WN_next(prev) != NULL && prev != WN_prev(next))
	 prev = WN_next(prev);

      /* Reinsert the temporarily removed code (after instrumentations)
       */
      if (prev == NULL)
         WN_first(parent) = skipped->first;
      else
         WN_next(prev) = skipped->first;

      if (next == NULL)
         WN_last(parent) = skipped->last;
      else
         WN_prev(next) = skipped->last;
   }
} /* Restore_Skips */
