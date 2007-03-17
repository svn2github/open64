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


/* ====================================================================
 *
 * Module: cgemit.c
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/cgemit.cxx,v $
 *
 * Description:
 *
 * Emit object code and/or assembly instructions from compiler.
 *
 * ====================================================================
 * ====================================================================
 */

#define __STDC_LIMIT_MACROS
#include <stdint.h>

#include <ctype.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <bstring.h>
#include <elf_stuff.h>
#include <libelf/libelf.h>
#include <elfaccess.h>
#include <alloca.h>
#include <stdlib.h>
#include <cmplrs/rcodes.h>
#include <stamp.h>
#include <vector>

#define	USE_STANDARD_TYPES 1
#include "defs.h"
#include "config.h"
#include "config_asm.h"
#include "config_TARG.h"
#include "config_debug.h"
#include "targ_const.h"
#include "strtab.h"
#include "symtab.h"
#include "wn.h"

#include "erglob.h"
#include "erlib.h"
#include "ercg.h"
#include "file_util.h"
#include "flags.h"
#include "glob.h"
#include "xstats.h"
#include "tracing.h"
#include "cgir.h"
#include "import.h"
#include "opt_alias_interface.h"	/* for Print_alias_info */
#include "anl_driver.h"			/* for Anl_File_Path */
#include "ti_asm.h"
#include "ti_errors.h"
#include "targ_proc_properties.h"
#include "targ_abi_properties.h"
#include "targ_isa_print.h"
#include "targ_isa_enums.h"
#include "targ_isa_pack.h"
#include "targ_isa_bundle.h"
#include "targ_isa_operands.h"

#include "cg.h"				/* for Alias_Manager */
#include "const.h"
#include "whirl2ops.h"			/* for Get_WN_From_Memory_OP */
#include "stblock.h"
#include "data_layout.h"
#include "sections.h"
#include "dwarf_DST_mem.h"

#include "calls.h"
#include "cgemit.h"
#include "cgtarget.h"
#include "irbdata.h"
#include "em_elf.h"
#include "cgdwarf.h"
#include "cgdwarf_targ.h"
#include "em_dwarf.h"
#include "tn_set.h"
#include "iface_scn.h"
#include "config_targ.h"
#include "config_list.h"
#include "note.h"
#include "cgexp.h"
#include "eh_region.h"
#include "cg_flags.h"
#include "region_util.h"
#include "cg_region.h"
#include "targ_isa_lits.h"
#include "freq.h"
#include "vstring.h"
#include "label_util.h"
#include "cgemit_targ.h"
#include "cg_swp.h"
#include "tag.h"
#include "targ_issue_port.h"
#include "cggrp_microsched.h" 
#include "val_prof.h"
#include "be_util.h" // for current_pu_count
#include "dwarf_stuff.h"
extern "C" {
#include "pro_encode_nm.h"
}
extern void Early_Terminate (INT status);

#define PAD_SIZE_LIMIT	2048	/* max size to be padded in a section */

/* c++ mangled names can be any arbitrary length,
 * so this is just a first guess */ 
#define LBUF_LEN	(OP_MAX_FIXED_OPNDS*1024)

/* Instructions go into one of two ELF text sections depending on
 * whether the BB is in a hot or cold region. Hot BBs go into
 * ".text" (or ".text<pu-name>" for -TENV:section_for_each_function).
 * Cold BBs go into ".text.cold". As a result, numerous cgemit
 * routines need to track the PC of both sections, and 2 element
 * arrays are typically used. Here we define the indices for
 * the arrays, with the values chosen to coincide with the result
 * of BB_Is_Cold.
 */
enum { IHOT=FALSE, ICOLD=TRUE };

/* Overload BB flag <local_flag1> to indicate if a BB is cold or hot --
 * it's less overhead than BB_Is_Cold.
 */
#define BB_cold		BB_local_flag1
#define Set_BB_cold	Set_BB_local_flag1
#define Reset_BB_cold	Reset_BB_local_flag1

extern const char __Release_ID[];

/* ====================================================================
 *
 * Global data
 *
 * ====================================================================
 */

#ifdef TARG_IA64
BOOL CG_emit_asm_dwarf    = TRUE;
BOOL CG_emit_unwind_info  = TRUE;
BOOL CG_emit_unwind_directives = TRUE;
#else
BOOL CG_emit_asm_dwarf    = FALSE;
BOOL CG_emit_unwind_info  = FALSE;
BOOL CG_emit_unwind_directives = FALSE;
#endif
static BOOL generate_dwarf = FALSE;
static BOOL generate_elf_symbols = FALSE;

/* Local phase trace flags: */
static BOOL Trace_Init    = FALSE;	/* Data initialization trace */
static BOOL Trace_Inst    = FALSE;	/* Noop-insertion trace */
static BOOL Trace_Elf     = FALSE;	/* Miscellaneous ELF trace */
static BOOL Trace_Longbr  = FALSE;	/* trace handling of long branches */

BOOL Use_Page_Zero = FALSE;
static BOOL Use_Prefetch = FALSE;


// For dwarf output in assembly we need to keep track of the 
// offset of the current instruction from a known label.
// If Last_Label is LABEL_IDX_ZERO, it is assumed to be invalid.
static LABEL_IDX Last_Label = LABEL_IDX_ZERO;
static INT32 Offset_From_Last_Label = 0;

static LABEL_IDX Initial_Pu_Label;

/* NOTE: PCs are actually a bundle address and slot number pair. The 
 * slot number is in the low bits. 
 */
static INT32 PC = 0;			/* PC for current text section */
static INT32 text_PC = 0;		/* PC for hot text */
static INT32 cold_PC = 0;		/* PC for cold text */

static ST *PU_base = NULL;		/* base for current text section */
static ST *text_base = NULL;		/* base for hot text section */
static ST *cold_base = NULL;		/* base for cold text section */

static pSCNINFO PU_section = NULL;	/* current text section */
static pSCNINFO text_section = NULL;	/* hot text section */
static pSCNINFO cold_section = NULL;	/* cold text section */


static INT current_rid = 0;	/* current rid id */

typedef struct {
  pSCNINFO scninfo;
  Elf64_Word scn_ofst;
  ST *sym;
} AUX_SCN;

static AUX_SCN *em_scn;
static INT last_scn = 0;	
static INT max_scn = 0;
/* 0 index to em_scn will be null values */

static ST *cur_section = NULL;

static PU_IDX current_pu = 0;

// put PU in separate elf text section?
// (pu could be null if no PUs)
#define Use_Separate_PU_Section(pu,st) \
	((pu != (PU_IDX) NULL) \
	&& (Section_For_Each_Function || PU_in_elf_section(pu)) \
	&& (ST_class(st) == CLASS_BLOCK) \
	&& (strcmp(ST_name(st),ELF_TEXT) == 0))

static FILE *anl_file;

/*
 * For the elf indexes, we can reuse the temp field for local STs,
 * Need to map from ST's to the elf index for the ST.
 * So create array of index arrays, where the ST_level
 * gets you to the index array, and then the ST_index 
 * gets you to the elf index for that ST.
 */

/*
 * Maximum nesting depth includes these scopes, in the deepest case:
 *  0 : not used
 *  1 : global scope
 *  2 : top-level PU
 *  3 : F90 internal procedure
 *  4 : MP PU from internal procedure
 *  5 : Fortran I/O in MP PU
 */

#define MAX_SYMTAB_DEPTH	6

static INT32 *elf_index_array[MAX_SYMTAB_DEPTH] =
  {NULL,NULL,NULL,NULL,NULL,NULL};
static INT max_elf_index[MAX_SYMTAB_DEPTH] = {0,0,0,0,0,0};

static void
Allocate_Elf_Index_Space (UINT level)
{
	INT num_sts = ST_Table_Size(level);

	if (elf_index_array[level] == NULL) {
		max_elf_index[level] = num_sts + 100;
		/* for the size take the #st's + extra space for new symbols */
		elf_index_array[level] = (INT32*) Src_Alloc(
			sizeof(INT32) * max_elf_index[level]);
	} else if (max_elf_index[level] < num_sts + 10) {  
		/* # globals has grown, so realloc. */
		/* we realloc even if close and not yet overflowed,
		 * because may alloc new symbols as part of cg. */
		elf_index_array[level] = TYPE_MEM_POOL_REALLOC_N (INT32, 
			&MEM_src_pool, elf_index_array[level], 
			max_elf_index[level], num_sts + 100);
		max_elf_index[level] = num_sts + 100;
	}
}

static void
Init_ST_elf_index (UINT stab)
{
	UINT level = stab;
	INT i;
	Allocate_Elf_Index_Space(GLOBAL_SYMTAB);
	Is_True((level < MAX_SYMTAB_DEPTH), 
		("Init_ST_elf_index overflow"));
	if (level > GLOBAL_SYMTAB && elf_index_array[level] != NULL) {
		/* need to clear the values in case leftover 
	 	 * from previous uplevel */
		for (i = 0; i < max_elf_index[level]; i++) {
			elf_index_array[level][i] = 0;
		}
	}
	Allocate_Elf_Index_Space(stab);
}

static INT32
ST_elf_index (ST *st)
{
	INT level = ST_level(st);
	Is_True((level < MAX_SYMTAB_DEPTH), 
		("ST_elf_index overflow"));
	Is_True((ST_index(st) < max_elf_index[level]), 
		("ST_elf_index overflow"));
	return elf_index_array[level][ST_index(st)];
}

static void
Set_ST_elf_index (ST *st, INT32 v)
{
	INT level = ST_level(st);
	Is_True((level < MAX_SYMTAB_DEPTH), 
		("Set_ST_elf_index overflow"));
	Is_True((ST_index(st) < max_elf_index[level]),
		("Set_ST_elf_index overflow"));
	elf_index_array[level][ST_index(st)] = v;
}

/* Determine if the symbol has a base of gp */
static BOOL
ST_is_gp_relative(ST *st)
{
  ST *base_st = Base_Symbol (st);

  return ((ST_class(base_st) == CLASS_BLOCK || 
	   ST_class(base_st) == CLASS_VAR) && 
	  ST_gprel(base_st));
}


#define Is_Text_Section(st) (STB_exec(st) && strncmp(ST_name(st), ELF_TEXT,5)==0)

static void
Init_Section (ST *st)
{
	Elf64_Word scn_type;
	Elf64_Word scn_flags;
	Elf64_Xword scn_entsize;

	if (ST_elf_index(st) != 0) {
		/* already created */
		return;
	}
	if (last_scn >= (max_scn-1)) {
		/* allocate new block of sections */
		max_scn += 30;
		if (em_scn == NULL)
			em_scn = (AUX_SCN *)Src_Alloc(sizeof(AUX_SCN)*max_scn);
		else
			em_scn = TYPE_MEM_POOL_REALLOC_N (AUX_SCN, 
				&MEM_src_pool, em_scn, (max_scn-30), max_scn);
	}
	last_scn++;
	Set_STB_scninfo_idx(st, last_scn);

	/* hack for .text section */
	if (Is_Text_Section(st)) {
		if (Align_Instructions) 
			Set_STB_align(st, Align_Instructions);
		else if (OPT_Space)
			Set_STB_align(st, INST_BYTES);
		else
			Set_STB_align(st, CGTARG_Text_Alignment());
	}

	em_scn[last_scn].sym = st;	/* save symbol for later reference */

	/* assume st is CLASS_BLOCK */
	scn_type = Get_Section_Elf_Type(STB_section_idx(st));
	scn_flags = Get_Section_Elf_Flags(STB_section_idx(st));
	if (Is_Text_Section(st) && 
		current_pu != (PU_IDX) NULL && PU_in_elf_section(current_pu)) 
	{
		scn_flags |= SHF_MIPS_NODUPE;
	}
	
	scn_entsize = Get_Section_Elf_Entsize(STB_section_idx(st));

	if (generate_elf_symbols) {
		em_scn[last_scn].scninfo = Em_New_Section (ST_name(st), 
			scn_type, scn_flags, scn_entsize, STB_align(st));

		/* initialize elf data buffer. */
		if (!STB_nobits(st)) {
			Em_New_Data_Buffer (em_scn[last_scn].scninfo, 
				STB_size(st) + 100, 1);
		}
		Set_ST_elf_index(st,
			Em_Create_Section_Symbol (em_scn[last_scn].scninfo));
	}
	else {
		/* set dummy value just so don't redo this */
		Set_ST_elf_index(st, 1);
	}

	if (Assembly) {
	  CGEMIT_Prn_Scn_In_Asm(st, scn_type, scn_flags, scn_entsize, cur_section);
	}
}

static unsigned char
st_other_for_sym (ST *sym)
{
  unsigned char symother;

  switch (ST_export(sym)) {
    case EXPORT_HIDDEN:
      symother = STO_HIDDEN;
      break;
    case EXPORT_PROTECTED:
      symother = STO_PROTECTED;
      break;
    case EXPORT_INTERNAL:
      symother = STO_INTERNAL;
      break;
    case EXPORT_OPTIONAL:
      symother = STO_OPTIONAL;
      break;
    default:
      symother = STO_DEFAULT;
      break;
  }
  return symother;
}

static INT64
Get_Offset_From_Full (ST *sym)
{
	/* full-split symbols have names of form "full_.offset"
	 * we need to extract the offset and pass that in value field.
	 * An alternative would be to search type structure for
	 * matching fields, but this is probably faster.
	 */
	char *offset_string;
        offset_string = strrchr (ST_name(sym), '.');
        FmtAssert(offset_string != NULL, ("Get_Offset_From_Full unexpected name format (%s)", ST_name(sym)));
        offset_string++;       /* skip the period */
	return atoll(offset_string);
}



static void
add_reloc_type (Elf64_AltRela *preloc, unsigned char reloc_type, pSCNINFO scn)
{
  if (REL64_type3(*preloc) != 0) {
    Elf64_Addr sv_offset = REL_offset(*preloc);
    Em_Add_New_Composite_Rela (preloc, scn);
    bzero (preloc, sizeof (Elf64_AltRela));
    REL_offset(*preloc) = sv_offset;
    REL64_type(*preloc) = reloc_type;
  }
  else if (REL64_type2(*preloc) != 0) {
    REL64_type3(*preloc) = reloc_type;
  }
  else if (REL64_type(*preloc) != 0) {
    REL64_type2(*preloc) = reloc_type;
  }
  else {
    REL64_type(*preloc) = reloc_type;
  }
}

/***********************************************************************
 *
 * Instruction-PC utilities.
 *
 * On architectures that support bundling, we use a PC representation
 * that enables us to point at instructions within the bundle.
 * We accomplish this by using the low bits of the bundle address
 * (which are normally zero because of alignment constraints) to
 * hold the instruction offset, i.e. slot number, within the bundle.
 *
 * The following utility routines provide for updating and accessing
 * the composite PC values.
 *
 ***********************************************************************
 */


/* Given a composite PC, return the bundle address component.
 */
inline INT32 PC_Bundle(INT32 pc)
{
  return pc & ~(INST_BYTES - 1);
}

/* Given a composite PC, return the slot number component.
 */
inline INT32 PC_Slot(INT32 pc)
{
  return pc & (INST_BYTES - 1);
}

/* Increment a composite PC by 1. The slot number is incremented, 
 * and if it overflows, the bundle address is adjusted as well.
 */
inline INT32 PC_Incr(INT32 pc)
{
  ++pc;

  if (PC_Slot(pc) == ISA_MAX_SLOTS) {
    pc += INST_BYTES - ISA_MAX_SLOTS;
  }

  return pc;
}

/* Same as PC_Incr except the increment is an arbitrary constant.
 */
inline INT32 PC_Incr_N(INT32 pc, UINT32 incr)
{
  UINT slots = PC_Slot(pc) + incr;
  UINT bundles = slots / ISA_MAX_SLOTS;
  pc = PC_Bundle(pc) + (bundles * INST_BYTES) + (slots % ISA_MAX_SLOTS);
  return pc;
}

void
EMT_Write_Qualified_Name (FILE *f, ST *st)
{
  if (ST_name(st) && *(ST_name(st)) != '\0') {
	fprintf (f, "%s", ST_name(st));
	if ( ST_is_export_local(st) && ST_class(st) == CLASS_VAR) {
		// local var, but being written out.
		// so add suffix to help .s file distinguish names.
		// assume that statics in mult. pu's will 
		// get moved to global symtab, so don't need pu-num
		if (ST_level(st) == GLOBAL_SYMTAB)
		    fprintf (f, "%s%d", Label_Name_Separator, ST_index(st));
		else
		    fprintf (f, "%s%d%s%d", Label_Name_Separator, 
			ST_pu(Get_Current_PU_ST()),
			Label_Name_Separator, ST_index(st) );
	}
	else if (*Symbol_Name_Suffix != '\0') {
		fprintf (f, "%s", Symbol_Name_Suffix);
	}
  } else {
	fprintf (f, "%s %+lld", ST_name(ST_base(st)), ST_ofst(st));
  }
}

/* print the internal, hidden or protected attributes if present */
static void Print_Dynsym (FILE *pfile, ST *st)
{
  const char* x = AS_DYNSYM;
  if (x) {
    fprintf (pfile, "\t%s\t", x);
    EMT_Write_Qualified_Name (pfile, st);
    switch (ST_export(st)) {
      case EXPORT_INTERNAL:
	fprintf (pfile, "\tsto_internal\n");
	break;
      case EXPORT_HIDDEN:
	fprintf (pfile, "\tsto_hidden\n");
	break;
      case EXPORT_PROTECTED:
	fprintf (pfile, "\tsto_protected\n");
	break;
      case EXPORT_OPTIONAL:
	fprintf (pfile, "\tsto_optional\n");
	break;
      default:
	fprintf (pfile, "\tsto_default\n");
	break;
    }
  }
}

static void Print_Label (FILE *pfile, ST *st, INT size)
{
    ST *base_st;
    INT64 base_ofst;
    
    // bug fix for OSP_155
    if (ST_is_export_hidden(st)) {
        fprintf ( pfile, "\t%s\t", AS_HIDDEN);
        EMT_Write_Qualified_Name(pfile, st);
        fprintf(pfile, "\n");
    }

    if (ST_is_weak_symbol(st)) {
	fprintf ( pfile, "\t%s\t", AS_WEAK);
	EMT_Write_Qualified_Name(pfile, st);
	fprintf(pfile, "\n");
    }
    else if (!ST_is_export_local(st)) {
	fprintf ( pfile, "\t%s\t", AS_GLOBAL);
	EMT_Write_Qualified_Name(pfile, st);
	fprintf(pfile, "\n");
    }

    if (ST_class(st) == CLASS_VAR) {
    	fprintf (pfile, "\t%s\t", AS_TYPE);
    	EMT_Write_Qualified_Name (pfile, st);
    	fprintf (pfile, ", %s\n", AS_TYPE_OBJECT);
    }
    if (size != 0) {
	/* if size is given, then emit value for asm */
      	fprintf ( pfile, "\t%s\t", AS_SIZE);
	EMT_Write_Qualified_Name(pfile, st);
	fprintf ( pfile, ", %d\n", size);
    }
    Base_Symbol_And_Offset (st, &base_st, &base_ofst);
    EMT_Write_Qualified_Name (pfile, st);
    fprintf ( pfile, ":\t%s 0x%llx\n", ASM_CMNT, base_ofst);
    Print_Dynsym (pfile, st);
}

static void
Print_Common (FILE *pfile, ST *st)
{
  ST *base_st;
  INT64 base_ofst;
  Base_Symbol_And_Offset (st, &base_st, &base_ofst);
  if (st != base_st && ST_sclass(base_st) == SCLASS_COMMON) {
	// use base common
	if (ST_elf_index(base_st) == 0) {
		Print_Common (pfile, base_st);
	}
	return;
  }
  
  if (TY_size(ST_type(st)) > 0) {

    if (ST_is_weak_symbol(st)) {
	fprintf ( pfile, "\t%s\t", AS_WEAK);
	EMT_Write_Qualified_Name(pfile, st);
	fprintf ( pfile, "\n");
    }
    fprintf ( pfile, "\t%s\t", AS_COM);
    EMT_Write_Qualified_Name(pfile, st);
    fprintf ( pfile, ", %lld, %d\n", 
		TY_size(ST_type(st)), TY_align(ST_type(st)));
    Print_Dynsym (pfile, st);
    // this is needed so that we don't emit commons more than once
    if (!generate_elf_symbols) Set_ST_elf_index(st, 1);
  }
}


/* ====================================================================
 *
 * EMT_Put_Elf_Symbol
 *
 * Add a symbol to the ELF symbol table if it hasn't been added already.
 * ====================================================================
 */

mINT32 EMT_Put_Elf_Symbol (ST *sym)
{
  unsigned char symbind;
  unsigned char symother;
  Elf64_Word symindex;
  TY_IDX sym_type;
  ST *base_st;
  INT64 base_ofst = 0;
  ST_SCLASS sclass;

  symindex = ST_elf_index(sym);

  /* check if symbol is already there. */
  if (symindex != 0) return symindex;

  if ( Trace_Elf ) {
    #pragma mips_frequency_hint NEVER
    fprintf ( TFile, "EMT_Put_Elf_Symbol:\n" );
    Print_ST ( TFile, sym, FALSE );
  }
  if ( ! generate_elf_symbols) {
	// if only .s file, then just do dummy mark that we have
	// seen this symbol and emitted any type info for it.
	if (ST_class(sym) == CLASS_FUNC) {
		fprintf (Asm_File, "\t%s\t", AS_TYPE);
		EMT_Write_Qualified_Name (Asm_File, sym);
		fprintf (Asm_File, ", %s\n", AS_TYPE_FUNC);
	}
	else if (ST_class(sym) == CLASS_VAR && ST_sclass(sym) == SCLASS_COMMON) {
		Print_Common (Asm_File, sym);
	}
	Set_ST_elf_index(sym, 1);
	return 0;
  }

  Is_True (!ST_is_not_used(sym) || ST_emit_symbol(sym), 
	      ("Reference to not_used symbol (%s)", ST_name(sym)));

  /* set the symbol binding. */
  if (ST_is_weak_symbol(sym)) {
    symbind = STB_WEAK;
  }
  else if (ST_is_export_local(sym)) {
    symbind = STB_LOCAL;
  }
  else {
    symbind = STB_GLOBAL;
  }

  symother = st_other_for_sym (sym);

  Base_Symbol_And_Offset (sym, &base_st, &base_ofst);
  // check if base is new section symbol that is not initialized yet
  if (ST_class(base_st) == CLASS_BLOCK && STB_section(base_st)
	&& ST_elf_index(base_st) == 0)
  {
	Init_Section(base_st);
  }

  if (ST_is_weak_symbol(sym) && ST_sclass(base_st) == SCLASS_EXTERN) {
	// ipa can cause it to be based on global extern,
	// in which case treat it as an extern
	sclass = ST_sclass(base_st);
  }
  else {
	sclass = ST_sclass(sym);
  }
  switch (ST_class(sym)) {
    case CLASS_VAR:
      sym_type = ST_type(sym);	// only valid for VARs
      switch (sclass) {
	case SCLASS_FSTATIC:
	case SCLASS_DGLOBAL:
	case SCLASS_UGLOBAL:
	  symindex = Em_Add_New_Symbol (
			ST_name(sym), base_ofst, TY_size(sym_type), 
			symbind, STT_OBJECT, symother,
			Em_Get_Section_Index (em_scn[STB_scninfo_idx(base_st)].scninfo));
	  break;
	case SCLASS_EXTERN:
	  symindex = Em_Add_New_Symbol (
		      ST_name(sym), 0, TY_size(sym_type),
		      symbind, STT_OBJECT, symother,
		      ST_is_gp_relative(sym) ? SHN_MIPS_SUNDEFINED : SHN_UNDEF);
	  
	  if (Assembly) 
	    if (ST_is_weak_symbol(sym)) {
	      fprintf ( Asm_File, "\t%s\t", AS_WEAK);
	      EMT_Write_Qualified_Name(Asm_File, sym);
	      fprintf ( Asm_File, "\n");
	    }
	    else {
	      fprintf(Asm_File, "\t%s\t%s\n", AS_GLOBAL, ST_name(sym));
	    }
	  break;
	case SCLASS_COMMON:
	  if (sym != base_st && ST_sclass(base_st) == SCLASS_COMMON) {
		// use base common
		return EMT_Put_Elf_Symbol (base_st);
	  }
	  if (Assembly) {
		Print_Common (Asm_File, sym);
	  }
	  if (generate_elf_symbols) {
	    if (ST_is_split_common(sym)) {
		symbind = STB_SPLIT_COMMON;
		symother = STO_SC_ALIGN_UNUSED;
	  	symindex = Em_Add_New_Symbol (
			ST_name(sym), Get_Offset_From_Full(sym), TY_size(sym_type),
			symbind, STT_OBJECT, symother,
			EMT_Put_Elf_Symbol (ST_full(sym)) );
	    }
	    else {
		Elf64_Half symshndx;	/* sym section index */
		if (ST_is_thread_private(sym)) symshndx = SHN_MIPS_LCOMMON;
		else if (ST_is_gp_relative(sym)) symshndx = SHN_MIPS_SCOMMON;
		else symshndx = SHN_COMMON;
	  	symindex = Em_Add_New_Symbol (
			ST_name(sym), TY_align(sym_type), TY_size(sym_type),
			symbind, STT_OBJECT, symother, symshndx);
	    }
	  }
	  break;
	case SCLASS_UNKNOWN:
	default:
	  break;
      }
      break;

    case CLASS_NAME:
      if (ST_emit_symbol(sym)) {
	/* emit it even though it's an unknown local (C++) */
	symindex = Em_Add_New_Symbol (
		      ST_name(sym), 0, 0,
		      STB_LOCAL, STT_NOTYPE, symother, SHN_UNDEF);

      }
      break;

    case CLASS_FUNC:
      if (sclass == SCLASS_EXTERN) {
        symindex = Em_Add_New_Undef_Symbol (
			ST_name(sym), symbind, STT_FUNC, symother);
	if (Assembly) {
	  if (ST_is_weak_symbol(sym)) {
	    fprintf ( Asm_File, "\t%s\t", AS_WEAK);
	    EMT_Write_Qualified_Name(Asm_File, sym);
	    fprintf ( Asm_File, "\n");
	  }
	  else
	    fprintf(Asm_File, "\t%s\t%s\n", AS_GLOBAL, ST_name(sym));
	}
      }
      else 
	symindex = Em_Add_New_Symbol (
			ST_name(sym), base_ofst, 0,
			symbind, STT_FUNC, symother,
			Em_Get_Section_Index (em_scn[STB_scninfo_idx(base_st)].scninfo));
      break;

    case CLASS_BLOCK:
      if (STB_section(sym)) {
	Init_Section(sym);
	return ST_elf_index(sym);
      }
      // may be global binding (IPA global extern symbols)
      symindex = Em_Add_New_Undef_Symbol (
      				ST_name(sym), symbind, STT_OBJECT, symother);
      break;
    case CLASS_UNK:
    case CLASS_CONST:
    default:
      symindex = Em_Add_New_Undef_Symbol (
      				ST_name(sym), STB_LOCAL, STT_OBJECT, symother);
      break;
  }
  Set_ST_elf_index(sym, symindex);
  return symindex;
}

extern void
EMT_Change_Symbol_To_Undefined (ST *sym)
{
  Elf64_Word symindex = ST_elf_index(sym);
  if (symindex == 0) 
	/* if not emitted yet, can wait till somebody refers to it */
	return;
  Em_Undefine_Symbol (symindex);
}

extern void
EMT_Change_Symbol_To_Weak (ST *sym)
{
  Elf64_Word symindex = ST_elf_index(sym);
  if (symindex == 0) 
	/* if not emitted yet, can wait till somebody refers to it */
	return;
  Em_Set_Symbol_Binding (symindex, STB_WEAK);
}


// if TN is symbol TN, add info about it to comment buffer
static void
put_TN_comment (TN *t, BOOL add_name, vstring *comment)
{
  if (!add_name) return;	// don't duplicate name
  if ( ! TN_is_constant(t) ) return;
  INT64 val = TN_offset(t);
  if ( TN_is_symbol(t) ) {
	if (ST_class(TN_var(t)) == CLASS_CONST) {
		*comment = vstr_concat (*comment, 
			Targ_Print(NULL, ST_tcon_val(TN_var(t))) );
	}
	else {
		*comment = vstr_concat (*comment, ST_name(TN_var(t)));
	}
	if (TN_offset(t) != 0) {
		vstr_sprintf (comment, vstr_len(*comment), "%+lld", val);
	}
  }
  else if ( TN_is_label(t) && val != 0) {
	*comment = vstr_concat (*comment, LABEL_name(TN_label(t)));
	vstr_sprintf (comment, vstr_len(*comment), "%+lld", val); 
  }
}

/* ====================================================================
 *
 * r_apply_l_const
 *
 * Format the given constant TN's "value" into the given buffer.
 * Return whether the symbol name should be added to comments.
 *
 * ====================================================================
 */

static BOOL
r_apply_l_const (
  OP *op,		/* OP with constant operand */
  INT opidx,		/* OP index of constant TN of some sort */
  vstring *buf)		/* A buffer to format it into */
{
  TN *t = OP_opnd(op, opidx);
  INT paren = 0;
  BOOL hexfmt = FALSE;
  BOOL print_TN_offset = TRUE;
  BOOL add_name = FALSE;
  ST *st;
  INT64 val;

  /* special case for stack symbols */
  if ( TN_is_symbol(t) ) {
    ST *base_st;
    INT64 base_ofst;

    st = TN_var(t);
    Base_Symbol_And_Offset (st, &base_st, &base_ofst);
    if (base_st == SP_Sym || base_st == FP_Sym) {
      val = base_ofst + TN_offset(t);

      if ( TN_is_reloc_neg(t) ) {
	val = -val;
      }
      if ( TN_is_reloc_low16(t) ) {
	val = val & 0xffff;
	hexfmt = TRUE;
      } else if ( TN_is_reloc_high16(t) ) {
	val = ( ( val - (short)val ) >> 16) & 0xffff;
	hexfmt = TRUE;
      } else if ( TN_is_reloc_higher(t) ) {
	val = ( ( val + 0x80008000LL ) >> 32 ) & 0xffff;
	hexfmt = TRUE;
      } else if ( TN_is_reloc_highest(t) ) {
	val = ( ( val + 0x800080008000LL ) >> 48 ) & 0xffff;
	hexfmt = TRUE;
      }
      vstr_sprintf (buf, vstr_len(*buf), (hexfmt ? "0x%llx" : "%lld"), val );
      return TRUE;
    }
  }
  val = TN_offset(t);

  if ( TN_is_reloc_neg(t) ) {
    *buf = vstr_concat (*buf, "-");
  }

  if ( TN_is_symbol(t) ) {
    st = TN_var(t);
    // call put_symbol so that we emit .type info, once per symbol
    if (ST_class(st) != CLASS_CONST) {
    	(void) EMT_Put_Elf_Symbol (st);
    }
    if (TN_relocs(t) != 0) {
	// use base if referring to current pu or local data
	if (CGEMIT_Use_Base_ST_For_Reloc (TN_relocs(t), st)) {
		ST *base_st;
		INT64 base_ofst;
		Base_Symbol_And_Offset (st, &base_st, &base_ofst);
		val += base_ofst;
		st = base_st;
    	}
    	if (Use_Separate_PU_Section(current_pu,st)) {
		/* use PU text section rather than generic one */
		st = PU_base;
    	}
	hexfmt = TRUE;
	print_TN_offset = TRUE;
	// add name to comments in case was confused by gp_disp.
	add_name = TRUE;
	paren = CGEMIT_Relocs_In_Asm (t, st, buf, &val);
    } 
    else {
	*buf = vstr_concat(*buf, ST_name(st));
	if (*Symbol_Name_Suffix != '\0')
		*buf = vstr_concat(*buf, Symbol_Name_Suffix);
    }
  }
  else if ( TN_is_label(t) ) {
    if (val != 0) {
	// don't use "." cause that can have varying meaning
	// when have multiple instruction slots.
	// Instead just do label+offset.
	*buf = vstr_concat (*buf, LABEL_name(TN_label(t)));
	vstr_sprintf (buf, vstr_len(*buf), "%+lld", val); 
    }
    else {
      *buf = vstr_concat(*buf, LABEL_name(TN_label(t)));
      if (isdigit(LABEL_name(TN_label(t))[0])) {
      	*buf = vstr_concat(*buf, (PC > Get_Label_Offset(TN_label(t))) ? "b" : "f");
      }
    }
    print_TN_offset = FALSE;
  }
  else if (TN_is_tag(t)) {
	*buf = vstr_concat(*buf, LABEL_name(TN_label(t)));
    	print_TN_offset = FALSE;
  }
  else if (TN_is_enum(t)) {
    if (ISA_PRINT_Operand_Is_Part_Of_Name(OP_code(op), opidx)) {
      vstr_sprintf (buf, vstr_len(*buf), "%s", ISA_ECV_Name(TN_enum(t)) );
    } else {
      vstr_sprintf (buf, vstr_len(*buf), "%d", ISA_ECV_Intval(TN_enum(t)) );
    }
    print_TN_offset = FALSE;	/* because value used instead */
  }
  else if ( TN_has_value(t) ) {
    if ( TN_size(t) <= 4 )
      vstr_sprintf (buf, vstr_len(*buf), 
		(hexfmt ? "0x%x" : "%d"), (mINT32)TN_value(t) );
    else
      vstr_sprintf (buf, vstr_len(*buf), 
      		(hexfmt ? "0x%llx" : "%lld"), TN_value(t) );
    print_TN_offset = FALSE;	/* because value used instead */
  }
  else {
    #pragma mips_frequency_hint NEVER
    FmtAssert (FALSE, ("r_apply_l_const: illegal constant TN"));
  }

  if (print_TN_offset && (val != 0)) {
      vstr_sprintf (buf, vstr_len(*buf), "%+lld", val );
  }

  while ( paren > 0 ) {
    *buf = vstr_concat(*buf, ")");
    --paren;
  }
  return add_name;
}

/* ====================================================================
 * print_prefetch_info(char *comment, WN *wn)
 *   add prefetch info comments to the assembler listing.
 *
 * ====================================================================
 */
static void print_prefetch_info(
  vstring *comment, 
  WN *wn)
{

  if ( !wn ) return;

  if ( WN_pf_stride_1L( wn ) != 0 ) {
    *comment = vstr_concat(*comment, "L1");
    return;
  }

  if ( WN_pf_stride_2L( wn ) != 0  ) {
    *comment = vstr_concat(*comment, "L2");
  }
}


/* ====================================================================
 *
 * r_assemble_list
 *
 * Emit a pseudo-assembly listing for the given OP.
 *
 * ====================================================================
 */

static void r_assemble_list (
  OP *op,		/* The operation being listed */
  BB *bb)
{
  const char *result[ISA_OPERAND_max_results];
  const char *opnd[ISA_OPERAND_max_operands];
  vstring buf = vstr_begin(LBUF_LEN);
  INT i;
  INT lc = 0;
  BOOL add_name = FALSE;

  Emit_Unwind_Directives_For_OP(op, Asm_File);

#ifdef GAS_TAGS_WORKED
// un-ifdef this when gas can handle tags inside explicit bundle
  if (OP_has_tag(op)) {
	fprintf(Asm_File, "%s:\n", LABEL_name(Get_OP_Tag(op)));
  }
#endif
  for (i = 0; i < OP_opnds(op); i++) {
    INT start = vstr_len(buf);	// start of operand string
    TN *t = OP_opnd(op,i);

    if ( TN_is_constant(t) ) {
      add_name |= r_apply_l_const (op, i, &buf);
    }
    else {
      const char *rname;
      ISA_REGISTER_CLASS rc = TN_register_class(t);
      REGISTER reg = TN_register(t);
#ifdef HAS_STACKED_REGISTERS
      if (ABI_PROPERTY_Is_stacked(rc, REGISTER_machine_id(rc, reg))
	&& ! BB_rotating_kernel(bb)	// in case rot-regs overlap output regs
	&& REGISTER_Is_Stacked_Output(rc, reg) )
      {
	reg = REGISTER_Translate_Stacked_Output(reg);
      }
#endif
      FmtAssert (reg != REGISTER_UNDEFINED, 
		 ("r_assemble_list: illegal operand tn%d", TN_number(t)));

      if (!TN_is_true_pred(t)) {
	ISA_REGISTER_SUBCLASS sc = OP_opnd_reg_subclass(op,i);
	if (   REGISTER_SET_MemberP(REGISTER_SUBCLASS_members(sc), reg)
	    && REGISTER_SUBCLASS_reg_name(sc, reg))
	{
	  rname = REGISTER_SUBCLASS_reg_name(sc, reg);
	} else if (List_Software_Names) {
	  rname = ABI_PROPERTY_Reg_Name(rc, REGISTER_machine_id(rc, reg));
	} else {
	  rname = REGISTER_name(rc, reg);
	}
	if (i == OP_PREDICATE_OPND && OP_has_predicate(op)) {
	  vstr_sprintf(&buf, start, ISA_PRINT_PREDICATE, rname);
	} else {
	  buf = vstr_concat(buf, rname);
	}
      } 
    }
    // need end-of-string between each operand
    buf = vstr_append(buf, '\0');
    opnd[i] = vstr_str(buf)+start;
  }

  for (i = 0; i < OP_results(op); i++) {
    const char *rname;
    INT start = vstr_len(buf);	// start of operand string
    TN *t = OP_result(op,i);
    ISA_REGISTER_SUBCLASS sc = OP_result_reg_subclass(op,i);
    ISA_REGISTER_CLASS rc = TN_register_class(t);
    REGISTER reg = TN_register(t);
    FmtAssert (t != NULL && !TN_is_constant(t),
	       ("r_assemble_list: illegal result tn"));
#ifdef HAS_STACKED_REGISTERS
    if (ABI_PROPERTY_Is_stacked(rc, REGISTER_machine_id(rc, reg))
	&& ! BB_rotating_kernel(bb)	// in case rot-regs overlap output regs
	&& REGISTER_Is_Stacked_Output(rc, reg) )
    {
	reg = REGISTER_Translate_Stacked_Output(reg);
    }
#endif
    FmtAssert (reg != REGISTER_UNDEFINED, 
	       ("r_assemble_list: illegal result tn%d", TN_number(t)));
    if (   REGISTER_SET_MemberP(REGISTER_SUBCLASS_members(sc), reg)
	&& REGISTER_SUBCLASS_reg_name(sc, reg))
    {
      rname = REGISTER_SUBCLASS_reg_name(sc, reg);
    } else if (List_Software_Names) {
      rname = ABI_PROPERTY_Reg_Name(rc, REGISTER_machine_id(rc, reg));
    } else {
      rname = REGISTER_name(rc, reg);
    }
    buf = vstr_concat(buf, rname);
    buf = vstr_append(buf, '\0');	// increment vstr length
    result[i] = vstr_str(buf)+start;
  }

  fputc ('\t', Asm_File);
  lc = TI_ASM_Print_Inst(OP_code(op), result, opnd, Asm_File);
  FmtAssert (lc != TI_RC_ERROR, ("%s", TI_errmsg));
  vstr_end(buf);

  if (OP_end_group(op)) lc += fprintf(Asm_File, " %s", ISA_PRINT_END_GROUP);

  while (lc < 30) {
    fputc (' ', Asm_File);
    lc++;
  }

  vstring comment = vstr_begin(LBUF_LEN);
  for (i = 0; i < OP_opnds(op); i++) {
	put_TN_comment (OP_opnd(op,i), add_name, &comment);
  }

  fprintf (Asm_File, "\t\t%s", ASM_CMNT);
  fprintf (Asm_File, " [");
  if (OP_scycle(op) >= 0)
    if (BB_rotating_kernel(bb)) {
      ANNOTATION *annot = ANNOT_Get(BB_annotations(bb), ANNOT_ROTATING_KERNEL);
      ROTATING_KERNEL_INFO *info = ANNOT_rotating_kernel(annot);
      INT ii = info->ii;
      fprintf (Asm_File, "%d*II+%d", OP_scycle(op) / ii, OP_scycle(op) % ii);
    } else if (BB_scheduled(bb)) {
    if(!OP_noop(op))
      fprintf (Asm_File, "%d", OP_scycle(op));
      fprintf (Asm_File, ":%d", Srcpos_To_Line(OP_srcpos(op)));
    }
  fprintf (Asm_File, "]");
  if (vstr_len(comment) == 0) {
    WN *wn = Get_WN_From_Memory_OP (op);
    if (wn && Alias_Manager) {
      char tbuf[LBUF_LEN];
      tbuf[0] = '\0';
      Print_alias_info (tbuf, Alias_Manager, wn);
      comment = vstr_concat(comment, tbuf);
    }
    if (wn && OP_prefetch(op) && vstr_len(comment) == 0) {
      print_prefetch_info(&comment,wn);
    }
  }

  /* Add target PU name as comment for normal call and tail call OPs.
   */
  if ((OP_call(op) || OP_tail_call(op)) && vstr_len(comment) == 0) {
    ANNOTATION *ant = ANNOT_Get (BB_annotations(bb), ANNOT_CALLINFO);
    if (ant != NULL) {
	ST *call_sym = CALLINFO_call_st(ANNOT_callinfo(ant));
	if (call_sym != NULL) {
		comment = vstr_concat(comment, ST_name(call_sym));
	}
    }
  }
   /*Add value profile comment "val_prof[id, exec_count]"*/
  if (OP_flags_val_prof(op) == VAL_PROF_FLAG)
  {
    char tbuf[1024];
    tbuf[0] = '\0';
    FB_TNV * fb_tnv = NULL;
    if (op_tnv_map)
    {
      fb_tnv = (FB_TNV *)OP_MAP_Get(op_tnv_map, op);
      if (fb_tnv == NULL)
      	DevWarn("can not find tnv-info in op_tnv_map! val_prof_id = %d.", OP_val_prof_id(op));
    }
    if (fb_tnv != NULL)
    {
      fb_tnv->Print(stderr);
      sprintf(tbuf, " val_prof[%u, %llu] (%llu => %llu, %llu => %llu, %llu => %llu, %llu => %llu, %llu => %llu)", 
    			OP_val_prof_id(op), OP_exec_count(op), 
    			fb_tnv->_values[0], fb_tnv->_counters[0],
    			fb_tnv->_values[1], fb_tnv->_counters[1],
    			fb_tnv->_values[2], fb_tnv->_counters[2],
    			fb_tnv->_values[3], fb_tnv->_counters[3],
    			fb_tnv->_values[4], fb_tnv->_counters[4]
    			);
    }
    else
    {
      sprintf(tbuf, " val_prof[%u, %llu]", 
    			OP_val_prof_id(op), OP_exec_count(op) );
    }
    comment = vstr_concat(comment, tbuf);
  }
 
  char * spec_str = NULL ;
  if (OP_cntl_spec(op)) {
    spec_str = "c-spec " ;
    if (OP_if_converted(op)) {
        spec_str = "ci-spec";
    }
  } else if (OP_data_spec(op)) {
    spec_str = "d-spec ";
  }

  if (OP_cntl_spec(op) && OP_data_spec(op)) {
    spec_str = "cd-spec" ;
  }

  if (spec_str) {
    char tbuf[20];  
  
    sprintf (tbuf, "\t[%s BB:%u]",
             spec_str ? spec_str : "",
             OP_orig_bb_id(op));
    comment = vstr_concat(comment, tbuf);
  }
  
  if (OP_renamed(op)) {
    char tbuf[20];
    sprintf (tbuf, "\t[renamed]");
    comment = vstr_concat(comment, tbuf);
  }


  fprintf (Asm_File, " %s\n", vstr_str(comment));
  vstr_end(comment);
}

/* ====================================================================
 *
 * Verify_Operand
 *
 * Verify that the specified operand is valid for the particular
 * instruction operand.
 *
 * ====================================================================
 */
static void Verify_Operand(
  const ISA_OPERAND_INFO *oinfo,
  OP *op, 
  INT opnd, 
  BOOL is_result)
{
  const ISA_OPERAND_VALTYP *vtype =   is_result 
				    ? ISA_OPERAND_INFO_Result(oinfo, opnd)
				    : ISA_OPERAND_INFO_Operand(oinfo, opnd);
  TN *tn = is_result ? OP_result(op, opnd) : OP_opnd(op, opnd);
  const char * const res_or_opnd = is_result ? "result" : "operand";

  if (ISA_OPERAND_VALTYP_Is_Register(vtype)) {
    REGISTER_SET class_regs;
    ISA_REGISTER_SUBCLASS sc = ISA_OPERAND_VALTYP_Register_Subclass(vtype);
    ISA_REGISTER_CLASS rc = ISA_OPERAND_VALTYP_Register_Class(vtype);
    REGISTER reg = TN_register(tn);

    FmtAssert(TN_is_register(tn),
	      ("%s %d is not a register", res_or_opnd, opnd));

    FmtAssert(TN_register_class(tn) == rc,
	      ("incorrect register class for %s %d", res_or_opnd, opnd));

    FmtAssert(reg != REGISTER_UNDEFINED,
	      ("undefined register for %s %d", res_or_opnd, opnd));

    class_regs =   (sc == ISA_REGISTER_SUBCLASS_UNDEFINED)
		 ? REGISTER_CLASS_universe(rc)
		 : REGISTER_SUBCLASS_members(sc);
    FmtAssert(REGISTER_SET_MemberP(class_regs, reg),
	      ("incorrect register for %s %d", res_or_opnd, opnd));
  } else if (ISA_OPERAND_VALTYP_Is_Literal(vtype)) {
    FmtAssert(TN_is_constant(tn),
	     ("%s %d is not a constant", res_or_opnd, opnd));

    if (TN_has_value(tn)) {
      ISA_LIT_CLASS lc = ISA_OPERAND_VALTYP_Literal_Class(vtype);
      INT64 imm = TN_value(tn);

      if ((TFile != stdout) && !ISA_LC_Value_In_Class(imm, lc)) {
        Print_OP_No_SrcLine (op);
      }
      FmtAssert(ISA_LC_Value_In_Class(imm, lc),
	        ("literal for %s %d is not in range", res_or_opnd, opnd));
    } else if (TN_is_label(tn)) {
#if Is_True_On
      LABEL_IDX lab = TN_label(tn);
      INT64 offset = TN_offset(tn);
      INT64 val = Get_Label_Offset(lab) + offset;
      if (CG_opt_level > 0 && CFLOW_Enable && !OP_likely(op)) {
	INT nextpc = PC + sizeof(ISA_BUNDLE);
	if (PROC_has_branch_delay_slot()) nextpc += sizeof(ISA_PACK_INST);

	if (val == nextpc) {
	  DevWarn("branch to next instruction at PC=0x%x", PC);
	}
      }
      if (Get_Label_Offset(lab) == 0 && offset == 0) {
	BBLIST *item;
	BB *label_bb = Get_Label_BB(lab);
	BOOL okay = FALSE;
	FOR_ALL_BB_SUCCS(OP_bb(op), item) {
	  if (BBLIST_item(item) == label_bb) okay = TRUE;
	}
	if (!okay) {
	  DevWarn("branch to 0? (possible bug at PC=0x%x, label %s)", 
		   PC, LABEL_name(lab));
	}
      }
#endif
    }
  } else if (ISA_OPERAND_VALTYP_Is_Enum(vtype)) {
    ISA_ENUM_CLASS_VALUE ecv;
    ISA_ENUM_CLASS ec = ISA_OPERAND_VALTYP_Enum_Class(vtype);
    ISA_ENUM_CLASS_VALUE first_ecv = ISA_EC_First_Value(ec);
    ISA_ENUM_CLASS_VALUE last_ecv = ISA_EC_Last_Value(ec);

    FmtAssert(TN_is_enum(tn),
	      ("%s %d is not an enum", res_or_opnd, opnd));

    ecv = TN_enum(tn);
    FmtAssert(ecv >= first_ecv && ecv <= last_ecv,
	      ("enum for %s %d is not in range", res_or_opnd, opnd));
  } else {
    FmtAssert(FALSE, ("unhandled vtype in Verify_Operand"));
  }
}

/* ====================================================================
 *
 * Verify_Instruction
 *
 * Verify that the specified OP contains valid information for
 * the instruction it represents.
 *
 * ====================================================================
 */
static void Verify_Instruction(OP *op)
{
  INT i;
  const ISA_OPERAND_INFO *oinfo;
  TOP top = OP_code(op);

  // ??? check for valid topcode?

  FmtAssert(ISA_SUBSET_Member(ISA_SUBSET_Value, top),
	    ("%s is a member of ISA %s", 
	     TOP_Name(top), 
	     ISA_SUBSET_Name(ISA_SUBSET_Value)));

  oinfo = ISA_OPERAND_Info(top);

  INT results = OP_results(op);
  if (results != TOP_fixed_results(top)) {
    FmtAssert(TOP_is_var_opnds(top) && results > TOP_fixed_results(top),
	      ("wrong number of results (%d) for %s",
	       results,
	       TOP_Name(top)));
    results = TOP_fixed_results(top); // can only verify fixed results
  }
  for (i = 0; i < results; ++i) {
    Verify_Operand(oinfo, op, i, TRUE);
  }

  INT opnds = OP_opnds(op);
  if (opnds != TOP_fixed_opnds(top)) {
    FmtAssert(TOP_is_var_opnds(top) && opnds > TOP_fixed_opnds(top),
	      ("wrong number of operands (%d) for %s",
	       opnds,
	       TOP_Name(top)));
    opnds = TOP_fixed_opnds(top); // can only verify fixed operands
  }
  for (i = 0; i < opnds; ++i) {
    Verify_Operand(oinfo, op, i, FALSE);
  }
}

/* ====================================================================
 *
 * r_assemble_binary
 *
 * Generate an instruction word(s) for the given OP.
 *
 * ====================================================================
 */
static INT r_assemble_binary ( OP *op, BB *bb, ISA_PACK_INST *pinst )
{
  INT    i;
  INT    words;
  TOP    opcode = OP_code(op);
  INT64  result[ISA_OPERAND_max_results];
  INT64  opnd[ISA_OPERAND_max_operands];

  for (i = 0; i < OP_opnds(op); i++) {
    INT64 val = 0;
    TN *t = OP_opnd(op, i);

    if (TN_is_constant(t)) {
      if (TN_is_label(t)) {

	// get the target address 
	val = Get_Label_Offset(TN_label(t)) + TN_offset(t);

	// get pc-relative offset if necessary
	if (OP_opnd_is_pcrel(op, i)) {
	  val -= PC_Bundle(PC);
	  if (PROC_has_branch_delay_slot()) val -= sizeof(ISA_PACK_INST);
	}

	FmtAssert (ISA_LC_Value_In_Class(val, OP_opnd_lit_class(op, i)),
		   ("branch offset %lld doesn't fit; try recompiling with "
		    "-CG:longbranch_limit=[try values smaller than %d]", 
		    val, EMIT_Long_Branch_Limit));
      } 
      else if (TN_is_tag(t)) {
	// get the target address 
	val = Get_Label_Offset(TN_label(t));
      }
      else if (TN_is_symbol(t)) {
	ST *base_st;
	INT64 base_ofst;
	ST *st = TN_var(t);

	val = TN_offset(t);
	if (ST_class(st) == CLASS_VAR && ST_is_export_local(st)) {
	    FmtAssert(Has_Base_Block(st),
		("relocation of local symbol %s that hasn't been allocated?", ST_name(st)));
	}
	Base_Symbol_And_Offset (st, &base_st, &base_ofst);

	if (OP_jump(op)) {
	  Em_Add_New_Rel (EMT_Put_Elf_Symbol (st), R_MIPS_26, PC, 
			  PU_section);
	  val = 0;
	}
	else if (base_st == SP_Sym || base_st == FP_Sym) {
	  val += base_ofst;
	  if ( TN_is_reloc_neg(t)) val = -val;

	  if (TN_is_reloc_low16(t)) {
	    val = (val << 48) >> 48;
	  } else if (TN_is_reloc_high16(t)) {
	    val = ( (val - (short)val) << 32) >> 48;
	  } else if (TN_is_reloc_higher(t)) {
	    val = ( (val + 0x80008000LL) << 16) >> 48;
	  } else if (TN_is_reloc_highest(t)) {
	    val = ( (val + 0x800080008000LL) << 0) >> 48;
	  }
	}
	else if (TN_relocs(t) != 0) {
	  if (CGEMIT_Use_Base_ST_For_Reloc (TN_relocs(t), st)) {
		val += base_ofst;
		st = base_st;
    	  }
	  if (Use_Separate_PU_Section(current_pu,st)) {
		/* use PU text section rather than generic one */
		st = PU_base;
	  }
	  CGEMIT_Relocs_In_Object (t, st, PC, PU_section, &val);
	}
        else if (ST_is_gp_relative(st)) {
	  DevWarn("is gp relative (%s)", ST_name(st));
	  if (ST_class(st) == CLASS_CONST || ST_is_export_local(st)) {
      	    val -= GP_DISP;
	  }
	  if (!ISA_LC_Value_In_Class(val, LC_i16)) {
		/* 
		 * Put in addend instead of in instruction,
		 * and put gprel in rela section.
		 * This can happen for large common or array/struct in 
		 * gprel section.  Because it is gprel, IPA is guaranteeing
		 * that the final offset will fit in 16 bits.
		 * Usually, when val is small, 
		 * we put val in instruction and use .rel.
		 */
	  	Em_Add_New_Rela (EMT_Put_Elf_Symbol (st), R_MIPS_GPREL, PC, 
			val, PU_section);
	      	val = 0;
	  }
	  else {
	    FmtAssert (ISA_LC_Value_In_Class(val, LC_i16),
		("immediate value %lld too large for GPREL relocation", val));
	    Em_Add_New_Rel (EMT_Put_Elf_Symbol (st), R_MIPS_GPREL, PC,
			  PU_section);
	  }
	}
	ISA_LIT_CLASS lc = OP_opnd_lit_class(op, i);
	FmtAssert(ISA_LC_Value_In_Class(val, lc),
		  ("r_assemble_binary: illegal immediate value %lld for %s",
		   val, ISA_LC_Name(lc)));
      } 
      else if (TN_is_enum(t)) {
        val = ISA_ECV_Intval(TN_enum(t));
      }
      else if (TN_has_value(t)) {
        val = TN_value(t);
      } 
      else {
	#pragma mips_frequency_hint NEVER
	FmtAssert (FALSE, ("r_assemble_binary: illegal constant TN"));
      }
    }
    else {
      ISA_REGISTER_CLASS rc = TN_register_class(t);
      REGISTER reg = TN_register(t);
#ifdef HAS_STACKED_REGISTERS
      if (ABI_PROPERTY_Is_stacked(rc, REGISTER_machine_id(rc, reg))
	&& ! BB_rotating_kernel(bb)	// in case rot-regs overlap output regs
	&& REGISTER_Is_Stacked_Output(rc, reg) )
      {
	reg = REGISTER_Translate_Stacked_Output(reg);
      }
#endif
      val = REGISTER_machine_id (rc, reg);
    }

    opnd[i] = val;
  }

  for (i = 0; i < OP_results(op); ++i) {
    INT32 val;
    TN *t = OP_result(op,i);
    ISA_REGISTER_CLASS rc = TN_register_class(t);
    REGISTER reg = TN_register(t);

#ifdef HAS_STACKED_REGISTERS
    if (ABI_PROPERTY_Is_stacked(rc, REGISTER_machine_id(rc, reg))
	&& ! BB_rotating_kernel(bb)	// in case rot-regs overlap output regs
	&& REGISTER_Is_Stacked_Output(rc, reg) )
    {
	reg = REGISTER_Translate_Stacked_Output(reg);
    }
#endif
    val = REGISTER_machine_id (rc, reg);

    result[i] = val;
  }

  words = TI_ASM_Pack_Inst(opcode, result, opnd, pinst);
  FmtAssert (words > 0, ("%s", TI_errmsg));
  return words;
}


#if Is_True_On

static REGISTER_SET defined_regs[ISA_REGISTER_CLASS_MAX+1];
static INT defining_pcs[ISA_REGISTER_CLASS_MAX+1][REGISTER_MAX+1];
static OP *defining_ops[ISA_REGISTER_CLASS_MAX+1][REGISTER_MAX+1];

static void
Init_Sanity_Checking_For_BB (void)
{
  ISA_REGISTER_CLASS cl;
  /* Intialize checking code for block. */
  FOR_ALL_ISA_REGISTER_CLASS(cl)
    defined_regs[cl] = REGISTER_SET_EMPTY_SET;
}

static void
Perform_Sanity_Checks_For_OP (OP *op, BOOL check_def)
{
  TN *tn;
  ISA_REGISTER_CLASS cl;
  REGISTER reg;
  INT i;
  BOOL predicated = OP_has_predicate(op) != 0;

#if 0	// wait until srcpos are more robust
  if (!OP_noop(op) && SRCPOS_linenum(OP_srcpos(op)) == 0) {
	DevWarn("0 linenum on op at PC 0x%x", PC);
  }
#endif
  for (i = 0; i < OP_opnds(op); i++) {
    tn = OP_opnd (op, i);
    if (TN_is_register(tn)) {
      cl = TN_register_class(tn);
      reg = TN_register(tn);
      defined_regs[cl] = REGISTER_SET_Difference1 (defined_regs[cl], reg);
    }
  }
  if (check_def) {
    for (i = 0; i < OP_results(op); i++) {
      tn = OP_result(op, i);
      cl = TN_register_class(tn);
      reg = TN_register(tn);
      if (REGISTER_SET_MemberP(defined_regs[cl], reg)) {
	OP *def_op = defining_ops[cl][reg];
	if ((CG_opt_level > 0) && // How can we clean up at level 0? (see pv #769596)
	    !OP_has_implicit_interactions(def_op) && 
	    !OP_cond_def(def_op) && 
	    !OP_cond_def(op) &&
	    OP_results(def_op) == 1 && // a hack for multi-result ops
            (!OP_has_predicate(def_op) || (OP_opnd(def_op,OP_PREDICATE_OPND) == True_TN)) &&
            (!OP_has_predicate(op) || (OP_opnd(op,OP_PREDICATE_OPND) == True_TN))) 
	{
	  DevWarn("Unused definition in %sBB:%d (PC=0x%x)",
	          OP_bb(op) && BB_rotating_kernel(OP_bb(op)) ? "SWPd " : "",
	          OP_bb(op) ? BB_id(OP_bb(op)) : -1, defining_pcs[cl][reg]);
	  if (TFile != stdout) {	/* only print to .t file */
	    Print_OP_No_SrcLine (def_op);
	  }
	}
      }
      defined_regs[cl] = REGISTER_SET_Union1(defined_regs[cl], reg);
      defining_pcs[cl][reg] = PC;
      defining_ops[cl][reg] = op;
    }
  }

  if (((tn = CGTARG_Copy_Operand_TN(op)) != NULL) &&
      (!OP_has_predicate(op) || (OP_opnd(op,OP_PREDICATE_OPND) == True_TN))) {
    if (TN_register(OP_result(op,0)) == TN_register(tn)) {
      DevWarn("Redundant Copy instruction in %sBB:%d (PC=0x%x)",
	      OP_bb(op) && BB_rotating_kernel(OP_bb(op)) ? "SWPd " : "",
	      OP_bb(op) ? BB_id(OP_bb(op)) : -1, PC);
      Print_OP_No_SrcLine (op);
    }
  } else {
    if (OP_ixor(op) &&
	  (TN_is_zero(OP_opnd(op,0+predicated)) || TN_is_zero(OP_opnd(op,1+predicated))) )
    {
      DevWarn ("Redundant XOR instruction in %sBB:%d (PC=0x%x)",
	       BB_rotating_kernel(OP_bb(op)) ? "SWPd " : "",
	       BB_id(OP_bb(op)), PC);
      Print_OP_No_SrcLine (op);
    }

    if (CGTARG_Is_Right_Shift_Op (op)) {
      if (TN_register(OP_opnd(op,0+predicated)) == REGISTER_zero) {
        DevWarn ("Redundant shift instruction in %sBB:%d (PC=0x%x)",
	         BB_rotating_kernel(OP_bb(op)) ? "SWPd " : "",
	         BB_id(OP_bb(op)), PC);
        Print_OP_No_SrcLine (op);
      }
    }
  }

  if (OP_unalign_ld(op)) {
	Is_True(TN_is_zero_reg(OP_opnd(op,2)) 
		|| (TN_register(OP_opnd(op,2)) == TN_register(OP_result(op,0))),
		("unaligned load last-result doesn't match new result "
		 "in BB:%d", OP_bb(op) ? BB_id(OP_bb(op)) : -1));
  }

  /* Make sure we're not emitting mov.[ds] of integer values. */
  if ((tn = CGTARG_Copy_Operand_TN(op)) != NULL 
	&& TN_is_float(OP_result(op,0)) ) 
  {
	Is_True( ! TN_is_fpu_int(OP_opnd(op,0+predicated)),
	  ("Illegal FP mov of integer TN%d in BB:%d", 
	   TN_number(tn), OP_bb(op) ? BB_id(OP_bb(op)) : -1));
  }

  if (OP_code(op) == TOP_noop) {
    DevWarn("Noop not removed in BB:%d (PC=0x%x)", BB_id(OP_bb(op)), PC);
    Print_OP_No_SrcLine(op);
  }
}
#else
#define Perform_Sanity_Checks_For_OP(op, check_def)
#endif


/* Write out the 'op' into the object file and/or into the assembly file.
 */
static INT
r_assemble_op(OP *op, BB *bb, ISA_BUNDLE *bundle, INT slot)
{
  INT words;
  INT i;

  if (Trace_Inst) {
    Print_OP(op);
  }

  Remove_Hidden_Operands (op);
  Verify_Instruction(op);

  if (OP_prefetch(op)) Use_Prefetch = TRUE;

  Cg_Dwarf_Add_Line_Entry (PC, OP_srcpos(op));
  if (Assembly) {
    r_assemble_list ( op, bb );
    if (!Object_Code) words = ISA_PACK_Inst_Words(OP_code(op));
  }
  if (Object_Code) {
    ISA_PACK_INST inst[ISA_PACK_MAX_INST_WORDS];
    words = r_assemble_binary ( op, bb, inst );
    for (i = 0; i < words; ++i) {
      ISA_BUNDLE_PACK_COMP slot_comp = (ISA_BUNDLE_PACK_COMP)
	  (ISA_BUNDLE_PACK_COMP_slot + slot++);
      TI_ASM_Set_Bundle_Comp(bundle, slot_comp, inst[i]);
      if (slot == ISA_MAX_SLOTS) {
	slot = 0;
	++bundle;
      }
    }

    /* May need to add information about this call (or tail call) site */
    if (OP_call(op) || OP_tail_call(op)) {
      CGEMIT_Add_Call_Information (op, bb, PC, PU_section);
    }
if (Get_Trace ( TP_EMIT,0x100 )) {
/* don't do this till decide on format of EK_SWITCH */
    if (OP_ijump(op) && !OP_call(op) && !BB_exit(bb)) {
      ANNOTATION *ant = ANNOT_Get(BB_annotations(bb), ANNOT_SWITCH);
      if (ant != NULL) {
	ST *jumptable = ANNOT_switch(ant);
	BOOL gprel = ST_is_gp_relative(jumptable);
	INT num_entries = TY_AR_ubnd_val(ST_type(jumptable),0)+1;
	Elf_Event_Kind event_type;
	event_type = (Use_32_Bit_Pointers ? EK_SWITCH_32 : EK_SWITCH_64);

	Em_Add_New_Event (event_type, PC, 
		gprel, EMT_Put_Elf_Symbol(jumptable), num_entries, PU_section);
      }
    }
}
  }

  PC = PC_Incr_N(PC, words);

  // hack to keep track of last label and offset for assembly dwarf (suneel)
  // If the current op is a TOP_asm, mark the Last_Label as invalid.
  if (OP_code(op) == TOP_asm) {
    Last_Label = LABEL_IDX_ZERO;
  }
  else {
    Offset_From_Last_Label = PC_Incr_N(Offset_From_Last_Label, words);
  }

  return words;
}



static char* 
Replace_Substring(char* in, char* from, char* to)
{
  UINT  buflen = strlen(in) + 64;
  char* buf = (char*) alloca(buflen);
  char* p;
  while ((p = strstr(in, from)) != NULL) {
    char* leftover = p + strlen(from);
    *p = '\0';
    while (strlen(in) + strlen(to) + strlen(leftover) >= buflen) {
      buflen = buflen * 2;
      buf = (char*) alloca(buflen);
    }
    sprintf(buf, "%s%s%s", in, to, leftover);
    in = strdup(buf);
  }
  return in;
}

  
static char* 
Modify_Asm_String (char* asm_string, UINT32 position, bool memory, TN* tn, BB *bb)
{
  char* name;
  if (TN_is_register(tn)) {
    ISA_REGISTER_CLASS cl = TN_register_class(tn);
    REGISTER reg = TN_register(tn);
#ifdef HAS_STACKED_REGISTERS
    if (ABI_PROPERTY_Is_stacked(cl, REGISTER_machine_id(cl, reg))
	&& ! BB_rotating_kernel(bb)	// in case rot-regs overlap output regs
        && REGISTER_Is_Stacked_Output(cl, reg)) 
    {
      reg = REGISTER_Translate_Stacked_Output(reg);
    }
#endif
    name = (char*) REGISTER_name(cl, reg);
    if (memory) {
      char* buf = (char*) alloca(strlen(name)+3);
#ifdef TARG_IA32
      sprintf(buf, "(%s)", name);
#else
      sprintf(buf, "[%s]", name);
#endif
      name = buf;
    }
  }
  else {
    FmtAssert(!memory && TN_is_constant(tn) && TN_has_value(tn),
              ("ASM operand must be a register or a numeric constant"));
    char* buf = (char*) alloca(32);
    sprintf(buf, 
#ifdef TARG_IA32
            "$%lld", 
#else
            "%lld",
#endif
            TN_value(tn));
    name = buf;
  }
  
  char pattern[4];
  sprintf(pattern, "%%%c", '0'+position);
  
  asm_string =  Replace_Substring(asm_string, pattern, name);

  if (TN_is_register(tn)) {
    for (INT i = 0; i < CGTARG_Num_Asm_Opnd_Modifiers; i++) {
      char modifier = CGTARG_Asm_Opnd_Modifiers[i];
      sprintf(pattern, "%%%c%c", modifier, '0'+position);
      name = (char*) CGTARG_Modified_Asm_Opnd_Name(modifier, tn, name);
      asm_string  = Replace_Substring(asm_string, pattern, name);
    }
  }
  
  return asm_string;
}


static char*
Generate_Asm_String (OP* asm_op, BB *bb)
{
  UINT i;
  ASM_OP_ANNOT* asm_info = (ASM_OP_ANNOT*) OP_MAP_Get(OP_Asm_Map, asm_op);
  char* asm_string = strdup(WN_asm_string(ASM_OP_wn(asm_info)));

  for (i = 0; i < OP_results(asm_op); i++) {
    asm_string = Modify_Asm_String(asm_string, 
                                   ASM_OP_result_position(asm_info)[i], 
                                   ASM_OP_result_memory(asm_info)[i], 
                                   OP_result(asm_op, i), bb);
  }

  for (i = 0; i < OP_opnds(asm_op); i++) {
    asm_string = Modify_Asm_String(asm_string, 
                                   ASM_OP_opnd_position(asm_info)[i], 
                                   ASM_OP_opnd_memory(asm_info)[i], 
                                   OP_opnd(asm_op, i), bb);
  }

  CGTARG_Postprocess_Asm_String(asm_string);

  return asm_string;
}


/* Assemble a simulated OP.
 */
static void
Assemble_Simulated_OP(OP *op, BB *bb)
{
  /* ASM is an odd case so we handle it specially. It doesn't expand
   * into a series of OPs, but rather we just emit the asm string into
   * the assembly output.
   */

  if (OP_code(op) == TOP_asm) {
    FmtAssert(Assembly && !Object_Code,
	      ("can't emit object code when ASM"));
    if (AS_STOP_BIT && (EMIT_stop_bits_for_asm
		|| (EMIT_stop_bits_for_volatile_asm && OP_volatile(op)) ) )
    {
	fprintf(Asm_File, "\t%s\n", AS_STOP_BIT);
    }
    fprintf(Asm_File, "\t%s\n", Generate_Asm_String(op, bb));
    if (AS_STOP_BIT && (EMIT_stop_bits_for_asm
		|| (EMIT_stop_bits_for_volatile_asm && OP_volatile(op)) ) )
    {
	fprintf(Asm_File, "\t%s\n", AS_STOP_BIT);
    }
    return;
  }

  bool is_intrncall = OP_code(op) == TOP_intrncall;
  OPS ops = OPS_EMPTY;

  if (Trace_Inst) {
    fprintf (TFile, "<cgemit> transform simulated OP: ");
    Print_OP (op);
  }

  Exp_Simulated_Op (op, &ops, PC);
  if (is_intrncall && Object_Code) {
    Em_Add_New_Content (CK_NO_XFORM, PC, OPS_length(&ops)*4, 0, PU_section);
  }

  if (Trace_Inst) {
    fprintf (TFile, "... to: ");
    Print_OPS (&ops);
  }

  if (is_intrncall && Assembly) {
    ASM_DIR_NOTRANSFORM();
  }
  FOR_ALL_OPS_OPs_FWD (&ops, op) {
    ISA_BUNDLE bundle[ISA_PACK_MAX_INST_WORDS];
    INT words;
    Perform_Sanity_Checks_For_OP(op, FALSE);
    words = r_assemble_op (op, bb, bundle, 0);
    if (Object_Code) {
      /* write out the instruction. */
      Em_Add_Bytes_To_Scn (PU_section, (char *)&bundle,
			   INST_BYTES * words, INST_BYTES);
    }
  }
  if (is_intrncall && Assembly) {
    ASM_DIR_TRANSFORM();
  }
}

/* Assemble the OPs in a BB a bundle at a time.
 */
static INT
Assemble_Bundles(BB *bb)
{
  OP *op;

  INT bb_cycle_count = 0; //used to count the cycle for the bb cbq
  extern INT EMIT_count_cycles;
  extern INT Track_Split(INT template_index, UINT stop_mask, BOOL &extra);
  OP *last = NULL;
  

  FmtAssert(ISA_MAX_SLOTS > 1,("Assemble_Bundles shouldn't have been called"));

  if (BB_emitted(bb))
    return 0;
 
  Set_BB_emitted(bb);

  for (op = BB_first_op(bb);;) {
    ISA_BUNDLE bundle;
    UINT64 slot_mask;
    UINT stop_mask;
    INT slot;
    OP *slot_op[ISA_MAX_SLOTS];
    INT ibundle;

    /* Gather up the OPs for the bundle.
     */
    stop_mask = 0;
    slot_mask = 0;
    for (slot = 0; op && slot < ISA_MAX_SLOTS; op = OP_far_next(op) ) {
      INT words;
      INT w;

      Set_BB_emitted(OP_bb(op));

      if (OP_dummy(op)) continue;		// these don't get emitted

      if (OP_simulated(op)) {
        FmtAssert(slot == 0, ("can't bundle a simulated OP in BB:%d.",BB_id(bb)));
        Assemble_Simulated_OP(op, bb);
        continue;
      }

      words = ISA_PACK_Inst_Words(OP_code(op));
      for (w = 0; w < words; ++w) {
        FmtAssert(slot < ISA_MAX_SLOTS,("multi-word inst extends past end of bundle in BB:%d.",BB_id(bb)));
        slot_op[slot++] = op;
        slot_mask = slot_mask << ISA_TAG_SHIFT;
        if ( EXEC_PROPERTY_is_M_Unit(OP_code(op)) && EXEC_PROPERTY_is_I_Unit(OP_code(op)) ){
          // A type instruction, identify its property

              slot_mask |= OP_m_unit(op)?
              ((slot-1)%ISA_MAX_SLOTS==2) ? ISA_EXEC_PROPERTY_I_Unit : ISA_EXEC_PROPERTY_M_Unit
              : ISA_EXEC_PROPERTY_I_Unit;  //No bundle exists with an M unit in slot 2

	      // slot_mask |= OP_m_unit(op)? ISA_EXEC_PROPERTY_M_Unit : ISA_EXEC_PROPERTY_I_Unit;
        } else { slot_mask |= ISA_EXEC_Unit_Prop(OP_code(op)); }
          stop_mask = stop_mask << 1;
        }

        // IPFEC hacker on brp special case
        // brp can issue in B0, B1 and B2 while pro64 only model in B2
        if (TSI_Issue_Ports(OP_code(op)).In(ip_B2) &&
            TSI_Issue_Ports(OP_code(op)).In(ip_B0)){
          slot_mask = slot_mask | ISA_EXEC_PROPERTY_B_Unit;
        }
        stop_mask |= (OP_end_group(op) != 0);

#ifndef GAS_TAGS_WORKED
// remove this when gas can handle tags inside explicit bundle
	if (OP_has_tag(op)) {
		fprintf(Asm_File, "\n%s:\n", LABEL_name(Get_OP_Tag(op)));
	}
#endif
    }

    if (slot == 0) break;

    // Emit the warning only when bundle formation phase is enabled (ON by
    // default).
    if (LOCS_Enable_Bundle_Formation) {
      FmtAssert(slot == ISA_MAX_SLOTS, ("not enough OPs for bundle in BB:%d\n",BB_id(bb)));
    }

    /* Determine template.
     */
    for (ibundle = 0; ibundle < ISA_MAX_BUNDLES; ++ibundle) {
      UINT64 this_slot_mask = ISA_EXEC_Slot_Mask(ibundle);
      UINT32 this_stop_mask = ISA_EXEC_Stop_Mask(ibundle);
      if (   (slot_mask & this_slot_mask) == this_slot_mask 
	  && (stop_mask & ~1) == this_stop_mask) break;
    }

    // Emit the warning only when bundle formation phase is enabled (ON by
    // default).
    if (LOCS_Enable_Bundle_Formation) {
      if (Trace_Inst && ibundle == ISA_MAX_BUNDLES) {
        Print_OP_No_SrcLine (slot_op[0]);
        Print_OP_No_SrcLine (slot_op[1]);
        Print_OP_No_SrcLine (slot_op[2]);
      }
    if(ibundle == ISA_MAX_BUNDLES){ 

     // Print_BB(slot_op[0]->bb);
     Print_OP_No_SrcLine (slot_op[0]);
     Print_OP_No_SrcLine (slot_op[1]);
     Print_OP_No_SrcLine (slot_op[2]);
     FmtAssert(ibundle != ISA_MAX_BUNDLES,
                ("couldn't find bundle for slot mask=0x%llx, stop mask=0x%x in BB:%d\n",
	             slot_mask, stop_mask, BB_id(bb)));
    }
    }

    BOOL split;
    /* We now use bb cycles from machine model, so don't use stop bit to count */ 
    bb_cycle_count += Track_Split(ibundle, stop_mask, split);
    if (split && last && EMIT_count_cycles) { 
      Set_OP_end_group(last); 
    }
    last = slot_op[ISA_MAX_SLOTS-1];

    /* Bundle prefix
     */
    if (Assembly && EMIT_explicit_bundles) {
      fprintf(Asm_File, " ");
      fprintf(Asm_File, ISA_PRINT_BEGIN_BUNDLE, ISA_EXEC_AsmName(ibundle));
      fprintf(Asm_File, "\n");
    }

    /* Assemble the bundle.
     */
    INT slot_i = 0;
    do {
      OP *sl_op = slot_op[slot_i];
      Perform_Sanity_Checks_For_OP(sl_op, TRUE);
      slot_i += r_assemble_op(sl_op, bb, &bundle, slot_i);
    } while ((slot_i < ISA_MAX_SLOTS) && (slot_i < slot));

    /* Bundle suffix
     */
    if (Object_Code) {
      TI_ASM_Set_Bundle_Comp(&bundle,
			     ISA_BUNDLE_PACK_COMP_stop, 
			     stop_mask & 1);

      TI_ASM_Set_Bundle_Comp(&bundle,
			     ISA_BUNDLE_PACK_COMP_template, 
			     ibundle);

      Em_Add_Bytes_To_Scn (PU_section, (char *)&bundle, INST_BYTES, INST_BYTES);
    }
    if (Assembly && EMIT_explicit_bundles) {
      fprintf(Asm_File, " %s", ISA_PRINT_END_BUNDLE);
    }
  }
  bb_cycle_count = BB_length(bb) ? BB_cycle(bb) : 0;
  if (Assembly) {
    fprintf(Asm_File, "\n\n");
    // output cycle count of the BB cbq
    // fprintf(Asm_File, "// BB:%d cycle count: %d\n\n", BB_id(bb),bb_cycle_count);
  }
  return bb_cycle_count;
}


/* Assemble the OPs in a BB an OP at a time.
 */
static INT
Assemble_Ops(BB *bb)
{
  OP *op;
  INT bb_cycle_count = 0;

  FmtAssert(ISA_MAX_SLOTS == 1,
	    ("Assemble_Ops shouldn't have been called"));

  FOR_ALL_BB_OPs_FWD(bb, op) {
    ISA_BUNDLE bundle[ISA_PACK_MAX_INST_WORDS];
    INT words;

    if (OP_dummy(op)) continue;		// these don't get emitted

    if (OP_simulated(op)) {
      Assemble_Simulated_OP(op, bb);
      continue;
    }

    Perform_Sanity_Checks_For_OP(op, TRUE);
    words = r_assemble_op(op, bb, bundle, 0);
    if (OP_end_group(op))    bb_cycle_count++; 

    if (Object_Code) {
      Em_Add_Bytes_To_Scn(PU_section, (char *)bundle,
			  INST_BYTES * words, INST_BYTES);
    }
  }
  return bb_cycle_count;
}

/* ====================================================================
 *
 * Emit_Loop_Unrolling_Note
 *
 * Emit a loop unrolling note to the .s file, anl file, etc.
 *
 * ====================================================================
 */
static void
Emit_Loop_Unrolling_Note(BB *bb, FILE *file)
{
  BOOL anl_note = file == anl_file;
  BB *head = BB_loop_head_bb(bb);
  UINT16 unrollings = BB_unrollings(bb);
  ANNOTATION *info_ant = ANNOT_Get(BB_annotations(head), ANNOT_LOOPINFO);
  LOOPINFO *info = info_ant ? ANNOT_loopinfo(info_ant) : NULL;
  BOOL unroll_pragma = FALSE;
  ANNOTATION *unroll_ant = ANNOT_Get(BB_annotations(head), ANNOT_PRAGMA);

  while (unroll_ant && WN_pragma(ANNOT_pragma(unroll_ant)) != WN_PRAGMA_UNROLL)
    unroll_ant = ANNOT_Get(ANNOT_next(unroll_ant), ANNOT_PRAGMA);
  if (unroll_ant) {
    WN *wn = ANNOT_pragma(unroll_ant);
    if (WN_pragma_arg1(wn) > 1) {
      if (WN_pragma_arg1(wn) == unrollings)
	unroll_pragma = TRUE;
      else if (BB_innermost(bb))
	DevWarn("BB:%d unrolled %d times but pragma says to unroll %d times",
		BB_id(bb), unrollings, WN_pragma_arg1(wn));
    }
  }

  if (unrollings > 1) {
    if (anl_note) {
      fprintf(anl_file, "\"unrolled %d times%s%s\"\n", unrollings,
	      BB_unrolled_fully(bb) ? " (fully)" : "",
	      unroll_pragma ? " (pragma)" : "");
    } else {
      fprintf(file, "%s<loop> unrolled %d times%s%s\n", 
	      ASM_CMNT_LINE,
	      unrollings,
	      BB_unrolled_fully(bb) ? " (fully)" : "",
	      unroll_pragma ? " (pragma)" : "");
    }
  }
}

/* ====================================================================
 *
 * Emit_Loop_Note
 *
 * Emit a loop note to the .s file, anl file, etc.
 *
 * ====================================================================
 */
static void
Emit_Loop_Note(BB *bb, FILE *file)
{
  BOOL anl_note = file == anl_file;
  BB *head = BB_loop_head_bb(bb);
  ANNOTATION *info_ant = ANNOT_Get(BB_annotations(head), ANNOT_LOOPINFO);
  LOOPINFO *info = info_ant ? ANNOT_loopinfo(info_ant) : NULL;

  if (bb == head) {
    SRCPOS srcpos = BB_Loop_Srcpos(bb);
    INT32 lineno = SRCPOS_linenum(srcpos);

    if (anl_note) {
      INT32 fileno = SRCPOS_filenum(srcpos);
      INT32 colno = SRCPOS_column(srcpos);
      fprintf (anl_file,
	       "\nmsg loop lines [%d %d %d]",
	       fileno,
	       lineno,
	       colno);
    } else {
      fprintf (file, "// <lentry>\n");
    }

    /* if (info) {
      WN *wn = LOOPINFO_wn(info);
      TN *trip_tn = LOOPINFO_trip_count_tn(info);
      BOOL constant_trip = trip_tn && TN_is_constant(trip_tn);
      INT depth = WN_loop_depth(wn);
      const char *estimated = constant_trip ? "" : "estimated ";
      INT64 trip_count = constant_trip ? TN_value(trip_tn) :
					 (INT64)WN_loop_trip_est(wn);
      const char * const fmt =   anl_note
			? " \"nesting depth: %d, %siterations: %lld\""
			: ", nesting depth: %d, %siterations: %lld";

      fprintf (file, fmt, depth, estimated, trip_count);
    } */

    //fprintf (file, "\n");
  } else if (anl_note) {

    /* Only interested in loop head messages for anl file
     */
    return;
  } else {
    ANNOTATION *lbl_ant = ANNOT_Get(BB_annotations(head), ANNOT_LABEL);
    DevAssert(lbl_ant, ("loop head BB:%d has no label", BB_id(head)));
    fprintf(file,
	    "%s<loop> Part of loop body line %d"
	    ", head labeled %s\n",
	    ASM_CMNT_LINE, BB_Loop_Lineno(head), LABEL_name(ANNOT_label(lbl_ant)));
  }
}

static void Emit_Preds_And_Succs(BB*bb, FILE *file)
{
  BBLIST *bb_succs = BB_succs(bb);
  BBLIST *bb_preds = BB_preds(bb);

  fprintf(file, "// Block: %d ", BB_id(bb));
  
  fprintf(file, "Pred: ");
  
  if (BBlist_Len(bb_preds)>0) {
    BBLIST *pred;


    FOR_ALL_BBLIST_ITEMS(bb_preds, pred) {
      fprintf(file, "%d ", BB_id(BBLIST_item(pred)));
      }
  	}

  fprintf(file, "Succ: ");
  
  if (BBlist_Len(bb_succs)>0) {
  	BBLIST *succ;
	
    FOR_ALL_BBLIST_ITEMS(bb_succs, succ) {
      fprintf(file, "%d ", BB_id(BBLIST_item(succ)));
      }
  	}
  fprintf(file, "\n");
}

/* ====================================================================
 *
 * EMT_Assemble_BB
 *
 * Assemble the contents of the given BB.
 *
 * ====================================================================
 */

static INT
EMT_Assemble_BB ( BB *bb, WN *rwn )
{
  ST *st;
  ANNOTATION *ant;
  RID *rid = BB_rid(bb);
  INT bb_cycle_count = 0;
  ROTATING_KERNEL_INFO *info ;

  if (Trace_Inst) {
	#pragma mips_frequency_hint NEVER
	fprintf(TFile, "assemble BB %d\n", BB_id(bb));
  }

  /* DO NOT let a in-eh-range call be the last instruction in procedure
   * bug in Get_Unwind_Table in libstdc++ 
   */
  if (BB_length(bb) == 0 && BB_next(bb) == NULL && BB_Has_Exc_Label(bb)) {
     fprintf(Asm_File, "//nop bb, code padding for eh only\n{ .mii\n\tnop.m 0\n\tnop.i 0\n\tnop.i 0;;\n }\n");
  }

  /* if swp , count the cycle of this BB */
  if (Assembly) {
     if (BB_annotations(bb) && ((ant= ANNOT_Get(BB_annotations(bb),ANNOT_ROTATING_KERNEL))!=NULL)){
         info = ANNOT_rotating_kernel(ant);
         BB_cycle(bb) = ROTATING_KERNEL_INFO_ii(info);
     }  
  }
  if (Assembly && List_Notes) {
     if (Assembly) {

         NOTE_BB_Act (bb, NOTE_PRINT_TO_FILE, Asm_File);
     }

     if (Assembly) {
         Emit_Preds_And_Succs(bb,Asm_File);
         FREQ_Print_BB_Note(bb, Asm_File);
     }

     if (Assembly) {
        if (BB_loop_head_bb(bb))  Emit_Loop_Note(bb,Asm_File);
     }
     
     if (Assembly) {
        //output cycle count of the BB cbq
        fprintf(Asm_File,"// BB:%d cycle count: %d\n",BB_id(bb),BB_cycle(bb));
     }
  }   
  
  /* List labels attached to BB: */
  for (ant = ANNOT_First (BB_annotations(bb), ANNOT_LABEL);
       ant != NULL;
       ant = ANNOT_Next (ant, ANNOT_LABEL))
  {
    LABEL_IDX lab = ANNOT_label(ant);

    if ( Assembly ) {
      fprintf ( Asm_File, "%s:\t%s 0x%llx\n", 
			  LABEL_name(lab), ASM_CMNT, Get_Label_Offset(lab) );
    }
#ifndef TARG_IA64
    if (Get_Label_Offset(lab) != PC) {
	DevWarn ("label %s offset %lld doesn't match PC %d", 
		LABEL_name(lab), Get_Label_Offset(lab), PC);
    }
#endif
  }

  // hack to keep track of last label and offset for assembly dwarf (suneel)
  if (Last_Label == LABEL_IDX_ZERO) {
    Last_Label = Gen_Label_For_BB (bb);
    Offset_From_Last_Label = 0;
    if (Initial_Pu_Label == LABEL_IDX_ZERO) {
      Initial_Pu_Label = Last_Label;
    }
  }
  
  if (Assembly) {
    if (rid != NULL && RID_cginfo(rid) != NULL) {
	if (current_rid == RID_id(rid)) {
		/* same, so do nothing */
	}
	else if (current_rid > 0) {
		/* changing regions */
		fprintf (Asm_File, "%s END REGION %d\n",
				    ASM_CMNT_LINE, current_rid);
		if (RID_id(rid) > 0 && !RID_is_glue_code(rid)) {
		    fprintf (Asm_File, "%s BEGIN REGION %d\n",
					ASM_CMNT_LINE, 	RID_id(rid));
		    current_rid = RID_id(rid);
		}
		else if (RID_is_glue_code(rid)) {
		    current_rid = 0;	/* pretend not a region */
		}
		else {
		    current_rid = RID_id(rid);
		}
	}
	else if (RID_id(rid) > 0 && !RID_is_glue_code(rid)) {
		/* beginning a region */
		fprintf (Asm_File, "%s BEGIN REGION %d\n", 
				   ASM_CMNT_LINE, RID_id(rid));
		current_rid = RID_id(rid);
	}
    }
    else if (current_rid > 0) {
	/* ending a region */
	fprintf (Asm_File, "%s END REGION %d\n", ASM_CMNT_LINE, current_rid);
	current_rid = 0;	/* no rid */
    }
  }
  if ( BB_entry(bb) ) {
    char *entry_name;
    ST *entry_sym; 
    ENTRYINFO *ent;
    SRCPOS entry_srcpos;
    ant = ANNOT_Get (BB_annotations(bb), ANNOT_ENTRYINFO);
    ent = ANNOT_entryinfo(ant);
    entry_srcpos = ENTRYINFO_srcpos(ent);
    entry_sym = ENTRYINFO_name(ent);
    entry_name = ST_name(entry_sym);

    /* Set an initial line number so that if the first inst in the BB
     * has no srcpos, then we'll be ok.
     */
    if (entry_srcpos) Cg_Dwarf_Add_Line_Entry (PC, entry_srcpos);

    if ( ST_is_not_used(entry_sym)) {
    	// don't emit alt-entry if marked as not-used
	DevWarn("CG reached entry marked as unused; will ignore it (%s)\n", 
		entry_name);
    }
    else {
    	Set_ST_ofst(entry_sym, PC);
    	if (strcmp( Cur_PU_Name, entry_name ) != 0) {
		// alt-entry
      		if ( Assembly ) {
			fprintf ( Asm_File, "\t%s\t%s\n", AS_AENT, entry_name);
			Print_Label (Asm_File, entry_sym, 0 );
      		}
		EMT_Put_Elf_Symbol (entry_sym);
      		if ( Object_Code ) {
        		Em_Define_Symbol (
			    EMT_Put_Elf_Symbol(entry_sym), PC, 0, PU_section);
			Em_Add_New_Event (EK_ENTRY, PC, 0, 0, 0, PU_section);
      		}
    	}
    	if (Object_Code) {
      		if ( EMIT_interface_section && !BB_handler(bb))
		   Interface_Scn_Add_Def( entry_sym, rwn );
    	}
    }
  }


  st = BB_st(bb);
  if (st) {
    if ( Assembly ) {
      // fprintf ( Asm_File, "%s:\t%s 0x%llx\n", ST_name(st), ASM_CMNT, ST_ofst(st));
    }
    Is_True (ST_ofst(st) == PC, ("st %s offset %lld doesn't match PC %d", 
	ST_name(st), ST_ofst(st), PC));
    Is_True (   !Has_Base_Block(st) 
	     || (ST_base(st) == (BB_cold(bb) ? cold_base : text_base)),
	     ("sym %s base doesn't match BB:%d",
	     ST_name(st), BB_id(bb)));
    FmtAssert(ST_is_export_local(st),
	      ("ST for BB:%d not EXPORT_LOCAL", BB_id(bb)));
  }

  /* write out all the notes for this BB */
  if (Assembly && List_Notes) {
    if (BB_loop_head_bb(bb)) {
      Emit_Loop_Unrolling_Note(bb, Asm_File);
    }
    if (BB_annotations(bb) && 
	ANNOT_Get(BB_annotations(bb), ANNOT_ROTATING_KERNEL))
      Emit_SWP_Note(bb, Asm_File);
  }

  if (Run_prompf) {
    if (BB_loop_head_bb(bb)) {
      Emit_Loop_Note(bb, anl_file);
    }

    if (BB_has_note(bb)) {
      NOTE_BB_Act (bb, NOTE_PRINT_TO_ANL_FILE, anl_file);
    }
  }

#if Is_True_On
  Init_Sanity_Checking_For_BB ();
#endif

  if (ISA_MAX_SLOTS > 1) {
    bb_cycle_count = Assemble_Bundles(bb);
  } else {
    bb_cycle_count = Assemble_Ops(bb);
  }

  if (Object_Code && BB_exit(bb)) {
    Em_Add_New_Event (EK_EXIT, PC - 2*INST_BYTES, 0, 0, 0, PU_section);
  }
  return bb_cycle_count;
} 


/* Routines to handle long branches. */

/* The farthest distance, in bytes, we will look back for a BB without 
 * a fallthrough
 */
#define FUDGE_ZONE 16000

static INT num_longb_inst_words;

typedef struct {
  BB                *bb_ptr;
  INT32              bb_inum;
  struct longb_info *bb_longb;	/* First long branch from this bb */
} BB_INFO;

static BB_INFO *bb_info;

typedef struct longb_info {
  INT bbindex;
  INT32 longb_inum;		// relative pc of long-branch
  INT32 distance;
  OP *op;
  UINT8 opnd;
  struct longb_info *next;
} LONGB_INFO;

typedef struct stub_info {
  struct stub_info *next;
  BB *stub;
  INT32 stub_loc;
  BB *targ;
  INT64 offset;
} STUB_INFO;


/* ====================================================================
 *
 * Find_Stub_BB
 *
 * Given a long branch, look at the already created stubs and determine
 * if we can just branch to one of them. To avoid some sticky problems,
 * we only consider stubs that are in the same direction as the
 * ultimate target is from this branch.
 *
 * ====================================================================
 */
static BB *
Find_Stub_BB (const LONGB_INFO *longb, const STUB_INFO *stubs)
{
  const STUB_INFO *stub;
  TN *tn = OP_opnd(longb->op, longb->opnd);
  BB *targ = Get_Label_BB(TN_label(tn));
  INT64 offset = TN_offset(tn);

  for (stub = stubs; stub; stub = stub->next) {
    INT32 stub_distance;
    if (stub->targ != targ || stub->offset != offset) continue;
    stub_distance = stub->stub_loc - longb->longb_inum;
    if (stub_distance == 0) continue;
    if ((longb->distance ^ stub_distance) < 0) continue;
    if (stub_distance < 0) stub_distance = -stub_distance;
    if (stub_distance < EMIT_Long_Branch_Limit) return stub->stub;
  }

  return NULL;
}


static BB *
Create_Stub_BB (LONGB_INFO *longb, INT *stub_loc, BOOL fwd_branch)
{
  INT save_idx;
  BB *next_bb = NULL;
  INT idx = longb->bbindex;
  BB *orig_bb = bb_info[idx].bb_ptr;
  BB *stub_bb = Gen_BB_Like (orig_bb);

  if (BB_cold(orig_bb)) Set_BB_cold(stub_bb);

  if (Trace_Longbr) {
    #pragma mips_frequency_hint NEVER
    fprintf (TFile, "Create_Stub_BB: idx: %d, stub_loc: %d, fwd:%d\n", 
			  idx, *stub_loc, fwd_branch);
  }

  /* Search for a BB in the fudge zone that does not fall through to
   * its successor. If we find one, we insert there and we don't have to
   * worry about keeping anyone from falling through to the inserted
   * BB. The search is done in such a way as to always check the
   * first candidate BB even if it is outside of the fudge zone
   * (which would happen it its size was >= FUDGE_ZONE). We do this
   * because this is where we will insert the stub and we still want
   * to know if a branch around the stub is necessary.
   */
  if (fwd_branch) {
    while (bb_info[++idx].bb_inum < *stub_loc);
    save_idx = --idx;
    do {
      BB *bb = bb_info[idx].bb_ptr;
      BB *bb_prev = BB_prev(bb);

      /* BB_prev(bb_info[idx].bb_ptr) is expected never to be NULL,
       * but there's really no choice of what to do if it
       * is. Therefore rather than assert, we go ahead and check for
       * it, doing the right thing if we happen to find NULL.
       */
      if (bb_prev != NULL && !BB_in_preds(bb, bb_prev)) {
	next_bb = bb;
	save_idx = idx;
	break;
      }
    } while (--idx >= 0 && bb_info[idx].bb_inum > (*stub_loc - FUDGE_ZONE));
  }
  else {
    while (bb_info[--idx].bb_inum > *stub_loc); 
    save_idx = ++idx;
    do {
      BB *bb = bb_info[idx].bb_ptr;
      BB *bb_prev = BB_prev(bb);

      /* BB_prev(bb_info[idx].bb_ptr) is expected never to be NULL,
       * but there's really no choice of what to do if it
       * is. Therefore rather than assert, we go ahead and check for
       * it, doing the right thing if we happen to find NULL.
       */
      if (bb_prev != NULL && !BB_in_preds(bb, bb_prev)) {
	next_bb = bb;
	save_idx = idx;
	break;
      }
    } while (   ++idx < PU_BB_Count
	     && bb_info[idx].bb_inum < (*stub_loc + FUDGE_ZONE));
  }
  if (Trace_Longbr) {
    #pragma mips_frequency_hint NEVER
    fprintf (TFile, "next_bb: %p, save_idx: %d\n", next_bb, save_idx);
  }
  if (next_bb == NULL) {

    /* No blocks were found in the fudge zone where we could avoid
     * placing a branch around the stub. So insert the stub as far
     * away as possible and insert a branch around the stub
     * BB to avoid falling through to it.
     */
    BB *branch_around_bb;
    BBLIST *item;
    TN *label_tn;
    ANNOTATION *ant;
    float prob;
    OP *new_op;
    OPS new_ops = OPS_EMPTY;

    next_bb = bb_info[save_idx].bb_ptr;

    Is_True(BB_prev(next_bb) && BB_in_preds(next_bb, BB_prev(next_bb)),
	    ("branch around stub not required"));

    branch_around_bb = Gen_BB_Like (orig_bb);
    if (BB_cold(orig_bb)) Set_BB_cold(branch_around_bb);

    if (Trace_Longbr) {
      #pragma mips_frequency_hint NEVER
      fprintf (TFile, "Inserting a branch around the stub bb\n");
      fprintf (TFile, "Looking for BB:%d among preds of BB:%d\n",
	       BB_id(BB_prev(next_bb)), BB_id(next_bb));
      Print_BB_Header(next_bb, TRUE, FALSE);
    }

    /* Set branch_around_bb's frequency to the frequency of the edge
     * from its predecessor to its successor.
     */
    FOR_ALL_BB_PREDS(next_bb, item) {
      if (BBLIST_item(item) == BB_prev(next_bb)) {
	prob = BBLIST_prob(item);
	BB_freq(branch_around_bb) = BB_freq(BBLIST_item(item)) * prob;
        break;
      }
    }
    FmtAssert(item != NULL,
              ("Can't insert branch_around_bb; "
               "incomplete fallthrough pred/succ"));

    if (BB_freq_fb_based(BB_prev(next_bb)))
      Set_BB_freq_fb_based(branch_around_bb);
    Insert_BB (branch_around_bb, BB_prev(next_bb));

    /* The following is somewhat inefficient, considering that to do
     * part of the work, we could simply go through the appropriate
     * lists and update the BBLIST_item fields in the relevant BBLIST
     * nodes. But it's better to stick to the common interface.
     */
    Unlink_Pred_Succ(BB_prev(branch_around_bb), next_bb);
    Link_Pred_Succ_with_Prob(BB_prev(branch_around_bb), branch_around_bb, prob);
    Link_Pred_Succ_with_Prob(branch_around_bb, next_bb, 1.0);

    ant = ANNOT_Get (BB_annotations(next_bb), ANNOT_LABEL);
    label_tn = Gen_Label_TN (ANNOT_label(ant), 0);
    Exp_OP1 (OPC_GOTO, NULL, label_tn, &new_ops);
    new_op = OPS_last(&new_ops);
    OP_scycle(new_op) = 0;
    BB_Append_Op(branch_around_bb, new_op);
    num_longb_inst_words += OP_Real_Inst_Words(new_op);
    if (PROC_has_branch_delay_slot()) {
      Exp_Noop(&new_ops);
      new_op = OPS_last(&new_ops);
      OP_scycle(new_op) = 1;
      BB_Append_Op(branch_around_bb, new_op);
      num_longb_inst_words += OP_Real_Inst_Words(new_op);
    }

    if (Trace_Longbr) {
      #pragma mips_frequency_hint NEVER
      fprintf(TFile, "Previous BB:\n");
      Print_BB_Header(BB_prev(branch_around_bb), TRUE, FALSE);
      fprintf(TFile, "Inserted branch_around_bb:\n");
      Print_BB_Header(branch_around_bb, TRUE, FALSE);
      fprintf(TFile, "Next BB:\n");
      Print_BB_Header(next_bb, TRUE, FALSE);
      fprintf(TFile, "====== end of branch-around insertion ========\n");
    }
  }
  *stub_loc = bb_info[save_idx].bb_inum;
  if (Trace_Longbr) {
    #pragma mips_frequency_hint NEVER
    ANNOTATION *ant = ANNOT_Get (BB_annotations(next_bb), ANNOT_LABEL);
    fprintf (TFile, "Inserting stub bb before bb: %s\n", 
		LABEL_name(ANNOT_label(ant)));
  }
  Insert_BB (stub_bb, BB_prev(next_bb));
  return stub_bb;
}

static void
Recompute_Label_Offset(INT32 pcs[2])
{
  BB *bb;
  INT32 cur_pcs[2];

  /* recompute the addresses of all labels in the procedure. */
  cur_pcs[IHOT] = text_PC;
  cur_pcs[ICOLD] = cold_PC;
  for (bb = REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
    ANNOTATION *ant;
    OP *op;
    INT isect = BB_cold(bb) ? ICOLD : IHOT;
    INT32 cur_pc = cur_pcs[isect];
    LABEL_IDX lab;
    ST *st = BB_st(bb);
    if (st) {
      Set_ST_ofst(st, cur_pc);
      Set_ST_base(st, BB_cold(bb) ? cold_base : text_base);
    }
    for (ant = ANNOT_First (BB_annotations(bb), ANNOT_LABEL);
         ant != NULL;
         ant = ANNOT_Next (ant, ANNOT_LABEL))
    {
      lab = ANNOT_label(ant);
      Set_Label_Offset(lab, cur_pc);
    }
    for (op = BB_first_op(bb); op; op = OP_next(op)) {
      if (OP_has_tag(op)) {
	lab = Get_OP_Tag(op);
      	Set_Label_Offset(lab, cur_pc);
      }
      INT num_inst_words = OP_Real_Inst_Words (op);
      cur_pc = PC_Incr_N(cur_pc, num_inst_words);
    }
    cur_pcs[isect] = cur_pc;
  }

  Is_True(cur_pcs[IHOT] == pcs[IHOT],
	 ("Recompute_Label_Offsets: hot region PC mismatch (%d vs %d).",
	  cur_pcs[IHOT], pcs[IHOT]));
  Is_True(cur_pcs[ICOLD] == pcs[ICOLD],
	 ("Recompute_Label_Offsets: cold region PC mismatch (%d vs %d).",
	  cur_pcs[ICOLD], pcs[ICOLD]));
}

/* Takes a pointer to the bb_info array, the array length, and the
 * index of the (unique) element that could be out of place. Restores
 * the sort by bb_inum.
 */

static INT
BB_Info_Maintain_Sort (BB_INFO *bb_info,
		       INT      n_bb_info,
		       INT      bbindex,
		       INT      stub_len)

{
  INT i = bbindex + 1;

  FmtAssert(bbindex < n_bb_info,
	    ("Reference to BB:%2d out of range", bbindex));

  /* If we wanted to be really fancy, the following loop would be
   * binary search.
   */
  for ( ;
       i < n_bb_info &&
       bb_info[bbindex].bb_inum > bb_info[i].bb_inum;
       ++i) ;
  /* If we need to move the bbindex'th element upward, its destination
   * is just to the left of i.
   *
   * If we don't need to move upward, i == bbindex + 1.
   */
  if (i == bbindex + 1) {
    for ( ;
	 i > 0 &&
	 bb_info[bbindex].bb_inum <= bb_info[i - 1].bb_inum;
	 --i) ;
    ++i;
  }
  /* Now the bbindex'th element's destination is just to the left of
   * i, regardless of anything else.
   */
  if (i != bbindex + 1) {
    BB_INFO            temp = bb_info[bbindex];
    LONGB_INFO *longb_list;

    while (i <= bbindex) {
      Is_True(bb_info[bbindex - 1].bb_inum >= temp.bb_inum,
	      ("Moving too low a BB upward"));
      bb_info[bbindex] = bb_info[bbindex - 1];
      if ((longb_list = bb_info[bbindex - 1].bb_longb) != NULL) {
	for (Is_True(longb_list->bbindex == bbindex - 1,
		     ("Rotate right: longb_list->bbindex == %d; should be %d",
		      longb_list->bbindex, bbindex - 1));
	     (longb_list != NULL) && (longb_list->bbindex == bbindex - 1);
	     longb_list = longb_list->next) {
	  ++(longb_list->bbindex);
	}
      }
      --bbindex;
    }
    bb_info[bbindex] = temp;
    while (i > bbindex + 1) {
      Is_True(bb_info[bbindex + 1].bb_inum < temp.bb_inum,
	      ("Moving too high a BB downward"));
      bb_info[bbindex] = bb_info[bbindex + 1];
      if ((longb_list = bb_info[bbindex + 1].bb_longb) != NULL) {
	for (Is_True(longb_list->bbindex == bbindex + 1,
		     ("Rotate left: longb_list->bbindex == %d; should be %d",
		      longb_list->bbindex, bbindex + 1));
	     (longb_list != NULL) && (longb_list->bbindex == bbindex + 1);
	     longb_list = longb_list->next) {
	  --(longb_list->bbindex);
	}
      }
      ++bbindex;
    }
    bb_info[bbindex] = temp;
  }

  /* Adjust the bb_inum of those entries pushed upward by inserting
   * the stub BB.
   */
  for (i = bbindex + 1; i < n_bb_info; ++i) {
    bb_info[i].bb_inum += stub_len;
  }
  return bbindex;
}


/* ====================================================================
 *
 * Compare_Long_Branches
 *
 * qsort comparison function for sorting long branches.  The goal of the 
 * sort is to group all branches with the same target together, with the 
 * branches spanning the largest distance coming first. In addition, the 
 * top level sorting critera is the direction of the branch. All forward
 * branches come first.
 *
 * ====================================================================
 */
static INT
Compare_Long_Branches(const void *p1, const void *p2)
{
  /* qsort claims to sort things in ascending order, but in reality
   * it is sorting based on how this comparison function classifies
   * the relationship. Define some constants that make that clear.
   */
  enum {
    sort_1_before_2 = -1, 
    sort_1_after_2  = 1, 
    sort_1_same_2   = 0 
  };
  LONGB_INFO *lb1 = *(LONGB_INFO **)p1;
  LONGB_INFO *lb2 = *(LONGB_INFO **)p2;
  INT32 dist1 = lb1->distance;
  INT32 dist2 = lb2->distance;
  INT32 targ1 = lb1->longb_inum + dist1;
  INT32 targ2 = lb2->longb_inum + dist2;

  if ((dist1 ^ dist2) < 0) {
    /* one forward and one backward branch
     */
    return dist1 < 0 ? sort_1_after_2 : sort_1_before_2;
  } else if (dist1 < 0) {
    /* two backward branches
     */
    if (targ1 > targ2) {
      return sort_1_after_2;
    } else if (targ1 < targ2) {
      return sort_1_before_2;
    } else {
      Is_True(dist1 != dist2, ("two branches from the same address???"));
      return dist1 > dist2 ? sort_1_before_2 : sort_1_after_2;
    }
  } else {
    /* two forward branches
     */
    if (targ1 > targ2) {
      return sort_1_before_2;
    } else if (targ1 < targ2) {
      return sort_1_after_2;
    } else {
      Is_True(dist1 != dist2, ("two branches from the same address???"));
      return dist1 > dist2 ? sort_1_before_2 : sort_1_after_2;
    }
  }
}


/* ====================================================================
 *
 * Sort_Long_Branches
 *
 * Sort long branches to help streamline things when we have multiple
 * long branches to the same target. See Compare_Long_Branches for
 * description of the sorted order.
 *
 * ====================================================================
 */
static LONGB_INFO *
Sort_Long_Branches(INT num_longb, LONGB_INFO *longb_list)
{
  LONGB_INFO *longb;
  INT i;
  LONGB_INFO **vec = (LONGB_INFO **)alloca(sizeof(LONGB_INFO *) * num_longb);

  /* Get the linked list into a vector we can sort.
   */
  longb = longb_list;
  for (i = 0; i < num_longb; ++i) {
    vec[i] = longb;
    longb = longb->next;
  }

  qsort(vec, num_longb, sizeof(LONGB_INFO *), Compare_Long_Branches);

  /* Re-create the linked list from the sorted vector.
   */
  longb = NULL;
  for (i = num_longb - 1; i >= 0; --i) {
    LONGB_INFO *vec_i = vec[i];
    vec_i->next = longb;
    longb = vec_i;
  }
  return longb;
}


/* ====================================================================
 *
 * Print_Long_Branches
 *
 * Print the info for the long branches to the trace file.
 *
 * ====================================================================
 */
static void
Print_Long_Branches(LONGB_INFO *longb_list)
{
  LONGB_INFO *longb;
  for (longb = longb_list; longb; longb = longb->next) {
    fprintf(TFile, "  bbindex=%d (BB:%d)"
		   ", longb_inum=%d"
		   ", distance=%d"
		   ", target=%d\n",
		   longb->bbindex, BB_id(bb_info[longb->bbindex].bb_ptr),
		   longb->longb_inum,
		   longb->distance,
		   longb->longb_inum + longb->distance);
  }
}


static void
Fixup_Long_Branches (INT32 *hot_size, INT32 *cold_size)
{
  BB *bb;
  OP *op;
  INT32 cur_pcs[2];
  INT32 start_pcs[2];
  TN *t;
  INT i;
  INT num_bbs;
  INT num_longb;
  LONGB_INFO *longb_list, *new_longb;
  STUB_INFO *stubs;

  Trace_Longbr = Get_Trace (TP_EMIT, 0x800);
  num_longb_inst_words = 0;
  bb_info = (BB_INFO *) alloca ((PU_BB_Count + 2) * sizeof (*bb_info));
  num_bbs = 0;
  num_longb = 0;
  longb_list = NULL;
  cur_pcs[IHOT] = start_pcs[IHOT] = text_PC;
  cur_pcs[ICOLD] = start_pcs[ICOLD] = cold_PC;
  for (bb = REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
    INT isect = BB_cold(bb) ? ICOLD : IHOT;
    INT32 cur_pc = cur_pcs[isect];
    INT32 start_pc = start_pcs[isect];
    bb_info[num_bbs].bb_ptr = bb;
    bb_info[num_bbs].bb_inum = cur_pc - start_pc;
    bb_info[num_bbs].bb_longb = NULL;
    for (op = BB_first_op(bb); op; op = OP_next(op)) {
      INT num_inst_words = OP_Real_Inst_Words (op);
      if (OP_xfer(op)) {
        for (i = 0; i < OP_opnds(op); i++) {
	  t = OP_opnd(op,i);
	  if (TN_is_label(t) && OP_opnd_is_pcrel(op,i)) {
	    LABEL_IDX lab = TN_label(t);
	    INT64 val = Get_Label_Offset(lab) + TN_offset(t) - PC_Bundle(cur_pc);
	    if (PROC_has_branch_delay_slot()) val -= sizeof(ISA_PACK_INST);
	    if (val > -EMIT_Long_Branch_Limit && val < EMIT_Long_Branch_Limit) break;
	    if (Trace_Longbr) {
	      #pragma mips_frequency_hint NEVER
	      fprintf (TFile, "Found a long branch to %s, ", LABEL_name(lab));
	      fprintf (TFile, "location: %d, distance: %lld\n", 
		      cur_pc - start_pc, val);
	    }
	    new_longb = (LONGB_INFO *)alloca (sizeof(LONGB_INFO));
	    new_longb->bbindex = num_bbs;
	    new_longb->longb_inum = cur_pc - start_pc;
	    new_longb->distance = val;
	    new_longb->op = op;
	    new_longb->opnd = i;
	    new_longb->next = longb_list;
	    longb_list = new_longb;
	    bb_info[num_bbs].bb_longb = new_longb;
	    ++num_longb;
	  }
	}
      }
      else if (OP_branch_predict(op)) {
	// for branch predicts with one or more pc-relative operands,
	// if the target is too far away to fit in the instruction
	// then since not needed for correctness, just replace with a nop.
        for (i = 0; i < OP_opnds(op); i++) {
	  t = OP_opnd(op,i);
	  if ((TN_is_label(t) || TN_is_tag(t)) && OP_opnd_is_pcrel(op,i)) {
            LABEL_IDX lab = TN_label(t);
            INT64 val = Get_Label_Offset(lab) + TN_offset(t) - PC_Bundle(cur_pc);
	    if ( ! ISA_LC_Value_In_Class (val, OP_opnd_lit_class(op, i))) {
	      // replace brp with nop
	      OP *new_op;
	      OPS new_ops;
	      OPS_Init(&new_ops);
	      DevWarn("%s label %s doesn't fit; replace with nop",
		      TOP_Name(OP_code(op)), LABEL_name(lab));
	      Exp_Noop(&new_ops);
	      new_op = OPS_last(&new_ops);
	      OP_scycle(new_op) = OP_scycle(op);
	      // now make a specific nop (if has multiple nops)
	      OP_Change_Opcode(new_op, 
			CGTARG_Noop_Top (ISA_EXEC_Unit_Prop(OP_code(op))) );
	      BB_Insert_Op_After (bb, op, new_op);
	      BB_Remove_Op (bb, op);
	      op = new_op;	// so op->next is correct
	      break;
	    }
	  }
	}
      }
      cur_pc = PC_Incr_N(cur_pc, num_inst_words);
    }
    cur_pcs[isect] = cur_pc;
    num_bbs++;
  }

  longb_list = Sort_Long_Branches(num_longb, longb_list);
  if (Trace_Longbr) {
    #pragma mips_frequency_hint NEVER
    fprintf(TFile, "\nLong branches after sorting:\n");
    Print_Long_Branches(longb_list);
  }

  stubs = NULL;
  for (; longb_list != NULL; longb_list = longb_list->next) {
    BOOL fwd_branch = (longb_list->distance > 0);
    INT br_limit = (fwd_branch ? EMIT_Long_Branch_Limit : -EMIT_Long_Branch_Limit);
    INT stub_loc = longb_list->longb_inum + br_limit;
    INT tgt_loc = longb_list->longb_inum + longb_list->distance;
    TN *tgt_tn = OP_opnd(longb_list->op, longb_list->opnd);
    BB *tgt_bb = Get_Label_BB(TN_label(tgt_tn));
    while ((fwd_branch && stub_loc < tgt_loc) ||
	   (!fwd_branch && stub_loc > tgt_loc))
    {
      BBLIST *item;
      STUB_INFO *stub_info;
      BB *longb_bb;
      BB *stub_bb;
      TN *label_tn;
      TN *old_label_tn;
      BB *old_tgt_bb;
      OP *new_op;
      OPS new_ops;
      INT stub_inst_words;
      INT stub_bytes;
      float longb_prob;
      INT pc_idx;

      if (Trace_Longbr) {
	#pragma mips_frequency_hint NEVER
	fprintf(TFile, "========= Creating a stub BB ========\n");
	fprintf(TFile, " BB with long branch:\n");
	Print_BB_Header(bb_info[longb_list->bbindex].bb_ptr, TRUE, FALSE);
      }
      old_label_tn = OP_opnd(longb_list->op, longb_list->opnd);
      old_tgt_bb = Get_Label_BB(TN_label(old_label_tn));
      longb_bb = bb_info[longb_list->bbindex].bb_ptr;

      /* Get the probability that the long branch is taken.
       */
      if (Trace_Longbr) {
	#pragma mips_frequency_hint NEVER
	fprintf(TFile, "Looking for branch target BB (labeled %s)\n",
		LABEL_name(TN_label(old_label_tn)));
      }
      FOR_ALL_BB_SUCCS(longb_bb, item) {
	if (old_tgt_bb == BBLIST_item(item)) {
	  longb_prob = BBLIST_prob(item);
	  if (Trace_Longbr) {
	    #pragma mips_frequency_hint NEVER
	    fprintf(TFile, "Found BB:%2d labeled %s\n",
		    BB_id(BBLIST_item(item)),
		    LABEL_name(TN_label(old_label_tn)));
	  }
	  break;
	}
      }
      FmtAssert(item != NULL,
		("Didn't find branch target BB among successors!"));

      /* If there is an existing stub that branches to the final target,
       * then change this long branch to branch to it and we've fixed
       * it without addding any additional code.
       */
      stub_bb = Find_Stub_BB(longb_list, stubs);
      if (stub_bb) {
	if (Trace_Longbr) {
	  #pragma mips_frequency_hint NEVER
          fprintf (TFile, "Targetting existing stub-bb: BB:%d\n", BB_id(stub_bb));
	}
	BB_freq(stub_bb) += longb_prob * BB_freq(longb_bb);

	label_tn = Gen_Label_TN (Gen_Label_For_BB (stub_bb), 0);
	Set_OP_opnd(longb_list->op, longb_list->opnd, label_tn);

        Unlink_Pred_Succ(longb_bb, old_tgt_bb);
        Link_Pred_Succ_with_Prob(longb_bb, stub_bb, longb_prob);

	break;
      }

      /* Keep track of how many instruction words we add for this stub.
       */
      stub_inst_words = num_longb_inst_words;
      stub_bb = Create_Stub_BB (longb_list, &stub_loc, fwd_branch);

      /* Keep track of the location of this stub so that we might be
       * able to branch to it from another long branch. Note that
       * since the long branches are sorted by target, we delete
       * the list if the final target is different -- this speeds up
       * the searching in Find_Stub_BB. (Note that we could do some
       * better memory management and recycle the list members).
       */
      if (stubs && stubs->targ != tgt_bb) stubs = NULL;
      stub_info = (STUB_INFO *)alloca(sizeof(STUB_INFO));
      stub_info->stub = stub_bb;
      stub_info->stub_loc = stub_loc;
      stub_info->targ = tgt_bb;
      stub_info->offset = TN_offset(tgt_tn);
      stub_info->next = stubs;
      stubs = stub_info;

      /* Set the frequency of the new BB.
       */
      BB_freq(stub_bb) = longb_prob * BB_freq(longb_bb);

      Unlink_Pred_Succ(longb_bb, old_tgt_bb);
      Link_Pred_Succ_with_Prob(longb_bb, stub_bb, longb_prob);
      Link_Pred_Succ_with_Prob(stub_bb, old_tgt_bb, 1.0);

      if (Trace_Longbr) {
	#pragma mips_frequency_hint NEVER
        fprintf (TFile, "Location of stub-bb: %d\n", stub_loc);
      }
      label_tn = Gen_Label_TN (Gen_Label_For_BB (stub_bb), 0);
      Set_OP_opnd(longb_list->op, longb_list->opnd, label_tn);
      OPS_Init(&new_ops);
      Exp_OP1 (OPC_GOTO, NULL, old_label_tn, &new_ops);
      new_op = OPS_last(&new_ops);
      /* Are the following two lines right? */
      longb_list->op = new_op;
      longb_list->opnd = OP_find_opnd_use(new_op, OU_target);
      longb_list->longb_inum = stub_loc;

      /* If the above two lines are right, the following line should
       * be OK, too, and something like it is required now that we
       * update successor and predecessor edges.
       */
      bb_info[longb_list->bbindex].bb_ptr = stub_bb;

      /* Now we have a problem. bb_info[longb_list->bbindex].bb_inum
       * refers to the position of the BB with the original long
       * branch in it, but longb_list->* and
       * bb_info[longb_list->bbindex].bb_ptr refer to the new
       * (potentially long) branch. This is bad because bb_inum is the
       * criterion used to decide whether to place a new stub, but if
       * the criterion is met, the stub gets placed according to
       * bb_ptr. The final insult is added by the fact that the
       * bb_info entries are sorted by bb_inum, so we can't just
       * update bb_inum to reflect the position of the (new,
       * potentially long) branch and have everything just work.
       *
       * We take the low-performance solution, and hope we don't get
       * hurt too bad: Figure out the bb_inum of the new potentially
       * long branch, and grimpse the bb_info array up or down to put
       * the updated bb_info record in the right place. Argh. Shoulda
       * used the Standard Template Library for bb_info, and then this
       * would all be transparent and fast...
       *
       * Issues: Should we update longb_list->longb_inum? I don't
       *         think so, since it doesn't get used.
       *         What to do about the fact that bb_inum fields aren't
       *         updated to reflect the insertion of the stub_bb's
       *         instructions? Should we update it as we shift the
       *         bb_info array?
       *
       * There remains a slight incorrectness in that even though
       * BB_Info_Maintain_Sort updates the bb_inum for each BB
       * containing a long branch to reflect the stub insertion, we do
       * not update the longb_inum fields of the longb_list
       * entries. This can lead to the user having to manually set
       * longbranch_limit. Ugh.
       *
       * To counter this problem, we should redefine the longb_inum
       * field to be an offset (in bytes) from the beginning of
       * the BB. Then the updating of the bb_inum fields will take
       * care of us, and calculations that once involved
       * longb_list->longb_inum will now involve
       * bb_info[longb_list->bb_ptr].bb_inum + longb_list->longb_inum.
       */
      bb_info[longb_list->bbindex].bb_inum = stub_loc;

      /* Add the new instructions so we can count their length
       */
      OP_scycle(new_op) = 0;
      BB_Append_Op(stub_bb, new_op);
      num_longb_inst_words += OP_Real_Inst_Words(new_op);
      if (PROC_has_branch_delay_slot()) {
	Exp_Noop(&new_ops);
	new_op = OPS_last(&new_ops);
	OP_scycle(new_op) = 1;
	BB_Append_Op(stub_bb, new_op);
	num_longb_inst_words += OP_Real_Inst_Words(new_op);
      }

      stub_inst_words = num_longb_inst_words - stub_inst_words;
      stub_bytes = stub_inst_words * INST_BYTES;

      pc_idx = BB_cold(stub_bb) ? ICOLD : IHOT; 
      cur_pcs[pc_idx] = PC_Incr_N(cur_pcs[pc_idx], stub_inst_words);

      longb_list->bbindex = BB_Info_Maintain_Sort(bb_info,
						  num_bbs,
						  longb_list->bbindex,
						  stub_bytes);

      /* Adjust the start address of the stubs in case they moved.
       */
      for (stub_info = stubs->next; stub_info; stub_info = stub_info->next) {
	if (stub_info->stub_loc >= stub_loc) {
	  stub_info->stub_loc += stub_bytes;
	}
      }

      if (Trace_Longbr) {
	#pragma mips_frequency_hint NEVER
	INT num_longb_inst_bytes = num_longb_inst_words * INST_BYTES;
	fprintf (TFile, "Number of instruction bytes in branch stubs: %d\n", 
		num_longb_inst_bytes * INST_BYTES);
        if (num_longb_inst_bytes > ((MIN_BRANCH_DISP - EMIT_Long_Branch_Limit)))
	  fprintf (TFile, "ERROR: too many long branches\n");
	fprintf (TFile, "New stub BB:\n");
	Print_BB_Header(stub_bb, TRUE, FALSE);
      }
      stub_loc += br_limit;
    }
    if (Trace_Longbr) {
      #pragma mips_frequency_hint NEVER
      fprintf (TFile, "--- Resolved\n");
    }
  }

  Recompute_Label_Offset(cur_pcs);
  *hot_size = cur_pcs[IHOT] - text_PC;
  *cold_size = cur_pcs[ICOLD] - cold_PC;
}


/* Check if <pred> is a branch to <succ> that skips the first instruction
 * in the <succ>. This typically happens after filling the branch delay
 * slot with the first instruction in the target basic block.
 */
static BOOL
Branch_Skips_First_Op (BB *pred, BB *succ) 
{
  OP *op;

  if (BB_next(pred) == succ) return FALSE;

  op = BB_branch_op (pred);
  if (op != NULL) {
    INT i;
    for (i = 0; i < OP_opnds(op); i++) {
      TN *opnd_tn = OP_opnd(op,i);
      if (TN_is_label(opnd_tn) && TN_offset(opnd_tn) != 0) return TRUE;
    }
  }
  return FALSE;
}

static INT
Num_of_OPs_in_First_Group(BB* bb)
{
  INT Num_of_OPs = 0;
  OP* op;

  for ( op = BB_first_op(bb); op; op = OP_next(op) ) {
    // ignore dummy op.
    if (OP_dummy(op)) continue;

    Num_of_OPs++;

    if (OP_end_group(op)) break;
  }

  return Num_of_OPs;
}

/* 
 * Check if bb should be aligned, 
 * and return number of instructions it should be aligned with.
 */
INT
Check_If_Should_Align_BB (BB *bb, INT32 curpc)
{
  	BBLIST *preds;
	INT32 targpc;
	float skip_freq = 0.01;		/* not zero so can divide */
	float noskip_freq = 0.01;
	INT targ_alignment;
	INT num_of_ops = 0; 		/* zero to begin with */
#define FREQUENT_BB_DIFF 10.0

	/*
	 * Align loops for best processor efficiency.
	 * Originally checked if bb_loophead, but now just
	 * check frequency of block (in case doesn't look like proper loop,
	 * but still has high-frequency).
	 */
	if (OPT_Space)
		return 0;	/* don't align */
	if (BB_freq(bb) <= 1.0)
		return 0;	/* not frequent enough, so don't align */
	if (BB_prev(bb) == NULL) 
		return 0;	/* nowhere to put nops */

	/* No padding if the first group in current bb contains only one bundle. */
        if (Num_of_OPs_in_First_Group(bb) <= ISA_MAX_SLOTS)
		return 0;

	/* don't want to add nops to previous bb 
	 * unless current bb is loop head, or significantly more frequent. */
	if (!BB_loophead(bb) &&
            (BB_freq(BB_prev(bb)) ? BB_freq(bb) / BB_freq(BB_prev(bb)) < FREQUENT_BB_DIFF : TRUE))
		return 0;

	/* first check whether target is always label+4 */
        FOR_ALL_BB_PREDS (bb, preds) {
		if (Branch_Skips_First_Op (BBLIST_item(preds), bb)) {
			skip_freq += BB_freq(BBLIST_item(preds));
		} else {
			noskip_freq += BB_freq(BBLIST_item(preds));
		}
	}
	if ((skip_freq / noskip_freq) > FREQUENT_BB_DIFF)
		targpc = PC_Incr(curpc);
	else if ((noskip_freq / skip_freq) > FREQUENT_BB_DIFF)
		targpc = curpc;
	else {
		/* mixture of skip and noskip branches, 
		 * or just not frequent enough,
		 * so don't align */
		return 0;
	}
	if (Trace_Inst) {
		#pragma mips_frequency_hint NEVER
		fprintf(TFile, "align_bb %d:  bb_freq = %f, prev_bb_freq = %f, skip_freq = %f, noskip_freq = %f\n",
			BB_id(bb), BB_freq(bb), BB_freq(BB_prev(bb)), 
			skip_freq, noskip_freq);
	}
	if (Align_Instructions)
		targ_alignment = Align_Instructions;
	else
		targ_alignment = CGTARG_Text_Alignment();
	targ_alignment /= INST_BYTES;	/* so word-sized */
	targpc /= INST_BYTES;		/* so word-sized */
	if (Get_Trace(TP_EMIT, 0x400)) {
		/* To do this right for R10K, 
		 * need to check whether paths/bb-chains
		 * cross cache lines.  An easier check, which is also
		 * compatible with beast and tfp is to just do the
		 * quad-word alignment, which guarantees at least that
		 * the cache-line crossing will be quad-aligned.
		 * So leave this off by default.
		 */
		/* align to cache line size (16 words) */
		/* only do it if block would no longer cross cache line */
#define R10K_PRIMARY_ICACHE_LINE_WORDS	16
		INT targ_cachesize = R10K_PRIMARY_ICACHE_LINE_WORDS;
		UINT ops_till_cacheline = 
			(targ_cachesize - (targpc % targ_cachesize));
		INT aligned_line_crossings = BB_length(bb) / targ_cachesize;
		INT orig_line_crossings = (BB_length(bb) + targ_cachesize - ops_till_cacheline)  / targ_cachesize;
		if (aligned_line_crossings < orig_line_crossings
		    && ops_till_cacheline <= 4)
		{
			num_of_ops = ops_till_cacheline;
		}
	}
	else {
		num_of_ops = ((targ_alignment - (targpc % targ_alignment)) % targ_alignment);
	}
	return num_of_ops;
}


// When we have bundles, 'num' is the number of bundles, not
// instructions.
static void Pad_BB_With_Noops(BB *bb, INT num)
{
  OP *new_op;
  OPS new_ops = OPS_EMPTY;

  /* If the issue window is two-bundle wide, we can clear the stop bit of bb's last op if it's set */
  if (ISA_MAX_ISSUE_BUNDLES == 2) Reset_OP_end_group(BB_last_op(bb));
  if (ISA_MAX_SLOTS > 1) {
    UINT64 slot_mask; 
    /* Choose an mfb type bundle for the nops. For we think it least likely brings hazards 
     * with its previous bundle and next bundle.
     */
    slot_mask = ((UINT64 ISA_EXEC_PROPERTY_M_Unit) << ISA_TAG_SHIFT * (ISA_MAX_SLOTS -1)) +
                ((UINT64 ISA_EXEC_PROPERTY_F_Unit) << ISA_TAG_SHIFT * (ISA_MAX_SLOTS -2)) +
                ((UINT64 ISA_EXEC_PROPERTY_B2_Unit) << ISA_TAG_SHIFT * (ISA_MAX_SLOTS -3));
                /* 0x004010080 for Itanium */
   
    do {
      INT slot = ISA_MAX_SLOTS - 1;
      do {
	ISA_EXEC_UNIT_PROPERTY unit;
	unit =  (ISA_EXEC_UNIT_PROPERTY)(
		  (slot_mask >> (ISA_TAG_SHIFT * slot)) 
		& ((1 << ISA_TAG_SHIFT) - 1));
	Exp_Noop(&new_ops);
	new_op = OPS_last(&new_ops);
	OP_scycle(new_op) = OP_scycle(BB_last_op(bb));
	OP_Change_Opcode(new_op, CGTARG_Noop_Top(unit));
	BB_Append_Op (bb, new_op);
	slot -= OP_Real_Inst_Words(new_op);
      } while (slot >= 0);
    } while (--num);
  } else {
    do {
      Exp_Noop(&new_ops);
      new_op = OPS_last(&new_ops);
      OP_scycle(new_op) = OP_scycle(BB_last_op(bb));
      BB_Append_Op (bb, new_op);
    } while (--num);
  }
  // bug fix for OSP_139
  Set_OP_end_group(BB_last_op(bb));
}

/* ====================================================================
 *
 * R_Resolve_Branches
 *
 * Assign addresses to all local labels. Fixup long branches.
 *
 * ====================================================================
 */

static void
R_Resolve_Branches (ST *pu_st)
{
  BB *bb;
  BB *prev_nonempty_bbs[2] = { NULL, NULL };
  INT32 curpcs[2];
  INT32 hot_size, cold_size;

  /* check for T5 workarounds */
  Hardware_Workarounds();

  curpcs[IHOT] = text_PC;
  curpcs[ICOLD] = cold_PC;
  for ( bb = REGION_First_BB; bb; bb = BB_next(bb) ) {
    INT32 bb_start_pc;
    OP *op;
    INT32 isect = BB_cold(bb) ? ICOLD : IHOT;
    INT32 curpc = curpcs[isect];
    BB *prev_nonempty_bb = prev_nonempty_bbs[isect];

    /* need prev bb to align */
    if (prev_nonempty_bb != NULL) {
      INT32 num = Check_If_Should_Align_BB (bb, curpc);
      if (num != 0) {
	if (Trace_Inst) {
	  #pragma mips_frequency_hint NEVER
	  fprintf(TFile, "insert %d noops at bb %d\n", num, BB_id(bb));
	}
	// increment curpc by 'num' bundles
	curpc += INST_BYTES * num;
	Pad_BB_With_Noops(prev_nonempty_bb, num);
      }
    }

    bb_start_pc = curpc;

    /* If there is no label, make one: */
    Gen_Label_For_BB ( bb );

    for (op = BB_first_op(bb); op; op = OP_next(op)) {
      INT num_inst_words = OP_Real_Inst_Words (op);
      curpc = PC_Incr_N(curpc, num_inst_words);
    }
    
    if (curpc != bb_start_pc) prev_nonempty_bbs[isect] = bb;

    curpcs[isect] = curpc;
  }

  Recompute_Label_Offset(curpcs);

  hot_size = curpcs[IHOT] - text_PC;
  cold_size = curpcs[ICOLD] - cold_PC;

  // if large text size or has branch predicts (which are limited in size),
  // then check for long branches.
  if (hot_size >= MIN_BRANCH_DISP || cold_size >= MIN_BRANCH_DISP
    || CGTARG_Has_Branch_Predict()) 
  {
    Fixup_Long_Branches (&hot_size, &cold_size);
  }

  if (generate_elf_symbols) {
    Em_Define_Symbol (EMT_Put_Elf_Symbol(pu_st), 
		      text_PC, hot_size, text_section);
  }

  if ( Trace_Inst ) {
    #pragma mips_frequency_hint NEVER
    fprintf (TFile, "INSTS IN PROCEDURE: %d\n", hot_size + cold_size);
  }
}

/* ====================================================================
 * ====================================================================
 *
 * Data Initialization
 *
 * ====================================================================
 * ====================================================================
 */

static void
Trace_Init_Loc ( INT scn_idx, Elf64_Xword scn_ofst, INT32 repeat)
{
  /* Emit the section/offset/repeat as a line prefix -- the caller will
   * add context-specific information:
   */
  // bug fix for OSP_227
  //
  if (em_scn[scn_idx].sym)
    fprintf ( TFile, "<init>: Section %s (offset %4lld x%d): ",
  	      ST_name(em_scn[scn_idx].sym), (INT64)scn_ofst, repeat );
}

/* ====================================================================
 *
 * Write_TCON
 *
 * Emit a TCON value to the assembly/object file.
 *
 * ====================================================================
 */

static Elf64_Word
Write_TCON (
  TCON	*tcon,		/* Constant to emit */
  INT scn_idx,		/* Section to emit it into */
  Elf64_Xword scn_ofst,	/* Section offset to emit it at */
  INT32	repeat)		/* Repeat count */
{
  BOOL add_null = TCON_add_null(*tcon);
  pSCNINFO scn = em_scn[scn_idx].scninfo;

  if (Trace_Init) {
    #pragma mips_frequency_hint NEVER
    Trace_Init_Loc ( scn_idx, scn_ofst, repeat);
    fprintf (TFile, "TCON: >>%s<<\n", Targ_Print (NULL, *tcon));
  }
  if (Assembly) {
    INT32 scn_ofst32 = (INT32)scn_ofst;
    FmtAssert(scn_ofst32 == scn_ofst, ("section offset exceeds 32 bits: 0x%llx",
				       (INT64)scn_ofst));
    Targ_Emit_Const ( Asm_File, *tcon, add_null, repeat, scn_ofst32 );
  } 
  if (Object_Code) {
    Em_Targ_Emit_Const ( scn, *tcon, add_null, repeat );
  }

  if ( TCON_ty(*tcon) == MTYPE_STRING )
    scn_ofst += (Targ_String_Length (*tcon) + (add_null ? 1 : 0)) * repeat;
  else
    scn_ofst += TY_size(Be_Type_Tbl(TCON_ty(*tcon))) * repeat;

  return scn_ofst;
}

/* ====================================================================
 *
 * Write_Symoff
 *
 * Emit a symoff value to the assembly/object file.
 *
 * ====================================================================
 */

static Elf64_Word
Write_Symoff (
  ST * sym,		/* Emit the address of this symbol */
  Elf64_Sxword sym_ofst,/*   ... plus this offset */
  INT scn_idx,		/* Section to emit it in */
  Elf64_Word scn_ofst,	/* Section offset to emit it at */
  INT32	repeat)		/* Repeat count */
{
  INT32 i;
  ST *basesym;
  INT64 base_ofst = 0;
  pSCNINFO scn = em_scn[scn_idx].scninfo;
  INT address_size = ((Use_32_Bit_Pointers) ? 4 : 8);
  
  
  if ( Trace_Init ) {
    #pragma mips_frequency_hint NEVER
    Trace_Init_Loc (scn_idx, scn_ofst, repeat);
    fprintf ( TFile, "SYM " );
    fprintf ( TFile, "%s %+lld\n", ST_name(sym), (INT64)sym_ofst );
  }

  /* make sure is allocated */
  if (!Has_Base_Block(sym)) {
	Allocate_Object(sym);
	/* if did allocate on local stack, that messes up frame length */
	Is_True(!Has_Base_Block(sym) || Is_Global_Symbol(Base_Symbol(sym)),
		("Write_Symoff:  too late to allocate object on stack"));
  }

  /* If the symbol is a local label that has not been assigned an address, it is
   * a label in a basic block that has been deleted. Emit zeros for this case 
   * instead of the address.
   */
  if (ST_sclass(sym) == SCLASS_TEXT && !Has_Base_Block(sym)) {
    INT32 padding;
    padding = repeat * address_size;
    if (Assembly && padding > 0) {
      ASM_DIR_ZERO(Asm_File, padding);
    }
    if (Object_Code) {
      Em_Add_Zeros_To_Scn (scn, padding, 1);
    }
    scn_ofst += padding;
    return scn_ofst;
  }

  /* For local static symbols that do not have their own elf entry,
   * use the base symbol; funcs always have own elf entry. */
  basesym = sym;
  if (Has_Base_Block(sym) && ST_is_export_local(sym) && ST_class(sym) != CLASS_FUNC) {
    Base_Symbol_And_Offset (sym, &basesym, &base_ofst);
  }
  if (Use_Separate_PU_Section (current_pu, basesym)) {
	/* use PU text section rather than generic one */
	basesym = PU_base;
  }
  base_ofst += sym_ofst;

  if (Object_Code && repeat != 0) {
    if (Use_32_Bit_Pointers) {
      Em_Add_New_Content (CK_SADDR_32, scn_ofst, 4*repeat, 0, scn);
    }
    else {
      Em_Add_New_Content (CK_SADDR_64, scn_ofst, 8*repeat, 0, scn);
    }
  }

  for ( i = 0; i < repeat; i++ ) {
    // do object code first so base section initialized
    if (Object_Code) {
	if (ST_sclass(sym) == SCLASS_EH_REGION_SUPP) {
      		Em_Add_Displacement_To_Scn (scn, EMT_Put_Elf_Symbol (basesym),
			base_ofst, 1);
	} else {
      		Em_Add_Address_To_Scn (scn, EMT_Put_Elf_Symbol (basesym), 
			base_ofst, 1);
	}
    }
    if (Assembly) {
	fprintf (Asm_File, "\t%s\t", 
		(scn_ofst % address_size) == 0 ? 
		AS_ADDRESS : AS_ADDRESS_UNALIGNED);
	if (ST_class(sym) == CLASS_CONST) {
		EMT_Write_Qualified_Name (Asm_File, basesym);
		fprintf (Asm_File, " %+lld\n", base_ofst);
	}
	else if (ST_class(sym) == CLASS_FUNC && AS_FPTR) {
		fprintf (Asm_File, " %s(", AS_FPTR);
		EMT_Write_Qualified_Name (Asm_File, sym);
		fprintf (Asm_File, " %+lld)\n", (INT64)sym_ofst);
	}
	else {
		EMT_Write_Qualified_Name (Asm_File, sym);
		fprintf (Asm_File, " %+lld\n", (INT64)sym_ofst);
	}
	if (ST_class(sym) == CLASS_FUNC) {
		fprintf (Asm_File, "\t%s\t", AS_TYPE);
		EMT_Write_Qualified_Name (Asm_File, sym);
		fprintf (Asm_File, ", %s\n", AS_TYPE_FUNC);
	}
    } 
    scn_ofst += address_size;
  }
  return scn_ofst;
}

// Create a IPLT entry instead of two FPTR entries 
// for functions descriptor under IA-64 platform
//
static Elf64_Word
Write_Symiplt (
  ST * sym,            	 	/* Emit the address of this function disciptor */
  Elf64_Sxword sym_ofst,	/*   ... plus this offset */
  INT scn_idx,          	/* Section to emit it in */
  Elf64_Word scn_ofst,  	/* Section offset to emit it at */
  INT32 repeat)         	/* Repeat count */
{
  INT32 i;
  ST *basesym;
  INT64 base_ofst = 0;
  pSCNINFO scn = em_scn[scn_idx].scninfo;
  INT address_size = ((Use_32_Bit_Pointers) ? 4 : 8);
  // The function descriptor on IA64 is of 128 bits = fptr + gp
  address_size = (address_size << 1);

  if (Trace_Init)
  {
    #pragma mips_frequency_hint NEVER
    Trace_Init_Loc (scn_idx, scn_ofst, repeat);
    fprintf ( TFile, "SYMIPLT " );
    fprintf ( TFile, "%s %+lld\n", ST_name(sym), (INT64)sym_ofst );
  }
  /* make sure is allocated */
  if (!Has_Base_Block(sym))
  {
    Allocate_Object(sym);
    /* if did allocate on local stack, that messes up frame length */
    Is_True(!Has_Base_Block(sym) || Is_Global_Symbol(Base_Symbol(sym)),
           ("Write_Symiplt:  too late to allocate object on stack"));
  }
  
  /* For local static symbols that do not have their own elf entry,
   * use the base symbol; funcs always have own elf entry. */
  basesym = sym;
  if (Use_Separate_PU_Section (current_pu, basesym))
    /* use PU text section rather than generic one */
    basesym = PU_base;
  base_ofst += sym_ofst;

  if (Object_Code && repeat != 0)
  {
    if (Use_32_Bit_Pointers)	// GP-relative 32/64-bit addresses
       Em_Add_New_Content (CK_GADDR_32, scn_ofst, 4*repeat, 0, scn);
    else 
       Em_Add_New_Content (CK_GADDR_64, scn_ofst, 8*repeat, 0, scn);
  }

  if (Object_Code)
     Em_Add_Address_To_Scn (scn, EMT_Put_Elf_Symbol (basesym), base_ofst, 1);

  if (Assembly)
  {
// The function descriptor on IA64 needs 128 bits
    fprintf (Asm_File, "\tdata16.ua\t");

    FmtAssert (ST_class(sym) == CLASS_FUNC && AS_IPLT,
                  ("IPLT entry must correspond to symbol with CLASS_FUNC!"));
    
    fprintf (Asm_File, " %s(", AS_IPLT);
    EMT_Write_Qualified_Name (Asm_File, sym);
    fprintf (Asm_File, " %+lld)\n", (INT64)sym_ofst);
  }
  scn_ofst += address_size;
  return scn_ofst;
}
 

/* ====================================================================
 *
 * Write_Label
 *
 * Emit a label value to the assembly/object file.
 *
 * ====================================================================
 */

static Elf64_Word
Write_Label (
  LABEL_IDX lab,	/* Emit the address of this label */
  Elf64_Sxword lab_ofst,/*   ... plus this offset */
  INT scn_idx,		/* Section to emit it in */
  Elf64_Word scn_ofst,	/* Section offset to emit it at */
  INT32	repeat)		/* Repeat count */
{
  INT32 i;
  ST *basesym;
  Elf64_Sxword base_ofst = 0;
  pSCNINFO scn = em_scn[scn_idx].scninfo;
  INT address_size = ((Use_32_Bit_Pointers) ? 4 : 8);

  if ( Trace_Init ) {
    #pragma mips_frequency_hint NEVER
    Trace_Init_Loc (scn_idx, scn_ofst, repeat);
    fprintf ( TFile, "LAB (%d) ", (INT)lab );
    fprintf ( TFile, "%s %+lld\n", LABEL_name(lab), (INT64)lab_ofst );
  }

#ifdef TODO
  // how to tell that label has been deleted?
  // for now, emit 0's.

  /* If the symbol is a local label that has not been assigned an address, it is
   * a label in a basic block that has been deleted. Emit zeros for this case 
   * instead of the address.
   */
  if (!Has_Base_Block(sym)) {
    INT32 padding;
    padding = repeat * address_size;
    if (Assembly && padding > 0) {
      ASM_DIR_ZERO(Asm_File, padding);
    }
    if (Object_Code) {
      Em_Add_Zeros_To_Scn (scn, padding, 1);
    }
    scn_ofst += padding;
    return scn_ofst;
  }
#endif

  // Labels are local and do not have own elf entry, 
  // so use base symbol.
  FmtAssert (Get_Label_BB(lab), ("label %d doesn't have defining bb?", lab));
  basesym = BB_cold(Get_Label_BB(lab)) ? cold_base : text_base;
  if (Use_Separate_PU_Section (current_pu, basesym)) {
	/* use PU text section rather than generic one */
	basesym = PU_base;
  }
  base_ofst = Get_Label_Offset(lab) + lab_ofst;

  if (Object_Code && repeat != 0) {
    if (Use_32_Bit_Pointers) {
      Em_Add_New_Content (CK_SADDR_32, scn_ofst, 4*repeat, 0, scn);
    }
    else {
      Em_Add_New_Content (CK_SADDR_64, scn_ofst, 8*repeat, 0, scn);
    }
  }

  for ( i = 0; i < repeat; i++ ) {
    if (Assembly) {
	fprintf (Asm_File, "\t%s\t", 
		(scn_ofst % address_size) == 0 ? 
		AS_ADDRESS : AS_ADDRESS_UNALIGNED);
	fprintf (Asm_File, "%s", LABEL_name(lab));
	if (lab_ofst != 0)
		fprintf (Asm_File, " %+lld", (INT64)lab_ofst);
	fprintf (Asm_File, "\n");
    } 
    if (Object_Code) {
    	Em_Add_Address_To_Scn (scn, EMT_Put_Elf_Symbol (basesym), base_ofst, 1);
    }
    scn_ofst += address_size;
  }
  return scn_ofst;
}

static Elf64_Word
Write_Symdiff (
  LABEL_IDX lab1,	/* left symbol */
  ST_IDX sym2idx,	/* right symbol */
  INT scn_idx,		/* Section to emit it in */
  Elf64_Word scn_ofst,	/* Section offset to emit it at */
  INT32	repeat,		/* Repeat count */
  INT size,		/* 2 or 4 bytes */
  bool beh = false)	
{
  INT32 i;
  ST *basesym1;
  ST *basesym2;
  INT64 base1_ofst = 0;
  INT64 base2_ofst = 0;
  pSCNINFO scn = em_scn[scn_idx].scninfo;
  ST *sym2 = &St_Table[sym2idx];
  INT32 val;

  if ( Trace_Init ) {
    #pragma mips_frequency_hint NEVER
    Trace_Init_Loc (scn_idx, scn_ofst, repeat);
    fprintf ( TFile, "SYMDIFF " );
    fprintf ( TFile, "%s - %s\n", LABEL_name(lab1), ST_name(sym2));
  }

  /* symbols must have an address */
  Is_True (lab1, ("cgemit: Symdiff lab1 is null"));
  Is_True (sym2, ("cgemit: Symdiff sym2 is null"));
  Is_True (Has_Base_Block(sym2), ("cgemit: Symdiff sym2 not allocated"));

  basesym1 = BB_cold(Get_Label_BB(lab1)) ? cold_base : text_base;
  base1_ofst = Get_Label_Offset(lab1);
  Base_Symbol_And_Offset (sym2, &basesym2, &base2_ofst);
  if (Use_Separate_PU_Section(current_pu,basesym2)) {
	/* use PU text section rather than generic one */
	basesym2 = PU_base;
  }
  Is_True (basesym1 == basesym2, ("cgemit: Symdiff bases not same"));
  val = base1_ofst - base2_ofst;
  if (val < 0) val = 0;
  if (size == 2) {
	if (val > INT16_MAX) {
		DevWarn("symdiff value not 16-bits; will try recompiling with -TENV:long_eh_offsets");
		Early_Terminate (RC_OVERFLOW_ERROR);
	}
	val = val << 16;	/* for Add_Bytes */
  }

  for ( i = 0; i < repeat; i++ ) {
    if (Assembly) {
      if (beh)
	fprintf(Asm_File, "\t.uleb128\t");
      else
        fprintf (Asm_File, "\t%s\t", (size == 2 ? AS_HALF : AS_WORD));
      fprintf(Asm_File, "%s", LABEL_name(lab1));
      fprintf (Asm_File, "-");
      EMT_Write_Qualified_Name (Asm_File, sym2);
      fprintf (Asm_File, "\n");
    } 
    if (Object_Code) {
      Em_Add_Bytes_To_Scn (scn, (char *) &val, size, 1);
    }
    scn_ofst += size;
  }
  return scn_ofst;
}


/* ====================================================================
 *
 * Write_INITV
 *
 * Emit an initial value record to the assembly/object file.
 *
 * ====================================================================
 */

static Elf64_Word
Write_INITV (INITV_IDX invidx, INT scn_idx, Elf64_Word scn_ofst)
{
  INT32 i;
  INITV_IDX ninv;
  INITV inv = Initv_Table[invidx];
  LABEL_IDX lab;
  TCON tcon;
  ST *st;
  pSCNINFO scn = em_scn[scn_idx].scninfo;

  switch ( INITV_kind(inv) ) {
    case INITVKIND_ZERO:
      tcon = Host_To_Targ (INITV_mtype (inv), 0);
      scn_ofst = Write_TCON (&tcon, scn_idx, scn_ofst, INITV_repeat2 (inv));
      break;

    case INITVKIND_ONE:
       tcon = Host_To_Targ (INITV_mtype (inv), 1);
      scn_ofst = Write_TCON (&tcon, scn_idx, scn_ofst, INITV_repeat2 (inv));
      break;
    case INITVKIND_VAL:
      scn_ofst = Write_TCON (&INITV_tc_val(inv), scn_idx, scn_ofst, 
			      INITV_repeat2(inv));
      break;
    case INITVKIND_SYMIPLT:
      st = &St_Table[INITV_st(inv)];
      scn_ofst = Write_Symiplt (st, INITV_ofst(inv), scn_idx, scn_ofst, INITV_repeat1(inv));
      break;
    case INITVKIND_SYMOFF:
      st = &St_Table[INITV_st(inv)];
      switch (ST_sclass(st)) {
	case SCLASS_AUTO:
	{ /* EH stack variable */
	  tcon = Host_To_Targ(MTYPE_I4, Offset_from_FP(st));
	  scn_ofst = Write_TCON (&tcon, scn_idx, scn_ofst, INITV_repeat1(inv));
	  break;
	}

	case SCLASS_FORMAL:
	{ /* EH this-pointer */
	  ST * base = ST_base(st);
	  INT  ofst = Offset_from_FP(base) + ST_ofst(st);
	  tcon = Host_To_Targ(MTYPE_I4, ofst);
	  scn_ofst = Write_TCON (&tcon, scn_idx, scn_ofst, INITV_repeat1(inv));
	  break;
	}
      
	default:
          scn_ofst = Write_Symoff ( st, INITV_ofst(inv),
	  			      scn_idx, scn_ofst, INITV_repeat1(inv));
	   break;
      }
      break;

    case INITVKIND_LABEL:
	lab = INITV_lab(inv);
	scn_ofst = Write_Label (lab, 0, scn_idx, scn_ofst, INITV_repeat1(inv));
	break;
    case INITVKIND_SYMDIFF:
      scn_ofst = Write_Symdiff ( INITV_lab1(inv), INITV_st2(inv),
				scn_idx, scn_ofst, INITV_repeat1(inv), 4);
      break;
    case INITVKIND_SYMDIFF16:
      scn_ofst = Write_Symdiff ( INITV_lab1(inv), INITV_st2(inv),
				scn_idx, scn_ofst, INITV_repeat1(inv), 2);
      break;

    case INITVKIND_BLOCK:
      for (i = 0; i < INITV_repeat1(inv); i++) {
	for (ninv = INITV_blk(inv); ninv; ninv = INITV_next(ninv)) {
          scn_ofst = Write_INITV (ninv, scn_idx, scn_ofst);
	}
      }
      break;

    case INITVKIND_PAD:
      if (Assembly && (INITV_pad(inv)*INITV_repeat1(inv) > 0)) {
        ASM_DIR_ZERO(Asm_File, INITV_pad(inv) * INITV_repeat1(inv));
      }
      if (Object_Code) {
	Em_Add_Zeros_To_Scn (scn, INITV_pad(inv) * INITV_repeat1(inv), 1);
      }
      scn_ofst += INITV_pad(inv) * INITV_repeat1(inv);
      break;

    default:
      break;
  }
  return scn_ofst;
}

static int
sizeof_signed_leb128 (int value)
{
  char buff[ENCODE_SPACE_NEEDED];
  int size;
  int res = _dwarf_pro_encode_signed_leb128_nm (value, &size, buff, sizeof(buff));
  FmtAssert (res == DW_DLV_OK, ("Encoding for exception table failed"));
  return size;
}

static Elf64_Word
EH_Write_Lab_Diff (
  const char* lab1,
  const char* lab2,
  INT scn_idx,        
  Elf64_Word scn_ofst)  
{
  fprintf(Asm_File, "\t.uleb128\t%s-%s\n", lab2, lab1);
  return scn_ofst + 4;
}

// we also modified Write_Symdiff
static Elf64_Word 
EH_Write_Sym_Diff (
	INITV_IDX inv,
	INT 	scn_idx,
	Elf64_Word scn_ofst)
{
  return Write_Symdiff (INITV_lab1(inv), INITV_st2(inv), scn_idx, scn_ofst, 1, 
	INITVKIND_SYMDIFF == INITV_kind(inv) ? 4 :2, true);
}

static Elf64_Word
EH_Write_Integer_const (
        int     sym,
        INT     scn_idx,
        Elf64_Word scn_ofst,
        bool    bsigned)
{
  /*
   there seems problem with .sleb128 for as
   so we directly output data1 here
   for sym < -127, we have not implement it yet.
  */
  if (bsigned) {
    if (sym < 0 && sym > -129) {
      char c = (char)sym;
      unsigned char cc = *(unsigned char*)&c;
      cc &= 0x7f;
      fprintf(Asm_File, "\tdata1\t0x%2x\n", cc);
    }
    else
      fprintf(Asm_File, "\t.sleb128\t0x%x\n", sym);
  }
  else
    fprintf(Asm_File, "\t.uleb128\t0x%x\n", sym);
  return scn_ofst + sizeof_signed_leb128(sym);
}

static Elf64_Word
EH_Write_Integer (
        INITV_IDX inv,
        INT       scn_idx,
        Elf64_Word scn_ofst, 
        bool 	  bsigned)
{
  int sym = 0;
  if (INITVKIND_ZERO == INITV_kind(inv))
    sym = 0;
  else if (INITVKIND_ONE == INITV_kind(inv))
    sym = 1;
  else
    sym = TCON_ival(INITV_tc_val(inv));
  return EH_Write_Integer_const(sym, scn_idx, scn_ofst, bsigned);
}

static void
INITV_Init_Integer_2(INITV_IDX inv, TYPE_ID mtype, INT64 val, UINT16 repeat)
{
  if (val == 0)
    INITV_Set_ZERO (Initv_Table[inv], mtype, repeat);
  else {
    TCON tc  = Host_To_Targ (mtype, val);
    INITV_Set_VAL (Initv_Table[inv], Enter_tcon(tc), repeat);
  }
}

static void
Check_Initv(INITV_IDX idx, FILE* fp)
{
  if (idx == 0) return;
  fprintf(fp, "idx = %d, type = %d, val = %d\n", (int)idx, (int)INITV_kind(idx),
      (INITV_kind(idx) == INITVKIND_VAL ? TCON_ival(INITV_tc_val(idx)) : -1));
  FmtAssert(INITVKIND_UNK != INITV_kind(idx), ("INITV.kind = UNKNOWN\n"));
  if (INITVKIND_BLOCK == INITV_kind(idx)) 
    Check_Initv(INITV_blk(idx), fp);
  Check_Initv(INITV_next(idx), fp);
}

static void
Write_LSDA_INITO (ST* st, INITO* ino, INT scn_idx, Elf64_Xword scn_ofst)
{
  char* sym_name = ST_name(st);
  FmtAssert(INITO_st(ino) == st, ("Write_LSDA_INITO.st and inito are not paired.\n"));
  FmtAssert(sym_name != NULL &&
            strncmp(sym_name, ".range_table.", strlen(".range_table.")) == 0,
            ("Write_LSDA_INITO.ST name = %s\n", sym_name ? sym_name : "<null>"));

  /*
  inito-> inv_blk -> list of INITVs (start with inv)

  [inv]                 -> mark where action table starts
  call-site-table-initvS
  [inv-action]          -> mark where type table starts
  action-table-initvS
  [cinv]                -> mark where eh-spec table starts
  single-type-table     
  eh-spec-table         
  */

  INITV_IDX inv_blk = INITO_val(*ino);
  FmtAssert(INITVKIND_BLOCK == INITV_kind(inv_blk), ("RangeTable.Initv1.kind != BLOCK\n"));
  INITV_IDX first = INITV_blk(inv_blk);
  INITV_IDX act_inv = (INITV_IDX)TCON_uval(INITV_tc_val(first));
  INITV_IDX type_inv = (INITV_IDX)TCON_uval(INITV_tc_val(act_inv));
  INITV_IDX eh_spec_inv = (INITV_IDX)TCON_uval(INITV_tc_val(type_inv));

#ifdef OSP_OPT
  // Check_Initv(first, stdout);
  // if no corresponding call site information, doesn't emit at all 
  if (INITV_next(first) == act_inv)
    return;
#endif

  static int nRangeTable = 0;
  nRangeTable++;
  char begin_lab[30], end_lab[30];
  INITV_IDX inv = INITV_next(first);
#define LSDA_HANDLER_START	"thu_LFE_"
#define LSDA_START		"thu_LSDA_"
#define LSDA_TT_START		"thu_LSDA_TT_Start_"
#define LSDA_TT_END		"thu_LSDA_TT_End_"
#define LSDA_CS_START		"thu_LSDA_CS_Start_"
#define LSDA_CS_END		"thu_LSDA_CS_End_"

  fprintf(Asm_File, ".%s%d:\n", LSDA_HANDLER_START, nRangeTable);
  fprintf(Asm_File, "\t.personality\t__gxx_personality_v0#\n");
  fprintf(Asm_File, "\t.handlerdata\n");
  fprintf(Asm_File, "\t.align\t8\n");
  fprintf(Asm_File, ".%s%d:\n", LSDA_START, nRangeTable);

  // lpStart_encoding
  INITV_Init_Integer_2(first, MTYPE_I1, 0xff, 1);
  scn_ofst = Write_INITV (first, scn_idx, scn_ofst);

  // ttype_encoding
  INITV_Init_Integer_2(first, MTYPE_I1, 0xb4, 1);
  scn_ofst = Write_INITV (first, scn_idx, scn_ofst);

  // @type_start
  sprintf(begin_lab, ".%s%d", LSDA_TT_START, nRangeTable);
  sprintf(end_lab, ".%s%d", LSDA_TT_END, nRangeTable);
  scn_ofst = EH_Write_Lab_Diff(begin_lab, end_lab, scn_idx, scn_ofst);
  fprintf(Asm_File, "%s:\n", begin_lab);

  // call_site_encoding
  INITV_Init_Integer_2(first, MTYPE_I1, 0x1, 1);
  scn_ofst = Write_INITV (first, scn_idx, scn_ofst);

  // call site length
  sprintf(begin_lab, ".%s%d", LSDA_CS_START, nRangeTable);
  sprintf(end_lab, ".%s%d", LSDA_CS_END, nRangeTable);
  scn_ofst = EH_Write_Lab_Diff(begin_lab, end_lab, scn_idx, scn_ofst);
  fprintf(Asm_File, "%s:\n", begin_lab);

  // recover first
  INITV_Init_Integer(first, MTYPE_U4, act_inv, 1);
  Set_INITV_next(first, inv);

  // call-site table
  for(;inv && inv != act_inv; inv = INITV_next(inv)) {
    INITV_IDX prev_inv;

    // cs_start (SymDiff)
    FmtAssert(INITVKIND_SYMDIFF == INITV_kind(inv) ||
    INITVKIND_SYMDIFF16 == INITV_kind(inv), ("CS_Start.kind != SymDiff"));
    scn_ofst = EH_Write_Sym_Diff(inv, scn_idx, scn_ofst);

    inv = INITV_next(inv);
    prev_inv = inv;
    inv = INITV_next(inv);
    // cs_len (two labels)
    scn_ofst = EH_Write_Lab_Diff(LABEL_name(INITV_lab(prev_inv)),
    LABEL_name(INITV_lab(inv)), scn_idx, scn_ofst);

    inv = INITV_next(inv);
    // cs_lp
    if (INITVKIND_ZERO != INITV_kind(inv)) {
      FmtAssert(INITVKIND_SYMDIFF == INITV_kind(inv) ||
      INITVKIND_SYMDIFF16 == INITV_kind(inv), ("CS_Start.kind != SymDiff"));
      scn_ofst = EH_Write_Sym_Diff(inv, scn_idx, scn_ofst);
    }
    else {
      scn_ofst = EH_Write_Integer(inv, scn_idx, scn_ofst, false);
    }

    inv = INITV_next(inv);
    // cs_action
    scn_ofst = EH_Write_Integer(inv, scn_idx, scn_ofst, false);
  } // end call-site iteration

  // end of call site table
  sprintf(end_lab, ".%s%d", LSDA_CS_END, nRangeTable);
  fprintf(Asm_File, "%s:\n", end_lab);

  // action table
  inv = INITV_next(act_inv);
  for(; inv && inv != type_inv; inv = INITV_next(inv)) {
    // ar_filter
    scn_ofst = EH_Write_Integer(inv, scn_idx, scn_ofst, true);

    inv = INITV_next(inv);
    // ar_next      
    scn_ofst = EH_Write_Integer(inv, scn_idx, scn_ofst, true);
  }
  // end action table

  // single type table
  fprintf(Asm_File, "\t.align\t8\n");
  inv = INITV_next(type_inv);
  for(; inv && inv != eh_spec_inv; inv = INITV_next(inv)) {
    ST_IDX type_st_idx = 0;
    if (INITVKIND_ZERO != INITV_kind(inv))
      type_st_idx = TCON_uval(INITV_tc_val(inv));
    if (type_st_idx == 0)
      fprintf(Asm_File, "\tdata8.ua\t0\n");
    else {
    //  if (Gen_PIC_Call_Shared || Gen_PIC_Shared)
        fprintf(Asm_File, "\tdata8.ua\t@gprel(DW.ref.%s#)\n", ST_name(&St_Table[type_st_idx]));
    //  else
    //    fprintf(Asm_File, "\tdata8.ua\t%s\n", ST_name(&St_Table[type_st_idx]));
    }
  }

  // end of single type table
  sprintf(end_lab, ".%s%d", LSDA_TT_END, nRangeTable);
  fprintf(Asm_File, "%s:\n", end_lab);

  // eh-spec table
  inv = INITV_next(eh_spec_inv);
  for(; inv; inv = INITV_next(inv)) {
    scn_ofst = EH_Write_Integer(inv, scn_idx, scn_ofst, false);
  }
  
  
#undef LSDA_HANDLER_START
#undef LSDA_START 
#undef LSDA_TT_START 
#undef LSDA_TT_END   
#undef LSDA_CS_START
#undef LSDA_CS_END  
}

/* Emit the initialized object to the object file */
static void
Write_INITO (
  INITO* inop,		/* Constant to emit */
  INT scn_idx,		/* Section to emit it into */
  Elf64_Xword scn_ofst)	/* Section offset to emit it at */
{
  pSCNINFO scn = em_scn[scn_idx].scninfo;
  Elf64_Xword inito_ofst;
  ST *sym;
  ST *base;
  INITO ino = *inop;

  if ( Trace_Init ) {
    #pragma mips_frequency_hint NEVER
    Trace_Init_Loc (scn_idx, scn_ofst, 0);
    fprintf ( TFile, "INITO: " );
    Print_INITO (ino);
  }

    Base_Symbol_And_Offset(INITO_st(ino), &base, (INT64*)&inito_ofst);

    if (inito_ofst > scn_ofst) {
      if (Assembly) {
	ASM_DIR_ZERO(Asm_File, (INT32)(inito_ofst - scn_ofst));
      }
      if (Object_Code) {
	Em_Add_Zeros_To_Scn ( scn, inito_ofst - scn_ofst, 1 );
      }
      scn_ofst = inito_ofst;
    } else {
      FmtAssert ( inito_ofst >= scn_ofst, 
	("Write_INITO: DATA overlap 1, inito ofst @ %lld, scn ofst @ %lld",
	  inito_ofst, scn_ofst));
    }

    sym = INITO_st(ino);
    if (Assembly) {
        char *name = ST_name(sym);
        if (name != NULL && *name != 0) {
	  Print_Label (Asm_File, sym, TY_size(ST_type(sym)));
        }
    }
    if (Object_Code && ! ST_is_export_local(sym)) {
        EMT_Put_Elf_Symbol (sym);
    }

    /* If there's no initial value, this should be a constant symbol,
     * and the represented constant is the initial value:
     */
    if ( INITO_val(ino) == (INITO_IDX) NULL ) {
      if ( ST_class(sym) == CLASS_CONST ) {
	scn_ofst = Write_TCON (&ST_tcon_val(sym), scn_idx, scn_ofst, 1);
      }
    } else {
	INITV_IDX inv;
	FOREACH_INITV (INITO_val(ino), inv) {
		scn_ofst = Write_INITV (inv, scn_idx, scn_ofst);
        }
    }
    if (Assembly) {
    	fprintf ( Asm_File, "\t%s end of initialization for %s\n", ASM_CMNT, ST_name(sym) );
    }
}

/* change to a new section and new origin */
static void
Change_Section_Origin (ST *base, INT64 ofst)
{
	if (Assembly) {
		if (base != cur_section) {
			/* switch to new section. */
			fprintf ( Asm_File, "\n\t%s %s\n", AS_SECTION, ST_name(base));
		}
		fprintf (Asm_File, "\t%s 0x%llx\n", AS_ORIGIN, ofst);
		/* generate a '.align 0' to make sure we don't autoalign */
		fprintf ( Asm_File, "\t%s\t0\n", AS_ALIGN );
		cur_section = base;
	}
	/* for nobits, add final size at end because we don't write any data. */
  	if (Object_Code && !STB_nobits(base)) {
		Em_Change_Section_Origin (em_scn[STB_scninfo_idx(base)].scninfo, ofst);
	}
}


inline bool section_lt (ST *s1, ST* s2) 
{ 
  // order doesn't really matter, just that grouped by base section
  return Base_Symbol(s1) < Base_Symbol(s2); 
}


inline bool offset_lt (ST *s1, ST* s2) 
{ 
  return Offset_From_Base_Symbol(s1) < Offset_From_Base_Symbol(s2); 
}


inline bool size_lt (ST *s1, ST* s2) 
{ 
  // This is only needed so that we get silly 0-sized structs
  // at the correct offset.
  return TY_size(ST_type(s1)) < TY_size(ST_type(s2)); 
}

#ifdef Is_True_On
static void
Print_ST_List(std::vector<ST*>& st_list, const char* header)
{
  fprintf(stdout, "%s\n", header);

  std::vector<ST*>::iterator st_iter;
  for (st_iter = st_list.begin(); st_iter != st_list.end(); ++st_iter) {
    ST* st = *st_iter;
    fprintf(stdout, "%-25s%-15s%10llu%10lld\n",
           (ST_class(st) == CLASS_CONST ? "<constant>" : ST_name(st)), 
           (ST_class(Base_Symbol(st)) == CLASS_CONST ? "<constant>" :
            ST_name(Base_Symbol(st))),
           TY_size(ST_type(st)),
           Offset_From_Base_Symbol(st));
  }
}
#endif

// This routine can be called multiple times for the global symtab;
// we do this so that objects are emitted in order.
// For each section, some objects are in local symtab, and some in global.
// We keep track of the last global symbol that has been processed
// so that we only process new symbols.
//
static void
Process_Initos_And_Literals (SYMTAB_IDX stab)
{
  static std::vector<bool> st_processed;
  if (st_processed.size() != ST_Table_Size(GLOBAL_SYMTAB)) {
    st_processed.resize(ST_Table_Size(GLOBAL_SYMTAB), false);
  }

  std::vector<ST*> st_list;
  std::vector<ST*>::iterator st_iter;

  typedef 
  __gnu_cxx::hash_map < ST_IDX, INITO*, __gnu_cxx::hash<ST_IDX>, __gnu_cxx::equal_to<ST_IDX> > ST_INITO_MAP;
  ST_INITO_MAP st_inito_map;

  UINT i;
  static UINT last_inito = 1;
  
  // First walk the INITOs from the global table
  for (i = last_inito; i < INITO_Table_Size(GLOBAL_SYMTAB); ++i) {
    INITO* ino = &Inito_Table(GLOBAL_SYMTAB,i);
    ST* st = INITO_st(ino);
    /* don't emit initialization if st not used or extern */
    if (ST_is_not_used(st) ||
        ST_sclass(st) == SCLASS_EXTERN ||
        ST_sclass(st) == SCLASS_DISTR_ARRAY) {
      continue;
    }
    st_list.push_back(st);
    st_inito_map[ST_st_idx(st)] = ino;
  }

  last_inito = INITO_Table_Size(GLOBAL_SYMTAB);

  // Then walk the INITOs from the local table
  if (stab != GLOBAL_SYMTAB) {
    for (i = 1; i < INITO_Table_Size(stab); ++i) {
      INITO* ino = &Inito_Table(stab,i);
      ST* st = INITO_st(ino);
      /* don't emit initialization if st not used or extern */
      if (ST_is_not_used(st) ||
          ST_sclass(st) == SCLASS_EXTERN) {
        continue;
      }
      st_list.push_back(st);
      st_inito_map[ST_st_idx(st)] = ino;
    }
  }

  // Then walk the CONSTANTs from the global table
  for (i = 1; i < ST_Table_Size(GLOBAL_SYMTAB); ++i) {
    ST* st = &St_Table(GLOBAL_SYMTAB,i);
    if (ST_class(st) == CLASS_CONST && !st_processed[ST_index(st)]) {
      INT64 ofst;
      ST* base;
      Base_Symbol_And_Offset(st, &base, &ofst);
      if (ST_class(base) != CLASS_BLOCK || !STB_section(base)) {
        continue; // not allocated
      }
      if (Emit_Global_Data && SEC_is_merge(STB_section_idx(base))) {
        continue; // allocate in each .o
      }
      st_list.push_back(st);
    }
  }

  // Print_ST_List(st_list, "UNSORTED");
  stable_sort (st_list.begin(), st_list.end(), size_lt);
  // Print_ST_List(st_list, "SORTED BY SIZE");
  stable_sort (st_list.begin(), st_list.end(), offset_lt);
  // Print_ST_List(st_list, "SORTED BY OFFSET");
  stable_sort (st_list.begin(), st_list.end(), section_lt);
  // Print_ST_List(st_list, "SORTED BY SECTION");

  for (st_iter = st_list.begin(); st_iter != st_list.end(); ++st_iter) {

    INT64 ofst;
    ST* base;
    ST* st = *st_iter;
    ST_INITO_MAP::iterator st_inito_entry = st_inito_map.find(ST_st_idx(st));

    if (st_inito_entry != st_inito_map.end()) {
      INITO* ino = (*st_inito_entry).second;
      Base_Symbol_And_Offset(st, &base, &ofst);
      if (ST_sclass(base) == SCLASS_EXTERN) {
        // ipa can cause it to be based on global extern,
        // in which case it is already emitted. 
        continue;
      }
      FmtAssert(ST_class(base) == CLASS_BLOCK && STB_section(base),
                ("inito (%s) not allocated?", ST_name(st)));
      Init_Section(base); //make sure base is inited 
      // may need padding between objects in same section,
      // so always change origin
      Change_Section_Origin (base, ofst);
      Write_INITO (ino, STB_scninfo_idx(base), ofst);
    }

    else {
      st_processed[ST_index(st)] = TRUE;
      Base_Symbol_And_Offset(st, &base, &ofst);
      Init_Section(base); // make sure base is inited
      // we cannot assume that constants are sequentially ordered
      // by offset, because they are allocated on the fly as we
      // expand the whirl nodes.  So always reset the origin.
      Change_Section_Origin (base, ofst);
      Write_TCON (&ST_tcon_val(st), STB_scninfo_idx(base), ofst, 1);
    }
  }
}


// Write all distr_array INITOs from the global symtab
static void
Process_Distr_Array ()
{
  for (UINT i = 1; i < INITO_Table_Size(GLOBAL_SYMTAB); ++i) {
    INITO* ino = &Inito_Table(GLOBAL_SYMTAB,i);
    ST* st = INITO_st(ino);
    if (!ST_is_not_used(st) &&
        ST_sclass(st) == SCLASS_DISTR_ARRAY) {
      INT64 ofst;
      ST* base;
      Base_Symbol_And_Offset(st, &base, &ofst);
      FmtAssert(ST_class(base) == CLASS_BLOCK && STB_section(base),
                ("inito (%s) not allocated?", ST_name(st)));
      Init_Section(base);
      Change_Section_Origin(base, ofst);
      Write_INITO(ino, STB_scninfo_idx(base), ofst);
    }
  }
}


/* iterate through the global symbols and write (s)bss symbols to sections */
static void
Process_Bss_Data (SYMTAB_IDX stab)
{
  // To guarantee in increasing order,
  // create vector of st*, then stable_sort on section,
  // then stable_sort on offset. 
  std::vector< ST* > bss_list;
  std::vector< ST* >::iterator bssp;

  // This routine can be called multiple times for the global symtab;
  // we do this so that objects are emitted in order.
  // For each section, some objects are in local symtab, and some in global.
  // We keep track of the last global symbol that has been processed
  // so that we only process new symbols.

  static UINT last_global_index = 1;
  UINT first_index = (stab == GLOBAL_SYMTAB ? last_global_index : 1);
  
  for (UINT i = first_index; i < ST_Table_Size(stab); ++i) {
    ST* sym = &St_Table(stab,i);
    if (ST_class(sym) == CLASS_BLOCK)
      continue;	// not a leaf symbol
    if (!Has_Base_Block(sym))
      continue;	// not a data symbol
    if (ST_sclass(sym) == SCLASS_UGLOBAL ||
        ST_sclass(sym) == SCLASS_FSTATIC ||
        ST_sclass(sym) == SCLASS_PSTATIC) {
      bss_list.push_back (sym);	// bss symbol
    }
  }

  if (stab == GLOBAL_SYMTAB) {
    last_global_index = ST_Table_Size(GLOBAL_SYMTAB);
  }

  // It's a bit counter-intuitive, but to get the list sorted
  // by section and then by offset within section,
  // should stable_sort in reverse order (offset then section).
  stable_sort (bss_list.begin(), bss_list.end(), size_lt);
  stable_sort (bss_list.begin(), bss_list.end(), offset_lt);
  stable_sort (bss_list.begin(), bss_list.end(), section_lt);

  ST*   sym;
  ST*   next_sym;
  ST*   base;
  ST*   next_base;
  INT64 ofst;
  INT64 next_ofst;
  INT64 size;

  for (bssp = bss_list.begin(); bssp != bss_list.end(); ++bssp) {

	sym = *bssp;
	Base_Symbol_And_Offset(sym, &base, &ofst);
	if (ST_class(base) != CLASS_BLOCK || !STB_section(base))
		continue;	/* not allocated */
	if (!STB_nobits(base))
		continue;	/* not a bss symbol */

	Change_Section_Origin (base, ofst);
	if (Assembly) {
		size = TY_size(ST_type(sym));
		Print_Label (Asm_File, sym, size);
		// before emitting space,
		// first check whether next symbol has same offset.
		// can have overlapping symbols that are equivalenced.
		if (bssp+1 != bss_list.end()) {
			next_sym = *(bssp+1);
			Base_Symbol_And_Offset(next_sym, &next_base, &next_ofst);
			if (next_base == base && next_ofst == ofst) {
				// skip to next iteration
				// so label printed before space emitted.
				continue;
			}
			else if (next_base == base && next_ofst < (ofst+size)) {
				// have label in middle of structure,
				// so don't emit space for full structure.
				size = next_ofst - ofst;
			}
		}
		// assume here that if multiple symbols with same offset,
		// are sorted so that largest size is last.
		if (size > 0)
		    ASM_DIR_SKIP(Asm_File, (INT32)size);
	}
	if (generate_elf_symbols && ! ST_is_export_local(sym)) {
		EMT_Put_Elf_Symbol (sym);
	}
  }
}


static INT
Check_If_Should_Align_PU (INT curpc)
{
  INT q;
  if (Align_Instructions) {
	q = Align_Instructions;
  }
  else if (OPT_Space) {
	return 0;
  }
  else {
	q = CGTARG_Text_Alignment();
  }
  q /= INST_BYTES;	/* so word-sized */
  return (q - ((curpc/INST_BYTES) % q)) % q;
}

/* Scan the BBs in the region looking for cold BBs. If one is found,
 * create the cold text section if it hasn't already been created.
 * Also set the BB_cold BB flag accordingly.
 */
static void
Create_Cold_Text_Section(void)
{
  BB *bb;

  for (bb = REGION_First_BB; bb; bb = BB_next(bb)) {
    if (EMIT_use_cold_section && BB_Is_Cold(bb)) {
      if (cold_base == NULL) {
	ST *st = Copy_ST(text_base);
	Set_ST_blk(st, Copy_BLK(ST_blk(text_base)));
	Set_ST_name (st, Save_Str2(ELF_TEXT, ".cold"));
	Set_STB_size (st, 0);
	Set_STB_scninfo_idx(st, 0);
	Set_STB_section_idx(st, STB_section_idx(text_base));
	Init_Section(st);
	cold_base = st;

	if (generate_elf_symbols) {
	  cold_section = em_scn[STB_scninfo_idx(cold_base)].scninfo;
	}
      }

      /* Check the remaining BBs in the region to verify they are
       * are cold. cgemit doesn't require this attribute, but currently
       * this is how the cold region is generated, so it's helpful
       * to verify it since someone forgetting to set the rid on a
       * new BB will cause trouble.
       */
      do {
	FmtAssert(BB_Is_Cold(bb),
		  ("cgemit: hot BB:%d found in cold region", BB_id(bb)));
	Set_BB_cold(bb);
      } while (bb = BB_next(bb));

      return;
    }

    Reset_BB_cold(bb);
  }
}


/* Set PU_base, PU_section and PC according to whether <bb> is
 * in the hot or cold region.
 */
static void
Setup_Text_Section_For_BB (BB *bb)
{
  BOOL cold_bb = BB_cold(bb);
  PU_base = cold_bb ? cold_base : text_base;

  /*
  for pu that has exception handling, we can not have two code
  location right now, since there are only one unwind table
  entry available.
  */
  if (PU_has_exc_scopes(Get_Current_PU()))
	cold_bb = FALSE;

  if (cur_section != PU_base) {
    if (Assembly) {
      fprintf (Asm_File, "\n\t%s %s\n", AS_SECTION, ST_name(PU_base));
    }
    if (cold_bb) {
      PU_section = cold_section;
      text_PC = PC;
      PC = cold_PC;
    } else {
      PU_section = text_section;
      cold_PC = PC;
      PC = text_PC;
    }
    cur_section = PU_base;
  }
}

static LABEL_IDX       prev_pu_last_label  = LABEL_IDX_ZERO;
static Dwarf_Unsigned  prev_pu_base_elfsym = 0;
static PU_IDX          prev_pu_pu_idx      = (PU_IDX) 0;
static Dwarf_Unsigned  prev_pu_end_offset_from_last_label = 0;
static char           *prev_pu_last_label_name = NULL;
static Dwarf_Unsigned  prev_pu_last_offset = 0;

static void
cache_last_label_info(LABEL_IDX      label_idx,
		      Dwarf_Unsigned base_elf_idx,
		      PU_IDX         pu_idx,
		      Dwarf_Unsigned end_offset)
{
  prev_pu_last_label  = label_idx;
  prev_pu_base_elfsym = base_elf_idx;
  prev_pu_pu_idx      = pu_idx;
  prev_pu_end_offset_from_last_label = end_offset;
  prev_pu_last_label_name = LABEL_name(label_idx);
  prev_pu_last_offset = Get_Label_Offset(label_idx);
}

static void
end_previous_text_region(pSCNINFO scninfo,
			 INT      end_offset)
{
  Em_Dwarf_End_Text_Region_Semi_Symbolic(scninfo,
					 end_offset,
					 Cg_Dwarf_Symtab_Entry(CGD_LABIDX,
							       prev_pu_last_label,
							       prev_pu_base_elfsym,
							       prev_pu_pu_idx,
							       prev_pu_last_label_name,
							       prev_pu_last_offset),
					 prev_pu_end_offset_from_last_label);
}

/* Setup, and create if necessary, the text section of the PU.  */
static void
Setup_Text_Section_For_PU (ST *pu)
{
  static ST *orig_text_base = NULL;
  ST *old_base = PU_base;
  INT i;
  if (text_base == NULL) {
	text_base = SEC_block(_SEC_TEXT);
  }
  orig_text_base = text_base;

  current_pu = ST_pu(pu);

  Initial_Pu_Label = LABEL_IDX_ZERO;

  if ( ! Object_Code && generate_elf_symbols) {
  	// didn't actually write instructions,
	// but want the offset to be up-to-date.
	Em_Change_Section_Origin (
		em_scn[STB_scninfo_idx(orig_text_base)].scninfo,
		text_PC);
  }

  if (Section_For_Each_Function || PU_in_elf_section(current_pu)) {
	/* create new text section */
	text_base = Copy_ST(orig_text_base);
	Set_ST_blk(text_base, Copy_BLK(ST_blk(orig_text_base)));
	if (Get_Trace ( TP_EMIT,128 )) {
		// use same .text name for each section
		Set_ST_name (text_base, ST_name_idx(orig_text_base));
	}
	else {
		char buf[16];
		sprintf(buf, "%s.", ELF_TEXT);
		Set_ST_name (text_base, Save_Str2(buf, ST_name(pu)));
	}
	Set_STB_size (text_base, 0);
	Set_STB_scninfo_idx(text_base, 0);
	Set_STB_section_idx(text_base, STB_section_idx(orig_text_base));
	Init_Section (text_base);
	text_PC = 0;	/* starting new offsets */
  }
  else if (ST_base(pu) != text_base) {
	// e.g. for section attributes.
	text_base = ST_base(pu);
	text_PC = STB_size(text_base);
  }

  Set_STB_scninfo_idx(SP_Sym, STB_scninfo_idx(text_base));
  Set_STB_scninfo_idx(FP_Sym, STB_scninfo_idx(text_base));

  cur_section = text_base;
  if (generate_elf_symbols) {
    text_section = em_scn[STB_scninfo_idx(text_base)].scninfo;
    PU_section = text_section;
    i = Em_Get_Section_Offset (PU_section);
    Is_True(i == text_PC, ("Setup_Text_Section_For_PU: PC doesn't match"));
    text_PC = i;
  }
  if (Assembly) fprintf (Asm_File, "\t%s %s\n", AS_SECTION, ST_name(text_base));
#ifdef TEMPORARY_STABS_FOR_GDB
  // This is an ugly hack to enable basic debugging for IA-32 target
  if (Assembly && Debug_Level > 0) {
    static BOOL marked_text_start = FALSE;
    if (!marked_text_start) {
      fprintf(Asm_File, ".Ltext0:\n");
      marked_text_start = TRUE;
    }
  }
#endif

  i = Check_If_Should_Align_PU (text_PC);
  if (i != 0) {
    if (Assembly) {
      UINT32 tmp, power;
      power = 0;
      for (tmp = STB_align(text_base); tmp > 1; tmp >>= 1) power++;
      ASM_DIR_ALIGN(power, text_base);
    }
    if (Object_Code) {
      // these bytes will never be executed so just insert 0's and
      // then we don't have to worry about how to generate a nop for
      // the target arch.
      Em_Add_Zeros_To_Scn (PU_section, i * INST_BYTES, 1);
    }
    // increment text_PC by 'num' bundles
    text_PC = text_PC + (i * INST_BYTES);
  }

  // hack for supporting dwarf generation in assembly (suneel)
  Last_Label = Gen_Label_For_BB (REGION_First_BB);
  Offset_From_Last_Label = 0;
  if (Initial_Pu_Label == LABEL_IDX_ZERO) {
    Initial_Pu_Label = Last_Label;
  }

  /* check if we are changing sections. */
  if (text_base != old_base) {
    if (generate_elf_symbols && old_base != NULL) {
      pSCNINFO old_section = em_scn[STB_scninfo_idx(old_base)].scninfo;
      // Arange is symbolic; line number entries (if used) are not.
      end_previous_text_region(old_section, Em_Get_Section_Offset(old_section));
    }
    if (generate_dwarf) {
    	Em_Dwarf_Start_Text_Region_Semi_Symbolic (PU_section, text_PC,
					      Cg_Dwarf_Symtab_Entry(CGD_LABIDX,
								    Last_Label,
								    ST_elf_index(text_base)),
					      Offset_From_Last_Label);
	}
  }

  PC = text_PC;
  PU_base = text_base;
}

/* ====================================================================
 * EMT_Emit_PU
 *
 * Assemble a program unit.
 * ====================================================================
*/
void
EMT_Emit_PU ( ST *pu, DST_IDX pu_dst, WN *rwn )
{
  ST *sym;
  ST *base;
  BB *bb;
  INT Initial_Pu_PC;
  INT64 ofst;
  INT i;
  float pu_cycle_count = 0; //PU's cycle count cbq
  
  // fix bug OSP_115
  // "__inline__" is a reserved keyword in C so it's 
  // safe(ish) to use in headers, including sys/*.h
  // when PU is marked extern _inline_ in C, 
  // needn't emit anything.
  if (PU_is_extern_inline (Pu_Table[ST_pu(pu)]))
    return;

  Trace_Inst	= Get_Trace ( TP_EMIT,1 );
  BOOL trace_unwind = Get_Trace (TP_EMIT, 64);

  Init_Unwind_Info (trace_unwind);

  /* In the IA-32 case, we need to convert fp register references
   * so that they reference entries in the fp register stack with the
   * proper offset.
   */
  STACK_FP_Fixup_PU();

  if ( Run_prompf ) {
    const char *path = Anl_File_Path();
    anl_file = fopen(path, "a");
    fprintf(anl_file, "\n");
  }

  Init_ST_elf_index(CURRENT_SYMTAB);

  cur_section = NULL;

  // initialize any new global sections
  // We don't do this in EMT_Begin_File because may not have done
  // data layout at that point.
  static UINT last_global_index = 1;
  for (i = last_global_index; i < ST_Table_Size(GLOBAL_SYMTAB); ++i) {
	ST* sym = &St_Table(GLOBAL_SYMTAB,i);
	if (ST_class(sym) == CLASS_BLOCK && STB_section(sym)) {
		Init_Section(sym);
	}
	// emit commons here so order is preserved for datapools
    	if (ST_sclass(sym) == SCLASS_COMMON) {
		if (ST_is_not_used (sym)) continue;
      		EMT_Put_Elf_Symbol (sym);
    	}
  }
  last_global_index = ST_Table_Size(GLOBAL_SYMTAB);

  // emit global bss first so .org is correct
  Process_Bss_Data (GLOBAL_SYMTAB);

  /* Initialize any sections that might have been created by the backend. */
  FOREACH_SYMBOL (CURRENT_SYMTAB, sym, i) {
	base = Base_Symbol(sym);
	if (ST_class(base) == CLASS_BLOCK && STB_section(base)) {
		Init_Section(base);
	}
  }

  Create_Cold_Text_Section();

  Setup_Text_Section_For_PU (pu);

  Initial_Pu_PC = PC;
  Set_ST_ofst(pu, PC);

  /* Assign addresses to all local labels. Fixup long branches.
     Perform branch target optimization.
  */
  R_Resolve_Branches (pu);

  if (Object_Code) {
    Em_Add_New_Event (EK_ENTRY, PC, 0, 0, 0, PU_section);
  }
  if ( Assembly ) {
    fprintf ( Asm_File, "\n\t%s Program Unit: %s\n", ASM_CMNT, ST_name(pu) );
    if (AS_ENT) CGEMIT_Prn_Ent_In_Asm (pu);
#ifdef TEMPORARY_STABS_FOR_GDB
    // This is an ugly hack to enable basic debugging for IA-32 target
    if (Debug_Level > 0) {
      fprintf(Asm_File, ".stabs \"%s:F(0,1)\",36,0,0,%s\n", ST_name(pu), ST_name(pu));
      fprintf(Asm_File, "\t%s\t%s,%s\n", AS_TYPE, ST_name(pu), AS_TYPE_FUNC);
    }
#endif
    Print_Label (Asm_File, pu, 0);
    CGEMIT_Gen_Asm_Frame (Frame_Len);
  }

  if (Assembly) {
    if (cur_section != PU_base) {
	/* reset to text section */
    	fprintf (Asm_File, "\n\t%s %s\n", AS_SECTION, ST_name(PU_base));
	cur_section = PU_base;
    }
  }
  FOREACH_SYMBOL (CURRENT_SYMTAB, sym, i) {
    if (ST_is_not_used(sym)) continue;
    if (ST_sclass(sym) == SCLASS_COMMON) {
      EMT_Put_Elf_Symbol (sym);
    }
    /* put all extern symbols into the elf symbol table. */
    if ((PU_src_lang(Get_Current_PU()) == PU_F77_LANG 
	|| PU_src_lang(Get_Current_PU()) == PU_F90_LANG) &&
	ST_sclass(sym) == SCLASS_EXTERN && 
	! ST_is_export_local(sym)) 
    {
      if (Assembly) fprintf (Asm_File, "\t%s\t %s\n", AS_GLOBAL, ST_name(sym));
      if (Object_Code) EMT_Put_Elf_Symbol (sym);
    }

    if (Assembly) {
      if (ST_class(sym) == CLASS_VAR && ST_sclass(sym) == SCLASS_AUTO) {
	if (Has_Base_Block(sym)) {
	  Base_Symbol_And_Offset(sym, &base, &ofst);
	  fprintf ( Asm_File, "\t%s %s = %lld\n",
		    ASM_CMNT, ST_name(sym), ofst);
	}
      }
    }
  }
  /* Fix MMxx => IALU etc. latency requirement just before assemble BB */
  if (Target == TARGET_ITANIUM && LOCS_Enable_Bundle_Formation) {
    TOP_SET src_op_class, tgt_op_class;
    UINT8   cycles_apart = 4;
    OP *op;
    UINT count = 0;
    /* set start bundle */
    for (bb = REGION_First_BB; bb; bb = BB_next(bb)) {
        FOR_ALL_BB_OPs(bb,op) {
            if (OP_dummy(op) || OP_simulated(op)) continue;
            if (!(count % ISA_MAX_SLOTS)) Set_OP_start_bundle(op);
            count += ISA_PACK_Inst_Words(OP_code(op)); 
        }
    }
	src_op_class.push_back(SIC_MMALU_A);
	src_op_class.push_back(SIC_MMALU_I);
	src_op_class.push_back(SIC_MMMUL);
	src_op_class.push_back(SIC_MMSHF);
	tgt_op_class.push_back(SIC_IALU);
	tgt_op_class.push_back(SIC_ISHF);
	tgt_op_class.push_back(SIC_ILOG);
	tgt_op_class.push_back(SIC_LD);
	tgt_op_class.push_back(SIC_ST);
	for (bb = REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
    		Fix_MM_Latency(bb, &src_op_class, &tgt_op_class, cycles_apart);
	}
  }
  
  // Fix cache conflict latency
  if (LOCS_Enable_Bundle_Formation) {
      OP *op;
      UINT count = 0;
      for (bb = REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
          FOR_ALL_BB_OPs(bb,op) {
            if (OP_dummy(op) || OP_simulated(op)) continue;
            if (!(count % ISA_MAX_SLOTS)) Set_OP_start_bundle(op);
            count += ISA_PACK_Inst_Words(OP_code(op));
          }
          Fix_Cache_Conflict_latency(bb);
      }
  }
  /* Assemble each basic block in the PU */
  for (bb = REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
    int bb_cycle_count;
    Setup_Text_Section_For_BB(bb);
    bb_cycle_count = EMT_Assemble_BB (bb, rwn);
    /* count the cycle for the PU  cbq */
    pu_cycle_count = pu_cycle_count + bb_cycle_count * bb->freq;
  }
  fprintf(Asm_File, "//PU cycle count: %f\n", pu_cycle_count);

  /* Revert back to the text section to end the PU. */
  Setup_Text_Section_For_BB(REGION_First_BB);
  Is_True(PU_base == text_base, ("first region BB was not in text section"));

  /* output LSDA */
  if (EH_Get_PU_Range_INITO(false) && EH_Get_PU_Range_ST()) {
    ST* eh_range = EH_Get_PU_Range_ST();
    Write_LSDA_INITO(eh_range, EH_Get_PU_Range_INITO(true), 0, 0);
    Set_ST_is_not_used(eh_range); // do not write_inito later
  }

  /* Emit the stuff needed at the end of the PU. */
  if (Assembly && AS_END) {
    fprintf ( Asm_File, "\t%s\t", AS_END);
    EMT_Write_Qualified_Name(Asm_File, pu);
    fprintf ( Asm_File, "\n");
  }

  /* Emit the initialized data associated with this PU. */
  Process_Initos_And_Literals (CURRENT_SYMTAB);
  Process_Bss_Data (CURRENT_SYMTAB);

  if (generate_dwarf) {
    Elf64_Word symindex;
    INT eh_offset;
    BOOL has_exc_scopes = PU_has_exc_scopes(ST_pu(pu));
    if (Object_Code)
    	Em_Add_New_Event (EK_PEND, PC - INST_BYTES, 0, 0, 0, PU_section);
    /* get exception handling info */ 
    if (!CXX_Exceptions_On && has_exc_scopes) {
      eh_offset = symindex = (Elf64_Word)DW_DLX_EH_OFFSET_UNAVAILABLE;
    }
    else if (!has_exc_scopes) {
	eh_offset = symindex = (Elf64_Word)DW_DLX_NO_EH_OFFSET;
    }
    else {
      sym = EH_Get_PU_Range_ST();
#if 0
      if (sym != NULL) {
	Base_Symbol_And_Offset (sym, &base, &ofst);
	eh_offset = ofst;
	Init_Section(base);	/* make sure eh_region is inited */
	symindex = ST_elf_index(base);
      } else {
	eh_offset = symindex = (Elf64_Word)DW_DLX_NO_EH_OFFSET;
      }
#else
      eh_offset = symindex = (Elf64_Word)DW_DLX_NO_EH_OFFSET;
#endif
    }
    // Cg_Dwarf_Process_PU (PU_section, Initial_Pu_PC, PC, pu, pu_dst, symindex, eh_offset);
    Cg_Dwarf_Process_PU (
		Em_Create_Section_Symbol(PU_section),
		Initial_Pu_Label,
		Last_Label, Offset_From_Last_Label,
		pu, pu_dst, symindex, eh_offset,
		// The following two arguments need to go away
		// once libunwind provides an interface that lets
		// us specify ranges symbolically.
		Initial_Pu_PC, PC);
  }

  if (Run_prompf) {
    fprintf(anl_file, "\n");
    fclose(anl_file);
  }

  PU_Size = PC - Initial_Pu_PC;
  Set_STB_size (PU_base, PC);
  text_PC = PC;

  if (generate_dwarf) {
    // The final label in this PU is liable to get used in computing
    // arguments to Em_Dwarf_End_Text_Region_Semi_Symbolic, so we need
    // to squirrel away information about it.
    cache_last_label_info (Last_Label,
		Em_Create_Section_Symbol(PU_section),
		ST_pu(pu),
		Offset_From_Last_Label);
  }

  Finalize_Unwind_Info();
}


static INT format_operand(
  char *buf, 
  INT n,
  BOOL qp,
  const ISA_OPERAND_VALTYP *vtype)
{
  INT len;

  if (ISA_OPERAND_VALTYP_Is_Register(vtype)) {
    const char *reg;
    ISA_REGISTER_SUBCLASS sc = ISA_OPERAND_VALTYP_Register_Subclass(vtype);
    ISA_REGISTER_CLASS rc = ISA_OPERAND_VALTYP_Register_Class(vtype);
    const ISA_REGISTER_CLASS_INFO *rcinfo = ISA_REGISTER_CLASS_Info(rc);
    const char * const fmt = qp ? ISA_PRINT_PREDICATE : "%s";
    INT regnum = 2 + n;
    if (sc == ISA_REGISTER_SUBCLASS_UNDEFINED) {
      INT first_reg = ISA_REGISTER_CLASS_INFO_First_Reg(rcinfo);
      INT last_reg = ISA_REGISTER_CLASS_INFO_Last_Reg(rcinfo);
      INT count = last_reg - first_reg + 1;
      regnum = ((regnum - first_reg) % count) + first_reg;
      reg = ISA_REGISTER_CLASS_INFO_Reg_Name(rcinfo, regnum);
    } else {
      const ISA_REGISTER_SUBCLASS_INFO *scinfo = ISA_REGISTER_SUBCLASS_Info(sc);
      INT count = ISA_REGISTER_SUBCLASS_INFO_Count(scinfo);
      regnum = ISA_REGISTER_SUBCLASS_INFO_Member(scinfo, regnum % count);
      reg = ISA_REGISTER_SUBCLASS_INFO_Reg_Name(scinfo, regnum % count);
      if (reg == NULL) reg = ISA_REGISTER_CLASS_INFO_Reg_Name(rcinfo, regnum);
    }
    len = sprintf(buf, fmt, reg) + 1;
  } else if (ISA_OPERAND_VALTYP_Is_Literal(vtype)) {
    INT64 imm = n + 1;
    ISA_LIT_CLASS lc = ISA_OPERAND_VALTYP_Literal_Class(vtype);
    if (!ISA_LC_Value_In_Class(imm, lc)) imm = ISA_LC_Min(lc);
    len = sprintf(buf, "%lld", imm) + 1;
  } else if (ISA_OPERAND_VALTYP_Is_Enum(vtype)) {
    ISA_ENUM_CLASS ec = ISA_OPERAND_VALTYP_Enum_Class(vtype);
    len = sprintf(buf, "%d", ISA_ECV_Intval(ISA_EC_First_Value(ec))) + 1;
  } else {
    FmtAssert(FALSE, ("unhandled vtype in format_operand"));
  }

  return len;
}

static void Enumerate_Insts(void)
{
  TOP top;
  char lab[25];
  INT labnum = 0;
  INT ninsts = 0;

  fprintf(TFile, "%s Instruction enumeration for %s ISA\n\n",
		 ASM_CMNT_LINE, ISA_SUBSET_Name(ISA_SUBSET_Value));

  for (top = (TOP)0; top < TOP_UNDEFINED; top = (TOP)(top + 1)) {

    if (   TOP_is_simulated(top) 
	|| TOP_is_dummy(top)
	|| !ISA_SUBSET_Member(ISA_SUBSET_Value, top)) continue;

    char buf[1024];
    const char *result[ISA_OPERAND_max_results];
    const char *opnd[ISA_OPERAND_max_operands];
    ISA_ENUM_CLASS_VALUE ev[ISA_OPERAND_max_operands];
    ISA_ENUM_CLASS ec[ISA_OPERAND_max_operands];
    INT ei[ISA_OPERAND_max_operands];
    INT i;
    const ISA_OPERAND_INFO *oinfo = ISA_OPERAND_Info(top);
    INT nopnds = ISA_OPERAND_INFO_Operands(oinfo);
    INT nresults = ISA_OPERAND_INFO_Results(oinfo);
    INT nenums = 0;
    INT cursor = 0;

    for (i = 0; i < nopnds; ++i) {
      const ISA_OPERAND_VALTYP *vtype = ISA_OPERAND_INFO_Operand(oinfo, i);
      if (   ISA_OPERAND_VALTYP_Is_Enum(vtype)
	  && ISA_PRINT_Operand_Is_Part_Of_Name(top, i))
      {
	ec[nenums] = ISA_OPERAND_VALTYP_Enum_Class(vtype);
	ev[nenums] = ISA_EC_First_Value(ec[nenums]);
	ei[nenums] = i;
	++nenums;
      } else {
        BOOL qp = (i == OP_PREDICATE_OPND && TOP_is_predicated(top));
        opnd[i] = buf + cursor;
        cursor += format_operand(buf + cursor, i, qp, vtype);
      }
    }

    for (i = 0; i < nresults; ++i) {
      const ISA_OPERAND_VALTYP *vtype = ISA_OPERAND_INFO_Result(oinfo, i);
      result[i] = buf + cursor;
      cursor += format_operand(buf + cursor, nopnds + i, FALSE, vtype);
    }

    do {
      INT orig_cursor = cursor;

      if ((ninsts % (10 * ISA_MAX_SLOTS)) == 0) {
	sprintf(lab, "lab%d", labnum);
	fprintf(TFile, "%s:\n", lab);
	++labnum;
      }
      ++ninsts;

      for (i = 0; i < nenums; ++i) {
	opnd[ei[i]] = buf + cursor;
	cursor += sprintf(buf + cursor, "%s", ISA_ECV_Name(ev[i])) + 1;
      }

      for (i = 0; i < nopnds; ++i) {
	const ISA_OPERAND_VALTYP *vtype = ISA_OPERAND_INFO_Operand(oinfo, i);
	if (ISA_OPERAND_VALTYP_Is_PCRel(vtype)) opnd[i] = lab;
      }

      fprintf(TFile, "\t");
      TI_ASM_Print_Inst(top, result, opnd, TFile);
      fprintf(TFile, "\n");

      cursor = orig_cursor;

      for (i = 0; i < nenums; ++i) {
	if (ev[i] == ISA_EC_Last_Value(ec[i])) {
	  ev[i] = ISA_EC_First_Value(ec[i]);
	} else {
	  ev[i] = (ISA_ENUM_CLASS_VALUE)(ev[i] + 1);
	  break;
	}
      }

    } while (i < nenums);
  }
}

static char ism_name[40];

/* get ism name from __Release_ID */
static void
Get_Ism_Name (void)
{
	char *s = strchr(__Release_ID, ':');
	char *p;
	if (s == NULL) {
		ism_name[0] = '\0';
		return;
	}
	s++;	/* skip : */
	s = strchr(s, ':');
	if (s == NULL) {
		ism_name[0] = '\0';
		return;
	}
	s++;	/* skip : */
	p = strchr(s, ' ');
	strncpy (ism_name, s, p-s);
	ism_name[p-s] = '\0';
}


void
EMT_Begin_File (
  char *process_name,	/* Back end process name */
  char *options)	/* Option string used for compilation */
{
  char *buff;

  /* Initialize: */
  Trace_Elf	= Get_Trace ( TP_EMIT, 2 );
  Trace_Init	= Get_Trace ( TP_EMIT, 4 );

  // Enumerate all instructions:
  if (Get_Trace (TP_CG, 0x100)) Enumerate_Insts();

  text_PC = 0;
  cold_PC = 0;
  Get_Ism_Name();
  if (FILE_INFO_gp_group (File_info)) {
        Has_GP_Groups = TRUE;
  }

  if (Object_Code || CG_emit_asm_dwarf) {
	generate_dwarf = TRUE;
	generate_elf_symbols = TRUE;
  }

  if ( generate_elf_symbols ) {
    Obj_File = fdopen (Em_Begin_File (
			    	Obj_File_Name, 
			    	FALSE, 
			    	!Use_32_Bit_Pointers, 
				FALSE /* old_abi */,
				(INT) Target_ISA,
				(Target_Byte_Sex == BIG_ENDIAN),
				Gen_PIC_Shared, 
				Gen_PIC_Call_Shared,
                		!Guaranteed_Small_GOT, 
				Has_GP_Groups,
			    	Trace_Elf),
		       "r+");
    if (Obj_File == NULL) return;

    // If we are meant to be generating only a .s file but that .s
    // file needs to have dwarf information represented in it, we
    // currently use the em_elf and libelf routines to maintain
    // section indices, symbol indices, etc. for libdwarf. In such a
    // situation, we generate the object file, but we unlink it here
    // so it never shows up after the compilation is done.
    if ( ! Object_Code) {
      unlink(Obj_File_Name);
    }

    buff = (char *) alloca (strlen("be") + sizeof(INCLUDE_STAMP) + 
			    strlen(ism_name) + strlen(Obj_File_Name) + 4);
    if (*ism_name != '\0')
	sprintf(buff, "be::%s-%s:%s", INCLUDE_STAMP, ism_name, Obj_File_Name);
    else
	sprintf(buff, "be::%s:%s", INCLUDE_STAMP, Obj_File_Name);
    Em_Add_Comment (buff);
    if ( ! DEBUG_Optimize_Space) {
    	buff = (char *) alloca (strlen("be-options") + strlen(options) + 4);
    	sprintf(buff, "be-options:::%s", options);
    	Em_Add_Comment (buff);
    }

    if ( EMIT_interface_section ) Interface_Scn_Begin_File();
  }

  Init_ST_elf_index(GLOBAL_SYMTAB);
  if (generate_dwarf) {
    Cg_Dwarf_Begin (!Use_32_Bit_Pointers);
  }
  Cg_Dwarf_Gen_Asm_File_Table ();

  if (Assembly) {
    ASM_DIR_NOREORDER();
    ASM_DIR_NOAT();
    fprintf ( Asm_File, "\t%s  %s::%s\n", ASM_CMNT, process_name, 
			    INCLUDE_STAMP );
    if (*ism_name != '\0')
    	fprintf ( Asm_File, "\t%s%s\t%s\n", ASM_CMNT, "ism", ism_name);
    List_Compile_Options ( Asm_File, "\t"ASM_CMNT, FALSE, TRUE, TRUE );

    /* TODO: do we need to do .interface stuff for asm files? */
  }
}

BOOL pad_data_section = FALSE;


static void
Em_Options_Scn(void)
{
    Elf64_Word info_mask = 0;
    Elf64_Half size = 0;
    Elf_Options_Hw hwand_buf = {0,0};
    UINT8 gp_group;
    gp_group = FILE_INFO_gp_group (File_info);

    if (gp_group != 0) {
	Elf64_Xword identifier = Ipa_Ident_Number;
	Em_Add_New_Option (ODK_IDENT, 0, gp_group, 
		(char*) &identifier, sizeof(identifier));
    }

    if ( Use_Page_Zero) 
      info_mask |= OEX_PAGE0;
    if (Force_SMM)
	info_mask |= OEX_SMM;
    if (Force_FP_Precise_Mode)
      info_mask |= OEX_PRECISEFP;
    if (Force_Memory_Dismiss)
      info_mask |= OEX_DISMISS;

    info_mask |= (FP_Exception_Enable_Max << 8) | FP_Exception_Enable_Min;
    
    Em_Add_New_Option (ODK_EXCEPTIONS, SHN_UNDEF, info_mask, NULL, 0);
    
    if (Use_Prefetch)
	Em_Add_New_Option (ODK_HWPATCH, 0, OHW_R8KPFETCH, NULL, 0);

    /* always generate empty HWAND and HWOR descriptors */
    Em_Add_New_Option (ODK_HWAND, 0, 0, (char*) &hwand_buf, sizeof(hwand_buf));

    info_mask = 0;
    if (Get_Trace ( TP_EMIT,0x100 )) {
      // fprintf ( TFile, "Misaligned_Cnt= %d\n", Misaligned_Cnt);
      DevWarn ("Misaligned_Cnt= %d\n", Misaligned_Cnt);
    }
    if (DEBUG_Alignment_Fixade && Misaligned_Cnt>0)
      info_mask = OHWO0_FIXADE;
    Em_Add_New_Option (ODK_HWOR, 0, info_mask, (char*) &hwand_buf, sizeof(hwand_buf));

    /* I don't have a case for PREFIX pad yet */
    /* We don't handle per symbol pad yet */
    if (pad_data_section) {
      /* pad all data sections */
      Elf64_Word pad_size[2];
     
      size = PAD_SIZE_LIMIT;
      pad_size[0] = (short) size;
      pad_size[1] = 0;
      Em_Add_New_Option(ODK_PAD, 0, 0, &pad_size[0], sizeof(Elf64_Xword));
    }
    else {
#if TODO_MONGOOSE
      INT32 i;
      for (i = 1; i <= Sec_last; i++) {
	if (SEC_pad_size(i) || pad_data_section) {
	  if (SEC_used(i) && SEC_static(i) && (!SEC_exec(i))) {
	    Elf64_Word pad_size[2];
	    size_t scn = Em_Get_Section_Index (em_scn[i].scninfo);
	    size = pad_data_section ? PAD_SIZE_LIMIT : SEC_pad_size(i);
	    pad_size[0] = (short)size;
	    pad_size[1] = 0;
	    Em_Add_New_Option(ODK_PAD, scn, 0, &pad_size[0], sizeof(Elf64_Xword));
	  }
	}
      }
#endif
    }
}


void
EMT_End_File( void )
{
  INT16 i;
  ST *sym;

  cur_section = NULL;
  Init_ST_elf_index(GLOBAL_SYMTAB);

  /* make sure all global symbols are initialized */
  FOREACH_SYMBOL (GLOBAL_SYMTAB, sym, i) {
	if (ST_class(sym) == CLASS_BLOCK && STB_section(sym)) {
		if (Emit_Global_Data && SEC_is_merge(STB_section_idx(sym)) )
			continue;	// merge sections go in each .o
		Init_Section(sym);
	}
        // emit commons here so order is preserved for datapools
        if (ST_sclass(sym) == SCLASS_COMMON) {
                if (ST_is_not_used (sym)) continue;
                EMT_Put_Elf_Symbol (sym);
        }
  }

  if (Emit_Global_Data) {
	char *newname;
	// create dummy symbol to represent the section
	FOREACH_SYMBOL (GLOBAL_SYMTAB, sym, i) {
		if (ST_class(sym) != CLASS_BLOCK) continue;
		if (!STB_section(sym)) continue;
		// mergeable sections will be emitted into each .o
		if (SEC_is_merge(STB_section_idx(sym))) continue;
		newname = Index_To_Str(Save_Str2(ST_name(sym), "_symbol"));
		if (Object_Code) {
	  		(void) Em_Add_New_Symbol (
				newname,
				0 /* offset */, 
				0 /* size */,
				STB_GLOBAL, STT_OBJECT, STO_INTERNAL,
				Em_Get_Section_Index (em_scn[STB_scninfo_idx(sym)].scninfo));
		}
		if (Assembly) {
 			Change_Section_Origin (sym, 0);
			fprintf (Asm_File, "\t%s\t%s\n", AS_GLOBAL, newname);
			ASM_DIR_STOINTERNAL(newname);
			fprintf (Asm_File, "%s:\n", newname);
		}
	}
  }

  /* If there weren't any PUs, we may have data initialization
   * associated with file scope data here:
   */
  Process_Bss_Data (GLOBAL_SYMTAB);
  Process_Initos_And_Literals (GLOBAL_SYMTAB);
  // We need two calls to  Process_Initos_And_Literals (GLOBAL_SYMTAB)
  // because while writing out INITOs new literals may be allocated
  Process_Initos_And_Literals (GLOBAL_SYMTAB);
  Process_Distr_Array ();

  FOREACH_SYMBOL (GLOBAL_SYMTAB, sym, i) {
    if (ST_class(sym) == CLASS_NAME) {
	if (ST_emit_symbol(sym)) {
		/* may be notype symbol */
		EMT_Put_Elf_Symbol(sym);
	}
    	else if (ST_sclass(sym) == SCLASS_COMMENT && Object_Code 
		&& ! Read_Global_Data	// just put once in symtab.o
		&& ! DEBUG_Optimize_Space)
	{
		char *buf = (char *) alloca (strlen("ident::: ") + strlen(ST_name(sym)));
    		sprintf(buf, "ident:::%s", ST_name(sym));
    		Em_Add_Comment (buf);
	}
    }

    if (ST_class(sym) == CLASS_VAR &&
        ST_is_fill_align(sym) &&
        !Has_Base_Block(sym)) {
      /* fill/align symbols are supposed to be allocated in be
       * but are not done if there were no PUs in the file.
       * Report that error here.
       */

      ErrMsg (EC_Is_Bad_Pragma_Abort, 
              "Fill/Align symbol",
              ST_name(sym),
              "requires the file to contain at least one function");
    }
	
    if (Has_Strong_Symbol(sym)) {
      ST *strongsym = ST_strong(sym);
      unsigned char symtype;

      if ( ! Has_Base_Block(strongsym))
	continue;	/* strong not allocated, so ignore weak */

      if (ST_class(sym) == CLASS_FUNC) {
	symtype = STT_FUNC;
      }
      else {
	symtype = STT_OBJECT;
      }

      if (Assembly) {
	CGEMIT_Weak_Alias (sym, strongsym);
	Print_Dynsym (Asm_File, sym);
      }
      if (Object_Code) {
	Em_Add_New_Weak_Symbol (
	  ST_name(sym), 
	  symtype,
	  st_other_for_sym (sym),
	  EMT_Put_Elf_Symbol(strongsym));
      }
    }
    else if (Has_Base_Block(sym) && ST_class(ST_base(sym)) != CLASS_BLOCK
	&& ST_emit_symbol(sym))
    {
	// alias
	if (Assembly) {
	    if ( ! ST_is_export_local(sym)) {
	    	fprintf (Asm_File, "\t%s\t %s\n", AS_GLOBAL, ST_name(sym));
	    }
	    CGEMIT_Alias (sym, ST_base(sym));
	}
    }
    else if (ST_class(sym) == CLASS_FUNC && ST_emit_symbol(sym)
	// possible to have local not-used emit_symbols,
	// cause mp does that to mark them as unused,
	// and don't want to emit those.
	&& ST_sclass(sym) == SCLASS_EXTERN) 
    {
	// some unreferenced fortran externs need to be emitted
	EMT_Put_Elf_Symbol(sym);
	if (Assembly) {
		fprintf (Asm_File, "\t%s\t %s\n", AS_GLOBAL, ST_name(sym));
	}
    }
  }

#ifdef TEMPORARY_STABS_FOR_GDB
  // This is an ugly hack to enable basic debugging for IA-32 target
  if (PU_base == NULL && Assembly && Debug_Level > 0) {
    fprintf(Asm_File, ".Ltext0:\n");
  }
#endif

  if (generate_elf_symbols && PU_section != NULL) {
    end_previous_text_region(PU_section, Em_Get_Section_Offset(PU_section));
  }

  if (Object_Code) {
    Em_Options_Scn();
  }
  if (generate_dwarf) {
    // must write out dwarf unwind info before text section is ended
    Cg_Dwarf_Finish (PU_section);
  }

  /* Write out the initialized data to the object file. */
  for (i = 1; i <= last_scn; i++) {
      sym = em_scn[i].sym;
      if (Object_Code) {

#ifdef PV_205345
	/* Data section alignment is initially set to the maximum
         * alignment required by the objects allocated to the section.
         * Whenever Find_Alignment is called for an object in a section
         * with smaller alignment than it's quantum of interest, it
         * updates the section alignment to guarantee that the
	 * determined alignment is valid.  This override can be enabled
	 * with -DPV_205345 to force alignment to at least 8 bytes.
         */
	if (STB_align(sym) < 8) Set_STB_align(sym, 8);
#endif /* PV_205345 */

	if (STB_nobits(sym)) {
	  /* For the .bss section, the size field should be set explicitly. */
	  Em_Add_Bytes_To_Scn (em_scn[i].scninfo, NULL,  
		STB_size(sym), STB_align(sym));
	}
	else {
	  Em_Change_Section_Alignment (em_scn[i].scninfo, STB_align(sym));
	}
        Em_End_Section (em_scn[i].scninfo);
      }
      if (Assembly) {
	UINT32 tmp, power;
	power = 0;
	for (tmp = STB_align(sym); tmp > 1; tmp >>= 1) power++;
	fprintf (Asm_File, "\t%s %s\n", AS_SECTION, ST_name(sym));
	ASM_DIR_ALIGN(power, sym);
      }
  }

  INT dwarf_section_count = 0;

  if (generate_dwarf) {
    dwarf_section_count = Em_Dwarf_Prepare_Output ();
  }

  if (Assembly) {
    ASM_DIR_GPVALUE();
    if (CG_emit_asm_dwarf) {
      Cg_Dwarf_Write_Assembly_From_Symbolic_Relocs(Asm_File,
						   dwarf_section_count,
						   !Use_32_Bit_Pointers);
    }
  }
  if (Object_Code && !CG_emit_asm_dwarf) {
    /* TODO: compute the parameters more accurately. For now we assume 
     * that all integer and FP registers are used. If we change the GP
     * value to be non-zero, make sure we adjust the addends for the 
     * GP_REL cases.
     */
    Em_Write_Reginfo (GP_DISP, 0xffffffff, 0xffffffff, Pure_ABI); 

    Em_Dwarf_Write_Scns (Cg_Dwarf_Translate_To_Elf);

    /* finalize .interfaces section (must be before Em_End_File) */
    if ( EMIT_interface_section )
      Interface_Scn_End_File();

    Em_End_File ();
    Em_Dwarf_End ();
    Em_Cleanup_Unwind ();
  }

  if (Emit_Global_Data) {
	// prepare block data to be written to .G file.
	// need to remove section info so can be reset when read.
	FOREACH_SYMBOL (GLOBAL_SYMTAB, sym, i) {
 		if (ST_class(sym) == CLASS_CONST
			&& SEC_is_merge(STB_section_idx(ST_base(sym))) )
		{
			// reallocate in each file
			Set_ST_base(sym,sym);	
			Set_ST_ofst(sym,0);	
		}
		else if (ST_class(sym) == CLASS_VAR 
			|| ST_class(sym) == CLASS_CONST
			|| ST_class(sym) == CLASS_FUNC)
		{
		        if (ST_sclass (sym) != SCLASS_COMMON
			    && !ST_is_weak_symbol(sym) )
			{
				Set_ST_sclass(sym, SCLASS_EXTERN);
			}
		}
		if (ST_class(sym) != CLASS_BLOCK) continue;
		Set_STB_scninfo_idx(sym,0);
		Set_STB_compiler_layout(sym);
		if (STB_section(sym)) {
			Reset_STB_section(sym);
			Reset_STB_root_base(sym);
			Set_STB_section_idx(sym,0);
			Set_ST_name(sym, Save_Str2(ST_name(sym), "_symbol"));
			Set_ST_sclass(sym, SCLASS_EXTERN);
			Set_ST_export(sym, EXPORT_INTERNAL);
		}
		else {
			// in case non-section block
			Set_ST_sclass(sym, SCLASS_EXTERN);
		}
	}
  }
}

