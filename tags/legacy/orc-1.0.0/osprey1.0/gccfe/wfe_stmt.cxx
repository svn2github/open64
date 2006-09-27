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


#include "defs.h"
#include "glob.h"
#include "config.h"
#include "wn.h"
#include "wn_util.h"

#include "gnu_config.h"
#include "gnu/system.h"

#include "srcpos.h"
#include "gnu/flags.h"
#include "gnu/tree.h"
#include "insn-config.h"	// MAX_RECOG_OPERANDS
#include "ir_reader.h"
#include "tree_symtab.h"
#include "wfe_misc.h"
#include "wfe_expr.h"
#include "wfe_stmt.h"
#include "targ_sim.h"
#include <ctype.h>

extern "C" int decode_reg_name (char*);

#define ENLARGE(x) (x + (x >> 1))

static BOOL  *if_else_info_stack;
static INT32  if_else_info_i;
static INT32  if_else_info_max;

enum LOOP_CONTINUE_INFO {
  CONTINUE_NONE,
  CONTINUE_ELSEWHERE,      // while 
  CONTINUE_HERE,
  CONTINUE_ELSEWHERE_HERE, // for
  CONTINUE_HERE_ELSEWHERE  // do while
};
  
typedef struct loop_info_t {
  struct nesting     *whichloop;
  LOOP_CONTINUE_INFO  continue_info;
  LABEL_IDX           continue_label_idx;
  LABEL_IDX           exit_label_idx;
  BOOL                exit_loop_if_false;
  BOOL                continue_here;
} LOOP_INFO;

static LOOP_INFO *loop_info_stack;
static INT32      loop_info_i;
static INT32      loop_info_max;

typedef struct case_info_t {
  INT64     case_lower_bound_value;
  INT64     case_upper_bound_value;
  LABEL_IDX case_label_idx;
} CASE_INFO;

typedef struct switch_info_t {
  WN        *index;
  TYPE_ID    index_mtype;
  INT32      start_case_index;
  LABEL_IDX  default_label_idx;
  LABEL_IDX  exit_label_idx;
} SWITCH_INFO;

static CASE_INFO   *case_info_stack;
static INT32        case_info_i;
static INT32        case_info_max;

static SWITCH_INFO *switch_info_stack;
static INT32        switch_info_i;
static INT32        switch_info_max;

typedef struct label_info_t {
  LABEL_IDX         label_idx;
  unsigned char     symtab_idx;
  unsigned char     defined;
} LABEL_INFO;

static LABEL_INFO  *undefined_labels_stack;
static INT32        undefined_labels_i;
static INT32        undefined_labels_max;

void
WFE_Stmt_Init (void)
{
  if_else_info_max   = 32;
  if_else_info_i     = -1;
  if_else_info_stack = (BOOL *) malloc (sizeof (BOOL) * if_else_info_max);
  loop_info_max      = 32;
  loop_info_i        = -1;
  loop_info_stack    = (LOOP_INFO *) malloc (sizeof (LOOP_INFO) * loop_info_max);
  switch_info_max    = 32;
  switch_info_i      = -1;
  switch_info_stack  = (SWITCH_INFO *) malloc (sizeof (SWITCH_INFO) * switch_info_max);
  case_info_max      = 32;
  case_info_i        = -1;
  case_info_stack    = (CASE_INFO *) malloc (sizeof (CASE_INFO) * case_info_max);
  undefined_labels_max   = 32;
  undefined_labels_i     = -1;
  undefined_labels_stack = (LABEL_INFO *) malloc (sizeof (LABEL_INFO) * undefined_labels_max);
} /* WFE_Stmt_Init */

void
WFE_Expand_Start_Cond (tree cond, int exitflag)
{
  WN* if_stmt;
  WN* test;
  WN* then_block;
  WN* else_block;

  if (++if_else_info_i == if_else_info_max) {

    if_else_info_max   = ENLARGE(if_else_info_max);
    if_else_info_stack = (BOOL *) realloc (if_else_info_stack,
                                           if_else_info_max * sizeof (BOOL));
  }

  if_else_info_stack [if_else_info_i] = FALSE;
  test       = WFE_Expand_Expr_With_Sequence_Point (cond, Boolean_type);
  then_block = WN_CreateBlock ();
  else_block = WN_CreateBlock ();
  if_stmt    = WN_CreateIf (test, then_block, else_block);
  WFE_Stmt_Append (if_stmt, Get_Srcpos());
  WFE_Stmt_Push (else_block, wfe_stmk_if_else, Get_Srcpos());
  WFE_Stmt_Push (then_block, wfe_stmk_if_then, Get_Srcpos());
} /* WFE_Expand_Start_Cond */

void
WFE_Expand_Start_Else (void)
{
  FmtAssert (if_else_info_i >= 0,
             ("WFE_Expand_Start_Else: no ifs"));
  if_else_info_stack [if_else_info_i] = TRUE;
  WFE_Stmt_Pop (wfe_stmk_if_then);
} /* WFE_Expand_Start_Else */

void
WFE_Expand_End_Cond (void)
{
  FmtAssert (if_else_info_i >= 0,
             ("WFE_Expand_End_Cond: no ifs"));
  if (if_else_info_stack [if_else_info_i] == FALSE)
    WFE_Stmt_Pop (wfe_stmk_if_then);
  WFE_Stmt_Pop (wfe_stmk_if_else);
  --if_else_info_i;
} /* WFE_Expand_End_Cond */

void
WFE_Expand_Start_Loop (int exitflag, struct nesting *whichloop)
{
  WN* while_body;

  if (++loop_info_i == loop_info_max) {

    loop_info_max   = ENLARGE(loop_info_max);
    loop_info_stack = (LOOP_INFO *) realloc (loop_info_stack,
                                             loop_info_max * sizeof (LOOP_INFO));
  }

  loop_info_stack [loop_info_i].whichloop          = whichloop;
  loop_info_stack [loop_info_i].continue_info      = CONTINUE_NONE;
  loop_info_stack [loop_info_i].continue_label_idx = 0;
  loop_info_stack [loop_info_i].exit_label_idx     = 0;
  loop_info_stack [loop_info_i].exit_loop_if_false = FALSE;
  loop_info_stack [loop_info_i].continue_here      = FALSE;

  while_body = WN_CreateBlock ();
  WFE_Stmt_Push (while_body, wfe_stmk_while_body, Get_Srcpos());
} /* WFE_Expand_Start_Loop */

void
WFE_Expand_Start_Loop_Continue_Elsewhere (int exitflag, struct nesting *whichloop)
{
  FmtAssert (loop_info_i >= 0,
             ("WFE_Expand_Start_Loop_Continue_Elsewhere: no loops"));
  FmtAssert (loop_info_stack [loop_info_i].whichloop == whichloop,
             ("WFE_Expand_Start_Loop_Continue_Elsewhere: loop mismatch"));
  if (loop_info_stack [loop_info_i].continue_info == CONTINUE_NONE)
    loop_info_stack [loop_info_i].continue_info = CONTINUE_ELSEWHERE;
  else
  if (loop_info_stack [loop_info_i].continue_info == CONTINUE_HERE)
    loop_info_stack [loop_info_i].continue_info = CONTINUE_HERE_ELSEWHERE;
  else
    Fail_FmtAssertion ("WFE_Expand_Start_Loop_Continue_Elsewhere: unexpected state"); 
  LABEL_IDX continue_label_idx;
  New_LABEL (CURRENT_SYMTAB, continue_label_idx);
  loop_info_stack [loop_info_i].continue_label_idx = continue_label_idx;
} /* WFE_Expand_Start_Loop_Continue_Elsewhere */

void
WFE_Expand_Loop_Continue_Here (void)
{
  FmtAssert (loop_info_i >= 0,
             ("WFE_Expand_Loop_Continue_Here: no loops"));
  if (loop_info_stack [loop_info_i].continue_info == CONTINUE_NONE)
    loop_info_stack [loop_info_i].continue_info = CONTINUE_HERE;
  else
  if (loop_info_stack [loop_info_i].continue_info == CONTINUE_ELSEWHERE)
    loop_info_stack [loop_info_i].continue_info = CONTINUE_ELSEWHERE_HERE;
  else
    Fail_FmtAssertion ("WFE_Expand_Loop_Continue_Here: unexpected state"); 
  WFE_Stmt_Append (
    WN_CreateLabel ((ST_IDX) 0,
                    loop_info_stack [loop_info_i].continue_label_idx,
                    0, NULL),
    Get_Srcpos());
  loop_info_stack [loop_info_i].continue_here = TRUE;
} /* WFE_Expand_Loop_Continue_Here */

void
WFE_Expand_End_Loop (void)
{
  LABEL_IDX exit_label_idx;
  FmtAssert (loop_info_i >= 0,
             ("WFE_Expand_End_Loop: no loops"));
  if (!loop_info_stack [loop_info_i].exit_loop_if_false) {
    WN *while_body;
    WN *while_stmt;
    WN *test = WN_Intconst (MTYPE_I4, 1);
    while_body = WFE_Stmt_Pop (wfe_stmk_while_body);
    switch (loop_info_stack [loop_info_i].continue_info) {
      case CONTINUE_NONE:
      case CONTINUE_ELSEWHERE:
        while_stmt = WN_CreateWhileDo (test, while_body);
        break;
      case CONTINUE_ELSEWHERE_HERE:
        while_stmt = WN_CreateDoWhile (test, while_body);
        break;
      default:
        Fail_FmtAssertion ("WFE_Expand_Exit_Loop_If_False: unexpected state");
        break;
    }
    WFE_Stmt_Append (while_stmt, Get_Srcpos());
    WFE_Stmt_Push (while_body, wfe_stmk_while_body, Get_Srcpos());
  }
  if (loop_info_stack [loop_info_i].continue_label_idx &&
      loop_info_stack [loop_info_i].continue_here == FALSE) {
    WFE_Stmt_Append (
      WN_CreateLabel ((ST_IDX) 0,
                      loop_info_stack [loop_info_i].continue_label_idx,
                      0, NULL),
      Get_Srcpos());
  }
  WFE_Stmt_Pop (wfe_stmk_while_body);
  exit_label_idx = loop_info_stack [loop_info_i].exit_label_idx;
  if (exit_label_idx) {
    WFE_Stmt_Append (
      WN_CreateLabel ((ST_IDX) 0, exit_label_idx, 0, NULL),
      Get_Srcpos());
  }
  --loop_info_i;
} /* WFE_Expand_End_Loop */

void
WFE_Expand_Continue_Loop (struct nesting *whichloop)
{
  FmtAssert (loop_info_i >= 0,
             ("WFE_Expand_Continue_Loop: no loops"));
  LABEL_IDX continue_label_idx = loop_info_stack [loop_info_i].continue_label_idx;

  if (continue_label_idx == 0) {
    New_LABEL (CURRENT_SYMTAB, continue_label_idx);
    loop_info_stack [loop_info_i].continue_label_idx = continue_label_idx;
  }

  WN* wn = WN_CreateGoto ((ST_IDX) NULL, continue_label_idx);
  WFE_Stmt_Append (wn, Get_Srcpos());
} /* WFE_Expand_Continue_Loop */

void
WFE_Expand_Exit_Loop (struct nesting *whichloop)
{
  Fail_FmtAssertion ("WFE_Expand_Exit_Loop: unexpected state"); 
} /* WFE_Expand_Exit_Loop */

void
WFE_Expand_Exit_Loop_If_False (struct nesting *whichloop, tree cond)
{
  WN* while_stmt;
  WN* test;
  WN* while_body;

  FmtAssert (loop_info_i >= 0,
             ("WFE_Expand_Exit_Loop_If_False: no loops"));
  FmtAssert (loop_info_stack [loop_info_i].whichloop == whichloop,
             ("WFE_Expand_Exit_Loop_If_False: loop mismatch"));
  loop_info_stack [loop_info_i].exit_loop_if_false = TRUE;
  test       = WFE_Expand_Expr_With_Sequence_Point (cond, Boolean_type);
  while_body = WFE_Stmt_Pop (wfe_stmk_while_body);
  switch (loop_info_stack [loop_info_i].continue_info) {
    case CONTINUE_NONE:
    case CONTINUE_ELSEWHERE:
      while_stmt = WN_CreateWhileDo (test, while_body);
      break;
    case CONTINUE_ELSEWHERE_HERE:
      while_stmt = WN_CreateDoWhile (test, while_body);
      break;
    default:
      Fail_FmtAssertion ("WFE_Expand_Exit_Loop_If_False: unexpected state");
      break;
  }
  WFE_Stmt_Append (while_stmt, Get_Srcpos());
  WFE_Stmt_Push (while_body, wfe_stmk_while_body, Get_Srcpos());
} /* WFE_Expand_Exit_Loop_If_False */

void
WFE_Expand_Start_Case (int exit_flag, tree expr, tree type, char *printname)
{
  TYPE_ID index_mtype = Mtype_comparison (TY_mtype (Get_TY (TREE_TYPE (expr))));
  WN *switch_block    = WN_CreateBlock ();
  WN *index           = WFE_Expand_Expr_With_Sequence_Point (expr, index_mtype);
  WFE_Stmt_Push (switch_block, wfe_stmk_switch, Get_Srcpos());
  if (++switch_info_i == switch_info_max) {

    switch_info_max   = ENLARGE(switch_info_max);
    switch_info_stack = (SWITCH_INFO *) realloc (switch_info_stack,
                                             switch_info_max * sizeof (SWITCH_INFO));
  }
  switch_info_stack [switch_info_i].index             = index;
  switch_info_stack [switch_info_i].index_mtype       = index_mtype;
  switch_info_stack [switch_info_i].start_case_index  = case_info_i + 1;
  switch_info_stack [switch_info_i].default_label_idx = 0;
  switch_info_stack [switch_info_i].exit_label_idx    = 0;
} /* WFE_Expand_Start_Case */

void
WFE_Expand_Start_Case_Dummy (void)
{
} /* WFE_Expand_Start_Case_Dummy */

void
WFE_Add_Case_Node (tree low, tree high, tree label)
{
  WN        *wn;
  LABEL_IDX  case_label_idx;
  WN *lower_bound = WFE_Expand_Expr (low);
  WN *upper_bound = WFE_Expand_Expr (high);
  if (WN_const_val (lower_bound) != WN_const_val (upper_bound))
    DevWarn ("ecncountered case range at line %d", lineno);
  if (++case_info_i == case_info_max) {

    case_info_max   = ENLARGE(case_info_max);
    case_info_stack = (CASE_INFO *) realloc (case_info_stack,
                                             case_info_max * sizeof (CASE_INFO));
  }
  case_info_stack [case_info_i].case_lower_bound_value = WN_const_val (lower_bound);
  case_info_stack [case_info_i].case_upper_bound_value = WN_const_val (upper_bound);
  FmtAssert (label->decl.sgi_u1.label_idx == (LABEL_IDX) 0,
             ("WFE_Add_Case_Node: label already defined"));
  New_LABEL (CURRENT_SYMTAB, case_label_idx);
  label->decl.sgi_u1.label_idx = case_label_idx;
  label->decl.label_defined = TRUE;
  case_info_stack [case_info_i].case_label_idx = case_label_idx;
  wn = WN_CreateLabel ((ST_IDX) 0, case_label_idx, 0, NULL);
  WFE_Stmt_Append (wn, Get_Srcpos ());
} /* WFE_Add_Case_Node */

void
WFE_Emit_Case_Nodes (void)
{
} /* WFE_Emit_Case_Nodes */

void
WFE_Expand_End_Case_Dummy (void)
{
} /* WFE_Expand_End_Case_Dummy */

void
WFE_Expand_End_Case (tree orig_index)
{
  INT32  i;
  INT32  n;
  WN    *switch_wn;
  WN    *switch_block;
  WN    *case_block;
  WN    *case_entry;
  WN    *def_goto;
  WN    *wn;
  TYPE_ID index_mtype = switch_info_stack [switch_info_i].index_mtype;

  n = case_info_i - switch_info_stack [switch_info_i].start_case_index;
  if (switch_info_stack [switch_info_i].exit_label_idx == 0) {
    New_LABEL (CURRENT_SYMTAB, switch_info_stack [switch_info_i].exit_label_idx);
  }
  if (switch_info_stack [switch_info_i].default_label_idx)
    def_goto = WN_CreateGoto (switch_info_stack [switch_info_i].default_label_idx);
  else
    def_goto = WN_CreateGoto (switch_info_stack [switch_info_i].exit_label_idx);
  case_block = WN_CreateBlock ();
  for (i = switch_info_stack [switch_info_i].start_case_index;
       i <= case_info_i;
       i++) {
    LABEL_IDX case_label_idx = case_info_stack [i].case_label_idx;
    if (case_info_stack [i].case_lower_bound_value ==
        case_info_stack [i].case_upper_bound_value) {

      INT64 case_value = case_info_stack [i].case_lower_bound_value;
      case_entry = WN_CreateCasegoto (case_value, case_label_idx);
      WN_INSERT_BlockLast (case_block, case_entry);
    }
    else {
      if (MTYPE_is_signed (index_mtype)) {
        INT64 case_value;
        for (case_value  = case_info_stack [i].case_lower_bound_value;
             case_value <= case_info_stack [i].case_upper_bound_value;
             case_value++) {

          case_entry = WN_CreateCasegoto (case_value, case_label_idx);
          WN_INSERT_BlockLast (case_block, case_entry);
        }
      }
      else {
        UINT64 case_value;
        for (case_value  = (UINT64) case_info_stack [i].case_lower_bound_value;
             case_value <= (UINT64) case_info_stack [i].case_upper_bound_value;
             case_value++) {

          case_entry = WN_CreateCasegoto (case_value, case_label_idx);
          WN_INSERT_BlockLast (case_block, case_entry);
        }
      }
    }
  }
  switch_wn = WN_CreateSwitch (n,
                               switch_info_stack [switch_info_i].index,
                               case_block,
                               def_goto,
                               switch_info_stack [switch_info_i].exit_label_idx);
  switch_block = WFE_Stmt_Pop (wfe_stmk_switch);
  WFE_Stmt_Append (switch_wn, Get_Srcpos ());
  WFE_Stmt_Append (switch_block, Get_Srcpos ());
  wn = WN_CreateLabel ((ST_IDX) 0,
                       switch_info_stack [switch_info_i].exit_label_idx,
                       0, NULL);
  WFE_Stmt_Append (wn, Get_Srcpos ());
  case_info_i = switch_info_stack [switch_info_i].start_case_index - 1;
  --switch_info_i;
} /* WFE_Expand_End_Case */

void
WFE_Record_Switch_Default_Label (tree label)
{
  LABEL_IDX  default_label_idx;
  WN        *wn;

  FmtAssert (label->decl.sgi_u1.label_idx == (LABEL_IDX) 0,
             ("WFE_Record_Switch_Default_Label: label already defined"));
  New_LABEL (CURRENT_SYMTAB, default_label_idx);
  label->decl.sgi_u1.label_idx = default_label_idx;
  label->decl.label_defined = TRUE;
  switch_info_stack [switch_info_i].default_label_idx = default_label_idx;
  wn = WN_CreateLabel ((ST_IDX) 0, default_label_idx, 0, NULL);
  WFE_Stmt_Append (wn, Get_Srcpos ());
} /* WFE_Record_Switch_Default_Label */

void
WFE_Expand_Exit_Something (struct nesting *n,
                           struct nesting *cond_stack,
                           struct nesting *loop_stack,
                           struct nesting *case_stack,
                           LABEL_IDX      *label_idx)
{
  LABEL_IDX  exit_label_idx = *label_idx;
  WN        *wn;
  if (n == case_stack) {
    if (exit_label_idx == 0) {
      New_LABEL (CURRENT_SYMTAB, exit_label_idx);
      *label_idx = exit_label_idx;
      switch_info_stack [switch_info_i].exit_label_idx = exit_label_idx;
    }
    wn = WN_CreateGoto (exit_label_idx);
    WFE_Stmt_Append (wn, Get_Srcpos ());
  }
  else
  if (n == loop_stack) {
    if (n == loop_info_stack [loop_info_i].whichloop) {
      if (exit_label_idx == 0) {
        New_LABEL (CURRENT_SYMTAB, exit_label_idx);
        *label_idx = exit_label_idx;
        loop_info_stack [loop_info_i].exit_label_idx = exit_label_idx;
      }
      wn = WN_CreateGoto (exit_label_idx);
      WFE_Stmt_Append (wn, Get_Srcpos ());
    }
  }
} /* WFE_Expand_Exit_Something */

LABEL_IDX
WFE_Get_LABEL (tree label, int def)
{
  LABEL_IDX label_idx  = label->decl.sgi_u1.label_idx;
  LABEL_IDX symtab_idx = label->decl.symtab_idx;

  if (label_idx == 0) {
    LABEL_Init (New_LABEL (CURRENT_SYMTAB, label_idx), 0, LKIND_DEFAULT);
    label->decl.sgi_u1.label_idx = label_idx;
    label->decl.symtab_idx   = CURRENT_SYMTAB;
    if (!def) {
      if (++undefined_labels_i == undefined_labels_max) {
        undefined_labels_max   = ENLARGE(undefined_labels_max);
        undefined_labels_stack =
          (LABEL_INFO *) realloc (undefined_labels_stack,
                                  undefined_labels_max * sizeof (LABEL_INFO));
      }
      undefined_labels_stack [undefined_labels_i].label_idx  = label_idx;
      undefined_labels_stack [undefined_labels_i].symtab_idx = CURRENT_SYMTAB;
      undefined_labels_stack [undefined_labels_i].defined    = FALSE;
    }
  }
  else {
    if (def) {
      for (int i = undefined_labels_i; i >= 0; --i) {
        if (undefined_labels_stack [i].label_idx  == label_idx &&
            undefined_labels_stack [i].symtab_idx == CURRENT_SYMTAB) {
          undefined_labels_stack [i].defined = TRUE;
          break;
        }
      }
    }
/*
    else {
      if (label->decl.label_defined)
        FmtAssert (label->decl.symtab_idx == CURRENT_SYMTAB,
                   ("jumping to a label not defined in current function"));
    }
*/
  }

  return label_idx;
} /* WFE_Get_LABEL */

void
WFE_Declare_Nonlocal_Label (tree label)
{
  LABEL_IDX label_idx = WFE_Get_LABEL (label, FALSE);
  Set_LABEL_target_of_goto_outer_block (label_idx);
} /* WFE_Expand_Label */

void
WFE_Expand_Label (tree label)
{
  LABEL_IDX label_idx = WFE_Get_LABEL (label, TRUE);
  label->decl.symtab_idx = CURRENT_SYMTAB;
//fprintf (stderr, "\n");
  if (!label->decl.label_defined) {
    WN *wn;
    label->decl.label_defined = TRUE;
    wn = WN_CreateLabel ((ST_IDX) 0, label_idx, 0, NULL);
    WFE_Stmt_Append (wn, Get_Srcpos ());
  }
} /* WFE_Expand_Label */

void
WFE_Expand_Goto (tree label)
{
  WN *wn;
  LABEL_IDX label_idx = WFE_Get_LABEL (label, FALSE);
  if ((CURRENT_SYMTAB > GLOBAL_SYMTAB + 1) &&
      (label->decl.symtab_idx < CURRENT_SYMTAB))
    wn = WN_CreateGotoOuterBlock (label_idx, label->decl.symtab_idx);
  else
    wn = WN_CreateGoto ((ST_IDX) NULL, label_idx);
  WFE_Stmt_Append (wn, Get_Srcpos());
} /* WFE_Expand_Goto */

void
WFE_Expand_Computed_Goto (tree exp)
{
  DevWarn ("encountered indirect jump at line %d\n", lineno);
  Set_PU_no_inline (Get_Current_PU ());
  WN *addr = WFE_Expand_Expr (exp);
  WN *wn   = WN_CreateAgoto (addr);
  WFE_Stmt_Append (wn, Get_Srcpos());
} /* WFE_Expand_Computed_Goto */

void
WFE_Expand_Return (tree retval)
{
  WN *wn;
  /* If function wants no value, give it none.  */
  if (TREE_CODE (TREE_TYPE (TREE_TYPE (current_function_decl))) == VOID_TYPE) {
    if (retval) {
	(void) WFE_Expand_Expr_With_Sequence_Point (retval, MTYPE_V);
    }
    wn = WN_CreateReturn ();
  }
  else {
    WN *rhs_wn;
    TY_IDX ret_ty_idx = Get_TY(TREE_TYPE(TREE_TYPE(current_function_decl)));
    rhs_wn = WFE_Expand_Expr_With_Sequence_Point (
		TREE_OPERAND (retval, 1),
		TY_mtype (ret_ty_idx));
    if (!WFE_Keep_Zero_Length_Structs    &&
        TY_mtype (ret_ty_idx) == MTYPE_M &&
        TY_size (ret_ty_idx) == 0) {
      // function returning zero length struct
      if (WN_has_side_effects (rhs_wn)) {
        rhs_wn = WN_CreateEval (rhs_wn);  
        WFE_Stmt_Append(rhs_wn, Get_Srcpos());
      }
      wn = WN_CreateReturn ();
    }
    else {
      if (WN_opcode (rhs_wn) == OPC_MMLDID &&
          WN_offset (rhs_wn) == 0          &&
          WN_field_id (rhs_wn) == 0        &&
          TY_align (ret_ty_idx) < MTYPE_align_best(Spill_Int_Mtype)) {
        ST *st = WN_st (rhs_wn);
        TY_IDX ty_idx = ST_type (st);
        if (ty_idx == ret_ty_idx) {
          Set_TY_align (ty_idx, MTYPE_align_best(Spill_Int_Mtype));
          Set_ST_type (st, ty_idx);
        }
      }
      WFE_Set_ST_Addr_Saved (rhs_wn);
      if (DECL_WIDEN_RETVAL(current_function_decl)) {
	TYPE_ID old_rtype = WN_rtype(rhs_wn);
	TYPE_ID new_rtype = MTYPE_is_signed (old_rtype) ? MTYPE_I8 : MTYPE_U8;
	rhs_wn = WN_Cvt (old_rtype, new_rtype, rhs_wn);
        wn = WN_CreateReturn_Val(OPR_RETURN_VAL, new_rtype, MTYPE_V, rhs_wn);
      }
      else
        wn = WN_CreateReturn_Val(OPR_RETURN_VAL, TY_mtype(ret_ty_idx), MTYPE_V, rhs_wn);
    }
  }
  WFE_Stmt_Append(wn, Get_Srcpos());
} /* WFE_Expand_Return */


/* Generate WHIRL for an asm statement with arguments.
   For now, we don't do all the stuff done by expand_asm_operands;
   instead, we leave much of that stuff until asm lowering time.
   Here, we just build the OPR_ASM node that records the relevant
   information about the asm statement. */

static WN *
idname_from_regnum (int gcc_reg)
{
  if (gcc_reg < 0) {
	DevWarn("unrecognized register name in asm");
  	return NULL;
  }
  else {
	extern PREG_NUM Map_Reg_To_Preg [];
	PREG_NUM preg = Map_Reg_To_Preg [gcc_reg];
	if (preg < 0) {
		DevWarn("couldn't map asm regname to preg");
		return NULL;
	}
	ST *st;
	if (Preg_Offset_Is_Int(preg))
		st = Int_Preg;
	else if (Preg_Offset_Is_Float(preg))
		st = Float_Preg;
	else
		FmtAssert (FALSE, ("unexpected preg %d", preg));
  	return WN_CreateIdname((WN_OFFSET) preg, st);
  }
}

char *
remove_plus_modifier(char *s)
{
#define MAX_NON_PLUS_CONSTRAINT_CHARS 7
  static char out[MAX_NON_PLUS_CONSTRAINT_CHARS + 1];
  int i = 0;
  while (i <= MAX_NON_PLUS_CONSTRAINT_CHARS)
    {
      while (*s == '+')
	{
	  ++s;
	}
      out[i++] = *s;
      if (*s == '\0')
	{
	  return out;
	}
      else
	{
	  ++s;
	}
    }
  Fail_FmtAssertion("Constraint string too long");
  /*NOTREACHED*/
}

BOOL
constraint_supported (const char *s)
{
  while (*s != 0) {
    if (*s != 'r' &&
	*s != 'f' &&
	*s != 'm' &&
	*s != '+' &&
	*s != ',' &&
	*s != '=' &&
	(*s < '0' ||
	 *s > '9')) {
      return FALSE;
    }
    ++s;
  }
  return TRUE;
}

ST *
st_of_new_temp_for_expr(const WN *expr)
{
  static unsigned int temp_count = 0;

  static char temp_name[64];

  sprintf(temp_name, "asm.by.address.temp_%u\0", temp_count++);

  ST *retval = New_ST(CURRENT_SYMTAB);
  
  ST_Init (retval,
	   Save_Str (temp_name),
	   CLASS_VAR,
	   SCLASS_AUTO,
	   EXPORT_LOCAL,
	   MTYPE_To_TY(WN_rtype(expr)));
  return retval;
}

// need to keep track of what kind of constraint a numeric constraint
// refers to (by address or not).  So keep list of constraints.

static char *operand_constraint_array[MAX_RECOG_OPERANDS];

static BOOL
constraint_by_address (const char *s)
{
  if (strchr (s, 'm')) {
    return TRUE;
  }
  else if (isdigit(*s)) {
    return constraint_by_address (operand_constraint_array[*s - '0']);
  }
  else {
    return FALSE;
  }
}

static WN *
add_offset(WN_OFFSET  ofst,
	   WN        *address)	// not const; some simplification may occur.
{
  return WN_Binary(OPR_ADD, Pointer_Mtype,
		   WN_Intconst(MTYPE_I8, ofst),
		   address);
}

static WN *
address_of (const WN *wn)
{
  if (WN_operator(wn) == OPR_ILOAD ||
      WN_operator(wn) == OPR_MLOAD) {
    return add_offset(WN_offset(wn), WN_kid0(wn));
  }
  else if ((WN_operator(wn) == OPR_LDID) &&
	   (ST_sclass(WN_st(wn)) != SCLASS_REG)) {
    return WN_Lda (Pointer_Mtype,
		   WN_offset(wn),
		   WN_st(wn),
		   (UINT) 0);
  }
  // No address for this object. This expression is not an lvalue.
  return NULL;
}

/* What OPR_ASM looks like:
 *
 *   Kids: 0 is a block of IDNAMEs referring to
 *         registers that get clobbered. Clobbering of memory and
 *         condition codes is encoded in WN_Asm_Clobbers_Cc() and
 *         WN_Asm_Clobbers_Mem().
 *       1 is a block of PRAGMA or XPRAGMA nodes giving information
 *         about copy-out output operands and their constraints.
 *       2 .. WN_kid_count() - 1 are OPR_ASM_INPUT nodes, each of
 *         which gives a constraint and an rvalue for the
 *         corresponding input to the asm statement.
 *
 * Inputs originate either as input operands to the ASM, or as output
 * operands that are passed by address.
 */

static PREG_NUM asm_neg_preg = -2;

void
Wfe_Expand_Asm_Operands (tree  string,
			 tree  outputs,
			 tree  inputs,
			 tree  clobbers,
			 int   vol,
			 char *filename,
			 int   line)
{
  // filename and line are ignored for now; eventually maybe they
  // should be used to generate SRCPOS information on the OPR_ASM_STMT
  // WN.
  //
  // I don't know yet why filename and line are passed for
  // expand_asm_operands but not for other expand_* routines in
  // gnu/stmt.c.

  int ninputs = list_length (inputs);

  tree tail;
  char *constraint_string;

  // Keep list of output operand constraints so that we know
  // what a numeric constraint refers to.
  int i = 0;
  // Store the constraint strings
  for (tail = outputs; tail; tail = TREE_CHAIN (tail)) {
    constraint_string = TREE_STRING_POINTER (TREE_PURPOSE (tail));
    operand_constraint_array[i] = constraint_string;
    ++i;
  }
  FmtAssert(i < MAX_RECOG_OPERANDS, ("Too many asm operands"));
  for ( ; i < MAX_RECOG_OPERANDS; ++i) {
    operand_constraint_array[i] = NULL;
  }
  
  // Each occurrence of the "+" constraint modifier is converted to a
  // numeric matching constraint on a new input. In the following
  // loop, we count the number of "+" constraint modifiers so we know
  // how many inputs there will be.
  //
  // Also for the time being we discard the entire ASM construct if
  // there is a constraint we don't recognize. This is so we can
  // test-compile code containing ASM statements that apply to targets
  // we don't support. At the moment, we support only "r", "f", and
  // "m" constraints for IA-64, so those are the only ones on which we
  // don't barf. Ideally we would check with some target-specific
  // routine to see which constraints are valid, but we don't want to
  // link gccfe with targ_info or other similar stuff for now.
  for (tail = outputs;
       tail;
       tail = TREE_CHAIN (tail))
    {
      constraint_string = TREE_STRING_POINTER (TREE_PURPOSE (tail));

      if (strchr (constraint_string, '+') ||
	  constraint_by_address (constraint_string))
	{
	  ++ninputs;
	}
      if (flag_bad_asm_constraint_kills_stmt &&
	  !constraint_supported (constraint_string)) {
	DevWarn ("Unrecognized constraint %s; "
		 "asm statement at line %d discarded",
		 constraint_string, lineno);
	return;
      }
    }

  WN *asm_wn = WN_CreateAsm_Stmt (ninputs + 2,
				  TREE_STRING_POINTER (string));

  WN *clobber_block = WN_CreateBlock ();

  WN_kid0(asm_wn) = clobber_block;

  for (tail = clobbers; tail; tail = TREE_CHAIN (tail))
    {
      char *clobber_string =
	TREE_STRING_POINTER (TREE_VALUE (tail));

      WN *clobber_pragma = NULL;

      int gcc_reg = decode_reg_name(clobber_string);
      if (gcc_reg == -3)
	WN_Set_Asm_Clobbers_Cc(asm_wn);
      else if (gcc_reg == -4)
	WN_Set_Asm_Clobbers_Mem(asm_wn);
      else {
	WN *clobbered_idname = idname_from_regnum (gcc_reg);

      	if (clobbered_idname) {
	  // This is a clobbered register that can be expressed as a
	  // WHIRL dedicated PREG.

	  ST *clobber_st = New_ST(CURRENT_SYMTAB);
	  ST_Init(clobber_st,
		Str_To_Index (Save_Str (clobber_string),
			      Current_Strtab),
		CLASS_NAME,
		SCLASS_UNKNOWN,
		EXPORT_LOCAL,
		(TY_IDX) 0);

	  clobber_pragma = WN_CreateXpragma (WN_PRAGMA_ASM_CLOBBER,
			    ST_st_idx(clobber_st),
			    1);
	  WN_kid0 (clobber_pragma) = clobbered_idname;
      	}
      	else {
	  // This is a clobbered register that cannot be expressed as a
	  // WHIRL dedicated PREG. Make the "asm" volatile because it
	  // clobbers something WHIRL can't see.

	  ST *clobber_st = New_ST(CURRENT_SYMTAB);
	  ST_Init(clobber_st,
		Str_To_Index (Save_Str (clobber_string),
			      Current_Strtab),
		CLASS_NAME,
		SCLASS_UNKNOWN,
		EXPORT_LOCAL,
		(TY_IDX) 0);

	  clobber_pragma = WN_CreatePragma (WN_PRAGMA_ASM_CLOBBER,
			   ST_st_idx(clobber_st),
			   (INT32) 0,
			   (INT32) 0);

	  WN_Set_Asm_Volatile (asm_wn);
        }
      }

      if (clobber_pragma != NULL)
      	WN_INSERT_BlockAfter (clobber_block,
			    WN_last (clobber_block),
			    clobber_pragma);
    }

  WN *output_constraint_block = WN_CreateBlock ();

  WN_kid1(asm_wn) = output_constraint_block;

  i = 2;

  // Expand the by-address output operands before appending the
  // ASM_STMT node so side effects of these operands occur in the
  // right place.
  UINT32 opnd_num = 0;

  for (tail = outputs;
       tail;
       tail = TREE_CHAIN (tail))
    {
      constraint_string = TREE_STRING_POINTER (TREE_PURPOSE (tail));

      if (constraint_by_address(constraint_string)) {
	// This operand is by address, and gets represented as an
	// ASM_INPUT even though the user told us it's an output.
	WN *lhs_rvalue = WFE_Expand_Expr(TREE_OPERAND(tail, 0));
	WN *addr_of_lvalue = address_of(lhs_rvalue);
	FmtAssert(addr_of_lvalue != NULL,
		  ("WFE_Expand_Asm_Operands: output operand must be lvalue"));
	WN_kid (asm_wn, i) =
	  WN_CreateAsm_Input (constraint_string, opnd_num, addr_of_lvalue);
	++i;
      }
      ++opnd_num;
    }

  for (tail = inputs;
       tail;
       tail = TREE_CHAIN (tail))
    {
      if (TREE_PURPOSE (tail) == NULL_TREE)
	{
	  Fail_FmtAssertion ("hard register `%s' listed as "
			     "input operand to `asm'",
			     TREE_STRING_POINTER (TREE_VALUE (tail)) );
	  return;
	}

      constraint_string = TREE_STRING_POINTER (TREE_PURPOSE (tail));

      if (flag_bad_asm_constraint_kills_stmt &&
	  !constraint_supported (constraint_string)) {
	DevWarn ("Unrecognized constraint %s; "
		 "asm statement at line %d discarded",
		 constraint_string, lineno);
	return;
      }

      WN *input_rvalue = WFE_Expand_Expr (TREE_VALUE (tail));

      if (constraint_by_address(constraint_string)) {
	WN *addr_of_rvalue = address_of(input_rvalue);
	if (addr_of_rvalue != NULL) {
	  // Pass the address of the input rvalue, because the
	  // constraint says we pass the operand by its address.
	  input_rvalue = addr_of_rvalue;
	}
	else {
	  // Create a temporary to hold the value of the expression,
	  // and pass the address of that temporary.
	  ST *temp_st = st_of_new_temp_for_expr(input_rvalue);
	  WN *store_wn = WN_Stid(WN_rtype(input_rvalue),
				 (WN_OFFSET) 0,
				 temp_st,
				 // We may want to get high-level type
				 // of the RHS in the cases where that
				 // information exists, but for now,
				 // just put the low-level type on the
				 // store.
				 MTYPE_To_TY(WN_rtype(input_rvalue)),
				 input_rvalue);
	  WFE_Stmt_Append (store_wn, Get_Srcpos ());
	  input_rvalue = WN_Lda (Pointer_Mtype,
				 (WN_OFFSET) 0,
				 temp_st,
				 (UINT) 0);
	}
      }

      WN_kid (asm_wn, i) =
	WN_CreateAsm_Input (constraint_string, opnd_num, input_rvalue);
      ++i;
      ++opnd_num;
    }

  // Is Get_Srcpos the right thing to use?
  WFE_Stmt_Append (asm_wn, Get_Srcpos ());

  // Side effects of copy-out operands occur after the asm. Kind of
  // weird, but that's what GCC does.
  opnd_num = 0;
  for (tail = outputs;
       tail;
       tail = TREE_CHAIN (tail), ++opnd_num)
    {
      constraint_string = TREE_STRING_POINTER (TREE_PURPOSE (tail));

      if (!constraint_by_address(constraint_string)) {
	// This operand is copy-in/copy-out.

	BOOL plus_modifier = (strchr (constraint_string, '+') != NULL);

	char input_opnd_constraint[8];

	if (plus_modifier)
	  {
	    // de-plus the output operand's constraint string.
	    constraint_string = remove_plus_modifier(constraint_string);

	    // Make up a numeric matching constraint string for the
	    // input operand we're going to add.
	    sprintf(input_opnd_constraint, "%d", opnd_num);
	  }

	WN *output_rvalue_wn = WFE_Lhs_Of_Modify_Expr (MODIFY_EXPR,
						       TREE_VALUE (tail),
						       plus_modifier,
						       (TY_IDX) 0, // component type
						       (INT64) 0,  // component offset
						       (UINT32) 0, // field ID
						       FALSE,      // is bit field?
						       NULL,       // dummy rhs kid
						       asm_neg_preg, // preg num
						       FALSE,      // is realpart
						       FALSE);     // is imagpart

	if (plus_modifier)
	  {
	    WN_kid (asm_wn, i) =
	      WN_CreateAsm_Input (input_opnd_constraint,
				  opnd_num,
				  output_rvalue_wn);
	    ++i;
	  }

	// Compute the ST used as the base for the negative PREG
	// reference in the output operand. This duplicates work done in
	// WFE_Lhs_Of_Modify_Expr.
	TYPE_ID desc = TY_mtype (Get_TY (TREE_TYPE (TREE_VALUE (tail))));
	ST *preg_st = MTYPE_To_PREG(desc);

	ST *constraint_st = New_ST(CURRENT_SYMTAB);
	ST_Init(constraint_st,
		Str_To_Index (Save_Str (constraint_string),
			      Current_Strtab),
		CLASS_NAME,
		SCLASS_UNKNOWN,
		EXPORT_LOCAL,
		(TY_IDX) 0);

	WN *constraint_pragma =
	  WN_CreatePragma (WN_PRAGMA_ASM_CONSTRAINT,
			   (ST_IDX) ST_st_idx(preg_st),
			   (INT32) ST_st_idx(constraint_st),
			   asm_neg_preg,
			   opnd_num);

	WN_INSERT_BlockAfter (output_constraint_block,
			      WN_last (output_constraint_block),
			      constraint_pragma);
	--asm_neg_preg;
      }
    }

  if (vol)
    {
      WN_Set_Asm_Volatile (asm_wn);
    }
}

void
WFE_Check_Undefined_Labels (void)
{
  INT32 i;
  for (i = undefined_labels_i; i >= 0; --i) {
    LABEL_IDX  label_idx  = undefined_labels_stack [undefined_labels_i].label_idx;
    SYMTAB_IDX symtab_idx = undefined_labels_stack [undefined_labels_i].symtab_idx;
//  fprintf (stderr, "WFE_Check_Undefined_Labels: %d idx = %8x [%d]\n", i, label_idx, symtab_idx);
    if (symtab_idx < CURRENT_SYMTAB)
      break;
    FmtAssert (undefined_labels_stack [undefined_labels_i].defined,
               ("label not defined within current function scope"));
  }
  undefined_labels_i = i;
} /* WFE_Check_Undefined_Labels */
