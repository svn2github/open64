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


#ifndef calls_INCLUDED
#define calls_INCLUDED

/* ====================================================================
 * ====================================================================
 *
 * Module: calls.h
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/calls.h,v $
 *
 * Revision history:
 *  03-Oct-91 - Original Version
 *  24-Oct-91 - Added support for entry/exit code.
 *
 * Description:
 *
 * General support for call-related functionality in the back end.
 *
 * Defines a descriptor for calls, to be used to contain such
 * information as which registers are actually used to pass parameters,
 * which registers are killed by the call, and so on.
 *
 * At this time, the contents of this descriptor are minimal; it is
 * expected to expand when we add inter-procedural register allocation
 * or similar features.
 *
 * TODO:  should change this to entry_exit.{h,cxx} to reflect real usage.
 *
 * ====================================================================
 * ====================================================================
 */


/* for ST */
#include "symtab.h"
#include "wn.h"

/* ================================================================= */

/* Incomplete types to keep ANSI happy: */
struct bb;
struct op;

/* frame length */
extern INT64 Frame_Len;
extern void Set_Frame_Len (INT64 val);		// sets spadjust TN values

/* ================================================================= */

/* We need to keep track of the callee-saved registers for save/restore
 * purposes.  For this purpose, we keep an array of structures (with
 * size determined by the actual number of callee saved regs) which
 * maps each callee-saved register to a "save-tn". We keep track of 
 * the return-address register the same way.
 */
typedef struct save_reg {
  struct tn 	*ded_tn; /* the dedicated TN for the callee-saved register */
  struct tn	*sv_tn;	 /* the save-tn for the callee-saved register */
} SAVE_REG;

/* Define the access macros, including indirect TN access: */
#define SAVE_ded_tn(s)	((s)->ded_tn)
#define SAVE_tn(s)	((s)->sv_tn)

/* Return address register map: */
extern SAVE_REG *Return_Address_Reg;

/* Callee saved register map: */
extern SAVE_REG *Callee_Saved_Regs;	/* Really an array */
extern INT32 Callee_Saved_Regs_Count;	/* Size of array */
#define CALLEE_ded_tn(s)	SAVE_ded_tn(Callee_Saved_Regs+s)
#define CALLEE_tn(s)		SAVE_tn(Callee_Saved_Regs+s)

/* Special PREGs corresponding to special TNs */
extern PREG_NUM *Callee_Saved_Pregs;
extern PREG_NUM Caller_FP_Preg;
extern PREG_NUM Caller_GP_Preg;
extern PREG_NUM Return_Preg;
extern PREG_NUM GP_Preg;
extern PREG_NUM Return_Int_Preg[2];
extern PREG_NUM Return_Float_Preg[2];

/* assign a special preg to each CALLEE_tn.  also ra, and gp */
extern void Init_Callee_Saved_Regs_for_REGION( ST *pu, BOOL is_region );

/* Init subprogram entry/exit code: */
extern void Init_Entry_Exit_Code ( WN *pu_wn);

/* Produce subprogram entry/exit code: */
extern void Generate_Entry_Exit_Code ( ST* pu, BOOL is_region );
extern void Adjust_Entry_Exit_Code ( ST* pu );
extern void Adjust_GP_Setup_Code ( ST* pu, BOOL allocate_registers );
extern void Adjust_LC_Setup_Code ( void);
extern BOOL LC_Used_In_PU;	/* flag whether LC_TN was used */

/* Cycle Count Call */
extern void Cycle_Count_Initialize ( ST *pu, BOOL is_region );  

/* Instrument code to call _mcount */
extern void Instru_Call_Mcount(void );

/* Tail calls: */
extern void Optimize_Tail_Calls( ST* pu );

#endif /* calls_INCLUDED */
