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


/* ====================================================================
 * ====================================================================
 *
 * Revision history:
 *
 * Description:
 *
 * ====================================================================
 * ====================================================================
 */

//#include "defs.h"
#include <stdio.h>
#include <string.h>
#include <signal.h>
#include <stdlib.h>

#include "workaround.h"
#include "dipa_errors.h"
#include "resource.h"
#include "timing.h"
#include "tracing.h"
#include "resource.h"
#include "messg.h"
#include "dipa_phase.h"
#include "dipa_phase_ctrl.h"
#include "dipa_args.h"

DIPA_Phase::DIPA_Phase(const char *_name)
{
	phase_name = _name;
	phase_id = INVALID_PHASE_ID;
	phase_stat = NULL;
	rolist = NULL;
	enabled = false;

	arg_list.clear();
}

/*
 * The phase specific options are in the format:" --phase-name=option%parameter%".
 * pair struct is used to store the options: "first" refers to option and "second"
 * refers to parameter.
 */
void DIPA_Phase::Add_Arg(char *arg)
{
	char *p=arg;
	CMD_ARG pair1;

	pair1.first = arg;
	pair1.second = NULL;
	p = strchr(arg, '%');
	// check if parameter is given
	if (p) {
		*p='\0';
		p++;
		if (*p) {
			pair1.second = p;
			p = strchr(p, '%');
			FmtAssert((p!=NULL), ("Invalid option %s\n", arg));
			*p = '\0';
		}
	}
	arg_list.push_back(pair1);
	DEV_TRACE("Phase %s - added an arg:%s %s\n", Get_Name(), pair1.first, pair1.second);
}

/*
 * The default processing is to dump the global and phase specific options
 */
void DIPA_Phase::Proc_Arg(CMD_ARGS *args, DIPA_Olist *olist)
{
	// global options
	if (args && !args->empty()) {
		CMD_ARGS_Iter it;
		for (it = args->begin(); it != args->end(); it++) {
			fprintf(stdout, "Global args: %s %s\n", (*it).first, (*it).second?(*it).second:"(no value)");
		}
	}

	// DIPA object files
	if (olist && !olist->empty()) {
		DIPA_Olist_Iter iter;
		for (iter = olist->begin(); iter != olist->end(); iter++) {
			fprintf(stdout, "DIPA objects: %s\n", (*iter)->Get_Rfile());
		}
	}

	// Phase specific options
	if (!arg_list.empty()) {
		CMD_ARGS_Iter it;
		for (it = arg_list.begin(); it != arg_list.end(); it++) {
			fprintf(stdout, "Local args: %s %s\n", (*it).first, (*it).second?(*it).second:"(no value)");
		}
	}
}

bool DIPA_Phase::Start(CMD_ARGS *args, DIPA_Olist *olist)
{
	printf("Entering phase %s\n", Get_Name());
	Pre_Dump_IR();

	Post_Dump_IR();

	return true;
}

void DIPA_Phase::Pre_Dump_IR(FILE *file)
{
	if (!Is_Tracing_Enabled()) return;

	FILE *f = (file)?file:stdout;
	fprintf(f, "--Start Dump before phase %s\n", Get_Name());
	// Todo: Dump IR or Annot
	fprintf(f, "--End Dump before phase %s\n", Get_Name());
}

void DIPA_Phase::Post_Dump_IR(FILE *file)
{
	if (!Is_Tracing_Enabled()) return;

	FILE *f = (file)?file:stdout;
	fprintf(f, "--Start Dump after phase %s\n", Get_Name());
	// Todo: DUMP IR or Annot
	fprintf(f, "--End Dump after phase %s\n", Get_Name());
}

void DIPA_Phase::Accum_Stats(void)
{
	Accum_Stats(this);
}

void DIPA_Phase::Accum_Stats(DIPA_Phase *ph)
{
	Phase_List *phList;

	phList = ph->Get_Childs();
	if (!phList->empty()) {
		Phase_Iter it;

		for (it=phList->begin(); it!=phList->end(); it++) {
			Accum_Stats(*it);
		}
	} else {
		// will be changed later
		Add_Timer_To_Parent(Get_Id());
	}
}

void DIPA_Phase::Dump_Stats(FILE *file)
{
	if (!file) file = stdout;

	fprintf(file, "Phase statistics - %s\n", Get_Name());
	Resource_Report(file, RR_Report_Delta, Timer(Get_Id()), NULL);
}

void DIPA_Phase::Help(void)
{
	fprintf(stderr, "Special help for phase %s:\n", Get_Name());
	fprintf(stderr, "\tOverride this function to provide special help messages!\n", Get_Name());
	exit(0);
}
