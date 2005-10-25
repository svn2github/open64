/* Exception Handling interface routines.
   Copyright (C) 1996, 1997, 1998, 1999, 2000 Free Software Foundation, Inc.
   Contributed by Mike Stump <mrs@cygnus.com>.

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

#if !defined(NULL_RTX) && !defined(rtx)
typedef struct rtx_def *_except_rtx;
#define rtx _except_rtx
#endif

#ifdef TREE_CODE

/* A stack of labels. CHAIN points to the next entry in the stack.  */

struct label_node {
  union {
    rtx rlabel;
    tree tlabel;
  } u;
  struct label_node *chain;
};

/* An eh_entry is used to describe one exception handling region.

   OUTER_CONTEXT is the label used for rethrowing into the outer context.

   EXCEPTION_HANDLER_LABEL is the label corresponding to the handler
   for this region.

   LABEL_USED indicates whether a CATCH block has already used this
   label or not. New ones are needed for additional catch blocks if
   it has.

   FALSE_LABEL is used when either setjmp/longjmp exceptions are in
   use, or old style table exceptions. It contains the label for 
   branching to the next runtime type check as handlers are processed.

   FINALIZATION is the tree codes for the handler, or is NULL_TREE if
   one hasn't been generated yet, or is integer_zero_node to mark the
   end of a group of try blocks.  */

struct eh_entry {
  rtx outer_context;
  rtx exception_handler_label;
  tree finalization;
  int label_used;
  rtx false_label;
  rtx rethrow_label;
  /* If non-zero, this entry is for a handler created when we left an
     exception-region via goto.  */
  unsigned goto_entry_p : 1;
};
#else
struct label_node;
struct eh_entry;
#endif

/* A list of EH_ENTRYs. ENTRY is the entry; CHAIN points to the next
   entry in the list, or is NULL if this is the last entry.  */

struct eh_node {
  struct eh_entry *entry;
  struct eh_node *chain;
};

/* A stack of EH_ENTRYs. TOP is the topmost entry on the stack. TOP is
   NULL if the stack is empty.  */

struct eh_stack {
  struct eh_node *top;
};

/* A queue of EH_ENTRYs. HEAD is the front of the queue; TAIL is the
   end (the latest entry). HEAD and TAIL are NULL if the queue is
   empty.  */

struct eh_queue {
  struct eh_node *head;
  struct eh_node *tail;
  struct eh_queue *next;
};

/* Used to save exception handling status for each function.  */
struct eh_status
{
  /* A stack used for keeping track of the currently active exception
     handling region.  As each exception region is started, an entry
     describing the region is pushed onto this stack.  The current
     region can be found by looking at the top of the stack, and as we
     exit regions, the corresponding entries are popped. 

     Entries cannot overlap; they can be nested. So there is only one
     entry at most that corresponds to the current instruction, and that
     is the entry on the top of the stack.  */
  struct eh_stack x_ehstack;
  /* This stack is used to represent what the current eh region is
     for the catch blocks beings processed */
  struct eh_stack x_catchstack;
  /* A queue used for tracking which exception regions have closed.
     As we exit a region, we enqueue a new entry. The entries are then
     dequeued during expand_leftover_cleanups and
     expand_start_all_catch.  */
  struct eh_queue *x_ehqueue;
  /* Insns for all of the exception handlers for the current function.
     They are currently emitted by the frontend code.  */
  rtx x_catch_clauses;
  /* End of exception handler insn sequence.  */
  rtx x_catch_clauses_last;
  /* A random data area for the front end's own use.  */
  struct label_node *x_false_label_stack;
  /* Keeps track of the label to resume to should one want to resume
     normal control flow out of a handler (instead of, say, returning to
     the caller of the current function or exiting the program).  */
  struct label_node *x_caught_return_label_stack;
  /* A stack (TREE_LIST) of lists of handlers.  The TREE_VALUE of each
     node is itself a TREE_CHAINed list of handlers for regions that
     are not yet closed. The TREE_VALUE of each entry contains the
     handler for the corresponding entry on the ehstack.  */
  union tree_node *x_protect_list;
  /* The EH context.  Nonzero if the function has already
     fetched a pointer to the EH context  for exception handling.  */
  rtx ehc;
  /* The label generated by expand_builtin_eh_return.  */
  rtx x_eh_return_stub_label;
};

#define ehstack (cfun->eh->x_ehstack)
#define catchstack (cfun->eh->x_catchstack)
#define ehqueue (cfun->eh->x_ehqueue)
#define catch_clauses (cfun->eh->x_catch_clauses)
#define catch_clauses_last (cfun->eh->x_catch_clauses_last)
#define false_label_stack (cfun->eh->x_false_label_stack)
#define caught_return_label_stack (cfun->eh->x_caught_return_label_stack)
#define protect_list (cfun->eh->x_protect_list)
#define current_function_ehc (cfun->eh->ehc)
#define eh_return_stub_label (cfun->eh->x_eh_return_stub_label)

#ifdef TREE_CODE
/* Start an exception handling region.  All instructions emitted after
   this point are considered to be part of the region until
   expand_eh_region_end () is invoked.  */

extern void expand_eh_region_start		PARAMS ((void));

/* Just like expand_eh_region_start, except if a cleanup action is
   entered on the cleanup chain, the TREE_PURPOSE of the element put
   on the chain is DECL.  DECL should be the associated VAR_DECL, if
   any, otherwise it should be NULL_TREE.  */

extern void expand_eh_region_start_for_decl	PARAMS ((tree));

/* Start an exception handling region for the given cleanup action.
   All instructions emitted after this point are considered to be part
   of the region until expand_eh_region_end () is invoked.  CLEANUP is
   the cleanup action to perform.  The return value is true if the
   exception region was optimized away.  If that case,
   expand_eh_region_end does not need to be called for this cleanup,
   nor should it be.

   This routine notices one particular common case in C++ code
   generation, and optimizes it so as to not need the exception
   region.  */

extern int expand_eh_region_start_tree		PARAMS ((tree, tree));

/* End an exception handling region.  The information about the region
   is found on the top of ehstack.

   HANDLER is either the cleanup for the exception region, or if we're
   marking the end of a try block, HANDLER is integer_zero_node.

   HANDLER will be transformed to rtl when expand_leftover_cleanups ()
   is invoked.  */

extern void expand_eh_region_end		PARAMS ((tree));

/* Push RLABEL or TLABEL onto LABELSTACK. Only one of RLABEL or TLABEL
   should be set; the other must be NULL.  */

extern void push_label_entry	PARAMS ((struct label_node **labelstack,
					 rtx rlabel, tree tlabel));

/* Pop the topmost entry from LABELSTACK and return its value as an
   rtx node. If LABELSTACK is empty, return NULL.  */

extern rtx pop_label_entry	PARAMS ((struct label_node **labelstack));

/* Return the topmost entry of LABELSTACK as a tree node, or return
   NULL_TREE if LABELSTACK is empty.  */

extern tree top_label_entry	PARAMS ((struct label_node **labelstack));

#endif

/* Test: is exception handling turned on? */

extern int doing_eh			        PARAMS ((int));

/* Toplevel initialization for EH.  */

void set_exception_lang_code                    PARAMS ((int));
void set_exception_version_code                 PARAMS ((int));

/* A list of handlers asocciated with an exception region. HANDLER_LABEL
   is the the label that control should be transfered to if the data
   in TYPE_INFO matches an exception. a value of NULL_TREE for TYPE_INFO
   means This is a cleanup, and must always be called. A value of
   CATCH_ALL_TYPE works like a cleanup, but a call to the runtime matcher
   is still performed to avoid being caught by a different language
   exception. NEXT is a pointer to the next handler for this region. 
   NULL means there are no more. */

typedef struct handler_info 
{
  rtx handler_label;
  int handler_number;
  void *type_info;
  struct handler_info *next;
} handler_info;


/* Add new handler information to an exception range. The  first parameter
   specifies the range number (returned from new_eh_entry()). The second
   parameter specifies the handler.  By default the handler is inserted at
   the end of the list. A handler list may contain only ONE NULL_TREE
   typeinfo entry. Regardless where it is positioned, a NULL_TREE entry
   is always output as the LAST handler in the exception table for a region. */

void add_new_handler			PARAMS ((int, struct handler_info *));

/* Remove a handler label. The handler label is being deleted, so all
   regions which reference this handler should have it removed from their
   list of possible handlers. Any region which has the final handler
   removed can be deleted. */

void remove_handler			PARAMS ((rtx));

/* Create a new handler structure initialized with the handler label and
   typeinfo fields passed in. */

struct handler_info *get_new_handler            PARAMS ((rtx, void *));

/* Make a duplicate of an exception region by copying all the handlers
   for an exception region. Return the new handler index. */

int duplicate_eh_handlers		PARAMS ((int, int, rtx (*)(rtx)));

/* map symbol refs for rethrow */

rtx rethrow_symbol_map                          PARAMS ((rtx, rtx (*)(rtx)));

/* Is the rethrow label for a region used? */

int rethrow_used                                PARAMS ((int));

/* Update the rethrow references to reflect rethrows which have been
   optimized away.  */

void update_rethrow_references			PARAMS ((void));

/* Get a pointer to the first handler in an exception region's list. */

struct handler_info *get_first_handler          PARAMS ((int));

/* Find all the runtime handlers type matches currently referenced */

int find_all_handler_type_matches               PARAMS ((void ***));

/* The eh_nesting_info structure is used to find a list of valid handlers
   for any arbitrary exception region.  When init_eh_nesting_info is called,
   the information is all pre-calculated and entered in this structure.
   REGION_INDEX is a vector over all possible region numbers.  Since the
   number of regions is typically much smaller than the range of block
   numbers, this is a sparse vector and the other data structures are 
   represented as dense vectors.  Indexed with an exception region number, this
   returns the index to use in the other data structures to retreive the
   correct information.
   HANDLERS is an array of vectors which point to handler_info structures.
   when indexed, it gives the list of all possible handlers which can 
   be reached by a throw from this exception region.
   NUM_HANDLERS is the equivilent array indicating how many handler
   pointers there are in the HANDLERS vector.
   OUTER_INDEX indicates which index represents the information for the
   outer block.  0 indicates there is no outer context.
   REGION_COUNT is the number of regions.  */

typedef struct eh_nesting 
{
  int *region_index;
  handler_info ***handlers;
  int *num_handlers;
  int *outer_index;
  int region_count;
} eh_nesting_info;

/* Initialize the eh_nesting_info structure.  */

eh_nesting_info *init_eh_nesting_info 		PARAMS ((void));

/* Get a list of handlers reachable from a an exception region/insn.  */

int reachable_handlers 			PARAMS ((int, eh_nesting_info *, rtx, 
						 handler_info ***handlers));

/* Free the eh_nesting_info structure.  */

void free_eh_nesting_info 			PARAMS ((eh_nesting_info *));

extern void init_eh				PARAMS ((void));

/* Initialization for the per-function EH data.  */

extern void init_eh_for_function		PARAMS ((void));

/* Generate an exception label. Use instead of gen_label_rtx */

extern rtx gen_exception_label                  PARAMS ((void));

/* Adds an EH table entry for EH entry number N. Called from
   final_scan_insn for NOTE_INSN_EH_REGION_BEG.  */

extern void add_eh_table_entry			PARAMS ((int n));

/* Start a catch clause, triggered by runtime value paramter. */

#ifdef TREE_CODE
extern void start_catch_handler                 PARAMS ((tree));
#endif

/* End an individual catch clause. */

extern void end_catch_handler                   PARAMS ((void));

/* Returns a non-zero value if we need to output an exception table.  */

extern int exception_table_p			PARAMS ((void));

/* Outputs the exception table if we have one.  */

extern void output_exception_table		PARAMS ((void));
extern void output_exception_table_data		PARAMS ((void));

/* Free the exception table.  */

extern void free_exception_table		PARAMS((void));

/* Used by the ia64 unwind format to output data for an individual 
   function.  */

extern void output_function_exception_table	PARAMS((void));

/* Given a return address in ADDR, determine the address we should use
   to find the corresponding EH region.  */

extern rtx eh_outer_context			PARAMS ((rtx addr));

/* Called at the start of a block of try statements for which there is
   a supplied catch handler.  */

extern void expand_start_try_stmts 		PARAMS ((void));

/* Called at the start of a block of catch statements. It terminates the
   previous set of try statements.  */

extern void expand_start_all_catch		PARAMS ((void));

/* Called at the end of a block of catch statements.  */

extern void expand_end_all_catch		PARAMS ((void));

/* Begin a region that will contain entries created with
   add_partial_entry.  */

extern void begin_protect_partials              PARAMS ((void));

#ifdef TREE_CODE
/* Create a new exception region and add the handler for the region
   onto a list. These regions will be ended (and their handlers
   emitted) when end_protect_partials is invoked.  */

extern void add_partial_entry			PARAMS ((tree handler));
#endif

/* End all of the pending exception regions that have handlers added with
   push_protect_entry ().  */

extern void end_protect_partials		PARAMS ((void));

/* An internal throw.  */

extern void expand_internal_throw		PARAMS ((void));

/* Called from expand_exception_blocks and expand_end_catch_block to
   expand and pending handlers.  */

extern void expand_leftover_cleanups		PARAMS ((void));

/* If necessary, emit insns to get EH context for the current
   function. */

extern void emit_eh_context			PARAMS ((void));

/* Builds a list of handler labels and puts them in the global
   variable exception_handler_labels.  */

extern void find_exception_handler_labels	PARAMS ((void));

/* Determine if an arbitrary label is an exception label */

extern int is_exception_handler_label           PARAMS ((int));

/* Performs sanity checking on the check_exception_handler_labels
   list.  */

extern void check_exception_handler_labels	PARAMS ((void));

/* Keeps track of the label used as the context of a throw to rethrow an
   exception to the outer exception region.  */

extern struct label_node *outer_context_label_stack;

/* A list of labels used for exception handlers. It is created by
   find_exception_handler_labels for the optimization passes.  */

extern rtx exception_handler_labels;

/* Determine if the given INSN can throw an exception.  */

extern int can_throw                            PARAMS ((rtx));

/* Return nonzero if nothing in this function can throw.  */

extern int nothrow_function_p			PARAMS ((void));

/* Performs optimizations for exception handling, such as removing
   unnecessary exception regions. Invoked from jump_optimize ().  */

extern void exception_optimize			PARAMS ((void));

/* Return EH context (and set it up once per fn).  */
extern rtx get_eh_context			PARAMS ((void));

/* Get the dynamic handler chain.  */
extern rtx get_dynamic_handler_chain		PARAMS ((void));

/* Get the dynamic cleanup chain.  */
extern rtx get_dynamic_cleanup_chain		PARAMS ((void));

/* Throw an exception.  */

extern void emit_throw				PARAMS ((void));

/* Save away the current ehqueue.  */
extern void push_ehqueue                        PARAMS ((void));

/* Restore a previously pushed ehqueue.  */
extern void pop_ehqueue                         PARAMS ((void));

/* One to use setjmp/longjmp method of generating code.  */

extern int exceptions_via_longjmp;

/* One to enable asynchronous exception support.  */

extern int asynchronous_exceptions;

/* One to protect cleanup actions with a handler that calls
   __terminate, zero otherwise.  */

extern int protect_cleanup_actions_with_terminate;

#ifdef TREE_CODE
extern tree protect_with_terminate		PARAMS ((tree));
#endif

extern void expand_fixup_region_start	PARAMS ((void));
#ifdef TREE_CODE
extern void expand_fixup_region_end	PARAMS ((tree));
#endif

/* Various hooks for the DWARF 2 __throw routine.  */

void expand_builtin_unwind_init		PARAMS ((void));
rtx expand_builtin_dwarf_fp_regnum	PARAMS ((void));
#ifdef TREE_CODE
rtx expand_builtin_frob_return_addr	PARAMS ((tree));
rtx expand_builtin_extract_return_addr	PARAMS ((tree));
void expand_builtin_init_dwarf_reg_sizes	PARAMS ((tree));
void expand_builtin_eh_return		PARAMS ((tree, tree, tree));
#endif
void expand_eh_return			PARAMS ((void));


/* Checking whether 2 instructions are within the same exception region. */

int in_same_eh_region                   PARAMS ((rtx, rtx));
void free_insn_eh_region                PARAMS ((void));
void init_insn_eh_region                PARAMS ((rtx, int));

#ifdef rtx
#undef rtx
#endif
