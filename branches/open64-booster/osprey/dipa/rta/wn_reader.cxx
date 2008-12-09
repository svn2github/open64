
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

#define __STDC_LIMIT_MACROS
#include <stdint.h>
#include <iostream>
#include <stdio.h>
#include <elf.h>
#include <stdlib.h>
#include "workaround.h"
#include "messg.h"
#include "rta.h"
#include "pu_info.h"   // see common/com
#include "ipl_summary.h"
#include "wn_reader.h"
//#include "wn.h"
//


template <class T>
inline T* ofs2ptr(T* p, char* base) {
  return reinterpret_cast<T*>(base + reinterpret_cast<size_t>(p));
}

static inline void print(FILE *fp, INT sz, unsigned char *stream)
{
#if 0
#if defined(DEBUG)
  INT j = 0;
  while (j < sz) {
    if ((j % 8) == 0)
      fprintf(fp, "\n");

    fprintf(fp, " %2x", *stream);
    stream++;
    j++;
  }
  fprintf(fp, "\n");
#endif
#endif
}

void Build_wn_tree_from_bits(WN *node, UINT sz)
{
  WN *wn;

  // since the pointers in the intermediate WHIRL are simply offsets
  // one must convert them to the right pointer value
#if 0
  OPCODE opc = (OPCODE)WN_opcode(node);
  if (opc == OPC_BLOCK) {
    wn = WN_first(node);
    FmtAssert(wn, ("NULL wn"));

    //    if (wn == (WN *)
#endif
}


const DST_IDX DST_INVALID_IDX = {DST_INVALID_BLOCK_IDX, DST_INVALID_BYTE_IDX};


void Print_Pu_Info_Title(FILE* f, const char *indent)
{
  fprintf(f, "%sStid", indent);
  fprintf(f, "  Flag");
  fprintf(f, " DST_IDX");
  fprintf(f, " Subs: ");
  fprintf(f, "   Symtab       Size       Tree       Size\n");
}

// the .h file only supply pointer interface
static void Print(FILE *f, PU_Info* pu_info, const char *indent)
{
  fprintf(f, "%s%04x", indent, PU_Info_proc_id(pu_info));
  fprintf(f, "  %04x", PU_Info_flags(pu_info));
  fprintf(f, "  %06x", PU_Info_pu_dst(pu_info));
  
  fprintf(f, "      %10llx", PU_Info_subsect_offset(pu_info, WT_SYMTAB));
  fprintf(f, " %10llx", PU_Info_subsect_size(pu_info, WT_SYMTAB));
  fprintf(f, " %10llx", PU_Info_subsect_offset(pu_info, WT_TREE));
  fprintf(f, " %10llx\n", PU_Info_subsect_size(pu_info, WT_TREE));
}


const char* indent = "  ";


void Print_whirl_global_from_bits(FILE *f, BITS b, UINT sz)
{
  fprintf(f, "Global Table:\n");
  print(f, sz, b);

}


// we should rewrite this part of code. Taken from ipl_bread_write.cxx
void
IPA_Trace_Summary_Section (FILE *f,        
               const void *sbase)    
{
    SUMMARY_FILE_HEADER *file_header;
    SUMMARY_SYMBOL *sym_array;
    SUMMARY_PROCEDURE  *proc_array;
    SUMMARY_FEEDBACK *feedback_array;
    SUMMARY_CALLSITE *callsite_array;
    SUMMARY_VALUE *value_array;
    SUMMARY_EXPR *expr_array;
    SUMMARY_PHI *phi_array;
    SUMMARY_CHI *chi_array;
    SUMMARY_STMT *stmt_array;
    SUMMARY_CONTROL_DEPENDENCE *ctrl_dep_array;
    SUMMARY_FORMAL *formal_array;
    SUMMARY_ACTUAL *actual_array;
    SUMMARY_GLOBAL *global_array;
    SUMMARY_STID *global_stid_array;
    SUMMARY_COMMON *common_array;
    SUMMARY_COMMON_SHAPE *common_shape_array;
    SUMMARY_STRUCT_ACCESS * struct_access_array;


    const char *section_base = (char *)sbase;

    Elf64_Word* offset = (Elf64_Word*)section_base;

    file_header = (SUMMARY_FILE_HEADER*)(section_base + *offset);
    
    if (file_header == 0)
    return;

    fprintf ( (FILE *)f, "IPA Summary Rev -- %d.%d \n\n", 
        file_header->Get_version_number(), file_header->Get_minor_version_number() );

    fprintf ( (FILE*)f, "OLevel-- O%d \n", file_header->Get_opt_level() );

    fprintf (f, "      Summary type        offset             size\n");

    const char * const format = "%-24s 0x%06x   0x%06x * %-5d\t= 0x%08x\n";

    if (file_header->Get_symbol_size () != 0)
    fprintf (f, format, "SYMBOL",
         file_header->Get_symbol_offset (),
         file_header->Get_symbol_entry_size (),
         file_header->Get_symbol_size(),
         file_header->Get_symbol_entry_size () *
         file_header->Get_symbol_size ());
    
    if (file_header->Get_proc_size ())
    fprintf (f, format, "PROCEDURE",
         file_header->Get_proc_offset (),
         file_header->Get_proc_entry_size (),
         file_header->Get_proc_size(),
         file_header->Get_proc_entry_size () *
         file_header->Get_proc_size ());
    
    if (file_header->Get_feedback_size ())
    fprintf (f, format, "FEEDBACK",
         file_header->Get_feedback_offset (),
         file_header->Get_feedback_entry_size (),
         file_header->Get_feedback_size(),
         file_header->Get_feedback_entry_size () *
         file_header->Get_feedback_size ());
    
    if (file_header->Get_callsite_size ())
    fprintf (f, format, "CALLSITE",
         file_header->Get_callsite_offset (),
         file_header->Get_callsite_entry_size (),
         file_header->Get_callsite_size(),
         file_header->Get_callsite_entry_size () *
         file_header->Get_callsite_size ());
    
    if (file_header->Get_stmt_size ())
    fprintf (f, format, "STMT",
         file_header->Get_stmt_offset (),
         file_header->Get_stmt_entry_size (),
         file_header->Get_stmt_size(),
         file_header->Get_stmt_entry_size () *
         file_header->Get_stmt_size ());
    
    if (file_header->Get_ctrl_dep_size ())
    fprintf (f, format, "CTRL_DEP",
         file_header->Get_ctrl_dep_offset (),
         file_header->Get_ctrl_dep_entry_size (),
         file_header->Get_ctrl_dep_size(),
         file_header->Get_ctrl_dep_entry_size () *
         file_header->Get_ctrl_dep_size ());
    
    if (file_header->Get_formal_size ())
    fprintf (f, format, "FORMAL",
         file_header->Get_formal_offset (),
         file_header->Get_formal_entry_size (),
         file_header->Get_formal_size(),
         file_header->Get_formal_entry_size () *
         file_header->Get_formal_size ());
    
    if (file_header->Get_actual_size ())
    fprintf (f, format, "ACTUAL",
         file_header->Get_actual_offset (),
         file_header->Get_actual_entry_size (),
         file_header->Get_actual_size(),
         file_header->Get_actual_entry_size () *
         file_header->Get_actual_size ());
    
    if (file_header->Get_value_size ())
    fprintf (f, format, "VALUE",
         file_header->Get_value_offset (),
         file_header->Get_value_entry_size (),
         file_header->Get_value_size(),
         file_header->Get_value_entry_size () *
         file_header->Get_value_size ());
    
    if (file_header->Get_expr_size ())
    fprintf (f, format, "EXPR",
         file_header->Get_expr_offset (),
         file_header->Get_expr_entry_size (),
         file_header->Get_expr_size(),
         file_header->Get_expr_entry_size () *
         file_header->Get_expr_size ());
    
    if (file_header->Get_phi_size ())
    fprintf (f, format, "PHI",
         file_header->Get_phi_offset (),
         file_header->Get_phi_entry_size (),
         file_header->Get_phi_size(),
         file_header->Get_phi_entry_size () *
         file_header->Get_phi_size ());
    
    if (file_header->Get_chi_size ())
    fprintf (f, format, "CHI",
         file_header->Get_chi_offset (),
         file_header->Get_chi_entry_size (),
         file_header->Get_chi_size(),
         file_header->Get_chi_entry_size () *
         file_header->Get_chi_size ());
    
    if (file_header->Get_global_size ())
    fprintf (f, format, "GLOBAL",
         file_header->Get_global_offset (),
         file_header->Get_global_entry_size (),
         file_header->Get_global_size(),
         file_header->Get_global_entry_size () *
         file_header->Get_global_size ());
    
    if (file_header->Get_common_size ())
    fprintf (f, format, "COMMON",
         file_header->Get_common_offset (),
         file_header->Get_common_entry_size (),
         file_header->Get_common_size(),
         file_header->Get_common_entry_size () *
         file_header->Get_common_size ());
    
    if (file_header->Get_common_shape_size ())
    fprintf (f, format, "COMMON_SHAPE",
         file_header->Get_common_shape_offset (),
         file_header->Get_common_shape_entry_size (),
         file_header->Get_common_shape_size(),
         file_header->Get_common_shape_entry_size () *
         file_header->Get_common_shape_size ());

    if (file_header->Get_global_stid_size ())
    fprintf (f, format, "GLOBAL_STID",
         file_header->Get_global_stid_offset (),
         file_header->Get_global_stid_entry_size (),
         file_header->Get_global_stid_size(),
         file_header->Get_global_stid_entry_size () *
         file_header->Get_global_stid_size ());
    
    if (file_header->Get_scalar_node_size ())
    fprintf (f, format, "SCALAR_NODE",
         file_header->Get_scalar_offset (),
         file_header->Get_scalar_node_entry_size (),
         file_header->Get_scalar_node_size(),
         file_header->Get_scalar_node_entry_size () *
         file_header->Get_scalar_node_size ());
    
    if (file_header->Get_cfg_node_size ())
    fprintf (f, format, "CFG_NODE",
         file_header->Get_cfg_node_offset (),
         file_header->Get_cfg_node_entry_size (),
         file_header->Get_cfg_node_size(),
         file_header->Get_cfg_node_entry_size () *
         file_header->Get_cfg_node_size ());
        
    if (file_header->Get_ivar_size ())
    fprintf (f, format, "IVAR",
         file_header->Get_ivar_offset (),
         file_header->Get_ivar_entry_size (),
         file_header->Get_ivar_size(),
         file_header->Get_ivar_entry_size () *
         file_header->Get_ivar_size ());
    
    if (file_header->Get_loopinfo_size ())
    fprintf (f, format, "LOOPINFO",
         file_header->Get_loopinfo_offset (),
         file_header->Get_loopinfo_entry_size (),
         file_header->Get_loopinfo_size(),
         file_header->Get_loopinfo_entry_size () *
         file_header->Get_loopinfo_size ());
    if (file_header->Get_struct_access_size () != 0)
    fprintf (f, format, "FLD_ACCESS",
         file_header->Get_struct_access_offset (),
         file_header->Get_struct_access_entry_size (),
         file_header->Get_struct_access_size(),
         file_header->Get_struct_access_entry_size () *
         file_header->Get_struct_access_size ());
    
    if (file_header->Get_symbol_size() != 0) {
    sym_array = (SUMMARY_SYMBOL *)
        (section_base + file_header->Get_symbol_offset());
    Ipl_Summary_Symbol = sym_array;
    fprintf(f, "function and symbol name NYI\n");
#if 0
    sym_array->Print_array ( f, file_header->Get_symbol_size(),
          symbol_names, function_names );
#endif

    }

    if (file_header->Get_proc_size() != 0) {
    proc_array =  (SUMMARY_PROCEDURE *)
        (section_base + file_header->Get_proc_offset());
    proc_array->Print_array ( f, file_header->Get_proc_size() );
    }

    if (file_header->Get_feedback_size() != 0) {
    feedback_array =  (SUMMARY_FEEDBACK *)
        (section_base + file_header->Get_feedback_offset());
    feedback_array->Print_array ( f, file_header->Get_feedback_size() );
    }

    if (file_header->Get_callsite_size() != 0) {
    callsite_array = (SUMMARY_CALLSITE*)
        (section_base + file_header->Get_callsite_offset()); 
    callsite_array->Print_array (f, file_header->Get_callsite_size());
    }

    if (file_header->Get_actual_size() != 0) {
    actual_array = (SUMMARY_ACTUAL *)
        (section_base + file_header->Get_actual_offset());  
    actual_array->Print_array ( f, file_header->Get_actual_size() );
    }

    if (file_header->Get_value_size() != 0) {
    value_array = (SUMMARY_VALUE *) (section_base +
                     file_header->Get_value_offset());  
    value_array->Print_array ( f, file_header->Get_value_size() );
    }

    if (file_header->Get_expr_size() != 0) {
    expr_array = (SUMMARY_EXPR *) (section_base +
                       file_header->Get_expr_offset());  
    expr_array->Print_array ( f, file_header->Get_expr_size() );
    }

    if (file_header->Get_phi_size() != 0) {
    phi_array = (SUMMARY_PHI *) (section_base +
                     file_header->Get_phi_offset());  
    phi_array->Print_array ( f, file_header->Get_phi_size() );
    }

    if (file_header->Get_chi_size() != 0) {
    chi_array = (SUMMARY_CHI *) (section_base +
                     file_header->Get_chi_offset());  
    chi_array->Print_array ( f, file_header->Get_chi_size() );
    }

    if (file_header->Get_stmt_size() != 0) {
    stmt_array = (SUMMARY_STMT *) (section_base +
                       file_header->Get_stmt_offset());  
    stmt_array->Print_array ( f, file_header->Get_stmt_size() );
    }

    if (file_header->Get_ctrl_dep_size() != 0) {
    ctrl_dep_array = (SUMMARY_CONTROL_DEPENDENCE *)
        (section_base + file_header->Get_ctrl_dep_offset());  
    ctrl_dep_array->Print_array ( f, file_header->Get_ctrl_dep_size() );
    }

    if (file_header->Get_formal_size() != 0) {
    formal_array = (SUMMARY_FORMAL *) (section_base +
                       file_header->Get_formal_offset()); 
    formal_array->Print_array ( f, file_header->Get_formal_size() );
    }

    if (file_header->Get_global_size() != 0) {
    global_array = (SUMMARY_GLOBAL *)
        (section_base + file_header->Get_global_offset());
    global_array->Print_array ( f, file_header->Get_global_size() );
    }

    if (file_header->Get_global_stid_size() != 0) {
      global_stid_array = (SUMMARY_STID *)
    (section_base + file_header->Get_global_stid_offset());
      global_stid_array->Print_array ( f, file_header->Get_global_stid_size() );
    }

    if (file_header->Get_common_size() != 0) {
    common_array = (SUMMARY_COMMON *)
        (section_base + file_header->Get_common_offset());
    common_array->Print_array ( f, file_header->Get_common_size() );
    }

    if (file_header->Get_common_shape_size() != 0) {
    common_shape_array = (SUMMARY_COMMON_SHAPE *)
        (section_base + file_header->Get_common_shape_offset());
    common_shape_array->Print_array(f,
                    file_header->Get_common_shape_size() );

    }
    if (file_header->Get_struct_access_size() != 0) {
    struct_access_array =  (SUMMARY_STRUCT_ACCESS *)
        (section_base + file_header->Get_struct_access_offset());
    struct_access_array->Print_array ( f, file_header->Get_struct_access_size() );
    }
    
    fprintf(f, "array_summary trace NYI\n");
    //    array_summary.Trace(f, sbase);
}

void Print_whirl_summary_from_bits(FILE *f, BITS b, UINT sz)
{
  Elf64_Word sum_bgn = readword64(b, b, sz);
  SUMMARY_FILE_HEADER *sum_hdr = (SUMMARY_FILE_HEADER* )(b + sum_bgn);
  if (sum_hdr == 0) {
    fprintf(f, "Empty summary\n");
    return;
  }

  IPA_Trace_Summary_Section(f, b);

}


void Print_whirl_pu_from_bits(FILE *f, BITS b, UINT sz)
{
  fprintf(f, "Pu_Info:\n");

  // first word of this section is offset to PU header table
  // followed by number of PUs
  Elf64_Word pu_bgn = readword64(b, b, sz);
  INT ver_num = readword32(b+pu_bgn, b, sz);
  FmtAssert((ver_num == PU_HEADER_VERSION), ("wrong Summary info version"));

  BITS pb = b + pu_bgn + sizeof(mINT32);
  mINT32 pu_num = readword32(pb, b, sz);
  FmtAssert((pu_num >= 0), ("pu number cannot be negative"));

  pb += sizeof(mINT32);

  INT prev;
  PU_Info* pu_hdr = (PU_Info *)(calloc(pu_num, sizeof(PU_Info)));
  PU_Info* pu = pu_hdr;
  for (INT i = 0; i < pu_num; i++, pu++) {
    PU_Info_cu_dst(pu) = DST_INVALID_IDX;
    PU_Info_proc_id(pu) = readword32(pb, b, sz);
    PU_Info_flags(pu) = readword32(pb+sizeof(mINT32), b, sz);
    PU_Info_pu_dst(pu) = *(DST_IDX *)(pb+sizeof(mINT32)+sizeof(mINT32));
    pb += sizeof(mINT32) + sizeof(mINT32) + sizeof(DST_IDX);

    prev = readword32(pb, b, sz);
    pb += sizeof(mINT32);
    
    if (prev == -1) {
      if (i != 0)
    PU_Info_child(&pu[i-1]) = pu;
    }
    else {
      PU_Info_next(&pu[prev]) = pu;
    }
  }

  INT subsec_num = readword32(pb, b, sz);
  pb += sizeof(mINT32);

  for (INT i=0; i<subsec_num; i++) {
    INT32 id = readword32(pb, b, sz);
    pb += sizeof(mINT32);
    if (id > WT_LAST) {
      // SKIP unknown stuff
      pb += pu_num * 2 * sizeof(Elf64_Word);
      continue;
    }

    pu = pu_hdr;
    for (INT k=0; k<pu_num; k++, pu++) {
      PU_Info_subsect_offset(pu, id) = readword64(pb, b, sz);
      PU_Info_subsect_size(pu, id) = readword64(pb+sizeof(Elf64_Word), b, sz);
      pb += (sizeof(Elf64_Word) + sizeof(Elf64_Word));
    }
  }

  Print_Pu_Info_Title(f, indent);
  for (INT i=0; i<pu_num; i++) {
    Print(f, &pu_hdr[i], indent);
  }
}


void Print_whirl_flags_from_bits(FILE *f, BITS b, UINT sz)
{
  fprintf(f, "%s Compile Flags:\n", SBar);
  
  Elf64_Word arg_num = readword64(b, b, sz);
  INT32 argv_sz = arg_num * sizeof(Elf64_Word);
  BITS argv_bgn = b + sizeof(Elf64_Word);
  
  fprintf(f, "  ");
  // the array of offset gives the argv strings
  for (INT i = 0; i < arg_num; i++) {
    INT64 bits = readword64((BITS)argv_bgn, b, sz);
    argv_bgn += sizeof(Elf64_Word);
    char * str_ofs = (char *)(bits + b);
    fprintf(f, "%s ", str_ofs, str_ofs);
  }
  fprintf(f, "\n");
}
