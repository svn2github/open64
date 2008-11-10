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

#ifndef ripa_phase_ctrl_INCLUDED
#define ripa_phase_ctrl_INCLUDED

#include <list>

#include "mempool.h"
#include "ripa_phase.h"

/* ====================================================================
 * ====================================================================
 *
 *
 * Description:
 *
 * This module provides the interface for phase control.  It is based on
 * the program-independent functions provided by rta/open64/resource.h.
 *
 * ====================================================================
 * ====================================================================
 */

/*
 * RIPA phases should be registered in phase manager. The phase manager will call
 * RIPA functions.
 */

class RIPA_Phase_Manager {
private:
	static int32_t last_phase_id;
	static Phase_List phase_list;	// top level phases only
	static RIPA_Phase *cur_phase;
	static MEM_POOL MEM_ripa_pool;
	static MEM_POOL MEM_ripa_nz_pool;
	static const char *tfile_name;
	static FILE *tfile;

	static CMD_ARGS ripa_args;
	static RIPA_Olist ripa_olist;

public:
	static PHASE_ID Register_Phase(const char *name, int32_t parentId, int32_t prevId);
	static PHASE_ID Register_Phase(RIPA_Phase *cur, RIPA_Phase *parent, RIPA_Phase *prev);

	static void Add_Global_Arg(const char *arg_name, const char *arg_val);
	static void Add_RIPA_File(char *fname);

	static bool Init_IPA(void);
	static bool Do_IPA(void);
	static bool End_IPA(void);

	static PHASE_ID Get_Phase_ID (const char *name);
	static RIPA_Phase *Get_Phase (PHASE_ID ph_id);

	static void Set_Cur_Phase(RIPA_Phase *_phase) { cur_phase = _phase; }
	static const char *Get_Cur_Phase_Name(void);

	static bool Init_Memory(void);
	static inline MEM_POOL *Get_Mempool(void) { return &MEM_ripa_pool; }
	static inline MEM_POOL *Get_Nz_Mempool(void) { return &MEM_ripa_nz_pool; }

	static bool Init_Trace_File(const char *fname);
	static void Set_Trace_File(const char *fname);
	static const char *Get_Trace_File(void) { return tfile_name; }
	static FILE *Get_Trace_File_Desc(void) { if (tfile) return tfile; return stdout; }

	static void Dump_All_Stats(FILE *file);
	static void Accum_All_Stats(void);

	static void Set_Error_Line(int32_t);
	static void Set_Error_File(const char *fname);

	static void Dump_All_Phases(void);

};

#endif /* ripa_phase_ctrl_INCLUDED */
