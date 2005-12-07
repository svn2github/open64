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


// -*-C++-*-
//                  	LNO Vectorization
//                  	-----------------
//

#ifdef _KEEP_RCS_ID
/*REFERENCED*/
static char *rcs_id = "$Source: /proj/osprey/CVS/open64/osprey1.0/be/lno/simd.cxx,v $ $Revision: 1.1.1.1 $";
#endif /* _KEEP_RCS_ID */

#include "defs.h"
#include "glob.h"
#include "wn.h"
#include "wn_map.h"
#include "cxx_memory.h"
#include "lwn_util.h"
#include "ff_utils.h"
#include "lnoutils.h"
#include "scalar_expand.h"
#include "fission.h"
#include "lnopt_main.h"
#include "opt_du.h"
#include "dep_graph.h"
#include "reduc.h"
#include "snl.h"
#include "name.h"
#include "inner_fission.h"
#include "lno_scc.h"
#include "config_targ.h"
#include "ir_reader.h"             // for fdump_tree
#include "wn_simp.h"               // for WN_Simplify_Tree
#include "const.h"		   // for New_Const_Sym
#include "data_layout.h"	   // for Stack_Alignment
#include "cond.h"                  // for Guard_A_Do

#define ABS(a) ((a<0)?-(a):(a))

BOOL debug;

extern WN *Split_Using_Preg(WN* stmt, WN* simd_op,
                   ARRAY_DIRECTED_GRAPH16* dep_graph,
                   BOOL recursive=TRUE);
typedef STACK<WN*> STACK_OF_WN;
typedef HASH_TABLE<WN*,VINDEX16> WN2VINDEX;
typedef HASH_TABLE<WN*,UINT> WN2UINT;
typedef HASH_TABLE<WN*,INT> WN2INT;
typedef DYN_ARRAY<UINT> UINT_DYN_ARRAY;

#define ESTIMATED_SIZE 100	// used to initialized hash table, etc.
#define Iteration_Count_Threshold 10 // threshold to determine if a loop
                                     // has too few a number of iterations

extern REDUCTION_MANAGER *red_manager;	// LNO reduction manager
extern MEM_POOL SNL_local_pool;		// SNL private mem pool
static MEM_POOL SIMD_default_pool;	// simd private mem pool
static ARRAY_DIRECTED_GRAPH16 *adg;	// PU array dep. graph
// Do not disturb the external reduction manager and we only care about scalar
// reductions.
static REDUCTION_MANAGER *simd_red_manager;	
static REDUCTION_MANAGER *depanal_red_manager;	
static REDUCTION_MANAGER *curr_simd_red_manager;	

static void Simd_Mark_Code (WN* wn);

static INT Last_Vectorizable_Loop_Id = 0;

// simd_2 : examine all scalar reads and writes and do the following
//	1. create name to bit position mappings for new symbol names
//	2. for STID, check if it is scalar expandable
extern  UINT simd_2(
	WN* loop,		// enclosing loop
	SCALAR_STACK* scalar_reads,	// read refs to be examined
	SCALAR_STACK* scalar_writes,	// write refs to be examined
	BINARY_TREE<NAME2BIT> *mapping_dictionary,
		// dictionary to be updated which records mapping from
		// symbol names to bit positions
	FF_STMT_LIST& expandable_ref_list)
		// list contains all expandable refs after simd_2
{
  
  UINT bit_position=0;

  SCALAR_STACK *scalar_ref_list[2];
  scalar_ref_list[0]=scalar_reads;
  scalar_ref_list[1]=scalar_writes;

  // look at both reads and writes
  for (INT i=0; i<2; i++) {

    for (INT j=0; j<scalar_ref_list[i]->Elements(); j++) {
  
      WN* scalar_ref=scalar_ref_list[i]->Bottom_nth(j)->Bottom_nth(0)->Wn;
      NAME2BIT temp_map;

      temp_map.Set_Symbol(scalar_ref);

      // create and enter new name to bit_position mapping if it has
      // not been created
      // also check if it is scalar expandable if the ref is a STID
      const BINARY_TREE_NODE<NAME2BIT> *tree_node;
      if (mapping_dictionary->Find(temp_map)==NULL) {

        if (LNO_Test_Dump) {
          temp_map.Get_Symbol().Print(stdout);
          printf("\t\tat bit %d\n", bit_position);
        }
        temp_map.Set_Bit_Position(bit_position);
        mapping_dictionary->Enter(temp_map);
      }

      if (i==1) {
        SE_RESULT se_result = Scalar_Expandable(scalar_ref,loop, Du_Mgr);
        if (!Get_Trace(TP_LNOPT2, TT_LNO_DISABLE_SEFIN) 
            && se_result != SE_NONE || se_result == SE_EASY)
          expandable_ref_list.Append(scalar_ref,&SIMD_default_pool);
      }

      bit_position++;
    }
  }
  return bit_position;
}

static BOOL is_vectorizable_op (OPERATOR opr, TYPE_ID rtype, TYPE_ID desc) {

  switch (opr) {
  case OPR_SELECT:
    if (MTYPE_is_float(rtype))
      return TRUE;
    else
      return FALSE;
  case OPR_EQ: case OPR_NE: 
  case OPR_LT: case OPR_GT: case OPR_LE: case OPR_GE:
    if (MTYPE_is_float(desc) && MTYPE_is_integral(rtype))
      return TRUE;
    else
      return FALSE;
  case OPR_CVT:
    if (rtype == MTYPE_F8 && desc == MTYPE_I4)
      return TRUE;
    else
      return FALSE;
  case OPR_INTRINSIC_OP:
    return TRUE;
  case OPR_PAREN:    
    return TRUE;
  case OPR_NEG:
    if (rtype == MTYPE_F4 || rtype == MTYPE_F8)
      return TRUE;
    else
      return FALSE;
  case OPR_ADD:
  case OPR_SUB:
    return TRUE;
  case OPR_MPY:
    if (rtype == MTYPE_F8 || rtype == MTYPE_F4 || 
	// I2MPY followed by I2STID is actually I4MPY followed by I2STID 
	// We will distinguish between I4MPY and I2MPY in Is_Well_Formed_Simd
	rtype == MTYPE_I4)
      return TRUE;
    else
      return FALSE;
  case OPR_DIV:
    // Look at icc
    if (rtype == MTYPE_F8 || rtype == MTYPE_F4)
      return TRUE;
    else
      return FALSE;
  case OPR_MAX:
  case OPR_MIN:
    if (rtype == MTYPE_F4 || rtype == MTYPE_F8)
      return TRUE;
    else
      return FALSE;
  case OPR_BAND:
  //case OPR_BIOR:
  case OPR_BXOR:
    if (rtype != MTYPE_F4 && rtype != MTYPE_F8)
      return TRUE;
    else
      return FALSE;    
  case OPR_SQRT:
    if (rtype == MTYPE_F4 || rtype == MTYPE_F8)
      return TRUE;
    else
      return FALSE;
  case OPR_RSQRT:
  case OPR_RECIP:
    if (rtype == MTYPE_F4)
      return TRUE;
    else
      return FALSE;
  default:
    return FALSE;
  }  
}

static WN* find_loop_var_in_simple_ub(WN* loop) {
  WN* start=WN_start(loop);
  WN* end=WN_end(loop);
  WN* step;
  WN* add=WN_kid0(WN_step(loop));

  if (WN_operator(WN_kid0(add))==OPR_INTCONST)
    step=WN_kid0(add);
  else if (WN_operator(WN_kid1(add))==OPR_INTCONST)
    step=WN_kid1(add);
  else
    return NULL;

  if (WN_const_val(step)!=1)
    return NULL;

  ACCESS_ARRAY* aa=Get_Do_Loop_Info(loop)->UB;
  //if (aa->Too_Messy || aa->Num_Vec()!=1)
  if (aa->Too_Messy)
    return NULL;

  WN* loop_index=NULL;
  USE_LIST* use_list=Du_Mgr->Du_Get_Use(start);
  if (use_list->Incomplete())
    return NULL;
  USE_LIST_ITER uiter(use_list);
  for (DU_NODE* u=uiter.First(); !uiter.Is_Empty(); u=uiter.Next()) {
    WN* use=u->Wn();
    if (use==loop_index)  // duplicate uses in the list
      continue;
    WN* tmp=use;
    while (tmp && tmp!=end)
      tmp=LWN_Get_Parent(tmp);
    if (tmp==end)
      if (loop_index)
        return NULL;  // a second use of loop index var is found
      else
        loop_index=use;
  }

  WN* tmp=LWN_Get_Parent(loop_index);
  OPERATOR opr=WN_operator(tmp);
  if (opr==OPR_MPY) {
    WN* coeff_wn=WN_kid0(tmp);
    if (coeff_wn==loop_index)
      coeff_wn=WN_kid1(tmp);
    if (WN_operator(coeff_wn)!=OPR_INTCONST)
      return NULL;
    tmp=LWN_Get_Parent(tmp);
  } else if (opr==OPR_ADD) {
    tmp=LWN_Get_Parent(tmp);
  } else if (opr==OPR_GE || opr==OPR_LE ||
             opr==OPR_GT || opr==OPR_LT) {
  } else
    return NULL;

  while (tmp!=end) {
    if (WN_operator(tmp)!=OPR_ADD)
      return NULL;
    tmp=LWN_Get_Parent(tmp);
  }
  return loop_index;
}

typedef enum {
  Invariant=0,	
  Reference=1,
  Simple=2,
  Complex=3
} SIMD_OPERAND_KIND;

static SIMD_OPERAND_KIND simd_operand_kind(WN* wn, WN* loop) {
  OPERATOR opr=WN_operator(wn);

  if (opr==OPR_PARM) {
    if (WN_Parm_By_Reference(wn))
      return Reference;
    wn=WN_kid0(wn);
    opr=WN_operator(wn);
  }

  if (opr==OPR_CONST || opr==OPR_INTCONST) {
    return Invariant;
  } else if (opr==OPR_LDA) {
    return Reference;
  } else if (opr==OPR_LDID) {
    SYMBOL symbol1(wn);
    SYMBOL symbol2(WN_index(loop));
    if (symbol1==symbol2)
      return Complex;
    DEF_LIST* def_list=Du_Mgr->Ud_Get_Def(wn);
    WN* loop_stmt=def_list->Loop_stmt();
    WN* body=WN_do_body(loop);
    DEF_LIST_ITER d_iter(def_list);
    for (DU_NODE* dnode=d_iter.First(); !d_iter.Is_Empty();
                  dnode=d_iter.Next()) {
      WN* def=dnode->Wn();
      WN* stmt=Find_Stmt_Under(def,body);
      if (stmt!=NULL)
        return Complex;
    }
    return Invariant;
  } else if (opr==OPR_ILOAD) {
    if (WN_kid_count(wn) != 1 || WN_offset(wn) != 0  ||
        WN_operator(WN_kid0(wn)) != OPR_ARRAY)
      return Complex;

    ACCESS_ARRAY* aa=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,WN_kid0(wn));

    if (aa->Too_Messy)
      return Complex;

    ACCESS_VECTOR* av;
    INT loopno=Do_Loop_Depth(loop);

    BOOL seen_non_zero=FALSE;
    for (INT i=0; i<aa->Num_Vec(); i++) {
      av=aa->Dim(i);
      if (av->Too_Messy || av->Non_Lin_Symb)
        return Complex;
      if ((av->Non_Const_Loops() > loopno))
        return Complex;
      if (av->Loop_Coeff(loopno)!=0 && i != aa->Num_Vec()-1)
	return Reference;
      if (av->Loop_Coeff(loopno)!=0)
        if (seen_non_zero) // cannot have two non-zero
          return Complex;
        else
          seen_non_zero=TRUE;
    }
    if (!seen_non_zero)
      return Invariant;
    return Simple;
  } else if (opr==OPR_ISTORE) {
    if (WN_offset(wn) != 0  ||
        WN_operator(WN_kid1(wn)) != OPR_ARRAY)
      return Complex;

    ACCESS_ARRAY* aa=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,WN_kid1(wn));

    if (aa->Too_Messy)
      return Complex;

    ACCESS_VECTOR* av;
    INT loopno=Do_Loop_Depth(loop);

    BOOL seen_non_zero=FALSE;
    for (INT i=0; i<aa->Num_Vec(); i++) {
      av=aa->Dim(i);
      if (av->Too_Messy || av->Non_Lin_Symb)
        return Complex;
      if ((av->Non_Const_Loops() > loopno))
        return Complex;
      if (av->Loop_Coeff(loopno)!=0 && i != aa->Num_Vec()-1)
	return Reference;
      if (av->Loop_Coeff(loopno)!=0)
        if (seen_non_zero) // cannot have two non-zero
          return Complex;
        else
          seen_non_zero=TRUE;
    }
    if (!seen_non_zero)
      return Invariant;
    return Simple;
  }

  return Complex;  
}

/* Are the loads and stores in this tree node all unaligned ?
 * Better said, are we going to mark down all the vector loads and vector 
 * stores as unaligned, because we can not determine alignment at compile time.
 * If so, then it may not be that useful to do SIMD after all.
 * Right now, we consider only formal parameters in this category. 
 * Under certain conditions, we override this heuristic.
 * (1) If there is one or more OPR_RECIP in the loop body
 * (2) If the SIMD operand size is < 8 bytes.
 */
static BOOL Simd_Benefit (WN* wn) {

  if (LNO_Run_Simd == 0)
    return FALSE;
  else if (LNO_Run_Simd == 2)
    return TRUE;

  if (wn == NULL)
    return FALSE;

  if (WN_operator(wn) == OPR_CVT)
    return TRUE;
     
  if (WN_operator(wn) == OPR_RECIP)
    return TRUE;

  if (OPCODE_is_store(WN_opcode(wn)) &&
      MTYPE_byte_size(WN_desc(wn)) < 8)
    return TRUE;

  if (WN_operator(wn) == OPR_ARRAY &&
      WN_has_sym(WN_array_base(wn)) &&
      ST_sclass(WN_st(WN_array_base(wn))) != SCLASS_FORMAL)
    return TRUE;

  if (WN_opcode(wn) == OPC_BLOCK) 
    for (WN* stmt=WN_first(wn); stmt;) {
      WN* next_stmt=WN_next(stmt);
      if (Simd_Benefit(stmt))
	return TRUE;
      stmt=next_stmt;
    }

  for (UINT kidno = 0; kidno < WN_kid_count(wn); kidno ++) {
    if (Simd_Benefit(WN_kid(wn, kidno)))
      return TRUE;
  }

  return FALSE;
}

static BOOL Is_Vectorizable_Tree (WN* tree)
{
  if (!is_vectorizable_op(WN_operator(tree), WN_rtype(tree), WN_desc(tree)))
    return FALSE;

  WN *kid0 = WN_kid0(tree);
  WN *kid1 = WN_kid0(tree);

  if (WN_kid_count(tree) > 2)
    return FALSE;

  if (WN_operator(kid0) != OPR_ILOAD &&
      WN_operator(kid0) != OPR_LDID &&
      WN_operator(kid0) != OPR_CONST &&
      WN_operator(kid0) != OPR_INTCONST &&
      !Is_Vectorizable_Tree(kid0))
    return FALSE;

  if (WN_kid_count(tree) != 1 &&
      WN_operator(kid1) != OPR_ILOAD &&
      WN_operator(kid1) != OPR_LDID &&
      WN_operator(kid1) != OPR_CONST &&
      WN_operator(kid1) != OPR_INTCONST &&
      !Is_Vectorizable_Tree(kid1))
    return FALSE;    

  return TRUE;
}

static BOOL Is_Well_Formed_Simd ( WN* wn, WN* loop)
{
  // for vectorizing copies
  if (WN_operator(wn) == OPR_ILOAD) {
    if (WN_operator(LWN_Get_Parent(wn)) == OPR_ISTORE)
      return TRUE;
    else
      return FALSE;
  }
  
  WN* parent = LWN_Get_Parent(wn);
  WN* kid0 = WN_kid0(wn);
  WN* kid1 = WN_kid1(wn);

  if (WN_kid_count(wn) > 2 && WN_operator(wn) != OPR_SELECT)
    return FALSE;

  if (WN_operator(wn) == OPR_SELECT) {
    if (!OPCODE_is_compare(WN_opcode(kid0)) ||
	!MTYPE_is_float(WN_desc(kid0)) || 
	!MTYPE_is_integral(WN_rtype(kid0)))
      return FALSE;
    kid0 = WN_kid1(wn);
    kid1 = WN_kid2(wn);
  }
 
  if (OPCODE_is_compare(WN_opcode(wn)) && WN_operator(parent) != OPR_SELECT)
    return FALSE;
     
  if (!LNO_Simd_Reduction) {
    if (WN_operator(parent) == OPR_STID)
      return FALSE;

    if (WN_operator(kid0) == OPR_LDID &&
	(WN_desc(kid0) == MTYPE_I1 ||
	 WN_desc(kid0) == MTYPE_I2 ||
        WN_desc(parent) == MTYPE_I1 ||
        WN_desc(parent) == MTYPE_I2))
      return FALSE;

   if (kid1 && WN_operator(kid1) == OPR_LDID &&
       (WN_desc(kid1) == MTYPE_I1 ||
        WN_desc(kid1) == MTYPE_I2 ||
        WN_desc(parent) == MTYPE_I1 ||
        WN_desc(parent) == MTYPE_I2))	 
     return FALSE;
  } 

  if (WN_operator(wn) == OPR_MPY && WN_rtype(wn) == MTYPE_I4 &&
      WN_desc(parent) != MTYPE_I2)
    return FALSE;
 
  // F4 REDUCE_MPY is known to be inaccurate with other compilers also.
  if (WN_operator(wn) == OPR_MPY && WN_desc(parent) == MTYPE_F4 &&
      WN_operator(parent) == OPR_STID && LNO_Run_Simd != 2 &&
      // bug 2456 - scalar expansion test may pass down non-reduction statements
      // and we don't care if OPR_MPY is in the middle of the expression.
      curr_simd_red_manager->Which_Reduction(parent) == RED_MPY)
    return FALSE;
     
  if (WN_operator(parent) != OPR_ISTORE && WN_operator(parent) != OPR_STID &&
      !is_vectorizable_op(WN_operator(parent), 
			  WN_rtype(parent), WN_desc(parent)))
    return FALSE;
  
  if (WN_operator(kid0) == OPR_ILOAD) {
    WN* array0 = WN_kid0(kid0);
    if (WN_operator(array0) == OPR_ARRAY &&
	WN_operator(WN_kid0(array0)) != OPR_LDID &&
	WN_operator(WN_kid0(array0)) != OPR_LDA)
      return FALSE;
  }
  if (WN_kid_count(wn) > 1 && 
      WN_operator(kid1) == OPR_ILOAD) {
    WN* array1 = WN_kid0(kid1);
    if (WN_operator(array1) == OPR_ARRAY &&
	WN_operator(WN_kid0(array1)) != OPR_LDID &&
	WN_operator(WN_kid0(array1)) != OPR_LDA)
      return FALSE;
  }

  if (WN_operator(kid0) == OPR_ILOAD && 
      WN_operator(WN_kid0(kid0)) == OPR_ARRAY) {
    ACCESS_ARRAY* aa = (ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,WN_kid0(kid0));
    ACCESS_VECTOR* av;
    INT loopno = Do_Loop_Depth(loop);
    for (INT i = 0; i < aa->Num_Vec(); i ++) {
      av = aa->Dim(i);
      if (av->Loop_Coeff(loopno)!=0 && i != aa->Num_Vec()-1)
	return FALSE;
      if (i == aa->Num_Vec()-1 && av->Loop_Coeff(loopno) != 1)
	return FALSE;
    }
  }
  if (WN_kid_count(wn) > 1 && 
      WN_operator(kid1) == OPR_ILOAD && 
      WN_operator(WN_kid0(kid1)) == OPR_ARRAY) {
    ACCESS_ARRAY* aa = (ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,WN_kid0(kid1));
    ACCESS_VECTOR* av;
    INT loopno = Do_Loop_Depth(loop);
    for (INT i = 0; i < aa->Num_Vec(); i ++) {
      av = aa->Dim(i);
      if (av->Loop_Coeff(loopno)!=0 && i != aa->Num_Vec()-1)
	return FALSE;
      if (i == aa->Num_Vec()-1 && av->Loop_Coeff(loopno) != 1)
	return FALSE;
    }
  }
  if (WN_operator(parent) == OPR_ISTORE && 
      WN_operator(WN_kid1(parent)) == OPR_ARRAY) {
    ACCESS_ARRAY* aa = (ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,WN_kid1(parent));
    ACCESS_VECTOR* av;
    INT loopno = Do_Loop_Depth(loop);
    for (INT i = 0; i < aa->Num_Vec(); i ++) {
      av = aa->Dim(i);
      if (av->Loop_Coeff(loopno)!=0 && i != aa->Num_Vec()-1)
	return FALSE;
      if (i == aa->Num_Vec()-1 && av->Loop_Coeff(loopno) != 1)
	return FALSE;
    }    
  }

  // Test first operand.
  if (WN_operator(kid0) != OPR_ILOAD &&
      WN_operator(kid0) != OPR_LDID &&
      WN_operator(kid0) != OPR_CONST &&
      WN_operator(kid0) != OPR_INTCONST &&
      !Is_Vectorizable_Tree(kid0))
    return FALSE;

  // Test second operand. 
  if (WN_kid_count(wn) == 2 && 
      WN_operator(kid1) != OPR_ILOAD &&
      WN_operator(kid1) != OPR_LDID &&
      WN_operator(kid1) != OPR_CONST &&
      WN_operator(kid1) != OPR_INTCONST &&
      !Is_Vectorizable_Tree(kid1))
    return FALSE;

  // Two invariant operands
  if (WN_kid_count(wn) == 2 &&
      ((WN_operator(kid0) == OPR_CONST || WN_operator(kid0) == OPR_INTCONST) &&
       (WN_operator(kid1) == OPR_CONST || WN_operator(kid1) == OPR_INTCONST)))
    return FALSE;  

  if (WN_operator(kid0) == OPR_LDID) {
    SYMBOL symbol1(kid0);
    SYMBOL symbol2(WN_index(loop));
    if (symbol1 == symbol2)
      return FALSE;
  }

  if (kid1 && WN_operator(kid1) == OPR_LDID) {
    SYMBOL symbol1(kid1);
    SYMBOL symbol2(WN_index(loop));
    if (symbol1 == symbol2)
      return FALSE;
  }

  if ((WN_operator(kid0) == OPR_ILOAD && WN_field_id(kid0) != 0) ||
      (kid1 && WN_operator(kid1) == OPR_ILOAD && WN_field_id(kid1) != 0) ||
      (WN_operator(parent) == OPR_ISTORE && WN_field_id(parent) != 0))
    return FALSE;

  if (WN_operator(kid0) == OPR_ILOAD && 
      WN_operator(WN_kid0(kid0)) == OPR_ARRAY &&
      WN_operator(WN_kid0(WN_kid0(kid0))) == OPR_LDID &&
      WN_operator(WN_kid1(WN_kid0(kid0))) == OPR_LDID) {
    SYMBOL symbol1(WN_kid0(WN_kid0(kid0)));
    SYMBOL symbol2(WN_kid1(WN_kid0(kid0)));    
    if (symbol1.St() == symbol2.St())
      return FALSE;
  }

  if (kid1 && WN_operator(kid1) == OPR_ILOAD && 
      WN_operator(WN_kid0(kid1)) == OPR_ARRAY &&
      WN_operator(WN_kid0(WN_kid0(kid1))) == OPR_LDID &&
      WN_operator(WN_kid1(WN_kid0(kid1))) == OPR_LDID) {
    SYMBOL symbol1(WN_kid0(WN_kid0(kid1)));
    SYMBOL symbol2(WN_kid1(WN_kid0(kid1)));
    if (symbol1.St() == symbol2.St())
      return FALSE;
  }

  if (WN_operator(parent) == OPR_ISTORE && 
      WN_operator(WN_kid1(parent)) == OPR_ARRAY &&
      WN_operator(WN_kid0(WN_kid1(parent))) == OPR_LDID &&
      WN_operator(WN_kid1(WN_kid1(parent))) == OPR_LDID) {
    SYMBOL symbol1(WN_kid0(WN_kid1(parent)));
    SYMBOL symbol2(WN_kid1(WN_kid1(parent)));
    if (symbol1.St() == symbol2.St())
      return FALSE;
  }

  // Can not vector copy different sized arrays. 
  // The elements are not contiguous
  WN* stmt = parent; // bug 2336 - trace up the correct type
  while(stmt && !OPCODE_is_store(WN_opcode(stmt)) && 
	WN_operator(stmt) != OPR_DO_LOOP){
    stmt = LWN_Get_Parent(stmt);
  }    
  if (stmt && WN_operator(stmt) != OPR_DO_LOOP &&
      (WN_operator(kid0) == OPR_ILOAD && WN_rtype(kid0) != WN_desc(kid0) &&
       WN_desc(kid0) != WN_desc(stmt)) ||
      (kid1 && WN_operator(kid1) == OPR_ILOAD && 
       WN_rtype(kid1) != WN_desc(kid1) &&
       WN_desc(kid1) != WN_desc(stmt)))
    return FALSE;

  // Fix Bug 566
  // Check for array bases that are pointer variables assigned to registers.
  // There is no way to align such arrays.  
  if (WN_operator(parent) == OPR_ISTORE && 
      WN_operator(WN_kid1(parent)) == OPR_ARRAY &&
      WN_operator(WN_kid0(WN_kid1(parent))) == OPR_LDID) {
    ST *base_st; INT64 offset;
    Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid1(parent))), 
			   &base_st, &offset);
    if (ST_sclass(base_st) == SCLASS_REG)
      return FALSE;
  }
  if (WN_operator(kid0) == OPR_ILOAD && 
      WN_operator(WN_kid0(kid0)) == OPR_ARRAY &&
      WN_operator(WN_kid0(WN_kid0(kid0))) == OPR_LDID) {
    ST *base_st; INT64 offset;
    Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid0(kid0))), 
			   &base_st, &offset);
    if (ST_sclass(base_st) == SCLASS_REG)
      return FALSE;
  }
  if (kid1 && WN_operator(kid1) == OPR_ILOAD && 
      WN_operator(WN_kid0(kid1)) == OPR_ARRAY &&
      WN_operator(WN_kid0(WN_kid0(kid1))) == OPR_LDID) {
    ST *base_st; INT64 offset;
    Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid0(kid1))), 
			   &base_st, &offset);
    if (ST_sclass(base_st) == SCLASS_REG)
      return FALSE;
  }


  // Fix bug 568
  // For Fortran loops that copy array sections, the lowerer may return
  // fields in structure without a field Id. Also, we can not
  // rely on the offset field in the ISTORE which may be 0 (first field in
  // a structure). To work around the problem, we compare the size of the 
  // array nodes.
  {
    INT store_size, load0_size, load1_size;
    store_size = load0_size = load1_size = -1;

    if (WN_operator(parent) == OPR_ISTORE && 
        WN_operator(WN_kid1(parent)) == OPR_ARRAY)
      store_size = WN_element_size(WN_kid1(parent));
    if (WN_operator(kid0) == OPR_ILOAD &&
        WN_operator(WN_kid0(kid0)) == OPR_ARRAY)
      load0_size = WN_element_size(WN_kid0(kid0));
    if (kid1 && WN_operator(kid1) == OPR_ILOAD &&
        WN_operator(WN_kid0(kid1)) == OPR_ARRAY)
      load1_size = WN_element_size(WN_kid0(kid1));
    if (WN_operator(kid0) == OPR_INTCONST ||
	WN_operator(kid0) == OPR_CONST)
      load0_size = MTYPE_byte_size(WN_rtype(kid0));
    if (kid1 && 
	(WN_operator(kid1) == OPR_INTCONST ||
	 WN_operator(kid1) == OPR_CONST))
      load1_size = MTYPE_byte_size(WN_rtype(kid1));
    if (store_size != -1 && load0_size != -1 && (!kid1 || load1_size != -1) &&
        (store_size != load0_size || (kid1 && (store_size != load1_size))))
      if (WN_operator(wn) != OPR_INTRINSIC_OP)
	return FALSE;
  }
  
  // Bug 2962
  // Can not vectorize "a[i].b = " ; this is not caught by the other checks 
  // because sometimes field id is not set and even if set it may be zero.
  if (WN_operator(parent) == OPR_ISTORE && 
      WN_operator(WN_kid1(parent)) == OPR_ARRAY &&
      WN_element_size(WN_kid1(parent)) != MTYPE_byte_size(WN_desc(parent)))
    return FALSE;

  return TRUE;
}

static WN* Find_Do_Body (WN* simd_op)
{
  WN* parent = LWN_Get_Parent(LWN_Get_Parent(simd_op));
  WN* body = LWN_Get_Parent(simd_op);

  while (parent) {
    if (WN_operator(parent) == OPR_DO_LOOP)
      break;
    parent = LWN_Get_Parent(parent);
    body = LWN_Get_Parent(body);
  }
  return body;
}

static BOOL is_vectorizable_op_stmt(WN* stmt, WN* loop) {

  OPERATOR opr=WN_operator(stmt);
  if (opr==OPR_STID || opr==OPR_ISTORE) {
    WN* rhs=WN_kid0(stmt);
    opr=WN_operator(rhs);
    TYPE_ID rtype = WN_rtype(rhs);
    TYPE_ID desc = WN_desc(rhs);
    if (is_vectorizable_op(opr, rtype, desc)) {
      if (Is_Well_Formed_Simd(rhs, loop)) {
	return TRUE;
      }
    }
  }
  return FALSE;
}

static UINT_DYN_ARRAY* simd_fis_merge_scc_to_form_new_loop(
        UINT            total_scc,      // total number of SCCs
        FF_STMT_LIST*      scc,            // list of statements for SCCs
        UINT*		scc_size,	// size of each scc
        WN*             loop,           // loop enclosing the SCCs
        SCC_DIRECTED_GRAPH16 *scc_dep_g // SCC dependence graph
        )
{

 
  // store sccs chosen as seeds to form new loops
  UINT_DYN_ARRAY *seed_scc=CXX_NEW(UINT_DYN_ARRAY(&SIMD_default_pool),
                    &SIMD_default_pool);

  // the queues for SCC available to be merged
  // scc_queue[0] stores simd scc
  // scc_queue[1] stores non_simd scc
  INT* scc_queue[2];
  UINT head0, head1, tail0, tail1;  // heads and tails of scc_queue

  INT scc_remained=total_scc;
  UINT simd=0;
  UINT non_simd=1;

  UINT i;
  for (i=0; i<2; i++) {
    scc_queue[i]= CXX_NEW_ARRAY(INT,total_scc+1,&SIMD_default_pool);
  }
  head0=tail0=0;
  head1=tail1=0;

  // initially, only those SCCs without any predecessor are available
  for (i=1; i<=total_scc; i++) {

    if (scc_size[i]>0 && scc_dep_g->Get_In_Edge(i)==0) {
      // scc_size could be 0 if the single assignment stmt is removed
      // after copy_propagation
      if (scc_size[i]==1) {
        WN* stmt=scc[i].Head()->Get_Stmt();
        if (is_vectorizable_op_stmt(stmt,loop))
          scc_queue[simd][head0++]=i;
        else
          scc_queue[non_simd][head1++]=i;
      } else
          scc_queue[non_simd][head1++]=i;
    } else if (scc_size[i]==0)
      scc_remained--;
  }

  INT kind=simd;
  INT last_loop_kind=simd;
  WN* body=WN_do_body(loop);
  UINT entry_loop_id = seed_scc->Newidx();
  BOOL entry = TRUE;
  while (1) {
    UINT current_scc;
    if (kind==simd && head0!=tail0) {
      current_scc=scc_queue[simd][tail0++];

      if (entry) {
	entry = FALSE;
	(*seed_scc)[entry_loop_id]=current_scc;
      } else {
	if (last_loop_kind!= simd) {
	  UINT loop_id=seed_scc->Newidx();
	  (*seed_scc)[loop_id]=current_scc;
	} else {
	  scc[(*seed_scc)[seed_scc->Lastidx()]].Append_List(&scc[current_scc]);
	}
      }
      last_loop_kind=simd;
      scc_remained--;
    } else if (kind==non_simd && head1!=tail1) {
      current_scc=scc_queue[non_simd][tail1++];

      if (entry) {
	entry = FALSE;
	(*seed_scc)[entry_loop_id]=current_scc;
      } else {
	if (last_loop_kind!=non_simd) {
	  UINT loop_id=seed_scc->Newidx();
	  (*seed_scc)[loop_id]=current_scc;
	} else {
	  scc[(*seed_scc)[seed_scc->Lastidx()]].Append_List(&scc[current_scc]);
	}
      }
      last_loop_kind=non_simd;
      scc_remained--;
    } else {
      if (head0!=tail0)
        kind=simd;
      else if (head1!=tail1)
        kind=non_simd;
      else
        break;
      continue;
    }

    // remove all out-edges of scc and put new candidate SCCs in queue
    EINDEX16 e=scc_dep_g->Get_Out_Edge(current_scc);
    while (e) {
  
      VINDEX16 v=scc_dep_g->Get_Sink(e);
      scc_dep_g->Delete_Edge(e);
      if (scc_dep_g->Get_In_Edge(v)==0) {
        if (scc_size[v]==1) {
          WN* stmt=scc[v].Head()->Get_Stmt();
          if (is_vectorizable_op_stmt(stmt,loop))
            scc_queue[simd][head0++]=v;
          else
            scc_queue[non_simd][head1++]=v;
        } else
          scc_queue[non_simd][head1++]=v;
      }
      e=scc_dep_g->Get_Next_Out_Edge(e);
    }
  }
  FmtAssert(scc_remained==0,("Merging not finished in simd phase"));
  return seed_scc;
}

static void simd_fis_separate_loop_and_scalar_expand(
   UINT_DYN_ARRAY* new_loops,
   FF_STMT_LIST* scc,
   WN* loop,
   FF_STMT_LIST& expandable_ref_list)
{
  WN* body=WN_do_body(loop);
  UINT total_loops=new_loops->Lastidx()+1;
  UINT *loop_size=CXX_NEW_ARRAY(UINT,total_loops,&SIMD_default_pool);
  // hash table which maps a statement to a result loop (id)
  WN2INT *stmt_to_loop=
  CXX_NEW(WN2INT(ESTIMATED_SIZE, &SIMD_default_pool),
	  &SIMD_default_pool);

  BOOL fission_ok = (total_loops>1);
  UINT i;
  for (i=0; i<total_loops; i++) {

    UINT seed_scc=(*new_loops)[i];
    UINT total_stmt=0;
    FF_STMT_ITER s_iter(&scc[seed_scc]);
    for (FF_STMT_NODE* stmt_node=s_iter.First(); !s_iter.Is_Empty();
      stmt_node=s_iter.Next()) {
      WN* stmt=stmt_node->Get_Stmt();
      stmt_to_loop->Enter(stmt,i);
      LWN_Insert_Block_Before(body,NULL,LWN_Extract_From_Block(stmt));
      total_stmt++;
    }
    loop_size[i]=total_stmt;

  }

  if (total_loops>=1) { // used to be > 1 09/14/2003
    BOOL has_calls_or_gotos_or_inner_loops = FALSE;
    DO_LOOP_INFO* loop_info=Get_Do_Loop_Info(loop, FALSE);
    if (loop_info->Has_Calls || loop_info->Has_Gotos || !loop_info->Is_Inner) {
      has_calls_or_gotos_or_inner_loops = TRUE;
    }

    BOOL need_expansion = FALSE; 
    BOOL need_finalization = FALSE; 
    STACK<WN*> se_stack(&SIMD_default_pool);
    STACK<BOOL> finalize_stack(&SIMD_default_pool);
    FF_STMT_ITER r_iter(&expandable_ref_list);
    for (FF_STMT_NODE* ref_node=r_iter.First(); !r_iter.Is_Empty();
        ref_node=r_iter.Next()) {
        WN* ref=ref_node->Get_Stmt();
        WN* stmt0=Find_Stmt_Under(ref,body);
	WN* wn_eq_loop = NULL; 
        STACK<WN*>* equivalence_class=
          Scalar_Equivalence_Class(ref, Du_Mgr, &SIMD_default_pool,
	    TRUE, &wn_eq_loop);
        BOOL expand = FALSE;
        BOOL finalize = FALSE;
        while (!equivalence_class->Is_Empty() && !expand) {
          WN* ref1=equivalence_class->Pop();
          WN* stmt1=Find_Stmt_Under(ref1,body);
          if (1) { // 09/14/2003 if (stmt_to_loop->Find(stmt0)!=stmt_to_loop->Find(stmt1)) {
            expand = TRUE;
  	    need_expansion = TRUE; 
            if (wn_eq_loop != NULL) {
	      finalize = TRUE; 
	      need_finalization = TRUE; 
	    } 
	  }
        }
        // cannot do expansion right away because it will
        // destroy stmt_to_loop mapping
        if (expand) {
          se_stack.Push(ref);
	  finalize_stack.Push(finalize); 
	}
    }
    WN* guard_tests[1];
    guard_tests[0] = NULL;
    if (need_finalization)
      SE_Guard_Tests(loop, 1, guard_tests, Do_Loop_Depth(loop));
    for (i=0; i<se_stack.Elements(); i++) {
      WN* wn_ref = se_stack.Top_nth(i); 
      SYMBOL sym(wn_ref); 
      INT dummy[1]={0};
      BOOL finalize = finalize_stack.Top_nth(i); 
      Scalar_Expand(loop, loop, NULL, sym, &loop, dummy, 1, FALSE, 
		    finalize, FALSE, guard_tests);
    }

    WN* tmp_loop1=loop;
    WN** wn_starts=CXX_NEW_ARRAY(WN*, total_loops, &SIMD_default_pool);
    WN** wn_ends=CXX_NEW_ARRAY(WN*, total_loops, &SIMD_default_pool);
    WN** wn_steps=CXX_NEW_ARRAY(WN*, total_loops, &SIMD_default_pool);
    WN** new_loops=CXX_NEW_ARRAY(WN*, total_loops, &SIMD_default_pool);

    wn_starts[0]=WN_kid0(WN_start(tmp_loop1));
    wn_ends[0]=WN_end(tmp_loop1);
    wn_steps[0]=WN_kid0(WN_step(tmp_loop1));
    new_loops[0]=loop;
    WN* stmt=WN_first(body);

    for (i=0; i<total_loops-1; i++) {
  
      INT size=loop_size[i];

      for (INT j=0; j<size; j++)
        stmt=WN_next(stmt);

      WN* tmp_loop2;

      Separate(tmp_loop1, WN_prev(stmt), 1, &tmp_loop2);
      LWN_Parentize(tmp_loop2);
      DO_LOOP_INFO* new_loop_info =
        CXX_NEW(DO_LOOP_INFO(loop_info,&LNO_default_pool), &LNO_default_pool);
      Set_Do_Loop_Info(tmp_loop2,new_loop_info);
      if (has_calls_or_gotos_or_inner_loops) {
        // should check gotos and calls when they are allowed to be in
        // loops handled by simd phase
      }
      wn_starts[i+1]=WN_kid0(WN_start(tmp_loop2));
      wn_ends[i+1]=WN_end(tmp_loop2);
      wn_steps[i+1]=WN_kid0(WN_step(tmp_loop2));
      new_loops[i+1]=tmp_loop2;

      tmp_loop1=tmp_loop2;
    }

    Fission_DU_Update(Du_Mgr,red_manager,wn_starts,wn_ends,wn_steps,
		      total_loops,new_loops);
    for (i=0; i<total_loops-1; i++)
      scalar_rename(LWN_Get_Parent(wn_starts[i]));

    adg->Fission_Dep_Update(new_loops[0],total_loops);
  }
}

typedef enum { V16I1, V16I2, V16I4, V16I8, INVALID } SIMD_KIND;
#define V16F4 V16I4
#define V16F8 V16I8

static SIMD_KIND 
Find_Simd_Kind ( STACK_OF_WN *vec_simd_ops )
{
  SIMD_KIND last_simd_kind = INVALID;
  UINT i;

  for (i=0; i<vec_simd_ops->Elements(); i++) {
    WN* simd_op=vec_simd_ops->Top_nth(i);

    WN* iload0=WN_kid0(simd_op);
    WN* iload1=WN_kid1(simd_op);
    WN* istore=LWN_Get_Parent(simd_op);

    TYPE_ID type;

    // bug 2336 - trace up the correct type
    while(istore && !OPCODE_is_store(WN_opcode(istore)) && 
	  WN_operator(istore) != OPR_DO_LOOP)
      istore = LWN_Get_Parent(istore);
    FmtAssert(istore || WN_operator(istore) == OPR_DO_LOOP, ("NYI"));	

    if (WN_desc(istore) == MTYPE_V) 
      type = WN_rtype(istore);
    else 
      type = WN_desc(istore);

    switch(type) {
    case MTYPE_F4:
      if (last_simd_kind >= V16F4)
	last_simd_kind = V16F4;
      break;
    case MTYPE_F8:
      if (last_simd_kind >= V16F8)
	last_simd_kind = V16F8;
      break;
    case MTYPE_I1:
    case MTYPE_U1:
      last_simd_kind = V16I1;
      break;
    case MTYPE_I2:
    case MTYPE_U2:
      if (last_simd_kind >= V16I2)
	last_simd_kind = V16I2;
      break;
    case MTYPE_I4:
    case MTYPE_U4:
      if (last_simd_kind >= V16I4)
	last_simd_kind = V16I4;
      break;
    case MTYPE_I8:
    case MTYPE_U8:
      if (last_simd_kind >= V16I8)
	last_simd_kind = V16I8;
      break;
    default:
      last_simd_kind = INVALID;
      break;
    }
    if (last_simd_kind == INVALID)
      break;
  }
  return last_simd_kind;
}

BOOL Gather_Vectorizable_Ops(
  WN* wn, SCALAR_REF_STACK* simd_ops, MEM_POOL *pool, WN *loop)
{
  if (WN_opcode(wn) == OPC_BLOCK) {
    WN* kid = WN_first (wn);
    while (kid) {
      if (!Gather_Vectorizable_Ops(kid,simd_ops,pool,loop))
	return FALSE;
      kid = WN_next(kid);
    }
    return TRUE;
  }
    
  OPERATOR opr=WN_operator(wn);  
  TYPE_ID rtype = WN_rtype(wn);
  TYPE_ID desc = WN_desc(wn);
  
  if (opr == OPR_IF)
    return FALSE;

  // Bug 3028 - ignore complex types.
  if (MTYPE_is_complex(WN_rtype(wn)) || 
      MTYPE_is_complex(WN_desc(wn)))
    return FALSE;

  if (is_vectorizable_op(opr, rtype, desc)) {
    if ((opr != OPR_INTRINSIC_OP && 
	 Is_Well_Formed_Simd(wn, loop)) ||
	WN_intrinsic(wn) == INTRN_SUBSU2) {	
      SCALAR_REF scalar_ref(wn,0);
      simd_ops->Push(scalar_ref);
    } else {
      // If the 'wn' is inside a OPR_ARRAY, then it is
      // not vectorizable but we do not abort vectorization.
      WN* parent = LWN_Get_Parent(wn);
      while(parent && WN_operator(parent) != OPR_DO_LOOP) {
	if (WN_operator(parent) == OPR_ARRAY)
	  return TRUE;
	parent = LWN_Get_Parent(parent);
      }
      return FALSE;
    }
  } else if (OPCODE_is_store(WN_opcode(LWN_Get_Parent(wn))) && 
             WN_operator(wn) != OPR_ARRAY)
    return FALSE;

  // Bug 2986
  if (opr == OPR_CVT && !is_vectorizable_op(opr, rtype, desc)) {
    // If the CVT is inside a OPR_ARRAY, then it is
    // not vectorizable but we do not abort vectorization.
    WN* parent = LWN_Get_Parent(wn);
    while(parent && WN_operator(parent) != OPR_DO_LOOP) {
      if (WN_operator(parent) == OPR_ARRAY)
	return TRUE;
      parent = LWN_Get_Parent(parent);
    }
    return FALSE;
  }
  for (INT kidno=0; kidno<WN_kid_count(wn); kidno++) {
    WN* kid = WN_kid(wn,kidno);
    if (!Gather_Vectorizable_Ops(kid,simd_ops,pool,loop))
      return FALSE;
  }

  // Bug 2330
  // Reduction loops of the form  
  //   do i 
  //     x = x + array[0][i]
  //     x = x + array[1][i]
  //   enddo 
  // (equivalent of Fortran SUM(array) intrinsic)
  // should not be vectorized with current framework. 
  // TODO_1.2 : update pregs on multiple statements and vectorize
  // several statements at once (this is not easy because we handle one 
  // statement at a time). Another option is to tweak VHO lowerer when 
  // lowering ARRSECTION and TRIPLET for F90 SUM intrinsic. 
  if (WN_operator(wn) == OPR_STID) {
    WN* stmt_next = WN_next(wn);
    while(stmt_next) {
      if (WN_operator(stmt_next) == OPR_STID &&
	  ST_base(WN_st(wn)) == ST_base(WN_st(stmt_next)) &&
	  WN_offset(wn) == WN_offset(stmt_next))
	return FALSE;	
      stmt_next = WN_next(stmt_next);
    }    
  }
  // Bug 3011 - If 'wn' is a reduction statement then it should not be used
  // more than once (except the one in 'wn' itself) inside this loop body.
  if (WN_operator(wn) == OPR_STID && curr_simd_red_manager &&
      curr_simd_red_manager->Which_Reduction(wn) != RED_NONE) {
    // 'wn' is a reduction statement.
    // If there is more than one use for this definition inside this loop 
    // then do not vectorize.
    if (!Du_Mgr)
      return FALSE;
    USE_LIST* use_list=Du_Mgr->Du_Get_Use(wn);
    if (!use_list)
      return FALSE;
    USE_LIST_ITER uiter(use_list);
    INT num_use_in_loop = 0;
    for (DU_NODE* u = uiter.First(); !uiter.Is_Empty(); u=uiter.Next()) {
      WN* use=u->Wn();
      if (Wn_Is_Inside(use, loop))
	num_use_in_loop ++;
      if (num_use_in_loop > 1)
	return FALSE;
    }
  }

  // Bug 2612
  if (WN_operator(wn) == OPR_ISTORE) {
    WN* stmt_next = WN_next(wn);
    while(stmt_next) {
      if (WN_operator(stmt_next) == OPR_ISTORE &&
	  WN_Simp_Compare_Trees(WN_kid1(wn), WN_kid1(stmt_next)) == 0 &&
	  ABS(WN_offset(wn) - WN_offset(stmt_next)) <= 
	  MTYPE_byte_size(WN_desc(wn)))
	return FALSE;	
      stmt_next = WN_next(stmt_next);
    }    
  }

  return TRUE;
}

//-----------------------------------------------------------------------
// NAME: Find_Nodes
// FUNCTION: Find all of the nodes in the tree rooted at 'wn_tree' with the
//    symbol 'sym' iand OPERATOR type 'opr' and push their addresses on the
//    'stack'.
//-----------------------------------------------------------------------

static void Find_Nodes(OPERATOR opr,
		       SYMBOL sym,
		       WN* wn_tree,
		       STACK<WN*>* stack)
{
  if (WN_operator(wn_tree) == opr) {
    SYMBOL newsym = SYMBOL(wn_tree);
    if (newsym == sym)
      stack->Push(wn_tree);
  }
  if (WN_opcode(wn_tree) == OPC_BLOCK) {
    for (WN* wn = WN_first(wn_tree); wn != NULL; wn = WN_next(wn))
      Find_Nodes(opr, sym, wn, stack);
  } else {
    for (INT i = 0; i < WN_kid_count(wn_tree); i++)
      Find_Nodes(opr, sym, WN_kid(wn_tree, i), stack);
  }
}

static void Add_Vertices(WN *wn_tree)
{
  if (WN_opcode(wn_tree) == OPC_BLOCK) {
    for (WN* wn = WN_first(wn_tree); wn != NULL; wn = WN_next(wn))
      Add_Vertices(wn);
  } else {
    if (OPCODE_is_load(WN_opcode(wn_tree)) || 
	OPCODE_is_store(WN_opcode(wn_tree)))
      adg->Add_Vertex(wn_tree);
    for (INT i = 0; i < WN_kid_count(wn_tree); i++)
      Add_Vertices(WN_kid(wn_tree, i));
  }
}

static void Delete_Def_Use (WN *wn_tree) 
{
  if (WN_operator(wn_tree) == OPR_LDID) {
    DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_tree);
    DEF_LIST_ITER iter(def_list);
    const DU_NODE *node = iter.First();
    Is_True(!iter.Is_Empty(),("Empty def list in Delete_Def_Use"));
    for(; !iter.Is_Empty();node=iter.Next()){
      WN *def = (WN *) node->Wn();
      Du_Mgr->Delete_Def_Use(def,wn_tree);
    }
  }
  for (INT i = 0; i < WN_kid_count(wn_tree); i++)
    Delete_Def_Use(WN_kid(wn_tree, i));
}

static void Copy_Def_Use (WN *from_tree, 
			  WN *to_tree, 
			  SYMBOL sym, 
			  BOOL no_synch)
{
  FmtAssert(WN_operator(from_tree) == WN_operator(to_tree) || 
	    no_synch, 
	    ("from_tree and to_tree not in synch"));
  if (WN_operator(from_tree) != WN_operator(to_tree) &&
      // After we adjust loop bounds, we can get different cmp operators 
      !(WN_operator(from_tree) == OPR_LT &&
        WN_operator(to_tree) == OPR_LE))
    return;

  if (WN_operator(from_tree) == OPR_LDID) {
    SYMBOL currsym = SYMBOL(from_tree);
    FmtAssert(SYMBOL(to_tree) == currsym,
	      ("from_tree and to_tree have different symbols"));    
    // Just care for external edges if any.
    // Index variable will be updated later with internal edges 
    // inside the caller.
    if (currsym != sym) { 
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(from_tree);
      DEF_LIST_ITER iter(def_list);
      const DU_NODE *node = iter.First();
      Is_True(!iter.Is_Empty(),("Empty def list in Copy_Def_Use"));
      for(; !iter.Is_Empty();node=iter.Next()){
	WN *def = (WN *) node->Wn();
	Du_Mgr->Add_Def_Use(def, to_tree);
	DEF_LIST *def_list_to = Du_Mgr->Ud_Get_Def(to_tree); 
	DEF_LIST *def_list_from = Du_Mgr->Ud_Get_Def(from_tree); 
	def_list_to->Set_loop_stmt(def_list_from->Loop_stmt()); 
      }
    }    
  }
  // recurse
  for (INT i = 0; i < WN_kid_count(from_tree); i ++) {
    Copy_Def_Use(WN_kid(from_tree, i), WN_kid(to_tree, i), sym, no_synch);
  }    
}

static void 
Simd_Replace_With_Constant(WN *copy, SYMBOL sym, WN *cons, TYPE_ID index_type)
{
  FmtAssert(WN_operator(cons) == OPR_INTCONST, ("Handle this"));
  if (WN_operator(copy) == OPR_LDID) {
    SYMBOL currsym = SYMBOL(copy);
    if (currsym == sym) { 
      WN *parent = LWN_Get_Parent(copy);
      INT kid;
      for (kid = 0; kid < WN_kid_count(parent); kid ++)
	if (WN_kid(parent, kid) == copy)
	  break;
      OPCODE intconst_opc= 
	OPCODE_make_op(OPR_INTCONST,index_type, MTYPE_V);   
      WN_kid(parent, kid) = 
	WN_CreateIntconst(intconst_opc, WN_const_val(cons));
      LWN_Set_Parent(WN_kid(parent, kid), parent);
    }
  }
  // recurse
  for (INT i = 0; i < WN_kid_count(copy); i ++) {
    Simd_Replace_With_Constant(WN_kid(copy, i), sym, cons, index_type);
  }    
  return;
}

// Look for all the symbols used in src and for each of them 
// update the use-def for uses in dest. Additionally, if flag is set
// then ignore those symbols in src that are identical to 'symbol'.
static void Update_Symbol_Use_Def (WN *src, WN *dest, SYMBOL symbol, BOOL flag)
{
  if (WN_operator(src) == OPR_LDID) {
    SYMBOL currsym = SYMBOL(src);
    if (!flag || currsym != symbol) { 

      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(src);
      DEF_LIST_ITER iter(def_list);
      const DU_NODE *node = iter.First();
      Is_True(!iter.Is_Empty(),("Empty def list in Update_Symbol_Use_Def"));

      // Find all locations inside dest that use 'symbol'
      // Then update use-def for all the uses.
      DOLOOP_STACK sym_stack(&LNO_local_pool);
      Find_Nodes(OPR_LDID, currsym, dest, &sym_stack);  
      for(; !iter.Is_Empty();node=iter.Next()){
	for (INT k = 0; k < sym_stack.Elements(); k++) {
	  WN* wn_use = sym_stack.Bottom_nth(k);

	  WN *def = (WN *) node->Wn();
	  Du_Mgr->Add_Def_Use(def, wn_use);
	  DEF_LIST *def_list_to = Du_Mgr->Ud_Get_Def(wn_use); 
	  DEF_LIST *def_list_from = Du_Mgr->Ud_Get_Def(src); 
	  def_list_to->Set_loop_stmt(def_list_from->Loop_stmt()); 
	}
      }    
    }    
  } else {
    for (INT i = 0; i < WN_kid_count(src); i ++)
      Update_Symbol_Use_Def(WN_kid(src, i), dest, symbol, flag);
  }  
}

// Use SCC analysis to find out any loop-carried dependencies.
BOOL Analyse_Dependencies(WN* innerloop) 
{
  WN* body=WN_do_body(innerloop);
  WN* stmt;
  // main statement dependence graph for statements in the loop
  SCC_DIRECTED_GRAPH16 *dep_g_p =
    CXX_NEW(SCC_DIRECTED_GRAPH16(ESTIMATED_SIZE,ESTIMATED_SIZE),
    &SIMD_default_pool);

  // hash table which associates the statements in the loop and vertices in the
  // above dependence graph 'dep_g_p'
  WN2VINDEX *stmt_to_vertex=
  CXX_NEW(WN2VINDEX(ESTIMATED_SIZE, &SIMD_default_pool),
    &SIMD_default_pool);

  SCALAR_REF_STACK *simd_ops =
        CXX_NEW(SCALAR_REF_STACK(&SIMD_default_pool),
        &SIMD_default_pool);

  if (LNO_Simd_Reduction) {
    depanal_red_manager = CXX_NEW 
      (REDUCTION_MANAGER(&SIMD_default_pool), &SIMD_default_pool);
    depanal_red_manager->Build(innerloop,TRUE,FALSE); // build scalar reductions
    curr_simd_red_manager = depanal_red_manager;
  }

  for (stmt=WN_first(body); stmt; stmt=WN_next(stmt)) {
    Gather_Vectorizable_Ops(stmt,simd_ops,&SIMD_default_pool, innerloop) ;
  }

  if (LNO_Simd_Reduction && depanal_red_manager) {
    CXX_DELETE(depanal_red_manager,&SIMD_default_pool);
    curr_simd_red_manager = simd_red_manager;
  }

  if (simd_ops->Elements()==0) { // no simd op in this loop
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    return TRUE;
  }

  STACK_OF_WN *vec_simd_ops=
    CXX_NEW(STACK_OF_WN(&SIMD_default_pool),&SIMD_default_pool);

  for (INT i=0; i<simd_ops->Elements(); i++) {

    WN* simd_op=simd_ops->Top_nth(i).Wn;
    WN* stmt=simd_op;
    WN* stmt1;
    BOOL under_scf=FALSE;
    while ((stmt1=LWN_Get_Parent(stmt))!=body) {
      stmt=stmt1;
      if (WN_opcode(stmt)==OPC_BLOCK) {
        under_scf=TRUE;
        break;
      }
    }
    if (under_scf)
      continue;
    TYPE_ID rtype = WN_rtype(simd_op);
    TYPE_ID desc = WN_desc(simd_op);
    UINT kid_no;
    BOOL splitted=FALSE;

    for (kid_no=0; kid_no<WN_kid_count(simd_op); kid_no++) {
      WN* tmp=WN_kid(simd_op,kid_no);
      tmp = Split_Using_Preg(stmt,tmp,adg,FALSE);
      FmtAssert(WN_operator(tmp)==OPR_STID,
		("Expecting STID after splitting"));
      USE_LIST* use_list=Du_Mgr->Du_Get_Use(tmp);
      DU_NODE* node=use_list->Head();
      FmtAssert(use_list->Tail()==node, ("Too many uses after splitting"));
      splitted=TRUE;
    }
    if (!splitted)
      continue;

    vec_simd_ops->Push(simd_op);

    WN_OFFSET offset=WN_offset(WN_prev(stmt));

    WN *simd_root = Split_Using_Preg(stmt,simd_op,adg,FALSE);
    FmtAssert(WN_operator(simd_root)==OPR_STID,
      ("Expecting STID after splitting"));
    USE_LIST* use_list=Du_Mgr->Du_Get_Use(simd_root);
    DU_NODE* node=use_list->Head();
    FmtAssert(use_list->Tail()==node, ("Too many uses after splitting"));
    WN* use=node->Wn();
    // FP and INT registers can not have same (preg) offset.
    // That situation comes up when we vectorize CVT.
    //WN_offset(simd_root)=WN_offset(use)=offset;
  }

  if (vec_simd_ops->Elements()==0) {
    // no vecorizable op in this loop
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    return TRUE;
  }

  REF_LIST_STACK* writes = CXX_NEW(REF_LIST_STACK(&SIMD_default_pool),
        &SIMD_default_pool);
  REF_LIST_STACK* reads = CXX_NEW(REF_LIST_STACK(&SIMD_default_pool),
        &SIMD_default_pool);

  SCALAR_STACK* scalar_writes = CXX_NEW(SCALAR_STACK(&SIMD_default_pool),
        &SIMD_default_pool);
  SCALAR_STACK* scalar_reads = CXX_NEW(SCALAR_STACK(&SIMD_default_pool),
        &SIMD_default_pool);
  SCALAR_REF_STACK* params = CXX_NEW(SCALAR_REF_STACK(&SIMD_default_pool),
        &SIMD_default_pool);

  // stack used in collecting references
  DOLOOP_STACK *stack1=CXX_NEW(DOLOOP_STACK(&SIMD_default_pool),
                              &SIMD_default_pool);
  Build_Doloop_Stack(innerloop, stack1);

  // gather again after simd ops are splitted out of old stmts
  Init_Ref_Stmt_Counter();
  INT32 gather_status = 0;
  for (stmt=WN_first(body); stmt && gather_status!= -1; stmt=WN_next(stmt)) {
    gather_status=New_Gather_References(stmt,writes,reads,stack1,
        scalar_writes,scalar_reads,
        params,&SIMD_default_pool) ;
  }
  if (gather_status == -1) {
    DevWarn("Error in gathering references");
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    return TRUE;
  }

  for (stmt=WN_first(body); stmt; stmt=WN_next(stmt)) {
    VINDEX16 v=dep_g_p->Add_Vertex();
    if (v==0) {
      DevWarn("Statement dependence graph problem");
      CXX_DELETE(dep_g_p, &SIMD_default_pool);
      return TRUE;
    }
    stmt_to_vertex->Enter(stmt, v);
  }
  // a dictionary used for looking up the bit position for a symbol
  BINARY_TREE<NAME2BIT> *mapping_dictionary = 
    CXX_NEW(BINARY_TREE<NAME2BIT>(&SIMD_default_pool),
    &SIMD_default_pool);

  // list of references that use scalar-expandable variables
  FF_STMT_LIST expandable_ref_list;

  // step 2: examine all reads and writes and do the following
  //		1. classify them as scalar or array
  //		2. create name to bit position mappings for new symbol names
  //		3. if the ref is STID, check if it is scalar expandable
  UINT sym_count=simd_2(innerloop, scalar_reads, scalar_writes,
			mapping_dictionary, expandable_ref_list);

  // we also need to have a set of expandable scalars
  BIT_VECTOR Expandable_Scalar_Set(sym_count, &SIMD_default_pool);

  // now look at all references in 'expandable_ref_list' and set the
  // corresponding bit in 'Expandable_Scalar_Set'
  FF_STMT_ITER e_iter(&expandable_ref_list);
  for (FF_STMT_NODE* ref_node=e_iter.First(); !e_iter.Is_Empty();
      ref_node=e_iter.Next()) {
      NAME2BIT temp_map;
      temp_map.Set_Symbol(ref_node->Get_Stmt());
      Expandable_Scalar_Set.Set(mapping_dictionary->Find(temp_map)->
               Get_Data()->Get_Bit_Position());
  }

  if (LNO_Test_Dump) {
    printf("Expandable_Scalar_Set=\n");
    Expandable_Scalar_Set.Print(stdout);
  }

  WN_MAP sdm=WN_MAP_Create(&SIMD_default_pool);
  ARRAY_DIRECTED_GRAPH16 *sdg =
    CXX_NEW(ARRAY_DIRECTED_GRAPH16(100,500,sdm,LEVEL_ARRAY_GRAPH),
      &SIMD_default_pool);

  for (stmt = WN_first(body); stmt; stmt = WN_next(stmt)) {
    if (!Map_Stmt_To_Level_Graph(stmt,sdg)) {
      FmtAssert(0, ("Error in mapping stmt to level graph\n"));
      CXX_DELETE(dep_g_p, &SIMD_default_pool);
      CXX_DELETE(sdg, &SIMD_default_pool);
      WN_MAP_Delete(sdm);
      return TRUE;
    }
  }

  BOOL status=Generate_Scalar_Dependence_For_Statement_Dependence_Graph(
    innerloop, scalar_reads, scalar_writes, params, sdg, red_manager,
    &Expandable_Scalar_Set, mapping_dictionary);
  if (status==FALSE) {
    DevWarn("Statement dependence graph problem");
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    CXX_DELETE(sdg, &SIMD_default_pool);
    WN_MAP_Delete(sdm);
    return TRUE;
  }

  status=Generate_Array_Dependence_For_Statement_Dependence_Graph(
    innerloop, reads, writes, sdg, red_manager, adg);
  if (status==FALSE) {
    DevWarn("Statement dependence graph problem");
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    CXX_DELETE(sdg, &SIMD_default_pool);
    WN_MAP_Delete(sdm);
    return TRUE;
  }

  // dep_g_p would not overflow if sdg did not overflow so no checking
  // is needed

  EINDEX16 e=sdg->Get_Edge();
  while (e) {
    WN* source=sdg->Get_Wn(sdg->Get_Source(e));
    WN* sink=sdg->Get_Wn(sdg->Get_Sink(e));
    if (LWN_Get_Parent(source) == body || LWN_Get_Parent(sink) == body)
      // add edges only if the source and sink are immediate children
      dep_g_p->Add_Unique_Edge(
        stmt_to_vertex->Find(source),
        stmt_to_vertex->Find(sink));
    e=sdg->Get_Next_Edge(e);

  }

  // ac_g is the acyclic condensation graph of dep_g_p
  // it stores dependence relations between SCCs
  SCC_DIRECTED_GRAPH16 *ac_g;
  ac_g = dep_g_p->Acyclic_Condensation(&SIMD_default_pool);

  VINDEX16 total_scc = dep_g_p->Get_Scc_Count();

  // scc[i] is a list of statemens in i-th SCC
  FF_STMT_LIST *scc;
  scc = CXX_NEW_ARRAY(FF_STMT_LIST, total_scc+1, &SIMD_default_pool);

  UINT *scc_size=CXX_NEW_ARRAY(UINT, total_scc+1, &SIMD_default_pool);

  for (INT i=1; i<=total_scc; i++) {
    scc_size[i]=0;
  }

  // Append statements to the statement list of proper SCC
  for (stmt = WN_first(WN_do_body(innerloop)); stmt; stmt = WN_next(stmt)) {
    VINDEX16 scc_id;
    scc_id = dep_g_p->Get_Scc_Id(stmt_to_vertex->Find(stmt));
    scc_size[scc_id]++;
  }

  for (INT i=0; i<vec_simd_ops->Elements(); i++) {
    WN* simd_op=vec_simd_ops->Top_nth(i);
    stmt=Find_Stmt_Under(simd_op,body);
    VINDEX16 scc_id = dep_g_p->Get_Scc_Id(stmt_to_vertex->Find(stmt));
    if (scc_size[scc_id]!=1) {
      CXX_DELETE(dep_g_p, &SIMD_default_pool);
      CXX_DELETE(sdg, &SIMD_default_pool);
      WN_MAP_Delete(sdm);
      return TRUE;
    }
  }
  
  CXX_DELETE(dep_g_p, &SIMD_default_pool);
  CXX_DELETE(sdg, &SIMD_default_pool);
  WN_MAP_Delete(sdm);
  return FALSE;
}

static BOOL Loop_Has_Asm (WN* loop)
{
  LWN_ITER* itr = LWN_WALK_TreeIter(WN_do_body(loop));
  for (; itr != NULL; itr = LWN_WALK_TreeNext(itr)) {
    WN* node = itr->wn;
    if (WN_operator(node) == OPR_ASM_STMT)
      return TRUE;
  }

  return FALSE;
}

extern BOOL Is_Vectorizable_Loop (WN* innerloop) 
{
  if (LNO_Run_Simd == 0)
    return FALSE;

  if (Loop_Has_Asm(innerloop))
    return FALSE;

  if (WN_opcode(innerloop) != OPC_DO_LOOP ||
      !Do_Loop_Is_Good(innerloop) ||
      Do_Loop_Has_Calls(innerloop) ||
      Do_Loop_Has_Gotos(innerloop) ||
      Do_Loop_Is_Mp(innerloop) ||
      !Do_Loop_Is_Inner(innerloop))
    return FALSE;

  WN* body = WN_do_body(innerloop);
  WN* stmt;
  MEM_POOL SIMD_tmp_pool;
  MEM_POOL_Initialize(&SIMD_tmp_pool,"SIMD_tmp_pool",FALSE);
  MEM_POOL_Push(&SIMD_tmp_pool);

  SCALAR_REF_STACK *simd_ops =
    CXX_NEW(SCALAR_REF_STACK(&SIMD_tmp_pool),
	    &SIMD_tmp_pool);

  if (LNO_Simd_Reduction) {
    WN* func_nd = LWN_Get_Parent(innerloop);
    while(func_nd && WN_opcode(func_nd) != OPC_FUNC_ENTRY)
      func_nd = LWN_Get_Parent(func_nd);
    simd_red_manager = CXX_NEW 
      (REDUCTION_MANAGER(&SIMD_tmp_pool), &SIMD_tmp_pool);
    simd_red_manager->Build(func_nd,TRUE,FALSE); // build scalar reductions
    curr_simd_red_manager = simd_red_manager;
  }
  for (stmt=WN_first(body); stmt; stmt=WN_next(stmt))
    if (!Gather_Vectorizable_Ops(stmt, simd_ops,&SIMD_tmp_pool, innerloop)) {
      if (LNO_Simd_Reduction && simd_red_manager)
	CXX_DELETE(simd_red_manager,&SIMD_tmp_pool);
      MEM_POOL_Pop(&SIMD_tmp_pool);
      MEM_POOL_Delete(&SIMD_tmp_pool);
      return FALSE;
    }
  
  if (LNO_Simd_Reduction && simd_red_manager)
    CXX_DELETE(simd_red_manager,&SIMD_tmp_pool);
  
  // Dependence Analysis
  WN* loop_copy = LWN_Copy_Tree(innerloop, TRUE, LNO_Info_Map);
  DO_LOOP_INFO* dli=Get_Do_Loop_Info(innerloop);
  DO_LOOP_INFO* new_loop_info =
    CXX_NEW(DO_LOOP_INFO(dli,&LNO_default_pool), &LNO_default_pool);
  Set_Do_Loop_Info(loop_copy, new_loop_info);
  adg=Array_Dependence_Graph;
  adg->Add_Deps_To_Copy_Block(innerloop, loop_copy, TRUE);
  MEM_POOL_Initialize(&SIMD_default_pool,"SIMD_default_pool",FALSE);
  MEM_POOL_Push(&SIMD_default_pool);
  Simd_Mark_Code(WN_do_body(loop_copy)); 
  BOOL Has_Dependencies = Analyse_Dependencies(loop_copy);
  LNO_Erase_Dg_From_Here_In(loop_copy, adg);
  MEM_POOL_Pop(&SIMD_default_pool);
  MEM_POOL_Delete(&SIMD_default_pool);

  MEM_POOL_Pop(&SIMD_tmp_pool);
  MEM_POOL_Delete(&SIMD_tmp_pool);

  return !Has_Dependencies;
}

extern void Mark_Auto_Vectorizable_Loops (WN* wn)
{
  OPCODE opc=WN_opcode(wn);

  if (!OPCODE_is_scf(opc)) 
    return;
  else if (opc==OPC_DO_LOOP) {
    if (Do_Loop_Is_Good(wn) && Do_Loop_Is_Inner(wn) && !Do_Loop_Has_Calls(wn)
	&& !Do_Loop_Is_Mp(wn) && !Do_Loop_Has_Gotos(wn)) {
      if (Is_Vectorizable_Loop(wn)) {
	DO_LOOP_INFO* dli = Get_Do_Loop_Info(wn, FALSE);
	dli->Vectorizable = TRUE;
      }	
    } else
      Mark_Auto_Vectorizable_Loops(WN_do_body(wn));
  } else if (opc==OPC_BLOCK)
    for (WN* stmt=WN_first(wn); stmt;) {
      WN* next_stmt=WN_next(stmt);
      Mark_Auto_Vectorizable_Loops(stmt);
      stmt=next_stmt;
    }
  else
    for (UINT kidno=0; kidno<WN_kid_count(wn); kidno++) {
      Mark_Auto_Vectorizable_Loops(WN_kid(wn,kidno));
    }
}

/* To facilitate vectorization, convert all 
 * ISTORE of CONST/LDID/ILOAD into ISTORE of PAREN of CONST/LDID/ILOAD 
 * PAREN nodes are later converted into NOPs. So, there are no new 
 * instructions generated, but vectorizer can assume PAREN is a 
 * vectorizable op and proceed. */
static void Simd_Mark_Code (WN* wn) 
{
  if ((WN_operator(wn) == OPR_ILOAD && 
       WN_operator(WN_kid0(wn)) == OPR_ARRAY) ||
      WN_operator(wn) == OPR_LDID || 
      WN_operator(wn) == OPR_CONST || 
      WN_operator(wn) == OPR_INTCONST) {
    WN* parent = LWN_Get_Parent(wn);
    if (((WN_operator(parent) == OPR_ISTORE &&
	  WN_operator(WN_kid1(parent)) == OPR_ARRAY) ||
	 WN_operator(parent) == OPR_STID) &&
	WN_desc(parent) != MTYPE_M &&
	WN_desc(parent) != MTYPE_C4 && WN_desc(parent) != MTYPE_C8) {
      TYPE_ID desc = WN_rtype(wn);
      OPCODE paren_opc;
      if (!MTYPE_is_float(desc) && MTYPE_is_unsigned(desc)) {
	switch(desc) {
	case MTYPE_U1: desc = MTYPE_I1; break;
	case MTYPE_U2: desc = MTYPE_I2; break;
	case MTYPE_U4: desc = MTYPE_I4; break;
	case MTYPE_U8: desc = MTYPE_I8; break;
	}
      }
      paren_opc = OPCODE_make_op(OPR_PAREN, desc, MTYPE_V);
      WN* new_parent;
      if (WN_operator(wn) == OPR_CONST) {
	new_parent = WN_Create(OPR_PAREN, desc, MTYPE_V, 1);
	WN_kid0(new_parent) = wn;
      } else 
	new_parent = 
	  LWN_CreateExp1(paren_opc, WN_kid(parent, 0));
      WN_kid0(parent) = new_parent;
      LWN_Parentize(parent);
    }
  }
  // Recurse
  if (WN_opcode(wn)==OPC_BLOCK)
    for (WN* stmt=WN_first(wn); stmt;) {
      WN* next_stmt=WN_next(stmt);
      Simd_Mark_Code(stmt);
      stmt=next_stmt;
    }
  else 
    for (INT kid = 0; kid < WN_kid_count(wn); kid ++)
      Simd_Mark_Code(WN_kid(wn, kid));
}

static INT Simd_Compute_Best_Align (INT offset, INT fn, INT size)
{
  INT A0, A;

  A0 = offset;
  A = (A0 + fn*size)%16;
  return (A == 0 ? A : ((16 - A)/size));
}

// Descend unroll copy and update the index into the last dimension for all 
// arrays. Assumes all operators inside WN copy are vectorizable.
static void 
Create_Unroll_Copy(WN* copy, INT add_to_base, 
		   WN* orig, TYPE_ID index_type)
{
  FmtAssert(WN_operator(copy) == WN_operator(orig), ("Handle this"));
  OPCODE add_opc= OPCODE_make_op(OPR_ADD,index_type, MTYPE_V);
  OPCODE intconst_opc= OPCODE_make_op(OPR_INTCONST,index_type, MTYPE_V);
  INT aa_num, dim_max;
  WN* array_index;

  if (WN_operator(copy) == OPR_ARRAY) {
    ACCESS_ARRAY* aa=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,copy);
    INT kid = aa->Num_Vec()*2;
    array_index = WN_kid(copy, kid);
    WN_kid(copy, kid) = 
      LWN_CreateExp2(add_opc, array_index, 
		     WN_CreateIntconst(intconst_opc, add_to_base));
    // Look at WN structure for OPR_ARRAY
    dim_max = aa->Num_Vec();
    for (aa_num = 0; aa_num < dim_max - 1; aa_num ++) {
      LWN_Copy_Def_Use(WN_kid(orig, aa_num + dim_max + 1), 
		       WN_kid(copy, aa_num + dim_max + 1),
		       Du_Mgr);    
    }
    return;
  }

  // Recurse
  for (INT kid = 0; kid < WN_kid_count(copy); kid ++)
    Create_Unroll_Copy(WN_kid(copy, kid), add_to_base, 
		       WN_kid(orig, kid), index_type);
  
  return;
}

// Identify reduction loops that reduce a vector rather than compute 
// a reduction on scalars. The reduction manager will return a valid reduction
// for " do i a = a @ ... " where ... is some scalar variable/expression. 
// We need to guard against unnecessary scalar expansion that may grow 
// the stack to abnormal levels even when the loop is not vectorized. When
// a loop is vectorized, it is more likely that the loop bounds are at
// more sensible level for scalar expansion. This is only temporary because
// we will eliminate scalar expansion in our next release: TODO_1.3. Another
// possibility is to scalarize back all loops that are not vectorized. Instead, 
// this is a hack to avoid the overhead. - Bug 2576
static BOOL Is_Vector_Reduction(WN* node) 
{
  if (WN_operator(node) == OPR_ILOAD)
    return TRUE;

  // Recurse
  for (INT kid = 0; kid < WN_kid_count(node); kid ++)
    if (Is_Vector_Reduction(WN_kid(node, kid)))
      return TRUE;

  return FALSE;
}

static BOOL Needs_Guard(WN *wn)
{
  OPERATOR opr = WN_operator(wn);

  if (opr == OPR_DO_LOOP) {
    if (Needs_Guard(WN_start(wn)) || Needs_Guard(WN_end(wn)))
      return TRUE;
    else 
      return FALSE;
  } else if (opr == OPR_MAX || opr == OPR_MIN)
    return TRUE;

  // Recurse
  for (INT kid = 0; kid < WN_kid_count(wn); kid ++)
    if (Needs_Guard(WN_kid(wn, kid))) return TRUE;

  return FALSE;
}

// Vectorize an innerloop
static INT Simd(WN* innerloop)
{
  INT good_vector = 0;

  if (!Do_Loop_Is_Good(innerloop) || 
       Do_Loop_Has_Calls(innerloop) || Do_Loop_Has_Gotos(innerloop)) {
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop has calls or Gotos. Can not be vectorized.\n");
    }
    Is_True(0, ("Bad loop passed to Simd().\n"));
    return 0;
  }
  if (!Do_Loop_Is_Inner(innerloop)) {
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop is not innermost. Loop was not vectorized.\n");
    }
    Is_True(0, ("Non-innermost loop passed to Simd().\n"));
    return 0;
  }
  DO_LOOP_INFO* dli=Get_Do_Loop_Info(innerloop);
  if (dli->Has_Gotos || dli->Has_Calls) {
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop has calls or Gotos. Loop was not vectorized.\n");
    }
    Is_True(0, ("Loop with gotos or calls passed to Simd().\n"));
    return 0;
  }

  // if there are too few iterations, we will not vectorize
  if (dli->Est_Num_Iterations < Iteration_Count_Threshold) {
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop has too few iterations. Loop was not vectorized.\n");
    }
    return 0;
  }

  // The Vectorizable flag in dli is not meant to be that accurate, 
  // (given that the marking happens pretty early) but it can be used here
  // for debug puposes.
  if (dli->Vectorizable) {
    Last_Vectorizable_Loop_Id ++;
    if (Last_Vectorizable_Loop_Id < LNO_Simd_Loop_Skip_Before ||
	Last_Vectorizable_Loop_Id > LNO_Simd_Loop_Skip_After ||
	Last_Vectorizable_Loop_Id == LNO_Simd_Loop_Skip_Equal)
      return 0;
  }
 
  // if the loop index var is live at exit and cannot be finalized,
  // we will not vectorize
  if (Index_Variable_Live_At_Exit(innerloop)) {
  
    if (Upper_Bound_Standardize(WN_end(innerloop),TRUE)==FALSE) {
      if (debug || LNO_Simd_Verbose) {
	printf("(%s:%d) ", 
	       Src_File_Name, 
	       Srcpos_To_Line(WN_Get_Linenum(innerloop)));
	printf("Loop upper bound can not be std. Loop was not vectorized.\n");
      }
      return 0;
    }
    Finalize_Index_Variable(innerloop,FALSE);
    scalar_rename(WN_start(innerloop));
  }

  if (Loop_Has_Asm(innerloop)) {
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop has inline assembly. Loop was not vectorized.\n");
    }
    return 0;
  }

  // if the loop upper bound is too complicated, we will not vectorize
  if (find_loop_var_in_simple_ub(innerloop)==NULL) {
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop upper bound too complicated. Loop was not vectorized.\n");
    }
    return 0;
  }

  MEM_POOL_Push(&SIMD_default_pool);
  {

  char loop_index_name[80];
  if (strlen(ST_name(WN_st(WN_index(innerloop))))>=80) {
    strcpy(loop_index_name,"name_too_long");
  } else
    strcpy(loop_index_name,ST_name(WN_st(WN_index(innerloop))));

  WN* stmt;
  WN* body=WN_do_body(innerloop);

  Simd_Mark_Code(WN_do_body(innerloop));

  WN* parent_block=LWN_Get_Parent(innerloop);

  TYPE_ID index_type=WN_rtype(WN_end(innerloop));
  char source_line[80];
  if (strlen(Cur_PU_Name)>=65) {
  
    sprintf(source_line,"%s:%d", "name_too_long",
          Srcpos_To_Line(WN_Get_Linenum(innerloop)));
  } else
    sprintf(source_line,"%s:%d", Cur_PU_Name,
          Srcpos_To_Line(WN_Get_Linenum(innerloop)));

  // main statement dependence graph for statements in the loop
  SCC_DIRECTED_GRAPH16 *dep_g_p =
    CXX_NEW(SCC_DIRECTED_GRAPH16(ESTIMATED_SIZE,ESTIMATED_SIZE),
    &SIMD_default_pool);

  // hash table which associates the statements in the loop and vertices in the
  // above dependence graph 'dep_g_p'
  WN2VINDEX *stmt_to_vertex=
  CXX_NEW(WN2VINDEX(ESTIMATED_SIZE, &SIMD_default_pool),
    &SIMD_default_pool);

  SCALAR_REF_STACK *simd_ops =
        CXX_NEW(SCALAR_REF_STACK(&SIMD_default_pool),
        &SIMD_default_pool);

  UINT stmt_count=0;

  // TODO we need copy propagation for (FP) scalars

  // step 1: gather all (scalar and array) references in the loop
  //         allocate a vertex in the stmt. dep. graph for each stmt
  //         assign statement id for each statement

  for (stmt=WN_first(body); stmt; stmt=WN_next(stmt)) {
    if (!Gather_Vectorizable_Ops(stmt,
				 simd_ops,&SIMD_default_pool, innerloop)) {
      if (debug || LNO_Simd_Verbose) {
	printf("(%s:%d) ", 
	       Src_File_Name,
	       Srcpos_To_Line(WN_Get_Linenum(innerloop)));
	printf("Nonvectorizable ops/non-unit stride. Loop was not vectorized.\n");
      }
      return 0;
    }
  }

  if (simd_ops->Elements()==0) { // no simd op in this loop
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    MEM_POOL_Pop(&SIMD_default_pool);
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop has 0 vectorizable ops. Loop was not vectorized.\n");
    }
    return 0;
  }

  if (!Simd_Benefit(body)) {
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    MEM_POOL_Pop(&SIMD_default_pool);
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop has no aligned loads/stores. Loop was not vectorized.\n");
    }
    return 0;
  }

  BOOL needs_scalar_expansion = FALSE;
  for (stmt=WN_first(body); stmt; stmt=WN_next(stmt)) {
    FmtAssert(curr_simd_red_manager, ("NYI"));
    if (WN_operator(stmt) == OPR_STID &&
	curr_simd_red_manager->Which_Reduction(stmt) == RED_NONE) {
      STACK<WN*>* equivalence_class=
	Scalar_Equivalence_Class(stmt, Du_Mgr,&LNO_local_pool);
      if (!equivalence_class) {
	if (LNO_Run_Simd == 2) {
	  needs_scalar_expansion = TRUE;
	  break;
	}
        if (debug || LNO_Simd_Verbose) {
	  printf("(%s:%d) ", 
	       Src_File_Name,
	       Srcpos_To_Line(WN_Get_Linenum(innerloop)));
	  printf("Vectorization requires scalar expansion. Not vectorized. Override with -LNO:simd=2\n");
	}
	return 0;
      }
    }
  }
  
  STACK_OF_WN *vec_simd_ops=
    CXX_NEW(STACK_OF_WN(&SIMD_default_pool),&SIMD_default_pool);

  INT curr_num_simd = 0;
  INT *simd_operand_invariant[3];
  simd_operand_invariant[0] = 
    CXX_NEW_ARRAY(INT,simd_ops->Elements(),&SIMD_default_pool);
  simd_operand_invariant[1] = 
    CXX_NEW_ARRAY(INT,simd_ops->Elements(),&SIMD_default_pool);
  simd_operand_invariant[2] = 
    CXX_NEW_ARRAY(INT,simd_ops->Elements(),&SIMD_default_pool);

  INT i;
  for (i=0; i<simd_ops->Elements(); i++) {

    WN* simd_op=simd_ops->Top_nth(i).Wn;
    //WN* stmt=Find_Stmt_Under(simd_op,body);
    WN* stmt=simd_op;
    WN* stmt1;
    BOOL under_scf=FALSE;
    while ((stmt1=LWN_Get_Parent(stmt))!=body) {
      stmt=stmt1;
      if (WN_opcode(stmt)==OPC_BLOCK) {
        under_scf=TRUE;
        break;
      }
    }
    if (under_scf)
      continue;
    TYPE_ID rtype = WN_rtype(simd_op);
    TYPE_ID desc = WN_desc(simd_op);
#if 1
    // CHANGED
    FmtAssert(is_vectorizable_op(WN_operator(simd_op), rtype, desc), 
	      ("Handle this piece"));
#endif
    if (!is_vectorizable_op(WN_operator(simd_op), rtype, desc))
      continue;

    UINT kid_no;
    for (kid_no=0; kid_no<WN_kid_count(simd_op); kid_no++) {
      WN* tmp=WN_kid(simd_op,kid_no);
      SIMD_OPERAND_KIND kind=simd_operand_kind(tmp,innerloop);
      if (kind == Invariant || 
	  (kind == Simple && 
	   (WN_operator(tmp) == OPR_CONST ||
	    WN_operator(tmp) == OPR_INTCONST)))
	simd_operand_invariant[kid_no][curr_num_simd] = 1;
      else 
	simd_operand_invariant[kid_no][curr_num_simd] = 0;
    }
    curr_num_simd ++;
    vec_simd_ops->Push(simd_op);
  }

  if (vec_simd_ops->Elements()==0) {
    // no vecorizable op in this loop
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    MEM_POOL_Pop(&SIMD_default_pool);
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop has 0 vectorizable ops. Loop was not vectorized.\n");
    }
    return 0;
  }

  WN* loop_copy = LWN_Copy_Tree(innerloop, TRUE, LNO_Info_Map);
  // Set loop info for copy loop
  DO_LOOP_INFO* new_loop_info =
    CXX_NEW(DO_LOOP_INFO(dli,&LNO_default_pool), &LNO_default_pool);
  Set_Do_Loop_Info(loop_copy, new_loop_info);
  adg->Add_Deps_To_Copy_Block(innerloop, loop_copy, TRUE);
  if (Analyse_Dependencies(loop_copy)) {
    LNO_Erase_Dg_From_Here_In(loop_copy, adg);
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    MEM_POOL_Pop(&SIMD_default_pool);
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop has dependencies. Loop was not vectorized.\n");
    }
    return 0;
  }
  LNO_Erase_Dg_From_Here_In(loop_copy, adg);

  REF_LIST_STACK* writes = CXX_NEW(REF_LIST_STACK(&SIMD_default_pool),
        &SIMD_default_pool);
  REF_LIST_STACK* reads = CXX_NEW(REF_LIST_STACK(&SIMD_default_pool),
        &SIMD_default_pool);

  SCALAR_STACK* scalar_writes = CXX_NEW(SCALAR_STACK(&SIMD_default_pool),
        &SIMD_default_pool);
  SCALAR_STACK* scalar_reads = CXX_NEW(SCALAR_STACK(&SIMD_default_pool),
        &SIMD_default_pool);
  SCALAR_REF_STACK* params = CXX_NEW(SCALAR_REF_STACK(&SIMD_default_pool),
        &SIMD_default_pool);

  // stack used in collecting references
  DOLOOP_STACK *stack1=CXX_NEW(DOLOOP_STACK(&SIMD_default_pool),
                              &SIMD_default_pool);
  Build_Doloop_Stack(innerloop, stack1);

  // gather again after simd ops are splitted out of old stmts
  Init_Ref_Stmt_Counter();
  INT32 gather_status = 0;
  for (stmt=WN_first(body); stmt && gather_status!= -1; stmt=WN_next(stmt)) {
    gather_status=New_Gather_References(stmt,writes,reads,stack1,
        scalar_writes,scalar_reads,
        params,&SIMD_default_pool) ;
  }
  if (gather_status == -1) {
    DevWarn("Error in gathering references");
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    MEM_POOL_Pop(&SIMD_default_pool);
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop was not vectorized.\n");
    }
    return 0;
  }

  for (stmt=WN_first(body); stmt; stmt=WN_next(stmt)) {
    VINDEX16 v=dep_g_p->Add_Vertex();
    if (v==0) {
      DevWarn("Statement dependence graph problem");
      CXX_DELETE(dep_g_p, &SIMD_default_pool);
      MEM_POOL_Pop(&SIMD_default_pool);
      if (debug || LNO_Simd_Verbose) {
	printf("(%s:%d) ", 
	       Src_File_Name, 
	       Srcpos_To_Line(WN_Get_Linenum(innerloop)));
	printf("Loop was not vectorized.\n");
      }
      return 0;
    }
    stmt_to_vertex->Enter(stmt, v);
  }
  // a dictionary used for looking up the bit position for a symbol
  BINARY_TREE<NAME2BIT> *mapping_dictionary = 
    CXX_NEW(BINARY_TREE<NAME2BIT>(&SIMD_default_pool),
    &SIMD_default_pool);

  // list of references that use scalar-expandable variables
  FF_STMT_LIST expandable_ref_list;

  // step 2: examine all reads and writes and do the following
  //		1. classify them as scalar or array
  //		2. create name to bit position mappings for new symbol names
  //		3. if the ref is STID, check if it is scalar expandable
  UINT sym_count=simd_2(innerloop, scalar_reads, scalar_writes,
			mapping_dictionary, expandable_ref_list);

  // we also need to have a set of expandable scalars
  BIT_VECTOR Expandable_Scalar_Set(sym_count, &SIMD_default_pool);

  // now look at all references in 'expandable_ref_list' and set the
  // corresponding bit in 'Expandable_Scalar_Set'
  FF_STMT_ITER e_iter(&expandable_ref_list);
  for (FF_STMT_NODE* ref_node=e_iter.First(); !e_iter.Is_Empty();
      ref_node=e_iter.Next()) {
      NAME2BIT temp_map;
      temp_map.Set_Symbol(ref_node->Get_Stmt());
      Expandable_Scalar_Set.Set(mapping_dictionary->Find(temp_map)->
               Get_Data()->Get_Bit_Position());
  }

  if (LNO_Test_Dump) {
    printf("Expandable_Scalar_Set=\n");
    Expandable_Scalar_Set.Print(stdout);
  }

  WN_MAP sdm=WN_MAP_Create(&SIMD_default_pool);
  ARRAY_DIRECTED_GRAPH16 *sdg =
    CXX_NEW(ARRAY_DIRECTED_GRAPH16(100,500,sdm,LEVEL_ARRAY_GRAPH),
      &SIMD_default_pool);

  for (stmt = WN_first(body); stmt; stmt = WN_next(stmt)) {
    if (!Map_Stmt_To_Level_Graph(stmt,sdg)) {
      FmtAssert(0, ("Error in mapping stmt to level graph\n"));
      CXX_DELETE(dep_g_p, &SIMD_default_pool);
      CXX_DELETE(sdg, &SIMD_default_pool);
      WN_MAP_Delete(sdm);
      MEM_POOL_Pop(&SIMD_default_pool);
      if (debug || LNO_Simd_Verbose) {
	printf("(%s:%d) ", 
	       Src_File_Name, 
	       Srcpos_To_Line(WN_Get_Linenum(innerloop)));
	printf("Loop is not vevctorized.\n");
      }
      return(0);
    }
  }

  BOOL status=Generate_Scalar_Dependence_For_Statement_Dependence_Graph(
    innerloop, scalar_reads, scalar_writes, params, sdg, red_manager,
    &Expandable_Scalar_Set, mapping_dictionary);
  if (status==FALSE) {
    DevWarn("Statement dependence graph problem");
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    CXX_DELETE(sdg, &SIMD_default_pool);
    WN_MAP_Delete(sdm);
    MEM_POOL_Pop(&SIMD_default_pool);
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop was not vectorized.\n");
    }
    return(0);
  }

  status=Generate_Array_Dependence_For_Statement_Dependence_Graph(
    innerloop, reads, writes, sdg, red_manager, adg);
  if (status==FALSE) {
    DevWarn("Statement dependence graph problem");
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    CXX_DELETE(sdg, &SIMD_default_pool);
    WN_MAP_Delete(sdm);
    MEM_POOL_Pop(&SIMD_default_pool);
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop was not vectorized.\n");
    }
    return(0);
  }

  // dep_g_p would not overflow if sdg did not overflow so no checking
  // is needed

  EINDEX16 e=sdg->Get_Edge();
  while (e) {
    WN* source=sdg->Get_Wn(sdg->Get_Source(e));
    WN* sink=sdg->Get_Wn(sdg->Get_Sink(e));
    if (LWN_Get_Parent(source) == body || LWN_Get_Parent(sink) == body)
      // add edges only if the source and sink are immediate children
      dep_g_p->Add_Unique_Edge(
        stmt_to_vertex->Find(source),
        stmt_to_vertex->Find(sink));
    e=sdg->Get_Next_Edge(e);

  }

  // ac_g is the acyclic condensation graph of dep_g_p
  // it stores dependence relations between SCCs
  SCC_DIRECTED_GRAPH16 *ac_g;
  ac_g = dep_g_p->Acyclic_Condensation(&SIMD_default_pool);

  VINDEX16 total_scc = dep_g_p->Get_Scc_Count();

  // scc[i] is a list of statemens in i-th SCC
  FF_STMT_LIST *scc;
  scc = CXX_NEW_ARRAY(FF_STMT_LIST, total_scc+1, &SIMD_default_pool);

  UINT *scc_size=CXX_NEW_ARRAY(UINT, total_scc+1, &SIMD_default_pool);

  for (i=1; i<=total_scc; i++) {
    scc_size[i]=0;
  }

  // Append statements to the statement list of proper SCC
  for (stmt = WN_first(WN_do_body(innerloop)); stmt; stmt = WN_next(stmt)) {
    VINDEX16 scc_id;
    scc_id = dep_g_p->Get_Scc_Id(stmt_to_vertex->Find(stmt));
    scc_size[scc_id]++;
  }

  for (i=1; i<=total_scc; i++) {
    scc_size[i]=0;
  }

  // Append statements to the statement list of proper SCC
  for (stmt = WN_first(WN_do_body(innerloop)); stmt; stmt = WN_next(stmt)) {
    VINDEX16 scc_id;
    scc_id = dep_g_p->Get_Scc_Id(stmt_to_vertex->Find(stmt));
    scc[scc_id].Append(stmt, &SIMD_default_pool);  
    scc_size[scc_id]++;
  }

  if (LNO_Test_Dump)
    for (i=1; i<=total_scc; i++) {

      printf("Simd:scc %d:", i);
      FF_STMT_ITER s_iter(&scc[i]);
      INT j=0;
      for (FF_STMT_NODE *stmt_node=s_iter.First(); !s_iter.Is_Empty();
	   stmt_node=s_iter.Next()) {
          stmt=stmt_node->Get_Stmt();
          Dump_WN(stmt,stdout,TRUE,4,4);
        j++;
      }
      printf(" has %d stmts\n", j);

    }

  if (total_scc==1 && scc_size[1]>1) {
    CXX_DELETE(ac_g, &SIMD_default_pool);
    CXX_DELETE(dep_g_p, &SIMD_default_pool);
    CXX_DELETE(sdg, &SIMD_default_pool);
    WN_MAP_Delete(sdm);
    MEM_POOL_Pop(&SIMD_default_pool);
    if (debug || LNO_Simd_Verbose) {
      printf("(%s:%d) ", 
	     Src_File_Name, 
	     Srcpos_To_Line(WN_Get_Linenum(innerloop)));
      printf("Loop has to be split. Loop was not vectorized.\n");
    }
    return(0);
  }

  UINT_DYN_ARRAY* new_loops;

  new_loops=simd_fis_merge_scc_to_form_new_loop(total_scc,scc,scc_size,
    innerloop,ac_g);

  // new_loops[i] is the i-th seed SCC

  if (LNO_Run_Simd != 2 && new_loops->Lastidx() != 0) {
    // If there are super vectors in the loop then it may still be okay to 
    // vectorize (bug 1544)
    // TODO_1.2: compute the actual overhead due to scalar expansion 
    // and offset that with the benefit of vectorization, to decide
    // whether to proceed with vectorization. Too much scalar expansion
    // may kill. This is not relevant to this bug.
    BOOL super_vector = FALSE;
    for (i=0; i<vec_simd_ops->Elements() && !super_vector; i++) {
      WN* simd_op=vec_simd_ops->Top_nth(i);
      if (OPCODE_is_compare(WN_opcode(simd_op)) &&
          MTYPE_is_size_double(WN_desc(simd_op)))
        continue;
      if (WN_rtype(simd_op) != MTYPE_V &&
          WN_rtype(simd_op) != MTYPE_F8 && WN_rtype(simd_op) != MTYPE_I8)
        super_vector = TRUE;
      else if (WN_desc(simd_op) != MTYPE_V &&
               WN_desc(simd_op) != MTYPE_F8 && WN_desc(simd_op) != MTYPE_I8)
        super_vector = TRUE;
    }   

    if (!super_vector) {
      CXX_DELETE(dep_g_p, &SIMD_default_pool);
      CXX_DELETE(ac_g, &SIMD_default_pool);
      CXX_DELETE(sdg, &SIMD_default_pool);
      WN_MAP_Delete(sdm);
      MEM_POOL_Pop(&SIMD_default_pool);
      if (debug || LNO_Simd_Verbose) {
	printf("(%s:%d) ", 
	       Src_File_Name, 
	       Srcpos_To_Line(WN_Get_Linenum(innerloop)));
	printf("Loop has to be scalar-expanded. Loop was not vectorized.\n");
      }
      return FALSE;
    }
  }
      
  // separate the loop and expand scalars which is expandable and has
  // references in different fissions loops
  if (needs_scalar_expansion)
    simd_fis_separate_loop_and_scalar_expand(new_loops,scc, innerloop,
					     expandable_ref_list);

  // For all SIMD ops that belong to same loop, we need to call Find_Simd_Kind
  // to find what the combination SIMD Kind is.
  typedef HASH_TABLE<WN*, WN**> HTABLE_TYPE;
  HTABLE_TYPE *hash_table =
    CXX_NEW(HTABLE_TYPE(vec_simd_ops->Elements(),
			&LNO_local_pool), &LNO_local_pool);      
  INT max_size = 0;
  BOOL *simd_op_last_in_loop = 
    CXX_NEW_ARRAY(BOOL, vec_simd_ops->Elements(),&LNO_local_pool);
  SIMD_KIND *simd_op_kind =
    CXX_NEW_ARRAY(SIMD_KIND, vec_simd_ops->Elements(),&LNO_local_pool);

  for (i=0; i < vec_simd_ops->Elements(); i++) {
    WN* simd_op=vec_simd_ops->Top_nth(i);
    
    WN* istore=LWN_Get_Parent(simd_op);
    WN* new_body=Find_Do_Body(istore);
    WN* new_loop=LWN_Get_Parent(new_body);
    WN **newwn = CXX_NEW_ARRAY(WN*,vec_simd_ops->Elements(),&LNO_local_pool);
    INT num = 1, j;
    BOOL found = FALSE;
    WN* found_eq = NULL;
    INT found_eq_loc;

    // Initialize
    newwn[0] = simd_op;
    simd_op_kind[i] = INVALID;
    simd_op_last_in_loop[i] = TRUE;

    // If simd_op belongs to one of earlier simd ops' hash entry then, 
    // set hash table equivalent to previous entry and skip this entry.
    for (j = i - 1; j >= 0 && !found; j --) {
      WN **checkwn = hash_table->Find(vec_simd_ops->Top_nth(j));
      
      for (INT k = 0; k < max_size && !found; k++) {
	if (checkwn[k] == simd_op) {
	  found = TRUE;
	  found_eq = vec_simd_ops->Top_nth(j);
	  found_eq_loc = j;
	}
      }
    }
    if (found_eq) {
      hash_table->Enter(simd_op, hash_table->Find(found_eq));
      simd_op_kind[i] = simd_op_kind[found_eq_loc];
      simd_op_last_in_loop[found_eq_loc] = FALSE;
      continue;
    }

    // Look for simd ops that belong to same loop.
    for (j=i+1; j<vec_simd_ops->Elements(); j++) {
      WN* simd_op_next=vec_simd_ops->Top_nth(j);
      
      WN* istore_next=LWN_Get_Parent(simd_op_next);
      WN* new_body_next = Find_Do_Body(istore_next);
      WN* new_loop_next=LWN_Get_Parent(new_body_next);
      
      if (new_loop == new_loop_next)
	newwn[num++] = simd_op_next;
    }
    hash_table->Enter(simd_op, newwn);             
    if (max_size < num)
      max_size = num;

    // At this point, the hash table entry op for this simd_op has all 
    // the simd ops that are inside the same loop. Calculate simd_kind 
    // for this simd_op
    STACK_OF_WN *vec_simd_ops_tmp=
      CXX_NEW(STACK_OF_WN(&SIMD_default_pool),&SIMD_default_pool);
    for (j = 0; j < num; j++)
      vec_simd_ops_tmp->Push(newwn[j]);
    simd_op_kind[i] = Find_Simd_Kind(vec_simd_ops_tmp);
  }
  
  INT *simd_op_best_align[4];
  simd_op_best_align[0] = 
    CXX_NEW_ARRAY(INT,vec_simd_ops->Elements(),&SIMD_default_pool);
  simd_op_best_align[1] =  
    CXX_NEW_ARRAY(INT,vec_simd_ops->Elements(),&SIMD_default_pool);
  simd_op_best_align[2] =  
    CXX_NEW_ARRAY(INT,vec_simd_ops->Elements(),&SIMD_default_pool);
  simd_op_best_align[3] =  
    CXX_NEW_ARRAY(INT,vec_simd_ops->Elements(),&SIMD_default_pool);

  // Bug 2840 - If the upper bound is not a compile-time constant, then
  // we can not generate aligned (vectorized) loop even by peeling (unless 
  // we create multiple versions guarded by checks on the upper bound).
  BOOL ubound_variable = FALSE;
  WN* end = WN_end(innerloop);
  SYMBOL loop_index(WN_index(innerloop));
  if (WN_kid_count(end) != 2)
    ubound_variable = TRUE;
  else if (WN_operator(WN_kid0(end)) == OPR_LDID &&
	   loop_index == SYMBOL(WN_kid0(end))) {
    if (WN_operator(WN_kid1(end)) != OPR_INTCONST)
      ubound_variable = TRUE;
  } else if (WN_operator(WN_kid1(end)) == OPR_LDID &&
	     loop_index == SYMBOL(WN_kid1(end))) {
    if (WN_operator(WN_kid0(end)) != OPR_INTCONST)
      ubound_variable = TRUE;
  }
  
  for (i=vec_simd_ops->Elements()-1; i >= 0; i--) {
    WN* simd_op=vec_simd_ops->Top_nth(i);

    SIMD_KIND simd_kind = simd_op_kind[i];
    if (simd_kind == INVALID) {
      simd_op_best_align[0][i] = 
	simd_op_best_align[1][i] = 
	simd_op_best_align[2][i] = 
	simd_op_best_align[3][i] = -1;
      continue;
    }

    WN* iload0=WN_kid0(simd_op);
    WN* iload1=WN_kid1(simd_op);
    WN* iload2=WN_kid2(simd_op);
    WN* istore=LWN_Get_Parent(simd_op);
    WN* new_body=Find_Do_Body(istore);
    WN* innerloop=LWN_Get_Parent(new_body);
    INT size, vect, fn, A, A0;

    if (WN_operator(simd_op) == OPR_INTRINSIC_OP) {
      FmtAssert(WN_operator(iload0) == OPR_PARM, ("NYI"));
      FmtAssert(WN_operator(iload1) == OPR_PARM, ("NYI"));
      iload0 = WN_kid0(iload0);
      iload1 = WN_kid0(iload1);
    }
    switch(simd_kind) {
    case V16I1: vect = 16; break;
    case V16I2: vect = 8;  break;
    //case V16I4: 
    case V16F4: vect = 4;  break;
    //case V16I8: 
    case V16F8: vect = 2;  break;
    }
    size = 16/vect;

    simd_op_best_align[0][i] = 
      simd_op_best_align[1][i] = 
      simd_op_best_align[2][i] = 
      simd_op_best_align[3][i] = -1;

    if (simd_operand_invariant[0][vec_simd_ops->Elements()-i-1] == 1)
      simd_op_best_align[0][i] = -2;
    if (WN_kid_count(simd_op) < 2 || 
	simd_operand_invariant[1][vec_simd_ops->Elements()-i-1] == 1)
      simd_op_best_align[1][i] = -2;
    if (WN_kid_count(simd_op) < 3 || 
	simd_operand_invariant[2][vec_simd_ops->Elements()-i-1] == 1)
      simd_op_best_align[2][i] = -2;
    
    if (simd_op_best_align[0][i] != -2 && 
	WN_operator(iload0) == OPR_ILOAD) {
      WN *array0 = WN_kid0(iload0);
      ACCESS_ARRAY* aa0=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,array0);
      
      WN *copy = LWN_Copy_Tree(WN_kid(array0, WN_kid_count(array0) - 1), 
			       TRUE, LNO_Info_Map);
      WN *start = LWN_Copy_Tree(WN_kid0(WN_start(innerloop)),
				TRUE, LNO_Info_Map);
      SYMBOL symbol(WN_index(innerloop));
      BOOL const_lb = 
	WN_operator(WN_kid0(WN_start(innerloop))) == OPR_INTCONST;
      if (!const_lb) {
	if (WN_operator(WN_kid0(WN_start(innerloop))) == OPR_LDID) {
	  SYMBOL symnew(WN_kid0(WN_start(innerloop)));
	  // Replace_Symbol copies def_use
	  Replace_Symbol(copy, symbol, symnew, WN_kid0(WN_start(innerloop)));
	  //Replace_Symbol(copy, symbol, symnew, NULL);
	}
      } else {
	if (WN_operator(copy) == OPR_LDID) {
	  SYMBOL sym(copy);
	  if (sym == symbol) {
            OPCODE intconst_opc= 
	      OPCODE_make_op(OPR_INTCONST,index_type, MTYPE_V);
	    copy = 
	      WN_CreateIntconst(intconst_opc, 
				WN_const_val(WN_kid0(WN_start(innerloop))));
	  }
	} else {
	  Simd_Replace_With_Constant(copy, symbol, 
				     WN_kid0(WN_start(innerloop)),
				     index_type);
	}
      }
      copy = WN_Simplify_Tree(copy);
      if (WN_operator(copy) != OPR_INTCONST) 
	simd_op_best_align[0][i] = -2;
      else if (!WN_has_sym(WN_array_base(WN_kid0(iload0))))
	// TODO: compute alignment for cases like a.b[i] (bug 1703)
	simd_op_best_align[0][i] = -2;
      else if (WN_operator(simd_op) == OPR_CVT) 
	// related to Bug 2665 but faults at run-time
	simd_op_best_align[0][i] = -2;
      else {
	fn = WN_const_val(copy);
	
	// Compute A0 (alignment of the base of the array).
	ST *st = WN_st(WN_array_base(WN_kid0(iload0)));
	TY_IDX ty_iload0;
	ST *base_st; INT64 offset;
	Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid0(iload0))), 
			       &base_st, &offset);
	if (WN_operator(WN_array_base(WN_kid0(iload0))) == OPR_LDA)
	  offset += WN_lda_offset(WN_array_base(WN_kid0(iload0)));
	offset += WN_offset(iload0); // bug 2612
	ty_iload0 = ST_type(base_st);
	simd_op_best_align[0][i] = Simd_Compute_Best_Align(offset, fn, size);
	Set_TY_align_exp (ty_iload0, 4);

	// ARRAYs within COMMON blocks that are not padded to align
	Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid0(iload0))), 
			       &base_st, &offset);
	if (ST_sclass(base_st) == SCLASS_COMMON && offset != 0)
	  simd_op_best_align[0][i] = -2;

	// Fortran Equivalenced arrays should not be aligned
	if (ST_is_equivalenced(st))
	  simd_op_best_align[0][i] = -2;

	if (aa0->Num_Vec() >= 2 && 
	    (!WN_kid(array0, aa0->Num_Vec()) ||
	     WN_operator(WN_kid(array0, aa0->Num_Vec())) != OPR_INTCONST ||
	     (WN_const_val(WN_kid(array0, aa0->Num_Vec()))*
	      // TODO: Element size can be computed more reliably by following 
	      // the pointed-to type, but we will just use the desc type of the
	      // ISTORE.
	      MTYPE_byte_size(WN_desc(istore) == MTYPE_V ? 
			      WN_rtype(istore) : WN_desc(istore)))%16 != 0))
	  simd_op_best_align[0][i] = -2; 	
	if (simd_op_best_align[0][i] == -2 || 
	    (TY_kind(ST_type(st)) == KIND_STRUCT &&
	     strncmp(TY_name(ST_type(st)),".dope.",6) == 0) ||
	    TY_kind(ST_type(st)) == KIND_POINTER)
	  ; // Do nothing
	else if (base_st->sym_class != CLASS_BLOCK && 
	    ST_sclass(st) != SCLASS_FORMAL &&
	    ST_sclass(st) != SCLASS_FORMAL_REF)
	  Set_ST_type(base_st, ty_iload0);
        else if (ST_sclass(st) != SCLASS_AUTO && 
	         ST_sclass(st) != SCLASS_EXTERN &&
		 ST_sclass(st) != SCLASS_FORMAL &&
		 ST_sclass(st) != SCLASS_FORMAL_REF) {
	  TY_IDX st_ty_idx = ST_type(st);
	  Set_TY_align_exp(st_ty_idx, 4);
	  Set_ST_type(st, st_ty_idx);
	  Set_STB_align(base_st, 16);
	  Simd_Reallocate_Objects = TRUE;
	} else if (ST_sclass(st) == SCLASS_AUTO &&
		   Stack_Alignment() == 16 &&
		   ST_level(st) == Current_scope) {
	  TY_IDX st_ty_idx = ST_type(st);
	  Set_TY_align_exp(st_ty_idx, 4);
	  Set_ST_type(st, st_ty_idx);
	}
	if (simd_op_best_align[0][i] == -2 || 
	    (TY_kind(ST_type(st)) == KIND_STRUCT &&
	     strncmp(TY_name(ST_type(st)),".dope.",6) == 0) ||
	    TY_kind(ST_type(st)) == KIND_POINTER)
	  simd_op_best_align[0][i] = -2;	
	else if (ST_sclass(st) == SCLASS_AUTO && 
		 (ST_level(st) != Current_scope ||
		  Stack_Alignment() != 16))
	  simd_op_best_align[0][i] = -2;
	else if (ST_sclass(st) == SCLASS_FORMAL ||
	         ST_sclass(st) == SCLASS_FORMAL_REF)
	  simd_op_best_align[0][i] = -2;
	else if (base_st->sym_class == CLASS_BLOCK && 
		 simd_op_best_align[0][i] < 0) // Bug 2322
	  simd_op_best_align[0][i] = 0; // we have just aligned this block
      }
    }
    if (simd_op_best_align[1][i] != -2 && 
	WN_operator(iload1) == OPR_ILOAD) {
      WN *array1 = WN_kid0(iload1);
      ACCESS_ARRAY* aa1=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,array1);
      
      WN *copy = LWN_Copy_Tree(WN_kid(array1, WN_kid_count(array1) -1),
			       TRUE, LNO_Info_Map);
      WN *start = LWN_Copy_Tree(WN_kid0(WN_start(innerloop)),
				TRUE, LNO_Info_Map);
      SYMBOL symbol(WN_index(innerloop));
      BOOL const_lb = 
	WN_operator(WN_kid0(WN_start(innerloop))) == OPR_INTCONST;
      if (!const_lb) {
	if (WN_operator(WN_kid0(WN_start(innerloop))) == OPR_LDID) {
	  SYMBOL symnew(WN_kid0(WN_start(innerloop)));
	  // Replace_Symbol copies def_use
	  Replace_Symbol(copy, symbol, symnew, WN_kid0(WN_start(innerloop)));
	  //Replace_Symbol(copy, symbol, symnew, NULL);
	}
      } else {
	if (WN_operator(copy) == OPR_LDID) {
	  SYMBOL sym(copy);
	  if (sym == symbol) {
            OPCODE intconst_opc= 
	      OPCODE_make_op(OPR_INTCONST,index_type, MTYPE_V);
	    copy = 
	      WN_CreateIntconst(intconst_opc, 
				WN_const_val(WN_kid0(WN_start(innerloop))));
	  }
	} else {
	  Simd_Replace_With_Constant(copy, symbol, 
				     WN_kid0(WN_start(innerloop)),
				     index_type);
	}
      }
      copy = WN_Simplify_Tree(copy);
      if (WN_operator(copy) != OPR_INTCONST) 
	simd_op_best_align[1][i] = -2;
      else if (!WN_has_sym(WN_array_base(WN_kid0(iload1))))
	// TODO: compute alignment for cases like a.b[i] (bug 1703)
	simd_op_best_align[1][i] = -2;
      else {
	fn = WN_const_val(copy);
	
	// Compute A0 (alignment of the base of the array).
	ST *st = WN_st(WN_array_base(WN_kid0(iload1)));
	
	TY_IDX ty_iload1;
	ST *base_st; INT64 offset;
	Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid0(iload1))), 
			       &base_st, &offset);
	if (WN_operator(WN_array_base(WN_kid0(iload1))) == OPR_LDA)
	  offset += WN_lda_offset(WN_array_base(WN_kid0(iload1)));
	offset += WN_offset(iload1);
	ty_iload1 = ST_type(base_st);
	simd_op_best_align[1][i] = Simd_Compute_Best_Align(offset, fn, size);
	Set_TY_align_exp (ty_iload1, 4);

	// ARRAYs within COMMON blocks that are not padded to align
	Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid0(iload1))), 
			       &base_st, &offset);
	if (ST_sclass(base_st) == SCLASS_COMMON && offset != 0)
	  simd_op_best_align[1][i] = -2;

	// Fortran Equivalenced arrays should not be aligned
	if (ST_is_equivalenced(st))
	  simd_op_best_align[1][i] = -2;
	  
	if (aa1->Num_Vec() >= 2 &&
	    (!WN_kid(array1, aa1->Num_Vec()) ||
	     WN_operator(WN_kid(array1, aa1->Num_Vec())) != OPR_INTCONST ||
	     (WN_const_val(WN_kid(array1, aa1->Num_Vec()))*
	      // TODO: Element size can be computed more reliably by following 
	      // the pointed-to type, but we will just use the desc type of the
	      // ISTORE.
	      MTYPE_byte_size(WN_desc(istore) == MTYPE_V ? 
			      WN_rtype(istore) : WN_desc(istore)))%16 != 0))
	  simd_op_best_align[1][i] = -2; 	
	if (simd_op_best_align[1][i] == -2 || 
	    (TY_kind(ST_type(st)) == KIND_STRUCT &&
	     strncmp(TY_name(ST_type(st)),".dope.",6) == 0) ||
	    TY_kind(ST_type(st)) == KIND_POINTER)
	  ; // Do nothing
	// Bug 1381 - forgot to check for CLASS_BLOCK variables
	else if (base_st->sym_class != CLASS_BLOCK && 
	    ST_sclass(st) != SCLASS_FORMAL &&
	    ST_sclass(st) != SCLASS_FORMAL_REF)
	  Set_ST_type(base_st, ty_iload1);
        else if (ST_sclass(st) != SCLASS_AUTO &&
	         ST_sclass(st) != SCLASS_EXTERN &&
	         ST_sclass(st) != SCLASS_FORMAL &&
		 ST_sclass(st) != SCLASS_FORMAL_REF) {
	  TY_IDX st_ty_idx = ST_type(st);
	  Set_TY_align_exp(st_ty_idx, 4);
	  Set_ST_type(st, st_ty_idx);
	  Set_STB_align(base_st, 16);
	  Simd_Reallocate_Objects = TRUE;
	} else if (ST_sclass(st) == SCLASS_AUTO &&
		   Stack_Alignment() == 16 &&
		   ST_level(st) == Current_scope) {
	  TY_IDX st_ty_idx = ST_type(st);
	  Set_TY_align_exp(st_ty_idx, 4);
	  Set_ST_type(st, st_ty_idx);
	}
	if (simd_op_best_align[1][i] == -2 || 
	    (TY_kind(ST_type(st)) == KIND_STRUCT &&
	     strncmp(TY_name(ST_type(st)),".dope.",6) == 0) ||
	    TY_kind(ST_type(st)) == KIND_POINTER)
	  simd_op_best_align[1][i] = -2;	
	else if (ST_sclass(st) == SCLASS_AUTO && 
		 (ST_level(st) != Current_scope ||
		  Stack_Alignment() != 16))
	  simd_op_best_align[1][i] = -2;
	else if (ST_sclass(st) == SCLASS_FORMAL ||
	         ST_sclass(st) == SCLASS_FORMAL_REF)
	  simd_op_best_align[1][i] = -2;
	else if (base_st->sym_class == CLASS_BLOCK &&
		 simd_op_best_align[1][i] < 0) // Bug 2322
	  simd_op_best_align[1][i] = 0; // we have just aligned this block
      }
    }
    if (simd_op_best_align[2][i] != -2 && 
	WN_operator(iload2) == OPR_ILOAD) {
      WN *array2 = WN_kid0(iload2);
      ACCESS_ARRAY* aa2=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,array2);
      
      WN *copy = LWN_Copy_Tree(WN_kid(array2, WN_kid_count(array2) -1),
			       TRUE, LNO_Info_Map);
      WN *start = LWN_Copy_Tree(WN_kid0(WN_start(innerloop)),
				TRUE, LNO_Info_Map);
      SYMBOL symbol(WN_index(innerloop));
      BOOL const_lb = 
	WN_operator(WN_kid0(WN_start(innerloop))) == OPR_INTCONST;
      if (!const_lb) {
	if (WN_operator(WN_kid0(WN_start(innerloop))) == OPR_LDID) {
	  SYMBOL symnew(WN_kid0(WN_start(innerloop)));
	  // Replace_Symbol copies def_use
	  Replace_Symbol(copy, symbol, symnew, WN_kid0(WN_start(innerloop)));
	  //Replace_Symbol(copy, symbol, symnew, NULL);
	}
      } else {
	if (WN_operator(copy) == OPR_LDID) {
	  SYMBOL sym(copy);
	  if (sym == symbol) {
            OPCODE intconst_opc= 
	      OPCODE_make_op(OPR_INTCONST,index_type, MTYPE_V);
	    copy = 
	      WN_CreateIntconst(intconst_opc, 
				WN_const_val(WN_kid0(WN_start(innerloop))));
	  }
	} else {
	  Simd_Replace_With_Constant(copy, symbol, 
				     WN_kid0(WN_start(innerloop)),
				     index_type);
	}
      }
      copy = WN_Simplify_Tree(copy);
      if (WN_operator(copy) != OPR_INTCONST) 
	simd_op_best_align[2][i] = -2;
      else if (!WN_has_sym(WN_array_base(WN_kid0(iload2))))
	// TODO: compute alignment for cases like a.b[i] (bug 1703)
	simd_op_best_align[2][i] = -2;
      else {
	fn = WN_const_val(copy);
	
	// Compute A0 (alignment of the base of the array).
	ST *st = WN_st(WN_array_base(WN_kid0(iload2)));
	
	TY_IDX ty_iload2;
	ST *base_st; INT64 offset;
	Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid0(iload2))), 
			       &base_st, &offset);
	if (WN_operator(WN_array_base(WN_kid0(iload2))) == OPR_LDA)
	  offset += WN_lda_offset(WN_array_base(WN_kid0(iload2)));
	offset += WN_offset(iload2);
	ty_iload2 = ST_type(base_st);
	simd_op_best_align[2][i] = Simd_Compute_Best_Align(offset, fn, size);
	Set_TY_align_exp (ty_iload2, 4);

	// ARRAYs within COMMON blocks that are not padded to align
	Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid0(iload2))), 
			       &base_st, &offset);
	if (ST_sclass(base_st) == SCLASS_COMMON && offset != 0)
	  simd_op_best_align[2][i] = -2;

	// Fortran Equivalenced arrays should not be aligned
	if (ST_is_equivalenced(st))
	  simd_op_best_align[2][i] = -2;
	  
	if (aa2->Num_Vec() >= 2 &&
	    (!WN_kid(array2, aa2->Num_Vec()) ||
	     WN_operator(WN_kid(array2, aa2->Num_Vec())) != OPR_INTCONST ||
	     (WN_const_val(WN_kid(array2, aa2->Num_Vec()))*
	      // TODO: Element size can be computed more reliably by following 
	      // the pointed-to type, but we will just use the desc type of the
	      // ISTORE.
	      MTYPE_byte_size(WN_desc(istore) == MTYPE_V ? 
			      WN_rtype(istore) : WN_desc(istore)))%16 != 0))
	  simd_op_best_align[2][i] = -2; 	
	if (simd_op_best_align[2][i] == -2 || 
	    (TY_kind(ST_type(st)) == KIND_STRUCT &&
	     strncmp(TY_name(ST_type(st)),".dope.",6) == 0) ||
	    TY_kind(ST_type(st)) == KIND_POINTER)
	  ; // Do nothing
	// Bug 1381 - forgot to check for CLASS_BLOCK variables
	else if (base_st->sym_class != CLASS_BLOCK && 
	    ST_sclass(st) != SCLASS_FORMAL &&
	    ST_sclass(st) != SCLASS_FORMAL_REF)
	  Set_ST_type(base_st, ty_iload2);
        else if (ST_sclass(st) != SCLASS_AUTO &&
	         ST_sclass(st) != SCLASS_EXTERN &&
	         ST_sclass(st) != SCLASS_FORMAL &&
		 ST_sclass(st) != SCLASS_FORMAL_REF) {
	  TY_IDX st_ty_idx = ST_type(st);
	  Set_TY_align_exp(st_ty_idx, 4);
	  Set_ST_type(st, st_ty_idx);
	  Set_STB_align(base_st, 16);
	  Simd_Reallocate_Objects = TRUE;
	} else if (ST_sclass(st) == SCLASS_AUTO &&
		   Stack_Alignment() == 16 &&
		   ST_level(st) == Current_scope) {
	  TY_IDX st_ty_idx = ST_type(st);
	  Set_TY_align_exp(st_ty_idx, 4);
	  Set_ST_type(st, st_ty_idx);
	}
	if (simd_op_best_align[2][i] == -2 || 
	    (TY_kind(ST_type(st)) == KIND_STRUCT &&
	     strncmp(TY_name(ST_type(st)),".dope.",6) == 0) ||
	    TY_kind(ST_type(st)) == KIND_POINTER)
	  simd_op_best_align[2][i] = -2;	
	else if (ST_sclass(st) == SCLASS_AUTO && 
		 (ST_level(st) != Current_scope ||
		  Stack_Alignment() != 16))
	  simd_op_best_align[2][i] = -2;
	else if (ST_sclass(st) == SCLASS_FORMAL ||
	         ST_sclass(st) == SCLASS_FORMAL_REF)
	  simd_op_best_align[2][i] = -2;
	else if (base_st->sym_class == CLASS_BLOCK &&
		 simd_op_best_align[2][i] < 0) // Bug 2322
	  simd_op_best_align[2][i] = 0; // we have just aligned this block
      }
    }

    if (WN_operator(istore) != OPR_ISTORE)
      continue;
    WN *arrays = WN_kid1(istore);
    ACCESS_ARRAY* aas=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,arrays);
      
    WN *copy = LWN_Copy_Tree(WN_kid(arrays, WN_kid_count(arrays) -1),
			     TRUE, LNO_Info_Map);
    WN *start = LWN_Copy_Tree(WN_kid0(WN_start(innerloop)),
			      TRUE, LNO_Info_Map);
    SYMBOL symbol(WN_index(innerloop));
    BOOL const_lb = 
      WN_operator(WN_kid0(WN_start(innerloop))) == OPR_INTCONST;
    if (!const_lb) {
      if (WN_operator(WN_kid0(WN_start(innerloop))) == OPR_LDID) {
	SYMBOL symnew(WN_kid0(WN_start(innerloop)));
	// Replace_Symbol copies def_use
	Replace_Symbol(copy, symbol, symnew, WN_kid0(WN_start(innerloop)));
	//Replace_Symbol(copy, symbol, symnew, NULL);
      }
    } else {
      if (WN_operator(copy) == OPR_LDID) {
	SYMBOL sym(copy);
	if (sym == symbol) {
	  OPCODE intconst_opc= 
	    OPCODE_make_op(OPR_INTCONST,index_type, MTYPE_V);
	  copy = 
	    WN_CreateIntconst(intconst_opc, 
			      WN_const_val(WN_kid0(WN_start(innerloop))));
	}
      } else {
	Simd_Replace_With_Constant(copy, symbol, 
				   WN_kid0(WN_start(innerloop)),
				   index_type);
      }
    }
    copy = WN_Simplify_Tree(copy);
    if (WN_operator(copy) != OPR_INTCONST) 
      simd_op_best_align[3][i] = -2;
    else if (!WN_has_sym(WN_array_base(WN_kid1(istore))))
      // TODO: compute alignment for cases like a.b[i] (bug 1703)
      simd_op_best_align[3][i] = -2;
    else {
      fn = WN_const_val(copy);
      
      // Compute A0 (alignment of the base of the array).
      ST *st = WN_st(WN_array_base(WN_kid1(istore)));
	
      TY_IDX ty_istore;
      ST *base_st; INT64 offset;
      Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid1(istore))), 
			     &base_st, &offset);
      if (WN_operator(WN_array_base(WN_kid1(istore))) == OPR_LDA)
	offset += WN_lda_offset(WN_array_base(WN_kid1(istore)));
      offset += WN_offset(istore);
      ty_istore = ST_type(base_st);
      simd_op_best_align[3][i] = Simd_Compute_Best_Align(offset, fn, size);
      Set_TY_align_exp (ty_istore, 4);

      // ARRAYs within COMMON blocks that are not padded to align
      Base_Symbol_And_Offset(WN_st(WN_array_base(WN_kid1(istore))), 
			     &base_st, &offset);
      if (ST_sclass(base_st) == SCLASS_COMMON && offset != 0)
	simd_op_best_align[3][i] = -2;

      // Fortran Equivalenced arrays should not be aligned
      if (ST_is_equivalenced(st))
	simd_op_best_align[3][i] = -2;
	  
      if (aas->Num_Vec() >= 2 &&
	  (!WN_kid(arrays, aas->Num_Vec()) ||
	   WN_operator(WN_kid(arrays, aas->Num_Vec())) != OPR_INTCONST ||
	   (WN_const_val(WN_kid(arrays, aas->Num_Vec()))*
	    // TODO: Element size can be computed more reliably by following 
	    // the pointed-to type, but we will just use the desc type of the 
	    // ISTORE.
	    MTYPE_byte_size(WN_desc(istore) == MTYPE_V ? 
			    WN_rtype(istore) : WN_desc(istore)))%16 != 0))
	  simd_op_best_align[3][i] = -2; 	
      if (simd_op_best_align[3][i] == -2 || 
	  (TY_kind(ST_type(st)) == KIND_STRUCT &&
	   strncmp(TY_name(ST_type(st)),".dope.",6) == 0) ||
	  TY_kind(ST_type(st)) == KIND_POINTER)
	; // Do nothing
      else if (base_st->sym_class != CLASS_BLOCK && 
	  ST_sclass(st) != SCLASS_FORMAL &&
	  ST_sclass(st) != SCLASS_FORMAL_REF)
	Set_ST_type(base_st, ty_istore);
      else if (ST_sclass(st) != SCLASS_AUTO &&
	       ST_sclass(st) != SCLASS_EXTERN &&
	       ST_sclass(st) != SCLASS_FORMAL &&
	       ST_sclass(st) != SCLASS_FORMAL_REF) {
	TY_IDX st_ty_idx = ST_type(st);
	Set_TY_align_exp(st_ty_idx, 4);
	Set_ST_type(st, st_ty_idx);
	Set_STB_align(base_st, 16);
	Simd_Reallocate_Objects = TRUE;
      } else if (ST_sclass(st) == SCLASS_AUTO && 
		 Stack_Alignment() == 16 &&
		 ST_level(st) == Current_scope) {
        TY_IDX st_ty_idx = ST_type(st);
        Set_TY_align_exp(st_ty_idx, 4);
        Set_ST_type(st, st_ty_idx);
      }
      //Set_ST_type(WN_st(WN_array_base(WN_kid1(istore))), ty_istore);
      if (simd_op_best_align[3][i] == -2 || 
	  (TY_kind(ST_type(st)) == KIND_STRUCT &&
	   strncmp(TY_name(ST_type(st)),".dope.",6) == 0) ||
	  TY_kind(ST_type(st)) == KIND_POINTER)
	simd_op_best_align[3][i] = -2;	
      else if (ST_sclass(st) == SCLASS_AUTO && 
	       (ST_level(st) != Current_scope ||
		Stack_Alignment() != 16))
	simd_op_best_align[3][i] = -2;
      else if (ST_sclass(st) == SCLASS_FORMAL ||
               ST_sclass(st) == SCLASS_FORMAL_REF)
        simd_op_best_align[3][i] = -2;
      else if (base_st->sym_class == CLASS_BLOCK &&
	       simd_op_best_align[3][i] < 0) // Bug 2322
	simd_op_best_align[3][i] = 0; // we have just aligned this block
    }
  }
  for (i=vec_simd_ops->Elements()-1; i >= 0; i--) {
    WN* simd_op=vec_simd_ops->Top_nth(i);

    SIMD_KIND simd_kind = simd_op_kind[i];
    if (simd_kind == INVALID ||
	!simd_op_last_in_loop[i])
      continue;

    WN* iload0=WN_kid0(simd_op);
    WN* iload1=WN_kid1(simd_op);
    WN* iload2=WN_kid2(simd_op);
    WN* istore=LWN_Get_Parent(simd_op);
    WN* new_body=Find_Do_Body(istore);
    WN* innerloop=LWN_Get_Parent(new_body);

    INT peel_benefit[16], peel, k;
    INT best_peel = 0, best_benefit = 0;

    if (WN_operator(simd_op) == OPR_INTRINSIC_OP) {
      FmtAssert(WN_operator(iload0) == OPR_PARM, ("NYI"));
      FmtAssert(WN_operator(iload1) == OPR_PARM, ("NYI"));
      iload0 = WN_kid0(iload0);
      iload1 = WN_kid0(iload1);
    }

    for (peel = 0; peel < 16; peel ++) {

      peel_benefit[peel] = -1;

      for (INT j=vec_simd_ops->Elements()-1; j >= 0; j--) {
	WN* simd_op_next=vec_simd_ops->Top_nth(j);
	
	SIMD_KIND simd_kind_next = simd_op_kind[j];
	if (simd_kind_next == INVALID)
	  continue;

	WN* iload0_next=WN_kid0(simd_op_next);
	WN* iload1_next=WN_kid1(simd_op_next);
	WN* iload2_next=WN_kid2(simd_op_next);
	WN* istore_next=LWN_Get_Parent(simd_op_next);
	WN* new_body_next=Find_Do_Body(istore_next);
	WN* innerloop_next=LWN_Get_Parent(new_body_next);

	if (innerloop != innerloop_next)
	  continue;

	if (simd_op_best_align[0][j] == peel)
	  peel_benefit[peel] ++;
	if (simd_op_best_align[1][j] == peel)
	  peel_benefit[peel] ++;
	if (simd_op_best_align[2][j] == peel)
	  peel_benefit[peel] ++;
	if (simd_op_best_align[3][j] == peel)
	  peel_benefit[peel] ++;
      }
    }

    for (peel = 0; peel < 16; peel ++) {
      if (peel_benefit[peel] > best_benefit) {
	best_benefit = peel_benefit[peel];
	best_peel = peel;
      }
    }
        
    // Create the peeled loop now that we know the best peel candidate.

    if (best_peel == 0) {
      for (INT j=vec_simd_ops->Elements()-1; j >= 0; j--) {
	WN* simd_op_next=vec_simd_ops->Top_nth(j);
	
	SIMD_KIND simd_kind_next = simd_op_kind[j];
	if (simd_kind == INVALID)
	  continue;
	
	WN* iload0_next=WN_kid0(simd_op_next);
	WN* iload1_next=WN_kid1(simd_op_next);
	WN* iload2_next=WN_kid2(simd_op_next);
	WN* istore_next=LWN_Get_Parent(simd_op_next);
	WN* new_body_next=Find_Do_Body(istore_next);
	WN* innerloop_next=LWN_Get_Parent(new_body_next);
	
	if (innerloop_next != innerloop)
	  continue;
	
	if (WN_operator(simd_op_next) == OPR_INTRINSIC_OP) {
	  FmtAssert(WN_operator(iload0_next) == OPR_PARM, ("NYI"));
	  FmtAssert(WN_operator(iload1_next) == OPR_PARM, ("NYI"));
	  iload0_next = WN_kid0(iload0_next);
	  iload1_next = WN_kid0(iload1_next);
	}

	if (simd_op_best_align[0][j] == best_peel) {
	  TY_IDX ty_iload0 = TY_pointed(WN_load_addr_ty(iload0_next));
	  TY_IDX ty_idx = 0;
	  TY &ty = New_TY (ty_idx);
	  Set_TY_align (ty_iload0, 16);
	  TY_Init (ty, Pointer_Size, KIND_POINTER, Pointer_Mtype, 
		   Save_Str ("anon_ptr."));
	  Set_TY_pointed (ty, ty_iload0);
	  WN_set_load_addr_ty (iload0_next, ty_idx);
	}
	if (simd_op_best_align[1][j] == best_peel) {
	  TY_IDX ty_iload1 = TY_pointed(WN_load_addr_ty(iload1_next));
	  TY_IDX ty_idx = 0;
	  TY &ty = New_TY (ty_idx);
	  Set_TY_align (ty_iload1, 16);
	  TY_Init (ty, Pointer_Size, KIND_POINTER, Pointer_Mtype, 
		   Save_Str ("anon_ptr."));
	  Set_TY_pointed (ty, ty_iload1);
	  WN_set_load_addr_ty (iload1_next, ty_idx);
	}
	if (simd_op_best_align[2][j] == best_peel) {
	  TY_IDX ty_iload2 = TY_pointed(WN_load_addr_ty(iload2_next));
	  TY_IDX ty_idx = 0;
	  TY &ty = New_TY (ty_idx);
	  Set_TY_align (ty_iload2, 16);
	  TY_Init (ty, Pointer_Size, KIND_POINTER, Pointer_Mtype, 
		   Save_Str ("anon_ptr."));
	  Set_TY_pointed (ty, ty_iload2);
	  WN_set_load_addr_ty (iload2_next, ty_idx);
	}
	if (simd_op_best_align[3][j] == best_peel) {
	  TY_IDX ty_istore = TY_pointed(WN_ty(istore_next));
	  Set_TY_align (ty_istore, 16);	  
	  TY_IDX ty_idx = 0;
	  TY &ty = New_TY (ty_idx);
	  TY_Init (ty, Pointer_Size, KIND_POINTER, Pointer_Mtype, 
		   Save_Str ("anon_ptr."));
	  Set_TY_pointed (ty, ty_istore);
	  WN_set_ty (istore_next, ty_idx);
	}
      }
    }

    if (best_peel <= 0 || ubound_variable)
      continue;

    OPCODE add_opc = OPCODE_make_op(OPR_ADD,index_type, MTYPE_V);
    OPCODE intconst_opc= OPCODE_make_op(OPR_INTCONST,index_type, MTYPE_V);
    WN *start1 = LWN_Copy_Tree(WN_kid0(WN_start(innerloop)),
			      TRUE, LNO_Info_Map);
    WN *start2 = LWN_Copy_Tree(WN_kid0(WN_start(innerloop)),
			      TRUE, LNO_Info_Map);
    WN *ub_peel = 
      LWN_CreateExp2(add_opc, 
		     WN_CreateIntconst(intconst_opc, best_peel-1), 
		     start1);
    WN *lb_aligned = 
      LWN_CreateExp2(add_opc, 
		     WN_CreateIntconst(intconst_opc, best_peel), 
		     start2);

    // Update use=def for newly created loop bounds.
    Update_Symbol_Use_Def(WN_kid0(WN_start(innerloop)), ub_peel, 
			  WN_index(innerloop), FALSE);
    Update_Symbol_Use_Def(WN_kid0(WN_start(innerloop)), lb_aligned, 
			  WN_index(innerloop), FALSE);
    
    WN *peelloop = LWN_Copy_Tree(innerloop, TRUE, LNO_Info_Map);
    
    Copy_Def_Use(WN_start(innerloop), WN_start(peelloop), 
		 WN_index(innerloop), FALSE /* synch */);
    
    // Need to copy the def-use from innerloop to peelloop
    SYMBOL index(WN_index(innerloop));
    WN *innerloop_body = WN_do_body(innerloop);
    WN *peelloop_body = WN_do_body(peelloop);
    WN *innerloop_stmt, *peelloop_stmt;
    for (innerloop_stmt=WN_first(innerloop_body), 
	   peelloop_stmt=WN_first(peelloop_body);
	 innerloop_stmt != NULL && peelloop_stmt != NULL; 
	 innerloop_stmt=WN_next(innerloop_stmt),
	   peelloop_stmt=WN_next(peelloop_stmt))
      Copy_Def_Use(innerloop_stmt, peelloop_stmt, 
		   index, FALSE/*synch*/);

    for (innerloop_stmt=WN_first(innerloop_body), 
	   peelloop_stmt=WN_first(peelloop_body);
	 innerloop_stmt != NULL && peelloop_stmt != NULL; 
	 innerloop_stmt=WN_next(innerloop_stmt),
	   peelloop_stmt=WN_next(peelloop_stmt))
      LWN_Copy_Def_Use(WN_kid0(innerloop_stmt), 
		       WN_kid0(peelloop_stmt), Du_Mgr); 
    
    for (innerloop_stmt=WN_first(innerloop_body), 
	   peelloop_stmt=WN_first(peelloop_body);
	 innerloop_stmt != NULL && peelloop_stmt != NULL; 
	 innerloop_stmt=WN_next(innerloop_stmt),
	   peelloop_stmt=WN_next(peelloop_stmt)) {
      if (WN_operator(innerloop_stmt) == OPR_STID) {
	USE_LIST* use_list=Du_Mgr->Du_Get_Use(innerloop_stmt);
	USE_LIST_ITER uiter(use_list);
	DOLOOP_STACK sym_stack(&LNO_local_pool);
	SYMBOL symbol(innerloop_stmt);
	Find_Nodes(OPR_LDID, symbol, WN_do_body(peelloop), 
		   &sym_stack);
	for (INT j = 0; j < sym_stack.Elements(); j++) {
	  WN* wn_use =  sym_stack.Bottom_nth(j);
	  DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
	  def_list->Set_loop_stmt(peelloop); 
	}
	if (use_list->Incomplete()) {
	  Du_Mgr->Create_Use_List(peelloop_stmt);
	  Du_Mgr->Du_Get_Use(peelloop_stmt)->Set_Incomplete();
	  continue;
	}
	for (DU_NODE* u=uiter.First(); !uiter.Is_Empty(); u=uiter.Next()) {
	  WN* use = u->Wn();
	  Du_Mgr->Add_Def_Use(peelloop_stmt, use);
	}
      }
    }

    // Update loop upper bound for peeled loop.
    WN *loop_end = WN_end(peelloop);
    // Delete last loop end def-use (we are going to modify)
    LWN_Update_Def_Use_Delete_Tree(loop_end, Du_Mgr);
    WN_kid1(loop_end) = ub_peel;

    LWN_Set_Parent(WN_end(peelloop),peelloop);    
    LWN_Parentize(WN_end(peelloop));

    // Adjust loop lower bound for vectorizable loop
    WN *start_innerloop = WN_start(innerloop);
    WN_kid0(start_innerloop) = lb_aligned;

    LWN_Set_Parent(WN_kid0(start_innerloop),start_innerloop);
    LWN_Set_Parent(start_innerloop,innerloop);

    // Set loop info for peeled loop
    DO_LOOP_INFO* new_loop_info =
      CXX_NEW(DO_LOOP_INFO(dli,&LNO_default_pool), &LNO_default_pool);
    Set_Do_Loop_Info(peelloop, new_loop_info);
      
    // Update def use for new loop peelloop
    SYMBOL symbol_peelloop(WN_index(peelloop));
    DOLOOP_STACK sym_stack1(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol_peelloop, WN_end(peelloop), &sym_stack1);  
    for (k = 0; k < sym_stack1.Elements(); k++) {
      WN* wn_use = sym_stack1.Bottom_nth(k);
      Du_Mgr->Add_Def_Use(WN_start(peelloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(peelloop), wn_use); 
    }
    for (k = 0; k < sym_stack1.Elements(); k++) {
      WN* wn_use =  sym_stack1.Bottom_nth(k);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(peelloop); 
    }    
    DOLOOP_STACK sym_stack3(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol_peelloop, 
	       WN_do_body(peelloop), &sym_stack3);  
    for (INT j = 0; j < sym_stack3.Elements(); j++) {
      WN* wn_use = sym_stack3.Bottom_nth(j);
      Du_Mgr->Add_Def_Use(WN_start(peelloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(peelloop), wn_use); 
    }
    for (INT j = 0; j < sym_stack3.Elements(); j++) {
      WN* wn_use =  sym_stack3.Bottom_nth(j);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(peelloop); 
    }    
    DOLOOP_STACK sym_stack5(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol_peelloop, WN_step(peelloop), &sym_stack5);  
    for (INT j = 0; j < sym_stack5.Elements(); j++) {
      WN* wn_use = sym_stack5.Bottom_nth(j);
      Du_Mgr->Add_Def_Use(WN_start(peelloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(peelloop), wn_use); 
    }
    for (INT j = 0; j < sym_stack5.Elements(); j++) {
      WN* wn_use =  sym_stack5.Bottom_nth(j);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(peelloop); 
    }
    DOLOOP_STACK sym_stack6(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol_peelloop, WN_start(peelloop), &sym_stack6);  
    for (INT j = 0; j < sym_stack6.Elements(); j++) {
      WN* wn_use = sym_stack6.Bottom_nth(j);
      Du_Mgr->Add_Def_Use(WN_start(innerloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(innerloop), wn_use); 
    }
    for (INT j = 0; j < sym_stack6.Elements(); j++) {
      WN* wn_use =  sym_stack6.Bottom_nth(j);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(peelloop); 
    }
    
    // Now, insert the peeled loop before the vectorizable innerloop.
    LWN_Insert_Block_Before(LWN_Get_Parent(innerloop),
			    innerloop,peelloop);
    
    // Parentize both loops
    LWN_Parentize(innerloop);    
    LWN_Parentize(peelloop); 
    LWN_Set_Parent(peelloop, LWN_Get_Parent(innerloop));
    
    // Add any new vertices and update dep info.
    Add_Vertices(WN_do_body(peelloop));
    adg->Fission_Dep_Update(peelloop, 1);
    adg->Fission_Dep_Update(innerloop, 1);          

    for (INT j=vec_simd_ops->Elements()-1; j >= 0; j--) {
      WN* simd_op_next=vec_simd_ops->Top_nth(j);
      
      SIMD_KIND simd_kind_next = simd_op_kind[j];
      if (simd_kind == INVALID)
	continue;
      
      WN* iload0_next=WN_kid0(simd_op_next);
      WN* iload1_next=WN_kid1(simd_op_next);
      WN* iload2_next=WN_kid2(simd_op_next);
      WN* istore_next=LWN_Get_Parent(simd_op_next);
      WN* new_body_next=Find_Do_Body(istore_next);
      WN* innerloop_next=LWN_Get_Parent(new_body_next);

      if (innerloop_next != innerloop)
	continue;
      
      if (WN_operator(simd_op_next) == OPR_INTRINSIC_OP) {
	FmtAssert(WN_operator(iload0_next) == OPR_PARM, ("NYI"));
	FmtAssert(WN_operator(iload1_next) == OPR_PARM, ("NYI"));
	iload0_next = WN_kid0(iload0_next);
	iload1_next = WN_kid0(iload1_next);
      }

      if (simd_op_best_align[0][j] == best_peel) {
	TY_IDX ty_iload0 = TY_pointed(WN_load_addr_ty(iload0_next));
	TY_IDX ty_idx = 0;
	TY &ty = New_TY (ty_idx);
	Set_TY_align (ty_iload0, 16);
	TY_Init (ty, Pointer_Size, KIND_POINTER, Pointer_Mtype, 
		 Save_Str ("anon_ptr."));
	Set_TY_pointed (ty, ty_iload0);
	WN_set_load_addr_ty (iload0_next, ty_idx);
      }
      if (simd_op_best_align[1][j] == best_peel) {
	TY_IDX ty_iload1 = TY_pointed(WN_load_addr_ty(iload1_next));
	TY_IDX ty_idx = 0;
	TY &ty = New_TY (ty_idx);
	Set_TY_align (ty_iload1, 16);
	TY_Init (ty, Pointer_Size, KIND_POINTER, Pointer_Mtype, 
		 Save_Str ("anon_ptr."));
	Set_TY_pointed (ty, ty_iload1);
	WN_set_load_addr_ty (iload1_next, ty_idx);
      }
      if (simd_op_best_align[2][j] == best_peel) {
	TY_IDX ty_iload2 = TY_pointed(WN_load_addr_ty(iload2_next));
	TY_IDX ty_idx = 0;
	TY &ty = New_TY (ty_idx);
	Set_TY_align (ty_iload2, 16);
	TY_Init (ty, Pointer_Size, KIND_POINTER, Pointer_Mtype, 
		 Save_Str ("anon_ptr."));
	Set_TY_pointed (ty, ty_iload2);
	WN_set_load_addr_ty (iload2_next, ty_idx);
      }
      if (simd_op_best_align[3][j] == best_peel) {
	TY_IDX ty_istore = TY_pointed(WN_ty(istore_next));
	Set_TY_align (ty_istore, 16);	  
	TY_IDX ty_idx = 0;
	TY &ty = New_TY (ty_idx);
	TY_Init (ty, Pointer_Size, KIND_POINTER, Pointer_Mtype, 
		 Save_Str ("anon_ptr."));
	Set_TY_pointed (ty, ty_istore);
	WN_set_ty (istore_next, ty_idx);
      }
    }
  }

  // Count the number of floating point single precision vectorization ops
  for (i=0; i<vec_simd_ops->Elements(); i++) {
    WN* simd_op=vec_simd_ops->Top_nth(i);
    SIMD_KIND simd_kind = simd_op_kind[i];
    if (simd_kind == INVALID)
      continue;
    if (OPCODE_is_compare(WN_opcode(simd_op)) &&
	MTYPE_is_size_double(WN_desc(simd_op)))
      continue;
    if (WN_rtype(simd_op) != MTYPE_V && 
	    WN_rtype(simd_op) != MTYPE_F8 && WN_rtype(simd_op) != MTYPE_I8)
      good_vector ++;
    else if (WN_desc(simd_op) != MTYPE_V && 
	    WN_desc(simd_op) != MTYPE_F8 && WN_desc(simd_op) != MTYPE_I8)
      good_vector ++;
  }

  WN* reduction_node= NULL;

  for (i=vec_simd_ops->Elements()-1; i >= 0; i--) {
    WN* simd_op=vec_simd_ops->Top_nth(i); 

    // If we are unable to find combination SIMD Kind for this simd_op
    // then skip.
    SIMD_KIND simd_kind = simd_op_kind[i];
    if (simd_kind == INVALID)
      continue;
    
    WN* iload0=WN_kid0(simd_op);
    WN* iload1=WN_kid1(simd_op);
    WN* iload2=WN_kid2(simd_op);
    WN* istore=LWN_Get_Parent(simd_op);
    WN* new_body=Find_Do_Body(simd_op);
    WN* new_loop=LWN_Get_Parent(new_body);

    // The remainder loop is essential only if, we can not prove the loop upper
    // bound is exactly divisible by the new loop stride. The new loop stride 
    // is determined based on the old loop bound and the size of vectorization.
    //
    // Copy the old loop to remainder loop before meddling with the old loop.
    // This is a temporary and is not the incoming parameter
    WN *innerloop = new_loop; 
    WN *remainderloop = LWN_Copy_Tree(innerloop, TRUE, LNO_Info_Map);

    if (WN_operator(simd_op) == OPR_INTRINSIC_OP) {
      FmtAssert(WN_operator(iload0) == OPR_PARM, ("NYI"));
      FmtAssert(WN_operator(iload1) == OPR_PARM, ("NYI"));
      iload0 = WN_kid0(iload0);
      iload1 = WN_kid0(iload1);
    }

    // Add def-use for remainder loop only if this is the last simd_op
    // in its loop.
    if (simd_op_last_in_loop[i]) {
      // If the remainder loop were to be added, the loop ends in innerloop 
      // before xformation would be identical to the loop end for the
      // remainder loop
      Copy_Def_Use(WN_end(innerloop), WN_end(remainderloop), 
		   WN_index(innerloop), FALSE /* synch */);

      // Need to copy the def-use from innerloop to remainderloop
      SYMBOL index(WN_index(innerloop));
      WN *innerloop_body = WN_do_body(innerloop);
      WN *remainderloop_body = WN_do_body(remainderloop);
      WN *innerloop_stmt, *remainderloop_stmt;
      for (innerloop_stmt=WN_first(innerloop_body), 
	     remainderloop_stmt=WN_first(remainderloop_body);
	   innerloop_stmt != NULL && remainderloop_stmt != NULL; 
	   innerloop_stmt=WN_next(innerloop_stmt),
	     remainderloop_stmt=WN_next(remainderloop_stmt))
	Copy_Def_Use(innerloop_stmt, remainderloop_stmt, 
		     index, FALSE/*synch*/);
      for (innerloop_stmt=WN_first(innerloop_body), 
	     remainderloop_stmt=WN_first(remainderloop_body);
	   innerloop_stmt != NULL && remainderloop_stmt != NULL; 
	   innerloop_stmt=WN_next(innerloop_stmt),
	     remainderloop_stmt=WN_next(remainderloop_stmt))
	LWN_Copy_Def_Use(WN_kid0(innerloop_stmt), 
			 WN_kid0(remainderloop_stmt), Du_Mgr); 

      for (innerloop_stmt=WN_first(innerloop_body), 
	     remainderloop_stmt=WN_first(remainderloop_body);
	   innerloop_stmt != NULL && remainderloop_stmt != NULL; 
	   innerloop_stmt=WN_next(innerloop_stmt),
	     remainderloop_stmt=WN_next(remainderloop_stmt)) {
	if (WN_operator(innerloop_stmt) == OPR_STID) {
	  USE_LIST* use_list=Du_Mgr->Du_Get_Use(innerloop_stmt);
	  USE_LIST_ITER uiter(use_list);
	  DOLOOP_STACK sym_stack(&LNO_local_pool);
	  SYMBOL symbol(innerloop_stmt);
	  Find_Nodes(OPR_LDID, symbol, WN_do_body(remainderloop), 
		     &sym_stack);
	  for (INT j = 0; j < sym_stack.Elements(); j++) {
	    WN* wn_use =  sym_stack.Bottom_nth(j);
	    DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
	    def_list->Set_loop_stmt(remainderloop); 
	  }
	  if (use_list->Incomplete()) {
	    Du_Mgr->Create_Use_List(remainderloop_stmt);
	    Du_Mgr->Du_Get_Use(remainderloop_stmt)->Set_Incomplete();
	    continue;
	  }
	  for (DU_NODE* u=uiter.First(); !uiter.Is_Empty(); u=uiter.Next()) {
	    WN* use = u->Wn();
	    Du_Mgr->Add_Def_Use(remainderloop_stmt, use);
	  }
	}
      }
    }

    OPCODE intconst_opc= OPCODE_make_op(OPR_INTCONST,index_type, MTYPE_V);
    OPCODE add_opc= OPCODE_make_op(OPR_ADD,index_type, MTYPE_V);
    OPCODE sub_opc= OPCODE_make_op(OPR_SUB,index_type, MTYPE_V);
    TYPE_ID vmtype;
    TYPE_ID type;
    if (WN_operator(istore) != OPR_ISTORE && WN_operator(istore) != OPR_STID) {
      // bug 2336 - trace up the correct type 
      WN* stmt = istore;
      while(stmt && !OPCODE_is_store(WN_opcode(stmt)) && 
	    WN_operator(stmt) != OPR_DO_LOOP){
	stmt = LWN_Get_Parent(stmt);
      }    
      if (!stmt || WN_operator(stmt) == OPR_DO_LOOP)
	type = WN_rtype(istore);
      else
	type = WN_desc(stmt);
    } else
      type = WN_desc(istore);
    switch(type) {
      case MTYPE_F4:
	vmtype = MTYPE_V16F4;	
	break;
      case MTYPE_F8:
	vmtype = MTYPE_V16F8;	
	break;
      case MTYPE_I1:
      case MTYPE_U1:
	vmtype = MTYPE_V16I1;	
	break;
      case MTYPE_I2:
      case MTYPE_U2:
	vmtype = MTYPE_V16I2;	
	break;
      case MTYPE_I4:
      case MTYPE_U4:
	vmtype = MTYPE_V16I4;	
	break;
      case MTYPE_I8:
      case MTYPE_U8:
	vmtype = MTYPE_V16I8;	
	break;
    }    

    if (WN_kid_count(simd_op) < 2) { // unary_op
      // Just so that the following xformations do not seg fault
      iload1 = iload0;     
    } 
    if (WN_kid_count(simd_op) < 3) { 
      // Just so that the following xformations do not seg fault
      iload2 = iload0;     
    } 
    
    for (INT kid = 0, invariant_kid; kid < WN_kid_count(simd_op); kid ++) {
      WN* inv_node;

      invariant_kid = -1;
      if (simd_operand_invariant[kid][vec_simd_ops->Elements()-i-1] == 1 ||
	  WN_operator(WN_kid(simd_op, kid)) == OPR_LDID) {
	invariant_kid = kid;
	if (kid == 0)
	  iload0 = NULL;
	else if (kid == 1)
	  iload1 = NULL;
	else
	  iload2 = NULL;
	if (WN_kid_count(simd_op) < 2 && !iload0)
	  iload1 = NULL;
	if (WN_kid_count(simd_op) < 3 && !iload0)
	  iload2 = NULL;
      } else 
	continue;
      
      inv_node = WN_kid(simd_op, invariant_kid);
      if (WN_operator(inv_node) == OPR_PARM)
	inv_node = WN_kid0(inv_node);

      if (WN_operator(inv_node) == OPR_CONST ||
	  WN_operator(inv_node) == OPR_INTCONST) {
	TYPE_ID desc = WN_desc(inv_node);      
	TYPE_ID type;
	TCON tcon;
	ST *sym;
	if (WN_desc(istore) == MTYPE_V)
	  type = WN_rtype(istore);
	else
	  type = WN_desc(istore);
	if (!MTYPE_is_float(type)) {
	  if (MTYPE_is_size_double(type)) {
	    INT64 value = (INT64)WN_const_val(inv_node);
	    tcon = Host_To_Targ(MTYPE_I8, value);
	  } else {
	    INT value = (INT)WN_const_val(inv_node);
	    tcon = Host_To_Targ(MTYPE_I4, value);
	  }
	  sym = New_Const_Sym (Enter_tcon (tcon), 
			       Be_Type_Tbl(type));
	}
	switch (type) {      
	case MTYPE_F4: case MTYPE_V16F4:
	  WN_set_rtype(inv_node, MTYPE_V16F4);
	  break;      
	case MTYPE_F8: case MTYPE_V16F8:
	  WN_set_rtype(inv_node, MTYPE_V16F8);
	  break;
	case MTYPE_U1: case MTYPE_I1: case MTYPE_V16I1:
	  inv_node = WN_CreateConst (OPR_CONST, MTYPE_V16I1, MTYPE_V, sym);
	  break;      
	case MTYPE_U2: case MTYPE_I2: case MTYPE_V16I2:
	  inv_node = WN_CreateConst (OPR_CONST, MTYPE_V16I2, MTYPE_V, sym);
	  break;      
	case MTYPE_U4: case MTYPE_I4: case MTYPE_V16I4: 
	  inv_node = WN_CreateConst (OPR_CONST, MTYPE_V16I4, MTYPE_V, sym);
	  break;
	case MTYPE_U8: case MTYPE_I8: case MTYPE_V16I8:
	  inv_node = WN_CreateConst (OPR_CONST, MTYPE_V16I8, MTYPE_V, sym);
	  break;
	}
      }
      else {
	if (simd_operand_invariant[kid][vec_simd_ops->Elements()-i-1] != 1) {
	  WN* stmt = simd_op;
	  while(stmt && !OPCODE_is_store(WN_opcode(stmt)))
	    stmt = LWN_Get_Parent(stmt);
	  FmtAssert(stmt && curr_simd_red_manager, ("NYI"));
	  if (WN_operator(stmt) == OPR_STID && 
	      curr_simd_red_manager->Which_Reduction(stmt) != RED_NONE &&
	      WN_st(WN_kid(simd_op, kid)) == WN_st(stmt) &&
	      WN_offset(WN_kid(simd_op, kid)) == WN_offset(stmt)) {
	    WN* tmp = WN_kid(simd_op, kid);
	    WN* copy = LWN_Copy_Tree(tmp, TRUE, LNO_Info_Map);
	    DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(tmp);
	    WN* loop = def_list->Loop_stmt();
	    if (loop == innerloop)
	      def_list->Set_loop_stmt(NULL);
	    Du_Mgr->Delete_Def_Use(innerloop,tmp);
	    Du_Mgr->Delete_Def_Use(istore, tmp);
	    LWN_Copy_Def_Use(tmp, copy, Du_Mgr);
	    if (WN_operator(simd_op) != OPR_MAX && 
		WN_operator(simd_op) != OPR_MIN)
	      Delete_Def_Use(tmp);
	    WN* last_tmp = tmp;
	    TYPE_ID desc = WN_desc(tmp);
	    TYPE_ID rtype = WN_rtype(tmp);
	    WN_OFFSET offset;
	    WN* last_op = simd_op;
	    WN_set_desc(tmp, vmtype);
	    WN_set_rtype(tmp, vmtype);
	    while(istore && WN_operator(istore) != OPR_STID) {
	      istore = LWN_Get_Parent(istore);
	      last_op = LWN_Get_Parent(last_op); // lags istore by 1 level
	    }
	    tmp = Split_Using_Preg(istore, tmp, adg, FALSE);	  
	    offset = WN_store_offset(tmp);
	    if (WN_operator(simd_op) != OPR_MAX && 
		WN_operator(simd_op) != OPR_MIN)
	      LWN_Delete_Tree(last_tmp);
	    else {
	      WN_set_desc(last_tmp, desc);
	      WN_set_rtype(last_tmp, rtype);
	    }
	    
	    TCON tcon;
	    INT value;
	    float valuefp;
	    double valuedp;
	    ST* st;
	    if (WN_operator(simd_op) == OPR_ADD || 
		WN_operator(simd_op) == OPR_SUB) {
	      value = 0; valuefp = 0.0F; valuedp = 0.0;
	    } else if (WN_operator(simd_op) == OPR_MPY || 
		       WN_operator(simd_op) == OPR_DIV) {
	      value = 1; valuefp = 1.0F; valuedp = 1.0;
	    }
	    if (WN_operator(simd_op) == OPR_ADD || 
		WN_operator(simd_op) == OPR_SUB || 
		WN_operator(simd_op) == OPR_DIV || 
		WN_operator(simd_op) == OPR_MPY) {
	      if (!MTYPE_is_integral(desc)) {
		if (desc == MTYPE_F4)
		  tcon = Host_To_Targ_Float_4 (MTYPE_F4, valuefp);
		else 
		  tcon = Host_To_Targ_Float (MTYPE_F8, valuedp);
	      }
	      else
		tcon = Host_To_Targ(MTYPE_I4, value);
	      st = New_Const_Sym (Enter_tcon (tcon), Be_Type_Tbl(desc));
	      inv_node = WN_CreateConst (OPR_CONST, vmtype, MTYPE_V, st);
	    } else {
	      inv_node = 
		LWN_CreateExp1(OPCODE_make_op(OPR_REPLICATE, vmtype, desc),
			       last_tmp);	  
	    }
	    WN_kid0(tmp) = inv_node;
	    // Hoist the new preg STID above this loop.
	    LWN_Extract_From_Block(tmp);
	    LWN_Insert_Block_Before(LWN_Get_Parent(innerloop), innerloop, tmp);
	    LWN_Parentize(tmp);
	    last_tmp = tmp;
	    
	    FmtAssert(WN_operator(istore) == OPR_STID, ("NYI"));
	    WN_set_rtype(simd_op, vmtype);
	    WN_set_rtype(last_op, vmtype);
	    tmp = Split_Using_Preg(istore, last_op, adg, FALSE);
	    WN_store_offset(tmp) = offset;
	    WN_load_offset(WN_kid0(istore)) = offset;
	    WN_set_rtype(simd_op, rtype);
	    WN_set_rtype(last_op, rtype);
	    // Move the new preg STID below this loop.
	    LWN_Extract_From_Block(istore);
	    LWN_Insert_Block_After(LWN_Get_Parent(innerloop), innerloop, istore);
	    // Create a REDUCE operation on this STID
	    OPERATOR opr;
	    OPERATOR s_opr = WN_operator(simd_op);
	    desc = WN_desc(istore);
	    if (MTYPE_is_unsigned(desc)) desc = MTYPE_complement(desc);//bug 2625
	    switch(WN_operator(simd_op)) {
	    case OPR_ADD: opr = OPR_REDUCE_ADD; break;
	    case OPR_SUB: opr = OPR_REDUCE_ADD; s_opr = OPR_ADD; break;
	    case OPR_MPY: opr = OPR_REDUCE_MPY; break; 
	    case OPR_DIV: opr = OPR_REDUCE_MPY; s_opr = OPR_MPY; break; 
	    case OPR_MAX: opr = OPR_REDUCE_MAX; break; 
	    case OPR_MIN: opr = OPR_REDUCE_MIN; break;
	    default: FmtAssert(FALSE, ("NYI"));
	    }
	    if (MTYPE_is_integral(desc) &&
		MTYPE_byte_size(desc) < 4)
	      desc = MTYPE_I4;
	    WN* reduce =
	      LWN_CreateExp2(OPCODE_make_op(s_opr, WN_rtype(simd_op), 
					    WN_desc(simd_op)),
			     LWN_CreateExp1(OPCODE_make_op(opr, desc, vmtype),
					    WN_kid0(istore)),
			     copy);
	    LWN_Parentize(reduce);
	    LWN_Set_Parent(reduce, istore);
	    WN_kid0(istore) = reduce;
	    reduction_node = istore;
	    
	    // Update the use-def
	    Du_Mgr->Add_Def_Use(last_tmp, WN_kid0(WN_kid1((reduce))));
	    Du_Mgr->Add_Def_Use(last_tmp, WN_kid(simd_op, kid));
	    Du_Mgr->Add_Def_Use(tmp, WN_kid(simd_op, kid));
	    Du_Mgr->Add_Def_Use(tmp, WN_kid0(WN_kid1(reduce)));
	    def_list = Du_Mgr->Ud_Get_Def(WN_kid(simd_op, kid));
	    def_list->Set_loop_stmt(innerloop);
	    continue;
	  } else {
	    // Bug 2456 - avoid scalar expansion and promote the scalars to 
	    // pregs of appropriate vector type. This is a major revision 
	    // in other parts of the vectorizer also.

	    // If we have already renamed this kid then skip.
	    if (MTYPE_is_vector(WN_desc(WN_kid(simd_op, kid)))) continue;
	    
	    STACK<WN*>* equivalence_class=
	      Scalar_Equivalence_Class(WN_kid(simd_op, kid),
	                               Du_Mgr,&LNO_local_pool);
	    //FmtAssert(equivalence_class, ("NYI"));
	    if (!equivalence_class)
	    {
	      equivalence_class = CXX_NEW(STACK<WN*>(&LNO_local_pool), &LNO_local_pool);
	      equivalence_class->Push(WN_kid(simd_op, kid));
	    }
		      
	    INT i;
	    SYMBOL symbol(WN_kid(simd_op, kid));
	    SYMBOL new_symbol=
	      Create_Preg_Symbol(symbol.Name(), vmtype);
	    for (i=0; i<equivalence_class->Elements(); i++) {
	      WN* scalar_ref=equivalence_class->Top_nth(i);
	      
	      // Bug 3077 - Do not rename references outside the loop.
	      // Temporaries that are live-out of this loop will be caught by 
	      // the scalar expansion test in the begining of this module. 
	      // These temporaries require scalar expansion (if this loop is 
	      // vectorized). So, we can safely rename all references inside 
	      // this loop.
	      if (!Wn_Is_Inside(scalar_ref, innerloop))
		continue;
		
	      WN_st_idx(scalar_ref)=ST_st_idx(new_symbol.St());
	      WN_offset(scalar_ref)=new_symbol.WN_Offset(); 
	      WN_set_desc(scalar_ref, vmtype);
	      if (WN_operator(scalar_ref) != OPR_STID)
		WN_set_rtype(scalar_ref, vmtype);
            }
	    // TODO: Don't we need to do a CXX_DELETE of equivalence_class??
	    continue;
	  }
	}

	// change the LDID of the invariant into a REPLICATE
	TYPE_ID desc = WN_desc(inv_node);      
	TYPE_ID type;
	if (WN_desc(istore) == MTYPE_V)
	  type = WN_rtype(istore);
	else
	  type = WN_desc(istore);
	if (WN_operator(simd_op) == OPR_CVT)
	  type = desc;
	switch (type) {
	case MTYPE_V16F4:
	case MTYPE_F4:
	  inv_node = 
	    LWN_CreateExp1(OPCODE_make_op(OPR_REPLICATE, MTYPE_V16F4, desc),
			   inv_node);
	  break;
	case MTYPE_V16F8:
	case MTYPE_F8:
	  inv_node = 
	    LWN_CreateExp1(OPCODE_make_op(OPR_REPLICATE, MTYPE_V16F8, desc),
			   inv_node);
	  break;
	case MTYPE_V16I1:
	case MTYPE_U1: case MTYPE_I1:
	  inv_node = 
	    LWN_CreateExp1(OPCODE_make_op(OPR_REPLICATE, MTYPE_V16I1, MTYPE_I1),
			   inv_node);
	  break;
	case MTYPE_V16I2:
	case MTYPE_U2: case MTYPE_I2:
	  inv_node = 
	    LWN_CreateExp1(OPCODE_make_op(OPR_REPLICATE, MTYPE_V16I2, MTYPE_I2),
			   inv_node);
	  break;
	case MTYPE_V16I4:
	case MTYPE_U4: case MTYPE_I4:
	  inv_node = 
	    LWN_CreateExp1(OPCODE_make_op(OPR_REPLICATE, MTYPE_V16I4, MTYPE_I4),
			   inv_node);
	  break;
	case MTYPE_V16I8:
	case MTYPE_U8: case MTYPE_I8:
	  inv_node = 
	    LWN_CreateExp1(OPCODE_make_op(OPR_REPLICATE, MTYPE_V16I8, MTYPE_I8),
			   inv_node);
	  break;
	}
      }
      if (WN_operator(WN_kid(simd_op, invariant_kid)) == OPR_PARM) {
	WN_kid0(WN_kid(simd_op, invariant_kid)) = inv_node;
	LWN_Set_Parent(inv_node, WN_kid(simd_op, invariant_kid));
      } else
	WN_kid(simd_op, invariant_kid) = inv_node;

      LWN_Set_Parent(WN_kid(simd_op, invariant_kid), simd_op);
      LWN_Parentize(WN_kid(simd_op, invariant_kid));
    }

    if (WN_operator(simd_op) != OPR_CVT && 
	!OPCODE_is_compare(WN_opcode(simd_op))) {
      if (iload0 && WN_desc(iload0) != MTYPE_V && 
	  !MTYPE_is_vector(WN_desc(iload0)))
	WN_set_desc(iload0, vmtype);      
      if (iload0 && WN_rtype(iload0) != MTYPE_V && 
	  !MTYPE_is_vector(WN_rtype(iload0)))
	WN_set_rtype(iload0, vmtype);      
      if (iload1 && WN_desc(iload1) != MTYPE_V && 
	  !MTYPE_is_vector(WN_desc(iload1)))
	WN_set_desc(iload1, vmtype);      
      if (iload1 && WN_rtype(iload1) != MTYPE_V && 
	  !MTYPE_is_vector(WN_rtype(iload1)))
	WN_set_rtype(iload1, vmtype);      
      if (iload2 && WN_desc(iload2) != MTYPE_V && 
	  !MTYPE_is_vector(WN_desc(iload2)))
	WN_set_desc(iload2, vmtype);      
      if (iload2 && WN_rtype(iload2) != MTYPE_V && 
	  !MTYPE_is_vector(WN_rtype(iload2)))
	WN_set_rtype(iload2, vmtype);      
      WN_set_rtype (simd_op, vmtype);
    } else if (OPCODE_is_compare(WN_opcode(simd_op))) {
      if (iload0 && WN_desc(iload0) != MTYPE_V && 
	  !MTYPE_is_vector(WN_desc(iload0)))
	WN_set_desc(iload0, vmtype);      
      if (iload0 && WN_rtype(iload0) != MTYPE_V && 
	  !MTYPE_is_vector(WN_rtype(iload0)))
	WN_set_rtype(iload0, vmtype);      
      if (iload1 && WN_desc(iload1) != MTYPE_V && 
	  !MTYPE_is_vector(WN_desc(iload1)))
	WN_set_desc(iload1, vmtype);      
      if (iload1 && WN_rtype(iload1) != MTYPE_V && 
	  !MTYPE_is_vector(WN_rtype(iload1)))
	WN_set_rtype(iload1, vmtype);            
      if (vmtype == MTYPE_V16F4)
	WN_set_rtype (simd_op, MTYPE_V16I4);
      else
	WN_set_rtype (simd_op, MTYPE_V16I8);
      WN_set_desc(simd_op, vmtype);
    } else {
      if (iload0 && WN_operator(iload0) == OPR_ILOAD &&
	  WN_desc(iload0) == MTYPE_I4 && 
	  WN_rtype(iload0) == MTYPE_I4) {
	WN_set_rtype(iload0, MTYPE_V16I4);
	WN_set_desc(iload0, MTYPE_V16I4);   
      } else
	FmtAssert(WN_operator(WN_kid0(simd_op)) == OPR_REPLICATE ||
		  // Already marked
		  MTYPE_is_vector(WN_rtype(WN_kid0(simd_op))), ("NYI"));
      FmtAssert(iload1 == iload0, ("NYI"));      
      WN_set_rtype(simd_op, MTYPE_V16F8);
      WN_set_desc(simd_op, MTYPE_V16I4);
    }
    if (WN_operator(istore) != OPR_STID && WN_operator(istore) != OPR_CVT &&
	!OPCODE_is_compare(WN_opcode(istore))) {
      if (WN_desc(istore) != MTYPE_V)
	WN_set_desc(istore, vmtype);      
      if (WN_rtype(istore) != MTYPE_V)
	WN_set_rtype(istore, vmtype);  
    }
    
    if (WN_operator(simd_op) == OPR_INTRINSIC_OP) {
      FmtAssert(WN_intrinsic(simd_op) == INTRN_SUBSU2, 
		("NYI"));
      WN_intrinsic(simd_op) = INTRN_SUBSV16I2;
      WN_set_rtype(WN_kid0(simd_op), MTYPE_V16I2);
      WN_set_rtype(WN_kid1(simd_op), MTYPE_V16I2);
    }

    INT vect;
    switch(simd_kind) {
    case V16I1: vect = 16; break;
    case V16I2: vect = 8;  break;
    //case V16I4: 
    case V16F4: vect = 4;  break;
    //case V16I8: 
    case V16F8: vect = 2;  break;
    }
        
    // START: unroll
    // In the case of multiple vector ops, we would unroll 
    // those ops with larger mtypes.
    TYPE_ID simd_kind_vmtype;
    INT unroll_times = 0;
    INT add_to_base = 0; // const to be added to base if unrolled

    switch(simd_kind) {
    //case V16I4:
    case V16F4: simd_kind_vmtype = MTYPE_V16F4; break;
    //case V16I8:
    case V16F8: simd_kind_vmtype = MTYPE_V16F8; break;
    case V16I1: simd_kind_vmtype = MTYPE_V16I1; break;
    case V16I2: simd_kind_vmtype = MTYPE_V16I2; break;
    }    
    if ((vmtype != simd_kind_vmtype) &&
	((simd_kind_vmtype != MTYPE_V16F4 && 
	  simd_kind_vmtype != MTYPE_V16F8) ||
	 (simd_kind_vmtype == MTYPE_V16F8 &&
	  vmtype != MTYPE_V16I8) ||
	 (simd_kind_vmtype == MTYPE_V16F4 &&
	  vmtype != MTYPE_V16I4))) {
      switch (simd_kind) {
      //case V16F4:
      case V16I4:
	{
	  switch (vmtype) {
	  case MTYPE_V16I8: 
	  case MTYPE_V16F8: unroll_times = 2; add_to_base = 2; break;
	  }
	  break;
	}
      case V16I2:
	{
	  switch (vmtype) {
	  case MTYPE_V16I8: 
	  case MTYPE_V16F8: unroll_times = 4; add_to_base = 2; break;
	  case MTYPE_V16I4: 
	  case MTYPE_V16F4: unroll_times = 2; add_to_base = 4; break;
	  }
	  break;
	}
      case V16I1:
	{
	  switch (vmtype) {
	  case MTYPE_V16I8: 
	  case MTYPE_V16F8: unroll_times = 8; add_to_base = 2; break;
	  case MTYPE_V16I4: 
	  case MTYPE_V16F4: unroll_times = 4; add_to_base = 4; break;
	  case MTYPE_V16I2: unroll_times = 2; add_to_base = 8; break;
	  }
	  break;
	}
      default:
	FmtAssert(FALSE, ("NYI"));
	break;
      }
    }
    
    WN *array0_index, *array1_index, *array2_index, *arraystore_index;
    WN *iload0_copy, *iload1_copy, *iload2_copy;
    WN *copy_simd_op, *copy;

    for (INT k = 1, sum = add_to_base; 
	 k < unroll_times && WN_operator(istore) == OPR_ISTORE; k ++) {
      // Make a copy of the parent of the simd_op. 
      copy = LWN_Copy_Tree(istore, TRUE, LNO_Info_Map); 
      LWN_Copy_Def_Use(WN_kid0(istore), 
		       WN_kid0(copy), Du_Mgr);
      LWN_Copy_Def_Use(WN_kid1(istore), 
		       WN_kid1(copy), Du_Mgr);
      LWN_Set_Parent(copy, LWN_Get_Parent(istore));
      copy_simd_op = WN_kid0(copy);

      // Update the array indexes inside new copy_simd_op.
      iload0_copy = WN_kid0(WN_kid0(copy_simd_op));
      if (WN_kid_count(copy_simd_op) == 3) {
	iload1_copy = WN_kid0(WN_kid1(copy_simd_op));
	iload2_copy = WN_kid0(WN_kid2(copy_simd_op));
      } else if (WN_kid_count(copy_simd_op) == 2) {
	iload2_copy = iload1_copy = WN_kid0(WN_kid1(copy_simd_op));	
      }
      else
	iload2_copy = iload1_copy = iload0_copy;

      INT aa_num;
      INT dim_max;

      if (iload0_copy && WN_operator(iload0_copy) == OPR_ARRAY) {
	ACCESS_ARRAY* aa0=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,iload0_copy);
	INT kid_for0 = aa0->Num_Vec()*2;
	array0_index = WN_kid(iload0_copy, kid_for0);
	WN_kid(WN_kid0(WN_kid0(WN_kid0(copy))), kid_for0) = 
	  LWN_CreateExp2(add_opc, array0_index, 
			 WN_CreateIntconst(intconst_opc, add_to_base));
	// Look at WN structure for OPR_ARRAY
	dim_max = aa0->Num_Vec();
	for (aa_num = 0; aa_num < dim_max - 1; aa_num ++) {
	  LWN_Copy_Def_Use(WN_kid(WN_kid0(WN_kid0(WN_kid0(istore))), 
				  aa_num + dim_max + 1), 
			   WN_kid(WN_kid0(WN_kid0(WN_kid0(copy))), 
				  aa_num + dim_max + 1),
			   Du_Mgr);
	}
      } else if (iload0_copy) // Bug 2233
	Create_Unroll_Copy(WN_kid0(WN_kid0(copy)), add_to_base, 
			   WN_kid0(WN_kid0(istore)), index_type);
      
      if (WN_kid_count(WN_kid0(copy)) == 2 &&
	  iload1_copy && WN_operator(iload1_copy) == OPR_ARRAY) {
	ACCESS_ARRAY* aa1=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,iload1_copy);
	INT kid_for1 = aa1->Num_Vec()*2;
	array1_index = WN_kid(iload1_copy, kid_for1);
	WN_kid(WN_kid0(WN_kid1(WN_kid0(copy))), kid_for1) = 
	  LWN_CreateExp2(add_opc, array1_index, 
			 WN_CreateIntconst(intconst_opc, add_to_base));
	// Bug 1962
	if (WN_kid_count(WN_kid(WN_kid0(WN_kid1(WN_kid0(istore))), 
				kid_for1)) ==
	    WN_kid_count(WN_kid(WN_kid0(WN_kid1(WN_kid0(copy))), kid_for1)) &&
	    // Bug 3434
	    WN_kid_count(WN_kid0(WN_kid(WN_kid0(WN_kid1(WN_kid0(istore))), 
				kid_for1))) ==
	    WN_kid_count(WN_kid0(WN_kid(WN_kid0(WN_kid1(WN_kid0(copy))), kid_for1))))
	  LWN_Copy_Def_Use(WN_kid0(WN_kid(WN_kid0(WN_kid1(WN_kid0(istore))), 
					  kid_for1)), 
			   WN_kid0(WN_kid(WN_kid0(WN_kid1(WN_kid0(copy))), 
					  kid_for1)), 
			   Du_Mgr);
	else
	  LWN_Copy_Def_Use(WN_kid(WN_kid0(WN_kid1(WN_kid0(istore))), 
				  kid_for1), 
			   WN_kid0(WN_kid(WN_kid0(WN_kid1(WN_kid0(copy))), 
					  kid_for1)), 
			   Du_Mgr);

	// Look at WN structure for OPR_ARRAY
	dim_max = aa1->Num_Vec();
	for (aa_num = 0; aa_num < dim_max - 1; aa_num ++) {
	  LWN_Copy_Def_Use(WN_kid(WN_kid0(WN_kid1(WN_kid0(istore))), 
				  aa_num + dim_max + 1), 
			   WN_kid(WN_kid0(WN_kid1(WN_kid0(copy))), 
				  aa_num + dim_max + 1),
			   Du_Mgr);
	}
      } else if (WN_kid_count(WN_kid0(copy)) == 2 && iload1_copy) // Bug 2233
	Create_Unroll_Copy(WN_kid1(WN_kid0(copy)), add_to_base, 
			   WN_kid1(WN_kid0(istore)),index_type);

      if (WN_kid_count(WN_kid0(copy)) == 3 &&
	  iload2_copy && WN_operator(iload2_copy) == OPR_ARRAY) {
	ACCESS_ARRAY* aa2=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,iload2_copy);
	INT kid_for2 = aa2->Num_Vec()*2;
	array2_index = WN_kid(iload2_copy, kid_for2);
	WN_kid(WN_kid0(WN_kid2(WN_kid0(copy))), kid_for2) = 
	  LWN_CreateExp2(add_opc, array2_index, 
			 WN_CreateIntconst(intconst_opc, add_to_base));
	// Bug 1962
	if (WN_kid_count(WN_kid(WN_kid0(WN_kid2(WN_kid0(istore))), 
				kid_for2)) !=
	    WN_kid_count(WN_kid(WN_kid0(WN_kid2(WN_kid0(copy))), kid_for2)))
	  LWN_Copy_Def_Use(WN_kid(WN_kid0(WN_kid2(WN_kid0(istore))), 
				  kid_for2), 
			   WN_kid0(WN_kid(WN_kid0(WN_kid2(WN_kid0(copy))), 
					  kid_for2)), 
			   Du_Mgr);
	else
	  LWN_Copy_Def_Use(WN_kid0(WN_kid(WN_kid0(WN_kid2(WN_kid0(istore))), 
					  kid_for2)), 
			   WN_kid0(WN_kid(WN_kid0(WN_kid2(WN_kid0(copy))), 
					  kid_for2)), 
			   Du_Mgr);

	// Look at WN structure for OPR_ARRAY
	dim_max = aa2->Num_Vec();
	for (aa_num = 0; aa_num < dim_max - 1; aa_num ++) {
	  LWN_Copy_Def_Use(WN_kid(WN_kid0(WN_kid2(WN_kid0(istore))), 
				  aa_num + dim_max + 1), 
			   WN_kid(WN_kid0(WN_kid2(WN_kid0(copy))), 
				  aa_num + dim_max + 1),
			   Du_Mgr);
	}
      } else if (WN_kid_count(WN_kid0(copy)) == 3 && iload2_copy) // Bug 2233
	Create_Unroll_Copy(WN_kid2(WN_kid0(copy)), add_to_base, 
			   WN_kid2(WN_kid0(istore)),index_type);

      ACCESS_ARRAY* aas=(ACCESS_ARRAY*)WN_MAP_Get(LNO_Info_Map,WN_kid1(copy));
      INT kid_fors = aas->Num_Vec()*2;
      arraystore_index = WN_kid(WN_kid1(copy), kid_fors);
      WN_kid(WN_kid1(copy), kid_fors) = 
	LWN_CreateExp2(add_opc, arraystore_index, 
			WN_CreateIntconst(intconst_opc, add_to_base));

      // Look at WN structure for OPR_ARRAY
      dim_max = aas->Num_Vec();
      for (aa_num = 0; aa_num < dim_max - 1; aa_num ++) {
	LWN_Copy_Def_Use(WN_kid(WN_kid1(istore), aa_num + dim_max + 1), 
			 WN_kid(WN_kid1(copy), aa_num + dim_max + 1), Du_Mgr);
      }

      // Parentize copy
      LWN_Parentize(copy);

      // Now, insert the new copy of the istore after istore inside innerloop.
      LWN_Insert_Block_After(LWN_Get_Parent(istore),istore,copy);

      // Add the vertices of copy to array dependence graph.
      Add_Vertices(copy);
      
      // Update array index increment for the next time around.
      add_to_base += sum;
    }

    // Add def use for newly added statements in innerloop
    SYMBOL symbol(WN_index(innerloop));
    DOLOOP_STACK sym_stack(&LNO_local_pool);
    INT k;
    Find_Nodes(OPR_LDID, symbol, WN_do_body(innerloop), &sym_stack);  
    for (k = 0; k < sym_stack.Elements(); k++) {
      WN* wn_use = sym_stack.Bottom_nth(k);
      Du_Mgr->Add_Def_Use(WN_start(innerloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(innerloop), wn_use); 
    }
    for (k = 0; k < sym_stack.Elements(); k++) {
      WN* wn_use =  sym_stack.Bottom_nth(k);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(innerloop); 
    }    
    // END: unroll

    // Create remainder loop only if this is the last simd_op in the list.
    if (!simd_op_last_in_loop[i])
      continue;

    DOLOOP_STACK sym_stack2(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol, WN_step(innerloop), &sym_stack2);  
    for (k = 0; k < sym_stack2.Elements(); k++) {
      WN* wn_use = sym_stack2.Bottom_nth(k);
      Du_Mgr->Add_Def_Use(WN_start(innerloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(innerloop), wn_use); 
    }
    for (k = 0; k < sym_stack2.Elements(); k++) {
      WN* wn_use =  sym_stack2.Bottom_nth(k);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(innerloop); 
    }

    // START: create remainder loop
    // Update loop bounds and create any remainder loop, if necessary.
    UINT kid_id;
    OPCODE div_opc = OPCODE_make_op(OPR_DIV,index_type, MTYPE_V);
    OPCODE cmp_opc = WN_opcode(WN_end(innerloop));
    OPERATOR opr = OPCODE_operator(cmp_opc);
    OPCODE new_cmp_opc = OPCODE_make_op(OPR_LE, 
					WN_rtype(WN_end(innerloop)), 
					WN_desc(WN_end(innerloop)));    
    FmtAssert((opr == OPR_LE || opr == OPR_LT ||
	       opr == OPR_GE || opr == OPR_GT), ("NYI"));
    if (opr == OPR_GE || opr == OPR_GT) {
      opr = (opr == OPR_GE) ? OPR_LE: OPR_LT;
      WN_end(innerloop) = 
	LWN_CreateExp2(new_cmp_opc,
		       WN_kid1(WN_end(innerloop)), 
		       WN_kid0(WN_end(innerloop)));
    }      
    WN *bound;
    WN *loop_index;
    WN *tmp;
    WN *step;
    WN *add = WN_kid0(WN_step(innerloop));
    WN *loop_end = WN_end(innerloop);
    WN *loop_end_tmp, *loop_end_tmp_rloop;
    OPCODE mpy_opc = OPCODE_make_op(OPR_MPY,index_type, MTYPE_V);
    WN *loop_start = LWN_Copy_Tree(WN_start(innerloop), TRUE, LNO_Info_Map);
    WN *loop_start_tmp = 
      LWN_Copy_Tree(WN_start(innerloop), TRUE, LNO_Info_Map);
    LWN_Copy_Def_Use(WN_kid0(WN_start(innerloop)), 
		     WN_kid0(loop_start), Du_Mgr);
    LWN_Copy_Def_Use(WN_kid0(WN_start(innerloop)), 
		     WN_kid0(loop_start_tmp), Du_Mgr);
    WN *loop_start_rloop = 
      LWN_Copy_Tree(WN_start(innerloop), TRUE, LNO_Info_Map);
    WN *loop_start_rloop_tmp = 
      LWN_Copy_Tree(WN_start(innerloop), TRUE, LNO_Info_Map);
    LWN_Copy_Def_Use(WN_kid0(WN_start(innerloop)), 
		     WN_kid0(loop_start_rloop), Du_Mgr);
    LWN_Copy_Def_Use(WN_kid0(WN_start(innerloop)), 
		     WN_kid0(loop_start_rloop_tmp), Du_Mgr);

    // Adjust loop upper bound for vectorized loop    
    loop_index = find_loop_var_in_simple_ub(innerloop);
    tmp = LWN_Get_Parent(loop_index);
    if (tmp == loop_end)
      tmp = loop_index;
    else
      while (LWN_Get_Parent(tmp)!=loop_end) {
        tmp=LWN_Get_Parent(tmp);
      }
    BOOL rloop_needed = TRUE; // Is the remainder loop needed?    
    if (WN_kid0(loop_end)==tmp) {
      if (opr == OPR_LT) {
	// Adjust loop upper bound so we always have a [lb,ub]
	// rather than a [lb,ub) bound
	WN_kid1(loop_end) = 
	  LWN_CreateExp2(add_opc, 
	    WN_kid1(loop_end), 
	    WN_CreateIntconst(intconst_opc, -1));
	WN_end(innerloop) = 
	  LWN_CreateExp2(new_cmp_opc, 
	    WN_kid0(loop_end), WN_kid1(loop_end));      	
      }
      loop_end_tmp = LWN_Copy_Tree(WN_end(innerloop), TRUE, LNO_Info_Map);
      LWN_Copy_Def_Use(WN_kid1(WN_end(innerloop)), 
		       WN_kid1(loop_end_tmp), Du_Mgr);
      loop_end_tmp_rloop = 
	LWN_Copy_Tree(WN_end(innerloop), TRUE, LNO_Info_Map);
      LWN_Copy_Def_Use(WN_kid1(WN_end(innerloop)), 
		       WN_kid1(loop_end_tmp_rloop), Du_Mgr);
      // Delete last loop end def-use (we are going to modify)
      LWN_Update_Def_Use_Delete_Tree(loop_end, Du_Mgr);
      if (WN_operator(WN_kid1(loop_end)) == OPR_INTCONST &&
	  WN_operator(WN_kid0(loop_start)) == OPR_INTCONST) {
	// check if the trip count is exactly divisible by vect
	if ((WN_const_val(WN_kid1(loop_end)) - 
	     WN_const_val(WN_kid0(loop_start)) + 1)%vect == 0)
	  rloop_needed = FALSE;
      }
      else if (WN_operator(WN_kid1(loop_end)) != OPR_INTCONST &&
	       WN_operator(WN_kid0(loop_start)) != OPR_INTCONST) {
	WN* tmp1 = WN_Simplify_Tree(LWN_Copy_Tree(WN_kid1(loop_end)));
	WN* tmp2 = WN_Simplify_Tree(LWN_Copy_Tree(WN_kid0(loop_start)));
	if (WN_operator(tmp1) == OPR_INTCONST &&
	    WN_operator(tmp2) == OPR_INTCONST) {
	  if ((WN_const_val(tmp1) - WN_const_val(tmp2) + 1)%vect == 0)
	    rloop_needed = FALSE;
	}
      }
      else if (WN_operator(WN_kid1(loop_end)) != OPR_INTCONST &&
	       WN_operator(WN_kid0(loop_start)) == OPR_INTCONST) {
	WN* tmp1 = WN_Simplify_Tree(LWN_Copy_Tree(WN_kid1(loop_end)));
	if (WN_operator(tmp1) == OPR_INTCONST) {
	  if ((WN_const_val(tmp1) - WN_const_val(WN_kid0(loop_start)) + 1)%vect == 0)
	    rloop_needed = FALSE;
	}
      }
      else if (WN_operator(WN_kid1(loop_end)) == OPR_INTCONST &&
	       WN_operator(WN_kid0(loop_start)) != OPR_INTCONST) {
	WN* tmp2 = WN_Simplify_Tree(LWN_Copy_Tree(WN_kid0(loop_start)));
	if (WN_operator(tmp2) == OPR_INTCONST) {
	  if ((WN_const_val(WN_kid1(loop_end)) - 
	       WN_const_val(tmp2) + 1)%vect == 0)
	    rloop_needed = FALSE;
	}
      }
      WN_kid1(loop_end) = 
	LWN_CreateExp2(add_opc,
	  LWN_CreateExp2(add_opc,
	    LWN_CreateExp2(mpy_opc,
	      LWN_CreateExp2(div_opc, 
	        LWN_CreateExp2(add_opc,
		  LWN_CreateExp2(sub_opc, 
			       WN_kid1(loop_end_tmp),
			       WN_kid0(loop_start)),
		  WN_CreateIntconst(intconst_opc, 1)),
	        WN_CreateIntconst(intconst_opc, vect)), 
	      WN_CreateIntconst(intconst_opc, vect)),
	    WN_CreateIntconst(intconst_opc, -1)),
	  WN_kid0(loop_start_tmp));

      // Adjust loop lower bound for serial remainder loop (if any)
      WN *start = WN_start(remainderloop);
      WN_kid0(start) =
	LWN_CreateExp2(add_opc,
	  LWN_CreateExp2(mpy_opc,
	    LWN_CreateExp2(div_opc, 
	      LWN_CreateExp2(add_opc,
		LWN_CreateExp2(sub_opc, 
			       WN_kid1(loop_end_tmp_rloop),
			       WN_kid0(loop_start_rloop)),
		WN_CreateIntconst(intconst_opc, 1)),
	      WN_CreateIntconst(intconst_opc, vect)), 
	    WN_CreateIntconst(intconst_opc, vect)), 
	  WN_kid0(loop_start_rloop_tmp));
    }
    else {      
      if (opr == OPR_LT) {
	// Adjust loop upper bound so we always have a [lb,ub]
	// rather than a [lb,ub) bound
	WN_kid0(loop_end) = 
	  LWN_CreateExp2(add_opc, 
	    WN_kid0(loop_end), 
	    WN_CreateIntconst(intconst_opc, -1));
	WN_end(innerloop) = 
	  LWN_CreateExp2(new_cmp_opc, 
	    WN_kid0(loop_end), WN_kid1(loop_end));      	
      }
      loop_end_tmp = LWN_Copy_Tree(WN_end(innerloop), TRUE, LNO_Info_Map);
      LWN_Copy_Def_Use(WN_kid0(WN_end(innerloop)), 
		       WN_kid0(loop_end_tmp), Du_Mgr);
      loop_end_tmp_rloop = 
	LWN_Copy_Tree(WN_end(innerloop), TRUE, LNO_Info_Map);
      LWN_Copy_Def_Use(WN_kid0(WN_end(innerloop)), 
		       WN_kid0(loop_end_tmp_rloop), Du_Mgr);
      // Delete last loop end def-use (we are going to modify)
      LWN_Update_Def_Use_Delete_Tree(loop_end, Du_Mgr);
      if (WN_operator(WN_kid0(loop_end)) == OPR_INTCONST &&
	  WN_operator(WN_kid0(loop_start)) == OPR_INTCONST) {
	// check if the trip count is exactly divisible by vect
	if ((WN_const_val(WN_kid0(loop_end)) - 
	     WN_const_val(WN_kid0(loop_start)) + 1)%vect == 0)
	  rloop_needed = FALSE;
      }
      else if (WN_operator(WN_kid0(loop_end)) != OPR_INTCONST &&
	       WN_operator(WN_kid0(loop_start)) != OPR_INTCONST) {
	WN* tmp1 = WN_Simplify_Tree(LWN_Copy_Tree(WN_kid0(loop_end)));
	WN* tmp2 = WN_Simplify_Tree(LWN_Copy_Tree(WN_kid0(loop_start)));
	if (WN_operator(tmp1) == OPR_INTCONST &&
	    WN_operator(tmp2) == OPR_INTCONST) {
	  if ((WN_const_val(tmp1) - WN_const_val(tmp2) + 1)%vect == 0)
	    rloop_needed = FALSE;
	}
      }
      else if (WN_operator(WN_kid0(loop_end)) != OPR_INTCONST &&
	       WN_operator(WN_kid0(loop_start)) == OPR_INTCONST) {
	WN* tmp1 = WN_Simplify_Tree(LWN_Copy_Tree(WN_kid0(loop_end)));
	if (WN_operator(tmp1) == OPR_INTCONST) {
	  if ((WN_const_val(tmp1) - WN_const_val(WN_kid0(loop_start)) + 1)%vect == 0)
	    rloop_needed = FALSE;
	}
      }
      else if (WN_operator(WN_kid0(loop_end)) == OPR_INTCONST &&
	       WN_operator(WN_kid0(loop_start)) != OPR_INTCONST) {
	WN* tmp2 = WN_Simplify_Tree(LWN_Copy_Tree(WN_kid0(loop_start)));
	if (WN_operator(tmp2) == OPR_INTCONST) {
	  if ((WN_const_val(WN_kid0(loop_end)) - 
	       WN_const_val(tmp2) + 1)%vect == 0)
	    rloop_needed = FALSE;
	}
      }
      WN_kid1(loop_end) = 
	LWN_CreateExp2(add_opc,
	  LWN_CreateExp2(add_opc,
	    LWN_CreateExp2(mpy_opc,
	      LWN_CreateExp2(div_opc, 
	        LWN_CreateExp2(add_opc,
		  LWN_CreateExp2(sub_opc, 
				 WN_kid0(loop_end_tmp),
				 WN_kid0(loop_start)),
	          WN_CreateIntconst(intconst_opc, 1)),
	        WN_CreateIntconst(intconst_opc, vect)), 
	      WN_CreateIntconst(intconst_opc, vect)), 
	    WN_CreateIntconst(intconst_opc, -1)), 
	  WN_kid0(loop_start_tmp));

      // Adjust loop lower bound for serial remainder loop (if any)
      WN *start = WN_start(remainderloop);
      WN_kid0(start) =
	LWN_CreateExp2(add_opc,
	  LWN_CreateExp2(mpy_opc,
	    LWN_CreateExp2(div_opc, 
	      LWN_CreateExp2(add_opc,
		LWN_CreateExp2(sub_opc, 
			       WN_kid0(loop_end_tmp_rloop),
			       WN_kid0(loop_start_rloop)),
	        WN_CreateIntconst(intconst_opc, 1)),
	      WN_CreateIntconst(intconst_opc, vect)), 
	    WN_CreateIntconst(intconst_opc, vect)), 
	  WN_kid0(loop_start_rloop_tmp));
    }

    // Bug 2516 - eliminate redundant remainder loop if it is possible to 
    // simplify the symbolic (non-constant) expression (loop_end - loop_start).
    // This loop should be eliminated later on but there is no point in 
    // creating a redundant loop if we can prove that the remainder loop is
    // not needed. After this change, the bug is either hidden or we have 
    // eliminated grounds for error (probably some later phase is confused by 
    // the loop bounds).
    {
      WN* rloop_start = LWN_Copy_Tree(WN_start(remainderloop));
      WN* rloop_end = LWN_Copy_Tree(WN_end(remainderloop));
      WN* diff = LWN_CreateExp2(sub_opc, 
				WN_kid1(rloop_end),
				WN_kid0(rloop_start));
      WN* simpdiff = WN_Simplify_Tree(diff);       
      if (WN_operator(simpdiff) == OPR_INTCONST &&
	  WN_const_val(simpdiff) < 0)
	rloop_needed = FALSE;
    }
    
    // Update def use for new loop end for innerloop
    DOLOOP_STACK sym_stack1(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol, WN_end(innerloop), &sym_stack1);  
    for (k = 0; k < sym_stack1.Elements(); k++) {
      WN* wn_use = sym_stack1.Bottom_nth(k);
      Du_Mgr->Add_Def_Use(WN_start(innerloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(innerloop), wn_use); 
    }
    for (k = 0; k < sym_stack1.Elements(); k++) {
      WN* wn_use =  sym_stack1.Bottom_nth(k);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(innerloop); 
    }    

    bound = LWN_Copy_Tree(loop_index, TRUE, LNO_Info_Map);
    
    // The remainder loop has to have 
    LWN_Set_Parent(WN_end(innerloop),innerloop);    
    LWN_Parentize(WN_end(innerloop));

    // Adjust loop stride for vectorized loop
    if  (WN_operator(WN_kid0(add)) == OPR_INTCONST)
      step = WN_kid0(add);
    else if  (WN_operator(WN_kid1(add)) == OPR_INTCONST)
      step = WN_kid1(add);
    else 
      FmtAssert(FALSE, ("Handle this"));
    if (WN_const_val(step)!= 1)
      FmtAssert(FALSE, ("Handle this"));
    WN_const_val(step) = vect;

    WN *start = WN_start(remainderloop);
    LWN_Set_Parent(WN_kid0(start),start);
    LWN_Set_Parent(start,remainderloop);
    LWN_Parentize(start);

    // Set loop info for remainder loop
    DO_LOOP_INFO* new_loop_info =
      CXX_NEW(DO_LOOP_INFO(dli,&LNO_default_pool), &LNO_default_pool);
    Set_Do_Loop_Info(remainderloop, new_loop_info);

    SYMBOL symbol_remainderloop(WN_index(remainderloop));
    DOLOOP_STACK sym_stack3(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol_remainderloop, 
	       WN_do_body(remainderloop), &sym_stack3);  
    for (INT j = 0; j < sym_stack3.Elements(); j++) {
      WN* wn_use = sym_stack3.Bottom_nth(j);
      Du_Mgr->Add_Def_Use(WN_start(remainderloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(remainderloop), wn_use); 
    }
    for (INT j = 0; j < sym_stack3.Elements(); j++) {
      WN* wn_use =  sym_stack3.Bottom_nth(j);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(remainderloop); 
    }    
    DOLOOP_STACK sym_stack4(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol, WN_end(remainderloop), &sym_stack4);  
    for (INT j = 0; j < sym_stack4.Elements(); j++) {
      WN* wn_use = sym_stack4.Bottom_nth(j);
      Du_Mgr->Add_Def_Use(WN_start(remainderloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(remainderloop), wn_use); 
    }
    for (INT j = 0; j < sym_stack4.Elements(); j++) {
      WN* wn_use =  sym_stack4.Bottom_nth(j);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(remainderloop); 
    }    
    DOLOOP_STACK sym_stack5(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol, WN_step(remainderloop), &sym_stack5);  
    for (INT j = 0; j < sym_stack5.Elements(); j++) {
      WN* wn_use = sym_stack5.Bottom_nth(j);
      Du_Mgr->Add_Def_Use(WN_start(remainderloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(remainderloop), wn_use); 
    }
    for (INT j = 0; j < sym_stack5.Elements(); j++) {
      WN* wn_use =  sym_stack5.Bottom_nth(j);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(remainderloop); 
    }
    DOLOOP_STACK sym_stack6(&LNO_local_pool);
    Find_Nodes(OPR_LDID, symbol, WN_start(remainderloop), &sym_stack6);  
    for (INT j = 0; j < sym_stack6.Elements(); j++) {
      WN* wn_use = sym_stack6.Bottom_nth(j);
      Du_Mgr->Add_Def_Use(WN_start(innerloop), wn_use); 
      Du_Mgr->Add_Def_Use(WN_step(innerloop), wn_use); 
    }
    for (INT j = 0; j < sym_stack6.Elements(); j++) {
      WN* wn_use =  sym_stack6.Bottom_nth(j);
      DEF_LIST *def_list = Du_Mgr->Ud_Get_Def(wn_use); 
      def_list->Set_loop_stmt(remainderloop); 
    }

    // Now, insert the remainder loop after the vectorized innerloop.
    if (rloop_needed) {
      if (reduction_node)	
	LWN_Insert_Block_After(LWN_Get_Parent(innerloop),
			       reduction_node,remainderloop);
      else
	LWN_Insert_Block_After(LWN_Get_Parent(innerloop),
			       innerloop,remainderloop);
    }
    else {
      Delete_Def_Use(WN_end(remainderloop));
      WN *remainderloop_body = WN_do_body(remainderloop);
      WN *remainderloop_stmt;
      for (remainderloop_stmt=WN_first(remainderloop_body);
	   remainderloop_stmt != NULL; 
	   remainderloop_stmt=WN_next(remainderloop_stmt))	
	Delete_Def_Use(remainderloop_stmt);
    }

    // Parentize both loops
    LWN_Parentize(innerloop);    
    if (rloop_needed) {
      LWN_Parentize(remainderloop); 
      LWN_Set_Parent(remainderloop, LWN_Get_Parent(innerloop));
    }

    if (rloop_needed) {
      Add_Vertices(WN_do_body(remainderloop));
      adg->Fission_Dep_Update(remainderloop, 1);

      // Bug 3001 - COND_Do_Info may return COND_DO_AT_LEAST_ONCE in some cases
      // that causes the Guard_Dos to skip the remainder loop (Mark_Do does not
      // mark the remainder loop). This happens when there are MINs and MAXs in 
      // the loop bounds and the do loop information does not correctly account
      // for the number of bounds. Looking at Num_Lower_Bounds and 
      // Num_Upper_Bounds in access_vector.cxx, the utility expects a special
      // pattern of nested MAXs or MINs in the loop bounds.
      if (Needs_Guard(remainderloop))
	Guard_A_Do(remainderloop);

    } else {      
      LWN_Delete_Tree(remainderloop);
    }
    adg->Fission_Dep_Update(innerloop, 1);
    // END: create remainder loop
  }

  CXX_DELETE(dep_g_p, &SIMD_default_pool);
  CXX_DELETE(ac_g, &SIMD_default_pool);
  CXX_DELETE(sdg, &SIMD_default_pool);
  WN_MAP_Delete(sdm);
  }
  MEM_POOL_Pop(&SIMD_default_pool);

  if (debug || LNO_Simd_Verbose) {
    printf("(%s:%d) ", 
	   Src_File_Name, 
	   Srcpos_To_Line(WN_Get_Linenum(innerloop)));
    printf("LOOP WAS VECTORIZED.\n");
  }

#ifdef Is_True_On
  if (debug || LNO_Simd_Verbose)
    printf("Loop has %d super vectors\n", good_vector);
#endif
  return 1;
  
}

static void Simd_Walk(WN* wn) {
  OPCODE opc=WN_opcode(wn);

  if (!OPCODE_is_scf(opc)) 
    return;
  else if (opc==OPC_DO_LOOP) {
    if (Do_Loop_Is_Good(wn) && Do_Loop_Is_Inner(wn) && !Do_Loop_Has_Calls(wn)
	&& !Do_Loop_Is_Mp(wn) && !Do_Loop_Has_Gotos(wn)) {
      if (Simd(wn))
        Simd_Align = TRUE;
    } else
      Simd_Walk(WN_do_body(wn));
  } else if (opc==OPC_BLOCK)
    for (WN* stmt=WN_first(wn); stmt;) {
      WN* next_stmt=WN_next(stmt);
      Simd_Walk(stmt);
      stmt=next_stmt;
    }
  else
    for (UINT kidno=0; kidno<WN_kid_count(wn); kidno++) {
      Simd_Walk(WN_kid(wn,kidno));
    }
}

void Simd_Phase(WN* func_nd) {

  MEM_POOL_Initialize(&SIMD_default_pool,"SIMD_default_pool",FALSE);
  MEM_POOL_Push(&SIMD_default_pool);

  adg=Array_Dependence_Graph;

  debug = Get_Trace(TP_LNOPT, TT_LNO_DEBUG_SIMD);
  if (debug) {
    fprintf(TFile, "=======================================================================\n");
    fprintf(TFile, "LNO: \"WHIRL tree before simd phase\"\n");
    fdump_tree (TFile, func_nd);
  }
  Simd_Reallocate_Objects = FALSE;  
  Last_Vectorizable_Loop_Id = 0; // Initialize per PU
  if (LNO_Simd_Reduction) {
    simd_red_manager = CXX_NEW 
      (REDUCTION_MANAGER(&SIMD_default_pool), &SIMD_default_pool);
    simd_red_manager->Build(func_nd,TRUE,FALSE); // build scalar reductions
    curr_simd_red_manager = simd_red_manager;
  }
  Simd_Walk(func_nd);
  if (debug) {
    fprintf(TFile, "=======================================================================\n");
    fprintf(TFile, "LNO: \"WHIRL tree after simd phase\"\n");
    fdump_tree (TFile, func_nd);
  }
  if (LNO_Simd_Reduction && simd_red_manager)
    CXX_DELETE(simd_red_manager,&SIMD_default_pool);
  MEM_POOL_Pop(&SIMD_default_pool);
  MEM_POOL_Delete(&SIMD_default_pool);
}

// IPA does not pad common blocks that participate in I/O. The base address
// of the common block is passed to Fortran I/O statement and hence any I/O
// involving these blocks will be incorrect if IPA were to pad these blocks.
// Alignment is an important issue for vectorization (on Opteron) and hence we 
// have disabled vectorization of operations on ARRAYs inside COMMON blocks
// that are not padded to align at 16-bytes.
// Array copies appear as ISTOREs of ILOADs. If they are converted to ISTORE
// of PAREN of ILOAD, then the PAREN can be treated like any other vectorizable
// op. PAREN is later converted to NOP so, there is no overhead in this 
// transformation but it enables vectorization without a different routine.
