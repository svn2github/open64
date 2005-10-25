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
 * Module: tnutil.c
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/tnutil.cxx,v $
 *
 * Description:
 *
 * Utility functions for support of the TN data structure.
 * Prototypes are in tn.h.
 *
 * ====================================================================
 * ====================================================================
 */

#ifdef USE_PCH
#include "cg_pch.h"
#endif // USE_PCH
#pragma hdrstop

#include "defs.h"
#include "config.h"
#include "erglob.h"
#include "xstats.h"
#include "tracing.h"

#include "strtab.h"
#include "tn.h"
#include "tn_list.h"
#include "ttype.h"

#include "const.h"
#include "targ_const.h"
#include "targ_sim.h"

#include "reg_live.h"
#include "gra_live.h"
#include "op_list.h"
#include "hb_hazards.h"
#include "register.h"
#include "targ_isa_registers.h"
#include "targ_proc_properties.h"
#include "targ_isa_enums.h"
#include "stblock.h"
#include "data_layout.h"	// for FP/SP


#define DEFAULT_RCLASS_SIZE(rc)	\
	(REGISTER_bit_size(rc, REGISTER_CLASS_last_register(rc))/8)

/* ====================================================================
 *
 * Global data objects
 *
 * ====================================================================
 */

/* Various dedicated TNs: */
TN *RA_TN;
TN *SP_TN;
TN *FP_TN;
TN *Ep_TN;
TN *GP_TN;
TN *Zero_TN;
TN *Pfs_TN;
TN *True_TN;
TN *FZero_TN;
TN *FOne_TN;
TN *LC_TN;

/* The register TNs are in a table named TNvec, indexed by their TN
 * numbers in the range 1..Last_TN.  The first part of the table, the
 * range 1..Last_Dedicated_TN, consists of TNs for various dedicated
 * purposes (e.g. stack pointer, zero, physical registers).  It is
 * followed by TNs for user variables and compiler temporaries, in the
 * range First_Regular_TN..Last_TN.
 */

/* Keep track of the TN_number for the last register TN generated. The 
 * first numbered TN is #1; #0 must remain unused (various algorithms
 * make special use of 0).
 */
TN_NUM Last_TN = 0;

/* TN_number of the last dedicated TN */
TN_NUM Last_Dedicated_TN = 0;
/* TN_number of the first non-dedicated TN. */
TN_NUM First_Regular_TN = 0;
/* TN_number of the first non-dedicated TN in the current REGION. */
TN_NUM First_REGION_TN = 0;

/* Mapping from TN numbers -> TNs for register TNs: */
TN **TN_Vec = NULL;		/* TN_number (TN_Vec[i]) == i */
#define TN_VEC_INIT	999
#define TN_VEC_INCR	499


/* Put constant TNs into a hash table to make searching faster. */

/* Set the hash table size to a power of 2 to make hashing fast. Dividing
 * by a prime number takes too long. It is OK to get a few extra duplicates.
 */
#define HASH_TABLE_SIZE  512	
#define HASH_VALUE(ivalue)	((INT)(ivalue) & (HASH_TABLE_SIZE-1))
#define	HASH_SYMBOL(st, offset) ( ((INT)(INTPS)((st)+(offset))) & (HASH_TABLE_SIZE-1))


static TN_LIST *Hash_Table[HASH_TABLE_SIZE];


/* ====================================================================
 *
 * Targ_TN_Add
 *
 * Some simple arithmetic operations that get done based upon the
 * sizes of TNs involved.  Generally used to manipulate the TN_value
 * and TN_offset of a TN.  Because the math may be done on one of these
 * values, the programmer passes in the appropriate one, and the size
 * passed is based upon TN_size of one/both of the involved TNs.
 * 
 * ====================================================================
 */
static INT64 
Targ_TN_Add( INT64 val1, INT16 size1, INT64 val2, INT16 size2 )
{
  if ( size1 <= sizeof(mINT32) && size2 <= sizeof(mINT32) )
    return ( ((mINT32)val1) + ((mINT32)val2) );
  else
    return ( val1 + val2 );
}



/* search for a previously built constant LIT_TN */
static TN *
Search_For_Previous_Constant (INT64 ivalue, INT size)
{
  TN_LIST *p;
  INT hash_value;
  TN *tn;

  hash_value = HASH_VALUE(ivalue);
  for(p = Hash_Table[hash_value]; p != NULL; p = TN_LIST_rest(p)) {
    tn = TN_LIST_first(p);
    if (TN_has_value(tn) && 
	TN_value(tn) == ivalue && 
	TN_size(tn) == size)
    {
      return tn;
    }
  }
  return NULL;
}


 /* search for a previously built symbol TN */
static TN *
Search_For_Previous_Symbol (ST *st, INT64 offset, INT relocs)
{
  TN_LIST *p;
  INT hash_value;
  TN *tn;

  hash_value = HASH_SYMBOL(st, offset);
  for (p = Hash_Table[hash_value]; p != NULL; p = TN_LIST_rest(p)) {
    tn = TN_LIST_first(p);
    if (TN_is_symbol(tn) && 
	TN_var(tn) == st && 
	TN_offset(tn) == offset && 
	TN_relocs(tn) == relocs)
    {
      return tn;
    }
  }
  return NULL;
}


/* ====================================================================
 *
 * Check_TN_Vec_Size
 *
 * Make sure TN_vec is big enough for another TN.
 * ====================================================================
 */
static void
Check_TN_Vec_Size ( void )
{
  static TN_NUM TN_Count = 0;	/* Size of mapping (not last index) */

  if ( TN_Count <= Last_TN+2 ) {
    if (TN_Vec == NULL) {
      TN_Count = TN_VEC_INIT;
      TN_Vec = (TN **) calloc ( TN_Count+1, sizeof(TN *) );
    }
    else {
      TN_Count += TN_VEC_INCR;
      TN_Vec = (TN **) realloc ( TN_Vec, (TN_Count+1)*sizeof(TN *) );
      bzero ( &TN_Vec[TN_Count-TN_VEC_INCR+1], (TN_VEC_INCR)*sizeof(TN *) );
    }
  }
}


/* ====================================================================
 *
 * Gen_TN
 *
 * Generate a new TN.  TN returned is completely zeroed.
 * ====================================================================
 */

static TN *
Gen_TN ( void )
{
  /* Allocate TNs for the duration of the PU. */
  TN *tn = TYPE_PU_ALLOC (TN);
  PU_TN_Cnt++;
  return tn;
}


/* ====================================================================
 *
 * Dup_TN
 *
 * Duplicate a TN with a new number.  
 *
 * The TN_GLOBAL_REG flag and any spill location associated with this TN 
 * is cleared in the new TN.
 *
 * ====================================================================
 */

TN *
Dup_TN ( TN *tn )
{
  TN *new_tn = Gen_TN();

  Is_True(! TN_is_dedicated(tn),("Dup_TN of a dedicated TN: TN%d",
          TN_number(tn)));

  *new_tn = *tn;
  if (!TN_is_constant(new_tn)) {
    Check_TN_Vec_Size ();
    Set_TN_number(new_tn,++Last_TN);
    Reset_TN_is_global_reg(new_tn);
    TN_Allocate_Register (new_tn, REGISTER_UNDEFINED);
    TNvec(Last_TN) = new_tn;
    /* copy over TN_home for rematerializable TNs. */
    if (!TN_is_rematerializable(tn) && !TN_is_gra_homeable(tn)) {
      Set_TN_spill(new_tn, NULL);
    }
  }

  return new_tn;
}

/* =======================================================================
 *
 *  Dup_TN_Even_If_Dedicated
 *
 *  It's not kosher to Dup a dedicated TN, but there are some legitimate
 *  reasons for wanting to do it if you know what you are doing.  For
 *  example, Transform_Conditional_Memory_OPs in (be/cg/la_ctran.c) has a
 *  legitimate reason for wanting to do this: it might be duping the stack
 *  pointer (for example) for use in a conditional move.  So here's a
 *  little wrapper for Dup_TN that will work even for a dedicated TN.
 *
 * ======================================================================= */
TN*
Dup_TN_Even_If_Dedicated(
  TN *tn
)
{
  TN tn_block;

  if ( ! TN_is_dedicated(tn) )
    return Dup_TN(tn);
  else {
    tn_block = *tn;

    Reset_TN_is_dedicated(&tn_block);
    TN_Allocate_Register (&tn_block, REGISTER_UNDEFINED);

    return Dup_TN(&tn_block);
  }
}


/* We currently always use the same dedicated TN for each
 * register-class/register pair. We save pointers to them here
 * so we can get at them later.
 */
static TN *ded_tns[ISA_REGISTER_CLASS_MAX + 1][REGISTER_MAX + 1];
static TN *f4_ded_tns[REGISTER_MAX + 1];

/* ====================================================================
 *
 * Create_Dedicated_TN
 *
 * Create and initialize a new dedicated TN and remember it for later.
 *
 * ====================================================================
 */
static TN *
Create_Dedicated_TN (ISA_REGISTER_CLASS rclass, REGISTER reg)
{
  INT size = REGISTER_bit_size(rclass, reg) / 8;
  BOOL is_float = rclass == ISA_REGISTER_CLASS_float;

  /* Allocate the dedicated TN at file level, because we reuse them 
   * for all PUs.
   */
  TN *tn = TYPE_SRC_ALLOC (TN);

  Check_TN_Vec_Size ();
  Set_TN_number(tn,++Last_TN);
  TNvec(Last_TN) = tn;
  Set_TN_is_dedicated(tn);
  Set_TN_register_class(tn, rclass);
  Set_TN_register(tn, reg);
  Set_TN_size(tn, size);
  if ( is_float ) Set_TN_is_float(tn);
  return(tn);
}


/* ====================================================================
 *
 * Init_Dedicated_TNs
 *
 * See interface description.
 *
 * ====================================================================
 */
void
Init_Dedicated_TNs (void)
{
  ISA_REGISTER_CLASS rclass;
  REGISTER reg;
  TN_NUM tnum = 0;

  FOR_ALL_ISA_REGISTER_CLASS(rclass) {
    for (reg = REGISTER_MIN; 
	 reg <= REGISTER_CLASS_last_register(rclass);
	 reg++
    ) {
      ++tnum;
      ded_tns[rclass][reg] = Create_Dedicated_TN(rclass, reg);
    }
  }

  /* Initialize the dedicated integer register TNs: */
  Zero_TN = ded_tns[REGISTER_CLASS_zero][REGISTER_zero];
  Ep_TN = ded_tns[REGISTER_CLASS_ep][REGISTER_ep];
  SP_TN = ded_tns[REGISTER_CLASS_sp][REGISTER_sp];
  FP_TN = ded_tns[REGISTER_CLASS_fp][REGISTER_fp];
  RA_TN = ded_tns[REGISTER_CLASS_ra][REGISTER_ra];
  Pfs_TN = ded_tns[REGISTER_CLASS_pfs][REGISTER_pfs];
  True_TN = ded_tns[REGISTER_CLASS_true][REGISTER_true];
  FZero_TN = ded_tns[REGISTER_CLASS_fzero][REGISTER_fzero];
  FOne_TN = ded_tns[REGISTER_CLASS_fone][REGISTER_fone];
  LC_TN = ded_tns[REGISTER_CLASS_lc][REGISTER_lc];
  
  /* allocate gp tn.  this may use a caller saved register, so
   * we don't use the one allocated for $gp above.
   */
  GP_TN = Create_Dedicated_TN (REGISTER_CLASS_gp, REGISTER_gp);


    for (reg = REGISTER_MIN; 
	 reg <= REGISTER_CLASS_last_register(ISA_REGISTER_CLASS_float);
	 reg++
    ) {
	++tnum;
        f4_ded_tns[reg] = Create_Dedicated_TN(ISA_REGISTER_CLASS_float, reg);
  	Set_TN_size(f4_ded_tns[reg], 4);
    }
    Last_Dedicated_TN = tnum;
}


/* ====================================================================
 *
 * Build_Dedicated_TN
 *
 * See interface description.
 *
 * ====================================================================
 */
TN *
Build_Dedicated_TN (ISA_REGISTER_CLASS rclass, REGISTER reg, INT size)
{
  // check for F4 tns; someday may have to check for F10 tns too
  if (rclass == ISA_REGISTER_CLASS_float && size == 4
	&& size != DEFAULT_RCLASS_SIZE(rclass) )
  {
	return f4_ded_tns[reg];
  }
  return ded_tns[rclass][reg];
}
 
TN *
Gen_Register_TN (ISA_REGISTER_CLASS rclass, INT size)
{
  Is_True(rclass != ISA_REGISTER_CLASS_UNDEFINED,
	  ("Gen_Register_TN called with undefined reg class"));

  if ( REGISTER_SET_EmptyP(REGISTER_CLASS_allocatable(rclass)) ) {
	// only one reg in class, so make dedicated tn
  	FmtAssert(REGISTER_CLASS_register_count(rclass) == 1,
	      ("don't know how to make dedicated TN for class %s",
		REGISTER_CLASS_name(rclass)));
	return Build_Dedicated_TN(rclass, REGISTER_MIN, size);
  }
  else {
	TN *tn = Gen_TN();
  	Check_TN_Vec_Size ();
  	Set_TN_number(tn,++Last_TN);
  	TNvec(Last_TN) = tn;
  	if ( size > 16 ) ErrMsg ( EC_TN_Size, size );
  	Set_TN_size(tn, size);
  	if ( rclass == ISA_REGISTER_CLASS_float)  Set_TN_is_float(tn);
    	Set_TN_register_class(tn, rclass);
  	return tn;
  }
}

// gen unique literal tn
TN *
Gen_Unique_Literal_TN (INT64 ivalue, INT size)
{
	TN *tn = Gen_TN ();
	Set_TN_size(tn, size);
	Set_TN_is_constant(tn);
    	Set_TN_has_value(tn);
	Set_TN_value(tn, ivalue);
  	return tn;
}

/* ====================================================================
 *
 * Gen_Literal_TN
 *
 * Produce a literal TN with the given literal value and size, either a
 * pre-existing one or a newly created one.
 *
 * ====================================================================
 */

TN *
Gen_Literal_TN ( INT64 ivalue, INT size )
{
  INT hash_value;
  TN *tn;

  Is_True(size != 4 || (ivalue >= -2147483648LL && ivalue <= 4294967295LL),
	  ("Gen_Literal_TN: 4-byte literal 0x%016llx is out-of-range", ivalue));

  /* Check if there is already a constant TN with this value. Otherwise
   * create a new one and add it to the hash table. 
   */
  tn = Search_For_Previous_Constant (ivalue, size);
  if (tn == NULL) {
    tn = Gen_TN ();
    Set_TN_size(tn, size);
    Set_TN_is_constant(tn);
    Set_TN_has_value(tn);
    TN_value(tn) = ivalue;

    hash_value = HASH_VALUE(ivalue);
    Hash_Table[hash_value] = 
		  TN_LIST_Push (tn, Hash_Table[hash_value], &MEM_pu_pool);
  }
  return tn;
}
 
TN *
Gen_Enum_TN (ISA_ENUM_CLASS_VALUE ecv)
{
	TN *tn = Gen_TN ();
	Set_TN_size(tn, 2);
	Set_TN_is_constant(tn);
	Set_TN_is_enum(tn);
	Set_TN_enum(tn, ecv);
	return tn;
}

/* ====================================================================
 *
 * Gen_Symbol_TN
 *
 * Produce a TN with the given symbol value, offset and relocs. 
 * This TN will represent the value of the symbol's address plus the 
 * offset.  Note that, for stack frame symbols, the address represented 
 * is relative to the stack pointer rather than absolute.
 *
 * ====================================================================
 */

TN *
Gen_Symbol_TN ( ST *st, INT64 offset, INT32 relocs)
{
  TN *tn;
  INT hash_value;

  /* First try to find an existing symbol TN */
  tn = Search_For_Previous_Symbol (st, offset, relocs);
  if (tn == NULL) {
    tn = Gen_TN ();
    Set_TN_size(tn, Pointer_Size);
    Set_TN_is_constant(tn);
    Set_TN_is_symbol(tn);
    Set_TN_var(tn, st);
    TN_offset(tn) = offset;
    TN_relocs(tn) = relocs;

    hash_value = HASH_SYMBOL(st, offset);
    Hash_Table[hash_value] = 
		  TN_LIST_Push (tn, Hash_Table[hash_value], &MEM_pu_pool);
  }
  return tn;
}
 

/* ====================================================================
 *
 * Gen_Label_TN
 *
 * Produce a TN with the given label value and offset.  This TN will
 * represent the value of the label's address plus the offset.
 *
 * ====================================================================
 */

TN *
Gen_Label_TN ( LABEL_IDX lab, INT64 offset )
{
  TN *tn;

  /* Make an new one and put it into the table: */
  tn = Gen_TN ();
  Set_TN_size(tn, Pointer_Size);
  Set_TN_is_constant(tn);
  Set_TN_is_label(tn);
  TN_label(tn) = lab;
  TN_offset(tn) = offset;
  return tn;
}

TN *
Gen_Tag_TN ( LABEL_IDX tag)
{
  TN *tn;

  /* Make an new one and put it into the table: */
  tn = Gen_TN ();
  Set_TN_size(tn, Pointer_Size);
  Set_TN_is_constant(tn);
  Set_TN_is_tag(tn);
  TN_label(tn) = tag;
  return tn;
}

/* ====================================================================
 *
 * Gen_Adjusted_TN
 *
 * Generate a TN which is identical to the given TN, but is 'adjust'
 * larger (or smaller if adjust is negative)
 *
 * ====================================================================
 */

TN *
Gen_Adjusted_TN ( TN *tn, INT64 adjust )
{
  TN *new_tn = NULL;

  FmtAssert (TN_is_constant(tn), ("Gen_Adjusted_TN: not a constant TN"));

  if (TN_has_value(tn)) {
    new_tn = Gen_Literal_TN ( 
	     Targ_TN_Add(TN_value(tn),TN_size(tn),adjust,TN_size(tn)), 
	     TN_size(tn));
  }
  else if ( TN_is_symbol(tn) ) {
    new_tn = Gen_Symbol_TN(TN_var(tn), TN_offset(tn)+adjust, TN_relocs(tn));
  }
  else if (TN_is_label(tn)) {
    new_tn = Gen_Label_TN (TN_label(tn), TN_offset(tn)+adjust);
  }
  else {
    ErrMsg( EC_Unimplemented,
	"Gen_Adjusted_TN: Cannot handle this type of constant" );
  }

  return new_tn;
}


/* ====================================================================
 *
 * sPrint_TN
 *
 * Format a TN to a string.  It uses the 'buf' passed in as the string.
 * Returns a pointer to buf.
 *
 * ====================================================================
 */

static char *
sPrint_TN ( TN *tn, BOOL verbose, char *buf )
{
  char *result = buf;

  if (tn == NULL) {
    buf += sprintf ( buf, "--nil--");
    return result;
  }

  if (TN_is_constant(tn)) {
    if ( TN_has_value(tn)) {
      buf += sprintf ( buf, "(0x%llx)", TN_value(tn) );
      if (TN_size(tn) == 4 && 
	  TN_value(tn) >> 32 != 0 &&
	  TN_value(tn) >> 31 != -1)
	buf += sprintf ( buf, "!!! TN_value=0x%llx is too big to fit in a word",
			 TN_value(tn));
    }
    else if (TN_is_enum(tn)) {
      buf += sprintf ( buf, "(enum:%s)", ISA_ECV_Name(TN_enum(tn)) );
    }
    else if ( TN_is_label(tn) ) {
      LABEL_IDX lab = TN_label(tn);
      const char *name = LABEL_name(lab);
      INT64 offset = TN_offset(tn);
      if ( offset == 0 ) {
	buf += sprintf ( buf, "(lab:%s)", name );
      }
      else {
	buf += sprintf ( buf, "(lab:%s+%lld)", name, offset );
      }
    } 
    else if ( TN_is_tag(tn) ) {
      LABEL_IDX lab = TN_label(tn);
      const char *name = LABEL_name(lab);
      buf += sprintf ( buf, "(tag:%s)", name );
    }
    else if ( TN_is_symbol(tn) ) {
      ST *var = TN_var(tn);
      buf += sprintf ( buf, "(sym" );
      switch (TN_relocs(tn)) {
      case TN_RELOC_NONE: break;
      case TN_RELOC_NEG: buf += sprintf ( buf, "-" ); break;
      case TN_RELOC_GPREL16: buf += sprintf (buf, "#gprel16"); break;
      case TN_RELOC_LOW16: buf += sprintf (buf, "#lo"); break;
      case TN_RELOC_HIGH16: buf += sprintf (buf, "#hi"); break;
      case TN_RELOC_HIGHER: buf += sprintf (buf, "#higher"); break;
      case TN_RELOC_HIGHEST: buf += sprintf (buf, "#highest"); break;
      case TN_RELOC_GOT_DISP: buf += sprintf (buf, "#got_disp"); break;
      case TN_RELOC_GOT_PAGE: buf += sprintf (buf, "#got_page"); break;
      case TN_RELOC_GOT_OFST: buf += sprintf (buf, "#got_ofst"); break;
      case TN_RELOC_CALL16: buf += sprintf (buf, "#call16"); break;
      case TN_RELOC_GOT_HI16: buf += sprintf (buf, "#got_hi16"); break;
      case TN_RELOC_GOT_LO16: buf += sprintf (buf, "#got_lo16"); break;
      case TN_RELOC_CALL_HI16: buf += sprintf (buf, "#call_hi16"); break;
      case TN_RELOC_CALL_LO16: buf += sprintf (buf, "#call_lo16"); break;
      case TN_RELOC_GPSUB: buf += sprintf (buf, "#gpsub"); break;
      case TN_RELOC_LO_GPSUB: buf += sprintf (buf, "#lo_gpsub"); break;
      case TN_RELOC_HI_GPSUB: buf += sprintf (buf, "#hi_gpsub"); break;
      case TN_RELOC_GPIDENT: buf += sprintf (buf, "#gpident"); break;
      case TN_RELOC_LO_GPIDENT: buf += sprintf (buf, "#lo_gpident"); break;
      case TN_RELOC_HI_GPIDENT: buf += sprintf (buf, "#hi_gpident"); break;
      case TN_RELOC_IA_GPREL22: buf += sprintf (buf, "#gprel22"); break;
      case TN_RELOC_IA_LTOFF22: buf += sprintf (buf, "#ltoff22"); break;
      case TN_RELOC_IA_LTOFF_FPTR: buf += sprintf (buf, "#ltoff_fptr"); break;
      }
      if (ST_class(var) == CLASS_CONST)
      	buf += sprintf ( buf, ":%s)", Targ_Print(NULL, ST_tcon_val(var)));
      else
      	buf += sprintf ( buf, ":%s%+lld)", ST_name(var), TN_offset(tn) );
    } 
    else {
      ErrMsg (EC_Unimplemented, "sPrint_TN: illegal constant TN");
    }
  }
  else {  /* register TN */
    if (TN_is_global_reg(tn)) {
      buf += sprintf ( buf, "GTN%d", TN_number(tn) );
    }
    else {
      buf += sprintf ( buf, "TN%d", TN_number(tn) );
    }
    if (TN_register(tn) != REGISTER_UNDEFINED) {
      if (TN_register(tn) <= REGISTER_CLASS_last_register(TN_register_class(tn))) {
	buf += sprintf (buf, "(%s)", 
		REGISTER_name(TN_register_class(tn), TN_register(tn)));
      } else {
	buf += sprintf (buf, "(%d,%d)", TN_register_class(tn), TN_register(tn));
      }
    }
    if (TN_is_save_reg(tn)) {
	buf += sprintf (buf, "(sv:%s)", 
		REGISTER_name(TN_save_rclass(tn), TN_save_reg(tn)));
    }
  }
  if (tn && Get_Trace(TP_CG, 8))
    buf += sprintf(buf, ":%d", TN_size(tn));
  
  if ( verbose ) {
    buf += sprintf ( buf, "[f:0x%x s:%d]", TN_flags(tn), TN_size(tn) );
  }
  return result;
}

/* ====================================================================
 *
 * fPrint_TN
 *
 * Print a TN to the given file.
 * Assume that 'fmt' has a %s in it for the TN string.
 *
 * ====================================================================
 */

void
fPrint_TN ( FILE *f, char *fmt, TN *tn)
{
  char buf[1024];
  char *s = sPrint_TN (tn, FALSE, buf);
  Is_True(strlen(s) < 1024, ("fPrint_TN buf overflowed"));
  fprintf(f, fmt, s);
}


/* ====================================================================
 *
 * Print_TN
 *
 * Print a TN to the trace file.
 *
 * ====================================================================
 */

void
Print_TN ( TN *tn, BOOL verbose )
{
  char buf[1024];
  char *s = sPrint_TN (tn, verbose, buf);
  Is_True(strlen(s) < 1024, ("Print_TN buf overflowed"));
  fprintf(TFile, "%s", s);
}

void
Print_TN_List(FILE *f, TN_LIST *tnl)
{
  INT count = 0;
  if (tnl != NULL) {
    fprintf(f, "\t");
    for (TN_LIST *tmp=tnl; tmp; tmp=TN_LIST_rest(tmp)) {
      fPrint_TN(f, "%s ", TN_LIST_first(tmp));
      if (++count == 5) {
	count = 0;
	fprintf(f, "\n\t");
      }
    }
    fprintf(f, "\n");
  }
}

/* dump_tn can be called from the debugger */
void
dump_tn (TN *tn)
{
  fPrint_TN (stdout, "%s\n", tn);
}

/* ====================================================================
 *
 * Print_TNs
 *
 * Print all TNs to the trace file.
 *
 * ====================================================================
 */

void
Print_TNs ( void )
{
  INT i;
  INT num_lits = 0;

  fprintf ( TFile, "\n----------  TNs -------------\n" );
  fprintf ( TFile, "Last_Dedicated_TN = %d\n", Last_Dedicated_TN );
  fprintf ( TFile, "First_Regular_TN  = %d\n", First_Regular_TN );
  fprintf ( TFile, "Last_TN \t  = %d\n", Last_TN );
  for ( i=1; i<=Last_TN; i++ ) {
    if (TNvec(i) == NULL) continue;
    Print_TN (TNvec(i), TRUE);
    fprintf ( TFile, "\n" );
  }

  fprintf ( TFile, "\n---------- Literal  TNs -------------\n" );
  for ( i = 0; i < HASH_TABLE_SIZE; i++ ) {
    TN_LIST *p;
    for (p = Hash_Table[i]; p != NULL; p = TN_LIST_rest(p)) {
      Print_TN (TN_LIST_first(p), TRUE);
      fprintf ( TFile, "\n" );
      num_lits++;
    }
  }
  fprintf ( TFile, "Number of Literal TNs  = %d\n", num_lits);
}

/* ====================================================================
 *
 * Init_TNs_For_PU
 *
 * This routine should be called before each PU to initialize the TNs
 * and the associated data structures.
 * ====================================================================
 */

void
Init_TNs_For_PU (void)
{
  TN *tn;
  TN_NUM tnnum;

  /* reset the fields of dedicated TNs */
  for ( tnnum = 0; tnnum <= Last_Dedicated_TN; tnnum++ ) {
    if ((tn = TNvec(tnnum)) != NULL) {
      Reset_TN_is_global_reg (tn);
      Set_TN_spill(tn, NULL);
    }
  }

  /* clear out the hash table */
  bzero(Hash_Table, sizeof(Hash_Table));

  /* reset Last_TN*/
  Last_TN = Last_Dedicated_TN;
  First_Regular_TN = Last_Dedicated_TN + 1;

  /* reset GP_TN to point to $gp during code expansion, in case it was
   * changed by the last PU.  otherwise, Convert_WHIRL_To_OPs et. al.,
   * get confused.
   */
  Set_TN_register(GP_TN, REGISTER_gp);
}

/* ====================================================================
 *
 * Init_TNs_For_REGION
 *
 * This routine should be called before each REGION to initialize the TNs.
 * Except for constants and dedicated TNs, the current REGION should
 * only reference TNs with numbers in the range
 * First_REGION_TN thru Last_TN.
 *
 * ====================================================================
 */

void
Init_TNs_For_REGION (void)
{
  TN *tn;
  TN_NUM tnnum;

  /* reset the fields of dedicated TNs */
  for ( tnnum = 0; tnnum <= Last_Dedicated_TN; tnnum++ ) {
    if ((tn = TNvec(tnnum)) != NULL) {
      /*
       * We do not clear the register_class since this may
       * be shared with an earlier REGION
       */
      Reset_TN_is_global_reg (tn);
      Set_TN_spill(tn, NULL);
    }
  }

  First_REGION_TN = Last_TN + 1;
}

/* =======================================================================
 *
 *  Find_TN_with_Matching_Register
 *
 *  See interface description.
 *
 * =======================================================================
 */
TN *
Find_TN_with_Matching_Register( TN *tn0, TN_LIST *list )
{
  TN_LIST *tnl;
  TN *tnx;
  REGISTER r0, rx;
  INT c0, cx;

  r0 = TN_register( tn0 );
  c0 = TN_register_class( tn0 );
  for ( tnl = list; tnl != NULL; tnl = TN_LIST_rest( tnl ) ) {
    tnx = TN_LIST_first( tnl );
    rx = TN_register( tnx );
    cx = TN_register_class( tnx );
    if (    ( r0 == rx )
	 && ( c0 == cx ) )
      return tnx;
  }
  return (TN *)NULL;
}

//TODO: probably want to move this generic routine elsewhere.
static inline BOOL
Is_OP_Cond(OP *op)
{
  // Conditional moves or predicated instructions have this property.
  if (OP_cond_def(op)) return TRUE;

  BB *bb = OP_bb(op);

  // OPs filled in the delay slot of branch-likely instrs. have the
  // same property as well.

  if (PROC_has_branch_delay_slot()) {
    if (Is_Delay_Slot_Op(op, bb) && OP_likely(BB_branch_op(bb)))
      return TRUE;
  }

  return FALSE;

}

/* ====================================================================
 *
 *  TN_Reaching_Value_At_Op
 *
 *  See interface description.
 *
 * ====================================================================
 */
OP *
TN_Reaching_Value_At_Op(
  TN *tn,
  OP *op,
  DEF_KIND *kind,
  BOOL reaching_def
)
{
  OP *value_op;  // value_op, could either be a defop or a useop.
  BB *bb;
  INT cnt;

#define MAX_BB_THRESHOLD    30     // Don't look beyond 30 predecessor blocks.
                                   // Results of finding very unlikely.

  if (TN_register(tn) != REGISTER_UNDEFINED) {
    REGISTER reg = TN_register(tn);
    ISA_REGISTER_CLASS rc = TN_register_class(tn);
    bb = OP_bb(op);
    value_op = (reaching_def) ? OP_prev(op) : OP_next(op);
    cnt = 0;
    do {
      while (value_op) {
	if (reaching_def) {
	  if (OP_Defs_Reg(value_op, rc, reg)) {
	    if (Is_OP_Cond(value_op)) {
	      if (OP_has_predicate(value_op) && OP_has_predicate(op)) {
		TN *p1 = OP_opnd((OP*) value_op, OP_PREDICATE_OPND);
		TN *p2 = OP_opnd((OP*) op, OP_PREDICATE_OPND);
		
		if (p1 == p2) {
		  *kind =  VAL_COND_DEF;
		  return value_op;
		}
	      }

	      *kind = VAL_COND_DEF;
	      return NULL;
	    } else {
	      *kind = VAL_KNOWN;
	      return value_op;
	    }
	  }
	} else {
	  if (OP_Refs_Reg(value_op, rc, reg)) {
	    if (Is_OP_Cond(value_op)) {
	      if (OP_has_predicate(value_op) && OP_has_predicate(op)) {
		TN *p1 = OP_opnd((OP*) value_op, OP_PREDICATE_OPND);
		TN *p2 = OP_opnd((OP*) op, OP_PREDICATE_OPND);
		
		if (p1 == p2) {
		  *kind =  VAL_COND_USE;
		  return value_op;
		}
	      }

	      *kind = VAL_COND_USE;
	      return NULL;
	    } else {
	      *kind = VAL_KNOWN;
	      return value_op;
	    }
	  }
	}
	value_op = (reaching_def) ? OP_prev(value_op) : OP_next(value_op);
      }

      if (bb) {
	BBLIST *edge;
	INT val_cnt = 0;
	BB *cur_bb = NULL;
	BB *val_bb = NULL;
	
	if (reaching_def) {
	  FOR_ALL_BB_PREDS(bb, edge) {
	    cur_bb = BBLIST_item(edge);
	    if (cur_bb == bb) continue;	// ignore self predecessor
	    BOOL live_out = REG_LIVE_Outof_BB(rc, reg, cur_bb);
	    val_cnt += (live_out) ? 1 : 0;
	    val_bb = (live_out) ? cur_bb : val_bb;
	  }
	} else {
	  FOR_ALL_BB_SUCCS(bb, edge) {
	    cur_bb = BBLIST_item(edge);
	    if (cur_bb == bb) continue;	// ignore self successor
	    BOOL live_in = REG_LIVE_Into_BB(rc, reg, cur_bb);
	    val_cnt += (live_in) ? 1 : 0;
	    val_bb = (live_in) ? cur_bb : val_bb;
	  }
	}
	bb = (val_cnt > 1) ? NULL : val_bb;

	if (bb == NULL || BB_call(bb)) break;

	value_op = (reaching_def) ? BB_last_op(bb) : BB_first_op(bb);
      }
    } while (++cnt < MAX_BB_THRESHOLD); // circuit-breaker

    *kind = VAL_UNKNOWN;
    return NULL;
  }

  /* See if there is a definition preceding the <op> or a use succeeding it.
   */
  bb = OP_bb(op);
  value_op = (reaching_def) ? OP_prev(op) : OP_next(op);
  cnt = 0;
  do {
    while (value_op) {
      if (reaching_def) {
	if (OP_Defs_TN(value_op, tn)) {
	  if (Is_OP_Cond(value_op)) {
	    if (OP_has_predicate(value_op) && OP_has_predicate(op)) {
	      TN *p1 = OP_opnd((OP*) value_op, OP_PREDICATE_OPND);
	      TN *p2 = OP_opnd((OP*) op, OP_PREDICATE_OPND);
	      
	      if (p1 == p2) {
		*kind =  VAL_COND_DEF;
		return value_op;
	      }
	    }

	    *kind = VAL_COND_DEF;
	    return NULL;
	  } else {
	    *kind = VAL_KNOWN;
	    return value_op;
	  }
	}
      } else {
	if (OP_Refs_TN(value_op, tn)) {
	  if (Is_OP_Cond(value_op)) {
	    if (OP_has_predicate(value_op) && OP_has_predicate(op)) {
	      TN *p1 = OP_opnd((OP*) value_op, OP_PREDICATE_OPND);
	      TN *p2 = OP_opnd((OP*) op, OP_PREDICATE_OPND);
	      
	      if (p1 == p2) {
		*kind =  VAL_COND_USE;
		return value_op;
	      }
	    }

	    *kind = VAL_COND_USE;
	    return NULL;
	  } else {
	    *kind = VAL_KNOWN;
	    return value_op;
	  }
	}
      }
      value_op = (reaching_def) ? OP_prev(value_op) : OP_next(value_op);
    }

    if (bb) {
      BB *new_bb = NULL;
      if (GRA_LIVE_Phase_Invoked) {
	BBLIST *edge;
	INT val_cnt = 0;
	BB *val_bb = NULL;
	BB *cur_bb = NULL;
	
	if (reaching_def) {
	  FOR_ALL_BB_PREDS(bb, edge) {
	    cur_bb = BBLIST_item(edge);
	    if (cur_bb == bb) continue;	// ignore self predecessor
	    BOOL live_out = GRA_LIVE_TN_Live_Outof_BB(tn, cur_bb);
	    val_cnt += (live_out) ? 1 : 0;
	    val_bb = (live_out) ? cur_bb : val_bb;
	  }
	} else {
	  FOR_ALL_BB_SUCCS(bb, edge) {
	    cur_bb = BBLIST_item(edge);
	    if (cur_bb == bb) continue;	// ignore self successor
	    BOOL live_in = GRA_LIVE_TN_Live_Into_BB(tn, cur_bb);
	    val_cnt += (live_in) ? 1 : 0;
	    val_bb = (live_in) ? cur_bb : val_bb;
	  }
	}
	new_bb = (val_cnt > 1) ? NULL : val_bb;
      } 
      // in case no gra_live or it is out of date (e.g. during hbf)
      if (new_bb == NULL) {
	if (reaching_def)
		new_bb = BB_Unique_Predecessor(bb);
	else
		new_bb = BB_Unique_Successor(bb);
      }
      bb = new_bb;
    }
    if (bb == NULL) break;

    value_op = (reaching_def) ? BB_last_op(bb) : BB_first_op(bb);
  } while (++cnt < MAX_BB_THRESHOLD); // circuit-breaker

  *kind = VAL_UNKNOWN;
  return NULL;
}


/* ====================================================================
 *
 * Rematerializable_IntConst
 *
 * If <tn> is rematerializable, and the result is an integer,
 * return the integer value through the out parameter <val>
 * and return TRUE; otherwise just return FALSE.
 *
 * ====================================================================
 */
static BOOL
Rematerializable_IntConst(
  TN *tn,
  INT64 *val
)
{
  OPCODE opcode;
  OPERATOR opr;
  WN *home = TN_home(tn);

  if (!TN_is_rematerializable(tn)) return FALSE;

  if (!home) {
    DevWarn("No home for rematerializable TN%d", TN_number(tn));
    return FALSE;
  }

  opcode = WN_opcode(home);
  opr = OPCODE_operator(opcode);

  if (opr != OPR_INTCONST) return FALSE;

  switch (opcode) {
  case OPC_I8INTCONST:
  case OPC_U8INTCONST:
    *val = WN_const_val(home);
    break;
  case OPC_I4INTCONST:
  case OPC_U4INTCONST:

    /* Even for U4 we sign-extend the value
     * so it matches what we want register to look like
     */
    *val = (INT32)WN_const_val(home);
    break;
  default:
    return FALSE;
  }

  return TRUE;
}


/* ====================================================================
 *
 *  TN_Value_At_Op
 *
 *  See interface description.
 *
 * ====================================================================
 */
BOOL
TN_Value_At_Op(
  TN *tn,
  OP *use_op,
  INT64 *val
)
{
  INT iters = 5;

  do {
    OP *def_op;

    DEF_KIND kind;
    if (TN_is_constant(tn)) {
      if (!TN_has_value(tn)) break;
      *val = TN_value(tn);
      return TRUE;
    } else if (TN_is_zero_reg(tn)) {
      *val = 0;
      return TRUE;
    } else if (TN_is_rematerializable(tn)) {
      return Rematerializable_IntConst(tn, val);
    } else if (use_op && (def_op = TN_Reaching_Value_At_Op(tn, use_op, &kind, TRUE)) && (kind == VAL_KNOWN)) {
      if (   (OP_iadd(def_op) || OP_ior(def_op))
	  && TN_is_zero_reg(OP_opnd(def_op,0))
	  && TN_has_value(OP_opnd(def_op,1))
      ) {
	tn = OP_opnd(def_op, 1);
	use_op = def_op;
	continue;
      } else if (OP_copy(def_op)) {
	tn = OP_opnd(def_op, OP_COPY_OPND);
	use_op = def_op;
	continue;
      }
    }
    return FALSE;
  } while (--iters);

  Lmt_DevWarn(1,("TN_Value_At_Op exceeded max iterations to find reaching def"));

  return FALSE;
}


/* following routines were moved here from symconst_util */

/* These should be values which won't fit in any 32-bit range.
 * The +/- 1 adjustments are to make sure that they don't match literal
 * classes that look for something with only the upper byte non-zero.
 * However, for SVR3 compilations, INT64_Mxx is really INT32_Mxx, and
 * it shouldn't matter much as a temporary situation.
 */
#define	HUGE_MIN	(INT64_MIN/128+1)
#define HUGE_MAX	(INT64_MAX/128-1)

/* ====================================================================
 *
 * Get_TN_Range
 *
 * Get the current range of values possibly represented by a TN.  The
 * value is fixed for a numeric constant TN.  For a symbol TN, it is
 * the current value range.  For stack offset symbols, the range is 
 * its current offset +/- a tolerance.
 *
 * The return value indicates whether the range returned is usable for
 * combinations.  In some cases, we have TNs for which no reasonable
 * estimate is possible, but which only appear as operands where they
 * are known to be valid, i.e. labels in jumps.  In such cases, we
 * return a range of 1..1, which will fit in any literal class of
 * interest, but we return FALSE so that a caller with more complex
 * requirements doesn't go further with that range.
 *
 * WARNING:  The range calculated is not conservative in the sense that
 * the minimum and maximum values are true bounds on the value.
 * See Evaluate_Operand_Range for a more complete description of the
 * significance of this warning.
 *
 * ====================================================================
 */

static BOOL
Get_TN_Range (
  TN *tn,		/* TN to evaluate */
  INT64 *minval,	/* Result: Minimum value in range */
  INT64 *maxval )	/* Result: Maximum value in range */
{
  ST *st;
  ST *base_st;
  INT64 ofst, base_ofst;

  /* For non-constant TNs, return a value range which won't fit
   * anywhere:
   */
  if ( ! TN_is_constant(tn) ) {
    *minval = HUGE_MIN;
    *maxval = HUGE_MAX;
    return FALSE;
  }

  /* Take care of the "simple" constant cases: */
  if ( TN_has_value(tn) ) {
    /* It has a value -- use it: */
    *minval = *maxval = TN_value(tn);
    return TRUE;
  } else if ( TN_is_label(tn) || TN_is_tag(tn)) {
    /* Return a dummy range of 1..1: */
    *minval = *maxval = 1;
    return FALSE;
  } else if ( ! TN_is_symbol(tn) ) {
    /* Return a value range which won't fit anywhere: */
    *minval = HUGE_MIN;
    *maxval = HUGE_MAX;
    return FALSE;
  } else if (TN_relocs(tn) != 0) {
    /* If the TN_relocs is non-zero, all the possible values are for 
     * 16bit relocations. So, assume it fits in 16 bits.
     */
    *minval = INT16_MIN;
    *maxval = INT16_MAX;
    return TRUE;
  }

  /* Now we have a symbol TN: */
  st = TN_var(tn);
  ofst = TN_offset(tn);
  Base_Symbol_And_Offset (st, &base_st, &base_ofst);

  if ( ST_on_stack(st)) {
    *minval = *maxval = base_ofst + ofst;
    return TRUE;
  } 
  
  /* shouldn't get this far */
  /* Return a value range which won't fit anywhere: */
  *minval = HUGE_MIN;
  *maxval = HUGE_MAX;
  return FALSE;
}

/* ====================================================================
 *
 * Evaluate_Operand_Range
 *
 * We are interested in the possible range of the given expression
 * involving a constant TN (which may be a symbol TN).
 *
 * The expression evaluated is:
 *	%val(tn1) +/- %val(tn2) + disp
 * where:
 *	%val(tnX) is the current value represented by tnX, as described
 *		for Get_TN_Range above.
 *
 *	+/- %val(tn2): whether $val(tn2) is added or subtracted is
 *		determined by 'expr_op.'  (It is ignored if tn2==NULL.)
 *
 *	disp is an arbitrary signed integer to add.
 *
 * If we are unable to produce a reasonable range (of the sort
 * necessary for checking validity as an immediate operand), we return
 * FALSE.  Otherwise, minval and maxval are set to the range bounds.
 *
 * WARNING:  The range calculated is not conservative in the sense that
 * the minimum and maximum values are true bounds on the value.
 * Rather, they reflect bounds which are reasonable for purposes of
 * immediate operand checking.  For instance, external symbol values
 * are returned as values in a 28-bit range for MIPS, because that's
 * the range within which we'll attempt direct calls.  They aren't at
 * the bounds of that range so that we can add "reasonable" offsets to
 * them and still get a positive answer to the query about fitting in
 * the immediate field.
 *
 * ====================================================================
 */

static BOOL
Evaluate_Operand_Range (
  TN	*tn1,		/* The primary TN (constant) */
  INT32	disp,		/* Displacement from symbolic value */
  INT64 *minval,	/* Result: Minimum value in range */
  INT64 *maxval )	/* Result: Maximum value in range */
{
  INT64 min1, max1;
  BOOL combine;

  if (tn1 == NULL) {
	*minval = *maxval = disp;
	return TRUE;
  }

  /* Get the TN values: */
  combine = Get_TN_Range ( tn1, &min1, &max1 );

  /* Adjust the first set of bounds: */
  if ( disp != 0 ) {
    if ( ! combine ) return FALSE;
    min1 += disp;
    max1 += disp;
  }

  /* Return our results: */
  *minval = min1;
  *maxval = max1;
  return TRUE;
}

/* ====================================================================
 *
 * Potential_Immediate_TN_Expr
 *
 * We are interested in whether a given expression involving a constant
 * TN (which may be a symbol TN) is a potential immediate operand for
 * the given operation.
 *
 * See Evaluate_Operand_Range for a description of the other operands'
 * treatment in answering the range question.
 *
 * ====================================================================
 */

BOOL
Potential_Immediate_TN_Expr (
  TOP opcode,		/* The operation of interest */
  TN	*tn1,		/* The primary TN (constant) */
  INT32	disp)		/* Displacement from symbolic value */
{
  INT64 lbound, hbound;

  /* Get the bounds and check them as operands: */
  return Evaluate_Operand_Range ( tn1, disp, &lbound, &hbound )
	   && TOP_Can_Have_Immediate ( lbound, opcode )
	   && TOP_Can_Have_Immediate ( hbound, opcode );
}
