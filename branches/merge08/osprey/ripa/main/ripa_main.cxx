/*

  Copyright (C) 2008 .  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 3 of the GNU General Public License as
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

#include <stdio.h>
#include <stdlib.h>

#include "rta_scn.h"

void usage(char *prog)
{
	printf("Usage: %s elf-file\n", prog);
	exit(-1);
}

int main(int argc, char *argv[])
{
	printf("Open Runtime IPA Version 0.0.0.0\n");
	if (argc < 2) usage(argv[0]);

	Dump_Rta_Scns(argv[1]);
	return 0;
}
