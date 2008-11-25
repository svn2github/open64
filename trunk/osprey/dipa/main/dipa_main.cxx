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

/*!
\file dipa_main.cxx
\brief dipa driver.

Currently this file is intended as a quick-and-dirty start for bringing
up DIPA. It include below stages:
.system initialization;
.command line option preprocessing;
.Annotation and summary information construction;
.Call open64 backend for optimization;
.Call open64 linker;

Not all of the functions are implemented or finalized. So code changes or completely
rewritten is possible.

Items:
	.Memory management
	.Memory usage monitor
	.Timing
	.Signal handling
	.DIPA error handling
	.Phase control
	.Trace file
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/resource.h>
#include <unistd.h>

#define NO_MEM_POOL_WORKAROUND
#include "workaround.h"
#include "messg.h"
#include "resource.h"
#include "timing.h"

#include "dipa_phase_ctrl.h"
#include "dipa_errors.h"
#include "dipa_globals.h"

#include "dipa_args.h"
#include "rta_scn.h"

void usage(char *prog)
{
	printf("Usage: %s elf-file\n", prog);
	exit(-1);
}


class CDIPA_Phase_Pre:public DIPA_Phase {
public:
	CDIPA_Phase_Pre(const char *_name):DIPA_Phase(_name) {};
	bool Start(CMD_ARGS *args, DIPA_Olist *olist) {
		printf("Do nothing at pre phase\n");
		return true;
	}
};

class CDIPA_Phase_Phase1:public DIPA_Phase {
public:
	CDIPA_Phase_Phase1(const char *_name):DIPA_Phase(_name) {};
	bool Start(CMD_ARGS *args, DIPA_Olist *olist) {
		printf("Do nothing at %s\n", Get_Name());
		return true;
	}
};

class CDIPA_Phase_Phase2:public DIPA_Phase {
public:
	CDIPA_Phase_Phase2(const char *_name):DIPA_Phase(_name) {};
	bool Start(CMD_ARGS *args, DIPA_Olist *olist) {
		printf("Do nothing at %s\n", Get_Name());
		return true;
	}
};


/*
 * Show how DIPA phase manager works
 */
int main(int argc, char *argv[])
{
	DIPA_Phase_Manager::Init_IPA();

	// create 3 top level phases
	CDIPA_Phase_Pre *phase1 = new CDIPA_Phase_Pre ("pre");
	CDIPA_Phase_Phase1 *phase2 = new CDIPA_Phase_Phase1 ("opt1");
	CDIPA_Phase_Phase2 *phase3 = new CDIPA_Phase_Phase2 ("opt2");

	// create 2 subphases for phase 1. Just for example.
	DIPA_Phase *subphase1 = new DIPA_Phase ("sub phase1");	// subphase 1 of phase2
	DIPA_Phase *subphase2 = new DIPA_Phase ("sub phase2");	// subphase 2 of phase2

	// register the top level phases
	PHASE_ID phase1Id = DIPA_Phase_Manager::Register_Phase(phase1, NULL, NULL);
	PHASE_ID phase2Id = DIPA_Phase_Manager::Register_Phase(phase2, NULL, phase1);
	PHASE_ID phase3Id = DIPA_Phase_Manager::Register_Phase(phase3, NULL, phase1);

	// register the 2 subphases for phase2
	PHASE_ID subphase1Id = DIPA_Phase_Manager::Register_Phase(subphase1, phase2, NULL);
	PHASE_ID subphase2Id = DIPA_Phase_Manager::Register_Phase(subphase2, phase2, subphase1);

	Dipa_Proc_Options(argc, argv);

	DIPA_Phase_Manager::Dump_All_Phases();
	DIPA_Phase_Manager::Do_IPA();
	DIPA_Phase_Manager::End_IPA();

	MEM_Trace();

	return 0;
}
