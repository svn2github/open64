#include <iostream>
#include <stdio.h>
#include <elf.h>
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
  int i = 0;
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
    for (int i=0; i<infile.size(); i++) {
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
