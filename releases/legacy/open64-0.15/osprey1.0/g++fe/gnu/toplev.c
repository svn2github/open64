/* Top level of GNU C compiler
   Copyright (C) 1987, 1988, 1989, 1992, 1993, 1994, 1995, 1996, 1997, 1998,
   1999, 2000 Free Software Foundation, Inc.

This file is part of GNU CC.

GNU CC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

GNU CC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GNU CC; see the file COPYING.  If not, write to
the Free Software Foundation, 59 Temple Place - Suite 330,
Boston, MA 02111-1307, USA.  */

/* This is the top level of cc1/c++.
   It parses command args, opens files, invokes the various passes
   in the proper order, and counts the time used by each.
   Error messages and low-level interface to malloc also handled here.  */

#include "config.h"
#undef FLOAT /* This is for hpux. They should change hpux.  */
#undef FFS  /* Some systems define this in param.h.  */
#include "system.h"
#include <signal.h>
#include <setjmp.h>

#ifdef HAVE_SYS_RESOURCE_H
# include <sys/resource.h>
#endif

#ifdef HAVE_SYS_TIMES_H
# include <sys/times.h>
#endif

#include "input.h"
#include "tree.h"
#include "rtl.h"
#include "tm_p.h"
#include "flags.h"
#include "insn-attr.h"
#include "insn-codes.h"
#include "insn-config.h"
#include "hard-reg-set.h"
#include "recog.h"
#include "defaults.h"
#include "output.h"
#include "except.h"
#include "function.h"
#include "toplev.h"
#include "expr.h"
#include "basic-block.h"
#include "intl.h"
#include "ggc.h"
#include "graph.h"
#include "loop.h"
#include "regs.h"
#include "timevar.h"

#ifndef ACCUMULATE_OUTGOING_ARGS
#define ACCUMULATE_OUTGOING_ARGS 0
#endif

#ifdef DWARF_DEBUGGING_INFO
#include "dwarfout.h"
#endif

#if defined (DWARF2_UNWIND_INFO) || defined (DWARF2_DEBUGGING_INFO)
#include "dwarf2out.h"
#endif

#if defined(DBX_DEBUGGING_INFO) || defined(XCOFF_DEBUGGING_INFO)
#include "dbxout.h"
#endif

#ifdef SDB_DEBUGGING_INFO
#include "sdbout.h"
#endif

#ifdef XCOFF_DEBUGGING_INFO
#include "xcoffout.h"
#endif

#ifdef VMS
/* The extra parameters substantially improve the I/O performance.  */
static FILE *
vms_fopen (fname, type)
     char * fname;
     char * type;
{
  /* The <stdio.h> in the gcc-vms-1.42 distribution prototypes fopen with two
     fixed arguments, which matches ANSI's specification but not VAXCRTL's
     pre-ANSI implementation.  This hack circumvents the mismatch problem.  */
  FILE *(*vmslib_fopen)() = (FILE *(*)()) fopen;

  if (*type == 'w')
    return (*vmslib_fopen) (fname, type, "mbc=32",
			    "deq=64", "fop=tef", "shr=nil");
  else
    return (*vmslib_fopen) (fname, type, "mbc=32");
}
#define fopen vms_fopen
#endif	/* VMS */

#ifndef DEFAULT_GDB_EXTENSIONS
#define DEFAULT_GDB_EXTENSIONS 1
#endif

/* If more than one debugging type is supported, you must define
   PREFERRED_DEBUGGING_TYPE to choose a format in a system-dependent way. 

   This is one long line cause VAXC can't handle a \-newline.  */
#if 1 < (defined (DBX_DEBUGGING_INFO) + defined (SDB_DEBUGGING_INFO) + defined (DWARF_DEBUGGING_INFO) + defined (DWARF2_DEBUGGING_INFO) + defined (XCOFF_DEBUGGING_INFO))
#ifndef PREFERRED_DEBUGGING_TYPE
You Lose!  You must define PREFERRED_DEBUGGING_TYPE!
#endif /* no PREFERRED_DEBUGGING_TYPE */
#else /* Only one debugging format supported.  Define PREFERRED_DEBUGGING_TYPE
	 so the following code needn't care.  */
#ifdef DBX_DEBUGGING_INFO
#define PREFERRED_DEBUGGING_TYPE DBX_DEBUG
#endif
#ifdef SDB_DEBUGGING_INFO
#define PREFERRED_DEBUGGING_TYPE SDB_DEBUG
#endif
#ifdef DWARF_DEBUGGING_INFO
#define PREFERRED_DEBUGGING_TYPE DWARF_DEBUG
#endif
#ifdef DWARF2_DEBUGGING_INFO
#define PREFERRED_DEBUGGING_TYPE DWARF2_DEBUG
#endif
#ifdef XCOFF_DEBUGGING_INFO
#define PREFERRED_DEBUGGING_TYPE XCOFF_DEBUG
#endif
#endif /* More than one debugger format enabled.  */

/* If still not defined, must have been because no debugging formats
   are supported.  */
#ifndef PREFERRED_DEBUGGING_TYPE
#define PREFERRED_DEBUGGING_TYPE NO_DEBUG
#endif

#if defined (HAVE_DECL_ENVIRON) && !HAVE_DECL_ENVIRON
extern char **environ;
#endif

/* Carry information from ASM_DECLARE_OBJECT_NAME
   to ASM_FINISH_DECLARE_OBJECT.  */

extern int size_directive_output;
extern tree last_assemble_variable_decl;

static void set_target_switch PARAMS ((const char *));
static const char *decl_name PARAMS ((tree, int));

static void float_signal PARAMS ((int)) ATTRIBUTE_NORETURN;
static void pipe_closed PARAMS ((int)) ATTRIBUTE_NORETURN;
#ifdef ASM_IDENTIFY_LANGUAGE
/* This might or might not be used in ASM_IDENTIFY_LANGUAGE. */
static void output_lang_identify PARAMS ((FILE *)) ATTRIBUTE_UNUSED;
#endif
#ifndef SGI_MONGOOSE
static
#endif /* SGI_MONGOOSE */
void compile_file PARAMS ((const char *));
static void display_help PARAMS ((void));
static void mark_file_stack PARAMS ((void *));

static void decode_d_option PARAMS ((const char *));
static int decode_f_option PARAMS ((const char *));
static int decode_W_option PARAMS ((const char *));
static int decode_g_option PARAMS ((const char *));
static unsigned int independent_decode_option PARAMS ((int, char **,
						       unsigned int));

static void print_version PARAMS ((FILE *, const char *));
static int print_single_switch PARAMS ((FILE *, int, int, const char *,
				      const char *, const char *,
				      const char *, const char *));
static void print_switch_values PARAMS ((FILE *, int, int, const char *,
				       const char *, const char *));

/* Length of line when printing switch values.  */
#define MAX_LINE 75

/* Name of program invoked, sans directories.  */

const char *progname;

/* Copy of arguments to main.  */
int save_argc;
char **save_argv;

/* Name of current original source file (what was input to cpp).
   This comes from each #-command in the actual input.  */

const char *input_filename;

/* Name of top-level original source file (what was input to cpp).
   This comes from the #-command at the beginning of the actual input.
   If there isn't any there, then this is the cc1 input file name.  */

const char *main_input_filename;

/* Current line number in real source file.  */

int lineno;

/* Nonzero if it is unsafe to create any new pseudo registers.  */
int no_new_pseudos;

/* Stack of currently pending input files.  */

struct file_stack *input_file_stack;

/* Incremented on each change to input_file_stack.  */
int input_file_stack_tick;

/* Name to use as base of names for dump output files.  */

const char *dump_base_name;

/* Bit flags that specify the machine subtype we are compiling for.
   Bits are tested using macros TARGET_... defined in the tm.h file
   and set by `-m...' switches.  Must be defined in rtlanal.c.  */

extern int target_flags;

/* Describes a dump file.  */

struct dump_file_info
{
  /* The unique extension to apply, e.g. ".jump".  */
  const char * const extension;

  /* The -d<c> character that enables this dump file.  */
  char const debug_switch;

  /* True if there is a corresponding graph dump file.  */
  char const graph_dump_p;

  /* True if the user selected this dump.  */
  char enabled;

  /* True if the files have been initialized (ie truncated).  */
  char initialized;
};

/* Enumerate the extant dump files.  */

enum dump_file_index
{
  DFI_rtl,
  DFI_sibling,
  DFI_jump,
  DFI_cse,
  DFI_addressof,
  DFI_ssa,
  DFI_ussa,
  DFI_gcse,
  DFI_loop,
  DFI_cse2,
  DFI_cfg,
  DFI_bp,
  DFI_life,
  DFI_combine,
  DFI_ce,
  DFI_regmove,
  DFI_sched,
  DFI_lreg,
  DFI_greg,
  DFI_flow2,
  DFI_ce2,
  DFI_peephole2,
  DFI_rnreg,
  DFI_sched2,
  DFI_bbro,
  DFI_jump2,
  DFI_mach,
  DFI_dbr,
  DFI_stack,
  DFI_MAX
};

/* Describes all the dump files.  Should be kept in order of the
   pass and in sync with dump_file_index above.

   Remaining -d letters:

	"       h      o q   u     "
	"       H  K   OPQ  TUVWXYZ"
*/

struct dump_file_info dump_file[DFI_MAX] = 
{
  { "rtl",	'r', 0, 0, 0 },
  { "sibling",  'i', 0, 0, 0 },
  { "jump",	'j', 0, 0, 0 },
  { "cse",	's', 0, 0, 0 },
  { "addressof", 'F', 0, 0, 0 },
  { "ssa",	'e', 1, 0, 0 },
  { "ussa",	'e', 1, 0, 0 },	/* Yes, duplicate enable switch.  */
  { "gcse",	'G', 1, 0, 0 },
  { "loop",	'L', 1, 0, 0 },
  { "cse2",	't', 1, 0, 0 },
  { "cfg",	'f', 1, 0, 0 },
  { "bp",	'b', 1, 0, 0 },
  { "life",	'f', 1, 0, 0 },	/* Yes, duplicate enable switch.  */
  { "combine",	'c', 1, 0, 0 },
  { "ce",	'C', 1, 0, 0 },
  { "regmove",	'N', 1, 0, 0 },
  { "sched",	'S', 1, 0, 0 },
  { "lreg",	'l', 1, 0, 0 },
  { "greg",	'g', 1, 0, 0 },
  { "flow2",	'w', 1, 0, 0 },
  { "ce2",	'E', 1, 0, 0 },
  { "peephole2", 'z', 1, 0, 0 },
  { "rnreg",	'n', 1, 0, 0 },
  { "sched2",	'R', 1, 0, 0 },
  { "bbro",	'B', 1, 0, 0 },
  { "jump2",	'J', 1, 0, 0 },
  { "mach",	'M', 1, 0, 0 },
  { "dbr",	'd', 0, 0, 0 },
  { "stack",	'k', 1, 0, 0 },
};

static int open_dump_file PARAMS ((enum dump_file_index, tree));
static void close_dump_file PARAMS ((enum dump_file_index,
				     void (*) (FILE *, rtx), rtx));

/* Other flags saying which kinds of debugging dump have been requested.  */

int rtl_dump_and_exit;
int flag_print_asm_name;
static int flag_print_mem;
static int version_flag;
static char * filename;
enum graph_dump_types graph_dump_format;

/* Name for output file of assembly code, specified with -o.  */

char *asm_file_name;

/* Value of the -G xx switch, and whether it was passed or not.  */
int g_switch_value;
int g_switch_set;

/* Type(s) of debugging information we are producing (if any).
   See flags.h for the definitions of the different possible
   types of debugging information.  */
enum debug_info_type write_symbols = NO_DEBUG;

/* Level of debugging information we are producing.  See flags.h
   for the definitions of the different possible levels.  */
enum debug_info_level debug_info_level = DINFO_LEVEL_NONE;

/* Nonzero means use GNU-only extensions in the generated symbolic
   debugging information.  */
/* Currently, this only has an effect when write_symbols is set to
   DBX_DEBUG, XCOFF_DEBUG, or DWARF_DEBUG.  */
int use_gnu_debug_info_extensions = 0;

/* Nonzero means do optimizations.  -O.
   Particular numeric values stand for particular amounts of optimization;
   thus, -O2 stores 2 here.  However, the optimizations beyond the basic
   ones are not controlled directly by this variable.  Instead, they are
   controlled by individual `flag_...' variables that are defaulted
   based on this variable.  */

int optimize = 0;

/* Nonzero means optimize for size.  -Os.
   The only valid values are zero and non-zero. When optimize_size is
   non-zero, optimize defaults to 2, but certain individual code
   bloating optimizations are disabled.  */

int optimize_size = 0;

/* Number of error messages and warning messages so far.  */

int errorcount = 0;
int warningcount = 0;
int sorrycount = 0;

/* The FUNCTION_DECL for the function currently being compiled,
   or 0 if between functions.  */
tree current_function_decl;

/* Set to the FUNC_BEGIN label of the current function, or NULL_TREE
   if none.  */
tree current_function_func_begin_label;

/* Pointer to function to compute the name to use to print a declaration.
   DECL is the declaration in question.
   VERBOSITY determines what information will be printed:
     0: DECL_NAME, demangled as necessary.
     1: and scope information.
     2: and any other information that might be interesting, such as function
        parameter types in C++.  */

const char *(*decl_printable_name)	PARAMS ((tree, int));

/* Pointer to function to compute rtl for a language-specific tree code.  */

typedef rtx (*lang_expand_expr_t)
  PARAMS ((union tree_node *, rtx, enum machine_mode,
	  enum expand_modifier modifier));

lang_expand_expr_t lang_expand_expr = 0;

tree (*lang_expand_constant) PARAMS ((tree)) = 0;

/* Pointer to function to finish handling an incomplete decl at the
   end of compilation.  */

void (*incomplete_decl_finalize_hook) PARAMS ((tree)) = 0;

/* Nonzero if generating code to do profiling.  */

int profile_flag = 0;

/* Nonzero if generating code to do profiling on a line-by-line basis.  */

int profile_block_flag;

/* Nonzero if generating code to profile program flow graph arcs.  */

int profile_arc_flag = 0;

/* Nonzero if generating info for gcov to calculate line test coverage.  */

int flag_test_coverage = 0;

/* Nonzero indicates that branch taken probabilities should be calculated.  */

int flag_branch_probabilities = 0;

/* Nonzero if basic blocks should be reordered. */

int flag_reorder_blocks = 0;

/* Nonzero if registers should be renamed */

int flag_rename_registers = 0;

/* Nonzero for -pedantic switch: warn about anything
   that standard spec forbids.  */

int pedantic = 0;

/* Temporarily suppress certain warnings.
   This is set while reading code from a system header file.  */

int in_system_header = 0;

/* Don't print functions as they are compiled and don't print
   times taken by the various passes.  -quiet.  */

int quiet_flag = 0;

/* -f flags.  */

/* Nonzero means `char' should be signed.  */

int flag_signed_char;

/* Nonzero means give an enum type only as many bytes as it needs.  */

int flag_short_enums;

/* Nonzero for -fcaller-saves: allocate values in regs that need to
   be saved across function calls, if that produces overall better code.
   Optional now, so people can test it.  */

#ifdef DEFAULT_CALLER_SAVES
int flag_caller_saves = 1;
#else
int flag_caller_saves = 0;
#endif

/* Nonzero if structures and unions should be returned in memory.

   This should only be defined if compatibility with another compiler or
   with an ABI is needed, because it results in slower code.  */

#ifndef DEFAULT_PCC_STRUCT_RETURN
#define DEFAULT_PCC_STRUCT_RETURN 1
#endif

/* Nonzero for -fpcc-struct-return: return values the same way PCC does.  */

int flag_pcc_struct_return = DEFAULT_PCC_STRUCT_RETURN;

/* Nonzero for -fforce-mem: load memory value into a register
   before arithmetic on it.  This makes better cse but slower compilation.  */

int flag_force_mem = 0;

/* Nonzero for -fforce-addr: load memory address into a register before
   reference to memory.  This makes better cse but slower compilation.  */

int flag_force_addr = 0;

/* Nonzero for -fdefer-pop: don't pop args after each function call;
   instead save them up to pop many calls' args with one insns.  */

int flag_defer_pop = 0;

/* Nonzero for -ffloat-store: don't allocate floats and doubles
   in extended-precision registers.  */

int flag_float_store = 0;

/* Nonzero for -fcse-follow-jumps:
   have cse follow jumps to do a more extensive job.  */

int flag_cse_follow_jumps;

/* Nonzero for -fcse-skip-blocks:
   have cse follow a branch around a block.  */
int flag_cse_skip_blocks;

/* Nonzero for -fexpensive-optimizations:
   perform miscellaneous relatively-expensive optimizations.  */
int flag_expensive_optimizations;

/* Nonzero for -fthread-jumps:
   have jump optimize output of loop.  */

int flag_thread_jumps;

/* Nonzero enables strength-reduction in loop.c.  */

int flag_strength_reduce = 0;

/* Nonzero enables loop unrolling in unroll.c.  Only loops for which the
   number of iterations can be calculated at compile-time (UNROLL_COMPLETELY,
   UNROLL_MODULO) or at run-time (preconditioned to be UNROLL_MODULO) are
   unrolled.  */

int flag_unroll_loops;

/* Nonzero enables loop unrolling in unroll.c.  All loops are unrolled.
   This is generally not a win.  */

int flag_unroll_all_loops;

/* Nonzero forces all invariant computations in loops to be moved
   outside the loop. */

int flag_move_all_movables = 0;

/* Nonzero forces all general induction variables in loops to be
   strength reduced. */

int flag_reduce_all_givs = 0;

/* Nonzero to perform full register move optimization passes.  This is the
   default for -O2.  */

int flag_regmove = 0;

/* Nonzero for -fwritable-strings:
   store string constants in data segment and don't uniquize them.  */

int flag_writable_strings = 0;

/* Nonzero means don't put addresses of constant functions in registers.
   Used for compiling the Unix kernel, where strange substitutions are
   done on the assembly output.  */

int flag_no_function_cse = 0;

/* Nonzero for -fomit-frame-pointer:
   don't make a frame pointer in simple functions that don't require one.  */

int flag_omit_frame_pointer = 0;

/* Nonzero means place each function into its own section on those platforms
   which support arbitrary section names and unlimited numbers of sections.  */

int flag_function_sections = 0;

/* ... and similar for data.  */
 
int flag_data_sections = 0;

/* Nonzero to inhibit use of define_optimization peephole opts.  */

int flag_no_peephole = 0;

/* Nonzero allows GCC to violate some IEEE or ANSI rules regarding math
   operations in the interest of optimization.  For example it allows
   GCC to assume arguments to sqrt are nonnegative numbers, allowing
   faster code for sqrt to be generated.  */

int flag_fast_math = 0;

/* Nonzero allows GCC to optimize sibling and tail recursive calls.  */

int flag_optimize_sibling_calls = 0;

/* Nonzero means the front end generally wants `errno' maintained by math
   operations, like built-in SQRT, unless overridden by flag_fast_math.  */

int flag_errno_math = 1;

/* 0 means straightforward implementation of complex divide acceptable.
   1 means wide ranges of inputs must work for complex divide.
   2 means C9X-like requirements for complex divide (not yet implemented).  */

int flag_complex_divide_method = 0;

/* Nonzero means all references through pointers are volatile.  */

int flag_volatile;

/* Nonzero means treat all global and extern variables as volatile.  */

int flag_volatile_global;

/* Nonzero means treat all static variables as volatile.  */

int flag_volatile_static;

/* Nonzero means just do syntax checking; don't output anything.  */

#ifdef SGI_MONGOOSE
int flag_syntax_only = 1;
#else
int flag_syntax_only = 0;
#endif /* SGI_MONGOOSE */

/* Nonzero means perform global cse.  */

static int flag_gcse;

/* Nonzero means to use global dataflow analysis to eliminate
   useless null pointer tests.  */

static int flag_delete_null_pointer_checks;

/* Nonzero means to rerun cse after loop optimization.  This increases
   compilation time about 20% and picks up a few more common expressions.  */

static int flag_rerun_cse_after_loop;

/* Nonzero means to run loop optimizations twice.  */

int flag_rerun_loop_opt;

/* Nonzero for -finline-functions: ok to inline functions that look like
   good inline candidates.  */

int flag_inline_functions;

/* Nonzero for -fkeep-inline-functions: even if we make a function
   go inline everywhere, keep its definition around for debugging
   purposes.  */

int flag_keep_inline_functions;

/* Nonzero means that functions will not be inlined.  */

int flag_no_inline;

/* Nonzero means that we should emit static const variables
   regardless of whether or not optimization is turned on.  */

int flag_keep_static_consts = 1;

/* Nonzero means we should be saving declaration info into a .X file.  */

int flag_gen_aux_info = 0;

/* Specified name of aux-info file.  */

static char *aux_info_file_name;

/* Nonzero means make the text shared if supported.  */

int flag_shared_data;

/* Nonzero means schedule into delayed branch slots if supported.  */

int flag_delayed_branch;

/* Nonzero if we are compiling pure (sharable) code.
   Value is 1 if we are doing reasonable (i.e. simple
   offset into offset table) pic.  Value is 2 if we can
   only perform register offsets.  */

int flag_pic;

/* Nonzero means generate extra code for exception handling and enable
   exception handling.  */

int flag_exceptions;

/* Nonzero means use the new model for exception handling. Replaces 
   -DNEW_EH_MODEL as a compile option. */

int flag_new_exceptions = 1;

/* Nonzero means generate frame unwind info table when supported */

int flag_unwind_tables = 0;

/* Nonzero means don't place uninitialized global data in common storage
   by default.  */

int flag_no_common;

/* Nonzero means pretend it is OK to examine bits of target floats,
   even if that isn't true.  The resulting code will have incorrect constants,
   but the same series of instructions that the native compiler would make.  */

int flag_pretend_float;

/* Nonzero means change certain warnings into errors.
   Usually these are warnings about failure to conform to some standard.  */

int flag_pedantic_errors = 0;

/* flag_schedule_insns means schedule insns within basic blocks (before
   local_alloc).
   flag_schedule_insns_after_reload means schedule insns after
   global_alloc.  */

int flag_schedule_insns = 0;
int flag_schedule_insns_after_reload = 0;

/* The following flags have effect only for scheduling before register
   allocation:

   flag_schedule_interblock means schedule insns accross basic blocks.
   flag_schedule_speculative means allow speculative motion of non-load insns.
   flag_schedule_speculative_load means allow speculative motion of some
   load insns.
   flag_schedule_speculative_load_dangerous allows speculative motion of more
   load insns.  */

int flag_schedule_interblock = 1;
int flag_schedule_speculative = 1;
int flag_schedule_speculative_load = 0;
int flag_schedule_speculative_load_dangerous = 0;

/* flag_on_branch_count_reg means try to replace add-1,compare,branch tupple
   by a cheaper branch, on a count register. */
int flag_branch_on_count_reg;

/* -finhibit-size-directive inhibits output of .size for ELF.
   This is used only for compiling crtstuff.c, 
   and it may be extended to other effects
   needed for crtstuff.c on other systems.  */
int flag_inhibit_size_directive = 0;

/* -fverbose-asm causes extra commentary information to be produced in
   the generated assembly code (to make it more readable).  This option
   is generally only of use to those who actually need to read the
   generated assembly code (perhaps while debugging the compiler itself).
   -fno-verbose-asm, the default, causes the extra information
   to be omitted and is useful when comparing two assembler files.  */

int flag_verbose_asm = 0;

/* -dA causes debug commentary information to be produced in
   the generated assembly code (to make it more readable).  This option
   is generally only of use to those who actually need to read the
   generated assembly code (perhaps while debugging the compiler itself).
   Currently, this switch is only used by dwarfout.c; however, it is intended
   to be a catchall for printing debug information in the assembler file.  */

int flag_debug_asm = 0;

#ifdef SGI_MONGOOSE
/* -dC causes asm operand constraints that aren't valid or supported
   for the target machine to force the entire containing asm statement
   to be discarded. This is a temporary hack. RK 990428 */

int flag_bad_asm_constraint_kills_stmt = 0;
#endif /* SGI_MONGOOSE */

/* -fgnu-linker specifies use of the GNU linker for initializations.
   (Or, more generally, a linker that handles initializations.)
   -fno-gnu-linker says that collect2 will be used.  */
#ifdef USE_COLLECT2
int flag_gnu_linker = 0;
#else
int flag_gnu_linker = 1;
#endif

/* Enable SSA.  */
int flag_ssa = 0;

/* Tag all structures with __attribute__(packed) */
int flag_pack_struct = 0;

/* Emit code to check for stack overflow; also may cause large objects
   to be allocated dynamically.  */
int flag_stack_check;

/* When non-NULL, indicates that whenever space is allocated on the
   stack, the resulting stack pointer must not pass this
   address---that is, for stacks that grow downward, the stack pointer
   must always be greater than or equal to this address; for stacks
   that grow upward, the stack pointer must be less than this address.
   At present, the rtx may be either a REG or a SYMBOL_REF, although
   the support provided depends on the backend.  */
rtx stack_limit_rtx;

/* -fcheck-memory-usage causes extra code to be generated in order to check
   memory accesses.  This is used by a detector of bad memory accesses such
   as Checker.  */
int flag_check_memory_usage = 0;

/* -fprefix-function-name causes function name to be prefixed.  This
   can be used with -fcheck-memory-usage to isolate code compiled with
   -fcheck-memory-usage.  */
int flag_prefix_function_name = 0;

/* 0 if pointer arguments may alias each other.  True in C.
   1 if pointer arguments may not alias each other but may alias
   global variables.
   2 if pointer arguments may not alias each other and may not
   alias global variables.  True in Fortran.
   This defaults to 0 for C.  */
int flag_argument_noalias = 0;

/* Nonzero if we should do (language-dependent) alias analysis.
   Typically, this analysis will assume that expressions of certain
   types do not alias expressions of certain other types.  Only used
   if alias analysis (in general) is enabled.  */
int flag_strict_aliasing = 0;

/* Instrument functions with calls at entry and exit, for profiling.  */
int flag_instrument_function_entry_exit = 0;

/* Nonzero means ignore `#ident' directives.  0 means handle them.
   On SVR4 targets, it also controls whether or not to emit a
   string identifying the compiler.  */

int flag_no_ident = 0;

/* This will perform a peephole pass before sched2. */
int flag_peephole2 = 0;

/* -fbounded-pointers causes gcc to compile pointers as composite
   objects occupying three words: the pointer value, the base address
   of the referent object, and the address immediately beyond the end
   of the referent object.  The base and extent allow us to perform
   runtime bounds checking.  -fbounded-pointers implies -fcheck-bounds.  */
int flag_bounded_pointers = 0;

/* -fcheck-bounds causes gcc to generate array bounds checks.
   For C, C++: defaults to value of flag_bounded_pointers.
   For ObjC: defaults to off.
   For Java: defaults to on.
   For Fortran: defaults to off.
   For CHILL: defaults to off.  */
int flag_bounds_check = 0;

/* If one, renumber instruction UIDs to reduce the number of
   unused UIDs if there are a lot of instructions.  If greater than
   one, unconditionally renumber instruction UIDs.  */
int flag_renumber_insns = 1;

/* Values of the -falign-* flags: how much to align labels in code. 
   0 means `use default', 1 means `don't align'.  
   For each variable, there is an _log variant which is the power
   of two not less than the variable, for .align output.  */

int align_loops;
int align_loops_log;
int align_jumps;
int align_jumps_log;
int align_labels;
int align_labels_log;
int align_functions;
int align_functions_log;

/* Table of supported debugging formats.  */
static struct
{
  const char * arg;
  /* Since PREFERRED_DEBUGGING_TYPE isn't necessarily a
     constant expression, we use NO_DEBUG in its place.  */
  enum debug_info_type debug_type;
  int use_extensions_p;
  const char * description;
} *da,
debug_args[] =
{
  { "",       NO_DEBUG, DEFAULT_GDB_EXTENSIONS,
    "Generate default debug format output" },
  { "gdb",    NO_DEBUG, 1, "Generate default extended debug format output" },
#ifdef DBX_DEBUGGING_INFO
  { "stabs",  DBX_DEBUG, 0, "Generate STABS format debug output" },
  { "stabs+", DBX_DEBUG, 1, "Generate extended STABS format debug output" },
#endif
#ifdef DWARF_DEBUGGING_INFO
  { "dwarf",  DWARF_DEBUG, 0, "Generate DWARF-1 format debug output"},
  { "dwarf+", DWARF_DEBUG, 1,
    "Generated extended DWARF-1 format debug output" },
#endif
#ifdef DWARF2_DEBUGGING_INFO
  { "dwarf-2", DWARF2_DEBUG, 0, "Enable DWARF-2 debug output" },
#endif
#ifdef XCOFF_DEBUGGING_INFO
  { "xcoff",  XCOFF_DEBUG, 0, "Generate XCOFF format debug output" },
  { "xcoff+", XCOFF_DEBUG, 1, "Generate extended XCOFF format debug output" },
#endif
#ifdef SDB_DEBUGGING_INFO
  { "coff", SDB_DEBUG, 0, "Generate COFF format debug output" },
#endif
  { 0, 0, 0, 0 }
};

typedef struct
{
  const char * string;
  int *  variable;
  int    on_value;
  const char * description;
}
lang_independent_options;

/* Add or remove a leading underscore from user symbols.  */
int flag_leading_underscore = -1;

/* The user symbol prefix after having resolved same.  */
const char *user_label_prefix;

/* A default for same.  */
#ifndef USER_LABEL_PREFIX
#define USER_LABEL_PREFIX ""
#endif

/* Table of language-independent -f options.
   STRING is the option name.  VARIABLE is the address of the variable.
   ON_VALUE is the value to store in VARIABLE
    if `-fSTRING' is seen as an option.
   (If `-fno-STRING' is seen as an option, the opposite value is stored.)  */

lang_independent_options f_options[] =
{
  {"float-store", &flag_float_store, 1,
   "Do not store floats in registers" },
  {"volatile", &flag_volatile, 1,
   "Consider all mem refs through pointers as volatile"},
  {"volatile-global", &flag_volatile_global, 1,
   "Consider all mem refs to global data to be volatile" },
  {"volatile-static", &flag_volatile_static, 1,
   "Consider all mem refs to static data to be volatile" },
  {"defer-pop", &flag_defer_pop, 1,
   "Defer popping functions args from stack until later" },
  {"omit-frame-pointer", &flag_omit_frame_pointer, 1,
   "When possible do not generate stack frames"},
  {"optimize-sibling-calls", &flag_optimize_sibling_calls, 1,
   "Optimize sibling and tail recursive calls" },
  {"cse-follow-jumps", &flag_cse_follow_jumps, 1,
   "When running CSE, follow jumps to their targets" },
  {"cse-skip-blocks", &flag_cse_skip_blocks, 1,
   "When running CSE, follow conditional jumps" },
  {"expensive-optimizations", &flag_expensive_optimizations, 1,
   "Perform a number of minor, expensive optimisations" },
  {"thread-jumps", &flag_thread_jumps, 1,
   "Perform jump threading optimisations"},
  {"strength-reduce", &flag_strength_reduce, 1,
   "Perform strength reduction optimisations" },
  {"unroll-loops", &flag_unroll_loops, 1,
   "Perform loop unrolling when iteration count is known" },
  {"unroll-all-loops", &flag_unroll_all_loops, 1,
   "Perform loop unrolling for all loops" },
  {"move-all-movables", &flag_move_all_movables, 1,
   "Force all loop invariant computations out of loops" },
  {"reduce-all-givs", &flag_reduce_all_givs, 1,
   "Strength reduce all loop general induction variables" },
  {"writable-strings", &flag_writable_strings, 1,
   "Store strings in writable data section" },
  {"peephole", &flag_no_peephole, 0,
   "Enable machine specific peephole optimisations" },
  {"force-mem", &flag_force_mem, 1,
   "Copy memory operands into registers before using" },
  {"force-addr", &flag_force_addr, 1,
   "Copy memory address constants into regs before using" },
  {"function-cse", &flag_no_function_cse, 0,
   "Allow function addresses to be held in registers" },
  {"inline-functions", &flag_inline_functions, 1,
   "Integrate simple functions into their callers" },
  {"keep-inline-functions", &flag_keep_inline_functions, 1,
   "Generate code for funcs even if they are fully inlined" },
  {"inline", &flag_no_inline, 0,
   "Pay attention to the 'inline' keyword"},
  {"keep-static-consts", &flag_keep_static_consts, 1,
   "Emit static const variables even if they are not used" },
  {"syntax-only", &flag_syntax_only, 1,
   "Check for syntax errors, then stop" },
  {"shared-data", &flag_shared_data, 1,
   "Mark data as shared rather than private" },
  {"caller-saves", &flag_caller_saves, 1,
   "Enable saving registers around function calls" },
  {"pcc-struct-return", &flag_pcc_struct_return, 1,
   "Return 'short' aggregates in memory, not registers" },
  {"reg-struct-return", &flag_pcc_struct_return, 0,
   "Return 'short' aggregates in registers" },
  {"delayed-branch", &flag_delayed_branch, 1,
   "Attempt to fill delay slots of branch instructions" },
  {"gcse", &flag_gcse, 1,
   "Perform the global common subexpression elimination" },
  {"rerun-cse-after-loop", &flag_rerun_cse_after_loop, 1,
   "Run CSE pass after loop optimisations"},
  {"rerun-loop-opt", &flag_rerun_loop_opt, 1,
   "Run the loop optimiser twice"},
  {"delete-null-pointer-checks", &flag_delete_null_pointer_checks, 1,
   "Delete useless null pointer checks" },
  {"pretend-float", &flag_pretend_float, 1,
   "Pretend that host and target use the same FP format"},
  {"schedule-insns", &flag_schedule_insns, 1,
   "Reschedule instructions to avoid pipeline stalls"},
  {"schedule-insns2", &flag_schedule_insns_after_reload, 1,
  "Run two passes of the instruction scheduler"},
  {"sched-interblock",&flag_schedule_interblock, 1,
   "Enable scheduling across basic blocks" },
  {"sched-spec",&flag_schedule_speculative, 1,
   "Allow speculative motion of non-loads" },
  {"sched-spec-load",&flag_schedule_speculative_load, 1,
   "Allow speculative motion of some loads" },
  {"sched-spec-load-dangerous",&flag_schedule_speculative_load_dangerous, 1,
   "Allow speculative motion of more loads" },
  {"branch-count-reg",&flag_branch_on_count_reg, 1,
   "Replace add,compare,branch with branch on count reg"},
  {"pic", &flag_pic, 1,
   "Generate position independent code, if possible"},
  {"PIC", &flag_pic, 2, ""},
  {"exceptions", &flag_exceptions, 1,
   "Enable exception handling" },
  {"new-exceptions", &flag_new_exceptions, 1,
   "Use the new model for exception handling" },
  {"unwind-tables", &flag_unwind_tables, 1,
    "Just generate unwind tables for exception handling" },
  {"sjlj-exceptions", &exceptions_via_longjmp, 1,
   "Use setjmp/longjmp to handle exceptions" },
  {"asynchronous-exceptions", &asynchronous_exceptions, 1,
   "Support asynchronous exceptions" },
  {"profile-arcs", &profile_arc_flag, 1,
   "Insert arc based program profiling code" },
  {"test-coverage", &flag_test_coverage, 1,
   "Create data files needed by gcov" },
  {"branch-probabilities", &flag_branch_probabilities, 1,
   "Use profiling information for branch probabilities" },
  {"reorder-blocks", &flag_reorder_blocks, 1,
   "Reorder basic blocks to improve code placement" },
  {"rename-registers", &flag_rename_registers, 1,
   "Do the register renaming optimization pass"},
  {"fast-math", &flag_fast_math, 1,
   "Improve FP speed by violating ANSI & IEEE rules" },
  {"common", &flag_no_common, 0,
   "Do not put unitialised globals in the common section" },
  {"inhibit-size-directive", &flag_inhibit_size_directive, 1,
   "Do not generate .size directives" },
  {"function-sections", &flag_function_sections, 1,
   "place each function into its own section" },
  {"data-sections", &flag_data_sections, 1,
   "place data items into their own section" },
  {"verbose-asm", &flag_verbose_asm, 1,
   "Add extra commentry to assembler output"},
  {"gnu-linker", &flag_gnu_linker, 1,
   "Output GNU ld formatted global initialisers"},
  {"regmove", &flag_regmove, 1,
   "Enables a register move optimisation"},
  {"optimize-register-move", &flag_regmove, 1,
   "Do the full regmove optimization pass"},
  {"pack-struct", &flag_pack_struct, 1,
   "Pack structure members together without holes" },
  {"stack-check", &flag_stack_check, 1,
   "Insert stack checking code into the program" },
  {"argument-alias", &flag_argument_noalias, 0,
   "Specify that arguments may alias each other & globals"},
  {"argument-noalias", &flag_argument_noalias, 1,
   "Assume arguments may alias globals but not each other"},
  {"argument-noalias-global", &flag_argument_noalias, 2,
   "Assume arguments do not alias each other or globals" },
  {"strict-aliasing", &flag_strict_aliasing, 1,
   "Assume strict aliasing rules apply" },
  {"align-loops", &align_loops, 0, 
   "Align the start of loops" },
  {"align-jumps", &align_jumps, 0, 
   "Align labels which are only reached by jumping" },
  {"align-labels", &align_labels, 0,
   "Align all labels" },
  {"align-functions", &align_functions, 0,
   "Align the start of functions" },
  {"check-memory-usage", &flag_check_memory_usage, 1,
   "Generate code to check every memory access" },
  {"prefix-function-name", &flag_prefix_function_name, 1,
   "Add a prefix to all function names" },
  {"dump-unnumbered", &flag_dump_unnumbered, 1,
   "Suppress output of instruction numbers and line number notes in debugging dumps"},
  {"instrument-functions", &flag_instrument_function_entry_exit, 1,
   "Instrument function entry/exit with profiling calls"},
  {"ssa", &flag_ssa, 1,
   "Enable SSA optimizations" },
  {"leading-underscore", &flag_leading_underscore, 1,
   "External symbols have a leading underscore" },
  {"ident", &flag_no_ident, 0,
   "Process #ident directives"},
  { "peephole2", &flag_peephole2, 1,
    "Enables an rtl peephole pass run before sched2" },
  {"math-errno", &flag_errno_math, 1,
   "Set errno after built-in math functions"},
  {"bounded-pointers", &flag_bounded_pointers, 1,
   "Compile pointers as triples: value, base & end" },
  {"bounds-check", &flag_bounds_check, 1,
   "Generate code to check bounds before dereferencing pointers and arrays" }
};

#define NUM_ELEM(a)  (sizeof (a) / sizeof ((a)[0]))

/* Table of language-specific options.  */

static struct lang_opt
{
  const char * option;
  const char * description;
}
documented_lang_options[] =
{
  /* In order not to overload the --help output, the convention
     used here is to only describe those options which are not
     enabled by default.  */

  { "-ansi", "Compile just for ANSI C" },
  { "-fallow-single-precision",
    "Do not promote floats to double if using -traditional" },
  { "-std= ", "Determine language standard"},

  { "-fsigned-bitfields", "" },
  { "-funsigned-bitfields","Make bitfields by unsigned by default" },
  { "-fno-signed-bitfields", "" },
  { "-fno-unsigned-bitfields","" },
  { "-fsigned-char", "Make 'char' be signed by default"},
  { "-funsigned-char", "Make 'char' be unsigned by default"},
  { "-fno-signed-char", "" },
  { "-fno-unsigned-char", "" },

  { "-ftraditional", "" },
  { "-traditional", "Attempt to support traditional K&R style C"},
  { "-fnotraditional", "" },
  { "-fno-traditional", "" },

  { "-fasm", "" },
  { "-fno-asm", "Do not recognise the 'asm' keyword" },
  { "-fbuiltin", "" },
  { "-fno-builtin", "Do not recognise any built in functions" },
  { "-fhosted", "Assume normal C execution environment" },
  { "-fno-hosted", "" },
  { "-ffreestanding",
    "Assume that standard libraries & main might not exist" },
  { "-fno-freestanding", "" },
  { "-fcond-mismatch", "Allow different types as args of ? operator"},
  { "-fno-cond-mismatch", "" },
  { "-fdollars-in-identifiers", "Allow the use of $ inside identifiers" },
  { "-fno-dollars-in-identifiers", "" },
  { "-fpreprocessed", "" },
  { "-fno-preprocessed", "" },
  { "-fshort-double", "Use the same size for double as for float" },
  { "-fno-short-double", "" },
  { "-fshort-enums", "Use the smallest fitting integer to hold enums"},
  { "-fno-short-enums", "" },
  { "-fshort-wchar", "Override the underlying type for wchar_t to `unsigned short'" },
  { "-fno-short-wchar", "" },

  { "-Wall", "Enable most warning messages" },
  { "-Wbad-function-cast",
    "Warn about casting functions to incompatible types" },
  { "-Wno-bad-function-cast", "" },
  { "-Wmissing-noreturn",
    "Warn about functions which might be candidates for attribute noreturn" },
  { "-Wno-missing-noreturn", "" },
  { "-Wcast-qual", "Warn about casts which discard qualifiers"},
  { "-Wno-cast-qual", "" },
  { "-Wchar-subscripts", "Warn about subscripts whose type is 'char'"},
  { "-Wno-char-subscripts", "" },
  { "-Wcomment", "Warn if nested comments are detected" },
  { "-Wno-comment", "" },
  { "-Wcomments", "Warn if nested comments are detected" },
  { "-Wno-comments", "" },
  { "-Wconversion", "Warn about possibly confusing type conversions" },
  { "-Wno-conversion", "" },
  { "-Wformat", "Warn about printf format anomalies" },
  { "-Wno-format", "" },
  { "-Wimplicit-function-declaration",
    "Warn about implicit function declarations" },
  { "-Wno-implicit-function-declaration", "" },
  { "-Werror-implicit-function-declaration", "" },
  { "-Wimplicit-int", "Warn when a declaration does not specify a type" },
  { "-Wno-implicit-int", "" },
  { "-Wimplicit", "" },
  { "-Wno-implicit", "" },
  { "-Wimport", "Warn about the use of the #import directive" },
  { "-Wno-import", "" },
  { "-Wlong-long","" },
  { "-Wno-long-long", "Do not warn about using 'long long' when -pedantic" },
  { "-Wmain", "Warn about suspicious declarations of main" },
  { "-Wno-main", "" },
  { "-Wmissing-braces",
    "Warn about possibly missing braces around initialisers" },
  { "-Wno-missing-braces", "" },
  { "-Wmissing-declarations",
    "Warn about global funcs without previous declarations"},
  { "-Wno-missing-declarations", "" },
  { "-Wmissing-prototypes", "Warn about global funcs without prototypes" },
  { "-Wno-missing-prototypes", "" },
  { "-Wmultichar", "Warn about use of multicharacter literals"},
  { "-Wno-multichar", "" },
  { "-Wnested-externs", "Warn about externs not at file scope level" },
  { "-Wno-nested-externs", "" },
  { "-Wparentheses", "Warn about possible missing parentheses" },
  { "-Wno-parentheses", "" },
  { "-Wpointer-arith", "Warn about function pointer arithmetic" },
  { "-Wno-pointer-arith", "" },
  { "-Wredundant-decls",
    "Warn about multiple declarations of the same object" },
  { "-Wno-redundant-decls", "" },
  { "-Wsign-compare", "Warn about signed/unsigned comparisons" },
  { "-Wno-sign-compare", "" },
  { "-Wfloat-equal", "Warn about testing equality of floating point numbers" },
  { "-Wno-float-equal", "" },
  { "-Wunknown-pragmas", "Warn about unrecognized pragmas" },
  { "-Wno-unknown-pragmas", "" },
  { "-Wstrict-prototypes", "Warn about non-prototyped function decls" },
  { "-Wno-strict-prototypes", "" },
  { "-Wtraditional", "Warn about constructs whose meaning change in ANSI C"},
  { "-Wno-traditional", "" },
  { "-Wtrigraphs", "Warn when trigraphs are encountered" },
  { "-Wno-trigraphs", "" },
  { "-Wundef", "" },
  { "-Wno-undef", "" },
  { "-Wwrite-strings", "Mark strings as 'const char *'"},
  { "-Wno-write-strings", "" },
  
#define DEFINE_LANG_NAME(NAME) { NULL, NAME },
  
  /* These are for Objective C.  */
  DEFINE_LANG_NAME ("Objective C")
  
  { "-lang-objc", "" },
  { "-gen-decls", "Dump decls to a .decl file" },
  { "-fgnu-runtime", "Generate code for GNU runtime environment" },
  { "-fno-gnu-runtime", "" },
  { "-fnext-runtime", "Generate code for NeXT runtime environment" },
  { "-fno-next-runtime", "" },
  { "-Wselector", "Warn if a selector has multiple methods" },
  { "-Wno-selector", "" },
  { "-Wprotocol", "" },
  { "-Wno-protocol", "Do not warn if inherited methods are unimplemented"},
  { "-print-objc-runtime-info",
    "Generate C header of platform specific features" },

#include "options.h"
  
};

/* Here is a table, controlled by the tm.h file, listing each -m switch
   and which bits in `target_switches' it should set or clear.
   If VALUE is positive, it is bits to set.
   If VALUE is negative, -VALUE is bits to clear.
   (The sign bit is not used so there is no confusion.)  */

struct
{
  const char * name;
  int    value;
  const char * description;
}
target_switches [] = TARGET_SWITCHES;

/* This table is similar, but allows the switch to have a value.  */

#ifdef TARGET_OPTIONS
struct
{
  const char *  prefix;
  const char ** variable;
  const char *  description;
}
target_options [] = TARGET_OPTIONS;
#endif

/* Options controlling warnings */

/* Don't print warning messages.  -w.  */

int inhibit_warnings = 0;

/* Print various extra warnings.  -W.  */

int extra_warnings = 0;

/* Treat warnings as errors.  -Werror.  */

int warnings_are_errors = 0;

/* Nonzero to warn about unused variables, functions et.al.  */

int warn_unused_function;
int warn_unused_label;
int warn_unused_parameter;
int warn_unused_variable;
int warn_unused_value;

void
set_Wunused (setting)
     int setting;
{
  warn_unused_function = setting;
  warn_unused_label = setting;
  /* Unused function parameter warnings are reported when either ``-W
     -Wunused'' or ``-Wunused-parameter'' is specified.  Differentiate
     -Wunused by setting WARN_UNUSED_PARAMETER to -1 */
  if (!setting)
    warn_unused_parameter = 0;
  else if (!warn_unused_parameter)
    warn_unused_parameter = -1;
  warn_unused_variable = setting;
  warn_unused_value = setting;
}

/* Nonzero to warn about code which is never reached.  */

int warn_notreached;

/* Nonzero to warn about variables used before they are initialized.  */

int warn_uninitialized;

/* Nonzero means warn about all declarations which shadow others.   */

int warn_shadow;

/* Warn if a switch on an enum fails to have a case for every enum value.  */

int warn_switch;

/* Nonzero means warn about function definitions that default the return type
   or that use a null return and have a return-type other than void.  */

int warn_return_type;

/* Nonzero means warn about pointer casts that increase the required
   alignment of the target type (and might therefore lead to a crash
   due to a misaligned access).  */

int warn_cast_align;

/* Nonzero means warn about any identifiers that match in the first N
   characters.  The value N is in `id_clash_len'.  */

int warn_id_clash;
int id_clash_len;

/* Nonzero means warn about any objects definitions whose size is larger
   than N bytes.  Also want about function definitions whose returned
   values are larger than N bytes. The value N is in `larger_than_size'.  */
 
int warn_larger_than;
HOST_WIDE_INT larger_than_size;

/* Nonzero means warn if inline function is too large.  */

int warn_inline;

/* Warn if a function returns an aggregate,
   since there are often incompatible calling conventions for doing this.  */

int warn_aggregate_return;

/* Warn if packed attribute on struct is unnecessary and inefficient.  */

int warn_packed;

/* Warn when gcc pads a structure to an alignment boundary.  */

int warn_padded;

/* Likewise for -W.  */

lang_independent_options W_options[] =
{
  {"unused-function", &warn_unused_function, 1, "Warn when a function is unused" },
  {"unused-label", &warn_unused_label, 1, "Warn when a label is unused" },
  {"unused-parameter", &warn_unused_parameter, 1, "Warn when a function parameter is unused" },
  {"unused-variable", &warn_unused_variable, 1, "Warn when a variable is unused" },
  {"unused-value", &warn_unused_value, 1, "Warn when an expression value is unused" },
  {"error", &warnings_are_errors, 1, ""},
  {"shadow", &warn_shadow, 1, "Warn when one local variable shadows another" },
  {"switch", &warn_switch, 1,
   "Warn about enumerated switches missing a specific case" },
  {"aggregate-return", &warn_aggregate_return, 1,
   "Warn about returning structures, unions or arrays" },
  {"cast-align", &warn_cast_align, 1,
   "Warn about pointer casts which increase alignment" },
  {"unreachable-code", &warn_notreached, 1, 
   "Warn about code that will never be executed" },
  {"uninitialized", &warn_uninitialized, 1,
   "Warn about unitialized automatic variables"},
  {"inline", &warn_inline, 1,
   "Warn when an inlined function cannot be inlined"},
  {"packed", &warn_packed, 1,
   "Warn when the packed attribute has no effect on struct layout"},
  {"padded", &warn_padded, 1,
   "Warn when padding is required to align struct members"}
};

/* Output files for assembler code (real compiler output)
   and debugging dumps.  */

FILE *asm_out_file;
FILE *aux_info_file;
FILE *rtl_dump_file = NULL;

/* Decode the string P as an integral parameter.
   If the string is indeed an integer return its numeric value else
   issue an Invalid Option error for the option PNAME and return DEFVAL.
   If PNAME is zero just return DEFVAL, do not call error.               */
   
int
read_integral_parameter (p, pname, defval)
     const char *p;
     const char *pname;
     const int  defval;
{
  const char *endp = p;

  while (*endp)
    {
      if (*endp >= '0' && *endp <= '9')
	endp++;
      else
	break;
    }

  if (*endp != 0)
    {
      if (pname != 0)
	error ("Invalid option `%s'", pname);
      return defval;
    }

  return atoi (p);
}


/* This is the default decl_printable_name function.  */

static const char *
decl_name (decl, verbosity)
     tree decl;
     int verbosity ATTRIBUTE_UNUSED;
{
  return IDENTIFIER_POINTER (DECL_NAME (decl));
}

/* Mark P for GC.  Also mark main_input_filename and input_filename.  */

static void
mark_file_stack (p)
     void *p;
{
  struct file_stack *stack = *(struct file_stack **)p;

  /* We're only called for input_file_stack, so we can mark the current
     input_filename here as well.  */
  ggc_mark_string (main_input_filename);
  ggc_mark_string (input_filename);

  while (stack)
    {
      ggc_mark_string (stack->name);
      stack = stack->next;
    }
}


/* This calls abort and is used to avoid problems when abort if a macro.
   It is used when we need to pass the address of abort.  */

void
do_abort ()
{
  abort ();
}

/* When `malloc.c' is compiled with `rcheck' defined,
   it calls this function to report clobberage.  */

void
botch (s)
  const char * s ATTRIBUTE_UNUSED;
{
  abort ();
}

/* Return the logarithm of X, base 2, considering X unsigned,
   if X is a power of 2.  Otherwise, returns -1.

   This should be used via the `exact_log2' macro.  */

int
exact_log2_wide (x)
     register unsigned HOST_WIDE_INT x;
{
  register int log = 0;
  /* Test for 0 or a power of 2.  */
  if (x == 0 || x != (x & -x))
    return -1;
  while ((x >>= 1) != 0)
    log++;
  return log;
}

/* Given X, an unsigned number, return the largest int Y such that 2**Y <= X.
   If X is 0, return -1.

   This should be used via the floor_log2 macro.  */

int
floor_log2_wide (x)
     register unsigned HOST_WIDE_INT x;
{
  register int log = -1;
  while (x != 0)
    log++,
    x >>= 1;
  return log;
}

static int float_handler_set;
int float_handled;
jmp_buf float_handler;

/* Signals actually come here.  */

static void
float_signal (signo)
     /* If this is missing, some compilers complain.  */
     int signo ATTRIBUTE_UNUSED;
{
  if (float_handled == 0)
    abort ();
#if defined (USG) || defined (hpux)
  signal (SIGFPE, float_signal);  /* re-enable the signal catcher */
#endif
  float_handled = 0;
  signal (SIGFPE, float_signal);
  longjmp (float_handler, 1);
}

/* Specify where to longjmp to when a floating arithmetic error happens.
   If HANDLER is 0, it means don't handle the errors any more.  */

void
set_float_handler (handler)
     jmp_buf handler;
{
  float_handled = (handler != 0);
  if (handler)
    bcopy ((char *) handler, (char *) float_handler, sizeof (float_handler));

  if (float_handled && ! float_handler_set)
    {
      signal (SIGFPE, float_signal);
      float_handler_set = 1;
    }
}

/* This is a wrapper function for code which might elicit an
   arithmetic exception.  That code should be passed in as a function
   pointer FN, and one argument DATA.  DATA is usually a struct which
   contains the real input and output for function FN.  This function
   returns 0 (failure) if longjmp was called (i.e. an exception
   occured.)  It returns 1 (success) otherwise. */

int
do_float_handler (fn, data)
  void (*fn) PARAMS ((PTR));
  PTR data;
{
  jmp_buf buf;

  if (setjmp (buf))
    {
      /* We got here via longjmp() caused by an exception in function fn() */
      set_float_handler (NULL);
      return 0;
    }

  set_float_handler (buf);
  (*fn)(data);
  set_float_handler (NULL);
  return 1;
}

/* Specify, in HANDLER, where to longjmp to when a floating arithmetic
   error happens, pushing the previous specification into OLD_HANDLER.
   Return an indication of whether there was a previous handler in effect.  */

int
push_float_handler (handler, old_handler)
     jmp_buf handler, old_handler;
{
  int was_handled = float_handled;

  float_handled = 1;
  if (was_handled)
    memcpy ((char *) old_handler, (char *) float_handler,
	   sizeof (float_handler));

  memcpy ((char *) float_handler, (char *) handler, sizeof (float_handler));
  return was_handled;
}

/* Restore the previous specification of whether and where to longjmp to
   when a floating arithmetic error happens.  */

void
pop_float_handler (handled, handler)
     int handled;
     jmp_buf handler;
{
  float_handled = handled;
  if (handled)
    bcopy ((char *) handler, (char *) float_handler, sizeof (float_handler));
}

/* Handler for SIGPIPE.  */

static void
pipe_closed (signo)
     /* If this is missing, some compilers complain.  */
     int signo ATTRIBUTE_UNUSED;
{
  fatal ("output pipe has been closed");
}

/* Strip off a legitimate source ending from the input string NAME of
   length LEN.  Rather than having to know the names used by all of
   our front ends, we strip off an ending of a period followed by
   up to five characters.  (Java uses ".class".) */

void
strip_off_ending (name, len)
     char *name;
     int len;
{
  int i;
  for (i = 2;  i < 6 && len > i;  i++)
    {
      if (name[len - i] == '.')
	{
	  name[len - i] = '\0';
	  break;
	}
    }
}

/* Output a quoted string.  */

void
output_quoted_string (asm_file, string)
     FILE *asm_file;
     const char *string;
{
#ifdef OUTPUT_QUOTED_STRING
  OUTPUT_QUOTED_STRING (asm_file, string);
#else
  char c;

  putc ('\"', asm_file);
  while ((c = *string++) != 0)
    {
      if (c == '\"' || c == '\\')
	putc ('\\', asm_file);
      putc (c, asm_file);
    }
  putc ('\"', asm_file);
#endif
}

/* Output a file name in the form wanted by System V.  */

void
output_file_directive (asm_file, input_name)
     FILE *asm_file;
     const char *input_name;
{
  int len = strlen (input_name);
  const char *na = input_name + len;

  /* NA gets INPUT_NAME sans directory names.  */
  while (na > input_name)
    {
      if (IS_DIR_SEPARATOR (na[-1]))
        break;
      na--;
    }

#ifdef ASM_OUTPUT_MAIN_SOURCE_FILENAME
  ASM_OUTPUT_MAIN_SOURCE_FILENAME (asm_file, na);
#else
#ifdef ASM_OUTPUT_SOURCE_FILENAME
  ASM_OUTPUT_SOURCE_FILENAME (asm_file, na);
#else
  fprintf (asm_file, "\t.file\t");
  output_quoted_string (asm_file, na);
  fputc ('\n', asm_file);
#endif
#endif
}

#ifdef ASM_IDENTIFY_LANGUAGE
/* Routine to build language identifier for object file.  */
static void
output_lang_identify (asm_out_file)
     FILE *asm_out_file;
{
  int len = strlen (lang_identify ()) + sizeof ("__gnu_compiled_") + 1;
  char *s = (char *) alloca (len);
  sprintf (s, "__gnu_compiled_%s", lang_identify ());
  ASM_OUTPUT_LABEL (asm_out_file, s);
}
#endif

/* Routine to open a dump file.  Return true if the dump file is enabled.  */

static int
open_dump_file (index, decl)
     enum dump_file_index index;
     tree decl;
{
  char *dump_name;
  const char *open_arg;
  char seq[16];

  if (! dump_file[index].enabled)
    return 0;

  timevar_push (TV_DUMP);
  if (rtl_dump_file != NULL)
    fclose (rtl_dump_file);
  
  sprintf (seq, ".%02d.", index);

  if (! dump_file[index].initialized)
    {
      /* If we've not initialized the files, do so now.  */
      if (graph_dump_format != no_graph
	  && dump_file[index].graph_dump_p)
	{
	  dump_name = concat (seq, dump_file[index].extension, NULL);
	  clean_graph_dump_file (dump_base_name, dump_name);
	  free (dump_name);
	}
      dump_file[index].initialized = 1;
      open_arg = "w";
    }
  else
    open_arg = "a";

  dump_name = concat (dump_base_name, seq,
		      dump_file[index].extension, NULL);

  rtl_dump_file = fopen (dump_name, open_arg);
  if (rtl_dump_file == NULL)
    pfatal_with_name (dump_name);
       
  free (dump_name);

  if (decl)
    fprintf (rtl_dump_file, "\n;; Function %s\n\n",
	     decl_printable_name (decl, 2));

  timevar_pop (TV_DUMP);
  return 1;
}

/* Routine to close a dump file.  */

static void
close_dump_file (index, func, insns)
     enum dump_file_index index;
     void (*func) PARAMS ((FILE *, rtx));
     rtx    insns;
{
  if (! rtl_dump_file)
    return;

  timevar_push (TV_DUMP);
  if (insns
      && graph_dump_format != no_graph
      && dump_file[index].graph_dump_p)
    {
      char seq[16];
      char *suffix;

      sprintf (seq, ".%02d.", index);
      suffix = concat (seq, dump_file[index].extension, NULL);
      print_rtl_graph_with_bb (dump_base_name, suffix, insns);
      free (suffix);
    }

  if (func && insns)
    func (rtl_dump_file, insns);
       
  fflush (rtl_dump_file);
  fclose (rtl_dump_file);
       
  rtl_dump_file = NULL;
  timevar_pop (TV_DUMP);
}

/* Do any final processing required for the declarations in VEC, of
   which there are LEN.  We write out inline functions and variables
   that have been deferred until this point, but which are required.
   Returns non-zero if anything was put out.  */ 
int
wrapup_global_declarations (vec, len)
     tree *vec;
     int len;
{
  tree decl;
  int i;
  int reconsider;
  int output_something = 0;

  for (i = 0; i < len; i++)
    {
      decl = vec[i];
      
      /* We're not deferring this any longer.  */
      DECL_DEFER_OUTPUT (decl) = 0;
      
      if (TREE_CODE (decl) == VAR_DECL && DECL_SIZE (decl) == 0
	  && incomplete_decl_finalize_hook != 0)
	(*incomplete_decl_finalize_hook) (decl);
    }

  /* Now emit any global variables or functions that we have been
     putting off.  We need to loop in case one of the things emitted
     here references another one which comes earlier in the list.  */
  do
    {
      reconsider = 0;
      for (i = 0; i < len; i++)
	{
	  decl = vec[i];

	  if (TREE_ASM_WRITTEN (decl) || DECL_EXTERNAL (decl))
	    continue;

	  /* Don't write out static consts, unless we still need them.

	     We also keep static consts if not optimizing (for debugging),
	     unless the user specified -fno-keep-static-consts.
	     ??? They might be better written into the debug information.
	     This is possible when using DWARF.

	     A language processor that wants static constants to be always
	     written out (even if it is not used) is responsible for
	     calling rest_of_decl_compilation itself.  E.g. the C front-end
	     calls rest_of_decl_compilation from finish_decl.
	     One motivation for this is that is conventional in some
	     environments to write things like:
	     static const char rcsid[] = "... version string ...";
	     intending to force the string to be in the executable.

	     A language processor that would prefer to have unneeded
	     static constants "optimized away" would just defer writing
	     them out until here.  E.g. C++ does this, because static
	     constants are often defined in header files.

	     ??? A tempting alternative (for both C and C++) would be
	     to force a constant to be written if and only if it is
	     defined in a main file, as opposed to an include file.  */

	  if (TREE_CODE (decl) == VAR_DECL && TREE_STATIC (decl)
	      && (! TREE_READONLY (decl)
		  || TREE_PUBLIC (decl)
		  || (!optimize && flag_keep_static_consts)
		  || TREE_SYMBOL_REFERENCED (DECL_ASSEMBLER_NAME (decl))))
	    {
	      reconsider = 1;
	      rest_of_decl_compilation (decl, NULL_PTR, 1, 1);
	    }

	  if (TREE_CODE (decl) == FUNCTION_DECL
	      && DECL_INITIAL (decl) != 0
	      && DECL_SAVED_INSNS (decl) != 0
	      && (flag_keep_inline_functions
		  || (TREE_PUBLIC (decl) && !DECL_COMDAT (decl))
		  || TREE_SYMBOL_REFERENCED (DECL_ASSEMBLER_NAME (decl))))
	    {
	      reconsider = 1;
	      temporary_allocation ();
	      output_inline_function (decl);
	      permanent_allocation (1);
	    }
	}

      if (reconsider)
	output_something = 1;
    }
  while (reconsider);

  return output_something;
}

/* Issue appropriate warnings for the global declarations in VEC (of
   which there are LEN).  Output debugging information for them.  */
void
check_global_declarations (vec, len)
     tree *vec;
     int len;
{
  tree decl;
  int i;

  for (i = 0; i < len; i++)
    {
      decl = vec[i];

      if (TREE_CODE (decl) == VAR_DECL && TREE_STATIC (decl)
	  && ! TREE_ASM_WRITTEN (decl))
	/* Cancel the RTL for this decl so that, if debugging info
	   output for global variables is still to come,
	   this one will be omitted.  */
	DECL_RTL (decl) = NULL;

      /* Warn about any function
	 declared static but not defined.
	 We don't warn about variables,
	 because many programs have static variables
	 that exist only to get some text into the object file.  */
      if (TREE_CODE (decl) == FUNCTION_DECL
	  && (warn_unused_function
	      || TREE_SYMBOL_REFERENCED (DECL_ASSEMBLER_NAME (decl)))
	  && DECL_INITIAL (decl) == 0
	  && DECL_EXTERNAL (decl)
	  && ! DECL_ARTIFICIAL (decl)
	  && ! TREE_PUBLIC (decl))
	{
	  if (TREE_SYMBOL_REFERENCED (DECL_ASSEMBLER_NAME (decl)))
	    pedwarn_with_decl (decl,
			       "`%s' used but never defined");
	  else
	    warning_with_decl (decl,
			       "`%s' declared `static' but never defined");
	  /* This symbol is effectively an "extern" declaration now.  */
	  TREE_PUBLIC (decl) = 1;
	  assemble_external (decl);
	}

      /* Warn about static fns or vars defined but not used,
	 but not about inline functions or static consts
	 since defining those in header files is normal practice.  */
      if (((warn_unused_function
	    && TREE_CODE (decl) == FUNCTION_DECL && ! DECL_INLINE (decl))
	   || (warn_unused_variable
	       && TREE_CODE (decl) == VAR_DECL && ! TREE_READONLY (decl)))
	  && ! DECL_IN_SYSTEM_HEADER (decl)
	  && ! DECL_EXTERNAL (decl)
	  && ! TREE_PUBLIC (decl)
	  && ! TREE_USED (decl)
	  && (TREE_CODE (decl) == FUNCTION_DECL || ! DECL_REGISTER (decl))
	  /* The TREE_USED bit for file-scope decls
	     is kept in the identifier, to handle multiple
	     external decls in different scopes.  */
	  && ! TREE_USED (DECL_NAME (decl)))
	warning_with_decl (decl, "`%s' defined but not used");

      timevar_push (TV_SYMOUT);
#ifdef SDB_DEBUGGING_INFO
      /* The COFF linker can move initialized global vars to the end.
	 And that can screw up the symbol ordering.
	 By putting the symbols in that order to begin with,
	 we avoid a problem.  mcsun!unido!fauern!tumuc!pes@uunet.uu.net.  */
      if (write_symbols == SDB_DEBUG && TREE_CODE (decl) == VAR_DECL
	  && TREE_PUBLIC (decl) && DECL_INITIAL (decl)
	  && ! DECL_EXTERNAL (decl)
	  && DECL_RTL (decl) != 0)
	sdbout_symbol (decl, 0);

      /* Output COFF information for non-global
	 file-scope initialized variables.  */
      if (write_symbols == SDB_DEBUG
	  && TREE_CODE (decl) == VAR_DECL
	  && DECL_INITIAL (decl)
	  && ! DECL_EXTERNAL (decl)
	  && DECL_RTL (decl) != 0
	  && GET_CODE (DECL_RTL (decl)) == MEM)
	sdbout_toplevel_data (decl);
#endif /* SDB_DEBUGGING_INFO */
#ifdef DWARF_DEBUGGING_INFO
      /* Output DWARF information for file-scope tentative data object
	 declarations, file-scope (extern) function declarations (which
	 had no corresponding body) and file-scope tagged type declarations
	 and definitions which have not yet been forced out.  */

      if (write_symbols == DWARF_DEBUG
	  && (TREE_CODE (decl) != FUNCTION_DECL || !DECL_INITIAL (decl)))
	dwarfout_file_scope_decl (decl, 1);
#endif
#ifdef DWARF2_DEBUGGING_INFO
      /* Output DWARF2 information for file-scope tentative data object
	 declarations, file-scope (extern) function declarations (which
	 had no corresponding body) and file-scope tagged type declarations
	 and definitions which have not yet been forced out.  */

      if (write_symbols == DWARF2_DEBUG
	  && (TREE_CODE (decl) != FUNCTION_DECL || !DECL_INITIAL (decl)))
	dwarf2out_decl (decl);
#endif
      timevar_pop (TV_SYMOUT);
    }
}

/* Save the current INPUT_FILENAME and LINENO on the top entry in the
   INPUT_FILE_STACK.  Push a new entry for FILE and LINE, and set the
   INPUT_FILENAME and LINENO accordingly.  */

void
push_srcloc (file, line)
     const char *file;
     int line;
{
  struct file_stack *fs;

  if (input_file_stack)
    {
      input_file_stack->name = input_filename;
      input_file_stack->line = lineno;
    }

  fs = (struct file_stack *) xmalloc (sizeof (struct file_stack));
  fs->name = input_filename = file;
  fs->line = lineno = line;
  fs->indent_level = 0;
  fs->next = input_file_stack;
  input_file_stack = fs;
  input_file_stack_tick++;
}

/* Pop the top entry off the stack of presently open source files.
   Restore the INPUT_FILENAME and LINENO from the new topmost entry on
   the stack.  */

void
pop_srcloc ()
{
  struct file_stack *fs;
  
  fs = input_file_stack;
  input_file_stack = fs->next;
  free (fs);
  input_file_stack_tick++;
  /* The initial souce file is never popped.  */
  if (!input_file_stack)
    abort ();
  input_filename = input_file_stack->name;
  lineno = input_file_stack->line;
}

/* Compile an entire file of output from cpp, named NAME.
   Write a file of assembly output and various debugging dumps.  */
#ifndef SGI_MONGOOSE
static
#endif /* SGI_MONGOOSE */
void
compile_file (name)
     const char *name;
{
  tree globals;

  int name_specified = name != 0;

  if (dump_base_name == 0)
    dump_base_name = name ? name : "gccdump";

  /* Start timing total execution time.  */

  init_timevar ();
  timevar_start (TV_TOTAL);
  
  /* Initialize data in various passes.  */

  init_obstacks ();
  init_tree_codes ();
  name = init_parse (name);
  init_emit_once (debug_info_level == DINFO_LEVEL_NORMAL
		  || debug_info_level == DINFO_LEVEL_VERBOSE
		  || flag_test_coverage
		  || warn_notreached);
  init_regs ();
  init_alias_once ();
  init_decl_processing ();
  init_optabs ();
  init_stmt ();
  init_eh ();
  init_loop ();
  init_reload ();
  init_function_once ();
  init_stor_layout_once ();
  init_varasm_once ();

  /* The following initialization functions need to generate rtl, so
     provide a dummy function context for them.  */
  init_dummy_function_start ();
  init_expmed ();
  init_expr_once ();
  if (flag_caller_saves)
    init_caller_save ();
  expand_dummy_function_end ();

  /* If auxiliary info generation is desired, open the output file.
     This goes in the same directory as the source file--unlike
     all the other output files.  */
  if (flag_gen_aux_info)
    {
      aux_info_file = fopen (aux_info_file_name, "w");
      if (aux_info_file == 0)
	pfatal_with_name (aux_info_file_name);
    }

  /* Open assembler code output file.  */

  if (flag_syntax_only)
    asm_out_file = NULL;
  else
    {
      if (! name_specified && asm_file_name == 0)
	asm_out_file = stdout;
      else
	{
	  if (asm_file_name == 0)
	    {
	      int len = strlen (dump_base_name);
	      char *dumpname = (char *) xmalloc (len + 6);
	      memcpy (dumpname, dump_base_name, len + 1);
	      strip_off_ending (dumpname, len);
	      strcat (dumpname, ".s");
	      asm_file_name = dumpname;
	    }
	  if (!strcmp (asm_file_name, "-"))
	    asm_out_file = stdout;
	  else
	    asm_out_file = fopen (asm_file_name, "w");
	  if (asm_out_file == 0)
	    pfatal_with_name (asm_file_name);
	}

#ifdef IO_BUFFER_SIZE
      setvbuf (asm_out_file, (char *) xmalloc (IO_BUFFER_SIZE),
	       _IOFBF, IO_BUFFER_SIZE);
#endif
    }

  if (ggc_p && name != 0)
    name = ggc_alloc_string (name, strlen (name));

  input_filename = name;

  /* Put an entry on the input file stack for the main input file.  */
  push_srcloc (input_filename, 0);

  /* Perform language-specific initialization.
     This may set main_input_filename.  */
  lang_init ();

  /* If the input doesn't start with a #line, use the input name
     as the official input file name.  */
  if (main_input_filename == 0)
    main_input_filename = name;

  if (flag_syntax_only)
    {
      write_symbols = NO_DEBUG;
      profile_flag = 0;
      profile_block_flag = 0;
    }
  else
    {
      ASM_FILE_START (asm_out_file);

#ifdef ASM_COMMENT_START
      if (flag_verbose_asm)
	{
	  /* Print the list of options in effect.  */
	  print_version (asm_out_file, ASM_COMMENT_START);
	  print_switch_values (asm_out_file, 0, MAX_LINE,
			       ASM_COMMENT_START, " ", "\n");
	  /* Add a blank line here so it appears in assembler output but not
	     screen output.  */
	  fprintf (asm_out_file, "\n");
	}
#endif

      /* Output something to inform GDB that this compilation was by GCC.  */
#ifndef ASM_IDENTIFY_GCC
      fprintf (asm_out_file, "gcc2_compiled.:\n");
#else
      ASM_IDENTIFY_GCC (asm_out_file);
#endif

  /* Output something to identify which front-end produced this file.  */
#ifdef ASM_IDENTIFY_LANGUAGE
      ASM_IDENTIFY_LANGUAGE (asm_out_file);
#endif
    } /* ! flag_syntax_only */

#ifndef ASM_OUTPUT_SECTION_NAME
  if (flag_function_sections)
    {
      warning ("-ffunction-sections not supported for this target.");
      flag_function_sections = 0;
    }
  if (flag_data_sections)
    {
      warning ("-fdata-sections not supported for this target.");
      flag_data_sections = 0;
    }
#endif

  if (flag_function_sections
      && (profile_flag || profile_block_flag))
    {
      warning ("-ffunction-sections disabled; it makes profiling impossible.");
      flag_function_sections = 0;
    }

#ifndef OBJECT_FORMAT_ELF
  if (flag_function_sections && write_symbols != NO_DEBUG)
    warning ("-ffunction-sections may affect debugging on some targets.");
#endif

  /* ??? Note: There used to be a conditional here
      to call assemble_zeros without fail if DBX_DEBUGGING_INFO is defined.
      This was to guarantee separation between gcc_compiled. and
      the first function, for the sake of dbx on Suns.
      However, having the extra zero here confused the Emacs
      code for unexec, and might confuse other programs too.
      Therefore, I took out that change.
      In future versions we should find another way to solve
      that dbx problem.  -- rms, 23 May 93.  */
      
  /* Don't let the first function fall at the same address
     as gcc_compiled., if profiling.  */
  if (profile_flag || profile_block_flag)
    {
      /* It's best if we can write a nop here since some
	 assemblers don't tolerate zeros in the text section.  */
      output_asm_insn (get_insn_template (CODE_FOR_nop, NULL), NULL_PTR);
    }

  /* If dbx symbol table desired, initialize writing it
     and output the predefined types.  */
  timevar_push (TV_SYMOUT);
#if defined (DBX_DEBUGGING_INFO) || defined (XCOFF_DEBUGGING_INFO)
  if (write_symbols == DBX_DEBUG || write_symbols == XCOFF_DEBUG)
    dbxout_init (asm_out_file, main_input_filename, getdecls ());
#endif
#ifdef SDB_DEBUGGING_INFO
  if (write_symbols == SDB_DEBUG)
    sdbout_init (asm_out_file, main_input_filename, getdecls ());
#endif
#ifdef DWARF_DEBUGGING_INFO
  if (write_symbols == DWARF_DEBUG)
    dwarfout_init (asm_out_file, main_input_filename);
#endif
#ifdef DWARF2_UNWIND_INFO
  if (dwarf2out_do_frame ())
    dwarf2out_frame_init ();
#endif
#ifdef DWARF2_DEBUGGING_INFO
  if (write_symbols == DWARF2_DEBUG)
    dwarf2out_init (asm_out_file, main_input_filename);
#endif
  timevar_pop (TV_SYMOUT);

  /* Initialize yet another pass.  */

  init_final (main_input_filename);
  init_branch_prob (dump_base_name);

  timevar_push (TV_PARSE);

  /* Call the parser, which parses the entire file
     (calling rest_of_compilation for each function).  */

  if (yyparse () != 0)
    {
      if (errorcount == 0)
	fnotice (stderr, "Errors detected in input file (your bison.simple is out of date)\n");

      /* In case there were missing closebraces,
	 get us back to the global binding level.  */
      while (! global_bindings_p ())
	poplevel (0, 0, 0);
    }

  /* Compilation is now finished except for writing
     what's left of the symbol table output.  */

  timevar_pop (TV_PARSE);

  if (flag_syntax_only)
#ifdef SGI_MONGOOSE
  {
    weak_finish ();
    goto finish_syntax;
  }
#else
    goto finish_syntax;
#endif /* SGI_MONGOOSE */

  globals = getdecls ();

  /* Really define vars that have had only a tentative definition.
     Really output inline functions that must actually be callable
     and have not been output so far.  */

  {
    int len = list_length (globals);
    tree *vec = (tree *) xmalloc (sizeof (tree) * len);
    int i;
    tree decl;

    /* Process the decls in reverse order--earliest first.
       Put them into VEC from back to front, then take out from front.  */

    for (i = 0, decl = globals; i < len; i++, decl = TREE_CHAIN (decl))
      vec[len - i - 1] = decl;

    wrapup_global_declarations (vec, len);

    /* This must occur after the loop to output deferred functions.  Else
       the profiler initializer would not be emitted if all the functions
       in this compilation unit were deferred.

       output_func_start_profiler can not cause any additional functions or
       data to need to be output, so it need not be in the deferred function
       loop above.  */
    output_func_start_profiler ();

    /* Now that all possible functions have been output, we can dump
       the exception table.  */

#ifndef IA64_UNWIND_INFO
    output_exception_table ();
#endif
    free_exception_table ();
    
    check_global_declarations (vec, len);

    /* Clean up.  */
    free (vec);
  }

  /* Write out any pending weak symbol declarations.  */

  weak_finish ();

  /* Do dbx symbols */
  timevar_push (TV_SYMOUT);
#if defined (DBX_DEBUGGING_INFO) || defined (XCOFF_DEBUGGING_INFO)
  if (write_symbols == DBX_DEBUG || write_symbols == XCOFF_DEBUG)
    dbxout_finish (asm_out_file, main_input_filename);
#endif

#ifdef DWARF_DEBUGGING_INFO
  if (write_symbols == DWARF_DEBUG)
    dwarfout_finish ();
#endif

#ifdef DWARF2_UNWIND_INFO
  if (dwarf2out_do_frame ())
    dwarf2out_frame_finish ();
#endif

#ifdef DWARF2_DEBUGGING_INFO
  if (write_symbols == DWARF2_DEBUG)
    dwarf2out_finish ();
#endif
  timevar_pop (TV_SYMOUT);

  /* Output some stuff at end of file if nec.  */

  end_final (dump_base_name);
   
  if (profile_arc_flag || flag_test_coverage || flag_branch_probabilities)
    {
      timevar_push (TV_DUMP);
      open_dump_file (DFI_bp, NULL);

      end_branch_prob ();

      close_dump_file (DFI_bp, NULL, NULL_RTX);
      timevar_pop (TV_DUMP);
    }
   
#ifdef ASM_FILE_END
  ASM_FILE_END (asm_out_file);
#endif

  /* Language-specific end of compilation actions.  */
 finish_syntax:
  lang_finish ();

  /* Close the dump files.  */

  if (flag_gen_aux_info)
    {
      fclose (aux_info_file);
      if (errorcount)
	unlink (aux_info_file_name);
    }

  if (optimize > 0 && open_dump_file (DFI_combine, NULL))
    {
      timevar_push (TV_DUMP);
      dump_combine_total_stats (rtl_dump_file);
      close_dump_file (DFI_combine, NULL, NULL_RTX);
      timevar_pop (TV_DUMP);
    }

  /* Close non-debugging input and output files.  Take special care to note
     whether fclose returns an error, since the pages might still be on the
     buffer chain while the file is open.  */

  finish_parse ();

  if (! flag_syntax_only
      && (ferror (asm_out_file) != 0 || fclose (asm_out_file) != 0))
    fatal_io_error (asm_file_name);

  /* Do whatever is necessary to finish printing the graphs.  */
  if (graph_dump_format != no_graph)
    {
      int i;

      for (i = 0; i < DFI_MAX; ++i)
	if (dump_file[i].initialized && dump_file[i].graph_dump_p)
	  {
	    char seq[16];
	    char *suffix;

	    sprintf (seq, ".%02d.", i);
	    suffix = concat (seq, dump_file[i].extension, NULL);
	    finish_graph_dump_file (dump_base_name, suffix);
	    free (suffix);
	  }
    }

  /* Free up memory for the benefit of leak detectors.  */
  free_reg_info ();

  /* Stop timing total execution time.  */
  timevar_stop (TV_TOTAL);

  /* Print the times.  */

  if (! quiet_flag)
    timevar_print (stderr);
}

/* This is called from various places for FUNCTION_DECL, VAR_DECL,
   and TYPE_DECL nodes.

   This does nothing for local (non-static) variables, unless the
   variable is a register variable with an ASMSPEC.  In that case, or
   if the variable is not an automatice, it sets up the RTL and
   outputs any assembler code (label definition, storage allocation
   and initialization).

   DECL is the declaration.  If ASMSPEC is nonzero, it specifies
   the assembler symbol name to be used.  TOP_LEVEL is nonzero
   if this declaration is not within a function.  */

void
rest_of_decl_compilation (decl, asmspec, top_level, at_end)
     tree decl;
     const char *asmspec;
     int top_level;
     int at_end;
{
  /* Declarations of variables, and of functions defined elsewhere.  */

/* The most obvious approach, to put an #ifndef around where
   this macro is used, doesn't work since it's inside a macro call.  */
#ifndef ASM_FINISH_DECLARE_OBJECT
#define ASM_FINISH_DECLARE_OBJECT(FILE, DECL, TOP, END)
#endif

  /* Forward declarations for nested functions are not "external",
     but we need to treat them as if they were.  */
  if (TREE_STATIC (decl) || DECL_EXTERNAL (decl)
      || TREE_CODE (decl) == FUNCTION_DECL)
    {
      timevar_push (TV_VARCONST);
      make_decl_rtl (decl, asmspec, top_level);
      /* Initialized extern variable exists to be replaced
	 with its value, or represents something that will be
	 output in another file.  */
      if (! (TREE_CODE (decl) == VAR_DECL
	     && DECL_EXTERNAL (decl) && TREE_READONLY (decl)
	     && DECL_INITIAL (decl) != 0
	     && DECL_INITIAL (decl) != error_mark_node))
	/* Don't output anything
	     when a tentative file-scope definition is seen.
	     But at end of compilation, do output code for them.  */
	if (! (! at_end && top_level
	       && (DECL_INITIAL (decl) == 0
		   || DECL_INITIAL (decl) == error_mark_node)))
	  assemble_variable (decl, top_level, at_end, 0);
      if (decl == last_assemble_variable_decl)
	{
	  ASM_FINISH_DECLARE_OBJECT (asm_out_file, decl,
				     top_level, at_end);
	}
      timevar_pop (TV_VARCONST);
    }
  else if (DECL_REGISTER (decl) && asmspec != 0)
    {
      if (decode_reg_name (asmspec) >= 0)
	{
	  DECL_RTL (decl) = 0;
	  make_decl_rtl (decl, asmspec, top_level);
	}
      else
	error ("invalid register name `%s' for register variable", asmspec);
    }
#if defined (DBX_DEBUGGING_INFO) || defined (XCOFF_DEBUGGING_INFO)
  else if ((write_symbols == DBX_DEBUG || write_symbols == XCOFF_DEBUG)
	   && TREE_CODE (decl) == TYPE_DECL)
    {
      timevar_push (TV_SYMOUT);
      dbxout_symbol (decl, 0);
      timevar_pop (TV_SYMOUT);
    }
#endif
#ifdef SDB_DEBUGGING_INFO
  else if (write_symbols == SDB_DEBUG && top_level
	   && TREE_CODE (decl) == TYPE_DECL)
    {
      timevar_push (TV_SYMOUT);
      sdbout_symbol (decl, 0);
      timevar_pop (TV_SYMOUT);
    }
#endif
}

/* Called after finishing a record, union or enumeral type.  */

void
rest_of_type_compilation (type, toplev)
#if defined(DBX_DEBUGGING_INFO) || defined(XCOFF_DEBUGGING_INFO) || defined (SDB_DEBUGGING_INFO)
     tree type;
     int toplev;
#else
     tree type ATTRIBUTE_UNUSED;
     int toplev ATTRIBUTE_UNUSED;
#endif
{
  timevar_push (TV_SYMOUT);
#if defined (DBX_DEBUGGING_INFO) || defined (XCOFF_DEBUGGING_INFO)
  if (write_symbols == DBX_DEBUG || write_symbols == XCOFF_DEBUG)
    dbxout_symbol (TYPE_STUB_DECL (type), !toplev);
#endif
#ifdef SDB_DEBUGGING_INFO
  if (write_symbols == SDB_DEBUG)
    sdbout_symbol (TYPE_STUB_DECL (type), !toplev);
#endif
  timevar_pop (TV_SYMOUT);
}

/* DECL is an inline function, whose body is present, but which is not
   being output at this point.  (We're putting that off until we need
   to do it.)  If there are any actions that need to take place,
   including the emission of debugging information for the function,
   this is where they should go.  This function may be called by
   language-dependent code for front-ends that do not even generate
   RTL for functions that don't need to be put out.  */

void
note_deferral_of_defined_inline_function (decl)
     tree decl ATTRIBUTE_UNUSED;
{
#ifdef DWARF_DEBUGGING_INFO
  /* Generate the DWARF info for the "abstract" instance of a function
     which we may later generate inlined and/or out-of-line instances
     of.  */
  if (write_symbols == DWARF_DEBUG && DECL_INLINE (decl))
    {
      /* The front-end may not have set CURRENT_FUNCTION_DECL, but the
	 DWARF code expects it to be set in this case.  Intuitively,
	 DECL is the function we just finished defining, so setting
	 CURRENT_FUNCTION_DECL is sensible.  */
      tree saved_cfd = current_function_decl;
      current_function_decl = decl;

      /* Let the DWARF code do its work.  */
      set_decl_abstract_flags (decl, 1);
      dwarfout_file_scope_decl (decl, 0);
      set_decl_abstract_flags (decl, 0);

      /* Reset CURRENT_FUNCTION_DECL.  */
      current_function_decl = saved_cfd;
    }
#endif
}

/* This is called from finish_function (within yyparse)
   after each top-level definition is parsed.
   It is supposed to compile that function or variable
   and output the assembler code for it.
   After we return, the tree storage is freed.  */

void
rest_of_compilation (decl)
     tree decl;
{
  register rtx insns;
  int tem;
  int failure = 0;
  int rebuild_label_notes_after_reload;
  int register_life_up_to_date;

  timevar_push (TV_REST_OF_COMPILATION);

  /* When processing delayed functions, prepare_function_start() won't
     have been run to re-initialize it.  */
  cse_not_expected = ! optimize;

  /* First, make sure that NOTE_BLOCK is set correctly for each
     NOTE_INSN_BLOCK_BEG/NOTE_INSN_BLOCK_END note.  */
  if (!cfun->x_whole_function_mode_p)
    identify_blocks ();

  /* Then remove any notes we don't need.  That will make iterating
     over the instruction sequence faster, and allow the garbage
     collector to reclaim the memory used by the notes.  */
  remove_unnecessary_notes ();

  /* In function-at-a-time mode, we do not attempt to keep the BLOCK
     tree in sensible shape.  So, we just recalculate it here.  */
  if (cfun->x_whole_function_mode_p)
    reorder_blocks ();

  /* If we are reconsidering an inline function
     at the end of compilation, skip the stuff for making it inline.  */

  if (DECL_SAVED_INSNS (decl) == 0)
    {
      int inlinable = 0;
      tree parent;
      const char *lose;

      /* If this is nested inside an inlined external function, pretend
	 it was only declared.  Since we cannot inline such functions,
	 generating code for this one is not only not necessary but will
	 confuse some debugging output writers.  */
      for (parent = DECL_CONTEXT (current_function_decl);
	   parent != NULL_TREE; 
	   parent = get_containing_scope (parent))
	if (TREE_CODE (parent) == FUNCTION_DECL
	    && DECL_INLINE (parent) && DECL_EXTERNAL (parent))
	  {
	    DECL_INITIAL (decl) = 0;
	    goto exit_rest_of_compilation;
	  }

      /* If requested, consider whether to make this function inline.  */
      if (DECL_INLINE (decl) || flag_inline_functions)
	{
	  timevar_push (TV_INTEGRATION);
	  lose = function_cannot_inline_p (decl);
	  timevar_pop (TV_INTEGRATION);
	  if (lose || ! optimize)
	    {
	      if (warn_inline && DECL_INLINE (decl))
		warning_with_decl (decl, lose);
	      DECL_ABSTRACT_ORIGIN (decl) = 0;
	      /* Don't really compile an extern inline function.
		 If we can't make it inline, pretend
		 it was only declared.  */
	      if (DECL_EXTERNAL (decl))
		{
		  DECL_INITIAL (decl) = 0;
		  goto exit_rest_of_compilation;
		}
	    }
	  else
	    /* ??? Note that this has the effect of making it look
		 like "inline" was specified for a function if we choose
		 to inline it.  This isn't quite right, but it's
		 probably not worth the trouble to fix.  */
	    inlinable = DECL_INLINE (decl) = 1;
	}

      insns = get_insns ();

      /* Dump the rtl code if we are dumping rtl.  */

      if (open_dump_file (DFI_rtl, decl))
	{
	  if (DECL_SAVED_INSNS (decl))
	    fprintf (rtl_dump_file, ";; (integrable)\n\n");
	  close_dump_file (DFI_rtl, print_rtl, insns);
	}

      /* If function is inline, and we don't yet know whether to
	 compile it by itself, defer decision till end of compilation.
	 finish_compilation will call rest_of_compilation again
	 for those functions that need to be output.  Also defer those
	 functions that we are supposed to defer.  */

      if (inlinable
	  || (DECL_INLINE (decl)
	      && ((! TREE_PUBLIC (decl) && ! TREE_ADDRESSABLE (decl)
		   && ! flag_keep_inline_functions)
		  || DECL_EXTERNAL (decl))))
	DECL_DEFER_OUTPUT (decl) = 1;

      if (DECL_INLINE (decl))
	/* DWARF wants seperate debugging info for abstract and
	   concrete instances of all inline functions, including those
	   declared inline but not inlined, and those inlined even
	   though they weren't declared inline.  Conveniently, that's
	   what DECL_INLINE means at this point.  */
	note_deferral_of_defined_inline_function (decl);

      if (DECL_DEFER_OUTPUT (decl))
	{
	  /* If -Wreturn-type, we have to do a bit of compilation.
	     However, if we just fall through we will call
	     save_for_inline_copying() which results in excessive
	     memory use.  Instead, we just want to call
	     jump_optimize() to figure out whether or not we can fall
	     off the end of the function; we do the minimum amount of
	     work necessary to make that safe.  And, we set optimize
	     to zero to keep jump_optimize from working too hard.  */
	  if (warn_return_type)
	    {
	      int saved_optimize = optimize;
	      optimize = 0;
	      find_exception_handler_labels ();
	      jump_optimize (insns, !JUMP_CROSS_JUMP, !JUMP_NOOP_MOVES,
			     !JUMP_AFTER_REGSCAN);
	      optimize = saved_optimize;
	    }

	  current_function_nothrow = nothrow_function_p ();
	  if (current_function_nothrow)
	    /* Now we know that this can't throw; set the flag for the benefit
	       of other functions later in this translation unit.  */
	    TREE_NOTHROW (current_function_decl) = 1;

	  timevar_push (TV_INTEGRATION);
	  save_for_inline_nocopy (decl);
	  timevar_pop (TV_INTEGRATION);
	  DECL_SAVED_INSNS (decl)->inlinable = inlinable;
	  goto exit_rest_of_compilation;
	}

      /* If specified extern inline but we aren't inlining it, we are
	 done.  This goes for anything that gets here with DECL_EXTERNAL
	 set, not just things with DECL_INLINE.  */
      if (DECL_EXTERNAL (decl))
	goto exit_rest_of_compilation;
    }

  init_EXPR_INSN_LIST_cache ();

  if (ggc_p)
    ggc_collect ();

  /* Initialize some variables used by the optimizers.  */
  init_function_for_compilation ();

  if (! DECL_DEFER_OUTPUT (decl))
    TREE_ASM_WRITTEN (decl) = 1;

  /* Now that integrate will no longer see our rtl, we need not distinguish
     between the return value of this function and the return value of called
     functions.  */
  rtx_equal_function_value_matters = 0;

  /* Don't return yet if -Wreturn-type; we need to do jump_optimize.  */
  if ((rtl_dump_and_exit || flag_syntax_only) && !warn_return_type)
    goto exit_rest_of_compilation;

  /* Emit code to get eh context, if needed. */
  emit_eh_context ();

  /* We may have potential sibling or tail recursion sites.  Select one
     (of possibly multiple) methods of performing the call.  */
  if (flag_optimize_sibling_calls)
    {
      timevar_push (TV_JUMP);
      open_dump_file (DFI_sibling, decl);

      optimize_sibling_and_tail_recursive_calls ();

      close_dump_file (DFI_sibling, print_rtl, get_insns ());
      timevar_pop (TV_JUMP);
    }

#ifdef FINALIZE_PIC
  /* If we are doing position-independent code generation, now
     is the time to output special prologues and epilogues.
     We do not want to do this earlier, because it just clutters
     up inline functions with meaningless insns.  */
  if (flag_pic)
    FINALIZE_PIC;
#endif

  /* From now on, allocate rtl in current_obstack, not in saveable_obstack.
     Note that that may have been done above, in save_for_inline_copying.
     The call to resume_temporary_allocation near the end of this function
     goes back to the usual state of affairs.  This must be done after
     we've built up any unwinders for exception handling, and done
     the FINALIZE_PIC work, if necessary.  */

  rtl_in_current_obstack ();

  insns = get_insns ();

  /* Copy any shared structure that should not be shared.  */
  unshare_all_rtl (current_function_decl, insns);

#ifdef SETJMP_VIA_SAVE_AREA
  /* This must be performed before virutal register instantiation.  */
  if (current_function_calls_alloca)
    optimize_save_area_alloca (insns);
#endif

  /* Instantiate all virtual registers.  */
  instantiate_virtual_regs (current_function_decl, insns);

  /* Find all the EH handlers.  */
  find_exception_handler_labels ();

  open_dump_file (DFI_jump, decl);

  /* Always do one jump optimization pass to ensure that JUMP_LABEL fields
     are initialized and to compute whether control can drop off the end
     of the function.  */

  timevar_push (TV_JUMP);
  /* Turn NOTE_INSN_EXPECTED_VALUE into REG_BR_PROB.  Do this
     before jump optimization switches branch directions.  */
  expected_value_to_br_prob ();

  reg_scan (insns, max_reg_num (), 0);
  jump_optimize (insns, !JUMP_CROSS_JUMP, !JUMP_NOOP_MOVES,
		 JUMP_AFTER_REGSCAN);

  timevar_pop (TV_JUMP);

  /* Now is when we stop if -fsyntax-only and -Wreturn-type.  */
  if (rtl_dump_and_exit || flag_syntax_only || DECL_DEFER_OUTPUT (decl))
    {
      close_dump_file (DFI_jump, print_rtl, insns);
      goto exit_rest_of_compilation;
    }

  timevar_push (TV_JUMP);

  if (optimize > 0)
    {
      find_basic_blocks (insns, max_reg_num (), rtl_dump_file);
      cleanup_cfg (insns);

      /* ??? Run if-conversion before delete_null_pointer_checks,
         since the later does not preserve the CFG.  This should
	 be changed -- no since converting if's that are going to
	 be deleted.  */
      timevar_push (TV_IFCVT);
      if_convert (0);
      timevar_pop (TV_IFCVT);

      /* Try to identify useless null pointer tests and delete them.  */
      if (flag_delete_null_pointer_checks)
	delete_null_pointer_checks (insns);
    }

  /* Jump optimization, and the removal of NULL pointer checks, may
     have reduced the number of instructions substantially.  CSE, and
     future passes, allocate arrays whose dimensions involve the
     maximum instruction UID, so if we can reduce the maximum UID
     we'll save big on memory.  */
  renumber_insns (rtl_dump_file);
  timevar_pop (TV_JUMP);

  close_dump_file (DFI_jump, print_rtl, insns);

  if (ggc_p)
    ggc_collect ();

  /* Perform common subexpression elimination.
     Nonzero value from `cse_main' means that jumps were simplified
     and some code may now be unreachable, so do
     jump optimization again.  */

  if (optimize > 0)
    {
      open_dump_file (DFI_cse, decl);
      timevar_push (TV_CSE);

      reg_scan (insns, max_reg_num (), 1);

      if (flag_thread_jumps)
	{
	  timevar_push (TV_JUMP);
	  thread_jumps (insns, max_reg_num (), 1);
	  timevar_pop (TV_JUMP);
	}

      tem = cse_main (insns, max_reg_num (), 0, rtl_dump_file);

      /* If we are not running the second CSE pass, then we are no longer
	 expecting CSE to be run.  */
      cse_not_expected = !flag_rerun_cse_after_loop;

      if (tem || optimize > 1)
	{
	  timevar_push (TV_JUMP);
	  jump_optimize (insns, !JUMP_CROSS_JUMP, !JUMP_NOOP_MOVES,
			 !JUMP_AFTER_REGSCAN);
	  timevar_pop (TV_JUMP);
	}
 
      /* Run this after jump optmizations remove all the unreachable code
	 so that unreachable code will not keep values live.  */
      delete_trivially_dead_insns (insns, max_reg_num ());

      /* Try to identify useless null pointer tests and delete them.  */
      if (flag_delete_null_pointer_checks)
	{
	  timevar_push (TV_JUMP);
	  find_basic_blocks (insns, max_reg_num (), rtl_dump_file);

	  cleanup_cfg (insns);

	  delete_null_pointer_checks (insns);
	  timevar_pop (TV_JUMP);
	}

      /* The second pass of jump optimization is likely to have
         removed a bunch more instructions.  */
      renumber_insns (rtl_dump_file);

      timevar_pop (TV_CSE);
      close_dump_file (DFI_cse, print_rtl, insns);
    }

  open_dump_file (DFI_addressof, decl);

  purge_addressof (insns);
  reg_scan (insns, max_reg_num (), 1);

  close_dump_file (DFI_addressof, print_rtl, insns);

  if (ggc_p)
    ggc_collect ();

  if (optimize > 0 && flag_ssa)
    {
      /* Convert to SSA form.  */

      timevar_push (TV_TO_SSA);
      open_dump_file (DFI_ssa, decl);

      find_basic_blocks (insns, max_reg_num(), rtl_dump_file);
      cleanup_cfg (insns);
      convert_to_ssa ();

      close_dump_file (DFI_ssa, print_rtl_with_bb, insns);
      timevar_pop (TV_TO_SSA);

      /* Currently, there's nothing to do in SSA form.  */

      /* Convert from SSA form.  */

      timevar_push (TV_FROM_SSA);
      open_dump_file (DFI_ussa, decl);

      convert_from_ssa ();
      /* New registers have been created.  Rescan their usage.  */
      reg_scan (insns, max_reg_num (), 1);
      /* Life analysis used in SSA adds log_links but these
	 shouldn't be there until the flow stage, so clear
	 them away.  */
      clear_log_links (insns);

      close_dump_file (DFI_ussa, print_rtl_with_bb, insns);
      timevar_pop (TV_FROM_SSA);

      if (ggc_p)
	ggc_collect ();
    }

  /* Perform global cse.  */

  if (optimize > 0 && flag_gcse)
    {
      timevar_push (TV_GCSE);
      open_dump_file (DFI_gcse, decl);

      find_basic_blocks (insns, max_reg_num(), rtl_dump_file);
      cleanup_cfg (insns);
      tem = gcse_main (insns, rtl_dump_file);

      /* If gcse altered any jumps, rerun jump optimizations to clean
	 things up.  */
      if (tem)
	{
	  timevar_push (TV_JUMP);
	  jump_optimize (insns, !JUMP_CROSS_JUMP, !JUMP_NOOP_MOVES,
			 !JUMP_AFTER_REGSCAN);
	  timevar_pop (TV_JUMP);
        }

      close_dump_file (DFI_gcse, print_rtl, insns);
      timevar_pop (TV_GCSE);

      if (ggc_p)
	ggc_collect ();
    }

  /* Move constant computations out of loops.  */

  if (optimize > 0)
    {
      timevar_push (TV_LOOP);
      open_dump_file (DFI_loop, decl);
      
      if (flag_rerun_loop_opt)
	{
	  /* We only want to perform unrolling once.  */
	       
	  loop_optimize (insns, rtl_dump_file, 0);

	  /* The first call to loop_optimize makes some instructions
	     trivially dead.  We delete those instructions now in the
	     hope that doing so will make the heuristics in loop work
	     better and possibly speed up compilation.  */
	  delete_trivially_dead_insns (insns, max_reg_num ());

	  /* The regscan pass is currently necessary as the alias
		  analysis code depends on this information.  */
	  reg_scan (insns, max_reg_num (), 1);
	}
      loop_optimize (insns, rtl_dump_file, (flag_unroll_loops ? LOOP_UNROLL : 0) | LOOP_BCT);

      close_dump_file (DFI_loop, print_rtl, insns);
      timevar_pop (TV_LOOP);

      if (ggc_p)
	ggc_collect ();
    }

  if (optimize > 0)
    {
      timevar_push (TV_CSE2);
      open_dump_file (DFI_cse2, decl);

      if (flag_rerun_cse_after_loop)
	{
	  /* Running another jump optimization pass before the second
	     cse pass sometimes simplifies the RTL enough to allow
	     the second CSE pass to do a better job.  Jump_optimize can change
	     max_reg_num so we must rerun reg_scan afterwards.
	     ??? Rework to not call reg_scan so often.  */
	  timevar_push (TV_JUMP);

	  reg_scan (insns, max_reg_num (), 0);
	  jump_optimize (insns, !JUMP_CROSS_JUMP,
			 !JUMP_NOOP_MOVES, JUMP_AFTER_REGSCAN);

	  timevar_push (TV_IFCVT);

	  find_basic_blocks (insns, max_reg_num (), rtl_dump_file);
	  cleanup_cfg (insns);
	  if_convert (0);

	  timevar_pop(TV_IFCVT);

	  timevar_pop (TV_JUMP);
	  
	  reg_scan (insns, max_reg_num (), 0);
	  tem = cse_main (insns, max_reg_num (), 1, rtl_dump_file);

	  if (tem)
	    {
	      timevar_push (TV_JUMP);
	      jump_optimize (insns, !JUMP_CROSS_JUMP,
			     !JUMP_NOOP_MOVES, !JUMP_AFTER_REGSCAN);
	      timevar_pop (TV_JUMP);
	    }
	}

      if (flag_thread_jumps)
	{
	  /* This pass of jump threading straightens out code
	     that was kinked by loop optimization.  */
	  timevar_push (TV_JUMP);
	  reg_scan (insns, max_reg_num (), 0);
	  thread_jumps (insns, max_reg_num (), 0);
	  timevar_pop (TV_JUMP);
	}

      close_dump_file (DFI_cse2, print_rtl, insns);
      timevar_pop (TV_CSE2);

      if (ggc_p)
	ggc_collect ();
    }

  cse_not_expected = 1;

  regclass_init ();

  
  /* Do control and data flow analysis; wrote some of the results to
     the dump file.  */

  timevar_push (TV_FLOW);
  open_dump_file (DFI_cfg, decl);

  find_basic_blocks (insns, max_reg_num (), rtl_dump_file);
  cleanup_cfg (insns);

  close_dump_file (DFI_cfg, print_rtl_with_bb, insns);
 
  if (profile_arc_flag || flag_test_coverage || flag_branch_probabilities)
    {
      timevar_push (TV_BRANCH_PROB);
      open_dump_file (DFI_bp, decl);

      branch_prob ();

      close_dump_file (DFI_bp, print_rtl_with_bb, insns);
      timevar_pop (TV_BRANCH_PROB);
    }

  open_dump_file (DFI_life, decl);
  if (optimize)
    {
      struct loops loops;

      /* Discover and record the loop depth at the head of each basic
	 block.  The loop infrastructure does the real job for us.  */
      flow_loops_find (&loops);

      /* Estimate using heuristics if no profiling info is available.  */
      estimate_probability (&loops);

      if (rtl_dump_file)
	flow_loops_dump (&loops, rtl_dump_file, 0);

      flow_loops_free (&loops);
    }
  life_analysis (insns, rtl_dump_file, PROP_FINAL);
  mark_constant_function ();
  timevar_pop (TV_FLOW);

  register_life_up_to_date = 1;
  no_new_pseudos = 1;

  if (warn_uninitialized || extra_warnings)
    {
      uninitialized_vars_warning (DECL_INITIAL (decl));
      if (extra_warnings)
	setjmp_args_warning ();
    }

  close_dump_file (DFI_life, print_rtl_with_bb, insns);

  if (ggc_p)
    ggc_collect ();

  /* If -opt, try combining insns through substitution.  */

  if (optimize > 0)
    {
      int rebuild_jump_labels_after_combine = 0;

      timevar_push (TV_COMBINE);
      open_dump_file (DFI_combine, decl);

      rebuild_jump_labels_after_combine
	= combine_instructions (insns, max_reg_num ());
      
      /* Combining insns may have turned an indirect jump into a
	 direct jump.  Rebuid the JUMP_LABEL fields of jumping
	 instructions.  */
      if (rebuild_jump_labels_after_combine)
	{
	  timevar_push (TV_JUMP);
	  rebuild_jump_labels (insns);
	  timevar_pop (TV_JUMP);

	  timevar_push (TV_FLOW);
	  find_basic_blocks (insns, max_reg_num (), rtl_dump_file);
	  cleanup_cfg (insns);

	  /* Blimey.  We've got to have the CFG up to date for the call to
	     if_convert below.  However, the random deletion of blocks
	     without updating life info can wind up with Wierd Stuff in
	     global_live_at_end.  We then run sched1, which updates things
	     properly, discovers the wierdness and aborts.  */
	  update_life_info (NULL, UPDATE_LIFE_GLOBAL_RM_NOTES,
			    PROP_DEATH_NOTES | PROP_KILL_DEAD_CODE
			    | PROP_SCAN_DEAD_CODE);

	  timevar_pop (TV_FLOW);
	}

      close_dump_file (DFI_combine, print_rtl_with_bb, insns);
      timevar_pop (TV_COMBINE);

      if (ggc_p)
	ggc_collect ();
    }

  /* Rerun if-conversion, as combine may have simplified things enough to
     now meet sequence length restrictions.  */
  if (optimize > 0)
    {
      timevar_push (TV_IFCVT);
      open_dump_file (DFI_ce, decl);

      no_new_pseudos = 0;
      if_convert (1);
      no_new_pseudos = 1;

      close_dump_file (DFI_ce, print_rtl_with_bb, insns);
      timevar_pop (TV_IFCVT);
    }

  /* Register allocation pre-pass, to reduce number of moves
     necessary for two-address machines.  */
  if (optimize > 0 && (flag_regmove || flag_expensive_optimizations))
    {
      timevar_push (TV_REGMOVE);
      open_dump_file (DFI_regmove, decl);

      regmove_optimize (insns, max_reg_num (), rtl_dump_file);

      close_dump_file (DFI_regmove, print_rtl_with_bb, insns);
      timevar_pop (TV_REGMOVE);

      if (ggc_p)
	ggc_collect ();
    }

  /* Any of the several passes since flow1 will have munged register
     lifetime data a bit.  */
  if (optimize > 0)
    register_life_up_to_date = 0;

#ifdef OPTIMIZE_MODE_SWITCHING
  if (optimize)
    {
      timevar_push (TV_GCSE);

      if (optimize_mode_switching (NULL_PTR))
	{
	  /* We did work, and so had to regenerate global life information.
	     Take advantage of this and don't re-recompute register life
	     information below.  */
	  register_life_up_to_date = 1;
	}

      timevar_pop (TV_GCSE);
    }
#endif

#ifdef INSN_SCHEDULING

  /* Print function header into sched dump now
     because doing the sched analysis makes some of the dump.  */
  if (optimize > 0 && flag_schedule_insns)
    {
      timevar_push (TV_SCHED);
      open_dump_file (DFI_sched, decl);

      /* Do control and data sched analysis,
	 and write some of the results to dump file.  */

      schedule_insns (rtl_dump_file);

      close_dump_file (DFI_sched, print_rtl_with_bb, insns);
      timevar_pop (TV_SCHED);

      if (ggc_p)
	ggc_collect ();

      /* Register lifetime information was updated as part of verifying
	 the schedule.  */
      register_life_up_to_date = 1;
    }
#endif

  /* Determine if the current function is a leaf before running reload
     since this can impact optimizations done by the prologue and
     epilogue thus changing register elimination offsets.  */
  current_function_is_leaf = leaf_function_p ();

  timevar_push (TV_LOCAL_ALLOC);
  open_dump_file (DFI_lreg, decl);

  /* Allocate pseudo-regs that are used only within 1 basic block. 

     RUN_JUMP_AFTER_RELOAD records whether or not we need to rerun the
     jump optimizer after register allocation and reloading are finished.  */

  if (! register_life_up_to_date)
    recompute_reg_usage (insns, ! optimize_size);
  regclass (insns, max_reg_num (), rtl_dump_file);
  rebuild_label_notes_after_reload = local_alloc ();

  timevar_pop (TV_LOCAL_ALLOC);

  if (dump_file[DFI_lreg].enabled)
    {
      timevar_push (TV_DUMP);

      dump_flow_info (rtl_dump_file);
      dump_local_alloc (rtl_dump_file);

      close_dump_file (DFI_lreg, print_rtl_with_bb, insns);
      timevar_pop (TV_DUMP);
    }

  if (ggc_p)
    ggc_collect ();

  timevar_push (TV_GLOBAL_ALLOC);
  open_dump_file (DFI_greg, decl);

  /* If optimizing, allocate remaining pseudo-regs.  Do the reload
     pass fixing up any insns that are invalid.  */

  if (optimize)
    failure = global_alloc (rtl_dump_file);
  else
    {
      build_insn_chain (insns);
      failure = reload (insns, 0, rtl_dump_file);
    }

  timevar_pop (TV_GLOBAL_ALLOC);

  if (failure)
    goto exit_rest_of_compilation;

  if (ggc_p)
    ggc_collect ();

  /* Do a very simple CSE pass over just the hard registers.  */
  if (optimize > 0)
    {
      timevar_push (TV_RELOAD_CSE_REGS);
      reload_cse_regs (insns);
      timevar_pop (TV_RELOAD_CSE_REGS); 
    }

  /* If optimizing, then go ahead and split insns now since we are about
     to recompute flow information anyway.  */
  if (optimize > 0)
    split_all_insns (0);

  /* Register allocation and reloading may have turned an indirect jump into
     a direct jump.  If so, we must rebuild the JUMP_LABEL fields of
     jumping instructions.  */
  if (rebuild_label_notes_after_reload)
    {
      timevar_push (TV_JUMP);

      rebuild_jump_labels (insns);

      timevar_pop (TV_JUMP);
    }

  if (dump_file[DFI_greg].enabled)
    {
      timevar_push (TV_DUMP);

      dump_global_regs (rtl_dump_file);

      close_dump_file (DFI_greg, print_rtl_with_bb, insns);
      timevar_pop (TV_DUMP);
    }

  /* Re-create the death notes which were deleted during reload.  */
  timevar_push (TV_FLOW2);
  open_dump_file (DFI_flow2, decl);

  jump_optimize (insns, !JUMP_CROSS_JUMP,
		 !JUMP_NOOP_MOVES, !JUMP_AFTER_REGSCAN);
  find_basic_blocks (insns, max_reg_num (), rtl_dump_file);

  /* On some machines, the prologue and epilogue code, or parts thereof,
     can be represented as RTL.  Doing so lets us schedule insns between
     it and the rest of the code and also allows delayed branch
     scheduling to operate in the epilogue.  */
  thread_prologue_and_epilogue_insns (insns);

  if (optimize)
    {
      cleanup_cfg (insns);
      life_analysis (insns, rtl_dump_file, PROP_FINAL);

      /* This is kind of a heuristic.  We need to run combine_stack_adjustments
         even for machines with possibly nonzero RETURN_POPS_ARGS
         and ACCUMULATE_OUTGOING_ARGS.  We expect that only ports having
         push instructions will have popping returns.  */
#ifndef PUSH_ROUNDING
      if (!ACCUMULATE_OUTGOING_ARGS)
#endif
	combine_stack_adjustments ();

      if (ggc_p)
	ggc_collect ();
    }

  flow2_completed = 1;

  close_dump_file (DFI_flow2, print_rtl_with_bb, insns);
  timevar_pop (TV_FLOW2);

  if (optimize > 0)
    {
      timevar_push (TV_IFCVT2);
      open_dump_file (DFI_ce2, decl);

      if_convert (1);

      close_dump_file (DFI_ce2, print_rtl_with_bb, insns);
      timevar_pop (TV_IFCVT2);
    }

#ifdef HAVE_peephole2
  if (optimize > 0 && flag_peephole2)
    {
      timevar_push (TV_PEEPHOLE2);
      open_dump_file (DFI_peephole2, decl);

      peephole2_optimize (rtl_dump_file);

      close_dump_file (DFI_peephole2, print_rtl_with_bb, insns);
      timevar_pop (TV_PEEPHOLE2);
    }
#endif

  if (optimize > 0 && flag_rename_registers)
    {
      timevar_push (TV_RENAME_REGISTERS);
      open_dump_file (DFI_rnreg, decl);

      regrename_optimize ();

      close_dump_file (DFI_rnreg, print_rtl_with_bb, insns);
      timevar_pop (TV_RENAME_REGISTERS);
    }    

#ifdef INSN_SCHEDULING
  if (optimize > 0 && flag_schedule_insns_after_reload)
    {
      timevar_push (TV_SCHED2);
      open_dump_file (DFI_sched2, decl);

      /* Do control and data sched analysis again,
	 and write some more of the results to dump file.  */

      schedule_insns (rtl_dump_file);

      close_dump_file (DFI_sched2, print_rtl_with_bb, insns);
      timevar_pop (TV_SCHED2);

      if (ggc_p)
	ggc_collect ();
    }
#endif

#ifdef LEAF_REGISTERS
  current_function_uses_only_leaf_regs
    = optimize > 0 && only_leaf_regs_used () && leaf_function_p ();
#endif

  if (optimize > 0 && flag_reorder_blocks)
    {
      timevar_push (TV_REORDER_BLOCKS);
      open_dump_file (DFI_bbro, decl);

      reorder_basic_blocks ();

      close_dump_file (DFI_bbro, print_rtl_with_bb, insns);
      timevar_pop (TV_REORDER_BLOCKS);
    }    

  /* One more attempt to remove jumps to .+1 left by dead-store elimination. 
     Also do cross-jumping this time and delete no-op move insns.  */

  if (optimize > 0)
    {
      timevar_push (TV_JUMP);
      open_dump_file (DFI_jump2, decl);

      jump_optimize (insns, JUMP_CROSS_JUMP, JUMP_NOOP_MOVES, 
		     !JUMP_AFTER_REGSCAN);

      /* CFG no longer kept up to date.  */

      close_dump_file (DFI_jump2, print_rtl_with_bb, insns);
      timevar_pop (TV_JUMP);
    }

  /* If a machine dependent reorganization is needed, call it.  */
#ifdef MACHINE_DEPENDENT_REORG
  open_dump_file (DFI_mach, decl);

  MACHINE_DEPENDENT_REORG (insns);

  close_dump_file (DFI_mach, print_rtl_with_bb, insns);

  if (ggc_p)
    ggc_collect ();
#endif

  /* If a scheduling pass for delayed branches is to be done,
     call the scheduling code.  */

#ifdef DELAY_SLOTS
  if (optimize > 0 && flag_delayed_branch)
    {
      timevar_push (TV_DBR_SCHED);
      open_dump_file (DFI_dbr, decl);

      dbr_schedule (insns, rtl_dump_file);

      close_dump_file (DFI_dbr, print_rtl_with_bb, insns);
      timevar_pop (TV_DBR_SCHED);

      if (ggc_p)
	ggc_collect ();
    }
#endif

  /* Shorten branches. 

     Note this must run before reg-stack because of death note (ab)use
     in the ia32 backend.  */
  timevar_push (TV_SHORTEN_BRANCH);
  shorten_branches (get_insns ());
  timevar_pop (TV_SHORTEN_BRANCH);

#ifdef STACK_REGS
  timevar_push (TV_REG_STACK);
  open_dump_file (DFI_stack, decl);

  reg_to_stack (insns, rtl_dump_file);

  close_dump_file (DFI_stack, print_rtl_with_bb, insns);
  timevar_pop (TV_REG_STACK);

  if (ggc_p)
    ggc_collect ();
#endif

  current_function_nothrow = nothrow_function_p ();
  if (current_function_nothrow)
    /* Now we know that this can't throw; set the flag for the benefit
       of other functions later in this translation unit.  */
    TREE_NOTHROW (current_function_decl) = 1;

  /* Now turn the rtl into assembler code.  */

  timevar_push (TV_FINAL);
  {
    rtx x;
    const char *fnname;

    /* Get the function's name, as described by its RTL.  This may be
       different from the DECL_NAME name used in the source file.  */

    x = DECL_RTL (decl);
    if (GET_CODE (x) != MEM)
      abort ();
    x = XEXP (x, 0);
    if (GET_CODE (x) != SYMBOL_REF)
      abort ();
    fnname = XSTR (x, 0);

    assemble_start_function (decl, fnname);
    final_start_function (insns, asm_out_file, optimize);
    final (insns, asm_out_file, optimize, 0);
    final_end_function (insns, asm_out_file, optimize);
    assemble_end_function (decl, fnname);
    if (! quiet_flag)
      fflush (asm_out_file);

	     /* Release all memory allocated by flow.  */
    free_basic_block_vars (0);

    /* Release all memory held by regsets now */
    regset_release_memory ();
  }
  timevar_pop (TV_FINAL);

  if (ggc_p)
    ggc_collect ();

  /* Write DBX symbols if requested */

  /* Note that for those inline functions where we don't initially
     know for certain that we will be generating an out-of-line copy,
     the first invocation of this routine (rest_of_compilation) will
     skip over this code by doing a `goto exit_rest_of_compilation;'.
     Later on, finish_compilation will call rest_of_compilation again
     for those inline functions that need to have out-of-line copies
     generated.  During that call, we *will* be routed past here.  */

  timevar_push (TV_SYMOUT);
#ifdef DBX_DEBUGGING_INFO
  if (write_symbols == DBX_DEBUG)
    dbxout_function (decl);
#endif

#ifdef DWARF_DEBUGGING_INFO
  if (write_symbols == DWARF_DEBUG)
    dwarfout_file_scope_decl (decl, 0);
#endif

#ifdef DWARF2_DEBUGGING_INFO
  if (write_symbols == DWARF2_DEBUG)
    dwarf2out_decl (decl);
#endif
  timevar_pop (TV_SYMOUT);

 exit_rest_of_compilation:

  /* In case the function was not output,
     don't leave any temporary anonymous types
     queued up for sdb output.  */
#ifdef SDB_DEBUGGING_INFO
  if (write_symbols == SDB_DEBUG)
    sdbout_types (NULL_TREE);
#endif

  reload_completed = 0;
  flow2_completed = 0;
  no_new_pseudos = 0;

  timevar_push (TV_FINAL);

  /* Clear out the insn_length contents now that they are no
     longer valid.  */
  init_insn_lengths ();

  /* Clear out the real_constant_chain before some of the rtx's
		 it runs through become garbage.  */
  clear_const_double_mem ();

  /* Cancel the effect of rtl_in_current_obstack.  */
  resume_temporary_allocation ();

  /* Show no temporary slots allocated.  */
  init_temp_slots ();

  free_basic_block_vars (0);

  timevar_pop (TV_FINAL);

  /* Make sure volatile mem refs aren't considered valid operands for
     arithmetic insns.  We must call this here if this is a nested inline
     function, since the above code leaves us in the init_recog state
     (from final.c), and the function context push/pop code does not
     save/restore volatile_ok.

     ??? Maybe it isn't necessary for expand_start_function to call this
     anymore if we do it here?  */

  init_recog_no_volatile ();

  /* We're done with this function.  Free up memory if we can.  */
  free_after_parsing (cfun);
  if (! DECL_DEFER_OUTPUT (decl))
    free_after_compilation (cfun);
  cfun = 0;

  if (ggc_p)
    ggc_collect ();

  timevar_pop (TV_REST_OF_COMPILATION);
}

static void
display_help ()
{
  int    undoc;
  unsigned long	 i;
  const char * lang;
  
#ifndef USE_CPPLIB  
  printf ("Usage: %s input [switches]\n", progname);
  printf ("Switches:\n");
#endif
  printf ("  -ffixed-<register>      Mark <register> as being unavailable to the compiler\n");
  printf ("  -fcall-used-<register>  Mark <register> as being corrupted by function calls\n");
  printf ("  -fcall-saved-<register> Mark <register> as being preserved across functions\n");
  printf ("  -finline-limit=<number> Limits the size of inlined functions to <number>\n");

  for (i = NUM_ELEM (f_options); i--;)
    {
      const char * description = f_options[i].description;
      
      if (description != NULL && * description != 0)
	printf ("  -f%-21s %s\n",
		f_options[i].string, description);
    }
  
  printf ("  -O[number]              Set optimisation level to [number]\n");
  printf ("  -Os                     Optimise for space rather than speed\n");
  printf ("  -pedantic               Issue warnings needed by strict compliance to ANSI C\n");
  printf ("  -pedantic-errors        Like -pedantic except that errors are produced\n");
  printf ("  -w                      Suppress warnings\n");
  printf ("  -W                      Enable extra warnings\n");
  
  for (i = NUM_ELEM (W_options); i--;)
    {
      const char * description = W_options[i].description;
      
      if (description != NULL && * description != 0)
	printf ("  -W%-21s %s\n",
		W_options[i].string, description);
    }
  
  printf ("  -Wunused                Enable unused warnings\n");
  printf ("  -Wid-clash-<num>        Warn if 2 identifiers have the same first <num> chars\n");
  printf ("  -Wlarger-than-<number>  Warn if an object is larger than <number> bytes\n");
  printf ("  -p                      Enable function profiling\n");
#if defined (BLOCK_PROFILER) || defined (FUNCTION_BLOCK_PROFILER)
  printf ("  -a                      Enable block profiling \n");
#endif  
#if defined (BLOCK_PROFILER) || defined (FUNCTION_BLOCK_PROFILER) || defined FUNCTION_BLOCK_PROFILER_EXIT
  printf ("  -ax                     Enable jump profiling \n");
#endif  
  printf ("  -o <file>               Place output into <file> \n");
  printf ("  -G <number>             Put global and static data smaller than <number>\n");
  printf ("                           bytes into a special section (on some targets)\n");
  
  for (i = NUM_ELEM (debug_args); i--;)
    {
      if (debug_args[i].description != NULL)
	printf ("  -g%-21s %s\n", debug_args[i].arg, debug_args[i].description);
    }
  
  printf ("  -aux-info <file>        Emit declaration info into <file>.X\n");
  printf ("  -quiet                  Do not display functions compiled or elapsed time\n");
  printf ("  -version                Display the compiler's version\n");
  printf ("  -d[letters]             Enable dumps from specific passes of the compiler\n");
  printf ("  -dumpbase <file>        Base name to be used for dumps from specific passes\n");
#if defined INSN_SCHEDULING
  printf ("  -fsched-verbose=<number> Set the verbosity level of the scheduler\n");
#endif
  printf ("  --help                  Display this information\n");

  undoc = 0;
  lang  = "language";
  
  /* Display descriptions of language specific options.
     If there is no description, note that there is an undocumented option.
     If the description is empty, do not display anything.  (This allows
     options to be deliberately undocumented, for whatever reason).
     If the option string is missing, then this is a marker, indicating
     that the description string is in fact the name of a language, whose
     language specific options are to follow.  */
  
  if (NUM_ELEM (documented_lang_options) > 1)
    {
      printf ("\nLanguage specific options:\n");

      for (i = 0; i < NUM_ELEM (documented_lang_options); i++)
	{
	  const char * description = documented_lang_options[i].description;
	  const char * option      = documented_lang_options[i].option;

	  if (description == NULL)
	    {
	      undoc = 1;

	      if (extra_warnings)
		printf ("  %-23.23s [undocumented]\n", option);
	    }
	  else if (* description == 0)
	    continue;
	  else if (option == NULL)
	    {
	      if (undoc)
		printf
		  ("\nThere are undocumented %s specific options as well.\n",
			lang);
	      undoc = 0;
	      
	      printf ("\n Options for %s:\n", description);

	      lang = description;
	    }
	  else
	    printf ("  %-23.23s %s\n", option, description);
	}
    }

  if (undoc)
    printf ("\nThere are undocumented %s specific options as well.\n", lang);

  if (NUM_ELEM (target_switches) > 1
#ifdef TARGET_OPTIONS
      || NUM_ELEM (target_options) > 1
#endif
      )
    {
      int doc = 0;
      
      undoc = 0;
  
      printf ("\nTarget specific options:\n");

      for (i = NUM_ELEM (target_switches); i--;)
	{
	  const char * option      = target_switches[i].name;
	  const char * description = target_switches[i].description;

	  if (option == NULL || * option == 0)
	    continue;
	  else if (description == NULL)
	    {
	      undoc = 1;
	      
	      if (extra_warnings)
		printf ("  -m%-21.21s [undocumented]\n", option);
	    }
	  else if (* description != 0)
	    doc += printf ("  -m%-21.21s %s\n", option, description);
	}
      
#ifdef TARGET_OPTIONS      
      for (i = NUM_ELEM (target_options); i--;)
	{
	  const char * option      = target_options[i].prefix;
	  const char * description = target_options[i].description;

	  if (option == NULL || * option == 0)
	    continue;
	  else if (description == NULL)
	    {
	      undoc = 1;
	      
	      if (extra_warnings)
		printf ("  -m%-21.21s [undocumented]\n", option);
	    }
	  else if (* description != 0)
	    doc += printf ("  -m%-21.21s %s\n", option, description);
	}
#endif
      if (undoc)
	{
	  if (doc)
	    printf ("\nThere are undocumented target specific options as well.\n");
	  else
	    printf ("  They exist, but they are not documented.\n");
	}
    }
}

/* Parse a -d... comand line switch.  */

static void
decode_d_option (arg)
     const char * arg;
{
  int i, c, matched;

  while (*arg)
    switch (c = *arg++)
      {
      case 'a':
	for (i = 0; i < DFI_MAX; ++i)
	  dump_file[i].enabled = 1;
	break;
      case 'A':
	flag_debug_asm = 1;
	break;
#ifdef SGI_MONGOOSE
      case 'C':
	flag_bad_asm_constraint_kills_stmt = 1;
	break;
#endif /* SGI_MONGOOSE */
      case 'm':
	flag_print_mem = 1;
	break;
      case 'p':
	flag_print_asm_name = 1;
	break;
      case 'v':
	graph_dump_format = vcg;
	break;
      case 'x':
	rtl_dump_and_exit = 1;
	break;
      case 'y':
	set_yydebug (1);
	break;
      case 'D':	/* These are handled by the preprocessor.  */
      case 'I':
	break;

      default:
	matched = 0;
	for (i = 0; i < DFI_MAX; ++i)
	  if (c == dump_file[i].debug_switch)
	    {
	      dump_file[i].enabled = 1;
	      matched = 1;
	    }

	if (! matched)
	  warning ("unrecognized gcc debugging option: %c", c);
	break;
      }
}

/* Parse a -f... comand line switch.  ARG is the value after the -f.
   It is safe to access 'ARG - 2' to generate the full switch name.
   Return the number of strings consumed.  */

static int
decode_f_option (arg)
     const char * arg;
{
  int j;
  const char *option_value = NULL;

  /* Search for the option in the table of binary f options.  */
  for (j = sizeof (f_options) / sizeof (f_options[0]); j--;)
    {
      if (!strcmp (arg, f_options[j].string))
	{
	  *f_options[j].variable = f_options[j].on_value;
	  return 1;
	}
    
      if (arg[0] == 'n' && arg[1] == 'o' && arg[2] == '-'
	  && ! strcmp (arg + 3, f_options[j].string))
	{
	  *f_options[j].variable = ! f_options[j].on_value;
	  return 1;
	}
    }

  if ((option_value = skip_leading_substring (arg, "inline-limit-"))
      || (option_value = skip_leading_substring (arg, "inline-limit=")))
    inline_max_insns =
      read_integral_parameter (option_value, arg - 2, inline_max_insns);
#ifdef INSN_SCHEDULING
  else if ((option_value = skip_leading_substring (arg, "sched-verbose=")))
    fix_sched_param ("verbose", option_value);
#endif
  else if ((option_value = skip_leading_substring (arg, "fixed-")))
    fix_register (option_value, 1, 1);
  else if ((option_value = skip_leading_substring (arg, "call-used-")))
    fix_register (option_value, 0, 1);
  else if ((option_value = skip_leading_substring (arg, "call-saved-")))
    fix_register (option_value, 0, 0);
  else if ((option_value = skip_leading_substring (arg, "align-loops=")))
    align_loops = read_integral_parameter (option_value, arg - 2, align_loops);
  else if ((option_value = skip_leading_substring (arg, "align-functions=")))
    align_functions
      = read_integral_parameter (option_value, arg - 2, align_functions);
  else if ((option_value = skip_leading_substring (arg, "align-jumps=")))
    align_jumps = read_integral_parameter (option_value, arg - 2, align_jumps);
  else if ((option_value = skip_leading_substring (arg, "align-labels=")))
    align_labels
      = read_integral_parameter (option_value, arg - 2, align_labels);
  else if ((option_value
            = skip_leading_substring (arg, "stack-limit-register=")))
    {
      int reg = decode_reg_name (option_value);
      if (reg < 0)
	error ("unrecognized register name `%s'", option_value);
      else
	stack_limit_rtx = gen_rtx_REG (Pmode, reg);
    }
  else if ((option_value
            = skip_leading_substring (arg, "stack-limit-symbol=")))
    {
      char *nm;
      if (ggc_p)
	nm = ggc_alloc_string (option_value, strlen (option_value));
      else
	nm = xstrdup (option_value);
      stack_limit_rtx = gen_rtx_SYMBOL_REF (Pmode, nm);
    }
  else if (!strcmp (arg, "no-stack-limit"))
    stack_limit_rtx = NULL_RTX;
  else if (!strcmp (arg, "preprocessed"))
    /* Recognise this switch but do nothing.  This prevents warnings
       about an unrecognized switch if cpplib has not been linked in.  */
    ;
  else
    return 0;

  return 1;
}

/* Parse a -W... comand line switch.  ARG is the value after the -W.
   It is safe to access 'ARG - 2' to generate the full switch name.
   Return the number of strings consumed.  */

static int
decode_W_option (arg)
     const char * arg;
{
  const char *option_value = NULL;
  int j;
  
  /* Search for the option in the table of binary W options.  */

  for (j = sizeof (W_options) / sizeof (W_options[0]); j--;)
    {
      if (!strcmp (arg, W_options[j].string))
	{
	  *W_options[j].variable = W_options[j].on_value;
	  return 1;
	}

      if (arg[0] == 'n' && arg[1] == 'o' && arg[2] == '-'
	  && ! strcmp (arg + 3, W_options[j].string))
	{
	  *W_options[j].variable = ! W_options[j].on_value;
	  return 1;
	}
    }

  if ((option_value = skip_leading_substring (arg, "id-clash-")))
    {
      id_clash_len = read_integral_parameter (option_value, arg - 2, -1);
      
      if (id_clash_len != -1)
	warn_id_clash = 1;
    }
  else if ((option_value = skip_leading_substring (arg, "larger-than-")))
    {
      larger_than_size = read_integral_parameter (option_value, arg - 2, -1);

      if (larger_than_size != -1)
	warn_larger_than = 1;
    }
  else if (!strcmp (arg, "unused"))
    {
      set_Wunused (1);
    }
  else if (!strcmp (arg, "no-unused"))
    {
      set_Wunused (0);
    }
  else
    return 0;

  return 1;
}

/* Parse a -g... comand line switch.  ARG is the value after the -g.
   It is safe to access 'ARG - 2' to generate the full switch name.
   Return the number of strings consumed.  */

static int
decode_g_option (arg)
     const char * arg;
{
  unsigned level;
  /* A lot of code assumes write_symbols == NO_DEBUG if the
     debugging level is 0 (thus -gstabs1 -gstabs0 would lose track
     of what debugging type has been selected).  This records the
     selected type.  It is an error to specify more than one
     debugging type.  */
  static enum debug_info_type selected_debug_type = NO_DEBUG;
  /* Non-zero if debugging format has been explicitly set.
     -g and -ggdb don't explicitly set the debugging format so
     -gdwarf -g3 is equivalent to -gdwarf3.  */
  static int type_explicitly_set_p = 0;
  /* Indexed by enum debug_info_type.  */
  static const char * debug_type_names[] =
  {
    "none", "stabs", "coff", "dwarf-1", "dwarf-2", "xcoff"
  };
  
  /* The maximum admissible debug level value.  */
  static const unsigned max_debug_level = 3;
  
  /* Look up ARG in the table.  */
  for (da = debug_args; da->arg; da++)
    {
      const int da_len = strlen (da->arg);

      if (da_len == 0 || ! strncmp (arg, da->arg, da_len))
	{
	  enum debug_info_type type = da->debug_type;
	  const char * p = arg + da_len;
	  
	  if (*p && (*p < '0' || *p > '9'))
	    continue;
	  
	  /* A debug flag without a level defaults to level 2.
	     Note we do not want to call read_integral_parameter
	     for that case since it will call atoi which 
	     will return zero.
	     
	     ??? We may want to generalize the interface to 
	     read_integral_parameter to better handle this case
	     if this case shows up often.  */
	  if (*p)
	    level = read_integral_parameter (p, 0, max_debug_level + 1);
	  else
	    level = 2;
	  
	  if (da_len > 1 && *p && !strncmp (arg, "dwarf", da_len))
	    {
	      error ("use -gdwarf -g%d for DWARF v1, level %d",
		     level, level);
	      if (level == 2)
		error ("use -gdwarf-2   for DWARF v2");
	    }
	  
	  if (level > max_debug_level)
	    {
	      warning ("\
ignoring option `%s' due to invalid debug level specification",
		       arg - 2);
	      level = debug_info_level;
	    }

	  if (type == NO_DEBUG)
	    {
	      type = PREFERRED_DEBUGGING_TYPE;
	      
	      if (da_len > 1 && strncmp (arg, "gdb", da_len) == 0)
		{
#if defined (DWARF2_DEBUGGING_INFO) && !defined (LINKER_DOES_NOT_WORK_WITH_DWARF2)
		  type = DWARF2_DEBUG;
#else
#ifdef DBX_DEBUGGING_INFO
		  type = DBX_DEBUG;
#endif
#endif
		}
	    }
	  
	  if (type == NO_DEBUG)
	    warning ("`%s': unknown or unsupported -g option", arg - 2);

	  /* Does it conflict with an already selected type?  */
	  if (type_explicitly_set_p
	      /* -g/-ggdb don't conflict with anything */
	      && da->debug_type != NO_DEBUG
	      && type != selected_debug_type)
	    warning ("`%s' ignored, conflicts with `-g%s'",
		     arg - 2, debug_type_names[(int) selected_debug_type]);
	  else
	    {
	      /* If the format has already been set, -g/-ggdb
		 only change the debug level.  */
	      if (type_explicitly_set_p && da->debug_type == NO_DEBUG)
		; /* don't change debugging type */
	      else
		{
		  selected_debug_type = type;
		  type_explicitly_set_p = da->debug_type != NO_DEBUG;
		}
	      
	      write_symbols = (level == 0
			       ? NO_DEBUG
			       : selected_debug_type);
	      use_gnu_debug_info_extensions = da->use_extensions_p;
	      debug_info_level = (enum debug_info_level) level;
	    }
	  
	  break;
	}
    }
  
  if (! da->arg)
    warning ("`%s': unknown or unsupported -g option", arg - 2);

  return 1;
}

/* Decode the first argument in the argv as a language-independent option.
   Return the number of strings consumed.  'strings_processed' is the
   number of strings that have already been decoded in a language
   specific fashion before this function was invoked.  */
   
static unsigned int
independent_decode_option (argc, argv, strings_processed)
     int argc;
     char **argv;
     unsigned int strings_processed;
{
  char *arg = argv[0];
  
  if (arg[0] != '-' || arg[1] == 0)
    {
      if (arg[0] == '+')
	return 0;
      
      filename = arg;

      return 1;
    }

  arg ++;
  
  if (!strcmp (arg, "-help"))
    {
      display_help ();
      exit (0);
    }

  if (* arg == 'Y')
    arg ++;
  
  switch (*arg)
    {
    default:
      return 0;
      
    case 'O':
      /* Already been treated in main (). Do nothing.  */
      break;
	  
    case 'm':
      set_target_switch (arg + 1);
      break;

    case 'f':
      return decode_f_option (arg + 1);
	    
    case 'g':
      if (strings_processed == 0)
	return decode_g_option (arg + 1);
      else
	return strings_processed;

    case 'd':
      if (!strcmp (arg, "dumpbase"))
	{
	  if (argc == 1)
	    return 0;
	  
	  dump_base_name = argv[1];
	  return 2;
	}
      else
	decode_d_option (arg + 1);
      break;

    case 'p':
      if (!strcmp (arg, "pedantic"))
	pedantic = 1;
      else if (!strcmp (arg, "pedantic-errors"))
	flag_pedantic_errors = pedantic = 1;
      else if (arg[1] == 0)
	profile_flag = 1;
      else
	return 0;
      break;

    case 'q':
      if (!strcmp (arg, "quiet"))
	quiet_flag = 1;
      else
	return 0;
      break;

    case 'v':
      if (!strcmp (arg, "version"))
	version_flag = 1;
      else
	return 0;
      break;

    case 'w':
      if (arg[1] == 0)
	inhibit_warnings = 1;
      else
	return 0;
      break;

    case 'W':
      if (arg[1] == 0)
	{
	  extra_warnings = 1;
	  /* We save the value of warn_uninitialized, since if they put
	     -Wuninitialized on the command line, we need to generate a
	     warning about not using it without also specifying -O.  */
	  if (warn_uninitialized != 1)
	    warn_uninitialized = 2;
	}
      else
	return decode_W_option (arg + 1);
      break;
	  
    case 'a':
      if (arg[1] == 0)
	{
#if !defined (BLOCK_PROFILER) || !defined (FUNCTION_BLOCK_PROFILER)
	  warning ("`-a' option (basic block profile) not supported");
#else
	  profile_block_flag = (profile_block_flag < 2) ? 1 : 3;
#endif
	}
      else if (!strcmp (arg, "ax"))
	{
#if !defined (FUNCTION_BLOCK_PROFILER_EXIT) || !defined (BLOCK_PROFILER) || !defined (FUNCTION_BLOCK_PROFILER)
	  warning ("`-ax' option (jump profiling) not supported");
#else
	  profile_block_flag = (!profile_block_flag 
				|| profile_block_flag == 2) ? 2 : 3;
#endif
	}
      else if (!strncmp (arg, "aux-info", 8))
	{
	  flag_gen_aux_info = 1;
	  if (arg[8] == '\0')
	    {
	      if (argc == 1)
		return 0;
	      
	      aux_info_file_name = argv[1];
	      return 2;
	    }
	  else
	    aux_info_file_name = arg + 8;
	}
      else
	return 0;
      break;

    case 'o':
      if (arg[1] == 0)
	{
	  if (argc == 1)
	    return 0;
	  
	  asm_file_name = argv[1];
	  return 2;
	}
      return 0;

    case 'G':
      {
	int g_switch_val;
	int return_val;
	    
	if (arg[1] == 0)
	  {
	    if (argc == 1)
	      return 0;
	    
	    g_switch_val = read_integral_parameter (argv[1], 0, -1);
	    return_val = 2;
	  }
	else
	  {
	    g_switch_val = read_integral_parameter (arg + 1, 0, -1);
	    return_val = 1;
	  }
	    
	if (g_switch_val == -1)
	  return_val = 0;
	else
	  {
	    g_switch_set = TRUE;
	    g_switch_value = g_switch_val;
	  }
	    
	return return_val;
      }
    }
  
  return 1;
}


#ifdef SGI_MONGOOSE
void
check_gnu_errors (int * error_count, int * sorry_count)
{
  *error_count = errorcount;
  *sorry_count = sorrycount;
}
#endif /* SGI_MONGOOSE */

/* Entry point of cc1/c++.  Decode command args, then call compile_file.
   Exit code is 35 if can't open files, 34 if fatal error,
   33 if had nonfatal errors, else success.  */

#ifdef SGI_MONGOOSE
char *
gnu_init (int argc, char ** argv)
#else
extern int main PARAMS ((int, char **));

int
main (argc, argv)
     int argc;
     char **argv;
#endif /* SGI_MONGOOSE */
{
  register int i;
  char *p;

  /* save in case md file wants to emit args as a comment.  */
  save_argc = argc;
  save_argv = argv;

  p = argv[0] + strlen (argv[0]);
  while (p != argv[0] && !IS_DIR_SEPARATOR (p[-1]))
    --p;
  progname = p;

#ifdef HAVE_LC_MESSAGES
  setlocale (LC_MESSAGES, "");
#endif
  (void) bindtextdomain (PACKAGE, localedir);
  (void) textdomain (PACKAGE);

  signal (SIGFPE, float_signal);

#ifdef SIGPIPE
  signal (SIGPIPE, pipe_closed);
#endif

  decl_printable_name = decl_name;
  lang_expand_expr = (lang_expand_expr_t) do_abort;

  /* Initialize whether `char' is signed.  */
  flag_signed_char = DEFAULT_SIGNED_CHAR;
#ifdef DEFAULT_SHORT_ENUMS
  /* Initialize how much space enums occupy, by default.  */
  flag_short_enums = DEFAULT_SHORT_ENUMS;
#endif

  /* Initialize the garbage-collector.  */
  init_ggc ();
  ggc_add_root (&input_file_stack, 1, sizeof input_file_stack,
		mark_file_stack);
  ggc_add_rtx_root (&stack_limit_rtx, 1);
  ggc_add_tree_root (&current_function_decl, 1);
  ggc_add_tree_root (&current_function_func_begin_label, 1);

  /* Perform language-specific options intialization.  */
  lang_init_options ();

  /* Scan to see what optimization level has been specified.  That will
     determine the default value of many flags.  */
  for (i = 1; i < argc; i++)
    {
      if (!strcmp (argv[i], "-O"))
	{
	  optimize = 1;
	  optimize_size = 0;
	}
      else if (argv[i][0] == '-' && argv[i][1] == 'O')
	{
	  /* Handle -Os, -O2, -O3, -O69, ...  */
	  char *p = &argv[i][2];
	  
#ifdef SGI_MONGOOSE
	  if (!strncmp(p, "PT:", 3))
	    {
	    }
	  else
#endif /* SGI_MONGOOSE */
	  if ((p[0] == 's') && (p[1] == 0))
	    {
	      optimize_size = 1;
	      
	      /* Optimizing for size forces optimize to be 2. */
	      optimize = 2;
	    }
	  else
	    {	    
	      const int optimize_val = read_integral_parameter (p, p - 2, -1);
	      if (optimize_val != -1)
		{
		  optimize = optimize_val;
		  optimize_size = 0;
		}
	    }
	}
    }

  if (optimize >= 1)
    {
      flag_defer_pop = 1;
      flag_thread_jumps = 1;
#ifdef DELAY_SLOTS
      flag_delayed_branch = 1;
#endif
#ifdef CAN_DEBUG_WITHOUT_FP
      flag_omit_frame_pointer = 1;
#endif
    }

  if (optimize >= 2)
    {
#ifndef SGI_MONGOOSE
      flag_optimize_sibling_calls = 1;
      flag_cse_follow_jumps = 1;
      flag_cse_skip_blocks = 1;
      flag_gcse = 1;
      flag_expensive_optimizations = 1;
      flag_strength_reduce = 1;
      flag_rerun_cse_after_loop = 1;
      flag_rerun_loop_opt = 1;
      flag_caller_saves = 1;
      flag_force_mem = 1;
      flag_peephole2 = 1;
#ifdef INSN_SCHEDULING
      flag_schedule_insns = 1;
      flag_schedule_insns_after_reload = 1;
#endif
      flag_regmove = 1;
      flag_strict_aliasing = 1;
      flag_delete_null_pointer_checks = 1;
#endif /* SGI_MONGOOSE */
    }

  if (optimize >= 3)
    {
      flag_inline_functions = 1;
    }

  if (optimize < 2 || optimize_size)
    {
      align_loops = 1;
      align_jumps = 1;
      align_labels = 1;
      align_functions = 1;
    }

  /* Initialize target_flags before OPTIMIZATION_OPTIONS so the latter can
     modify it.  */
  target_flags = 0;
  set_target_switch ("");

#ifdef OPTIMIZATION_OPTIONS
  /* Allow default optimizations to be specified on a per-machine basis.  */
  OPTIMIZATION_OPTIONS (optimize, optimize_size);
#endif

  /* Initialize register usage now so switches may override.  */
  init_reg_sets ();

  /* Perform normal command line switch decoding.  */
  for (i = 1; i < argc;)
    {
      unsigned int lang_processed;
      unsigned int indep_processed;

      /* Give the language a chance to decode the option for itself.  */
      lang_processed = lang_decode_option (argc - i, argv + i);

      /* Now see if the option also has a language independent meaning.
	 Some options are both language specific and language independent,
	 eg --help.  It is possible that there might be options that should
	 only be decoded in a language independent way if they were not
	 decoded in a language specific way, which is why 'lang_processed'
	 is passed in.  */
      indep_processed = independent_decode_option (argc - i, argv + i,
						   lang_processed);

      if (lang_processed || indep_processed)
	i += (lang_processed > indep_processed
	      ? lang_processed : indep_processed);
      else
	{
	  const char * option = NULL;
	  const char * lang = NULL;
	  unsigned int j;
	  
	  /* It is possible that the command line switch is not valid for the
	     current language, but it is valid for another language.  In order
	     to be compatible with previous versions of the compiler (which
	     did not issue an error message in this case) we check for this
	     possibility here.  If we do find a match, then if extra_warnings
	     is set we generate a warning message, otherwise we will just
	     ignore the option.  */
	  for (j = 0; j < NUM_ELEM (documented_lang_options); j++)
	    {
	      option = documented_lang_options[j].option;
	      
	      if (option == NULL)
		lang = documented_lang_options[j].description;
	      else if (! strncmp (argv[i], option, strlen (option)))
		break;
	    }

	  if (j != NUM_ELEM (documented_lang_options))
	    {
	      if (extra_warnings)
		{
		  warning ("Ignoring command line option '%s'", argv[i]);
		  if (lang)
		    warning ("\
(It is valid for %s but not the selected language)", lang);
		}
	    }
	  else
	    error ("Unrecognized option `%s'", argv[i]);
	  
	  i++;
	}
    }

  /* Checker uses the frame pointer.  */
  if (flag_check_memory_usage)
    flag_omit_frame_pointer = 0;

  if (optimize == 0)
    {
      /* Inlining does not work if not optimizing,
	 so force it not to be done.  */
      flag_no_inline = 1;
      warn_inline = 0;

      /* The c_decode_option and lang_decode_option functions set
	 this to `2' if -Wall is used, so we can avoid giving out
	 lots of errors for people who don't realize what -Wall does.  */
      if (warn_uninitialized == 1)
	warning ("-Wuninitialized is not supported without -O");
    }

#ifdef OVERRIDE_OPTIONS
  /* Some machines may reject certain combinations of options.  */
  OVERRIDE_OPTIONS;
#endif

  if (exceptions_via_longjmp == 2)
    {
#ifdef DWARF2_UNWIND_INFO
      exceptions_via_longjmp = ! DWARF2_UNWIND_INFO;
#else
#ifdef IA64_UNWIND_INFO
      exceptions_via_longjmp = ! IA64_UNWIND_INFO;
#else
      exceptions_via_longjmp = 1;
#endif
#endif
    }

  /* Since each function gets its own handler data, we can't support the
     new model currently, since it depend on a specific rethrow label
     which is declared at the front of the table, and we can only
     have one such symbol in a file.  */
#ifdef IA64_UNWIND_INFO
  flag_new_exceptions = 0;
#endif

  /* Set up the align_*_log variables, defaulting them to 1 if they
     were still unset.  */
  if (align_loops <= 0) align_loops = 1;
  align_loops_log = floor_log2 (align_loops*2-1);
  if (align_jumps <= 0) align_jumps = 1;
  align_jumps_log = floor_log2 (align_jumps*2-1);
  if (align_labels <= 0) align_labels = 1;
  align_labels_log = floor_log2 (align_labels*2-1);
  if (align_functions <= 0) align_functions = 1;
  align_functions_log = floor_log2 (align_functions*2-1);
  
  if (profile_block_flag == 3)
    {
      warning ("`-ax' and `-a' are conflicting options. `-a' ignored.");
      profile_block_flag = 2;
    }

  /* Unrolling all loops implies that standard loop unrolling must also
     be done.  */
  if (flag_unroll_all_loops)
    flag_unroll_loops = 1;
  /* Loop unrolling requires that strength_reduction be on also.  Silently
     turn on strength reduction here if it isn't already on.  Also, the loop
     unrolling code assumes that cse will be run after loop, so that must
     be turned on also.  */
  if (flag_unroll_loops)
    {
      flag_strength_reduce = 1;
      flag_rerun_cse_after_loop = 1;
    }

  /* Warn about options that are not supported on this machine.  */
#ifndef INSN_SCHEDULING
  if (flag_schedule_insns || flag_schedule_insns_after_reload)
    warning ("instruction scheduling not supported on this target machine");
#endif
#ifndef DELAY_SLOTS
  if (flag_delayed_branch)
    warning ("this target machine does not have delayed branches");
#endif

  user_label_prefix = USER_LABEL_PREFIX;
  if (flag_leading_underscore != -1)
    {
      /* If the default prefix is more complicated than "" or "_", 
	 issue a warning and ignore this option.  */
      if (user_label_prefix[0] == 0 ||
	  (user_label_prefix[0] == '_' && user_label_prefix[1] == 0))
	{
	  user_label_prefix = flag_leading_underscore ? "_" : "";
	}
      else
	warning ("-f%sleading-underscore not supported on this target machine",
		 flag_leading_underscore ? "" : "no-");
    }

  /* If we are in verbose mode, write out the version and maybe all the
     option flags in use.  */
  if (version_flag)
    {
      print_version (stderr, "");
      if (! quiet_flag)
	print_switch_values (stderr, 0, MAX_LINE, "", " ", "\n");
    }

#ifdef SGI_MONGOOSE
  return filename;
#else
  compile_file (filename);
#endif /* SGI_MONGOOSE */

#if !defined(OS2) && !defined(VMS) && (!defined(_WIN32) || defined (__CYGWIN__)) && !defined(__INTERIX)
  if (flag_print_mem)
    {
      char *lim = (char *) sbrk (0);

      fnotice (stderr, "Data size %ld.\n", (long) (lim - (char *) &environ));
      fflush (stderr);

#ifndef __MSDOS__
#ifdef USG
      system ("ps -l 1>&2");
#else /* not USG */
      system ("ps v");
#endif /* not USG */
#endif
    }
#endif /* ! OS2 && ! VMS && (! _WIN32 || CYGWIN) && ! __INTERIX */

  if (errorcount)
    return (FATAL_EXIT_CODE);
  if (sorrycount)
    return (FATAL_EXIT_CODE);
  return (SUCCESS_EXIT_CODE);
}

/* Decode -m switches.  */
/* Decode the switch -mNAME.  */

static void
set_target_switch (name)
  const char *name;
{
  register size_t j;
  int valid_target_option = 0;

  for (j = 0; j < sizeof target_switches / sizeof target_switches[0]; j++)
    if (!strcmp (target_switches[j].name, name))
      {
	if (target_switches[j].value < 0)
	  target_flags &= ~-target_switches[j].value;
	else
	  target_flags |= target_switches[j].value;
	valid_target_option = 1;
      }

#ifdef TARGET_OPTIONS
  if (!valid_target_option)
    for (j = 0; j < sizeof target_options / sizeof target_options[0]; j++)
      {
	int len = strlen (target_options[j].prefix);
	if (!strncmp (target_options[j].prefix, name, len))
	  {
	    *target_options[j].variable = name + len;
	    valid_target_option = 1;
	  }
      }
#endif

  if (!valid_target_option)
    error ("Invalid option `%s'", name);
}

/* Print version information to FILE.
   Each line begins with INDENT (for the case where FILE is the
   assembler output file).  */

static void
print_version (file, indent)
     FILE *file;
     const char *indent;
{
#ifndef __VERSION__
#define __VERSION__ "[?]"
#endif
  fnotice (file,
#ifdef __GNUC__
	   "%s%s%s version %s (%s) compiled by GNU C version %s.\n"
#else
	   "%s%s%s version %s (%s) compiled by CC.\n"
#endif
	   , indent, *indent != 0 ? " " : "",
	   language_string, version_string, TARGET_NAME, __VERSION__);
}

/* Print an option value and return the adjusted position in the line.
   ??? We don't handle error returns from fprintf (disk full); presumably
   other code will catch a disk full though.  */

static int
print_single_switch (file, pos, max, indent, sep, term, type, name)
     FILE *file;
     int pos, max;
     const char *indent, *sep, *term, *type, *name;
{
  /* The ultrix fprintf returns 0 on success, so compute the result we want
     here since we need it for the following test.  */
  int len = strlen (sep) + strlen (type) + strlen (name);

  if (pos != 0
      && pos + len > max)
    {
      fprintf (file, "%s", term);
      pos = 0;
    }
  if (pos == 0)
    {
      fprintf (file, "%s", indent);
      pos = strlen (indent);
    }
  fprintf (file, "%s%s%s", sep, type, name);
  pos += len;
  return pos;
}
     
/* Print active target switches to FILE.
   POS is the current cursor position and MAX is the size of a "line".
   Each line begins with INDENT and ends with TERM.
   Each switch is separated from the next by SEP.  */

static void
print_switch_values (file, pos, max, indent, sep, term)
     FILE *file;
     int pos, max;
     const char *indent, *sep, *term;
{
  size_t j;
  char **p;

  /* Print the options as passed.  */

  pos = print_single_switch (file, pos, max, indent, *indent ? " " : "", term,
			     _("options passed: "), "");

  for (p = &save_argv[1]; *p != NULL; p++)
    if (**p == '-')
      {
	/* Ignore these.  */
	if (strcmp (*p, "-o") == 0)
	  {
	    if (p[1] != NULL)
	      p++;
	    continue;
	  }
	if (strcmp (*p, "-quiet") == 0)
	  continue;
	if (strcmp (*p, "-version") == 0)
	  continue;
	if ((*p)[1] == 'd')
	  continue;

	pos = print_single_switch (file, pos, max, indent, sep, term, *p, "");
      }
  if (pos > 0)
    fprintf (file, "%s", term);

  /* Print the -f and -m options that have been enabled.
     We don't handle language specific options but printing argv
     should suffice.  */

  pos = print_single_switch (file, 0, max, indent, *indent ? " " : "", term,
			     _("options enabled: "), "");

  for (j = 0; j < sizeof f_options / sizeof f_options[0]; j++)
    if (*f_options[j].variable == f_options[j].on_value)
      pos = print_single_switch (file, pos, max, indent, sep, term,
				 "-f", f_options[j].string);

  /* Print target specific options.  */

  for (j = 0; j < sizeof target_switches / sizeof target_switches[0]; j++)
    if (target_switches[j].name[0] != '\0'
	&& target_switches[j].value > 0
	&& ((target_switches[j].value & target_flags)
	    == target_switches[j].value))
      {
	pos = print_single_switch (file, pos, max, indent, sep, term,
				   "-m", target_switches[j].name);
      }

#ifdef TARGET_OPTIONS
  for (j = 0; j < sizeof target_options / sizeof target_options[0]; j++)
    if (*target_options[j].variable != NULL)
      {
	char prefix[256];
	sprintf (prefix, "-m%s", target_options[j].prefix);
	pos = print_single_switch (file, pos, max, indent, sep, term,
				   prefix, *target_options[j].variable);
      }
#endif

  fprintf (file, "%s", term);
}

/* Record the beginning of a new source file, named FILENAME.  */

void
debug_start_source_file (filename)
     register const char *filename ATTRIBUTE_UNUSED;
{
#ifdef DBX_DEBUGGING_INFO
  if (write_symbols == DBX_DEBUG)
    dbxout_start_new_source_file (filename);
#endif
#ifdef DWARF_DEBUGGING_INFO
  if (debug_info_level == DINFO_LEVEL_VERBOSE
      && write_symbols == DWARF_DEBUG)
    dwarfout_start_new_source_file (filename);
#endif /* DWARF_DEBUGGING_INFO */
#ifdef DWARF2_DEBUGGING_INFO
  if (debug_info_level == DINFO_LEVEL_VERBOSE
      && write_symbols == DWARF2_DEBUG)
    dwarf2out_start_source_file (filename);
#endif /* DWARF2_DEBUGGING_INFO */  
#ifdef SDB_DEBUGGING_INFO
  if (write_symbols == SDB_DEBUG)
    sdbout_start_new_source_file (filename);
#endif
}

/* Record the resumption of a source file.  LINENO is the line number in
   the source file we are returning to.  */

void
debug_end_source_file (lineno)
     register unsigned lineno ATTRIBUTE_UNUSED;
{
#ifdef DBX_DEBUGGING_INFO
  if (write_symbols == DBX_DEBUG)
    dbxout_resume_previous_source_file ();
#endif
#ifdef DWARF_DEBUGGING_INFO
  if (debug_info_level == DINFO_LEVEL_VERBOSE
      && write_symbols == DWARF_DEBUG)
    dwarfout_resume_previous_source_file (lineno);
#endif /* DWARF_DEBUGGING_INFO */
#ifdef DWARF2_DEBUGGING_INFO
  if (debug_info_level == DINFO_LEVEL_VERBOSE
      && write_symbols == DWARF2_DEBUG)
    dwarf2out_end_source_file ();
#endif /* DWARF2_DEBUGGING_INFO */
#ifdef SDB_DEBUGGING_INFO
  if (write_symbols == SDB_DEBUG)
    sdbout_resume_previous_source_file ();
#endif
}

/* Called from check_newline in c-parse.y.  The `buffer' parameter contains
   the tail part of the directive line, i.e. the part which is past the
   initial whitespace, #, whitespace, directive-name, whitespace part.  */

void
debug_define (lineno, buffer)
     register unsigned lineno ATTRIBUTE_UNUSED;
     register char *buffer ATTRIBUTE_UNUSED;
{
#ifdef DWARF_DEBUGGING_INFO
  if (debug_info_level == DINFO_LEVEL_VERBOSE
      && write_symbols == DWARF_DEBUG)
    dwarfout_define (lineno, buffer);
#endif /* DWARF_DEBUGGING_INFO */
#ifdef DWARF2_DEBUGGING_INFO
  if (debug_info_level == DINFO_LEVEL_VERBOSE
      && write_symbols == DWARF2_DEBUG)
    dwarf2out_define (lineno, buffer);
#endif /* DWARF2_DEBUGGING_INFO */
}

/* Called from check_newline in c-parse.y.  The `buffer' parameter contains
   the tail part of the directive line, i.e. the part which is past the
   initial whitespace, #, whitespace, directive-name, whitespace part.  */

void
debug_undef (lineno, buffer)
     register unsigned lineno ATTRIBUTE_UNUSED;
     register char *buffer ATTRIBUTE_UNUSED;
{
#ifdef DWARF_DEBUGGING_INFO
  if (debug_info_level == DINFO_LEVEL_VERBOSE
      && write_symbols == DWARF_DEBUG)
    dwarfout_undef (lineno, buffer);
#endif /* DWARF_DEBUGGING_INFO */
#ifdef DWARF2_DEBUGGING_INFO
  if (debug_info_level == DINFO_LEVEL_VERBOSE
      && write_symbols == DWARF2_DEBUG)
    dwarf2out_undef (lineno, buffer);
#endif /* DWARF2_DEBUGGING_INFO */
}

/* Returns nonzero if it is appropriate not to emit any debugging
   information for BLOCK, because it doesn't contain any instructions.
   This may not be the case for blocks containing nested functions, since
   we may actually call such a function even though the BLOCK information
   is messed up.  */

int
debug_ignore_block (block)
     tree block ATTRIBUTE_UNUSED;
{
  /* Never delete the BLOCK for the outermost scope
     of the function; we can refer to names from
     that scope even if the block notes are messed up.  */
  if (is_body_block (block))
    return 0;

#ifdef DWARF2_DEBUGGING_INFO
  if (write_symbols == DWARF2_DEBUG)
    return dwarf2out_ignore_block (block);
#endif

  return 1;
}
