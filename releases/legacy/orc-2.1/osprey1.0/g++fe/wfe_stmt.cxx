#include "defs.h"
#include "glob.h"
#include "config.h"
#include "wn.h"
#include "wn_util.h"

#include "gnu_config.h"
#include "gnu/system.h"

#include "srcpos.h"
#include "gnu/machmode.h"
extern "C" {
#include "gnu/system.h"
#include "gnu/tree.h"
#include "cp-tree.h"
#include "gnu/output.h"         // For decode_reg_name
}
#include "gnu/flags.h"
#undef TARGET_PENTIUM  // hack around macro definition in gnu
#include "insn-config.h"	// MAX_RECOG_OPERANDS
#include "wfe_misc.h"
#include "wfe_dst.h"
#include "ir_reader.h"
#include "wfe_expr.h"
#include "wfe_stmt.h"
#include "wfe_decl.h"
#include "tree_symtab.h"
#include "targ_sim.h"

extern "C" void error (const char *, ...);

// #define WFE_DEBUG 

char *WFE_Tree_Node_Name (tree op);

#define ENLARGE(x) (x + (x >> 1))

static BOOL  *if_else_info_stack;
static INT32  if_else_info_i;
static INT32  if_else_info_max;

typedef struct case_info_t {
  INT64     case_lower_bound_value;
  INT64     case_upper_bound_value;
  LABEL_IDX case_label_idx;
} CASE_INFO;

static CASE_INFO   *case_info_stack;
static INT32        case_info_i;
static INT32        case_info_max;


typedef struct switch_info_t {
  WN        *index;
  INT32      start_case_index;
  LABEL_IDX  default_label_idx;
} SWITCH_INFO;

static SWITCH_INFO *switch_info_stack;
static INT32        switch_info_i;
static INT32        switch_info_max;

typedef struct break_continue_info_t {
  int       tree_code;
  LABEL_IDX break_label_idx;
  LABEL_IDX continue_label_idx;
  tree	    scope;
} BREAK_CONTINUE_INFO;

static BREAK_CONTINUE_INFO *break_continue_info_stack;
static INT32		    break_continue_info_i;
static INT32		    break_continue_info_max;

typedef struct label_info_t {
  LABEL_IDX         label_idx;
  unsigned char     symtab_idx;
  unsigned char     defined;
} LABEL_INFO;

static LABEL_INFO  *undefined_labels_stack;
static INT32        undefined_labels_i;
static INT32        undefined_labels_max;

typedef struct scope_cleanup_info_t {
  tree		    stmt;
  LABEL_IDX	    label_idx;
} SCOPE_CLEANUP_INFO;

static SCOPE_CLEANUP_INFO *scope_cleanup_stack;
static INT32	    	   scope_cleanup_i;
static INT32	    	   scope_cleanup_max;

static tree	   *scope_stack;
static INT32	    scope_i;
static INT32	    scope_max;

typedef struct temp_cleanup_info_t {
  tree		    expr;
  LABEL_IDX	    label_idx;
} TEMP_CLEANUP_INFO;

static TEMP_CLEANUP_INFO *temp_cleanup_stack;
static INT32	    	  temp_cleanup_i;
static INT32	    	  temp_cleanup_max;

typedef struct handler_info_t {
  tree		    handler;
  LABEL_IDX	    label_idx;
} HANDLER_INFO;

static HANDLER_INFO *handler_info_stack;
static INT32	     handler_info_i;
static INT32	     handler_info_max;

typedef struct eh_cleanup_info {
  tree		     cleanup;
  LABEL_IDX	     label_idx;
  LABEL_IDX	     goto_idx;
} EH_CLEANUP_INFO;

static EH_CLEANUP_INFO *eh_cleanup_stack;
static INT32		eh_cleanup_i;
static INT32		eh_cleanup_max;

static INT32	    scope_number;

static TY_IDX
Type_For_Function_Returning_Void (void)
{
  static TY_IDX result = 0;
  if (result == 0) {
    TY &ty = New_TY (result);
    TY_Init (ty, 0, KIND_FUNCTION, MTYPE_UNKNOWN, NULL);
    TYLIST_IDX tylist_idx;
    Set_TYLIST_type (New_TYLIST (tylist_idx), Void_Type);
    Set_TY_tylist (ty, tylist_idx);
  }
  
  return result;
}

static ST *
Function_ST_For_String (const char * s)
{
  ST * st = New_ST (GLOBAL_SYMTAB);
  PU_IDX pu_idx;
  PU & pu = New_PU (pu_idx);
  PU_Init (pu, Type_For_Function_Returning_Void (), GLOBAL_SYMTAB + 1);
  ST_Init (st, Save_Str(s),
           CLASS_FUNC, SCLASS_EXTERN, EXPORT_PREEMPTIBLE, TY_IDX(pu_idx));
  return st;
}
    
static void
Push_Scope_Cleanup (tree t)
{
  // Don't push a cleanup without a scope
  if (scope_cleanup_i == -1 && TREE_CODE(t) == CLEANUP_STMT)
    return;

  if (++scope_cleanup_i == scope_cleanup_max) {
    scope_cleanup_max = ENLARGE (scope_cleanup_max);
    scope_cleanup_stack =
      (SCOPE_CLEANUP_INFO *) realloc (scope_cleanup_stack,
	 	        scope_cleanup_max * sizeof (SCOPE_CLEANUP_INFO));
  }

  scope_cleanup_stack [scope_cleanup_i].stmt = t;
  if (TREE_CODE(t) == CLEANUP_STMT)
    New_LABEL (CURRENT_SYMTAB, 
	       scope_cleanup_stack [scope_cleanup_i].label_idx);
  else
    scope_cleanup_stack [scope_cleanup_i].label_idx = 0;
}

static void
Push_Handler_Info (tree handler, LABEL_IDX label_idx)
{
   if (++handler_info_i == handler_info_max) {
    handler_info_max = ENLARGE (handler_info_max);
    handler_info_stack =
      (HANDLER_INFO *) realloc (handler_info_stack,
                        handler_info_max * sizeof (HANDLER_INFO));
  }

  handler_info_stack [handler_info_i].handler   = handler;
  handler_info_stack [handler_info_i].label_idx = label_idx;
}

static void
Push_EH_Cleanup (tree cleanup, LABEL_IDX label_idx, LABEL_IDX goto_idx)
{
  if (++eh_cleanup_i == eh_cleanup_max) {
    eh_cleanup_max = ENLARGE (eh_cleanup_max);
    eh_cleanup_stack =
      (EH_CLEANUP_INFO *) realloc (eh_cleanup_stack,
			    eh_cleanup_max * sizeof (EH_CLEANUP_INFO));
  }

  eh_cleanup_stack[eh_cleanup_i].cleanup   = cleanup;
  eh_cleanup_stack[eh_cleanup_i].label_idx = label_idx;
  eh_cleanup_stack[eh_cleanup_i].goto_idx  = goto_idx;
}

static void WFE_Expand_Handlers_Or_Cleanup (tree, LABEL_IDX);

void
Do_Handlers (void)
{
  while (handler_info_i != -1) {
    LABEL_IDX start_handlers;
    New_LABEL (CURRENT_SYMTAB, start_handlers);
    Set_LABEL_addr_saved (start_handlers);
    WFE_Stmt_Append (WN_CreateLabel ((ST_IDX) 0, start_handlers, 0, NULL),
		     Get_Srcpos());

    tree handler = handler_info_stack[handler_info_i].handler;
    --handler_info_i;
    WFE_Expand_Handlers_Or_Cleanup
      (handler_info_stack [handler_info_i+1].handler,
       handler_info_stack[handler_info_i+1].label_idx);
  }
}

static void Call_Rethrow (void);
static void Call_Terminate (void);

void
Do_EH_Cleanups (void)
{
  for (int i = 0; i <= eh_cleanup_i; ++i) {
    WFE_Stmt_Append (
     WN_CreateLabel ((ST_IDX) 0, eh_cleanup_stack [i].label_idx,
		     0, NULL),
     Get_Srcpos());
    WFE_One_Stmt (CLEANUP_EXPR(eh_cleanup_stack [i].cleanup));
    LABEL_IDX goto_idx = eh_cleanup_stack [i].goto_idx;
    if (goto_idx)
      WFE_Stmt_Append (
        WN_CreateGoto ((ST_IDX) 0, goto_idx), Get_Srcpos());
    else
      Call_Rethrow();
  }
  Call_Terminate();
  eh_cleanup_i = -1;
}

static void
Pop_Scope_And_Do_Cleanups (void)
{
  Is_True(scope_cleanup_i != -1,
	  ("Pop_Scope_And_Do_Cleanups: scope_cleanup-stack is empty"));

  while (true) {
    tree t = scope_cleanup_stack [scope_cleanup_i].stmt;
    if (TREE_CODE(t) != CLEANUP_STMT) {
      if (TREE_CODE(t) == SCOPE_STMT)
 	--scope_cleanup_i;
      break;
    }
    Is_True(scope_cleanup_i != -1,
	    ("Pop_Scope_And_Do_Cleanups: no scope_stmt on stack"));
    INT j = scope_cleanup_i - 1;
    LABEL_IDX goto_idx = 0;
    while (j != -1 && TREE_CODE(scope_cleanup_stack [j].stmt) != CLEANUP_STMT) {
      if (TREE_CODE(scope_cleanup_stack [j].stmt) == TRY_BLOCK)
	break;
      --j;
    }
    if (j != -1 && TREE_CODE(scope_cleanup_stack [j].stmt) == CLEANUP_STMT)
      goto_idx = scope_cleanup_stack [j].label_idx;
    Push_EH_Cleanup (t,
		     scope_cleanup_stack [scope_cleanup_i]  .label_idx,
		     goto_idx);
    --scope_cleanup_i;
    WFE_One_Stmt (CLEANUP_EXPR(scope_cleanup_stack [scope_cleanup_i+1].stmt));
  }
}       

static void
Push_Scope (tree t)
{
  if (++scope_i == scope_max) {
    scope_max = ENLARGE (scope_max);
    scope_stack =
      (tree *) realloc (scope_stack,
	 	        scope_max * sizeof (tree));
  }
  scope_stack[scope_i] = t;
}


void
Push_Temp_Cleanup (tree t, bool is_cleanup)
{
  if (++temp_cleanup_i == temp_cleanup_max) {
    temp_cleanup_max = ENLARGE (temp_cleanup_max);
    temp_cleanup_stack =
      (TEMP_CLEANUP_INFO *) realloc (temp_cleanup_stack,
				     temp_cleanup_max * 
                                       sizeof (TEMP_CLEANUP_INFO));
			
  }

  temp_cleanup_stack [temp_cleanup_i].expr = t;
  if (is_cleanup)
    New_LABEL (CURRENT_SYMTAB, temp_cleanup_stack [temp_cleanup_i].label_idx);
  else
    temp_cleanup_stack [temp_cleanup_i].label_idx = 0;
}


void
Do_Temp_Cleanups (tree t)
{
  Is_True(temp_cleanup_i != -1, ("Do_Temp_Cleanups: stack empty"));
  while (temp_cleanup_stack[temp_cleanup_i].expr != t) {
    LABEL_IDX goto_idx = 0;
    INT j = temp_cleanup_i - 1;
    tree cleanup = temp_cleanup_stack [temp_cleanup_i].expr;
    while (j != -1 && temp_cleanup_stack [j].label_idx == 0)
      --j;
    if (j != -1)
      goto_idx = temp_cleanup_stack [j].label_idx;
    Push_EH_Cleanup (cleanup,
		     temp_cleanup_stack [temp_cleanup_i].label_idx,
		     goto_idx);
    WFE_One_Stmt (cleanup);
    --temp_cleanup_i;
  }
  --temp_cleanup_i;
}

static void
WFE_Record_Loop_Switch (int tree_code)
{
  INT32 i;
  Is_True(tree_code == DO_STMT    ||
	  tree_code == FOR_STMT   ||
 	  tree_code == WHILE_STMT ||
          tree_code == SWITCH_STMT,
	  ("WFE_Record_Loop_Switch: unexpected tree_code"));

  if (++break_continue_info_i == break_continue_info_max) {
    break_continue_info_max = ENLARGE (break_continue_info_max);
    break_continue_info_stack =
      (BREAK_CONTINUE_INFO *) realloc (break_continue_info_stack,
				       break_continue_info_max *
					 sizeof (BREAK_CONTINUE_INFO));
  }

  break_continue_info_stack 
    [break_continue_info_i].tree_code          = tree_code;
  break_continue_info_stack 
    [break_continue_info_i].break_label_idx    = 0;
  break_continue_info_stack 
    [break_continue_info_i].continue_label_idx = 0;
  if (scope_cleanup_i == -1)
    break_continue_info_stack
      [break_continue_info_i].scope = NULL_TREE;
  else {
    for (i = scope_cleanup_i;
	 TREE_CODE(scope_cleanup_stack[i].stmt) == CLEANUP_STMT;
	 --i);
    Is_True (i != -1 && 
	     (TREE_CODE(scope_cleanup_stack[i].stmt) == SCOPE_STMT ||
	      TREE_CODE(scope_cleanup_stack[i].stmt) == TRY_BLOCK),
	    ("WFE_Record_Loop_Switch: no scope_stmt on stack"));
    break_continue_info_stack
      [break_continue_info_i].scope = scope_cleanup_stack[i].stmt;
  }
} /* WFE_Record_Loop_Switch */

static void
WFE_Expand_Case (tree low, tree high)
{
  WN        *wn;
  WN        *lower_bound;
  WN        *upper_bound;
  LABEL_IDX  case_label_idx;

  if (high != NULL_TREE)
    DevWarn("encountered case range");

  if (low == NULL_TREE) {
    if (switch_info_stack [switch_info_i].default_label_idx != 0)
      error ("duplicate default label");
    else {
      New_LABEL (CURRENT_SYMTAB, case_label_idx);
      switch_info_stack [switch_info_i].default_label_idx = case_label_idx;
    }
  }

  else {
    if (TREE_CODE(low) == VAR_DECL)
      low = DECL_INITIAL(low);
    if (high != NULL_TREE && TREE_CODE(high) == VAR_DECL)
      high = DECL_INITIAL(high);
    lower_bound = WFE_Expand_Expr (low);
    upper_bound = (high == NULL_TREE) ? lower_bound
				      : WFE_Expand_Expr(high);
    if (++case_info_i == case_info_max) {
      case_info_max   = ENLARGE(case_info_max);
      case_info_stack = (CASE_INFO *) realloc (case_info_stack,
                                               case_info_max * sizeof (CASE_INFO));
    }

    case_info_stack 
      [case_info_i].case_lower_bound_value = 
        (low  == NULL_TREE) ? 0 : WN_const_val (lower_bound);
    case_info_stack 
      [case_info_i].case_upper_bound_value = 
        (high == NULL_TREE) ? WN_const_val (lower_bound) 
			    : WN_const_val (upper_bound);
    for (int i = switch_info_stack [switch_info_i].start_case_index;
         i < case_info_i; ++i) 
      if (WN_const_val(lower_bound) == 
          case_info_stack [i].case_lower_bound_value)
  	error ("duplicate case");
    New_LABEL (CURRENT_SYMTAB, case_label_idx);
    case_info_stack [case_info_i].case_label_idx = case_label_idx;
  }

  wn = WN_CreateLabel ((ST_IDX) 0, case_label_idx, 0, NULL);
  WFE_Stmt_Append (wn, Get_Srcpos ());
} /* WFE_Expand_Case */

static void
WFE_Declare_Nonlocal_Label (tree label)
{
  WFE_Get_LABEL (label, FALSE);
} /* WFE_Expand_Label */


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
  // "m" constraints for IA64, so those are the only ones on which we
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

LABEL_IDX
WFE_Get_LABEL (tree label, int def)
{
  LABEL_IDX label_idx =  DECL_LABEL_IDX(label);
  SYMTAB_IDX symtab_idx = DECL_SYMTAB_IDX(label);

  if (label_idx == 0) {
    New_LABEL (CURRENT_SYMTAB, label_idx);
    DECL_LABEL_IDX(label) = label_idx;
    DECL_SYMTAB_IDX(label) = CURRENT_SYMTAB;
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


void
WFE_Stmt_Init (void)
{
  if_else_info_max   = 32;
  if_else_info_i     = -1;
  if_else_info_stack = 
    (BOOL *) malloc (sizeof (BOOL) * if_else_info_max);

  case_info_max      = 32;
  case_info_i        = -1;
  case_info_stack    = 
    (CASE_INFO *) malloc (sizeof (CASE_INFO) * case_info_max);

  switch_info_max    = 32;
  switch_info_i      = -1;
  switch_info_stack  = 
    (SWITCH_INFO *) malloc (sizeof (SWITCH_INFO) * switch_info_max);

  break_continue_info_max   = 32;
  break_continue_info_i     = -1;
  break_continue_info_stack = 
    (BREAK_CONTINUE_INFO *) malloc (sizeof (BREAK_CONTINUE_INFO) *
                                    break_continue_info_max);

  undefined_labels_max   = 32;
  undefined_labels_i     = -1;
  undefined_labels_stack = 
    (LABEL_INFO *) malloc (sizeof (LABEL_INFO) * undefined_labels_max);

  scope_cleanup_max      = 32;
  scope_cleanup_i  	 = -1;
  scope_cleanup_stack    =
    (SCOPE_CLEANUP_INFO *) malloc (sizeof (SCOPE_CLEANUP_INFO) * 
				   scope_cleanup_max);

  scope_max    	         = 32;
  scope_i  	         = -1;
  scope_stack            =
    (tree *) malloc (sizeof (tree) * scope_max);

  temp_cleanup_max       = 32;
  temp_cleanup_i	 = -1;
  temp_cleanup_stack	 =
    (TEMP_CLEANUP_INFO *) malloc (sizeof (TEMP_CLEANUP_INFO) * 
				  temp_cleanup_max);

  handler_info_max	 = 32;
  handler_info_i	 = -1;
  handler_info_stack     =
    (HANDLER_INFO *) malloc (sizeof(HANDLER_INFO) * handler_info_max);

  eh_cleanup_max	 = 32;
  eh_cleanup_i		 = -1;
  eh_cleanup_stack	 =
    (EH_CLEANUP_INFO *) malloc (sizeof (EH_CLEANUP_INFO) * eh_cleanup_max);

  scope_number           = 0;
} /* WFE_Stmt_Init */

static void
Cleanup_To_Scope(tree scope)
{
  INT32 i = scope_cleanup_i;
  INT32 j = -1;
  Is_True(i != -1, ("Cleanup_To_Scope: scope_cleanup_stack empty"));
  while (scope_cleanup_stack [i].stmt != scope) {
    if (TREE_CODE(scope_cleanup_stack [i].stmt) == SCOPE_STMT)
      j = i;
    --i;
  }

  if (j != -1) {
    i = scope_cleanup_i;
    while (i != j) {
      if (TREE_CODE(scope_cleanup_stack [i].stmt) == CLEANUP_STMT)
        WFE_One_Stmt (CLEANUP_EXPR(scope_cleanup_stack [i].stmt));
    --i;
    }
  }
}
 
static void
WFE_Expand_Break (void)
{
  INT32     i  	      = break_continue_info_i;
  LABEL_IDX label_idx = break_continue_info_stack[i].break_label_idx;
  tree      scope     = break_continue_info_stack[i].scope;
  WN *      wn;

  if (label_idx == 0) {
    New_LABEL (CURRENT_SYMTAB, label_idx);
    break_continue_info_stack [i].break_label_idx = label_idx;
  }

  wn = WN_CreateGoto ((ST_IDX) NULL, label_idx);

  if (scope)
    Cleanup_To_Scope (scope);
   
  WFE_Stmt_Append (wn, Get_Srcpos());
}
/* WFE_Expand_Break */

static void
WFE_Expand_Continue (void)
{
  INT32     i = break_continue_info_i;
  LABEL_IDX label_idx;
  tree      scope = break_continue_info_stack [i].scope;
  WN *      wn;
  
  /* find the enclosing loop */
  while (break_continue_info_stack [i].tree_code == SWITCH_STMT) --i;
  label_idx = break_continue_info_stack [i].continue_label_idx;
  if (label_idx == 0) {
    New_LABEL (CURRENT_SYMTAB, label_idx);
    break_continue_info_stack [i].continue_label_idx = label_idx;
  }

  if (scope)
    Cleanup_To_Scope (scope);

  wn = WN_CreateGoto ((ST_IDX) NULL, label_idx);
  WFE_Stmt_Append (wn, Get_Srcpos());
} /* WFE_Expand_Continue */

static void
WFE_Expand_Loop (tree stmt)
{
  tree cond, body, incr = NULL_TREE, init = NULL_TREE;

  WN * loop_stmt;
  WN * loop_test;
  WN * loop_block;
  WN * loop_body;

  WFE_Record_Loop_Switch (TREE_CODE(stmt));

  switch (TREE_CODE(stmt)) {
    case WHILE_STMT:
      cond = WHILE_COND(stmt);
      body = WHILE_BODY(stmt);
      break;

    case DO_STMT:
      cond = DO_COND(stmt);
      body = DO_BODY(stmt);
      break;

    case FOR_STMT:
      incr = FOR_EXPR(stmt);
      cond = FOR_COND(stmt);
      body = FOR_BODY(stmt);
      for (init = FOR_INIT_STMT(stmt); init; init = TREE_CHAIN(init))
	WFE_Expand_Stmt(init);
      break;

    default:
      Is_True(FALSE, ("WFE_Expand_Loop: unexpected TREE_CODE"));
      break;
  }

  if (TREE_CODE(cond) == TREE_LIST &&
      TREE_VALUE(cond) == NULL) {
    // handle non terminating loops
    tree stmt;
    WN   *cond_block;
    cond_block = WN_CreateBlock ();
    WFE_Stmt_Push (cond_block, wfe_stmk_while_cond, Get_Srcpos());
    for (stmt = TREE_PURPOSE(cond); stmt; stmt = TREE_CHAIN(stmt))
      WFE_Expand_Stmt (stmt);
    WFE_Stmt_Pop (wfe_stmk_while_cond);
    loop_test = WN_Intconst (Boolean_type, 1);
    if (WN_first (cond_block)) {
      loop_test = WN_CreateComma (OPR_COMMA, Boolean_type, MTYPE_V,
                                  cond_block, loop_test);
    }
    else
      WN_Delete (cond_block);
  }

  else
    loop_test = WFE_Expand_Expr_With_Sequence_Point (cond, Boolean_type);   

  loop_body = WN_CreateBlock ();

  if (TREE_CODE(stmt) == WHILE_STMT ||
      TREE_CODE(stmt) == FOR_STMT)
    loop_stmt = WN_CreateWhileDo (loop_test, loop_body);
  else
    loop_stmt = WN_CreateDoWhile (loop_test, loop_body);

  WFE_Stmt_Append (loop_stmt, Get_Srcpos());

  if (body) {
    WFE_Stmt_Push (loop_body, wfe_stmk_while_body, Get_Srcpos());
    while (body) {
      WFE_Expand_Stmt (body);
      body = TREE_CHAIN(body);
    }

    if (break_continue_info_stack
	  [break_continue_info_i].continue_label_idx) {
      WFE_Stmt_Append (
	WN_CreateLabel ((ST_IDX) 0,
			break_continue_info_stack
			  [break_continue_info_i].continue_label_idx,
			0, NULL),
	Get_Srcpos());
    }
    if (incr)
      WFE_One_Stmt(incr);

    WFE_Stmt_Pop (wfe_stmk_while_body);
  }

  if (break_continue_info_stack [break_continue_info_i].break_label_idx) {
    WFE_Stmt_Append (
      WN_CreateLabel ((ST_IDX) 0,
		      break_continue_info_stack
			[break_continue_info_i].break_label_idx,
		      0, NULL),
      Get_Srcpos());
  }

  --break_continue_info_i;
} /* WFE_Expand_Loop */
  
static void
WFE_Expand_Goto (tree label)
{
  WN *wn;
  LABEL_IDX label_idx = WFE_Get_LABEL (label, FALSE);
  if ((CURRENT_SYMTAB > GLOBAL_SYMTAB + 1) &&
      (DECL_SYMTAB_IDX(label) < CURRENT_SYMTAB))
    wn = WN_CreateGotoOuterBlock (label_idx, DECL_SYMTAB_IDX(label));
  else {
    tree scope = LABEL_SCOPE(label);
    if (scope != NULL_TREE && scope_cleanup_i != -1) {
      INT32 scope_number = SCOPE_NUMBER(scope);
      INT32 i = scope_cleanup_i;
      INT32 j = -1;
      while (i != -1) {
	if (TREE_CODE(scope_cleanup_stack [i].stmt) == SCOPE_STMT)
	  if (SCOPE_NUMBER(scope_cleanup_stack [i].stmt) >= scope_number)
	    break;
	  j = i;
        --i;
      }
      if (j != -1) {
        i = scope_cleanup_i;
	while (i != j) {
	  if (TREE_CODE(scope_cleanup_stack[i].stmt) == CLEANUP_STMT)
	    WFE_One_Stmt (CLEANUP_EXPR(scope_cleanup_stack [i].stmt));
	--i;
        }
      }
    }

    wn = WN_CreateGoto ((ST_IDX) NULL, label_idx);
  }

  WFE_Stmt_Append (wn, Get_Srcpos());
} /* WFE_Expand_Goto */

static void
WFE_Expand_Computed_Goto (tree exp)
{
  DevWarn ("encountered indirect jump");
  WN *addr = WFE_Expand_Expr (exp);
  WN *wn   = WN_CreateAgoto (addr);
  WFE_Stmt_Append (wn, Get_Srcpos());
} /* WFE_Expand_Computed_Goto */

static void 
WFE_Expand_If (tree stmt)
{
  WN * if_stmt;
  WN * test;
  WN * then_block;
  WN * else_block;

  test = WFE_Expand_Expr_With_Sequence_Point (IF_COND(stmt),
					      Boolean_type);
  then_block = WN_CreateBlock ();
  else_block = WN_CreateBlock ();
  if_stmt    = WN_CreateIf (test, then_block, else_block);
  WFE_Stmt_Append (if_stmt, Get_Srcpos ());
  if (THEN_CLAUSE(stmt)) {
    WFE_Stmt_Push (then_block, wfe_stmk_if_then, Get_Srcpos ());
    for (tree t = THEN_CLAUSE(stmt); t; t = TREE_CHAIN(t))
      WFE_Expand_Stmt (t);
    WFE_Stmt_Pop (wfe_stmk_if_then);
  }
  if (ELSE_CLAUSE(stmt)) {
    WFE_Stmt_Push (else_block, wfe_stmk_if_else, Get_Srcpos());
    for (tree t = ELSE_CLAUSE(stmt); t; t = TREE_CHAIN(t))
      WFE_Expand_Stmt (t);
    WFE_Stmt_Pop (wfe_stmk_if_else);
  }
} /* WFE_Expand_If */

static void
WFE_Expand_Label (tree label)
{
  LABEL_IDX label_idx = WFE_Get_LABEL (label, TRUE);
  DECL_SYMTAB_IDX(label) = CURRENT_SYMTAB;
  if (!DECL_LABEL_DEFINED(label)) {
    WN *wn;
    DECL_LABEL_DEFINED(label) = TRUE;
    wn = WN_CreateLabel ((ST_IDX) 0, label_idx, 0, NULL);
    WFE_Stmt_Append (wn, Get_Srcpos ());
  }
} /* WFE_Expand_Label */

static void
WFE_Expand_Return (tree stmt, tree retval)
{
  WN *wn;

  if (retval == NULL_TREE) {
    Do_Temp_Cleanups (stmt);
    int i = scope_cleanup_i;
    while (i != -1) {
      if (TREE_CODE(scope_cleanup_stack [i].stmt) == CLEANUP_STMT)
        WFE_One_Stmt (CLEANUP_EXPR(scope_cleanup_stack [i].stmt));
      --i;
    }
    wn = WN_CreateReturn ();
  }
  else {
    WN *rhs_wn;
    TY_IDX ret_ty_idx = Get_TY(TREE_TYPE(TREE_TYPE(Current_Function_Decl())));
    rhs_wn = WFE_Expand_Expr_With_Sequence_Point (
		retval,
		TY_mtype (ret_ty_idx));
    WN * cleanup_block = WN_CreateBlock ();
    WFE_Stmt_Push (cleanup_block, wfe_stmk_temp_cleanup, Get_Srcpos ());
    Do_Temp_Cleanups (stmt);
    int i = scope_cleanup_i;
    while (i != -1) {
      if (TREE_CODE(scope_cleanup_stack [i].stmt) == CLEANUP_STMT)
        WFE_One_Stmt (CLEANUP_EXPR(scope_cleanup_stack [i].stmt));
      --i;
    }
    WFE_Stmt_Pop (wfe_stmk_temp_cleanup);

    if (WN_first (cleanup_block)) {

      if (TREE_CODE(retval) == TARGET_EXPR || 
	  TREE_CODE(retval) == COMPOUND_EXPR) {

	WN * insertee = WN_kid0 (rhs_wn);
	if ((WN_operator (rhs_wn) != OPR_COMMA) ||
	    (WN_has_side_effects (WN_kid1 (rhs_wn)))) {
//	  fdump_tree (stderr, rhs_wn);
	  Fail_FmtAssertion ("WFE_Expand_Return: TARGET_EXPR/COMPOUND_EXPR with cleanup");
	}
	WN_INSERT_BlockAfter (insertee, WN_last (insertee), cleanup_block);
      }
      else {
	if (WN_has_side_effects (rhs_wn)) {
	  DevWarn ("WFE_Expand_Return: cleanup block and expressson has side effects");
	  ST *ret_st = Gen_Temp_Symbol (ret_ty_idx, "__return_val");
	  TYPE_ID ret_mtype = TY_mtype (ret_ty_idx);
	  WFE_Set_ST_Addr_Saved (rhs_wn);
	  wn = WN_Stid (ret_mtype, 0, ret_st, ret_ty_idx, rhs_wn);
	  WFE_Stmt_Append (wn, Get_Srcpos ());
	  rhs_wn = WN_Ldid (ret_mtype, 0, ret_st, ret_ty_idx);
	}
	WFE_Stmt_Append (cleanup_block, Get_Srcpos ());
      }
    }
    
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
      WFE_Set_ST_Addr_Saved (rhs_wn);
      wn = WN_CreateReturn_Val(OPR_RETURN_VAL, WN_rtype(rhs_wn), MTYPE_V, rhs_wn);
    }
  }
  WFE_Stmt_Append(wn, Get_Srcpos());
} /* WFE_Expand_Return */


void
Mark_Scopes_And_Labels (tree stmt)
{
  if (!stmt) return;

  switch (TREE_CODE(stmt)) {
    case COMPOUND_STMT: {
      tree t;
      for (t = COMPOUND_BODY(stmt); t; t = TREE_CHAIN(t))
	Mark_Scopes_And_Labels (t);
      break;
    }

    case DO_STMT:
      Mark_Scopes_And_Labels (DO_BODY(stmt));
      break;

    case FOR_STMT: {
      tree init = FOR_INIT_STMT(stmt);
      tree cond = FOR_COND(stmt);
      tree body = FOR_BODY(stmt);
      while (init) {
	Mark_Scopes_And_Labels (init);
	init = TREE_CHAIN(init);
      }
      if (TREE_CODE(cond) == TREE_LIST)
	Mark_Scopes_And_Labels(cond);
      while (body) {
	Mark_Scopes_And_Labels (body);
  	body = TREE_CHAIN(body);
      }
      break;
    }

    case IF_STMT:
      Mark_Scopes_And_Labels (IF_COND(stmt));
      Mark_Scopes_And_Labels (THEN_CLAUSE(stmt));
      Mark_Scopes_And_Labels (ELSE_CLAUSE(stmt));
      break;

    case LABEL_STMT:
      if (scope_i == -1)
	LABEL_SCOPE(LABEL_STMT_LABEL(stmt)) = NULL_TREE;
      else
	LABEL_SCOPE(LABEL_STMT_LABEL(stmt)) = scope_stack [scope_i];
      break;

    case SCOPE_STMT:
      if (SCOPE_BEGIN_P(stmt)) {
	Push_Scope(stmt);
      }
      else {
	SCOPE_NUMBER(scope_stack [scope_i]) = ++scope_number;
	--scope_i;
      }
      break;

    case SWITCH_STMT:
      Mark_Scopes_And_Labels (SWITCH_COND(stmt));
      Mark_Scopes_And_Labels (SWITCH_BODY(stmt));
      break;

    case TREE_LIST:
      for (tree t = TREE_PURPOSE(stmt); stmt; stmt = TREE_CHAIN(stmt))
	Mark_Scopes_And_Labels(t);
      break;

    case TRY_BLOCK: {
      tree handler;
      Mark_Scopes_And_Labels (TRY_STMTS(stmt));
      for (handler = TRY_HANDLERS(stmt);
		     handler;
	 	     handler = TREE_CHAIN(handler))
	  for (tree t = HANDLER_BODY(handler); t; t = TREE_CHAIN(t))
	    Mark_Scopes_And_Labels (t);
      break;
      }

    case WHILE_STMT:
      Mark_Scopes_And_Labels (WHILE_COND(stmt));
      Mark_Scopes_And_Labels (WHILE_BODY(stmt));
      break;
    
    default:
      break;
  }
}

static void
WFE_Expand_Start_Case (tree selector)
{
  TYPE_ID index_mtype = Mtype_comparison (
                          TY_mtype (Get_TY (TREE_TYPE (TREE_VALUE(selector))))); 
  WN *switch_block = WN_CreateBlock ();
  WN *index;
  index = WFE_Expand_Expr_With_Sequence_Point (selector, index_mtype);
  WFE_Stmt_Push (switch_block, wfe_stmk_switch, Get_Srcpos());
  if (++switch_info_i == switch_info_max) {
    switch_info_max   = ENLARGE(switch_info_max);
    switch_info_stack = (SWITCH_INFO *) realloc (switch_info_stack,
                                                 switch_info_max * sizeof (SWITCH_INFO));
  }
  switch_info_stack [switch_info_i].index             = index;
  switch_info_stack [switch_info_i].start_case_index  = case_info_i + 1;
  switch_info_stack [switch_info_i].default_label_idx = 0;
  WFE_Record_Loop_Switch (SWITCH_STMT);
} /* WFE_Expand_Start_Case */

static void
WFE_Expand_End_Case (void)
{
  INT32  i;
  INT32  n;
  WN    *switch_wn;
  WN    *switch_block;
  WN    *case_block;
  WN    *case_entry;
  WN    *def_goto;
  WN    *wn;
  LABEL_IDX exit_label_idx;

  n = case_info_i - switch_info_stack [switch_info_i].start_case_index + 1;
  if (break_continue_info_stack [break_continue_info_i].break_label_idx)
    exit_label_idx = break_continue_info_stack [break_continue_info_i].break_label_idx;
  else
    New_LABEL (CURRENT_SYMTAB, exit_label_idx);
  if (switch_info_stack [switch_info_i].default_label_idx)
    def_goto = WN_CreateGoto (switch_info_stack [switch_info_i].default_label_idx);
  else
    def_goto = WN_CreateGoto (exit_label_idx);
  case_block = WN_CreateBlock ();
  for (i = switch_info_stack [switch_info_i].start_case_index;
       i <= case_info_i;
       i++) {
    INT64     case_value;
    LABEL_IDX case_label_idx = case_info_stack [i].case_label_idx;
    for (case_value  = case_info_stack [i].case_lower_bound_value;
         case_value <= case_info_stack [i].case_upper_bound_value;
         case_value++) {
      case_entry = WN_CreateCasegoto (case_value, case_label_idx);
      WN_INSERT_BlockLast (case_block, case_entry);
    }
  }
  switch_wn = WN_CreateSwitch (n,
                               switch_info_stack [switch_info_i].index,
                               case_block,
                               def_goto,
                               exit_label_idx);
  switch_block = WFE_Stmt_Pop (wfe_stmk_switch);
  WFE_Stmt_Append (switch_wn, Get_Srcpos ());
  WFE_Stmt_Append (switch_block, Get_Srcpos ());
  wn = WN_CreateLabel ((ST_IDX) 0, exit_label_idx, 0, NULL);
  WFE_Stmt_Append (wn, Get_Srcpos ());
  case_info_i = switch_info_stack [switch_info_i].start_case_index - 1;
  --switch_info_i;
} /* WFE_Expand_End_Case */

static void
WFE_Expand_Switch (tree stmt)
{
  WFE_Expand_Start_Case (SWITCH_COND(stmt));
  WFE_Expand_Stmt       (SWITCH_BODY(stmt));
  WFE_Expand_End_Case   ();
  --break_continue_info_i;
}

static void
Set_Handler_Labels (tree stmt)
{
  for (tree handler = TRY_HANDLERS(stmt);
       handler;
       handler = TREE_CHAIN (handler)) {
    LABEL_IDX handler_label;
    New_LABEL (CURRENT_SYMTAB, handler_label);
    HANDLER_LABEL(handler) = handler_label;
  }
}

INT
Current_Handler_Count()
{
#ifndef ADD_HANDLER_INFO
  return 0;
#endif
  if (temp_cleanup_i != -1) {
    for (int i = temp_cleanup_i; i != -1; --i) {
      if (temp_cleanup_stack [i].label_idx != 0)
	return 1;
    }
  }

  for (int i = scope_cleanup_i; i != -1; --i) {
    tree t = scope_cleanup_stack [i].stmt;
    if (TREE_CODE(t) == CLEANUP_STMT)
      return 1;
    INT result = 0;
    if (TREE_CODE(t) == TRY_BLOCK) {
      for (tree handler = TRY_HANDLERS(t);
           handler;
	   handler = TREE_CHAIN(handler))
        ++result;
      return result;
    }
  }

  return 0;
}

static ST_IDX
Tid_For_Handler (tree handler)
{
  tree t = HANDLER_BODY (handler);
  while (TREE_CODE(t) != COMPOUND_STMT)
    t = TREE_CHAIN(t);
  t = COMPOUND_BODY(t);
  while (TREE_CODE(t) != START_CATCH_STMT)
    t = TREE_CHAIN(t);
  t = TREE_TYPE(t);
  return t ? ST_st_idx(Get_ST (TREE_OPERAND(t, 0))) : 0;
}

#ifdef ADD_HANDLER_INFO
void
Add_Handler_Info (WN * call_wn, INT i, INT num_handlers)
{
  if (temp_cleanup_i != -1) { 
    for (int i = temp_cleanup_i; i != -1; --i)
      if (temp_cleanup_stack [i].label_idx != 0) {
        WN_kid (call_wn, i++) =
          WN_CreateHandlerInfo (0,
                                temp_cleanup_stack[temp_cleanup_i].label_idx);
        return;
 
      }
  }

  int j = scope_cleanup_i;
  while (TREE_CODE(scope_cleanup_stack [j].stmt) == SCOPE_STMT)
    --j;
  tree t = scope_cleanup_stack [j].stmt;
  if (TREE_CODE(t) == TRY_BLOCK && TREE_CODE(TRY_HANDLERS(t)) == HANDLER) {
    for (tree handler = TRY_HANDLERS(t);
         handler;
         handler = TREE_CHAIN(handler))
      WN_kid (call_wn, i++) =
        WN_CreateHandlerInfo (Tid_For_Handler (handler),
			      HANDLER_LABEL (handler));
    return;
  }

  WN_kid (call_wn, i++) =
    WN_CreateHandlerInfo (0, scope_cleanup_stack [j].label_idx);
}  
#endif /* ADD_HANDLER_INFO */

static void
WFE_Expand_Try (tree stmt)
{
  LABEL_IDX end_label_idx;
  WN *      end_label_wn;

  /* The implementation of try-blocks is incomplete, since there
   * is no provision yet for generating the tables.
   */

  DevWarn("WFE_Expand_Try: implementation of try-block is incomplete\n");

  /*
   * Don't generate anything if there are no statements in the
   * try-block.
   */

  if (TRY_STMTS(stmt) == NULL_TREE)
    return;

  /* Set start labels for each handler. */
  Set_Handler_Labels(stmt);

  Push_Scope_Cleanup (stmt);

  /* Generate code for the try-block. */

  for (tree s = TRY_STMTS(stmt); s; s = TREE_CHAIN(s))
    WFE_Expand_Stmt(s);
  --scope_cleanup_i;

  /* Generate a label for the handlers to branch back to. */

  New_LABEL (CURRENT_SYMTAB, end_label_idx);

  /* Handler code will be generated later, at end of function. */

  Push_Handler_Info (TRY_HANDLERS(stmt), end_label_idx);

  /* Emit label after handlers. */

  end_label_wn = WN_CreateLabel ((ST_IDX) 0, end_label_idx, 0, NULL);
  WFE_Stmt_Append (end_label_wn, Get_Srcpos());
} /* WFE_Expand_Try */

static void
Call_Named_Function (ST * st)
{
  WN * call_wn = WN_Create (OPR_CALL, MTYPE_V, MTYPE_V, 0);
  WN_st_idx (call_wn) = ST_st_idx (st);
  WFE_Stmt_Append (call_wn, Get_Srcpos());
}

void
Call_Throw (void)
{
#if 0
  static ST * st = NULL;
  if (st == NULL) {
    st = Function_ST_For_String("__throw");
  }
  Call_Named_Function (st);
#endif
}

void
Call_Rethrow (void)
{
#if 0
  static ST * st = NULL;
  if (st == NULL) {
    st = Function_ST_For_String ("__rethrow");
  }
  Call_Named_Function (st);
#endif
}

void Call_Terminate (void)
{
#if 0
  static ST * st = NULL;
  if (st == NULL) {
    st = Function_ST_For_String ("terminate__Fv");
  }
  Call_Named_Function (st);
#endif
}

static void
WFE_Expand_Handlers_Or_Cleanup (tree t, LABEL_IDX label_idx)
{
  WFE_Stmt_Append (
    WN_CreateLabel ((ST_IDX) 0, HANDLER_LABEL(t), 0, NULL),
    Get_Srcpos());
  
  if (TREE_CODE(t) == HANDLER) {
    while (t) {
      tree body = HANDLER_BODY(t);
      for (; body; body = TREE_CHAIN(body))
	WFE_Expand_Stmt (body);
      WFE_Stmt_Append (WN_CreateGoto ((ST_IDX) NULL, label_idx),
		       Get_Srcpos());
      t = TREE_CHAIN(t);
    }
  } else {
      WFE_One_Stmt (t);
      Call_Rethrow();
  }    
}

void
WFE_Expand_Stmt(tree stmt)
{
#ifdef WFE_DEBUG
  fprintf (stderr,
           "{( WFE_Expand_Expr: %s\n", WFE_Tree_Node_Name (stmt)); // ")}"
#endif /* WFE_DEBUG */

 if (TREE_CODE(stmt) == LABEL_DECL)
   lineno = DECL_SOURCE_LINE(stmt);
 else
 if (TREE_CODE(stmt) != CASE_LABEL)
   lineno = STMT_LINENO(stmt);

 if (STMT_IS_FULL_EXPR_P(stmt))
    Push_Temp_Cleanup (stmt, false);
    
  switch (TREE_CODE(stmt)) {
    case ASM_STMT:
      Wfe_Expand_Asm_Operands (ASM_STRING    (stmt),
			       ASM_OUTPUTS   (stmt),
			       ASM_INPUTS    (stmt),
			       ASM_CLOBBERS  (stmt),
			       ASM_VOLATILE_P(stmt),
			       NULL,
			       0);
      break;

    case BREAK_STMT:
      WFE_Expand_Break ();
      break;

    case CASE_LABEL:
      WFE_Expand_Case (CASE_LOW(stmt), CASE_HIGH(stmt));
      break;

    case CLEANUP_STMT:
      Push_Scope_Cleanup (stmt);
      break;

    case COMPOUND_STMT: {
      tree t;
      for (t = COMPOUND_BODY(stmt);
	   t != NULL;
	   t = TREE_CHAIN(t))
	WFE_Expand_Stmt (t);
      break;
    }

    case CONTINUE_STMT:
      WFE_Expand_Continue ();
      break;

    case DECL_STMT:
      WFE_Expand_Decl (DECL_STMT_DECL (stmt));
      break;

    case DO_STMT:
      WFE_Expand_Loop (stmt);
      break;

    case EXPR_STMT:
      WFE_One_Stmt (EXPR_STMT_EXPR(stmt));
      break;

    case FOR_STMT:
      WFE_Expand_Loop (stmt);
      break;

    case GOTO_STMT: {
      tree dest = GOTO_DESTINATION(stmt);
      if (TREE_CODE(dest) == LABEL_DECL)
        WFE_Expand_Goto (dest);
      else
        WFE_Expand_Computed_Goto(dest);
      break;
    }

    case IF_STMT:
      WFE_Expand_If (stmt);
      break;

    case LABEL_STMT:
      WFE_Expand_Label (LABEL_STMT_LABEL(stmt));
      break;

    case RETURN_STMT: {
      tree t = RETURN_EXPR(stmt);
      if (t && TREE_CODE(t) == INIT_EXPR) {
  	Is_True(TREE_CODE(TREE_OPERAND(t, 0)) == RESULT_DECL,
			  ("WFE_Expand_Stmt: expected RESULT_DECL"));
	tree t1 = TREE_OPERAND(t, 1);
	if (TREE_CODE(t1) == TARGET_EXPR)
  	  TREE_OPERAND(t1, 2) = 0;
	WFE_Expand_Return (stmt, t1);
      }
      else
	WFE_Expand_Return(stmt, t);
      return; // We've already called Do_Temp_Cleanups!
    }

    case SCOPE_STMT:
      if (SCOPE_BEGIN_P(stmt))
	Push_Scope_Cleanup (stmt);
      else
	Pop_Scope_And_Do_Cleanups ();
      break;

    case START_CATCH_STMT:
      DevWarn ("WFE_Expand_Stmt: START_CATCH_STMT not yet implemented.\n");
      break;

    case SUBOBJECT:
      break;

    case SWITCH_STMT:
      WFE_Expand_Switch (stmt);
      break;

    case TRY_BLOCK:
      WFE_Expand_Try (stmt);
      break;

    case WHILE_STMT:
      WFE_Expand_Loop (stmt);
      break;

    case CTOR_STMT:
      DevWarn("Encountered CTOR_STMT (%s).  Ignoring.",
              (CTOR_BEGIN_P(stmt) ? "begin" : "end"));
      break;

    default:
      Is_True(FALSE,
              ("WFE_Expand_Stmt: Unexpected statement node %s", WFE_Tree_Node_Name (stmt)));
      break;
  } /* switch */
  
  if (STMT_IS_FULL_EXPR_P(stmt))
    Do_Temp_Cleanups (stmt);

#ifdef WFE_DEBUG
  fprintf (stderr, // "{("
           ")} WFE_Expand_Expr: %s\n", WFE_Tree_Node_Name (stmt));
#endif /* WFE_DEBUG */

} /* WFE_Expand_Stmt */

