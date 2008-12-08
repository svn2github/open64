/*
 * Copyright 2003, 2004, 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

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
 * Module: ipl_summary_print.cxx
 * $Source: /proj/osprey/CVS/open64/osprey1.0/ipa/local/ipl_summary_print.cxx,v $
 *
 * Description:
 *    all the print functions for summary info.
 *
 * ====================================================================
 * ====================================================================
 */

#define __STDC_LIMIT_MACROS
#include <stdint.h>
#if defined(BUILD_OS_DARWIN)
#include <darwin_elf.h>                // ipl_summary.h needs it
#else /* defined(BUILD_OS_DARWIN) */
#include <elf.h>                // ipl_summary.h needs it
#endif /* defined(BUILD_OS_DARWIN) */

#if 0 // SC
#include "defs.h"
#else
#include "workaround.h"
#endif
#if 0 // SC
#include "strtab.h"             // Current_Strtab
#endif
#include "ipl_summary.h"        // SUMMARY_* classes
#if 0 // SC
#include "ipc_symtab_merge.h"   // IPC_GLOBAL_IDX_MAP
#include "ipl_tlog.h"
#endif // SC


SUMMARY_SYMBOL *Ipl_Summary_Symbol;
const INT MODREF_MAX_STRING_LENGTH = 1000;
char    Modref_Buf[MODREF_MAX_STRING_LENGTH];
BOOL    IPA_Trace_Mod_Ref = FALSE;  /* Trace log for Mod_Ref */                


// SUMMARY_PROCEDURE:  Print / Trace
typedef enum {
  MAY_INLINE = 0,
  MUST_INLINE =   1,
  NO_INLINE =     2,
  VARARG =        3,
  ALTENTRY =      4,
  HAS_ALTENTRY=   5,
  HAS_PSTATIC =   6,
  DIRC_MODREF =   7,
  IS_EXCP_INL =   8,
  NO_DEL =        9,
  BLK_DATA =     10,
  ADDR_TAKEN_RS= 11,  // has address taken reset
  PU_FREQ_RS   = 12,
  PARA_PRAG =    13,
  PARA_RG_PRAG = 14,
  FSTATIC =      15,
  UNK_CALLS =    16,
  MP_NEED_LNO =  17,
  SID_EF_PRAG =  18, // has side-effect pragma
  MESSY_RGN  =   19,
  UNSTRUC_FLW =  20, // unstructured cflow
  FORML_PRAG =   21,
  FLAGS_SHIFT_MAX = 31,
} PROC_FLAG_BITS;

void
SUMMARY_PROCEDURE::Print (FILE *fp, INT32 id) const
{
    INT flags = 0;
    fprintf (fp, "[%6d] %6d %6d %08x %3d %6d  %4d  %4d  %4d %4d ", id, Get_bb_count(), Get_stmt_count(), Get_state(),
         Get_formal_count(), Get_global_count(), Get_callsite_count(),Get_ctrl_dep_count(),Get_ex_value_count(),Get_ex_expr_count()); 

#if 0 // SC
, Get_array_section_count(), Get_array_section_index()); 
#endif 

    if ( Is_may_inline() )
      flags |= (1<<MAY_INLINE);

    if ( Is_must_inline() )
      flags |= (1<<MUST_INLINE);

    if ( Is_no_inline() )
      flags |= (1<<NO_INLINE);

    if ( Is_varargs() )
      flags |= (1<<VARARG);

    if ( Is_alt_entry() )
      flags |= (1<<ALTENTRY);

    if ( Has_alt_entry() )
      flags |= (1<<HAS_ALTENTRY);

    if ( Has_pstatic() )
      flags |= (1<<HAS_PSTATIC);

    if (Is_direct_mod_ref() )
      flags |= (1<<DIRC_MODREF);

    if (Is_exc_inline() )
      flags |= (1<<IS_EXCP_INL);

    if (Is_no_delete() )
      flags |= (1<<NO_DEL);

    if (Is_block_data() )
      flags |= (1<<BLK_DATA);

    if (Has_addr_taken_reset() )
      flags |= (1<<ADDR_TAKEN_RS);

    if (Has_PU_freq() )
      flags |= (1<<PU_FREQ_RS);

    if (Has_formal_pragma() )
      flags |= (1<<FORML_PRAG);

    if (Has_parallel_pragma() )
      flags |= (1<<PARA_PRAG);

    if (Has_parallel_region_pragma() )
      flags |= (1<<PARA_RG_PRAG);

    if (Has_fstatic() )
      flags |= (1<<FSTATIC);

    if (Has_unknown_calls() )
      flags |= (1<<UNK_CALLS);

#if 0 // SC
    if (Has_incomplete_array_info () )
      fputs (", incomplete array info", fp);
#endif

    if (Has_mp_needs_lno() )
      flags |= (1<<MP_NEED_LNO);

#ifdef KEY
    if (Has_pragma_side_effect() )
#else
    if (Has_side_effect() )
#endif
      flags |= (1<<SID_EF_PRAG);

    if (Has_messy_regions() )
      flags |= (1<<MESSY_RGN);

    if (Has_unstructured_cflow())
      flags |= (1<<UNSTRUC_FLW);

    fprintf( fp, "%8x\n", flags);
    fprintf ( fp, "                      --      %5d  %5d %5d %5d %5d%5d ",
         Get_formal_index(), Get_global_index(), Get_callsite_index(), Get_ctrl_dep_index(),Get_ex_value_index(), Get_ex_expr_index() );

#if 0 // SC
    fprintf ( fp, "\n\t\t%d common_count (%d) feedback (%d)\n\t\t",
         Get_common_count(), Get_common_index(), Get_feedback_index());
#endif

    if ( Ipl_Summary_Symbol ) {
    Ipl_Summary_Symbol[Get_symbol_index()].Print (fp);
    }
    fprintf( fp, "\n");
} // SUMMARY_PROCEDURE::Print


void

#if 1 // SC
#define TFile stdout
#endif

SUMMARY_PROCEDURE::Trace ( INT32 id ) const
{
    Print ( TFile, id );
}

void 
SUMMARY_PROCEDURE::Print_array (FILE* fp, INT32 size ) const
{
    INT i;
    fprintf(fp, "%s %s\n", SBar, "(Procedures)");
    fprintf ( fp, "    Proc bb_cnt  stmts    state fml  glbls  call  cdep   val expr    Flags\n       Indices:-\n");
    for ( i=0; i<size; ++i )
    this[i].Print ( fp, i );
}


void
SUMMARY_PROCEDURE::Trace_array ( INT32 size ) const
{
    Print_array ( TFile, size );
}



void
SUMMARY_FEEDBACK::Print (FILE *f) const
{
#if 0 // SC
    fprintf (f, "cycle = ");
    Get_cycle_count().Print(f);
    fprintf (f, ", freq. = ");
    Get_frequency_count().Print(f);
    fprintf (f, ", bb_count = %d, stmt_count = %d\n",
         Get_effective_bb_count (), Get_effective_stmt_count ());
#else
    fprintf(f,"NYI\n");
#endif
} // SUMMARY_FEEDBACK::Print


void
SUMMARY_FEEDBACK::Print_array (FILE *f, INT32 size) const
{
    fprintf (f, "%sStart feedback array\n%s", SBar, SBar);
    for (INT i = 0; i < size; i++) {
    fprintf (f, "FEEDBACK[%d]: ", i);
    this[i].Print (f);
    }
    fprintf (f, "%sEnd feedback array\n%s", SBar, SBar );
    
} // SUMMARY_FEEDBACK::Print_array 

// ====================================================================
//
// SUMMARY_CALLSITE:: Print / Trace
//
// Trace a callsite node.
//
// ====================================================================

void
SUMMARY_CALLSITE::Print (FILE* f) const
{
    fprintf (f, "%6d  %6d %6d %s",
         Get_param_count(), Get_actual_index(),
         Get_map_id(), Is_func_ptr() ? ", FPTR" : "" );

    if (Is_must_inline())
    fputs ("pragma inline \n", f);
    if (Is_no_inline())
    fputs ("pragma no inline \n", f);
    if (Is_intrinsic ()) {
    fputs (", intrinsic\n", f);
    } else if (Is_func_ptr ())
    fprintf (f, ": VALUE[%d]\n", Get_value_index ());
    else {
    fputs (": ", f);
    Ipl_Summary_Symbol[Get_symbol_index()].Print (f);
    }
}

// ====================================================================

void
SUMMARY_CALLSITE::Trace () const
{
    Print ( TFile );
}

// ====================================================================
//
// SUMMARY_CALLSITE:: Print_array / Trace_array
//
// Trace the array of callsite nodes starting with this of the given
// length.
//
// ====================================================================

void
SUMMARY_CALLSITE::Print_array (FILE* f, INT32 size) const
{
    INT i;

    fprintf(f, "%s (%s)\n", SBar, "CallSites");
    fprintf(f, "Callsite  Actuals  Map_id   Type\n");

    for ( i=0; i<size; ++i ) {
    fprintf ( f, "[%6d]   ", i );
    this[i].Print ( f );
    }
}

// ====================================================================

void
SUMMARY_CALLSITE::Trace_array ( INT32 size ) const
{
    Print_array ( TFile, size );
}



//-----------------------------------------------------------
// Trace formal nodes
//-----------------------------------------------------------

void
SUMMARY_FORMAL::Print ( FILE* fp ) const
{
    fprintf ( fp, "%3d  ", Get_position() );
    fprintf ( fp, "%3d ", Get_region_index());
    fprintf ( fp, "%08x ", Get_ty());
#if 0 // SC
    fprintf ( fp, "MTYPE(%s) ", MTYPE_name(Get_machine_type()));
#else
    fprintf ( fp, "MTYPE(%s) ", "SL");
#endif
    if (Is_ref_parm ())
    fputs ("byRef ", fp);
    if (Is_var_dim_array ())
    fputs ("varDimAry ", fp);
    Ipl_Summary_Symbol[Get_symbol_index()].Print (fp);
}

//-----------------------------------------------------------

void
SUMMARY_FORMAL::Trace ( void ) const
{
    Print ( TFile );
}

//-----------------------------------------------------------

void
SUMMARY_FORMAL::Print_array (FILE* fp, INT32 size) const
{
    INT i;
    fprintf(fp, "%s (%s)\n",SBar, "Formals");
    fprintf(fp, " Formal  Pos  Rid    TyIdx   Type\n");
    for ( i=0; i<size; ++i ) {
    fprintf ( fp, "[%5d]  ", i );
    this[i].Print ( fp );
  }

}

//-----------------------------------------------------------

void
SUMMARY_FORMAL::Trace_array ( INT32 size ) const
{
    Print_array ( TFile, size );
}


const char *
SUMMARY_ACTUAL::Pass_type_name (void) const
{
    switch (Get_pass_type()) {
    case PASS_UNKNOWN:
    return "Unk";
    case PASS_LDID:
    return "Ldid";
    case PASS_LOAD:
    return "Load";
    case PASS_MLOAD:
    return "Mload";
    case PASS_LDA:
    return "Lda";
    case PASS_ARRAY_SECTION:
        return "Ary_Scn"; 
    }
    return 0;
} // SUMMARY_ACTUAL::Pass_type_name


void
SUMMARY_ACTUAL::Print (FILE *f, INT32 id) const
{
    fprintf (f, "[%6d]: ", id);
#if 0
    if (Get_symbol_index () != -1)
    Ipl_Summary_Symbol[Get_symbol_index()].Print (f);
#endif

    fprintf (f, "%06x ", Get_ty());

#if 0 // SC
    if (Get_pass_type() == PASS_ARRAY_SECTION)
      fprintf (f, " Section Idx =  %d", Get_index());
    else
#endif

      fprintf (f, "  %5d ", Get_index());
    fprintf (f, " %5d ", Get_value_index ());
    INT tmp = Is_value_parm() ? 1 : 0;
    fprintf (f, " %2d", tmp);
    const char *p = Pass_type_name ();
    if (p)
    fprintf (f, " %s\n", p);
    else
    fprintf (f, " PASS_%d\n", Get_pass_type());

    
} // SUMMARY_ACTUAL::Print

void
SUMMARY_ACTUAL::Print_array (FILE *f, INT32 size) const
{
    fprintf(f, "%s (%s)\n", SBar, "Actuals");
    fprintf(f, "   Actual  TyIdx SclrIdx ValIdx ByV PassTyp\n");
    for (INT i = 0; i < size; i++)
    this[i].Print (f, i);
    
} // SUMMARY_ACTUAL::Print_array



const char *
SUMMARY_VALUE::Const_type_name (void) const
{
    switch (Get_const_type()) {
    case VALUE_UNKNOWN:
    return "Unk   ";
    case VALUE_INT_CONST:
    return "Int_C ";
    case VALUE_TWO_CONSTS:
    return "2_Cs ";
    case VALUE_CONST:
    return "Const ";
    case VALUE_FORMAL:
    return "Formal";
    case VALUE_GLOBAL:
    return "Global";
    case VALUE_SYMBOL:
    return "Symbol";
    case VALUE_EXPR:
    return "Expr  ";
    case VALUE_PHI:
    return "Phi   ";
    case VALUE_CHI:
    return "Chi   ";
    case VALUE_NOT_CONST:
    return "Not_C ";
    }
    return 0;
} // SUMMARY_VALUE::Const_type_name


void
SUMMARY_VALUE::Print_const_value (FILE *f, const SUMMARY_SYMBOL* symbol) const
{ 
    if (Is_addr_of ()) {
    if (!Is_convertible_to_global ())
        fputs ("stack ", f);
    fputs ("Addr of ", f);
    }
    
    switch (Get_const_type()) {

    case VALUE_UNKNOWN:
    fputs ("*UNKNOWN*", f);
    return;

    case VALUE_INT_CONST:
    fprintf (f, "%lld", Get_int_const_value ());
    return;

    case VALUE_TWO_CONSTS:
    fprintf (f, "0x%x or 0x%x", Get_first_of_two_values(),
         Get_second_of_two_values());
    return;

    case VALUE_CONST:
    {
#if 0 // SC
            const ST& st = St_Table[Get_const_st_idx ()];
        if (ST_sym_class (st) == CLASS_CONST)
        fputs (Targ_Print (NULL, Tcon_Table[ST_tcon (st)]), f);
        else {
        fprintf (f, "GLOBAL %s", ST_name (st));
        }
#else
    fprintf(f, "VALUE CONST: NYI\n");
#endif // SC
    }
    return;

    case VALUE_FORMAL:
    fprintf (f, "ValF[%d]", Get_formal_index());
    return;

    case VALUE_GLOBAL:
    fputs ("GLOBAL ", f);
        if (Is_global_st_idx()) { 
      fprintf(f, "ST_IDX = %d", Get_global_st_idx ());
        } else { 
      if (symbol)
          symbol[Get_global_index()].Print (f);
      else {
          if (Get_global_index () != -1)
          fprintf (f, "index = %d", Get_global_index ());
          else
          fprintf (f, "ST_IDX = 0x%x", Get_global_st_idx ());
      }
        } 
    return;

    case VALUE_SYMBOL:
    if (symbol)
        symbol[Get_symbol_index()].Print (f);
    else
        fprintf (f, "Symbol index = %d", Get_symbol_index ());
    return;

    case VALUE_EXPR:
    fprintf (f, "ValE[%d]", Get_expr_index());
    return;

    case VALUE_PHI:
    fprintf (f, "ValP[%d]", Get_phi_index());
    return;

    case VALUE_CHI:
    fprintf (f, "ValC[%d]", Get_chi_index ());
    return;
    
    case VALUE_NOT_CONST:
    fputc ('?', f);
    return;

    }
    
    fputs ("*print function missing*", f);
    
} // SUMMARY_VALUE::Print_const_value


void
SUMMARY_VALUE::Print (FILE *f, INT32 id) const
{
    const char *p;
    
    fprintf (f, "[%5d] ", id);
    p = Const_type_name ();
    if (p)
    fprintf (f, "%s ", p);
    else
    fprintf (f, "Const_%3d ", Get_const_type());

#if 0 // SC
    fprintf (f, "type = %s, ", Get_mtype() == MTYPE_UNKNOWN ? "?" :
         MTYPE_name (Get_mtype()));
    if (Is_addr_of ()) 
    fprintf (f, "target type = %s, ", Target_mtype() == MTYPE_UNKNOWN ?
         "?" : MTYPE_name (Target_mtype()));
#else
    fprintf (f, "%s, ", "Mtyp_name NYI");
    if (Is_addr_of ()) 
      fprintf (f, "@%s, ","Mtyp_name NYI");
#endif
    fputs (" ", f);
    

    Print_const_value (f, Ipl_Summary_Symbol);

    fputc ('\n', f);
    
} // SUMMARY_VALUE::Print


void
SUMMARY_VALUE::Print_array (FILE *f, INT32 size) const
{
    fprintf(f, "%s (%s)\n",SBar,"Value"); 
    fprintf(f, " Val_Id   Type      Value \n");
    for (INT i = 0; i < size; i++)
    this[i].Print (f, i);
} // SUMMARY_VALUE::Print_array


void
SUMMARY_CHI::Print (FILE *f) const
{
    fprintf (f, " %5d  ", Get_call_index ());

    switch (_type) {
    case CHI_VALUE:
    fprintf (f, "V[%5d] ", Get_node_index ());
    break;
    case CHI_PHI:
    fprintf (f, "P[%5d] ", Get_node_index ());
    break;
    case CHI_EXPR:
    fprintf (f, "E[%5d] ", Get_node_index ());
    break;
    case CHI_CHI:
    fprintf (f, "C[%5d] ", Get_node_index ());
    break;
    }

    if (_symbol_index != -1)
    Ipl_Summary_Symbol[_symbol_index].Print (f);
    else
    fputc ('\n', f);
      
} // SUMMARY_CHI::Print_node


void
SUMMARY_CHI::Print_array (FILE *f, INT32 size) const
{
  fprintf(f, "%s (%s)\n", SBar,"Chi's");
  fprintf(f, "    Chi Callsite   Value\n");
    for (INT i = 0; i < size; i++) {
    fprintf (f, "[%5d]   ", i);
    this[i].Print (f);
    }

} // SUMMARY_CHI::Print_array

void
SUMMARY_EXPR::Print_node (FILE *f, INT kid) const
{
    if (Is_expr_value (kid))
    fprintf (f, " V[%5d]", Get_node_index (kid));
    else if (Is_expr_phi (kid))
    fprintf (f, " P[%5d]", Get_node_index (kid));
    else if (Is_expr_expr (kid))
    fprintf (f, " E[%5d]", Get_node_index (kid));
    else if (Is_expr_chi (kid))
    fprintf (f, " C[%5d]", Get_node_index (kid));

} // SUMMARY_EXPR::Print_node


void
SUMMARY_EXPR::Print (FILE *f) const
{
    if (Is_expr_unknown ()) {
    fputs ("unknown\n", f);
    return;
    }

    if (Has_const_operand ()) {
    if (Get_kid () == 0) {
        Print_node (f);
        if (OPCODE_nkids (Get_opcode ()) == 2)
        fprintf (f, " 0x%llx", Get_const_value ());
    } else {
        fprintf (f, " 0x%llx", Get_const_value ());
        Print_node (f);
    }
    } else {
    // both operands are not constant
    Print_node (f, 0);
    Print_node (f, 1);
    }

    fprintf (f, "%s ", Get_mtype () == MTYPE_UNKNOWN ?
#if 0 // SC
         "?" : MTYPE_name (Get_mtype ()));
#else
         "?" : " MTY_name NYI");
#endif

    fputs (Get_opcode() == OPCODE_UNKNOWN 
#if 0 // SC
    ? "<UNKNOWN>" : OPCODE_name (Get_opcode ()), f);
#else
    ? "<UNKNOWN>" : " OPC_name NYI", f);
#endif

    if (Is_trip_count())
      fprintf(f, " <TRIP COUNT> ");

  fprintf(f, "\n");

} // SUMMARY_EXPR::Print


void
SUMMARY_EXPR::Print_array (FILE *f, INT32 size) const
{
  fprintf(f, "%s (%s)\n", SBar, "Exprs");
  fprintf(f, "     Expr   Val/Expr Val/Expr      Rettyp      OperInfo\n");
    for (INT i = 0; i < size; i++) {
    fprintf (f, "  [%5d]: ", i);
    this[i].Print (f);
    }
    
} // SUMMARY_EXPR::Print_array

// print functions for SUMMARY_PHI
void
SUMMARY_PHI::Print (FILE *f) const
{
    for (INT i = 0; i < 2; i++) {
    switch (kids[i]._type) {
    case PHI_UNKNOWN:
        fprintf (f, "UNKNOWN ");
        break;
    case PHI_VALUE:
        fprintf (f, "V[%5d] ", Get_node_index (i));
        break;
    case PHI_EXPR:
        fprintf (f, "E[%5d] ", Get_node_index (i));
        break;
    case PHI_PHI:
        fprintf (f, "PHI[%d] ", Get_node_index (i));
        break;
    case PHI_CHI:
        fprintf (f, "CHI[%d] ", Get_node_index (i));
        break;
    }

    fprintf (f, "(if CTRL_DEP[%d] is %s) ", Get_ctrl_dep_index (i),
         Get_branch (i) ? "true" : "false");
    }

    fputc ('\n', f);
    
} // SUMMARY_PHI::Print


void
SUMMARY_PHI::Print_array (FILE *f, INT32 size) const
{
    fprintf (f, "%sStart phi array\n%s", SBar, SBar);
    for (INT i = 0; i < size; i++) {
    fprintf (f, "PHI[%d]: ", i);
    this[i].Print (f);
    }
    fprintf (f, "%sEnd phi array\n%s", SBar, SBar );
    
} // SUMMARY_PHI::Print_array

// print functions for SUMMARY_STMT

void
SUMMARY_STMT::Print (FILE *f) const
{
    switch (_stmt_type) {
    case STMT_EXPR:
    fprintf (f, "E[%9d]", Get_expr_index ());
    break;
    case STMT_VAR:
    fprintf(f, "S_Var   ");
    Ipl_Summary_Symbol[Get_var_index()].Print (f);
    break;
    case STMT_CALL:
    fprintf (f, "CaSite[%4d]", Get_call_index ());
    break;
    case STMT_CD:
    fprintf (f, "C-Dep[%5d]", Get_cond_index ());
    break;
    case STMT_ARRAY_REF:
    fprintf (f, "Ary M_id %3d", Get_array_ref_map_id ());
    break;
    case STMT_STID:
    fprintf (f, "GlbSt[%5d]", Get_stid_index());
    break;
      default:
    fprintf(f, "UNK         ");
    break;
      }
} // SUMMARY_STMT::Print


void
SUMMARY_STMT::Print_array (FILE *f, INT32 size) const
{
  fprintf(f, "%s (%s)\n", SBar, "Stmts");
  fprintf(f, "   Stmt          Type      Stmt        Type\n");
    for (INT i = 0; i < size; i++) {
    fprintf (f, "[%5d]  ", i);
    this[i].Print (f);
    if ((i%2) == 1) {
      i++;
      fprintf (f, "  [%5d]  ", i);
      this[i].Print (f);
    }
    fprintf(f, "\n");
    }

} // SUMMARY_STMT::Print_array



// print functions for summary_control_dependence
void
SUMMARY_CONTROL_DEPENDENCE::Print (FILE *f) const
{
    INT i;

    if (Is_entry ()) {
    fprintf (f, "Entry pt:\n");
    fprintf (f, "            Stmts, count %d: ", Get_true_count ());
    } if (Is_if_stmt ()) {
    fprintf (f, "If: map_id = %d, E[%d]\n", Get_map_id (),
         Get_expr_index ());
    fprintf (f, "            True stmts, count %d: ", Get_true_count ());
    } else if (Is_do_loop ()) {
    fprintf (f, "Do[%4d]: map_id %d\n", Get_do_loop_index (),
         Get_map_id ());
    fprintf (f, "        Loop Stmts, count %d: ", Get_true_count ());
    }

    for (i = Get_true_stmt_index ();
     i < Get_true_stmt_index () + Get_true_count ();
     i++)

    fprintf (f, "S[%d] ", i);
    fputc ('\n', f);

    if (Is_if_stmt ()) {
    fprintf (f, "            False stmts, count %d: ", Get_false_count ());

    for (i = Get_false_stmt_index ();
         i < Get_false_stmt_index () + Get_false_count ();
         i++)
        
        fprintf (f, "S[%d] ", i);

    fputc ('\n', f);
    }

} // SUMMARY_CONTROL_DEPENDENCE::Print

void
SUMMARY_CONTROL_DEPENDENCE::Print_array (FILE *f, INT32 size) const
{
  fprintf(f, "%s (%s)\n", SBar, "Control-Dep");
  fprintf(f, "Ctrl-Dep      Type \n");
    for (INT i = 0; i < size; i++) {
    fprintf (f, " [%5d]: ", i);
    this[i].Print (f);
    }
    
} // SUMMARY_CONTROL_DEPENDENCE::Print_array 

// ====================================================================
// ====================================================================
//
// SUMMARY_SYMBOL::Get_Name
//
// Get the name of a symbol.
//
// WARNING:  NULL is returned for constants or the situations described
// below.
//
// WARNING:  The globals Ipl_Summary_Symbol and Current_Strtab must
// be set to the appropriate symbol summary and string table for this
// to produce a valid name.
//
// ====================================================================
// ====================================================================

const char *
SUMMARY_SYMBOL::Get_Name ( void ) const
{
#if 0 // SC
    // Sort out impossible situations:
    if (Ipl_Summary_Symbol == NULL)
    return "";
    return ST_name (St_idx ());
#else
    printf("Summary_sym::get_name NYI ");
    return "";
#endif
}
// ====================================================================
// ====================================================================
//
// SUMMARY_SYMBOL::Print
// SUMMARY_SYMBOL::Trace
// SUMMARY_SYMBOL::Print_array
// SUMMARY_SYMBOL::Trace_array
//
// Trace information in one or more symbol.
//
// WARNING:  The globals Ipl_Summary_Symbol and Current_Strtab must
// be set to the appropriate symbol summary and string table for these
// to work.
//
// ====================================================================
// ====================================================================

void
SUMMARY_SYMBOL::Print(FILE *fp, 
              INT idx,
              char* symbol_name,
              char* function_name) const
{
  INT32 id = -1;

#if 0 // SC
  // Attempt to determine the index, and print it:
  if ((Ipl_Summary_Symbol != NULL ) && (idx == -1)) {
      id = this - Ipl_Summary_Symbol;
  }

  if (idx == -1)
    fprintf ( fp, "SYMBOL[%d] ", id );
  else 
    fprintf( fp, "SYMBOL[F%d] ", Get_findex());

  INT ss = 0; 
  if (symbol_name != NULL && function_name != NULL) { 
    ss = sprintf(Modref_Buf, " \"%s\":\"%s\"", symbol_name, function_name);
  } else if (ST_IDX_level(St_idx()) == GLOBAL_SYMTAB) {
    ss = sprintf(Modref_Buf, " \"%s\"", ST_name(St_idx()));
  } 
  sprintf(&Modref_Buf[ss], 
    " type = %s, %sLOCAL, %sSTATIC, %sPASSED(common), %s",
    Get_btype () == MTYPE_UNKNOWN ? "?" : MTYPE_name (Get_btype()),
    Is_local() ? "" : "non-",                      
    Is_static() ? "" : "non-",
    Is_parm() ? "" : "not " ,
    Is_common() ? "COMMON, ": "");
  fprintf (fp, "%s", Modref_Buf);
#else
  INT ss = 0;
  sprintf(&Modref_Buf[ss], "Symbol_print NYI ");
#endif // SC

  if ( IPA_Trace_Mod_Ref ) {
#if 0 // SC
    Ipl_record_tlog("MOD_REF", 0, "%s", Modref_Buf);
#else
    printf("SYMBOL_Print NYI\n");
#endif
  }

  INT32 cc = 0;
  if (Is_common_block()) {   
      fputs (" Cblk", fp);  
      cc += sprintf(Modref_Buf + cc," Cblk");
  }
  if (Is_function()) {   
      fputs (" Func", fp);  
      cc += sprintf(Modref_Buf + cc," Func");
  }
  if (Is_imod()) {   
      fputs (" IMod", fp);  
      cc += sprintf(Modref_Buf + cc," IMod");
  }
  if (Is_dmod()) {    
      fputs (" DMod", fp);  
      cc += sprintf(Modref_Buf + cc," DMod");
  }
  if (Is_iref()) {    
      fputs (" IRef", fp);  
      cc += sprintf(Modref_Buf + cc," IRef");
  }
  if (Is_dref()) {    
      fputs (" DRef", fp);  
      cc += sprintf(Modref_Buf + cc," DRef");
  }
  if (Is_ikill()) {    
      fputs (" IKill", fp); 
      cc += sprintf(Modref_Buf + cc," IKill");
  }
  if (Is_dkill()) {    
      fputs (" DKill", fp); 
      cc += sprintf(Modref_Buf + cc," DKill");
  }
  if (Is_parm()) {    
      fputs (" Parm", fp);  
      cc += sprintf(Modref_Buf + cc," Parm");
  }

  if (Is_formal()) {
      cc += sprintf (Modref_Buf+cc, " Formal[%d]", Get_findex ());
      fprintf (fp, " Formal[%d]", Get_findex ());
  }
  if (Is_cref()) {    
     fputs (" CRef", fp);
      cc += sprintf(Modref_Buf+cc, " CRef");
  }
  if (Is_cdref_preg_only() ) {
      fputs (" CDrefPregOnly",fp);
      cc += sprintf(Modref_Buf+cc, " CDrefPregOnly");
  }
  if (Is_addr_saved() || Is_addr_f90_target() || Is_addr_passed()) {
      const char *sep = "";
      fputs (" Addr_taken_and", fp );
      cc += sprintf( Modref_Buf+cc, " Addr_taken_and ");
      if (Is_addr_saved()) {
      fprintf ( fp, "%sSaved", sep );
          cc += sprintf( Modref_Buf+cc, "%sSaved", sep);
      sep = "|";
      }
      if (Is_addr_f90_target()) {
      fprintf ( fp, "%sIS_F90_TARGET", sep );
          cc += sprintf( Modref_Buf+cc, "%sIS_F90_TARGET", sep);
      sep = "|";
      }
      if (Is_addr_passed()) {
      fprintf ( fp, "%sPassed", sep );
          cc += sprintf( Modref_Buf+cc, "%sPassed", sep);
      }
  }
  if (Used_in_array_section()) {
      fputs(" USED_IN_ARRAY_SECTION", fp);
      cc += sprintf( Modref_Buf+cc, " USED_IN_ARRAY_SECTION" );
      }
  if (Common_io_no_pad()) {
      fputs(" I/O", fp);
      cc += sprintf( Modref_Buf+cc, " I/O:NoPad" );
      }
  if (Common_read_no_cprop()) {
      fputs(" I/O", fp);
      cc += sprintf( Modref_Buf+cc, " NoCprop" );
      }
  fputc ('\n', fp );
      if ( IPA_Trace_Mod_Ref )
#if 0 // SC
      Ipl_record_tlog("MOD_REF", 0, "%s", Modref_Buf);
#else
    printf("SYMBOL_Print end NYI\n");
      
#endif
}

// ====================================================================

void
SUMMARY_SYMBOL::Trace () const
{
    Print ( TFile );
}

// ====================================================================
// Trace an array of symbol offset nodes.
// ====================================================================

void
SUMMARY_SYMBOL::Print_array (FILE* fp, INT32 size, 
                 DYN_ARRAY<char*>* symbol_names, 
                 DYN_ARRAY<char*>* function_names) const
{
    INT32 i;

    fprintf ( fp, "%sStart symbol array\n%s", SBar, SBar );
    for ( i = 0; i< size; ++i ) {
    this[i].Print ( fp, 
                        -1, 
                        symbol_names ? (*symbol_names)[i] : NULL, 
                        function_names ? (*function_names)[i] : NULL);
    }
    fprintf ( fp, "%sEnd symbol array\n%s", SBar, SBar );
}

// ====================================================================

void
SUMMARY_SYMBOL::Trace_array ( INT32 size ) const
{
    Print_array ( TFile, size );
}



//-----------------------------------------------------------
// Trace one entry of the global offset node
//-----------------------------------------------------------

void
SUMMARY_GLOBAL::Print ( FILE *fp ) const
{
    SUMMARY_SYMBOL *sym = &(Ipl_Summary_Symbol[Get_symbol_index()]);
    
    fprintf ( fp, "%5d %5d  ", Get_refcount(), Get_modcount());

    if ( Is_imod() )    fprintf ( fp, " Imod ");
    if ( Is_dmod() )    fprintf ( fp, " Dmod ");
    if ( Is_iref() )    fprintf ( fp, " Iref ");
    if ( Is_dref() )    fprintf ( fp, " Dref ");
    if ( Is_aref() )    fprintf ( fp, " Aref ");
    if ( Is_ikill() )    fprintf ( fp, " Ikill ");
    if ( Is_dkill() )    fprintf ( fp, " Dkill");
    if ( sym->Is_cref() )    fprintf ( fp, " Cref ");
    if ( sym->Is_cmod() )    fprintf ( fp, " Cmod ");
    fprintf( fp, "  %s", sym->Get_Name() );

    fprintf ( fp, "\n" );
}

//-----------------------------------------------------------

void
SUMMARY_GLOBAL::Trace ( void ) const
{
  Print ( TFile );
}

//-----------------------------------------------------------
// Trace the global offset node array
//-----------------------------------------------------------

void
SUMMARY_GLOBAL::Print_array (FILE* fp, INT32 size ) const
{
    INT i;

    fprintf ( fp, "%s (%s)\n", SBar, "Globals" );
    fprintf ( fp, " Global   Refs  Mods  Types and Name\n" );
    for ( i = 0; i< size; ++i ) {
    fprintf ( fp, "[%5d]: ", i );
    this[i].Print ( fp );
    }
}

//-----------------------------------------------------------

void
SUMMARY_GLOBAL::Trace_array ( INT32 size ) const
{
    Print_array ( TFile, size );
}




//-----------------------------------------------------------
// Trace the summary common array
//-----------------------------------------------------------
void
SUMMARY_COMMON::Print ( FILE *fp, INT32 id ) const
{
    fprintf ( fp, "COMMON[%d]:  ", id );

    if ( Is_initialized() )
    fprintf ( fp, ", initialized" );

    if ( Has_bad_equiv() )
    fprintf ( fp, ", bad equivalence " );

    if ( Has_bad_split_equiv() )
    fprintf ( fp, ", bad split equivalence " );
    else
    fprintf ( fp, ", not bad split equivalence ");

    if ( Has_array_constants() )
      fprintf ( fp, ", array constants " );
    else
      fprintf ( fp, ", no array constants ");

    if ( Has_equivalences() )
    fprintf ( fp, ", equivalences " );
    else
    fprintf ( fp, ", no equivalences " );

    if (Has_unstructured_cflow())
    fprintf( fp, ", unstructured cflow ");
    else
    fprintf( fp, ", no unstructured cflow ");

    fprintf(fp, "\n");

    fprintf ( fp, ", common shape index = %d, common shape count = %d \n",
         Get_common_shape_index(), Get_common_shape_count() );

    if ( Ipl_Summary_Symbol ) {
      Ipl_Summary_Symbol[Get_symbol_index()].Print ( fp );
    }
} // SUMMARY_COMMON::Print

//-----------------------------------------------------------

void
SUMMARY_COMMON::Trace ( INT32 id ) const
{
    Print ( TFile, id );
}


void 
SUMMARY_COMMON::Print_array (FILE* fp, INT32 size ) const
{
    INT i;

    fprintf ( fp, "%sStart common array\n%s", SBar, SBar );
    for ( i=0; i<size; ++i ) {
    this[i].Print ( fp, i );
    }
    fprintf ( fp, "%sEnd common array \n%s", SBar, SBar );
}

//-----------------------------------------------------------
// Trace the summary stid array
//-----------------------------------------------------------
void
SUMMARY_STID::Print ( FILE *fp, INT32 id ) const
{
    fprintf ( fp, "GLOBAL_STID[%d]: ", id );
    fprintf ( fp, "symbol index = %d, value index = %d",
         Get_symbol_index(), Get_value_index() );
    if ( Is_always_executed() )
      fprintf ( fp, ", always executed");
    if ( Is_array_assignment() ) {
      fprintf ( fp, ", array assignment");
      if ( Has_constant_subscript() )
        fprintf ( fp, ", constant subscript = %d", Get_array_subscript());
      else
        fprintf ( fp, ", non-constant subscript");
    }
    fprintf(fp, "\n");
    if ( Ipl_Summary_Symbol && Get_symbol_index() != -1 ) 
      Ipl_Summary_Symbol[Get_symbol_index()].Print ( fp );
} // SUMMARY_STID::Print


void
SUMMARY_STID::Trace ( INT32 id ) const
{
    Print ( TFile, id );
}


void 
SUMMARY_STID::Print_array (FILE* fp, INT32 size ) const
{
    INT i;

    fprintf ( fp, "%sStart STID COMMON array\n%s", SBar, SBar );
    for ( i=0; i<size; ++i ) {
    this[i].Print ( fp, i );
    }
    fprintf ( fp, "%sEnd STID COMMON array \n%s", SBar, SBar );
}

void
SUMMARY_STID::Trace_array ( INT32 size ) const
{
    Print_array ( TFile, size );
}



void
SUMMARY_COMMON_SHAPE::Print ( FILE *fp, INT32 id ) const
{
  fprintf ( fp, "COMMON_SHAPE[%d]:  ", id ); 

    if ( Is_kind_array() )    
    fprintf ( fp, " array" );

    if ( Is_kind_scalar() ) {
      fprintf ( fp, " scalar, element size = %d, offset = %lld, symbol_id = %d   \n", Get_element_size(), Get_offset(), Get_symbol_index());
    }

    if ( Is_symbolic_bounds() )
    fprintf ( fp, ", symbolic bounds \n" );

    if (Is_kind_array() && (!Is_symbolic_bounds()))
    fprintf (fp,
         ", upper = %d, lower = %d, stride = %d, element_size= %d, symbol_id = %d \n",Get_upper(), Get_lower(), Get_stride(),Get_element_size(), Get_symbol_index() );
} // SUMMARY_COMMON_SHAPE::Print


//-----------------------------------------------------------

void
SUMMARY_COMMON_SHAPE::Trace ( INT32 id ) const
{
    Print ( TFile, id );
}

void 
SUMMARY_COMMON_SHAPE::Print_array (FILE* fp, INT32 size ) const
{
    INT i;

    fprintf ( fp, "%sStart common shape array\n%s", SBar, SBar );
    for ( i=0; i<size; ++i ) {
    this[i].Print ( fp, i );
    }
    fprintf ( fp, "%sEnd common shape array \n%s", SBar, SBar );
}

//-----------------------------------------------------------

void
SUMMARY_COMMON_SHAPE::Trace_array ( INT32 size ) const
{
    Print_array ( TFile, size );
}
/*-----------------------------------------------------------*/
/*reorder*/
void
SUMMARY_STRUCT_ACCESS::Print ( FILE *fp, INT32 id ) const
{
    UINT i;
#if 0 // SC
  fprintf ( fp, "FLD ACCESS [%d]: name:%s  ", id,Get_ty_name() ); 
    for(i=0; i<max_hot_num;i++){
        if(Get_hot_fld_id(i)==0) /*fld_id=1,2,...*/
            break;
          fprintf ( fp, " field_id= %d, count = %lld  \n", Get_hot_fld_id(i),Get_hot_fld(i));
    }
#else
    fprintf(fp, "SUMMARY_STRUCT_ACCESS::Print NYI\n");
#endif 
} // SUMMARY_STRUCT_ACCESS::Print
void
SUMMARY_STRUCT_ACCESS::Trace_array ( INT32 size ) const
{
    Print_array ( TFile, size );
}
void
SUMMARY_STRUCT_ACCESS::Print_array (FILE* fp, INT32 size ) const
{
    INT i;

    fprintf ( fp, "%sStart fld access array\n%s", SBar, SBar );
    for ( i=0; i<size; ++i ) {
    this[i].Print ( fp, i );
    }
    fprintf ( fp, "%sEnd fld access array \n%s", SBar, SBar );
}
void
SUMMARY_STRUCT_ACCESS::Trace ( INT32 id ) const
{
    Print ( TFile, id );
}

#ifdef KEY
void
SUMMARY_TY_INFO::Print ( FILE *fp ) const
{
  fprintf ( fp, "TYPE [%d]: ", Get_ty() ); 
  if (Is_ty_no_split()) fprintf ( fp, "no_split " );

  fprintf ( fp, "\n");
} // SUMMARY_TY_INFO::Print

void
SUMMARY_TY_INFO::Print_array (FILE* fp, INT32 size ) const
{
  fprintf ( fp, "%sStart type array\n%s", SBar, SBar );
  for ( INT i=0; i<size; ++i ) {
    this[i].Print ( fp );
  }
  fprintf ( fp, "%sEnd type array \n%s", SBar, SBar );
}

void
SUMMARY_TY_INFO::Trace_array ( INT32 size ) const
{
  Print_array ( TFile, size );
}

void
SUMMARY_TY_INFO::Trace ( void ) const
{
  Print ( TFile );
}
#endif


