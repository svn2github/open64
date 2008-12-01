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
 * This module provides phase control functions for DIPA.
 * It is based on the program-independent functionality provided by
 * resource.cxx (via resource.h).
 *
 * ====================================================================
 * ====================================================================
 */

//#include "defs.h"
#include <stdio.h>
#include <string.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>
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
#include "cxx_memory.h"

INT DIPA_Phase_Manager::last_phase_id = T_DIPA_TIMER_FIRST;
Phase_List DIPA_Phase_Manager::phase_list;
DIPA_Phase *DIPA_Phase_Manager::cur_phase=NULL;
MEM_POOL DIPA_Phase_Manager::MEM_dipa_pool;
MEM_POOL DIPA_Phase_Manager::MEM_dipa_nz_pool;
const char *DIPA_Phase_Manager::tfile_name=NULL;
FILE *DIPA_Phase_Manager::tfile=NULL;
CMD_ARGS DIPA_Phase_Manager::dipa_args;
DIPA_Olist DIPA_Phase_Manager::dipa_olist;

/*
 * This function returns next available phase id. Currently phase id
 * is defined as timer id internally. The free phase id
 * are reserved in TIMER_ID from T_LAST_COMPILER to T_DIPA
 * This function can't be called in multiple processes simultaneously.
 *
 * Will be changed later.
 */
PHASE_ID DIPA_Phase_Manager::Register_Phase(const char *name, INT parentId, INT prevId)
{
	if ( last_phase_id >= T_DIPA_TIMER_LAST ) {
		FmtAssert((false), ("Too many timers allocated\n"));
	}
	INT curId = last_phase_id++;
	Alloc_Phase (curId, name, parentId);
	return (PHASE_ID)curId;
}

PHASE_ID DIPA_Phase_Manager::Register_Phase(DIPA_Phase *cur, DIPA_Phase *parent, DIPA_Phase *prev)
{
	Phase_List* ph_list=NULL;
	if (parent == NULL) {
		// top level phase, insert into top level phase list after prev phase
		ph_list = &phase_list;
	} else {
		// insert in the parent's child list
		ph_list = parent->Get_Childs();
	}

	if (prev) {
		Phase_Iter it;
		for (it = ph_list->begin(); it != ph_list->end(); it++) {
			if ((*it) == prev) break;
		}
		// if not found
		FmtAssert((it != ph_list->end()), ("Fatal error: phase %s not registered at the same level\n", prev->Get_Name()));

		it++;
		ph_list->insert(it, cur);
	} else {
		// insert at the end
		ph_list->push_back(cur);
	}

	// attach timer info
	/*
	 * \todo timer_id in timing.h is used as phase id for convenience at present. This
	 * will be changed later.
	 */
	FmtAssert((last_phase_id < T_DIPA_TIMER_LAST), ("Too many timers allocated\n"));

	int32_t curId = last_phase_id++;
	cur->Set_Id(curId);
	Alloc_Phase (curId, cur->Get_Name(), (parent)?parent->Get_Id():INVALID_PHASE_ID);

	// Receive command line options
	Dipa_add_phase_opt((char *)cur->Get_Name(), cur->Get_Id());

	// This phase is enabled by default after register
	cur->Enable();
	cur->Enable_Tracing();

	return 0;
}

void DIPA_Phase_Manager::Add_Global_Arg(const char *arg_name, const char *arg_val)
{
	CMD_ARG pair1;

	pair1.first = arg_name;
	pair1.second = NULL;
	if (arg_val && arg_val[0])
		pair1.second = arg_val;
	dipa_args.push_back(pair1);
}

void DIPA_Phase_Manager::Add_DIPA_File(char *fname)
{
	DIPA_Obj *robj = CXX_NEW (DIPA_Obj(), Get_Nz_Mempool());	// Don't worry about new, it will be changed later

	FmtAssert((robj != NULL), ("Failed to allocate DIPA obj!\n"));
	robj->Set_Rfile(fname);

	dipa_olist.push_back(robj);
}

PHASE_ID DIPA_Phase_Manager::Get_Phase_ID (const char *name)
{
	INT tid;
	for (tid=0; tid<last_phase_id; tid++) {
		if (strcmp(name, Get_Timer_Name(Timer(tid))) == 0) {
			return (PHASE_ID)tid;
		}
	}
	return INVALID_PHASE_ID;
}

void DIPA_Phase_Manager::Dump_All_Stats(FILE *file)
{
	Phase_Iter it;

	for (it = phase_list.begin(); it != phase_list.end(); it++) {
		(*it)->Dump_Stats();
	}
}

void DIPA_Phase_Manager::Accum_All_Stats(void)
{
	Phase_Iter it;

	printf("entering Accum_All_Stats\n");

	for (it = phase_list.begin(); it != phase_list.end(); it++) {
		(*it)->Accum_Stats();
	}
}

void DIPA_Phase_Manager::Dump_All_Phases(void)
{
	printf("\n---Dump all phases - total #:%d\n", phase_list.size());
	for (Phase_Iter it=phase_list.begin(); it!=phase_list.end(); it++ ) {
		(*it)->Dump_Phase(0);
	}
	printf("\tDump global arguments\n");
	CMD_ARGS_Iter iter;
	for (iter=dipa_args.begin(); iter!=dipa_args.end(); iter++) {
		if ((*iter).first != NULL) {
			printf("\t\toption name [%s]: val %s\n", (*iter).first, (*iter).second);
		} else {
			printf("\t\tfile: %s\n", (*iter).second);
		}
	}
	printf("---Dump end\n\n");
}


void Catch_Signal(int sig)
{
	signal (sig, SIG_DFL);

	const char *ph_name = DIPA_Phase_Manager::Get_Cur_Phase_Name();

	fprintf (stderr, "SIGNAL: %s", strsignal(sig));
	fprintf (stderr, " in %s phase.\n",  ph_name ? ph_name : "startup");
	fflush (stderr);

	if ( SIGHUP == sig || SIGTERM == sig || SIGINT == sig) {
		kill (getpid(), sig);
		exit (DIPA_INTERNAL_ERROR);
	}

	fprintf(stderr, "Signal %s not handled. Terminated.\n", strsignal(sig));
	exit (DIPA_INTERNAL_ERROR);
}

void setup_signal_handler(int sig)
{
	signal (sig, Catch_Signal);
}

void Init_Signal_Handlers(void)
{
	setup_signal_handler (SIGHUP);
	setup_signal_handler (SIGINT);
	setup_signal_handler (SIGQUIT);
	setup_signal_handler (SIGILL);
	setup_signal_handler (SIGTRAP);
	setup_signal_handler (SIGIOT);
	setup_signal_handler (SIGFPE);
	setup_signal_handler (SIGBUS);
	setup_signal_handler (SIGSEGV);
	setup_signal_handler (SIGTERM);
}

bool DIPA_Phase_Manager::Init_Memory(void)
{
	MEM_POOL_Initialize(&MEM_dipa_pool,"dipa",TRUE);

	MEM_POOL_Push(&MEM_dipa_pool);

	MEM_POOL_Initialize(&MEM_dipa_nz_pool,"dipa (nz)",FALSE);

	MEM_POOL_Push(&MEM_dipa_nz_pool);

	return true;
}

void DIPA_Phase_Manager::Set_Trace_File(const char *fname)
{
	tfile_name = fname;
}

bool DIPA_Phase_Manager::Init_Trace_File(const char *fname)
{
	tfile_name = fname;
	if (fname && fname[0]) {
		tfile = fopen(fname, "wb");
		FmtAssert((tfile!=NULL),("Can't create trace file %s\n", fname));
		return true;
	}

	return false;
}

bool DIPA_Phase_Manager::Init_IPA(void)
{
	Init_Signal_Handlers();
	Init_Memory();

	// This will be changed later.
	Initialize_Timing (true);

	return true;
}

bool DIPA_Phase_Manager::Do_IPA(void)
{
	Reset_Timers();

	Phase_Iter it;

	for (it = phase_list.begin(); it != phase_list.end(); it++) {
		if ((*it)->Is_Enabled() == false ) continue;

		Set_Cur_Phase(*it);
		Start_Timer((*it)->Get_Id());

		// execute phase actions one by one
		(*it)->Start(&dipa_args, &dipa_olist);

		Stop_Timer((*it)->Get_Id());
	}

	return true;
}

bool DIPA_Phase_Manager::End_IPA(void)
{
	// below should be guarded by command line options
	Accum_All_Stats();
	Dump_All_Stats(Get_Trace_File_Desc());

	return true;
}

const char *DIPA_Phase_Manager::Get_Cur_Phase_Name(void)
{
	const char *p = (cur_phase)?cur_phase->Get_Name():NULL;
	return p;
}

/*
 * Search the top phases only at this moment
 *
 */
DIPA_Phase *DIPA_Phase_Manager::Get_Phase (PHASE_ID ph_id)
{
	Phase_Iter it;
	for (it = phase_list.begin(); it != phase_list.end(); it++) {
		if ((*it)->Get_Id() == ph_id)
			return *it;
	}
	FmtAssert((false),("Can't find phase with id %d\n", ph_id));
}

// Workaround to provide trace functions for old timing/mem code
#ifdef __cplusplus
extern "C" {
#endif

char *Get_Trace_File(void) { return (char *)DIPA_Phase_Manager::Get_Trace_File(); }
FILE *Get_Trace_File_Desc(void) { return DIPA_Phase_Manager::Get_Trace_File_Desc(); }
BOOL Get_Trace ( INT func, INT arg ) { return false; }

#ifdef __cplusplus
}
#endif
