
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
#include <stdlib.h>
#include "elf_reader.h"
#include "elf_reader64.h"
#include <string.h>
#include <vector>
#include "messg.h"
#include "rta.h"
#include "wn_reader.h"
#include "rta_reader.h"

using namespace std;

typedef struct {
  char* name;
  // pu_list
} Infile;

FILE* dump_file = 0;



int main(int argc, char **argv)
{
  INT i = 0;
  std::vector<Infile> infile;
  FILE* fdo;

  if (argc < 2) {
    std::cout << "Usage: rtadump [[-m] infile1 infile2 ... ]\n";
    exit(1);
  }

  while (++i != argc) {
    Infile ibin;
    if (strcmp(argv[i], "-m") == 0) {
      i++;
      if (i >= argc) {
    std::cout << "missing file name after -m\n";
    exit(1);
      }
      ibin.name = argv[i];
      infile.push_back(ibin);
    }
  }

  try {
    for (INT i=0; i<infile.size(); i++) {
      ELFBin annot_obj;
      char* s = infile[i].name;
      annot_obj.createELFObj(s);
      annot_obj.dumpBin(stdout);
    }
  }

  catch (STRING s) {
    fprintf(stderr, "Elf file %s read error\n",argv[1]);
    exit(1);
  }
  exit(0);
}
