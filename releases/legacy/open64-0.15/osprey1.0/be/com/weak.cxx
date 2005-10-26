/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

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

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/


// This file contains only Linux-specific code and should be entirely
// #ifdef'd out for Irix.

#ifdef __linux__

// Work around the "undefined weak symbol" bug in Linux.
//
// The run-time linker in Linux only resolves undefined weak symbols once
// at start-up time of a process.  When such symbols cannot be resolved, it
// (correctly) sets their addresses to zero.  However, if later a DSO is
// linked in via "dlopen", and if now this DSO defines some of the
// previously undefined weak symbols, the Linux run-time linker should, but
// in this case does not, update their addresses.
//
// A workaround is to *not* reference these weak symbol directly but always 
// through a pointer, and explicitly initialized the pointer when the DSO
// is linked in.  For example:
//
// In the main program where the symbol (my_data) is referenced:
//
// #ifdef __linux__
// int* my_data_p;
// #define my_data (*my_data_p)
// #else
// extern int my_data;
// #pragma weak my_data
// #endif
//
// In the dso where the symbol is defined:
//
// int my_data;
//
// #ifdef __linux__
// extern int* my_data_p;
// void __init ()
// {
//     my_data_p = &my_data;
// }
//
// __init() is a special function the Linux linker recognizes and places in 
// .init section (or equivalent?) of the dso.  The runtime linker will call 
// this function upon mapping in this dso.

#include "defs.h"
#include "wn.h"
#include "pu_info.h"
#include "ir_bwrite.h"

// ----------------------------------------------------------------------
// symbols defined in lno.so:
// from be/lno/lnodriver.h

void (*lno_main_p) (INT, char**, INT, char**);
void (*Lno_Init_p) ();
void (*Lno_Fini_p) ();
WN* (*Perform_Loop_Nest_Optimization_p) (PU_Info*, WN*, WN*, BOOL);

// ----------------------------------------------------------------------
// symbols defined in wopt.so:

#include "optimizer.h"
#include "opt_defs.h"
#include "opt_wn.h"
#include "opt_bb.h"

// from be/opt/wodriver.h

void (*wopt_main_p) (INT argc, char **argv, INT, char **);
void (*Wopt_Init_p) ();
void (*Wopt_Fini_p) ();
WN* (*Perform_Preopt_Optimization_p) (WN *, WN *);
WN* (*Perform_Global_Optimization_p) (WN *, WN *, struct ALIAS_MANAGER *);

// from be/opt/optimizer.h
WN* (*Pre_Optimizer_p) (INT32, WN*, DU_MANAGER*, ALIAS_MANAGER*);
DU_MANAGER* (*Create_Du_Manager_p) (MEM_POOL *);
void (*Delete_Du_Manager_p) (DU_MANAGER *, MEM_POOL *);

// from be/com/opt_alias_interface.h
BOOL (*Verify_alias_p) (ALIAS_MANAGER *, WN *);

// from be/opt/opt_alias_analysis.cxx
void (*Print_points_to_p) (FILE *fp, POINTS_TO *ptmp);

// from be/opt/opt_wn.h
AUX_ID (*WN_aux_p) (const WN*);

// from be/opt/opt_du.h
BOOL (DU_MANAGER::*CD_is_br_taken_p) (IDTYPE);
BOOL (DU_MANAGER::*CD_is_fall_thru_p) (IDTYPE);
BOOL (DU_MANAGER::*Dominate_p) (IDTYPE, IDTYPE);
IDTYPE (DU_MANAGER::*Get_cd_p) (IDTYPE);
WN* (DU_MANAGER::*Get_last_stmt_p) (IDTYPE);

// from be/opt/opt_htable.h
BOOL (CODEREP::*Def_at_entry_p) () const;
BB_NODE* (CODEREP::*Defbb_p) () const;

// ----------------------------------------------------------------------
// symbols defined in cg.so:
// from be/cg/cgdriver.h

void (*CG_Init_p) ();
void (*CG_Fini_p) ();
void (*CG_Process_Command_Line_p) (INT, char **, INT, char **);

// from be/cg/cg.h
void (*CG_PU_Initialize_p) (WN*);
void (*CG_PU_Finalize_p) ();
void (*CG_Change_Elf_Symbol_To_Undefined_p) (ST*);
WN* (*CG_Generate_Code_p) (WN*, ALIAS_MANAGER*, DST_IDX, BOOL);
void (*CG_Dump_Region_p) (FILE*, WN*);

// from be/cg/eh_region.h
void (*EH_Generate_Range_List_p) (WN *);

// ----------------------------------------------------------------------
// symbols defined in ipl.so:
// from ipa/local/ipl_main.cxx

void (*Ipl_Extra_Output_p) (Output_File *);
void (*Ipl_Init_p) ();
void (*Ipl_Fini_p) ();
void (*ipl_main_p) (INT, char **);
void (*Perform_Procedure_Summary_Phase_p) (WN*, DU_MANAGER*, ALIAS_MANAGER*,
					   void*);

// symbols from whirl2c.so 

void (*W2C_Cleanup_p)(void);
void (*W2C_Fini_p)(void);
void (*W2C_Init_p)(void);
const char * (*W2C_Object_Name_p)(const ST *func_st);
void (*W2C_Mark_Loads_p)(void);
void (*W2C_Nomark_Loads_p)(void);
void (*W2C_Outfile_Fini_p)(BOOL emit_global_decls);
void (*W2C_Outfile_Init_p)(BOOL emit_global_decls);
void (*W2C_Outfile_Translate_Pu_p)(WN *pu, BOOL emit_global_decls);
void (*W2C_Pop_PU_p)(void);
void (*W2C_Process_Command_Line_p)(INT phase_argc, char * const
  phase_argv[], INT argc, char * const argv[]);
void (*W2C_Push_PU_p)(const WN *pu, WN *body_part_of_interest);
void (*W2C_Set_Prompf_Emission_p)(const WN_MAP *construct_map);
void (*W2C_Set_Frequency_Map_p)(WN_MAP frequency_map);
const char *(*W2C_Get_Transformed_Src_Path_p)(void);
void (*W2C_Set_Purple_Emission_p)(void);
void (*W2C_Reset_Purple_Emission_p)(void);
BOOL (*W2C_Should_Emit_Nested_PUs_p)(void);
void (*W2C_Translate_Global_Defs_p)(FILE *outfile);
void (*W2C_Translate_Global_Types_p)(FILE *outfile);
void (*W2C_Translate_Istore_Lhs_p)(char *strbuf,
  UINT bufsize, const WN* lhs, mINT64 istore_ofst, TY_IDX istore_addr_ty,
  TYPE_ID istore_mtype);
void (*W2C_Translate_Purple_Main_p)(FILE *outfile, const WN *pu,
  const char *region_name);
void (*W2C_Translate_Stid_Lhs_p)(char *strbuf, UINT bufsize,
  const ST *stid_st, mINT64 stid_ofst, TY_IDX stid_ty, TYPE_ID stid_mtype);
void (*W2C_Translate_Wn_p)(FILE *outfile, const WN *wn);
void (*W2C_Translate_Wn_Str_p)(char *strbuf, UINT bufsize, const
  WN *wn);

// symbols from whirl2f.so  

void (*W2F_Cleanup_p)(void);
void (*W2F_Def_ST_p)(FILE *outfile, ST *st);
void (*W2F_Fini_p)(void);
void (*W2F_Init_p)(void);
void (*W2F_Mark_Loads_p)(void);
void (*W2F_Nomark_Loads_p)(void);
const char * (*W2F_Object_Name_p)(ST *func_st);
void (*W2F_Outfile_Fini_p)(void);
void (*W2F_Outfile_Init_p)(void);
void (*W2F_Outfile_Translate_Pu_p)(WN *pu);
void (*W2F_Pop_PU_p)(void);
void (*W2F_Process_Command_Line_p)(INT phase_argc, char *phase_argv[], 
  INT argc, char *argv[]);
void (*W2F_Push_PU_p)(WN *pu, WN *body_part_of_interest);
void (*W2F_Set_Prompf_Emission_p)(WN_MAP *construct_map);
void (*W2F_Set_Frequency_Map_p)(WN_MAP frequency_map);
const char * (*W2F_Get_Transformed_Src_Path_p)(void);
void (*W2F_Reset_Purple_Emission_p)(void);
void (*W2F_Set_Purple_Emission_p)(void);
BOOL (*W2F_Should_Emit_Nested_PUs_p)(void);
void (*W2F_Translate_Istore_Lhs_p)(char *strbuf, UINT bufsize,
  WN* lhs, mINT64 istore_ofst, TY_IDX istore_addr_ty, TYPE_ID istore_mtype);
void (*W2F_Translate_Purple_Main_p)(FILE *outfile, WN *pu, 
  const char *region_name);
void (*W2F_Translate_Stid_Lhs_p)(char *strbuf, UINT bufsize, 
  ST *stid_st, mINT64 stid_ofst, TY_IDX stid_ty, TYPE_ID stid_mtype);
void (*W2F_Translate_Wn_p)(FILE *outfile, WN *wn);
void (*W2F_Translate_Wn_Str_p)(char *strbuf, UINT bufsize, WN *wn);

#endif // __linux__
