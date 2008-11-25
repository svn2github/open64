
/*

  Copyright (C) 2008 .  All Rights Reserved.

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

*/

RTA_API INT32 readword32(BITS pb, BITS b, int sz)
{
  FmtAssert(pb, ("Null pointer to Bits"));
  FmtAssert(pb <= (b+sz), ("pointers to Bits out of bound"));
  return *(INT32 *)(pb);
}

RTA_API INT64  readword64(BITS pb, BITS b, int sz)
{
  FmtAssert(pb, ("Null pointer to Bits"));
  FmtAssert(pb <= (b+sz), ("pointers to Bits out of bound"));
  return *(INT64 *)(pb);
}

extern void Print_whirl_pu_from_bits(FILE *f, BITS b, unsigned int sz);
extern void Print_whirl_global_from_bits(FILE *f, BITS b, unsigned int sz);
extern void Print_whirl_summary_from_bits(FILE *f, BITS b, unsigned int sz);
extern void Print_whirl_flags_from_bits(FILE *f, BITS b, unsigned int sz);
