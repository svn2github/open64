/* Generated automatically by the program `genrecog' from the target
   machine description file.  */

#include "config.h"
#include "system.h"
#include "rtl.h"
#include "tm_p.h"
#include "function.h"
#include "insn-config.h"
#include "recog.h"
#include "real.h"
#include "output.h"
#include "flags.h"
#include "hard-reg-set.h"
#include "resource.h"



/* `recog' contains a decision tree that recognizes whether the rtx
   X0 is a valid instruction.

   recog returns -1 if the rtx is not valid.  If the rtx is valid, recog
   returns a nonnegative number which is the insn code number for the
   pattern that matched.  This is the same as the order in the machine
   description of the entry that matched.  This number can be used as an
   index into `insn_data' and other tables.

   The third argument to recog is an optional pointer to an int.  If
   present, recog will accept a pattern if it matches except for missing
   CLOBBER expressions at the end.  In that case, the value pointed to by
   the optional pointer will be set to the number of CLOBBERs that need
   to be added (it should be initialized to zero by the caller).  If it
   is set nonzero, the caller should allocate a PARALLEL of the
   appropriate size, copy the initial entries, and call add_clobbers
   (found in insn-emit.c) to fill in the CLOBBERs.


   The function split_insns returns 0 if the rtl could not
   be split or the split rtl in a SEQUENCE if it can be.

   The function peephole2_insns returns 0 if the rtl could not
   be matched. If there was a match, the new rtl is returned in a SEQUENCE,
   and LAST_INSN will point to the last recognized insn in the old sequence.
*/


extern rtx gen_split_158 PARAMS ((rtx *));
extern rtx gen_split_160 PARAMS ((rtx *));
extern rtx gen_split_161 PARAMS ((rtx *));
extern rtx gen_split_171 PARAMS ((rtx *));
extern rtx gen_split_182 PARAMS ((rtx *));
extern rtx gen_split_191 PARAMS ((rtx *));
extern rtx gen_split_212 PARAMS ((rtx *));
extern rtx gen_split_213 PARAMS ((rtx *));
extern rtx gen_split_214 PARAMS ((rtx *));
extern rtx gen_split_215 PARAMS ((rtx *));
extern rtx gen_split_216 PARAMS ((rtx *));
extern rtx gen_split_217 PARAMS ((rtx *));
extern rtx gen_split_218 PARAMS ((rtx *));
extern rtx gen_split_219 PARAMS ((rtx *));
extern rtx gen_split_220 PARAMS ((rtx *));
extern rtx gen_split_221 PARAMS ((rtx *));



static int recog_1 PARAMS ((rtx, rtx, int *));
static int
recog_1 (x0, insn, pnum_clobbers)
     register rtx x0;
     rtx insn ATTRIBUTE_UNUSED;
     int *pnum_clobbers ATTRIBUTE_UNUSED;
{
  register rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  register rtx x1 ATTRIBUTE_UNUSED;
  register rtx x2 ATTRIBUTE_UNUSED;
  register rtx x3 ATTRIBUTE_UNUSED;
  register rtx x4 ATTRIBUTE_UNUSED;
  register rtx x5 ATTRIBUTE_UNUSED;
  register rtx x6 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;

  x1 = XEXP (x0, 1);
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L19;
    case MINUS:
      goto L29;
    case SIGN_EXTEND:
      goto L51;
    case ZERO_EXTEND:
      goto L63;
    case FIX:
      goto L95;
    case UNSIGNED_FIX:
      goto L111;
    case SIGN_EXTRACT:
      goto L119;
    case ZERO_EXTRACT:
      goto L125;
    case IOR:
      goto L161;
    case MULT:
      goto L225;
    case TRUNCATE:
      goto L271;
    case NEG:
      goto L291;
    case UNSPEC:
      goto L2369;
    case ASHIFTRT:
      goto L436;
    case LSHIFTRT:
      goto L442;
    case ASHIFT:
      goto L448;
    case ROTATERT:
      goto L480;
    case AND:
      goto L489;
    case XOR:
      goto L505;
    case NOT:
      goto L510;
    case NE:
      goto L582;
    case EQ:
      goto L587;
    case IF_THEN_ELSE:
      goto L592;
    default:
     break;
   }
  goto ret0;

 L19: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L2376;
  goto ret0;

 L2376: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case REG:
      goto L2381;
    case PLUS:
      goto L208;
    case NOT:
      goto L220;
    case MULT:
      goto L241;
    default:
     break;
   }
 L2377: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L203;
    }
  goto ret0;

 L2381: ATTRIBUTE_UNUSED_LABEL
  if (XINT (x2, 0) == 1)
    goto L20;
  goto L2377;

 L20: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L2382;
  x2 = XEXP (x1, 0);
  goto L2377;

 L2382: ATTRIBUTE_UNUSED_LABEL
  if (function_operand (x2, DImode))
    {
      operands[1] = x2;
      return 4;
    }
 L2383: ATTRIBUTE_UNUSED_LABEL
  if (sdata_symbolic_operand (x2, DImode))
    {
      operands[1] = x2;
      return 5;
    }
 L2384: ATTRIBUTE_UNUSED_LABEL
  if (symbolic_operand (x2, DImode))
    {
      operands[1] = x2;
      return 7;
    }
  x2 = XEXP (x1, 0);
  goto L2377;

 L208: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L2386;
  goto ret0;

 L2386: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == MULT)
    goto L263;
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L209;
    }
  goto ret0;

 L263: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L264;
    }
  goto ret0;

 L264: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L265;
    }
  if (shladd_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L464;
    }
  goto ret0;

 L265: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[3] = x3;
      goto L266;
    }
  goto ret0;

 L266: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L267;
    }
  goto ret0;

 L267: ATTRIBUTE_UNUSED_LABEL
  if ((reload_in_progress)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 47;
    }
  goto ret0;

 L464: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[3] = x3;
      goto L465;
    }
  goto ret0;

 L465: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L466;
    }
  goto ret0;

 L466: ATTRIBUTE_UNUSED_LABEL
  if ((reload_in_progress))
    {
      return 81;
    }
  goto ret0;

 L209: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L210;
    }
  goto ret0;

 L210: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 1)
    {
      return 42;
    }
  goto ret0;

 L220: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L221;
    }
  goto ret0;

 L221: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      return 44;
    }
  goto ret0;

 L241: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L242;
    }
  goto ret0;

 L242: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L243;
    }
  if (shladd_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L456;
    }
  goto ret0;

 L243: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L244;
    }
  goto ret0;

 L244: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 46;
    }
  goto ret0;

 L456: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      return 80;
    }
  goto ret0;

 L203: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_22bit_operand (x2, DImode))
    {
      operands[2] = x2;
      return 41;
    }
  goto ret0;

 L29: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (symbolic_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L30;
    }
  if (reg_or_8bit_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L215;
    }
  goto ret0;

 L30: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 1)
    {
      return 6;
    }
  goto ret0;

 L215: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      return 43;
    }
  goto ret0;

 L51: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case QImode:
      goto L2387;
    case HImode:
      goto L2388;
    case SImode:
      goto L2389;
    default:
      break;
    }
  goto ret0;

 L2387: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, QImode))
    {
      operands[1] = x2;
      return 11;
    }
  goto ret0;

 L2388: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, HImode))
    {
      operands[1] = x2;
      return 12;
    }
  goto ret0;

 L2389: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 13;
    }
  goto ret0;

 L63: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case QImode:
      goto L2390;
    case HImode:
      goto L2391;
    case SImode:
      goto L2392;
    default:
      break;
    }
  goto ret0;

 L2390: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      return 14;
    }
  goto ret0;

 L2391: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, HImode))
    {
      operands[1] = x2;
      return 15;
    }
  goto ret0;

 L2392: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, SImode))
    {
      operands[1] = x2;
      return 16;
    }
  goto ret0;

 L95: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SFmode:
      goto L2393;
    case DFmode:
      goto L2394;
    default:
      break;
    }
  goto ret0;

 L2393: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      return 22;
    }
  goto ret0;

 L2394: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      return 23;
    }
  goto ret0;

 L111: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SFmode:
      goto L2395;
    case DFmode:
      goto L2396;
    default:
      break;
    }
  goto ret0;

 L2395: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      return 26;
    }
  goto ret0;

 L2396: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      return 27;
    }
  goto ret0;

 L119: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L120;
    }
  goto ret0;

 L120: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L121;
    }
  goto ret0;

 L121: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[3] = x2;
      return 28;
    }
  goto ret0;

 L125: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L126;
    }
  goto ret0;

 L126: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L127;
    }
  goto ret0;

 L127: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[3] = x2;
      return 29;
    }
  goto ret0;

 L161: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L2397;
  goto ret0;

 L2397: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == ZERO_EXTEND)
    goto L162;
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L501;
    }
  goto ret0;

 L162: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L163;
    }
  goto ret0;

 L163: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == ASHIFT)
    goto L164;
  goto ret0;

 L164: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == ZERO_EXTEND)
    goto L165;
  goto ret0;

 L165: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L166;
    }
  goto ret0;

 L166: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 32)
    {
      return 34;
    }
  goto ret0;

 L501: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_8bit_operand (x2, DImode))
    {
      operands[2] = x2;
      return 88;
    }
  goto ret0;

 L225: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L226;
    }
  goto ret0;

 L226: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      return 45;
    }
  goto ret0;

 L271: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == TImode
      && GET_CODE (x2) == LSHIFTRT)
    goto L272;
  goto ret0;

 L272: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == TImode
      && GET_CODE (x3) == MULT)
    goto L273;
  goto ret0;

 L273: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == TImode)
    goto L2399;
  goto ret0;

 L2399: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x4))
    {
    case SIGN_EXTEND:
      goto L274;
    case ZERO_EXTEND:
      goto L284;
    default:
     break;
   }
  goto ret0;

 L274: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L275;
    }
  goto ret0;

 L275: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_MODE (x4) == TImode
      && GET_CODE (x4) == SIGN_EXTEND)
    goto L276;
  goto ret0;

 L276: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L277;
    }
  goto ret0;

 L277: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 64)
    {
      return 48;
    }
  goto ret0;

 L284: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L285;
    }
  goto ret0;

 L285: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_MODE (x4) == TImode
      && GET_CODE (x4) == ZERO_EXTEND)
    goto L286;
  goto ret0;

 L286: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L287;
    }
  goto ret0;

 L287: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 64)
    {
      return 49;
    }
  goto ret0;

 L291: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      return 50;
    }
  goto ret0;

 L2369: ATTRIBUTE_UNUSED_LABEL
  switch (XVECLEN (x1, 0))
    {
    case 1:
      goto L2401;
    case 2:
      goto L2406;
    default:
      break;
    }
  goto ret0;

 L2401: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x1, 1))
    {
    case 8:
      goto L295;
    case 2:
      goto L741;
    case 5:
      goto L753;
    case 9:
      goto L767;
    case 20:
      goto L776;
    default:
      break;
    }
  goto ret0;

 L295: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      return 51;
    }
  goto ret0;

 L741: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (memory_operand (x2, DImode))
    {
      operands[1] = x2;
      return 124;
    }
  goto ret0;

 L753: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    {
      return 127;
    }
  goto ret0;

 L767: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    {
      return 130;
    }
  goto ret0;

 L776: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    {
      return 132;
    }
  goto ret0;

 L2406: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x1, 1))
    {
    case 19:
      goto L811;
    case 13:
      goto L821;
    default:
      break;
    }
  goto ret0;

 L811: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (memory_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L812;
    }
  goto ret0;

 L812: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (fetchadd_operand (x2, DImode))
    {
      operands[2] = x2;
      return 143;
    }
  goto ret0;

 L821: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (memory_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L822;
    }
  goto ret0;

 L822: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      return 145;
    }
  goto ret0;

 L436: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L2408;
  goto ret0;

 L2408: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == SIGN_EXTEND)
    goto L437;
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L471;
    }
  goto ret0;

 L437: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L438;
    }
  goto ret0;

 L438: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (shift_32bit_count_operand (x2, DImode))
    {
      operands[2] = x2;
      return 77;
    }
  goto ret0;

 L471: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_6bit_operand (x2, DImode))
    {
      operands[2] = x2;
      return 82;
    }
  goto ret0;

 L442: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L2410;
  goto ret0;

 L2410: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == ZERO_EXTEND)
    goto L443;
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L476;
    }
  goto ret0;

 L443: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L444;
    }
  goto ret0;

 L444: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (shift_32bit_count_operand (x2, DImode))
    {
      operands[2] = x2;
      return 78;
    }
  goto ret0;

 L476: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_6bit_operand (x2, DImode))
    {
      operands[2] = x2;
      return 83;
    }
  goto ret0;

 L448: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L449;
    }
  goto ret0;

 L449: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_6bit_operand (x2, DImode))
    {
      operands[2] = x2;
      return 79;
    }
  goto ret0;

 L480: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L481;
    }
  goto ret0;

 L481: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (shift_count_operand (x2, DImode))
    {
      operands[2] = x2;
      return 84;
    }
  goto ret0;

 L489: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L2413;
  goto ret0;

 L2413: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == NOT)
    goto L495;
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L490;
    }
  goto ret0;

 L495: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L496;
    }
  goto ret0;

 L496: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_8bit_operand (x2, DImode))
    {
      operands[2] = x2;
      return 87;
    }
  goto ret0;

 L490: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_8bit_operand (x2, DImode))
    {
      operands[2] = x2;
      return 86;
    }
  goto ret0;

 L505: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L506;
    }
  goto ret0;

 L506: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_8bit_operand (x2, DImode))
    {
      operands[2] = x2;
      return 89;
    }
  goto ret0;

 L510: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      return 90;
    }
  goto ret0;

 L582: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[1] = x2;
      goto L583;
    }
  goto ret0;

 L583: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    {
      return 102;
    }
  goto ret0;

 L587: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[1] = x2;
      goto L588;
    }
  goto ret0;

 L588: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    {
      return 103;
    }
  goto ret0;

 L592: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (predicate_operator (x2, CCmode))
    {
      operands[4] = x2;
      goto L593;
    }
  goto ret0;

 L593: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[1] = x3;
      goto L594;
    }
  goto ret0;

 L594: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L603;
  goto ret0;

 L603: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == NEG)
    goto L604;
  if (reg_or_22bit_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L596;
    }
  goto ret0;

 L604: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_22bit_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L605;
    }
  goto ret0;

 L605: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_22bit_operand (x2, DImode))
    {
      operands[3] = x2;
      return 105;
    }
  goto ret0;

 L596: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_22bit_operand (x2, DImode))
    {
      operands[3] = x2;
      return 104;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_2 PARAMS ((rtx, rtx, int *));
static int
recog_2 (x0, insn, pnum_clobbers)
     register rtx x0;
     rtx insn ATTRIBUTE_UNUSED;
     int *pnum_clobbers ATTRIBUTE_UNUSED;
{
  register rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  register rtx x1 ATTRIBUTE_UNUSED;
  register rtx x2 ATTRIBUTE_UNUSED;
  register rtx x3 ATTRIBUTE_UNUSED;
  register rtx x4 ATTRIBUTE_UNUSED;
  register rtx x5 ATTRIBUTE_UNUSED;
  register rtx x6 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;

  x1 = XEXP (x0, 0);
  switch (GET_MODE (x1))
    {
    case QImode:
      goto L2303;
    case HImode:
      goto L2304;
    case SImode:
      goto L2305;
    case DImode:
      goto L2314;
    case SFmode:
      goto L2308;
    case DFmode:
      goto L2309;
    case XFmode:
      goto L2310;
    case CCmode:
      goto L2316;
    default:
      break;
    }
 L562: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == PC)
    goto L697;
  goto ret0;

 L2303: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L2;
    }
  goto L562;

 L2: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (move_operand (x1, QImode))
    {
      operands[1] = x1;
      goto L3;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L3: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], QImode)
   || ! memory_operand (operands[1], QImode)))
    {
      return 0;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2304: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L6;
    }
  goto L562;

 L6: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (move_operand (x1, HImode))
    {
      operands[1] = x1;
      goto L7;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L7: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], HImode)
   || !memory_operand (operands[1], HImode)))
    {
      return 1;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2305: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L10;
    }
 L2315: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L169;
    }
  goto L562;

 L10: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (move_operand (x1, SImode))
    {
      operands[1] = x1;
      goto L11;
    }
  x1 = XEXP (x0, 0);
  goto L2315;

 L11: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], SImode)
   || ! memory_operand (operands[1], SImode)))
    {
      return 2;
    }
  x1 = XEXP (x0, 0);
  goto L2315;

 L169: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L2320;
  x1 = XEXP (x0, 0);
  goto L562;

 L2320: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L170;
    case MINUS:
      goto L182;
    case MULT:
      goto L193;
    case NEG:
      goto L198;
    case ASHIFT:
      goto L431;
    case NOT:
      goto L485;
    case IF_THEN_ELSE:
      goto L609;
    case UNSPEC:
      goto L2329;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L562;

 L170: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode)
    goto L2332;
  x1 = XEXP (x0, 0);
  goto L562;

 L2332: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L176;
    case NOT:
      goto L188;
    case SUBREG:
    case REG:
      goto L2331;
    default:
      x1 = XEXP (x0, 0);
      goto L562;
   }
 L2331: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L171;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L176: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L177;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L177: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L178;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L178: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 1)
    {
      return 36;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L188: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L189;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L189: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 38;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L171: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_22bit_operand (x2, SImode))
    {
      operands[2] = x2;
      return 35;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L182: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (reg_or_8bit_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L183;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L183: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 37;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L193: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L194;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L194: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      return 39;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L198: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 40;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L431: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L432;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L432: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (shift_32bit_count_operand (x2, SImode))
    {
      operands[2] = x2;
      return 76;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L485: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 85;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L609: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (predicate_operator (x2, CCmode))
    {
      operands[4] = x2;
      goto L610;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L610: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[1] = x3;
      goto L611;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L611: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L620;
  x1 = XEXP (x0, 0);
  goto L562;

 L620: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == NEG)
    goto L621;
  if (reg_or_22bit_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L613;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L621: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_22bit_operand (x3, SImode))
    {
      operands[3] = x3;
      goto L622;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L622: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_22bit_operand (x2, SImode))
    {
      operands[2] = x2;
      return 107;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L613: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_22bit_operand (x2, SImode))
    {
      operands[3] = x2;
      return 106;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2329: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 2)
    goto L2334;
  x1 = XEXP (x0, 0);
  goto L562;

 L2334: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x1, 1))
    {
    case 19:
      goto L806;
    case 13:
      goto L816;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L806: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (memory_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L807;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L807: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (fetchadd_operand (x2, SImode))
    {
      operands[2] = x2;
      return 142;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L816: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (memory_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L817;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L817: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 144;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2314: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == ZERO_EXTRACT)
    goto L130;
  if (nonimmediate_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L14;
    }
 L2307: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L18;
    }
 L2318: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L736;
    }
  goto L562;

 L130: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L131;
    }
  goto L562;

 L131: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    goto L2336;
  goto L562;

 L2336: ATTRIBUTE_UNUSED_LABEL
  operands[1] = x2;
  goto L132;
 L2337: ATTRIBUTE_UNUSED_LABEL
  if (XWINT (x2, 0) == 32)
    goto L148;
  goto L562;

 L132: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L133;
    }
  x2 = XEXP (x1, 1);
  goto L2337;

 L133: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (nonmemory_operand (x1, DImode))
    {
      operands[3] = x1;
      goto L134;
    }
  x1 = XEXP (x0, 0);
  x2 = XEXP (x1, 1);
  goto L2337;

 L134: ATTRIBUTE_UNUSED_LABEL
  if (((register_operand (operands[3], DImode) && INTVAL (operands[1]) <= 16)
   || operands[3] == const0_rtx || operands[3] == constm1_rtx))
    {
      return 30;
    }
  x1 = XEXP (x0, 0);
  x2 = XEXP (x1, 1);
  goto L2337;

 L148: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == CONST_INT)
    goto L2338;
  goto L562;

 L2338: ATTRIBUTE_UNUSED_LABEL
  switch ((int) XWINT (x2, 0))
    {
    case 0:
      goto L149;
    case 32:
      goto L157;
    default:
      break;
    }
  goto L562;

 L149: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode
      && GET_CODE (x1) == LSHIFTRT)
    goto L150;
  x1 = XEXP (x0, 0);
  goto L562;

 L150: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L151;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L151: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 32)
    {
      return 32;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L157: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (reg_or_0_operand (x1, DImode))
    {
      operands[1] = x1;
      return 33;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L14: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (move_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L15;
    }
  x1 = XEXP (x0, 0);
  goto L2307;

 L15: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], DImode)
   || ! memory_operand (operands[1], DImode)))
    {
      return 3;
    }
  x1 = XEXP (x0, 0);
  goto L2307;

 L18: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode)
    goto L2340;
  x1 = XEXP (x0, 0);
  goto L2318;

 L2340: ATTRIBUTE_UNUSED_LABEL
  tem = recog_1 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  x1 = XEXP (x0, 0);
  goto L2318;

 L736: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode
      && GET_CODE (x1) == UNSPEC
      && XVECLEN (x1, 0) == 1
      && XINT (x1, 1) == 1)
    goto L737;
  x1 = XEXP (x0, 0);
  goto L562;

 L737: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      return 123;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2308: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L38;
    }
 L2312: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L78;
    }
  goto L562;

 L38: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, SFmode))
    {
      operands[1] = x1;
      goto L39;
    }
  x1 = XEXP (x0, 0);
  goto L2312;

 L39: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], SFmode)
   || ! memory_operand (operands[1], SFmode)))
    {
      return 8;
    }
  x1 = XEXP (x0, 0);
  goto L2312;

 L78: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SFmode)
    goto L2414;
  x1 = XEXP (x0, 0);
  goto L562;

 L2414: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case FLOAT_TRUNCATE:
      goto L79;
    case UNSIGNED_FLOAT:
      goto L103;
    case PLUS:
      goto L299;
    case MINUS:
      goto L304;
    case MULT:
      goto L309;
    case ABS:
      goto L314;
    case NEG:
      goto L318;
    case SMIN:
      goto L327;
    case SMAX:
      goto L332;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L562;

 L79: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DFmode:
      goto L2423;
    case XFmode:
      goto L2424;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2423: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      return 18;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2424: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, XFmode))
    {
      operands[1] = x2;
      return 19;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L103: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      return 24;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L299: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SFmode)
    goto L2426;
  x1 = XEXP (x0, 0);
  goto L562;

 L2426: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case MULT:
      goto L338;
    case NEG:
      goto L358;
    case SUBREG:
    case REG:
      goto L2425;
    default:
      x1 = XEXP (x0, 0);
      goto L562;
   }
 L2425: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L300;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L338: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L339;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L339: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L340;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L340: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[3] = x2;
      return 60;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L358: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SFmode
      && GET_CODE (x3) == MULT)
    goto L359;
  x1 = XEXP (x0, 0);
  goto L562;

 L359: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SFmode))
    {
      operands[1] = x4;
      goto L360;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L360: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SFmode))
    {
      operands[2] = x4;
      goto L361;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L361: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[3] = x2;
      return 63;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L300: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[2] = x2;
      return 52;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L304: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SFmode)
    goto L2429;
  x1 = XEXP (x0, 0);
  goto L562;

 L2429: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MULT)
    goto L345;
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L305;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L345: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L346;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L346: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L347;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L347: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[3] = x2;
      return 61;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L305: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[2] = x2;
      return 53;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L309: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L310;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L310: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      return 54;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L314: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      return 55;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L318: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SFmode)
    goto L2431;
  x1 = XEXP (x0, 0);
  goto L562;

 L2431: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case ABS:
      goto L323;
    case MULT:
      goto L352;
    case SUBREG:
    case REG:
      goto L2430;
    default:
      x1 = XEXP (x0, 0);
      goto L562;
   }
 L2430: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      return 56;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L323: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      return 57;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L352: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L353;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L353: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      return 62;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L327: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L328;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L328: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[2] = x2;
      return 58;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L332: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L333;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L333: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[2] = x2;
      return 59;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2309: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L42;
    }
 L2311: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L74;
    }
  goto L562;

 L42: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, DFmode))
    {
      operands[1] = x1;
      goto L43;
    }
  x1 = XEXP (x0, 0);
  goto L2311;

 L43: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], DFmode)
   || ! memory_operand (operands[1], DFmode)))
    {
      return 9;
    }
  x1 = XEXP (x0, 0);
  goto L2311;

 L74: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DFmode)
    goto L2433;
  x1 = XEXP (x0, 0);
  goto L562;

 L2433: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case FLOAT_EXTEND:
      goto L75;
    case FLOAT_TRUNCATE:
      goto L87;
    case UNSIGNED_FLOAT:
      goto L107;
    case PLUS:
      goto L365;
    case MINUS:
      goto L370;
    case MULT:
      goto L375;
    case ABS:
      goto L380;
    case NEG:
      goto L384;
    case SMIN:
      goto L393;
    case SMAX:
      goto L398;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L562;

 L75: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      return 17;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L87: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, XFmode))
    {
      operands[1] = x2;
      return 20;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L107: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      return 25;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L365: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DFmode)
    goto L2444;
  x1 = XEXP (x0, 0);
  goto L562;

 L2444: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case MULT:
      goto L404;
    case NEG:
      goto L424;
    case SUBREG:
    case REG:
      goto L2443;
    default:
      x1 = XEXP (x0, 0);
      goto L562;
   }
 L2443: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L366;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L404: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L405;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L405: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L406;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L406: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[3] = x2;
      return 72;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L424: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DFmode
      && GET_CODE (x3) == MULT)
    goto L425;
  x1 = XEXP (x0, 0);
  goto L562;

 L425: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DFmode))
    {
      operands[1] = x4;
      goto L426;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L426: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DFmode))
    {
      operands[2] = x4;
      goto L427;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L427: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[3] = x2;
      return 75;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L366: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[2] = x2;
      return 64;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L370: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DFmode)
    goto L2447;
  x1 = XEXP (x0, 0);
  goto L562;

 L2447: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MULT)
    goto L411;
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L371;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L411: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L412;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L412: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L413;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L413: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[3] = x2;
      return 73;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L371: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[2] = x2;
      return 65;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L375: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L376;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L376: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      return 66;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L380: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      return 67;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L384: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DFmode)
    goto L2449;
  x1 = XEXP (x0, 0);
  goto L562;

 L2449: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case ABS:
      goto L389;
    case MULT:
      goto L418;
    case SUBREG:
    case REG:
      goto L2448;
    default:
      x1 = XEXP (x0, 0);
      goto L562;
   }
 L2448: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      return 68;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L389: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      return 69;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L418: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L419;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L419: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      return 74;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L393: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L394;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L394: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[2] = x2;
      return 70;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L398: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L399;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L399: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[2] = x2;
      return 71;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2310: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, XFmode))
    {
      operands[0] = x1;
      goto L46;
    }
 L2313: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, XFmode))
    {
      operands[0] = x1;
      goto L90;
    }
 L2319: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x1, XFmode))
    {
      operands[0] = x1;
      goto L744;
    }
  goto L562;

 L46: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, XFmode))
    {
      operands[1] = x1;
      goto L47;
    }
  x1 = XEXP (x0, 0);
  goto L2313;

 L47: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], XFmode)
   || ! memory_operand (operands[1], XFmode)))
    {
      return 10;
    }
  x1 = XEXP (x0, 0);
  goto L2313;

 L90: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == XFmode)
    goto L2451;
  x1 = XEXP (x0, 0);
  goto L2319;

 L2451: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case FLOAT:
      goto L91;
    case UNSPEC:
      goto L2453;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L2319;

 L91: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      return 21;
    }
  x1 = XEXP (x0, 0);
  goto L2319;

 L2453: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 1
      && XINT (x1, 1) == 4)
    goto L749;
  x1 = XEXP (x0, 0);
  goto L2319;

 L749: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (memory_operand (x2, XFmode))
    {
      operands[1] = x2;
      return 126;
    }
  x1 = XEXP (x0, 0);
  goto L2319;

 L744: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == XFmode
      && GET_CODE (x1) == UNSPEC
      && XVECLEN (x1, 0) == 1
      && XINT (x1, 1) == 3)
    goto L745;
  x1 = XEXP (x0, 0);
  goto L562;

 L745: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (register_operand (x2, XFmode))
    {
      operands[1] = x2;
      return 125;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L2316: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, CCmode))
    {
      operands[0] = x1;
      goto L513;
    }
 L2317: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, CCmode))
    {
      operands[0] = x1;
      goto L559;
    }
  goto L562;

 L513: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == CCmode)
    goto L2457;
  x1 = XEXP (x0, 0);
  goto L2317;

 L2457: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case EQ:
      goto L544;
    case NE:
      goto L552;
    default:
     break;
   }
 L2454: ATTRIBUTE_UNUSED_LABEL
  if (normal_comparison_operator (x1, CCmode))
    {
      operands[1] = x1;
      goto L514;
    }
  if (adjusted_comparison_operator (x1, CCmode))
    {
      operands[1] = x1;
      goto L519;
    }
 L2456: ATTRIBUTE_UNUSED_LABEL
  if (comparison_operator (x1, CCmode))
    {
      operands[1] = x1;
      goto L534;
    }
  x1 = XEXP (x0, 0);
  goto L2317;

 L544: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == ZERO_EXTRACT)
    goto L545;
  goto L2454;

 L545: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L546;
    }
  goto L2454;

 L546: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 1)
    goto L547;
  goto L2454;

 L547: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (immediate_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L548;
    }
  goto L2454;

 L548: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    {
      return 97;
    }
  goto L2454;

 L552: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == ZERO_EXTRACT)
    goto L553;
  goto L2454;

 L553: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L554;
    }
  goto L2454;

 L554: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 1)
    goto L555;
  goto L2454;

 L555: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (immediate_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L556;
    }
  goto L2454;

 L556: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    {
      return 98;
    }
  goto L2454;

 L514: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L2459;
    case DImode:
      goto L2460;
    default:
      break;
    }
  goto L2456;

 L2459: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L515;
    }
  goto L2456;

 L515: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_8bit_operand (x2, SImode))
    {
      operands[3] = x2;
      return 91;
    }
  goto L2456;

 L2460: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L525;
    }
  goto L2456;

 L525: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_8bit_operand (x2, DImode))
    {
      operands[3] = x2;
      return 93;
    }
  goto L2456;

 L519: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L2461;
    case DImode:
      goto L2462;
    default:
      break;
    }
  goto L2456;

 L2461: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L520;
    }
  goto L2456;

 L520: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_8bit_adjusted_operand (x2, SImode))
    {
      operands[3] = x2;
      return 92;
    }
  goto L2456;

 L2462: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L530;
    }
  goto L2456;

 L530: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_8bit_adjusted_operand (x2, DImode))
    {
      operands[3] = x2;
      return 94;
    }
  goto L2456;

 L534: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SFmode:
      goto L2463;
    case DFmode:
      goto L2464;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L2317;

 L2463: ATTRIBUTE_UNUSED_LABEL
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L535;
    }
  x1 = XEXP (x0, 0);
  goto L2317;

 L535: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, SFmode))
    {
      operands[3] = x2;
      return 95;
    }
  x1 = XEXP (x0, 0);
  goto L2317;

 L2464: ATTRIBUTE_UNUSED_LABEL
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L540;
    }
  x1 = XEXP (x0, 0);
  goto L2317;

 L540: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_fp01_operand (x2, DFmode))
    {
      operands[3] = x2;
      return 96;
    }
  x1 = XEXP (x0, 0);
  goto L2317;

 L559: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (move_operand (x1, CCmode))
    {
      operands[1] = x1;
      goto L560;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L560: ATTRIBUTE_UNUSED_LABEL
  if ((reload_in_progress || reload_completed))
    {
      return 99;
    }
  x1 = XEXP (x0, 0);
  goto L562;

 L697: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      return 118;
    }
  switch (GET_CODE (x1))
    {
    case IF_THEN_ELSE:
      goto L564;
    case LABEL_REF:
      goto L694;
    default:
     break;
   }
  goto ret0;

 L564: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (predicate_operator (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L565;
    }
  goto ret0;

 L565: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[1] = x3;
      goto L566;
    }
  goto ret0;

 L566: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L567;
  goto ret0;

 L567: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  switch (GET_CODE (x2))
    {
    case LABEL_REF:
      goto L568;
    case PC:
      goto L577;
    case RETURN:
      goto L682;
    default:
     break;
   }
  goto ret0;

 L568: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[2] = x3;
  goto L569;

 L569: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 100;
    }
  goto ret0;

 L577: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  switch (GET_CODE (x2))
    {
    case LABEL_REF:
      goto L578;
    case RETURN:
      goto L2465;
    default:
     break;
   }
  goto ret0;

 L578: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[2] = x3;
  return 101;

 L2465: ATTRIBUTE_UNUSED_LABEL
  if ((ia64_direct_return ()))
    {
      return 116;
    }
  goto ret0;

 L682: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC
      && (ia64_direct_return ()))
    {
      return 115;
    }
  goto ret0;

 L694: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  operands[0] = x2;
  return 117;
 ret0:
  return -1;
}

static int recog_3 PARAMS ((rtx, rtx, int *));
static int
recog_3 (x0, insn, pnum_clobbers)
     register rtx x0;
     rtx insn ATTRIBUTE_UNUSED;
     int *pnum_clobbers ATTRIBUTE_UNUSED;
{
  register rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  register rtx x1 ATTRIBUTE_UNUSED;
  register rtx x2 ATTRIBUTE_UNUSED;
  register rtx x3 ATTRIBUTE_UNUSED;
  register rtx x4 ATTRIBUTE_UNUSED;
  register rtx x5 ATTRIBUTE_UNUSED;
  register rtx x6 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;

  switch (XVECLEN (x0, 0))
    {
    case 2:
      goto L136;
    case 3:
      goto L631;
    case 5:
      goto L722;
    default:
      break;
    }
 L2294: ATTRIBUTE_UNUSED_LABEL
  if (call_multiple_values_operation (x0, VOIDmode))
    {
      operands[0] = x0;
      goto L660;
    }
  goto ret0;

 L136: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  switch (GET_CODE (x1))
    {
    case SET:
      goto L137;
    case CALL:
      goto L625;
    case RETURN:
      goto L672;
    case UNSPEC_VOLATILE:
      goto L2466;
    case UNSPEC:
      goto L2468;
    default:
     break;
   }
  goto L2294;

 L137: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DImode:
      goto L2471;
    case SImode:
      goto L2473;
    default:
      break;
    }
 L700: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PC)
    goto L701;
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L642;
    }
  goto L2294;

 L2471: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == ZERO_EXTRACT)
    goto L138;
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L230;
    }
  goto L700;

 L138: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L139;
    }
  goto L700;

 L139: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 32)
    goto L140;
  goto L700;

 L140: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L141;
  goto L700;

 L141: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L142;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L142: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L143;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L143: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      return 31;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L230: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L2474;
  x2 = XEXP (x1, 0);
  goto L700;

 L2474: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L231;
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L718;
    }
 L2476: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L834;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L231: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L2477;
  x2 = XEXP (x1, 0);
  goto L700;

 L2477: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x3))
    {
    case MULT:
      goto L232;
    case PLUS:
      goto L250;
    case SUBREG:
    case REG:
      goto L2479;
    default:
      x2 = XEXP (x1, 0);
      goto L700;
   }
 L2479: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L710;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L232: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L233;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L233: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L234;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L234: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[3] = x3;
      goto L235;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L235: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L236;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L236: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      return 46;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L250: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == MULT)
    goto L251;
  x2 = XEXP (x1, 0);
  goto L700;

 L251: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L252;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L252: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (register_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L253;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L253: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DImode))
    {
      operands[3] = x4;
      goto L254;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L254: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (nonmemory_operand (x3, DImode))
    {
      operands[4] = x3;
      goto L255;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L255: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L256;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L256: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[5] = x2;
      goto L257;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L257: ATTRIBUTE_UNUSED_LABEL
  if ((reload_in_progress))
    {
      return 47;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L710: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_22bit_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L711;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L711: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L712;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L712: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L713;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L713: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (rtx_equal_p (x2, operands[3]))
    {
      return 120;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L718: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L719;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  goto L2476;

 L719: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (rtx_equal_p (x2, operands[1]))
    goto L720;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  goto L2476;

 L720: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (rtx_equal_p (x2, operands[1]))
    {
      return 121;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  goto L2476;

 L834: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L835;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L835: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (rtx_equal_p (x2, operands[1]))
    goto L836;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L836: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      return 147;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L2473: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L826;
    }
  goto L700;

 L826: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (memory_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L827;
    }
  x2 = XEXP (x1, 0);
  goto L700;

 L827: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L828;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L828: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (rtx_equal_p (x2, operands[1]))
    goto L829;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L829: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 146;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L700;

 L701: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L702;
    }
  goto L2294;

 L702: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L703;
  goto L2294;

 L703: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == LABEL_REF)
    goto L704;
  goto L2294;

 L704: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  return 119;

 L642: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L643;
  goto L2294;

 L643: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == MEM)
    goto L644;
  goto L2294;

 L644: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (call_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L645;
    }
  goto L2294;

 L645: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L646;

 L646: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L647;
  goto L2294;

 L647: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      return 110;
    }
  goto L2294;

 L625: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == MEM)
    goto L626;
  goto L2294;

 L626: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (call_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L627;
    }
  goto L2294;

 L627: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L628;

 L628: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L629;
  goto L2294;

 L629: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      return 108;
    }
  goto L2294;

 L672: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L673;
  goto L2294;

 L673: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      return 113;
    }
  goto L2294;

 L2466: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 1)
    goto L2480;
  goto L2294;

 L2480: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x1, 1))
    {
    case 6:
      goto L756;
    case 4:
      goto L761;
    case 5:
      goto L779;
    default:
      break;
    }
  goto L2294;

 L756: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L757;
  goto L2294;

 L757: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L758;
  goto L2294;

 L758: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      return 128;
    }
  goto L2294;

 L761: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L762;
  goto L2294;

 L762: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L763;
  goto L2294;

 L763: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      return 129;
    }
  goto L2294;

 L779: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L780;
  goto L2294;

 L780: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L781;
  goto L2294;

 L781: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      return 133;
    }
  goto L2294;

 L2468: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 1)
    goto L2483;
  goto L2294;

 L2483: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x1, 1))
    {
    case 10:
      goto L770;
    case 11:
      goto L793;
    default:
      break;
    }
  goto L2294;

 L770: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L771;
  goto L2294;

 L771: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L772;
  goto L2294;

 L772: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      return 131;
    }
  goto L2294;

 L793: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L794;
  goto L2294;

 L794: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L795;
  goto L2294;

 L795: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L2485;
    case DImode:
      goto L2486;
    default:
      break;
    }
  goto L2294;

 L2485: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      return 139;
    }
  goto L2294;

 L2486: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      return 140;
    }
  goto L2294;

 L631: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  switch (GET_CODE (x1))
    {
    case CALL:
      goto L632;
    case SET:
      goto L650;
    default:
     break;
   }
  goto L2294;

 L632: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == MEM)
    goto L633;
  goto L2294;

 L633: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (call_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L634;
    }
  goto L2294;

 L634: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L635;

 L635: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L636;
  goto L2294;

 L636: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 1)
    goto L637;
  goto L2294;

 L637: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L638;
  goto L2294;

 L638: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      return 109;
    }
  goto L2294;

 L650: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L651;
    }
  goto L2294;

 L651: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L652;
  goto L2294;

 L652: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == MEM)
    goto L653;
  goto L2294;

 L653: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (call_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L654;
    }
  goto L2294;

 L654: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L655;

 L655: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L656;
  goto L2294;

 L656: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 1)
    goto L657;
  goto L2294;

 L657: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L658;
  goto L2294;

 L658: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      return 111;
    }
  goto L2294;

 L722: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L723;
  goto L2294;

 L723: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L724;
    }
  goto L2294;

 L724: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == UNSPEC_VOLATILE
      && XVECLEN (x2, 0) == 1
      && XINT (x2, 1) == 0)
    goto L725;
  goto L2294;

 L725: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L726;
  goto L2294;

 L726: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L727;
  goto L2294;

 L727: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[1] = x2;
      goto L728;
    }
  goto L2294;

 L728: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == USE)
    goto L729;
  goto L2294;

 L729: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L730;
    }
  goto L2294;

 L730: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 3);
  if (GET_CODE (x1) == USE)
    goto L731;
  goto L2294;

 L731: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[3] = x2;
      goto L732;
    }
  goto L2294;

 L732: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 4);
  if (GET_CODE (x1) == USE)
    goto L733;
  goto L2294;

 L733: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[4] = x2;
      return 122;
    }
  goto L2294;

 L660: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L661;
  goto ret0;

 L661: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L662;
    }
  goto ret0;

 L662: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L663;
  goto ret0;

 L663: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == MEM)
    goto L664;
  goto ret0;

 L664: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (call_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L665;
    }
  goto ret0;

 L665: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[3] = x3;
  goto L666;

 L666: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L667;
  goto ret0;

 L667: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 1)
    goto L668;
  goto ret0;

 L668: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L669;
  goto ret0;

 L669: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[4] = x2;
      return 112;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_4 PARAMS ((rtx, rtx, int *));
static int
recog_4 (x0, insn, pnum_clobbers)
     register rtx x0;
     rtx insn ATTRIBUTE_UNUSED;
     int *pnum_clobbers ATTRIBUTE_UNUSED;
{
  register rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  register rtx x1 ATTRIBUTE_UNUSED;
  register rtx x2 ATTRIBUTE_UNUSED;
  register rtx x3 ATTRIBUTE_UNUSED;
  register rtx x4 ATTRIBUTE_UNUSED;
  register rtx x5 ATTRIBUTE_UNUSED;
  register rtx x6 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;

  x1 = XEXP (x0, 1);
  switch (GET_CODE (x1))
    {
    case SET:
      goto L1208;
    case PARALLEL:
      goto L2530;
    default:
     break;
   }
  goto ret0;

 L1208: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DImode:
      goto L2533;
    case SFmode:
      goto L2534;
    case DFmode:
      goto L2535;
    case CCmode:
      goto L2536;
    default:
      break;
    }
  goto ret0;

 L2533: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == ZERO_EXTRACT)
    goto L1229;
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L1209;
    }
  goto ret0;

 L1229: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L1230;
    }
  goto ret0;

 L1230: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[1] = x3;
      goto L1231;
    }
  goto ret0;

 L1231: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[2] = x3;
      goto L1232;
    }
  goto ret0;

 L1232: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L1233;
    }
  goto ret0;

 L1233: ATTRIBUTE_UNUSED_LABEL
  if (((register_operand (operands[3], DImode) && INTVAL (operands[1]) <= 16)
   || operands[3] == const0_rtx || operands[3] == constm1_rtx))
    {
      return 299;
    }
  goto ret0;

 L1209: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L2537;
  goto ret0;

 L2537: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case SIGN_EXTRACT:
      goto L1210;
    case ZERO_EXTRACT:
      goto L1220;
    case PLUS:
      goto L1734;
    default:
     break;
   }
  goto ret0;

 L1210: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1211;
    }
  goto ret0;

 L1211: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[2] = x3;
      goto L1212;
    }
  goto ret0;

 L1212: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[3] = x3;
      return 297;
    }
  goto ret0;

 L1220: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1221;
    }
  goto ret0;

 L1221: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[2] = x3;
      goto L1222;
    }
  goto ret0;

 L1222: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[3] = x3;
      return 298;
    }
  goto ret0;

 L1734: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == MULT)
    goto L1735;
  goto ret0;

 L1735: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L1736;
    }
  goto ret0;

 L1736: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (shladd_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L1737;
    }
  goto ret0;

 L1737: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[3] = x3;
      return 349;
    }
  goto ret0;

 L2534: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[0] = x2;
      goto L1537;
    }
  goto ret0;

 L1537: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SFmode)
    goto L2540;
  goto ret0;

 L2540: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L1538;
    case MINUS:
      goto L1549;
    default:
     break;
   }
  goto ret0;

 L1538: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SFmode)
    goto L2542;
  goto ret0;

 L2542: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x3))
    {
    case MULT:
      goto L1539;
    case NEG:
      goto L1571;
    default:
     break;
   }
  goto ret0;

 L1539: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SFmode))
    {
      operands[1] = x4;
      goto L1540;
    }
  goto ret0;

 L1540: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SFmode))
    {
      operands[2] = x4;
      goto L1541;
    }
  goto ret0;

 L1541: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[3] = x3;
      return 329;
    }
  goto ret0;

 L1571: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == SFmode
      && GET_CODE (x4) == MULT)
    goto L1572;
  goto ret0;

 L1572: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SFmode))
    {
      operands[1] = x5;
      goto L1573;
    }
  goto ret0;

 L1573: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (register_operand (x5, SFmode))
    {
      operands[2] = x5;
      goto L1574;
    }
  goto ret0;

 L1574: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[3] = x3;
      return 332;
    }
  goto ret0;

 L1549: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SFmode
      && GET_CODE (x3) == MULT)
    goto L1550;
  goto ret0;

 L1550: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SFmode))
    {
      operands[1] = x4;
      goto L1551;
    }
  goto ret0;

 L1551: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SFmode))
    {
      operands[2] = x4;
      goto L1552;
    }
  goto ret0;

 L1552: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[3] = x3;
      return 330;
    }
  goto ret0;

 L2535: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[0] = x2;
      goto L1651;
    }
  goto ret0;

 L1651: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DFmode)
    goto L2544;
  goto ret0;

 L2544: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L1652;
    case MINUS:
      goto L1663;
    default:
     break;
   }
  goto ret0;

 L1652: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DFmode)
    goto L2546;
  goto ret0;

 L2546: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x3))
    {
    case MULT:
      goto L1653;
    case NEG:
      goto L1685;
    default:
     break;
   }
  goto ret0;

 L1653: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DFmode))
    {
      operands[1] = x4;
      goto L1654;
    }
  goto ret0;

 L1654: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DFmode))
    {
      operands[2] = x4;
      goto L1655;
    }
  goto ret0;

 L1655: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[3] = x3;
      return 341;
    }
  goto ret0;

 L1685: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DFmode
      && GET_CODE (x4) == MULT)
    goto L1686;
  goto ret0;

 L1686: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, DFmode))
    {
      operands[1] = x5;
      goto L1687;
    }
  goto ret0;

 L1687: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (register_operand (x5, DFmode))
    {
      operands[2] = x5;
      goto L1688;
    }
  goto ret0;

 L1688: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[3] = x3;
      return 344;
    }
  goto ret0;

 L1663: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DFmode
      && GET_CODE (x3) == MULT)
    goto L1664;
  goto ret0;

 L1664: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DFmode))
    {
      operands[1] = x4;
      goto L1665;
    }
  goto ret0;

 L1665: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DFmode))
    {
      operands[2] = x4;
      goto L1666;
    }
  goto ret0;

 L1666: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[3] = x3;
      return 342;
    }
  goto ret0;

 L2536: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, CCmode))
    {
      operands[0] = x2;
      goto L1838;
    }
  goto ret0;

 L1838: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == CCmode)
    goto L2548;
  goto ret0;

 L2548: ATTRIBUTE_UNUSED_LABEL
  if (normal_comparison_operator (x2, CCmode))
    {
      operands[1] = x2;
      goto L1839;
    }
  if (adjusted_comparison_operator (x2, CCmode))
    {
      operands[1] = x2;
      goto L1848;
    }
 L2550: ATTRIBUTE_UNUSED_LABEL
  if (comparison_operator (x2, CCmode))
    {
      operands[1] = x2;
      goto L1875;
    }
  goto ret0;

 L1839: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SImode:
      goto L2551;
    case DImode:
      goto L2552;
    default:
      break;
    }
  goto L2550;

 L2551: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1840;
    }
  goto L2550;

 L1840: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_8bit_operand (x3, SImode))
    {
      operands[3] = x3;
      return 360;
    }
  goto L2550;

 L2552: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1858;
    }
  goto L2550;

 L1858: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_8bit_operand (x3, DImode))
    {
      operands[3] = x3;
      return 362;
    }
  goto L2550;

 L1848: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SImode:
      goto L2553;
    case DImode:
      goto L2554;
    default:
      break;
    }
  goto L2550;

 L2553: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1849;
    }
  goto L2550;

 L1849: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_8bit_adjusted_operand (x3, SImode))
    {
      operands[3] = x3;
      return 361;
    }
  goto L2550;

 L2554: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1867;
    }
  goto L2550;

 L1867: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_8bit_adjusted_operand (x3, DImode))
    {
      operands[3] = x3;
      return 363;
    }
  goto L2550;

 L1875: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SFmode:
      goto L2555;
    case DFmode:
      goto L2556;
    default:
      break;
    }
  goto ret0;

 L2555: ATTRIBUTE_UNUSED_LABEL
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L1876;
    }
  goto ret0;

 L1876: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[3] = x3;
      return 364;
    }
  goto ret0;

 L2556: ATTRIBUTE_UNUSED_LABEL
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L1885;
    }
  goto ret0;

 L1885: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[3] = x3;
      return 365;
    }
  goto ret0;

 L2530: ATTRIBUTE_UNUSED_LABEL
  switch (XVECLEN (x1, 0))
    {
    case 2:
      goto L2015;
    case 3:
      goto L2028;
    default:
      break;
    }
  goto ret0;

 L2015: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == SET)
    goto L2098;
  goto ret0;

 L2098: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L2099;
    }
 L2016: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L2017;
    }
  goto ret0;

 L2099: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == PLUS)
    goto L2100;
  x3 = XEXP (x2, 0);
  goto L2016;

 L2100: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L2101;
    }
  x3 = XEXP (x2, 0);
  goto L2016;

 L2101: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (reg_or_22bit_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L2102;
    }
  x3 = XEXP (x2, 0);
  goto L2016;

 L2102: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == SET)
    goto L2103;
  x2 = XVECEXP (x1, 0, 0);
  x3 = XEXP (x2, 0);
  goto L2016;

 L2103: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[3] = x3;
      goto L2104;
    }
  x2 = XVECEXP (x1, 0, 0);
  x3 = XEXP (x2, 0);
  goto L2016;

 L2104: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[3]))
    {
      return 385;
    }
  x2 = XVECEXP (x1, 0, 0);
  x3 = XEXP (x2, 0);
  goto L2016;

 L2017: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CALL)
    goto L2018;
  goto ret0;

 L2018: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == MEM)
    goto L2019;
  goto ret0;

 L2019: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (call_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L2020;
    }
  goto ret0;

 L2020: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  operands[2] = x4;
  goto L2021;

 L2021: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == CLOBBER)
    goto L2022;
  goto ret0;

 L2022: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[3] = x3;
      return 377;
    }
  goto ret0;

 L2028: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == SET)
    goto L2029;
  goto ret0;

 L2029: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L2030;
    }
  goto ret0;

 L2030: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CALL)
    goto L2031;
  goto ret0;

 L2031: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == MEM)
    goto L2032;
  goto ret0;

 L2032: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (call_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L2033;
    }
  goto ret0;

 L2033: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  operands[2] = x4;
  goto L2034;

 L2034: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == USE)
    goto L2035;
  goto ret0;

 L2035: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == REG
      && XINT (x3, 0) == 1)
    goto L2036;
  goto ret0;

 L2036: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 2);
  if (GET_CODE (x2) == CLOBBER)
    goto L2037;
  goto ret0;

 L2037: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[3] = x3;
      return 378;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_5 PARAMS ((rtx, rtx, int *));
static int
recog_5 (x0, insn, pnum_clobbers)
     register rtx x0;
     rtx insn ATTRIBUTE_UNUSED;
     int *pnum_clobbers ATTRIBUTE_UNUSED;
{
  register rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  register rtx x1 ATTRIBUTE_UNUSED;
  register rtx x2 ATTRIBUTE_UNUSED;
  register rtx x3 ATTRIBUTE_UNUSED;
  register rtx x4 ATTRIBUTE_UNUSED;
  register rtx x5 ATTRIBUTE_UNUSED;
  register rtx x6 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;

  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DImode:
      goto L2561;
    case SImode:
      goto L2562;
    case SFmode:
      goto L2563;
    case DFmode:
      goto L2564;
    case CCmode:
      goto L2565;
    default:
      break;
    }
  goto ret0;

 L2561: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L1275;
    }
  goto ret0;

 L1275: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L2566;
  goto ret0;

 L2566: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case IOR:
      goto L1276;
    case PLUS:
      goto L1345;
    case MINUS:
      goto L1365;
    case MULT:
      goto L1384;
    case TRUNCATE:
      goto L1424;
    case ASHIFTRT:
      goto L1705;
    case LSHIFTRT:
      goto L1715;
    case ASHIFT:
      goto L1725;
    case ROTATERT:
      goto L1777;
    case AND:
      goto L1794;
    case XOR:
      goto L1822;
    case UNSPEC:
      goto L2579;
    default:
     break;
   }
  goto ret0;

 L1276: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L2581;
  goto ret0;

 L2581: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == ZERO_EXTEND)
    goto L1277;
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1814;
    }
  goto ret0;

 L1277: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L1278;
    }
  goto ret0;

 L1278: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == ASHIFT)
    goto L1279;
  goto ret0;

 L1279: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == ZERO_EXTEND)
    goto L1280;
  goto ret0;

 L1280: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SImode))
    {
      operands[2] = x5;
      goto L1281;
    }
  goto ret0;

 L1281: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 32)
    {
      return 303;
    }
  goto ret0;

 L1814: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_8bit_operand (x3, DImode))
    {
      operands[2] = x3;
      return 357;
    }
  goto ret0;

 L1345: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L2584;
  goto ret0;

 L2584: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x3))
    {
    case PLUS:
      goto L1355;
    case NOT:
      goto L1375;
    case SUBREG:
    case REG:
      goto L2583;
    default:
      goto ret0;
   }
 L2583: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1346;
    }
  goto ret0;

 L1355: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L1356;
    }
  goto ret0;

 L1356: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L1357;
    }
  goto ret0;

 L1357: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 1)
    {
      return 311;
    }
  goto ret0;

 L1375: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L1376;
    }
  goto ret0;

 L1376: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      return 313;
    }
  goto ret0;

 L1346: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_22bit_operand (x3, DImode))
    {
      operands[2] = x3;
      return 310;
    }
  goto ret0;

 L1365: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_8bit_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1366;
    }
  goto ret0;

 L1366: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      return 312;
    }
  goto ret0;

 L1384: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1385;
    }
  goto ret0;

 L1385: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      return 314;
    }
  goto ret0;

 L1424: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == TImode
      && GET_CODE (x3) == LSHIFTRT)
    goto L1425;
  goto ret0;

 L1425: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == TImode
      && GET_CODE (x4) == MULT)
    goto L1426;
  goto ret0;

 L1426: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (GET_MODE (x5) == TImode)
    goto L2586;
  goto ret0;

 L2586: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x5))
    {
    case SIGN_EXTEND:
      goto L1427;
    case ZERO_EXTEND:
      goto L1441;
    default:
     break;
   }
  goto ret0;

 L1427: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (register_operand (x6, DImode))
    {
      operands[1] = x6;
      goto L1428;
    }
  goto ret0;

 L1428: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (GET_MODE (x5) == TImode
      && GET_CODE (x5) == SIGN_EXTEND)
    goto L1429;
  goto ret0;

 L1429: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (register_operand (x6, DImode))
    {
      operands[2] = x6;
      goto L1430;
    }
  goto ret0;

 L1430: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 64)
    {
      return 317;
    }
  goto ret0;

 L1441: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (register_operand (x6, DImode))
    {
      operands[1] = x6;
      goto L1442;
    }
  goto ret0;

 L1442: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (GET_MODE (x5) == TImode
      && GET_CODE (x5) == ZERO_EXTEND)
    goto L1443;
  goto ret0;

 L1443: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (register_operand (x6, DImode))
    {
      operands[2] = x6;
      goto L1444;
    }
  goto ret0;

 L1444: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 64)
    {
      return 318;
    }
  goto ret0;

 L1705: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L2588;
  goto ret0;

 L2588: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == SIGN_EXTEND)
    goto L1706;
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1760;
    }
  goto ret0;

 L1706: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L1707;
    }
  goto ret0;

 L1707: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (shift_32bit_count_operand (x3, DImode))
    {
      operands[2] = x3;
      return 346;
    }
  goto ret0;

 L1760: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_6bit_operand (x3, DImode))
    {
      operands[2] = x3;
      return 351;
    }
  goto ret0;

 L1715: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L2590;
  goto ret0;

 L2590: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == ZERO_EXTEND)
    goto L1716;
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1769;
    }
  goto ret0;

 L1716: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L1717;
    }
  goto ret0;

 L1717: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (shift_32bit_count_operand (x3, DImode))
    {
      operands[2] = x3;
      return 347;
    }
  goto ret0;

 L1769: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_6bit_operand (x3, DImode))
    {
      operands[2] = x3;
      return 352;
    }
  goto ret0;

 L1725: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1726;
    }
  goto ret0;

 L1726: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_6bit_operand (x3, DImode))
    {
      operands[2] = x3;
      return 348;
    }
  goto ret0;

 L1777: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1778;
    }
  goto ret0;

 L1778: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (shift_count_operand (x3, DImode))
    {
      operands[2] = x3;
      return 353;
    }
  goto ret0;

 L1794: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L2593;
  goto ret0;

 L2593: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == NOT)
    goto L1804;
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1795;
    }
  goto ret0;

 L1804: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L1805;
    }
  goto ret0;

 L1805: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_8bit_operand (x3, DImode))
    {
      operands[2] = x3;
      return 356;
    }
  goto ret0;

 L1795: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_8bit_operand (x3, DImode))
    {
      operands[2] = x3;
      return 355;
    }
  goto ret0;

 L1822: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1823;
    }
  goto ret0;

 L1823: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_8bit_operand (x3, DImode))
    {
      operands[2] = x3;
      return 358;
    }
  goto ret0;

 L2579: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x2, 0) == 2)
    goto L2594;
  goto ret0;

 L2594: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x2, 1))
    {
    case 19:
      goto L2250;
    case 13:
      goto L2268;
    default:
      break;
    }
  goto ret0;

 L2250: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (memory_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2251;
    }
  goto ret0;

 L2251: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 1);
  if (fetchadd_operand (x3, DImode))
    {
      operands[2] = x3;
      return 403;
    }
  goto ret0;

 L2268: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (memory_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2269;
    }
  goto ret0;

 L2269: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      return 405;
    }
  goto ret0;

 L2562: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L1288;
    }
  goto ret0;

 L1288: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode)
    goto L2596;
  goto ret0;

 L2596: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L1289;
    case MINUS:
      goto L1309;
    case MULT:
      goto L1328;
    case ASHIFT:
      goto L1696;
    case UNSPEC:
      goto L2602;
    default:
     break;
   }
  goto ret0;

 L1289: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode)
    goto L2605;
  goto ret0;

 L2605: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x3))
    {
    case PLUS:
      goto L1299;
    case NOT:
      goto L1319;
    case SUBREG:
    case REG:
      goto L2604;
    default:
      goto ret0;
   }
 L2604: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1290;
    }
  goto ret0;

 L1299: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L1300;
    }
  goto ret0;

 L1300: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L1301;
    }
  goto ret0;

 L1301: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 1)
    {
      return 305;
    }
  goto ret0;

 L1319: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L1320;
    }
  goto ret0;

 L1320: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      return 307;
    }
  goto ret0;

 L1290: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_22bit_operand (x3, SImode))
    {
      operands[2] = x3;
      return 304;
    }
  goto ret0;

 L1309: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_8bit_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1310;
    }
  goto ret0;

 L1310: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      return 306;
    }
  goto ret0;

 L1328: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1329;
    }
  goto ret0;

 L1329: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (nonmemory_operand (x3, SImode))
    {
      operands[2] = x3;
      return 308;
    }
  goto ret0;

 L1696: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1697;
    }
  goto ret0;

 L1697: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (shift_32bit_count_operand (x3, SImode))
    {
      operands[2] = x3;
      return 345;
    }
  goto ret0;

 L2602: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x2, 0) == 2)
    goto L2607;
  goto ret0;

 L2607: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x2, 1))
    {
    case 19:
      goto L2241;
    case 13:
      goto L2259;
    default:
      break;
    }
  goto ret0;

 L2241: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (memory_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2242;
    }
  goto ret0;

 L2242: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 1);
  if (fetchadd_operand (x3, SImode))
    {
      operands[2] = x3;
      return 402;
    }
  goto ret0;

 L2259: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (memory_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2260;
    }
  goto ret0;

 L2260: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      return 404;
    }
  goto ret0;

 L2563: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[0] = x2;
      goto L1467;
    }
  goto ret0;

 L1467: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SFmode)
    goto L2609;
  goto ret0;

 L2609: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L1468;
    case MINUS:
      goto L1477;
    case MULT:
      goto L1486;
    case SMIN:
      goto L1520;
    case SMAX:
      goto L1529;
    case NEG:
      goto L1560;
    default:
     break;
   }
  goto ret0;

 L1468: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L1469;
    }
  goto ret0;

 L1469: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[2] = x3;
      return 321;
    }
  goto ret0;

 L1477: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L1478;
    }
  goto ret0;

 L1478: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[2] = x3;
      return 322;
    }
  goto ret0;

 L1486: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L1487;
    }
  goto ret0;

 L1487: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      return 323;
    }
  goto ret0;

 L1520: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L1521;
    }
  goto ret0;

 L1521: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[2] = x3;
      return 327;
    }
  goto ret0;

 L1529: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L1530;
    }
  goto ret0;

 L1530: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, SFmode))
    {
      operands[2] = x3;
      return 328;
    }
  goto ret0;

 L1560: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SFmode
      && GET_CODE (x3) == MULT)
    goto L1561;
  goto ret0;

 L1561: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SFmode))
    {
      operands[1] = x4;
      goto L1562;
    }
  goto ret0;

 L1562: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SFmode))
    {
      operands[2] = x4;
      return 331;
    }
  goto ret0;

 L2564: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[0] = x2;
      goto L1581;
    }
  goto ret0;

 L1581: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DFmode)
    goto L2615;
  goto ret0;

 L2615: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L1582;
    case MINUS:
      goto L1591;
    case MULT:
      goto L1600;
    case SMIN:
      goto L1634;
    case SMAX:
      goto L1643;
    case NEG:
      goto L1674;
    default:
     break;
   }
  goto ret0;

 L1582: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L1583;
    }
  goto ret0;

 L1583: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[2] = x3;
      return 333;
    }
  goto ret0;

 L1591: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L1592;
    }
  goto ret0;

 L1592: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[2] = x3;
      return 334;
    }
  goto ret0;

 L1600: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L1601;
    }
  goto ret0;

 L1601: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      return 335;
    }
  goto ret0;

 L1634: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L1635;
    }
  goto ret0;

 L1635: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[2] = x3;
      return 339;
    }
  goto ret0;

 L1643: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L1644;
    }
  goto ret0;

 L1644: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_fp01_operand (x3, DFmode))
    {
      operands[2] = x3;
      return 340;
    }
  goto ret0;

 L1674: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DFmode
      && GET_CODE (x3) == MULT)
    goto L1675;
  goto ret0;

 L1675: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DFmode))
    {
      operands[1] = x4;
      goto L1676;
    }
  goto ret0;

 L1676: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DFmode))
    {
      operands[2] = x4;
      return 343;
    }
  goto ret0;

 L2565: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, CCmode))
    {
      operands[0] = x2;
      goto L1892;
    }
  goto ret0;

 L1892: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == CCmode)
    goto L2621;
  goto ret0;

 L2621: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case EQ:
      goto L1893;
    case NE:
      goto L1905;
    default:
     break;
   }
  goto ret0;

 L1893: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == ZERO_EXTRACT)
    goto L1894;
  goto ret0;

 L1894: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L1895;
    }
  goto ret0;

 L1895: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 1)
    goto L1896;
  goto ret0;

 L1896: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 2);
  if (immediate_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L1897;
    }
  goto ret0;

 L1897: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    {
      return 366;
    }
  goto ret0;

 L1905: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == ZERO_EXTRACT)
    goto L1906;
  goto ret0;

 L1906: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L1907;
    }
  goto ret0;

 L1907: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 1)
    goto L1908;
  goto ret0;

 L1908: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 2);
  if (immediate_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L1909;
    }
  goto ret0;

 L1909: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    {
      return 367;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_6 PARAMS ((rtx, rtx, int *));
static int
recog_6 (x0, insn, pnum_clobbers)
     register rtx x0;
     rtx insn ATTRIBUTE_UNUSED;
     int *pnum_clobbers ATTRIBUTE_UNUSED;
{
  register rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  register rtx x1 ATTRIBUTE_UNUSED;
  register rtx x2 ATTRIBUTE_UNUSED;
  register rtx x3 ATTRIBUTE_UNUSED;
  register rtx x4 ATTRIBUTE_UNUSED;
  register rtx x5 ATTRIBUTE_UNUSED;
  register rtx x6 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;

  x1 = XEXP (x0, 0);
  if (predicate_operator (x1, VOIDmode))
    {
      operands[2] = x1;
      goto L977;
    }
 L1204: ATTRIBUTE_UNUSED_LABEL
  if (predicate_operator (x1, VOIDmode))
    {
      operands[4] = x1;
      goto L1205;
    }
 L1235: ATTRIBUTE_UNUSED_LABEL
  if (predicate_operator (x1, VOIDmode))
    {
      operands[3] = x1;
      goto L1236;
    }
 L1260: ATTRIBUTE_UNUSED_LABEL
  if (predicate_operator (x1, VOIDmode))
    {
      operands[2] = x1;
      goto L1261;
    }
 L1387: ATTRIBUTE_UNUSED_LABEL
  if (predicate_operator (x1, VOIDmode))
    {
      operands[5] = x1;
      goto L1388;
    }
 L1401: ATTRIBUTE_UNUSED_LABEL
  if (predicate_operator (x1, VOIDmode))
    {
      operands[6] = x1;
      goto L1402;
    }
 L2054: ATTRIBUTE_UNUSED_LABEL
  if (predicate_operator (x1, VOIDmode))
    {
      operands[1] = x1;
      goto L2055;
    }
 L2062: ATTRIBUTE_UNUSED_LABEL
  if (predicate_operator (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L2063;
    }
 L2282: ATTRIBUTE_UNUSED_LABEL
  if (predicate_operator (x1, VOIDmode))
    {
      operands[3] = x1;
      goto L2283;
    }
  goto ret0;

 L977: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[3] = x2;
      goto L978;
    }
  goto L1204;

 L978: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L979;
  goto L1204;

 L979: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_CODE (x1) == SET)
    goto L980;
  x1 = XEXP (x0, 0);
  goto L1204;

 L980: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case QImode:
      goto L2492;
    case HImode:
      goto L2493;
    case SImode:
      goto L2494;
    case DImode:
      goto L2503;
    case SFmode:
      goto L2497;
    case DFmode:
      goto L2498;
    case XFmode:
      goto L2499;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2492: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, QImode))
    {
      operands[0] = x2;
      goto L981;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L981: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (move_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L982;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L982: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], QImode)
   || ! memory_operand (operands[1], QImode)))
    {
      return 269;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2493: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, HImode))
    {
      operands[0] = x2;
      goto L989;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L989: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (move_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L990;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L990: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], HImode)
   || !memory_operand (operands[1], HImode)))
    {
      return 270;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2494: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L997;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L997: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (move_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L998;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L998: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], SImode)
   || ! memory_operand (operands[1], SImode)))
    {
      return 271;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2503: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == ZERO_EXTRACT)
    goto L1253;
  if (nonimmediate_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L1005;
    }
 L2496: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L1013;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1253: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L1254;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1254: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 32)
    goto L1255;
  x1 = XEXP (x0, 0);
  goto L1204;

 L1255: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L1256;
  x1 = XEXP (x0, 0);
  goto L1204;

 L1256: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == LSHIFTRT)
    goto L1257;
  x1 = XEXP (x0, 0);
  goto L1204;

 L1257: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1258;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1258: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 32)
    {
      return 301;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1005: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (move_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1006;
    }
  x2 = XEXP (x1, 0);
  goto L2496;

 L1006: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], DImode)
   || ! memory_operand (operands[1], DImode)))
    {
      return 272;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2496;

 L1013: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L2504;
  x1 = XEXP (x0, 0);
  goto L1204;

 L2504: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L1014;
    case MINUS:
      goto L1032;
    case SIGN_EXTEND:
      goto L1074;
    case ZERO_EXTEND:
      goto L1098;
    case FIX:
      goto L1162;
    case UNSIGNED_FIX:
      goto L1194;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1014: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == REG
      && XINT (x3, 0) == 1)
    goto L1015;
  x1 = XEXP (x0, 0);
  goto L1204;

 L1015: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == DImode)
    goto L2510;
  x1 = XEXP (x0, 0);
  goto L1204;

 L2510: ATTRIBUTE_UNUSED_LABEL
  if (function_operand (x3, DImode))
    {
      operands[1] = x3;
      return 273;
    }
 L2511: ATTRIBUTE_UNUSED_LABEL
  if (sdata_symbolic_operand (x3, DImode))
    {
      operands[1] = x3;
      return 274;
    }
 L2512: ATTRIBUTE_UNUSED_LABEL
  if (symbolic_operand (x3, DImode))
    {
      operands[1] = x3;
      return 276;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1032: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (symbolic_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1033;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1033: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == REG
      && XINT (x3, 0) == 1)
    {
      return 275;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1074: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case QImode:
      goto L2513;
    case HImode:
      goto L2514;
    case SImode:
      goto L2515;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2513: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, QImode))
    {
      operands[1] = x3;
      return 280;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2514: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, HImode))
    {
      operands[1] = x3;
      return 281;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2515: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      return 282;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1098: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case QImode:
      goto L2516;
    case HImode:
      goto L2517;
    case SImode:
      goto L2518;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2516: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x3, QImode))
    {
      operands[1] = x3;
      return 283;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2517: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x3, HImode))
    {
      operands[1] = x3;
      return 284;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2518: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x3, SImode))
    {
      operands[1] = x3;
      return 285;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1162: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SFmode:
      goto L2519;
    case DFmode:
      goto L2520;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2519: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      return 291;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2520: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      return 292;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1194: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SFmode:
      goto L2521;
    case DFmode:
      goto L2522;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2521: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      return 295;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2522: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      return 296;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2497: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, SFmode))
    {
      operands[0] = x2;
      goto L1049;
    }
 L2501: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[0] = x2;
      goto L1129;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1049: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (general_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1050;
    }
  x2 = XEXP (x1, 0);
  goto L2501;

 L1050: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], SFmode)
   || ! memory_operand (operands[1], SFmode)))
    {
      return 277;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2501;

 L1129: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SFmode)
    goto L2523;
  x1 = XEXP (x0, 0);
  goto L1204;

 L2523: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case FLOAT_TRUNCATE:
      goto L1130;
    case UNSIGNED_FLOAT:
      goto L1178;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1130: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case DFmode:
      goto L2525;
    case XFmode:
      goto L2526;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2525: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      return 287;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2526: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, XFmode))
    {
      operands[1] = x3;
      return 288;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1178: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      return 293;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2498: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, DFmode))
    {
      operands[0] = x2;
      goto L1057;
    }
 L2500: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[0] = x2;
      goto L1121;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1057: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (general_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1058;
    }
  x2 = XEXP (x1, 0);
  goto L2500;

 L1058: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], DFmode)
   || ! memory_operand (operands[1], DFmode)))
    {
      return 278;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2500;

 L1121: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DFmode)
    goto L2527;
  x1 = XEXP (x0, 0);
  goto L1204;

 L2527: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case FLOAT_EXTEND:
      goto L1122;
    case FLOAT_TRUNCATE:
      goto L1146;
    case UNSIGNED_FLOAT:
      goto L1186;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1122: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      return 286;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1146: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, XFmode))
    {
      operands[1] = x3;
      return 289;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1186: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      return 294;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L2499: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, XFmode))
    {
      operands[0] = x2;
      goto L1065;
    }
 L2502: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, XFmode))
    {
      operands[0] = x2;
      goto L1153;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1065: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (general_operand (x2, XFmode))
    {
      operands[1] = x2;
      goto L1066;
    }
  x2 = XEXP (x1, 0);
  goto L2502;

 L1066: ATTRIBUTE_UNUSED_LABEL
  if ((! memory_operand (operands[0], XFmode)
   || ! memory_operand (operands[1], XFmode)))
    {
      return 279;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2502;

 L1153: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == XFmode
      && GET_CODE (x2) == FLOAT)
    goto L1154;
  x1 = XEXP (x0, 0);
  goto L1204;

 L1154: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      return 290;
    }
  x1 = XEXP (x0, 0);
  goto L1204;

 L1205: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[5] = x2;
      goto L1206;
    }
  goto L1235;

 L1206: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L1207;
  goto L1235;

 L1207: ATTRIBUTE_UNUSED_LABEL
  tem = recog_4 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  x1 = XEXP (x0, 0);
  goto L1235;

 L1236: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[4] = x2;
      goto L1237;
    }
  goto L1260;

 L1237: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L1238;
  goto L1260;

 L1238: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  switch (GET_CODE (x1))
    {
    case PARALLEL:
      goto L2557;
    case SET:
      goto L1274;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1260;

 L2557: ATTRIBUTE_UNUSED_LABEL
  switch (XVECLEN (x1, 0))
    {
    case 2:
      goto L1239;
    case 3:
      goto L2002;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L1239: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  switch (GET_CODE (x2))
    {
    case SET:
      goto L1240;
    case CALL:
      goto L1992;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1260;

 L1240: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case DImode:
      goto L2559;
    case SImode:
      goto L2560;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L2559: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == ZERO_EXTRACT)
    goto L1241;
  x1 = XEXP (x0, 0);
  goto L1260;

 L1241: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[0] = x4;
      goto L1242;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L1242: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 32)
    goto L1243;
  x1 = XEXP (x0, 0);
  goto L1260;

 L1243: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 2);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 0)
    goto L1244;
  x1 = XEXP (x0, 0);
  goto L1260;

 L1244: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1245;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L1245: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == CLOBBER)
    goto L1246;
  x1 = XEXP (x0, 0);
  goto L1260;

 L1246: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      return 300;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L2560: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L2277;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L2277: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (memory_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2278;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L2278: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == SET)
    goto L2279;
  x1 = XEXP (x0, 0);
  goto L1260;

 L2279: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L2280;
  x1 = XEXP (x0, 0);
  goto L1260;

 L2280: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      return 406;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L1992: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == MEM)
    goto L1993;
  x1 = XEXP (x0, 0);
  goto L1260;

 L1993: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (call_operand (x4, DImode))
    {
      operands[0] = x4;
      goto L1994;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L1994: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[1] = x3;
  goto L1995;

 L1995: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == CLOBBER)
    goto L1996;
  x1 = XEXP (x0, 0);
  goto L1260;

 L1996: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      return 375;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L2002: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CALL)
    goto L2003;
  x1 = XEXP (x0, 0);
  goto L1260;

 L2003: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == MEM)
    goto L2004;
  x1 = XEXP (x0, 0);
  goto L1260;

 L2004: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (call_operand (x4, DImode))
    {
      operands[0] = x4;
      goto L2005;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L2005: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[1] = x3;
  goto L2006;

 L2006: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == USE)
    goto L2007;
  x1 = XEXP (x0, 0);
  goto L1260;

 L2007: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == REG
      && XINT (x3, 0) == 1)
    goto L2008;
  x1 = XEXP (x0, 0);
  goto L1260;

 L2008: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 2);
  if (GET_CODE (x2) == CLOBBER)
    goto L2009;
  x1 = XEXP (x0, 0);
  goto L1260;

 L2009: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      return 376;
    }
  x1 = XEXP (x0, 0);
  goto L1260;

 L1274: ATTRIBUTE_UNUSED_LABEL
  tem = recog_5 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  x1 = XEXP (x0, 0);
  goto L1260;

 L1261: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[3] = x2;
      goto L1262;
    }
  goto L1387;

 L1262: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L1263;
  goto L1387;

 L1263: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  switch (GET_CODE (x1))
    {
    case SET:
      goto L1264;
    case PARALLEL:
      goto L2623;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1264: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DImode:
      goto L2624;
    case SImode:
      goto L2625;
    case SFmode:
      goto L2627;
    case DFmode:
      goto L2628;
    case CCmode:
      goto L2629;
    case XFmode:
      goto L2631;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2624: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == ZERO_EXTRACT)
    goto L1265;
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L1451;
    }
 L2630: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L2122;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1265: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L1266;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1266: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 32)
    goto L1267;
  x1 = XEXP (x0, 0);
  goto L1387;

 L1267: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 32)
    goto L1268;
  x1 = XEXP (x0, 0);
  goto L1387;

 L1268: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_0_operand (x2, DImode))
    {
      operands[1] = x2;
      return 302;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1451: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L2633;
  x2 = XEXP (x1, 0);
  goto L2630;

 L2633: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case NEG:
      goto L1452;
    case UNSPEC:
      goto L2639;
    case NOT:
      goto L1831;
    case NE:
      goto L1925;
    case EQ:
      goto L1934;
    default:
     break;
   }
  x2 = XEXP (x1, 0);
  goto L2630;

 L1452: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      return 319;
    }
  x2 = XEXP (x1, 0);
  goto L2630;

 L2639: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x2, 0) == 1)
    goto L2641;
  x2 = XEXP (x1, 0);
  goto L2630;

 L2641: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x2, 1))
    {
    case 8:
      goto L1460;
    case 2:
      goto L2131;
    default:
      break;
    }
  x2 = XEXP (x1, 0);
  goto L2630;

 L1460: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      return 320;
    }
  x2 = XEXP (x1, 0);
  goto L2630;

 L2131: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (memory_operand (x3, DImode))
    {
      operands[1] = x3;
      return 388;
    }
  x2 = XEXP (x1, 0);
  goto L2630;

 L1831: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      return 359;
    }
  x2 = XEXP (x1, 0);
  goto L2630;

 L1925: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[1] = x3;
      goto L1926;
    }
  x2 = XEXP (x1, 0);
  goto L2630;

 L1926: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    {
      return 369;
    }
  x2 = XEXP (x1, 0);
  goto L2630;

 L1934: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[1] = x3;
      goto L1935;
    }
  x2 = XEXP (x1, 0);
  goto L2630;

 L1935: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    {
      return 370;
    }
  x2 = XEXP (x1, 0);
  goto L2630;

 L2122: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == UNSPEC
      && XVECLEN (x2, 0) == 1
      && XINT (x2, 1) == 1)
    goto L2123;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2123: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      return 387;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2625: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L1336;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1336: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode)
    goto L2643;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2643: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case NEG:
      goto L1337;
    case NOT:
      goto L1786;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1337: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      return 309;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1786: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      return 354;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2627: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[0] = x2;
      goto L1494;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1494: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SFmode)
    goto L2645;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2645: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case ABS:
      goto L1495;
    case NEG:
      goto L1503;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1495: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      return 324;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1503: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SFmode)
    goto L2648;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2648: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == ABS)
    goto L1512;
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      return 325;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1512: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SFmode))
    {
      operands[1] = x4;
      return 326;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2628: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[0] = x2;
      goto L1608;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1608: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DFmode)
    goto L2649;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2649: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case ABS:
      goto L1609;
    case NEG:
      goto L1617;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1609: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      return 336;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1617: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DFmode)
    goto L2652;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2652: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == ABS)
    goto L1626;
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      return 337;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1626: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DFmode))
    {
      operands[1] = x4;
      return 338;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2629: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, CCmode))
    {
      operands[0] = x2;
      goto L1916;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1916: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (move_operand (x2, CCmode))
    {
      operands[1] = x2;
      goto L1917;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L1917: ATTRIBUTE_UNUSED_LABEL
  if ((reload_in_progress || reload_completed))
    {
      return 368;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2631: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, XFmode))
    {
      operands[0] = x2;
      goto L2138;
    }
 L2632: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, XFmode))
    {
      operands[0] = x2;
      goto L2146;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2138: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == XFmode
      && GET_CODE (x2) == UNSPEC
      && XVECLEN (x2, 0) == 1
      && XINT (x2, 1) == 3)
    goto L2139;
  x2 = XEXP (x1, 0);
  goto L2632;

 L2139: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (register_operand (x3, XFmode))
    {
      operands[1] = x3;
      return 389;
    }
  x2 = XEXP (x1, 0);
  goto L2632;

 L2146: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == XFmode
      && GET_CODE (x2) == UNSPEC
      && XVECLEN (x2, 0) == 1
      && XINT (x2, 1) == 4)
    goto L2147;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2147: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (memory_operand (x3, XFmode))
    {
      operands[1] = x3;
      return 390;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2623: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 2)
    goto L2086;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2086: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == SET)
    goto L2111;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2111: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L2112;
    }
  if (GET_CODE (x3) == PC)
    goto L2088;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2112: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2113;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2113: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == SET)
    goto L2114;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2114: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L2115;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2115: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[1]))
    {
      return 386;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2088: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L2089;
    }
  x1 = XEXP (x0, 0);
  goto L1387;

 L2089: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == USE)
    goto L2090;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2090: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_CODE (x3) == LABEL_REF)
    goto L2091;
  x1 = XEXP (x0, 0);
  goto L1387;

 L2091: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  operands[1] = x4;
  return 384;

 L1388: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[6] = x2;
      goto L1389;
    }
  goto L1401;

 L1389: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L1390;
  goto L1401;

 L1390: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  switch (GET_CODE (x1))
    {
    case PARALLEL:
      goto L2653;
    case SET:
      goto L1743;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1401;

 L2653: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 2)
    goto L1391;
 L2654: ATTRIBUTE_UNUSED_LABEL
  if (call_multiple_values_operation (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L2043;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1391: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == SET)
    goto L1392;
  goto L2654;

 L1392: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L1393;
    }
  goto L2654;

 L1393: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == PLUS)
    goto L1394;
  goto L2654;

 L1394: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == MULT)
    goto L1395;
  goto L2654;

 L1395: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L1396;
    }
  goto L2654;

 L1396: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (register_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L1397;
    }
  goto L2654;

 L1397: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DImode))
    {
      operands[3] = x4;
      goto L1398;
    }
  goto L2654;

 L1398: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == CLOBBER)
    goto L1399;
  goto L2654;

 L1399: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (scratch_operand (x3, DImode))
    {
      operands[4] = x3;
      return 315;
    }
  goto L2654;

 L2043: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == SET)
    goto L2044;
  x1 = XEXP (x0, 0);
  goto L1401;

 L2044: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, VOIDmode))
    {
      operands[1] = x3;
      goto L2045;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L2045: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CALL)
    goto L2046;
  x1 = XEXP (x0, 0);
  goto L1401;

 L2046: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == MEM)
    goto L2047;
  x1 = XEXP (x0, 0);
  goto L1401;

 L2047: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (call_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L2048;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L2048: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  operands[3] = x4;
  goto L2049;

 L2049: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == USE)
    goto L2050;
  x1 = XEXP (x0, 0);
  goto L1401;

 L2050: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == REG
      && XINT (x3, 0) == 1)
    goto L2051;
  x1 = XEXP (x0, 0);
  goto L1401;

 L2051: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 2);
  if (GET_CODE (x2) == CLOBBER)
    goto L2052;
  x1 = XEXP (x0, 0);
  goto L1401;

 L2052: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[4] = x3;
      return 379;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1743: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DImode:
      goto L2655;
    case SImode:
      goto L2656;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L2655: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L1744;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1744: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L2657;
  x1 = XEXP (x0, 0);
  goto L1401;

 L2657: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L1745;
    case IF_THEN_ELSE:
      goto L1943;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1745: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == PLUS)
    goto L1746;
  x1 = XEXP (x0, 0);
  goto L1401;

 L1746: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == MULT)
    goto L1747;
  x1 = XEXP (x0, 0);
  goto L1401;

 L1747: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L1748;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1748: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (shladd_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L1749;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1749: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DImode))
    {
      operands[3] = x4;
      goto L1750;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1750: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (nonmemory_operand (x3, DImode))
    {
      operands[4] = x3;
      goto L1751;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1751: ATTRIBUTE_UNUSED_LABEL
  if ((reload_in_progress))
    {
      return 350;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1943: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (predicate_operator (x3, CCmode))
    {
      operands[4] = x3;
      goto L1944;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1944: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, CCmode))
    {
      operands[1] = x4;
      goto L1945;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1945: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 0)
    goto L1958;
  x1 = XEXP (x0, 0);
  goto L1401;

 L1958: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == NEG)
    goto L1959;
  if (reg_or_22bit_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1947;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1959: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (reg_or_22bit_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L1960;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1960: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (reg_or_22bit_operand (x3, DImode))
    {
      operands[3] = x3;
      return 372;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1947: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (reg_or_22bit_operand (x3, DImode))
    {
      operands[3] = x3;
      return 371;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L2656: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L1967;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1967: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == IF_THEN_ELSE)
    goto L1968;
  x1 = XEXP (x0, 0);
  goto L1401;

 L1968: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (predicate_operator (x3, CCmode))
    {
      operands[4] = x3;
      goto L1969;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1969: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, CCmode))
    {
      operands[1] = x4;
      goto L1970;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1970: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 0)
    goto L1983;
  x1 = XEXP (x0, 0);
  goto L1401;

 L1983: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == NEG)
    goto L1984;
  if (reg_or_22bit_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1972;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1984: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (reg_or_22bit_operand (x4, SImode))
    {
      operands[3] = x4;
      goto L1985;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1985: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (reg_or_22bit_operand (x3, SImode))
    {
      operands[2] = x3;
      return 374;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1972: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (reg_or_22bit_operand (x3, SImode))
    {
      operands[3] = x3;
      return 373;
    }
  x1 = XEXP (x0, 0);
  goto L1401;

 L1402: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[7] = x2;
      goto L1403;
    }
  goto L2054;

 L1403: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L1404;
  goto L2054;

 L1404: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_CODE (x1) == PARALLEL
      && XVECLEN (x1, 0) == 2)
    goto L1405;
  x1 = XEXP (x0, 0);
  goto L2054;

 L1405: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == SET)
    goto L1406;
  x1 = XEXP (x0, 0);
  goto L2054;

 L1406: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L1407;
    }
  x1 = XEXP (x0, 0);
  goto L2054;

 L1407: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == PLUS)
    goto L1408;
  x1 = XEXP (x0, 0);
  goto L2054;

 L1408: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == PLUS)
    goto L1409;
  x1 = XEXP (x0, 0);
  goto L2054;

 L1409: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (GET_MODE (x5) == DImode
      && GET_CODE (x5) == MULT)
    goto L1410;
  x1 = XEXP (x0, 0);
  goto L2054;

 L1410: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (register_operand (x6, DImode))
    {
      operands[1] = x6;
      goto L1411;
    }
  x1 = XEXP (x0, 0);
  goto L2054;

 L1411: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 1);
  if (register_operand (x6, DImode))
    {
      operands[2] = x6;
      goto L1412;
    }
  x1 = XEXP (x0, 0);
  goto L2054;

 L1412: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (register_operand (x5, DImode))
    {
      operands[3] = x5;
      goto L1413;
    }
  x1 = XEXP (x0, 0);
  goto L2054;

 L1413: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (nonmemory_operand (x4, DImode))
    {
      operands[4] = x4;
      goto L1414;
    }
  x1 = XEXP (x0, 0);
  goto L2054;

 L1414: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == CLOBBER)
    goto L1415;
  x1 = XEXP (x0, 0);
  goto L2054;

 L1415: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (scratch_operand (x3, DImode))
    {
      operands[5] = x3;
      goto L1416;
    }
  x1 = XEXP (x0, 0);
  goto L2054;

 L1416: ATTRIBUTE_UNUSED_LABEL
  if ((reload_in_progress))
    {
      return 316;
    }
  x1 = XEXP (x0, 0);
  goto L2054;

 L2055: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[2] = x2;
      goto L2056;
    }
  goto L2062;

 L2056: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L2057;
  goto L2062;

 L2057: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  switch (GET_CODE (x1))
    {
    case PARALLEL:
      goto L2659;
    case SET:
      goto L2153;
    case UNSPEC:
      goto L2660;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2659: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 2)
    goto L2058;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2058: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  switch (GET_CODE (x2))
    {
    case RETURN:
      goto L2059;
    case UNSPEC_VOLATILE:
      goto L2661;
    case UNSPEC:
      goto L2663;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2059: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == USE)
    goto L2060;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2060: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      return 380;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2661: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x2, 0) == 1)
    goto L2665;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2665: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x2, 1))
    {
    case 6:
      goto L2162;
    case 4:
      goto L2171;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2162: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2163;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2163: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == USE)
    goto L2164;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2164: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      return 392;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2171: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2172;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2172: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == USE)
    goto L2173;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2173: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      return 393;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2663: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x2, 0) == 1)
    goto L2667;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2667: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x2, 1))
    {
    case 10:
      goto L2188;
    case 11:
      goto L2216;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2188: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2189;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2189: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == USE)
    goto L2190;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2190: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      return 395;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2216: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2217;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2217: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == USE)
    goto L2218;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2218: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SImode:
      goto L2669;
    case DImode:
      goto L2670;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2669: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      return 399;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2670: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      return 400;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2153: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L2154;
    }
  if (GET_CODE (x2) == PC)
    goto L2080;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2154: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L2671;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2671: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == UNSPEC)
    goto L2674;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2674: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x2, 0) == 1)
    goto L2677;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2677: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x2, 1))
    {
    case 5:
      goto L2155;
    case 9:
      goto L2181;
    case 20:
      goto L2198;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2155: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    {
      return 391;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2181: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    {
      return 394;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2198: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    {
      return 396;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2080: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      return 383;
    }
  if (GET_CODE (x2) == LABEL_REF)
    goto L2073;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2073: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[0] = x3;
  return 382;

 L2660: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 1
      && XINT (x1, 1) == 12)
    goto L2233;
  x1 = XEXP (x0, 0);
  goto L2062;

 L2233: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (memory_operand (x2, BLKmode))
    {
      operands[0] = x2;
      return 401;
    }
  x1 = XEXP (x0, 0);
  goto L2062;

 L2063: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[1] = x2;
      goto L2064;
    }
  goto L2282;

 L2064: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L2065;
  goto L2282;

 L2065: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  switch (GET_CODE (x1))
    {
    case RETURN:
      goto L2680;
    case UNSPEC:
      goto L2681;
    case CONST_INT:
      goto L2682;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L2282;

 L2680: ATTRIBUTE_UNUSED_LABEL
  if ((ia64_direct_return ()))
    {
      return 381;
    }
  x1 = XEXP (x0, 0);
  goto L2282;

 L2681: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 1
      && XINT (x1, 1) == 21)
    goto L2204;
  x1 = XEXP (x0, 0);
  goto L2282;

 L2204: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    {
      return 397;
    }
  x1 = XEXP (x0, 0);
  goto L2282;

 L2682: ATTRIBUTE_UNUSED_LABEL
  if (XWINT (x1, 0) == 0)
    {
      return 398;
    }
  x1 = XEXP (x0, 0);
  goto L2282;

 L2283: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[4] = x2;
      goto L2284;
    }
  goto ret0;

 L2284: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0)
    goto L2285;
  goto ret0;

 L2285: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_CODE (x1) == PARALLEL
      && XVECLEN (x1, 0) == 2)
    goto L2286;
  goto ret0;

 L2286: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_CODE (x2) == SET)
    goto L2287;
  goto ret0;

 L2287: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L2288;
    }
  goto ret0;

 L2288: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (memory_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2289;
    }
  goto ret0;

 L2289: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (GET_CODE (x2) == SET)
    goto L2290;
  goto ret0;

 L2290: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L2291;
  goto ret0;

 L2291: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      return 407;
    }
  goto ret0;
 ret0:
  return -1;
}

int recog PARAMS ((rtx, rtx, int *));
int
recog (x0, insn, pnum_clobbers)
     register rtx x0;
     rtx insn ATTRIBUTE_UNUSED;
     int *pnum_clobbers ATTRIBUTE_UNUSED;
{
  register rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  register rtx x1 ATTRIBUTE_UNUSED;
  register rtx x2 ATTRIBUTE_UNUSED;
  register rtx x3 ATTRIBUTE_UNUSED;
  register rtx x4 ATTRIBUTE_UNUSED;
  register rtx x5 ATTRIBUTE_UNUSED;
  register rtx x6 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;

  switch (GET_CODE (x0))
    {
    case SET:
      goto L1;
    case PARALLEL:
      goto L2292;
    case RETURN:
      goto L2295;
    case UNSPEC:
      goto L2297;
    case CONST_INT:
      goto L2298;
    case UNSPEC_VOLATILE:
      goto L2299;
    case COND_EXEC:
      goto L976;
    default:
     break;
   }
  goto ret0;

 L1: ATTRIBUTE_UNUSED_LABEL
  return recog_2 (x0, insn, pnum_clobbers);

 L2292: ATTRIBUTE_UNUSED_LABEL
  return recog_3 (x0, insn, pnum_clobbers);

 L2295: ATTRIBUTE_UNUSED_LABEL
  if ((ia64_direct_return ()))
    {
      return 114;
    }
  goto ret0;

 L2297: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x0, 0) == 1)
    goto L2487;
  goto ret0;

 L2487: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x0, 1))
    {
    case 21:
      goto L783;
    case 12:
      goto L802;
    default:
      break;
    }
  goto ret0;

 L783: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == CONST_INT
      && XWINT (x1, 0) == 0)
    {
      return 134;
    }
  goto ret0;

 L802: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (memory_operand (x1, BLKmode))
    {
      operands[0] = x1;
      return 141;
    }
  goto ret0;

 L2298: ATTRIBUTE_UNUSED_LABEL
  if (XWINT (x0, 0) == 0)
    {
      return 135;
    }
  goto ret0;

 L2299: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x0, 0) == 1)
    goto L2489;
  goto ret0;

 L2489: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x0, 1))
    {
    case 1:
      goto L786;
    case 2:
      goto L788;
    case 3:
      goto L790;
    default:
      break;
    }
  goto ret0;

 L786: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == CONST_INT
      && XWINT (x1, 0) == 0)
    {
      return 136;
    }
  goto ret0;

 L788: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == CONST_INT
      && XWINT (x1, 0) == 0)
    {
      return 137;
    }
  goto ret0;

 L790: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      return 138;
    }
  goto ret0;

 L976: ATTRIBUTE_UNUSED_LABEL
  return recog_6 (x0, insn, pnum_clobbers);
 ret0:
  return -1;
}

rtx split_insns PARAMS ((rtx, rtx));
rtx
split_insns (x0, insn)
     register rtx x0;
     rtx insn ATTRIBUTE_UNUSED;
{
  register rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  register rtx x1 ATTRIBUTE_UNUSED;
  register rtx x2 ATTRIBUTE_UNUSED;
  register rtx x3 ATTRIBUTE_UNUSED;
  register rtx x4 ATTRIBUTE_UNUSED;
  register rtx x5 ATTRIBUTE_UNUSED;
  register rtx x6 ATTRIBUTE_UNUSED;
  rtx tem ATTRIBUTE_UNUSED;

  switch (GET_CODE (x0))
    {
    case SET:
      goto L838;
    case PARALLEL:
      goto L2683;
    default:
     break;
   }
  goto ret0;

 L838: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 0);
  switch (GET_MODE (x1))
    {
    case DFmode:
      goto L2684;
    case DImode:
      goto L2685;
    case CCmode:
      goto L2686;
    case SImode:
      goto L2687;
    default:
      break;
    }
  goto ret0;

 L2684: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L839;
    }
  goto ret0;

 L839: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DFmode
      && GET_CODE (x1) == FLOAT_EXTEND)
    goto L840;
  goto ret0;

 L840: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L841;
    }
  goto ret0;

 L841: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed))
    {
      return gen_split_158 (operands);
    }
  goto ret0;

 L2685: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L877;
    }
  goto ret0;

 L877: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode)
    goto L2688;
  goto ret0;

 L2688: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L878;
    case NE:
      goto L892;
    case EQ:
      goto L897;
    case IF_THEN_ELSE:
      goto L902;
    default:
     break;
   }
  goto ret0;

 L878: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == PLUS)
    goto L879;
  goto ret0;

 L879: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == MULT)
    goto L880;
  goto ret0;

 L880: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L881;
    }
  goto ret0;

 L881: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (shladd_operand (x4, DImode))
    {
      operands[2] = x4;
      goto L882;
    }
  goto ret0;

 L882: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[3] = x3;
      goto L883;
    }
  goto ret0;

 L883: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_14bit_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L884;
    }
  goto ret0;

 L884: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed))
    {
      return gen_split_182 (operands);
    }
  goto ret0;

 L892: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[1] = x2;
      goto L893;
    }
  goto ret0;

 L893: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0
      && (reload_completed))
    {
      return gen_split_212 (operands);
    }
  goto ret0;

 L897: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, CCmode))
    {
      operands[1] = x2;
      goto L898;
    }
  goto ret0;

 L898: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0
      && (reload_completed))
    {
      return gen_split_213 (operands);
    }
  goto ret0;

 L902: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (predicate_operator (x2, CCmode))
    {
      operands[4] = x2;
      goto L903;
    }
  goto ret0;

 L903: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[1] = x3;
      goto L904;
    }
  goto ret0;

 L904: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L923;
  goto ret0;

 L923: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == NEG)
    goto L924;
  if (reg_or_22bit_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L906;
    }
  goto ret0;

 L924: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_22bit_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L925;
    }
  goto ret0;

 L925: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_22bit_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L926;
    }
  goto ret0;

 L926: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && rtx_equal_p (operands[0], operands[3])))
    {
      return gen_split_216 (operands);
    }
 L936: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed))
    {
      return gen_split_217 (operands);
    }
  goto ret0;

 L906: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_22bit_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L907;
    }
  goto ret0;

 L907: ATTRIBUTE_UNUSED_LABEL
  if (((reload_completed
    && (rtx_equal_p (operands[0], operands[2])
        || rtx_equal_p (operands[0], operands[3])))))
    {
      return gen_split_214 (operands);
    }
 L916: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed))
    {
      return gen_split_215 (operands);
    }
  goto ret0;

 L2686: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, CCmode))
    {
      operands[0] = x1;
      goto L887;
    }
  goto ret0;

 L887: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (register_operand (x1, CCmode))
    {
      operands[1] = x1;
      goto L888;
    }
  goto ret0;

 L888: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed
   && GET_CODE (operands[0]) == REG && GR_REGNO_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && PR_REGNO_P (REGNO (operands[1]))))
    {
      return gen_split_191 (operands);
    }
  goto ret0;

 L2687: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L939;
    }
  goto ret0;

 L939: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode
      && GET_CODE (x1) == IF_THEN_ELSE)
    goto L940;
  goto ret0;

 L940: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (predicate_operator (x2, CCmode))
    {
      operands[4] = x2;
      goto L941;
    }
  goto ret0;

 L941: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[1] = x3;
      goto L942;
    }
  goto ret0;

 L942: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L961;
  goto ret0;

 L961: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == NEG)
    goto L962;
  if (reg_or_22bit_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L944;
    }
  goto ret0;

 L962: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_22bit_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L963;
    }
  goto ret0;

 L963: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_22bit_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L964;
    }
  goto ret0;

 L964: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && rtx_equal_p (operands[0], operands[3])))
    {
      return gen_split_220 (operands);
    }
 L974: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed))
    {
      return gen_split_221 (operands);
    }
  goto ret0;

 L944: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_22bit_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L945;
    }
  goto ret0;

 L945: ATTRIBUTE_UNUSED_LABEL
  if (((reload_completed
    && (rtx_equal_p (operands[0], operands[2])
        || rtx_equal_p (operands[0], operands[3])))))
    {
      return gen_split_218 (operands);
    }
 L954: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed))
    {
      return gen_split_219 (operands);
    }
  goto ret0;

 L2683: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x0, 0) == 2)
    goto L843;
  goto ret0;

 L843: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L844;
  goto ret0;

 L844: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L2692;
  goto ret0;

 L2692: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == ZERO_EXTRACT)
    goto L845;
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L865;
    }
  goto ret0;

 L845: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L846;
    }
  goto ret0;

 L846: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 32)
    goto L847;
  goto ret0;

 L847: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L848;
  goto ret0;

 L848: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L849;
    }
  goto ret0;

 L849: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L850;
  goto ret0;

 L850: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L851;
    }
  goto ret0;

 L851: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed))
    {
      return gen_split_160 (operands);
    }
 L861: ATTRIBUTE_UNUSED_LABEL
  if ((! reload_completed))
    {
      return gen_split_161 (operands);
    }
  goto ret0;

 L865: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == PLUS)
    goto L866;
  goto ret0;

 L866: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == PLUS)
    goto L867;
  goto ret0;

 L867: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == MULT)
    goto L868;
  goto ret0;

 L868: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L869;
    }
  goto ret0;

 L869: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (register_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L870;
    }
  goto ret0;

 L870: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DImode))
    {
      operands[3] = x4;
      goto L871;
    }
  goto ret0;

 L871: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (reg_or_14bit_operand (x3, DImode))
    {
      operands[4] = x3;
      goto L872;
    }
  goto ret0;

 L872: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L873;
  goto ret0;

 L873: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[5] = x2;
      goto L874;
    }
  goto ret0;

 L874: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed))
    {
      return gen_split_171 (operands);
    }
  goto ret0;
 ret0:
  return 0;
}

