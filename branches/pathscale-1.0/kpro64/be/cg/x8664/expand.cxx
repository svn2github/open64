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


/* ====================================================================
 * ====================================================================
 *
 * Module: expand.c
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/x8664/expand.cxx,v $
 *
 * Description:
 *
 * This file contains the internals of code expansion. Its interface
 * is 'Exp_OP', which takes an OP, expands it into a list of OPs which
 * are appended to the oplist passed in.
 *
 * It handles all the macro expansions, special handling during 
 * expansion and all the nitty gritty stuff that goes along with it.
 *
 * ====================================================================
 * ====================================================================
 */

#define __STDC_LIMIT_MACROS
#include <stdint.h>
#include "defs.h"
#include "config.h"
#include "erglob.h"
#include "ercg.h"
#include "glob.h"
#include "tracing.h"
#include "util.h"

#include "tn.h"
#include "cg_flags.h"
#include "bb.h"
#include "symtab.h"
#include "opcode.h"
#include "const.h"	/* needed to manipulate target/host consts */
#include "targ_const.h"	/* needed to manipulate target/host consts */
#include "op.h"
#include "data_layout.h"
#include "stblock.h"
#include "cgexp.h"
#include "cgexp_internals.h"
#include "w2op.h"
#include "label_util.h"
#include "cgtarget.h"
#include "whirl2ops.h"
#include "targ_sim.h"   /* To generate stores of param registers in builtin_apply_args */
#include "targ_const_private.h"
#include "config_opt.h" /* For Force_IEEE_Comparisons */

BOOL Reuse_Temp_TNs = FALSE;

BOOL Trace_Exp2 = FALSE;      /* extra cgexp trace*/

/* Disable conversion of constant integer multiplies into shift/adds:*/
static BOOL Disable_Const_Mult_Opt = FALSE;

/* Dup_TN won't dup a dedicated tn, but for our purposes we
 * can just re-use the dedicated tn.  Don't want to re-use a
 * symbolic tn or it will mess up live ranges. */
/* DOESN'T WORK:  causes problems in Create_lvs because it causes
 * a use of a parm reg at the call-site, so it looks like the
 * parm-reg is incoming at the call?  This probably should work,
 * but for now we can use other routine that create a real dup tn. */
#define DUP_TN(tn)	Dup_TN_Even_If_Dedicated(tn)


static TN_MAP _TN_Pair_table = NULL;

void Expand_Start()
{
  if( !Is_Target_32bit() )
    return;

  FmtAssert( _TN_Pair_table == NULL, ("TN_Pair_table is not NULL") );
  _TN_Pair_table = TN_MAP_Create();
}


// Always use the lower part as key.
TN* Get_TN_Pair( TN* key )
{
  TN* pair = NULL;

  if( Is_Target_32bit() &&
      TN_is_register( key ) ){
    pair = (TN*)TN_MAP_Get( _TN_Pair_table, key );
  }

  return pair;
}


void Create_TN_Pair( TN* key, TN* pair )
{
  Is_True( Get_TN_Pair( key ) == NULL, ("Add_TN_Pair: NYI") );
  TN_MAP_Set( _TN_Pair_table, key, pair );    
}


/* Always use the lower part as key.
   Notice that literal TNs will not have pairs.
 */
TN* Create_TN_Pair( TN* key, TYPE_ID mtype )
{
  FmtAssert( TN_is_register(key), ("NYI") );

  if( mtype == MTYPE_I8 )
    mtype = MTYPE_I4;
  else if( mtype == MTYPE_U8 )
    mtype = MTYPE_U4;

  TN* pair = Get_TN_Pair( key );

  if( pair == NULL ){
    Set_TN_size( key, MTYPE_byte_size(mtype) );
    /* We don't know what <pair> will be later. So don't use
       Dup_TN that will carry the homing info of <key>.
     */
    pair = Build_TN_Like( key );
    TN_MAP_Set( _TN_Pair_table, key, pair );
  }

  if( TN_register(key) != REGISTER_UNDEFINED ){
    Is_True( TN_register(pair) != REGISTER_UNDEFINED, ("pair TN is async") );
  }

  return pair;
}


void Expand_Finish()
{
  if( !Is_Target_32bit() )
    return;

  FmtAssert( _TN_Pair_table != NULL, ("TN_Pair_table is NULL") );
  TN_MAP_Delete( _TN_Pair_table );
  _TN_Pair_table = NULL;
}


/*  <result> = <cmp_kid1> <compare> <cmp_kid2> ? <true_tn> : <false_tn>
 */
static void Expand_Split_Select( TN* result, OPERATOR compare, TOP cmp_opcode,
				 TN* cmp_kid1, TN* cmp_kid2, TYPE_ID cmp_type,
				 TN* true_tn, TN* false_tn, TYPE_ID select_type,
				 OPS* ops )
{
  FmtAssert( !TN_is_dedicated(result), ("NYI") );

  if( result == false_tn ){
    TN* tmp = Build_TN_Like( false_tn );
    Expand_Copy( tmp, false_tn, select_type, ops );
    false_tn = tmp;
  }

  Expand_Copy( result, true_tn, select_type, ops );

  switch( cmp_opcode ){
  case TOP_cmp64:   cmp_opcode = TOP_cmp32;   break;
  case TOP_cmpi64:  cmp_opcode = TOP_cmpi32;  break;
  case TOP_test64:  cmp_opcode = TOP_test32;  break;
  case TOP_testi64: cmp_opcode = TOP_testi32; break;
  default:
    FmtAssert( false, ("NYI") );
  }

  TN* cmp_kid1_hi = Get_TN_Pair( cmp_kid1 );
  TN* cmp_kid2_hi = Get_TN_Pair( cmp_kid2 );
  TN* rflags = Rflags_TN();

  if( cmp_kid2_hi == NULL ){
    if( TN_has_value(cmp_kid2) ){
      const INT64 val = TN_value(cmp_kid2);
      cmp_kid2_hi = Gen_Literal_TN( val >> 32, 4 );

    } else {
      DevWarn( "The higher 32-bit of TN%d is treated as 0\n",
	       TN_number(cmp_kid2) );
      cmp_kid2_hi = Build_TN_Like( cmp_kid2 );
      Build_OP( TOP_ldc32, cmp_kid2_hi, Gen_Literal_TN(0,4), ops );    
    }
  }

  BB* bb_entry  = Cur_BB;
  BB* bb_cmp_hi = Gen_And_Append_BB( bb_entry );
  BB* bb_cmp_lo = Gen_And_Append_BB( bb_cmp_hi );
  BB* bb_non_set = Gen_And_Append_BB( bb_cmp_lo );
  const LABEL_IDX bb_non_set_label = Gen_Label_For_BB( bb_non_set );
  BB* bb_exit    = Gen_And_Append_BB( bb_non_set );
  const LABEL_IDX bb_exit_label = Gen_Label_For_BB( bb_exit );

  BB_branch_wn(bb_entry) = WN_Create(OPC_TRUEBR,1);
  WN_kid0(BB_branch_wn(bb_entry)) = NULL;
  WN_label_number(BB_branch_wn(bb_entry)) = bb_exit_label;

  BB_branch_wn(bb_cmp_hi) = WN_Create(OPC_TRUEBR,1);
  WN_kid0(BB_branch_wn(bb_cmp_hi)) = NULL;
  WN_label_number(BB_branch_wn(bb_cmp_hi)) = bb_non_set_label;

  BB_branch_wn(bb_cmp_lo) = WN_Create(OPC_TRUEBR,1);
  WN_kid0(BB_branch_wn(bb_cmp_lo)) = NULL;
  WN_label_number(BB_branch_wn(bb_cmp_lo)) = bb_exit_label;

  // Compare the higher 32-bit here.
  {
    if( compare != OPR_EQ ){
      TOP jmp = TOP_UNDEFINED;
      switch( compare ){
      case OPR_GT:
      case OPR_GE:  jmp = MTYPE_is_signed(cmp_type) ? TOP_jg : TOP_ja;   break;
      case OPR_LT:
      case OPR_LE:  jmp = MTYPE_is_signed(cmp_type) ? TOP_jl : TOP_jb;   break;
      case OPR_NE:  jmp = TOP_jne; break;
      }

      Build_OP( cmp_opcode, rflags, cmp_kid1_hi, cmp_kid2_hi, ops );
      Build_OP( jmp, rflags, Gen_Label_TN( bb_exit_label, 0 ), ops );
    }

    if( ops != &New_OPs )
      OPS_Append_Ops( &New_OPs, ops );

    Process_New_OPs();
    BB_Append_Ops( bb_entry, &New_OPs );
    OPS_Init( &New_OPs );
    OPS_Init( ops );
  }

  // Compare the higher 32-bit here.
  if( compare != OPR_NE ){
    OPS* bb_cmp_hi_ops = &New_OPs;
    TOP jmp = TOP_UNDEFINED;

    switch( compare ){
    case OPR_GT:
    case OPR_GE: jmp = MTYPE_is_signed(cmp_type) ? TOP_jl : TOP_jb;  break;
    case OPR_LE:
    case OPR_LT: jmp = MTYPE_is_signed(cmp_type) ? TOP_jg : TOP_ja;  break;
    case OPR_EQ: jmp = TOP_jne; break;
    }

    Build_OP( cmp_opcode, rflags, cmp_kid1_hi, cmp_kid2_hi, bb_cmp_hi_ops );
    Build_OP( jmp, rflags, Gen_Label_TN( bb_non_set_label, 0 ), bb_cmp_hi_ops );

    total_bb_insts = 0;
    Last_Processed_OP = NULL;
    Process_New_OPs();
    BB_Append_Ops( bb_cmp_hi, bb_cmp_hi_ops );
    OPS_Init( bb_cmp_hi_ops );
  }

  // Compare the lower 32-bit, given the same higher 32-bit.
  {
    OPS* bb_cmp_lo_ops = &New_OPs;
    TOP jmp = TOP_UNDEFINED;

    switch( compare ){
    case OPR_GT:  jmp = TOP_ja;  break;
    case OPR_GE:  jmp = TOP_jae; break;
    case OPR_LT:  jmp = TOP_jb;  break;
    case OPR_LE:  jmp = TOP_jbe; break;
    case OPR_NE:  jmp = TOP_jne; break;
    case OPR_EQ:  jmp = TOP_je;  break;
    }

    Build_OP( cmp_opcode, rflags, cmp_kid1, cmp_kid2, bb_cmp_lo_ops );
    Build_OP( jmp, rflags, Gen_Label_TN( bb_exit_label, 0 ), bb_cmp_lo_ops );

    total_bb_insts = 0;
    Last_Processed_OP = NULL;
    Process_New_OPs();
    BB_Append_Ops( bb_cmp_lo, bb_cmp_lo_ops );
    OPS_Init( bb_cmp_lo_ops );
  }

  // Now we reach a false condition
  {
    OPS* bb_non_set_ops = &New_OPs;

    Expand_Copy( result, false_tn, select_type, bb_non_set_ops );

    total_bb_insts = 0;
    Last_Processed_OP = NULL;
    Process_New_OPs();
    BB_Append_Ops( bb_non_set, bb_non_set_ops );
    OPS_Init( bb_non_set_ops );
  }

  Cur_BB = bb_exit;
}


static void  Expand_Split_Int_Cmp( TOP cmp_opcode, TN* src1_lo, TN* src2_lo,
				   TOP set_opcode, TN* result, OPS* ops )
{
  FmtAssert( ( result != src1_lo ) && ( result != src2_lo ), ("NYI") );
  TN* tmp_result = result;

  if( TN_is_dedicated( result ) ){
    tmp_result = Build_TN_Like( result );
  }
  Build_OP( TOP_ldc32, tmp_result, Gen_Literal_TN(1,4), ops );

  switch( cmp_opcode ){
  case TOP_cmp64:   cmp_opcode = TOP_cmp32;   break;
  case TOP_cmpi64:  cmp_opcode = TOP_cmpi32;  break;
  case TOP_test64:  cmp_opcode = TOP_test32;  break;
  case TOP_testi64: cmp_opcode = TOP_testi32; break;
  default:
    FmtAssert( false, ("NYI") );
  }

  TN* src1_hi = Get_TN_Pair( src1_lo );
  TN* src2_hi = Get_TN_Pair( src2_lo );
  TN* rflags = Rflags_TN();

  if( src2_hi == NULL ){
    if( TN_has_value(src2_lo) ){
      src2_hi = Gen_Literal_TN( 0, 4 );

    } else {
      DevWarn( "The higher 32-bit of TN%d is treated as 0\n",
	       TN_number(src2_lo) );
      src2_hi = Build_TN_Like( src2_lo );
      Build_OP( TOP_ldc32, src2_hi, Gen_Literal_TN(0,4), ops );    
    }
  }

  BB* bb_entry  = Cur_BB;
  BB* bb_cmp_hi = Gen_And_Append_BB( bb_entry );
  BB* bb_cmp_lo = Gen_And_Append_BB( bb_cmp_hi );
  BB* bb_non_set = Gen_And_Append_BB( bb_cmp_lo );
  const LABEL_IDX bb_non_set_label = Gen_Label_For_BB( bb_non_set );
  BB* bb_exit    = Gen_And_Append_BB( bb_non_set );
  const LABEL_IDX bb_exit_label = Gen_Label_For_BB( bb_exit );

  BB_branch_wn(bb_entry) = WN_Create(OPC_TRUEBR,1);
  WN_kid0(BB_branch_wn(bb_entry)) = NULL;
  WN_label_number(BB_branch_wn(bb_entry)) = bb_exit_label;

  BB_branch_wn(bb_cmp_hi) = WN_Create(OPC_TRUEBR,1);
  WN_kid0(BB_branch_wn(bb_cmp_hi)) = NULL;
  WN_label_number(BB_branch_wn(bb_cmp_hi)) = bb_non_set_label;

  BB_branch_wn(bb_cmp_lo) = WN_Create(OPC_TRUEBR,1);
  WN_kid0(BB_branch_wn(bb_cmp_lo)) = NULL;
  WN_label_number(BB_branch_wn(bb_cmp_lo)) = bb_exit_label;

  // Compare the higher 32-bit here.
  {
    if( set_opcode != TOP_sete ){
      TOP jmp = TOP_UNDEFINED;
      switch( set_opcode ){
      case TOP_setg:
      case TOP_setge: jmp = TOP_jg;  break;
      case TOP_seta:
      case TOP_setae: jmp = TOP_ja;  break;
      case TOP_setl:
      case TOP_setle: jmp = TOP_jl;  break;
      case TOP_setb:
      case TOP_setbe: jmp = TOP_jb;  break;
      case TOP_setne: jmp = TOP_jne; break;
      }

      Build_OP( cmp_opcode, rflags, src1_hi, src2_hi, ops );
      Build_OP( jmp, rflags, Gen_Label_TN( bb_exit_label, 0 ), ops );
    }

    if( &New_OPs != ops )
      OPS_Append_Ops( &New_OPs, ops );

    Process_New_OPs();
    BB_Append_Ops( bb_entry, &New_OPs );
    OPS_Init( &New_OPs );
    OPS_Init( ops );
  }

  // Compare the higher 32-bit here.
  if( set_opcode != TOP_setne ){
    OPS* bb_cmp_hi_ops = &New_OPs;
    TOP jmp = TOP_UNDEFINED;

    switch( set_opcode ){
    case TOP_setg:
    case TOP_setge: jmp = TOP_jl;  break;
    case TOP_seta:
    case TOP_setae: jmp = TOP_jb;  break;
    case TOP_setl:
    case TOP_setle: jmp = TOP_jg;  break;
    case TOP_setb:
    case TOP_setbe: jmp = TOP_ja;  break;
    case TOP_sete:  jmp = TOP_jne; break;
    }

    Build_OP( cmp_opcode, rflags, src1_hi, src2_hi, bb_cmp_hi_ops );
    Build_OP( jmp, rflags, Gen_Label_TN( bb_non_set_label, 0 ), bb_cmp_hi_ops );

    total_bb_insts = 0;
    Last_Processed_OP = NULL;
    Process_New_OPs();
    BB_Append_Ops( bb_cmp_hi, bb_cmp_hi_ops );
    OPS_Init( bb_cmp_hi_ops );
  }

  // Compare the lower 32-bit, given the same higher 32-bit.
  {
    OPS* bb_cmp_lo_ops = &New_OPs;
    TOP jmp = TOP_UNDEFINED;

    switch( set_opcode ){
    case TOP_setg:
    case TOP_seta:  jmp = TOP_ja;  break;
    case TOP_setge:
    case TOP_setae: jmp = TOP_jae; break;
    case TOP_setl:
    case TOP_setb:  jmp = TOP_jb;  break;
    case TOP_setle:
    case TOP_setbe: jmp = TOP_jbe; break;
    case TOP_setne: jmp = TOP_jne; break;
    case TOP_sete:  jmp = TOP_je;  break;
    }

    Build_OP( cmp_opcode, rflags, src1_lo, src2_lo, bb_cmp_lo_ops );
    Build_OP( jmp, rflags, Gen_Label_TN( bb_exit_label, 0 ), bb_cmp_lo_ops );

    total_bb_insts = 0;
    Last_Processed_OP = NULL;
    Process_New_OPs();
    BB_Append_Ops( bb_cmp_lo, bb_cmp_lo_ops );
    OPS_Init( bb_cmp_lo_ops );
  }

  // Now we reach a false condition
  {
    OPS* bb_non_set_ops = &New_OPs;

    Build_OP( TOP_ldc32, tmp_result, Gen_Literal_TN(0,4), bb_non_set_ops );

    total_bb_insts = 0;
    Last_Processed_OP = NULL;
    Process_New_OPs();
    BB_Append_Ops( bb_non_set, bb_non_set_ops );
    OPS_Init( bb_non_set_ops );
  }

  Cur_BB = bb_exit;

  if( result != tmp_result ){
    Exp_COPY( result, tmp_result, ops );
    if( Get_TN_Pair( result ) == NULL )
      return;
  }

  TN* result_hi = Create_TN_Pair( result, MTYPE_I8 );
  Build_OP( TOP_ldc32, result_hi, Gen_Literal_TN(0,4), ops );
}


static void Expand_Split_Cvtl( TYPE_ID mtype, TOP top, TN* result, TN* src, OPS* ops )
{
  TN* result_hi = Create_TN_Pair( result, mtype );

  switch( top ){
  case TOP_movsbq:
    Build_OP( TOP_movsbl, result, src, ops );
    Build_OP( TOP_sari32,  result_hi, src, Gen_Literal_TN(31,4), ops );
    break;

  case TOP_movswq:
    Build_OP( TOP_movswl, result, src, ops );
    Build_OP( TOP_sari32,  result_hi, src, Gen_Literal_TN(31,4), ops );
    break;

  case TOP_movslq:
    Build_OP( TOP_mov32, result, src, ops );
    Build_OP( TOP_sari32, result_hi, src, Gen_Literal_TN(31,4), ops );
    break;

  case TOP_movzbq:
    Build_OP( TOP_movzbl, result, src, ops );
    Build_OP( TOP_ldc32,  result_hi, Gen_Literal_TN(0,4), ops );
    break;

  case TOP_movzwq:
    Build_OP( TOP_movzwl, result, src, ops );
    Build_OP( TOP_ldc32,  result_hi, Gen_Literal_TN(0,4), ops );
    break;

  case TOP_mov32:
    Build_OP( TOP_mov32, result, src, ops );
    Build_OP( TOP_ldc32, result_hi, Gen_Literal_TN(0,4), ops );
    break;

  default:
    FmtAssert( false, ("NYI") );
  }
}


/* Use two or three 32-bit operations to emulate a 64-bit
   unary operation.
*/
void Expand_Split_UOP( OPERATOR opr, TYPE_ID mtype,
		       TN* result, TN* src,
		       OPS* ops )
{
  TN* result_h = Create_TN_Pair( result, mtype );
  TN* src_h = Get_TN_Pair(src);
  TOP top = TOP_UNDEFINED;

  switch( opr ){
  case OPR_BNOT:
    {
      top = TOP_not32;
    }
    break;
  case OPR_INTCONST:
    {
      if( MTYPE_signed( mtype ) ){
	const INT64 val = TN_value( src );
	src   = Gen_Literal_TN( ( val << 32 ) >> 32, 4 );
	src_h = Gen_Literal_TN( ( val >> 32 ), 4 );
      } else {
	const UINT64 val = TN_value( src );
	src   = Gen_Literal_TN( ( val << 32 ) >> 32, 4 );
	src_h = Gen_Literal_TN( ( val >> 32 ), 4 );
      }

      top = TOP_ldc32;
    }
    break;
  case OPR_NEG:
    {
      Build_OP( TOP_neg32, result, src, ops );

      TN* tmp_src = Build_TN_Like( src );
      Build_OP( TOP_adci32, tmp_src, src_h, Gen_Literal_TN(0,4), ops );

      Build_OP( TOP_neg32, result_h, tmp_src, ops );

      return;
    }
    break;
  case OPR_LDA:
    {
      top = TOP_mov32;
    }
    break;
  default:
    FmtAssert( false, ("NYI") );
  }

  Build_OP( top, result,   src,   ops );
  Build_OP( top, result_h, src_h, ops );
}


/* Use two 32-bit binary operations to emulate a 64-bit
   binary operation.
*/
static void Expand_Split_BOP( OPERATOR opr, TYPE_ID mtype,
			      TN* result, TN* src1, TN* src2,
			      OPS* ops )
{
  TN* result_h = Create_TN_Pair( result, mtype );
  TN* src1_h = Get_TN_Pair(src1);
  TN* src2_h = TN_has_value(src2) ? NULL : Get_TN_Pair(src2);

  if( TN_has_value(src2) ){
    const INT64 val = TN_value(src2);
    src2   = Gen_Literal_TN( ( val << 32 ) >> 32, 4 );
    src2_h = Gen_Literal_TN( val >> 32, 4 );
  }

  FmtAssert( src2_h != NULL, ("NYI") );

  TOP top = TOP_UNDEFINED, top_h = TOP_UNDEFINED;

  if( src1_h == NULL ){
    DevWarn( "The higher 32-bit of TN%d is treated as 0\n", TN_number(src1) );
    src1_h = Build_TN_Like( src1 );
    Build_OP( TOP_ldc32,  src1_h, Gen_Literal_TN(0,4), ops );    
  }

  switch( opr ){
  case OPR_ADD:
    top   = TN_has_value(src2) ? TOP_addi32 : TOP_add32;
    top_h = TN_has_value(src2) ? TOP_adci32 : TOP_adc32;
    break;
  case OPR_SUB:
    top   = TN_has_value(src2) ? TOP_subi32 : TOP_sub32;
    top_h = TN_has_value(src2) ? TOP_sbbi32 : TOP_sbb32;
    break;
  case OPR_BAND:
    top_h = top = TN_has_value(src2) ? TOP_andi32 : TOP_and32;
    break;
  case OPR_BXOR:
    top_h = top = TN_has_value(src2) ? TOP_xori32 : TOP_xor32;
    break;
  case OPR_BIOR:
    top_h = top = TN_has_value(src2) ? TOP_ori32 : TOP_or32;
    break;
  default:
    FmtAssert( false, ("NYI") );
  }

  Build_OP( top,   result,   src1,   src2,   ops );
  Build_OP( top_h, result_h, src1_h, src2_h, ops );
}


static void Expand_Split_Multiply( TN* result, TN* src1, TN* src2, OPS* ops )
{
  TN* result_hi = Create_TN_Pair( result, MTYPE_I8 );
  TN* src1_hi = Get_TN_Pair( src1 );
  TN* src2_hi = Get_TN_Pair( src2 );

  TN* tmp = NULL;
  if( src1_hi != NULL ){
    tmp = Build_TN_Like( result );
    Build_OP( TOP_imul32, tmp,  src1_hi, src2, ops );
  }

  if( src2_hi == NULL ){
    DevWarn( "The higher 32-bit of TN%d is treated as 0\n", TN_number(src2) );
    src2_hi = Build_TN_Like( src2 );
    Build_OP( TOP_ldc32, src2_hi, Gen_Literal_TN(0,4), ops );    
  }

  TN* tmp1 = Build_TN_Like( result );
  Build_OP( TOP_imul32, tmp1, src2_hi, src1, ops );

  TN* tmp2 = NULL;
  if( tmp != NULL ){
    tmp2 = Build_TN_Like( result );
    Build_OP( TOP_add32, tmp2, tmp, tmp1, ops );
  } else
    tmp2 = tmp1;

  TN* tmp_hi = Build_TN_Like( result );
  Build_OP( TOP_mul32, result, tmp_hi, src1, src2, ops );
  Build_OP( TOP_add32, result_hi, tmp_hi, tmp2, ops );    
}


static void Expand_Split_Shift( SHIFT_DIRECTION shift_dir,
				TN* result, TN* src_lo, TN* shift, OPS* ops )
{
  TN* src_hi = Get_TN_Pair( src_lo );

  if( src_hi == NULL ){
    DevWarn( "The higher 32-bit of TN%d is treated as 0\n", TN_number(src_lo) );
  }

  // Handle case where <shift> has value.
  if( TN_has_value( shift ) ){
    const INT64 shift_amt = TN_value( shift );
    TN* result_hi = Create_TN_Pair( result, MTYPE_I8 );

    if( shift_amt >= 32 ){
      switch( shift_dir ){
      case shift_left:
	Build_OP( TOP_shli32, result_hi, src_lo, Gen_Literal_TN(shift_amt-32,4), ops );
	Build_OP( TOP_ldc32,  result,    Gen_Literal_TN(0,4), ops );
	break;

      case shift_aright:
	Build_OP( TOP_sari32, result,    src_hi, Gen_Literal_TN(shift_amt-32,4), ops );
	Build_OP( TOP_sari32, result_hi, src_hi, Gen_Literal_TN(31,4), ops );
	break;

      case shift_lright:
	Build_OP( TOP_shri32, result,    src_hi, Gen_Literal_TN(shift_amt-32,4), ops );
	Build_OP( TOP_ldc32,  result_hi, Gen_Literal_TN(0,4), ops );
	break;
      }

    } else {
      // for shift_amt < 32
      switch( shift_dir ){
      case shift_left:
	Build_OP( TOP_shldi32, result_hi, src_hi, src_lo, shift, ops );
	Build_OP( TOP_shli32,   result,    src_lo, shift,  ops );
	break;

      case shift_aright:
	Build_OP( TOP_shrdi32, result,    src_lo, src_hi, shift, ops );
	Build_OP( TOP_sari32,  result_hi, src_hi, shift,  ops );
	break;

      case shift_lright:
	if( src_hi == NULL ){
	  Build_OP( TOP_shri32, result,    src_lo, shift, ops );
	  Build_OP( TOP_ldc32,  result_hi, Gen_Literal_TN(0,4), ops );
	} else {
	  Build_OP( TOP_shrdi32, result,    src_lo, src_hi, shift, ops );
	  Build_OP( TOP_shri32,  result_hi, src_hi, shift,  ops );
	}
	break;
      }
    }

  } else {
    // Handle case where <shift> is a variable.
    TN* tmp_result = result;
    TN* tmp_result_hi = Create_TN_Pair( tmp_result, MTYPE_I8 );

    if( TN_is_dedicated( result ) ){
      tmp_result = Build_TN_Like( result );
      tmp_result_hi = Create_TN_Pair( tmp_result, MTYPE_I8 );
    }

    BB* bb_entry = Cur_BB;
    BB* bb_then = Gen_And_Append_BB( bb_entry );  // for shift_cnt > 31

    BB* bb_exit  = Gen_And_Append_BB( bb_then );
    const LABEL_IDX bb_exit_label = Gen_Label_For_BB( bb_exit );

    BB_branch_wn(bb_entry) = WN_Create(OPC_TRUEBR,1);
    WN_kid0(BB_branch_wn(bb_entry)) = NULL;
    WN_label_number(BB_branch_wn(bb_entry)) = bb_exit_label;

    // Build bb_entry
    {
      switch( shift_dir ){
      case shift_left:
	Build_OP( TOP_shl32,  tmp_result,    src_lo, shift, ops );
	Build_OP( TOP_shld32, tmp_result_hi, src_hi, src_lo, shift, ops );
	break;

      case shift_aright:
	Build_OP( TOP_shrd32, tmp_result,    src_lo, src_hi, shift, ops );
	Build_OP( TOP_sar32,  tmp_result_hi, src_hi, shift, ops );
	break;

      case shift_lright:
	Build_OP( TOP_shrd32, tmp_result,    src_lo, src_hi, shift, ops );
	Build_OP( TOP_shr32,  tmp_result_hi, src_hi, shift, ops );
	break;
      }

      Exp_OP3v( OPC_TRUEBR,
		NULL,
		Gen_Label_TN( bb_exit_label, 0 ),
		shift,
		Gen_Literal_TN(32,4),
		V_BR_U4LT,
		ops );

      if( &New_OPs != ops )
	OPS_Append_Ops( &New_OPs, ops );
      Process_New_OPs();
      BB_Append_Ops( bb_entry, &New_OPs );
      OPS_Init( &New_OPs );
      OPS_Init( ops );
    }

    // Build bb_then here.
    {
      OPS* bb_then_ops = &New_OPs;

      switch( shift_dir ){
      case shift_left:
	Exp_COPY( tmp_result_hi, tmp_result, bb_then_ops );
	Build_OP( TOP_ldc32, tmp_result, Gen_Literal_TN(0,4), bb_then_ops );
	break;

      case shift_aright:
	Exp_COPY( tmp_result, tmp_result_hi, bb_then_ops );
	Build_OP( TOP_sari32, tmp_result_hi, tmp_result_hi,
		  Gen_Literal_TN(31,4), bb_then_ops );
	break;

      case shift_lright:
	Exp_COPY( tmp_result, tmp_result_hi, bb_then_ops );
	Build_OP( TOP_ldc32,  tmp_result_hi, Gen_Literal_TN(0,4), bb_then_ops );	
	break;
      }
      
      total_bb_insts = 0;
      Last_Processed_OP = NULL;
      Process_New_OPs();
      BB_Append_Ops( bb_then, bb_then_ops );
      OPS_Init( bb_then_ops );
    }

    Cur_BB = bb_exit;
    if( result != tmp_result )
      Expand_Split_UOP( OPR_LDA, MTYPE_I8, result, tmp_result, ops );
  }
}


static void Expand_Split_Abs( TN* result, TN* src, TYPE_ID mtype, OPS* ops )
{
  TN* result_hi = Create_TN_Pair( result, mtype );
  TN* src_hi = Get_TN_Pair( src );

  FmtAssert( src_hi != NULL, ("NYI") );

  BB* bb_entry = Cur_BB;
  BB* bb_then = Gen_And_Append_BB( bb_entry );
  BB* bb_exit = Gen_And_Append_BB( bb_then );

  const LABEL_IDX bb_exit_label = Gen_Label_For_BB( bb_exit );

  BB_branch_wn(bb_entry) = WN_Create(OPC_TRUEBR,1);
  WN_kid0(BB_branch_wn(bb_entry)) = NULL;
  WN_label_number(BB_branch_wn(bb_entry)) = bb_exit_label;

  // build bb_entry
  {
    Expand_Split_UOP( OPR_LDA, mtype, result, src, ops );

    Exp_OP3v( OPC_TRUEBR,
	      NULL,
	      Gen_Label_TN( bb_exit_label, 0 ),
	      src_hi,
	      Gen_Literal_TN(0,4),
	      V_BR_I4GE,
	      ops );

    if( &New_OPs != ops )
      OPS_Append_Ops( &New_OPs, ops );
    Process_New_OPs();
    BB_Append_Ops( bb_entry, &New_OPs );
    OPS_Init( &New_OPs );
    OPS_Init( ops );    
  }

  // Build bb_then here if src_hi < 0
  {
    OPS* bb_then_ops = &New_OPs;
    Expand_Split_UOP( OPR_NEG, mtype, result, src, bb_then_ops );

    total_bb_insts = 0;
    Last_Processed_OP = NULL;
    Process_New_OPs();
    BB_Append_Ops( bb_then, bb_then_ops );
    OPS_Init( bb_then_ops );    
  }

  Cur_BB = bb_exit;
}


void
Expand_Copy (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  const BOOL is_128bit = (MTYPE_size_reg(mtype) == 128);

  if( MTYPE_is_quad( mtype ) ){
    Build_OP( TOP_fmov, result, src, ops );

  } else if( MTYPE_is_float(mtype) ){
    if( Is_Target_SSE2() )
      Build_OP( is_128bit ? TOP_movdq: 
		(mtype == MTYPE_F8 ? TOP_movsd : TOP_movss), result, src, ops );
    else
      Build_OP( TOP_fmov, result, src, ops );

  } else {
    if( OP_NEED_PAIR( mtype ) ){
      Expand_Split_UOP( OPR_LDA, mtype, result, src, ops );

    } else {
      Build_OP( MTYPE_is_size_double(mtype) ? TOP_mov64: TOP_mov32, 
		result, src, ops);
    }
  }

  Set_OP_copy (OPS_last(ops));
}

//
//  Helper routine to do proper sign extension
//
static void
Fixup_32_Bit_Op(TN *result,TN *src, TYPE_ID dest_type, OPS *ops)
{
  if (dest_type == MTYPE_I8 || dest_type == MTYPE_U8) {
    Expand_Copy(result,src,dest_type,ops);
  } else {
    Expand_Convert_Length (result, src, Gen_Literal_TN(MTYPE_size_reg(dest_type), 4),
			   dest_type, MTYPE_is_signed(dest_type),ops);
  }
}


/* ====================================================================
 *
 * Expand_Convert_Length
 *
 * ====================================================================
 */
void Expand_Convert_Length ( TN *dest, TN *src, TN *length_tn, TYPE_ID mtype,
			     BOOL signed_extension, OPS *ops )
{
  FmtAssert (! MTYPE_float(mtype),
	     ("Expand_Convert_Length: illegal data type\n"));
  FmtAssert (TN_has_value(length_tn),
	     ("Expand_Convert_Length: non-constant length\n"));
  const UINT64 val = TN_value(length_tn);
  const BOOL is_64bit = MTYPE_is_size_double(mtype);

  TOP new_opcode = TOP_UNDEFINED;

  if( val != 8 && val != 16  && val != 32 ){
    // Bug046
    if( signed_extension ){
      TN* tmp1 = Build_TN_Like( dest );
      TN* tmp2 = Build_TN_Like( dest );
      const int shift_amt = is_64bit ? 64 - val : 32 - val;

      if ( val < 32 )
        Build_OP( TOP_andi32, tmp1, src, Gen_Literal_TN((1<<val)-1, 4), ops );
      else {
	TN* tmp3 = Build_TN_Like( dest );
	Exp_Immediate( tmp3, Gen_Literal_TN ((1<<val)-1, 8), FALSE, ops );
	Build_OP( TOP_and64, tmp1, src, tmp3, ops );
      }
      Expand_Shift( tmp2, tmp1, Gen_Literal_TN( shift_amt, 4 ),
		    mtype, shift_left, ops );
      Expand_Shift( dest, tmp2, Gen_Literal_TN( shift_amt, 4 ),
		    mtype, shift_aright, ops );
      
    } else {
      Build_OP( TOP_andi32, dest, src, Gen_Literal_TN((1<<val)-1, 4), ops );
    }

    return;

  } else if( val == 8 ){
    if( signed_extension ){
      new_opcode = is_64bit ? TOP_movsbq : TOP_movsbl;
    } else {
      new_opcode = is_64bit ? TOP_movzbq : TOP_movzbl;
    }

  } else if( val == 16 ){
    if( signed_extension ){
      new_opcode = is_64bit ? TOP_movswq : TOP_movswl;
    } else {
      new_opcode = is_64bit ? TOP_movzwq : TOP_movzwl;
    }

  } else if( val == 32 ){
    if( is_64bit ) {
      if (signed_extension)
        new_opcode = TOP_movslq;
      else {
	if( OP_NEED_PAIR(mtype) ){
	  Expand_Split_Cvtl( mtype, TOP_mov32, dest, src, ops );
	} else {
	  /* Fix bug#1363.
	     We are doing the OPC_U8U4CVT here.
	   */
	  Expand_Copy( dest, src, MTYPE_U4, ops );
	}
        return;
      }
    }
    else if( MTYPE_bit_size(mtype) == 32 ){
      Expand_Copy( dest, src, mtype, ops );
      return;
    }
  }

  FmtAssert( new_opcode != TOP_UNDEFINED, ("NYI") );

  if( OP_NEED_PAIR(mtype) )
    Expand_Split_Cvtl( mtype, new_opcode, dest, src, ops );
  else
    Build_OP( new_opcode, dest, src, ops );
}

static void Exp_Immediate (TN *dest, TN *src, OPS *ops)
{
  INT64 val = 0;
  TN* tmp = Build_TN_Like(dest);

  if ( TN_has_value(src) ) {
    val = TN_value(src);

  } else  if ( TN_is_symbol(src) ) {
    ST *base;
    Base_Symbol_And_Offset_For_Addressing (TN_var(src), TN_offset(src), &base, &val);

  } else
    FmtAssert(FALSE,("unexpected constant in Exp_Immediate"));

  if( Is_Target_32bit()     &&
      /* TN_is_dedicated(dest) && */
      Get_TN_Pair(dest) != NULL ){
    Expand_Split_UOP( OPR_INTCONST, MTYPE_I8, dest, src, ops );
    
  } else if (TN_size(dest) == 8) {
    if( OP_NEED_PAIR( MTYPE_I8 ) ){
      Expand_Split_UOP( OPR_INTCONST, MTYPE_I8, dest, src, ops );
    } else {
      Build_OP (TOP_ldc64, dest, src, ops);
    }

  } else if (ISA_LC_Value_In_Class (val, LC_simm32)) {
    Build_OP (TOP_ldc32, dest, src, ops);

  } else if (ISA_LC_Value_In_Class (val, LC_uimm32)) {
    Build_OP (TOP_ldc32, dest, src, ops);

  } else if (val >= INT32_MIN && val <= INT32_MAX) {
    Build_OP (TOP_ldc32, dest, src, ops);

  } else if ((UINT64)val <= UINT32_MAX) {
    Build_OP (TOP_ldc32, dest, src, ops);

  } else if ((UINT64)val > UINT32_MAX) {
    if( Is_Target_32bit() ){
      // The upper 32-bit is dead.
      Build_OP( TOP_ldc32, dest, Gen_Literal_TN( (val & 0xffffffff), 4 ), ops );
    } else
      Build_OP (TOP_ldc64, dest, src, ops);

  } else
    FmtAssert( FALSE, ("UNIMPLEMENTED") );
}

void
Exp_Immediate (TN *dest, TN *src, BOOL is_signed, OPS *ops)
{
  Expand_Immediate(dest, src, is_signed, ops);
}

/* 
 * Expand Immediate value.
 */
void
Expand_Immediate (TN *dest, TN *src, BOOL is_signed, OPS *ops)
{
  FmtAssert((TN_is_constant(src)),
	    ("unexpected non-constant in Expand_Immediate"));
  FmtAssert((TN_has_value(src) || TN_is_symbol(src)), 
	    ("expected value or const in Expand_Immediate"));
  Exp_Immediate (dest, src, ops);
}

TN*
Expand_Immediate_Into_Register (TN *src, BOOL is_64bit, OPS *ops)
{
  /* load into reg and do reg case */
  TN *tmp = Build_TN_Of_Mtype (is_64bit ? MTYPE_I8 : MTYPE_I4);
  Expand_Immediate (tmp, src, TRUE, ops);
  return tmp;
}


void
Expand_Add (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  TOP new_opcode;
  INT64 val;
  const BOOL is_64bit = MTYPE_is_size_double(mtype);
  BOOL is_vector_type;
  is_vector_type = (mtype == MTYPE_V16I1 || 
		    mtype == MTYPE_V16I2 ||
		    mtype == MTYPE_V16I4 ||
		    mtype == MTYPE_V16I8);
  if (TN_is_constant(src1) && !is_vector_type) {
    if (TN_has_value(src1)) {
      val = TN_value(src1);
      if (val == 0) {
	Expand_Copy (result, src2, mtype, ops);
	return;
      }
    } else if ( TN_is_symbol(src1) ) {
      /* symbolic constant, gp-relative or sp-relative */
      ST *base;
      INT64 val;
      TN *tmp = Build_TN_Of_Mtype (mtype);
      Base_Symbol_And_Offset_For_Addressing (TN_var(src1), TN_offset(src1), 
					     &base, &val);
      new_opcode = is_64bit ? TOP_addi64 : TOP_addi32;
      if( ISA_LC_Value_In_Class (val, LC_simm32) ){
	Build_OP (new_opcode, result, src2, src1, ops);
      } else if (val >= INT32_MIN && val <= INT32_MAX) {
	Build_OP (TOP_ldc32, tmp, Gen_Literal_TN((val >> 16)&0xffff, 4), ops);
	Build_OP (TOP_ori32, tmp, tmp, Gen_Literal_TN(val & 0xffff, 4), ops);
	Build_OP (is_64bit ? TOP_add64 : TOP_add32, result, tmp, src2, ops);
      } else {
	TCON tcon = Host_To_Targ (MTYPE_I8, val);
	ST *sym = New_Const_Sym (Enter_tcon (tcon), Be_Type_Tbl(TCON_ty(tcon)));
	Allocate_Object(sym);
	if (Use_32_Bit_Pointers)
	  Build_OP(TOP_ld32, tmp, GP_TN,
		   Gen_Symbol_TN(sym, 0, TN_RELOC_GOT_DISP), ops);
	else
	  Build_OP(TOP_ld64, tmp, GP_TN,
		   Gen_Symbol_TN(sym, 0, TN_RELOC_GOT_DISP), ops);
	Build_OP(TOP_ld32, tmp, tmp, Gen_Literal_TN(0, 4), ops);
	Build_OP (is_64bit ? TOP_add64 : TOP_add32, result, tmp, src2, ops);
      }       
      return;
    } 
    else FmtAssert(FALSE,("unexpected constant in Expand_Add"));
    
    if (ISA_LC_Value_In_Class ( val, LC_simm32)) {
      if( OP_NEED_PAIR(mtype) ){
	Expand_Split_BOP( OPR_ADD, mtype, result, src2, Gen_Literal_TN(val,8), ops );

      } else {
	new_opcode = is_64bit ? TOP_addi64 : TOP_addi32;
	Build_OP (new_opcode, result, src2, Gen_Literal_TN(val,4), ops);
      }

    } else {
      FmtAssert( !OP_NEED_PAIR(mtype), ("NYI") );
      src1 = Expand_Immediate_Into_Register (src1, is_64bit, ops);
      new_opcode = is_64bit ? TOP_add64 : TOP_add32;
      Build_OP (new_opcode, result, src2, src1, ops);
    }
  } else if (TN_is_constant(src2) && !is_vector_type) {
    // switch order of src so immediate is first
    Expand_Add (result, src2, src1, mtype, ops);
  } else {
    switch(mtype) {
    case MTYPE_V16I1:
      Build_OP (TOP_add128v8, result, src1, src2, ops);
      break;
    case MTYPE_V16I2:
      Build_OP (TOP_add128v16, result, src1, src2, ops);
      break;
    case MTYPE_V16I4:
      Build_OP (TOP_add128v32, result, src1, src2, ops);
      break;
    case MTYPE_V16I8:
      Build_OP (TOP_add128v64, result, src1, src2, ops);
      break;
    default:
      if( OP_NEED_PAIR(mtype) ){
	Expand_Split_BOP( OPR_ADD, mtype, result, src1, src2, ops );

      } else {
	Build_OP (is_64bit ? TOP_add64 : TOP_add32, result, src1, src2, ops);
      }

      break;
    }
  }
}

void
Expand_Sub (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  INT64 val;
  const BOOL is_64bit = MTYPE_is_size_double(mtype);
  TOP new_opcode;
  BOOL is_vector_type;
  is_vector_type = (mtype == MTYPE_V16I1 || 
		    mtype == MTYPE_V16I2 ||
		    mtype == MTYPE_V16I4 ||
		    mtype == MTYPE_V16I8);

  if (TN_is_constant(src2) && !is_vector_type) {
    if (TN_has_value(src2)) {
      val = - TN_value(src2);
      if (val == 0) {
	Expand_Copy (result, src1, mtype, ops);
	return;
      }
    } 
    else if ( TN_is_symbol(src2) ) {
      /* symbolic constant, gp-relative or sp-relative */
      ST *base;
      INT64 val;
      Base_Symbol_And_Offset_For_Addressing (TN_var(src2), TN_offset(src2), &base, &val);
      val = - val;
    } 
    else FmtAssert(FALSE,("unexpected constant in Expand_Sub"));
    
    if (ISA_LC_Value_In_Class ( val, LC_simm32)) {
      if( OP_NEED_PAIR(mtype) ){
	Expand_Split_BOP( OPR_ADD, mtype, result, src1, Gen_Literal_TN(val,8), ops );

      } else {
	new_opcode = is_64bit ? TOP_addi64 : TOP_addi32;
	Build_OP (new_opcode, result, src1, Gen_Literal_TN(val,4), ops);
      }

    } else {
      FmtAssert( !OP_NEED_PAIR(mtype), ("NYI") );      
      src2 = Expand_Immediate_Into_Register (src2, is_64bit, ops);
      new_opcode = is_64bit ? TOP_sub64 : TOP_sub32;
      Build_OP (new_opcode, result, src1, src2, ops);
    }
  }
  else if (TN_is_constant(src1) && !is_vector_type) {
    TN *tmp = Build_TN_Of_Mtype (mtype);
    // switch order of src so immediate is first
    Expand_Sub (tmp, src2, src1, mtype, ops);
    // generate a negate
    if( OP_NEED_PAIR(mtype) )
      Expand_Split_UOP( OPR_NEG, mtype, result, tmp, ops );
    else
      Build_OP(is_64bit ? TOP_neg64 : TOP_neg32, result, tmp, ops);
  } 
  else {
    switch(mtype) {
    case MTYPE_V16I1:
      Build_OP (TOP_sub128v8, result, src1, src2, ops);
      break;
    case MTYPE_V16I2:
      Build_OP (TOP_sub128v16, result, src1, src2, ops);
      break;
    case MTYPE_V16I4:
      Build_OP (TOP_sub128v32, result, src1, src2, ops);
      break;
    case MTYPE_V16I8:
      Build_OP (TOP_sub128v64, result, src1, src2, ops);
      break;
    default:
      if( OP_NEED_PAIR(mtype) ){
	Expand_Split_BOP( OPR_SUB, mtype, result, src1, src2, ops );

      } else {
	Build_OP (is_64bit ? TOP_sub64 : TOP_sub32, result, src1, src2, ops);
      }
      break;
    }
  }
}


void
Expand_Neg (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  const BOOL is_64bit = MTYPE_is_size_double(mtype);
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || 
	      MTYPE_bit_size(mtype) == 64 ||
	      MTYPE_bit_size(mtype) == 96 ||
	      MTYPE_bit_size(mtype) == 128 ),
	               ("Expand_Neg: illegal result size\n"));

  if (mtype == MTYPE_V16F4 || mtype == MTYPE_V16F8 ||
      mtype == MTYPE_V16I1 || mtype == MTYPE_V16I2 ||
      mtype == MTYPE_V16I4 || mtype == MTYPE_V16I8) {    
    switch (mtype) {
    case MTYPE_V16F4: {
      TCON then = Host_To_Targ (MTYPE_I4, 0x80000000);
      TCON now  = Create_Simd_Const (MTYPE_V16F4, then);
      ST *sym = New_Const_Sym (Enter_tcon (now), Be_Type_Tbl(TCON_ty(now)));
      Allocate_Object(sym);
      TN *sym_tn = Gen_Symbol_TN(sym, 0, 0);
      TN *tmp = Build_TN_Like(result);
      Exp_Load(mtype, mtype, tmp, TN_var(sym_tn), TN_offset(sym_tn), ops, 0);
      Build_OP(is_64bit ? TOP_xorpd: TOP_xorps, result, src, tmp, ops);
      break;
    }
    case MTYPE_V16F8: {
      TCON then = Host_To_Targ (MTYPE_I8, 0x8000000000000000ULL);
      TCON now  = Create_Simd_Const (MTYPE_V16F8, then);
      ST *sym = New_Const_Sym (Enter_tcon (now), Be_Type_Tbl(TCON_ty(now)));
      Allocate_Object(sym);
      TN *sym_tn = Gen_Symbol_TN(sym, 0, 0);
      TN *tmp = Build_TN_Like(result);
      Exp_Load(mtype, mtype, tmp, TN_var(sym_tn), TN_offset(sym_tn), ops, 0);
      Build_OP(is_64bit ? TOP_xorpd: TOP_xorps, result, src, tmp, ops);
      break;
    }
    default:
      FmtAssert(FALSE, ("NYI"));
      break;
    }

  } else if (!MTYPE_is_float(mtype)) {
    if( OP_NEED_PAIR(mtype) ){
      Expand_Split_UOP( OPR_NEG, mtype, result, src, ops );

    } else {
      Build_OP( is_64bit ? TOP_neg64 : TOP_neg32, result, src, ops );
    }

  } else if( MTYPE_is_quad(mtype) ||
	     !Is_Target_SSE2() ){
    Build_OP( TOP_fchs, result, src, ops );

  } else {
#if 1
    // Perform neg operation by flipping the msb.
    TCON tcon = is_64bit ? Host_To_Targ (MTYPE_I8, 0x8000000000000000ULL) :
      Host_To_Targ (MTYPE_I4, 0x80000000);
    ST *sym = New_Const_Sym( Enter_tcon (tcon), Be_Type_Tbl(TCON_ty(tcon)) );
    Allocate_Object(sym);
    ST *base_sym; INT64 base_ofst;

    Base_Symbol_And_Offset_For_Addressing (sym, 0, &base_sym, &base_ofst);

    TN *tmp = Build_TN_Like(result);
    if( Is_Target_64bit() ){
      Build_OP(is_64bit ? TOP_ldsd : TOP_ldss, tmp, Rip_TN(),
	       Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_NONE), ops);
    } else {
      Build_OP(is_64bit ? TOP_ldsd_n32 : TOP_ldss_n32, tmp,
	       Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_NONE), ops);
    }

    Set_OP_no_alias( OPS_last(ops)  );
    Build_OP(is_64bit ? TOP_xorpd: TOP_xorps, result, src, tmp, ops);
#else
    // Perform neg operation by a sub operation from 0.0.
    TCON tcon = Host_To_Targ_Float( is_64bit ? MTYPE_F8 : MTYPE_F4, 0.0 );
    ST *sym = New_Const_Sym (Enter_tcon (tcon), Be_Type_Tbl( TCON_ty(tcon) ) );
    Allocate_Object(sym);
    ST *base_sym; INT64 base_ofst;

    Base_Symbol_And_Offset_For_Addressing (sym, 0, &base_sym, &base_ofst);

    TN *tmp = Build_TN_Like(result);
    if( Is_Target_64bit() ){
      Build_OP(is_64bit ? TOP_ldsd : TOP_ldss, tmp, Rip_TN(),
	       Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_NONE), ops);
    } else {
      Build_OP(is_64bit ? TOP_ldsd_n32 : TOP_ldss_n32, tmp, Rip_TN(),
	       Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_NONE), ops);
    }

    Set_OP_no_alias( OPS_last(ops)  );
    Build_OP(is_64bit ? TOP_subsd: TOP_subss, result, tmp, src, ops);
#endif
  }
}


void
Expand_Abs (TN *dest, TN *src, TYPE_ID mtype, OPS *ops)
{
  BOOL is_double = MTYPE_is_size_double(mtype);
  if (!MTYPE_is_float(mtype)) {
    if( dest == src ){
      TN* tmp_src = Build_TN_Like( src );
      Expand_Copy( tmp_src, src, mtype, ops );
      src = tmp_src;
    }

    if( OP_NEED_PAIR(mtype) ){
      Expand_Split_Abs( dest, src, mtype, ops );

    } else {
      Expand_Neg (dest, src, mtype, ops);
      Build_OP (TOP_cmovs, dest, src, Rflags_TN(), ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    }

  } else if( MTYPE_is_quad( mtype ) ||
	     !Is_Target_SSE2() ){
    Build_OP( TOP_fabs, dest, src, ops );

  } else {
    TCON tcon = is_double ? Host_To_Targ (MTYPE_I8, 0x7FFFFFFFFFFFFFFFULL) :
      Host_To_Targ (MTYPE_I4, 0x7FFFFFFF);
    ST *sym = New_Const_Sym (Enter_tcon (tcon), Be_Type_Tbl(TCON_ty(tcon)) );
    Allocate_Object(sym);
    ST *base_sym; INT64 base_ofst;

    Base_Symbol_And_Offset_For_Addressing (sym, 0, &base_sym, &base_ofst);

    TN *tmp = Build_TN_Like(dest);

    if( Is_Target_64bit() ){
      Build_OP(is_double ? TOP_ldsd : TOP_ldss, tmp, Rip_TN(),
	       Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_NONE), ops);
    } else {
      Build_OP(is_double ? TOP_ldsd_n32 : TOP_ldss_n32, tmp,
	       Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_NONE), ops);
    }

    Set_OP_no_alias( OPS_last(ops)  );
    Build_OP(is_double ? TOP_andpd: TOP_andps, dest, src, tmp, ops);
  }
  return;
}

void
Expand_Shift (TN *result, TN *src1, TN *src2, TYPE_ID mtype, SHIFT_DIRECTION kind, OPS *ops)
{
  WN *tree;
  TOP top;  
  const BOOL is_64bit = MTYPE_is_size_double(mtype);

  if (TN_is_constant(src1))
    src1 = Expand_Immediate_Into_Register(src1, is_64bit, ops);
  if (TN_has_value(src2)) {
    // In mips, only the low log2(wordsize) bits of the shift count are used. 
    const UINT64 val = TN_value(src2);
    const UINT8  shift_amt = is_64bit ? 63 : 31;
    FmtAssert( val <= shift_amt, ("Shift amount > %d", shift_amt) );

    switch (kind) {
    case shift_left:
      if( val == 1 ){
	Expand_Add( result, src1, src1, mtype, ops );
	return;
      }

      top = is_64bit ? TOP_shli64 : TOP_shli32;
      break;
    case shift_aright:
      top = is_64bit ? TOP_sari64 : TOP_sari32;
      break;
    case shift_lright:
      top = is_64bit ? TOP_shri64 : TOP_shri32;
      break;
    }

    src2 = Gen_Literal_TN( val & shift_amt, 4 );

  } else {
    switch (kind) {
    case shift_left:
      top = is_64bit ? TOP_shl64 : TOP_shl32;
      break;
    case shift_aright:
      top = is_64bit ? TOP_sar64 : TOP_sar32;
      break;
    case shift_lright:
      top = is_64bit ? TOP_shr64 : TOP_shr32;
      break;
    }
  }

  if( OP_NEED_PAIR( mtype ) )
    Expand_Split_Shift( kind, result, src1, src2, ops );
  else
    Build_OP(top, result, src1, src2, ops);
}

inline void
Expand_G_To_F (TN *ftn, TN *gtn, OPS *ops)
{
  FmtAssert(FALSE,("Unimplemented"));
}

inline void
Expand_F_To_G (TN *gtn, TN *ftn, OPS *ops)
{
  FmtAssert(FALSE,("Unimplemented"));
}

/*
 *  Try to expand a multiply into a sequence of less expensive operations.
 */
static BOOL
Expand_Constant_Multiply (TN *result, TN *var_tn, TARG_INT constant, TYPE_ID mtype, OPS *ops)
{
  if( OP_NEED_PAIR(mtype) ){
    DevWarn( "Expand_Constant_Multiply: NYI\n" );
    return FALSE;
  }

  BOOL did_do_fast;
  INT16 limit;	/* maximum number of operations to replace the multiply */
  TN *x = var_tn;
  INT64 c = constant; // I don't want to depend on TARG_INT
  BOOL needs_sign_extension;

  // fast special cases
  if (c == 0) {
    Expand_Copy (result, Zero_TN, MTYPE_I8, ops);
    return TRUE;
  } else if (c == 1) {
    Expand_Copy (result, var_tn, MTYPE_I8, ops);
    return TRUE;
  } else if (c == -1) {
    Expand_Neg(result, var_tn, mtype, ops);
    return TRUE;
  }
    
  needs_sign_extension = MTYPE_size_reg(mtype) != 64;

  if (c < 0) {
    c = -c;
    x = DUP_TN(var_tn);
    Expand_Neg(x, var_tn, mtype, ops);
  }    

  TOP lea;
  TN *tmp_tn = Build_TN_Like(result);
  TN *tmp1_tn = Build_TN_Like(result);
  if (mtype == MTYPE_I4 || mtype == MTYPE_U4)
    lea = TOP_leax32;
  else
    lea = TOP_leax64;
  switch (c) {
  case 3:
    Build_OP (lea, result, x, x, Gen_Literal_TN (2, 4), 
	      Gen_Literal_TN(0, 4), ops); 
    break;
  case 5:
    Build_OP (lea, result, x, x, Gen_Literal_TN (4, 4), 
	      Gen_Literal_TN (0, 4), ops);
    break;
  case 6:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (2, 4), 
	      Gen_Literal_TN (0, 4), ops); 
    Expand_Add (result, tmp_tn, tmp_tn, mtype, ops);
    break;
  case 7:
    Expand_Shift (tmp_tn, x, 
		  Gen_Literal_TN (3, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp_tn, x, mtype, ops);
    break;
  case 9:
    Build_OP (lea, result, x, x, Gen_Literal_TN (8, 4), 
	      Gen_Literal_TN (0, 4), ops);
    break;
  case 10:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (4, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Add (result, tmp_tn, tmp_tn, mtype, ops);    
    break;
  case 11:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (8, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Add (tmp1_tn, x, x, mtype, ops);    
    Expand_Add (result, tmp1_tn, tmp_tn, mtype, ops);    
    break;    
  case 12:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (2, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (result, tmp_tn, 
		  Gen_Literal_TN (2, 4), mtype, shift_left, ops);
    break;    
  case 13:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (2, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp1_tn, x, 
		  Gen_Literal_TN (4, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp1_tn, tmp_tn, mtype, ops);    
    break;    
  case 14:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (1, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp1_tn, x, 
		  Gen_Literal_TN (4, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp1_tn, tmp_tn, mtype, ops);    
    break;    
  case 15:
    Expand_Shift (tmp_tn, x, 
		  Gen_Literal_TN (4, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp_tn, x, mtype, ops);    
    break;    
  case 17:
    Expand_Shift (tmp_tn, x, 
		  Gen_Literal_TN (4, 4), mtype, shift_left, ops);
    Expand_Add (result, tmp_tn, x, mtype, ops);    
    break;    
  case 18:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (8, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Add (result, tmp_tn, tmp_tn, mtype, ops);    
    break;
  case 19:
    Build_OP (lea, tmp1_tn, x, x, Gen_Literal_TN (2, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp_tn, x, 
		  Gen_Literal_TN (4, 4), mtype, shift_left, ops);
    Expand_Add (result, tmp_tn, tmp1_tn, mtype, ops);    
    break;
  case 20:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (4, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (result, tmp_tn, 
		  Gen_Literal_TN (2, 4), mtype, shift_left, ops);
    break;
  case 21:
    Build_OP (lea, tmp1_tn, x, x, Gen_Literal_TN (4, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp_tn, x, 
		  Gen_Literal_TN (4, 4), mtype, shift_left, ops);
    Expand_Add (result, tmp_tn, tmp1_tn, mtype, ops);    
    break;
  case 23:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (8, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp1_tn, x, 
		  Gen_Literal_TN (5, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp1_tn, tmp_tn, mtype, ops);    
    break;    
  case 24:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (2, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (result, tmp_tn, 
		  Gen_Literal_TN (3, 4), mtype, shift_left, ops);
    break;
  case 25:
    Build_OP (lea, tmp1_tn, x, x, Gen_Literal_TN (8, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp_tn, x, 
		  Gen_Literal_TN (4, 4), mtype, shift_left, ops);
    Expand_Add (result, tmp_tn, tmp1_tn, mtype, ops);    
    break;
  case 27:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (4, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp1_tn, x, 
		  Gen_Literal_TN (5, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp1_tn, tmp_tn, mtype, ops);    
    break;    
  case 28:
    Build_OP (mtype == MTYPE_I4 || 
	      mtype == MTYPE_U4 ? TOP_leaxx32 : 
	      TOP_leaxx64,tmp_tn, x, Gen_Literal_TN (4, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp1_tn, x, 
		  Gen_Literal_TN (5, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp1_tn, tmp_tn, mtype, ops);    
    break;
  case 29:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (2, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp1_tn, x, 
		  Gen_Literal_TN (5, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp1_tn, tmp_tn, mtype, ops);    
    break;    
  case 30:
    Build_OP (lea, tmp_tn, x, x, Gen_Literal_TN (1, 4), 
	      Gen_Literal_TN (0, 4), ops);
    Expand_Shift (tmp1_tn, x, 
		  Gen_Literal_TN (5, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp1_tn, tmp_tn, mtype, ops);    
    break;    
  case 31:
    Expand_Shift (tmp_tn, x, 
		  Gen_Literal_TN (5, 4), mtype, shift_left, ops);
    Expand_Sub (result, tmp_tn, x, mtype, ops);    
    break;    
  default:
    return FALSE;
  }
  return TRUE;
}

void
Expand_Multiply (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  const BOOL is_64bit = MTYPE_is_size_double(mtype);

  FmtAssert( !TN_has_value(src1), ("UNIMPLEMENTED") );
  FmtAssert( MTYPE_is_integral(mtype), ("Should be handled in Expand_Flop") );

  if( TN_has_value(src2) ){
    INT64 val = TN_value( src2 );
    if( val > 0 &&
	( val & ( val - 1 ) ) == 0 ){
      int amt = 0;
      while( val != 1 ){
	amt++;
	val >>= 1;
      }
      TN* shift_tn = Gen_Literal_TN( amt, 4 );
      Expand_Shift( result, src1, shift_tn, mtype, shift_left, ops );

      return;

    } else if (Can_Do_Fast_Multiply (mtype, val)) {
      if (Expand_Constant_Multiply (result, src1, val, mtype, ops)) {
	/* able to convert multiply into shifts/adds/subs */
	return;
      }      
    } 
  }

  if (TN_has_value(src2)) {
    src2 = Expand_Immediate_Into_Register (src2, is_64bit, ops);
  }
  FmtAssert(!TN_is_constant(src1),
	    ("Expand_Multiply: unexpected constant operand"));
  if (TN_is_constant(src2))
    src2 = Expand_Immediate_Into_Register(src2, is_64bit, ops);

  if( OP_NEED_PAIR( mtype ) ){
    Expand_Split_Multiply( result, src1, src2, ops );

  } else {
    Build_OP( is_64bit ? TOP_imul64 : TOP_imul32, result, src1, src2, ops );
  }
}

/* return high part of multiply result */
void
Expand_High_Multiply (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert(!TN_is_constant(src1),
		  ("Expand_High_Multiply: unexpected constant operand"));
  if (!MTYPE_is_size_double(mtype)) {
    if (MTYPE_is_signed(mtype)) {
      if (TN_is_constant(src2))
	src2 = 
	  Expand_Immediate_Into_Register(src2, 
					 MTYPE_is_size_double(mtype), ops);
      TN *tmp_tn = Build_TN_Of_Mtype (MTYPE_I8);
      Build_OP(TOP_imul64, tmp_tn, src1, src2, ops); 
      Expand_Shift (result, tmp_tn, Gen_Literal_TN(32, 4), 
		    MTYPE_I8, shift_lright, ops);
   } else {
      if (TN_is_constant(src2))
	src2 = 
	  Expand_Immediate_Into_Register(src2, 
					 MTYPE_is_size_double(mtype), ops);
      TN *tmp_tn = Build_TN_Like( result );
      Build_OP(TOP_mul32, tmp_tn, result, src1, src2, ops);
    }
  } else {    
    BOOL is_signed = MTYPE_is_signed(mtype);
    TN *result1 = Build_TN_Like(result);
    Build_OP(is_signed?TOP_imulx64:TOP_mulx64, 
	     result1, result, src1, src2, ops);
  }
}


void Expand_Logical_Not (TN *dest, TN *src, VARIANT variant, OPS *ops)
{
  /* dest = (src == 0) ? 1 : 0 */
  const BOOL is_64bit = (TN_size(src) == 8 );
  Build_OP( is_64bit ? TOP_xori64 : TOP_xori32, dest, src, 
		  Gen_Literal_TN(1, is_64bit ? 8 : 4), ops );
}

void Expand_Logical_And (TN *dest, TN *src1, TN *src2, VARIANT variant, OPS *ops)
{
  const BOOL is_64bit = (TN_size(src1) == 8 && TN_size(src2) == 8);
  Build_OP( is_64bit ? TOP_and64 : TOP_and32, dest, src1, src2, ops );
}

void Expand_Logical_Or (TN *dest, TN *src1, TN *src2, VARIANT variant, OPS *ops)
{
  const BOOL is_64bit = (TN_size(src1) == 8 && TN_size(src2) == 8);
  Build_OP( is_64bit ? TOP_or64 : TOP_or32, dest, src1, src2, ops );
}


void Expand_Binary_Complement (TN *dest, TN *src, TYPE_ID mtype, OPS *ops)
{
  if( OP_NEED_PAIR(mtype) )
    Expand_Split_UOP( OPR_BNOT, mtype, dest, src, ops );
  else
    Build_OP( MTYPE_is_size_double(mtype) ? TOP_not64 : TOP_not32, dest, src, ops );
}

void Expand_Binary_And (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  const BOOL is_64bit = MTYPE_is_size_double(mtype);
  TOP new_opcode = is_64bit ? TOP_and64 : TOP_and32;

  if (TN_is_constant(src1)) {
    FmtAssert(TN_has_value(src1),("unexpected constant in Expand_Binary_And"));
    INT64 val = TN_value(src1);
    if (val == -1) {
      Expand_Copy (dest, src2, mtype, ops);
      return;
    }

    // Change "andl 0xff,src2" to "movzbl src1,src2".  This saves 3 bytes and
    // does not require the src and dest to be the same register.
    if (val == 0xff) {
      if( OP_NEED_PAIR(mtype) )
	Expand_Split_Cvtl( mtype, TOP_movzbq, dest, src2, ops );
      else
	Build_OP( is_64bit ? TOP_movzbq : TOP_movzbl, dest, src2, ops );
      return;
    }

    // Likewise for 32-bit src.
    if (val == 0xffff) {
      new_opcode = is_64bit ? TOP_movzwq : TOP_movzwl;
      if( OP_NEED_PAIR(mtype) )
	Expand_Split_Cvtl( mtype, new_opcode, dest, src2, ops );
      else
	Build_OP (new_opcode, dest, src2, ops);
      return;
    }

    if (ISA_LC_Value_In_Class ( val, LC_simm32)) 
      new_opcode = is_64bit ? TOP_andi64 : TOP_andi32;
    else {
      src1 = Expand_Immediate_Into_Register(src1, is_64bit, ops);
    }

    if( OP_NEED_PAIR(mtype) )
      Expand_Split_BOP( OPR_BAND, mtype, dest, src2, src1, ops );
    else
      Build_OP (new_opcode, dest, src2, src1, ops);

  } else if (TN_is_constant(src2)) {
    // switch order of src so immediate is first
    Expand_Binary_And (dest, src2, src1, mtype, ops);

  } else {
    switch(mtype) {
    case MTYPE_V16I1: 
      Build_OP(TOP_and128v8, dest, src1, src2, ops); break;
    case MTYPE_V16I2: 
      Build_OP(TOP_and128v16, dest, src1, src2, ops); break;
    case MTYPE_V16I4: 
      Build_OP(TOP_and128v32, dest, src1, src2, ops); break;
    case MTYPE_V16I8: 
      Build_OP(TOP_and128v64, dest, src1, src2, ops); break;
    default:
      if( OP_NEED_PAIR(mtype) ){
	Expand_Split_BOP( OPR_BAND, mtype, dest, src1, src2, ops );

      } else {
	Build_OP(new_opcode, dest, src1, src2, ops);
      }
      break;
    }
  }
}

void Expand_Binary_Or (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  const BOOL is_64bit = MTYPE_is_size_double(mtype);
  TOP new_opcode = is_64bit ? TOP_or64 : TOP_or32;

  if (TN_is_constant(src1)) {
    FmtAssert(TN_has_value(src1),("unexpected constant in Expand_Binary_Or"));
    INT64 val = TN_value(src1);
    if (val == 0) {
      Expand_Copy (dest, src2, mtype, ops);
      return;
    }

    if (ISA_LC_Value_In_Class ( val, LC_simm32)) 
      new_opcode = is_64bit ? TOP_ori64 : TOP_ori32;
    else {
      src1 = Expand_Immediate_Into_Register(src1, is_64bit, ops);
    }

    if( OP_NEED_PAIR( mtype ) )
      Expand_Split_BOP( OPR_BIOR, mtype, dest, src2, src1, ops );
    else
      Build_OP (new_opcode, dest, src2, src1, ops);

  } else if (TN_is_constant(src2)) {
    // switch order of src so immediate is first
    Expand_Binary_Or (dest, src2, src1, mtype, ops);

  } else {
    switch(mtype) {
    case MTYPE_V16I1: 
      Build_OP(TOP_or128v8, dest, src1, src2, ops); break;
    case MTYPE_V16I2: 
      Build_OP(TOP_or128v16, dest, src1, src2, ops); break;
    case MTYPE_V16I4: 
      Build_OP(TOP_or128v32, dest, src1, src2, ops); break;
    case MTYPE_V16I8: 
      Build_OP(TOP_or128v64, dest, src1, src2, ops); break;
    default:
      if( OP_NEED_PAIR(mtype) ){
	Expand_Split_BOP( OPR_BIOR, mtype, dest, src1, src2, ops );

      } else {
	Build_OP(new_opcode, dest, src1, src2, ops);
      }
      break;
    }
  }
}

void Expand_Binary_Xor (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  const BOOL is_64bit = MTYPE_is_size_double(mtype);
  TOP new_opcode = is_64bit ? TOP_xor64 : TOP_xor32;

  if (TN_is_constant(src1)) {
    FmtAssert(TN_has_value(src1),("unexpected constant in Expand_Binary_And"));
    INT64 val = TN_value(src1);
    if (val == 0 && src1 == dest ) {
      return;
    }

    if (ISA_LC_Value_In_Class ( val, LC_simm32)) 
      new_opcode = is_64bit ? TOP_xori64 : TOP_xori32;
    else {
      src1 = Expand_Immediate_Into_Register(src1, is_64bit, ops);
    }

    if( OP_NEED_PAIR(mtype) ){
      Expand_Split_BOP( OPR_BXOR, mtype, dest, src2, src1, ops );
    } else {      
      Build_OP (new_opcode, dest, src2, src1, ops);
    }

  } else if (TN_is_constant(src2)) {
    // switch order of src so immediate is first
    Expand_Binary_Xor (dest, src2, src1, mtype, ops);

  } else {
    switch(mtype) {
    case MTYPE_V16I1: 
      Build_OP(TOP_xor128v8, dest, src1, src2, ops); break;
    case MTYPE_V16I2: 
      Build_OP(TOP_xor128v16, dest, src1, src2, ops); break;
    case MTYPE_V16I4: 
      Build_OP(TOP_xor128v32, dest, src1, src2, ops); break;
    case MTYPE_V16I8: 
      Build_OP(TOP_xor128v64, dest, src1, src2, ops); break;
    default:
      if( OP_NEED_PAIR(mtype) ){
	Expand_Split_BOP( OPR_BXOR, mtype, dest, src1, src2, ops );
      } else {      
	Build_OP(new_opcode, dest, src1, src2, ops); break;
      }
    }
  }
}

void Expand_Binary_Nor (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert( FALSE, ("UNIMPLEMENTED") );
}


static void Expand_Int_Cmp( TN* dest, TN* src1, TN* src2,
			    TYPE_ID mtype, TOP set_opcode, OPS* ops )
{
  if (TN_has_value( src1 )){
    FmtAssert( !TN_has_value( src2 ), ("src2 has value") );    
    TOP top = TOP_UNDEFINED;
    // Bug:084
    switch( set_opcode ){
    case TOP_sete:
    case TOP_setne:  top = set_opcode;  break;
    case TOP_setb:   top = TOP_seta;    break;
    case TOP_seta:   top = TOP_setb;    break;
    case TOP_setae:  top = TOP_setbe;   break;
    case TOP_setbe:  top = TOP_setae;   break;
    case TOP_setg:   top = TOP_setl;    break;
    case TOP_setl:   top = TOP_setg;    break;
    case TOP_setge:  top = TOP_setle;   break;
    case TOP_setle:  top = TOP_setge;   break;
    }

    Expand_Int_Cmp(dest, src2, src1, mtype, top, ops);
    return;
  }

  const BOOL is_64bit = MTYPE_is_size_double(mtype);
  TOP cmp_opcode = is_64bit ? TOP_cmp64 : TOP_cmp32;
  TN* rflags = Rflags_TN();

  if( TN_has_value( src2 ) ){
    UINT64 val = TN_value( src2 );
    if( TN_value( src2 ) == 0 ){
      cmp_opcode = is_64bit ? TOP_test64 : TOP_test32;
      src2 = src1;
    } else if( !is_64bit ||
	       ( val <= INT32_MAX ) ){
      /* TODO:
	 Even <is_64bit> is true, we can still combine them if sign-extension
	 does not change the value of <val>.
       */
      cmp_opcode = is_64bit ? TOP_cmpi64 : TOP_cmpi32;
    } else {
      src2 = Expand_Immediate_Into_Register (src2, is_64bit, ops);
    }
  }

  if( OP_NEED_PAIR( mtype ) ){
    Expand_Split_Int_Cmp( cmp_opcode, src1, src2, set_opcode, dest, ops );

  } else {
    TN* tmp_tn = Build_TN_Of_Mtype(MTYPE_U1);  
    Build_OP( cmp_opcode, rflags, src1, src2, ops );
    Build_OP( set_opcode, tmp_tn, rflags, ops );

    if( Is_Target_32bit() &&
	TN_size(dest) == 8 ){
      Expand_Split_Cvtl( MTYPE_I8, TOP_movzbq, dest, tmp_tn, ops );
    } else {
      Build_OP( TN_size(dest) == 8 ? TOP_movzbq : TOP_movzbl,
		dest, tmp_tn, ops );
    }
  }
}

void Expand_Int_Less (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  if( MTYPE_is_signed(mtype) &&
      TN_has_value( src2 )   &&
      TN_value( src2 ) == 0 ){
    // Replace "cmp" and "setl" with "shrl".
    TN* shift_amt = Gen_Literal_TN( MTYPE_is_size_double(mtype) ? 63 : 31, 4 );
    Expand_Shift( dest, src1, shift_amt, mtype, shift_lright, ops );

  } else {
    Expand_Int_Cmp( dest, src1, src2, mtype,
		    MTYPE_is_signed(mtype) ? TOP_setl : TOP_setb,
		    ops );
  }
}

void Expand_Int_Less_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  Expand_Int_Cmp( dest, src1, src2, mtype,
		  MTYPE_is_signed(mtype) ? TOP_setle : TOP_setbe,
		  ops );
}

void Expand_Int_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  Expand_Int_Cmp( dest, src1, src2, mtype, TOP_sete, ops );
}

void Expand_Int_Not_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  Expand_Int_Cmp( dest, src1, src2, mtype, TOP_setne, ops );
}

void Expand_Int_Greater_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  Expand_Int_Cmp( dest, src1, src2, mtype,
		  MTYPE_is_signed(mtype) ? TOP_setge : TOP_setae,
		  ops );
}

void Expand_Int_Greater (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  Expand_Int_Cmp( dest, src1, src2, mtype,
		  MTYPE_is_signed(mtype) ? TOP_setg : TOP_seta,
		  ops );
}

static void
Expand_Bool_Comparison (BOOL equals, TN *dest, TN *src1, TN *src2, OPS *ops)
{
  FmtAssert(FALSE,("Unimplemented"));
}

void
Expand_Bool_Equal (TN *dest, TN *src1, TN *src2, OPS *ops)
{
  FmtAssert(FALSE,("Unimplemented"));
}

void
Expand_Bool_Not_Equal (TN *dest, TN *src1, TN *src2, OPS *ops)
{
  FmtAssert(FALSE,("Unimplemented"));
}

void
Expand_Bool_To_Int (TN *dest, TN *src, TYPE_ID rtype, OPS *ops)
{
  FmtAssert(FALSE,("Unimplemented"));
}

typedef enum {
  ROUND_USER,
  ROUND_NEAREST,
  ROUND_CHOP,
  ROUND_NEG_INF,
  ROUND_PLUS_INF
} ROUND_MODE;


static void Expand_Long_Double_To_Int( TN* dest, TN* src, TYPE_ID imtype, OPS* ops )
{
  // Allocate space to store the x87 control-word.
  const TY_IDX ty = MTYPE_To_TY( MTYPE_U2 );
  TN* x87_cw_tn = X87_cw_TN();
  ST* st = Gen_Temp_Symbol( ty, "x87_cw" );
  Allocate_Temp_To_Memory( st );

  ST* base_sym = NULL;
  INT64 base_ofst = 0;

  Base_Symbol_And_Offset_For_Addressing( st, 0, &base_sym, &base_ofst );
  FmtAssert( base_sym == SP_Sym || base_sym == FP_Sym, ("NYI") );

  TN* base_tn = base_sym == SP_Sym ? SP_TN : FP_TN;
  TN* ofst_tn = Gen_Literal_TN( base_ofst, 4 );

  // store the x87 control-word.
  Build_OP( TOP_fnstcw, x87_cw_tn, base_tn, ofst_tn, ops );
  Set_OP_volatile( OPS_last(ops) );

  // load the value into a 32-bit int register.
  TN* x87_cw = Gen_Register_TN( ISA_REGISTER_CLASS_integer, 4 );
  Exp_Load( MTYPE_U4, TY_mtype(ty), x87_cw, st, 0, ops, 0 );

  // perform an or to mask out that bit.
  TN* new_x87_cw = Build_TN_Like( x87_cw );
  Expand_Binary_Or( new_x87_cw, x87_cw, Gen_Literal_TN(3072,4), MTYPE_U4, ops );

  // store new_x87_cw back to a new memory location.
  ST* st_new = Gen_Temp_Symbol( ty, "x87_cw_new" );
  Allocate_Temp_To_Memory( st_new );
  ST* base_sym_new = NULL;
  INT64 base_ofst_new = 0;

  Base_Symbol_And_Offset_For_Addressing( st_new, 0, &base_sym_new, &base_ofst_new );

  TN* base_tn_new = base_sym_new == SP_Sym ? SP_TN : FP_TN;
  TN* ofst_tn_new = Gen_Literal_TN( base_ofst_new, 4 );

  Exp_Store( TY_mtype(ty), new_x87_cw, st_new, 0, ops, 0 );

  // load the new x87_cw
  Build_OP( TOP_fldcw, x87_cw_tn, base_tn_new, ofst_tn_new, ops );
  Set_OP_volatile( OPS_last(ops) );

  // do the real convertion work here.
  TOP top = TOP_UNDEFINED;
  TY_IDX mem_ty = MTYPE_To_TY( imtype );
  switch( imtype ){
  case MTYPE_I2:    top = TOP_fistps;   break;
  case MTYPE_I4:    top = TOP_fistpl;   break;
  case MTYPE_U4:
    /* bug#658
       We need bigger space for TOP_fistpll.
     */
    mem_ty = MTYPE_To_TY( MTYPE_U8 );
    /* fall thru */
  case MTYPE_U8:
  case MTYPE_I8:    top = TOP_fistpll;  break;
  default:
    FmtAssert( false, ("NYI") );
  }

  ST* mem_loc = Gen_Temp_Symbol( mem_ty, "x87_2_int" );
  Allocate_Temp_To_Memory( mem_loc );
  ST* mem_base_sym = NULL;
  INT64 mem_base_ofst = 0;

  Base_Symbol_And_Offset_For_Addressing( mem_loc, 0, &mem_base_sym, &mem_base_ofst );
  TN* mem_base_tn = mem_base_sym == SP_Sym ? SP_TN : FP_TN;
  TN* mem_ofst_tn = Gen_Literal_TN( mem_base_ofst, 4 );

  Build_OP( top, src, mem_base_tn, mem_ofst_tn, ops );

  // load the original x87_cw
  Build_OP( TOP_fldcw, x87_cw_tn, base_tn, ofst_tn, ops );
  Set_OP_volatile( OPS_last(ops) );

  // More work to do for a unsigned long -> long double conversion.

  if( imtype == MTYPE_U8 ){
    BB* bb_entry = Cur_BB;
    BB* bb_then = Gen_And_Append_BB( bb_entry );  // for a negative <src>

    BB* bb_exit  = Gen_And_Append_BB( bb_then );
    const LABEL_IDX bb_exit_label = Gen_Label_For_BB( bb_exit );

    BB_branch_wn(bb_entry) = WN_Create(OPC_TRUEBR,1);
    WN_kid0(BB_branch_wn(bb_entry)) = NULL;
    WN_label_number(BB_branch_wn(bb_entry)) = bb_exit_label;

    TCON tcon = Host_To_Targ_Quad( 0 );
    TCON_u0( tcon ) = 0x0;
    TCON_u1( tcon ) = 0x80000000;
    TCON_u2( tcon ) = 0x403e;
    TCON_u3( tcon ) = 0x0;      

    ST* tcon_sym = New_Const_Sym( Enter_tcon(tcon),  Be_Type_Tbl( TCON_ty(tcon) ) );
    ST* tcon_base_sym = NULL;
    INT64 tcon_base_ofst = 0;

    Allocate_Object(tcon_sym);
    Base_Symbol_And_Offset_For_Addressing( tcon_sym, 0,
					   &tcon_base_sym, &tcon_base_ofst );

    TN* max_value_tn = Build_TN_Like( src );
    Expand_Const( max_value_tn,
		  Gen_Symbol_TN( tcon_base_sym, tcon_base_ofst, TN_RELOC_NONE ),
		  MTYPE_FQ, ops );

    // Build bb_entry
    {
      Exp_OP3v( OPC_TRUEBR,
		NULL,
		Gen_Label_TN( bb_exit_label, 0 ),
		src,
		max_value_tn,
		V_BR_QLT,
		ops );

      if( &New_OPs != ops )
	OPS_Append_Ops( &New_OPs, ops );
      Process_New_OPs();
      BB_Append_Ops( bb_entry, &New_OPs );
      OPS_Init( &New_OPs );
      OPS_Init( ops );
    }

    // Build bb_then here.
    {
      OPS* bb_then_ops = &New_OPs;
      TN* tmp = Build_TN_Like( src );

      Build_OP( TOP_fsub, tmp, src, max_value_tn, bb_then_ops );

      // load the new x87_cw
      Build_OP( TOP_fldcw, x87_cw_tn, base_tn_new, ofst_tn_new, bb_then_ops );
      Set_OP_volatile( OPS_last(bb_then_ops) );

      // convert again.
      Build_OP( TOP_fistpll, tmp, mem_base_tn, mem_ofst_tn, bb_then_ops );

      // load the original x87_cw
      Build_OP( TOP_fldcw, x87_cw_tn, base_tn, ofst_tn, bb_then_ops );
      Set_OP_volatile( OPS_last(bb_then_ops) );

      TN* tmp_dest = Build_TN_Like( dest );
      CGTARG_Load_From_Memory( tmp_dest, mem_loc, bb_then_ops );
      
      Expand_Binary_Xor( tmp_dest, tmp_dest,
			 Gen_Literal_TN( 0x8000000000000000ULL, 8 ),
			 MTYPE_U8, bb_then_ops );

      /* ebo should get rid of this extra store; otherwise, we need to insert
	 a bb_else_bb.
      */
      CGTARG_Store_To_Memory( tmp_dest, mem_loc, bb_then_ops );

      total_bb_insts = 0;
      Last_Processed_OP = NULL;
      Process_New_OPs();
      BB_Append_Ops( bb_then, bb_then_ops );
      OPS_Init( bb_then_ops );
    }

    Cur_BB = bb_exit;
  }

  CGTARG_Load_From_Memory( dest, mem_loc, ops );

  if( Trace_Exp ){
    Print_OPS( ops );
  }
}


static void
Expand_Float_To_Int (ROUND_MODE rm, TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
  TOP top = TOP_UNDEFINED;

  if( MTYPE_is_quad( fmtype ) ||
      !Is_Target_SSE2() ){
    Expand_Long_Double_To_Int( dest, src, imtype, ops );
    return;

  } else if( fmtype == MTYPE_F4 ){ 
    if( MTYPE_bit_size(imtype) == 64 ){
      if( MTYPE_is_signed(imtype) )
	top = TOP_cvttss2siq;
      else {
	DevWarn("U8F4TRUNC implemented as I8F4TRUNC");
	top = TOP_cvttss2siq;	
      }	
    } else if( MTYPE_bit_size(imtype) == 32 ){
      top = MTYPE_is_signed(imtype) ? TOP_cvttss2si : TOP_cvttss2siq;
    }

  } else if (fmtype == MTYPE_F8) {
    if( MTYPE_bit_size(imtype) == 64 ){
      if( MTYPE_is_signed(imtype) )
	top = TOP_cvttsd2siq;
      else {
	DevWarn("U8F4TRUNC implemented as I8F8TRUNC");
	top = TOP_cvttsd2siq;	
      }
    } else if( MTYPE_bit_size(imtype) == 32 ){
      top = MTYPE_is_signed(imtype) ? TOP_cvttsd2si : TOP_cvttsd2siq;
    }
  }


  FmtAssert( top != TOP_UNDEFINED, ("NYI") );

  Build_OP( top, dest, src, ops );  
}

void
Expand_Float_To_Int_Cvt (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
  Expand_Float_To_Int (ROUND_USER, dest, src, imtype, fmtype, ops);
}

void
Expand_Float_To_Int_Round (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
  Expand_Float_To_Int (ROUND_NEAREST, dest, src, imtype, fmtype, ops);
}

void
Expand_Float_To_Int_Trunc (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
  Expand_Float_To_Int (ROUND_CHOP, dest, src, imtype, fmtype, ops);
}


static TN* Gen_Int_Symbol_TN( INT64 int_val, TYPE_ID mtype  )
{
  TCON tcon = Host_To_Targ( mtype, int_val );
  ST* sym = New_Const_Sym( Enter_tcon(tcon),  Be_Type_Tbl( TCON_ty(tcon) ) );

  ST* base_sym = NULL;
  INT64 base_ofst = 0;

  Allocate_Object(sym);
  Base_Symbol_And_Offset_For_Addressing( sym, 0, &base_sym, &base_ofst );

  return Gen_Symbol_TN( base_sym, base_ofst, TN_RELOC_NONE );
}


static void Expand_non_SSE2_Float_Floor( TN* dest, TN* src, OPS* ops )
{
  // Allocate space to store the x87 control-word.
  const TY_IDX ty = MTYPE_To_TY( MTYPE_U2 );
  TN* x87_cw_tn = X87_cw_TN();
  ST* st = Gen_Temp_Symbol( ty, "x87_cw" );
  Allocate_Temp_To_Memory( st );

  ST* base_sym = NULL;
  INT64 base_ofst = 0;

  Base_Symbol_And_Offset_For_Addressing( st, 0, &base_sym, &base_ofst );
  TN* base_tn = base_sym == SP_Sym ? SP_TN : FP_TN;
  TN* ofst_tn = Gen_Literal_TN( base_ofst, 4 );

  // store the x87 control-word.
  Build_OP( TOP_fnstcw, x87_cw_tn, base_tn, ofst_tn, ops );
  Set_OP_volatile( OPS_last(ops) );

  // load the value into a 32-bit int register.
  TN* x87_cw = Gen_Register_TN( ISA_REGISTER_CLASS_integer, 4 );
  Exp_Load( MTYPE_U4, TY_mtype(ty), x87_cw, st, 0, ops, 0 );

  // perform an AND and an OR to mask out that bit.
  TN* new_x87_cw = Build_TN_Like( x87_cw );
  Expand_Binary_And( new_x87_cw, x87_cw, Gen_Literal_TN(-3073,4), MTYPE_U4, ops );
  Expand_Binary_Or( new_x87_cw, new_x87_cw, Gen_Literal_TN(1024,4), MTYPE_U4, ops );

  // store new_x87_cw back to a new memory location.
  ST* st_new = Gen_Temp_Symbol( ty, "x87_cw_new" );
  Allocate_Temp_To_Memory( st_new );
  ST* base_sym_new = NULL;
  INT64 base_ofst_new = 0;

  Base_Symbol_And_Offset_For_Addressing( st_new, 0, &base_sym_new, &base_ofst_new );

  TN* base_tn_new = base_sym_new == SP_Sym ? SP_TN : FP_TN;
  TN* ofst_tn_new = Gen_Literal_TN( base_ofst_new, 4 );

  Exp_Store( TY_mtype(ty), new_x87_cw, st_new, 0, ops, 0 );

  // load the new x87_cw
  Build_OP( TOP_fldcw, x87_cw_tn, base_tn_new, ofst_tn_new, ops );
  Set_OP_volatile( OPS_last(ops) );

  // do the real convertion work here.
  Build_OP( TOP_frndint, dest, src, ops );

  // load the original x87_cw
  Build_OP( TOP_fldcw, x87_cw_tn, base_tn, ofst_tn, ops );
  Set_OP_volatile( OPS_last(ops) );  
}


void Expand_Float_To_Float_Floorl( TN* dest, TN* src,
				   TYPE_ID rtype, TYPE_ID desc, OPS* ops )
{
  Expand_non_SSE2_Float_Floor( dest, src, ops );
  return;
}


void Expand_Float_To_Float_Floorf( TN* dest, TN* src,
				   TYPE_ID rtype, TYPE_ID desc, OPS* ops )
{
  FmtAssert( rtype == MTYPE_F4, ("NYI") );
  FmtAssert( rtype == desc, ("NYI") );

  if( dest == src ){
    TN* tmp = Build_TN_Like( src );
    Expand_Copy( tmp, src, desc, ops );
    src = tmp;
  }

  if( !Is_Target_SSE2() ){
    Expand_non_SSE2_Float_Floor( dest, src, ops );
    return;
  }

  /* First, generate all the necessary values. */

  TN* sign_mask = Build_TN_Like( dest );
  Expand_Const( sign_mask, Gen_Int_Symbol_TN( 0x80000000, MTYPE_I4 ),
		rtype, ops );

  TN* mi6_val = Build_TN_Like( dest );
  Expand_Const( mi6_val, Gen_Int_Symbol_TN( 0x4b000000, MTYPE_I4 ),
		rtype, ops );

  TN* one_point_zero = Build_TN_Like( dest );
  Expand_Const( one_point_zero, Gen_Int_Symbol_TN( 0x3f800000, MTYPE_I4 ),
		rtype, ops );

  /* Execute the floor algorithm. */

  TN* sign_tn = Build_TN_Like( dest );
  TN* mi6_tn = Build_TN_Like( dest );
  TN* tmp1 = Build_TN_Like( dest );
  TN* result1 = Build_TN_Like( dest );
  TN* diff_tn = Build_TN_Like( dest );
  TN* ones_or_zeros = Build_TN_Like( dest );
  TN* fraction_tn = Build_TN_Like( dest );

  Build_OP( TOP_andps, sign_tn, sign_mask, src,     ops );
  Build_OP( TOP_orps,  mi6_tn,  mi6_val,   sign_tn, ops );
  Build_OP( TOP_addss, tmp1,    src,       mi6_tn,  ops );
  Build_OP( TOP_subss, result1, tmp1,      mi6_tn,  ops );
  Build_OP( TOP_subss, diff_tn, result1,   src,     ops );
  Build_OP( TOP_cmpss, ones_or_zeros, diff_tn, sign_mask, Gen_Literal_TN(6,4), ops );
  Build_OP( TOP_andps, fraction_tn, ones_or_zeros, one_point_zero, ops );
  Build_OP( TOP_subss, dest,    result1,   fraction_tn, ops );
}


void Expand_Float_To_Float_Floor( TN* dest, TN* src,
				  TYPE_ID rtype, TYPE_ID desc, OPS* ops )
{
  FmtAssert( rtype == MTYPE_F8, ("NYI") );
  FmtAssert( rtype == desc, ("NYI") );

  if( dest == src ){
    TN* tmp = Build_TN_Like( src );
    Expand_Copy( tmp, src, desc, ops );
    src = tmp;
  }

  if( !Is_Target_SSE2() ){
    Expand_non_SSE2_Float_Floor( dest, src, ops );
    return;
  }

  /* First, generate all the necessary values. */

  TN* sign_mask = Build_TN_Like( dest );
  Expand_Const( sign_mask, Gen_Int_Symbol_TN( 0x8000000000000000ULL, MTYPE_I8 ),
		rtype, ops );

  TN* mi6_val = Build_TN_Like( dest );
  Expand_Const( mi6_val, Gen_Int_Symbol_TN( 0x4330000000000000ULL, MTYPE_I8 ),
		rtype, ops );

  TN* one_point_zero = Build_TN_Like( dest );
  Expand_Const( one_point_zero, Gen_Int_Symbol_TN( 0x3ff0000000000000ULL, MTYPE_I8 ),
		rtype, ops );

  /* Execute the floor algorithm. */

  TN* sign_tn = Build_TN_Like( dest );
  TN* mi6_tn = Build_TN_Like( dest );
  TN* tmp1 = Build_TN_Like( dest );
  TN* result1 = Build_TN_Like( dest );
  TN* diff_tn = Build_TN_Like( dest );
  TN* ones_or_zeros = Build_TN_Like( dest );
  TN* fraction_tn = Build_TN_Like( dest );

  Build_OP( TOP_andpd, sign_tn, sign_mask, src,     ops );
  Build_OP( TOP_orpd,  mi6_tn,  mi6_val,   sign_tn, ops );
  Build_OP( TOP_addsd, tmp1,    src,       mi6_tn,  ops );
  Build_OP( TOP_subsd, result1, tmp1,      mi6_tn,  ops );
  Build_OP( TOP_subsd, diff_tn, result1,   src,     ops );
  Build_OP( TOP_cmpsd, ones_or_zeros, diff_tn, sign_mask, Gen_Literal_TN(6,4), ops );
  Build_OP( TOP_andpd, fraction_tn, ones_or_zeros, one_point_zero, ops );
  Build_OP( TOP_subsd, dest,    result1,   fraction_tn, ops );
}


void
Expand_Float_To_Int_Floor (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
  TN* rflags = Rflags_TN();
  TN* dest1 = Build_TN_Like( dest );
  TN* tmp = Build_TN_Like( dest );
  Exp_Immediate( tmp, 
		 Gen_Literal_TN (0, MTYPE_is_size_double(imtype) ? 8: 4), 
		 FALSE, ops );

  Expand_Float_To_Int (ROUND_NEG_INF, dest, src, imtype, fmtype, ops);

  Expand_Sub( dest1, dest, Gen_Literal_TN( 1, 4 ), imtype, ops );
  
  Build_OP ( MTYPE_is_size_double(imtype) ? TOP_cmp64 : TOP_cmp32, 
	     rflags, dest, tmp, ops);
  Build_OP( TOP_cmovl, dest, dest1, rflags, ops );
  Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);

}


void
Expand_Float_To_Int_Ceil (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
  //Expand_Float_To_Int (ROUND_PLUS_INF, dest, src, imtype, fmtype, ops);
  TN* dest1 = Build_TN_Like( dest );
  TN* src1  = Build_TN_Like( src );
  const BOOL is_double = MTYPE_is_size_double(fmtype);
  TN* rflags = Rflags_TN();

  TN* tmp = Build_TN_Like( dest );
  Exp_Immediate( tmp, 
		 Gen_Literal_TN (0, MTYPE_is_size_double(imtype) ? 8: 4), 
		 FALSE, ops );

  Expand_Float_To_Int( ROUND_NEG_INF, dest, src, imtype, fmtype, ops );
  Expand_Int_To_Float( src1, dest, imtype, fmtype, ops );
  
  Expand_Add( dest1, dest, Gen_Literal_TN( 1, 4 ), imtype, ops );
  
  Build_OP ( MTYPE_is_size_double(imtype) ? TOP_cmp64 : TOP_cmp32, 
	     rflags, dest, tmp, ops);
  Build_OP( TOP_cmovl, dest1, dest, rflags, ops );
  Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);

  Build_OP( ( MTYPE_is_quad( imtype ) || !Is_Target_SSE2() )
	    ? TOP_fucomi : ( is_double ? TOP_comisd : TOP_comiss ),
	    rflags, src, src1, ops );

  Build_OP( TOP_cmovne, dest, dest1, rflags, ops );
  Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
}

void
Expand_Float_To_Float (TN *dest, TN *src, TYPE_ID rtype, TYPE_ID desc, OPS *ops)
{
  if( Is_Target_SSE2()        &&
      !MTYPE_is_quad( rtype ) &&
      !MTYPE_is_quad( desc ) ){
    Build_OP( (rtype == MTYPE_F8) ? TOP_cvtss2sd : TOP_cvtsd2ss,
	      dest, src, ops );
    return;
  }

  const TY_IDX ty = MTYPE_To_TY( !MTYPE_is_quad(rtype) ? rtype : desc );
  ST* st = Gen_Temp_Symbol( ty, "x87_cvt" );
  Allocate_Temp_To_Memory( st ); 

  ST* base_sym = NULL;
  INT64 base_ofst = 0;

  Base_Symbol_And_Offset_For_Addressing( st, 0, &base_sym, &base_ofst );
  FmtAssert( base_sym == SP_Sym || base_sym == FP_Sym, ("NYI") );

  TN* base_tn = base_sym == SP_Sym ? SP_TN : FP_TN;
  TN* ofst_tn = Gen_Literal_TN( base_ofst, 4 );

  // long double -> float/double
  if( MTYPE_is_quad( desc ) ){
    Build_OP( rtype == MTYPE_F8 ? TOP_fstpl : TOP_fstps,
	      src, base_tn, ofst_tn, ops );
    
    CGTARG_Load_From_Memory( dest, st, ops );
    
  } else if( MTYPE_is_quad( rtype ) ){
    // float/double -> long double
    CGTARG_Store_To_Memory( src, st, ops );

    Build_OP( desc == MTYPE_F8 ? TOP_fldl : TOP_flds,
	      dest, base_tn, ofst_tn, ops );
  } else {
    FmtAssert( TN_register_class(dest) == ISA_REGISTER_CLASS_x87, ("NYI") );
    FmtAssert( TN_register_class(src)  == ISA_REGISTER_CLASS_x87, ("NYI") );

    Build_OP( rtype == MTYPE_F8 ? TOP_fstpl : TOP_fstps,
	      src, base_tn, ofst_tn, ops );

    Build_OP( rtype == MTYPE_F8 ? TOP_fldl : TOP_flds,
	      dest, base_tn, ofst_tn, ops );
  }
}


static void Expand_Unsigned_Long_To_Float( TN* dest, TN* src, TYPE_ID mtype, OPS* ops )
{
  const BOOL is_64bit = MTYPE_is_size_double(mtype);
  BB* bb_entry = Cur_BB;
  BB* bb_then    = Gen_And_Append_BB( bb_entry );  // for case MSB == 0
  BB* bb_else  = Gen_And_Append_BB( bb_then );     // for case MSB == 1
  const LABEL_IDX bb_else_label = Gen_Label_For_BB( bb_else );

  /* We need to insert a copy at the exit bb, since <dest> could be a
     dedicated reg. for return value, and it must be at a exit bb;
     otherwise, ebo will eliminate many of the useful ops.
  */
  TN* tmp_dest = Build_TN_Like( dest );

  //BB* bb_exit  = Start_New_Basic_Block();
  BB* bb_exit  = Gen_And_Append_BB( bb_else );
  const LABEL_IDX bb_exit_label = Gen_Label_For_BB( bb_exit );

  BB_branch_wn(bb_then) = WN_Create(OPC_GOTO,0);
  WN_label_number(BB_branch_wn(bb_then)) = bb_exit_label;

  BB_branch_wn(bb_entry) = WN_Create(OPC_TRUEBR,1);
  WN_kid0(BB_branch_wn(bb_entry)) = NULL;
  WN_label_number(BB_branch_wn(bb_entry)) = bb_else_label;

  // Build bb_entry
  {
    Exp_OP3v( OPC_TRUEBR,
	      NULL,
	      Gen_Label_TN( bb_else_label, 0 ),
	      src,
	      Gen_Literal_TN(0,4),
	      V_BR_I8LT,
	      ops );

    if( &New_OPs != ops )
      OPS_Append_Ops( &New_OPs, ops );
    Process_New_OPs();
    BB_Append_Ops( bb_entry, &New_OPs );
    OPS_Init( &New_OPs );
    OPS_Init( ops );
  }

  // Build bb_then here.
  {
    OPS* bb_then_ops = &New_OPs;
    Build_OP( is_64bit ? TOP_cvtsi2sdq : TOP_cvtsi2ssq, tmp_dest, src, bb_then_ops );
    Build_OP( TOP_jmp, Gen_Label_TN( bb_exit_label, 0 ), bb_then_ops );

    total_bb_insts = 0;
    Last_Processed_OP = NULL;
    Process_New_OPs();
    BB_Append_Ops( bb_then, bb_then_ops );
    OPS_Init( bb_then_ops );
  }

  // Build bb_else here.
  {
    OPS* bb_else_ops = &New_OPs;
    TN* tmp1 = Build_TN_Like(src);
    TN* tmp2 = Build_TN_Like(src);
    TN* tmp3 = Build_TN_Like(src);
    TN* dest1 = Build_TN_Like(tmp_dest);

    Build_OP( TOP_shri64, tmp1, src, Gen_Literal_TN( 1, 4 ), bb_else_ops );
    Build_OP( TOP_andi32, tmp2, src, Gen_Literal_TN( 1, 4 ), bb_else_ops );
    Build_OP( TOP_or64, tmp3, tmp1, tmp2, bb_else_ops );
    Build_OP( is_64bit ? TOP_cvtsi2sdq : TOP_cvtsi2ssq, dest1, tmp3, bb_else_ops );
    Build_OP( is_64bit ? TOP_addsd : TOP_addss, tmp_dest, dest1, dest1, bb_else_ops );

    total_bb_insts = 0;
    Last_Processed_OP = NULL;
    Process_New_OPs();
    BB_Append_Ops( bb_else, bb_else_ops );
    OPS_Init( bb_else_ops );
  }

  Cur_BB = bb_exit;
  Build_OP( mtype == MTYPE_F8 ? TOP_movsd : TOP_movss, dest, tmp_dest, ops );
}


static void Expand_Int_To_Long_Double( TN* dest, TN* src, TYPE_ID imtype, OPS* ops )
{
  if( imtype == MTYPE_U4 ){
    imtype = MTYPE_I8;
    TN* tmp = Build_TN_Of_Mtype( imtype );
    Build_OP( TOP_mov32, tmp, src, ops );
    src = tmp;
  }

  TY_IDX ty = MTYPE_To_TY( imtype );
  ST* st = Gen_Temp_Symbol( ty, "x87_cvt" );
  Allocate_Temp_To_Memory( st ); 

  ST* base_sym = NULL;
  INT64 base_ofst = 0;

  Base_Symbol_And_Offset_For_Addressing( st, 0, &base_sym, &base_ofst );
  FmtAssert( base_sym == SP_Sym || base_sym == FP_Sym, ("NYI") );

  TN* base_tn = base_sym == SP_Sym ? SP_TN : FP_TN;
  TN* ofst_tn = Gen_Literal_TN( base_ofst, 4 );

  CGTARG_Store_To_Memory( src, st, ops );

  TOP top = TOP_UNDEFINED;

  switch( imtype ){
  case MTYPE_I2:   top = TOP_filds;   break;
  case MTYPE_I4:   top = TOP_fildl;   break;
  case MTYPE_U8:
  case MTYPE_I8:   top = TOP_fildll;  break;
  default:
    FmtAssert( false, ("NYI") );
  }

  Build_OP( top, dest, base_tn, ofst_tn, ops );

  /* More work to do with unsigned long long -> long double.
   */
  if( imtype == MTYPE_U8 ){
    BB* bb_entry = Cur_BB;
    BB* bb_then = Gen_And_Append_BB( bb_entry );  // for src < 0

    BB* bb_exit  = Gen_And_Append_BB( bb_then );
    const LABEL_IDX bb_exit_label = Gen_Label_For_BB( bb_exit );

    BB_branch_wn(bb_entry) = WN_Create(OPC_TRUEBR,1);
    WN_kid0(BB_branch_wn(bb_entry)) = NULL;
    WN_label_number(BB_branch_wn(bb_entry)) = bb_exit_label;

    // Build bb_entry
    {
      if( &New_OPs != ops )      
	OPS_Append_Ops( &New_OPs, ops );
      Process_New_OPs();
      BB_Append_Ops( bb_entry, &New_OPs );
      OPS_Init( &New_OPs );
      OPS_Init( ops );

      ops = &New_OPs;

      Exp_OP3v( OPC_TRUEBR,
		NULL,
		Gen_Label_TN( bb_exit_label, 0 ),
		src,
		Gen_Literal_TN(0,4),
		V_BR_I8GE,
		ops );

      if( bb_entry != Cur_BB ){
	FmtAssert( OPS_length( ops ) == 0, ("NYI") );
	bb_entry = Cur_BB;
      }

      total_bb_insts = 0;
      Last_Processed_OP = NULL;
      Process_New_OPs();
      BB_Append_Ops( bb_entry, ops );
      OPS_Init( ops );
    }

    // Build bb_then here.
    {
      OPS* bb_then_ops = &New_OPs;
      TCON tcon = Host_To_Targ_Quad( 0 );
      TCON_u0( tcon ) = 0x0;
      TCON_u1( tcon ) = 0x80000000;
      TCON_u2( tcon ) = 0x403f;
      TCON_u3( tcon ) = 0x0;      

      ST* sym = New_Const_Sym( Enter_tcon(tcon),  Be_Type_Tbl( TCON_ty(tcon) ) );

      ST* base_sym = NULL;
      INT64 base_ofst = 0;

      Allocate_Object(sym);
      Base_Symbol_And_Offset_For_Addressing( sym, 0, &base_sym, &base_ofst );

      TN* max_value_tn = Build_TN_Like( dest );
      Expand_Const( max_value_tn, Gen_Symbol_TN( base_sym, base_ofst, TN_RELOC_NONE ),
		    MTYPE_FQ, bb_then_ops );

      Build_OP( TOP_fadd, dest, dest, max_value_tn, bb_then_ops );

      total_bb_insts = 0;
      Last_Processed_OP = NULL;
      Process_New_OPs();
      BB_Append_Ops( bb_then, bb_then_ops );
      OPS_Init( bb_then_ops );
    }

    Cur_BB = bb_exit;
  }
}


void
Expand_Int_To_Float (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
  TOP top = TOP_UNDEFINED;

  if( MTYPE_is_quad( fmtype ) ||
      !Is_Target_SSE2() ){
    Expand_Int_To_Long_Double( dest, src, imtype, ops );
    return;

  } else if( fmtype == MTYPE_F4 ){ 
    if( MTYPE_bit_size(imtype) == 64 ){
      if( MTYPE_is_signed(imtype) )
	top = TOP_cvtsi2ssq;
      else {
	Expand_Unsigned_Long_To_Float( dest, src, fmtype, ops );
	return;
      }
    } else if( MTYPE_bit_size(imtype) == 32 ){
      if( MTYPE_is_signed(imtype) )
	top = TOP_cvtsi2ss;
      else {
	TN *tmp = Build_TN_Of_Mtype(MTYPE_I8);
	Build_OP(TOP_mov32, tmp, src, ops);
	src = tmp;
	top = TOP_cvtsi2ssq;
      }
    }

  } else if (fmtype == MTYPE_F8) {
    if( MTYPE_bit_size(imtype) == 64 ){
      if( MTYPE_is_signed(imtype) )
	top = TOP_cvtsi2sdq;
      else {
	Expand_Unsigned_Long_To_Float( dest, src, fmtype, ops );
	return;
      }
    } else if( MTYPE_bit_size(imtype) == 32 ){
      if( MTYPE_is_signed(imtype) )
	top = TOP_cvtsi2sd;
      else {
	TN *tmp = Build_TN_Of_Mtype(MTYPE_I8);
	Build_OP(TOP_mov32, tmp, src, ops);
	src = tmp;
	top = TOP_cvtsi2sdq;
      }
    }
  }

  FmtAssert( top != TOP_UNDEFINED, ("NYI") );

  Build_OP( top, dest, src, ops );
}


static BOOL
Optimize_Select (
	TOP cmp,
  	TN *cond1, 
  	TN *cond2, 
  	TN *dest, 
  	TN *dest2,
  	TN *src1, 
  	TN *src2, 
	BOOL is_float,
	OPS *ops)
{
  FmtAssert( false, ("NYI") );
  return FALSE;
}


static void Expand_Compare_And_Select ( TOP cmp,
					TN *cond1, 
					TN *cond2, 
					TN *dest, 
					TN *opposite_dest, 
					TN *true_tn, 
					TN *false_tn, 
					BOOL is_float,
					OPS *ops)
{
  FmtAssert(FALSE,("Unimplemented"));
}

void
Expand_Select (
  TN *dest_tn, 
  TN *cond_tn, 
  TN *true_tn, 
  TN *false_tn, 
  TYPE_ID mtype, 
  BOOL float_cond,
  OPS *ops)
{
  FmtAssert(TN_register_class(cond_tn) == ISA_REGISTER_CLASS_integer,
	    ("Handle this case in Expand_Select"));
  const BOOL non_sse2_fp = MTYPE_is_quad(mtype) ||
    ( MTYPE_is_float(mtype) && !Is_Target_SSE2() );

  if( dest_tn == false_tn ){
    TN* tmp = Build_TN_Like( false_tn );
    Expand_Copy( tmp, false_tn, mtype, ops );
    false_tn = tmp;
  }

  if( dest_tn == true_tn ){
    TN* tmp = Build_TN_Like( true_tn );
    Expand_Copy( tmp, true_tn, mtype, ops );
    true_tn = tmp;
  }

  if( non_sse2_fp || !MTYPE_is_float(mtype) ){
    // First, assign <true_tn> to <dest_tn>.
    Expand_Copy( dest_tn, true_tn, mtype, ops );
    
    // Next, check whether <cond_tn> is 0 to set rflags
    TN *p = Rflags_TN();
    Build_OP( (TN_size(cond_tn) == 8) ? TOP_test64:TOP_test32,
	      p, cond_tn, cond_tn, ops );
    
    // Now, use the rflags to conditionally move if <cond_tn> is 0
    Build_OP( non_sse2_fp ? TOP_fcmove : TOP_cmove,
	      dest_tn, false_tn, p, ops );
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);

  } else if( MTYPE_is_float(mtype) ){
    TN *tmp1 = Build_TN_Like(cond_tn);
    TN *tmp2 = Build_TN_Like(cond_tn);
    TN *tmp3 = Build_TN_Like(dest_tn);
    TN *tmp4 = Build_TN_Like(dest_tn);
    TN *tmp5 = Build_TN_Like(dest_tn);

    // Need to generate a constant of size dest_tn
    BOOL is_double = (TN_size(dest_tn) == 8); 
    TYPE_ID imtype = is_double ? MTYPE_I8 :MTYPE_I4;
    TYPE_ID fmtype = is_double ? MTYPE_F8 :MTYPE_F4;

    Expand_Shift (tmp1, cond_tn, Gen_Literal_TN(is_double?63:31, 4), 
		  is_double?MTYPE_I8:MTYPE_I4, shift_left, ops);
    Expand_Shift (tmp2, tmp1, Gen_Literal_TN(is_double?63:31, 4), 
		  is_double?MTYPE_I8:MTYPE_I4, shift_aright, ops);
    /* Don't use Expand_Int_To_Float, which will convert the all 1's
       value to fp format. */
#if 0
    Build_OP( TOP_movg2x, tmp3, tmp2, ops );
#else
    //TY_IDX ty = Spill_Int_Type;
    TY_IDX ty = MTYPE_To_TY( imtype );
    ST* st = Gen_Temp_Symbol( ty, "movd" );
    Allocate_Temp_To_Memory( st );

    //TYPE_ID imtype = TY_mtype(ST_type(st));
    Exp_Store( imtype, tmp2, st, 0, ops, 0 );
    Exp_Load( fmtype, fmtype, tmp3, st, 0, ops, 0 );
#endif
    Build_OP( is_double ? TOP_andpd : TOP_andps, tmp4, true_tn, tmp3, ops );
    Build_OP( is_double ? TOP_andnpd : TOP_andnps, tmp5, tmp3, false_tn, ops );
    Build_OP( is_double ? TOP_orpd : TOP_orps, dest_tn, tmp5, tmp4, ops );

  } else {
    FmtAssert(FALSE, ("Handle this case"));
  }
}
  
void
Expand_Min (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert( !TN_has_value( src1 ), ("src1 has value") );

  if( MTYPE_is_float(mtype) &&
      Is_Target_SSE2()      &&
      !MTYPE_is_quad( mtype ) ){
    switch(mtype) {
    case MTYPE_V16F4:
      Build_OP( TOP_fmin128v32, dest, src1, src2, ops );      
      break;
    case MTYPE_V16F8:
      Build_OP( TOP_fmin128v64, dest, src1, src2, ops );      
      break;
    default:
      Build_OP( mtype == MTYPE_F8 ? TOP_minsd : TOP_minss, 
		dest, src1, src2, ops );
      break;
    }
  } else {
    const BOOL is_64bit = MTYPE_is_size_double(mtype);

    TOP cmp_opcode =
      MTYPE_is_float(mtype) ? TOP_fucomi : ( is_64bit ? TOP_cmp64 : TOP_cmp32 );
    TOP mov_opcode =
      MTYPE_is_float(mtype) ? TOP_fmov : ( is_64bit ? TOP_mov64 : TOP_mov32 );
    const TOP cmov_opcode =
      MTYPE_is_float(mtype) ? TOP_fcmovbe : ( MTYPE_is_signed(mtype) ? TOP_cmovle : TOP_cmovbe );
    TN* rflags = Rflags_TN();

    if( TN_has_value( src2 ) ){
      cmp_opcode = is_64bit ? TOP_cmpi64 : TOP_cmpi32;
      mov_opcode = is_64bit ? TOP_ldc64 : TOP_ldc32;
    }

    if( dest == src1 ){
      TN* tmp = src1;
      src1 = src2;
      src2 = tmp;
    }

    if( dest != src2 )
      Build_OP( mov_opcode, dest, src2, ops );

    Build_OP( cmp_opcode, rflags, src1, src2, ops );
    Build_OP( cmov_opcode, dest, src1, rflags, ops );
    Set_OP_cond_def_kind( OPS_last(ops), OP_ALWAYS_COND_DEF );
  }
}

void
Expand_Max (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{     
  FmtAssert( !TN_has_value( src1 ), ("src1 has value") );

  if( MTYPE_is_float(mtype) &&
      Is_Target_SSE2()      &&
      !MTYPE_is_quad(mtype) ){
    switch(mtype) {
    case MTYPE_V16F4:
      Build_OP( TOP_fmax128v32, dest, src1, src2, ops );      
      break;
    case MTYPE_V16F8:
      Build_OP( TOP_fmax128v64, dest, src1, src2, ops );      
      break;
    default:
      Build_OP( mtype == MTYPE_F8 ? TOP_maxsd : TOP_maxss, 
		dest, src1, src2, ops );
      break;
    }
  } else {
    const BOOL is_64bit = MTYPE_is_size_double(mtype);
    TN* rflags = Rflags_TN();

    TOP cmp_opcode = MTYPE_is_float(mtype)
      ? TOP_fucomi : ( is_64bit ? TOP_cmp64 : TOP_cmp32 );
    const TOP cmov_opcode = MTYPE_is_float(mtype)
      ? TOP_fcmovnb : ( MTYPE_is_signed(mtype) ? TOP_cmovge : TOP_cmovae );

    if( TN_has_value( src2 ) ){
      cmp_opcode = is_64bit ? TOP_cmpi64 : TOP_cmpi32;
    }

    if( dest == src1 ){
      TN* tmp = src1;
      src1 = src2;
      src2 = tmp;
    }

    if( dest != src2 ){
      Expand_Copy( dest, src2, mtype, ops );
    }

    Build_OP( cmp_opcode, rflags, src1, src2, ops );
    Build_OP( cmov_opcode, dest, src1, rflags, ops );
    Set_OP_cond_def_kind( OPS_last(ops), OP_ALWAYS_COND_DEF );
  }
}

void
Expand_MinMax (TN *dest, TN *dest2, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{ 
  FmtAssert( !TN_has_value( src1 ), ("src1 has value") );

  if( MTYPE_is_float(mtype) &&
      Is_Target_SSE2()      &&
      !MTYPE_is_quad(mtype) ){
    switch(mtype) {
    case MTYPE_V16F4:
      Build_OP( TOP_fmin128v32, dest, src1, src2, ops );      
      Build_OP( TOP_fmax128v32, dest2, src1, src2, ops );      
      break;
    case MTYPE_V16F8:
      Build_OP( TOP_fmin128v64, dest, src1, src2, ops );      
      Build_OP( TOP_fmax128v64, dest2, src1, src2, ops );      
      break;
    default:
      Build_OP( mtype == MTYPE_F8 ? TOP_minsd : TOP_minss, 
		dest, src1, src2, ops );
      Build_OP( mtype == MTYPE_F8 ? TOP_maxsd : TOP_maxss, 
		dest2, src1, src2, ops );
      break;
    }
  } else {
    const BOOL is_64bit = MTYPE_is_size_double(mtype);

    TOP cmp_opcode =
      MTYPE_is_float(mtype) ? TOP_fucomi : ( is_64bit ? TOP_cmp64 : TOP_cmp32 );
    TOP mov_opcode =
      MTYPE_is_float(mtype) ? TOP_fmov : ( is_64bit ? TOP_mov64 : TOP_mov32 );
    TN* rflags = Rflags_TN();

    if( TN_has_value( src2 ) ){
      cmp_opcode = is_64bit ? TOP_cmpi64 : TOP_cmpi32;
      mov_opcode = is_64bit ? TOP_ldc64 : TOP_ldc32;
    }

    if( dest == src1 ){
      TN* tmp = Build_TN_Like( src1 );
      Expand_Copy( tmp, src1, mtype, ops );
      src1 = tmp;
    }

    if( dest2 == src2 ){
      TN* tmp = Build_TN_Like( src2 );
      Expand_Copy( tmp, src2, mtype, ops );
      src2 = tmp;
    }

    Build_OP( mov_opcode, dest, src2, ops );
    Build_OP( mov_opcode, dest2, src1, ops );
    Build_OP( cmp_opcode, rflags, src1, src2, ops );

    const TOP cmov_opcode = MTYPE_is_float(mtype)
      ? TOP_fcmovb : ( MTYPE_is_signed(mtype) ? TOP_cmovl : TOP_cmovb );
    Build_OP( cmov_opcode, dest, src1, rflags, ops );
    Set_OP_cond_def_kind( OPS_last(ops), OP_ALWAYS_COND_DEF );

    Build_OP( cmov_opcode, dest2, src2, rflags, ops );
    Set_OP_cond_def_kind( OPS_last(ops), OP_ALWAYS_COND_DEF );
  }
}

/* check whether to eval condition before select */
extern BOOL
Check_Select_Expansion (OPCODE compare)
{
  // in order to get optimal code,
  // don't evaluate the condition first,
  // but pass the condition and kids to exp_select,
  // which will do the compare and use the predicate results.
  return FALSE;
}

static void 
Expand_Ordered_Select_Compare ( OPS* ops, TOP cond_move )
{
  FmtAssert(OPS_length(ops) == 3, ("NYI"));

  if ( cond_move == TOP_cmova || cond_move == TOP_cmovae )
    // We are as good before. 
    return;

  // Collect the compare and select operands from ops
  TN *cmp_kid1, *cmp_kid2, *true_tn, *false_tn, *result, *tmp;
  OP* init_op = OPS_first ( ops );
  OP* cmp_op  = init_op->next;
  OP* cmov_op = OPS_last ( ops );
  TOP cmp_opcode = OP_code ( cmp_op );

  if( TOP_is_uses_stack( cmp_opcode ) ){
    DevWarn( "Expand_Ordered_Select_Compare: %s is not supported yet.\n",
	     TOP_Name(cmp_opcode) );
    return;
  }

  TOP init_opcode = OP_code ( init_op );
  TN* rflags = Rflags_TN();
  TOP new_cond_move = TOP_UNDEFINED;

  false_tn = OP_opnd(init_op, 0);
  true_tn =  OP_opnd(cmov_op, 0);
  cmp_kid1 = OP_opnd(cmp_op, 0);
  cmp_kid2 = OP_opnd(cmp_op, 1);
  result   = OP_result(init_op, 0);
  
  OPS_Remove_Op(ops, init_op);
  OPS_Remove_Op(ops, cmp_op);
  OPS_Remove_Op(ops, cmov_op);

  switch (cond_move) {
  case TOP_cmove: 
    {
      new_cond_move = TOP_cmovne; 
      // Interchange
      tmp = true_tn;
      true_tn = false_tn;
      false_tn = tmp;
      break;
    }
  case TOP_cmovne: new_cond_move = TOP_cmovne; break;
  case TOP_cmovb:  new_cond_move = TOP_cmova; break;
  case TOP_cmovbe: new_cond_move = TOP_cmovae; break;
  default:
    FmtAssert( FALSE, ("NYI") );
  }
  Build_OP ( init_opcode, result, false_tn, ops );
  Build_OP ( cmp_opcode, rflags, cmp_kid2, cmp_kid1, ops );
  Build_OP ( new_cond_move, result, true_tn, rflags, ops );
  Set_OP_cond_def_kind( OPS_last(ops), OP_ALWAYS_COND_DEF );
  if ( new_cond_move == TOP_cmovne ) {
    Build_OP ( TOP_cmovp, result, true_tn, rflags, ops );
    Set_OP_cond_def_kind( OPS_last(ops), OP_ALWAYS_COND_DEF );
  }    

  return;
}

extern void 
Exp_Select_And_Condition (
        OPCODE select, TN *result, TN *true_tn, TN *false_tn,
        OPCODE compare, TN *cmp_kid1, TN *cmp_kid2, VARIANT variant, OPS *ops)
{
  if (Trace_Exp) {
    fprintf(TFile, "expand %s: ", OPCODE_name(select));
    if (result) Print_TN(result,FALSE);
    fprintf(TFile, " :- (");
    if (cmp_kid1) Print_TN(cmp_kid1,FALSE);
    fprintf(TFile, " ");
    fprintf(TFile, OPCODE_name(compare));
    fprintf(TFile, " ");
    if (cmp_kid2) Print_TN(cmp_kid2,FALSE);
    fprintf(TFile, ") ? ");
    if (true_tn) Print_TN(true_tn,FALSE);
    fprintf(TFile, " : ");
    if (false_tn) Print_TN(false_tn,FALSE);
    fprintf(TFile, " ");
    if (variant) fprintf(TFile, "(0x%llx)", (INT64)variant);
    fprintf(TFile, "\n");
  }

  OPS new_ops = OPS_EMPTY;
  const TYPE_ID desc = OPCODE_desc(compare);
  const TYPE_ID select_type = OPCODE_rtype(select);
  const BOOL is_rsize_double = MTYPE_is_size_double(select_type);
  const BOOL is_ssize_double = MTYPE_is_size_double(desc);
  const OPERATOR compare_opr = OPCODE_operator(compare);

  /* Fix bug#1325
     Before expanding, make sure <result> is none of its operands.
   */

  if( result == true_tn ){
    TN* tmp = Build_TN_Like( true_tn );
    Expand_Copy( tmp, true_tn, select_type, ops );
    true_tn = tmp;
  }

  if( result == false_tn ){
    TN* tmp = Build_TN_Like( false_tn );
    Expand_Copy( tmp, false_tn, select_type, ops );
    false_tn = tmp;
  }

  if (result == cmp_kid1) {
    TN* tmp = Build_TN_Like( cmp_kid1 );
    Expand_Copy( tmp, cmp_kid1, desc, ops );
    cmp_kid1 = tmp;
  }

  if (result == cmp_kid2) {
    TN* tmp = Build_TN_Like( cmp_kid2 );
    Expand_Copy( tmp, cmp_kid2, desc, ops );
    cmp_kid2 = tmp;
  }

  if( MTYPE_is_float(select_type) &&
      Is_Target_SSE2()            &&
      !MTYPE_is_quad(select_type) ){
    /* For case where <result>, <true_tn> and <false_tn> are fp type.

       Paraphrase Section 6.7 of AMD Opteron Optimization Guide:
       In: <result> = <cmp_kid1> <compare> <cmp_kid2> ? <true_tn> : <false_tn>
       Out: <result>

       tmp1 := cmpss  <cmp_kid1>, <cmp_kid2>, ctrl
       tmp2 := andps  <true_tn>, <tmp1>
       tmp3 := andnps <tmp1>, <false_tn>
       <result> := orps <tmp3>, <tmp2>
    */

    /* Notice that for a comparison made between integers, the result for int cmp
       is set to rflags, and there is no conditional mov for fp.
    */
    if( MTYPE_is_integral(desc) ){
      TN* cmp1 = Build_TN_Of_Mtype(select_type);
      TN* cmp2 = Build_TN_Of_Mtype(select_type);

      FmtAssert( !TN_has_value( cmp_kid1 ), ("NYI") );
      Expand_Int_To_Float( cmp1, cmp_kid1, desc, select_type, &new_ops );
      cmp_kid1 = cmp1;

      if( TN_has_value( cmp_kid2 ) ){
	INT64 val = TN_value( cmp_kid2 );
	if( TN_size( cmp_kid2 ) == 4 )
	  val = (INT32)val;

	TCON tcon = Host_To_Targ_Float( is_rsize_double ? MTYPE_F8 : MTYPE_F4, val );
	ST* sym = New_Const_Sym( Enter_tcon(tcon),  Be_Type_Tbl( TCON_ty(tcon) ) );
	TN* tmp = Build_TN_Of_Mtype(desc);

	ST* base_sym = NULL;
	INT64 base_ofst = 0;

	Allocate_Object(sym);
	Base_Symbol_And_Offset_For_Addressing( sym, 0, &base_sym, &base_ofst );
      
	Expand_Const( tmp, Gen_Symbol_TN( base_sym, base_ofst, TN_RELOC_NONE ),
		      desc, &new_ops );
	cmp_kid2 = tmp;
      }

      Expand_Int_To_Float( cmp2, cmp_kid2, desc, select_type, &new_ops );
      cmp_kid2 = cmp2;
    }

    int imm8 = 0;

    switch( compare_opr ){
    case OPR_EQ: imm8 = 0; break;
    case OPR_LT: imm8 = 1; break;
    case OPR_LE: imm8 = 2; break;
    case OPR_NE: imm8 = 4; break;
    case OPR_GE: imm8 = 5; break;
    case OPR_GT: imm8 = 6; break;
    default:
      FmtAssert(FALSE, ("Unknown opcode"));
    }

    TN* tmp1 = Build_TN_Like( cmp_kid1 );
    TN* tmp2 = Build_TN_Like( result );
    TN* tmp3 = Build_TN_Like( result );
    TN* ctrl = Gen_Literal_TN( imm8, 4 );

    Build_OP( ( is_ssize_double || is_rsize_double ) ? TOP_cmpsd : TOP_cmpss,
	      tmp1, cmp_kid1, cmp_kid2, ctrl, &new_ops );

    Build_OP( is_rsize_double ? TOP_andpd : TOP_andps, tmp2, true_tn, tmp1, &new_ops );

    Build_OP( is_rsize_double ? TOP_andnpd : TOP_andnps, tmp3, tmp1, false_tn, &new_ops );

    Build_OP( is_rsize_double ? TOP_orpd : TOP_orps, result, tmp3, tmp2, &new_ops );

  } else {
    /* For case where <result>, <true_tn> and <false_tn> are
       integer type. */

    TOP cmov_top = TOP_UNDEFINED;

    switch( compare_opr ){
    case OPR_LT:
      cmov_top = MTYPE_is_float(select_type)
	? TOP_fcmovb : ( MTYPE_is_signed(desc) ? TOP_cmovl : TOP_cmovb );
      break;
    case OPR_LE:
      cmov_top = MTYPE_is_float(select_type)
	? TOP_fcmovbe : ( MTYPE_is_signed(desc) ? TOP_cmovle : TOP_cmovbe );
      break;
    case OPR_EQ:
      cmov_top = MTYPE_is_float(select_type) ? TOP_fcmove : TOP_cmove;
      break;
    case OPR_NE:
      cmov_top = MTYPE_is_float(select_type) ? TOP_fcmovne : TOP_cmovne;
      break;
    case OPR_GE:
      cmov_top = MTYPE_is_float(select_type)
	? TOP_fcmovnb : ( MTYPE_is_signed(desc) ? TOP_cmovge : TOP_cmovae );
      break;
    case OPR_GT:
      cmov_top = MTYPE_is_float(select_type)
	? TOP_fcmovnbe : ( MTYPE_is_signed(desc) ? TOP_cmovg : TOP_cmova );
      break;
    default:
      FmtAssert(FALSE, ("Unknown opcode"));
    }

    TN* rflags = Rflags_TN();

    TOP cmp_opcode = MTYPE_is_float(select_type)
      ? TOP_fucomi : ( is_ssize_double ? TOP_cmp64 : TOP_cmp32 );

    if( MTYPE_is_float(desc) ){
      cmp_opcode = ( MTYPE_is_quad(desc) || !Is_Target_SSE2() )
	? TOP_fucomi : ( is_ssize_double ? TOP_comisd : TOP_comiss );

    } else if( TN_has_value( cmp_kid2 ) ){
      if( TN_value( cmp_kid2 ) == 0 ){
	cmp_opcode = is_ssize_double ? TOP_test64 : TOP_test32;
	cmp_kid2 = cmp_kid1;

      } else {
	cmp_opcode = is_ssize_double ? TOP_cmpi64 : TOP_cmpi32;
      }
    }

    if( result != false_tn || 
	( Force_IEEE_Comparisons && 
	  TOP_is_flop( cmp_opcode ))) {
      // Fix bug091.
      FmtAssert( result != true_tn, ("NYI") );
      Expand_Copy( result, false_tn, select_type, &new_ops );
    }

    if (TN_has_value(cmp_kid1) && 
	!ISA_LC_Value_In_Class (TN_value(cmp_kid1), LC_simm32)) {
      TN* tmp = Build_TN_Of_Mtype(MTYPE_U8);
      Exp_Immediate(tmp, cmp_kid1, &new_ops);
      cmp_kid1 = tmp;
      cmp_opcode = is_ssize_double ? TOP_cmp64 : TOP_cmp32;
    }
    if (TN_has_value(cmp_kid2) && 
	!ISA_LC_Value_In_Class (TN_value(cmp_kid2), LC_simm32)) {
      TN* tmp = Build_TN_Of_Mtype(MTYPE_U8);
      Exp_Immediate(tmp, cmp_kid2, &new_ops);
      cmp_kid2 = tmp;
      cmp_opcode = is_ssize_double ? TOP_cmp64 : TOP_cmp32;
    }

    if( OP_NEED_PAIR( desc ) ){
      Expand_Split_Select( result, compare_opr, cmp_opcode,
			   cmp_kid1, cmp_kid2, desc,
			   true_tn, false_tn, select_type,
			   &new_ops );

    } else {
      Build_OP( cmp_opcode, rflags, cmp_kid1, cmp_kid2, &new_ops );

      FmtAssert( result != true_tn, ("NYI") );
      Build_OP( cmov_top, result, true_tn, rflags, &new_ops );
      Set_OP_cond_def_kind( OPS_last(&new_ops), OP_ALWAYS_COND_DEF );

      // To avoid cluttering we will do a post-process on new_ops incase
      // we need to cover unordered FP comparisons.
      if ( Force_IEEE_Comparisons    &&
	   TOP_is_flop( cmp_opcode ) )
	Expand_Ordered_Select_Compare ( &new_ops, cmov_top );
    }
  }

  if( Trace_Exp ){
    Print_OPS( &new_ops );
  }

  OPS_Append_Ops(ops, &new_ops);
}


#define RESET_COND_DEF_LAST(ops) Set_OP_cond_def_kind(OPS_last(ops),OP_ALWAYS_UNC_DEF)

static void
Expand_SGI_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  /*	(p0) frsqrta.s0 f6,p2=src	# y2 = ~1/sqrt(x)
   *
   *	(p2) ldfd	f4=half		# f4 = 0.5 (0x3fe0000000000000)
   *	(p2) ldfd	f7=ah		# f7 = 0x3fe0000000000001
   *
   *	(p2) fmpy.d.s1	f3=src,f6	# g = x*y2
   *	(p2) fmpy.d.s1	f2=f4,f6	# y = 0.5*y2
   *
   *	(p2) fnma.d.s1	f5=f3,f3,src	# d = x - g*g
   *
   *	(p2) fma.d.s1	f3=f2,f5,f3	# g = g + y*d # 16 bit approximation
   *
   *	(p2) fnma.d.s1	f8=f2,f3,f7	# e = ah - y*g
   *	(p2) fnma.d.s1	f5=f3,f3,src    # d = x - g*g
   *	(p2) fma.d.s1	f2=f8,f6,f2	# y = y + e*y2
   *
   *	(p2) fma.d.s1   f3=f2,f5,f3     # g = g + y*d # 32 bit approximation
   *	(p2) fadd.d.s1  f6=f3,f3        # y2 = y + y
   *
   *	(p2) fnma.d.s1	f8=f2,f3,f7	# e = ah - y*g
   *	(p2) fnma.d.s1	f5=f3,f3,src    # d = x - g*g
   *	(p2) fma.d.s1	f2=f8,f6,f2	# y = y + e*y2
   *
   *	(p2) fma.d.s1   f3=f2,f5,f3     # g = g + y*d # 64 bit approximation before rounding
   *	(p2) fadd.d.s1  f6=f3,f3        # y2 = y + y
   *
   *	(p2) fnma.d.s1	f8=f2,f3,f7	# e = ah - y*g
   *	(p2) fnma.d.s1	f5=f3,f3,src    # d = x - g*g
   *	(p2) fma.d.s1	f2=f8,f6,f2	# y = y + e*y2
   *
   *	(p2) fma.d.s0   f6=f2,f5,f3	# result = g + y*d
   */
  // 3-mar-00/ken: this doesn't work for MTYPE_F10!!!!
}

static void
Expand_Intel_F10_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Max_Thr_F8_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Max_Thr_F4_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Min_Lat_F8_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Min_Lat_F4_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Max_Thr_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  switch (mtype) {
  case MTYPE_F4:
    Expand_Intel_Max_Thr_F4_Sqrt(result, src, ops);
    break;
  case MTYPE_F8:
    Expand_Intel_Max_Thr_F8_Sqrt(result, src, ops);
    break;
  case MTYPE_F10:
    Expand_Intel_F10_Sqrt(result, src, ops);
    break;
  default:
    FmtAssert(FALSE, ("Bad type in Expand_Intel_Max_Thr_Sqrt"));
    /*NOTREACHED*/
  }
}


static void
Expand_Intel_Min_Lat_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  switch (mtype) {
  case MTYPE_F4:
    Expand_Intel_Min_Lat_F4_Sqrt(result, src, ops);
    break;
  case MTYPE_F8:
    Expand_Intel_Min_Lat_F8_Sqrt(result, src, ops);
    break;
  case MTYPE_F10:
    Expand_Intel_F10_Sqrt(result, src, ops);
    break;
  default:
    FmtAssert(FALSE, ("Bad type in Expand_Intel_Min_Lat_Sqrt"));
    /*NOTREACHED*/
  }
}


void
Expand_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  FmtAssert( MTYPE_is_float(mtype),
	    ("Unimplemented sqrt for integer src/dest") );

  switch(mtype) {
  case MTYPE_V16F4:
    Build_OP(TOP_fsqrt128v32, result, src, ops);
    break;
  case MTYPE_V16F8:
    Build_OP(TOP_fsqrt128v64, result, src, ops);
    break;
  default:    
    if( MTYPE_is_quad(mtype) ||
	!Is_Target_SSE2() )
      Build_OP( TOP_fsqrt, result, src, ops);
    else
      Build_OP( mtype == MTYPE_F8 ? TOP_sqrtsd : TOP_sqrtss, result, src, ops);
    break;
  }
}


static void
Expand_Float_Compares(TOP set_opcode, 
		      TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  const BOOL is_double = MTYPE_is_size_double(mtype);
  const TOP top = ( MTYPE_is_quad(mtype) || !Is_Target_SSE2() )
    ? TOP_fucomi : ( is_double ? TOP_comisd : TOP_comiss );

  TN* rflags = Rflags_TN();
  if ( Force_IEEE_Comparisons && 
       ( set_opcode == TOP_setb || set_opcode == TOP_setbe ) )
    Build_OP( top, rflags, src2, src1, ops );
  else
    Build_OP( top, rflags, src1, src2, ops );

  TN *dest_tmp = Build_TN_Of_Mtype(MTYPE_U1);

  if ( Force_IEEE_Comparisons ) {
    if ( set_opcode == TOP_seta || set_opcode == TOP_setae )
      // We are as good before.
      Build_OP( set_opcode, dest_tmp, rflags, ops);
    else if ( set_opcode == TOP_setb || set_opcode == TOP_setbe )
      Build_OP( set_opcode == TOP_setb ? TOP_seta : TOP_setae, 
		dest_tmp, rflags, ops);
    else if ( set_opcode == TOP_sete ) {
      TN *dest_tmp1 = Build_TN_Of_Mtype(MTYPE_U1);
      TN *dest_tmp2 = Build_TN_Of_Mtype(MTYPE_U1);
      Build_OP( set_opcode, dest_tmp, rflags, ops );      
      Build_OP( TOP_setnp, dest_tmp1, rflags, ops );
      Build_OP (TOP_and8, dest_tmp2, dest_tmp, dest_tmp1, ops );
      dest_tmp = dest_tmp2;
    }
    else if (set_opcode == TOP_setne ) {
      TN *dest_tmp1 = Build_TN_Of_Mtype(MTYPE_U1);
      TN *dest_tmp2 = Build_TN_Of_Mtype(MTYPE_U1);
      Build_OP( set_opcode, dest_tmp, rflags, ops );      
      Build_OP( TOP_setp, dest_tmp1, rflags, ops );
      Build_OP (TOP_or8, dest_tmp2, dest_tmp, dest_tmp1, ops );
      dest_tmp = dest_tmp2;
    } else
      FmtAssert ( FALSE, ("NYI"));
  } else 
    Build_OP( set_opcode, dest_tmp, rflags, ops);

  if( Is_Target_32bit() &&
      TN_size(dest) == 8 ){
    Expand_Split_Cvtl( MTYPE_I8, TOP_movzbq, dest, dest_tmp, ops );

  } else {
    Build_OP( TN_size(dest) == 8 ? TOP_movzbq : TOP_movzbl,
	      dest, dest_tmp, ops );
  }
}

void
Expand_Float_Less (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
  Expand_Float_Compares(TOP_setb, dest, src1, src2, mtype, ops);
}

void
Expand_Float_Greater (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
  Expand_Float_Compares(TOP_seta, dest, src1, src2, mtype, ops);
}

void
Expand_Float_Less_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
  Expand_Float_Compares(TOP_setbe, dest, src1, src2, mtype, ops);
}

void
Expand_Float_Greater_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
  Expand_Float_Compares(TOP_setae, dest, src1, src2, mtype, ops);
}

void
Expand_Float_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
  Expand_Float_Compares(TOP_sete, dest, src1, src2, mtype, ops);
}

void
Expand_Float_Not_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
  Expand_Float_Compares(TOP_setne, dest, src1, src2, mtype, ops);
}

void
Expand_Recip_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  /*	(p0) frsqrta.s0 f2,p2=src	# y = ~1/sqrt(x)
   *
   *	(p2) ldfd	f4=half		# f4 = 0.5
   *	(p2) fmpy.d.s1	f5=f4,src	# hx = 0.5*x
   *
   *	(p2) fmpy.d.s1	f3=f2,f2	# y2 = y*y
   *	(p2) fnma.d.s1	f6=f5,f3,f4	# z = 0.5 - 0.5*x*y*y
   *	(p2) fma.d.s1   f2=f2,f6,f2	# y = y + y*z
   *
   *	(p2) fmpy.d.s1	f3=f2,f2	# y2 = y*y
   *	(p2) fnma.d.s1	f6=f5,f3,f4	# z = 0.5 - 0.5*x*y*y
   *	(p2) fma.d.s1   f2=f2,f6,f2	# y = y + y*z
   *
   *	(p2) fmpy.d.s1	f3=f2,f2	# y2 = y*y
   *	(p2) fnma.d.s1	f6=f5,f3,f4	# z = 0.5 - 0.5*x*y*y
   *	(p2) fma.d.s0   f2=f2,f6,f2	# result = y + y*z
   */
  FmtAssert( false, ("NYI") );
}


/* Don't use TOP_rcpss, which gives non-accurate result. */
static void Expand_Recip( TN* result, TN* src2, TYPE_ID mtype, OPS* ops )
{
  const BOOL is_double = MTYPE_is_size_double(mtype);

  if( ( Recip_Allowed ||
        ( Div_Split_Allowed && mtype == MTYPE_V16F4 ) ) &&
      Is_Target_SSE2() ){
    if ( mtype == MTYPE_V16F4 ) {
      Build_OP( TOP_frcp128v32, result, src2, ops);
      return;
    } else if ( !MTYPE_is_quad(mtype) && !is_double ) {
      Build_OP( TOP_rcpss, result, src2, ops );
      return;
    }
  }
    
  TN* src1 = Build_TN_Like( src2 );
  TCON tcon = MTYPE_is_quad(mtype)
    ? Host_To_Targ_Quad( 1.0 ) : Host_To_Targ_Float( mtype, 1.0 );
  ST* sym = New_Const_Sym( Enter_tcon(tcon),  Be_Type_Tbl( TCON_ty(tcon) ) );

  ST* base_sym = NULL;
  INT64 base_ofst = 0;

  Allocate_Object(sym);
  Base_Symbol_And_Offset_For_Addressing( sym, 0, &base_sym, &base_ofst );

  Expand_Const( src1, Gen_Symbol_TN( base_sym, base_ofst, TN_RELOC_NONE ), mtype, ops );

  const BOOL non_sse2_fp = MTYPE_is_quad(mtype) || !Is_Target_SSE2();
  Build_OP( non_sse2_fp ? TOP_fdiv : ( is_double ? TOP_divsd : TOP_divss ),
	    result, src1, src2, ops );
}


void Expand_Flop( OPCODE opcode, TN *result, TN *src1, TN *src2, TN *src3, OPS *ops )
{
  TOP opc;

  switch (opcode) {
  case OPC_F4ADD:
    if( Is_Target_SSE2() ){
      opc = TOP_addss;
      break;
    }  /* fall thru */
  case OPC_F8ADD:
    if( Is_Target_SSE2() ){
      opc = TOP_addsd;
      break;
    }  /* fall thru */
  case OPC_FQADD:
    opc = TOP_fadd;
    break;
  case OPC_V16F4ADD:
    opc = TOP_fadd128v32;
    break;
  case OPC_V16F8ADD:
    opc = TOP_fadd128v64;
    break;
  case OPC_F4SUB:
    if( Is_Target_SSE2() ){
      opc = TOP_subss;
      break;
    }  /* fall thru */
  case OPC_F8SUB:
    if( Is_Target_SSE2() ){
      opc = TOP_subsd;
      break;
    }  /* fall thru */
  case OPC_FQSUB:
    opc = TOP_fsub;
    break;
  case OPC_V16F4SUB:
    opc = TOP_fsub128v32;
    break;
  case OPC_V16F8SUB:
    opc = TOP_fsub128v64;
    break;
  case OPC_F4MPY:
    if( Is_Target_SSE2() ){
      opc = TOP_mulss;
      break;
    }  /* fall thru */
  case OPC_F8MPY:
    if( Is_Target_SSE2() ){
      opc = TOP_mulsd;
      break;
    }  /* fall thru */
  case OPC_FQMPY:
    opc = TOP_fmul;
    break;
  case OPC_V16F4MPY:
    opc = TOP_fmul128v32;
    break;
  case OPC_V16F8MPY:
    opc = TOP_fmul128v64;
    break;
  case OPC_F4MADD:	// (src2 * src3) + src1
  case OPC_F4NMADD:	// -((src2 * src3) + src1)
  case OPC_F4MSUB:	// (src2 * src3) - src1
  case OPC_F4NMSUB:	// -((src2 * src3) - src1)
  case OPC_F8MADD:	// (src2 * src3) + src1
  case OPC_F8NMADD:	// -((src2 * src3) + src1)
  case OPC_F8MSUB:	// (src2 * src3) - src1
  case OPC_F8NMSUB:	// -((src2 * src3) - src1)
    FmtAssert( false, ("NYI") );
    break;
  case OPC_F4DIV:
    if( Is_Target_SSE2() ){
      opc = TOP_divss;
      break;
    }  /* fall thru */
  case OPC_F8DIV:
    if( Is_Target_SSE2() ){
      opc = TOP_divsd;
      break;
    }  /* fall thru */
  case OPC_FQDIV:
    opc = TOP_fdiv;
    break;
  case OPC_V16F4DIV:
    opc = TOP_fdiv128v32;
    break;
  case OPC_V16F8DIV:
    opc = TOP_fdiv128v64;
    break;
  case OPC_F4RECIP:
  case OPC_F8RECIP:
  case OPC_FQRECIP:
  case OPC_V16F4RECIP:
    Expand_Recip( result, src1, OPCODE_rtype(opcode), ops );
    return;
  case OPC_F4RSQRT:
    opc = TOP_rsqrtss;
    break;
  case OPC_V16F4RSQRT:
    opc = TOP_frsqrt128v32;
    break;

  default:
    #pragma mips_frequency_hint NEVER
    FmtAssert(FALSE, ("Unimplemented flop: %s", OPCODE_name(opcode)));
  }

  Build_OP( opc, result, src1, src2, ops );
}

void
Expand_Replicate (OPCODE op, TN *result, TN *op1, OPS *ops)
{
  TN* tmp = Build_TN_Like(result);

  switch (op) {
  case OPC_V16I8I8REPLICA:
  {
    TY_IDX ty = MTYPE_To_TY( MTYPE_I8 );
    ST* st = Gen_Temp_Symbol( ty, "movd" );
    Allocate_Temp_To_Memory( st );
    Exp_Store( MTYPE_I8, op1, st, 0, ops, 0);
    Exp_Load( MTYPE_F8, MTYPE_F8, tmp, st, 0, ops, 0);
    Expand_Copy(result, tmp, MTYPE_F8, ops);
    Build_OP(TOP_unpcklpd, result, result, tmp, ops);
    break;
  }
  case OPC_V16F8F8REPLICA:
    Expand_Copy(result, op1, MTYPE_F8, ops);
    Build_OP(TOP_unpcklpd, result, result, op1, ops);
    break;
  case OPC_V16I4I4REPLICA:
  {
    TY_IDX ty = MTYPE_To_TY( MTYPE_I4 );
    ST* st = Gen_Temp_Symbol( ty, "movd" );
    Allocate_Temp_To_Memory( st );
    Exp_Store( MTYPE_I4, op1, st, 0, ops, 0);
    Exp_Load( MTYPE_F4, MTYPE_F4, tmp, st, 0, ops, 0);
    Expand_Copy(result, tmp, MTYPE_F4, ops);
    Build_OP(TOP_unpcklps, result, result, tmp, ops);
    Build_OP(TOP_unpcklps, result, result, result, ops);
    break;
  }
  case OPC_V16F4F4REPLICA:
    Expand_Copy(result, op1, MTYPE_F4, ops);
    Build_OP(TOP_unpcklps, result, result, op1, ops);
    Build_OP(TOP_unpcklps, result, result, result, ops);
    break;
  default:
    FmtAssert(FALSE, ("Handle this case"));
    break;
  }
  return;
}

extern void
Init_CG_Expand (void)
{
  static BOOL Initialized = FALSE;

  // per PU:
  Trace_Exp = Get_Trace (TP_CGEXP, 1);
  /* whirl2ops uses -ttexp:2 */
  Trace_Exp2 = Get_Trace (TP_CGEXP, 4);
  Disable_Const_Mult_Opt = Get_Trace (TP_CGEXP, 32);
  
  if (Initialized) return;
  Initialized = TRUE;
  // once per file:
  Initialize_Branch_Variants();
}


/* ======================================================================
 * Exp_COPY_Ext
 * 
 * Generate a register transfer copy from 'src_tn' to 'tgt_tn' with
 * appropriate sign/zero extension.
 * ======================================================================*/
void 
Exp_COPY_Ext (TOP opcode, TN *tgt_tn, TN *src_tn, OPS *ops)
{
  TOP new_op;
  switch (opcode) {
  case TOP_ldx8_32:
  case TOP_ldxx8_32:
  case TOP_ld8_32_n32:
  case TOP_ld8_32:
    new_op = TOP_movsbl;
    break;
  case TOP_ldu8_32_n32:
  case TOP_ldu8_32:
  case TOP_ldxu8_32:
  case TOP_ldxxu8_32:
    new_op = TOP_movzbl;
    break;
  case TOP_ld16_32_n32:
  case TOP_ld16_32:
  case TOP_ldx16_32:
  case TOP_ldxx16_32:
    new_op = TOP_movswl;
    break;
  case TOP_ldu16_32_n32:
  case TOP_ldu16_32:
  case TOP_ldxu16_32:
  case TOP_ldxxu16_32:
    new_op = TOP_movzwl;
    break;
  case TOP_ld8_64:
  case TOP_ldx8_64:
  case TOP_ldxx8_64:
    new_op = TOP_movsbq;
    break;
  case TOP_ldu8_64:
  case TOP_ldxu8_64:
  case TOP_ldxxu8_64:
    new_op = TOP_movzbq;
    break;
  case TOP_ld16_64:
  case TOP_ldx16_64:
  case TOP_ldxx16_64:
    new_op = TOP_movswq;
    break;
  case TOP_ldu16_64:
  case TOP_ldxu16_64:
  case TOP_ldxxu16_64:
    new_op = TOP_movzwq;
    break;
  case TOP_ld32_64:
  case TOP_ldx32_64:
  case TOP_ldxx32_64:
    new_op = TOP_movslq;
    break;

  default:
    FmtAssert( FALSE, ("NYI") );
  }
  Build_OP( new_op, tgt_tn, src_tn, ops );
  // TODO: Are the extensions copies?
  // Set_OP_copy (OPS_last(ops));
}

/* ======================================================================
 * Exp_COPY
 * 
 * Generate a register transfer copy from 'src_tn' to 'tgt_tn'. 
 * ======================================================================*/
void 
Exp_COPY (TN *tgt_tn, TN *src_tn, OPS *ops)
{
  // src_tn and tgt_tn have to be of same size; we will use src_tn to derive
  // move type.
  const BOOL is_64bit = (TN_size(src_tn) == 8);
  const BOOL is_128bit = (TN_size(src_tn) == 16);

  if( TN_is_constant(src_tn) ){
    FmtAssert (TN_has_value(src_tn), ("Exp_COPY: illegal source tn"));
    /* expansion for INTCONST doesn't depend on size */
    Exp_OP1 (OPC_I4INTCONST, tgt_tn, src_tn, ops);

  } else {
    ISA_REGISTER_CLASS tgt_rc = TN_register_class(tgt_tn);
    ISA_REGISTER_CLASS src_rc = TN_register_class(src_tn);

    if (tgt_rc == src_rc && tgt_rc == ISA_REGISTER_CLASS_integer) {
      Build_OP( is_64bit ? TOP_mov64 : TOP_mov32, tgt_tn, src_tn, ops );
      Set_OP_copy (OPS_last(ops));

    } else if (tgt_rc == src_rc && tgt_rc == ISA_REGISTER_CLASS_float) {
      /* dedicated TNs always have size 8, so need to check both TNs */
      Build_OP(is_128bit ? TOP_movdq: (is_64bit ? TOP_movsd : TOP_movss), 
	       tgt_tn, src_tn, ops);
      Set_OP_copy (OPS_last(ops));

    } else if( tgt_rc == src_rc && tgt_rc == ISA_REGISTER_CLASS_x87 ){
      Build_OP( TOP_fmov, tgt_tn, src_tn, ops );
      Set_OP_copy (OPS_last(ops));

    } else if( tgt_rc == ISA_REGISTER_CLASS_x87 &&
	       src_rc == ISA_REGISTER_CLASS_float ){
      Expand_Float_To_Float( tgt_tn, src_tn, MTYPE_FQ,
			     TN_size(src_tn) == 8 ? MTYPE_F8 : MTYPE_F4,
			     ops );

    } else if( tgt_rc == ISA_REGISTER_CLASS_float &&
	       src_rc == ISA_REGISTER_CLASS_x87 ){
      Expand_Float_To_Float( tgt_tn, src_tn,
			     TN_size(tgt_tn) == 8 ? MTYPE_F8 : MTYPE_F4,
			     MTYPE_FQ,
			     ops );

    } else if( tgt_rc == ISA_REGISTER_CLASS_integer &&
	       src_rc == ISA_REGISTER_CLASS_float ){
      // Exposed by Bug 955
      Expand_Float_To_Int_Trunc( tgt_tn, src_tn, 
				 TN_size(tgt_tn) == 8 ? MTYPE_I8 : MTYPE_I4,
				 TN_size(src_tn) == 8 ? MTYPE_F8 : MTYPE_F4,
				 ops );

    } else {
      /* dedicated TNs always have size 8, so need to check both TNs */
      FmtAssert( FALSE, ("UNIMPLEMENTED") );
#if 0
      if (src_rc == ISA_REGISTER_CLASS_integer) { // tgt_tc is float class
	Build_OP(is_double ? TOP_dmtc1 : TOP_mtc1, tgt_tn, src_tn, ops);
      } else if (src_rc == ISA_REGISTER_CLASS_float) { // tgt_tc is integer class
	Build_OP(is_double ? TOP_dmfc1 : TOP_mfc1, tgt_tn, src_tn, ops);
      } else {
	FmtAssert(FALSE, ("Unimplemented Copy.\n"));
      }
#endif
    }
  }
}

static ST *tmp_apply_arg = NULL;
void
Generate_Temp_Apply_Arg ( )
{
  TY_IDX tyi;
  TY& ty = New_TY(tyi);
  TY_Init(ty, 144, KIND_STRUCT, MTYPE_M,
          Save_Str("__apply_arg"));
  Set_TY_align(tyi, 8);
  tmp_apply_arg = New_ST(CURRENT_SYMTAB);
  ST_Init(tmp_apply_arg, TY_name_idx(ty),
          CLASS_VAR, SCLASS_AUTO, EXPORT_LOCAL, tyi);
  Set_ST_is_temp_var(tmp_apply_arg);
  Allocate_Object(tmp_apply_arg);
}

void
Exp_Intrinsic_Op (INTRINSIC id, TN *result, TN *op0, TN *op1, TYPE_ID mtype, OPS *ops)
{
  TN* rflags = Rflags_TN();
  TN *result_tmp = Build_TN_Like(result);
  const BOOL is_double = MTYPE_is_size_double(mtype);
  const TOP cmp_opcode = ( MTYPE_is_quad(mtype) || !Is_Target_SSE2() )
    ? TOP_fucomi : ( is_double ? TOP_comisd : TOP_comiss );

  switch ( id ) {
  default: FmtAssert( FALSE, ("NYI") ); 
  case INTRN_SUBSU2:
    {
      TN* tmp1 = Build_TN_Like(result);
      TN* tmp2 = Build_TN_Like(result);
      TN* rflags = Rflags_TN();
      Build_OP( TOP_movzwl, tmp1, op0, ops );
      Build_OP( TOP_sub32, tmp2, tmp1, op1, ops );
      Exp_Immediate( result, Gen_Literal_TN (0, 4), FALSE, ops );
      Build_OP( TOP_cmpi32, rflags, tmp2, Gen_Literal_TN(0, 4), ops );
      Build_OP( TOP_cmovg, result, tmp2, rflags, ops );
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      break;
    }
  case INTRN_SUBSV16I2:
    Build_OP( TOP_subus128v16, result, op0, op1, ops );
    break;
  case INTRN_ISGREATER:
    Build_OP( cmp_opcode, rflags, op1, op0, ops );
    Build_OP( TOP_seta, result_tmp, rflags, ops );
    break;
  case INTRN_ISGREATEREQUAL:
    Build_OP( cmp_opcode, rflags, op1, op0, ops );
    Build_OP( TOP_setae, result_tmp, rflags, ops );
    break;
  case INTRN_ISLESS:
    Build_OP( cmp_opcode, rflags, op0, op1, ops );
    Build_OP( TOP_seta, result_tmp, rflags, ops );
    break;
  case INTRN_ISLESSEQUAL:
    Build_OP( cmp_opcode, rflags, op0, op1, ops );
    Build_OP( TOP_setae, result_tmp, rflags, ops );
    break;
  case INTRN_ISLESSGREATER:
    Build_OP( cmp_opcode, rflags, op1, op0, ops );
    Build_OP( TOP_setne, result_tmp, rflags, ops );
    break;
  case INTRN_ISUNORDERED:
    Build_OP( cmp_opcode, rflags, op1, op0, ops );
    Build_OP( TOP_setp, result_tmp, rflags, ops );
    break;
  }
  if (id <= INTRN_ISUNORDERED && id >= INTRN_ISGREATER )
    Build_OP( TN_size(result) == 4 ? TOP_mov32 : TOP_mov64, 
    	      result, result_tmp, ops);
  return;
}

/* ======================================================================
 * Expand_TOP_intrncall
 * 
 * Given a TOP_intrncall <op>, expand it into the sequence of instructions 
 * that must be generated. If <get_sequence_length> is TRUE, return only
 * the number of instructions in the sequence and don't actually do the 
 * expansion.
 * ======================================================================*/
static INT
Expand_TOP_intrncall (
  const OP *op, 
  OPS *ops, 
  BOOL get_sequence_length,
  INT pc_value)
{
  FmtAssert(FALSE, ("Expand_TOP_intrncall NYI"));
  return 0;
}

static TYPE_ID
Get_Intrinsic_Size_Mtype (INTRINSIC id)
{
  switch (id) {
  case INTRN_COMPARE_AND_SWAP_I4:
  case INTRN_LOCK_TEST_AND_SET_I4:
  case INTRN_LOCK_RELEASE_I4:
  case INTRN_FETCH_AND_ADD_I4:
  case INTRN_ADD_AND_FETCH_I4:
  case INTRN_SUB_AND_FETCH_I4:
  case INTRN_OR_AND_FETCH_I4:
  case INTRN_XOR_AND_FETCH_I4:
  case INTRN_AND_AND_FETCH_I4:
  case INTRN_NAND_AND_FETCH_I4:
  case INTRN_FETCH_AND_SUB_I4:
  case INTRN_FETCH_AND_OR_I4:
  case INTRN_FETCH_AND_XOR_I4:
  case INTRN_FETCH_AND_AND_I4:
  case INTRN_FETCH_AND_NAND_I4:
	return MTYPE_I4;
  case INTRN_COMPARE_AND_SWAP_I8:
  case INTRN_LOCK_TEST_AND_SET_I8:
  case INTRN_LOCK_RELEASE_I8:
  case INTRN_FETCH_AND_ADD_I8:
  case INTRN_ADD_AND_FETCH_I8:
  case INTRN_SUB_AND_FETCH_I8:
  case INTRN_OR_AND_FETCH_I8:
  case INTRN_XOR_AND_FETCH_I8:
  case INTRN_AND_AND_FETCH_I8:
  case INTRN_NAND_AND_FETCH_I8:
  case INTRN_FETCH_AND_SUB_I8:
  case INTRN_FETCH_AND_OR_I8:
  case INTRN_FETCH_AND_XOR_I8:
  case INTRN_FETCH_AND_AND_I8:
  case INTRN_FETCH_AND_NAND_I8:
  case INTRN_SYNCHRONIZE:
	return MTYPE_I8;
  default:
  	FmtAssert(FALSE, ("Unexpected intrinsic %d", id));
	return MTYPE_UNKNOWN;
  }
}

static BOOL
Intrinsic_Returns_New_Value (INTRINSIC id)
{
  switch (id) {
  case INTRN_ADD_AND_FETCH_I4:
  case INTRN_SUB_AND_FETCH_I4:
  case INTRN_OR_AND_FETCH_I4:
  case INTRN_XOR_AND_FETCH_I4:
  case INTRN_AND_AND_FETCH_I4:
  case INTRN_NAND_AND_FETCH_I4:
  case INTRN_ADD_AND_FETCH_I8:
  case INTRN_SUB_AND_FETCH_I8:
  case INTRN_OR_AND_FETCH_I8:
  case INTRN_XOR_AND_FETCH_I8:
  case INTRN_AND_AND_FETCH_I8:
  case INTRN_NAND_AND_FETCH_I8:
	return TRUE;
  default:
	return FALSE;
  }
}

// initial expansion of intrinsic call (may not be complete lowering).
// return result TN (if set).
// If the intrinsic requires a label and loop (2 bb's)
// then ops is for first bb and ops2 is for bb after the label.
// Otherwise only ops is filled in.
TN *
Exp_Intrinsic_Call (INTRINSIC id, TN *op0, TN *op1, TN *op2, OPS *ops, 
	LABEL_IDX *label, OPS *loop_ops)
{
  FmtAssert( FALSE, ("UNIMPLEMENTED") );
  return NULL;
}

/* Expansion of INTRN_SAVEXMMS into TOP_savexmms pseudo instruction */
void
Exp_Savexmms_Intrinsic(WN *intrncall, TN *rax_tn, LABEL_IDX *label, OPS *ops) 
{
  TN *ofst_tn;
  ST *base_sym = NULL;
  INT64 base_ofst = 0;
  INT num_xmms = WN_const_val(WN_kid0(WN_kid1(intrncall)));
  TN *tn1 = Gen_Literal_TN(num_xmms, 4);
  WN *lda = WN_kid0(WN_kid2(intrncall));
  FmtAssert(WN_operator(lda) == OPR_LDA, 
      ("Exp_savexmms_Intrinsic: unexpected operand for SAVE_XMMS intrinsic"));
  Base_Symbol_And_Offset_For_Addressing(WN_st(lda), WN_lda_offset(lda),
	  				&base_sym, &base_ofst);
  FmtAssert(base_sym == SP_Sym || base_sym == FP_Sym,
      ("Exp_savexmms_Intrinsic: unexpected addresses in SAVE_XMMS intrinsic"));
  TN *base_tn = (base_sym == SP_Sym) ? SP_TN : FP_TN;
  if (base_sym == WN_st(lda))
    ofst_tn = Gen_Literal_TN(base_ofst, 4);
  else ofst_tn = Gen_Symbol_TN(WN_st(lda), WN_lda_offset(lda), 0);
  *label = Gen_Temp_Label();
  TN *r11_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer, R11, 8);
  Build_OP(TOP_savexmms, rax_tn, tn1, base_tn, ofst_tn, Gen_Label_TN(*label, 0),
	   r11_tn, ops);
}


/* ======================================================================
 * Exp_Simulated_Op
 *
 * Given a simulated <op>, expand it into the sequence of instructions
 * supported by the target.
 * ======================================================================*/
void Exp_Simulated_Op(const OP *op, OPS *ops, INT pc_value)
{
  TOP top = OP_code(op);
  BB *bb = OP_bb(op);

  switch (top)
  {
  case TOP_savexmms: {
      FmtAssert(BB_last_op(OP_bb(op)) == op, 
	    ("Exp_Simulated_Op: savexmms must be last instruction in the BB"));
      TN *rax_tn = OP_opnd(op, 0);
      INT64 num_xmms = TN_value(OP_opnd(op, 1));
      TN *r11_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer, R11, 8);
      Build_OP(TOP_leaxx64, r11_tn, rax_tn, Gen_Literal_TN(4, 4), 
	       Gen_Literal_TN(4*(num_xmms-8), 4), ops);
      Build_OP(TOP_neg64, r11_tn, r11_tn, ops);
      if ( Gen_PIC_Shared ) {
	TN* r10_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer, R10, 8);
	Build_OP ( TOP_lea64, r10_tn, Rip_TN(), OP_opnd( op, 4 ), ops );
	Build_OP ( TOP_leax64, r11_tn, r11_tn, r10_tn, 
		   Gen_Literal_TN( 1, 4 ), 
		   Gen_Literal_TN( 0, 4 ), ops );
      } else {
	Build_OP(TOP_addi64, r11_tn, r11_tn, OP_opnd(op, 4), ops);
      }
      ops->last->bb = bb; // to pass Verify_Operand
      Build_OP(TOP_lea64, rax_tn, OP_opnd(op, 2), OP_opnd(op, 3), ops);
      Build_OP(TOP_ijmp, r11_tn, ops);
      for (INT i = 1; i <= num_xmms; i++) {
        Build_OP(TOP_staps, PREG_To_TN(Int_Preg, XMM0+(8-i)), 
	         rax_tn, Gen_Literal_TN(16 * (num_xmms-i), 4), ops);
      }
      break;
    }
  default:
    FmtAssert(FALSE, ("simulated OP %s not handled", TOP_Name(top)));
  }
}


/* ======================================================================
 * Simulated_Op_Real_Ops
 *
 * Return the number of instructions that will be generated by Exp_Simulated_Op
 * ======================================================================*/
INT
Simulated_Op_Real_Ops(const OP *op)
{
  switch (OP_code(op)) {
  case TOP_intrncall:
    return Expand_TOP_intrncall (op, NULL, TRUE, 0);
  case TOP_spadjust:
    return 1;
  default:

    /* Anything other than the above is presumed to be removed by
     * emit time, therefore we just say the expansion generates 0 ops.
     * (we used to assert, but that isn't a good solution -- see pv 652898).
     */
    return 0;
  }
}


/* ======================================================================
 * Simulated_Op_Real_Inst_Words
 *
 * Return the number of instruction words that will ultimately be emitted
 * for the expansion generated by Exp_Simulated_Op
 * ======================================================================*/
INT
Simulated_Op_Real_Inst_Words(const OP *op)
{
  INT num_bytes = 0;
  TOP top = OP_code(op);

  switch (top)
  {
  case TOP_spadjust:
    return 1;
  case TOP_asm:
    /* We don't know how many instructions are "within" the asm, so we
       just assume 3 bytes. */
    num_bytes = 3;
    break;
  case TOP_savexmms:
    num_bytes = 5 + (INT32)TN_value(OP_opnd(op, 1));
    break;

  default:
    FmtAssert(FALSE, ("simulated OP %s not handled", TOP_Name(OP_code(op))));
  }

  return num_bytes;
}


/* ======================================================================
 * Exp_Is_Large_Stack_Sym
 *
 * determine if a given symbol is a stack relative reference that will
 * require multiple instructions to load or store.
 * ======================================================================*/
BOOL
Exp_Is_Large_Stack_Sym(ST* sym,  INT64 ofst)
{
  ST *base_sym;
  INT64 base_ofst;
  
  if (sym == NULL)
    return FALSE;

  Allocate_Object(sym);
  Base_Symbol_And_Offset_For_Addressing (sym, ofst, &base_sym, &base_ofst);

  /* We can assume that 'sym' is a spill location for an integer
     register, so we can check for l32i/s32i range. */
  
  if ((base_sym == SP_Sym || base_sym == FP_Sym) &&
      !ISA_LC_Value_In_Class(base_ofst, LC_simm32)) {
    return TRUE;
  }

  return FALSE;
}

void Exp_Noop (OPS *ops)
{
  Build_OP (CGTARG_Noop_Top(), ops);
}

void Expand_Const (TN *dest, TN *src, TYPE_ID mtype, OPS *ops)
{
  FmtAssert( TN_is_symbol(src), ("Expand_Const: src not a symbol TN") );
  if (CG_use_xortozero && 
      ST_class(TN_var(src)) == CLASS_CONST) {
    TCON tcon = STC_val(TN_var(src));
    if (TCON_ty(tcon) == MTYPE_F4 && TCON_fval(tcon) == 0.0) {
      FmtAssert(TCON_ty(tcon) == mtype, 
		("Expand_Const: inconsistent mtypes"));
      Build_OP(TOP_xzero32, dest, ops);
      return;
    }
    if (TCON_ty(tcon) == MTYPE_F8 && TCON_dval(tcon) == 0.0) {
      FmtAssert(TCON_ty(tcon) == mtype, 
		("Expand_Const: inconsistent mtypes"));
      Build_OP(TOP_xzero64, dest, ops);
      return;
    }
  }
  Exp_Load( mtype, mtype, dest, TN_var(src), TN_offset(src), ops, 0 );
}

static BB* last_bb = NULL;
static TN *last_true_tn = NULL, *last_false_tn = NULL;
void
HB_Reinit_Pred ()
{
  last_true_tn = NULL;
  last_false_tn = NULL;
  last_bb = NULL;
}

void
Exp_True_False_Preds_For_Block(BB *bb, TN* &true_tn, TN * &false_tn)
{ 
  if (last_bb != bb)
    last_bb = bb;
  else {
    true_tn = last_true_tn;
    false_tn = last_false_tn;
    return;
  }
  OP* br_op = BB_branch_op(bb);
  if (!br_op)
    return;

  FmtAssert( FALSE, ("UNIMPLEMENTED") );
}

BOOL
Target_Has_Immediate_Operand (WN *parent, WN *expr)
{
  OPERATOR opr = WN_operator(parent);
  return opr == OPR_ADD || opr == OPR_SUB || opr == OPR_EQ ||
         opr == OPR_BAND || opr == OPR_BIOR || opr == OPR_BXOR ||
         opr == OPR_LT || opr == OPR_LE || opr == OPR_GT || opr == OPR_GE ||
         opr == OPR_LSHR || opr == OPR_ASHR || opr == OPR_SHL;
}

void 
Exp_Spadjust (TN *dest, TN *size, VARIANT variant, OPS *ops)
{
  Build_OP (TOP_spadjust, dest, SP_TN, size, ops);
  OP_variant(OPS_last(ops)) = variant;
}

/* Return a unique name for a symbol representing a literal. */
char *
Exp_Unique_Literal_Name (void)
{
  static int unique;
  static char name[32];

  sprintf(name, ".LC%d", unique);
  unique++;
  return name;
}

void
Exp_Generic_Pred_Calc(TN* result1, TN *result2, COMPARE_TYPE ctype,
                      TN *qual_pred, OPS* ops)
{ FmtAssert(FALSE,("Unimplemented")); }
  
  
void
Exp_Pred_Calc(TN* result, OP* cmp_op, COMPARE_TYPE ctype, BOOL false_result,
	      OPS* ops)
{ FmtAssert(FALSE,("Unimplemented")); }


void
Exp_Landingpadentry_Intrinsic (ST *result1, ST *result2, OPS *ops)
{
  const int size = Is_Target_64bit() ? 8 : 4;
  const TYPE_ID mtype = Is_Target_64bit() ? 8 : 4;
  TN *tn1 = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer, RAX, size);
  Exp_Store (mtype, tn1, result1, 0, ops, 0);

  TN *tn2 = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer, RDX, size);
  Exp_Store (mtype, tn2, result2, 0, ops, 0);
}
