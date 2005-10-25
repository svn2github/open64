/* Branch prediction routines for the GNU compiler.
   Copyright (C) 2000 Free Software Foundation, Inc.

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

/* References:

   [1] "Branch Prediction for Free"
       Ball and Larus; PLDI '93.
   [2] "Static Branch Frequency and Program Profile Analysis"
       Wu and Larus; MICRO-27.
   [3] "Corpus-based Static Branch Prediction"
       Calder, Grunwald, Lindsay, Martin, Mozer, and Zorn; PLDI '95.

*/


#include "config.h"
#include "system.h"
#include "tree.h"
#include "rtl.h"
#include "tm_p.h"
#include "hard-reg-set.h"
#include "basic-block.h"
#include "insn-config.h"
#include "regs.h"
#include "flags.h"
#include "output.h"
#include "function.h"
#include "except.h"
#include "toplev.h"
#include "recog.h"
#include "insn-flags.h"
#include "expr.h"


/* Random guesstimation given names.  */
#define PROB_NEVER		(0)
#define PROB_VERY_UNLIKELY	(REG_BR_PROB_BASE / 10 - 1)
#define PROB_UNLIKELY		(REG_BR_PROB_BASE * 4 / 10 - 1)
#define PROB_EVEN		(REG_BR_PROB_BASE / 2)
#define PROB_LIKELY		(REG_BR_PROB_BASE - PROB_UNLIKELY)
#define PROB_VERY_LIKELY	(REG_BR_PROB_BASE - PROB_VERY_UNLIKELY)
#define PROB_ALWAYS		(REG_BR_PROB_BASE)

/* Statically estimate the probability that a branch will be taken.
   ??? In the next revision there will be a number of other predictors added
   from the above references. Further, each heuristic will be factored out
   into its own function for clarity (and to facilitate the combination of
   predictions).  */

void
estimate_probability (loops_info)
     struct loops *loops_info;
{
  int i;

  /* Try to predict out blocks in a loop that are not part of a
     natural loop.  */
  for (i = 0; i < loops_info->num; i++)
    {
      int j;

      for (j = loops_info->array[i].first->index;
	   j <= loops_info->array[i].last->index;
	   ++j)
	{
	  edge e;
	  
	  if (! TEST_BIT (loops_info->array[i].nodes, j))
	    for (e = BASIC_BLOCK(j)->pred; e; e = e->pred_next)
	      if (TEST_BIT (loops_info->array[i].nodes, e->src->index))
		{
		  rtx last_insn = BLOCK_END (e->src->index);
		  rtx cond, earliest;

		  if (GET_CODE (last_insn) != JUMP_INSN
		      || ! condjump_p (last_insn) || simplejump_p (last_insn))
		    continue;
		  cond = get_condition (last_insn, &earliest);
		  if (! cond)
		    continue;
		  if (! find_reg_note (last_insn, REG_BR_PROB, 0))
		    REG_NOTES (last_insn)
		      = gen_rtx_EXPR_LIST (REG_BR_PROB,
					   GEN_INT (PROB_VERY_LIKELY),
					   REG_NOTES (last_insn));
		}
	}
    }

  /* Attempt to predict conditional jumps using a number of heuristics.
     For each conditional jump, we try each heuristic in a fixed order.
     If more than one heuristic applies to a particular branch, the first
     is used as the prediction for the branch.  */
  for (i = 0; i < n_basic_blocks - 1; i++)
    {
      rtx last_insn = BLOCK_END (i);
      rtx cond, earliest;
      int prob;
      edge e;

      if (GET_CODE (last_insn) != JUMP_INSN
	  || ! condjump_p (last_insn) || simplejump_p (last_insn))
	continue;

      if (find_reg_note (last_insn, REG_BR_PROB, 0))
	continue;

      cond = get_condition (last_insn, &earliest);
      if (! cond)
	continue;

      /* If one of the successor blocks has no successors, predict
	 that side not taken.  */
      /* ??? Ought to do the same for any subgraph with no exit.  */
      for (e = BASIC_BLOCK (i)->succ; e; e = e->succ_next)
	if (e->dest->succ == NULL)
	  {
	    if (e->flags & EDGE_FALLTHRU)
	      prob = PROB_ALWAYS;
	    else
	      prob = PROB_NEVER;
	    goto emitnote;
	  }

      /* Try "pointer heuristic."
	 A comparison ptr == 0 is predicted as false.
	 Similarly, a comparison ptr1 == ptr2 is predicted as false.  */
      switch (GET_CODE (cond))
	{
	case EQ:
	  if (GET_CODE (XEXP (cond, 0)) == REG
	      && REGNO_POINTER_FLAG (REGNO (XEXP (cond, 0)))
	      && (XEXP (cond, 1) == const0_rtx
		  || (GET_CODE (XEXP (cond, 1)) == REG
		      && REGNO_POINTER_FLAG (REGNO (XEXP (cond, 1))))))
	    {
	      prob = PROB_UNLIKELY;
	      goto emitnote;
	    }
	  break;
	case NE:
	  if (GET_CODE (XEXP (cond, 0)) == REG
	      && REGNO_POINTER_FLAG (REGNO (XEXP (cond, 0)))
	      && (XEXP (cond, 1) == const0_rtx
		  || (GET_CODE (XEXP (cond, 1)) == REG
		      && REGNO_POINTER_FLAG (REGNO (XEXP (cond, 1))))))
	    {
	      prob = PROB_LIKELY;
	      goto emitnote;
	    }
	  break;

	default:
	  break;
	}

      /* Try "opcode heuristic."
	 EQ tests are usually false and NE tests are usually true. Also,
	 most quantities are positive, so we can make the appropriate guesses
	 about signed comparisons against zero.  */
      switch (GET_CODE (cond))
	{
	case CONST_INT:
	  /* Unconditional branch.  */
	  prob = (cond == const0_rtx ? PROB_NEVER : PROB_ALWAYS);
	  goto emitnote;

	case EQ:
	  prob = PROB_UNLIKELY;
	  goto emitnote;
	case NE:
	  prob = PROB_LIKELY;
	  goto emitnote;
	case LE:
	case LT:
	  if (XEXP (cond, 1) == const0_rtx)
	    {
	      prob = PROB_UNLIKELY;
	      goto emitnote;
	    }
	  break;
	case GE:
	case GT:
	  if (XEXP (cond, 1) == const0_rtx
	      || (GET_CODE (XEXP (cond, 1)) == CONST_INT
		  && INTVAL (XEXP (cond, 1)) == -1))
	    {
	      prob = PROB_LIKELY;
	      goto emitnote;
	    }
	  break;

	default:
	  break;
	}

      /* If we havn't chosen something by now, predict 50-50.  */
      prob = PROB_EVEN;

    emitnote:
      REG_NOTES (last_insn)
	= gen_rtx_EXPR_LIST (REG_BR_PROB, GEN_INT (prob),
			     REG_NOTES (last_insn));
    }
}

/* __builtin_expect dropped tokens into the insn stream describing
   expected values of registers.  Generate branch probabilities 
   based off these values.  */

void
expected_value_to_br_prob ()
{
  rtx insn, cond, ev = NULL_RTX, ev_reg = NULL_RTX;

  for (insn = get_insns (); insn ; insn = NEXT_INSN (insn))
    {
      switch (GET_CODE (insn))
	{
	case NOTE:
	  /* Look for expected value notes.  */
	  if (NOTE_LINE_NUMBER (insn) == NOTE_INSN_EXPECTED_VALUE)
	    {
	      ev = NOTE_EXPECTED_VALUE (insn);
	      ev_reg = XEXP (ev, 0);
	    }
	  continue;

	case CODE_LABEL:
	  /* Never propagate across labels.  */
	  ev = NULL_RTX;
	  continue;

	default:
	  /* Look for insns that clobber the EV register.  */
	  if (ev && reg_set_p (ev_reg, insn))
	    ev = NULL_RTX;
	  continue;

	case JUMP_INSN:
	  /* Look for simple conditional branches.  If we havn't got an
	     expected value yet, no point going further.  */
	  if (GET_CODE (insn) != JUMP_INSN || ev == NULL_RTX)
	    continue;
	  if (! condjump_p (insn) || simplejump_p (insn))
	    continue;
	  break;
	}

      /* Collect the branch condition, hopefully relative to EV_REG.  */
      /* ???  At present we'll miss things like
		(expected_value (eq r70 0))
		(set r71 -1)
		(set r80 (lt r70 r71))
		(set pc (if_then_else (ne r80 0) ...))
	 as canonicalize_condition will render this to us as 
		(lt r70, r71)
	 Could use cselib to try and reduce this further.  */
      cond = XEXP (SET_SRC (PATTERN (insn)), 0);
      cond = canonicalize_condition (insn, cond, 0, NULL, ev_reg);
      if (! cond
	  || XEXP (cond, 0) != ev_reg
	  || GET_CODE (XEXP (cond, 1)) != CONST_INT)
	continue;

      /* Substitute and simplify.  Given that the expression we're 
	 building involves two constants, we should wind up with either
	 true or false.  */
      cond = gen_rtx_fmt_ee (GET_CODE (cond), VOIDmode,
			     XEXP (ev, 1), XEXP (cond, 1));
      cond = simplify_rtx (cond);

      /* Turn the condition into a scaled branch probability.  */
      if (cond == const1_rtx)
	cond = GEN_INT (PROB_VERY_LIKELY);
      else if (cond == const0_rtx)
	cond = GEN_INT (PROB_VERY_UNLIKELY);
      else
	abort ();
      REG_NOTES (insn) = alloc_EXPR_LIST (REG_BR_PROB, cond, REG_NOTES (insn));
    }
}
