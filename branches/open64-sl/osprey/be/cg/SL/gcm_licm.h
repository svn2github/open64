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
 
//-*-c++-*-

 /* =========================================================================
  * =========================================================================
  * 
  * Module: loop_invar_hoist.h 
  * $Revision: 1.1.1.1 $
  * $Date: 2005/10/21 19:00:00 $ 
  * $Author: marcel $
  * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_ict/loop_invar_hoist.h,v $
  *
  * Revision comments:
  * 
  *    14-April-2003 - Initial version
  * 
  * ref the header of loop_invar_hoist.cxx for more descriptions. 
  *
  * =========================================================================
  * =========================================================================
  */
extern void Perform_Loop_Invariant_Code_Motion( LOOP_DESCR*, MEM_POOL*, BOOL );

#define OP_is_loop(o) (OP_code(o)==TOP_loop)
#define OP_is_mvtc(o) ( (OP_code(o)==TOP_mvtc_i) || (OP_code(o)==TOP_mvtc) )

static BOOL
Is_BB_Empty (BB *bb)
{
  for (OP *op = BB_first_op(bb); op != NULL; op = OP_next(op)) {
    if (OP_Real_Ops(op) != 0) return FALSE;
  }
  return TRUE;
}

static OP* BB_loop_op( BB *bb )
{
  OP *loop = NULL;
  FOR_ALL_BB_OPs_REV( bb, loop ){
    if( OP_is_loop(loop) )
      break;
  }
  return loop;
}


