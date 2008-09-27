
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

#include <iostream>
#include <stdio.h>
#include <elf.h>
#include "elf_reader.h"
#include "elf_reader64.h"
#include <string.h>
#include <vector>
#include "messg.h"
#include "rta.h"
#include "rta_manager.h"
#include "wn_reader.h"
#include "rta_reader.h"

using namespace std;


static inline void print(FILE *fp, int sz, unsigned char *stream)
{
#if defined(DEBUG)
  int j = 0;
  while (j < sz) {
    if ((j % 8) == 0)
      fprintf(fp, "\n");

    fprintf(fp, " %2x", *stream);
    stream++;
    j++;
  }
  fprintf(fp, "\n");
#endif
}

void PU_SectBin::PrintBits(FILE *fp, int i)
{
#if defined(DEBUG)
  if (NumsectNone())
    return;

  FmtAssert((i <= Numsect()), ("index %s larger than number of sections %x", i, Numsect()));
  
  vector<RTABuf> ppu = PuSects();
  int sz = ppu[i].Size();
  fprintf(fp, "%d-th (pc=%llx), size is %x\n",i, ppu[i].Pc(), sz);
  BITS b = ppu[i].Bits();
  print(fp, sz, b);
#endif
}

void PU_SectBin::PrintBits(FILE *fp)
{
#if defined(DEBUG)
  if (NumsectNone())
    return;
  int i = Numsect();
  while (i-- > 0) {
    PrintBits(fp, i);
  }
#endif
}

bool PU_SectBin::VerifyHdr(const Rta_Hdr *prta)
{
  if (Rta_hdr_magic(prta) != V_0_9 && Rta_hdr_magic(prta) != V_1_0)
    FmtAssert(0, ("Wrong magic"));

  if ((Rta_hdr_type(prta) != RTA_DYNAMIC) 
      && (Rta_hdr_type(prta) != RTA_STATIC))
    FmtAssert(0, ("Wrong type"));

  if (Rta_hdr_pu_off(prta) == 0 && Rta_hdr_pu_num(prta) == 0)
    FmtAssert(0, ("Rta header inconsistent numb of pu %x, with pu offset 0",
		  Rta_hdr_pu_off(prta)));

  return true;
}

bool PU_SectBin::QuickChk(FILE *fp, int i)
{
  if (NumsectNone()) {
    cout << i << "-th rta section does not exist\n";
    return false;
  }

  FmtAssert(i <= Numsect(), ("index larger than number of sections"));
  
  vector<RTABuf> ppu = PuSects();
  int sz = ppu[i].Size();
  uint64_t pc = ppu[i].Pc();

  if (sz < sizeof(Rta_Hdr))
    FmtAssert(0, ("section size smaller than Rta_Hdr"));

  Rta_Manager rta((void*)ppu[i].Bits());
  Print_rta_hdr(fp, &(rta.Hdr()), "  ");
  Print_rta_pu_title(fp, " ");
  Rta_Manager::Pu_Iter it = rta.begin();
  for ( ; it != rta.end(); it++) {
    Print_rta_pu(fp, &(*it), " ");

    Print_rta_bb_title(fp, " ");
    Rta_Manager::Bb_Iter itb = rta.begin(it);
    for (int j=0 ; itb != rta.end(it); itb++, j++) {
      Print_rta_bb(fp, pc, &(*itb), j, " ");
    }

  }
  return true;
}


bool PU_SectBin::QuickChk(FILE *fp)
{
#if defined(DEBUG)
  if (NumsectNone())
    return true;
  int i = Numsect();
  while (i-- > 0) {
    QuickChk(fp, i);
  }
#endif
  return true;
}
