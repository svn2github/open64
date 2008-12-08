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

#ifndef dipa_phase_ctrl_INCLUDED
#define dipa_phase_ctrl_INCLUDED

#include <list>

#include "mempool.h"
#include "dipa_phase.h"

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
 * DIPA phases should be registered in phase manager. The phase manager will call
 * DIPA functions.
 */

class DIPA_Phase_Manager {
private:
    static INT32 last_phase_id;
    static Phase_List phase_list;    // top level phases only
    static DIPA_Phase *cur_phase;
    static MEM_POOL MEM_dipa_pool;
    static MEM_POOL MEM_dipa_nz_pool;
    static const char *tfile_name;
    static FILE *tfile;

    static CMD_ARGS dipa_args;
    static DIPA_Olist dipa_olist;

public:
    static PHASE_ID Register_Phase(const char *name, INT32 parentId, INT32 prevId);
    static PHASE_ID Register_Phase(DIPA_Phase *cur, DIPA_Phase *parent, DIPA_Phase *prev);

    static void Add_Global_Arg(const char *arg_name, const char *arg_val);
    static void Add_DIPA_File(char *fname);

    static BOOL Init_IPA(void);
    static BOOL Do_IPA(void);
    static BOOL End_IPA(void);

    static PHASE_ID Get_Phase_ID (const char *name);
    static DIPA_Phase *Get_Phase (PHASE_ID ph_id);

    static void Set_Cur_Phase(DIPA_Phase *_phase) { cur_phase = _phase; }
    static const char *Get_Cur_Phase_Name(void);

    static BOOL Init_Memory(void);
    static inline MEM_POOL *Get_Mempool(void) { return &MEM_dipa_pool; }
    static inline MEM_POOL *Get_Nz_Mempool(void) { return &MEM_dipa_nz_pool; }

    static BOOL Init_Trace_File(const char *fname);
    static void Set_Trace_File(const char *fname);
    static const char *Get_Trace_File(void) { return tfile_name; }
    static FILE *Get_Trace_File_Desc(void) { if (tfile) return tfile; return stdout; }

    static void Dump_All_Stats(FILE *file);
    static void Accum_All_Stats(void);

    static void Set_Error_Line(INT32);
    static void Set_Error_File(const char *fname);

    static void Dump_All_Phases(void);

};

#endif /* dipa_phase_ctrl_INCLUDED */
