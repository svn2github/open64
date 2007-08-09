/* 
 * Copyright 2007 Google, Inc.  All Rights Reserved.
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of version 2 of the GNU General Public License as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it would be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
 *
 * Further, this software is distributed without any warranty that it is
 * free of the rightful claim of any third person regarding infringement 
 * or the like.  Any license provided herein, whether implied or 
 * otherwise, applies only to this software file.  Patent licenses, if 
 * any, provided herein do not apply to combinations of this program with 
 * other software, or any other product whatsoever.  
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write the Free Software Foundation, Inc., 59
 * Temple Place - Suite 330, Boston MA 02111-1307, USA.
 *
 */

extern "C" {
#include "gspin-wgen-interface.h"
}

#include <stdio.h>
#include "tracing.h"
#include "opcode.h"
#include "mtypes.h"
#include "wn.h"
#include "ir_reader.h"
#include "wgen_tracing.h"

int WGEN_TRACE::gimple_depth = 0;

static void print_indent(FILE *fp);

static void print_indent(FILE *fp)
{
  for (int i=0; i<WGEN_TRACE::gimple_depth; i++) {
    fprintf(fp, " ");
  }
}

void WGEN_TRACE::trace_gs(gs_t n)
{
  if (Get_Trace(TKIND_IR, TP_WGEN)) {
    gs_code_t c = gs_tree_code(n);
    print_indent(TFile);
    fprintf(TFile, "--- %s\n", gs_code_name(c));
  }
}

WN* WGEN_Trace_wn(WN *wn)
{
  if (Get_Trace(TKIND_IR, TP_WGEN)) {
    print_indent(TFile);
    fprintf(TFile, "+++ (0x%08x) ", (unsigned int) wn);
    fdump_wn(TFile, wn);
  }
  return wn;
}
