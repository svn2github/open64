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
 * Module: mtypes.c
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/common/com/mtypes.cxx,v $
 *
 * Revision history:
 *
 * Description:
 *
 * Define IDs for the types supported by the target machine.  Not all
 * of the predefined types will be supported on a given machine; the
 * type attributes of those supported are defined in tdt.awk.
 *
 * ====================================================================
 * ====================================================================
 */

#include "defs.h"
#include "mtypes.h"

TYPE_DESC Machine_Types[] =
{ { MTYPE_UNKNOWN, 0, 0, 0, 0, 0, 0, 0, 0, 0, "",0,0, MTYPE_UNKNOWN },
  { MTYPE_B,	 1,  0,	 0, 0,	0, 0,	0, 0, 0, "B",MTYPE_CLASS_INTEGER,0, MTYPE_B },
  { MTYPE_I1,	 8,  8,	 8, 1,	1, 1,	1, 0, 0, "I1",MTYPE_CLASS_INTEGER,1, MTYPE_U1 },
  { MTYPE_I2,	16, 16,	16, 2,	2, 2,	1, 0, 0, "I2",MTYPE_CLASS_INTEGER,3, MTYPE_U2 },
  { MTYPE_I4,	32, 32,	32, 4,	4, 4,	1, 0, 0, "I4",MTYPE_CLASS_INTEGER,5, MTYPE_U4 },
  { MTYPE_I8,	64, 64,	64, 8,	8, 8,	1, 0, 0, "I8",MTYPE_CLASS_INTEGER,7, MTYPE_U8 },
  { MTYPE_U1,	 8,  8,	 8, 1,	1, 1,	0, 0, 0, "U1",MTYPE_CLASS_UNSIGNED_INTEGER,2, MTYPE_I1 },
  { MTYPE_U2,	16, 16,	16, 2,	2, 2,	0, 0, 0, "U2",MTYPE_CLASS_UNSIGNED_INTEGER,4, MTYPE_I2 },
  { MTYPE_U4,	32, 32,	32, 4,	4, 4,	0, 0, 0, "U4",MTYPE_CLASS_UNSIGNED_INTEGER,6, MTYPE_I4 },
  { MTYPE_U8,	64, 64,	64, 8,	8, 8,	0, 0, 0, "U8",MTYPE_CLASS_UNSIGNED_INTEGER,8, MTYPE_I8 },
  { MTYPE_F4,	32, 32,	32, 4,	4, 4,	1, 1, 0, "F4",MTYPE_CLASS_FLOAT,9, MTYPE_F4 },
  { MTYPE_F8,	64, 64,	64, 8,	8, 8,	1, 1, 0, "F8",MTYPE_CLASS_FLOAT,11, MTYPE_F8 },
  { MTYPE_F10, 128,128,128,16, 16,16,	1, 1, 0, "F10",MTYPE_CLASS_FLOAT,13, MTYPE_F10 },
  { MTYPE_F16, 128,128,128,16, 16,16,	1, 1, 0, "F16",MTYPE_CLASS_FLOAT,15, MTYPE_F16 },
  { MTYPE_STR,	 0,  0,	 0, 1,	1, 4,	0, 0, 0, "STR",MTYPE_CLASS_STR,0, MTYPE_STR },
  { MTYPE_FQ,  128,128,128,16, 16,16,	1, 1, 0, "FQ",MTYPE_CLASS_FLOAT,14, MTYPE_FQ },
  { MTYPE_M,	 0,  0,	 0, 0,	0, 0,	0, 0, 0, "M",0,0, MTYPE_M },
  { MTYPE_C4,	 64, 64,64, 4,	4, 4,	0, 1, 0, "C4",MTYPE_CLASS_COMPLEX_FLOAT,10, MTYPE_C4 },
  { MTYPE_C8,	 128,128,128, 8,  8, 8,	0, 1, 0, "C8",MTYPE_CLASS_COMPLEX_FLOAT,12, MTYPE_C8 },
  { MTYPE_CQ,	 256,256,256,16, 16,16,	0, 1, 0, "CQ",MTYPE_CLASS_COMPLEX_FLOAT,16, MTYPE_CQ },
  { MTYPE_V,	 0,  0,	 0, 0,	0, 0,	0, 0, 0, "V",0,0, MTYPE_V },
  { MTYPE_BS,	 1,  0,	 0, 0,	0, 0,	0, 0, 0, "BS",MTYPE_CLASS_INTEGER,0, MTYPE_BS },
  { MTYPE_A4,	32, 32,	32, 4,	4, 4,	0, 0, 0, "A4",MTYPE_CLASS_UNSIGNED_INTEGER,6, MTYPE_A4 },
  { MTYPE_A8,	64, 64,	64, 8,	8, 8,	0, 0, 0, "A8",MTYPE_CLASS_UNSIGNED_INTEGER,8, MTYPE_A8 },
  { MTYPE_C10,	 256,256,256,16, 16,16,	0, 1, 0, "C10",MTYPE_CLASS_COMPLEX_FLOAT,16, MTYPE_C10 },
  { MTYPE_C16,	 256,256,256,16, 16,16,	0, 1, 0, "C16",MTYPE_CLASS_COMPLEX_FLOAT,16, MTYPE_C16 },
  { MTYPE_I16,	 256,256,256,16, 16,16,	0, 1, 0, "I16",MTYPE_CLASS_INTEGER,16, MTYPE_I16 },
  { MTYPE_U16,	 256,256,256,16, 16,16,	0, 1, 0, "U16",MTYPE_CLASS_UNSIGNED_INTEGER,16, MTYPE_U16 }
};

static TYPE_ID Machine_Next_Alignment[] =
{
 /* MTYPE_UNKNOWN */	MTYPE_UNKNOWN,
 /* MTYPE_B	  */	MTYPE_UNKNOWN,
 /* MTYPE_I1	  */	MTYPE_I2,
 /* MTYPE_I2	  */	MTYPE_I4,
 /* MTYPE_I4	  */	MTYPE_I8,
 /* MTYPE_I8	  */	MTYPE_UNKNOWN,
 /* MTYPE_U1	  */	MTYPE_U2,
 /* MTYPE_U2	  */	MTYPE_U4,
 /* MTYPE_U4	  */	MTYPE_U8,
 /* MTYPE_U8	  */	MTYPE_UNKNOWN,
 /* MTYPE_F4	  */	MTYPE_F8,
 /* MTYPE_F8	  */	MTYPE_FQ,
 /* MTYPE_F10	  */	MTYPE_UNKNOWN,
 /* MTYPE_F16	  */	MTYPE_UNKNOWN,
 /* MTYPE_STR	  */	MTYPE_UNKNOWN,
 /* MTYPE_FQ	  */	MTYPE_UNKNOWN,	
 /* MTYPE_M	  */	MTYPE_UNKNOWN,	
 /* MTYPE_C4	  */	MTYPE_C8,	
 /* MTYPE_C8	  */	MTYPE_CQ,	
 /* MTYPE_CQ	  */	MTYPE_UNKNOWN,	
 /* MTYPE_V	  */	MTYPE_UNKNOWN,
 /* MTYPE_BS	  */	MTYPE_UNKNOWN,
 /* MTYPE_A4	  */	MTYPE_UNKNOWN,
 /* MTYPE_A8	  */	MTYPE_UNKNOWN
};

static TYPE_ID Machine_Prev_Alignment[] =
{
 /* MTYPE_UNKNOWN */	MTYPE_UNKNOWN,
 /* MTYPE_B	  */	MTYPE_UNKNOWN,
 /* MTYPE_I1	  */	MTYPE_UNKNOWN,
 /* MTYPE_I2	  */	MTYPE_I1,
 /* MTYPE_I4	  */	MTYPE_I2,
 /* MTYPE_I8	  */	MTYPE_I4,
 /* MTYPE_U1	  */	MTYPE_UNKNOWN,
 /* MTYPE_U2	  */	MTYPE_U1,
 /* MTYPE_U4	  */	MTYPE_U2,
 /* MTYPE_U8	  */	MTYPE_U4,
 /* MTYPE_F4	  */	MTYPE_UNKNOWN,
 /* MTYPE_F8	  */	MTYPE_F4,
 /* MTYPE_F10	  */	MTYPE_UNKNOWN,
 /* MTYPE_F16	  */	MTYPE_UNKNOWN,
 /* MTYPE_STR	  */	MTYPE_UNKNOWN,
 /* MTYPE_FQ	  */	MTYPE_F8,
 /* MTYPE_M	  */	MTYPE_UNKNOWN,
 /* MTYPE_C4	  */	MTYPE_UNKNOWN,
 /* MTYPE_C8	  */	MTYPE_C4,
 /* MTYPE_CQ	  */	MTYPE_C8,
 /* MTYPE_V	  */	MTYPE_UNKNOWN,
 /* MTYPE_B	  */	MTYPE_UNKNOWN,
 /* MTYPE_U4	  */	MTYPE_UNKNOWN,
 /* MTYPE_U8	  */	MTYPE_UNKNOWN
};


MTYPE_MASK Machine_Types_Available = 0x1fdffe;


/* ====================================================================
 *
 * Mtype_Name
 *
 * Return a string containing a printable name for an MTYPE.
 *
 * ====================================================================
 */

char *
Mtype_Name (TYPE_ID b)
{
  static char buf[32];

  if ( b>0 && b<=MTYPE_LAST ) {
    return MTYPE_name(b);
  } else {
    sprintf (buf, "BETYPE_%1d", b);
    return buf;
  }
}

/* ====================================================================
 *
 * Mtype_AlignmentClass
 *
 * Return MTYPE corresponding to alignment(in bytes) and class
 *
 *	TODO -- this really belongs a matrix (align X class)
 * ====================================================================
 */
TYPE_ID Mtype_AlignmentClass(INT32 align, mUINT8 type_class)
{
  INT32	i;

  for(i=0; i<MTYPE_LAST; i++)
  {
    if ((MTYPE_type_class(i) == type_class) &&
	(MTYPE_align_min(i) == align))
      return MTYPE_id(i);
  }

  return MTYPE_UNKNOWN; 
}


/* ====================================================================
 *
 * Mtype_Promote_to_A4A8
 *
 * Convert I4 or U4 to A4, and I8 or U8 to A8; otherwise, do nothing.
 *
 * ====================================================================
 */
TYPE_ID Mtype_Promote_to_A4A8(TYPE_ID x)
{
  if (! MTYPE_is_integral(x))
    return x;
  if (MTYPE_byte_size(x) < 4)
    return x;
  if (MTYPE_byte_size(x) == 4)
    return MTYPE_A4;
  return MTYPE_A8;
}

/* ====================================================================
 *
 * Mtype_TransferSign
 *
 * Return signed/unsigned version of y depending on sign of x.
 * If either type is A4 or A8, return the A[48] of y.
 *
 * ====================================================================
 */
TYPE_ID Mtype_TransferSign(TYPE_ID x, TYPE_ID y)
{
  if (y == MTYPE_A4 || y == MTYPE_A8)
    return y;
  if (x == MTYPE_A4 || x == MTYPE_A8)
    return Mtype_Promote_to_A4A8(y);
  if (MTYPE_signed(x) ^ MTYPE_signed(y))
  {
    return MTYPE_complement(y);
  }
  return y;
}

/* ====================================================================
 *
 * Mtype_TransferSize
 *
 * Return the mtype version of y taking on the size of x.
 * If y is A4 or A8 and x's size is smaller than 4 bytes, return U1 or U2.
 *
 * ====================================================================
 */
TYPE_ID Mtype_TransferSize(TYPE_ID x, TYPE_ID y)
{
  if (y == MTYPE_A4 || y == MTYPE_A8) {
    switch (MTYPE_byte_size(x)) {
    case 1: return MTYPE_U1;
    case 2: return MTYPE_U2;
    case 4: return MTYPE_A4;
    case 8: return MTYPE_A8;
    }
  }
  switch (MTYPE_byte_size(x)) {
  case 1: return MTYPE_signed(y) ? MTYPE_I1 : MTYPE_U1;
  case 2: return MTYPE_signed(y) ? MTYPE_I2 : MTYPE_U2;
  case 4: return MTYPE_signed(y) ? MTYPE_I4 : MTYPE_U4;
  case 8: return MTYPE_signed(y) ? MTYPE_I8 : MTYPE_U8;
  }
  return MTYPE_UNKNOWN;
}

/* ====================================================================
 *
 * Mtype_complex_to_real
 *
 * Return real type corresponding to complex
 *
 * ====================================================================
 */
TYPE_ID Mtype_complex_to_real(TYPE_ID type)
{
  if (MTYPE_is_complex(type))
  {
    switch(type) {
    case MTYPE_C4:
	return MTYPE_F4;
    case MTYPE_C8:
	return MTYPE_F8;
    case MTYPE_CQ:
	return MTYPE_FQ;
    }
  }
  return type;
}




/* ====================================================================
 *
 * TYPE_ID  MTYPE_comparison(TYPE_ID)
 *
 * Return a canonicalized type for a comparison
 *
 * ====================================================================
 */
TYPE_ID  Mtype_comparison(TYPE_ID type)
{
  switch(type)
  {
  case MTYPE_I1:
  case MTYPE_I2:
    return MTYPE_I4;
  case MTYPE_U1:
  case MTYPE_U2:
    return MTYPE_U4;
  default:
    return type;
  }
}




/* ====================================================================
 *
 * TYPE_ID Mtype_next_alignment(TYPE_ID)
 *
 * Return the next best alignment type (or MTYPE_UNKNOWN)
 * This is used to iterate thru types to improve alignment
 *
 * ====================================================================
 */
TYPE_ID Mtype_next_alignment(TYPE_ID type)
{
  return Machine_Next_Alignment[type];
}




/* ====================================================================
 *
 * TYPE_ID Mtype_prev_alignment(TYPE_ID)
 *
 * Return the prevevious alignment (or MTYPE_UNKNOWN)
 *
 * ====================================================================
 */
TYPE_ID Mtype_prev_alignment(TYPE_ID type)
{
  return Machine_Prev_Alignment[type];
}
