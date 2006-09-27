/* Register Transfer Language (RTL) definitions for GNU C-Compiler
   Copyright (C) 1987, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998,
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

#ifndef _RTL_H
#define _RTL_H

struct function;

#include "machmode.h"

#undef FFS  /* Some systems predefine this symbol; don't let it interfere.  */
#undef FLOAT /* Likewise.  */
#undef ABS /* Likewise.  */
#undef PC /* Likewise.  */

#ifndef TREE_CODE
union tree_node;
#endif

/* Register Transfer Language EXPRESSIONS CODES */

#define RTX_CODE	enum rtx_code
enum rtx_code  {

#define DEF_RTL_EXPR(ENUM, NAME, FORMAT, CLASS)   ENUM ,
#include "rtl.def"		/* rtl expressions are documented here */
#undef DEF_RTL_EXPR

  LAST_AND_UNUSED_RTX_CODE};	/* A convenient way to get a value for
				   NUM_RTX_CODE.
				   Assumes default enum value assignment.  */

#define NUM_RTX_CODE ((int)LAST_AND_UNUSED_RTX_CODE)
				/* The cast here, saves many elsewhere.  */

extern const int rtx_length[];
#define GET_RTX_LENGTH(CODE)		(rtx_length[(int) (CODE)])

extern const char * const rtx_name[];
#define GET_RTX_NAME(CODE)		(rtx_name[(int) (CODE)])

extern const char * const rtx_format[];
#define GET_RTX_FORMAT(CODE)		(rtx_format[(int) (CODE)])

extern const char rtx_class[];
#define GET_RTX_CLASS(CODE)		(rtx_class[(int) (CODE)])

/* The flags and bitfields of an ADDR_DIFF_VEC.  BASE is the base label
   relative to which the offsets are calculated, as explained in rtl.def.  */
typedef struct
{
  /* Set at the start of shorten_branches - ONLY WHEN OPTIMIZING - : */
  unsigned min_align: 8;
  /* Flags: */
  unsigned base_after_vec: 1; /* BASE is after the ADDR_DIFF_VEC.  */
  unsigned min_after_vec: 1;  /* minimum address target label is after the ADDR_DIFF_VEC.  */
  unsigned max_after_vec: 1;  /* maximum address target label is after the ADDR_DIFF_VEC.  */
  unsigned min_after_base: 1; /* minimum address target label is after BASE.  */
  unsigned max_after_base: 1; /* maximum address target label is after BASE.  */
  /* Set by the actual branch shortening process - ONLY WHEN OPTIMIZING - : */
  unsigned offset_unsigned: 1; /* offsets have to be treated as unsigned.  */
  unsigned : 2;
  unsigned scale : 8;
} addr_diff_vec_flags;

/* Common union for an element of an rtx.  */

typedef union rtunion_def
{
  HOST_WIDE_INT rtwint;
  int rtint;
  unsigned int rtuint;
  const char *rtstr;
  struct rtx_def *rtx;
  struct rtvec_def *rtvec;
  enum machine_mode rttype;
  addr_diff_vec_flags rt_addr_diff_vec_flags;
  struct cselib_val_struct *rt_cselib;
  struct bitmap_head_def *rtbit;
  union tree_node *rttree;
  struct basic_block_def *bb;
} rtunion;

/* RTL expression ("rtx").  */

typedef struct rtx_def
{
  /* The kind of expression this is.  */
  ENUM_BITFIELD(rtx_code) code: 16;

  /* The kind of value the expression has.  */
  ENUM_BITFIELD(machine_mode) mode : 8;

  /* 1 in an INSN if it can alter flow of control
     within this function.
     LINK_COST_ZERO in an INSN_LIST.  */
  unsigned int jump : 1;
  /* 1 in an INSN if it can call another function.
     LINK_COST_FREE in an INSN_LIST.  */
  unsigned int call : 1;
  /* 1 in a MEM or REG if value of this expression will never change
     during the current function, even though it is not
     manifestly constant.
     1 in a SUBREG if it is from a promoted variable that is unsigned.
     1 in a SYMBOL_REF if it addresses something in the per-function
     constants pool.
     1 in a CALL_INSN if it is a const call.
     1 in a JUMP_INSN if it is a branch that should be annulled.  Valid from
     reorg until end of compilation; cleared before used.  */
  unsigned int unchanging : 1;
  /* 1 in a MEM expression if contents of memory are volatile.
     1 in an INSN, CALL_INSN, JUMP_INSN, CODE_LABEL or BARRIER
     if it is deleted.
     1 in a REG expression if corresponds to a variable declared by the user.
     0 for an internally generated temporary.
     In a SYMBOL_REF, this flag is used for machine-specific purposes.
     In a LABEL_REF or in a REG_LABEL note, this is LABEL_REF_NONLOCAL_P.  */
  unsigned int volatil : 1;
  /* 1 in a MEM referring to a field of an aggregate.
     0 if the MEM was a variable or the result of a * operator in C;
     1 if it was the result of a . or -> operator (on a struct) in C.
     1 in a REG if the register is used only in exit code a loop.
     1 in a SUBREG expression if was generated from a variable with a
     promoted mode.
     1 in a CODE_LABEL if the label is used for nonlocal gotos
     and must not be deleted even if its count is zero.
     1 in a LABEL_REF if this is a reference to a label outside the
     current loop.
     1 in an INSN, JUMP_INSN, or CALL_INSN if this insn must be scheduled
     together with the preceding insn.  Valid only within sched.
     1 in an INSN, JUMP_INSN, or CALL_INSN if insn is in a delay slot and
     from the target of a branch.  Valid from reorg until end of compilation;
     cleared before used.  */
  unsigned int in_struct : 1;
  /* 1 if this rtx is used.  This is used for copying shared structure.
     See `unshare_all_rtl'.
     In a REG, this is not needed for that purpose, and used instead
     in `leaf_renumber_regs_insn'.
     In a SYMBOL_REF, means that emit_library_call
     has used it as the function.  */
  unsigned int used : 1;
  /* Nonzero if this rtx came from procedure integration.
     In a REG, nonzero means this reg refers to the return value
     of the current function.  */
  unsigned integrated : 1;
  /* 1 in an INSN or a SET if this rtx is related to the call frame,
     either changing how we compute the frame address or saving and
     restoring registers in the prologue and epilogue.
     1 in a MEM if the MEM refers to a scalar, rather than a member of
     an aggregate.  */
  unsigned frame_related : 1;

  /* The first element of the operands of this rtx.
     The number of operands and their types are controlled
     by the `code' field, according to rtl.def.  */
  rtunion fld[1];
} *rtx;

#define NULL_RTX (rtx) 0

/* Define macros to access the `code' field of the rtx.  */

#define GET_CODE(RTX)		((RTX)->code)
#define PUT_CODE(RTX, CODE)	((RTX)->code = (CODE))

#define GET_MODE(RTX)		((RTX)->mode)
#define PUT_MODE(RTX, MODE)	((RTX)->mode = (MODE))

#define RTX_INTEGRATED_P(RTX) ((RTX)->integrated)
#define RTX_UNCHANGING_P(RTX) ((RTX)->unchanging)
#define RTX_FRAME_RELATED_P(RTX) ((RTX)->frame_related)

/* RTL vector.  These appear inside RTX's when there is a need
   for a variable number of things.  The principle use is inside
   PARALLEL expressions.  */

typedef struct rtvec_def{
  int num_elem;		/* number of elements */
  struct rtx_def *elem[1];
} *rtvec;

#define NULL_RTVEC (rtvec) 0

#define GET_NUM_ELEM(RTVEC)		((RTVEC)->num_elem)
#define PUT_NUM_ELEM(RTVEC, NUM)	((RTVEC)->num_elem = (NUM))

/* 1 if X is a REG.  */

#define REG_P(X) (GET_CODE (X) == REG)

/* 1 if X is a constant value that is an integer.  */

#define CONSTANT_P(X)   \
  (GET_CODE (X) == LABEL_REF || GET_CODE (X) == SYMBOL_REF		\
   || GET_CODE (X) == CONST_INT || GET_CODE (X) == CONST_DOUBLE		\
   || GET_CODE (X) == CONST || GET_CODE (X) == HIGH			\
   || GET_CODE (X) == CONSTANT_P_RTX)

/* General accessor macros for accessing the fields of an rtx.  */

#if defined ENABLE_RTL_CHECKING && (GCC_VERSION >= 2007)
/* The bit with a star outside the statement expr and an & inside is
   so that N can be evaluated only once.  */
#define RTL_CHECK1(RTX, N, C1) __extension__				\
(*({ rtx _rtx = (RTX); int _n = (N);					\
     enum rtx_code _code = GET_CODE (_rtx);				\
     if (_n < 0 || _n >= GET_RTX_LENGTH (_code))			\
       rtl_check_failed_bounds (_rtx, _n, __FILE__, __LINE__,		\
				__PRETTY_FUNCTION__);			\
     if (GET_RTX_FORMAT(_code)[_n] != C1)				\
       rtl_check_failed_type1 (_rtx, _n, C1, __FILE__, __LINE__,	\
			       __PRETTY_FUNCTION__);			\
     &_rtx->fld[_n]; }))

#define RTL_CHECK2(RTX, N, C1, C2) __extension__			\
(*({ rtx _rtx = (RTX); int _n = (N);					\
     enum rtx_code _code = GET_CODE (_rtx);				\
     if (_n < 0 || _n >= GET_RTX_LENGTH (_code))			\
       rtl_check_failed_bounds (_rtx, _n, __FILE__, __LINE__,		\
				__PRETTY_FUNCTION__);			\
     if (GET_RTX_FORMAT(_code)[_n] != C1				\
	 && GET_RTX_FORMAT(_code)[_n] != C2)				\
       rtl_check_failed_type2 (_rtx, _n, C1, C2, __FILE__, __LINE__,	\
			       __PRETTY_FUNCTION__);			\
     &_rtx->fld[_n]; }))

#define RTL_CHECKC1(RTX, N, C) __extension__				\
(*({ rtx _rtx = (RTX); int _n = (N);					\
     if (GET_CODE (_rtx) != C)						\
       rtl_check_failed_code1 (_rtx, C, __FILE__, __LINE__,		\
			       __PRETTY_FUNCTION__);			\
     &_rtx->fld[_n]; }))

#define RTL_CHECKC2(RTX, N, C1, C2) __extension__			\
(*({ rtx _rtx = (RTX); int _n = (N);					\
     enum rtx_code _code = GET_CODE (_rtx);				\
     if (_code != C1 && _code != C2)					\
       rtl_check_failed_code2 (_rtx, C1, C2, __FILE__, __LINE__,	\
			       __PRETTY_FUNCTION__);			\
     &_rtx->fld[_n]; }))

#define RTVEC_ELT(RTVEC, I) __extension__				\
(*({ rtvec _rtvec = (RTVEC); int _i = (I);				\
     if (_i < 0 || _i >= GET_NUM_ELEM (_rtvec))				\
       rtvec_check_failed_bounds (_rtvec, _i, __FILE__, __LINE__,	\
				  __PRETTY_FUNCTION__);			\
     &_rtvec->elem[_i]; }))

extern void rtl_check_failed_bounds PARAMS ((rtx, int,
					   const char *, int, const char *))
    ATTRIBUTE_NORETURN;
extern void rtl_check_failed_type1 PARAMS ((rtx, int, int,
					  const char *, int, const char *))
    ATTRIBUTE_NORETURN;
extern void rtl_check_failed_type2 PARAMS ((rtx, int, int, int,
					  const char *, int, const char *))
    ATTRIBUTE_NORETURN;
extern void rtl_check_failed_code1 PARAMS ((rtx, enum rtx_code,
					  const char *, int, const char *))
    ATTRIBUTE_NORETURN;
extern void rtl_check_failed_code2 PARAMS ((rtx, enum rtx_code, enum rtx_code,
					  const char *, int, const char *))
    ATTRIBUTE_NORETURN;
extern void rtvec_check_failed_bounds PARAMS ((rtvec, int,
					     const char *, int, const char *))
    ATTRIBUTE_NORETURN;

#else   /* not ENABLE_RTL_CHECKING */

#define RTL_CHECK1(RTX, N, C1)      ((RTX)->fld[N])
#define RTL_CHECK2(RTX, N, C1, C2)  ((RTX)->fld[N])
#define RTL_CHECKC1(RTX, N, C)	    ((RTX)->fld[N])
#define RTL_CHECKC2(RTX, N, C1, C2) ((RTX)->fld[N])
#define RTVEC_ELT(RTVEC, I)	    ((RTVEC)->elem[I])

#endif

#define XWINT(RTX, N)	(RTL_CHECK1(RTX, N, 'w').rtwint)
#define XINT(RTX, N)	(RTL_CHECK2(RTX, N, 'i', 'n').rtint)
#define XSTR(RTX, N)	(RTL_CHECK2(RTX, N, 's', 'S').rtstr)
#define XEXP(RTX, N)	(RTL_CHECK2(RTX, N, 'e', 'u').rtx)
#define XVEC(RTX, N)	(RTL_CHECK2(RTX, N, 'E', 'V').rtvec)
#define XMODE(RTX, N)	(RTL_CHECK1(RTX, N, 'M').rttype)
#define XBITMAP(RTX, N) (RTL_CHECK1(RTX, N, 'b').rtbit)
#define XTREE(RTX, N)   (RTL_CHECK1(RTX, N, 't').rttree)
#define XBBDEF(RTX, N)	(RTL_CHECK1(RTX, N, 'B').bb)

#define XVECEXP(RTX, N, M)	RTVEC_ELT (XVEC (RTX, N), M)
#define XVECLEN(RTX, N)		GET_NUM_ELEM (XVEC (RTX, N))

/* These are like XWINT, etc. except that they expect a '0' field instead
   of the normal type code.  */

#define X0WINT(RTX, N)	   (RTL_CHECK1(RTX, N, '0').rtwint)
#define X0INT(RTX, N)	   (RTL_CHECK1(RTX, N, '0').rtint)
#define X0STR(RTX, N)	   (RTL_CHECK1(RTX, N, '0').rtstr)
#define X0EXP(RTX, N)	   (RTL_CHECK1(RTX, N, '0').rtx)
#define X0VEC(RTX, N)	   (RTL_CHECK1(RTX, N, '0').rtvec)
#define X0MODE(RTX, N)	   (RTL_CHECK1(RTX, N, '0').rttype)
#define X0BITMAP(RTX, N)   (RTL_CHECK1(RTX, N, '0').rtbit)
#define X0TREE(RTX, N)	   (RTL_CHECK1(RTX, N, '0').rttree)
#define X0BBDEF(RTX, N)	   (RTL_CHECK1(RTX, N, '0').bb)
#define X0ADVFLAGS(RTX, N) (RTL_CHECK1(RTX, N, '0').rt_addr_diff_vec_flags)
#define X0CSELIB(RTX, N)   (RTL_CHECK1(RTX, N, '0').rt_cselib)

#define XCWINT(RTX, N, C)     (RTL_CHECKC1(RTX, N, C).rtwint)
#define XCINT(RTX, N, C)      (RTL_CHECKC1(RTX, N, C).rtint)
#define XCUINT(RTX, N, C)     (RTL_CHECKC1(RTX, N, C).rtuint)
#define XCSTR(RTX, N, C)      (RTL_CHECKC1(RTX, N, C).rtstr)
#define XCEXP(RTX, N, C)      (RTL_CHECKC1(RTX, N, C).rtx)
#define XCVEC(RTX, N, C)      (RTL_CHECKC1(RTX, N, C).rtvec)
#define XCMODE(RTX, N, C)     (RTL_CHECKC1(RTX, N, C).rttype)
#define XCBITMAP(RTX, N, C)   (RTL_CHECKC1(RTX, N, C).rtbit)
#define XCTREE(RTX, N, C)     (RTL_CHECKC1(RTX, N, C).rttree)
#define XCBBDEF(RTX, N, C)    (RTL_CHECKC1(RTX, N, C).bb)
#define XCADVFLAGS(RTX, N, C) (RTL_CHECKC1(RTX, N, C).rt_addr_diff_vec_flags)
#define XCCSELIB(RTX, N, C)   (RTL_CHECKC1(RTX, N, C).rt_cselib)

#define XCVECEXP(RTX, N, M, C)	RTVEC_ELT (XCVEC (RTX, N, C), M)
#define XCVECLEN(RTX, N, C)	GET_NUM_ELEM (XCVEC (RTX, N, C))

#define XC2EXP(RTX, N, C1, C2)      (RTL_CHECKC2(RTX, N, C1, C2).rtx)

/* ACCESS MACROS for particular fields of insns.  */

/* Determines whether X is an insn.  */
#define INSN_P(X)       (GET_RTX_CLASS (GET_CODE(X)) == 'i')

/* Holds a unique number for each insn.
   These are not necessarily sequentially increasing.  */
#define INSN_UID(INSN)  XINT(INSN, 0)

/* Chain insns together in sequence.  */
#define PREV_INSN(INSN)	XEXP(INSN, 1)
#define NEXT_INSN(INSN)	XEXP(INSN, 2)

/* The body of an insn.  */
#define PATTERN(INSN)	XEXP(INSN, 3)

/* Code number of instruction, from when it was recognized.
   -1 means this instruction has not been recognized yet.  */
#define INSN_CODE(INSN) XINT(INSN, 4)

/* Set up in flow.c; empty before then.
   Holds a chain of INSN_LIST rtx's whose first operands point at
   previous insns with direct data-flow connections to this one.
   That means that those insns set variables whose next use is in this insn.
   They are always in the same basic block as this insn.  */
#define LOG_LINKS(INSN)	XEXP(INSN, 5)

/* 1 if insn has been deleted.  */
#define INSN_DELETED_P(INSN) ((INSN)->volatil)

/* 1 if insn is a call to a const function.  */
#define CONST_CALL_P(INSN) ((INSN)->unchanging)

/* 1 if insn (assumed to be a CALL_INSN) is a sibling call.  */
#define SIBLING_CALL_P(INSN) ((INSN)->jump)

/* 1 if insn is a branch that should not unconditionally execute its
   delay slots, i.e., it is an annulled branch.   */
#define INSN_ANNULLED_BRANCH_P(INSN) ((INSN)->unchanging)

/* 1 if insn is in a delay slot and is from the target of the branch.  If
   the branch insn has INSN_ANNULLED_BRANCH_P set, this insn should only be
   executed if the branch is taken.  For annulled branches with this bit
   clear, the insn should be executed only if the branch is not taken.  */
#define INSN_FROM_TARGET_P(INSN) ((INSN)->in_struct)

#define ADDR_DIFF_VEC_FLAGS(RTX) X0ADVFLAGS(RTX, 4)

#define CSELIB_VAL_PTR(RTX) X0CSELIB(RTX, 0)

/* Holds a list of notes on what this insn does to various REGs.
   It is a chain of EXPR_LIST rtx's, where the second operand is the
   chain pointer and the first operand is the REG being described.
   The mode field of the EXPR_LIST contains not a real machine mode
   but a value from enum reg_note.  */

#define REG_NOTES(INSN)	XEXP(INSN, 6)

/* Don't forget to change reg_note_name in rtl.c.  */
enum reg_note
{
  /* The value in REG dies in this insn (i.e., it is not needed past
     this insn).  If REG is set in this insn, the REG_DEAD note may,
     but need not, be omitted.  */
  REG_DEAD = 1,

  /* The REG is autoincremented or autodecremented.  */
  REG_INC,

  /* Describes the insn as a whole; it says that the insn sets a register
     to a constant value or to be equivalent to a memory address.  If the
     register is spilled to the stack then the constant value should be
     substituted for it.  The contents of the REG_EQUIV is the constant
     value or memory address, which may be different from the source of
     the SET although it has the same value.  A REG_EQUIV note may also
     appear on an insn which copies a register parameter to a pseudo-register,
     if there is a memory address which could be used to hold that
     pseudo-register throughout the function.  */
  REG_EQUIV,

  /* Like REG_EQUIV except that the destination is only momentarily equal
     to the specified rtx.  Therefore, it cannot be used for substitution;
     but it can be used for cse.  */
  REG_EQUAL,

  /* The register set in this insn held 0 before the insn.  The contents of
     the note is the insn that stored the 0.  If that insn is deleted or
     patched to a NOTE, the REG_WAS_0 is inoperative.  The REG_WAS_0 note
     is actually an INSN_LIST, not an EXPR_LIST.  */
  REG_WAS_0,

  /* This insn copies the return-value of a library call out of the hard reg
     for return values.  This note is actually an INSN_LIST and it points to
     the first insn involved in setting up arguments for the call.  flow.c
     uses this to delete the entire library call when its result is dead.  */
  REG_RETVAL,

  /* The inverse of REG_RETVAL: it goes on the first insn of the library call
     and points at the one that has the REG_RETVAL.  This note is also an
     INSN_LIST.  */
  REG_LIBCALL,

  /* The register is always nonnegative during the containing loop.  This is
     used in branches so that decrement and branch instructions terminating
     on zero can be matched.  There must be an insn pattern in the md file
     named `decrement_and_branch_until_zero' or else this will never be added
     to any instructions.  */
  REG_NONNEG,

  /* There is no conflict *after this insn* between the register in the note
     and the destination of this insn.  */
  REG_NO_CONFLICT,

  /* Identifies a register set in this insn and never used.  */
  REG_UNUSED,

  /* REG_CC_SETTER and REG_CC_USER link a pair of insns that set and use CC0,
     respectively.  Normally, these are required to be consecutive insns, but
     we permit putting a cc0-setting insn in the delay slot of a branch as
     long as only one copy of the insn exists.  In that case, these notes
     point from one to the other to allow code generation to determine what
     any require information and to properly update CC_STATUS.  These notes
     are INSN_LISTs.  */
  REG_CC_SETTER, REG_CC_USER,

  /* Points to a CODE_LABEL.  Used by non-JUMP_INSNs to say that the
     CODE_LABEL contained in the REG_LABEL note is used by the insn. 
     This note is an INSN_LIST.  */
  REG_LABEL,

  /* REG_DEP_ANTI and REG_DEP_OUTPUT are used in LOG_LINKS to represent
     write-after-read and write-after-write dependencies respectively.
     Data dependencies, which are the only type of LOG_LINK created by
     flow, are represented by a 0 reg note kind.  */
  REG_DEP_ANTI, REG_DEP_OUTPUT,

  /* REG_BR_PROB is attached to JUMP_INSNs and CALL_INSNs when the flag
     -fbranch-probabilities is given.  It has an integer value.  For jumps,
     it is the probability that this is a taken branch.  For calls, it is
     the probability that this call won't return.  */
  REG_BR_PROB,

  /* REG_EXEC_COUNT is attached to the first insn of each basic block, and
     the first insn after each CALL_INSN.  It indicates how many times this
     block was executed.  */
  REG_EXEC_COUNT,

  /* Attached to a call insn; indicates that the call is malloc-like and
     that the pointer returned cannot alias anything else.  */
  REG_NOALIAS,

  /* Used to optimize rtl generated by dynamic stack allocations for targets
     where SETJMP_VIA_SAVE_AREA is true.  */
  REG_SAVE_AREA,

  /* Attached to JUMP_INSNs only, it holds the branch prediction flags
     computed by get_jump_flags() after dbr scheduling is complete.  */
  REG_BR_PRED,

  /* Attached to insns that are RTX_FRAME_RELATED_P, but are too complex
     for DWARF to interpret what they imply.  The attached rtx is used
     instead of intuition.  */
  REG_FRAME_RELATED_EXPR,

  /* Indicates that REG holds the exception context for the function.
     This context is shared by inline functions, so the code to acquire
     the real exception context is delayed until after inlining.  */
  REG_EH_CONTEXT,

  /* Indicates what exception region an INSN belongs in.  This is used to
     indicate what region to which a call may throw.  REGION 0 indicates
     that a call cannot throw at all.  REGION -1 indicates that it cannot
     throw, nor will it execute a non-local goto.  */
  REG_EH_REGION,

  /* Indicates that a call is actually a call to rethrow, and specifies the
     rethrow symbol for the region the rethrow is targetting.  This provides
     a way to generate the non standard flow edges required for a rethrow.  */
  REG_EH_RETHROW,

  /* Used by haifa-sched to save NOTE_INSN notes across scheduling.  */
  REG_SAVE_NOTE
};

/* The base value for branch probability notes.  */
#define REG_BR_PROB_BASE  10000

/* Define macros to extract and insert the reg-note kind in an EXPR_LIST.  */
#define REG_NOTE_KIND(LINK) ((enum reg_note) GET_MODE (LINK))
#define PUT_REG_NOTE_KIND(LINK,KIND) PUT_MODE(LINK, (enum machine_mode) (KIND))

/* Names for REG_NOTE's in EXPR_LIST insn's.  */

extern const char * const reg_note_name[];
#define GET_REG_NOTE_NAME(MODE) (reg_note_name[(int) (MODE)])

/* This field is only present on CALL_INSNs.  It holds a chain of EXPR_LIST of
   USE and CLOBBER expressions.
     USE expressions list the registers filled with arguments that
   are passed to the function.
     CLOBBER expressions document the registers explicitly clobbered
   by this CALL_INSN.
     Pseudo registers can not be mentioned in this list.  */
#define CALL_INSN_FUNCTION_USAGE(INSN)	XEXP(INSN, 7)

/* The label-number of a code-label.  The assembler label
   is made from `L' and the label-number printed in decimal.
   Label numbers are unique in a compilation.  */
#define CODE_LABEL_NUMBER(INSN)	XINT(INSN, 5)

#define LINE_NUMBER NOTE

/* In a NOTE that is a line number, this is a string for the file name that the
   line is in.  We use the same field to record block numbers temporarily in
   NOTE_INSN_BLOCK_BEG and NOTE_INSN_BLOCK_END notes.  (We avoid lots of casts
   between ints and pointers if we use a different macro for the block number.)
   The NOTE_INSN_RANGE_{START,END} and NOTE_INSN_LIVE notes record their
   information as a rtx in the field.  */

#define NOTE_SOURCE_FILE(INSN) 	XCSTR(INSN, 3, NOTE)
#define NOTE_BLOCK(INSN)	XCTREE(INSN, 3, NOTE)
#define NOTE_EH_HANDLER(INSN)	XCINT(INSN, 3, NOTE)
#define NOTE_RANGE_INFO(INSN)  	XCEXP(INSN, 3, NOTE)
#define NOTE_LIVE_INFO(INSN)   	XCEXP(INSN, 3, NOTE)
#define NOTE_BASIC_BLOCK(INSN)	XCBBDEF(INSN, 3, NOTE)
#define NOTE_EXPECTED_VALUE(INSN) XCEXP(INSN, 3, NOTE)

/* In a NOTE that is a line number, this is the line number.
   Other kinds of NOTEs are identified by negative numbers here.  */
#define NOTE_LINE_NUMBER(INSN) XCINT(INSN, 4, NOTE)

/* Codes that appear in the NOTE_LINE_NUMBER field
   for kinds of notes that are not line numbers.

   Notice that we do not try to use zero here for any of
   the special note codes because sometimes the source line
   actually can be zero!  This happens (for example) when we
   are generating code for the per-translation-unit constructor
   and destructor routines for some C++ translation unit.

   If you should change any of the following values, or if you
   should add a new value here, don't forget to change the
   note_insn_name array in rtl.c.  */

enum insn_note
{
  /* Keep all of these numbers negative.  Adjust as needed.  */
  NOTE_INSN_BIAS = -100,

  /* This note is used to get rid of an insn
     when it isn't safe to patch the insn out of the chain.  */
  NOTE_INSN_DELETED,

  /* These are used to mark the beginning and end of a lexical block.
     See NOTE_BLOCK, identify_blocks and reorder_blocks.  */
  NOTE_INSN_BLOCK_BEG,
  NOTE_INSN_BLOCK_END,

  /* These mark the extremes of a loop.  */
  NOTE_INSN_LOOP_BEG,
  NOTE_INSN_LOOP_END,

  /* Generated at the place in a loop that `continue' jumps to.  */
  NOTE_INSN_LOOP_CONT,
  /* Generated at the start of a duplicated exit test.  */
  NOTE_INSN_LOOP_VTOP,

  /* This kind of note is generated at the end of the function body,
     just before the return insn or return label.  In an optimizing
     compilation it is deleted by the first jump optimization, after
     enabling that optimizer to determine whether control can fall
     off the end of the function body without a return statement.  */
  NOTE_INSN_FUNCTION_END,

  /* This kind of note is generated just after each call to `setjmp',
     and similar functions that can return twice.  */
  NOTE_INSN_SETJMP,

  /* This marks the point immediately after the last prologue insn.  */
  NOTE_INSN_PROLOGUE_END,

  /* This marks the point immediately prior to the first epilogue insn.  */
  NOTE_INSN_EPILOGUE_BEG,

  /* Generated in place of user-declared labels when they are deleted.  */
  NOTE_INSN_DELETED_LABEL,

  /* This note indicates the start of the real body of the function,
     i.e. the point just after all of the parms have been moved into
     their homes, etc.  */
  NOTE_INSN_FUNCTION_BEG,

  /* These note where exception handling regions begin and end. 
     Uses NOTE_EH_HANDLER to identify the region in question.  */
  NOTE_INSN_EH_REGION_BEG,
  NOTE_INSN_EH_REGION_END,

  /* Generated whenever a duplicate line number note is output.  For example,
     one is output after the end of an inline function, in order to prevent
     the line containing the inline call from being counted twice in gcov. */
  NOTE_INSN_REPEATED_LINE_NUMBER,

  /* Start/end of a live range region, where pseudos allocated on the stack
     can be allocated to temporary registers.  Uses NOTE_RANGE_INFO.  */
  NOTE_INSN_RANGE_BEG,
  NOTE_INSN_RANGE_END,

  /* Record which registers are currently live.  Uses NOTE_LIVE_INFO.  */
  NOTE_INSN_LIVE,

  /* Record the struct for the following basic block.  Uses NOTE_BASIC_BLOCK. */
  NOTE_INSN_BASIC_BLOCK,

  /* Record the expected value of a register at a location.  Uses
     NOTE_EXPECTED_VALUE; stored as (eq (reg) (const_int)).  */
  NOTE_INSN_EXPECTED_VALUE,

  NOTE_INSN_MAX
};

/* Names for NOTE insn's other than line numbers.  */

extern const char * const note_insn_name[NOTE_INSN_MAX - NOTE_INSN_BIAS];
#define GET_NOTE_INSN_NAME(NOTE_CODE) \
  (note_insn_name[(NOTE_CODE) - NOTE_INSN_BIAS])

/* The name of a label, in case it corresponds to an explicit label
   in the input source code.  */
#define LABEL_NAME(RTX) XCSTR(RTX, 6, CODE_LABEL)

/* In jump.c, each label contains a count of the number
   of LABEL_REFs that point at it, so unused labels can be deleted.  */
#define LABEL_NUSES(RTX) XCINT(RTX, 3, CODE_LABEL)

/* Associate a name with a CODE_LABEL.  */
#define LABEL_ALTERNATE_NAME(RTX) XCSTR(RTX, 7, CODE_LABEL)

/* The original regno this ADDRESSOF was built for.  */
#define ADDRESSOF_REGNO(RTX) XCUINT(RTX, 1, ADDRESSOF)

/* The variable in the register we took the address of.  */
#define ADDRESSOF_DECL(RTX) XCTREE(RTX, 2, ADDRESSOF)

/* In jump.c, each JUMP_INSN can point to a label that it can jump to,
   so that if the JUMP_INSN is deleted, the label's LABEL_NUSES can
   be decremented and possibly the label can be deleted.  */
#define JUMP_LABEL(INSN)   XCEXP(INSN, 7, JUMP_INSN)

/* Once basic blocks are found in flow.c,
   each CODE_LABEL starts a chain that goes through
   all the LABEL_REFs that jump to that label.
   The chain eventually winds up at the CODE_LABEL: it is circular.  */
#define LABEL_REFS(LABEL) XCEXP(LABEL, 4, CODE_LABEL)

/* This is the field in the LABEL_REF through which the circular chain
   of references to a particular label is linked.
   This chain is set up in flow.c.  */

#define LABEL_NEXTREF(REF) XCEXP(REF, 1, LABEL_REF)

/* Once basic blocks are found in flow.c,
   Each LABEL_REF points to its containing instruction with this field.  */

#define CONTAINING_INSN(RTX) XCEXP(RTX, 2, LABEL_REF)

/* For a REG rtx, REGNO extracts the register number.  */

#define REGNO(RTX) XCUINT(RTX, 0, REG)

/* For a REG rtx, REG_FUNCTION_VALUE_P is nonzero if the reg
   is the current function's return value.  */

#define REG_FUNCTION_VALUE_P(RTX) ((RTX)->integrated)

/* 1 in a REG rtx if it corresponds to a variable declared by the user.  */
#define REG_USERVAR_P(RTX) ((RTX)->volatil)

/* For a CONST_INT rtx, INTVAL extracts the integer.  */

#define INTVAL(RTX) XCWINT(RTX, 0, CONST_INT)

/* For a SUBREG rtx, SUBREG_REG extracts the value we want a subreg of.
   SUBREG_WORD extracts the word-number.  */

#define SUBREG_REG(RTX) XCEXP(RTX, 0, SUBREG)
#define SUBREG_WORD(RTX) XCUINT(RTX, 1, SUBREG)

/* 1 if the REG contained in SUBREG_REG is already known to be
   sign- or zero-extended from the mode of the SUBREG to the mode of
   the reg.  SUBREG_PROMOTED_UNSIGNED_P gives the signedness of the
   extension.

   When used as a LHS, is means that this extension must be done
   when assigning to SUBREG_REG.  */

#define SUBREG_PROMOTED_VAR_P(RTX) ((RTX)->in_struct)
#define SUBREG_PROMOTED_UNSIGNED_P(RTX) ((RTX)->unchanging)

/* Access various components of an ASM_OPERANDS rtx.  */

#define ASM_OPERANDS_TEMPLATE(RTX) XCSTR ((RTX), 0, ASM_OPERANDS)
#define ASM_OPERANDS_OUTPUT_CONSTRAINT(RTX) XCSTR ((RTX), 1, ASM_OPERANDS)
#define ASM_OPERANDS_OUTPUT_IDX(RTX) XCINT ((RTX), 2, ASM_OPERANDS)
#define ASM_OPERANDS_INPUT_VEC(RTX) XCVEC ((RTX), 3, ASM_OPERANDS)
#define ASM_OPERANDS_INPUT_CONSTRAINT_VEC(RTX) XCVEC ((RTX), 4, ASM_OPERANDS)
#define ASM_OPERANDS_INPUT(RTX, N) XCVECEXP ((RTX), 3, (N), ASM_OPERANDS)
#define ASM_OPERANDS_INPUT_LENGTH(RTX) XCVECLEN ((RTX), 3, ASM_OPERANDS)
#define ASM_OPERANDS_INPUT_CONSTRAINT(RTX, N) XSTR (XCVECEXP ((RTX), 4, (N), ASM_OPERANDS), 0)
#define ASM_OPERANDS_INPUT_MODE(RTX, N) GET_MODE (XCVECEXP ((RTX), 4, (N), ASM_OPERANDS))
#define ASM_OPERANDS_SOURCE_FILE(RTX) XCSTR ((RTX), 5, ASM_OPERANDS)
#define ASM_OPERANDS_SOURCE_LINE(RTX) XCINT ((RTX), 6, ASM_OPERANDS)

/* For a MEM rtx, 1 if it's a volatile reference.
   Also in an ASM_OPERANDS rtx.  */
#define MEM_VOLATILE_P(RTX) ((RTX)->volatil)

/* For a MEM rtx, 1 if it refers to a field of an aggregate.  If zero,
   RTX may or may not refer to a field of an aggregate.  */
#define MEM_IN_STRUCT_P(RTX) ((RTX)->in_struct)

/* For a MEM rtx, 1 if it refers to a scalar.  If zero, RTX may or may
   not refer to a scalar.*/
#define MEM_SCALAR_P(RTX) ((RTX)->frame_related)

/* Copy the attributes that apply to memory locations from RHS to LHS.  */
#define MEM_COPY_ATTRIBUTES(LHS, RHS)			\
  (MEM_VOLATILE_P (LHS) = MEM_VOLATILE_P (RHS),		\
   MEM_IN_STRUCT_P (LHS) = MEM_IN_STRUCT_P (RHS),	\
   MEM_SCALAR_P (LHS) = MEM_SCALAR_P (RHS),		\
   MEM_ALIAS_SET (LHS) = MEM_ALIAS_SET (RHS),		\
   RTX_UNCHANGING_P (LHS) = RTX_UNCHANGING_P (RHS))

/* If VAL is non-zero, set MEM_IN_STRUCT_P and clear MEM_SCALAR_P in
   RTX.  Otherwise, vice versa.  Use this macro only when you are
   *sure* that you know that the MEM is in a structure, or is a
   scalar.  VAL is evaluated only once.  */
#define MEM_SET_IN_STRUCT_P(RTX, VAL) do {	\
  if (VAL)					\
    {						\
      MEM_IN_STRUCT_P (RTX) = 1;		\
      MEM_SCALAR_P (RTX) = 0;			\
    }						\
  else						\
    {						\
      MEM_IN_STRUCT_P (RTX) = 0;		\
      MEM_SCALAR_P (RTX) = 1;			\
    }						\
} while (0)

/* For a MEM rtx, the alias set.  If 0, this MEM is not in any alias
   set, and may alias anything.  Otherwise, the MEM can only alias
   MEMs in the same alias set.  This value is set in a
   language-dependent manner in the front-end, and should not be
   altered in the back-end.  These set numbers are tested for zero,
   and compared for equality; they have no other significance.  In
   some front-ends, these numbers may correspond in some way to types,
   or other language-level entities, but they need not, and the
   back-end makes no such assumptions.  */
#define MEM_ALIAS_SET(RTX) XCINT(RTX, 1, MEM)

/* For a LABEL_REF, 1 means that this reference is to a label outside the
   loop containing the reference.  */
#define LABEL_OUTSIDE_LOOP_P(RTX) ((RTX)->in_struct)

/* For a LABEL_REF, 1 means it is for a nonlocal label.  */
/* Likewise in an EXPR_LIST for a REG_LABEL note.  */
#define LABEL_REF_NONLOCAL_P(RTX) ((RTX)->volatil)

/* For a CODE_LABEL, 1 means always consider this label to be needed.  */
#define LABEL_PRESERVE_P(RTX) ((RTX)->in_struct)

/* For a REG, 1 means the register is used only in an exit test of a loop.  */
#define REG_LOOP_TEST_P(RTX) ((RTX)->in_struct)

/* During sched, for an insn, 1 means that the insn must be scheduled together
   with the preceding insn.  */
#define SCHED_GROUP_P(INSN) ((INSN)->in_struct)

/* During sched, for the LOG_LINKS of an insn, these cache the adjusted
   cost of the dependence link.  The cost of executing an instruction
   may vary based on how the results are used.  LINK_COST_ZERO is 1 when
   the cost through the link varies and is unchanged (i.e., the link has
   zero additional cost).  LINK_COST_FREE is 1 when the cost through the
   link is zero (i.e., the link makes the cost free).  In other cases,
   the adjustment to the cost is recomputed each time it is needed.  */
#define LINK_COST_ZERO(X) ((X)->jump)
#define LINK_COST_FREE(X) ((X)->call)

/* For a SET rtx, SET_DEST is the place that is set
   and SET_SRC is the value it is set to.  */
#define SET_DEST(RTX) XC2EXP(RTX, 0, SET, CLOBBER)
#define SET_SRC(RTX) XCEXP(RTX, 1, SET)

/* For a TRAP_IF rtx, TRAP_CONDITION is an expression.  */
#define TRAP_CONDITION(RTX) XCEXP(RTX, 0, TRAP_IF)
#define TRAP_CODE(RTX) XCEXP(RTX, 1, TRAP_IF)

/* For a COND_EXEC rtx, COND_EXEC_TEST is the condition to base
   conditionally executing the code on, COND_EXEC_CODE is the code
   to execute if the condition is true.  */
#define COND_EXEC_TEST(RTX) XCEXP(RTX, 0, COND_EXEC)
#define COND_EXEC_CODE(RTX) XCEXP(RTX, 1, COND_EXEC)

/* 1 in a SYMBOL_REF if it addresses this function's constants pool.  */
#define CONSTANT_POOL_ADDRESS_P(RTX) ((RTX)->unchanging)

/* Flag in a SYMBOL_REF for machine-specific purposes.  */
#define SYMBOL_REF_FLAG(RTX) ((RTX)->volatil)

/* 1 in a SYMBOL_REF if it represents a symbol which might have to change
   if its inlined or unrolled. */
#define SYMBOL_REF_NEED_ADJUST(RTX)  ((RTX)->in_struct)

/* 1 means a SYMBOL_REF has been the library function in emit_library_call.  */
#define SYMBOL_REF_USED(RTX) ((RTX)->used)

/* Define a macro to look for REG_INC notes,
   but save time on machines where they never exist.  */

/* Don't continue this line--convex cc version 4.1 would lose.  */
#if (defined (HAVE_PRE_INCREMENT) || defined (HAVE_PRE_DECREMENT) || defined (HAVE_POST_INCREMENT) || defined (HAVE_POST_DECREMENT))
#define FIND_REG_INC_NOTE(insn, reg) (find_reg_note ((insn), REG_INC, (reg)))
#else
#define FIND_REG_INC_NOTE(insn, reg) 0
#endif

/* Indicate whether the machine has any sort of auto increment addressing.
   If not, we can avoid checking for REG_INC notes.  */

/* Don't continue this line--convex cc version 4.1 would lose.  */
#if (defined (HAVE_PRE_INCREMENT) || defined (HAVE_PRE_DECREMENT) || defined (HAVE_POST_INCREMENT) || defined (HAVE_POST_DECREMENT))
#define AUTO_INC_DEC
#endif

#ifndef HAVE_PRE_INCREMENT
#define HAVE_PRE_INCREMENT 0
#endif

#ifndef HAVE_PRE_DECREMENT
#define HAVE_PRE_DECREMENT 0
#endif

#ifndef HAVE_POST_INCREMENT
#define HAVE_POST_INCREMENT 0
#endif

#ifndef HAVE_POST_DECREMENT
#define HAVE_POST_DECREMENT 0
#endif


/* Some architectures do not have complete pre/post increment/decrement
   instruction sets, or only move some modes efficiently.  These macros
   allow us to tune autoincrement generation.  */

#ifndef USE_LOAD_POST_INCREMENT
#define USE_LOAD_POST_INCREMENT(MODE)   HAVE_POST_INCREMENT
#endif

#ifndef USE_LOAD_POST_DECREMENT
#define USE_LOAD_POST_DECREMENT(MODE)   HAVE_POST_DECREMENT
#endif

#ifndef USE_LOAD_PRE_INCREMENT
#define USE_LOAD_PRE_INCREMENT(MODE)    HAVE_PRE_INCREMENT
#endif

#ifndef USE_LOAD_PRE_DECREMENT
#define USE_LOAD_PRE_DECREMENT(MODE)    HAVE_PRE_DECREMENT
#endif

#ifndef USE_STORE_POST_INCREMENT
#define USE_STORE_POST_INCREMENT(MODE)  HAVE_POST_INCREMENT
#endif

#ifndef USE_STORE_POST_DECREMENT
#define USE_STORE_POST_DECREMENT(MODE)  HAVE_POST_DECREMENT
#endif

#ifndef USE_STORE_PRE_INCREMENT
#define USE_STORE_PRE_INCREMENT(MODE)   HAVE_PRE_INCREMENT
#endif

#ifndef USE_STORE_PRE_DECREMENT
#define USE_STORE_PRE_DECREMENT(MODE)   HAVE_PRE_DECREMENT
#endif


/* Accessors for RANGE_INFO.  */
/* For RANGE_{START,END} notes return the RANGE_START note.  */
#define RANGE_INFO_NOTE_START(INSN) XCEXP (INSN, 0, RANGE_INFO)

/* For RANGE_{START,END} notes return the RANGE_START note.  */
#define RANGE_INFO_NOTE_END(INSN) XCEXP (INSN, 1, RANGE_INFO)

/* For RANGE_{START,END} notes, return the vector containing the registers used
   in the range.  */
#define RANGE_INFO_REGS(INSN) XCVEC (INSN, 2, RANGE_INFO)
#define RANGE_INFO_REGS_REG(INSN, N) XCVECEXP (INSN, 2, N, RANGE_INFO)
#define RANGE_INFO_NUM_REGS(INSN) XCVECLEN (INSN, 2, RANGE_INFO)

/* For RANGE_{START,END} notes, the number of calls within the range.  */
#define RANGE_INFO_NCALLS(INSN) XCINT (INSN, 3, RANGE_INFO)

/* For RANGE_{START,END} notes, the number of insns within the range.  */
#define RANGE_INFO_NINSNS(INSN) XCINT (INSN, 4, RANGE_INFO)

/* For RANGE_{START,END} notes, a unique # to identify this range.  */
#define RANGE_INFO_UNIQUE(INSN) XCINT (INSN, 5, RANGE_INFO)

/* For RANGE_{START,END} notes, the basic block # the range starts with. */
#define RANGE_INFO_BB_START(INSN) XCINT (INSN, 6, RANGE_INFO)

/* For RANGE_{START,END} notes, the basic block # the range ends with. */
#define RANGE_INFO_BB_END(INSN) XCINT (INSN, 7, RANGE_INFO)

/* For RANGE_{START,END} notes, the loop depth the range is in.  */
#define RANGE_INFO_LOOP_DEPTH(INSN) XCINT (INSN, 8, RANGE_INFO)

/* For RANGE_{START,END} notes, the bitmap of live registers at the start
   of the range.  */
#define RANGE_INFO_LIVE_START(INSN) XCBITMAP (INSN, 9, RANGE_INFO)

/* For RANGE_{START,END} notes, the bitmap of live registers at the end
   of the range.  */
#define RANGE_INFO_LIVE_END(INSN) XCBITMAP (INSN, 10, RANGE_INFO)

/* For RANGE_START notes, the marker # of the start of the range.  */
#define RANGE_INFO_MARKER_START(INSN) XCINT (INSN, 11, RANGE_INFO)

/* For RANGE_START notes, the marker # of the end of the range.  */
#define RANGE_INFO_MARKER_END(INSN) XCINT (INSN, 12, RANGE_INFO)

/* Original pseudo register # for a live range note.  */
#define RANGE_REG_PSEUDO(INSN,N) XCINT (XCVECEXP (INSN, 2, N, RANGE_INFO), 0, REG)

/* Pseudo register # original register is copied into or -1.  */
#define RANGE_REG_COPY(INSN,N) XCINT (XCVECEXP (INSN, 2, N, RANGE_INFO), 1, REG)

/* How many times a register in a live range note was referenced.  */
#define RANGE_REG_REFS(INSN,N) XINT (XCVECEXP (INSN, 2, N, RANGE_INFO), 2)

/* How many times a register in a live range note was set.  */
#define RANGE_REG_SETS(INSN,N) XINT (XCVECEXP (INSN, 2, N, RANGE_INFO), 3)

/* How many times a register in a live range note died.  */
#define RANGE_REG_DEATHS(INSN,N) XINT (XCVECEXP (INSN, 2, N, RANGE_INFO), 4)

/* Whether the original value is needed to be copied into the range register at
   the start of the range. */
#define RANGE_REG_COPY_FLAGS(INSN,N) XINT (XCVECEXP (INSN, 2, N, RANGE_INFO), 5)

/* # of insns the register copy is live over.  */
#define RANGE_REG_LIVE_LENGTH(INSN,N) XINT (XCVECEXP (INSN, 2, N, RANGE_INFO), 6)

/* # of calls the register copy is live over.  */
#define RANGE_REG_N_CALLS(INSN,N) XINT (XCVECEXP (INSN, 2, N, RANGE_INFO), 7)

/* DECL_NODE pointer of the declaration if the register is a user defined
   variable.  */
#define RANGE_REG_SYMBOL_NODE(INSN,N) XTREE (XCVECEXP (INSN, 2, N, RANGE_INFO), 8)

/* BLOCK_NODE pointer to the block the variable is declared in if the
   register is a user defined variable.  */
#define RANGE_REG_BLOCK_NODE(INSN,N) XTREE (XCVECEXP (INSN, 2, N, RANGE_INFO), 9)

/* EXPR_LIST of the distinct ranges a variable is in.  */
#define RANGE_VAR_LIST(INSN) (XEXP (INSN, 0))

/* Block a variable is declared in.  */
#define RANGE_VAR_BLOCK(INSN) (XTREE (INSN, 1))

/* # of distinct ranges a variable is in.  */
#define RANGE_VAR_NUM(INSN) (XINT (INSN, 2))

/* For a NOTE_INSN_LIVE note, the registers which are currently live.  */
#define RANGE_LIVE_BITMAP(INSN) (XBITMAP (INSN, 0))

/* For a NOTE_INSN_LIVE note, the original basic block number.  */
#define RANGE_LIVE_ORIG_BLOCK(INSN) (XINT (INSN, 1))

/* Determine if the insn is a PHI node.  */
#define PHI_NODE_P(X)				\
  (X && GET_CODE (X) == INSN			\
   && GET_CODE (PATTERN (X)) == SET		\
   && GET_CODE (SET_SRC (PATTERN (X))) == PHI)

/* Nonzero if we need to distinguish between the return value of this function
   and the return value of a function called by this function.  This helps
   integrate.c.
   This is 1 until after the rtl generation pass.  */
extern int rtx_equal_function_value_matters;

/* Generally useful functions.  */

/* The following functions accept a wide integer argument.  Rather than
   having to cast on every function call, we use a macro instead, that is
   defined here and in tree.h.  */

#ifndef exact_log2
#define exact_log2(N) exact_log2_wide ((unsigned HOST_WIDE_INT) (N))
#define floor_log2(N) floor_log2_wide ((unsigned HOST_WIDE_INT) (N))
#endif
extern int exact_log2_wide		PARAMS ((unsigned HOST_WIDE_INT));
extern int floor_log2_wide		PARAMS ((unsigned HOST_WIDE_INT));

/* In expmed.c */
extern int ceil_log2			PARAMS ((unsigned HOST_WIDE_INT));

#define plus_constant(X,C) plus_constant_wide (X, (HOST_WIDE_INT) (C))

#define plus_constant_for_output(X,C)  \
  plus_constant_for_output_wide (X, (HOST_WIDE_INT) (C))

/* In explow.c */
extern void set_stack_check_libfunc PARAMS ((rtx));
extern HOST_WIDE_INT trunc_int_for_mode	PARAMS ((HOST_WIDE_INT,
					       enum machine_mode));
extern rtx plus_constant_wide		 PARAMS ((rtx, HOST_WIDE_INT));
extern rtx plus_constant_for_output_wide PARAMS ((rtx, HOST_WIDE_INT));
extern void optimize_save_area_alloca	PARAMS ((rtx));

extern rtx gen_rtx			PARAMS ((enum rtx_code,
						 enum machine_mode, ...));
extern rtvec gen_rtvec			PARAMS ((int, ...));

extern char *oballoc			PARAMS ((int));
extern char *permalloc			PARAMS ((int));
extern rtx rtx_alloc			PARAMS ((RTX_CODE));
extern rtvec rtvec_alloc		PARAMS ((int));
extern rtx copy_insn_1			PARAMS ((rtx));
extern rtx copy_insn			PARAMS ((rtx));
extern rtx copy_rtx			PARAMS ((rtx));
extern rtx copy_rtx_if_shared		PARAMS ((rtx));
extern rtx copy_most_rtx		PARAMS ((rtx, rtx));
extern rtx shallow_copy_rtx		PARAMS ((rtx));
extern int rtx_equal_p                  PARAMS ((rtx, rtx));
extern rtvec gen_rtvec_v		PARAMS ((int, rtx *));
extern rtx gen_reg_rtx			PARAMS ((enum machine_mode));
extern rtx gen_label_rtx		PARAMS ((void));
extern rtx gen_lowpart_common		PARAMS ((enum machine_mode, rtx));
extern rtx gen_lowpart			PARAMS ((enum machine_mode, rtx));
extern rtx gen_lowpart_if_possible	PARAMS ((enum machine_mode, rtx));
extern rtx gen_highpart			PARAMS ((enum machine_mode, rtx));
extern rtx gen_realpart			PARAMS ((enum machine_mode, rtx));
extern rtx gen_imagpart			PARAMS ((enum machine_mode, rtx));
extern rtx operand_subword		PARAMS ((rtx, unsigned int, int,
						 enum machine_mode));
extern rtx operand_subword_force	PARAMS ((rtx, unsigned int,
						 enum machine_mode));
extern int subreg_lowpart_p		PARAMS ((rtx));
extern rtx make_safe_from		PARAMS ((rtx, rtx));
extern rtx convert_memory_address	PARAMS ((enum machine_mode, rtx));
extern rtx memory_address		PARAMS ((enum machine_mode, rtx));
extern rtx get_insns			PARAMS ((void));
extern const char *get_insn_name	PARAMS ((int));
extern rtx get_last_insn		PARAMS ((void));
extern rtx get_last_insn_anywhere	PARAMS ((void));
extern void start_sequence		PARAMS ((void));
extern void push_to_sequence		PARAMS ((rtx));
extern void end_sequence		PARAMS ((void));
extern void push_to_full_sequence	PARAMS ((rtx, rtx));
extern void end_full_sequence		PARAMS ((rtx*, rtx*));
extern rtx gen_sequence			PARAMS ((void));
extern rtx immed_double_const		PARAMS ((HOST_WIDE_INT, HOST_WIDE_INT, enum machine_mode));
extern rtx force_const_mem		PARAMS ((enum machine_mode, rtx));
extern rtx force_reg			PARAMS ((enum machine_mode, rtx));
extern rtx get_pool_constant		PARAMS ((rtx));
extern enum machine_mode get_pool_mode	PARAMS ((rtx));
extern rtx get_pool_constant_for_function	PARAMS ((struct function *, rtx));
extern enum machine_mode get_pool_mode_for_function	PARAMS ((struct function *, rtx));
extern int get_pool_offset		PARAMS ((rtx));
extern rtx simplify_subtraction		PARAMS ((rtx));
extern rtx assign_stack_local		PARAMS ((enum machine_mode,
					       HOST_WIDE_INT, int));
extern rtx assign_stack_temp		PARAMS ((enum machine_mode,
					       HOST_WIDE_INT, int));
extern rtx assign_temp			PARAMS ((union tree_node *,
					       int, int, int));
extern rtx protect_from_queue		PARAMS ((rtx, int));
extern void emit_queue			PARAMS ((void));
extern rtx emit_move_insn		PARAMS ((rtx, rtx));
extern rtx emit_insn_before		PARAMS ((rtx, rtx));
extern rtx emit_jump_insn_before	PARAMS ((rtx, rtx));
extern rtx emit_call_insn_before	PARAMS ((rtx, rtx));
extern rtx emit_barrier_before		PARAMS ((rtx));
extern rtx emit_label_before		PARAMS ((rtx, rtx));
extern rtx emit_note_before		PARAMS ((int, rtx));
extern rtx emit_insn_after		PARAMS ((rtx, rtx));
extern rtx emit_jump_insn_after		PARAMS ((rtx, rtx));
extern rtx emit_barrier_after		PARAMS ((rtx));
extern rtx emit_label_after		PARAMS ((rtx, rtx));
extern rtx emit_note_after		PARAMS ((int, rtx));
extern rtx emit_line_note_after		PARAMS ((const char *, int, rtx));
extern rtx emit_insn			PARAMS ((rtx));
extern rtx emit_insns			PARAMS ((rtx));
extern rtx emit_insns_before		PARAMS ((rtx, rtx));
extern rtx emit_insns_after		PARAMS ((rtx, rtx));
extern rtx emit_jump_insn		PARAMS ((rtx));
extern rtx emit_call_insn		PARAMS ((rtx));
extern rtx emit_label			PARAMS ((rtx));
extern rtx emit_barrier			PARAMS ((void));
extern rtx emit_line_note		PARAMS ((const char *, int));
extern rtx emit_note			PARAMS ((const char *, int));
extern rtx emit_line_note_force		PARAMS ((const char *, int));
extern rtx make_insn_raw		PARAMS ((rtx));
extern rtx previous_insn		PARAMS ((rtx));
extern rtx next_insn			PARAMS ((rtx));
extern rtx prev_nonnote_insn		PARAMS ((rtx));
extern rtx next_nonnote_insn		PARAMS ((rtx));
extern rtx prev_real_insn		PARAMS ((rtx));
extern rtx next_real_insn		PARAMS ((rtx));
extern rtx prev_active_insn		PARAMS ((rtx));
extern rtx next_active_insn		PARAMS ((rtx));
extern int active_insn_p		PARAMS ((rtx));
extern rtx prev_label			PARAMS ((rtx));
extern rtx next_label			PARAMS ((rtx));
extern rtx next_cc0_user		PARAMS ((rtx));
extern rtx prev_cc0_setter		PARAMS ((rtx));
extern rtx next_nondeleted_insn		PARAMS ((rtx));
extern enum rtx_code reverse_condition	PARAMS ((enum rtx_code));
extern enum rtx_code reverse_condition_maybe_unordered PARAMS ((enum rtx_code));
extern enum rtx_code swap_condition	PARAMS ((enum rtx_code));
extern enum rtx_code unsigned_condition	PARAMS ((enum rtx_code));
extern enum rtx_code signed_condition	PARAMS ((enum rtx_code));
extern rtx find_equiv_reg		PARAMS ((rtx, rtx, enum reg_class, int, short *, int, enum machine_mode));
extern rtx squeeze_notes		PARAMS ((rtx, rtx));
extern rtx delete_insn			PARAMS ((rtx));
extern void delete_jump			PARAMS ((rtx));
extern void delete_barrier		PARAMS ((rtx));
extern rtx get_label_before		PARAMS ((rtx));
extern rtx get_label_after		PARAMS ((rtx));
extern rtx follow_jumps			PARAMS ((rtx));
extern rtx adj_offsettable_operand	PARAMS ((rtx, int));
extern rtx try_split			PARAMS ((rtx, rtx, int));
extern rtx split_insns			PARAMS ((rtx, rtx));
extern rtx simplify_unary_operation	PARAMS ((enum rtx_code, enum machine_mode, rtx, enum machine_mode));
extern rtx simplify_binary_operation	PARAMS ((enum rtx_code, enum machine_mode, rtx, rtx));
extern rtx simplify_ternary_operation	PARAMS ((enum rtx_code, enum machine_mode, enum machine_mode, rtx, rtx, rtx));
extern rtx simplify_relational_operation PARAMS ((enum rtx_code, enum machine_mode, rtx, rtx));
extern rtx simplify_gen_binary		PARAMS ((enum rtx_code, enum machine_mode,
					       rtx, rtx));
extern rtx simplify_rtx			PARAMS ((rtx));
extern rtx gen_move_insn		PARAMS ((rtx, rtx));
extern rtx gen_jump			PARAMS ((rtx));
extern rtx gen_beq			PARAMS ((rtx));
extern rtx gen_bge			PARAMS ((rtx));
extern rtx gen_ble			PARAMS ((rtx));
extern rtx gen_mem_addressof		PARAMS ((rtx, union tree_node *));
extern rtx eliminate_constant_term	PARAMS ((rtx, rtx *));
extern rtx expand_complex_abs		PARAMS ((enum machine_mode, rtx, rtx,
						 int));
extern enum machine_mode choose_hard_reg_mode PARAMS ((unsigned int,
						       unsigned int));
extern void set_unique_reg_note         PARAMS ((rtx, enum reg_note, rtx));

/* Functions in rtlanal.c */

extern int rtx_unstable_p		PARAMS ((rtx));
extern int rtx_varies_p			PARAMS ((rtx));
extern int rtx_addr_varies_p		PARAMS ((rtx));
extern HOST_WIDE_INT get_integer_term	PARAMS ((rtx));
extern rtx get_related_value		PARAMS ((rtx));
extern int reg_mentioned_p		PARAMS ((rtx, rtx));
extern int reg_referenced_p		PARAMS ((rtx, rtx));
extern int reg_used_between_p		PARAMS ((rtx, rtx, rtx));
extern int reg_referenced_between_p	PARAMS ((rtx, rtx, rtx));
extern int reg_set_between_p		PARAMS ((rtx, rtx, rtx));
extern int regs_set_between_p		PARAMS ((rtx, rtx, rtx));
extern int modified_between_p		PARAMS ((rtx, rtx, rtx));
extern int no_labels_between_p		PARAMS ((rtx, rtx));
extern int no_jumps_between_p		PARAMS ((rtx, rtx));
extern int modified_in_p		PARAMS ((rtx, rtx));
extern int insn_dependant_p		PARAMS ((rtx, rtx));
extern int reg_set_p			PARAMS ((rtx, rtx));
extern rtx single_set			PARAMS ((rtx));
extern int multiple_sets		PARAMS ((rtx));
extern rtx find_last_value		PARAMS ((rtx, rtx *, rtx, int));
extern int refers_to_regno_p		PARAMS ((unsigned int, unsigned int,
						 rtx, rtx *));
extern int reg_overlap_mentioned_p	PARAMS ((rtx, rtx));
extern void note_stores			PARAMS ((rtx,
						 void (*) (rtx, rtx, void *),
						 void *));
extern rtx reg_set_last			PARAMS ((rtx, rtx));
extern int dead_or_set_p		PARAMS ((rtx, rtx));
extern int dead_or_set_regno_p		PARAMS ((rtx, unsigned int));
extern rtx find_reg_note		PARAMS ((rtx, enum reg_note, rtx));
extern rtx find_regno_note		PARAMS ((rtx, enum reg_note,
						 unsigned int));
extern int find_reg_fusage		PARAMS ((rtx, enum rtx_code, rtx));
extern int find_regno_fusage		PARAMS ((rtx, enum rtx_code,
						 unsigned int));
extern void remove_note			PARAMS ((rtx, rtx));
extern int side_effects_p		PARAMS ((rtx));
extern int volatile_refs_p		PARAMS ((rtx));
extern int volatile_insn_p		PARAMS ((rtx));
extern int may_trap_p			PARAMS ((rtx));
extern int inequality_comparisons_p	PARAMS ((rtx));
extern rtx replace_rtx			PARAMS ((rtx, rtx, rtx));
extern rtx replace_regs			PARAMS ((rtx, rtx *, unsigned int,
						 int));
extern int computed_jump_p		PARAMS ((rtx));
typedef int (*rtx_function)             PARAMS ((rtx *, void *));
extern int for_each_rtx                 PARAMS ((rtx *, rtx_function, void *));
extern rtx regno_use_in			PARAMS ((unsigned int, rtx));
extern int auto_inc_p			PARAMS ((rtx));
extern void remove_node_from_expr_list	PARAMS ((rtx, rtx *));
extern int insns_safe_to_move_p         PARAMS ((rtx, rtx, rtx *));
extern int loc_mentioned_in_p		PARAMS ((rtx *, rtx));

/* flow.c */

extern rtx find_use_as_address		PARAMS ((rtx, rtx, HOST_WIDE_INT));
void init_EXPR_INSN_LIST_cache		PARAMS ((void));
void free_EXPR_LIST_list 		PARAMS ((rtx *));
void free_INSN_LIST_list 		PARAMS ((rtx *));
void free_EXPR_LIST_node 		PARAMS ((rtx));
void free_INSN_LIST_node 		PARAMS ((rtx));
rtx alloc_INSN_LIST			PARAMS ((rtx, rtx));
rtx alloc_EXPR_LIST			PARAMS ((int, rtx, rtx));
void clear_log_links                    PARAMS ((rtx));

/* regclass.c */

/* Maximum number of parallel sets and clobbers in any insn in this fn.
   Always at least 3, since the combiner could put that many togetherm
   and we want this to remain correct for all the remaining passes.  */

extern int max_parallel;

/* Free up register info memory.  */
extern void free_reg_info		PARAMS ((void));

/* recog.c */
extern int asm_noperands		PARAMS ((rtx));
extern const char *decode_asm_operands	PARAMS ((rtx, rtx *, rtx **,
					       const char **,
					       enum machine_mode *));

extern enum reg_class reg_preferred_class PARAMS ((int));
extern enum reg_class reg_alternate_class PARAMS ((int));

extern rtx get_first_nonparm_insn	PARAMS ((void));

extern void split_all_insns		PARAMS ((int));

#define MAX_SAVED_CONST_INT 64
extern rtx const_int_rtx[MAX_SAVED_CONST_INT * 2 + 1];

#define const0_rtx	(const_int_rtx[MAX_SAVED_CONST_INT])
#define const1_rtx	(const_int_rtx[MAX_SAVED_CONST_INT+1])
#define const2_rtx	(const_int_rtx[MAX_SAVED_CONST_INT+2])
#define constm1_rtx	(const_int_rtx[MAX_SAVED_CONST_INT-1])
extern rtx const_true_rtx;

extern rtx const_tiny_rtx[3][(int) MAX_MACHINE_MODE];

/* Returns a constant 0 rtx in mode MODE.  Integer modes are treated the
   same as VOIDmode.  */

#define CONST0_RTX(MODE) (const_tiny_rtx[0][(int) (MODE)])

/* Likewise, for the constants 1 and 2.  */

#define CONST1_RTX(MODE) (const_tiny_rtx[1][(int) (MODE)])
#define CONST2_RTX(MODE) (const_tiny_rtx[2][(int) (MODE)])

/* If HARD_FRAME_POINTER_REGNUM is defined, then a special dummy reg
   is used to represent the frame pointer.  This is because the
   hard frame pointer and the automatic variables are separated by an amount
   that cannot be determined until after register allocation.  We can assume
   that in this case ELIMINABLE_REGS will be defined, one action of which
   will be to eliminate FRAME_POINTER_REGNUM into HARD_FRAME_POINTER_REGNUM. */
#ifndef HARD_FRAME_POINTER_REGNUM
#define HARD_FRAME_POINTER_REGNUM FRAME_POINTER_REGNUM
#endif

/* Index labels for global_rtl.  */
enum global_rtl_index
{
  GR_PC,
  GR_CC0,
  GR_STACK_POINTER,
  GR_FRAME_POINTER,
/* For register elimination to work properly these hard_frame_pointer_rtx,
   frame_pointer_rtx, and arg_pointer_rtx must be the same if they refer to
   the same register.  */
#if FRAME_POINTER_REGNUM == ARG_POINTER_REGNUM
  GR_ARG_POINTER = GR_FRAME_POINTER,
#endif
#if HARD_FRAME_POINTER_REGNUM == FRAME_POINTER_REGNUM
  GR_HARD_FRAME_POINTER = GR_FRAME_POINTER,
#else
  GR_HARD_FRAME_POINTER,
#endif
#if FRAME_POINTER_REGNUM != ARG_POINTER_REGNUM
#if HARD_FRAME_POINTER_REGNUM == ARG_POINTER_REGNUM
  GR_ARG_POINTER = GR_HARD_FRAME_POINTER,
#else
  GR_ARG_POINTER,
#endif
#endif
  GR_VIRTUAL_INCOMING_ARGS,
  GR_VIRTUAL_STACK_ARGS,
  GR_VIRTUAL_STACK_DYNAMIC,
  GR_VIRTUAL_OUTGOING_ARGS,
  GR_VIRTUAL_CFA,

  GR_MAX
};

/* Pointers to standard pieces of rtx are stored here.  */
extern rtx global_rtl[GR_MAX];

/* Standard pieces of rtx, to be substituted directly into things.  */
#define pc_rtx                  (global_rtl[GR_PC])
#define cc0_rtx                 (global_rtl[GR_CC0])

/* All references to certain hard regs, except those created
   by allocating pseudo regs into them (when that's possible),
   go through these unique rtx objects.  */
#define stack_pointer_rtx       (global_rtl[GR_STACK_POINTER])
#define frame_pointer_rtx       (global_rtl[GR_FRAME_POINTER])
#define hard_frame_pointer_rtx	(global_rtl[GR_HARD_FRAME_POINTER])
#define arg_pointer_rtx		(global_rtl[GR_ARG_POINTER])

extern rtx pic_offset_table_rtx;
extern rtx struct_value_rtx;
extern rtx struct_value_incoming_rtx;
extern rtx static_chain_rtx;
extern rtx static_chain_incoming_rtx;
extern rtx return_address_pointer_rtx;

/* Include the RTL generation functions.  */

#ifndef NO_GENRTL_H
#include "genrtl.h"
#endif

/* There are some RTL codes that require special attention; the
   generation functions included above do the raw handling.  If you
   add to this list, modify special_rtx in gengenrtl.c as well.  You
   should also modify gen_rtx to use the special function.  */

extern rtx gen_rtx_CONST_DOUBLE PARAMS ((enum machine_mode, rtx,
				       HOST_WIDE_INT, HOST_WIDE_INT));
extern rtx gen_rtx_CONST_INT PARAMS ((enum machine_mode, HOST_WIDE_INT));
extern rtx gen_rtx_REG PARAMS ((enum machine_mode, int));
extern rtx gen_rtx_MEM PARAMS ((enum machine_mode, rtx));

/* We need the cast here to ensure that we get the same result both with
   and without prototypes.  */
#define GEN_INT(N)  gen_rtx_CONST_INT (VOIDmode, (HOST_WIDE_INT) (N))

/* Virtual registers are used during RTL generation to refer to locations into
   the stack frame when the actual location isn't known until RTL generation
   is complete.  The routine instantiate_virtual_regs replaces these with
   the proper value, which is normally {frame,arg,stack}_pointer_rtx plus
   a constant.  */

#define FIRST_VIRTUAL_REGISTER	(FIRST_PSEUDO_REGISTER)

/* This points to the first word of the incoming arguments passed on the stack,
   either by the caller or by the callee when pretending it was passed by the
   caller.  */

#define virtual_incoming_args_rtx       (global_rtl[GR_VIRTUAL_INCOMING_ARGS])

#define VIRTUAL_INCOMING_ARGS_REGNUM	(FIRST_VIRTUAL_REGISTER)

/* If FRAME_GROWS_DOWNWARD, this points to immediately above the first
   variable on the stack.  Otherwise, it points to the first variable on
   the stack.  */

#define virtual_stack_vars_rtx	        (global_rtl[GR_VIRTUAL_STACK_ARGS])

#define VIRTUAL_STACK_VARS_REGNUM	((FIRST_VIRTUAL_REGISTER) + 1)

/* This points to the location of dynamically-allocated memory on the stack
   immediately after the stack pointer has been adjusted by the amount
   desired.  */

#define virtual_stack_dynamic_rtx	(global_rtl[GR_VIRTUAL_STACK_DYNAMIC])

#define VIRTUAL_STACK_DYNAMIC_REGNUM	((FIRST_VIRTUAL_REGISTER) + 2)

/* This points to the location in the stack at which outgoing arguments should
   be written when the stack is pre-pushed (arguments pushed using push
   insns always use sp).  */

#define virtual_outgoing_args_rtx	(global_rtl[GR_VIRTUAL_OUTGOING_ARGS])

#define VIRTUAL_OUTGOING_ARGS_REGNUM	((FIRST_VIRTUAL_REGISTER) + 3)

/* This points to the Canonical Frame Address of the function.  This
   should corrospond to the CFA produced by INCOMING_FRAME_SP_OFFSET,
   but is calculated relative to the arg pointer for simplicity; the
   frame pointer nor stack pointer are necessarily fixed relative to
   the CFA until after reload.  */

#define virtual_cfa_rtx			(global_rtl[GR_VIRTUAL_CFA])

#define VIRTUAL_CFA_REGNUM		((FIRST_VIRTUAL_REGISTER) + 4)

#define LAST_VIRTUAL_REGISTER		((FIRST_VIRTUAL_REGISTER) + 4)

extern rtx find_next_ref		PARAMS ((rtx, rtx));
extern rtx *find_single_use		PARAMS ((rtx, rtx, rtx *));

extern rtx output_constant_def		PARAMS ((union tree_node *));
extern rtx immed_real_const		PARAMS ((union tree_node *));
extern union tree_node *make_tree	PARAMS ((union tree_node *, rtx));

/* Define a default value for STORE_FLAG_VALUE.  */

#ifndef STORE_FLAG_VALUE
#define STORE_FLAG_VALUE 1
#endif

/* Nonzero after the second flow pass has completed.
   Set to 1 or 0 by toplev.c  */
extern int flow2_completed;

/* Nonzero after end of reload pass.
   Set to 1 or 0 by reload1.c.  */

extern int reload_completed;

/* Set to 1 while reload_as_needed is operating.
   Required by some machines to handle any generated moves differently.  */

extern int reload_in_progress;

/* If this is nonzero, we do not bother generating VOLATILE
   around volatile memory references, and we are willing to
   output indirect addresses.  If cse is to follow, we reject
   indirect addresses so a useful potential cse is generated;
   if it is used only once, instruction combination will produce
   the same indirect address eventually.  */
extern int cse_not_expected;

/* Set to nonzero before life analysis to indicate that it is unsafe to
   generate any new pseudo registers.  */
extern int no_new_pseudos;

/* Translates rtx code to tree code, for those codes needed by
   REAL_ARITHMETIC.  The function returns an int because the caller may not
   know what `enum tree_code' means.  */

extern int rtx_to_tree_code	PARAMS ((enum rtx_code));

/* In tree.c */
extern void obfree			PARAMS ((char *));
struct obstack;
extern void gcc_obstack_init		PARAMS ((struct obstack *));
extern void pop_obstacks		PARAMS ((void));
extern void push_obstacks		PARAMS ((struct obstack *,
						struct obstack *));
/* In cse.c */
struct cse_basic_block_data;
extern int rtx_cost			PARAMS ((rtx, enum rtx_code));
extern int address_cost			PARAMS ((rtx, enum machine_mode));
extern void delete_trivially_dead_insns	PARAMS ((rtx, int));
#ifdef BUFSIZ
extern int cse_main			PARAMS ((rtx, int, int, FILE *));
#endif
extern void cse_end_of_basic_block	PARAMS ((rtx,
						struct cse_basic_block_data *,
						int, int, int));

/* In jump.c */
extern int comparison_dominates_p	PARAMS ((enum rtx_code, enum rtx_code));
extern int condjump_p			PARAMS ((rtx));
extern int any_condjump_p		PARAMS ((rtx));
extern int any_uncondjump_p		PARAMS ((rtx));
extern int safe_to_remove_jump_p	PARAMS ((rtx));
extern rtx pc_set			PARAMS ((rtx));
extern rtx condjump_label		PARAMS ((rtx));
extern int simplejump_p			PARAMS ((rtx));
extern int returnjump_p			PARAMS ((rtx));
extern int onlyjump_p			PARAMS ((rtx));
extern int sets_cc0_p			PARAMS ((rtx));
extern int invert_jump_1		PARAMS ((rtx, rtx));
extern int invert_jump			PARAMS ((rtx, rtx, int));
extern int rtx_renumbered_equal_p	PARAMS ((rtx, rtx));
extern int true_regnum			PARAMS ((rtx));
extern int redirect_jump_1		PARAMS ((rtx, rtx));
extern int redirect_jump		PARAMS ((rtx, rtx, int));
extern void jump_optimize		PARAMS ((rtx, int, int, int));
extern void jump_optimize_minimal	PARAMS ((rtx));
extern void rebuild_jump_labels		PARAMS ((rtx));
extern void thread_jumps		PARAMS ((rtx, int, int));
extern int rtx_equal_for_thread_p	PARAMS ((rtx, rtx, rtx));
extern int can_reverse_comparison_p	PARAMS ((rtx, rtx));
extern void delete_for_peephole		PARAMS ((rtx, rtx));
extern int condjump_in_parallel_p	PARAMS ((rtx));
extern void never_reached_warning	PARAMS ((rtx));

/* Flags for jump_optimize() */
#define JUMP_CROSS_JUMP			1
#define JUMP_CROSS_JUMP_DEATH_MATTERS	2
#define JUMP_NOOP_MOVES			1
#define JUMP_AFTER_REGSCAN		1

/* In emit-rtl.c. */
extern int max_reg_num				PARAMS ((void));
extern int max_label_num			PARAMS ((void));
extern int get_first_label_num			PARAMS ((void));
extern void delete_insns_since			PARAMS ((rtx));
extern void mark_reg_pointer			PARAMS ((rtx, int));
extern void mark_user_reg			PARAMS ((rtx));
extern void reset_used_flags			PARAMS ((rtx));
extern void reorder_insns			PARAMS ((rtx, rtx, rtx));
extern int get_max_uid				PARAMS ((void));
extern int in_sequence_p			PARAMS ((void));
extern void force_next_line_note		PARAMS ((void));
extern void clear_emit_caches			PARAMS ((void));
extern void init_emit				PARAMS ((void));
extern void init_emit_once			PARAMS ((int));
extern void push_topmost_sequence		PARAMS ((void));
extern void pop_topmost_sequence		PARAMS ((void));
extern int subreg_realpart_p			PARAMS ((rtx));
extern void reverse_comparison			PARAMS ((rtx));
extern void set_new_first_and_last_insn		PARAMS ((rtx, rtx));
extern void set_new_first_and_last_label_num	PARAMS ((int, int));
extern void set_new_last_label_num		PARAMS ((int));
extern void unshare_all_rtl_again		PARAMS ((rtx));
extern void set_last_insn			PARAMS ((rtx));
extern void link_cc0_insns			PARAMS ((rtx));
extern void add_insn				PARAMS ((rtx));
extern void add_insn_before			PARAMS ((rtx, rtx));
extern void add_insn_after			PARAMS ((rtx, rtx));
extern void remove_insn				PARAMS ((rtx));
extern void reorder_insns_with_line_notes	PARAMS ((rtx, rtx, rtx));
extern void emit_insn_after_with_line_notes	PARAMS ((rtx, rtx, rtx));
extern enum rtx_code classify_insn		PARAMS ((rtx));
extern rtx emit					PARAMS ((rtx));
/* Query and clear/ restore no_line_numbers.  This is used by the
   switch / case handling in stmt.c to give proper line numbers in
   warnings about unreachable code.  */
int force_line_numbers PARAMS ((void));
void restore_line_number_status PARAMS ((int old_value));
extern void renumber_insns                      PARAMS ((FILE *));
extern void remove_unnecessary_notes             PARAMS ((void));

/* In insn-emit.c */
extern void add_clobbers		PARAMS ((rtx, int));

/* In combine.c */
extern int combine_instructions		PARAMS ((rtx, unsigned int));
extern unsigned int extended_count	PARAMS ((rtx, enum machine_mode, int));
extern rtx remove_death			PARAMS ((unsigned int, rtx));
#ifdef BUFSIZ
extern void dump_combine_stats		PARAMS ((FILE *));
extern void dump_combine_total_stats	PARAMS ((FILE *));
#endif

/* In sched.c. */
#ifdef BUFSIZ
extern void schedule_insns		PARAMS ((FILE *));
#endif
extern void fix_sched_param		PARAMS ((const char *, const char *));

/* In print-rtl.c */
extern void debug_rtx			PARAMS ((rtx));
extern void debug_rtx_list		PARAMS ((rtx, int));
extern void debug_rtx_range		PARAMS ((rtx, rtx));
extern rtx debug_rtx_find		PARAMS ((rtx, int));
#ifdef BUFSIZ
extern void print_rtl			PARAMS ((FILE *, rtx));
extern int print_rtl_single		PARAMS ((FILE *, rtx));
extern void print_inline_rtx		PARAMS ((FILE *, rtx, int));
#endif

/* In loop.c */
extern void init_loop			PARAMS ((void));
extern rtx libcall_other_reg		PARAMS ((rtx, rtx));
#ifdef BUFSIZ
extern void loop_optimize		PARAMS ((rtx, FILE *, int));
#endif
extern void record_excess_regs		PARAMS ((rtx, rtx, rtx *));

/* In function.c */
extern void reposition_prologue_and_epilogue_notes	PARAMS ((rtx));
extern void thread_prologue_and_epilogue_insns		PARAMS ((rtx));
extern int prologue_epilogue_contains			PARAMS ((rtx));
extern int sibcall_epilogue_contains			PARAMS ((rtx));
extern HOST_WIDE_INT get_frame_size			PARAMS ((void));
extern void preserve_rtl_expr_result			PARAMS ((rtx));
extern void mark_temp_addr_taken			PARAMS ((rtx));
extern void update_temp_slot_address			PARAMS ((rtx, rtx));
extern void purge_addressof				PARAMS ((rtx));

/* In reload.c */
extern int operands_match_p		PARAMS ((rtx, rtx));
extern int safe_from_earlyclobber	PARAMS ((rtx, rtx));

/* In stmt.c */
extern void set_file_and_line_for_stmt	PARAMS ((const char *, int));
extern void expand_null_return		PARAMS ((void));
extern void emit_jump			PARAMS ((rtx));
extern int preserve_subexpressions_p	PARAMS ((void));

/* In expr.c */
extern void init_expr_once		PARAMS ((void));
extern void move_by_pieces		PARAMS ((rtx, rtx, int, unsigned int));

/* In flow.c */
extern void allocate_bb_life_data	PARAMS ((void));
extern void allocate_reg_life_data	PARAMS ((void));
extern void recompute_reg_usage		PARAMS ((rtx, int));
#ifdef BUFSIZ
extern void print_rtl_with_bb		PARAMS ((FILE *, rtx));
extern void dump_flow_info		PARAMS ((FILE *));
#endif

/* In expmed.c */
extern void init_expmed			PARAMS ((void));
extern void expand_inc			PARAMS ((rtx, rtx));
extern void expand_dec			PARAMS ((rtx, rtx));
extern rtx expand_mult_highpart		PARAMS ((enum machine_mode, rtx,
						unsigned HOST_WIDE_INT, rtx,
						int, int));

/* In gcse.c */
#ifdef BUFSIZ
extern int gcse_main			PARAMS ((rtx, FILE *));
#endif

/* In global.c */
extern void mark_elimination		PARAMS ((int, int));
#ifdef BUFSIZ
extern int global_alloc			PARAMS ((FILE *));
extern void dump_global_regs		PARAMS ((FILE *));
#endif
#ifdef HARD_CONST
extern void retry_global_alloc		PARAMS ((int, HARD_REG_SET));
#endif
extern void build_insn_chain		PARAMS ((rtx));

/* In regclass.c */
extern int reg_classes_intersect_p	PARAMS ((enum reg_class, enum reg_class));
extern int reg_class_subset_p		PARAMS ((enum reg_class, enum reg_class));
extern void globalize_reg		PARAMS ((int));
extern void init_regs			PARAMS ((void));
extern void init_reg_sets		PARAMS ((void));
extern void regset_release_memory	PARAMS ((void));
extern void regclass_init		PARAMS ((void));
extern void regclass			PARAMS ((rtx, int, FILE *));
extern void reg_scan			PARAMS ((rtx, unsigned int, int));
extern void reg_scan_update		PARAMS ((rtx, rtx, unsigned int));
extern void fix_register		PARAMS ((const char *, int, int));

extern void delete_null_pointer_checks	PARAMS ((rtx));

/* In regmove.c */
#ifdef BUFSIZ
extern void regmove_optimize		PARAMS ((rtx, int, FILE *));
#endif
extern void combine_stack_adjustments	PARAMS ((void));

/* In reorg.c */
#ifdef BUFSIZ
extern void dbr_schedule		PARAMS ((rtx, FILE *));
#endif

/* In optabs.c */
extern void init_optabs			PARAMS ((void));

/* In local-alloc.c */
#ifdef BUFSIZ
extern void dump_local_alloc		PARAMS ((FILE *));
#endif
extern int local_alloc			PARAMS ((void));
extern int function_invariant_p		PARAMS ((rtx));

/* In reload1.c */
extern void reload_cse_regs		PARAMS ((rtx));
extern void init_reload			PARAMS ((void));
extern void mark_home_live		PARAMS ((int));
#ifdef BUFSIZ
extern int reload			PARAMS ((rtx, int, FILE *));
#endif

/* In caller-save.c */
extern void init_caller_save		PARAMS ((void));

/* In profile.c */
extern void init_branch_prob		PARAMS ((const char *));
extern void branch_prob			PARAMS ((void));
extern void end_branch_prob		PARAMS ((void));
extern void output_func_start_profiler	PARAMS ((void));

/* In reg-stack.c */
#ifdef BUFSIZ
extern void reg_to_stack		PARAMS ((rtx, FILE *));
#endif

/* In fold-const.c */
extern int add_double		PARAMS ((unsigned HOST_WIDE_INT, HOST_WIDE_INT,
					 unsigned HOST_WIDE_INT, HOST_WIDE_INT,
					 unsigned HOST_WIDE_INT *,
					 HOST_WIDE_INT *));
extern int neg_double		PARAMS ((unsigned HOST_WIDE_INT, HOST_WIDE_INT,
					 unsigned HOST_WIDE_INT *,
					 HOST_WIDE_INT *));
extern int mul_double		PARAMS ((unsigned HOST_WIDE_INT,
					 HOST_WIDE_INT,
					 unsigned HOST_WIDE_INT, HOST_WIDE_INT,
					 unsigned HOST_WIDE_INT *,
					 HOST_WIDE_INT *));
extern void lshift_double	PARAMS ((unsigned HOST_WIDE_INT, HOST_WIDE_INT,
					 HOST_WIDE_INT, unsigned int,
					 unsigned HOST_WIDE_INT *,
					 HOST_WIDE_INT *, int));
extern void rshift_double	PARAMS ((unsigned HOST_WIDE_INT, HOST_WIDE_INT,
					 HOST_WIDE_INT, unsigned int,
					 unsigned HOST_WIDE_INT *,
					 HOST_WIDE_INT *, int));
extern void lrotate_double	PARAMS ((unsigned HOST_WIDE_INT, HOST_WIDE_INT,
					 HOST_WIDE_INT, unsigned int,
					 unsigned HOST_WIDE_INT *,
					 HOST_WIDE_INT *));
extern void rrotate_double	PARAMS ((unsigned HOST_WIDE_INT, HOST_WIDE_INT,
					 HOST_WIDE_INT, unsigned int,
					 unsigned HOST_WIDE_INT *,
					 HOST_WIDE_INT *));

/* In calls.c */
extern void emit_library_call		PARAMS ((rtx, int, enum machine_mode,
						  int, ...));
extern rtx emit_library_call_value	PARAMS ((rtx, rtx, int,
						 enum machine_mode,
						 int, ...));

/* In unroll.c */
extern int set_dominates_use		PARAMS ((int, int, int, rtx, rtx));

/* In varasm.c */
extern void bss_section			PARAMS ((void));
extern int in_data_section		PARAMS ((void));
extern int supports_one_only		PARAMS ((void));
extern void init_varasm_once		PARAMS ((void));

/* In rtl.c */
extern void init_rtl			PARAMS ((void));
extern void rtx_free			PARAMS ((rtx));

#ifdef BUFSIZ
extern int read_skip_spaces		PARAMS ((FILE *));
extern rtx read_rtx			PARAMS ((FILE *));
#endif

extern const char *read_rtx_filename;
extern int read_rtx_lineno;

/* Redefine abort to report an internal error w/o coredump, and
   reporting the location of the error in the source file.  This logic
   is duplicated in rtl.h and tree.h because every file that needs the
   special abort includes one or both.  toplev.h gets too few files,
   system.h gets too many.  */

extern void fancy_abort PARAMS ((const char *, int, const char *))
    ATTRIBUTE_NORETURN;
#if (GCC_VERSION >= 2007)
#define abort() fancy_abort (__FILE__, __LINE__, __PRETTY_FUNCTION__)
#else
#define abort() fancy_abort (__FILE__, __LINE__, 0)
#endif

/* In alias.c */
extern rtx canon_rtx                    PARAMS ((rtx));
extern int true_dependence		PARAMS ((rtx, enum machine_mode, rtx,
						int (*)(rtx)));
extern int read_dependence		PARAMS ((rtx, rtx));
extern int anti_dependence		PARAMS ((rtx, rtx));
extern int output_dependence		PARAMS ((rtx, rtx));
extern void mark_constant_function	PARAMS ((void));
extern void init_alias_once		PARAMS ((void));
extern void init_alias_analysis		PARAMS ((void));
extern void end_alias_analysis		PARAMS ((void));

extern void record_base_value		PARAMS ((unsigned int, rtx, int));
extern void record_alias_subset         PARAMS ((int, int));
extern rtx addr_side_effect_eval	PARAMS ((rtx, int, int));

/* In sibcall.c */
typedef enum {
  sibcall_use_normal = 1,
  sibcall_use_tail_recursion,
  sibcall_use_sibcall
} sibcall_use_t;

extern void optimize_sibling_and_tail_recursive_calls PARAMS ((void));
extern void replace_call_placeholder	PARAMS ((rtx, sibcall_use_t));

#ifdef STACK_REGS
extern int stack_regs_mentioned		PARAMS ((rtx insn));
#endif

/* In toplev.c */
extern rtx stack_limit_rtx;

/* In regrename.c */
extern void regrename_optimize		PARAMS ((void));

/* In condexec.c */
extern void if_convert			PARAMS ((int));

#endif /* _RTL_H */
