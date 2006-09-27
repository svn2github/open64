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


extern rtx gen_split_329 PARAMS ((rtx *));
extern rtx gen_split_330 PARAMS ((rtx *));
extern rtx gen_split_332 PARAMS ((rtx *));
extern rtx gen_split_333 PARAMS ((rtx *));
extern rtx gen_split_334 PARAMS ((rtx *));
extern rtx gen_split_335 PARAMS ((rtx *));
extern rtx gen_split_336 PARAMS ((rtx *));
extern rtx gen_split_337 PARAMS ((rtx *));
extern rtx gen_split_339 PARAMS ((rtx *));
extern rtx gen_split_340 PARAMS ((rtx *));
extern rtx gen_split_342 PARAMS ((rtx *));
extern rtx gen_split_343 PARAMS ((rtx *));
extern rtx gen_split_344 PARAMS ((rtx *));
extern rtx gen_split_345 PARAMS ((rtx *));
extern rtx gen_split_346 PARAMS ((rtx *));
extern rtx gen_split_347 PARAMS ((rtx *));
extern rtx gen_split_351 PARAMS ((rtx *));
extern rtx gen_split_352 PARAMS ((rtx *));
extern rtx gen_split_372 PARAMS ((rtx *));
extern rtx gen_split_375 PARAMS ((rtx *));
extern rtx gen_split_378 PARAMS ((rtx *));
extern rtx gen_split_381 PARAMS ((rtx *));
extern rtx gen_split_382 PARAMS ((rtx *));
extern rtx gen_split_402 PARAMS ((rtx *));
extern rtx gen_split_403 PARAMS ((rtx *));
extern rtx gen_split_406 PARAMS ((rtx *));
extern rtx gen_split_408 PARAMS ((rtx *));
extern rtx gen_split_409 PARAMS ((rtx *));
extern rtx gen_split_410 PARAMS ((rtx *));
extern rtx gen_split_416 PARAMS ((rtx *));
extern rtx gen_split_418 PARAMS ((rtx *));
extern rtx gen_split_421 PARAMS ((rtx *));
extern rtx gen_split_423 PARAMS ((rtx *));
extern rtx gen_split_425 PARAMS ((rtx *));
extern rtx gen_split_427 PARAMS ((rtx *));
extern rtx gen_split_428 PARAMS ((rtx *));
extern rtx gen_split_429 PARAMS ((rtx *));
extern rtx gen_split_430 PARAMS ((rtx *));
extern rtx gen_split_431 PARAMS ((rtx *));
extern rtx gen_split_433 PARAMS ((rtx *));
extern rtx gen_split_435 PARAMS ((rtx *));
extern rtx gen_split_436 PARAMS ((rtx *));
extern rtx gen_split_437 PARAMS ((rtx *));
extern rtx gen_split_438 PARAMS ((rtx *));
extern rtx gen_split_439 PARAMS ((rtx *));
extern rtx gen_split_441 PARAMS ((rtx *));
extern rtx gen_split_442 PARAMS ((rtx *));
extern rtx gen_split_444 PARAMS ((rtx *));
extern rtx gen_split_445 PARAMS ((rtx *));
extern rtx gen_split_446 PARAMS ((rtx *));
extern rtx gen_split_447 PARAMS ((rtx *));
extern rtx gen_split_448 PARAMS ((rtx *));
extern rtx gen_split_466 PARAMS ((rtx *));
extern rtx gen_split_467 PARAMS ((rtx *));
extern rtx gen_split_469 PARAMS ((rtx *));
extern rtx gen_split_470 PARAMS ((rtx *));
extern rtx gen_split_473 PARAMS ((rtx *));
extern rtx gen_split_474 PARAMS ((rtx *));
extern rtx gen_split_477 PARAMS ((rtx *));
extern rtx gen_split_478 PARAMS ((rtx *));
extern rtx gen_split_481 PARAMS ((rtx *));
extern rtx gen_split_482 PARAMS ((rtx *));
extern rtx gen_split_485 PARAMS ((rtx *));
extern rtx gen_split_486 PARAMS ((rtx *));



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

  x1 = XEXP (x0, 0);
  if (GET_CODE (x1) == MEM)
    goto L1408;
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L2;
    }
 L3117: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L1458;
    }
  goto ret0;

 L1408: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3122;
    case DImode:
      goto L3123;
    default:
      break;
    }
  goto L3117;

 L3122: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L1409;
  goto L3117;

 L1409: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1410;
    }
  goto L3117;

 L1410: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1411;
    }
  goto L3117;

 L1411: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L1412;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1412: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 165;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L3123: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L1416;
  goto L3117;

 L1416: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1417;
    }
  goto L3117;

 L1417: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1418;
    }
  goto L3117;

 L1418: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L1419;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1419: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 166;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L2: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DFmode)
    goto L3124;
  x1 = XEXP (x0, 0);
  goto L3117;

 L3124: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L3;
    case MINUS:
      goto L95;
    case MULT:
      goto L187;
    case NEG:
      goto L543;
    case DIV:
      goto L577;
    case SQRT:
      goto L857;
    case ABS:
      goto L891;
    case FLOAT_EXTEND:
      goto L1219;
    case FLOAT:
      goto L1280;
    case MEM:
      goto L1381;
    case IF_THEN_ELSE:
      goto L2542;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L3117;

 L3: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DFmode)
    goto L3136;
  x1 = XEXP (x0, 0);
  goto L3117;

 L3136: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MULT)
    goto L512;
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L4;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L512: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L513;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L513: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L514;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L514: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[3] = x2;
      goto L515;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L515: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 46;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L4: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L5;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L5: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 0;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L95: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DFmode)
    goto L3138;
  x1 = XEXP (x0, 0);
  goto L3117;

 L3138: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MULT)
    goto L528;
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L96;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L528: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L529;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L529: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L530;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L530: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[3] = x2;
      goto L531;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L531: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 48;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L96: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DFmode)
    goto L3140;
  x1 = XEXP (x0, 0);
  goto L3117;

 L3140: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MULT)
    goto L563;
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L97;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L563: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L564;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L564: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DFmode))
    {
      operands[3] = x3;
      goto L565;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L565: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 52;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L97: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 14;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L187: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L188;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L188: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L189;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L189: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT && mips_cpu != PROCESSOR_R4300))
    {
      return 28;
    }
 L195: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT && mips_cpu == PROCESSOR_R4300))
    {
      return 29;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L543: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DFmode)
    goto L3141;
  x1 = XEXP (x0, 0);
  goto L3117;

 L3141: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L544;
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L949;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L544: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DFmode
      && GET_CODE (x3) == MULT)
    goto L545;
  x1 = XEXP (x0, 0);
  goto L3117;

 L545: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, DFmode))
    {
      operands[1] = x4;
      goto L546;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L546: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, DFmode))
    {
      operands[2] = x4;
      goto L547;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L547: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DFmode))
    {
      operands[3] = x3;
      goto L548;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L548: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 50;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L949: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 85;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L577: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DFmode)
    goto L3144;
  x1 = XEXP (x0, 0);
  goto L3117;

 L3144: ATTRIBUTE_UNUSED_LABEL
  if (const_float_1_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L590;
    }
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L578;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L590: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DFmode)
    goto L3146;
  x1 = XEXP (x0, 0);
  goto L3117;

 L3146: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == SQRT)
    goto L869;
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L591;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L869: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L870;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L870: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT && flag_fast_math))
    {
      return 74;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L591: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT && flag_fast_math))
    {
      return 56;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L578: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L579;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L579: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 54;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L857: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L858;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L858: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && HAVE_SQRT_P() && TARGET_DOUBLE_FLOAT))
    {
      return 72;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L891: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L892;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L892: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 78;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1219: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1220;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1220: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 134;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1280: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3147;
    case DImode:
      goto L3148;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L3147: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1281;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1281: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 139;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L3148: ATTRIBUTE_UNUSED_LABEL
  if (se_nonimmediate_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1286;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1286: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT))
    {
      return 140;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1381: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3149;
    case DImode:
      goto L3150;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L3149: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L1382;
  x1 = XEXP (x0, 0);
  goto L3117;

 L1382: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1383;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1383: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1384;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1384: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 161;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L3150: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L1389;
  x1 = XEXP (x0, 0);
  goto L3117;

 L1389: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1390;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1390: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1391;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1391: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 162;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L2542: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (equality_op (x2, VOIDmode))
    {
      operands[4] = x2;
      goto L2543;
    }
 L2560: ATTRIBUTE_UNUSED_LABEL
  if (equality_op (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2561;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L2543: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SImode:
      goto L3151;
    case DImode:
      goto L3152;
    default:
      break;
    }
  goto L2560;

 L3151: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2544;
    }
  goto L2560;

 L2544: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2545;
  goto L2560;

 L2545: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2546;
    }
  x2 = XEXP (x1, 0);
  goto L2560;

 L2546: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (register_operand (x2, DFmode))
    {
      operands[3] = x2;
      goto L2547;
    }
  x2 = XEXP (x1, 0);
  goto L2560;

 L2547: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 314;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2560;

 L3152: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2553;
    }
  goto L2560;

 L2553: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2554;
  goto L2560;

 L2554: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2555;
    }
  x2 = XEXP (x1, 0);
  goto L2560;

 L2555: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (register_operand (x2, DFmode))
    {
      operands[3] = x2;
      goto L2556;
    }
  x2 = XEXP (x1, 0);
  goto L2560;

 L2556: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 315;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2560;

 L2561: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[4] = x3;
      goto L2562;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L2562: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2563;
  x1 = XEXP (x0, 0);
  goto L3117;

 L2563: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2564;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L2564: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2565;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L2565: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 316;
    }
  x1 = XEXP (x0, 0);
  goto L3117;

 L1458: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, DFmode))
    {
      operands[1] = x1;
      goto L1459;
    }
  goto ret0;

 L1459: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && !(TARGET_FLOAT64 && !TARGET_64BIT)
   && TARGET_DOUBLE_FLOAT
   && (register_operand (operands[0], DFmode)
       || register_operand (operands[1], DFmode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)
       || operands[1] == CONST0_RTX (DFmode))))
    {
      return 176;
    }
 L1463: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && (TARGET_FLOAT64 && !TARGET_64BIT)
   && TARGET_DOUBLE_FLOAT
   && (register_operand (operands[0], DFmode)
       || register_operand (operands[1], DFmode)
       || (GET_CODE (operands [0]) == MEM
	   && ((GET_CODE (operands[1]) == CONST_INT
		&& INTVAL (operands[1]) == 0)
	       || operands[1] == CONST0_RTX (DFmode))))))
    {
      return 177;
    }
 L1467: ATTRIBUTE_UNUSED_LABEL
  if (((TARGET_SOFT_FLOAT || TARGET_SINGLE_FLOAT) && !TARGET_MIPS16
   && (register_operand (operands[0], DFmode)
       || register_operand (operands[1], DFmode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)
       || operands[1] == CONST0_RTX (DFmode))))
    {
      return 178;
    }
 L1471: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (register_operand (operands[0], DFmode)
       || register_operand (operands[1], DFmode))))
    {
      return 179;
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
  if (GET_CODE (x1) == MEM)
    goto L1394;
  if (register_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L8;
    }
 L3116: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L1446;
    }
  goto ret0;

 L1394: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3153;
    case DImode:
      goto L3154;
    default:
      break;
    }
  goto L3116;

 L3153: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L1395;
  goto L3116;

 L1395: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1396;
    }
  goto L3116;

 L1396: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1397;
    }
  goto L3116;

 L1397: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (register_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L1398;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1398: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT))
    {
      return 163;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L3154: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L1402;
  goto L3116;

 L1402: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1403;
    }
  goto L3116;

 L1403: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1404;
    }
  goto L3116;

 L1404: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (register_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L1405;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1405: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT))
    {
      return 164;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L8: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SFmode)
    goto L3155;
  x1 = XEXP (x0, 0);
  goto L3116;

 L3155: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L9;
    case MINUS:
      goto L101;
    case MULT:
      goto L199;
    case NEG:
      goto L552;
    case DIV:
      goto L583;
    case SQRT:
      goto L862;
    case ABS:
      goto L896;
    case FLOAT_TRUNCATE:
      goto L1072;
    case FLOAT:
      goto L1290;
    case MEM:
      goto L1367;
    case IF_THEN_ELSE:
      goto L2515;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L3116;

 L9: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SFmode)
    goto L3167;
  x1 = XEXP (x0, 0);
  goto L3116;

 L3167: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MULT)
    goto L520;
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L10;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L520: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L521;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L521: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L522;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L522: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[3] = x2;
      goto L523;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L523: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT))
    {
      return 47;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L10: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L11;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L11: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 1;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L101: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SFmode)
    goto L3169;
  x1 = XEXP (x0, 0);
  goto L3116;

 L3169: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MULT)
    goto L536;
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L102;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L536: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L537;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L537: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L538;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L538: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[3] = x2;
      goto L539;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L539: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT))
    {
      return 49;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L102: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SFmode)
    goto L3171;
  x1 = XEXP (x0, 0);
  goto L3116;

 L3171: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MULT)
    goto L571;
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L103;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L571: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L572;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L572: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SFmode))
    {
      operands[3] = x3;
      goto L573;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L573: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT))
    {
      return 53;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L103: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 15;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L199: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L200;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L200: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L201;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L201: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && mips_cpu != PROCESSOR_R4300))
    {
      return 30;
    }
 L207: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && mips_cpu == PROCESSOR_R4300))
    {
      return 31;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L552: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SFmode)
    goto L3172;
  x1 = XEXP (x0, 0);
  goto L3116;

 L3172: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L553;
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L954;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L553: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SFmode
      && GET_CODE (x3) == MULT)
    goto L554;
  x1 = XEXP (x0, 0);
  goto L3116;

 L554: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SFmode))
    {
      operands[1] = x4;
      goto L555;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L555: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SFmode))
    {
      operands[2] = x4;
      goto L556;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L556: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SFmode))
    {
      operands[3] = x3;
      goto L557;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L557: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT))
    {
      return 51;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L954: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 86;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L583: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SFmode)
    goto L3175;
  x1 = XEXP (x0, 0);
  goto L3116;

 L3175: ATTRIBUTE_UNUSED_LABEL
  if (const_float_1_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L596;
    }
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L584;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L596: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SFmode)
    goto L3177;
  x1 = XEXP (x0, 0);
  goto L3116;

 L3177: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == SQRT)
    goto L876;
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L597;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L876: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L877;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L877: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && flag_fast_math))
    {
      return 75;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L597: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT && flag_fast_math))
    {
      return 57;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L584: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L585;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L585: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 55;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L862: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L863;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L863: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && HAVE_SQRT_P()))
    {
      return 73;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L896: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L897;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L897: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 79;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1072: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1073;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1073: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 106;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1290: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3178;
    case DImode:
      goto L3179;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L3178: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1291;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1291: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 141;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L3179: ATTRIBUTE_UNUSED_LABEL
  if (se_nonimmediate_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1296;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1296: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT))
    {
      return 142;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1367: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3180;
    case DImode:
      goto L3181;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L3180: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L1368;
  x1 = XEXP (x0, 0);
  goto L3116;

 L1368: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1369;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1369: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1370;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1370: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT))
    {
      return 159;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L3181: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PLUS)
    goto L1375;
  x1 = XEXP (x0, 0);
  goto L3116;

 L1375: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1376;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1376: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1377;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1377: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_FP4 && TARGET_HARD_FLOAT))
    {
      return 160;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L2515: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (equality_op (x2, VOIDmode))
    {
      operands[4] = x2;
      goto L2516;
    }
 L2533: ATTRIBUTE_UNUSED_LABEL
  if (equality_op (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2534;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L2516: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SImode:
      goto L3182;
    case DImode:
      goto L3183;
    default:
      break;
    }
  goto L2533;

 L3182: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2517;
    }
  goto L2533;

 L2517: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2518;
  goto L2533;

 L2518: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2519;
    }
  x2 = XEXP (x1, 0);
  goto L2533;

 L2519: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (register_operand (x2, SFmode))
    {
      operands[3] = x2;
      goto L2520;
    }
  x2 = XEXP (x1, 0);
  goto L2533;

 L2520: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT))
    {
      return 311;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2533;

 L3183: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2526;
    }
  goto L2533;

 L2526: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2527;
  goto L2533;

 L2527: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2528;
    }
  x2 = XEXP (x1, 0);
  goto L2533;

 L2528: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (register_operand (x2, SFmode))
    {
      operands[3] = x2;
      goto L2529;
    }
  x2 = XEXP (x1, 0);
  goto L2533;

 L2529: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT))
    {
      return 312;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2533;

 L2534: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[4] = x3;
      goto L2535;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L2535: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2536;
  x1 = XEXP (x0, 0);
  goto L3116;

 L2536: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2537;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L2537: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2538;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L2538: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT))
    {
      return 313;
    }
  x1 = XEXP (x0, 0);
  goto L3116;

 L1446: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, SFmode))
    {
      operands[1] = x1;
      goto L1447;
    }
  goto ret0;

 L1447: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT
   && (register_operand (operands[0], SFmode)
       || register_operand (operands[1], SFmode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)
       || operands[1] == CONST0_RTX (SFmode))))
    {
      return 173;
    }
 L1451: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_SOFT_FLOAT && !TARGET_MIPS16
   && (register_operand (operands[0], SFmode)
       || register_operand (operands[1], SFmode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)
       || operands[1] == CONST0_RTX (SFmode))))
    {
      return 174;
    }
 L1455: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (register_operand (operands[0], SFmode)
       || register_operand (operands[1], SFmode))))
    {
      return 175;
    }
  goto ret0;
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

  x1 = XEXP (x0, 1);
  switch (GET_CODE (x1))
    {
    case MINUS:
      goto L119;
    case MULT:
      goto L224;
    case PLUS:
      goto L283;
    case TRUNCATE:
      goto L383;
    case DIV:
      goto L732;
    case MOD:
      goto L766;
    case UDIV:
      goto L800;
    case UMOD:
      goto L834;
    case ABS:
      goto L881;
    case FFS:
      goto L911;
    case NEG:
      goto L931;
    case NOT:
      goto L958;
    case AND:
      goto L1056;
    case IOR:
      goto L996;
    case XOR:
      goto L1020;
    case ZERO_EXTEND:
      goto L1113;
    case SIGN_EXTEND:
      goto L1202;
    case UNSPEC:
      goto L3222;
    case HIGH:
      goto L1318;
    case LO_SUM:
      goto L1323;
    case ASHIFT:
      goto L1579;
    case ASHIFTRT:
      goto L1630;
    case LSHIFTRT:
      goto L1681;
    case EQ:
      goto L1851;
    case NE:
      goto L1883;
    case GT:
      goto L1905;
    case GE:
      goto L1929;
    case LT:
      goto L1941;
    case LE:
      goto L1965;
    case GTU:
      goto L2001;
    case GEU:
      goto L2023;
    case LTU:
      goto L2035;
    case LEU:
      goto L2059;
    case IF_THEN_ELSE:
      goto L2461;
    default:
     break;
   }
  goto ret0;

 L119: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode)
    goto L3223;
  goto ret0;

 L3223: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    goto L120;
 L3224: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L126;
    }
  goto ret0;

 L120: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (small_int (x2, SImode))
    {
      operands[1] = x2;
      goto L121;
    }
  x2 = XEXP (x1, 0);
  goto L3224;

 L121: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768)))
    {
      return 18;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3224;

 L126: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L127;
    }
  goto ret0;

 L127: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT
       || (INTVAL (operands[2]) != -32768 && INTVAL (operands[2]) != -0x4000))))
    {
      return 19;
    }
  goto ret0;

 L224: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L225;
    }
  goto ret0;

 L225: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L226;
    }
  goto ret0;

 L226: ATTRIBUTE_UNUSED_LABEL
  if ((GENERATE_MULT3
   || TARGET_MAD)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 3;
      return 32;
    }
 L243: ATTRIBUTE_UNUSED_LABEL
  if ((mips_cpu != PROCESSOR_R4000 || TARGET_MIPS16)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 33;
    }
 L262: ATTRIBUTE_UNUSED_LABEL
  if ((mips_cpu == PROCESSOR_R4000 && !TARGET_MIPS16)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 3;
      return 34;
    }
  goto ret0;

 L283: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == MULT)
    goto L284;
  goto ret0;

 L284: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L285;
    }
  goto ret0;

 L285: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L286;
    }
  goto ret0;

 L286: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L287;
    }
 L461: ATTRIBUTE_UNUSED_LABEL
  if (rtx_equal_p (x2, operands[0])
      && (TARGET_MAD)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 43;
    }
  goto ret0;

 L287: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS3900
   && !TARGET_MIPS16)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 4;
      return 35;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 1);
  goto L461;

 L383: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L3227;
  goto ret0;

 L3227: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case ASHIFTRT:
      goto L1093;
    case LSHIFTRT:
      goto L1100;
    case ASHIFT:
      goto L1107;
    default:
     break;
   }
 L3225: ATTRIBUTE_UNUSED_LABEL
  if (highpart_shift_operator (x2, DImode))
    {
      operands[5] = x2;
      goto L384;
    }
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1078;
    }
  goto ret0;

 L1093: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1094;
    }
  goto L3225;

 L1094: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L1095;
    }
  goto L3225;

 L1095: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 110;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3225;

 L1100: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1101;
    }
  goto L3225;

 L1101: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L1102;
    }
  goto L3225;

 L1102: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 111;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3225;

 L1107: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1108;
    }
  goto ret0;

 L1108: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L1109;
    }
  goto ret0;

 L1109: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 112;
    }
  goto ret0;

 L384: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == MULT)
    goto L385;
  goto ret0;

 L385: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (extend_operator (x4, DImode))
    {
      operands[3] = x4;
      goto L386;
    }
  goto ret0;

 L386: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SImode))
    {
      operands[1] = x5;
      goto L387;
    }
  goto ret0;

 L387: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (extend_operator (x4, DImode))
    {
      operands[4] = x4;
      goto L388;
    }
  goto ret0;

 L388: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SImode))
    {
      operands[2] = x5;
      goto L389;
    }
  goto ret0;

 L389: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 32
      && (GET_CODE (operands[3]) == GET_CODE (operands[4]))
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 40;
    }
  goto ret0;

 L1078: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 107;
    }
  goto ret0;

 L732: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L733;
    }
  goto ret0;

 L733: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L734;
    }
  goto ret0;

 L734: ATTRIBUTE_UNUSED_LABEL
  if ((!optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 64;
    }
  goto ret0;

 L766: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L767;
    }
  goto ret0;

 L767: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L768;
    }
  goto ret0;

 L768: ATTRIBUTE_UNUSED_LABEL
  if ((!optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 66;
    }
  goto ret0;

 L800: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L801;
    }
  goto ret0;

 L801: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L802;
    }
  goto ret0;

 L802: ATTRIBUTE_UNUSED_LABEL
  if ((!optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 68;
    }
  goto ret0;

 L834: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L835;
    }
  goto ret0;

 L835: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L836;
    }
  goto ret0;

 L836: ATTRIBUTE_UNUSED_LABEL
  if ((!optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 70;
    }
  goto ret0;

 L881: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L882;
    }
  goto ret0;

 L882: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 76;
    }
  goto ret0;

 L911: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L912;
    }
  goto ret0;

 L912: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 80;
    }
  goto ret0;

 L931: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 82;
    }
  goto ret0;

 L958: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 87;
    }
  goto ret0;

 L1056: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == NOT)
    goto L1057;
  if (uns_arith_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L967;
    }
 L972: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L973;
    }
  goto ret0;

 L1057: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1058;
    }
  goto ret0;

 L1058: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == NOT)
    goto L1059;
  goto ret0;

 L1059: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1060;
    }
  goto ret0;

 L1060: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 104;
    }
  goto ret0;

 L967: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L968;
    }
  x2 = XEXP (x1, 0);
  goto L972;

 L968: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 89;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L972;

 L973: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L974;
    }
  goto ret0;

 L974: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 90;
    }
  goto ret0;

 L996: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (uns_arith_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L997;
    }
 L1002: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1003;
    }
  goto ret0;

 L997: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L998;
    }
  x2 = XEXP (x1, 0);
  goto L1002;

 L998: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 94;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L1002;

 L1003: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1004;
    }
  goto ret0;

 L1004: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 95;
    }
  goto ret0;

 L1020: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (uns_arith_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1021;
    }
  goto ret0;

 L1021: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1022;
    }
  goto ret0;

 L1022: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 98;
    }
 L1028: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 99;
    }
  goto ret0;

 L1113: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case HImode:
      goto L3230;
    case QImode:
      goto L3231;
    default:
      break;
    }
  goto ret0;

 L3230: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == TRUNCATE)
    goto L1114;
  if (nonimmediate_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1137;
    }
 L3233: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1142;
    }
  goto ret0;

 L1114: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1115;
    }
  goto ret0;

 L1115: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 113;
    }
  goto ret0;

 L1137: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 117;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3233;

 L1142: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 118;
    }
  goto ret0;

 L3231: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == TRUNCATE)
    goto L1120;
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1167;
    }
 L3235: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1172;
    }
  goto ret0;

 L1120: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1121;
    }
  goto ret0;

 L1121: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 114;
    }
  goto ret0;

 L1167: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 123;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3235;

 L1172: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 124;
    }
  goto ret0;

 L1202: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case HImode:
      goto L3236;
    case QImode:
      goto L3237;
    default:
      break;
    }
  goto ret0;

 L3236: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, HImode))
    {
      operands[1] = x2;
      return 130;
    }
  goto ret0;

 L3237: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      return 132;
    }
  goto ret0;

 L3222: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 1
      && XINT (x1, 1) == 0)
    goto L1300;
  goto ret0;

 L1300: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (general_operand (x2, BLKmode))
    {
      operands[1] = x2;
      goto L1301;
    }
  goto ret0;

 L1301: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 143;
    }
  goto ret0;

 L1318: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (immediate_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1319;
    }
  goto ret0;

 L1319: ATTRIBUTE_UNUSED_LABEL
  if ((mips_split_addresses && !TARGET_MIPS16))
    {
      return 147;
    }
  goto ret0;

 L1323: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1324;
    }
  goto ret0;

 L1324: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (immediate_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1325;
    }
  goto ret0;

 L1325: ATTRIBUTE_UNUSED_LABEL
  if ((mips_split_addresses && !TARGET_MIPS16))
    {
      return 148;
    }
  goto ret0;

 L1579: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1580;
    }
  goto ret0;

 L1580: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1581;
    }
  goto ret0;

 L1581: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 186;
    }
 L1587: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 187;
    }
  goto ret0;

 L1630: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1631;
    }
  goto ret0;

 L1631: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1632;
    }
  goto ret0;

 L1632: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 193;
    }
 L1638: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 194;
    }
  goto ret0;

 L1681: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode)
    goto L3238;
  goto ret0;

 L3238: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1682;
    }
 L3239: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1694;
    }
  goto ret0;

 L1682: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1683;
    }
  x2 = XEXP (x1, 0);
  goto L3239;

 L1683: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 200;
    }
 L1689: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 201;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3239;

 L1694: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (immediate_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1695;
    }
  goto ret0;

 L1695: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 202;
    }
  goto ret0;

 L1851: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1852;
    }
  goto ret0;

 L1852: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    goto L3240;
 L1872: ATTRIBUTE_UNUSED_LABEL
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1873;
    }
  goto ret0;

 L3240: ATTRIBUTE_UNUSED_LABEL
  if (XWINT (x2, 0) == 0)
    goto L3242;
  goto L1872;

 L3242: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 220;
    }
 L3243: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 221;
    }
  goto L1872;

 L1873: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 224;
    }
  goto ret0;

 L1883: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1884;
    }
  goto ret0;

 L1884: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0
      && (!TARGET_MIPS16))
    {
      return 226;
    }
 L1894: ATTRIBUTE_UNUSED_LABEL
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1895;
    }
  goto ret0;

 L1895: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 228;
    }
  goto ret0;

 L1905: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1906;
    }
  goto ret0;

 L1906: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1907;
    }
 L1912: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1913;
    }
  goto ret0;

 L1907: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 230;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 1);
  goto L1912;

 L1913: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 231;
    }
  goto ret0;

 L1929: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1930;
    }
  goto ret0;

 L1930: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1931;
    }
  goto ret0;

 L1931: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 234;
    }
  goto ret0;

 L1941: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1942;
    }
  goto ret0;

 L1942: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1943;
    }
  goto ret0;

 L1943: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 236;
    }
 L1949: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 237;
    }
  goto ret0;

 L1965: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1990;
    }
  goto ret0;

 L1990: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1991;
    }
  if (small_int (x2, SImode))
    {
      operands[2] = x2;
      goto L1967;
    }
  goto ret0;

 L1991: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 244;
    }
  goto ret0;

 L1967: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16 && INTVAL (operands[2]) < 32767))
    {
      return 240;
    }
 L1973: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && INTVAL (operands[2]) < 32767))
    {
      return 241;
    }
  goto ret0;

 L2001: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2002;
    }
  goto ret0;

 L2002: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      return 246;
    }
 L2007: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 247;
    }
  goto ret0;

 L2023: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2024;
    }
  goto ret0;

 L2024: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2025;
    }
  goto ret0;

 L2025: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 250;
    }
  goto ret0;

 L2035: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2036;
    }
  goto ret0;

 L2036: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2037;
    }
  goto ret0;

 L2037: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 252;
    }
 L2043: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 253;
    }
  goto ret0;

 L2059: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2084;
    }
  goto ret0;

 L2084: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2085;
    }
  if (small_int (x2, SImode))
    {
      operands[2] = x2;
      goto L2061;
    }
  goto ret0;

 L2085: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 260;
    }
  goto ret0;

 L2061: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16 && INTVAL (operands[2]) < 32767))
    {
      return 256;
    }
 L2067: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && INTVAL (operands[2]) < 32767))
    {
      return 257;
    }
  goto ret0;

 L2461: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (equality_op (x2, VOIDmode))
    {
      operands[4] = x2;
      goto L2462;
    }
 L2479: ATTRIBUTE_UNUSED_LABEL
  if (equality_op (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2480;
    }
  goto ret0;

 L2462: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SImode:
      goto L3244;
    case DImode:
      goto L3245;
    default:
      break;
    }
  goto L2479;

 L3244: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2463;
    }
  goto L2479;

 L2463: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2464;
  goto L2479;

 L2464: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2465;
    }
  x2 = XEXP (x1, 0);
  goto L2479;

 L2465: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2466;
    }
  x2 = XEXP (x1, 0);
  goto L2479;

 L2466: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE || ISA_HAS_INT_CONDMOVE))
    {
      return 305;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2479;

 L3245: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2472;
    }
  goto L2479;

 L2472: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2473;
  goto L2479;

 L2473: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2474;
    }
  x2 = XEXP (x1, 0);
  goto L2479;

 L2474: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2475;
    }
  x2 = XEXP (x1, 0);
  goto L2479;

 L2475: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE || ISA_HAS_INT_CONDMOVE))
    {
      return 306;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2479;

 L2480: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[4] = x3;
      goto L2481;
    }
  goto ret0;

 L2481: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2482;
  goto ret0;

 L2482: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2483;
    }
  goto ret0;

 L2483: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2484;
    }
  goto ret0;

 L2484: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT))
    {
      return 307;
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
    case MINUS:
      goto L161;
    case SIGN_EXTEND:
      goto L173;
    case MULT:
      goto L302;
    case TRUNCATE:
      goto L409;
    case PLUS:
      goto L478;
    case DIV:
      goto L749;
    case MOD:
      goto L783;
    case UDIV:
      goto L817;
    case UMOD:
      goto L851;
    case ABS:
      goto L886;
    case FFS:
      goto L926;
    case NEG:
      goto L943;
    case NOT:
      goto L962;
    case AND:
      goto L978;
    case IOR:
      goto L1008;
    case XOR:
      goto L1032;
    case ZERO_EXTEND:
      goto L1131;
    case UNSPEC:
      goto L3285;
    case ASHIFT:
      goto L1618;
    case ASHIFTRT:
      goto L1669;
    case LSHIFTRT:
      goto L1726;
    case EQ:
      goto L1861;
    case NE:
      goto L1888;
    case GT:
      goto L1917;
    case GE:
      goto L1935;
    case LT:
      goto L1953;
    case LE:
      goto L1977;
    case GTU:
      goto L2011;
    case GEU:
      goto L2029;
    case LTU:
      goto L2047;
    case LEU:
      goto L2071;
    case IF_THEN_ELSE:
      goto L2488;
    default:
     break;
   }
  goto ret0;

 L161: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L3286;
  goto ret0;

 L3286: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    goto L162;
 L3287: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L168;
    }
  goto ret0;

 L162: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (small_int (x2, DImode))
    {
      operands[1] = x2;
      goto L163;
    }
  x2 = XEXP (x1, 0);
  goto L3287;

 L163: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768)))
    {
      return 24;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3287;

 L168: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L169;
    }
  goto ret0;

 L169: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT
       || (INTVAL (operands[2]) != -32768 && INTVAL (operands[2]) != -0x4000))))
    {
      return 25;
    }
  goto ret0;

 L173: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3288;
    case HImode:
      goto L3291;
    case QImode:
      goto L3292;
    default:
      break;
    }
  goto ret0;

 L3288: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case MINUS:
      goto L174;
    case SUBREG:
      goto L3293;
    default:
     break;
   }
 L3290: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1193;
    }
  goto ret0;

 L174: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_0_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L175;
    }
 L181: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L182;
    }
  goto ret0;

 L175: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (arith_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L176;
    }
  x3 = XEXP (x2, 0);
  goto L181;

 L176: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768)))
    {
      return 26;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L181;

 L182: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (arith_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L183;
    }
  goto ret0;

 L183: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT
       || (INTVAL (operands[2]) != -32768 && INTVAL (operands[2]) != -0x4000))))
    {
      return 27;
    }
  goto ret0;

 L3293: ATTRIBUTE_UNUSED_LABEL
  if (XINT (x2, 1) == 0)
    goto L1182;
  goto L3290;

 L1182: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (memory_operand (x3, HImode))
    {
      operands[1] = x3;
      goto L1183;
    }
  goto L3290;

 L1183: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 126;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3290;

 L1193: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 128;
    }
  goto ret0;

 L3291: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1198;
    }
  goto ret0;

 L1198: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 129;
    }
  goto ret0;

 L3292: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1215;
    }
  goto ret0;

 L1215: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 133;
    }
  goto ret0;

 L302: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L3294;
  goto ret0;

 L3294: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L303;
    }
 L3295: ATTRIBUTE_UNUSED_LABEL
  if (extend_operator (x2, DImode))
    {
      operands[3] = x2;
      goto L339;
    }
  goto ret0;

 L303: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L304;
    }
  x2 = XEXP (x1, 0);
  goto L3295;

 L304: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && mips_cpu != PROCESSOR_R4000 && !TARGET_MIPS16)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 36;
    }
 L323: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && (GENERATE_MULT3 || mips_cpu == PROCESSOR_R4000 || TARGET_MIPS16))
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 3;
      return 37;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3295;

 L339: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L340;
    }
  goto ret0;

 L340: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (extend_operator (x2, DImode))
    {
      operands[4] = x2;
      goto L341;
    }
  goto ret0;

 L341: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L342;
    }
  goto ret0;

 L342: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && GET_CODE (operands[3]) == GET_CODE (operands[4]))
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 38;
    }
 L363: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && GET_CODE (operands[3]) == GET_CODE (operands[4]))
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 39;
    }
  goto ret0;

 L409: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == TImode
      && GET_CODE (x2) == LSHIFTRT)
    goto L410;
  goto ret0;

 L410: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == TImode
      && GET_CODE (x3) == MULT)
    goto L411;
  goto ret0;

 L411: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == TImode)
    goto L3296;
  goto ret0;

 L3296: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x4))
    {
    case SIGN_EXTEND:
      goto L412;
    case ZERO_EXTEND:
      goto L438;
    default:
     break;
   }
  goto ret0;

 L412: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (se_register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L413;
    }
  goto ret0;

 L413: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_MODE (x4) == TImode
      && GET_CODE (x4) == SIGN_EXTEND)
    goto L414;
  goto ret0;

 L414: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (se_register_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L415;
    }
  goto ret0;

 L415: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 64
      && (TARGET_64BIT)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 41;
    }
  goto ret0;

 L438: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (se_register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L439;
    }
  goto ret0;

 L439: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_MODE (x4) == TImode
      && GET_CODE (x4) == ZERO_EXTEND)
    goto L440;
  goto ret0;

 L440: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (se_register_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L441;
    }
  goto ret0;

 L441: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 64
      && (TARGET_64BIT)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 42;
    }
  goto ret0;

 L478: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == MULT)
    goto L479;
  goto ret0;

 L479: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (extend_operator (x3, DImode))
    {
      operands[3] = x3;
      goto L480;
    }
  goto ret0;

 L480: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L481;
    }
  goto ret0;

 L481: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (extend_operator (x3, DImode))
    {
      operands[4] = x3;
      goto L482;
    }
  goto ret0;

 L482: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L483;
    }
  goto ret0;

 L483: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (rtx_equal_p (x2, operands[0])
      && (TARGET_MAD
   && ! TARGET_64BIT
   && GET_CODE (operands[3]) == GET_CODE (operands[4]))
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 44;
    }
 L507: ATTRIBUTE_UNUSED_LABEL
  if (rtx_equal_p (x2, operands[0])
      && (TARGET_MAD
   && TARGET_64BIT
   && GET_CODE (operands[3]) == GET_CODE (operands[4]))
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 45;
    }
  goto ret0;

 L749: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L750;
    }
  goto ret0;

 L750: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_nonmemory_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L751;
    }
  goto ret0;

 L751: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 65;
    }
  goto ret0;

 L783: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L784;
    }
  goto ret0;

 L784: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_nonmemory_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L785;
    }
  goto ret0;

 L785: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 67;
    }
  goto ret0;

 L817: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L818;
    }
  goto ret0;

 L818: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_nonmemory_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L819;
    }
  goto ret0;

 L819: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 69;
    }
  goto ret0;

 L851: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L852;
    }
  goto ret0;

 L852: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_nonmemory_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L853;
    }
  goto ret0;

 L853: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 71;
    }
  goto ret0;

 L886: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L887;
    }
  goto ret0;

 L887: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 77;
    }
  goto ret0;

 L926: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L927;
    }
  goto ret0;

 L927: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 81;
    }
  goto ret0;

 L943: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L944;
    }
  goto ret0;

 L944: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 84;
    }
  goto ret0;

 L962: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      return 88;
    }
  goto ret0;

 L978: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L3299;
  goto ret0;

 L3299: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == NOT)
    goto L1065;
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L979;
    }
  goto ret0;

 L1065: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1066;
    }
  goto ret0;

 L1066: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == NOT)
    goto L1067;
  goto ret0;

 L1067: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1068;
    }
  goto ret0;

 L1068: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 105;
    }
  goto ret0;

 L979: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L980;
    }
 L991: ATTRIBUTE_UNUSED_LABEL
  if (se_uns_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L992;
    }
  goto ret0;

 L980: ATTRIBUTE_UNUSED_LABEL
  if (((TARGET_64BIT || !TARGET_DEBUG_G_MODE) && !TARGET_MIPS16))
    {
      return 91;
    }
 L986: ATTRIBUTE_UNUSED_LABEL
  if (((TARGET_64BIT || !TARGET_DEBUG_G_MODE) && TARGET_MIPS16))
    {
      return 92;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 1);
  goto L991;

 L992: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 93;
    }
  goto ret0;

 L1008: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1009;
    }
  goto ret0;

 L1009: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1010;
    }
  goto ret0;

 L1010: ATTRIBUTE_UNUSED_LABEL
  if (((TARGET_64BIT || !TARGET_DEBUG_G_MODE) && !TARGET_MIPS16))
    {
      return 96;
    }
 L1016: ATTRIBUTE_UNUSED_LABEL
  if (((TARGET_64BIT || !TARGET_DEBUG_G_MODE) && TARGET_MIPS16))
    {
      return 97;
    }
  goto ret0;

 L1032: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1033;
    }
  goto ret0;

 L1033: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1034;
    }
 L1045: ATTRIBUTE_UNUSED_LABEL
  if (se_uns_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1046;
    }
  goto ret0;

 L1034: ATTRIBUTE_UNUSED_LABEL
  if (((TARGET_64BIT || !TARGET_DEBUG_G_MODE) && !TARGET_MIPS16))
    {
      return 100;
    }
 L1040: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && TARGET_MIPS16))
    {
      return 101;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 1);
  goto L1045;

 L1046: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 102;
    }
 L1052: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 103;
    }
  goto ret0;

 L1131: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3300;
    case HImode:
      goto L3301;
    case QImode:
      goto L3303;
    default:
      break;
    }
  goto ret0;

 L3300: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1132;
    }
  goto ret0;

 L1132: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 116;
    }
  goto ret0;

 L3301: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1147;
    }
 L3302: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1152;
    }
  goto ret0;

 L1147: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 119;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3302;

 L1152: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 120;
    }
  goto ret0;

 L3303: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1177;
    }
 L3304: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1188;
    }
  goto ret0;

 L1177: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 125;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3304;

 L1188: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 127;
    }
  goto ret0;

 L3285: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 1
      && XINT (x1, 1) == 0)
    goto L1310;
  goto ret0;

 L1310: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (general_operand (x2, BLKmode))
    {
      operands[1] = x2;
      return 145;
    }
  goto ret0;

 L1618: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1619;
    }
  goto ret0;

 L1619: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1620;
    }
  goto ret0;

 L1620: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 191;
    }
 L1626: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 192;
    }
  goto ret0;

 L1669: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1670;
    }
  goto ret0;

 L1670: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1671;
    }
  goto ret0;

 L1671: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 198;
    }
 L1677: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 199;
    }
  goto ret0;

 L1726: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1727;
    }
  goto ret0;

 L1727: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1728;
    }
  goto ret0;

 L1728: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 206;
    }
 L1734: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 207;
    }
  goto ret0;

 L1861: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1862;
    }
  goto ret0;

 L1862: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    goto L3305;
 L1878: ATTRIBUTE_UNUSED_LABEL
  if (se_uns_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1879;
    }
  goto ret0;

 L3305: ATTRIBUTE_UNUSED_LABEL
  if (XWINT (x2, 0) == 0)
    goto L3307;
  goto L1878;

 L3307: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 222;
    }
 L3308: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 223;
    }
  goto L1878;

 L1879: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 225;
    }
  goto ret0;

 L1888: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1889;
    }
  goto ret0;

 L1889: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0
      && (TARGET_64BIT && !TARGET_MIPS16))
    {
      return 227;
    }
 L1900: ATTRIBUTE_UNUSED_LABEL
  if (se_uns_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1901;
    }
  goto ret0;

 L1901: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 229;
    }
  goto ret0;

 L1917: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1918;
    }
  goto ret0;

 L1918: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1919;
    }
 L1924: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1925;
    }
  goto ret0;

 L1919: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 232;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 1);
  goto L1924;

 L1925: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 233;
    }
  goto ret0;

 L1935: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1936;
    }
  goto ret0;

 L1936: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1937;
    }
  goto ret0;

 L1937: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 235;
    }
  goto ret0;

 L1953: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1954;
    }
  goto ret0;

 L1954: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1955;
    }
  goto ret0;

 L1955: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 238;
    }
 L1961: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 239;
    }
  goto ret0;

 L1977: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1996;
    }
  goto ret0;

 L1996: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1997;
    }
  if (small_int (x2, DImode))
    {
      operands[2] = x2;
      goto L1979;
    }
  goto ret0;

 L1997: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 245;
    }
  goto ret0;

 L1979: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16 && INTVAL (operands[2]) < 32767))
    {
      return 242;
    }
 L1985: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16 && INTVAL (operands[2]) < 32767))
    {
      return 243;
    }
  goto ret0;

 L2011: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2012;
    }
  goto ret0;

 L2012: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2013;
    }
 L2018: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2019;
    }
  goto ret0;

 L2013: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 248;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 1);
  goto L2018;

 L2019: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 249;
    }
  goto ret0;

 L2029: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2030;
    }
  goto ret0;

 L2030: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2031;
    }
  goto ret0;

 L2031: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 251;
    }
  goto ret0;

 L2047: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2048;
    }
  goto ret0;

 L2048: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2049;
    }
  goto ret0;

 L2049: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 254;
    }
 L2055: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16))
    {
      return 255;
    }
  goto ret0;

 L2071: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2090;
    }
  goto ret0;

 L2090: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2091;
    }
  if (small_int (x2, DImode))
    {
      operands[2] = x2;
      goto L2073;
    }
  goto ret0;

 L2091: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16))
    {
      return 261;
    }
  goto ret0;

 L2073: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16 && INTVAL (operands[2]) < 32767))
    {
      return 258;
    }
 L2079: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16 && INTVAL (operands[2]) < 32767))
    {
      return 259;
    }
  goto ret0;

 L2488: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (equality_op (x2, VOIDmode))
    {
      operands[4] = x2;
      goto L2489;
    }
 L2506: ATTRIBUTE_UNUSED_LABEL
  if (equality_op (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2507;
    }
  goto ret0;

 L2489: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case SImode:
      goto L3309;
    case DImode:
      goto L3310;
    default:
      break;
    }
  goto L2506;

 L3309: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2490;
    }
  goto L2506;

 L2490: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2491;
  goto L2506;

 L2491: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2492;
    }
  x2 = XEXP (x1, 0);
  goto L2506;

 L2492: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L2493;
    }
  x2 = XEXP (x1, 0);
  goto L2506;

 L2493: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE || ISA_HAS_INT_CONDMOVE))
    {
      return 308;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2506;

 L3310: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2499;
    }
  goto L2506;

 L2499: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2500;
  goto L2506;

 L2500: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2501;
    }
  x2 = XEXP (x1, 0);
  goto L2506;

 L2501: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L2502;
    }
  x2 = XEXP (x1, 0);
  goto L2506;

 L2502: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE || ISA_HAS_INT_CONDMOVE))
    {
      return 309;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2506;

 L2507: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[4] = x3;
      goto L2508;
    }
  goto ret0;

 L2508: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L2509;
  goto ret0;

 L2509: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2510;
    }
  goto ret0;

 L2510: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2511;
    }
  goto ret0;

 L2511: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT))
    {
      return 310;
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

  x1 = XEXP (x0, 0);
  switch (GET_MODE (x1))
    {
    case DFmode:
      goto L3113;
    case SFmode:
      goto L3112;
    case SImode:
      goto L3092;
    case DImode:
      goto L3118;
    case HImode:
      goto L3102;
    case QImode:
      goto L3103;
    case BLKmode:
      goto L3106;
    case CCmode:
      goto L3111;
    default:
      break;
    }
 L1736: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == PC)
    goto L2164;
  if (register_operand (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L2278;
    }
  goto ret0;

 L3113: ATTRIBUTE_UNUSED_LABEL
  tem = recog_1 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  goto L1736;

 L3112: ATTRIBUTE_UNUSED_LABEL
  tem = recog_2 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  goto L1736;

 L3092: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L14;
    }
 L3093: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == REG
      && XINT (x1, 0) == 29)
    goto L20;
 L3094: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L26;
    }
 L3098: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == REG
      && XINT (x1, 0) == 29)
    goto L112;
 L3099: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L118;
    }
 L3104: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L1233;
    }
 L3109: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L1347;
    }
 L3110: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L1350;
    }
 L3120: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2592;
    }
  goto L1736;

 L14: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode
      && GET_CODE (x1) == PLUS)
    goto L15;
  x1 = XEXP (x0, 0);
  goto L3093;

 L15: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L16;
    }
  x1 = XEXP (x0, 0);
  goto L3093;

 L16: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L17;
    }
  x1 = XEXP (x0, 0);
  goto L3093;

 L17: ATTRIBUTE_UNUSED_LABEL
  if ((! TARGET_MIPS16
   && (TARGET_GAS
       || GET_CODE (operands[2]) != CONST_INT
       || INTVAL (operands[2]) != -32768)))
    {
      return 2;
    }
  x1 = XEXP (x0, 0);
  goto L3093;

 L20: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode
      && GET_CODE (x1) == PLUS)
    goto L21;
  x1 = XEXP (x0, 0);
  goto L3094;

 L21: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    goto L22;
  x1 = XEXP (x0, 0);
  goto L3094;

 L22: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (small_int (x2, SImode))
    {
      operands[0] = x2;
      goto L23;
    }
  x1 = XEXP (x0, 0);
  goto L3094;

 L23: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 3;
    }
  x1 = XEXP (x0, 0);
  goto L3094;

 L26: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L3184;
  x1 = XEXP (x0, 0);
  goto L3098;

 L3184: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L27;
    case MINUS:
      goto L107;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L3098;

 L27: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode)
    goto L3186;
  x1 = XEXP (x0, 0);
  goto L3098;

 L3186: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    goto L28;
 L3187: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L34;
    }
  x1 = XEXP (x0, 0);
  goto L3098;

 L28: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (small_int (x2, SImode))
    {
      operands[1] = x2;
      goto L29;
    }
  x2 = XEXP (x1, 0);
  goto L3187;

 L29: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 4;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3187;

 L34: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L35;
    }
  x1 = XEXP (x0, 0);
  goto L3098;

 L35: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (GET_CODE (operands[1]) != REG
       || REGNO (operands[1]) >= FIRST_PSEUDO_REGISTER
       || M16_REG_P (REGNO (operands[1]))
       || REGNO (operands[1]) == ARG_POINTER_REGNUM
       || REGNO (operands[1]) == FRAME_POINTER_REGNUM
       || REGNO (operands[1]) == STACK_POINTER_REGNUM)
   && (GET_CODE (operands[2]) != REG
       || REGNO (operands[2]) >= FIRST_PSEUDO_REGISTER
       || M16_REG_P (REGNO (operands[2]))
       || REGNO (operands[2]) == ARG_POINTER_REGNUM
       || REGNO (operands[2]) == FRAME_POINTER_REGNUM
       || REGNO (operands[2]) == STACK_POINTER_REGNUM)))
    {
      return 5;
    }
  x1 = XEXP (x0, 0);
  goto L3098;

 L107: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L108;
    }
  x1 = XEXP (x0, 0);
  goto L3098;

 L108: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L109;
    }
  x1 = XEXP (x0, 0);
  goto L3098;

 L109: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768)))
    {
      return 16;
    }
  x1 = XEXP (x0, 0);
  goto L3098;

 L112: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode
      && GET_CODE (x1) == MINUS)
    goto L113;
  x1 = XEXP (x0, 0);
  goto L3099;

 L113: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    goto L114;
  x1 = XEXP (x0, 0);
  goto L3099;

 L114: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (small_int (x2, SImode))
    {
      operands[0] = x2;
      goto L115;
    }
  x1 = XEXP (x0, 0);
  goto L3099;

 L115: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768)))
    {
      return 17;
    }
  x1 = XEXP (x0, 0);
  goto L3099;

 L118: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L3188;
  x1 = XEXP (x0, 0);
  goto L3104;

 L3188: ATTRIBUTE_UNUSED_LABEL
  tem = recog_3 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  x1 = XEXP (x0, 0);
  goto L3104;

 L1233: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode
      && GET_CODE (x1) == FIX)
    goto L1234;
  x1 = XEXP (x0, 0);
  goto L3109;

 L1234: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DFmode:
      goto L3246;
    case SFmode:
      goto L3247;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L3109;

 L3246: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1235;
    }
  x1 = XEXP (x0, 0);
  goto L3109;

 L1235: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 135;
    }
  x1 = XEXP (x0, 0);
  goto L3109;

 L3247: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1250;
    }
  x1 = XEXP (x0, 0);
  goto L3109;

 L1250: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 2;
      return 136;
    }
  x1 = XEXP (x0, 0);
  goto L3109;

 L1347: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode
      && GET_CODE (x1) == REG
      && XINT (x1, 0) == 31
      && (TARGET_MIPS16))
    {
      return 154;
    }
  x1 = XEXP (x0, 0);
  goto L3110;

 L1350: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (move_operand (x1, SImode))
    {
      operands[1] = x1;
      goto L1351;
    }
  x1 = XEXP (x0, 0);
  goto L3120;

 L1351: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_H_MODE && !TARGET_MIPS16
   && (register_operand (operands[0], SImode)
       || register_operand (operands[1], SImode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0))))
    {
      return 155;
    }
 L1355: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_DEBUG_H_MODE && !TARGET_MIPS16
   && (register_operand (operands[0], SImode)
       || register_operand (operands[1], SImode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0))))
    {
      return 156;
    }
 L1359: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (register_operand (operands[0], SImode)
       || register_operand (operands[1], SImode)
       || (GET_CODE (operands[0]) == MEM
	   && GET_CODE (XEXP (operands[0], 0)) == PLUS
	   && GET_CODE (XEXP (XEXP (operands[0], 0), 1)) == CONST
	   && mips16_gp_offset_p (XEXP (XEXP (operands[0], 0), 1))
	   && GET_CODE (operands[1]) == CONST_INT
	   && (SMALL_INT (operands[1])
	       || SMALL_INT_UNSIGNED (operands[1]))))))
    {
      return 157;
    }
  x1 = XEXP (x0, 0);
  goto L3120;

 L2592: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (address_operand (x1, SImode))
    {
      operands[1] = x1;
      goto L2593;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2593: ATTRIBUTE_UNUSED_LABEL
  if ((Pmode == SImode))
    {
      return 326;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3118: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == REG
      && XINT (x1, 0) == 28)
    goto L1482;
 L3095: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L56;
    }
 L3096: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == REG
      && XINT (x1, 0) == 29)
    goto L62;
 L3097: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L68;
    }
 L3100: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == REG
      && XINT (x1, 0) == 29)
    goto L154;
 L3101: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L160;
    }
 L3105: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L1261;
    }
 L3107: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L1328;
    }
 L3108: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L1331;
    }
 L3121: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2596;
    }
  goto L1736;

 L1482: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode
      && GET_CODE (x1) == UNSPEC_VOLATILE
      && XVECLEN (x1, 0) == 2
      && XINT (x1, 1) == 2)
    goto L1483;
  x1 = XEXP (x0, 0);
  goto L3095;

 L1483: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (address_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L1484;
    }
  x1 = XEXP (x0, 0);
  goto L3095;

 L1484: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 1);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1485;
    }
  x1 = XEXP (x0, 0);
  goto L3095;

 L1485: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 180;
    }
  x1 = XEXP (x0, 0);
  goto L3095;

 L56: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode
      && GET_CODE (x1) == PLUS)
    goto L57;
  x1 = XEXP (x0, 0);
  goto L3096;

 L57: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L58;
    }
  x1 = XEXP (x0, 0);
  goto L3096;

 L58: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L59;
    }
  x1 = XEXP (x0, 0);
  goto L3096;

 L59: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT
   && !TARGET_MIPS16
   && (TARGET_GAS
       || GET_CODE (operands[2]) != CONST_INT
       || INTVAL (operands[2]) != -32768)))
    {
      return 8;
    }
  x1 = XEXP (x0, 0);
  goto L3096;

 L62: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode
      && GET_CODE (x1) == PLUS)
    goto L63;
  x1 = XEXP (x0, 0);
  goto L3097;

 L63: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    goto L64;
  x1 = XEXP (x0, 0);
  goto L3097;

 L64: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (small_int (x2, DImode))
    {
      operands[0] = x2;
      goto L65;
    }
  x1 = XEXP (x0, 0);
  goto L3097;

 L65: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT))
    {
      return 9;
    }
  x1 = XEXP (x0, 0);
  goto L3097;

 L68: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode)
    goto L3248;
  x1 = XEXP (x0, 0);
  goto L3100;

 L3248: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L69;
    case SIGN_EXTEND:
      goto L81;
    case MINUS:
      goto L149;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L3100;

 L69: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L3251;
  x1 = XEXP (x0, 0);
  goto L3100;

 L3251: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    goto L70;
 L3252: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L76;
    }
  x1 = XEXP (x0, 0);
  goto L3100;

 L70: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (small_int (x2, DImode))
    {
      operands[1] = x2;
      goto L71;
    }
  x2 = XEXP (x1, 0);
  goto L3252;

 L71: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT))
    {
      return 10;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3252;

 L76: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L77;
    }
  x1 = XEXP (x0, 0);
  goto L3100;

 L77: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT
   && (GET_CODE (operands[1]) != REG
       || REGNO (operands[1]) >= FIRST_PSEUDO_REGISTER
       || M16_REG_P (REGNO (operands[1]))
       || REGNO (operands[1]) == ARG_POINTER_REGNUM
       || REGNO (operands[1]) == FRAME_POINTER_REGNUM
       || REGNO (operands[1]) == STACK_POINTER_REGNUM)
   && (GET_CODE (operands[2]) != REG
       || REGNO (operands[2]) >= FIRST_PSEUDO_REGISTER
       || M16_REG_P (REGNO (operands[2]))
       || REGNO (operands[2]) == ARG_POINTER_REGNUM
       || REGNO (operands[2]) == FRAME_POINTER_REGNUM
       || REGNO (operands[2]) == STACK_POINTER_REGNUM)))
    {
      return 11;
    }
  x1 = XEXP (x0, 0);
  goto L3100;

 L81: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == PLUS)
    goto L82;
  x1 = XEXP (x0, 0);
  goto L3100;

 L82: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (reg_or_0_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L83;
    }
 L89: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L90;
    }
  x1 = XEXP (x0, 0);
  goto L3100;

 L83: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (arith_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L84;
    }
  x3 = XEXP (x2, 0);
  goto L89;

 L84: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT
   && !TARGET_MIPS16
   && (TARGET_GAS
       || GET_CODE (operands[2]) != CONST_INT
       || INTVAL (operands[2]) != -32768)))
    {
      return 12;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L89;

 L90: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (arith_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L91;
    }
  x1 = XEXP (x0, 0);
  goto L3100;

 L91: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT))
    {
      return 13;
    }
  x1 = XEXP (x0, 0);
  goto L3100;

 L149: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L150;
    }
  x1 = XEXP (x0, 0);
  goto L3100;

 L150: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L151;
    }
  x1 = XEXP (x0, 0);
  goto L3100;

 L151: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768)))
    {
      return 22;
    }
  x1 = XEXP (x0, 0);
  goto L3100;

 L154: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode
      && GET_CODE (x1) == MINUS)
    goto L155;
  x1 = XEXP (x0, 0);
  goto L3101;

 L155: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    goto L156;
  x1 = XEXP (x0, 0);
  goto L3101;

 L156: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (small_int (x2, DImode))
    {
      operands[0] = x2;
      goto L157;
    }
  x1 = XEXP (x0, 0);
  goto L3101;

 L157: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768)))
    {
      return 23;
    }
  x1 = XEXP (x0, 0);
  goto L3101;

 L160: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode)
    goto L3253;
  x1 = XEXP (x0, 0);
  goto L3105;

 L3253: ATTRIBUTE_UNUSED_LABEL
  tem = recog_4 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  x1 = XEXP (x0, 0);
  goto L3105;

 L1261: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode
      && GET_CODE (x1) == FIX)
    goto L1262;
  x1 = XEXP (x0, 0);
  goto L3107;

 L1262: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DFmode:
      goto L3311;
    case SFmode:
      goto L3312;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L3107;

 L3311: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1263;
    }
  x1 = XEXP (x0, 0);
  goto L3107;

 L1263: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 137;
    }
  x1 = XEXP (x0, 0);
  goto L3107;

 L3312: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1276;
    }
  x1 = XEXP (x0, 0);
  goto L3107;

 L1276: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 138;
    }
  x1 = XEXP (x0, 0);
  goto L3107;

 L1328: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode
      && GET_CODE (x1) == REG
      && XINT (x1, 0) == 31
      && (TARGET_MIPS16 && TARGET_64BIT))
    {
      return 149;
    }
  x1 = XEXP (x0, 0);
  goto L3108;

 L1331: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L1332;
    }
 L1339: ATTRIBUTE_UNUSED_LABEL
  if (movdi_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L1340;
    }
  x1 = XEXP (x0, 0);
  goto L3121;

 L1332: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_MIPS16
   && (register_operand (operands[0], DImode)
       || register_operand (operands[1], DImode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)
       || operands[1] == CONST0_RTX (DImode))))
    {
      return 150;
    }
 L1336: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && TARGET_MIPS16
   && (register_operand (operands[0], DImode)
       || register_operand (operands[1], DImode))))
    {
      return 151;
    }
  x1 = XEXP (x0, 1);
  goto L1339;

 L1340: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16
   && (register_operand (operands[0], DImode)
       || se_register_operand (operands[1], DImode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)
       || operands[1] == CONST0_RTX (DImode))))
    {
      return 152;
    }
 L1344: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16
   && (register_operand (operands[0], DImode)
       || se_register_operand (operands[1], DImode))))
    {
      return 153;
    }
  x1 = XEXP (x0, 0);
  goto L3121;

 L2596: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (address_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L2597;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2597: ATTRIBUTE_UNUSED_LABEL
  if ((Pmode == DImode))
    {
      return 327;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3102: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L1081;
    }
 L3114: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L1422;
    }
  goto L1736;

 L1081: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == HImode)
    goto L3313;
  x1 = XEXP (x0, 0);
  goto L3114;

 L3313: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case TRUNCATE:
      goto L1082;
    case ZERO_EXTEND:
      goto L1125;
    case SIGN_EXTEND:
      goto L1206;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L3114;

 L1082: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1083;
    }
  x1 = XEXP (x0, 0);
  goto L3114;

 L1083: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 108;
    }
  x1 = XEXP (x0, 0);
  goto L3114;

 L1125: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == QImode)
    goto L3316;
  x1 = XEXP (x0, 0);
  goto L3114;

 L3316: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == TRUNCATE)
    goto L1126;
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1157;
    }
 L3318: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1162;
    }
  x1 = XEXP (x0, 0);
  goto L3114;

 L1126: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1127;
    }
  x1 = XEXP (x0, 0);
  goto L3114;

 L1127: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 115;
    }
  x1 = XEXP (x0, 0);
  goto L3114;

 L1157: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 121;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3318;

 L1162: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 122;
    }
  x1 = XEXP (x0, 0);
  goto L3114;

 L1206: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      return 131;
    }
  x1 = XEXP (x0, 0);
  goto L3114;

 L1422: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, HImode))
    {
      operands[1] = x1;
      goto L1423;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L1423: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_H_MODE && !TARGET_MIPS16
   && (register_operand (operands[0], HImode)
       || register_operand (operands[1], HImode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0))))
    {
      return 167;
    }
 L1427: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_DEBUG_H_MODE && !TARGET_MIPS16
   && (register_operand (operands[0], HImode)
       || register_operand (operands[1], HImode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0))))
    {
      return 168;
    }
 L1431: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (register_operand (operands[0], HImode)
       || register_operand (operands[1], HImode))))
    {
      return 169;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3103: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L1086;
    }
 L3115: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L1434;
    }
  goto L1736;

 L1086: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == QImode
      && GET_CODE (x1) == TRUNCATE)
    goto L1087;
  x1 = XEXP (x0, 0);
  goto L3115;

 L1087: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1088;
    }
  x1 = XEXP (x0, 0);
  goto L3115;

 L1088: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 109;
    }
  x1 = XEXP (x0, 0);
  goto L3115;

 L1434: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, QImode))
    {
      operands[1] = x1;
      goto L1435;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L1435: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_H_MODE && !TARGET_MIPS16
   && (register_operand (operands[0], QImode)
       || register_operand (operands[1], QImode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0))))
    {
      return 170;
    }
 L1439: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_DEBUG_H_MODE && !TARGET_MIPS16
   && (register_operand (operands[0], QImode)
       || register_operand (operands[1], QImode)
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0))))
    {
      return 171;
    }
 L1443: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && (register_operand (operands[0], QImode)
       || register_operand (operands[1], QImode))))
    {
      return 172;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3106: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x1, BLKmode))
    {
      operands[0] = x1;
      goto L1304;
    }
  goto L1736;

 L1304: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == BLKmode
      && GET_CODE (x1) == UNSPEC
      && XVECLEN (x1, 0) == 1
      && XINT (x1, 1) == 1)
    goto L1305;
  x1 = XEXP (x0, 0);
  goto L1736;

 L1305: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1306;
    }
 L1314: ATTRIBUTE_UNUSED_LABEL
  if (reg_or_0_operand (x2, DImode))
    {
      operands[1] = x2;
      return 146;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L1306: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 144;
    }
  x1 = XEXP (x0, 1);
  x2 = XVECEXP (x1, 0, 0);
  goto L1314;

 L3111: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, CCmode))
    {
      operands[0] = x1;
      goto L1362;
    }
 L3119: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, CCmode))
    {
      operands[0] = x1;
      goto L2094;
    }
  goto L1736;

 L1362: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, CCmode))
    {
      operands[1] = x1;
      goto L1363;
    }
  x1 = XEXP (x0, 0);
  goto L3119;

 L1363: ATTRIBUTE_UNUSED_LABEL
  if ((ISA_HAS_8CC && TARGET_HARD_FLOAT))
    {
      return 158;
    }
  x1 = XEXP (x0, 0);
  goto L3119;

 L2094: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == CCmode)
    goto L3319;
  x1 = XEXP (x0, 0);
  goto L1736;

 L3319: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case EQ:
      goto L2095;
    case LT:
      goto L2101;
    case LE:
      goto L2107;
    case GT:
      goto L2113;
    case GE:
      goto L2119;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2095: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DFmode:
      goto L3324;
    case SFmode:
      goto L3325;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3324: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2096;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2096: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2097;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2097: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 262;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3325: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2126;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2126: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2127;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2127: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 267;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2101: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DFmode:
      goto L3326;
    case SFmode:
      goto L3327;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3326: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2102;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2102: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2103;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2103: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 263;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3327: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2132;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2132: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2133;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2133: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 268;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2107: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DFmode:
      goto L3328;
    case SFmode:
      goto L3329;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3328: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2108;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2108: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2109;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2109: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 264;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3329: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2138;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2138: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2139;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2139: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 269;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2113: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DFmode:
      goto L3330;
    case SFmode:
      goto L3331;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3330: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2114;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2114: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2115;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2115: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 265;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3331: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2144;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2144: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2145;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2145: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 270;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2119: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DFmode:
      goto L3332;
    case SFmode:
      goto L3333;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3332: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2120;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2120: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2121;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2121: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 266;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L3333: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2150;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2150: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2151;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2151: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 271;
    }
  x1 = XEXP (x0, 0);
  goto L1736;

 L2164: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  switch (GET_MODE (x1))
    {
    case SImode:
      goto L3334;
    case DImode:
      goto L3335;
    default:
      break;
    }
 L1737: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case IF_THEN_ELSE:
      goto L1738;
    case LABEL_REF:
      goto L2155;
    default:
     break;
   }
  goto ret0;

 L3334: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2165;
    }
  goto L1737;

 L2165: ATTRIBUTE_UNUSED_LABEL
  if ((!(Pmode == DImode)))
    {
      return 274;
    }
  x1 = XEXP (x0, 1);
  goto L1737;

 L3335: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2169;
    }
  goto L1737;

 L2169: ATTRIBUTE_UNUSED_LABEL
  if ((Pmode == DImode))
    {
      return 275;
    }
  x1 = XEXP (x0, 1);
  goto L1737;

 L1738: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case CCmode:
      goto L3336;
    case SImode:
      goto L3337;
    case DImode:
      goto L3338;
    default:
      break;
    }
  goto ret0;

 L3336: ATTRIBUTE_UNUSED_LABEL
  if (cmp_op (x2, CCmode))
    {
      operands[0] = x2;
      goto L1739;
    }
  goto ret0;

 L1739: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, CCmode))
    {
      operands[2] = x3;
      goto L1740;
    }
  goto ret0;

 L1740: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L1741;
  goto ret0;

 L1741: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  switch (GET_CODE (x2))
    {
    case LABEL_REF:
      goto L1742;
    case PC:
      goto L1751;
    default:
     break;
   }
  goto ret0;

 L1742: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1743;

 L1743: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC
      && (TARGET_HARD_FLOAT))
    {
      return 208;
    }
  goto ret0;

 L1751: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == LABEL_REF)
    goto L1752;
  goto ret0;

 L1752: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1753;

 L1753: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 209;
    }
  goto ret0;

 L3337: ATTRIBUTE_UNUSED_LABEL
  if (cmp_op (x2, SImode))
    {
      operands[0] = x2;
      goto L1758;
    }
 L3339: ATTRIBUTE_UNUSED_LABEL
  if (equality_op (x2, SImode))
    {
      operands[0] = x2;
      goto L1796;
    }
  goto ret0;

 L1758: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1759;
    }
  goto L3339;

 L1759: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L1760;
  goto L3339;

 L1760: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  switch (GET_CODE (x2))
    {
    case LABEL_REF:
      goto L1761;
    case PC:
      goto L1770;
    default:
     break;
   }
  x2 = XEXP (x1, 0);
  goto L3339;

 L1761: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1762;

 L1762: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC
      && (!TARGET_MIPS16))
    {
      return 210;
    }
  x2 = XEXP (x1, 0);
  goto L3339;

 L1770: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == LABEL_REF)
    goto L1771;
  x2 = XEXP (x1, 0);
  goto L3339;

 L1771: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1772;

 L1772: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 211;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3339;

 L1796: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode)
    goto L3341;
  goto ret0;

 L3341: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1797;
    }
 L3342: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1835;
    }
  goto ret0;

 L1797: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[3] = x3;
      goto L1798;
    }
  x3 = XEXP (x2, 0);
  goto L3342;

 L1798: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  switch (GET_CODE (x2))
    {
    case LABEL_REF:
      goto L1799;
    case PC:
      goto L1817;
    default:
     break;
   }
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L3342;

 L1799: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1800;

 L1800: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC
      && (!TARGET_MIPS16))
    {
      return 214;
    }
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L3342;

 L1817: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == LABEL_REF)
    goto L1818;
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L3342;

 L1818: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1819;

 L1819: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 216;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L3342;

 L1835: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L1836;
  goto ret0;

 L1836: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (pc_or_label_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L1837;
    }
  goto ret0;

 L1837: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (pc_or_label_operand (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L1838;
    }
  goto ret0;

 L1838: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 218;
    }
  goto ret0;

 L3338: ATTRIBUTE_UNUSED_LABEL
  if (cmp_op (x2, DImode))
    {
      operands[0] = x2;
      goto L1777;
    }
 L3340: ATTRIBUTE_UNUSED_LABEL
  if (equality_op (x2, DImode))
    {
      operands[0] = x2;
      goto L1805;
    }
  goto ret0;

 L1777: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1778;
    }
  goto L3340;

 L1778: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L1779;
  goto L3340;

 L1779: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  switch (GET_CODE (x2))
    {
    case LABEL_REF:
      goto L1780;
    case PC:
      goto L1789;
    default:
     break;
   }
  x2 = XEXP (x1, 0);
  goto L3340;

 L1780: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1781;

 L1781: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC
      && (!TARGET_MIPS16))
    {
      return 212;
    }
  x2 = XEXP (x1, 0);
  goto L3340;

 L1789: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == LABEL_REF)
    goto L1790;
  x2 = XEXP (x1, 0);
  goto L3340;

 L1790: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1791;

 L1791: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 213;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3340;

 L1805: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L3343;
  goto ret0;

 L3343: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1806;
    }
 L3344: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1844;
    }
  goto ret0;

 L1806: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_register_operand (x3, DImode))
    {
      operands[3] = x3;
      goto L1807;
    }
  x3 = XEXP (x2, 0);
  goto L3344;

 L1807: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  switch (GET_CODE (x2))
    {
    case LABEL_REF:
      goto L1808;
    case PC:
      goto L1827;
    default:
     break;
   }
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L3344;

 L1808: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1809;

 L1809: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC
      && (!TARGET_MIPS16))
    {
      return 215;
    }
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L3344;

 L1827: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == LABEL_REF)
    goto L1828;
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L3344;

 L1828: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L1829;

 L1829: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 217;
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  x3 = XEXP (x2, 0);
  goto L3344;

 L1844: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT
      && XWINT (x3, 0) == 0)
    goto L1845;
  goto ret0;

 L1845: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (pc_or_label_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L1846;
    }
  goto ret0;

 L1846: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (pc_or_label_operand (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L1847;
    }
  goto ret0;

 L1847: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 219;
    }
  goto ret0;

 L2155: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  operands[0] = x2;
  goto L2156;

 L2156: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 272;
    }
 L2161: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && GET_CODE (operands[0]) != REG))
    {
      return 273;
    }
  goto ret0;

 L2278: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_CODE (x1) == UNSPEC
      && XVECLEN (x1, 0) == 1
      && XINT (x1, 1) == 1)
    goto L2279;
  goto ret0;

 L2279: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  operands[1] = x2;
  goto L2280;

 L2280: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_EMBEDDED_PIC
   && GET_CODE (operands[1]) == SYMBOL_REF)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 285;
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

  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == REG
      && XINT (x2, 0) == 28)
    goto L1475;
 L3345: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L39;
    }
 L3347: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L1254;
    }
  goto ret0;

 L1475: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == UNSPEC_VOLATILE
      && XVECLEN (x2, 0) == 2
      && XINT (x2, 1) == 2)
    goto L1476;
  x2 = XEXP (x1, 0);
  goto L3345;

 L1476: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  if (address_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L1477;
    }
  x2 = XEXP (x1, 0);
  goto L3345;

 L1477: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 1);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1478;
    }
  x2 = XEXP (x1, 0);
  goto L3345;

 L1478: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1479;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3345;

 L1479: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 1)
    {
      return 180;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3345;

 L39: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L3349;
  x2 = XEXP (x1, 0);
  goto L3347;

 L3349: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L40;
    case MINUS:
      goto L132;
    case MULT:
      goto L328;
    case DIV:
      goto L641;
    case UDIV:
      goto L691;
    case NEG:
      goto L936;
    case ASHIFT:
      goto L1592;
    case ASHIFTRT:
      goto L1643;
    case LSHIFTRT:
      goto L1700;
    default:
     break;
   }
  x2 = XEXP (x1, 0);
  goto L3347;

 L40: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L3359;
  x2 = XEXP (x1, 0);
  goto L3347;

 L3359: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == MULT)
    goto L467;
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L41;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L467: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (extend_operator (x4, DImode))
    {
      operands[3] = x4;
      goto L468;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L468: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SImode))
    {
      operands[1] = x5;
      goto L469;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L469: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (extend_operator (x4, DImode))
    {
      operands[4] = x4;
      goto L470;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L470: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SImode))
    {
      operands[2] = x5;
      goto L471;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L471: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[0]))
    goto L472;
  x2 = XEXP (x1, 0);
  goto L3347;

 L472: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L473;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L473: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L474;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L474: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MAD
   && ! TARGET_64BIT
   && GET_CODE (operands[3]) == GET_CODE (operands[4])))
    {
      return 44;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L41: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L42;
    }
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L51;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L42: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L43;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L43: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L44;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L44: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
    {
      return 6;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L51: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L52;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L52: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L53;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L53: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && (TARGET_GAS
       || GET_CODE (operands[2]) != CONST_INT
       || INTVAL (operands[2]) != -32768)))
    {
      return 7;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L132: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L133;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L133: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L134;
    }
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L143;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L134: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L135;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L135: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L136;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L136: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
    {
      return 20;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L143: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L144;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L144: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L145;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L145: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && INTVAL (operands[2]) != -32768))
    {
      return 21;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L328: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (extend_operator (x3, DImode))
    {
      operands[3] = x3;
      goto L329;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L329: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L330;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L330: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (extend_operator (x3, DImode))
    {
      operands[4] = x3;
      goto L331;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L331: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L332;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L332: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L333;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L333: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L334;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L334: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && GET_CODE (operands[3]) == GET_CODE (operands[4])))
    {
      return 38;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L641: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L642;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L642: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L643;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L643: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L644;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L644: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L645;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L645: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == MOD)
    goto L646;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L646: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L647;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L647: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[2])
      && (TARGET_64BIT && optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 59;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L691: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L692;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L692: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L693;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L693: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L694;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L694: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L695;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L695: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == UMOD)
    goto L696;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L696: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L697;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L697: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[2])
      && (TARGET_64BIT && optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 61;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L936: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L937;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L937: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L938;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L938: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L939;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L939: ATTRIBUTE_UNUSED_LABEL
  if ((! TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
    {
      return 83;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1592: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1593;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L1593: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1594;
    }
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L1603;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L1594: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1595;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1595: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1596;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1596: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
    {
      return 188;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1603: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1604;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1604: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1605;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1605: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && (INTVAL (operands[2]) & 32) != 0))
    {
      return 189;
    }
 L1614: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && (INTVAL (operands[2]) & 63) < 32
   && (INTVAL (operands[2]) & 63) != 0))
    {
      return 190;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1643: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1644;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L1644: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1645;
    }
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L1654;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L1645: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1646;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1646: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1647;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1647: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
    {
      return 195;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1654: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1655;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1655: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1656;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1656: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && (INTVAL (operands[2]) & 32) != 0))
    {
      return 196;
    }
 L1665: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && (INTVAL (operands[2]) & 63) < 32
   && (INTVAL (operands[2]) & 63) != 0))
    {
      return 197;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1700: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1701;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L1701: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1702;
    }
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L1711;
    }
  x2 = XEXP (x1, 0);
  goto L3347;

 L1702: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1703;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1703: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1704;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1704: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
    {
      return 203;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1711: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1712;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1712: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1713;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1713: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && (INTVAL (operands[2]) & 32) != 0))
    {
      return 204;
    }
 L1722: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && (INTVAL (operands[2]) & 63) < 32
   && (INTVAL (operands[2]) & 63) != 0))
    {
      return 205;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3347;

 L1254: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == FIX)
    goto L1255;
  goto ret0;

 L1255: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case DFmode:
      goto L3360;
    case SFmode:
      goto L3361;
    default:
      break;
    }
  goto ret0;

 L3360: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L1256;
    }
  goto ret0;

 L1256: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1257;
  goto ret0;

 L1257: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L1258;
    }
  goto ret0;

 L1258: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT))
    {
      return 137;
    }
  goto ret0;

 L3361: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L1269;
    }
  goto ret0;

 L1269: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1270;
  goto ret0;

 L1270: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L1271;
    }
  goto ret0;

 L1271: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT))
    {
      return 138;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_7 PARAMS ((rtx, rtx, int *));
static int
recog_7 (x0, insn, pnum_clobbers)
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

  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case DImode:
      goto L3348;
    case SImode:
      goto L3346;
    default:
      break;
    }
 L2172: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PC)
    goto L2173;
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L2272;
    }
  goto ret0;

 L3348: ATTRIBUTE_UNUSED_LABEL
  tem = recog_6 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  goto L2172;

 L3346: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L615;
    }
  goto L2172;

 L615: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode)
    goto L3362;
  x2 = XEXP (x1, 0);
  goto L2172;

 L3362: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case DIV:
      goto L616;
    case UDIV:
      goto L666;
    default:
     break;
   }
  x2 = XEXP (x1, 0);
  goto L2172;

 L616: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L617;
    }
  x2 = XEXP (x1, 0);
  goto L2172;

 L617: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L618;
    }
  x2 = XEXP (x1, 0);
  goto L2172;

 L618: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L619;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L619: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L620;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L620: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == MOD)
    goto L621;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L621: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L622;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L622: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[2])
      && (optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 58;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L666: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L667;
    }
  x2 = XEXP (x1, 0);
  goto L2172;

 L667: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L668;
    }
  x2 = XEXP (x1, 0);
  goto L2172;

 L668: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L669;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L669: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L670;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L670: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == UMOD)
    goto L671;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L671: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L672;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L672: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[2])
      && (optimize)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 60;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2172;

 L2173: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3366;
    case DImode:
      goto L3367;
    default:
      break;
    }
  goto ret0;

 L3366: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L2190;
    case MEM:
      goto L2224;
    case SUBREG:
    case REG:
      goto L3364;
    default:
      goto ret0;
   }
 L3364: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L2174;
    }
  goto ret0;

 L2190: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L2191;
    }
  goto ret0;

 L2191: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == LABEL_REF)
    goto L2192;
  goto ret0;

 L2192: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  operands[1] = x4;
  goto L2193;

 L2193: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L2194;
  goto ret0;

 L2194: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == LABEL_REF)
    goto L2195;
  goto ret0;

 L2195: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1])
      && (!(Pmode == DImode) && next_active_insn (insn) != 0
   && GET_CODE (PATTERN (next_active_insn (insn))) == ADDR_DIFF_VEC
   && PREV_INSN (next_active_insn (insn)) == operands[1]))
    {
      return 278;
    }
  goto ret0;

 L2224: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == PLUS)
    goto L2225;
  goto ret0;

 L2225: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == SImode
      && GET_CODE (x4) == MULT)
    goto L2226;
  goto ret0;

 L2226: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SImode))
    {
      operands[0] = x5;
      goto L2227;
    }
  goto ret0;

 L2227: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (GET_CODE (x5) == CONST_INT
      && XWINT (x5, 0) == 4)
    goto L2228;
  goto ret0;

 L2228: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == LABEL_REF)
    goto L2229;
  goto ret0;

 L2229: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  operands[1] = x5;
  goto L2230;

 L2230: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2231;
  goto ret0;

 L2231: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2232;
    }
  goto ret0;

 L2232: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_EMBEDDED_PIC)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 280;
    }
  goto ret0;

 L2174: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L2175;
  goto ret0;

 L2175: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == LABEL_REF)
    goto L2176;
  goto ret0;

 L2176: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L2177;

 L2177: ATTRIBUTE_UNUSED_LABEL
  if ((!(Pmode == DImode)))
    {
      return 276;
    }
  goto ret0;

 L3367: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L2200;
    case MEM:
      goto L2252;
    case SUBREG:
    case REG:
    case SIGN_EXTEND:
      goto L3365;
    default:
      goto ret0;
   }
 L3365: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L2182;
    }
  goto ret0;

 L2200: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L2201;
    }
  goto ret0;

 L2201: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == LABEL_REF)
    goto L2202;
  goto ret0;

 L2202: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  operands[1] = x4;
  goto L2203;

 L2203: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L2204;
  goto ret0;

 L2204: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == LABEL_REF)
    goto L2205;
  goto ret0;

 L2205: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1])
      && (Pmode == DImode && next_active_insn (insn) != 0
   && GET_CODE (PATTERN (next_active_insn (insn))) == ADDR_DIFF_VEC
   && PREV_INSN (next_active_insn (insn)) == operands[1]))
    {
      return 279;
    }
  goto ret0;

 L2252: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == PLUS)
    goto L2253;
  goto ret0;

 L2253: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == SIGN_EXTEND)
    goto L2254;
  goto ret0;

 L2254: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (GET_MODE (x5) == SImode
      && GET_CODE (x5) == MULT)
    goto L2255;
  goto ret0;

 L2255: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (register_operand (x6, SImode))
    {
      operands[0] = x6;
      goto L2256;
    }
  goto ret0;

 L2256: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 1);
  if (GET_CODE (x6) == CONST_INT
      && XWINT (x6, 0) == 4)
    goto L2257;
  goto ret0;

 L2257: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == LABEL_REF)
    goto L2258;
  goto ret0;

 L2258: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  operands[1] = x5;
  goto L2259;

 L2259: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2260;
  goto ret0;

 L2260: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2261;
    }
  goto ret0;

 L2261: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_EMBEDDED_PIC)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 281;
    }
  goto ret0;

 L2182: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L2183;
  goto ret0;

 L2183: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == LABEL_REF)
    goto L2184;
  goto ret0;

 L2184: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L2185;

 L2185: ATTRIBUTE_UNUSED_LABEL
  if ((Pmode == DImode))
    {
      return 277;
    }
  goto ret0;

 L2272: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  switch (GET_CODE (x2))
    {
    case UNSPEC:
      goto L3370;
    case CALL:
      goto L2349;
    default:
     break;
   }
  goto ret0;

 L3370: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x2, 0) == 1
      && XINT (x2, 1) == 1)
    goto L2273;
  goto ret0;

 L2273: ATTRIBUTE_UNUSED_LABEL
  x3 = XVECEXP (x2, 0, 0);
  operands[1] = x3;
  goto L2274;

 L2274: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2275;
  goto ret0;

 L2275: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 31
      && (TARGET_EMBEDDED_PIC
   && GET_CODE (operands[1]) == SYMBOL_REF))
    {
      return 285;
    }
  goto ret0;

 L2349: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_CODE (x3) == MEM)
    goto L2350;
 L2379: ATTRIBUTE_UNUSED_LABEL
  switch (GET_MODE (x3))
    {
    case SImode:
      goto L3371;
    case DImode:
      goto L3372;
    default:
      break;
    }
  goto ret0;

 L2350: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (call_insn_operand (x4, VOIDmode))
    {
      operands[1] = x4;
      goto L2351;
    }
  goto L2379;

 L2351: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L2352;

 L2352: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2353;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L2379;

 L2353: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2354;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L2379;

 L2354: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && !TARGET_ABICALLS && !TARGET_LONG_CALLS
   && GET_CODE (operands[3]) == REG && REGNO (operands[3]) == 31))
    {
      return 294;
    }
 L2364: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_ABICALLS && !TARGET_LONG_CALLS))
    {
      return 295;
    }
 L2374: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_ABICALLS && !TARGET_LONG_CALLS))
    {
      return 296;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L2379;

 L3371: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == MEM)
    goto L2380;
  goto ret0;

 L2380: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L2381;
    }
  goto ret0;

 L2381: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L2382;

 L2382: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2383;
  goto ret0;

 L2383: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2384;
    }
  goto ret0;

 L2384: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16 
   && !(Pmode == DImode) && !TARGET_ABICALLS && TARGET_LONG_CALLS))
    {
      return 297;
    }
 L2404: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && !(Pmode == DImode) && !TARGET_ABICALLS && TARGET_LONG_CALLS
   && GET_CODE (operands[3]) == REG && REGNO (operands[3]) == 31))
    {
      return 299;
    }
 L2414: ATTRIBUTE_UNUSED_LABEL
  if ((!(Pmode == DImode) && TARGET_ABICALLS && TARGET_LONG_CALLS))
    {
      return 300;
    }
  goto ret0;

 L3372: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x3) == MEM)
    goto L2390;
  goto ret0;

 L2390: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (se_register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L2391;
    }
  goto ret0;

 L2391: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L2392;

 L2392: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2393;
  goto ret0;

 L2393: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2394;
    }
  goto ret0;

 L2394: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16 
   && Pmode == DImode && !TARGET_ABICALLS && TARGET_LONG_CALLS))
    {
      return 298;
    }
 L2424: ATTRIBUTE_UNUSED_LABEL
  if ((Pmode == DImode && TARGET_ABICALLS && TARGET_LONG_CALLS))
    {
      return 301;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_8 PARAMS ((rtx, rtx, int *));
static int
recog_8 (x0, insn, pnum_clobbers)
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

  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L230;
    }
 L3379: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L1224;
    }
  goto ret0;

 L230: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode)
    goto L3380;
  x2 = XEXP (x1, 0);
  goto L3379;

 L3380: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case MULT:
      goto L231;
    case TRUNCATE:
      goto L368;
    case PLUS:
      goto L446;
    case DIV:
      goto L602;
    case UDIV:
      goto L652;
    case MOD:
      goto L756;
    case UMOD:
      goto L824;
    case FFS:
      goto L902;
    default:
     break;
   }
  x2 = XEXP (x1, 0);
  goto L3379;

 L231: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L232;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L232: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L233;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L233: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L234;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L234: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L235;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L235: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L236;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L236: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L237;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L237: ATTRIBUTE_UNUSED_LABEL
  if ((mips_cpu != PROCESSOR_R4000 || TARGET_MIPS16))
    {
      return 33;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L368: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (highpart_shift_operator (x3, DImode))
    {
      operands[5] = x3;
      goto L369;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L369: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == MULT)
    goto L370;
  x2 = XEXP (x1, 0);
  goto L3379;

 L370: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (extend_operator (x5, DImode))
    {
      operands[3] = x5;
      goto L371;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L371: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (register_operand (x6, SImode))
    {
      operands[1] = x6;
      goto L372;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L372: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (extend_operator (x5, DImode))
    {
      operands[4] = x5;
      goto L373;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L373: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (register_operand (x6, SImode))
    {
      operands[2] = x6;
      goto L374;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L374: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 32)
    goto L375;
  x2 = XEXP (x1, 0);
  goto L3379;

 L375: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L376;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L376: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L377;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L377: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L378;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L378: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L379;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L379: ATTRIBUTE_UNUSED_LABEL
  if ((GET_CODE (operands[3]) == GET_CODE (operands[4])))
    {
      return 40;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L446: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == MULT)
    goto L447;
  x2 = XEXP (x1, 0);
  goto L3379;

 L447: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L448;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L448: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L449;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L449: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[0]))
    goto L450;
  x2 = XEXP (x1, 0);
  goto L3379;

 L450: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L451;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L451: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L452;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L452: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L453;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L453: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L454;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L454: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MAD))
    {
      return 43;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L602: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L603;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L603: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L604;
    }
 L723: ATTRIBUTE_UNUSED_LABEL
  if (nonmemory_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L724;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L604: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L605;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L723;

 L605: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L606;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L723;

 L606: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == MOD)
    goto L607;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L723;

 L607: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L608;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L723;

 L608: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[2]))
    goto L609;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L723;

 L609: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L610;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L723;

 L610: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L611;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L723;

 L611: ATTRIBUTE_UNUSED_LABEL
  if ((optimize))
    {
      return 58;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L723;

 L724: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L725;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L725: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L726;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L726: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L727;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L727: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L728;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L728: ATTRIBUTE_UNUSED_LABEL
  if ((!optimize))
    {
      return 64;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L652: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L653;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L653: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L654;
    }
 L791: ATTRIBUTE_UNUSED_LABEL
  if (nonmemory_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L792;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L654: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L655;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L791;

 L655: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L656;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L791;

 L656: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == UMOD)
    goto L657;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L791;

 L657: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L658;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L791;

 L658: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[2]))
    goto L659;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L791;

 L659: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L660;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L791;

 L660: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L661;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L791;

 L661: ATTRIBUTE_UNUSED_LABEL
  if ((optimize))
    {
      return 60;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L791;

 L792: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L793;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L793: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L794;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L794: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L795;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L795: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L796;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L796: ATTRIBUTE_UNUSED_LABEL
  if ((!optimize))
    {
      return 68;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L756: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L757;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L757: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (nonmemory_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L758;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L758: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L759;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L759: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L760;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L760: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L761;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L761: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L762;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L762: ATTRIBUTE_UNUSED_LABEL
  if ((!optimize))
    {
      return 66;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L824: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L825;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L825: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (nonmemory_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L826;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L826: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L827;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L827: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L828;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L828: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L829;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L829: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L830;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L830: ATTRIBUTE_UNUSED_LABEL
  if ((!optimize))
    {
      return 70;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L902: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L903;
    }
  x2 = XEXP (x1, 0);
  goto L3379;

 L903: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L904;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L904: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L905;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L905: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L906;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L906: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L907;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L907: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 80;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L3379;

 L1224: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == FIX)
    goto L1225;
  goto ret0;

 L1225: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  switch (GET_MODE (x3))
    {
    case DFmode:
      goto L3388;
    case SFmode:
      goto L3389;
    default:
      break;
    }
  goto ret0;

 L3388: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L1226;
    }
  goto ret0;

 L1226: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1227;
  goto ret0;

 L1227: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1228;
    }
  goto ret0;

 L1228: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L1229;
  goto ret0;

 L1229: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DFmode))
    {
      operands[3] = x2;
      goto L1230;
    }
  goto ret0;

 L1230: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT))
    {
      return 135;
    }
  goto ret0;

 L3389: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L1241;
    }
  goto ret0;

 L1241: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1242;
  goto ret0;

 L1242: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1243;
    }
  goto ret0;

 L1243: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L1244;
  goto ret0;

 L1244: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SFmode))
    {
      operands[3] = x2;
      goto L1245;
    }
  goto ret0;

 L1245: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_HARD_FLOAT))
    {
      return 136;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_9 PARAMS ((rtx, rtx, int *));
static int
recog_9 (x0, insn, pnum_clobbers)
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

  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  switch (GET_CODE (x2))
    {
    case MULT:
      goto L292;
    case TRUNCATE:
      goto L394;
    case PLUS:
      goto L488;
    case DIV:
      goto L627;
    case UDIV:
      goto L677;
    case MOD:
      goto L773;
    case UMOD:
      goto L841;
    case FFS:
      goto L917;
    default:
     break;
   }
  goto ret0;

 L292: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode)
    goto L3398;
  goto ret0;

 L3398: ATTRIBUTE_UNUSED_LABEL
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L293;
    }
 L3399: ATTRIBUTE_UNUSED_LABEL
  if (extend_operator (x3, DImode))
    {
      operands[3] = x3;
      goto L348;
    }
  goto ret0;

 L293: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L294;
    }
  x3 = XEXP (x2, 0);
  goto L3399;

 L294: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L295;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L3399;

 L295: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L296;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L3399;

 L296: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L297;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L3399;

 L297: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L298;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L3399;

 L298: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && mips_cpu != PROCESSOR_R4000 && !TARGET_MIPS16))
    {
      return 36;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L3399;

 L348: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L349;
    }
  goto ret0;

 L349: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (extend_operator (x3, DImode))
    {
      operands[4] = x3;
      goto L350;
    }
  goto ret0;

 L350: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L351;
    }
  goto ret0;

 L351: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L352;
  goto ret0;

 L352: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[5] = x2;
      goto L353;
    }
  goto ret0;

 L353: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L354;
  goto ret0;

 L354: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[6] = x2;
      goto L355;
    }
  goto ret0;

 L355: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && GET_CODE (operands[3]) == GET_CODE (operands[4])))
    {
      return 39;
    }
  goto ret0;

 L394: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == TImode
      && GET_CODE (x3) == LSHIFTRT)
    goto L395;
  goto ret0;

 L395: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == TImode
      && GET_CODE (x4) == MULT)
    goto L396;
  goto ret0;

 L396: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (GET_MODE (x5) == TImode)
    goto L3400;
  goto ret0;

 L3400: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x5))
    {
    case SIGN_EXTEND:
      goto L397;
    case ZERO_EXTEND:
      goto L423;
    default:
     break;
   }
  goto ret0;

 L397: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (se_register_operand (x6, DImode))
    {
      operands[1] = x6;
      goto L398;
    }
  goto ret0;

 L398: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (GET_MODE (x5) == TImode
      && GET_CODE (x5) == SIGN_EXTEND)
    goto L399;
  goto ret0;

 L399: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (se_register_operand (x6, DImode))
    {
      operands[2] = x6;
      goto L400;
    }
  goto ret0;

 L400: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 64)
    goto L401;
  goto ret0;

 L401: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L402;
  goto ret0;

 L402: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L403;
    }
  goto ret0;

 L403: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L404;
  goto ret0;

 L404: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L405;
    }
  goto ret0;

 L405: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 41;
    }
  goto ret0;

 L423: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (se_register_operand (x6, DImode))
    {
      operands[1] = x6;
      goto L424;
    }
  goto ret0;

 L424: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (GET_MODE (x5) == TImode
      && GET_CODE (x5) == ZERO_EXTEND)
    goto L425;
  goto ret0;

 L425: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (se_register_operand (x6, DImode))
    {
      operands[2] = x6;
      goto L426;
    }
  goto ret0;

 L426: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == CONST_INT
      && XWINT (x4, 0) == 64)
    goto L427;
  goto ret0;

 L427: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L428;
  goto ret0;

 L428: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L429;
    }
  goto ret0;

 L429: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L430;
  goto ret0;

 L430: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L431;
    }
  goto ret0;

 L431: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT))
    {
      return 42;
    }
  goto ret0;

 L488: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == MULT)
    goto L489;
  goto ret0;

 L489: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (extend_operator (x4, DImode))
    {
      operands[3] = x4;
      goto L490;
    }
  goto ret0;

 L490: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SImode))
    {
      operands[1] = x5;
      goto L491;
    }
  goto ret0;

 L491: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (extend_operator (x4, DImode))
    {
      operands[4] = x4;
      goto L492;
    }
  goto ret0;

 L492: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SImode))
    {
      operands[2] = x5;
      goto L493;
    }
  goto ret0;

 L493: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[0]))
    goto L494;
  goto ret0;

 L494: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L495;
  goto ret0;

 L495: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L496;
    }
  goto ret0;

 L496: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L497;
  goto ret0;

 L497: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L498;
    }
  goto ret0;

 L498: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MAD
   && TARGET_64BIT
   && GET_CODE (operands[3]) == GET_CODE (operands[4])))
    {
      return 45;
    }
  goto ret0;

 L627: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L628;
    }
  goto ret0;

 L628: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L629;
    }
 L740: ATTRIBUTE_UNUSED_LABEL
  if (se_nonmemory_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L741;
    }
  goto ret0;

 L629: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L630;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L740;

 L630: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L631;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L740;

 L631: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == MOD)
    goto L632;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L740;

 L632: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L633;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L740;

 L633: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[2]))
    goto L634;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L740;

 L634: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L635;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L740;

 L635: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[6] = x2;
      goto L636;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L740;

 L636: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && optimize))
    {
      return 59;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L740;

 L741: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L742;
  goto ret0;

 L742: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L743;
    }
  goto ret0;

 L743: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L744;
  goto ret0;

 L744: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L745;
    }
  goto ret0;

 L745: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !optimize))
    {
      return 65;
    }
  goto ret0;

 L677: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L678;
    }
  goto ret0;

 L678: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L679;
    }
 L808: ATTRIBUTE_UNUSED_LABEL
  if (se_nonmemory_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L809;
    }
  goto ret0;

 L679: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L680;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L808;

 L680: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L681;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L808;

 L681: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == UMOD)
    goto L682;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L808;

 L682: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[1]))
    goto L683;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L808;

 L683: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[2]))
    goto L684;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L808;

 L684: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L685;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L808;

 L685: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[6] = x2;
      goto L686;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L808;

 L686: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && optimize))
    {
      return 61;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 1);
  goto L808;

 L809: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L810;
  goto ret0;

 L810: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L811;
    }
  goto ret0;

 L811: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L812;
  goto ret0;

 L812: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L813;
    }
  goto ret0;

 L813: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !optimize))
    {
      return 69;
    }
  goto ret0;

 L773: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L774;
    }
  goto ret0;

 L774: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_nonmemory_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L775;
    }
  goto ret0;

 L775: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L776;
  goto ret0;

 L776: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L777;
    }
  goto ret0;

 L777: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L778;
  goto ret0;

 L778: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L779;
    }
  goto ret0;

 L779: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !optimize))
    {
      return 67;
    }
  goto ret0;

 L841: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L842;
    }
  goto ret0;

 L842: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (se_nonmemory_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L843;
    }
  goto ret0;

 L843: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L844;
  goto ret0;

 L844: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L845;
    }
  goto ret0;

 L845: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L846;
  goto ret0;

 L846: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L847;
    }
  goto ret0;

 L847: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !optimize))
    {
      return 71;
    }
  goto ret0;

 L917: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L918;
    }
  goto ret0;

 L918: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L919;
  goto ret0;

 L919: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L920;
    }
  goto ret0;

 L920: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L921;
  goto ret0;

 L921: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L922;
    }
  goto ret0;

 L922: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && !TARGET_MIPS16))
    {
      return 81;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_10 PARAMS ((rtx, rtx, int *));
static int
recog_10 (x0, insn, pnum_clobbers)
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
      goto L37;
    case 4:
      goto L209;
    case 3:
      goto L228;
    case 5:
      goto L264;
    case 8:
      goto L1487;
    default:
      break;
    }
  goto ret0;

 L37: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  switch (GET_CODE (x1))
    {
    case SET:
      goto L38;
    case TRAP_IF:
      goto L706;
    case USE:
      goto L2267;
    case CALL:
      goto L2283;
    default:
     break;
   }
  goto ret0;

 L38: ATTRIBUTE_UNUSED_LABEL
  return recog_7 (x0, insn, pnum_clobbers);

 L706: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == EQ)
    goto L707;
  goto ret0;

 L707: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L708;
    }
  goto ret0;

 L708: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (true_reg_or_0_operand (x3, VOIDmode))
    {
      operands[1] = x3;
      goto L709;
    }
  goto ret0;

 L709: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (immediate_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L710;
    }
  goto ret0;

 L710: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L711;
  goto ret0;

 L711: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 24
      && (TARGET_MIPS16))
    {
      return 63;
    }
  goto ret0;

 L2267: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (pmode_register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L2268;
    }
  goto ret0;

 L2268: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == RETURN)
    {
      return 284;
    }
  goto ret0;

 L2283: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == MEM)
    goto L2284;
 L2307: ATTRIBUTE_UNUSED_LABEL
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3373;
    case DImode:
      goto L3374;
    default:
      break;
    }
  goto ret0;

 L2284: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (call_insn_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L2285;
    }
  goto L2307;

 L2285: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L2286;

 L2286: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2287;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2307;

 L2287: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2288;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2307;

 L2288: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && !TARGET_ABICALLS && !TARGET_LONG_CALLS
   && GET_CODE (operands[2]) == REG && REGNO (operands[2]) == 31))
    {
      return 286;
    }
 L2296: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_ABICALLS && !TARGET_LONG_CALLS))
    {
      return 287;
    }
 L2304: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_ABICALLS && !TARGET_LONG_CALLS))
    {
      return 288;
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L2307;

 L3373: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MEM)
    goto L2308;
  goto ret0;

 L2308: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L2309;
    }
  goto ret0;

 L2309: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L2310;

 L2310: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2311;
  goto ret0;

 L2311: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2312;
    }
  goto ret0;

 L2312: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16
   && !(Pmode == DImode) && !TARGET_ABICALLS && TARGET_LONG_CALLS))
    {
      return 289;
    }
 L2328: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && !(Pmode == DImode) && !TARGET_ABICALLS && TARGET_LONG_CALLS
   && GET_CODE (operands[2]) == REG && REGNO (operands[2]) == 31))
    {
      return 291;
    }
 L2336: ATTRIBUTE_UNUSED_LABEL
  if ((!(Pmode == DImode) && TARGET_ABICALLS && TARGET_LONG_CALLS))
    {
      return 292;
    }
  goto ret0;

 L3374: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MEM)
    goto L2316;
  goto ret0;

 L2316: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L2317;
    }
  goto ret0;

 L2317: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L2318;

 L2318: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2319;
  goto ret0;

 L2319: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2320;
    }
  goto ret0;

 L2320: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16
   && Pmode == DImode && !TARGET_ABICALLS && TARGET_LONG_CALLS))
    {
      return 290;
    }
 L2344: ATTRIBUTE_UNUSED_LABEL
  if ((Pmode == DImode && TARGET_ABICALLS && TARGET_LONG_CALLS))
    {
      return 293;
    }
  goto ret0;

 L209: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L210;
  goto ret0;

 L210: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3375;
    case DImode:
      goto L3376;
    default:
      break;
    }
  goto ret0;

 L3375: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L211;
    }
  goto ret0;

 L211: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == MULT)
    goto L212;
  goto ret0;

 L212: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L213;
    }
  goto ret0;

 L213: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L214;
    }
  goto ret0;

 L214: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L215;
  goto ret0;

 L215: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L216;
    }
  goto ret0;

 L216: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L217;
  goto ret0;

 L217: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L218;
    }
  goto ret0;

 L218: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 3);
  if (GET_CODE (x1) == CLOBBER)
    goto L219;
  goto ret0;

 L219: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L220;
    }
  goto ret0;

 L220: ATTRIBUTE_UNUSED_LABEL
  if ((GENERATE_MULT3
   || TARGET_MAD))
    {
      return 32;
    }
 L256: ATTRIBUTE_UNUSED_LABEL
  if ((mips_cpu == PROCESSOR_R4000 && !TARGET_MIPS16))
    {
      return 34;
    }
  goto ret0;

 L3376: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L308;
    }
  goto ret0;

 L308: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == MULT)
    goto L309;
  goto ret0;

 L309: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L310;
    }
  goto ret0;

 L310: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L311;
    }
  goto ret0;

 L311: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L312;
  goto ret0;

 L312: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L313;
    }
  goto ret0;

 L313: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L314;
  goto ret0;

 L314: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L315;
    }
  goto ret0;

 L315: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 3);
  if (GET_CODE (x1) == CLOBBER)
    goto L316;
  goto ret0;

 L316: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, DImode))
    {
      operands[5] = x2;
      goto L317;
    }
  goto ret0;

 L317: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && (GENERATE_MULT3 || mips_cpu == PROCESSOR_R4000 || TARGET_MIPS16)))
    {
      return 37;
    }
  goto ret0;

 L228: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L229;
  goto ret0;

 L229: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3377;
    case DImode:
      goto L3378;
    default:
      break;
    }
 L2208: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == PC)
    goto L2209;
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L2428;
    }
  goto ret0;

 L3377: ATTRIBUTE_UNUSED_LABEL
  tem = recog_8 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  goto L2208;

 L3378: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L291;
    }
  goto L2208;

 L291: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L3390;
  x2 = XEXP (x1, 0);
  goto L2208;

 L3390: ATTRIBUTE_UNUSED_LABEL
  tem = recog_9 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  x2 = XEXP (x1, 0);
  goto L2208;

 L2209: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L3402;
    case DImode:
      goto L3403;
    default:
      break;
    }
  goto ret0;

 L3402: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MEM)
    goto L2210;
  goto ret0;

 L2210: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == PLUS)
    goto L2211;
  goto ret0;

 L2211: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == SImode
      && GET_CODE (x4) == MULT)
    goto L2212;
  goto ret0;

 L2212: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (register_operand (x5, SImode))
    {
      operands[0] = x5;
      goto L2213;
    }
  goto ret0;

 L2213: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 1);
  if (GET_CODE (x5) == CONST_INT
      && XWINT (x5, 0) == 4)
    goto L2214;
  goto ret0;

 L2214: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == LABEL_REF)
    goto L2215;
  goto ret0;

 L2215: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  operands[1] = x5;
  goto L2216;

 L2216: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2217;
  goto ret0;

 L2217: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2218;
    }
  goto ret0;

 L2218: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L2219;
  goto ret0;

 L2219: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 31
      && (TARGET_EMBEDDED_PIC))
    {
      return 280;
    }
  goto ret0;

 L3403: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == MEM)
    goto L2237;
  goto ret0;

 L2237: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == DImode
      && GET_CODE (x3) == PLUS)
    goto L2238;
  goto ret0;

 L2238: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (GET_MODE (x4) == DImode
      && GET_CODE (x4) == SIGN_EXTEND)
    goto L2239;
  goto ret0;

 L2239: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  if (GET_MODE (x5) == SImode
      && GET_CODE (x5) == MULT)
    goto L2240;
  goto ret0;

 L2240: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 0);
  if (register_operand (x6, SImode))
    {
      operands[0] = x6;
      goto L2241;
    }
  goto ret0;

 L2241: ATTRIBUTE_UNUSED_LABEL
  x6 = XEXP (x5, 1);
  if (GET_CODE (x6) == CONST_INT
      && XWINT (x6, 0) == 4)
    goto L2242;
  goto ret0;

 L2242: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (GET_CODE (x4) == LABEL_REF)
    goto L2243;
  goto ret0;

 L2243: ATTRIBUTE_UNUSED_LABEL
  x5 = XEXP (x4, 0);
  operands[1] = x5;
  goto L2244;

 L2244: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2245;
  goto ret0;

 L2245: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2246;
    }
  goto ret0;

 L2246: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L2247;
  goto ret0;

 L2247: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 31
      && (TARGET_EMBEDDED_PIC))
    {
      return 281;
    }
  goto ret0;

 L2428: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L2429;
  goto ret0;

 L2429: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_CODE (x3) == MEM)
    goto L2430;
  goto ret0;

 L2430: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (call_insn_operand (x4, VOIDmode))
    {
      operands[1] = x4;
      goto L2431;
    }
  goto ret0;

 L2431: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L2432;

 L2432: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == SET)
    goto L2433;
  goto ret0;

 L2433: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2434;
    }
  goto ret0;

 L2434: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L2435;
  goto ret0;

 L2435: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_CODE (x3) == MEM)
    goto L2436;
  goto ret0;

 L2436: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (rtx_equal_p (x4, operands[1]))
    goto L2437;
  goto ret0;

 L2437: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (rtx_equal_p (x3, operands[2]))
    goto L2438;
  goto ret0;

 L2438: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L2439;
  goto ret0;

 L2439: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L2440;
    }
  goto ret0;

 L2440: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_ABICALLS && !TARGET_LONG_CALLS))
    {
      return 302;
    }
 L2456: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_ABICALLS && !TARGET_LONG_CALLS))
    {
      return 303;
    }
  goto ret0;

 L264: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L265;
  goto ret0;

 L265: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L266;
    }
  goto ret0;

 L266: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == PLUS)
    goto L267;
  goto ret0;

 L267: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == MULT)
    goto L268;
  goto ret0;

 L268: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L269;
    }
  goto ret0;

 L269: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L270;
    }
  goto ret0;

 L270: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[3] = x3;
      goto L271;
    }
  goto ret0;

 L271: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L272;
  goto ret0;

 L272: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L273;
    }
  goto ret0;

 L273: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L274;
  goto ret0;

 L274: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L275;
    }
  goto ret0;

 L275: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 3);
  if (GET_CODE (x1) == CLOBBER)
    goto L276;
  goto ret0;

 L276: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L277;
    }
  goto ret0;

 L277: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 4);
  if (GET_CODE (x1) == CLOBBER)
    goto L278;
  goto ret0;

 L278: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L279;
    }
  goto ret0;

 L279: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS3900
   && !TARGET_MIPS16))
    {
      return 35;
    }
  goto ret0;

 L1487: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L1488;
  goto ret0;

 L1488: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (memory_operand (x2, BLKmode))
    {
      operands[0] = x2;
      goto L1489;
    }
  goto ret0;

 L1489: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (memory_operand (x2, BLKmode))
    {
      operands[1] = x2;
      goto L1490;
    }
  goto ret0;

 L1490: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L1491;
  goto ret0;

 L1491: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L1492;
    }
  goto ret0;

 L1492: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L1493;
  goto ret0;

 L1493: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L1494;
    }
  goto ret0;

 L1494: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 3);
  if (GET_CODE (x1) == CLOBBER)
    goto L1495;
  goto ret0;

 L1495: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L1496;
    }
  goto ret0;

 L1496: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 4);
  if (GET_CODE (x1) == CLOBBER)
    goto L1497;
  goto ret0;

 L1497: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L1498;
    }
  goto ret0;

 L1498: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 5);
  if (GET_CODE (x1) == USE)
    goto L1499;
  goto ret0;

 L1499: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (small_int (x2, SImode))
    {
      operands[2] = x2;
      goto L1500;
    }
  goto ret0;

 L1500: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 6);
  if (GET_CODE (x1) == USE)
    goto L1501;
  goto ret0;

 L1501: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (small_int (x2, SImode))
    {
      operands[3] = x2;
      goto L1502;
    }
  goto ret0;

 L1502: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 7);
  if (GET_CODE (x1) == USE)
    goto L1503;
  goto ret0;

 L1503: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == CONST_INT)
    goto L3404;
  goto ret0;

 L3404: ATTRIBUTE_UNUSED_LABEL
  switch ((int) XWINT (x2, 0))
    {
    case 0:
      goto L3409;
    case 1:
      goto L3411;
    case 2:
      goto L3413;
    default:
      break;
    }
  goto ret0;

 L3409: ATTRIBUTE_UNUSED_LABEL
  return 181;
 L3410: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 182;
    }
  goto ret0;

 L3411: ATTRIBUTE_UNUSED_LABEL
  return 183;
 L3412: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 184;
    }
  goto ret0;

 L3413: ATTRIBUTE_UNUSED_LABEL
  return 185;
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
      goto L3073;
    case TRAP_IF:
      goto L699;
    case UNSPEC_VOLATILE:
      goto L3078;
    case RETURN:
      goto L3079;
    case CONST_INT:
      goto L3080;
    default:
     break;
   }
  goto ret0;

 L1: ATTRIBUTE_UNUSED_LABEL
  return recog_5 (x0, insn, pnum_clobbers);

 L3073: ATTRIBUTE_UNUSED_LABEL
  return recog_10 (x0, insn, pnum_clobbers);

 L699: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 0);
  if (GET_CODE (x1) == EQ)
    goto L700;
  goto ret0;

 L700: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L701;
    }
  goto ret0;

 L701: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (true_reg_or_0_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L702;
    }
  goto ret0;

 L702: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (immediate_operand (x1, VOIDmode))
    {
      operands[2] = x1;
      goto L703;
    }
  goto ret0;

 L703: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_MIPS16))
    {
      return 62;
    }
 L717: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16)
      && pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 63;
    }
  goto ret0;

 L3078: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x0, 0) == 1)
    goto L3414;
  goto ret0;

 L3414: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x0, 1))
    {
    case 0:
      goto L2263;
    case 10:
      goto L2567;
    case 11:
      goto L2570;
    case 12:
      goto L2573;
    case 13:
      goto L2576;
    case 14:
      goto L2579;
    case 15:
      goto L2582;
    case 16:
      goto L2585;
    case 17:
      goto L2587;
    case 18:
      goto L2589;
    default:
      break;
    }
  goto ret0;

 L2263: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == CONST_INT
      && XWINT (x1, 0) == 0)
    {
      return 282;
    }
  goto ret0;

 L2567: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (consttable_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L2568;
    }
  goto ret0;

 L2568: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 317;
    }
  goto ret0;

 L2570: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (consttable_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L2571;
    }
  goto ret0;

 L2571: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 318;
    }
  goto ret0;

 L2573: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (consttable_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2574;
    }
  goto ret0;

 L2574: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 319;
    }
  goto ret0;

 L2576: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (consttable_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2577;
    }
  goto ret0;

 L2577: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 320;
    }
  goto ret0;

 L2579: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (consttable_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L2580;
    }
  goto ret0;

 L2580: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 321;
    }
  goto ret0;

 L2582: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (consttable_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L2583;
    }
  goto ret0;

 L2583: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return 322;
    }
  goto ret0;

 L2585: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == CONST_INT
      && XWINT (x1, 0) == 0
      && (TARGET_MIPS16))
    {
      return 323;
    }
  goto ret0;

 L2587: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == CONST_INT
      && XWINT (x1, 0) == 0
      && (TARGET_MIPS16))
    {
      return 324;
    }
  goto ret0;

 L2589: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == CONST_INT
      && XWINT (x1, 0) == 0
      && (TARGET_MIPS16))
    {
      return 325;
    }
  goto ret0;

 L3079: ATTRIBUTE_UNUSED_LABEL
  if ((mips_can_use_return_insn ()))
    {
      return 283;
    }
  goto ret0;

 L3080: ATTRIBUTE_UNUSED_LABEL
  if (XWINT (x0, 0) == 0)
    {
      return 304;
    }
  goto ret0;
 ret0:
  return -1;
}

static rtx split_1 PARAMS ((rtx, rtx));
static rtx
split_1 (x0, insn)
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

  x1 = XEXP (x0, 0);
  switch (GET_MODE (x1))
    {
    case SImode:
      goto L3427;
    case DImode:
      goto L3428;
    case HImode:
      goto L3429;
    case QImode:
      goto L3430;
    case DFmode:
      goto L3431;
    default:
      break;
    }
  goto ret0;

 L3427: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2600;
    }
  goto ret0;

 L2600: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L3432;
 L2796: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == CONST_INT)
    goto L3444;
  goto ret0;

 L3432: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L2601;
    case MINUS:
      goto L2661;
    case MEM:
      goto L2801;
    case ASHIFT:
      goto L2854;
    case ASHIFTRT:
      goto L2902;
    case LSHIFTRT:
      goto L2950;
    case EQ:
      goto L3004;
    case NE:
      goto L3016;
    case GE:
      goto L3028;
    case LE:
      goto L3040;
    case GEU:
      goto L3052;
    case LEU:
      goto L3064;
    default:
     break;
   }
  goto L2796;

 L2601: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (rtx_equal_p (x2, operands[0]))
    goto L2602;
 L2607: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2608;
    }
  goto L2796;

 L2602: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[1] = x2;
      goto L2603;
    }
  x2 = XEXP (x1, 0);
  goto L2607;

 L2603: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && ((INTVAL (operands[1]) > 0x7f
	&& INTVAL (operands[1]) <= 0x7f + 0x7f)
       || (INTVAL (operands[1]) < - 0x80
	   && INTVAL (operands[1]) >= - 0x80 - 0x80))))
    {
      return gen_split_329 (operands);
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2607;

 L2608: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L2609;
    }
  goto L2796;

 L2609: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG
   && M16_REG_P (REGNO (operands[1]))
   && REGNO (operands[0]) != REGNO (operands[1])
   && GET_CODE (operands[2]) == CONST_INT
   && ((INTVAL (operands[2]) > 0x7
	&& INTVAL (operands[2]) <= 0x7 + 0x7f)
       || (INTVAL (operands[2]) < - 0x8
	   && INTVAL (operands[2]) >= - 0x8 - 0x80))))
    {
      return gen_split_330 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L2661: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (rtx_equal_p (x2, operands[0]))
    goto L2662;
 L2667: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2668;
    }
  goto L2796;

 L2662: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[1] = x2;
      goto L2663;
    }
  x2 = XEXP (x1, 0);
  goto L2667;

 L2663: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && ((INTVAL (operands[1]) > 0x80
	&& INTVAL (operands[1]) <= 0x80 + 0x80)
       || (INTVAL (operands[1]) < - 0x7f
	   && INTVAL (operands[1]) >= - 0x7f - 0x7f))))
    {
      return gen_split_339 (operands);
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2667;

 L2668: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L2669;
    }
  goto L2796;

 L2669: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG
   && M16_REG_P (REGNO (operands[1]))
   && REGNO (operands[0]) != REGNO (operands[1])
   && GET_CODE (operands[2]) == CONST_INT
   && ((INTVAL (operands[2]) > 0x8
	&& INTVAL (operands[2]) <= 0x8 + 0x80)
       || (INTVAL (operands[2]) < - 0x7
	   && INTVAL (operands[2]) >= - 0x7 - 0x7f))))
    {
      return gen_split_340 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L2801: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == PLUS)
    goto L2802;
  goto L2796;

 L2802: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[0]))
    goto L2803;
  goto L2796;

 L2803: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[1] = x3;
      goto L2804;
    }
  goto L2796;

 L2804: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && ((INTVAL (operands[1]) < 0
	&& INTVAL (operands[1]) >= -0x80)
       || (INTVAL (operands[1]) >= 32 * 4
	   && INTVAL (operands[1]) <= 31 * 4 + 0x7c)
       || (INTVAL (operands[1]) >= 0
	   && INTVAL (operands[1]) < 32 * 4
	   && (INTVAL (operands[1]) & 3) != 0))))
    {
      return gen_split_408 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L2854: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2855;
    }
  goto L2796;

 L2855: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L2856;
    }
  goto L2796;

 L2856: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && reload_completed
   && GET_CODE (operands[2]) == CONST_INT
   && INTVAL (operands[2]) > 8
   && INTVAL (operands[2]) <= 16))
    {
      return gen_split_425 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L2902: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2903;
    }
  goto L2796;

 L2903: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L2904;
    }
  goto L2796;

 L2904: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && reload_completed
   && GET_CODE (operands[2]) == CONST_INT
   && INTVAL (operands[2]) > 8
   && INTVAL (operands[2]) <= 16))
    {
      return gen_split_433 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L2950: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode)
    goto L3446;
  goto L2796;

 L3446: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2951;
    }
 L3447: ATTRIBUTE_UNUSED_LABEL
  if (memory_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2957;
    }
  goto L2796;

 L2951: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L2952;
    }
  x2 = XEXP (x1, 0);
  goto L3447;

 L2952: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && reload_completed
   && GET_CODE (operands[2]) == CONST_INT
   && INTVAL (operands[2]) > 8
   && INTVAL (operands[2]) <= 16))
    {
      return gen_split_441 (operands);
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L3447;

 L2957: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (immediate_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2958;
    }
  goto L2796;

 L2958: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16))
    {
      return gen_split_442 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L3004: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3005;
    }
  goto L2796;

 L3005: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3006;
    }
  goto L2796;

 L3006: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE && !TARGET_MIPS16
    && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != 0)))
    {
      return gen_split_466 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L3016: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3017;
    }
  goto L2796;

 L3017: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3018;
    }
  goto L2796;

 L3018: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE && !TARGET_MIPS16
    && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != 0)))
    {
      return gen_split_469 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L3028: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3029;
    }
  goto L2796;

 L3029: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3030;
    }
  goto L2796;

 L3030: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE && !TARGET_MIPS16))
    {
      return gen_split_473 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L3040: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3041;
    }
  goto L2796;

 L3041: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3042;
    }
  goto L2796;

 L3042: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE && !TARGET_MIPS16))
    {
      return gen_split_477 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L3052: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3053;
    }
  goto L2796;

 L3053: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3054;
    }
  goto L2796;

 L3054: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE && !TARGET_MIPS16))
    {
      return gen_split_481 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L3064: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3065;
    }
  goto L2796;

 L3065: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3066;
    }
  goto L2796;

 L3066: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE && !TARGET_MIPS16))
    {
      return gen_split_485 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L2796;

 L3444: ATTRIBUTE_UNUSED_LABEL
  if (large_int (x1, SImode))
    {
      operands[1] = x1;
      goto L2797;
    }
 L3445: ATTRIBUTE_UNUSED_LABEL
  operands[1] = x1;
  goto L2808;

 L2797: ATTRIBUTE_UNUSED_LABEL
  if ((!TARGET_DEBUG_D_MODE && !TARGET_MIPS16))
    {
      return gen_split_406 (operands);
    }
  x1 = XEXP (x0, 1);
  goto L3445;

 L2808: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && INTVAL (operands[1]) >= 0x100
   && INTVAL (operands[1]) <= 0xff + 0x7f))
    {
      return gen_split_409 (operands);
    }
 L2812: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && INTVAL (operands[1]) < 0
   && INTVAL (operands[1]) > - 0x8000))
    {
      return gen_split_410 (operands);
    }
  goto ret0;

 L3428: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2648;
    }
  goto ret0;

 L2648: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == DImode)
    goto L3448;
  goto ret0;

 L3448: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L2649;
    case MINUS:
      goto L2709;
    case NOT:
      goto L2755;
    case AND:
      goto L2760;
    case IOR:
      goto L2766;
    case XOR:
      goto L2772;
    case MEM:
      goto L2790;
    case ASHIFT:
      goto L2896;
    case ASHIFTRT:
      goto L2944;
    case LSHIFTRT:
      goto L2998;
    case EQ:
      goto L3010;
    case NE:
      goto L3022;
    case GE:
      goto L3034;
    case LE:
      goto L3046;
    case GEU:
      goto L3058;
    case LEU:
      goto L3070;
    case SUBREG:
    case REG:
      goto L3454;
    default:
      goto ret0;
   }
 L3454: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L2786;
    }
  goto ret0;

 L2649: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (rtx_equal_p (x2, operands[0]))
    goto L2650;
 L2655: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2656;
    }
  goto ret0;

 L2650: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[1] = x2;
      goto L2651;
    }
  x2 = XEXP (x1, 0);
  goto L2655;

 L2651: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && ((INTVAL (operands[1]) > 0xf
	&& INTVAL (operands[1]) <= 0xf + 0xf)
       || (INTVAL (operands[1]) < - 0x10
	   && INTVAL (operands[1]) >= - 0x10 - 0x10))))
    {
      return gen_split_336 (operands);
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2655;

 L2656: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L2657;
    }
  goto ret0;

 L2657: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG
   && M16_REG_P (REGNO (operands[1]))
   && REGNO (operands[0]) != REGNO (operands[1])
   && GET_CODE (operands[2]) == CONST_INT
   && ((INTVAL (operands[2]) > 0x7
	&& INTVAL (operands[2]) <= 0x7 + 0xf)
       || (INTVAL (operands[2]) < - 0x8
	   && INTVAL (operands[2]) >= - 0x8 - 0x10))))
    {
      return gen_split_337 (operands);
    }
  goto ret0;

 L2709: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (rtx_equal_p (x2, operands[0]))
    goto L2710;
 L2715: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2716;
    }
  goto ret0;

 L2710: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[1] = x2;
      goto L2711;
    }
  x2 = XEXP (x1, 0);
  goto L2715;

 L2711: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && ((INTVAL (operands[1]) > 0x10
	&& INTVAL (operands[1]) <= 0x10 + 0x10)
       || (INTVAL (operands[1]) < - 0xf
	   && INTVAL (operands[1]) >= - 0xf - 0xf))))
    {
      return gen_split_346 (operands);
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L2715;

 L2716: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L2717;
    }
  goto ret0;

 L2717: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG
   && M16_REG_P (REGNO (operands[1]))
   && REGNO (operands[0]) != REGNO (operands[1])
   && GET_CODE (operands[2]) == CONST_INT
   && ((INTVAL (operands[2]) > 0x8
	&& INTVAL (operands[2]) <= 0x8 + 0x10)
       || (INTVAL (operands[2]) < - 0x7
	   && INTVAL (operands[2]) >= - 0x7 - 0xf))))
    {
      return gen_split_347 (operands);
    }
  goto ret0;

 L2755: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2756;
    }
  goto ret0;

 L2756: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !TARGET_64BIT && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))))
    {
      return gen_split_372 (operands);
    }
  goto ret0;

 L2760: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode)
    goto L3466;
  goto ret0;

 L3466: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == NOT)
    goto L2779;
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2761;
    }
  goto ret0;

 L2779: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2780;
    }
  goto ret0;

 L2780: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == NOT)
    goto L2781;
  goto ret0;

 L2781: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L2782;
    }
  goto ret0;

 L2782: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !TARGET_MIPS16 && !TARGET_64BIT && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && GET_CODE (operands[2]) == REG && GP_REG_P (REGNO (operands[2]))))
    {
      return gen_split_382 (operands);
    }
  goto ret0;

 L2761: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2762;
    }
  goto ret0;

 L2762: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !TARGET_64BIT && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && GET_CODE (operands[2]) == REG && GP_REG_P (REGNO (operands[2]))))
    {
      return gen_split_375 (operands);
    }
  goto ret0;

 L2766: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2767;
    }
  goto ret0;

 L2767: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2768;
    }
  goto ret0;

 L2768: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !TARGET_64BIT && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && GET_CODE (operands[2]) == REG && GP_REG_P (REGNO (operands[2]))))
    {
      return gen_split_378 (operands);
    }
  goto ret0;

 L2772: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2773;
    }
  goto ret0;

 L2773: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2774;
    }
  goto ret0;

 L2774: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !TARGET_64BIT && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && GET_CODE (operands[2]) == REG && GP_REG_P (REGNO (operands[2]))))
    {
      return gen_split_381 (operands);
    }
  goto ret0;

 L2790: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == DImode
      && GET_CODE (x2) == PLUS)
    goto L2791;
  goto ret0;

 L2791: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[0]))
    goto L2792;
  goto ret0;

 L2792: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[1] = x3;
      goto L2793;
    }
  goto ret0;

 L2793: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && ((INTVAL (operands[1]) < 0
	&& INTVAL (operands[1]) >= -0x10)
       || (INTVAL (operands[1]) >= 32 * 8
	   && INTVAL (operands[1]) <= 31 * 8 + 0x8)
       || (INTVAL (operands[1]) >= 0
	   && INTVAL (operands[1]) < 32 * 8
	   && (INTVAL (operands[1]) & 7) != 0))))
    {
      return gen_split_403 (operands);
    }
  goto ret0;

 L2896: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2897;
    }
  goto ret0;

 L2897: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L2898;
    }
  goto ret0;

 L2898: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT
   && reload_completed
   && GET_CODE (operands[2]) == CONST_INT
   && INTVAL (operands[2]) > 8
   && INTVAL (operands[2]) <= 16))
    {
      return gen_split_431 (operands);
    }
  goto ret0;

 L2944: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2945;
    }
  goto ret0;

 L2945: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L2946;
    }
  goto ret0;

 L2946: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && TARGET_64BIT
   && reload_completed
   && GET_CODE (operands[2]) == CONST_INT
   && INTVAL (operands[2]) > 8
   && INTVAL (operands[2]) <= 16))
    {
      return gen_split_439 (operands);
    }
  goto ret0;

 L2998: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2999;
    }
  goto ret0;

 L2999: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CONST_INT)
    {
      operands[2] = x2;
      goto L3000;
    }
  goto ret0;

 L3000: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16
   && reload_completed
   && GET_CODE (operands[2]) == CONST_INT
   && INTVAL (operands[2]) > 8
   && INTVAL (operands[2]) <= 16))
    {
      return gen_split_448 (operands);
    }
  goto ret0;

 L3010: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3011;
    }
  goto ret0;

 L3011: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_uns_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L3012;
    }
  goto ret0;

 L3012: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE
    && !TARGET_MIPS16
    && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != 0)))
    {
      return gen_split_467 (operands);
    }
  goto ret0;

 L3022: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3023;
    }
  goto ret0;

 L3023: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_uns_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L3024;
    }
  goto ret0;

 L3024: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE
    && !TARGET_MIPS16
    && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != 0)))
    {
      return gen_split_470 (operands);
    }
  goto ret0;

 L3034: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3035;
    }
  goto ret0;

 L3035: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L3036;
    }
  goto ret0;

 L3036: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE
   && !TARGET_MIPS16))
    {
      return gen_split_474 (operands);
    }
  goto ret0;

 L3046: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3047;
    }
  goto ret0;

 L3047: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L3048;
    }
  goto ret0;

 L3048: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE
   && !TARGET_MIPS16))
    {
      return gen_split_478 (operands);
    }
  goto ret0;

 L3058: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3059;
    }
  goto ret0;

 L3059: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L3060;
    }
  goto ret0;

 L3060: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE
   && !TARGET_MIPS16))
    {
      return gen_split_482 (operands);
    }
  goto ret0;

 L3070: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3071;
    }
  goto ret0;

 L3071: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L3072;
    }
  goto ret0;

 L3072: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_DEBUG_D_MODE
   && !TARGET_MIPS16))
    {
      return gen_split_486 (operands);
    }
  goto ret0;

 L2786: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !TARGET_64BIT && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))))
    {
      return gen_split_402 (operands);
    }
  goto ret0;

 L3429: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L2815;
    }
  goto ret0;

 L2815: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == HImode
      && GET_CODE (x1) == MEM)
    goto L2816;
  goto ret0;

 L2816: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == PLUS)
    goto L2817;
  goto ret0;

 L2817: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[0]))
    goto L2818;
  goto ret0;

 L2818: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[1] = x3;
      goto L2819;
    }
  goto ret0;

 L2819: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && ((INTVAL (operands[1]) < 0
	&& INTVAL (operands[1]) >= -0x80)
       || (INTVAL (operands[1]) >= 32 * 2
	   && INTVAL (operands[1]) <= 31 * 2 + 0x7e)
       || (INTVAL (operands[1]) >= 0
	   && INTVAL (operands[1]) < 32 * 2
	   && (INTVAL (operands[1]) & 1) != 0))))
    {
      return gen_split_416 (operands);
    }
  goto ret0;

 L3430: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L2822;
    }
  goto ret0;

 L2822: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == QImode
      && GET_CODE (x1) == MEM)
    goto L2823;
  goto ret0;

 L2823: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == PLUS)
    goto L2824;
  goto ret0;

 L2824: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[0]))
    goto L2825;
  goto ret0;

 L2825: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == CONST_INT)
    {
      operands[1] = x3;
      goto L2826;
    }
  goto ret0;

 L2826: ATTRIBUTE_UNUSED_LABEL
  if ((TARGET_MIPS16 && reload_completed
   && GET_CODE (operands[0]) == REG
   && M16_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == CONST_INT
   && ((INTVAL (operands[1]) < 0
	&& INTVAL (operands[1]) >= -0x80)
       || (INTVAL (operands[1]) >= 32
	   && INTVAL (operands[1]) <= 31 + 0x7f))))
    {
      return gen_split_418 (operands);
    }
  goto ret0;

 L3431: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L2829;
    }
  goto ret0;

 L2829: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (register_operand (x1, DFmode))
    {
      operands[1] = x1;
      goto L2830;
    }
  goto ret0;

 L2830: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !TARGET_64BIT && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))))
    {
      return gen_split_421 (operands);
    }
  goto ret0;
 ret0:
  return 0;
}

static rtx split_2 PARAMS ((rtx, rtx));
static rtx
split_2 (x0, insn)
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

  switch (XVECLEN (x0, 0))
    {
    case 2:
      goto L2611;
    case 5:
      goto L2719;
    case 8:
      goto L2832;
    default:
      break;
    }
  goto ret0;

 L2611: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L2612;
  goto ret0;

 L2612: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L2613;
    }
  goto ret0;

 L2613: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == DImode)
    goto L3467;
  goto ret0;

 L3467: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L2614;
    case MINUS:
      goto L2674;
    case ASHIFT:
      goto L2861;
    case ASHIFTRT:
      goto L2909;
    case LSHIFTRT:
      goto L2963;
    default:
     break;
   }
  goto ret0;

 L2614: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2615;
    }
  goto ret0;

 L2615: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L2616;
    }
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L2634;
    }
  goto ret0;

 L2616: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2617;
  goto ret0;

 L2617: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2618;
    }
  goto ret0;

 L2618: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && GET_CODE (operands[2]) == REG && GP_REG_P (REGNO (operands[2]))
   && (REGNO (operands[0]) != REGNO (operands[1])
       || REGNO (operands[0]) != REGNO (operands[2]))))
    {
      return gen_split_332 (operands);
    }
 L2627: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && GET_CODE (operands[2]) == REG && GP_REG_P (REGNO (operands[2]))
   && (REGNO (operands[0]) != REGNO (operands[1])
       || REGNO (operands[0]) != REGNO (operands[2]))))
    {
      return gen_split_333 (operands);
    }
  goto ret0;

 L2634: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2635;
  goto ret0;

 L2635: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2636;
    }
  goto ret0;

 L2636: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && INTVAL (operands[2]) > 0))
    {
      return gen_split_334 (operands);
    }
 L2645: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && INTVAL (operands[2]) > 0))
    {
      return gen_split_335 (operands);
    }
  goto ret0;

 L2674: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2675;
    }
  goto ret0;

 L2675: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L2676;
    }
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L2694;
    }
  goto ret0;

 L2676: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2677;
  goto ret0;

 L2677: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2678;
    }
  goto ret0;

 L2678: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && GET_CODE (operands[2]) == REG && GP_REG_P (REGNO (operands[2]))))
    {
      return gen_split_342 (operands);
    }
 L2687: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && GET_CODE (operands[2]) == REG && GP_REG_P (REGNO (operands[2]))))
    {
      return gen_split_343 (operands);
    }
  goto ret0;

 L2694: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2695;
  goto ret0;

 L2695: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2696;
    }
  goto ret0;

 L2696: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && INTVAL (operands[2]) > 0))
    {
      return gen_split_344 (operands);
    }
 L2705: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && GP_REG_P (REGNO (operands[0]))
   && GET_CODE (operands[1]) == REG && GP_REG_P (REGNO (operands[1]))
   && INTVAL (operands[2]) > 0))
    {
      return gen_split_345 (operands);
    }
  goto ret0;

 L2861: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2862;
    }
  goto ret0;

 L2862: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L2863;
    }
  goto ret0;

 L2863: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2864;
  goto ret0;

 L2864: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2865;
    }
  goto ret0;

 L2865: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 32) != 0))
    {
      return gen_split_427 (operands);
    }
 L2874: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 32) != 0))
    {
      return gen_split_428 (operands);
    }
 L2883: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 63) < 32
   && (INTVAL (operands[2]) & 63) != 0))
    {
      return gen_split_429 (operands);
    }
 L2892: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 63) < 32
   && (INTVAL (operands[2]) & 63) != 0))
    {
      return gen_split_430 (operands);
    }
  goto ret0;

 L2909: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2910;
    }
  goto ret0;

 L2910: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L2911;
    }
  goto ret0;

 L2911: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2912;
  goto ret0;

 L2912: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2913;
    }
  goto ret0;

 L2913: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 32) != 0))
    {
      return gen_split_435 (operands);
    }
 L2922: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 32) != 0))
    {
      return gen_split_436 (operands);
    }
 L2931: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 63) < 32
   && (INTVAL (operands[2]) & 63) != 0))
    {
      return gen_split_437 (operands);
    }
 L2940: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 63) < 32
   && (INTVAL (operands[2]) & 63) != 0))
    {
      return gen_split_438 (operands);
    }
  goto ret0;

 L2963: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2964;
    }
  goto ret0;

 L2964: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L2965;
    }
  goto ret0;

 L2965: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2966;
  goto ret0;

 L2966: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2967;
    }
  goto ret0;

 L2967: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 32) != 0))
    {
      return gen_split_444 (operands);
    }
 L2976: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 32) != 0))
    {
      return gen_split_445 (operands);
    }
 L2985: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && !WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 63) < 32
   && (INTVAL (operands[2]) & 63) != 0))
    {
      return gen_split_446 (operands);
    }
 L2994: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && WORDS_BIG_ENDIAN && !TARGET_64BIT
   && !TARGET_DEBUG_D_MODE && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16
   && GET_CODE (operands[0]) == REG && REGNO (operands[0]) < FIRST_PSEUDO_REGISTER
   && GET_CODE (operands[1]) == REG && REGNO (operands[1]) < FIRST_PSEUDO_REGISTER
   && (INTVAL (operands[2]) & 63) < 32
   && (INTVAL (operands[2]) & 63) != 0))
    {
      return gen_split_447 (operands);
    }
  goto ret0;

 L2719: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L2720;
  goto ret0;

 L2720: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L2721;
    }
  goto ret0;

 L2721: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode)
    goto L3472;
  goto ret0;

 L3472: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case PLUS:
      goto L2722;
    case MINUS:
      goto L2739;
    default:
     break;
   }
  goto ret0;

 L2722: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == MULT)
    goto L2723;
  goto ret0;

 L2723: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L2724;
    }
  goto ret0;

 L2724: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L2725;
    }
  goto ret0;

 L2725: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[3] = x3;
      goto L2726;
    }
  goto ret0;

 L2726: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2727;
  goto ret0;

 L2727: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L2728;
    }
  goto ret0;

 L2728: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L2729;
  goto ret0;

 L2729: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L2730;
    }
  goto ret0;

 L2730: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 3);
  if (GET_CODE (x1) == CLOBBER)
    goto L2731;
  goto ret0;

 L2731: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L2732;
    }
  goto ret0;

 L2732: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 4);
  if (GET_CODE (x1) == CLOBBER)
    goto L2733;
  goto ret0;

 L2733: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L2734;
    }
  goto ret0;

 L2734: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && GP_REG_P (true_regnum (operands[0])) && GP_REG_P (true_regnum (operands[3]))))
    {
      return gen_split_351 (operands);
    }
  goto ret0;

 L2739: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2740;
    }
  goto ret0;

 L2740: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == MULT)
    goto L2741;
  goto ret0;

 L2741: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L2742;
    }
  goto ret0;

 L2742: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (register_operand (x4, SImode))
    {
      operands[3] = x4;
      goto L2743;
    }
  goto ret0;

 L2743: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2744;
  goto ret0;

 L2744: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L2745;
    }
  goto ret0;

 L2745: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L2746;
  goto ret0;

 L2746: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L2747;
    }
  goto ret0;

 L2747: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 3);
  if (GET_CODE (x1) == CLOBBER)
    goto L2748;
  goto ret0;

 L2748: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L2749;
    }
  goto ret0;

 L2749: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 4);
  if (GET_CODE (x1) == CLOBBER)
    goto L2750;
  goto ret0;

 L2750: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L2751;
    }
  goto ret0;

 L2751: ATTRIBUTE_UNUSED_LABEL
  if ((reload_completed && GP_REG_P (true_regnum (operands[0])) && GP_REG_P (true_regnum (operands[1]))))
    {
      return gen_split_352 (operands);
    }
  goto ret0;

 L2832: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (GET_CODE (x1) == SET)
    goto L2833;
  goto ret0;

 L2833: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == BLKmode
      && GET_CODE (x2) == MEM)
    goto L2834;
  goto ret0;

 L2834: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L2835;
    }
  goto ret0;

 L2835: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == BLKmode
      && GET_CODE (x2) == MEM)
    goto L2836;
  goto ret0;

 L2836: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2837;
    }
  goto ret0;

 L2837: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L2838;
  goto ret0;

 L2838: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L2839;
    }
  goto ret0;

 L2839: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 2);
  if (GET_CODE (x1) == CLOBBER)
    goto L2840;
  goto ret0;

 L2840: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L2841;
    }
  goto ret0;

 L2841: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 3);
  if (GET_CODE (x1) == CLOBBER)
    goto L2842;
  goto ret0;

 L2842: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L2843;
    }
  goto ret0;

 L2843: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 4);
  if (GET_CODE (x1) == CLOBBER)
    goto L2844;
  goto ret0;

 L2844: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L2845;
    }
  goto ret0;

 L2845: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 5);
  if (GET_CODE (x1) == USE)
    goto L2846;
  goto ret0;

 L2846: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (small_int (x2, SImode))
    {
      operands[2] = x2;
      goto L2847;
    }
  goto ret0;

 L2847: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 6);
  if (GET_CODE (x1) == USE)
    goto L2848;
  goto ret0;

 L2848: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (small_int (x2, SImode))
    {
      operands[3] = x2;
      goto L2849;
    }
  goto ret0;

 L2849: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 7);
  if (GET_CODE (x1) == USE)
    goto L2850;
  goto ret0;

 L2850: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == CONST_INT
      && XWINT (x2, 0) == 0
      && (reload_completed && !TARGET_DEBUG_D_MODE && INTVAL (operands[2]) > 0))
    {
      return gen_split_423 (operands);
    }
  goto ret0;
 ret0:
  return 0;
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
      goto L2599;
    case PARALLEL:
      goto L3424;
    default:
     break;
   }
  goto ret0;

 L2599: ATTRIBUTE_UNUSED_LABEL
  return split_1 (x0, insn);

 L3424: ATTRIBUTE_UNUSED_LABEL
  return split_2 (x0, insn);
 ret0:
  return 0;
}

