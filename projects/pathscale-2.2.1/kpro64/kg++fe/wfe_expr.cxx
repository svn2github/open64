/* 
   Copyright 2003, 2004, 2005 PathScale, Inc.  All Rights Reserved.
   File modified October 9, 2003 by PathScale, Inc. to update Open64 C/C++ 
   front-ends to GNU 3.3.1 release.
 */


/* 
   Copyright (C) 2002 Tensilica, Inc.  All Rights Reserved.
   Revised to support Tensilica processors and to improve overall performance
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


#include <values.h>
#include "defs.h"
#include "glob.h"
#include "config.h"
#include "wn.h"
#include "wn_util.h"
#include "targ_sim.h"
#include "const.h"
#include "c_int_model.h"

#include "gnu_config.h"
#include "gnu/system.h"

#ifdef KEY
#include "gnu/flags.h"
extern "C" {
// needs "C" linkage
#endif // KEY

#include "gnu/machmode.h"

#ifdef KEY
}
#endif // KEY

extern "C" {
#include "gnu/system.h"
#include "gnu/tree.h"
extern void warning (char*,...);	// from gnu
#ifdef GPLUSPLUS_FE
#include "gnu/cp/cp-tree.h"
#endif /* GPLUSPLUS_FE */
#ifdef KEY
#include "real.h"
#endif // KEY
}

#include "ir_reader.h"
#include "wfe_misc.h"
#include "wfe_dst.h"
#include "tree_symtab.h"
#include "wfe_decl.h"
#include "wfe_expr.h"
#include "wfe_stmt.h"
#include "tree_cmp.h"

// #define WFE_DEBUG
#ifdef KEY
extern void WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_ID, ST *);
#endif // KEY

LABEL_IDX loop_expr_exit_label = 0; // exit label for LOOP_EXPRs

struct operator_from_tree_t {
  int      tree_code;
  char*    name;
  char     code;
  int      nkids;
  OPERATOR opr;
} Operator_From_Tree [] = {
  ERROR_MARK,              "error_mark",              'x', 0,  OPERATOR_UNKNOWN,
  IDENTIFIER_NODE,         "identifier_node",         'x', -1, OPERATOR_UNKNOWN,
  OP_IDENTIFIER,           "op_identifier",           'x', 2,  OPERATOR_UNKNOWN,
  TREE_LIST,               "tree_list",               'x', 2,  OPERATOR_UNKNOWN,
  TREE_VEC,                "tree_vec",                'x', 2,  OPERATOR_UNKNOWN,
  BLOCK,                   "block",                   'b', 0,  OPERATOR_UNKNOWN,
  VOID_TYPE,               "void_type",               't', 0,  OPERATOR_UNKNOWN,
  INTEGER_TYPE,            "integer_type",            't', 0,  OPERATOR_UNKNOWN,
  REAL_TYPE,               "real_type",               't', 0,  OPERATOR_UNKNOWN,
  COMPLEX_TYPE,            "complex_type",            't', 0,  OPERATOR_UNKNOWN,
  VECTOR_TYPE,             "vector_type",             't', 0,  OPERATOR_UNKNOWN,
  ENUMERAL_TYPE,           "enumeral_type",           't', 0,  OPERATOR_UNKNOWN,
  BOOLEAN_TYPE,            "boolean_type",            't', 0,  OPERATOR_UNKNOWN,
  CHAR_TYPE,               "char_type",               't', 0,  OPERATOR_UNKNOWN,
  POINTER_TYPE,            "pointer_type",            't', 0,  OPERATOR_UNKNOWN,
  OFFSET_TYPE,             "offset_type",             't', 0,  OPERATOR_UNKNOWN,
  REFERENCE_TYPE,          "reference_type",          't', 0,  OPERATOR_UNKNOWN,
  METHOD_TYPE,             "method_type",             't', 0,  OPERATOR_UNKNOWN,
  FILE_TYPE,               "file_type",               't', 0,  OPERATOR_UNKNOWN,
  ARRAY_TYPE,              "array_type",              't', 0,  OPERATOR_UNKNOWN,
  SET_TYPE,                "set_type",                't', 0,  OPERATOR_UNKNOWN,
  RECORD_TYPE,             "record_type",             't', 0,  OPERATOR_UNKNOWN,
  UNION_TYPE,              "union_type",              't', 0,  OPERATOR_UNKNOWN,
  QUAL_UNION_TYPE,         "qual_union_type",         't', 0,  OPERATOR_UNKNOWN,
  FUNCTION_TYPE,           "function_type",           't', 0,  OPERATOR_UNKNOWN,
  LANG_TYPE,               "lang_type",               't', 0,  OPERATOR_UNKNOWN,
  INTEGER_CST,             "integer_cst",             'c', 2,  OPERATOR_UNKNOWN,
  REAL_CST,                "real_cst",                'c', 3,  OPERATOR_UNKNOWN,
  COMPLEX_CST,             "complex_cst",             'c', 3,  OPERATOR_UNKNOWN,
  VECTOR_CST,              "vector_cst",              'c', 3,  OPERATOR_UNKNOWN,
  STRING_CST,              "string_cst",              'c', 3,  OPERATOR_UNKNOWN,
  FUNCTION_DECL,           "function_decl",           'd', 0,  OPERATOR_UNKNOWN,
  LABEL_DECL,              "label_decl",              'd', 0,  OPERATOR_UNKNOWN,
  CONST_DECL,              "const_decl",              'd', 0,  OPERATOR_UNKNOWN,
  TYPE_DECL,               "type_decl",               'd', 0,  OPERATOR_UNKNOWN,
  VAR_DECL,                "var_decl",                'd', 0,  OPERATOR_UNKNOWN,
  PARM_DECL,               "parm_decl",               'd', 0,  OPERATOR_UNKNOWN,
  RESULT_DECL,             "result_decl",             'd', 0,  OPERATOR_UNKNOWN,
  FIELD_DECL,              "field_decl",              'd', 0,  OPERATOR_UNKNOWN,
  NAMESPACE_DECL,          "namespace_decl",          'd', 0,  OPERATOR_UNKNOWN,
  COMPONENT_REF,           "component_ref",           'r', 2,  OPERATOR_UNKNOWN,
  BIT_FIELD_REF,           "bit_field_ref",           'r', 3,  OPERATOR_UNKNOWN,
  INDIRECT_REF,            "indirect_ref",            'r', 1,  OPERATOR_UNKNOWN,
  BUFFER_REF,              "buffer_ref",              'r', 1,  OPERATOR_UNKNOWN,
  ARRAY_REF,               "array_ref",               'r', 2,  OPERATOR_UNKNOWN,
  ARRAY_RANGE_REF,         "array_range_ref",         'r', 2,  OPERATOR_UNKNOWN,
  VTABLE_REF,              "vtable_ref",              'r', 3,  OPERATOR_UNKNOWN,
  CONSTRUCTOR,             "constructor",             'e', 2,  OPERATOR_UNKNOWN,
  COMPOUND_EXPR,           "compound_expr",           'e', 2,  OPERATOR_UNKNOWN,
  MODIFY_EXPR,             "modify_expr",             'e', 2,  OPERATOR_UNKNOWN,
  INIT_EXPR,               "init_expr",               'e', 2,  OPERATOR_UNKNOWN,
  TARGET_EXPR,             "target_expr",             'e', 4,  OPERATOR_UNKNOWN,
  COND_EXPR,               "cond_expr",               'e', 3,  OPERATOR_UNKNOWN,
  BIND_EXPR,               "bind_expr",               'e', 3,  OPERATOR_UNKNOWN,
  CALL_EXPR,               "call_expr",               'e', 3,  OPERATOR_UNKNOWN,
  METHOD_CALL_EXPR,        "method_call_expr",        'e', 4,  OPERATOR_UNKNOWN,
  WITH_CLEANUP_EXPR,       "with_cleanup_expr",       'e', 3,  OPERATOR_UNKNOWN,
  CLEANUP_POINT_EXPR,      "cleanup_point_expr",      'e', 1,  OPERATOR_UNKNOWN,
  PLACEHOLDER_EXPR,        "placeholder_expr",        'x', 0,  OPERATOR_UNKNOWN,
  WITH_RECORD_EXPR,        "with_record_expr",        'e', 2,  OPERATOR_UNKNOWN,
  PLUS_EXPR,               "plus_expr",               '2', 2,  OPR_ADD,
  MINUS_EXPR,              "minus_expr",              '2', 2,  OPR_SUB,
  MULT_EXPR,               "mult_expr",               '2', 2,  OPR_MPY,
  TRUNC_DIV_EXPR,          "trunc_div_expr",          '2', 2,  OPR_DIV,
  CEIL_DIV_EXPR,           "ceil_div_expr",           '2', 2,  OPR_DIV,
  FLOOR_DIV_EXPR,          "floor_div_expr",          '2', 2,  OPERATOR_UNKNOWN,
  ROUND_DIV_EXPR,          "round_div_expr",          '2', 2,  OPERATOR_UNKNOWN,
  TRUNC_MOD_EXPR,          "trunc_mod_expr",          '2', 2,  OPR_REM,
  CEIL_MOD_EXPR,           "ceil_mod_expr",           '2', 2,  OPERATOR_UNKNOWN,
  FLOOR_MOD_EXPR,          "floor_mod_expr",          '2', 2,  OPERATOR_UNKNOWN,
  ROUND_MOD_EXPR,          "round_mod_expr",          '2', 2,  OPERATOR_UNKNOWN,
  RDIV_EXPR,               "rdiv_expr",               '2', 2,  OPR_DIV,
  EXACT_DIV_EXPR,          "exact_div_expr",          '2', 2,  OPR_DIV,
  FIX_TRUNC_EXPR,          "fix_trunc_expr",          '1', 1,  OPERATOR_UNKNOWN,
  FIX_CEIL_EXPR,           "fix_ceil_expr",           '1', 1,  OPERATOR_UNKNOWN,
  FIX_FLOOR_EXPR,          "fix_floor_expr",          '1', 1,  OPERATOR_UNKNOWN,
  FIX_ROUND_EXPR,          "fix_round_expr",          '1', 1,  OPERATOR_UNKNOWN,
  FLOAT_EXPR,              "float_expr",              '1', 1,  OPERATOR_UNKNOWN,
  EXPON_EXPR,              "expon_expr",              '2', 2,  OPERATOR_UNKNOWN,
  NEGATE_EXPR,             "negate_expr",             '1', 1,  OPR_NEG,
  MIN_EXPR,                "min_expr",                '2', 2,  OPR_MIN,
  MAX_EXPR,                "max_expr",                '2', 2,  OPR_MAX,
  ABS_EXPR,                "abs_expr",                '1', 1,  OPR_ABS,
  FFS_EXPR,                "ffs_expr",                '1', 1,  OPERATOR_UNKNOWN,
  LSHIFT_EXPR,             "lshift_expr",             '2', 2,  OPR_SHL,
  RSHIFT_EXPR,             "rshift_expr",             '2', 2,  OPERATOR_UNKNOWN,
  LROTATE_EXPR,            "lrotate_expr",            '2', 2,  OPR_RROTATE,
  RROTATE_EXPR,            "rrotate_expr",            '2', 2,  OPR_RROTATE,
  BIT_IOR_EXPR,            "bit_ior_expr",            '2', 2,  OPR_BIOR,
  BIT_XOR_EXPR,            "bit_xor_expr",            '2', 2,  OPR_BXOR,
  BIT_AND_EXPR,            "bit_and_expr",            '2', 2,  OPR_BAND,
  BIT_ANDTC_EXPR,          "bit_andtc_expr",          '2', 2,  OPERATOR_UNKNOWN,
  BIT_NOT_EXPR,            "bit_not_expr",            '1', 1,  OPR_BNOT,
  TRUTH_ANDIF_EXPR,        "truth_andif_expr",        'e', 2,  OPR_CAND,
  TRUTH_ORIF_EXPR,         "truth_orif_expr",         'e', 2,  OPR_CIOR,
  TRUTH_AND_EXPR,          "truth_and_expr",          'e', 2,  OPR_BAND,
  TRUTH_OR_EXPR,           "truth_or_expr",           'e', 2,  OPR_BIOR,
  TRUTH_XOR_EXPR,          "truth_xor_expr",          'e', 2,  OPR_BXOR,
  TRUTH_NOT_EXPR,          "truth_not_expr",          'e', 1,  OPR_LNOT,
  LT_EXPR,                 "lt_expr",                 '<', 2,  OPR_LT,
  LE_EXPR,                 "le_expr",                 '<', 2,  OPR_LE,
  GT_EXPR,                 "gt_expr",                 '<', 2,  OPR_GT,
  GE_EXPR,                 "ge_expr",                 '<', 2,  OPR_GE,
  EQ_EXPR,                 "eq_expr",                 '<', 2,  OPR_EQ,
  NE_EXPR,                 "ne_expr",                 '<', 2,  OPR_NE,
  UNORDERED_EXPR,          "unordered_expr",          '<', 2,  OPERATOR_UNKNOWN,
  ORDERED_EXPR,            "ordered_expr",            '<', 2,  OPERATOR_UNKNOWN,
  UNLT_EXPR,               "unlt_expr",               '<', 2,  OPERATOR_UNKNOWN,
  UNLE_EXPR,               "unle_expr",               '<', 2,  OPERATOR_UNKNOWN,
  UNGT_EXPR,               "ungt_expr",               '<', 2,  OPERATOR_UNKNOWN,
  UNGE_EXPR,               "unge_expr",               '<', 2,  OPERATOR_UNKNOWN,
  UNEQ_EXPR,               "uneq_expr",               '<', 2,  OPERATOR_UNKNOWN,
  IN_EXPR,                 "in_expr",                 '2', 2,  OPERATOR_UNKNOWN,
  SET_LE_EXPR,             "set_le_expr",             '<', 2,  OPERATOR_UNKNOWN,
  CARD_EXPR,               "card_expr",               '1', 1,  OPERATOR_UNKNOWN,
  RANGE_EXPR,              "range_expr",              '2', 2,  OPERATOR_UNKNOWN,
  CONVERT_EXPR,            "convert_expr",            '1', 1,  OPERATOR_UNKNOWN,
  NOP_EXPR,                "nop_expr",                '1', 1,  OPERATOR_UNKNOWN,
  NON_LVALUE_EXPR,         "non_lvalue_expr",         '1', 1,  OPERATOR_UNKNOWN,
  VIEW_CONVERT_EXPR,       "view_convert_expr",       '1', 1,  OPERATOR_UNKNOWN,
  SAVE_EXPR,               "save_expr",               'e', 3,  OPERATOR_UNKNOWN,
  UNSAVE_EXPR,             "unsave_expr",             'e', 1,  OPERATOR_UNKNOWN,
  RTL_EXPR,                "rtl_expr",                'e', 2,  OPERATOR_UNKNOWN,
  ADDR_EXPR,               "addr_expr",               'e', 1,  OPERATOR_UNKNOWN,
  REFERENCE_EXPR,          "reference_expr",          'e', 1,  OPERATOR_UNKNOWN,
  ENTRY_VALUE_EXPR,        "entry_value_expr",        'e', 1,  OPERATOR_UNKNOWN,
  FDESC_EXPR,              "fdesc_expr",              'e', 2,  OPERATOR_UNKNOWN,
  COMPLEX_EXPR,            "complex_expr",            '2', 2,  OPR_PAIR,
  CONJ_EXPR,               "conj_expr",               '1', 1,  OPERATOR_UNKNOWN,
  REALPART_EXPR,           "realpart_expr",           '1', 1,  OPR_FIRSTPART,
  IMAGPART_EXPR,           "imagpart_expr",           '1', 1,  OPR_SECONDPART,
  PREDECREMENT_EXPR,       "predecrement_expr",       'e', 2,  OPR_SUB,
  PREINCREMENT_EXPR,       "preincrement_expr",       'e', 2,  OPR_ADD,
  POSTDECREMENT_EXPR,      "postdecrement_expr",      'e', 2,  OPR_SUB,
  POSTINCREMENT_EXPR,      "postincrement_expr",      'e', 2,  OPR_ADD,
  VA_ARG_EXPR,             "va_arg_expr",             'e', 1,  OPERATOR_UNKNOWN,
  TRY_CATCH_EXPR,          "try_catch_expr",          'e', 2,  OPERATOR_UNKNOWN,
  TRY_FINALLY_EXPR,        "try_finally",             'e', 2,  OPERATOR_UNKNOWN,
  GOTO_SUBROUTINE_EXPR,    "goto_subroutine",         'e', 2,  OPERATOR_UNKNOWN,
  POPDHC_EXPR,             "popdhc_expr",             's', 0,  OPERATOR_UNKNOWN,
  POPDCC_EXPR,             "popdcc_expr",             's', 0,  OPERATOR_UNKNOWN,
  LABEL_EXPR,              "label_expr",              's', 1,  OPERATOR_UNKNOWN,
  GOTO_EXPR,               "goto_expr",               's', 1,  OPERATOR_UNKNOWN,
  RETURN_EXPR,             "return_expr",             's', 1,  OPERATOR_UNKNOWN,
  EXIT_EXPR,               "exit_expr",               's', 1,  OPERATOR_UNKNOWN,
  LOOP_EXPR,               "loop_expr",               's', 1,  OPERATOR_UNKNOWN,
  LABELED_BLOCK_EXPR,      "labeled_block_expr",      'e', 2,  OPERATOR_UNKNOWN,
  EXIT_BLOCK_EXPR,         "exit_block_expr",         'e', 2,  OPERATOR_UNKNOWN,
  EXPR_WITH_FILE_LOCATION, "expr_with_file_location", 'e', 3,  OPERATOR_UNKNOWN,
  SWITCH_EXPR,             "switch_expr",             'e', 2,  OPERATOR_UNKNOWN,
  EXC_PTR_EXPR,            "exc_ptr_expr",            'e', 0,  OPERATOR_UNKNOWN,
  LAST_AND_UNUSED_TREE_CODE,"last_and_unused_tree_code",0, 0,  OPERATOR_UNKNOWN,

  SRCLOC,                  "srcloc",                  'x', 2,  OPERATOR_UNKNOWN,
  SIZEOF_EXPR,             "sizeof_expr",             '1', 1,  OPERATOR_UNKNOWN,
  ARROW_EXPR,              "arrow_expr",              'e', 1,  OPERATOR_UNKNOWN,
  ALIGNOF_EXPR,            "alignof_expr",            '1', 1,  OPERATOR_UNKNOWN,
  EXPR_STMT,               "expr_stmt",               'e', 1,  OPERATOR_UNKNOWN,
  COMPOUND_STMT,           "compound_stmt",           'e', 1,  OPERATOR_UNKNOWN,
  DECL_STMT,               "decl_stmt",               'e', 1,  OPERATOR_UNKNOWN,
  IF_STMT,                 "if_stmt",                 'e', 3,  OPERATOR_UNKNOWN,
  FOR_STMT,                "for_stmt",                'e', 4,  OPERATOR_UNKNOWN,
  WHILE_STMT,              "while_stmt",              'e', 2,  OPERATOR_UNKNOWN,
  DO_STMT,                 "do_stmt",                 'e', 2,  OPERATOR_UNKNOWN,
  RETURN_STMT,             "return_stmt",             'e', 1,  OPERATOR_UNKNOWN,
  BREAK_STMT,              "break_stmt",              'e', 0,  OPERATOR_UNKNOWN,
  CONTINUE_STMT,           "continue_stmt",           'e', 0,  OPERATOR_UNKNOWN,
  SWITCH_STMT,             "switch_stmt",             'e', 2,  OPERATOR_UNKNOWN,
  GOTO_STMT,               "goto_stmt",               'e', 1,  OPERATOR_UNKNOWN,
  LABEL_STMT,              "label_stmt",              'e', 1,  OPERATOR_UNKNOWN,
  ASM_STMT,                "asm_stmt",                'e', 5,  OPERATOR_UNKNOWN,
  SCOPE_STMT,              "scope_stmt",              'e', 1,  OPERATOR_UNKNOWN,
  FILE_STMT,               "file_stmt",               'e', 1,  OPERATOR_UNKNOWN,
  CASE_LABEL,              "case_label",              'e', 2,  OPERATOR_UNKNOWN,
  STMT_EXPR,               "stmt_expr",               'e', 1,  OPERATOR_UNKNOWN,
  COMPOUND_LITERAL_EXPR,   "compound_literal_expr",   'e', 1,  OPERATOR_UNKNOWN,
  CLEANUP_STMT,            "cleanup_stmt",            'e', 2,  OPERATOR_UNKNOWN,
#ifdef KEY
  OMP_MARKER_STMT,         "omp_marker_stmt",         'e', 0,  OPERATOR_UNKNOWN,
#endif // KEY
  LAST_C_TREE_CODE,        "last_c_tree_code",          0, 0,  OPERATOR_UNKNOWN,

#ifdef GPLUSPLUS_FE
  OFFSET_REF,              "offset_ref",              'r', 2,  OPERATOR_UNKNOWN,
  PTRMEM_CST,              "ptrmem_cst",              'c', 2,  OPERATOR_UNKNOWN,
  NEW_EXPR,                "nw_expr",                 'e', 3,  OPERATOR_UNKNOWN,
  VEC_NEW_EXPR,            "vec_nw_expr",             'e', 3,  OPERATOR_UNKNOWN,
  DELETE_EXPR,             "dl_expr",                 'e', 2,  OPERATOR_UNKNOWN,
  VEC_DELETE_EXPR,         "vec_dl_expr",             'e', 2,  OPERATOR_UNKNOWN,
  SCOPE_REF,               "scope_ref",               'r', 2,  OPERATOR_UNKNOWN,
  MEMBER_REF,              "member_ref",              'r', 2,  OPERATOR_UNKNOWN,
  TYPE_EXPR,               "type_expr",               'e', 1,  OPERATOR_UNKNOWN,
  AGGR_INIT_EXPR,          "aggr_init_expr",          'e', 3,  OPERATOR_UNKNOWN,
  THROW_EXPR,              "throw_expr",              'e', 1,  OPERATOR_UNKNOWN,
  EMPTY_CLASS_EXPR,        "empty_class_expr",        'e', 0,  OPERATOR_UNKNOWN,
#ifdef KEY
  BASELINK,		   "baselink",		      'e', 3,  OPERATOR_UNKNOWN,
#endif // KEY
  TEMPLATE_DECL,           "template_decl",           'd', 0,  OPERATOR_UNKNOWN,
  TEMPLATE_PARM_INDEX,     "template_parm_index",     'x', 0,  OPERATOR_UNKNOWN,
  TEMPLATE_TYPE_PARM,      "template_type_parm",      't', 0,  OPERATOR_UNKNOWN,
  TEMPLATE_TEMPLATE_PARM,  "template_template_parm",  't', 0,  OPERATOR_UNKNOWN,
  BOUND_TEMPLATE_TEMPLATE_PARM, "bound_template_template_parm", 't', 0, OPERATOR_UNKNOWN,
  TYPENAME_TYPE,           "typename_type",           't', 0,  OPERATOR_UNKNOWN,
  UNBOUND_CLASS_TEMPLATE,  "unbound_class_template",  't', 0,  OPERATOR_UNKNOWN,
  TYPEOF_TYPE,             "typeof_type",             't', 0,  OPERATOR_UNKNOWN,
  USING_DECL,              "using_decl",              'd', 0,  OPERATOR_UNKNOWN,
  USING_STMT,              "using_directive",         'e', 1,  OPERATOR_UNKNOWN,
#ifdef KEY
  DEFAULT_ARG,             "default_arg",             'x', 2,  OPERATOR_UNKNOWN,
#else
  DEFAULT_ARG,             "default_arg",             'c', 2,  OPERATOR_UNKNOWN,
#endif // KEY
  TEMPLATE_ID_EXPR,        "template_id_expr",        'e', 2,  OPERATOR_UNKNOWN,
#ifndef KEY	// CPLUS_BINDING does not exist
  CPLUS_BINDING,           "binding",                 'x', 2,  OPERATOR_UNKNOWN,
#endif // !KEY
  OVERLOAD,                "overload",                'x', 1,  OPERATOR_UNKNOWN,
  WRAPPER,                 "wrapper",                 'x', 1,  OPERATOR_UNKNOWN,
  LOOKUP_EXPR,             "lookup_expr",             'e', 1,  OPERATOR_UNKNOWN,
  MODOP_EXPR,              "modop_expr",              'e', 3,  OPERATOR_UNKNOWN,
  CAST_EXPR,               "cast_expr",               '1', 1,  OPERATOR_UNKNOWN,
  REINTERPRET_CAST_EXPR,   "reinterpret_cast_expr",   '1', 1,  OPERATOR_UNKNOWN,
  CONST_CAST_EXPR,         "const_cast_expr",         '1', 1,  OPERATOR_UNKNOWN,
  STATIC_CAST_EXPR,        "static_cast_expr",        '1', 1,  OPERATOR_UNKNOWN,
  DYNAMIC_CAST_EXPR,       "dynamic_cast_expr",       '1', 1,  OPERATOR_UNKNOWN,
  DOTSTAR_EXPR,            "dotstar_expr",            'e', 2,  OPERATOR_UNKNOWN,
  TYPEID_EXPR,             "typeid_expr",             'e', 1,  OPERATOR_UNKNOWN,
  PSEUDO_DTOR_EXPR,        "pseudo_dtor_expr",        'e', 3,  OPERATOR_UNKNOWN,
#ifndef KEY	// SUBOBJECT, CTOR_STMT removed
  SUBOBJECT,               "subobject",               'e', 1,  OPERATOR_UNKNOWN,
  CTOR_STMT,               "ctor_stmt",               'e', 0,  OPERATOR_UNKNOWN,
  CTOR_INITIALIZER,        "ctor_initializer",        'e', 2,  OPERATOR_UNKNOWN,
#else
  CTOR_INITIALIZER,        "ctor_initializer",        'e', 1,  OPERATOR_UNKNOWN,
#endif // !KEY
  RETURN_INIT,             "return_init",             'e', 2,  OPERATOR_UNKNOWN,
  TRY_BLOCK,               "try_block",               'e', 2,  OPERATOR_UNKNOWN,
  EH_SPEC_BLOCK,           "eh_spec_block",           'e', 2,  OPERATOR_UNKNOWN,
  HANDLER,                 "handler",                 'e', 2,  OPERATOR_UNKNOWN,
  MUST_NOT_THROW_EXPR,     "must_not_throw_expr",     'e', 1,  OPERATOR_UNKNOWN,
  TAG_DEFN,                "tag_defn",                'e', 0,  OPERATOR_UNKNOWN,
  IDENTITY_CONV,           "identity_conv",           'e', 1,  OPERATOR_UNKNOWN,
  LVALUE_CONV,             "lvalue_conv",             'e', 1,  OPERATOR_UNKNOWN,
  QUAL_CONV,               "qual_conv",               'e', 1,  OPERATOR_UNKNOWN,
  STD_CONV,                "std_conv",                'e', 1,  OPERATOR_UNKNOWN,
  PTR_CONV,                "ptr_conv",                'e', 1,  OPERATOR_UNKNOWN,
  PMEM_CONV,               "pmem_conv",               'e', 1,  OPERATOR_UNKNOWN,
  BASE_CONV,               "base_conv",               'e', 1,  OPERATOR_UNKNOWN,
  REF_BIND,                "ref_bind",                'e', 1,  OPERATOR_UNKNOWN,
  USER_CONV,               "user_conv",               'e', 2,  OPERATOR_UNKNOWN,
  AMBIG_CONV,              "ambig_conv",              'e', 1,  OPERATOR_UNKNOWN,
  RVALUE_CONV,             "rvalue_conv",             'e', 1,  OPERATOR_UNKNOWN,
  LAST_CPLUS_TREE_CODE,    "last_cplus_tree_code",     0,  0,  OPERATOR_UNKNOWN
#endif /* GPLUSPLUSFE */
};

#ifdef KEY
static bool WFE_Call_Returns_Ptr_To_Member_Func (tree exp);

static WN *WFE_Expand_Ptr_To_Member_Func_Call_Expr (tree exp,
	     TY_IDX nop_ty_idx, TYPE_ID rtype, TYPE_ID desc,
	     WN_OFFSET offset = 0, UINT field_id = 0);

// The words in 'buf' are in target order. Convert them to host order
// in place. 'buf' is a two word array.
void
WFE_Convert_To_Host_Order (long *buf)
{
  if (!Same_Byte_Sex)
    {
      int t = buf[0];
      buf[0] = buf[1];
      buf[1] = t;
    }
}

// Add guard variable GUARD_VAR to a conditional expression that may or may
// not be evaluated, such as x and y in "foo ? x : y", or y in "if (x && y)".
// Transform the code to:
//   guard_var=0
//   foo ? (guard_var=1, x) : y		// assuming VALUE_WN is x
// and:
//   guard_var=0
//   if (x && (guard_var=1, y))
static void
WFE_add_guard_var (tree guard_var, WN *value_wn)
{
  WN *stid, *comma;

  // Set the guard variable to 0 before the condition is evaluated.
  WN *zero_wn = WN_Intconst(MTYPE_I4, 0);
  stid = WN_Stid(MTYPE_I4, 0, Get_ST(guard_var), MTYPE_To_TY(MTYPE_I4),
		 zero_wn, 0);
  WFE_Stmt_Append(stid, Get_Srcpos());

  // Set the guard variable to 1 while evaluating the value of the conditional
  // expression.
  WN *one_wn = WN_Intconst(MTYPE_I4, 1);
  stid = WN_Stid(MTYPE_I4, 0, Get_ST(guard_var), MTYPE_To_TY(MTYPE_I4),
		 one_wn, 0);
  if (WN_operator(value_wn) == OPR_COMMA) {
    comma = value_wn;
  } else if (WN_operator(WN_kid0(value_wn)) == OPR_COMMA) {
    comma = WN_kid0(value_wn);
  } else {
    // Create a comma.
    WN *wn0 = WN_CreateBlock();
    WN *wn1 = WN_kid0(value_wn);
    WN_Set_Linenum (wn0, Get_Srcpos());
    comma = WN_CreateComma (OPR_COMMA, WN_rtype(wn1), MTYPE_V, wn0, wn1);
    WN_kid0(value_wn) = comma;
  }
  WN *wn = WN_kid0(comma);
  FmtAssert(WN_operator(wn) == OPR_BLOCK,
    ("WFE_add_guard_var: unexpected WN operator"));
  WN_INSERT_BlockFirst(wn, stid);
}
#endif

// check whether the WHIRL operator has subsumed cvtl in its semantics
// (intended only for integer operations)
bool
Has_Subsumed_Cvtl(OPERATOR opr)
{
  if (OPERATOR_is_load(opr) || OPERATOR_is_leaf(opr))
    return TRUE;
  if (opr == OPR_CVT || opr == OPR_CVTL || opr == OPR_TAS)
    return TRUE;
  if (opr == OPR_EQ || opr == OPR_NE ||
      opr == OPR_GE || opr == OPR_GT ||
      opr == OPR_LE || opr == OPR_LT ||
      opr == OPR_LNOT || opr == OPR_LAND || opr == OPR_LIOR ||
      opr == OPR_CAND || opr == OPR_CIOR)
    return TRUE;
  return FALSE;
}

// Round up an object size to the size it would require in the parameter
// area on the stack.  This is defined to be the difference between its
// start address and the lowest possible starting address of the next parameter.
inline UINT64 Parameter_Size(UINT64 sz)
{
#   if WORDS_BIG_ENDIAN
	return sz;
#   else
	return (sz + UNITS_PER_WORD - 1) & ~(UNITS_PER_WORD - 1);
#   endif
}

inline TYPE_ID
Widen_Mtype (TYPE_ID t)
{
  if (MTYPE_is_m(t))
    return t;
  if (MTYPE_is_void(t) || t == MTYPE_BS) {
    Fail_FmtAssertion ("Widen_Mtype: for MTYPE_V or MTYPE_BS");
    return t;
  }
  if (MTYPE_byte_size(t) >= 4)
    return t;
  return Mtype_TransferSize(MTYPE_I4, t);
}

// Traverse the tree to see if the address of a variable is being taken

void
WFE_Set_ST_Addr_Saved (WN *wn)
{
  OPERATOR  Operator;
  ST       *st;

  Operator = WN_operator (wn);

  switch ( Operator ) {

    case OPR_LDA:
    case OPR_LDMA:

      st = WN_st (wn);

      if (ST_class(st) == CLASS_VAR || ST_class(st) == CLASS_FUNC)
        Set_ST_addr_saved (st);
      break;

    case OPR_ARRAY:

      WFE_Set_ST_Addr_Saved (WN_kid0 (wn));
      break;

    case OPR_LDID:

      st = WN_st (wn);
      if (ST_pt_to_unique_mem (st))
        Clear_ST_pt_to_unique_mem (st);
      break;

    case OPR_CONST:
    case OPR_ILOAD:
    case OPR_MLOAD:
    case OPR_INTCONST:
    case OPR_INTRINSIC_OP:
    case OPR_CALL:
    case OPR_EQ:
    case OPR_NE:
    case OPR_GT:
    case OPR_GE:
    case OPR_LT:
    case OPR_LE:
    case OPR_ALLOCA:
      break;

    case OPR_EVAL:
    case OPR_TAS:
    case OPR_CVT:
    case OPR_CVTL:
    case OPR_NEG:
    case OPR_ABS:
    case OPR_SQRT:
    case OPR_REALPART:
    case OPR_IMAGPART:
    case OPR_PAREN:
    case OPR_RND:
    case OPR_TRUNC:
    case OPR_CEIL:
    case OPR_FLOOR:
    case OPR_BNOT:
    case OPR_LNOT:
    case OPR_LOWPART:
    case OPR_HIGHPART:
    case OPR_MINPART:
    case OPR_MAXPART:
    case OPR_RECIP:
    case OPR_RSQRT:
    case OPR_PARM:
    case OPR_EXTRACT_BITS:

      WFE_Set_ST_Addr_Saved (WN_kid0(wn));
      break;

    case OPR_CSELECT:

      WFE_Set_ST_Addr_Saved (WN_kid1(wn));
      WFE_Set_ST_Addr_Saved (WN_kid2(wn));
      break;

    case OPR_SELECT:
    case OPR_ADD:
    case OPR_SUB:
    case OPR_MPY:
    case OPR_DIV:
    case OPR_MOD:
    case OPR_REM:
    case OPR_DIVREM:
    case OPR_MAX:
    case OPR_MIN:
    case OPR_MINMAX:
    case OPR_BAND:
    case OPR_BIOR:
    case OPR_BXOR:
    case OPR_BNOR:
    case OPR_LAND:
    case OPR_LIOR:
    case OPR_SHL:
    case OPR_ASHR:
    case OPR_LSHR:
    case OPR_COMPLEX:
    case OPR_HIGHMPY:
    case OPR_RROTATE:
    case OPR_COMPOSE_BITS:

      WFE_Set_ST_Addr_Saved (WN_kid0(wn));
      WFE_Set_ST_Addr_Saved (WN_kid1(wn));
      break;

    case OPR_CAND:
    case OPR_CIOR:

      break;

    case OPR_COMMA:

      WFE_Set_ST_Addr_Saved (WN_kid1(wn));
      break;

    case OPR_RCOMMA:

      WFE_Set_ST_Addr_Saved (WN_kid0(wn));
      break;

    default:

      DevWarn ("WFE_Set_ST_Addr_Saved not implemented");
  }
} /* WFE_Set_ST_Addr_Saved */

#ifndef GPLUSPLUS_FE
typedef struct wfe_bind_expr_t {
  tree  rtl_expr;
  WN   *block;
} WFE_BIND_EXPR;

WFE_BIND_EXPR *wfe_bind_expr_stack       = NULL;
INT32          wfe_bind_expr_stack_last  = -1;
INT32          wfe_bind_expr_stack_max   = 0;

void
WFE_Expand_Start_Stmt_Expr (tree t)
{
  WN *block = WN_CreateBlock ();
  WFE_Stmt_Push (block, wfe_stmk_comma, Get_Srcpos ());
} /* WFE_Start_Stmt_Expr */

void
WFE_Expand_End_Stmt_Expr (tree t)
{
  WN *block = WFE_Stmt_Pop (wfe_stmk_comma);
  ++wfe_bind_expr_stack_last;
  if (wfe_bind_expr_stack_last == wfe_bind_expr_stack_max) {
    if (wfe_bind_expr_stack == NULL) {
      wfe_bind_expr_stack_max = 32;
      wfe_bind_expr_stack     =
        (WFE_BIND_EXPR *) malloc (wfe_bind_expr_stack_max *
                                  sizeof (WFE_BIND_EXPR));
    }
    else {
      wfe_bind_expr_stack_max = wfe_bind_expr_stack_max +
                                (wfe_bind_expr_stack_max >> 1);
      wfe_bind_expr_stack     =
        (WFE_BIND_EXPR *) realloc (wfe_bind_expr_stack,
                                   wfe_bind_expr_stack_max *
                                   sizeof (WFE_BIND_EXPR));
    }
  }
  wfe_bind_expr_stack [wfe_bind_expr_stack_last].rtl_expr = t;
  wfe_bind_expr_stack [wfe_bind_expr_stack_last].block    = block;
} /* WFE_End_Stmt_Expr */
#endif /* GPLUSPLUS_FE */

typedef struct wfe_save_expr_t {
  tree  exp;
  ST   *st;
#ifdef KEY
  INT32  level;	// to identify which cleanup the save expr belongs to
#endif
} WFE_SAVE_EXPR;

WFE_SAVE_EXPR *wfe_save_expr_stack      = NULL;
INT32          wfe_save_expr_stack_last = -1;
INT32          wfe_save_expr_stack_max  = 0;

#ifdef KEY
INT32 wfe_save_expr_level;	// identify the current cleanup
INT32 wfe_last_save_expr_level;	// the last cleanup level used
#endif

static WN*
WFE_Save_Expr (tree save_exp,
               bool need_result,
               TY_IDX nop_ty_idx,
               TY_IDX component_ty_idx,
               INT64 component_offset,
               UINT16 field_id)
{
  INT32     i;
  tree      exp     = TREE_OPERAND (save_exp, 0);
  TY_IDX    ty_idx  = Get_TY (TREE_TYPE (exp));
  TYPE_ID   mtype   = TY_mtype (ty_idx);
  ST       *st;
  WN       *wn;
  bool     found = false;  

  for (i = wfe_save_expr_stack_last; i >= 0; i--) {
#ifndef KEY
    if (wfe_save_expr_stack [i].exp == exp) {
#else
    if (wfe_save_expr_stack [i].exp == save_exp &&
    	wfe_save_expr_stack [i].level == wfe_save_expr_level) {
#endif
      st = wfe_save_expr_stack [i].st;
      FmtAssert (st != 0,
                 ("WFE_Save_Expr: st not yet assigned"));
      found = true;
      break;
    }
  }
  
  if (!found) {
    i = ++wfe_save_expr_stack_last;
    if (i == wfe_save_expr_stack_max) {
      if (wfe_save_expr_stack == NULL) {
        wfe_save_expr_stack_max = 32;
        wfe_save_expr_stack     =
          (WFE_SAVE_EXPR *) malloc (wfe_save_expr_stack_max *
                                    sizeof (WFE_SAVE_EXPR));
      }
      else {
        wfe_save_expr_stack_max = wfe_save_expr_stack_max +
                                  (wfe_save_expr_stack_max >> 1);
        wfe_save_expr_stack     =
          (WFE_SAVE_EXPR *) realloc (wfe_save_expr_stack,
                                     wfe_save_expr_stack_max *
                                     sizeof (WFE_SAVE_EXPR));
      }
    }
#ifndef KEY
    wfe_save_expr_stack [i].exp = exp;
#else
    wfe_save_expr_stack [i].exp = save_exp;
    wfe_save_expr_stack [i].level = wfe_save_expr_level;
#endif
    wfe_save_expr_stack [i].st  = 0;
#ifdef KEY
    // If exp is a CALL_EXPR that returns a ptr-to-member-function, then call
    // WFE_Expand_Ptr_To_Member_Func_Call_Expr to expand it.  Otherwise, call
    // WFE_Expand_Expr to do regular expansion.  Bug 3400.
    if (WFE_Call_Returns_Ptr_To_Member_Func(exp)) {
      TYPE_ID desc = TY_mtype(Get_TY(TREE_TYPE(exp)));
      wn = WFE_Expand_Ptr_To_Member_Func_Call_Expr(exp, nop_ty_idx,
						   Widen_Mtype(desc), desc);
    } else
#endif
    wn = WFE_Expand_Expr (exp);

    st = Gen_Temp_Symbol (ty_idx, "__save_expr");
#ifdef KEY
    WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, st);
#endif
    WFE_Set_ST_Addr_Saved (wn);
    wn = WN_Stid (mtype, 0, st, ty_idx, wn);
    WFE_Stmt_Append (wn, Get_Srcpos());
    wfe_save_expr_stack [i].st = st;
  }

  if (component_ty_idx == 0)
    wn = WN_Ldid (mtype, 0, st, ty_idx);
  else {
    TYPE_ID desc  = TY_mtype(component_ty_idx);
    TYPE_ID rtype = Widen_Mtype(desc);
    wn = WN_CreateLdid(OPR_LDID, rtype, desc, component_offset, st,
		     field_id? ty_idx : component_ty_idx, field_id);  
  }
  return wn;
} /* WFE_Save_Expr */

/* process the tree doing array indicing and return the WN that performs
 * the address computation; ty_idx returns the high-level array type if it
 * is a DECL node, and the element type if it is an ARRAY_REF node.
 */
static WN *
WFE_Array_Expr(tree exp, 
	       TY_IDX *ty_idx, 
	       TY_IDX component_ty_idx,
	       INT64 component_offset,
	       UINT32 field_id)
{
  WN *wn;
  enum tree_code code = TREE_CODE (exp);
  if (code == COMPONENT_REF) {
    TY_IDX ty_idx0;
    tree arg0 = TREE_OPERAND(exp, 0); 
    tree arg1 = TREE_OPERAND(exp, 1); 
    if (component_ty_idx == 0)
      ty_idx0 = Get_TY(TREE_TYPE(exp));
    else ty_idx0 = component_ty_idx;
    Is_True(! DECL_BIT_FIELD(arg1),
	    ("WFE_Array_Expr: address arithmetic cannot use bitfield addresses"));
    INT64 ofst = (BITSPERBYTE * Get_Integer_Value(DECL_FIELD_OFFSET(arg1)) +
				Get_Integer_Value(DECL_FIELD_BIT_OFFSET(arg1)))
			      / BITSPERBYTE;
    return WFE_Array_Expr(arg0, ty_idx, ty_idx0, ofst + component_offset,
			  field_id + DECL_FIELD_ID(arg1));
  }
  else if (code == VAR_DECL || code == PARM_DECL) {
    ST *st = Get_ST (exp);
    ST *base_st = ST_base (st);
    // for VLAs the instead of using the ST use its base st
    // also for the time being do not support VLAs within structs
    if (st != base_st) {
      FmtAssert (component_ty_idx == 0,
                 ("Variable Length Arrays within struct not currently implemented"));
      wn = WN_Ldid (Pointer_Mtype, 0, base_st, ST_type (base_st));
    }
    else
      wn = WN_Lda (Pointer_Mtype, ST_ofst(st)+component_offset, st, field_id);
    if (component_ty_idx == 0)
      *ty_idx = ST_type(st);
    else {
      *ty_idx = component_ty_idx;
      if (TY_align(ST_type(st)) < TY_align(component_ty_idx))
	Set_TY_align(*ty_idx, TY_align(ST_type(st)));//pick more stringent align
    }
    Is_True(TY_kind(*ty_idx) == KIND_ARRAY,
	    ("WFE_Array_Expr: ARRAY_REF base not of type KIND_ARRAY"));
    return wn;
  }
  else if (code == CONSTRUCTOR) {
    ST *st = WFE_Generate_Temp_For_Initialized_Aggregate (exp, "");
    wn = WN_Lda (Pointer_Mtype, ST_ofst(st)+component_offset, st, field_id);
    if (component_ty_idx == 0)
      *ty_idx = ST_type(st);
    else *ty_idx = component_ty_idx;
    Is_True(TY_kind(*ty_idx) == KIND_ARRAY,
	    ("WFE_Array_Expr: ARRAY_REF base not of type KIND_ARRAY"));
    return wn;
  }
  else if (code == STRING_CST) {
    wn = WFE_Expand_Expr(exp);
    *ty_idx = ST_type (TREE_STRING_ST (exp));
    return wn;
  }
  else if (code == INDIRECT_REF) {
    wn = WFE_Expand_Expr(TREE_OPERAND (exp, 0));
    if (component_ty_idx == 0)
      *ty_idx = Get_TY (TREE_TYPE(exp));
    else {
      *ty_idx = component_ty_idx;
      INT node_align = TYPE_ALIGN(TREE_TYPE(exp)) / BITSPERBYTE;
      if (node_align < TY_align(component_ty_idx))
	Set_TY_align(*ty_idx, node_align);//pick more stringent align
    }
    if (component_offset != 0) { // TODO: use ILDA instead
      WN *wn0 = WN_Intconst(MTYPE_I4, component_offset);
      wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn, wn0);
    }
    return wn;
  }
  else if (code == CALL_EXPR) {
    wn = WFE_Expand_Expr(exp);
    FmtAssert (WN_opcode (wn) == OPC_MCOMMA,
               ("opcode other than OPC_MCOMMA for call underneath ARRAY_REF"));
    WFE_Stmt_Append (WN_kid0 (wn), Get_Srcpos ());
    ST *st = WN_st (WN_kid1 (wn));
    WN_Delete (WN_kid1 (wn));
    WN_Delete (wn);
    wn = WN_Lda (Pointer_Mtype, ST_ofst(st)+component_offset, st, field_id);
    if (component_ty_idx == 0)
      *ty_idx = ST_type(st);
    else {
      *ty_idx = component_ty_idx;
      if (TY_align(ST_type(st)) < TY_align(component_ty_idx))
	Set_TY_align(*ty_idx, TY_align(ST_type(st)));//pick more stringent align
    }
    Is_True(TY_kind(*ty_idx) == KIND_ARRAY,
	    ("WFE_Array_Expr: ARRAY_REF base not of type KIND_ARRAY"));
    return wn;
  }
  else if (code == ARRAY_REF) { // recursive call
    WN *wn0, *wn1, *wn2;
    TY_IDX ty_idx0;
#ifdef KEY  // Bug 5831.
    wn0 = WFE_Array_Expr(TREE_OPERAND (exp, 0), &ty_idx0, 0,
			 component_offset, field_id);
#else
    wn0 = WFE_Array_Expr(TREE_OPERAND (exp, 0), &ty_idx0, component_ty_idx,
			 component_offset, field_id);
#endif
    Is_True(TY_kind(ty_idx0) == KIND_ARRAY,
	    ("WFE_Array_Expr: arg 0 of ARRAY_REF not of type KIND_ARRAY"));
    ARB_HANDLE arb = TY_arb(ty_idx0);
    if (ARB_dimension(arb) == 1 && 
	ARB_first_dimen(arb) && ARB_last_dimen(arb) &&
	ARB_const_lbnd(arb)) {
      if (ARB_const_ubnd(arb))
        wn1 = WN_Intconst(MTYPE_I4, ARB_ubnd_val(arb) - ARB_lbnd_val(arb) + 1);
#ifdef KEY
      // Variable upper bound.  Bug 4692.
      else if (ARB_ubnd_var(arb)) {
        ST *ubnd_st = &St_Table[ARB_ubnd_var(arb)];
	wn1 = WN_Binary(OPR_SUB, MTYPE_I4,
			WN_Ldid(MTYPE_I4, 0, ubnd_st, ST_type(ubnd_st)),
			WN_Intconst(MTYPE_I4, ARB_lbnd_val(arb) - 1));
      }
#endif
      else
        wn1 = WN_Intconst(MTYPE_I4, 0);
      wn2 = WFE_Expand_Expr (TREE_OPERAND (exp, 1));
#ifdef KEY
      // Expand the current dimension by growing the array just expanded.  Bug
      // 4692.
      if (TREE_CODE(TREE_OPERAND(exp, 0)) == ARRAY_REF) {
        Is_True(WN_operator(wn0) == OPR_ARRAY,
		("WFE_Array_Expr: ARRAY_REF not translated to OPR_ARRAY"));
	int old_kid_count = WN_kid_count(wn0);
	int new_kid_count = old_kid_count + 2;
	wn = WN_Create(OPR_ARRAY, Pointer_Mtype, MTYPE_V, new_kid_count);
	for (int kid = 0; kid < (old_kid_count >> 1); kid++) {
	  WN_kid(wn, kid + 1) = WN_kid(wn0, kid + 1);
	  WN_kid(wn, (new_kid_count >> 1) + kid + 1) =
	    WN_kid(wn0, (old_kid_count >> 1) + kid + 1);
	}
	WN_kid(wn, 0) = WN_kid(wn0, 0);
	WN_kid(wn, new_kid_count >> 1) = wn1;
	WN_kid(wn, new_kid_count - 1) = wn2;
	WN_Delete(wn0);
      } else
#endif
      wn = WN_Ternary(OPR_ARRAY, Pointer_Mtype, wn0, wn1, wn2);

      WN_element_size(wn) = TY_size(Get_TY (TREE_TYPE(exp)));
    }
    else Is_True(FALSE,
		 ("WFE_Array_Expr: only const-bounds 1-dimension arrays handled now"));
    if (component_ty_idx == 0) {
      *ty_idx = TY_etype(ty_idx0);
      if (TY_align(ty_idx0) < TY_align(*ty_idx))
	Set_TY_align(*ty_idx, TY_align(ty_idx0));// pick more stringent align
    }
    else *ty_idx = component_ty_idx;
    return wn;
  }
#ifdef KEY
  else if (code == COMPOUND_LITERAL_EXPR) {
    tree arg0 = DECL_INITIAL (TREE_OPERAND (TREE_OPERAND (exp, 0), 0));
    ST *st = WFE_Generate_Temp_For_Initialized_Aggregate (arg0, "");
    wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
    *ty_idx = component_ty_idx == 0 ? ST_type(st) : component_ty_idx;
    return wn;
  } else if (code == TARGET_EXPR) {
    wn = WFE_Expand_Expr(exp);
    Is_True(WN_operator(wn) == OPR_LDID,
	    ("WFE_Array_Expr: OPR_LDID not found"));
    ST *st = WN_st(wn);
    wn = WN_Lda (Pointer_Mtype, ST_ofst(st)+component_offset, st, field_id);
    if (component_ty_idx == 0)
      *ty_idx = ST_type(st);
    else {
      *ty_idx = component_ty_idx;
      if (TY_align(ST_type(st)) < TY_align(component_ty_idx))
	Set_TY_align(*ty_idx, TY_align(ST_type(st)));//pick more stringent align
    }
    Is_True(TY_kind(*ty_idx) == KIND_ARRAY,
	    ("WFE_Array_Expr: ARRAY_REF base not of type KIND_ARRAY"));
    return wn;
  }
#endif /* KEY */
  else {
    Is_True(FALSE,
	    ("WFE_Array_Expr: unsupported node for base of ARRAY_REF"));
    return NULL;
  }
}


/* rhs_wn is the WN representing the rhs of a MODIFY_EXPR node; this
 * routine processes the lhs of the node and generate the appropriate
 * form of store.
 *
 * In special cases where the RHS of the store is unknown but the
 * statement being expanded is nonetheless semantically a store,
 * rhs_wn can be NULL. This happens, for example, for each output
 * operand of an asm statement. When rhs_wn is NULL, we manufacture an
 * RHS that is an LDID of a PREG specified by rhs_preg_num (generally
 * a negative-numbered PREG). If rhs_st is non-NULL, rhs_preg_num is
 * ignored.  assign_code tells if it is {PRE,POST}{IN,DE}CREMENT_EXPR.
 * Ordinarily, it is MODIFY_EXPR.
 */
WN *
WFE_Lhs_Of_Modify_Expr(tree_code assign_code,
		       tree lhs, 
		       bool need_result,
		       TY_IDX component_ty_idx, 
		       INT64 component_offset,
		       UINT32 field_id,
		       bool is_bit_field,
		       WN *rhs_wn,
		       PREG_NUM rhs_preg_num,
		       bool is_realpart,
		       bool is_imagpart)
{
  WN *wn;
  ST *st;
  bool result_in_temp = FALSE;
  ST *result_preg_st;
  PREG_NUM result_preg;
  PREG_NUM lhs_preg_num = 0;
  enum tree_code code = TREE_CODE (lhs);
  BOOL volt = FALSE;
  if (rhs_wn != NULL) {
    WFE_Set_ST_Addr_Saved (rhs_wn);
  }
  if (code == COMPONENT_REF) {
    INT64 ofst;
    TY_IDX ty_idx0;

    tree arg0 = TREE_OPERAND(lhs, 0);
    tree arg1 = TREE_OPERAND(lhs, 1);
#ifdef GPLUSPLUS_FE
    // for g++ ensure that the WHIRL type for the enclosing structure has been
    // created in order to set the field id to a non zero value
    (void) Get_TY (TREE_TYPE (arg0));
#endif /* GPLUSPLUS_FE */
    if (component_ty_idx == 0)
      ty_idx0 = Get_TY(TREE_TYPE(lhs));
    else ty_idx0 = component_ty_idx;
    if (DECL_BIT_FIELD(arg1)) 
      is_bit_field = TRUE;
    if (! is_bit_field)
      ofst = (BITSPERBYTE * Get_Integer_Value(DECL_FIELD_OFFSET(arg1)) +
			    Get_Integer_Value(DECL_FIELD_BIT_OFFSET(arg1)))
			  / BITSPERBYTE;
    else ofst = 0;
#ifdef KEY
    FmtAssert (DECL_FIELD_ID(arg1) != 0,
               ("WFE_Lhs_Of_Modify_Expr: DECL_FIELD_ID used but not set"));
#endif
    wn = WFE_Lhs_Of_Modify_Expr(assign_code, arg0, need_result, ty_idx0, 
				ofst+component_offset,
			        field_id + DECL_FIELD_ID(arg1), is_bit_field, 
				rhs_wn, rhs_preg_num, is_realpart, is_imagpart);
    return wn;
  }

  if (code == REALPART_EXPR) {
    tree arg0 = TREE_OPERAND(lhs, 0);
    TY_IDX ty_idx0 = Get_TY(TREE_TYPE(arg0));
    wn = WFE_Lhs_Of_Modify_Expr(assign_code, arg0, need_result, ty_idx0,
				component_offset, field_id, is_bit_field,
				rhs_wn, rhs_preg_num, TRUE, FALSE);
    return wn;
  }

  if (code == IMAGPART_EXPR) {
    tree arg0 = TREE_OPERAND(lhs, 0);
    TY_IDX ty_idx0 = Get_TY(TREE_TYPE(arg0));
    wn = WFE_Lhs_Of_Modify_Expr(assign_code, arg0, need_result, ty_idx0,
				component_offset, field_id, is_bit_field,
				rhs_wn, rhs_preg_num, FALSE, TRUE);
    return wn;
  }

  if (code == PARM_DECL || code == VAR_DECL || code == RESULT_DECL) {
    TY_IDX hi_ty_idx = Get_TY(TREE_TYPE(lhs)); // type associated with field_id
    if (TREE_THIS_VOLATILE(lhs)) {
      Set_TY_is_volatile(hi_ty_idx);
      volt = TRUE;
    }
    TY_IDX desc_ty_idx = component_ty_idx;
    if (desc_ty_idx == 0)
      desc_ty_idx = hi_ty_idx;
    if (TY_is_volatile(desc_ty_idx)) {
      Clear_TY_is_volatile(desc_ty_idx);
      volt = TRUE;
    }
    st = Get_ST (lhs);
    if (ST_assigned_to_dedicated_preg (st)) {
      Set_TY_is_volatile(hi_ty_idx);
      volt = TRUE;
    }
    Is_True(! is_bit_field || field_id <= MAX_FIELD_ID,
	    ("WFE_Lhs_Of_Modify_Expr: field id for bit-field exceeds limit"));

    TYPE_ID rtype = Widen_Mtype(TY_mtype(desc_ty_idx));
    TYPE_ID desc = is_bit_field ? MTYPE_BS : TY_mtype(desc_ty_idx);

    if (rhs_wn == NULL) {
      // Manufacture a negative-PREG RHS for the STID we are about to
      // generate. This feature is used in preparing WHIRL ASM
      // statements.
      // TODO: How to support a bit-field output of non-integral
      // number of bytes?
      if (rtype == MTYPE_M && desc == MTYPE_M) {
#ifndef KEY
        FmtAssert(TY_size(desc_ty_idx) == MTYPE_byte_size(Def_Int_Mtype),
                  ("Size of ASM struct opnd must be equal to register size"));
        desc = rtype = Def_Int_Mtype;
        desc_ty_idx = hi_ty_idx = MTYPE_To_TY(Def_Int_Mtype);
#else
	// Handle asm like:
	//        asm("cfc1 %0,$31":"=r"(*s));
	// where, s is a pointer to a structure.
	if (rtype == MTYPE_M && desc == MTYPE_M) {
	  if (TY_size(desc_ty_idx) == MTYPE_byte_size(Def_Int_Mtype)) {
	    desc = rtype = Def_Int_Mtype;
	    desc_ty_idx = hi_ty_idx = MTYPE_To_TY(Def_Int_Mtype);
	  } else {
	    desc = rtype = MTYPE_I4;
	    desc_ty_idx = hi_ty_idx = MTYPE_To_TY(MTYPE_I4);
	  }
	}
#endif
      }
      ST *rhs_st = MTYPE_To_PREG(desc);
      rhs_wn = WN_CreateLdid (OPR_LDID, rtype,
			      desc, rhs_preg_num, rhs_st,
			      desc_ty_idx, 0);
    }
    else {
      WN *result_wn;	// the result wn to be returned
      if (assign_code == MODIFY_EXPR) {
	if (is_realpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     rhs_wn,
			     WN_Unary(OPR_IMAGPART,
				      Mtype_complex_to_real (rtype),
				      WN_CreateLdid(OPR_LDID, rtype, desc,
						    ST_ofst(st) + component_offset,
						    st, hi_ty_idx, field_id)));
	else
	if (is_imagpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     WN_Unary(OPR_REALPART,
				      Mtype_complex_to_real (rtype),
				      WN_CreateLdid(OPR_LDID, rtype, desc,
						    ST_ofst(st) + component_offset,
						    st, hi_ty_idx, field_id)),
			     rhs_wn);
      }
      else {
	if (is_realpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     rhs_wn,
			     WN_Floatconst (Mtype_complex_to_real (rtype), 0.0));
	else
	if (is_imagpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     WN_Floatconst (Mtype_complex_to_real (rtype), 0.0),
			     rhs_wn);
      }

      if (assign_code == PREINCREMENT_EXPR ||
	  assign_code == PREDECREMENT_EXPR) {
        wn = WN_CreateLdid (OPR_LDID, rtype, desc, 
			    ST_ofst(st) + component_offset,
			    st, hi_ty_idx, field_id);
        rhs_wn = WN_Binary(Operator_From_Tree [assign_code].opr,
		           rtype, wn, rhs_wn);
	result_wn = rhs_wn;
      }
      else if (assign_code == POSTINCREMENT_EXPR ||
	       assign_code == POSTDECREMENT_EXPR) {
        result_wn = WN_CreateLdid (OPR_LDID, rtype, desc, 
				   ST_ofst(st) + component_offset,
				   st, hi_ty_idx, field_id);
      }
      else result_wn = rhs_wn;

      if (need_result && 
	  (volt ||
	   assign_code == POSTINCREMENT_EXPR ||
	   assign_code == POSTDECREMENT_EXPR)) { // save result in a preg
        result_in_temp = TRUE;
        result_preg_st = MTYPE_To_PREG(rtype);
        result_preg = Create_Preg(rtype, NULL);
        wn = WN_Stid(rtype, result_preg, result_preg_st, desc_ty_idx, result_wn,
		     0);
        WFE_Stmt_Append (wn, Get_Srcpos());
        result_wn = WN_Ldid(rtype, result_preg, result_preg_st, desc_ty_idx, 0);
      }

      if (assign_code == POSTINCREMENT_EXPR ||
	  assign_code == POSTDECREMENT_EXPR) {
        rhs_wn = WN_Binary(Operator_From_Tree [assign_code].opr,
		           rtype, result_wn, rhs_wn);
      }
      else rhs_wn = result_wn;

      // rhs_wn is now always the right-hand-side of the assignment
    }

    // the assignment
    if (!WFE_Keep_Zero_Length_Structs &&
        desc == MTYPE_M               &&
        TY_size (hi_ty_idx) == 0) {
      // ignore zero length structs
    }
    else {
      wn = WN_Stid (desc, ST_ofst(st) + component_offset + lhs_preg_num, st,
		    hi_ty_idx, rhs_wn, field_id);
      WFE_Stmt_Append(wn, Get_Srcpos());
    }
    if (need_result) {
      if (! result_in_temp)
        wn = WN_CreateLdid(OPR_LDID, rtype, desc, 
			   ST_ofst(st) + component_offset, st, hi_ty_idx,
			   field_id);
      else wn = WN_Ldid(rtype, result_preg, result_preg_st, desc_ty_idx, 0);
      if (is_realpart)
	wn = WN_Unary (OPR_REALPART, Mtype_complex_to_real (rtype), wn);
      else
      if (is_imagpart)
	wn = WN_Unary (OPR_IMAGPART, Mtype_complex_to_real (rtype), wn);
    }
    else wn = NULL;
  }
  else if (code == INDIRECT_REF) {
    TY_IDX hi_ty_idx = Get_TY(TREE_TYPE(lhs));
    if (TREE_THIS_VOLATILE(lhs)) {
      Set_TY_is_volatile(hi_ty_idx);
      volt = TRUE;
    }
    tree op = TREE_OPERAND(lhs, 0);
    WN *addr_wn = WFE_Expand_Expr (TREE_OPERAND (lhs, 0));
    TY_IDX desc_ty_idx = component_ty_idx;
    if (desc_ty_idx == 0)
      desc_ty_idx = hi_ty_idx;
    if (TY_is_volatile(desc_ty_idx)) {
      Clear_TY_is_volatile(desc_ty_idx);
      volt = TRUE;
    }
    Is_True(! is_bit_field || field_id <= MAX_FIELD_ID,
	    ("WFE_Lhs_Of_Modify_Expr: field id for bit-field exceeds limit"));
    if (WN_has_side_effects(addr_wn) &&
	(need_result || 
	 assign_code == PREINCREMENT_EXPR ||
	 assign_code == PREDECREMENT_EXPR ||
	 assign_code == POSTINCREMENT_EXPR ||
	 assign_code == POSTDECREMENT_EXPR)) {
      ST       *preg_st;
      PREG_NUM  preg;
      TY_IDX    address_ty_idx = Get_TY (TREE_TYPE (TREE_OPERAND (lhs, 0)));
      preg_st = MTYPE_To_PREG(Pointer_Mtype);
      preg    = Create_Preg (Pointer_Mtype, NULL);
      wn      = WN_Stid (Pointer_Mtype, preg, preg_st, address_ty_idx, addr_wn);
      WFE_Set_ST_Addr_Saved (addr_wn);
      WFE_Stmt_Append (wn, Get_Srcpos());
      addr_wn = WN_Ldid (Pointer_Mtype, preg, preg_st, address_ty_idx);
    }

    TYPE_ID rtype = Widen_Mtype(TY_mtype(desc_ty_idx));
    TYPE_ID desc = is_bit_field ? MTYPE_BS : TY_mtype(desc_ty_idx);

    if (rhs_wn == NULL) {
      // Manufacture a negative-PREG RHS for the ISTORE we are about to
      // generate. This feature is used in preparing WHIRL ASM
      // statements.
      ST *rhs_st;
      // TODO: How to support a bit-field output of non-integral
      // number of bytes?
      rhs_st = MTYPE_To_PREG(desc);
      // Types are likely to be wrong in the following
      rhs_wn = WN_CreateLdid (OPR_LDID, rtype, desc, rhs_preg_num, rhs_st,
			      desc_ty_idx, 0);
    }
    else {
      WN *result_wn;	// the result wn to be returned

      if (assign_code == MODIFY_EXPR) {
	if (is_realpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     rhs_wn,
			     WN_Unary(OPR_IMAGPART,
				      Mtype_complex_to_real (rtype),
				      WN_CreateIload(OPR_ILOAD, rtype, desc,
						     component_offset,
						     field_id != 0 ? hi_ty_idx : desc_ty_idx,
						     Make_Pointer_Type(hi_ty_idx, FALSE),
						     WN_COPY_Tree (addr_wn),
						     field_id)));
	else
	if (is_imagpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     WN_Unary(OPR_REALPART,
				      Mtype_complex_to_real (rtype),
				      WN_CreateIload(OPR_ILOAD, rtype, desc,
						     component_offset,
						     field_id != 0 ? hi_ty_idx : desc_ty_idx,
						     Make_Pointer_Type(hi_ty_idx, FALSE),
						     WN_COPY_Tree (addr_wn),
						     field_id)),
			     rhs_wn);
      }
      else {
	if (is_realpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     rhs_wn,
			     WN_Floatconst (Mtype_complex_to_real (rtype), 0.0));
	else
	if (is_imagpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     WN_Floatconst (Mtype_complex_to_real (rtype), 0.0),
			     rhs_wn);
      }

      if (assign_code == PREINCREMENT_EXPR ||
	  assign_code == PREDECREMENT_EXPR) {
        wn = WN_CreateIload (OPR_ILOAD, rtype, desc, component_offset,
			     field_id != 0 ? hi_ty_idx : desc_ty_idx,
			     Make_Pointer_Type(hi_ty_idx, FALSE),
			     WN_COPY_Tree (addr_wn),
			     field_id);
        rhs_wn = WN_Binary(Operator_From_Tree [assign_code].opr,
                           rtype, wn, rhs_wn);
        result_wn = rhs_wn;
      }
      else if (assign_code == POSTINCREMENT_EXPR ||
	       assign_code == POSTDECREMENT_EXPR) {
	result_wn = WN_CreateIload (OPR_ILOAD, rtype, desc, component_offset,
				    field_id != 0 ? hi_ty_idx : desc_ty_idx,
				    Make_Pointer_Type(hi_ty_idx, FALSE),
				    WN_COPY_Tree (addr_wn),
				    field_id);
      }
      else result_wn = rhs_wn;

      if (need_result && 
	  (volt ||
           assign_code == POSTINCREMENT_EXPR ||
           assign_code == POSTDECREMENT_EXPR)) { // save result in a preg
	result_in_temp = TRUE;
        result_preg_st = MTYPE_To_PREG(rtype);
        result_preg = Create_Preg(rtype, NULL);
        wn = WN_Stid(rtype, result_preg, result_preg_st, desc_ty_idx, result_wn,
		     0);
        WFE_Stmt_Append (wn, Get_Srcpos());;
        result_wn = WN_Ldid(rtype, result_preg, result_preg_st, desc_ty_idx, 0);
      }

      if (assign_code == POSTINCREMENT_EXPR ||
	  assign_code == POSTDECREMENT_EXPR) {
        rhs_wn = WN_Binary(Operator_From_Tree [assign_code].opr,
                           rtype, result_wn, rhs_wn);
      }
      else rhs_wn = result_wn;

      // rhs_wn is now always the right-hand-side of the assignment
    }

    // the assignment
    if (!WFE_Keep_Zero_Length_Structs &&
        desc == MTYPE_M               &&
        TY_size (hi_ty_idx) == 0) {
      // ignore zero length structs
      if (WN_has_side_effects (addr_wn)) {
	wn = WN_CreateEval (addr_wn);
	WFE_Stmt_Append (wn, Get_Srcpos());
      }
      wn = NULL;
    }
    else {
#ifdef KEY
      // The store target could be an INDIRECT_REF that kg++fe added to make
      // the store write to the area pointed to by the fake first param.  If
      // so, check that copying the object does not involve a copy constructor.
      // kg++fe cannot call the copy constructor whenever it wants because g++
      // might not have generated the copy constructor definition, since the
      // copy constructor was never called.  Furthermore, copying the object
      // implies we need to destroy the source object, but g++ might not have
      // generated the destructor definition for the same reason.
      //
      // This checking is only necessary when we are copying through the fake
      // param.  Normally g++ calls the copy constructor explicitly if an
      // object requires it.  In such a case, the copy constructor is always
      // defined.
      tree addr = TREE_OPERAND(lhs, 0);
      WN *first_formal = WN_formal(Current_Entry_WN(), 0);
      if (TY_return_in_mem(hi_ty_idx) &&
	  field_id == 0 &&
	  // See if it is an indirect ref of the fake first parm.
	  first_formal != NULL &&
	  TREE_CODE(addr) == VAR_DECL &&
	  DECL_ST(addr) == WN_st(first_formal)) {
	FmtAssert(TY_mtype(hi_ty_idx) == MTYPE_M,
		  ("WFE_Lhs_Of_Modify_Expr: return_in_mem type not MTYPE_M"));
	tree ptr_type = TREE_TYPE(TREE_OPERAND(lhs, 0));
	tree type = TREE_TYPE(ptr_type);
	FmtAssert(TREE_CODE(ptr_type) == POINTER_TYPE,
	    ("WFE_Lhs_Of_Modify_Expr: INDIRECT_REF opnd0 is not POINTER_TYPE"));
	FmtAssert(component_offset == 0,
		  ("WFE_Lhs_Of_Modify_Expr: component_offset nonzero"));
	TY_IDX tidx = Get_TY(ptr_type);
	// Check object has no copy constructor.
	FmtAssert(!WFE_has_copy_constructor(type),
	    ("WFE_Lhs_Of_Modify_Expr: object needs copy constructor"));
      }
#endif
      wn = WN_CreateIstore(OPR_ISTORE, MTYPE_V, desc, component_offset, 
			   Make_Pointer_Type (hi_ty_idx, FALSE),
			   rhs_wn, addr_wn, field_id);
      WFE_Stmt_Append(wn, Get_Srcpos());
      if (need_result) {
	if (! result_in_temp)
          wn = WN_CreateIload(OPR_ILOAD, rtype, desc, component_offset,
			      field_id != 0 ? hi_ty_idx : desc_ty_idx,
			      Make_Pointer_Type (hi_ty_idx, FALSE),
			      WN_COPY_Tree (addr_wn),
			      field_id);
	else wn = WN_Ldid(rtype, result_preg, result_preg_st, desc_ty_idx, 0);
	if (is_realpart)
	  wn = WN_Unary (OPR_REALPART, Mtype_complex_to_real (rtype), wn);
	else
	if (is_imagpart)
	  wn = WN_Unary (OPR_IMAGPART, Mtype_complex_to_real (rtype), wn);
      }
      else wn = NULL;
    }
  }
  else if (code == ARRAY_REF) {
    TY_IDX elem_ty_idx;
    // generate the WHIRL array node
    WN *addr_wn = WFE_Array_Expr(lhs, &elem_ty_idx, 0, 0, 0);
    if (TY_is_volatile(elem_ty_idx))
      volt = TRUE;
    TY_IDX desc_ty_idx = component_ty_idx;
    if (desc_ty_idx == 0)
      desc_ty_idx = Get_TY (TREE_TYPE(lhs));
    if (TY_is_volatile(desc_ty_idx)) {
      Clear_TY_is_volatile(desc_ty_idx);
      volt = TRUE;
    }
    Is_True(! is_bit_field || field_id <= MAX_FIELD_ID,
	    ("WFE_Lhs_Of_Modify_Expr: field id for bit-field exceeds limit"));
    if (WN_has_side_effects(addr_wn) &&
        (need_result ||
         assign_code == PREINCREMENT_EXPR ||
         assign_code == PREDECREMENT_EXPR ||
         assign_code == POSTINCREMENT_EXPR ||
	 assign_code == POSTDECREMENT_EXPR)) {
      ST       *preg_st;
      PREG_NUM  preg;
      TY_IDX    address_ty_idx = Make_Pointer_Type(elem_ty_idx, FALSE);
      preg_st = MTYPE_To_PREG(Pointer_Mtype);
      preg    = Create_Preg (Pointer_Mtype, NULL);
      wn      = WN_Stid (Pointer_Mtype, preg, preg_st, address_ty_idx, addr_wn);
      WFE_Set_ST_Addr_Saved (addr_wn);
      WFE_Stmt_Append (wn, Get_Srcpos());
      addr_wn = WN_Ldid (Pointer_Mtype, preg, preg_st, address_ty_idx);
    }

    TYPE_ID rtype = Widen_Mtype(TY_mtype(desc_ty_idx));
    TYPE_ID desc = is_bit_field ? MTYPE_BS : TY_mtype(desc_ty_idx);

    if (rhs_wn == NULL) {
      // Manufacture a negative-PREG RHS for the ISTORE we are about to
      // generate. This feature is used in preparing WHIRL ASM
      // statements.
      ST *rhs_st;
      // TODO: How to support a bit-field output of non-integral
      // number of bytes?
      rhs_st = MTYPE_To_PREG(desc);
      rhs_wn = WN_CreateLdid (OPR_LDID, rtype, desc, rhs_preg_num, rhs_st,
			      desc_ty_idx, 0);
    }
    else {
      WN *result_wn;    // the result wn to be returned

      if (assign_code == MODIFY_EXPR) {
	if (is_realpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     rhs_wn,
			     WN_Unary(OPR_IMAGPART,
				      Mtype_complex_to_real (rtype),
				      WN_CreateIload(OPR_ILOAD, rtype, desc,
						     component_offset,
						     field_id != 0 ? elem_ty_idx : desc_ty_idx,
						     Make_Pointer_Type(elem_ty_idx, FALSE),
						     WN_COPY_Tree (addr_wn),
						     field_id)));
	else
	if (is_imagpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     WN_Unary(OPR_REALPART,
				      Mtype_complex_to_real (rtype),
				      WN_CreateIload(OPR_ILOAD, rtype, desc,
						     component_offset,
						     field_id != 0 ? elem_ty_idx : desc_ty_idx,
						     Make_Pointer_Type(elem_ty_idx, FALSE),
						     WN_COPY_Tree (addr_wn),
						     field_id)),
			     rhs_wn);
      }
      else {
	if (is_realpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     rhs_wn,
			     WN_Floatconst (Mtype_complex_to_real (rtype), 0.0));
	else
	if (is_imagpart)
	  rhs_wn = WN_Binary(OPR_COMPLEX, rtype,
			     WN_Floatconst (Mtype_complex_to_real (rtype), 0.0),
			     rhs_wn);
      }

      if (assign_code == PREINCREMENT_EXPR ||
          assign_code == PREDECREMENT_EXPR) {
        wn = WN_CreateIload (OPR_ILOAD, rtype, desc, component_offset,
                             field_id != 0 ? elem_ty_idx : desc_ty_idx,
                             Make_Pointer_Type(elem_ty_idx, FALSE),
                             WN_COPY_Tree (addr_wn),
                             field_id);
        rhs_wn = WN_Binary(Operator_From_Tree [assign_code].opr,
                           rtype, wn, rhs_wn);
	result_wn = rhs_wn;
      }
      else if (assign_code == POSTINCREMENT_EXPR ||
	       assign_code == POSTDECREMENT_EXPR) {
        result_wn = WN_CreateIload (OPR_ILOAD, rtype, desc, component_offset,
				    field_id != 0 ? elem_ty_idx : desc_ty_idx,
				    Make_Pointer_Type(elem_ty_idx, FALSE),
				    WN_COPY_Tree (addr_wn),
				    field_id);
      }
      else result_wn = rhs_wn;

      if (need_result && 
	  (volt ||
           assign_code == POSTINCREMENT_EXPR ||
	   assign_code == POSTDECREMENT_EXPR)) { // save result in a preg
        result_in_temp = TRUE;
        result_preg_st = MTYPE_To_PREG(rtype);
        result_preg = Create_Preg(rtype, NULL);
        wn = WN_Stid(rtype, result_preg, result_preg_st, desc_ty_idx, result_wn,
		     0);
        WFE_Stmt_Append (wn, Get_Srcpos());;
        result_wn = WN_Ldid(rtype, result_preg, result_preg_st, desc_ty_idx, 0);
      }

      if (assign_code == POSTINCREMENT_EXPR ||
          assign_code == POSTDECREMENT_EXPR) {
        rhs_wn = WN_Binary(Operator_From_Tree [assign_code].opr,
                           rtype, result_wn, rhs_wn);
      }
      else rhs_wn = result_wn;

      // rhs_wn is now always the right-hand-side of the assignment
    }

    // the assignment
    if (!WFE_Keep_Zero_Length_Structs &&
        desc == MTYPE_M               &&
        TY_size (elem_ty_idx) == 0) {
      // ignore zero length structs
      if (WN_has_side_effects (addr_wn)) {
        wn = WN_CreateEval (addr_wn);
        WFE_Stmt_Append (wn, Get_Srcpos());
      }
      wn = NULL;
    }
    else {
      wn = WN_CreateIstore(OPR_ISTORE, MTYPE_V, desc, component_offset, 
			   Make_Pointer_Type(elem_ty_idx, FALSE), rhs_wn,
			   addr_wn, field_id);
      WFE_Stmt_Append(wn, Get_Srcpos());
      if (need_result) {
        if (! result_in_temp)
	  wn = WN_CreateIload (OPR_ILOAD, rtype, desc, component_offset,
			       field_id != 0 ? elem_ty_idx : desc_ty_idx,
                               Make_Pointer_Type (elem_ty_idx, FALSE),
			       WN_COPY_Tree (addr_wn),
			       field_id);
	else wn = WN_Ldid(rtype, result_preg, result_preg_st, desc_ty_idx, 0);
	if (is_realpart)
	  wn = WN_Unary (OPR_REALPART, Mtype_complex_to_real (rtype), wn);
	else
	if (is_imagpart)
	  wn = WN_Unary (OPR_IMAGPART, Mtype_complex_to_real (rtype), wn);
      }
      else wn = NULL;
    }
  }
  else Fail_FmtAssertion ("WFE_Lhs_Of_Modify_Expr: unhandled tree node in LHS of MODIFY_EXPR");
  return wn;
}

/* ============================================================================
 *
 * WFE_Expand_Expr_With_Sequence_Point
 *
 * This routine is invoked instead of WN_Expand_Expr to handle the
 * following expression nodes
 *
 *   both operands of && and ||
 *   all three operands of conditional ?
 *   controlling expression of if
 *   controlling expression of switch
 *   controlling expression of while
 *   statement expression
 *
 * In order to generate WHIRL for an expression with side effects,
 * we would like to move operations such as calls, pre increment/decrement
 * into a comma operator, and operations such as post increment/decrement
 * into a rcomma operator.
 *
 * Sequence points related to function call and return are not handled
 * here as we cannot generate RCOMMA nodes in these cases.
 *
 * ============================================================================
 */

WN*
WFE_Expand_Expr_With_Sequence_Point (tree exp, TYPE_ID mtype, WN* target_wn)
{
  WN *wn;

  if (mtype == MTYPE_V)
#ifdef KEY
    wn = WFE_Expand_Expr (exp, FALSE, 0, 0, 0, 0, FALSE, FALSE, target_wn);
#else
    wn = WFE_Expand_Expr (exp, FALSE);
#endif

  else {

    WN *comma_block      = WN_CreateBlock ();

    WFE_Stmt_Push (comma_block, wfe_stmk_comma, Get_Srcpos ());
#ifdef KEY
    wn = WFE_Expand_Expr (exp, TRUE, 0, 0, 0, 0, FALSE, FALSE, target_wn);
#else
    wn = WFE_Expand_Expr (exp);
#endif

    // normalize bool expressions
    if (TREE_TYPE (exp) == boolean_type_node) {
      if (WN_operator (wn) == OPR_LDID ||
          WN_operator (wn) == OPR_ILOAD) {
        WN *zero = WN_Intconst (WN_rtype (wn), 0);
        wn = WN_Relational (OPR_NE, MTYPE_I4, wn, zero);
      }
    }

    WFE_Stmt_Pop (wfe_stmk_comma);
    if (WN_first (comma_block)) {
      if (wn)
	wn = WN_CreateComma (OPR_COMMA, Mtype_comparison (mtype), MTYPE_V,
			     comma_block, wn);
      else
	WFE_Stmt_Append (comma_block, Get_Srcpos());
    }
    else
      WN_Delete (comma_block);
  }

  return wn;
} /* WFE_Expand_Expr_With_Sequence_Point */

static void
emit_barrier (bool type, tree list, INT32 k)
{
  INT32  i;
  WN    *wn = WN_CreateBarrier (type, k);

  for (i = 0; i < k; i++) {
    tree exp = TREE_VALUE (list);
    ST *st   = Get_ST (exp);
    WN_kid (wn, i) = WN_Lda (Pointer_Mtype, 0, st,
                             Make_Pointer_Type (ST_type (st), FALSE));
    list = TREE_CHAIN (list);
  }

  WFE_Stmt_Append (wn, Get_Srcpos());
} /* emit_barrier */

static WN *
emit_builtin_lock_test_and_set (tree exp, INT32 k)
{
  WN        *wn;
  WN        *arg_wn;
  WN        *ikids [2];
  TYPE_ID    obj_mtype;
  TY_IDX     arg_ty_idx;
  TYPE_ID    arg_mtype;
  tree       list = TREE_OPERAND (exp, 1);
  OPCODE     opc;
  INTRINSIC  iopc;

  obj_mtype  = TY_mtype (TY_pointed (Get_TY(TREE_TYPE(TREE_VALUE(list)))));
  arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
  arg_mtype  = TY_mtype (arg_ty_idx);
  arg_wn     = WFE_Expand_Expr (TREE_VALUE (list));
  arg_wn     = WN_CreateParm (arg_mtype, arg_wn, arg_ty_idx, WN_PARM_BY_VALUE);
  ikids [0]  = arg_wn;
  list       = TREE_CHAIN (list);
  arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
  arg_mtype  = TY_mtype (arg_ty_idx);
  arg_wn     = WFE_Expand_Expr (TREE_VALUE (list));
  arg_wn     = WN_CreateParm (arg_mtype, arg_wn, arg_ty_idx, WN_PARM_BY_VALUE);
  ikids [1]  = arg_wn;
  list       = TREE_CHAIN (list);

  if (obj_mtype == MTYPE_I4) {
    opc  = OPC_I4INTRINSIC_CALL;
    iopc = INTRN_LOCK_TEST_AND_SET_I4;
  }
  else
  if (obj_mtype == MTYPE_U4) {
    opc  = OPC_U4INTRINSIC_CALL;
    iopc = INTRN_LOCK_TEST_AND_SET_I4;
  }
  else
  if (obj_mtype == MTYPE_I8) {
    opc  = OPC_I8INTRINSIC_CALL;
    iopc = INTRN_LOCK_TEST_AND_SET_I8;
  }
  else
  if (obj_mtype == MTYPE_U8) {
    opc  = OPC_U8INTRINSIC_CALL;
    iopc = INTRN_LOCK_TEST_AND_SET_I8;
  }
  else {
    Fail_FmtAssertion ("unknown object type in __builtin_lock_test_and_set");
    opc  = OPCODE_UNKNOWN;
    iopc = INTRINSIC_NONE;
  }

  wn = WN_Create_Intrinsic (opc, iopc, 2, ikids);
  WFE_Stmt_Append (wn, Get_Srcpos());

  ST       *preg_st = MTYPE_To_PREG(obj_mtype);
  TY_IDX    preg_ty_idx = Be_Type_Tbl(obj_mtype);
  PREG_NUM  preg = Create_Preg (obj_mtype, NULL);

  wn = WN_Ldid (obj_mtype, -1, Return_Val_Preg, preg_ty_idx);
  wn = WN_Stid (obj_mtype, preg, preg_st, preg_ty_idx, wn),
  WFE_Stmt_Append (wn, Get_Srcpos());

  emit_barrier (FALSE, list, k);

  wn = WN_Ldid (obj_mtype, preg, preg_st, preg_ty_idx);

  return wn;
} /* emit_builtin_lock_test_and_set */

static void
emit_builtin_lock_release (tree exp, INT32 k)
{
  WN        *wn;
  WN        *arg_wn;
  WN        *ikids [1];
  TYPE_ID    obj_mtype;
  TY_IDX     arg_ty_idx;
  TYPE_ID    arg_mtype;
  tree       list = TREE_OPERAND (exp, 1);
  OPCODE     opc;
  INTRINSIC  iopc;

  obj_mtype  = TY_mtype (TY_pointed (Get_TY(TREE_TYPE(TREE_VALUE(list)))));
  arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
  arg_mtype  = TY_mtype (arg_ty_idx);
  arg_wn     = WFE_Expand_Expr (TREE_VALUE (list));
  arg_wn     = WN_CreateParm (arg_mtype, arg_wn, arg_ty_idx, WN_PARM_BY_VALUE);
  ikids [0]  = arg_wn;
  list       = TREE_CHAIN (list);

  emit_barrier (TRUE, list, k);

  opc = OPC_VINTRINSIC_CALL;
  if (obj_mtype == MTYPE_I4)
    iopc = INTRN_LOCK_RELEASE_I4;
  else
  if (obj_mtype == MTYPE_U4)
    iopc = INTRN_LOCK_RELEASE_I4;
  else
  if (obj_mtype == MTYPE_I8)
    iopc = INTRN_LOCK_RELEASE_I8;
  else
  if (obj_mtype == MTYPE_U8)
    iopc = INTRN_LOCK_RELEASE_I8;
  else {
    Fail_FmtAssertion ("unknown object type in __builtin_lock_test_and_set");
    opc  = OPCODE_UNKNOWN;
    iopc = INTRINSIC_NONE;
  }

  wn = WN_Create_Intrinsic (opc, iopc, 1, ikids);
  WFE_Stmt_Append (wn, Get_Srcpos());
} /* emit_builtin_lock_release */

static WN *
emit_builtin_compare_and_swap (tree exp, INT32 k)
{
  WN        *wn;
  WN        *arg_wn;
  WN        *ikids [3];
  TYPE_ID    obj_mtype;
  TY_IDX     arg_ty_idx;
  TYPE_ID    arg_mtype;
  tree       list = TREE_OPERAND (exp, 1);
  OPCODE     opc;
  INTRINSIC  iopc;

  obj_mtype  = TY_mtype (TY_pointed (Get_TY(TREE_TYPE(TREE_VALUE(list)))));
  arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
  arg_mtype  = TY_mtype (arg_ty_idx);
  arg_wn     = WFE_Expand_Expr (TREE_VALUE (list));
  arg_wn     = WN_CreateParm (arg_mtype, arg_wn, arg_ty_idx, WN_PARM_BY_VALUE);
  ikids [0]  = arg_wn;
  list       = TREE_CHAIN (list);
  arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
  arg_mtype  = TY_mtype (arg_ty_idx);
  arg_wn     = WFE_Expand_Expr (TREE_VALUE (list));
  arg_wn     = WN_CreateParm (arg_mtype, arg_wn, arg_ty_idx, WN_PARM_BY_VALUE);
  ikids [1]  = arg_wn;
  list       = TREE_CHAIN (list);
  arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
  arg_mtype  = TY_mtype (arg_ty_idx);
  arg_wn     = WFE_Expand_Expr (TREE_VALUE (list));
  arg_wn     = WN_CreateParm (arg_mtype, arg_wn, arg_ty_idx, WN_PARM_BY_VALUE);
  ikids [2]  = arg_wn;
  list       = TREE_CHAIN (list);

  emit_barrier (TRUE, list, k);

  opc = OPC_I4INTRINSIC_CALL;
  if (obj_mtype == MTYPE_I4)
    iopc = INTRN_COMPARE_AND_SWAP_I4;
  else
  if (obj_mtype == MTYPE_U4)
    iopc = INTRN_COMPARE_AND_SWAP_I4;
  else
  if (obj_mtype == MTYPE_I8)
    iopc = INTRN_COMPARE_AND_SWAP_I8;
  else
  if (obj_mtype == MTYPE_U8)
    iopc = INTRN_COMPARE_AND_SWAP_I8;
  else {
    Fail_FmtAssertion ("unknown object type in __builtin_lock_test_and_set");
    opc  = OPCODE_UNKNOWN;
    iopc = INTRINSIC_NONE;
  }

  wn = WN_Create_Intrinsic (opc, iopc, 3, ikids);
  WFE_Stmt_Append (wn, Get_Srcpos());

  ST       *preg_st = MTYPE_To_PREG(MTYPE_I4);
  TY_IDX    preg_ty_idx = Be_Type_Tbl(MTYPE_I4);
  PREG_NUM  preg = Create_Preg (MTYPE_I4, NULL);

  wn = WN_Ldid (MTYPE_I4, -1, Return_Val_Preg, preg_ty_idx);
  wn = WN_Stid (MTYPE_I4, preg, preg_st, preg_ty_idx, wn),
  WFE_Stmt_Append (wn, Get_Srcpos());

  emit_barrier (FALSE, list, k);

  wn = WN_Ldid (MTYPE_I4, preg, preg_st, preg_ty_idx);

  return wn;
} /* emit_builtin_compare_and_swap */

static void
emit_builtin_synchronize (tree exp, INT32 k)
{
  WN *wn;
  tree list = TREE_OPERAND (exp, 1);
  emit_barrier (TRUE,  list, k);
  wn = WN_Create_Intrinsic (OPC_VINTRINSIC_CALL, INTRN_SYNCHRONIZE, 0, NULL);
  WFE_Stmt_Append (wn, Get_Srcpos());
  emit_barrier (FALSE, list, k);
} /* emit_builtin_synchronize */

static char *
get_string_pointer (WN *wn)
{
  char *ptr = NULL;

  if (WN_operator (wn) == OPR_LDA) {
    ST *st = WN_st (wn);
    if (ST_class (st) == CLASS_CONST) {
      TCON tcon = Tcon_Table [ST_tcon (st)];
      if (TCON_ty (tcon) == MTYPE_STRING)
        ptr = ((char *) Targ_String_Address (tcon)) + WN_offset (wn);
    }
  }

  return ptr;
} /* get_string_pointer */

// Auxiliary function for WFE_Expand_Expr, return the address of
// a tree operand.  (Used for ADDR_EXPR.)
WN*
WFE_Address_Of(tree arg0)
{
  enum tree_code code0 = TREE_CODE (arg0);
  ST *st = 0;
  WN* wn = 0;
  WN* wn0;
  WN* wn1;
  TY_IDX ty_idx;

  switch (code0) {
  case VAR_DECL:
  case PARM_DECL:
  case FUNCTION_DECL:
#ifdef KEY
  case RESULT_DECL:	// bug 3878
#endif
    {
      st = Get_ST (arg0);
      ty_idx = ST_type (st);
#ifdef KEY
      // Arg0 is the virtual function table (vtable) for a class.  Initialize
      // the table.
      if (code0 == VAR_DECL) {
	if (DECL_INITIAL(arg0) &&
	    DECL_VIRTUAL_P(arg0) &&
	    !DECL_EXTERNAL(arg0)) {
	  tree init = DECL_INITIAL(arg0);
	  if (TREE_CODE(init) != ERROR_MARK) {
	    FmtAssert (TREE_CODE(init) == CONSTRUCTOR,
		       ("Unexpected initializer for virtual table"));
	    WFE_Initialize_Decl(arg0);
	  }
	}
      }
#endif
      // for VLAs, use the base_st instead of st
      if (code0 == VAR_DECL &&
          st != ST_base(st)) {
        FmtAssert (ST_ofst (st) == 0,
                   ("Variable Length Arrays within struct not currently implemented"));
        wn = WN_Ldid (Pointer_Mtype, 0, ST_base(st), ST_type(ST_base(st)));
      }
      else
        if (!WFE_Keep_Zero_Length_Structs &&
            code0 == PARM_DECL            &&
            TY_mtype (ty_idx) == MTYPE_M  &&
            TY_size (ty_idx) == 0) {
          // taking address of zero length struct passed as parameter
          DevWarn ("taking address of zero length struct %s at line %d",
                   ST_name (st), lineno);
          wn = WN_Intconst (Pointer_Mtype, 0);
        }
        else
          wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
    }
    break;

  case INDIRECT_REF:
    wn = WFE_Expand_Expr (TREE_OPERAND(arg0, 0));
    break;

  case STRING_CST:
    {
      TCON tcon;
      tcon = Host_To_Targ_String (MTYPE_STRING,
                                  const_cast<char*>TREE_STRING_POINTER(arg0),
                                  TREE_STRING_LENGTH(arg0));
      ty_idx = Get_TY(TREE_TYPE(arg0));
      st = New_Const_Sym (Enter_tcon (tcon), ty_idx);
      wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
      TREE_STRING_ST (arg0) = st;
    }
    break;

  case CONSTRUCTOR:
    {
      st = WFE_Generate_Temp_For_Initialized_Aggregate (arg0, "");
      wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
    }
    break;

  case LABEL_DECL:
    {
      DevWarn ("taking address of a label at line %d", lineno);
      LABEL_IDX label_idx = WFE_Get_LABEL (arg0, FALSE);
#if 0
      FmtAssert (arg0->decl.symtab_idx == CURRENT_SYMTAB,
                 ("line %d: taking address of a label not defined in current function currently not implemented", lineno));
#endif
      wn = WN_LdaLabel (Pointer_Mtype, label_idx);
      Set_LABEL_addr_saved (label_idx);
    }
    break;

  case TARGET_EXPR:
    {
      WFE_Expand_Expr (arg0);
      st = Get_ST (TREE_OPERAND(arg0, 0));
      wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
    }
    break;

  case COMPOUND_EXPR:
    {
      st = WN_st (WFE_Expand_Expr (arg0));
      wn = WN_Lda (Pointer_Mtype,  ST_ofst (st), st);
    }
    break;

  case NOP_EXPR:
    {
      wn = WFE_Address_Of(TREE_OPERAND(arg0, 0));
    }
    break;

  case MIN_EXPR:
  case MAX_EXPR:
    {
      // &(a <? b) or &(a >? b)
      tree op0 = TREE_OPERAND(arg0, 0);
      tree op1 = TREE_OPERAND(arg0, 1);
      WN* a = WFE_Expand_Expr(op0);
      WN* b = WFE_Expand_Expr(op1);
      FmtAssert(!WN_has_side_effects(a) && !WN_has_side_effects(b),
                ("Addr of MIN/MAX_EXPR with side effects not yet supported"));

      FmtAssert(same_type_p(TREE_TYPE(op0), TREE_TYPE(op1)),
                ("Types of MIN/MAX_EXPR operands differ"));
      TY_IDX  ptr_ty    = Make_Pointer_Type (Get_TY(TREE_TYPE(op0)), FALSE);
      TYPE_ID ptr_mtype = TY_mtype(ptr_ty);
      TY_IDX  arg_ty    = Get_TY(TREE_TYPE(TREE_OPERAND(arg0, 0)));
      TYPE_ID arg_mtype = TY_mtype(arg_ty);

      WN* aptr = WFE_Address_Of(op0);
      WN* bptr = WFE_Address_Of(op1);
      wn = WN_Select(Widen_Mtype(ptr_mtype),
                     WN_Relational(code0 == MIN_EXPR ? OPR_LT : OPR_GT,
                                   Widen_Mtype(arg_mtype),
                                   a, b),
                     aptr, bptr);
      Set_PU_has_very_high_whirl (Get_Current_PU ());
    }
    break;

  case COMPONENT_REF:
    {
      wn = WFE_Expand_Expr (arg0);
      ty_idx = Get_TY(TREE_TYPE(arg0));
      if (WN_operator (wn) == OPR_LDID) {
        WN_set_operator (wn, OPR_LDA);
        WN_set_desc (wn, MTYPE_V);
      }
      else
      if (WN_operator (wn) == OPR_ILOAD) {
        wn0 = WN_kid0 (wn);
        wn1 = WN_Intconst (Pointer_Mtype, WN_offset (wn));
        wn  = WN_Binary (OPR_ADD, Pointer_Mtype, wn0, wn1);
      }
      else
        Fail_FmtAssertion ("WFE_Address_Of has unhandled %s",
                           Operator_From_Tree [code0].name);
    }
    break;

#ifdef KEY // bug 3228
  case ARRAY_REF:
    wn = WFE_Expand_Expr (arg0);
    ty_idx = Get_TY(TREE_TYPE(arg0));
    break;
#endif

#ifdef KEY
    case COMPOUND_LITERAL_EXPR:
    {
      arg0 = DECL_INITIAL (TREE_OPERAND (TREE_OPERAND (arg0, 0), 0));
      st = WFE_Generate_Temp_For_Initialized_Aggregate (arg0, "");
      wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
    }
    break;

    // bug 2399
    case SAVE_EXPR:
    {
      st = WN_st (WFE_Expand_Expr (arg0));
      wn = WN_Lda (Pointer_Mtype,  ST_ofst (st), st);
    }
    break;

    // bug 5532, 5609
    case REALPART_EXPR:
    {
      wn = WFE_Expand_Expr (TREE_OPERAND (arg0, 0));
      if (WN_operator (wn) == OPR_ILOAD)
        wn = WN_kid0 (wn);
      else Fail_FmtAssertion ("WFE_Address_Of: NYI for REALPART_EXPR");
    }
    break;

    case IMAGPART_EXPR:
    {
      wn = WFE_Expand_Expr (TREE_OPERAND (arg0, 0));
      if (WN_operator (wn) == OPR_ILOAD)
      {
        wn0 = WN_kid0 (wn);
	TYPE_ID imag_mtype;
	switch (WN_rtype (wn))
	{
	  case MTYPE_C4:
	    imag_mtype = MTYPE_F4;
	    break;
	  case MTYPE_C8:
	    imag_mtype = MTYPE_F8;
	    break;
	  case MTYPE_CQ:
	    imag_mtype = MTYPE_FQ;
	    break;
	  default:
	    Fail_FmtAssertion ("WFE_Address_Of: Unexpected rtype in IMAGPART_EXPR");
	}
	INT ofst;
	if (imag_mtype == MTYPE_FQ)
	{
#ifdef TARG_X8664
	  if (Is_Target_32bit()) ofst = 12; else
#endif // TARG_X8664
	  ofst = 16;
	}
	else ofst = MTYPE_byte_size (imag_mtype);

	wn1 = WN_Intconst (Pointer_Mtype, ofst);
	wn  = WN_Binary (OPR_ADD, Pointer_Mtype, wn0, wn1);
      }
      else Fail_FmtAssertion ("WFE_Address_Of: NYI for IMAGPART_EXPR");
    }
    break;
#endif

  default:
    {
      Fail_FmtAssertion ("WFE_Address_Of: Unexpected operand %s",
                         Operator_From_Tree [code0].name);
    }
    break;
  }

  FmtAssert(wn != 0, ("WFE_Address_Of: null WHIRL tree for %s",
                      Operator_From_Tree [code0].name));
  return wn;
}

#ifdef TARG_X8664
/* expand a VA_ARG_EXPR node for scalar type according to X86-64 ABI and 
 * return the WHIRL node that represents the address to be dereferenced;
 * 'twice' is true is loading two consecutive parameters of the same type
 * because they belong to a struct; currently, twice is TRUE only if isfloat
 * is FALSE */
static WN *WFE_x8664_va_arg(WN *ap_wn, BOOL isfloat, TY_IDX ty_idx, BOOL twice)
{
  /* compare gp_offset with 48 or fp_offset with 176 */
  WN *wn0 = WN_Iload(MTYPE_I4, !isfloat ? 0 : 4, MTYPE_To_TY(MTYPE_I4), 
      		     WN_CopyNode(ap_wn));
  WN *wn1 = WN_Intconst(MTYPE_I4, (!isfloat ? 48 : 176) - (twice ? 8 : 0));
  WN *wn = WN_Relational(OPR_GE, MTYPE_I4, wn0, wn1);
  LABEL_IDX lab1;
  New_LABEL (CURRENT_SYMTAB, lab1);
  WN *lab1_wn = WN_CreateLabel ((ST_IDX) 0, lab1, 0, NULL);
  wn = WN_CreateTruebr(lab1, wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  ST *arg_temp_st = Gen_Temp_Symbol(Make_Pointer_Type(ty_idx), ".va_arg");
  WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, arg_temp_st);
  /* compute reg_save_area+gp_offset/fp_offset and store to arg_temp_st */
  wn0 = WN_Iload(MTYPE_I4, !isfloat ? 0 : 4, MTYPE_To_TY(MTYPE_I4), 
      		 WN_CopyNode(ap_wn));
  wn1 = WN_Iload(Pointer_Mtype, 16, MTYPE_To_TY(Pointer_Mtype), 
		 WN_CopyNode(ap_wn));
  wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
  wn = WN_Stid(Pointer_Mtype, 0, arg_temp_st, Make_Pointer_Type(ty_idx), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* increment gp_offset by 8 or fp_offset by 16 */
  wn0 = WN_Iload(MTYPE_I4, !isfloat ? 0 : 4, MTYPE_To_TY(MTYPE_I4), 
      		 WN_CopyNode(ap_wn));
  wn1 = WN_Intconst(MTYPE_I4, (!isfloat ? 8 : 16) * ((INT)twice+1));
  wn = WN_Binary(OPR_ADD, MTYPE_I4, wn0, wn1);
  wn = WN_Istore(MTYPE_I4, !isfloat ? 0 : 4, 
		 Make_Pointer_Type(MTYPE_To_TY(MTYPE_I4)), 
		 WN_CopyNode(ap_wn), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* branch around next part */
  LABEL_IDX lab2;
  New_LABEL (CURRENT_SYMTAB, lab2);
  WN *lab2_wn = WN_CreateLabel ((ST_IDX) 0, lab2, 0, NULL);
  wn = WN_CreateGoto(lab2);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  WFE_Stmt_Append (lab1_wn, Get_Srcpos ());

  /* store overflow_arg_area pointer to arg_temp_st */
  wn0 = WN_Iload(Pointer_Mtype, 8, Make_Pointer_Type(ty_idx), 
		 WN_CopyNode(ap_wn));
  wn = WN_Stid(Pointer_Mtype, 0, arg_temp_st, Make_Pointer_Type(ty_idx), wn0);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* increment overflow_arg_area pointer by 8 */
  wn0 = WN_Iload(Pointer_Mtype, 8, MTYPE_To_TY(Pointer_Mtype), 
		 WN_CopyNode(ap_wn));
  wn1 = WN_Intconst(MTYPE_U8, twice ? 16 : 8);
  wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
  wn = WN_Istore(Pointer_Mtype, 8,Make_Pointer_Type(MTYPE_To_TY(Pointer_Mtype)),
		 WN_CopyNode(ap_wn), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  WFE_Stmt_Append (lab2_wn, Get_Srcpos ());

  return WN_Ldid(Pointer_Mtype, 0, arg_temp_st, Make_Pointer_Type(ty_idx));
}

/* expand a VA_ARG_EXPR node for struct type being passed in 2 different classes
 * of registers, according to X86-64 ABI and return the WHIRL node that 
 * represents the address to be dereferenced; this requires allocating a
 * temporary for assembling the struct if passed in registers; isfloat0 is 
 * for the first 8-byte and isfloat1 is for the second 8-byte  */
static WN *WFE_x8664_va_arg_2_mixed(WN *ap_wn, BOOL isfloat0, BOOL isfloat1, 
				    TY_IDX ty_idx)
{
  /* compare gp_offset with 48 */
  WN *wn0 = WN_Iload(MTYPE_I4, 0, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  WN *wn1 = WN_Intconst(MTYPE_I4, 48);
  WN *wn = WN_Relational(OPR_GE, MTYPE_I4, wn0, wn1);
  LABEL_IDX lab1;
  New_LABEL (CURRENT_SYMTAB, lab1);
  WN *lab1_wn = WN_CreateLabel ((ST_IDX) 0, lab1, 0, NULL);
  wn = WN_CreateTruebr(lab1, wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());
  /* compare fp_offset with 176 */
  wn0 = WN_Iload(MTYPE_I4, 4, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  wn1 = WN_Intconst(MTYPE_I4, 176);
  wn = WN_Relational(OPR_GE, MTYPE_I4, wn0, wn1);
  wn = WN_CreateTruebr(lab1, wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* allocate a temporary location to assemble the structure value */
  ST *struct_temp_st = Gen_Temp_Symbol(ty_idx, ".va_arg_struct");
  WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, struct_temp_st);

  /* compute reg_save_area+gp_offset and store dereferenced value to 
   * struct_temp_st */
  wn0 = WN_Iload(MTYPE_I4, 0, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  wn1 = WN_Iload(Pointer_Mtype, 16, MTYPE_To_TY(Pointer_Mtype), 
		 WN_CopyNode(ap_wn));
  wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
  wn = WN_Iload(MTYPE_I8, 0, MTYPE_To_TY(MTYPE_I8), wn);
  wn = WN_Stid(MTYPE_I8, isfloat0 ? 8 : 0, struct_temp_st, 
	       MTYPE_To_TY(MTYPE_I8), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());
  /* compute reg_save_area+fp_offset and store dereferenced value to 
   * struct_temp_st */
  wn0 = WN_Iload(MTYPE_I4, 4, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  wn1 = WN_Iload(Pointer_Mtype, 16, MTYPE_To_TY(Pointer_Mtype), 
		 WN_CopyNode(ap_wn));
  wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
  wn = WN_Iload(MTYPE_F8, 0, MTYPE_To_TY(MTYPE_F8), wn);
  wn = WN_Stid(MTYPE_F8, isfloat0 ? 0 : 8, struct_temp_st, 
	       MTYPE_To_TY(MTYPE_F8), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* increment gp_offset by 8 */
  wn0 = WN_Iload(MTYPE_I4, 0, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  wn1 = WN_Intconst(MTYPE_I4, 8);
  wn = WN_Binary(OPR_ADD, MTYPE_I4, wn0, wn1);
  wn = WN_Istore(MTYPE_I4, 0, Make_Pointer_Type(MTYPE_To_TY(MTYPE_I4)), 
		 WN_CopyNode(ap_wn), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());
  /* increment fp_offset by 16 */
  wn0 = WN_Iload(MTYPE_I4, 4, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  wn1 = WN_Intconst(MTYPE_I4, 16);
  wn = WN_Binary(OPR_ADD, MTYPE_I4, wn0, wn1);
  wn = WN_Istore(MTYPE_I4, 4, Make_Pointer_Type(MTYPE_To_TY(MTYPE_I4)), 
		 WN_CopyNode(ap_wn), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* put the address of struct_temp_st in arg_temp_st */
  ST *arg_temp_st = Gen_Temp_Symbol(Make_Pointer_Type(ty_idx), ".va_arg");
  WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, arg_temp_st);
  wn = WN_Lda(Pointer_Mtype, 0, struct_temp_st, 0);
  Set_ST_addr_saved(struct_temp_st);
  wn = WN_Stid(Pointer_Mtype, 0, arg_temp_st, Make_Pointer_Type(ty_idx), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* branch around next part */
  LABEL_IDX lab2;
  New_LABEL (CURRENT_SYMTAB, lab2);
  WN *lab2_wn = WN_CreateLabel ((ST_IDX) 0, lab2, 0, NULL);
  wn = WN_CreateGoto(lab2);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  WFE_Stmt_Append (lab1_wn, Get_Srcpos ());

  /* store overflow_arg_area pointer to arg_temp_st */
  wn0 = WN_Iload(Pointer_Mtype, 8, Make_Pointer_Type(ty_idx), 
		 WN_CopyNode(ap_wn));
  wn = WN_Stid(Pointer_Mtype, 0, arg_temp_st, Make_Pointer_Type(ty_idx), wn0);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* increment overflow_arg_area pointer by 16 */
  wn0 = WN_Iload(Pointer_Mtype, 8, MTYPE_To_TY(Pointer_Mtype), 
		 WN_CopyNode(ap_wn));
  wn1 = WN_Intconst(MTYPE_U8, 16);
  wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
  wn = WN_Istore(Pointer_Mtype, 8,Make_Pointer_Type(MTYPE_To_TY(Pointer_Mtype)),
		 WN_CopyNode(ap_wn), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  WFE_Stmt_Append (lab2_wn, Get_Srcpos ());

  return WN_Ldid(Pointer_Mtype, 0, arg_temp_st, Make_Pointer_Type(ty_idx));
}

/* expand a VA_ARG_EXPR node for struct type being passed in 2 float
 * registers, according to X86-64 ABI and return the WHIRL node that 
 * represents the address to be dereferenced; this requires allocating a
 * temporary for assembling the struct if passed in registers, because each
 * float register is saved into 128 bit locations */
static WN *WFE_x8664_va_arg_2_float(WN *ap_wn, TY_IDX ty_idx)
{
  LABEL_IDX lab1;
  New_LABEL (CURRENT_SYMTAB, lab1);
  WN *lab1_wn = WN_CreateLabel ((ST_IDX) 0, lab1, 0, NULL);
  /* compare fp_offset with 160 (176 - 16) */
  WN *wn0 = WN_Iload(MTYPE_I4, 4, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  WN *wn1 = WN_Intconst(MTYPE_I4, 160);
  WN *wn = WN_Relational(OPR_GE, MTYPE_I4, wn0, wn1);
  wn = WN_CreateTruebr(lab1, wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* allocate a temporary location to assemble the structure value */
  ST *struct_temp_st = Gen_Temp_Symbol(ty_idx, ".va_arg_struct");
  WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, struct_temp_st);

  /* compute reg_save_area+fp_offset and store 1st dereferenced value to 
   * struct_temp_st */
  wn0 = WN_Iload(MTYPE_I4, 4, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  wn1 = WN_Iload(Pointer_Mtype, 16, MTYPE_To_TY(Pointer_Mtype), 
		 WN_CopyNode(ap_wn));
  wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
  wn = WN_Iload(MTYPE_F8, 0, MTYPE_To_TY(MTYPE_F8), wn);
  wn = WN_Stid(MTYPE_F8, 0, struct_temp_st, MTYPE_To_TY(MTYPE_F8), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());
  /* compute reg_save_area+fp_offset and store 2nd dereferenced value to 
   * struct_temp_st */
  wn0 = WN_Iload(MTYPE_I4, 4, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  wn1 = WN_Iload(Pointer_Mtype, 16, MTYPE_To_TY(Pointer_Mtype), 
		 WN_CopyNode(ap_wn));
  wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
  wn = WN_Iload(MTYPE_F8, 16, MTYPE_To_TY(MTYPE_F8), wn);
  wn = WN_Stid(MTYPE_F8, 8, struct_temp_st, MTYPE_To_TY(MTYPE_F8), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* increment fp_offset by 32 */
  wn0 = WN_Iload(MTYPE_I4, 4, MTYPE_To_TY(MTYPE_I4), WN_CopyNode(ap_wn));
  wn1 = WN_Intconst(MTYPE_I4, 32);
  wn = WN_Binary(OPR_ADD, MTYPE_I4, wn0, wn1);
  wn = WN_Istore(MTYPE_I4, 4, Make_Pointer_Type(MTYPE_To_TY(MTYPE_I4)), 
		 WN_CopyNode(ap_wn), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* put the address of struct_temp_st in arg_temp_st */
  ST *arg_temp_st = Gen_Temp_Symbol(Make_Pointer_Type(ty_idx), ".va_arg");
  WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, arg_temp_st);
  wn = WN_Lda(Pointer_Mtype, 0, struct_temp_st, 0);
  Set_ST_addr_saved(struct_temp_st);
  wn = WN_Stid(Pointer_Mtype, 0, arg_temp_st, Make_Pointer_Type(ty_idx), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* branch around next part */
  LABEL_IDX lab2;
  New_LABEL (CURRENT_SYMTAB, lab2);
  WN *lab2_wn = WN_CreateLabel ((ST_IDX) 0, lab2, 0, NULL);
  wn = WN_CreateGoto(lab2);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  WFE_Stmt_Append (lab1_wn, Get_Srcpos ());

  /* store overflow_arg_area pointer to arg_temp_st */
  wn0 = WN_Iload(Pointer_Mtype, 8, Make_Pointer_Type(ty_idx), 
		 WN_CopyNode(ap_wn));
  wn = WN_Stid(Pointer_Mtype, 0, arg_temp_st, Make_Pointer_Type(ty_idx), wn0);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  /* increment overflow_arg_area pointer by 16 */
  wn0 = WN_Iload(Pointer_Mtype, 8, MTYPE_To_TY(Pointer_Mtype), 
		 WN_CopyNode(ap_wn));
  wn1 = WN_Intconst(MTYPE_U8, 16);
  wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
  wn = WN_Istore(Pointer_Mtype, 8,Make_Pointer_Type(MTYPE_To_TY(Pointer_Mtype)),
		 WN_CopyNode(ap_wn), wn);
  WFE_Stmt_Append (wn, Get_Srcpos ());

  WFE_Stmt_Append (lab2_wn, Get_Srcpos ());

  return WN_Ldid(Pointer_Mtype, 0, arg_temp_st, Make_Pointer_Type(ty_idx));
}
#endif

#ifdef KEY
static bool inside_eh_region = false;
// Setup an EH region, typically across a function call.
void
Setup_EH_Region (bool for_unwinding)
{
    WN * region_body;

    if (for_unwinding)
	region_body = WFE_Stmt_Pop (wfe_stmk_region_body);
    else
    	{
	    region_body = WFE_Stmt_Pop (wfe_stmk_call_region_body);
	    inside_eh_region = false;
	}
    INITV_IDX iv;
    LABEL_IDX pad = 0;

    if (!for_unwinding) pad = lookup_cleanups (iv);
    else
    {
	iv = New_INITV();
        INITV_Set_ZERO (Initv_Table[iv], MTYPE_U4, 1);
    }

    INITV_IDX initv_label = New_INITV();
    if (pad)
    	INITV_Init_Label (initv_label, pad, 1);
    else
	INITV_Set_ZERO (Initv_Table[initv_label], MTYPE_U4, 1);
    INITV_IDX blk = New_INITV();
    INITV_Init_Block (blk, initv_label);

    Set_INITV_next (initv_label, iv);

    TY_IDX ty = MTYPE_TO_TY_array[MTYPE_U4];
    ST * ereg = Gen_Temp_Named_Symbol (ty, "dummy1", CLASS_VAR,
				SCLASS_EH_REGION_SUPP);
    Set_ST_is_initialized (*ereg);
    Set_ST_is_not_used (*ereg);
    INITO_IDX ereg_supp = New_INITO (ST_st_idx(ereg), blk);

    WFE_Stmt_Append (WN_CreateRegion (REGION_KIND_EH, region_body,
      WN_CreateBlock(), WN_CreateBlock(), New_Region_Id(), ereg_supp), Get_Srcpos());
    Set_PU_has_region (Get_Current_PU());
    Set_PU_has_exc_scopes (Get_Current_PU());
    
    // The following code creat a new TY for the ST that is created 
    // above. Because in CG, we will get the size of the ST from its
    // TY, we should get its right size from the INITO attached with 
    // it, and write it into a new TY
    TY_IDX tyi;            
    TY& zty = New_TY (tyi);
    UINT inito_size = Get_INITO_Size(ereg_supp);
    TY_Init (zty, inito_size, KIND_STRUCT, MTYPE_M,ereg->u1.name_idx);
    Set_TY_align (tyi, 4);
    ST_Init (ereg, TY_name_idx (zty),
	     CLASS_VAR, SCLASS_EH_REGION_SUPP, EXPORT_LOCAL, tyi);
    Set_ST_is_initialized (ereg);
}
#endif // KEY

/* expand gnu expr tree into symtab & whirl */
WN *
WFE_Expand_Expr (tree exp, 
		 bool need_result,
		 TY_IDX nop_ty_idx, 
		 TY_IDX component_ty_idx, 
		 INT64 component_offset,
		 UINT16 field_id,
		 bool is_bit_field,
		 bool is_aggr_init_via_ctor
#ifdef KEY
		 , WN *target_wn
#endif
		 )
{
  FmtAssert(exp != NULL_TREE, ("WFE_Expand_Expr: null argument"));
  enum tree_code code = TREE_CODE (exp);
  WN *wn, *wn0, *wn1, *wn2;
  ST *st;
  TY_IDX ty_idx;
  TY_IDX desc_ty_idx;
  tree arg0, arg1, arg2;

  wn = NULL;

#ifdef WFE_DEBUG
  fprintf (stderr,
           "{( WFE_Expand_Expr: %s\n", Operator_From_Tree [code].name); // ")}"
#endif /* WFE_DEBUG */

  switch (code)
    {
    // leaves
    case ADDR_EXPR:
      wn = WFE_Address_Of(TREE_OPERAND(exp, 0));
      break;
      
    /*FDESC_EXPR:
     *Operand0 is a function constant; result is part N of a function 
     *descriptor of type ptr_mode. 
     *So we should get function constant and exprand it.
     */
    case FDESC_EXPR:
      {
	tree exp_operand = TREE_OPERAND(exp, 0);
	FmtAssert(TREE_CODE(exp_operand) == FUNCTION_DECL,("Unexpected Tree Code!!"));
	st = Get_ST (exp_operand);
	ty_idx = ST_type (st);
	wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
      }
      break;
      
    case FUNCTION_DECL:
      {
	 st = Get_ST (exp);
	 ty_idx = ST_type (st);
	 wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
      }
      break;

    case TREE_LIST: 
      {
	tree stmt;
	for (stmt = TREE_PURPOSE(exp); stmt; stmt = TREE_CHAIN(stmt))
	  WFE_Expand_Stmt (stmt);
	wn = WFE_Expand_Expr (TREE_VALUE(exp));
      }
      break;

    case DECL_STMT:
      {
        tree decl = DECL_STMT_DECL(exp);
	WFE_Expand_Decl (decl);
	wn = WFE_Expand_Expr (decl);
      }
      break;

    case BIND_EXPR:
#ifdef GPLUSPLUS_FE
      DevWarn ("Encountered BIND_EXPR at line %d", lineno);
      // ignore the first operand as it ia a list of temporary variables
      wn = WFE_Expand_Expr (TREE_OPERAND (exp, 1));
      break;
#else
      {
        INT32    i;
        WN      *block;
        TYPE_ID  mtype;
        tree     t;

	DevWarn ("Encountered BIND_EXPR at line %d", lineno);

        for (i = wfe_bind_expr_stack_last; i >= 0; --i) {

          if (wfe_bind_expr_stack [i].rtl_expr == TREE_OPERAND (exp, 1)) {

            block = wfe_bind_expr_stack [i].block;
            t     = wfe_bind_expr_stack [i].rtl_expr;
            wfe_bind_expr_stack [i] = wfe_bind_expr_stack [wfe_bind_expr_stack_last];
            --wfe_bind_expr_stack_last;
            break;
          }
        }

        FmtAssert (i >= 0,
                   ("BIND_EXPR: did not find tree"));
	ty_idx = Get_TY (TREE_TYPE(t));
        mtype  = TY_mtype (ty_idx);
	if (mtype == MTYPE_V) {
	  WFE_Stmt_Append (block, Get_Srcpos ());
          break;
	}
	else {
	  wn0 = block;
	  wn1 = WN_COPY_Tree (WN_last (wn0));
	  WN_DELETE_FromBlock (wn0, WN_last (wn0));
	  WFE_Stmt_Append (wn0, Get_Srcpos ());
	  if (nop_ty_idx == 0 && component_ty_idx == 0) {
	    wn = WN_kid0 (wn1);
            break;
	  }
          if (WN_operator (WN_kid0 (wn1)) == OPR_LDID)
            st = WN_st (WN_kid0 (wn1));
          else {
            st = Gen_Temp_Symbol (ty_idx, "__bind_expr");
#ifdef KEY
  	    WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, st);
#endif
            WFE_Set_ST_Addr_Saved (WN_kid0 (wn1));
            wn0 = WN_Stid (mtype, 0, st, ty_idx, WN_kid0 (wn1));
            WFE_Stmt_Append (wn0, Get_Srcpos ());
          }
	}
      }
      /*FALLTHRU*/
#endif /* GPLUSPLUS_FE */

    case TARGET_EXPR:
      {
	tree opnd0 = TREE_OPERAND(exp, 0);
	st = NULL;
	TY_IDX ty;
	TYPE_ID mtype;
#ifdef KEY
	// If we are supposed to put the result in target_wn, then give the
	// init target the same ST as target_wn.
	if (target_wn != NULL) {
	  if (WN_operator(target_wn) == OPR_LDA) {
	    FmtAssert(TREE_CODE(opnd0) != INDIRECT_REF,
		      ("WFE_Expand_Expr: write target mismtach"));
	    set_DECL_ST(opnd0, WN_st(target_wn));
	  } else if (WN_operator(target_wn) == OPR_LDID) {
	    // Change the target into an INDIRECT_REF only if we have not done
	    // so.
	    if (TREE_CODE(opnd0) == VAR_DECL) {
	      tree ptr_var = build_decl(VAR_DECL, NULL_TREE,
					build_pointer_type(TREE_TYPE(opnd0)));
	      TREE_SET_CODE(opnd0, INDIRECT_REF);
	      TREE_OPERAND(opnd0, 0) = ptr_var;
	      set_DECL_ST(ptr_var, WN_st(target_wn));
	    }
	  }
	}

	// We might have changed the VAR_DECL to an INDIRECT_REF, in which case
	// use the referenced symbol instead of creating a new one.
	if (TREE_CODE(opnd0) != INDIRECT_REF)
#endif
	{
	st    = Get_ST (TREE_OPERAND(exp, 0));
	ty    = ST_type(st);
	mtype = TY_mtype (ty);
	}
	/*
	 * Usually operand 1 of the target_expr will be an aggr_init_expr
	 * for which AGGR_INIT_VIA_CTOR_P holds.  Such a node has the
	 * annoying property that its first argument is not the expected
	 * argument to the constructor call.  Instead the argument whose
	 * address should be passed to the constructor appears as 
	 * operand 2.  The value in operand 2, however, is not always
 	 * right:  it is the original temporary var_decl from the
	 * target_expr.  What we really want is the current operand 0
	 * of the target_expr, which may have been changed (see INIT_EXPR).
	 * This is really ugly, but we can't help it because at the
	 * expression level we need to stay compatible with the current
	 * rtl generation.
	 * So we're going to replace the first argument of the aggr_init_expr
	 * with the var_decl from operand 0 of the target_expr, and pass
	 * is_aggr_init_via_ctor to WFE_Expand_Expr, so it can be dealt
	 * with by the AGGR_INIT_EXPR/CALL_EXPR code.
	 *
	 * If a target expression is initialized by a target expression,
	 * it ought not to have an associated cleanup, so we clear the
	 * cleanup in this case.
	 */
	tree t = TREE_OPERAND(exp, 1);
#ifdef KEY
	if (t == NULL_TREE) {
	  t = TREE_OPERAND(exp, 3);
	  FmtAssert(t != NULL_TREE,
		    ("WFE_Expand_Expr: no initializer found for TARGET_EXPR"));
	}
#endif
 	if (TREE_CODE(t) == TARGET_EXPR)
	  TREE_OPERAND(t, 2) = 0;
	if (TREE_CODE(t) == AGGR_INIT_EXPR && AGGR_INIT_VIA_CTOR_P(t)) {
	  tree args = TREE_OPERAND(t, 1);
	  TREE_VALUE(args) = TREE_OPERAND(exp, 0);
	  WFE_Expand_Expr (t, false, 0, 0, 0, 0, false, true);
	}
	else {
#ifdef KEY
	  // If opnd 0 of the TARGET_EXPR is an INDIRECT_REF, then tell
	  // WFE_Expand_Expr to put the result in the area addressed by the
	  // INDIRECT_REF.
	  if (TREE_CODE(opnd0) == INDIRECT_REF) {
	    ST *st = Get_ST(TREE_OPERAND(opnd0, 0));
	    WN *ldid_wn = WN_Ldid (Pointer_Mtype, 0, st, ST_type(st));
	    WN *result_wn = WFE_Expand_Expr (t, TRUE, 0, 0, 0, 0, FALSE, FALSE,
					     ldid_wn);
	    // If the result of expanding t is not an indirect reference to the
	    // result area we want, then it means t has not copied the value
	    // into the result area.  Do the copy.
	    if (result_wn &&
		!(WN_operator(result_wn) == OPR_ILOAD &&
		  WN_operator(WN_kid0(result_wn)) == OPR_LDID &&
		  WN_st(WN_kid0(result_wn)) == st)) {
	      WFE_Stmt_Append(WN_Istore(WN_rtype(result_wn), 0, ST_type(st),
					WN_CopyNode(ldid_wn), result_wn),
			      Get_Srcpos());
	    }
	  }
	  // If the initializer returns the object in memory, then make sure
	  // the type doesn't require a copy constructor, since such types
	  // sometimes require one.
	  else if (TY_return_in_mem(Get_TY(TREE_TYPE(t)))) {
	    if (TREE_CODE(t) == VAR_DECL ||
		TREE_CODE(t) == PARM_DECL) {
	      // The initializer is a var or parm.  We need to insert copy.
	      // First make sure type has no copy constructor.
	      WN *rhs_wn = WFE_Expand_Expr (t);
	      tree type = TREE_TYPE(TREE_OPERAND(exp, 0));
	      Is_True(!WFE_has_copy_constructor(type),
		      ("WFE_Expand_Expr: type require copy constructor"));
	      WFE_Stmt_Append(WN_Stid (mtype, ST_ofst(st), st, ty, rhs_wn),
			      Get_Srcpos());
	    } else {
	      // The initializer is an expression.  Try to expand it directly
	      // into the target.
	      WN *target_wn = WN_Lda (Pointer_Mtype, 0, st, 0);
	      WN *result_wn = WFE_Expand_Expr (t, TRUE, 0, 0, 0, 0, FALSE,
					       FALSE, target_wn);
	      // If expanding t did not write the result into the target as a
	      // side effect, then create the copy.
	      if (result_wn) {
		// There may be more cases where we need to store the result.
		// Need to find a better way to catch them all.
		if (WN_operator(result_wn) == OPR_ILOAD) {
		  WFE_Stmt_Append(WN_Stid (mtype, ST_ofst(st), st, ty,
				  result_wn), Get_Srcpos());
		} else if (WN_operator(result_wn) == OPR_CSELECT) {
		  WN *wn = WN_CreateEval(result_wn);
		  WFE_Stmt_Append(wn, Get_Srcpos());
		}
	      }
	    }
	  } else {
#endif
	    WN * init = WFE_Expand_Expr (t);
	    if (WN_operator (init) == OPR_LDA)
	      WFE_Set_ST_Addr_Saved (init);
	    WFE_Stmt_Append(WN_Stid (mtype, ST_ofst(st), st, ty, init), Get_Srcpos());
	  }
	}
        if (TREE_OPERAND(exp, 2) 
#ifdef KEY
// We should not be emitting all cleanups
	&& TREE_LANG_FLAG_7 (exp)
#endif
	)
#ifdef KEY
          Push_Temp_Cleanup(TREE_OPERAND(exp, 2), true, CLEANUP_EH_ONLY (exp));
#else
          Push_Temp_Cleanup(TREE_OPERAND(exp, 2), true);
#endif

#ifdef KEY
	// If the target area was supplied by the caller, then return an ILOAD
	// of the target pointer.
	if (TREE_CODE(opnd0) == INDIRECT_REF) {
	  ST *st = Get_ST(TREE_OPERAND(opnd0, 0));
	  TY_IDX ty_idx = Get_TY (TREE_TYPE(exp));
	  WN *ldid_wn = WN_Ldid (Pointer_Mtype, 0, st, ST_type(st));
	  wn = WN_Iload(TY_mtype(ty_idx), 0, ty_idx, ldid_wn);
	  break;
	}
#endif
      }

    case CONSTRUCTOR:
#ifdef KEY
      // In general, if the result is not needed and EXP has no side effects,
      // then there is no need to expand EXP, regardless of what EXP is.  This
      // is what gcc's expand_expr does.  However, doing so breaks the WHIRL
      // front-end, so limit this to CONSTRUCTOR for now.
      if (!need_result &&
	  !TREE_SIDE_EFFECTS(exp)) {
	return NULL;
      }
#endif

    case PARM_DECL: // for formal parms
    case VAR_DECL:
      {
	UINT xtra_BE_ofst = 0; 	// only needed for big-endian target
        PREG_NUM preg_num = 0;
	desc_ty_idx = component_ty_idx;
	TY_IDX hi_ty_idx = Get_TY (TREE_TYPE(exp));
	if (desc_ty_idx == 0)
	  desc_ty_idx = hi_ty_idx;

	if (! MTYPE_is_integral(TY_mtype(desc_ty_idx)))
	  ty_idx = desc_ty_idx;
	else {
	  ty_idx = nop_ty_idx;
	  if (ty_idx == 0) 
	    ty_idx = desc_ty_idx;
	}

	UINT cvtl_size = 0; // if non-zero, need to generate CVTL with this size
	if (! is_bit_field) {
	  if (TY_size(desc_ty_idx) > TY_size(ty_idx)) {
	    if (Target_Byte_Sex == BIG_ENDIAN)
	      xtra_BE_ofst = TY_size(desc_ty_idx) - TY_size(ty_idx);
	    cvtl_size = TY_size(ty_idx) * 8;
	    ty_idx = desc_ty_idx;
	  }
	}
	else {
	  if (TY_size(desc_ty_idx) > TY_size(ty_idx)) 
	    ty_idx = desc_ty_idx;
	}

        TYPE_ID rtype = Widen_Mtype(TY_mtype(ty_idx));
        TYPE_ID desc = TY_mtype(desc_ty_idx);
        if (MTYPE_is_integral(desc)) {
          if (MTYPE_signed(rtype) != MTYPE_signed(desc)) {
            if (MTYPE_size_min(rtype) > MTYPE_size_min(desc) ||
		is_bit_field)
              rtype = Mtype_TransferSign(desc, rtype);
            else desc = Mtype_TransferSign(rtype, desc);
          }
        }

	if (TREE_THIS_VOLATILE(exp))
	  Set_TY_is_volatile(ty_idx);

	if (code == PARM_DECL || code == VAR_DECL) {
	  st = Get_ST (exp);
          if (ST_assigned_to_dedicated_preg (st))
	    Set_TY_is_volatile(ty_idx);
        }
	else
	if (code == CONSTRUCTOR) {
	  DevWarn ("Encountered CONSTRUCTOR at line %d", lineno);
	  st = WFE_Generate_Temp_For_Initialized_Aggregate (exp, "");
	}

	Is_True(! is_bit_field || field_id <= MAX_FIELD_ID,
		("WFE_Expand_Expr: field id for bit-field exceeds limit"));
	wn = WN_CreateLdid (OPR_LDID, rtype,
			    is_bit_field ? MTYPE_BS : desc,
			    ST_ofst(st)+component_offset+xtra_BE_ofst+preg_num, st,
			    field_id != 0 ? hi_ty_idx : ty_idx, field_id);
	if (cvtl_size != 0)
	  wn = WN_CreateCvtl(OPR_CVTL, rtype, MTYPE_V, cvtl_size, wn);
      }
      break;

    case CONST_DECL:
        wn = WFE_Expand_Expr(DECL_INITIAL(exp), need_result);
	break;

    case INTEGER_CST:
      {
	ty_idx = Get_TY (TREE_TYPE(exp));
	TYPE_ID mtyp = TY_mtype(ty_idx);
	mtyp = (mtyp == MTYPE_V) ? MTYPE_I4 : Widen_Mtype(mtyp);
	wn = WN_Intconst(mtyp, Get_Integer_Value(exp));
      }
      break;

    case PTRMEM_CST:
      {
	wn = WFE_Expand_Expr(cplus_expand_constant (exp),
			     need_result, nop_ty_idx, component_ty_idx,
			     component_offset, field_id);
      }
      break;

#ifdef KEY	// Use the code from kgccfe, which is newer and can handle
		// i386.
    case REAL_CST:
      {
	TCON tcon;
	ty_idx = Get_TY (TREE_TYPE(exp));
#if (defined(TARG_IA32) || defined(TARG_X8664)) && !defined(REAL_ARITHMETIC)
	tcon = Host_To_Targ_Float (TY_mtype (ty_idx), TREE_REAL_CST(exp));
#else
	REAL_VALUE_TYPE real = TREE_REAL_CST(exp);

	switch (TY_mtype (ty_idx)) {
	  case MTYPE_F4:
	    tcon = Host_To_Targ_Float_4 (MTYPE_F4,
		WFE_Convert_Internal_Real_to_IEEE_Single(real));
	    break;

	  case MTYPE_F8:
	    tcon = Host_To_Targ_Float (MTYPE_F8,
		WFE_Convert_Internal_Real_to_IEEE_Double(real));
	    break;

          case MTYPE_F10:
	    tcon = Host_To_Targ_Float_10 (MTYPE_F10,
		WFE_Convert_Internal_Real_to_IEEE_Double_Extended(real));
            break;

	  case MTYPE_FQ:
	    tcon = Host_To_Targ_Quad (WFE_Convert_Internal_Real_to_IEEE_Double_Extended(real));
	    break;	    

	  default:
	    FmtAssert(FALSE, ("WFE_Expand_Expr unexpected float size"));
	    break;
	}
#endif
	st = New_Const_Sym (Enter_tcon (tcon), ty_idx);
	wn = WN_CreateConst (OPR_CONST, TY_mtype (ty_idx), MTYPE_V, st);
      }
      break;

    case COMPLEX_CST:
      {
	TCON tcon;
	ty_idx = Get_TY (TREE_TYPE(exp));
#if (defined(TARG_IA32) || defined(TARG_X8664)) && !defined(REAL_ARITHMETIC)
        tcon = Host_To_Targ_Complex (TY_mtype (ty_idx),
				     TREE_REAL_CST(TREE_REALPART(exp)),
				     TREE_REAL_CST(TREE_IMAGPART(exp)));
#else
	REAL_VALUE_TYPE real = TREE_REAL_CST(TREE_REALPART(exp));
	REAL_VALUE_TYPE imag = TREE_REAL_CST(TREE_IMAGPART(exp));

	switch (TY_mtype (ty_idx)) {
	  case MTYPE_C4:
	    tcon = Host_To_Targ_Complex_4 (MTYPE_C4,
		WFE_Convert_Internal_Real_to_IEEE_Single(real),
		WFE_Convert_Internal_Real_to_IEEE_Single(imag));
	    break;

	  case MTYPE_C8:
	    tcon = Host_To_Targ_Complex (MTYPE_C8,
		WFE_Convert_Internal_Real_to_IEEE_Double(real),
		WFE_Convert_Internal_Real_to_IEEE_Double(imag));
	    break;

	  case MTYPE_CQ:
	    tcon = Host_To_Targ_Complex_Quad (
		WFE_Convert_Internal_Real_to_IEEE_Double_Extended(real),
		WFE_Convert_Internal_Real_to_IEEE_Double_Extended(imag));
	    break;

	  default:
	    FmtAssert(FALSE, ("WFE_Expand_Expr unexpected float size"));
	    break;
	}
#endif
	st = New_Const_Sym (Enter_tcon (tcon), ty_idx);
	wn = WN_CreateConst (OPR_CONST, TY_mtype (ty_idx), MTYPE_V, st);
      }
      break;

#else	// KEY

    case REAL_CST:
      {
	TCON tcon;
	ty_idx = Get_TY (TREE_TYPE(exp));
	tcon = Host_To_Targ_Float (TY_mtype (ty_idx), TREE_REAL_CST(exp));
	st = New_Const_Sym (Enter_tcon (tcon), ty_idx);
	wn = WN_CreateConst (OPR_CONST, TY_mtype (ty_idx), MTYPE_V, st);
      }
      break;

    case COMPLEX_CST:
      {
	TCON tcon;
	ty_idx = Get_TY (TREE_TYPE(exp));
	tcon = Host_To_Targ_Complex (TY_mtype (ty_idx),
				     TREE_REAL_CST(TREE_REALPART(exp)),
				     TREE_REAL_CST(TREE_IMAGPART(exp)));
	st = New_Const_Sym (Enter_tcon (tcon), ty_idx);
	wn = WN_CreateConst (OPR_CONST, TY_mtype (ty_idx), MTYPE_V, st);
      }
      break;
#endif	// KEY

    // this should occur only if string is a statement expression
    case STRING_CST:
      {
	TCON tcon;
	tcon = Host_To_Targ_String (MTYPE_STRING,
				    const_cast<char*>TREE_STRING_POINTER(exp),
				    TREE_STRING_LENGTH(exp));
	ty_idx = Get_TY(TREE_TYPE(exp));
	st = New_Const_Sym (Enter_tcon (tcon), ty_idx);
	wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
	TREE_STRING_ST (exp) = st;
      }
      break;

    // unary ops
    case BIT_NOT_EXPR:
    case ABS_EXPR:
    case NEGATE_EXPR:
    case REALPART_EXPR:
    case IMAGPART_EXPR:
      {
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
        wn  = WN_Unary (Operator_From_Tree [code].opr,
                        Widen_Mtype(TY_mtype(Get_TY(TREE_TYPE(exp)))), wn0);
#ifdef KEY // bug 2648
        TYPE_ID mtyp = TY_mtype(Get_TY(TREE_TYPE(exp)));
        if (mtyp != WN_rtype(wn))
          wn = WN_CreateCvtl (OPR_CVTL, WN_rtype(wn), MTYPE_V,
                              MTYPE_size_min(mtyp), wn);
#endif
      }
      break;

    case TRUTH_NOT_EXPR:
      wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
      wn1 = WN_Intconst (MTYPE_I4, 0);
      wn  = WN_Relational (OPR_EQ, MTYPE_I4, wn0, wn1);
      break;

    case CONJ_EXPR:
      {
	ty_idx = Get_TY (TREE_TYPE(exp));
        TYPE_ID complex_mtype = TY_mtype(ty_idx);
        TYPE_ID float_mtype   = Mtype_complex_to_real (complex_mtype);
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
	if (WN_has_side_effects (wn0)) {
	  ST       *preg_st;
	  PREG_NUM  preg;
	  preg_st = MTYPE_To_PREG(complex_mtype);
	  preg    = Create_Preg (complex_mtype, NULL);
	  wn0     = WN_Stid (complex_mtype, preg, preg_st, ty_idx, wn0);
	  WFE_Stmt_Append (wn0, Get_Srcpos());
	  wn0 = WN_Ldid (complex_mtype, preg, preg_st, ty_idx);
	}
#ifdef KEY
	// Fix bug 603
        wn = WN_Binary (OPR_COMPLEX, complex_mtype,
			WN_Unary (OPR_REALPART, float_mtype, wn0),
			WN_Unary (OPR_NEG, float_mtype,
				  WN_Unary (OPR_IMAGPART, float_mtype, wn0)));
#else
        wn = WN_Binary (OPR_COMPLEX, complex_mtype,
			WN_Unary (OPR_REALPART, float_mtype, wn0),
			WN_Unary (OPR_NEG, float_mtype,
				  WN_Unary (OPR_REALPART, float_mtype, wn0)));
#endif
      }
      break;

    case NOP_EXPR:
      {
	ty_idx = Get_TY (TREE_TYPE(exp));
        TYPE_ID mtyp = TY_mtype(ty_idx);
	// do not pass struct type down because will cause rtype of MTYPE_M
        wn = WFE_Expand_Expr (TREE_OPERAND (exp, 0), TRUE, 
			      (mtyp == MTYPE_M) ? 0 : ty_idx,
			       component_ty_idx, component_offset,
			       field_id, is_bit_field
#ifdef KEY
			       , FALSE, target_wn
#endif
			       );
	if (mtyp == MTYPE_V) 
	  break;
	if (mtyp == MTYPE_M) 
	  break;
	if (MTYPE_is_integral(mtyp) && MTYPE_is_integral(WN_rtype(wn))) {
	  // For 32-bit to 64-bit conversion, make the result have the same
	  // sign as the source.  Fix bug 480.
	  if (MTYPE_size_min(mtyp) == 64 &&
	      MTYPE_size_min(WN_rtype(wn)) == 32 &&
	      MTYPE_is_signed(mtyp) != MTYPE_is_signed(WN_rtype(wn))) {
	    mtyp = MTYPE_complement(mtyp);
	  }

	  if (MTYPE_size_min(mtyp) < MTYPE_size_min(WN_rtype(wn))) {
	    if (MTYPE_size_min(mtyp) != 32)
	      wn = WN_CreateCvtl(OPR_CVTL, Widen_Mtype(mtyp), MTYPE_V,
			         MTYPE_size_min(mtyp), wn);
	    else wn = WN_Cvt(WN_rtype(wn), mtyp, wn);
	  }
	  else {
	    TY_IDX ty_idx0 = Get_TY(TREE_TYPE(TREE_OPERAND (exp, 0)));
	    TYPE_ID mtyp0 = TY_mtype(ty_idx0);

	    if (MTYPE_size_min(mtyp) > MTYPE_size_min(mtyp0) &&
		! Has_Subsumed_Cvtl(WN_operator(wn)))
	      wn = WN_CreateCvtl(OPR_CVTL, Widen_Mtype(mtyp0), MTYPE_V,
				 MTYPE_size_min(mtyp0), wn);

	    if (MTYPE_size_min(mtyp) > MTYPE_size_min(WN_rtype(wn)))
	      wn = WN_Cvt(WN_rtype(wn), mtyp, wn);
	    else { // same size
	      if (mtyp != WN_rtype(wn)) 
	        wn = WN_Cvt(WN_rtype(wn), mtyp, wn);
	    }
	  }
	}
	else {
	  if (mtyp != WN_rtype(wn)) 
	    wn = WN_Cvt(WN_rtype(wn), mtyp, wn);
	}
      }
      break;

    case COMPONENT_REF:
      {
	INT64 ofst;
	arg0 = TREE_OPERAND (exp, 0);
	arg1 = TREE_OPERAND (exp, 1);
	// If this is an indirect of a nop_expr, we may need to fix the
	// type of the nop_expr:
	(void) Get_TY(TREE_TYPE(arg0));
   
	if (component_ty_idx == 0)
	  ty_idx = Get_TY (TREE_TYPE(exp));
	else ty_idx = component_ty_idx;
	if (DECL_BIT_FIELD(arg1)) 
	  is_bit_field = TRUE;

	if (! is_bit_field && 
	    component_ty_idx == 0) {  // only for top-level COMPONENT_REF
          // if size does not agree with ty_idx, fix ty_idx
          tree sizenode = DECL_SIZE(arg1);
          if (TREE_CODE(sizenode) == INTEGER_CST) {
	    TYPE_ID c_mtyp = TY_mtype(ty_idx);
	    INT32 bsize = Get_Integer_Value(sizenode);
	    if (MTYPE_size_min(c_mtyp) > bsize) {
	      FmtAssert(MTYPE_is_integral(c_mtyp), 
	        ("COMPONENT_REF: integer type expected at inconsistent field size"));
	      c_mtyp = Mtype_AlignmentClass(bsize >> 3, MTYPE_type_class(c_mtyp));
	      ty_idx = MTYPE_To_TY(c_mtyp);
	    }
	  }
        }

	if (! is_bit_field)
	  ofst = (BITSPERBYTE * Get_Integer_Value(DECL_FIELD_OFFSET(arg1)) +
			        Get_Integer_Value(DECL_FIELD_BIT_OFFSET(arg1)))
			      / BITSPERBYTE;
	else ofst = 0;
#ifdef KEY
	FmtAssert (DECL_FIELD_ID(arg1) != 0,
                   ("WFE_Expand_Expr: DECL_FIELD_ID used but not set"));

	// If arg0 is a CALL_EXPR that returns a ptr-to-member-function, then
	// call WFE_Expand_Ptr_To_Member_Func_Call_Expr to expand it.
	// Otherwise, call WFE_Expand_Expr to do regular expansion.
	// Bug 3400, 3427.
	if (WFE_Call_Returns_Ptr_To_Member_Func(arg0)) {
	  tree field0 = TYPE_FIELDS(TREE_TYPE(arg0));
	  // Get_TY(TREE_TYPE(field0)) is valid only if
	  // WFE_Call_Returns_Ptr_To_Member_Func(arg0)) is TRUE.  Bug 6022.
	  TYPE_ID desc = TY_mtype(Get_TY(TREE_TYPE(field0)));
	  wn = WFE_Expand_Ptr_To_Member_Func_Call_Expr (arg0, nop_ty_idx,
		  Pointer_Mtype, desc, component_offset,
		  field_id + DECL_FIELD_ID(arg1));
	} else
#endif
        wn = WFE_Expand_Expr (arg0, TRUE, nop_ty_idx, ty_idx, ofst+component_offset,
			      field_id + DECL_FIELD_ID(arg1), is_bit_field);

#ifdef KEY
	// For code such as (p->a = q->a).b, the gnu tree is:
	//   component_ref
	//     modify_expr
	//       indirect_ref
	//       indirect_ref
	// WFE_Expand_Expr will call WFE_Lhs_Of_Modify_Expr to expand the
	// modify_expr.  WFE_Lhs_Of_Modify_Expr will return an iload
	// corresponding to p->a.  Since we want p->a.b, recreate the iload
	// here.  Bug 3122 and 3210
	if (TREE_CODE(arg0) == MODIFY_EXPR) {
	  TYPE_ID rtype = Widen_Mtype(TY_mtype(ty_idx));
	  TYPE_ID desc = TY_mtype(ty_idx);
	  if (WN_operator(wn) == OPR_ILOAD) {
            wn = WN_CreateIload(OPR_ILOAD, rtype, desc,
			        ofst + component_offset, ty_idx,
			        Make_Pointer_Type (ty_idx, FALSE), WN_kid0(wn),
			        field_id + DECL_FIELD_ID(arg1));
	  } 
	  else if (WN_operator(wn) == OPR_LDID) {
	    WN_set_rtype(wn, rtype);
	    WN_set_desc(wn, desc);
	    WN_offset(wn) = WN_offset(wn)+ofst+component_offset;
	    WN_set_ty(wn, ty_idx);
	    WN_set_field_id(wn, field_id + DECL_FIELD_ID(arg1));
	  } 
	} 
#endif
      }
      break;

    case INDIRECT_REF:
      {
	UINT xtra_BE_ofst = 0; 	// only needed for big-endian target
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));

	TY_IDX hi_ty_idx = Get_TY(TREE_TYPE(exp));

	desc_ty_idx = component_ty_idx;
	if (desc_ty_idx == 0)
	  desc_ty_idx = hi_ty_idx;

        if (! MTYPE_is_integral(TY_mtype(desc_ty_idx)))
	  ty_idx = desc_ty_idx;
	else {
	  ty_idx = nop_ty_idx;
	  if (ty_idx == 0) 
	    ty_idx = desc_ty_idx;
	}

	if (! is_bit_field) {
	  if (TY_size(desc_ty_idx) > TY_size(ty_idx)) {
	    if (Target_Byte_Sex == BIG_ENDIAN)
	      xtra_BE_ofst = TY_size(desc_ty_idx) - TY_size(ty_idx);
	    desc_ty_idx = ty_idx;
	  }
	}
	else {
	  if (TY_size(desc_ty_idx) > TY_size(ty_idx)) 
	    ty_idx = desc_ty_idx;
	}

	TYPE_ID rtype = Widen_Mtype(TY_mtype(ty_idx));
	TYPE_ID desc = TY_mtype(desc_ty_idx);
	if (MTYPE_is_integral(desc)) {
	  if (MTYPE_signed(rtype) != MTYPE_signed(desc)) {
	    if (MTYPE_size_min(rtype) > MTYPE_size_min(desc) ||
		is_bit_field)
	      rtype = Mtype_TransferSign(desc, rtype);
	    else desc = Mtype_TransferSign(rtype, desc);
	  }
	}

	if (TREE_THIS_VOLATILE(exp))
	  Set_TY_is_volatile(hi_ty_idx);

	Is_True(! is_bit_field || field_id <= MAX_FIELD_ID,
		("WFE_Expand_Expr: field id for bit-field exceeds limit"));

        if (!WFE_Keep_Zero_Length_Structs &&
            rtype == MTYPE_M              &&
            TY_size (hi_ty_idx) == 0) {
	  if (WN_has_side_effects (wn0)) {
	    wn = WN_CreateEval (wn0);
	    WFE_Stmt_Append (wn, Get_Srcpos());
	  }
	  wn = NULL;
        }
        else {
	  // special case indexing into a constant string
	  if (WN_operator (wn0) == OPR_LDA          &&
	      ST_class (WN_st (wn0)) == CLASS_CONST &&
	      is_bit_field == FALSE                 &&
	      field_id == 0) {
            st = WN_st (wn0);
	    TCON tcon = Tcon_Table [ST_tcon (st)];
	    if (TCON_ty (tcon) == MTYPE_STRING &&
                TY_size (Be_Type_Tbl (desc)) == 1) {
	      mUINT32 len = Targ_String_Length (tcon);
	      mUINT64 offset = component_offset + xtra_BE_ofst + WN_offset (wn0);
	      if (offset <= len    &&
		  desc == MTYPE_U1 &&
		  (rtype == MTYPE_U4 || rtype == MTYPE_U8)) {
		unsigned char *cp = (unsigned char *) Targ_String_Address (tcon);
		unsigned long long val = cp [offset];
		wn = WN_Intconst (rtype, val);
		break;
	      }
	      else
	      if (offset <= len    &&
		  desc == MTYPE_I1 &&
		  (rtype == MTYPE_I4 || rtype == MTYPE_I8)) {
		signed char *cp = (signed char *) Targ_String_Address (tcon);
		signed long long val = cp [offset];
		wn = WN_Intconst (rtype, val);
		break;
	      }
	    }
	  }
	  if (need_result)
	    wn = WN_CreateIload(OPR_ILOAD, rtype,
				is_bit_field ? MTYPE_BS : desc, 
				component_offset+xtra_BE_ofst,
				field_id != 0 ? hi_ty_idx : ty_idx, 
				Make_Pointer_Type (hi_ty_idx, FALSE),
				wn0, field_id);
	  else
	  if (WN_has_side_effects (wn0))
	    wn = wn0;
	}
      }
      break;

    case CONVERT_EXPR:
    case FLOAT_EXPR:
      {
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
	ty_idx = Get_TY (TREE_TYPE(exp));
	TYPE_ID mtyp = TY_mtype(ty_idx);
	if (mtyp == MTYPE_V)
	  wn = wn0;
	else {
	  mtyp = Widen_Mtype(TY_mtype(ty_idx));
	  if (mtyp == WN_rtype(wn0) || mtyp == MTYPE_V)
	    wn = wn0;
	  else {
#ifdef KEY // prevent zero extension when converting to 64-bit address type
	    if (TREE_CODE(TREE_TYPE(exp)) == POINTER_TYPE &&
		MTYPE_byte_size(FE_Pointer_Type_To_Mtype()) == 8) {
	      if (WN_operator(wn0) == OPR_CVT && WN_desc(wn0) == MTYPE_U4) {
		WN_set_desc(wn0, MTYPE_I4);
		wn = WN_Cvt(WN_rtype(wn0), mtyp, wn0);
	      }
	      else if (MTYPE_byte_size(WN_rtype(wn0) == 4))
		wn = WN_Cvt(MTYPE_I4, mtyp, wn0);
	      else wn = WN_Cvt(WN_rtype(wn0), mtyp, wn0);
	    }
	    else
#endif
	    wn = WN_Cvt(WN_rtype(wn0), mtyp, wn0);
	    // The following opcodes are not valid for MIPS
	    if (WN_opcode(wn) == OPC_I4U4CVT ||
	        WN_opcode(wn) == OPC_U4I4CVT ||
	        WN_opcode(wn) == OPC_I8U8CVT ||
	        WN_opcode(wn) == OPC_U8I8CVT) {
	      wn = WN_kid0 (wn);
	    }
	  }
	}
      }
      break;

    case FIX_TRUNC_EXPR:
      {
	wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
         ty_idx = Get_TY (TREE_TYPE(exp));
         TYPE_ID mtype = Widen_Mtype(TY_mtype(ty_idx));
         if(WN_operator(wn0) == OPR_CVT &&
	    MTYPE_is_integral(WN_desc(wn0)) &&
	    MTYPE_is_float(WN_rtype(wn0))){
           wn1 = WN_kid0(wn0);
           TYPE_ID kid_type = WN_rtype(wn1);
           if(mtype == kid_type){
             wn = wn1;
           }
           else{
             wn = WN_Cvt(WN_rtype(wn1), mtype, wn1);
           }
         }
         else
           wn = WN_Trunc(WN_rtype(wn0), mtype, wn0);

      }
      break;

#ifdef GPLUSPLUS_FE
    case EXPR_STMT:
      {
#ifdef KEY
        wn = WFE_Expand_Expr (EXPR_STMT_EXPR(exp), false, nop_ty_idx,
			    component_ty_idx, component_offset, field_id,
			    is_bit_field, is_aggr_init_via_ctor);
#else
	wn = WFE_Expand_Expr (EXPR_STMT_EXPR(exp), false);
#endif
      }
      break;

    case STMT_EXPR:
      {
#ifdef KEY
	bool write_to_target_wn = TRUE;

	// If we need to store the result in target_wn, then give result the
	// same ST as the ST in target_wn.  To do this, first find the
	// STMT_EXPR's result, which is returned by the last EXPR_STMT in the
	// COMPOUND_STMT.  Based on code in gnu/c-common.c:c_expand_expr.
	if (target_wn != NULL
	    && TREE_CODE (STMT_EXPR_STMT (exp)) == COMPOUND_STMT
	    && TREE_CODE (COMPOUND_BODY (STMT_EXPR_STMT (exp))) == SCOPE_STMT) {
	  tree expr = COMPOUND_BODY (STMT_EXPR_STMT (exp));
	  tree last = TREE_CHAIN (expr);

	  while (TREE_CHAIN (last)) {
	    expr = last;
	    last = TREE_CHAIN (last);
	  }

	  if (TREE_CODE (last) == SCOPE_STMT
	      && TREE_CODE (expr) == EXPR_STMT) {
	    if (TREE_CODE (EXPR_STMT_EXPR (expr)) == VAR_DECL) {
	      // If the last expression is a variable, then the variable is the
	      // returned value.
	      tree var_decl = EXPR_STMT_EXPR (expr);
	      ST *st = DECL_ST (var_decl);
	      if (st == NULL) {
		// Give the returned var_decl the same ST indicated by
		// target_wn.
		if (WN_operator(target_wn) == OPR_LDA) {
		  set_DECL_ST(var_decl, WN_st(target_wn));
		} else if (WN_operator(target_wn) == OPR_LDID) {
		  // target_wn is an ldid of the fake first parm.  Change the
		  // stmt_expr's var_decl to be an indirect_ref of the fake
		  // parm.
		  tree ptr_var =
		    build_decl(VAR_DECL, NULL_TREE,
			       build_pointer_type(TREE_TYPE(var_decl)));
		  TREE_SET_CODE(var_decl, INDIRECT_REF);
		  TREE_OPERAND(var_decl, 0) = ptr_var;
		  set_DECL_ST(ptr_var, WN_st(target_wn));
		} else {
		  FmtAssert(FALSE,
			 ("WFE_Expand_Expr: unexpected operator in target_wn"));
		}
	      } else {
		// The var_decl already has a ST assigned.  This should be the
		// same ST as the target_wn.
		FmtAssert(st == WN_st(target_wn),
			  ("WFE_Expand_Expr: STs are different"));
	      }
	      // Don't need target_wn anymore since the returned var_decl
	      // already has the target ST.
	      write_to_target_wn = FALSE;

	    } else if (TREE_CODE (EXPR_STMT_EXPR (expr)) == INDIRECT_REF) {
	      // The indirect_ref must have been a var_decl that was changed by
	      // kg++fe to an indirect_ref.  This means we are already writing
	      // to the target location.
	      write_to_target_wn = FALSE;
	    }
	  }
	}
	wn = WFE_Expand_Expr (TREE_OPERAND (exp, 0), need_result, nop_ty_idx,
			      component_ty_idx, component_offset, field_id,
			      is_bit_field, is_aggr_init_via_ctor,
			      write_to_target_wn ? target_wn : NULL);
#else
        wn = WFE_Expand_Expr (TREE_OPERAND (exp, 0), need_result);
#endif
      }
      break;

#ifndef KEY
    case SUBOBJECT:
      break;
#endif // !KEY

    case CLEANUP_POINT_EXPR: 
      {
        Push_Temp_Cleanup(exp, false);
        wn = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
        WN * cleanup_block = WN_CreateBlock ();
        WFE_Stmt_Push (cleanup_block, wfe_stmk_temp_cleanup, Get_Srcpos ());
        Do_Temp_Cleanups(exp);
        WFE_Stmt_Pop (wfe_stmk_temp_cleanup);
	if (wn && WN_has_side_effects (wn) && WN_first (cleanup_block)) {
	  DevWarn("CLEANUP_POINT_EXPR: expressson has side effects");
	  ty_idx = Get_TY (TREE_TYPE(exp));
	  st = Gen_Temp_Symbol (ty_idx, "__cleanup_point_expr");
#ifdef KEY
  	  WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, st);
#endif
	  TYPE_ID mtype = TY_mtype (ty_idx);
	  WFE_Set_ST_Addr_Saved (wn);
	  wn = WN_Stid (mtype, 0, st, ty_idx, wn);
	  WFE_Stmt_Append (wn, Get_Srcpos ());
	  wn = WN_Ldid (mtype, 0, st, ty_idx);
	}
	WFE_Stmt_Append (cleanup_block, Get_Srcpos ());
      }
      break;

    case THROW_EXPR:
      WFE_One_Stmt (TREE_OPERAND (exp, 0));
      Call_Throw();
      break;

    case TRY_CATCH_EXPR:
      DevWarn ("Encountered TRY_CATCH_EXPR at line %d:  ignored", lineno);
      break;

    case COMPOUND_STMT:
      {
	tree t = COMPOUND_BODY(exp);
	tree last_expr_stmt = 0;
	wn = NULL;
	while (t) {
	  if (TREE_CODE(t) == EXPR_STMT)
	    last_expr_stmt = t;
	  t = TREE_CHAIN(t);
	}

	t = COMPOUND_BODY(exp);

	while (t != last_expr_stmt) {
	  WFE_Expand_Stmt (t, target_wn);
	  t = TREE_CHAIN(t);
	}

	if (t) {
#ifdef KEY
	  wn =  WFE_Expand_Expr(t, need_result, nop_ty_idx, component_ty_idx,
				component_offset, field_id, is_bit_field,
				is_aggr_init_via_ctor, target_wn);
#else
	  wn =  WFE_Expand_Expr(t, need_result);
#endif
	  t = TREE_CHAIN(t);
	}

	while (t) {
	  WFE_Expand_Stmt(t, target_wn);
	  t = TREE_CHAIN(t);
	}

      }
      break;

    case EMPTY_CLASS_EXPR:
      DevWarn ("Encountered EMPTY_CLASS_EXPR at line %d\n", lineno);
      ty_idx = Get_TY (TREE_TYPE(exp));
      st = Gen_Temp_Symbol (ty_idx, "__empty_class_expr");
#ifdef KEY
      WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, st);
#endif
      wn = WN_Ldid (TY_mtype (ty_idx), 0, st, ty_idx);
      break;
#endif /* GLPUSPLUFE */

    // binary ops
    case PLUS_EXPR:
    case MINUS_EXPR:
    case MULT_EXPR:
    case MAX_EXPR:
    case MIN_EXPR:
    case LSHIFT_EXPR:
    case BIT_AND_EXPR:
    case BIT_IOR_EXPR:
    case BIT_XOR_EXPR:
    case TRUNC_DIV_EXPR:
    case TRUNC_MOD_EXPR:
    case RDIV_EXPR:
    case EXACT_DIV_EXPR:
    case TRUTH_AND_EXPR:
    case TRUTH_OR_EXPR:
    case TRUTH_XOR_EXPR:
    case COMPLEX_EXPR:
    case CEIL_DIV_EXPR:
      {
#ifdef KEY
	TYPE_ID etype = TY_mtype(Get_TY(TREE_TYPE(exp)));
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
        wn1 = WFE_Expand_Expr (TREE_OPERAND (exp, 1));
        wn  = WN_Binary (Operator_From_Tree [code].opr,
                         Widen_Mtype(etype), wn0, wn1);
	
	// bug 2649, 5503
	if ((MTYPE_is_integral(etype)) &&
	    (Widen_Mtype(etype) != etype) &&
	    (TY_size (Get_TY(TREE_TYPE(exp))) < 32) &&
	     (code == PLUS_EXPR || code == MINUS_EXPR || 
	     code == MULT_EXPR || code == LSHIFT_EXPR || 
	     code == BIT_XOR_EXPR || code == BIT_IOR_EXPR))
	  wn = WN_CreateCvtl(OPR_CVTL, Widen_Mtype(etype), MTYPE_V,
	                     TY_size (Get_TY(TREE_TYPE(exp))) * 8, wn);
#else
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
        wn1 = WFE_Expand_Expr (TREE_OPERAND (exp, 1));
        wn  = WN_Binary (Operator_From_Tree [code].opr,
                         Widen_Mtype(TY_mtype(Get_TY(TREE_TYPE(exp)))), wn0, wn1);
#endif
      }
      break;

    case LROTATE_EXPR:
      {
	ty_idx = Get_TY(TREE_TYPE(exp));
	TYPE_ID mtype = TY_mtype (ty_idx);
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
        wn1 = WFE_Expand_Expr (TREE_OPERAND (exp, 1));
	wn1 = WN_Binary (OPR_SUB, Widen_Mtype (mtype),
			 WN_Intconst (Widen_Mtype (mtype),
				      TY_size (ty_idx) * 8),
			 wn1);
	wn  = WN_Rrotate (TY_mtype(Get_TY(TREE_TYPE(exp))), wn0, wn1);
      }
      break;

    case RROTATE_EXPR:
      {
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
        wn1 = WFE_Expand_Expr (TREE_OPERAND (exp, 1));
	wn  = WN_Rrotate (TY_mtype(Get_TY(TREE_TYPE(exp))), wn0, wn1);
      }
      break;

    case RSHIFT_EXPR:
      {
	TYPE_ID mtyp = Widen_Mtype(TY_mtype(Get_TY(TREE_TYPE(exp))));
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
        wn1 = WFE_Expand_Expr (TREE_OPERAND (exp, 1));
        wn  = WN_Binary (MTYPE_signed(mtyp) ? OPR_ASHR : OPR_LSHR,
                         mtyp, wn0, wn1);
      }
      break;

    case TRUTH_ANDIF_EXPR:
    case TRUTH_ORIF_EXPR:
      {
#ifdef KEY
	// bug 2651: evaluate the 1st operand unconditionally
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));

	// Evaluate the second condition.  Add guard variable to the cleanup if
	// there is cleanup.
        WFE_Guard_Var_Push();
        wn1 = WFE_Expand_Expr_With_Sequence_Point (TREE_OPERAND (exp, 1),
						   Boolean_type);
        tree guard_var = WFE_Guard_Var_Pop();
	if (guard_var != NULL_TREE) {
	  WFE_add_guard_var(guard_var, wn1);
	}
#else
        wn0 = WFE_Expand_Expr_With_Sequence_Point (TREE_OPERAND (exp, 0),
						   Boolean_type);
        wn1 = WFE_Expand_Expr_With_Sequence_Point (TREE_OPERAND (exp, 1),
						   Boolean_type);
#endif
        wn  = WN_Binary (Operator_From_Tree [code].opr,
                         Boolean_type, wn0, wn1);
        if (Boolean_type != MTYPE_B &&
	    Widen_Mtype(TY_mtype(Get_TY(TREE_TYPE(exp)))) != Boolean_type)
	  wn = WN_Cvt (Boolean_type, Widen_Mtype(TY_mtype(Get_TY(TREE_TYPE(exp)))), wn);
      }
      break;

    case LT_EXPR:
    case LE_EXPR:
    case GT_EXPR:
    case GE_EXPR:
    case EQ_EXPR:
    case NE_EXPR:
      {
        wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
        wn1 = WFE_Expand_Expr (TREE_OPERAND (exp, 1));

	// check if conversion is needed
	ty_idx = Get_TY (TREE_TYPE(exp));
        TYPE_ID mtyp = TY_mtype(ty_idx);
	TY_IDX ty_idx0 = Get_TY(TREE_TYPE(TREE_OPERAND (exp, 0)));
	TYPE_ID mtyp0 = TY_mtype(ty_idx0);
	TY_IDX ty_idx1 = Get_TY(TREE_TYPE(TREE_OPERAND (exp, 1)));
	TYPE_ID mtyp1 = TY_mtype(ty_idx1);

	if (MTYPE_size_min(mtyp1) > MTYPE_size_min(mtyp0) &&
	    ! Has_Subsumed_Cvtl(WN_operator(wn0)))
	  wn0 = WN_CreateCvtl(OPR_CVTL, Widen_Mtype(mtyp0), MTYPE_V,
			      MTYPE_size_min(mtyp0), wn0);
	if (MTYPE_size_min(mtyp0) > MTYPE_size_min(mtyp1) &&
	    ! Has_Subsumed_Cvtl(WN_operator(wn1)))
	  wn1 = WN_CreateCvtl(OPR_CVTL, Widen_Mtype(mtyp1), MTYPE_V,
			      MTYPE_size_min(mtyp1), wn1);

        wn  = WN_Relational (Operator_From_Tree [code].opr,
			     Widen_Mtype(TY_mtype(Get_TY(TREE_TYPE(TREE_OPERAND(exp, 0))))),
			     wn0, wn1);
      }
      break;

    case COND_EXPR:
      {
        TY_IDX ty_idx1 = Get_TY (TREE_TYPE(TREE_OPERAND (exp, 1)));
        TY_IDX ty_idx2 = Get_TY (TREE_TYPE(TREE_OPERAND (exp, 2)));
	ty_idx = Get_TY (TREE_TYPE(exp));
#ifdef KEY // bug 2645
	wn0 = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
#else
	wn0 = WFE_Expand_Expr_With_Sequence_Point (TREE_OPERAND (exp, 0),
						   Boolean_type);
#endif
	if (TY_mtype (ty_idx)  == MTYPE_V ||
            TY_mtype (ty_idx1) == MTYPE_V ||
            TY_mtype (ty_idx2) == MTYPE_V) {
	  WN *then_block = WN_CreateBlock ();
	  WN *else_block = WN_CreateBlock ();
	  WN *if_stmt    = WN_CreateIf (wn0, then_block, else_block);
	  WFE_Stmt_Append (if_stmt, Get_Srcpos());
	  WFE_Stmt_Push (then_block, wfe_stmk_if_then, Get_Srcpos());
	  wn1 = WFE_Expand_Expr (TREE_OPERAND (exp, 1), FALSE);
	  if (wn1) {
	    wn1 = WN_CreateEval (wn1);
	    WFE_Stmt_Append (wn1, Get_Srcpos());
	  }
	  WFE_Stmt_Pop (wfe_stmk_if_then);
	  WFE_Stmt_Push (else_block, wfe_stmk_if_else, Get_Srcpos());
	  wn2 = WFE_Expand_Expr (TREE_OPERAND (exp, 2), FALSE);
	  if (wn2) {
	    wn2 = WN_CreateEval (wn2);
	    WFE_Stmt_Append (wn2, Get_Srcpos());
	  }
	  WFE_Stmt_Pop (wfe_stmk_if_else);
        }
	else {
#ifdef KEY
	  // Prepare a guard variable for each part of the conditional, in case
	  // the conditional has a cleanup that is executed after the whole
	  // conditional expression is evaluated.  The guard variable ensures
	  // that a cleanup is executed only if its part of the conditional is
	  // executed.
	  WFE_Guard_Var_Push();
	  wn1 = WFE_Expand_Expr_With_Sequence_Point (TREE_OPERAND (exp, 1),
						     TY_mtype (ty_idx),
						     target_wn);
	  tree guard_var1 = WFE_Guard_Var_Pop();

	  WFE_Guard_Var_Push();
	  wn2 = WFE_Expand_Expr_With_Sequence_Point (TREE_OPERAND (exp, 2),
						     TY_mtype (ty_idx),
						     target_wn);
	  tree guard_var2 = WFE_Guard_Var_Pop();

	  // Add guard variables if they are needed.
	  if (guard_var1 != NULL_TREE) {
	    WFE_add_guard_var(guard_var1, wn1);
	  }
	  if (guard_var2 != NULL_TREE) {
	    WFE_add_guard_var(guard_var2, wn2);
	  }
#else
	  wn1 = WFE_Expand_Expr_With_Sequence_Point (TREE_OPERAND (exp, 1),
						     TY_mtype (ty_idx));
	  wn2 = WFE_Expand_Expr_With_Sequence_Point (TREE_OPERAND (exp, 2),
						     TY_mtype (ty_idx));
#endif
	  wn  = WN_CreateExp3 (OPR_CSELECT, Mtype_comparison (TY_mtype (ty_idx)),
			   MTYPE_V, wn0, wn1, wn2);
	  Set_PU_has_very_high_whirl (Get_Current_PU ());
        }
      }
      break;

    case INIT_EXPR:
#ifdef KEY
      // Put the result in the write target if there is a write target.
      if (target_wn != NULL &&
	  (TREE_CODE(TREE_OPERAND(exp, 0)) == VAR_DECL ||
	   TREE_CODE(TREE_OPERAND(exp, 0)) == RESULT_DECL ||
	   TREE_CODE(TREE_OPERAND(exp, 0)) == PARM_DECL)) {
	if (WN_operator(target_wn) == OPR_LDA) {
	  // target_wn is a LDA of a ST.  Give the result the same ST.
	  set_DECL_ST(TREE_OPERAND(exp, 0), WN_st(target_wn));
	} else if (WN_operator(target_wn) == OPR_LDID) {
	  // target_wn is a LDID of a ST, where ST points to the target
	  // location.  This only happens if ST is the fake first parm.  To
	  // have the INIT_EXPR write to the target area, change node X into an
	  // indirect ref of the ST, where X is the original target of the
	  // init_expr (var_decl/result_decl/parm_decl).  This will make all
	  // tree nodes that point to X now point to the indirect ref.
	  tree opnd0 = TREE_OPERAND(exp, 0);
	  tree ptr_var = build_decl(VAR_DECL, NULL_TREE,
				    build_pointer_type(TREE_TYPE(opnd0)));
	  TREE_SET_CODE(opnd0, INDIRECT_REF);
	  TREE_OPERAND(opnd0, 0) = ptr_var;
	  set_DECL_ST(ptr_var, WN_st(target_wn));
	}
      }
      // fall through
#endif
    case MODIFY_EXPR:
      /*
       * When operand 1 of an init_expr or modify_expr is a target_expr,
       * then the temporary in the target_expr needs to be replaced by
       * operand 1 of the init_expr or modify_expr and the cleanup
       * (operand 2) of the target_expr needs to be zeroed out, since
       * no temporary will be generated so none should be destroyed.
       */
#ifdef KEY
       // Don't replace the temporary in the target_expr by the first operand
       // of the init_expr as the above comment says.  This is because we no
       // longer generate the MLDID-MSTID that copies the target_expr's
       // initialization result into the target_expr's init target (the
       // target_expr's temporary).  (Using MLDID-MSTID is incorrect when there
       // is a copy constructor.)  In the new scheme, the target_expr's
       // initializer writes directly into the target_expr's init target.
       // Doing the transformation in the above comment breaks this.  For
       // example:
       //
       //   init
       //     var_decl y  (node 1)
       //     target_expr
       //       var_decl x  (target_expr's init target, node 2)
       //       compound_expr (target_expr's initializer)
       //         call_expr
       //           addr_expr
       //           tree_list
       //             addr_expr  (arg 0)
       //               var_decl x
       //         var_decl x  (compound_expr returns x)
       //
       // After node 2 is replaced by node 1, the target_expr's init target
       // becomes y.  However, the target_expr's initializer still writes to x.
       // Without a MLDID-MSTID to copy x to y, the code is now incorrect.
       //
       // The solution is instead of replacing node 2 with node 1, we give both
       // x and y the same ST.  This follows the intention that x is just an
       // alias for y.
       //
       // The init's target can be an indirect ref.  (This occurs when we
       // changed the init target from a var_decl/result_decl/parm_decl to an
       // indirect ref based on a target_wn that is a LDID of a fake arg0 ST.)
       // In this case, replace the target_expr's var_decl x with the indirect
       // ref.  Change:
       //
       //   init
       //     indirect_ref    (node 1)
       //       var_decl y
       //     target_expr
       //       var_decl x    (node 2)
       //       initializer
       //
       // to:
       //
       //   init
       //     indirect_ref    (node 1)
       //       var_decl y
       //     target_expr
       //       indirect_ref  (node 2)
       //         var_decl y
       //       initializer
       //
       // After the transformation, target_expr's init target remains to be
       // node 2, but node 2 is renamed to be an indirect_ref node.  This will
       // cause all references inside the target_expr's initializer to
       // reference the location pointed to by the indirect_ref.

       // Handle case where initializer is a nop_expr (bug 3045):
       //   init
       //     indirect_ref
       //       var_decl y
       //     nop_expr
       //       target_expr
       //         var_decl x
       //         initializer
       //
       // Handle by expanding the nop_expr into the target location pointed to
       // by y.  Do this by setting target_wn to y before calling
       // WFE_Expand_Expr.  (This case was discovered after the scheme to
       // modify the init tree (described above) was implemented.  It seems the
       // correct approach is to simply set target_wn and then call
       // WFE_Expand_Expr to expand directly into target_wn, without modifying
       // the init tree.  Change to this scheme if more problems show up.)
       //
       // As below, only check for indirect_ref if the indirect_ref is created
       // by kg++fe to access through the fake arg0, in order to avoid
       // (indirect_ref (nop (var_decl))) which is generated by g++.
      {
	tree init_expr_opnd0 = TREE_OPERAND(exp, 0);
	if (TREE_CODE(TREE_OPERAND(exp, 1)) == NOP_EXPR &&
	    TREE_CODE(TREE_OPERAND(TREE_OPERAND(exp, 1), 0)) == TARGET_EXPR &&
	    TREE_CODE(init_expr_opnd0) == INDIRECT_REF &&
	    TREE_CODE(TREE_OPERAND(init_expr_opnd0, 0)) == VAR_DECL) {
	  tree t = TREE_OPERAND(exp, 1);
	  ST *st = Get_ST(TREE_OPERAND(init_expr_opnd0, 0));
	  WN *target_wn = WN_Ldid(Pointer_Mtype, 0, st, ST_type(st));
	  wn = WFE_Expand_Expr(t, TRUE, 0, 0, 0, 0, FALSE, FALSE, target_wn);
	  break;
	}
      }
#endif
      if (TREE_CODE(TREE_OPERAND(exp, 1)) == TARGET_EXPR) {
	tree t = TREE_OPERAND(exp, 1);
	TREE_OPERAND(t, 2) = NULL_TREE;
#ifdef KEY
	// Only check for indirect_ref if the indirect_ref is created by kg++fe
	// to access through the fake arg0, in order to avoid
	// (indirect_ref (nop (var_decl))) which is generated by g++.
	tree init_expr_opnd0 = TREE_OPERAND(exp, 0);
	if (TREE_CODE(init_expr_opnd0) == INDIRECT_REF &&
	    TREE_CODE(TREE_OPERAND(init_expr_opnd0, 0)) == VAR_DECL) {
	  tree target_expr_opnd0 = TREE_OPERAND(t, 0);
	  tree ptr_var =
	    build_decl(VAR_DECL, NULL_TREE,
		       TREE_TYPE(TREE_OPERAND(init_expr_opnd0, 0)));
	  TREE_SET_CODE(target_expr_opnd0, INDIRECT_REF);
	  TREE_OPERAND(target_expr_opnd0, 0) = ptr_var;
	  set_DECL_ST(ptr_var, DECL_ST(TREE_OPERAND(init_expr_opnd0, 0)));
	  wn = WFE_Expand_Expr(t);
	  break;
	}
#endif
	if (TREE_CODE(TREE_OPERAND(exp, 0)) == VAR_DECL    ||
	    TREE_CODE(TREE_OPERAND(exp, 0)) == RESULT_DECL ||
	    TREE_CODE(TREE_OPERAND(exp, 0)) == PARM_DECL) {
#ifdef KEY
	  ST *st = Get_ST(TREE_OPERAND(exp, 0));
	  set_DECL_ST(TREE_OPERAND(t, 0), st);
#else
 	  TREE_OPERAND(t, 0) = TREE_OPERAND(exp, 0);
#endif
	  wn = WFE_Expand_Expr(t);
	  break;
	}
	DevWarn ("INIT_EXPR/MODIFY_EXPR kid1 is TARGET_EXPR, kid0 is %s\n",
		 Operator_From_Tree [TREE_CODE(TREE_OPERAND(exp, 0))].name);
      }
		
    case PREDECREMENT_EXPR:
    case PREINCREMENT_EXPR:
    case POSTDECREMENT_EXPR:
    case POSTINCREMENT_EXPR:
      {
	if (TREE_CODE(TREE_OPERAND(exp, 1)) == ERROR_MARK)
	    break;
#ifdef KEY
	// If TREE_OPERAND(exp, 1) is a CALL_EXPR that returns a
	// ptr-to-member-function, then call
	// WFE_Expand_Ptr_To_Member_Func_Call_Expr to expand it.  Otherwise,
	// call WFE_Expand_Expr to do regular expansion.  Bug 4737.
	tree exp_opnd1 = TREE_OPERAND(exp, 1);
	if (WFE_Call_Returns_Ptr_To_Member_Func(exp_opnd1)) {
	  TYPE_ID desc = TY_mtype(Get_TY(TREE_TYPE(exp_opnd1)));
	  wn1 = WFE_Expand_Ptr_To_Member_Func_Call_Expr(exp_opnd1, 0,
						       Widen_Mtype(desc), desc);
        } else
#endif
        wn1 = WFE_Expand_Expr (TREE_OPERAND (exp, 1)); // r.h.s.

	wn  = WFE_Lhs_Of_Modify_Expr(code, TREE_OPERAND (exp, 0), need_result, 
				     0, 0, 0, FALSE, wn1, 0, FALSE, FALSE);
      }
      break;

    // ternary ops

    case BIT_FIELD_REF:
      {
        wn = WFE_Expand_Expr (TREE_OPERAND (exp, 0), TRUE, nop_ty_idx, 
			      component_ty_idx, component_offset,
			      field_id, FALSE);
	ty_idx = Get_TY (TREE_TYPE(exp));
	TYPE_ID rtype = TY_mtype(ty_idx);
	UINT siz = TY_size(ty_idx);
	TYPE_ID desc;
	if (siz <= 8) {
	  if (MTYPE_signed(rtype))
	    desc = Mtype_AlignmentClass(siz, MTYPE_CLASS_INTEGER);
	  else desc = Mtype_AlignmentClass(siz, MTYPE_CLASS_UNSIGNED_INTEGER);
	  rtype = Widen_Mtype(desc);
	}
	else desc = rtype;
#ifdef KEY
	// bug 3074
        while (1) {
        if ((WN_operator(wn) == OPR_CVT)
            && (desc == rtype))
            { // We do not need the CVT
                WN * del = wn;
                wn = WN_kid0 (wn);
                WN_Delete (del);
            }
        else break;
        }
#endif // KEY
	WN_set_rtype(wn, rtype);
	WN_set_desc(wn, desc);
	INT bofst = Get_Integer_Value(TREE_OPERAND(exp, 2));
	INT bsiz =Get_Integer_Value(TREE_OPERAND(exp, 1));
	if ((bsiz & 7) == 0 &&	// field size multiple of bytes
	    MTYPE_size_min(desc) % bsiz == 0 && // accessed loc multiple of bsiz
	    bofst % bsiz == 0) {		// bofst multiple of bsiz
	  // not really a bit-field extraction!
	  if (MTYPE_signed(rtype))
	    WN_set_desc(wn, Mtype_AlignmentClass(bsiz >> 3, MTYPE_CLASS_INTEGER));
	  else WN_set_desc(wn, Mtype_AlignmentClass(bsiz >> 3, MTYPE_CLASS_UNSIGNED_INTEGER));
	  WN_load_offset(wn) = WN_load_offset(wn) + (bofst >> 3);
	} else {
#ifdef KEY
          // bofst is ofst in bits from the base of the object.
          // Convert it to ofst from the beginning of the field, and update
          // the load offset using the proper alignment
          // The change is needed when we come here with bofst > base_type_size
          mUINT16 base_type_size = MTYPE_bit_size (desc);
          WN_load_offset(wn) += (bofst / base_type_size) * MTYPE_byte_size (desc);
          bofst = bofst % base_type_size;
#endif
	  if (WN_operator(wn) == OPR_LDID)
	    WN_set_operator(wn, OPR_LDBITS);
	  else WN_set_operator(wn, OPR_ILDBITS);
	  WN_set_bit_offset_size(wn, bofst, bsiz);
#ifdef KEY
	  WN_set_ty (wn, MTYPE_To_TY (WN_desc(wn)));
	  break;
#endif
	}
	if (MTYPE_byte_size (WN_desc(wn)) != TY_size(WN_ty(wn)))
	  // the container is smaller than the entire struct
#ifdef KEY
	{
	  TY_IDX ty = MTYPE_To_TY (WN_desc(wn));
	  if ((TY_kind(Ty_Table[WN_ty(wn)]) == KIND_STRUCT)
              && (TY_kind(Ty_Table[ty]) != KIND_STRUCT))
	// if struct is being changed to a non-struct, the field-id
	// does not hold any more.
		WN_set_field_id (wn, 0);
	  WN_set_ty (wn, ty);
	}
#else
	  WN_set_ty (wn, MTYPE_To_TY (WN_desc(wn)));
#endif
      }
      break;

    // n-ary ops

    case ARRAY_REF:
      {
	UINT xtra_BE_ofst = 0; 	// only needed for big-endian target
	TY_IDX elem_ty_idx;
	// generate the WHIRL array node
        wn0 = WFE_Array_Expr(exp, &elem_ty_idx, 0, 0, 0);

	// generate the iload node
	TY_IDX hi_ty_idx = Get_TY (TREE_TYPE(exp));
	desc_ty_idx = component_ty_idx;
	if (desc_ty_idx == 0)
          desc_ty_idx = hi_ty_idx;

        if (! MTYPE_is_integral(TY_mtype(desc_ty_idx)))
	  ty_idx = desc_ty_idx;
	else {
	  ty_idx = nop_ty_idx;
	  if (ty_idx == 0) 
	    ty_idx = desc_ty_idx;
	}

	if (! is_bit_field) {
	  if (TY_size(desc_ty_idx) > TY_size(ty_idx)) {
	    if (Target_Byte_Sex == BIG_ENDIAN)
	      xtra_BE_ofst = TY_size(desc_ty_idx) - TY_size(ty_idx);
	    desc_ty_idx = ty_idx;
	  }
	}
        else {
          if (TY_size(desc_ty_idx) > TY_size(ty_idx))
            ty_idx = desc_ty_idx;
        }

        TYPE_ID rtype = Widen_Mtype(TY_mtype(ty_idx));
        TYPE_ID desc = TY_mtype(desc_ty_idx);
        if (MTYPE_is_integral(desc)) {
          if (MTYPE_signed(rtype) != MTYPE_signed(desc)) {
            if (MTYPE_size_min(rtype) > MTYPE_size_min(desc) ||
		is_bit_field)
              rtype = Mtype_TransferSign(desc, rtype);
            else desc = Mtype_TransferSign(rtype, desc);
          }
        }

	Is_True(! is_bit_field || field_id <= MAX_FIELD_ID,
		("WFE_Expand_Expr: field id for bit-field exceeds limit"));
	wn = WN_CreateIload(OPR_ILOAD, rtype,
			    is_bit_field ? MTYPE_BS : desc, 
			    component_offset+xtra_BE_ofst,
			    field_id != 0 ? hi_ty_idx : ty_idx,
			    Make_Pointer_Type(elem_ty_idx, FALSE),
			    wn0, field_id);
      }
      break;

    case AGGR_INIT_EXPR:
    case CALL_EXPR:
      {
	tree arglist = TREE_OPERAND (exp, 1);
        TYPE_ID ret_mtype;
        WN *call_wn;
        WN *arg_wn;
	TY_IDX  arg_ty_idx;
        TYPE_ID arg_mtype;
        INT num_args = 0;
	INT num_handlers = 0;
        INT i;
	tree list;
	arg0 = TREE_OPERAND (exp, 0);
	enum tree_code code0 = TREE_CODE (arg0);
	// KEY:  true if type must be returned in mem
	BOOL return_in_mem = FALSE;
#ifdef KEY
	ST *ret_st = NULL;		// return symbol
#endif
	for (list = TREE_OPERAND (exp, 1); list; list = TREE_CHAIN (list)) {
          arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
          if (!WFE_Keep_Zero_Length_Structs    &&
              TY_mtype (arg_ty_idx) == MTYPE_M &&
              TY_size (arg_ty_idx) == 0) {
            // zero length struct parameter
          }
          else
            num_args++;
        }
        ty_idx = Get_TY(TREE_TYPE(exp));
        if (need_result) {
          if (!WFE_Keep_Zero_Length_Structs  &&
              TY_mtype (ty_idx) == MTYPE_M   &&
              TY_size (ty_idx) == 0) {
            // zero length struct return
            ret_mtype = MTYPE_V;
          }
          else
            ret_mtype = TY_mtype (ty_idx);
#ifdef KEY
	  // If the type must be returned in memory, create a symbol and pass
	  // its address as the first param.
          if (TY_return_in_mem (ty_idx)) {
	    ret_mtype = MTYPE_V;
	    return_in_mem = TRUE;
            num_args++;		// first param is address of return symbol
	  }
#endif
        }
        else
          ret_mtype = MTYPE_V;
        st = NULL;
        if (code0 == ADDR_EXPR                  &&
            TREE_CODE (TREE_OPERAND (arg0, 0))) {
	  tree func = TREE_OPERAND (arg0, 0);
	  BOOL intrinsic_op = FALSE;
          BOOL whirl_generated = FALSE;
	  INTRINSIC iopc = INTRINSIC_NONE;

#ifdef KEY
	  if (DECL_ASSEMBLER_NAME(func))
	    TREE_SYMBOL_REFERENCED_BY_WHIRL(DECL_ASSEMBLER_NAME(func)) = 1;
#endif
          
	  if (DECL_BUILT_IN (func)) {

            switch (DECL_FUNCTION_CODE (func)) {

	      case END_BUILTINS:
		break;

	      case BUILT_IN_STDARG_START:
#ifdef KEY
	      case BUILT_IN_VA_START:
#endif
	      {
#ifdef TARG_X8664
		if( TARGET_64BIT ){
		  iopc = INTRN_VA_START;
		  break;
		}
#endif
		arg1 = TREE_VALUE (arglist);
		arg2 = TREE_VALUE (TREE_CHAIN (arglist));
		WN *arg_wn = WFE_Expand_Expr (arg1);
		ST *st1 = WN_st (arg_wn);
		while (TREE_CODE (arg2) == NOP_EXPR
		       || TREE_CODE (arg2) == CONVERT_EXPR
		       || TREE_CODE (arg2) == NON_LVALUE_EXPR
		       || TREE_CODE (arg2) == INDIRECT_REF)
		  arg2 = TREE_OPERAND (arg2, 0);
		ST *st2 = Get_ST (arg2);
#ifdef TARG_X8664
		const int align = PARM_BOUNDARY / BITS_PER_UNIT;
		wn = WN_Lda (Pointer_Mtype, 
                             ((TY_size (ST_type (st2)) + align-1) & (-align)),
                             st2);
#else
		wn = WN_Lda (Pointer_Mtype, 
                             ((TY_size (ST_type (st2)) + 7) & (-8)),
                             st2);
#endif
		wn = WN_Stid (Pointer_Mtype, 0, st1, ST_type (st1), wn);
		WFE_Stmt_Append (wn, Get_Srcpos());
		whirl_generated = TRUE;
		wn = NULL;
		break;
	      }

	      case BUILT_IN_VA_COPY:
	      {
		arg1 = TREE_VALUE (arglist);
		arg2 = TREE_VALUE (TREE_CHAIN (arglist));
                TY_IDX arg_ty_idx = Get_TY (TREE_TYPE (arg1));


#ifdef TARG_X8664
		/* Under -m32, convert a __builtin_va_copy to an assignment if the
		   type of va_list is not array.
		   Also, the original code seems to only work for -m64, like other
		   va_XYZ code; under -m32, the source address is wrong.  (bug#2601)
		   (But even under -m64, the using of memcpy is unnecessary.)
		 */
		if( !TARGET_64BIT ){
		  FmtAssert( TREE_CODE(arglist) != ARRAY_TYPE,
			     ("unexpected array type for intrinsic 'va_copy'") );
		  WN* addr = WFE_Expand_Expr( arg1 );
		  WN* value = WFE_Expand_Expr( arg2 );
		  wn = WN_CreateIstore( OPR_ISTORE, MTYPE_V, Pointer_Mtype,
					0, arg_ty_idx, value, addr, 0 );

		  WFE_Stmt_Append( wn, Get_Srcpos() );
		  whirl_generated = TRUE;
		  wn = NULL;
		  break;
		}
#endif // TARG_X8664

		WN *dst  = WN_CreateParm (Pointer_Mtype, WFE_Expand_Expr (arg1),
					  arg_ty_idx, WN_PARM_BY_VALUE);
		WN *src  = WN_CreateParm (Pointer_Mtype, WFE_Expand_Expr (arg2),
					  arg_ty_idx, WN_PARM_BY_VALUE);
		WN *size = WN_CreateParm (MTYPE_I4,
					  WN_Intconst(MTYPE_I4,TY_size(TY_pointed(arg_ty_idx))),
					  Be_Type_Tbl(MTYPE_I4), WN_PARM_BY_VALUE);
		wn = WN_Create (OPR_INTRINSIC_CALL, ret_mtype, MTYPE_V, 3);
		WN_intrinsic (wn) = INTRN_MEMCPY;
		WN_kid0 (wn) = dst;
		WN_kid1 (wn) = src;
		WN_kid2 (wn) = size;
		WFE_Stmt_Append (wn, Get_Srcpos());
		whirl_generated = TRUE;
		wn = NULL;
#ifdef KEY
		break;
#endif
	      }

	      case BUILT_IN_VA_END:
	      {
		whirl_generated = TRUE;
		break;
	      }

	      case BUILT_IN_NEXT_ARG:
	      {
                tree last_parm = tree_last 
				   (DECL_ARGUMENTS (Current_Function_Decl()));
		while (TREE_CODE (last_parm) == NOP_EXPR
		       || TREE_CODE (last_parm) == CONVERT_EXPR
		       || TREE_CODE (last_parm) == NON_LVALUE_EXPR
		       || TREE_CODE (last_parm) == INDIRECT_REF)
		  last_parm = TREE_OPERAND (last_parm, 0);
		ST *st = Get_ST (last_parm);
		arg_wn = WN_Lda (Pointer_Mtype, ST_ofst(st), st);
		wn = WN_Binary (OPR_ADD, Pointer_Mtype, arg_wn,
				WN_Intconst (Pointer_Mtype,
					     Parameter_Size(ST_size(st))));
                whirl_generated = TRUE;
		break;
	      }

              case BUILT_IN_ALLOCA:
		Set_PU_has_alloca (Get_Current_PU ());
		Set_PU_has_user_alloca (Get_Current_PU ());
                arg_wn = WFE_Expand_Expr (TREE_VALUE (TREE_OPERAND (exp, 1)));
	        wn = WN_CreateAlloca (arg_wn);
                whirl_generated = TRUE;
                break;

              case BUILT_IN_MEMCPY:
		iopc = INTRN_MEMCPY;
                break;

              case BUILT_IN_MEMCMP:
		iopc = INTRN_MEMCMP;
                break;

              case BUILT_IN_MEMSET:
#ifndef KEY	// Use the memset in the PathScale library.
		iopc = INTRN_MEMSET;
#endif
                break;

              case BUILT_IN_STRCPY:
		iopc = INTRN_STRCPY;
                break;

              case BUILT_IN_STRCMP:
#ifdef GPLUSPLUS_FE
		iopc = INTRN_STRCMP;
#else
		if (arglist == 0
		    /* Arg could be non-pointer if user redeclared this fcn wrong.  */
		    || TREE_CODE (TREE_TYPE (TREE_VALUE (arglist))) != POINTER_TYPE
		    || TREE_CHAIN (arglist) == 0
		    || TREE_CODE (TREE_TYPE (TREE_VALUE (TREE_CHAIN (arglist)))) != POINTER_TYPE)
		  break;
		else {
		  arg1 = TREE_VALUE (arglist);
		  arg2 = TREE_VALUE (TREE_CHAIN (arglist));
		  tree len1 = c_strlen (arg1);
		  if (len1) {
		    tree len2 = c_strlen (arg2);
		    if (len2) {
		      char *ptr1 = get_string_pointer (WFE_Expand_Expr (arg1));
		      char *ptr2 = get_string_pointer (WFE_Expand_Expr (arg2));
		      if (ptr1 && ptr2) {
			wn = WN_Intconst (MTYPE_I4,
					  strcmp (ptr1, ptr2));
			whirl_generated = TRUE;
			break;
		      }
		    }
		  }
		  iopc = INTRN_STRCMP;
//		  intrinsic_op = TRUE;
		}
#endif /* GPLUSPLUS_FE */
                break;

              case BUILT_IN_STRLEN:
#ifdef GPLUSPLUS_FE
		iopc = INTRN_STRLEN;
#else
		if (arglist == 0
		/* Arg could be non-pointer if user redeclared this fcn wrong.  */
		   || TREE_CODE (TREE_TYPE (TREE_VALUE (arglist))) != POINTER_TYPE)
		  break;
		else {
		  tree src = TREE_VALUE (arglist);
		  tree len = c_strlen (src);
		  if (len) {
		    wn = WFE_Expand_Expr (len);
		    whirl_generated = TRUE;
		  }
		  else {
		    iopc = INTRN_STRLEN;
//		    intrinsic_op = TRUE;
		  }
		}
#endif /* GPLUSPLUS_FE */
                break;

#ifdef KEY
	    case BUILT_IN_FLOOR:  
              arg_wn = WFE_Expand_Expr (TREE_VALUE (TREE_OPERAND (exp, 1)));
              if (MTYPE_is_integral(ret_mtype))
                wn0 = WN_CreateExp1 (OPR_FLOOR, ret_mtype , MTYPE_F8, arg_wn);
              else{
                wn0 = WN_CreateExp1 (OPR_FLOOR, MTYPE_I8  , MTYPE_F8, arg_wn);
                wn = WN_Cvt(WN_rtype(wn0), ret_mtype, wn0);
              }
              whirl_generated = TRUE;
	      break;

	    case BUILT_IN_FLOORF: 
              arg_wn = WFE_Expand_Expr (TREE_VALUE (TREE_OPERAND (exp, 1)));
              if (MTYPE_is_integral(ret_mtype))
                wn = WN_CreateExp1 (OPR_FLOOR, ret_mtype, MTYPE_F4, arg_wn);
              else{
                wn0 = WN_CreateExp1 (OPR_FLOOR, MTYPE_I8  , MTYPE_F4, arg_wn);
                wn = WN_Cvt(WN_rtype(wn0), ret_mtype, wn0);
              }
	      whirl_generated = TRUE;
	      break;

            case BUILT_IN_FLOORL:
              arg_wn = WFE_Expand_Expr (TREE_VALUE (TREE_OPERAND (exp, 1)));
	      if (MTYPE_is_integral(ret_mtype))
                wn = WN_CreateExp1 (OPR_FLOOR, ret_mtype, MTYPE_F8, arg_wn);
	      else{
		wn0 = WN_CreateExp1 (OPR_FLOOR, MTYPE_I8, MTYPE_F8, arg_wn);
		wn = WN_Cvt(WN_rtype(wn0), ret_mtype, wn0);
	      }
              whirl_generated = TRUE;
              break;
#endif

#ifdef KEY
	      case BUILT_IN_SQRT:
		if( flag_errno_math ){
		  break;
		}
#else
              case BUILT_IN_FSQRT:
#endif
                arg_wn = WFE_Expand_Expr (TREE_VALUE (TREE_OPERAND (exp, 1)));
                wn = WN_CreateExp1 (OPR_SQRT, ret_mtype, MTYPE_V, arg_wn);
                whirl_generated = TRUE;
                break;

              case BUILT_IN_SIN:
		     if (ret_mtype == MTYPE_F4) iopc = INTRN_F4SIN;
                else if (ret_mtype == MTYPE_F8) iopc = INTRN_F8SIN;
                else Fail_FmtAssertion ("unexpected mtype for intrinsic 'sin'");
		intrinsic_op = TRUE;
                break;

              case BUILT_IN_COS:
		     if (ret_mtype == MTYPE_F4) iopc = INTRN_F4COS;
                else if (ret_mtype == MTYPE_F8) iopc = INTRN_F8COS;
                else Fail_FmtAssertion ("unexpected mtype for intrinsic 'cos'");
		intrinsic_op = TRUE;
                break;

#ifdef KEY
              case BUILT_IN_EXP:
		// bug 3390
		// If return type is void, generate an intrinsic assuming
		// double (so if it is without side-effects, optimizer can 
		// remove it)
		if (ret_mtype == MTYPE_V) ret_mtype = MTYPE_F8;

                if (ret_mtype == MTYPE_F4) iopc = INTRN_F4EXP;
                else if (ret_mtype == MTYPE_F8) iopc = INTRN_F8EXP;
                else Fail_FmtAssertion ("unexpected mtype for intrinsic 'exp'");
		intrinsic_op = TRUE;
                break;

	    case BUILT_IN_POW:
	      // Bug 8195: If for whatever reason the pow(3) call is unused,
	      // need_result will be false. Then, the value that this very
	      // function assigns to ret_mtype for pow(3) is MTYPE_V. So,
	      // just like we handle BUILT_IN_EXP above, we need to reassign
	      // ret_mtype to MTYPE_F8.
	      // Note that since pow[lf](3) are not builtin's(unlike the way
	      // exp[lf]?(3)'s are), we only permit ret_mtype MTYPE_F8 here.
	      if(ret_mtype == MTYPE_V) ret_mtype = MTYPE_F8;
	      FmtAssert(ret_mtype == MTYPE_F8, 
			("unexpected mtype for intrinsic 'pow'"));
	      iopc = INTRN_F8EXPEXPR;
	      intrinsic_op = TRUE;
	      break;
#endif // KEY

              case BUILT_IN_CONSTANT_P:
              {
                tree arg = TREE_VALUE (TREE_OPERAND (exp, 1));
                STRIP_NOPS (arg);
                if (really_constant_p (arg)
                    || (TREE_CODE (arg) == ADDR_EXPR
                        && TREE_CODE (TREE_OPERAND (arg, 0)) == STRING_CST))
		{
                  wn = WN_Intconst (MTYPE_I4, 1);
		  whirl_generated = TRUE; // KEY
		}
#ifdef KEY_bug1058
// If not yet compile-time constant, let the backend decide if it is 
// a constant
		else
		{
		  iopc = INTRN_CONSTANT_P;
		  intrinsic_op = TRUE;
		}
#else

                else
                  wn = WN_Intconst (MTYPE_I4, 0);
//                wn = WFE_Expand_Expr (TREE_VALUE (TREE_OPERAND (exp, 1)));
                whirl_generated = TRUE;
#endif // KEY
                break;
              }
#if 0
              case BUILT_IN_LOCK_TEST_AND_SET:
                wn = emit_builtin_lock_test_and_set (exp, num_args-2);
                whirl_generated = TRUE;
                break;

              case BUILT_IN_LOCK_RELEASE:
                emit_builtin_lock_release (exp, num_args-1);
                whirl_generated = TRUE;
                break;

              case BUILT_IN_COMPARE_AND_SWAP:
                wn = emit_builtin_compare_and_swap (exp, num_args-3);
                whirl_generated = TRUE;
                break;

              case BUILT_IN_SYNCHRONIZE:
                emit_builtin_synchronize (exp, num_args);
                whirl_generated = TRUE;
                break;
#endif

              case BUILT_IN_RETURN_ADDRESS:
                i = Get_Integer_Value (TREE_VALUE (TREE_OPERAND (exp, 1)));
		if (i > 0) {
			// currently don't handle levels > 0,
			// which requires iterating thru call-stack
			// and finding $ra in fixed place.
			warning("non-zero levels not supported for builtin_return_address");
			wn = WN_Intconst(Pointer_Mtype, 0);
		}
		else {
			st = WFE_Get_Return_Address_ST (i);
			wn = WN_Ldid (Pointer_Mtype, 0, st, ST_type (st));
		}
                whirl_generated = TRUE;
		break;

#ifdef KEY
              case BUILT_IN_EXTRACT_RETURN_ADDR:
		list = TREE_OPERAND (exp, 1);
		wn   = WFE_Expand_Expr (TREE_VALUE (list));
                wn = WN_Binary (OPR_BAND, Pointer_Mtype, wn, 
				WN_Intconst(Pointer_Mtype, -2));
                whirl_generated = TRUE;
		break;

              case BUILT_IN_FRAME_ADDRESS:
		Set_PU_has_alloca(Get_Current_PU());
		iopc = MTYPE_byte_size(Pointer_Mtype) == 4 ?
		   	 INTRN_U4READFRAMEPOINTER : INTRN_U4READFRAMEPOINTER;
		intrinsic_op = TRUE;
		break;
	      case BUILT_IN_APPLY_ARGS:
		Set_PU_has_alloca(Get_Current_PU());
		iopc = INTRN_APPLY_ARGS;
		break;	
	      case BUILT_IN_APPLY:
		{
		  WN *load_wn, *sp_addr;

		  Set_PU_has_alloca(Get_Current_PU());

		  iopc = INTRN_APPLY;
		  call_wn = WN_Create (OPR_INTRINSIC_CALL, ret_mtype, MTYPE_V, 
				       num_args);
		  WN_intrinsic (call_wn) = iopc;
		  WN_Set_Linenum (call_wn, Get_Srcpos());
		  WN_Set_Call_Default_Flags (call_wn);
		  i = 0;
		  BOOL generate_mload = FALSE;
		  WN *kid1 = NULL;
		  WN *kid2 = NULL;
		  for (list = TREE_OPERAND (exp, 1);
		       list;
		       list = TREE_CHAIN (list)) {
		    arg_wn     = WFE_Expand_Expr (TREE_VALUE (list));
		    if (i == 1)
		      kid1 = arg_wn;
		    if (i == 2 && 
			WN_operator(arg_wn) != OPR_INTCONST) {
		      generate_mload = TRUE;
		      kid2 = arg_wn;
		    } else if (i == 2)
		      kid2 = arg_wn;
		    arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
		    arg_mtype  = TY_mtype(arg_ty_idx);
		    arg_wn = WN_CreateParm (Mtype_comparison (arg_mtype), 
					    arg_wn,
					    arg_ty_idx, WN_PARM_BY_VALUE);
		    WN_kid (call_wn, i++) = arg_wn;
		  }

		  // Store SP & Alloca
		  TY_IDX ty_idx = 
		    Make_Pointer_Type (Be_Type_Tbl (MTYPE_V), FALSE);
		  ST* alloca_st_0 = 
		    Gen_Temp_Symbol (ty_idx, 
				     "__builtin_apply_alloca0");
		  WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL,
						       alloca_st_0);
		  WN *alloca_0 = 
		    WN_CreateAlloca (WN_CreateIntconst (OPC_I4INTCONST, 0));
		  WN *alloca_kid0 = alloca_0;
		  alloca_kid0 = 
		    WN_Stid (Pointer_Mtype, 
			     0, alloca_st_0, ty_idx, alloca_kid0);
		  WFE_Stmt_Append (alloca_kid0, Get_Srcpos());
		  ST *alloca_st_1 = 
		    Gen_Temp_Symbol (ty_idx, 
				     "__builtin_apply_alloca1");
		  WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL,
		  				       alloca_st_1);
		  WN *alloca_1 = WN_CreateAlloca (kid2);
		  WN *alloca_kid1 = alloca_1;
		  alloca_kid1 = WN_Stid (Pointer_Mtype, 
					 0, alloca_st_1, ty_idx, alloca_kid1);
		  WFE_Stmt_Append (alloca_kid1, Get_Srcpos());

		  // The src is actually in 0(kid1)
		  kid1 = 
		    WN_CreateIload (OPR_ILOAD, MTYPE_I4, MTYPE_I4, 0,
				    MTYPE_To_TY(MTYPE_I4), 
				    Make_Pointer_Type(MTYPE_To_TY(MTYPE_U8)), 
				    kid1, 0);
		  load_wn = 
		    WN_CreateMload (0, 
				    Make_Pointer_Type(MTYPE_To_TY(MTYPE_U8)), 
				    kid1, kid2);
		  sp_addr = WN_LdidPreg(MTYPE_U4, 29); // $sp
		  WFE_Stmt_Append(WN_CreateMstore (0, 
			      Make_Pointer_Type(MTYPE_To_TY(MTYPE_U8)), 
						   load_wn,
						   sp_addr,
						   kid2),
				  Get_Srcpos());

		  WFE_Stmt_Append (call_wn, Get_Srcpos());

		  call_wn = WN_Create (OPR_ICALL, ret_mtype, MTYPE_V, 1);
		  WN_kid(call_wn, 0) = 
		    WFE_Expand_Expr (TREE_VALUE (TREE_OPERAND (exp, 1)));
		  WN_set_ty (call_wn, TY_pointed(Get_TY(
			    TREE_TYPE (TREE_VALUE(TREE_OPERAND (exp, 1))))));
		  WFE_Stmt_Append (call_wn, Get_Srcpos());		

		  TY_IDX tyi;
		  TY& ty = New_TY(tyi);
		  TY_Init(ty, 16, KIND_STRUCT, MTYPE_M,
			  Save_Str("__apply"));
		  Set_TY_align(tyi, 8);
		  ST *tmpst = New_ST(CURRENT_SYMTAB);
		  ST_Init(tmpst, TY_name_idx(ty),
			  CLASS_VAR, SCLASS_AUTO, EXPORT_LOCAL, tyi);
		  Set_ST_is_temp_var(tmpst);
		  WN *load, *store;
		  load = WN_LdidPreg(MTYPE_I8, 2); // $v0
		  store = WN_Stid(MTYPE_I8, 
				  (WN_OFFSET)0, tmpst, Spill_Int_Type, load);
		  WFE_Stmt_Append (store, Get_Srcpos());		
		  load = WN_LdidPreg(MTYPE_F8, 32); //$f0
		  store = WN_Stid(MTYPE_F8, 
				  (WN_OFFSET)8, tmpst, Spill_Int_Type, load);
		  WFE_Stmt_Append (store, Get_Srcpos());		
		  wn = WN_Lda (Pointer_Mtype, 0, tmpst, 
			       Make_Pointer_Type (ST_type(tmpst), FALSE));

		  // Dealloca/Restore SP
		  WN *dealloca_wn = WN_CreateDealloca (2);
		  WN_kid0 (dealloca_wn) = 
		    WN_Ldid (Pointer_Mtype, 
			     0, alloca_st_0, ST_type (alloca_st_0));
		  WN_kid1 (dealloca_wn) = 
		    WN_Ldid (Pointer_Mtype, 
			     0, alloca_st_1, ST_type (alloca_st_1));
		  WFE_Stmt_Append (dealloca_wn, Get_Srcpos());		
		  
		  whirl_generated = TRUE;
		  break;
		}
	      case BUILT_IN_RETURN:
		Set_PU_has_alloca(Get_Current_PU());
		iopc = INTRN_RETURN;
		break;	

                // Implement built-in versions of the ISO C99 floating point
                // comparison macros (that avoid raising exceptions for
                // unordered operands)
              case BUILT_IN_ISGREATER:
                iopc = INTRN_ISGREATER;
                intrinsic_op = TRUE;
                break;
              case BUILT_IN_ISGREATEREQUAL:
                iopc = INTRN_ISGREATEREQUAL;
                intrinsic_op = TRUE;
                break;
              case BUILT_IN_ISLESS:
                iopc = INTRN_ISLESS;
                intrinsic_op = TRUE;
                break;
              case BUILT_IN_ISLESSEQUAL:
                iopc = INTRN_ISLESSEQUAL;
                intrinsic_op = TRUE;
                break;
              case BUILT_IN_ISLESSGREATER:
                iopc = INTRN_ISLESSGREATER;
                intrinsic_op = TRUE;
                break;
              case BUILT_IN_ISUNORDERED:
                iopc = INTRN_ISUNORDERED;
                intrinsic_op = TRUE;
                break;

	      case BUILT_IN_EXPECT:
	        wn = WFE_Expand_Expr (TREE_VALUE (TREE_OPERAND (exp, 1)));
	        whirl_generated = TRUE;
	        break;

              case BUILT_IN_FFS:
                iopc = INTRN_I4FFS;
                intrinsic_op = TRUE;
                if (ret_mtype == MTYPE_V)
                  ret_mtype = MTYPE_I4;
                break;

	      case BUILT_IN_EXTEND_POINTER:
		wn = WFE_Expand_Expr (TREE_VALUE (TREE_OPERAND (exp, 1)));
		whirl_generated = TRUE;
	        break;
	
	      case BUILT_IN_POPCOUNT:
	      case BUILT_IN_POPCOUNTL:
	      case BUILT_IN_POPCOUNTLL:
	        iopc = INTRN_POPCOUNT;
		intrinsic_op = TRUE;
		break;
	
	      case BUILT_IN_CTZ:
	      case BUILT_IN_CTZL:
	      case BUILT_IN_CTZLL:
	        iopc = INTRN_CTZ;
		intrinsic_op = TRUE;
		break;

	      case BUILT_IN_TRAP:
		call_wn = WN_Create (OPR_CALL, MTYPE_V, MTYPE_V, 0);
		st = Get_ST (TREE_OPERAND (arg0, 0));
		Set_ST_name_idx (st, Save_Str ("abort"));
		WN_st_idx (call_wn) = ST_st_idx (st);
		WN_Set_Linenum (call_wn, Get_Srcpos());
		WN_Set_Call_Default_Flags (call_wn);
		WFE_Stmt_Append (call_wn, Get_Srcpos());
		whirl_generated = TRUE;
		break;

	      case BUILT_IN_PREFETCH:
	        {
		  // prefetch address
		  tree pf_arg = TREE_OPERAND (exp, 1);
		  WN * pf_addr = WFE_Expand_Expr (TREE_VALUE (pf_arg));
		  // Note 2nd/3rd argument optional
		  // read/write access
		  pf_arg = TREE_CHAIN (pf_arg);
		  UINT32 pf_flag = 0;
		  int access = 0;
		  if (pf_arg && TREE_CODE (TREE_VALUE (pf_arg)) == INTEGER_CST)
		    access = Get_Integer_Value (TREE_VALUE (pf_arg));
		  if (access == 0)
		    PF_SET_READ (pf_flag);
		  else // should be 1 (write access)
		    PF_SET_WRITE (pf_flag);
		  // Ignore 3rd argument which gives a measure of temporal
		  // locality. LNO does analyze the temporal locality, but
		  // not sure what is a good way to encode it in PREFETCH.
		  PF_SET_MANUAL (pf_flag); // manual prefetch
		  WFE_Stmt_Append (WN_CreatePrefetch (0, pf_flag, pf_addr),
		                   Get_Srcpos());
		  whirl_generated = TRUE;
		}
		break;
#endif

	      default:
		DevWarn ("Encountered BUILT_IN: %d at line %d\n",
			 DECL_FUNCTION_CODE (func), lineno);
		break;
            }
	  }

          if (whirl_generated) {
            break;
          }

	  if (intrinsic_op) {
	    WN *ikids [5];
	    for (i = 0, list = TREE_OPERAND (exp, 1);
		 list;
		 i++, list = TREE_CHAIN (list)) {
              arg_wn     = WFE_Expand_Expr (TREE_VALUE (list));
	      arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
	      arg_mtype  = TY_mtype(arg_ty_idx);
              arg_wn     = WN_CreateParm (Mtype_comparison (arg_mtype), arg_wn,
					  arg_ty_idx, WN_PARM_BY_VALUE);
	      ikids [i]  = arg_wn;
	    }
	    wn = WN_Create_Intrinsic (OPR_INTRINSIC_OP, ret_mtype, MTYPE_V,
				      iopc, num_args, ikids);
	    break;
	  }

	  if (iopc) {
            call_wn = WN_Create (OPR_INTRINSIC_CALL, ret_mtype, MTYPE_V, num_args);
	    WN_intrinsic (call_wn) = iopc;
	  }
	  else {
	    num_handlers = Current_Handler_Count();
            call_wn = WN_Create (OPR_CALL, ret_mtype, MTYPE_V,
                                 num_args + num_handlers);

            st = Get_ST (TREE_OPERAND (arg0, 0));
            WN_st_idx (call_wn) = ST_st_idx (st);
	  }
        }

        else {
	  num_args++;
	  num_handlers = Current_Handler_Count();
          call_wn = WN_Create (OPR_ICALL, ret_mtype, MTYPE_V,
			       num_args + num_handlers);
	  WN_kid(call_wn, num_args-1) = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
	  WN_set_ty (call_wn, TY_pointed(Get_TY(TREE_TYPE (TREE_OPERAND (exp, 0)))));
	}

	WN_Set_Linenum (call_wn, Get_Srcpos());
	WN_Set_Call_Default_Flags (call_wn);

        if (st) {
          tree func = TREE_OPERAND (arg0, 0);
          if (DECL_INLINE (func)) {
            wfe_invoke_inliner = TRUE;
          }
        }

        i = 0;
#ifdef KEY
	// If the object must be returned through memory, create the fake first
	// param to pass the address of the return area.  Here we decide if an
	// object must be returned via memory based on high-level language
	// requirements, such as if the return type has a copy constructor.
	// Later on, the back-end will make the same decision but based on the
	// ABI.
	if (return_in_mem) {
	  FmtAssert (target_wn != NULL,
		     ("WFE_Expand_Expr: write target is NULL"));
          WN *arg_wn = WN_CreateParm (Pointer_Mtype, target_wn,
				      Make_Pointer_Type(ty_idx, FALSE),
				      WN_PARM_BY_VALUE);
          WN_kid (call_wn, i++) = arg_wn;
	  if (WN_operator(target_wn) == OPR_LDA) {
	    ST *st = WN_st(target_wn);
	    Set_ST_addr_passed(*st);
	  }
	}
#endif
	for (list = TREE_OPERAND (exp, 1);
	     list;
	     list = TREE_CHAIN (list)) {
	  if (i == 0 && is_aggr_init_via_ctor) {
	    ST * st = Get_ST(TREE_VALUE(list));
	    arg_wn = WN_Lda(Pointer_Mtype, ST_ofst(st), st);
	    arg_ty_idx = Get_TY(
			   build_pointer_type(TREE_TYPE(TREE_VALUE(list))));
	  }
	  else {
#ifdef KEY
	    if (TREE_CODE (TREE_VALUE (list)) == ADDR_EXPR &&
	    	TREE_CODE (TREE_OPERAND (TREE_VALUE (list), 0)) == TARGET_EXPR)
	    {
		tree targ = TREE_OPERAND (TREE_VALUE (list), 0);
            	WN *targ_wn = WFE_Expand_Expr(targ);
            	arg_wn     = WN_Lda(Pointer_Mtype, 0, WN_st(targ_wn), 0);
	    	arg_ty_idx = Make_Pointer_Type(Get_TY(TREE_TYPE(targ)));
	    }
	    else
	    {
#endif // KEY
            arg_wn     = WFE_Expand_Expr (TREE_VALUE (list));
	    arg_ty_idx = Get_TY(TREE_TYPE(TREE_VALUE(list)));
#ifdef KEY
	    }
#endif // KEY
	  }

	  arg_mtype  = TY_mtype(arg_ty_idx);
#if 0
	  // gcc allows non-struct actual to correspond to a struct formal;
	  // fix mtype of parm node so as not to confuse back-end
	  if (arg_mtype == MTYPE_M) {
	    arg_mtype = WN_rtype(arg_wn);
	  }
#endif
          arg_wn = WN_CreateParm (Mtype_comparison (arg_mtype), arg_wn,
		    		  arg_ty_idx, WN_PARM_BY_VALUE);
          WN_kid (call_wn, i++) = arg_wn;
        }

#ifdef ADD_HANDLER_INFO
	if (num_handlers) 
	  Add_Handler_Info (call_wn, i, num_handlers);
#endif

#ifdef KEY
	if (key_exceptions && !TREE_NOTHROW(exp) && 
// Call terminate() "when the destruction of an object during stack 
// unwinding (except.ctor) exits using an exception" [except.terminate]
// So we don't want to form a region in such cases.
//
// NOTE: It need not be a destructor call, e.g. if we inline the destructor,
// all functions inside cannot throw. We assume that it is cleanup code means
// it has to be a destructor, be its call or its body.
	    !(in_cleanup))
	{
	    if (!inside_eh_region)
	    { // check that we are not already in a region
            	WN * region_body = WN_CreateBlock();
		inside_eh_region = true;
            	WFE_Stmt_Push (region_body, wfe_stmk_call_region_body, Get_Srcpos());
	    }
	} else if (key_exceptions && inside_eh_region && opt_regions)
	{
	    // The above conditions dictate that this call MUST not be inside
	    // a region. So close the region.
	    // TODO: Is this only for opt_regions or in general?
	    if (Check_For_Call_Region ())
	    	Did_Not_Terminate_Region = FALSE;
	}
#endif // KEY

        if (ret_mtype == MTYPE_V
#ifdef KEY
	   // If the result is already put into the preferred symbol, then emit
	   // the call and we're done.
	   || return_in_mem
#endif
	   ) {
	  WFE_Stmt_Append (call_wn, Get_Srcpos());
        }

	else {
          wn0 = WN_CreateBlock ();
          WN_INSERT_BlockLast (wn0, call_wn);

	  wn1 = WN_Ldid (ret_mtype, -1, Return_Val_Preg, ty_idx);

	  if (ret_mtype == MTYPE_M) { // copy the -1 preg to a temp area

	    TY_IDX ret_ty_idx = ty_idx;
#ifndef KEY
// bug 3735: the compiler cannot arbitrarily change the alignment of
// individual structures
	    if (Aggregate_Alignment > 0 &&
		Aggregate_Alignment > TY_align (ret_ty_idx))
	      Set_TY_align (ret_ty_idx, Aggregate_Alignment);
#endif // !KEY
            if (TY_align (ret_ty_idx) < MTYPE_align_best(Spill_Int_Mtype))
              Set_TY_align (ret_ty_idx, MTYPE_align_best(Spill_Int_Mtype));
	    ST *ret_st = Gen_Temp_Symbol(ret_ty_idx, 
		  st ? Index_To_Str(Save_Str2(".Mreturn.",
					      ST_name(ST_st_idx(st))))
		     : ".Mreturn.");
#ifdef KEY
	    WFE_add_pragma_to_enclosing_regions (WN_PRAGMA_LOCAL, ret_st);
#endif

	    if (!return_in_mem) {
	      wn1 = WN_Stid (ret_mtype, 0, ret_st, ty_idx, wn1);
	      WN_INSERT_BlockLast (wn0, wn1);
	    }

	    // ritual for determining the right mtypes to be used in the LDID
            UINT xtra_BE_ofst = 0;  // only needed for big-endian target
            desc_ty_idx = component_ty_idx;
            if (desc_ty_idx == 0)
              desc_ty_idx = Get_TY (TREE_TYPE(exp));
              
            if (! MTYPE_is_integral(TY_mtype(desc_ty_idx)))
              ty_idx = desc_ty_idx;
            else { 
              ty_idx = nop_ty_idx;
              if (ty_idx == 0)
                ty_idx = desc_ty_idx;
            }

	    if (! is_bit_field) {
              if (TY_size(desc_ty_idx) > TY_size(ty_idx)) {
                if (Target_Byte_Sex == BIG_ENDIAN)
                  xtra_BE_ofst = TY_size(desc_ty_idx) - TY_size(ty_idx);
                desc_ty_idx = ty_idx;
	      }
            }
	    else {
	      if (TY_size(desc_ty_idx) > TY_size(ty_idx))
		ty_idx = desc_ty_idx;
	    }

	    TYPE_ID rtype = Widen_Mtype(TY_mtype(ty_idx));
	    TYPE_ID desc = TY_mtype(desc_ty_idx);
	    if (MTYPE_is_integral(desc)) {
	      if (MTYPE_signed(rtype) != MTYPE_signed(desc)) {
		if (MTYPE_size_min(rtype) > MTYPE_size_min(desc) ||
		    is_bit_field)
		  rtype = Mtype_TransferSign(desc, rtype);
		else desc = Mtype_TransferSign(rtype, desc);
	      }
	    }

            Is_True(! is_bit_field || field_id <= MAX_FIELD_ID,
                    ("WFE_Expand_Expr: field id for bit-field exceeds limit"));
 
	    wn1 = WN_CreateLdid(OPR_LDID, rtype,
			        is_bit_field ? MTYPE_BS : desc,
			        ST_ofst(ret_st)+component_offset+xtra_BE_ofst, 
				ret_st,
				(field_id != 0 && component_ty_idx != 0) ?
				Get_TY (TREE_TYPE(exp)) : ty_idx,
				field_id);
	  }

          wn  = WN_CreateComma (OPR_COMMA, WN_rtype (wn1), MTYPE_V,
                                wn0, wn1);
        }
      }
      break;

    case COMPOUND_EXPR:
      {
#ifdef KEY
	// If we are supposed to put the result in target_wn, then give the
	// result VAR_DECL the same ST as target_wn.
	tree opnd1 = TREE_OPERAND(exp, 1);
	if (TREE_CODE(opnd1) == VAR_DECL &&
	    target_wn != NULL) {
	  ST *st = DECL_ST(opnd1);
	  if (st == NULL) {
	    // Don't think we would see a LDID target_wn.
	    FmtAssert(WN_operator(target_wn) == OPR_LDA,
		      ("WFE_Expand_Expr: target_wn not LDA"));
	    set_DECL_ST(opnd1, WN_st(target_wn));
	  } else {
	    FmtAssert(st == WN_st(target_wn),
	       ("WFE_Expand_Expr: conflicting ST in COMPOUND_EXPR's VAR_DECL"));
	  }
	}
#endif
        wn = WFE_Expand_Expr (TREE_OPERAND (exp, 0), FALSE);
        if (wn && WN_has_side_effects(wn)) {
          wn = WN_CreateEval (wn);
          WFE_Stmt_Append (wn, Get_Srcpos ());
        }
        wn = WFE_Expand_Expr (TREE_OPERAND (exp, 1), need_result);
      }
      break;

    case NON_LVALUE_EXPR:
      {
        wn = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
      }
      break;

    case SAVE_EXPR:
      {
	DevWarn ("Encountered SAVE_EXPR at line %d", lineno);
        wn = WFE_Save_Expr (exp, need_result, nop_ty_idx,
			    component_ty_idx, component_offset, field_id);
      }
      break;

    case ERROR_MARK:
      // This is not necessarily an error:  return a constant 0.
      wn = WN_Intconst(MTYPE_I4, 0);
      break;

    case LOOP_EXPR:
      {
        DevWarn ("Encountered LOOP_EXPR at line %d\n", lineno);
        LABEL_IDX saved_loop_expr_exit_label = loop_expr_exit_label;
        loop_expr_exit_label = 0;
        tree body = LOOP_EXPR_BODY(exp);
        WN *loop_test = WN_Intconst (Boolean_type, 1);
        WN *loop_body = WN_CreateBlock ();
        if (body) {
          WFE_Stmt_Push (loop_body, wfe_stmk_while_body, Get_Srcpos());
          wn = WFE_Expand_Expr (body);
          WFE_Stmt_Pop (wfe_stmk_while_body);
        }
        WN *loop_stmt = WN_CreateWhileDo (loop_test, loop_body);
        WFE_Stmt_Append (loop_stmt, Get_Srcpos());
        if (loop_expr_exit_label)
          WFE_Stmt_Append (WN_CreateLabel ((ST_IDX) 0, loop_expr_exit_label, 0, NULL),
                           Get_Srcpos ());
        loop_expr_exit_label = saved_loop_expr_exit_label;
      }
      break;

    case EXIT_EXPR:
      {
        DevWarn ("Encountered EXIT_EXPR at line %d\n", lineno);
	WN *test = WFE_Expand_Expr (TREE_OPERAND(exp, 0));
        New_LABEL (CURRENT_SYMTAB, loop_expr_exit_label);
        WN *stmt = WN_CreateTruebr (loop_expr_exit_label, test);
        WFE_Stmt_Append (stmt, Get_Srcpos ());
      }
      break;

    case VA_ARG_EXPR:
      {
#ifdef TARG_X8664
	if( TARGET_64BIT ){
	  tree kid0 = TREE_OPERAND(exp, 0);
	  WN *ap_wn;
	  ap_wn = WFE_Expand_Expr(kid0);
	  if (WN_rtype(ap_wn) == MTYPE_M) {
	    if (OPCODE_is_leaf(WN_opcode(ap_wn)))
	      ap_wn = WN_Lda(Pointer_Mtype, 0, WN_st(ap_wn), 0);
	    else {
	      Is_True(OPCODE_is_load(WN_opcode(ap_wn)),
		      ("WFE_Expand_Expr: unexpected VA_ARG_EXPR argument"));
	      ap_wn = WN_kid0(ap_wn);
	    }
	  }
	  TY_IDX ty_idx = Get_TY (TREE_TYPE(exp));
	  TYPE_ID mtype = Fix_TY_mtype(ty_idx);

	  if (mtype != MTYPE_FQ && mtype != MTYPE_M && !MTYPE_is_complex(mtype)) {
	    wn = WFE_x8664_va_arg(ap_wn, MTYPE_float(mtype), ty_idx, FALSE);
	    wn = WN_CreateIload(OPR_ILOAD, Widen_Mtype (mtype), mtype, 0,
				ty_idx, Make_Pointer_Type(ty_idx), wn);
	  }
	  else if (mtype == MTYPE_C4) {
	    wn = WFE_x8664_va_arg(ap_wn, MTYPE_float(mtype), ty_idx, FALSE);
	    wn = WN_CreateIload(OPR_ILOAD, MTYPE_M, MTYPE_M, 0, ty_idx,
				Make_Pointer_Type(ty_idx), wn);
	  }
	  else {
	    enum X86_64_PARM_CLASS classes[MAX_CLASSES];
	    INT n = Classify_Aggregate(ty_idx, classes);
	    if (n == 0) { /* can only pass in memory */
	      /* increment overflow_arg_area pointer by 8 */
	      INT delta = ((TY_size(ty_idx) + 7) / 8) * 8;
	      wn0 = WN_Iload(Pointer_Mtype, 8, MTYPE_To_TY(Pointer_Mtype), 
			     WN_CopyNode(ap_wn));
	      wn1 = WN_Intconst(MTYPE_U8, delta);
	      wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
	      wn = WN_Istore(Pointer_Mtype, 8,
			     Make_Pointer_Type(MTYPE_To_TY(Pointer_Mtype)),
			     WN_CopyNode(ap_wn), wn);
	      WFE_Stmt_Append (wn, Get_Srcpos ());
	      /* load pointer to overflow_arg_area */
	      wn = WN_Iload(Pointer_Mtype, 8, MTYPE_To_TY(Pointer_Mtype),
			    WN_CopyNode(ap_wn));
	      /* adjust with the amount just incremented */
	      wn1 = WN_Intconst(MTYPE_I8, -delta);
	      wn = WN_Binary(OPR_ADD, Pointer_Mtype, wn0, wn1);
	    }
	    else if (n == 1) {
	      wn = WFE_x8664_va_arg(ap_wn, classes[0] == X86_64_SSE_CLASS,
				    ty_idx, FALSE);
	    }
	    else if (n > 1) { /* must be == 2 */
	      if (classes[0] == classes[1]) {
		if (classes[0] == X86_64_INTEGER_CLASS)
		  wn = WFE_x8664_va_arg(ap_wn, classes[0] == X86_64_SSE_CLASS, 
					ty_idx, TRUE/*twice*/);
		else wn = WFE_x8664_va_arg_2_float(ap_wn, ty_idx);
	      }
	      else {
		wn = WFE_x8664_va_arg_2_mixed(ap_wn, 
					      classes[0] == X86_64_SSE_CLASS,
					      classes[1] == X86_64_SSE_CLASS, ty_idx);
	      }
	    }
	    
	    if( mtype == MTYPE_FQ )
	      wn = WN_CreateIload(OPR_ILOAD, Widen_Mtype (mtype), mtype, 0,
				  ty_idx, Make_Pointer_Type(ty_idx), wn);
	    else
	      wn = WN_CreateIload(OPR_ILOAD, MTYPE_M, MTYPE_M, 0, ty_idx, 
				  Make_Pointer_Type(ty_idx), wn);
	  }

	  break;
	} // end of TARGET_64BIT
#endif
        // code swiped from builtins.c (std_expand_builtin_va_arg)
	INT64 align;
	INT64 rounded_size;
	tree type = TREE_TYPE (exp);
	TY_IDX ty_idx = Get_TY (type);
	TYPE_ID mtype = TY_mtype (ty_idx);

        /* Compute the rounded size of the type.  */
	align = PARM_BOUNDARY / BITS_PER_UNIT;
	rounded_size = (((int_size_in_bytes (type) + align - 1) / align) * align);

	/* Get AP.  */
	WN *ap = WFE_Expand_Expr (TREE_OPERAND (exp, 0));
#ifdef KEY
	if (WN_operator(ap) == OPR_ILOAD) {
	  STR_IDX str = Save_Str("__ap");
	  ST *st = New_ST(CURRENT_SYMTAB);
	  ST_Init(st, str, CLASS_VAR, SCLASS_AUTO, EXPORT_LOCAL,
		  MTYPE_To_TY(Pointer_Mtype));
	  Set_ST_is_temp_var(st);
	  WN *wn = WN_Stid(Pointer_Mtype, 0, st, ST_type(st), ap);
	  WFE_Stmt_Append (wn, Get_Srcpos ());

	  ap = WN_Ldid(Pointer_Mtype, 0, st, ST_type(st));
	}
	WN *ap_load = WN_COPY_Tree(ap);
	TY_IDX ap_ty_idx = Get_TY (TREE_TYPE (TREE_OPERAND (exp, 0)));
#endif
	st = WN_st (ap);

#ifndef KEY
	if (Target_Byte_Sex == BIG_ENDIAN) {
	  Fail_FmtAssertion ("VA_ARG_EXPR not implemented for BIG_ENDIAN");
	  INT64 adj;
	  adj = TREE_INT_CST_LOW (TYPE_SIZE (type)) / BITS_PER_UNIT;
	  if (rounded_size > align)
	    adj = rounded_size;

	  wn = WN_Binary (OPR_ADD, Pointer_Mtype, wn,
			  WN_Intconst (Pointer_Mtype, rounded_size - adj));
	}

	/* Compute new value for AP.  */
	wn = WN_Binary (OPR_ADD, Pointer_Mtype, WN_COPY_Tree (ap_load),
			WN_Intconst (Pointer_Mtype, rounded_size));
#else
	if (Target_Byte_Sex == BIG_ENDIAN) {
	  INT64 adj;
	  adj = TREE_INT_CST_LOW (TYPE_SIZE (type)) / BITS_PER_UNIT;
	  if (rounded_size > align)
	    adj = rounded_size;
	  wn = WN_Binary (OPR_ADD, Pointer_Mtype, WN_COPY_Tree (ap_load),
			  WN_Intconst (Pointer_Mtype, 3));
	  wn = WN_Binary (OPR_BAND, Pointer_Mtype, wn,
			  WN_Intconst (Pointer_Mtype, -8));
	  wn = WN_Binary (OPR_ADD, Pointer_Mtype, wn,
			  WN_Intconst (Pointer_Mtype, rounded_size));
	} else

	/* Compute new value for AP.  */
	wn = WN_Binary (OPR_ADD, Pointer_Mtype, WN_COPY_Tree (ap_load),
			WN_Intconst (Pointer_Mtype, rounded_size));
#endif
	wn = WN_Stid (Pointer_Mtype, 0, st, ST_type (st), wn);
        WFE_Stmt_Append (wn, Get_Srcpos ());
        wn = WN_CreateIload (OPR_ILOAD, Widen_Mtype (mtype), mtype, -rounded_size,
			     ty_idx, Make_Pointer_Type (ty_idx, FALSE),
			     WN_Ldid (Pointer_Mtype, 0, st, ST_type (st)));
#ifdef KEY
	if (Target_Byte_Sex != Host_Byte_Sex)
          wn = WN_CreateIload (OPR_ILOAD, Widen_Mtype (mtype), mtype, 
			  ((MTYPE_size_min(mtype)==32)?4:0)-rounded_size, 
			  ap_ty_idx, 
			  Make_Pointer_Type (ap_ty_idx, FALSE),
			  ap_load);
#endif
      }
      break;

#ifdef KEY
    case EXPR_WITH_FILE_LOCATION:
      wn = WFE_Expand_Expr (EXPR_WFL_NODE (exp), need_result, nop_ty_idx,
			    component_ty_idx, component_offset, field_id,
			    is_bit_field, is_aggr_init_via_ctor,
			    target_wn);
      break;

    case EXC_PTR_EXPR:
    {
      if (key_exceptions)
      {
	ST_IDX exc_ptr_st = TCON_uval (INITV_tc_val (INITO_val (Get_Current_PU().unused)));
      	wn = WN_Ldid (Pointer_Mtype, 0, exc_ptr_st, Get_TY(TREE_TYPE(exp)));
      }
      else
      {
      	ST * preg_st = MTYPE_To_PREG(Pointer_Mtype);
      	wn = WN_Ldid (Pointer_Mtype, 0, preg_st, Get_TY(TREE_TYPE(exp)));
      }
    }
      break;

    case CLEANUP_STMT:
      DevWarn ("CLEANUP_STMT not implemented: at line %d\n", lineno);
      // TODO:  Return a dummy constant 0 for now.
      wn = WN_Intconst(MTYPE_I4, 0);
      break;

    case MUST_NOT_THROW_EXPR:
      // Call terminate if this expr throws
      wn = WFE_Expand_Expr (TREE_OPERAND (exp,0));
      LABEL_IDX terminate_label, around_label;

      New_LABEL (CURRENT_SYMTAB, terminate_label);
      New_LABEL (CURRENT_SYMTAB, around_label);
      WFE_Stmt_Append (WN_CreateGoto (around_label), Get_Srcpos());

      WFE_Stmt_Append (WN_CreateLabel ((ST_IDX) 0, terminate_label, 0, NULL),
      			Get_Srcpos());
      Call_Terminate ();
      WFE_Stmt_Append (WN_CreateLabel ((ST_IDX) 0, around_label, 0, NULL),
      			Get_Srcpos());
      break;
#endif /* KEY */

    default:
      {
        Fail_FmtAssertion ("WFE_Expand_Expr: not implemented %s",
                           Operator_From_Tree [code].name);
      }
      break;
    }

#ifdef WFE_DEBUG
  if (wn)
    fdump_tree (stderr, wn);

  fprintf (stderr, // "{("
           ")} WFE_Expand_Expr: %s\n", Operator_From_Tree [code].name);
#endif /* WFE_DEBUG */

  if (need_result)
    FmtAssert (wn != 0 || code == CALL_EXPR || code == BIND_EXPR ||
               code == COMPOUND_STMT ||
               code == STMT_EXPR     ||
               code == EXPR_STMT     ||	// KEY
               code == COMPOUND_EXPR ||
               code == INDIRECT_REF  ||
               code == COMPONENT_REF ||
               code == LOOP_EXPR     ||
               code == NOP_EXPR      ||
               code == THROW_EXPR    ||
	       code == MUST_NOT_THROW_EXPR ||
	       code == EXPR_WITH_FILE_LOCATION	||	// KEY
               ((code == COND_EXPR) && (TY_mtype (ty_idx) == MTYPE_V)),
	       ("WFE_Expand_Expr: NULL WHIRL tree for %s",
		Operator_From_Tree [code].name));

  return wn;
}


#ifdef KEY
// Like WFE_One_Stmt but don't reuse label indexes already allocated so far.
// This is necessary because the cleanup represented by the EXP tree can be
// expanded multiple times, and each expansion needs its own set of labels.
void
WFE_One_Stmt_Cleanup (tree exp)
{
  LABEL_IDX idx = WFE_unusable_label_idx;
  INT32 save_expr_level = wfe_save_expr_level;

  // Don't reuse label indexes that are allocated up to this point.
  WFE_unusable_label_idx = WFE_last_label_idx;

  // Make the saved expr's, if any, unique to this cleanup.
  wfe_save_expr_level = ++wfe_last_save_expr_level;
  
  WFE_One_Stmt(exp);
  WFE_unusable_label_idx = idx;
  wfe_save_expr_level = save_expr_level;
}
#endif


void WFE_One_Stmt (tree exp, WN* target_wn)
{
  WN *wn;
#ifndef KEY
  wfe_save_expr_stack_last = -1; // to minimize searches
#endif
  wn = WFE_Expand_Expr_With_Sequence_Point (exp, MTYPE_V, target_wn);
  if (wn) {
    for (;;) {
      if (WN_operator (wn) == OPR_COMMA) {
	WN *crwn = wn;
	if (WN_operator (WN_kid1 (wn)) == OPR_LDID                 &&
	    WN_st (WN_kid1 (wn)) == Return_Val_Preg                &&
	    (WN_operator (WN_last (WN_kid0 (wn))) == OPR_CALL   ||
	     WN_operator (WN_last (WN_kid0 (wn))) == OPR_ICALL)) {
	  WN_set_rtype (WN_last (WN_kid0 (wn)), MTYPE_V);
	  WFE_Stmt_Append (WN_kid0 (wn), Get_Srcpos ());
	  WN_Delete (crwn);
	  break;
	}
	else {
	  WFE_Stmt_Append (WN_kid0 (wn), Get_Srcpos ());
	  wn = WN_kid1 (wn);
	  WN_Delete (crwn);
	}
      }
      else {
	if (WN_has_side_effects (wn)) {
	  wn = WN_CreateEval (wn);
	  WFE_Stmt_Append (wn, Get_Srcpos ());
	}
	break;
      }
    }
  }
}

void WFE_Null_Return (void)
{
  WN *wn = WN_CreateReturn ();
  WFE_Stmt_Append (wn, Get_Srcpos());
}

UINT64
Get_Integer_Value (tree exp)
{
	FmtAssert (TREE_CODE(exp) == INTEGER_CST, 
		("Get_Integer_Value unexpected tree"));
#ifdef _LP64
	return TREE_INT_CST_LOW (exp);
#else
	UINT64 h = TREE_INT_CST_HIGH (exp);
	UINT64 l = TREE_INT_CST_LOW (exp);
#ifndef KEY
	l = l << 32 >> 32;	// zero-out high 32 bits
	h = h << 32;
	return (h | l);
#else
	// In the new gcc-3.2.2 both TREE_INT_CST_HIGH and
	// TREE_INT_CST_LOW are 64-bits wide.
	return (l);
#endif /* KEY */
#endif /* _LP64 */
}

void
WFE_Expr_Init (void)
{
  INT i;
  for (i = 0; i < LAST_CPLUS_TREE_CODE; i++)
    FmtAssert (Operator_From_Tree [i].tree_code == i,
               ("Operator_From_Tree[%d] incorrect, value = %d (last is %d)",
                i, Operator_From_Tree [i].tree_code, LAST_CPLUS_TREE_CODE));
}

char *
WFE_Tree_Node_Name (tree op)
{
  return Operator_From_Tree [TREE_CODE (op)].name;
}

#ifdef KEY
// g++ uses a record to hold a ptr-to-member-function.  Return TRUE iff EXP is
// a CALL_EXPR that returns a ptr-to-member-function and the ABI requires that
// such a record be returned in memory.
//
// Invoke WFE_Expand_Ptr_To_Member_Func_Call_Expr to expand such calls.  The
// routine creates a temp record for the ptr-to-member-function and invokes
// WFE_Expand_Expr to expand the return value there.
static bool
WFE_Call_Returns_Ptr_To_Member_Func (tree exp)
{
  TY_IDX exp_ty_idx = Get_TY(TREE_TYPE(exp));
  if (TREE_CODE(exp) == CALL_EXPR &&
      TYPE_PTRMEMFUNC_P(TREE_TYPE(exp)) &&
      TY_return_in_mem(exp_ty_idx)) {
    return TRUE;
  }
  return FALSE;
}

// See comment for WFE_Call_Returns_Ptr_To_Member_Func.
static WN*
WFE_Expand_Ptr_To_Member_Func_Call_Expr (tree exp, TY_IDX nop_ty_idx,
					 TYPE_ID rtype, TYPE_ID desc,
					 WN_OFFSET offset, UINT field_id)
{
  TY_IDX exp_ty_idx = Get_TY(TREE_TYPE(exp));
  WN *wn;
  ST *st = New_ST (CURRENT_SYMTAB);

  ST_Init(st, Save_Str("__ptr_to_mem_func"), CLASS_VAR, SCLASS_AUTO,
	  EXPORT_LOCAL, exp_ty_idx);
  WN *target_wn = WN_Lda(Pointer_Mtype, ST_ofst(st), st);
  WFE_Expand_Expr(exp, TRUE, nop_ty_idx, exp_ty_idx, 0, 0, FALSE, FALSE,
		  target_wn);
  wn = WN_CreateLdid(OPR_LDID, rtype, desc, ST_ofst(st) + offset,
		     st, exp_ty_idx, field_id);
  return wn;
}
#endif
