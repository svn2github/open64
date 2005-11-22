/* Generated automatically by the program `genoutput'
   from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "flags.h"
#include "ggc.h"
#include "rtl.h"
#include "tm_p.h"
#include "function.h"
#include "regs.h"
#include "hard-reg-set.h"
#include "real.h"
#include "insn-config.h"

#include "conditions.h"
#include "insn-flags.h"
#include "insn-attr.h"

#include "insn-codes.h"

#include "recog.h"

#include "toplev.h"
#include "output.h"

static const char *output_5 PARAMS ((rtx *, rtx));

static const char *
output_5 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[0]) == REGNO (operands[1]))
    return "addu\t%0,%2";
  return "addu\t%0,%1,%2";
}
}

static const char *output_6 PARAMS ((rtx *, rtx));

static const char *
output_6 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return (REGNO (operands[0]) == REGNO (operands[1])
	  && REGNO (operands[0]) == REGNO (operands[2]))
    ? "srl\t%3,%L0,31\n\tsll\t%M0,%M0,1\n\tsll\t%L0,%L1,1\n\taddu\t%M0,%M0,%3"
    : "addu\t%L0,%L1,%L2\n\tsltu\t%3,%L0,%L2\n\taddu\t%M0,%M1,%M2\n\taddu\t%M0,%M0,%3";
}
}

static const char * const output_7[] = {
  "addu\t%L0,%L1,%2\n\tsltu\t%3,%L0,%2\n\taddu\t%M0,%M1,%3",
  "move\t%L0,%L1\n\tmove\t%M0,%M1",
  "subu\t%L0,%L1,%n2\n\tsltu\t%3,%L0,%2\n\tsubu\t%M0,%M1,1\n\taddu\t%M0,%M0,%3",
};

static const char *output_8 PARAMS ((rtx *, rtx));

static const char *
output_8 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) < 0)
    ? "dsubu\t%0,%z1,%n2"
    : "daddu\t%0,%z1,%2";
}
}

static const char *output_11 PARAMS ((rtx *, rtx));

static const char *
output_11 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[0]) == REGNO (operands[1]))
    return "daddu\t%0,%2";
  return "daddu\t%0,%1,%2";
}
}

static const char *output_12 PARAMS ((rtx *, rtx));

static const char *
output_12 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) < 0)
    ? "subu\t%0,%z1,%n2"
    : "addu\t%0,%z1,%2";
}
}

static const char *output_13 PARAMS ((rtx *, rtx));

static const char *
output_13 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[0]) == REGNO (operands[1]))
    return "addu\t%0,%2";
  return "addu\t%0,%1,%2";
}
}

static const char *output_19 PARAMS ((rtx *, rtx));

static const char *
output_19 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[0]) == REGNO (operands[1]))
    return "subu\t%0,%2";
  return "subu\t%0,%1,%2";
}
}

static const char * const output_21[] = {
  "sltu\t%3,%L1,%2\n\tsubu\t%L0,%L1,%2\n\tsubu\t%M0,%M1,%3",
  "move\t%L0,%L1\n\tmove\t%M0,%M1",
  "sltu\t%3,%L1,%2\n\tsubu\t%L0,%L1,%2\n\tsubu\t%M0,%M1,1\n\tsubu\t%M0,%M0,%3",
};

static const char *output_22 PARAMS ((rtx *, rtx));

static const char *
output_22 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) < 0)
    ? "daddu\t%0,%z1,%n2"
    : "dsubu\t%0,%z1,%2";
}
}

static const char *output_25 PARAMS ((rtx *, rtx));

static const char *
output_25 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[0]) == REGNO (operands[1]))
    return "dsubu\t%0,%2";
  return "dsubu\t%0,%1,%2";
}
}

static const char *output_26 PARAMS ((rtx *, rtx));

static const char *
output_26 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) < 0)
    ? "addu\t%0,%z1,%n2"
    : "subu\t%0,%z1,%2";
}
}

static const char *output_27 PARAMS ((rtx *, rtx));

static const char *
output_27 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[0]) == REGNO (operands[1]))
    return "subu\t%0,%2";
  return "subu\t%0,%1,%2";
}
}

static const char *output_29 PARAMS ((rtx *, rtx));

static const char *
output_29 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  output_asm_insn ("mul.d\t%0,%1,%2", operands);
  if (TARGET_4300_MUL_FIX)
    output_asm_insn ("nop", operands);
  return "";
}
}

static const char *output_31 PARAMS ((rtx *, rtx));

static const char *
output_31 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  output_asm_insn ("mul.s\t%0,%1,%2", operands);
  if (TARGET_4300_MUL_FIX)
    output_asm_insn ("nop", operands);
  return "";
}
}

static const char *output_32 PARAMS ((rtx *, rtx));

static const char *
output_32 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 1)
    return "mult\t%1,%2";
  if (TARGET_MAD)
    return "mul\t%0,%1,%2";
  return "mult\t%0,%1,%2";
}
}

static const char *output_34 PARAMS ((rtx *, rtx));

static const char *
output_34 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx xoperands[10];

  xoperands[0] = operands[0];
  xoperands[1] = gen_rtx_REG (SImode, LO_REGNUM);

  output_asm_insn ("mult\t%1,%2", operands);
  output_asm_insn (mips_move_1word (xoperands, insn, FALSE), xoperands);
  return "";
}
}

static const char *output_35 PARAMS ((rtx *, rtx));

static const char *
output_35 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  static const char *const madd[] = { "madd\t%1,%2", "madd\t%0,%1,%2" };
  if (which_alternative == 2)
    return "#";
  return madd[which_alternative];
}
}

static const char *output_37 PARAMS ((rtx *, rtx));

static const char *
output_37 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GENERATE_MULT3)
    output_asm_insn ("dmult\t%0,%1,%2", operands);
  else 
    {
      rtx xoperands[10];

      xoperands[0] = operands[0];
      xoperands[1] = gen_rtx_REG (DImode, LO_REGNUM);

      output_asm_insn ("dmult\t%1,%2", operands);
      output_asm_insn (mips_move_1word (xoperands, insn, FALSE), xoperands);
    }
  return "";
}
}

static const char *output_38 PARAMS ((rtx *, rtx));

static const char *
output_38 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[3]) == SIGN_EXTEND)
    return "mult\t%1,%2";
  return "multu\t%1,%2";
}
}

static const char *output_39 PARAMS ((rtx *, rtx));

static const char *
output_39 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[3]) == SIGN_EXTEND)
    return "mult\t%1,%2";
  return "multu\t%1,%2";
}
}

static const char *output_40 PARAMS ((rtx *, rtx));

static const char *
output_40 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[3]) == SIGN_EXTEND)
    return "mult\t%1,%2";
  else
    return "multu\t%1,%2";
}
}

static const char *output_44 PARAMS ((rtx *, rtx));

static const char *
output_44 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[3]) == SIGN_EXTEND)
    return "mad\t%1,%2";
  else
    return "madu\t%1,%2";
}
}

static const char *output_45 PARAMS ((rtx *, rtx));

static const char *
output_45 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[3]) == SIGN_EXTEND)
    return "mad\t%1,%2";
  else
    return "madu\t%1,%2";
}
}

static const char *output_62 PARAMS ((rtx *, rtx));

static const char *
output_62 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx link;
  int have_dep_anti = 0;

  /* For divmod if one division is not needed then we don't need an extra
     divide by zero trap, which is anti dependent on previous trap */
  for (link = LOG_LINKS (insn); link; link = XEXP (link, 1))

    if ((int) REG_DEP_ANTI == (int) REG_NOTE_KIND (link)
        && GET_CODE (XEXP (link, 0)) == INSN
        && GET_CODE (PATTERN (XEXP (link, 0))) == TRAP_IF
	&& which_alternative == 1)
      have_dep_anti = 1;
  if (! have_dep_anti)
    {
      if (GENERATE_BRANCHLIKELY)
	{
          if (which_alternative == 1)
	    return "%(beql\t%0,$0,1f\n\tbreak\t%2\n%~1:%)";
	  else
	    return "%(beql\t%0,%1,1f\n\tbreak\t%2\n%~1:%)";
	}
      else
	{
          if (which_alternative == 1)
	    return "%(bne\t%0,$0,1f\n\tnop\n\tbreak\t%2\n%~1:%)";
	  else
	    return "%(bne\t%0,%1,1f\n\tnop\n\tbreak\t%2\n%~1:%)";
	}
    }
  return "";
}
}

static const char *output_63 PARAMS ((rtx *, rtx));

static const char *
output_63 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx link;
  int have_dep_anti = 0;

  /* For divmod if one division is not needed then we don't need an extra
     divide by zero trap, which is anti dependent on previous trap */
  for (link = LOG_LINKS (insn); link; link = XEXP (link, 1))

    if ((int) REG_DEP_ANTI == (int) REG_NOTE_KIND (link)
        && GET_CODE (XEXP (link, 0)) == INSN
        && GET_CODE (PATTERN (XEXP (link, 0))) == TRAP_IF
	&& which_alternative == 1)
      have_dep_anti = 1;
  if (! have_dep_anti)
    {
      /* No branch delay slots on mips16. */ 
      if (which_alternative == 1)
        return "%(bnez\t%0,1f\n\tbreak\t%2\n%~1:%)";
      else
        return "%(bne\t%0,%1,1f\n\tbreak\t%2\n%~1:%)";
    }
  return "";
}
}

static const char *output_76 PARAMS ((rtx *, rtx));

static const char *
output_76 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  dslots_jump_total++;
  dslots_jump_filled++;
  operands[2] = const0_rtx;

  if (REGNO (operands[0]) == REGNO (operands[1]))
    {
      if (GENERATE_BRANCHLIKELY)
	return "%(bltzl\t%1,1f\n\tsubu\t%0,%z2,%0\n%~1:%)";
      else
	return "bgez\t%1,1f%#\n\tsubu\t%0,%z2,%0\n%~1:";
    }	  
  else
    return "%(bgez\t%1,1f\n\tmove\t%0,%1\n\tsubu\t%0,%z2,%0\n%~1:%)";
}
}

static const char *output_77 PARAMS ((rtx *, rtx));

static const char *
output_77 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  dslots_jump_total++;
  dslots_jump_filled++;
  operands[2] = const0_rtx;

  if (REGNO (operands[0]) == REGNO (operands[1]))
    return "%(bltzl\t%1,1f\n\tdsubu\t%0,%z2,%0\n%~1:%)";
  else
    return "%(bgez\t%1,1f\n\tmove\t%0,%1\n\tdsubu\t%0,%z2,%0\n%~1:%)";
}
}

static const char *output_80 PARAMS ((rtx *, rtx));

static const char *
output_80 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  dslots_jump_total += 2;
  dslots_jump_filled += 2;
  operands[4] = const0_rtx;

  if (optimize && find_reg_note (insn, REG_DEAD, operands[1]))
    return "%(\
move\t%0,%z4\n\
\tbeq\t%1,%z4,2f\n\
%~1:\tand\t%2,%1,0x0001\n\
\taddu\t%0,%0,1\n\
\tbeq\t%2,%z4,1b\n\
\tsrl\t%1,%1,1\n\
%~2:%)";

  return "%(\
move\t%0,%z4\n\
\tmove\t%3,%1\n\
\tbeq\t%3,%z4,2f\n\
%~1:\tand\t%2,%3,0x0001\n\
\taddu\t%0,%0,1\n\
\tbeq\t%2,%z4,1b\n\
\tsrl\t%3,%3,1\n\
%~2:%)";
}
}

static const char *output_81 PARAMS ((rtx *, rtx));

static const char *
output_81 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  dslots_jump_total += 2;
  dslots_jump_filled += 2;
  operands[4] = const0_rtx;

  if (optimize && find_reg_note (insn, REG_DEAD, operands[1]))
    return "%(\
move\t%0,%z4\n\
\tbeq\t%1,%z4,2f\n\
%~1:\tand\t%2,%1,0x0001\n\
\tdaddu\t%0,%0,1\n\
\tbeq\t%2,%z4,1b\n\
\tdsrl\t%1,%1,1\n\
%~2:%)";

  return "%(\
move\t%0,%z4\n\
\tmove\t%3,%1\n\
\tbeq\t%3,%z4,2f\n\
%~1:\tand\t%2,%3,0x0001\n\
\tdaddu\t%0,%0,1\n\
\tbeq\t%2,%z4,1b\n\
\tdsrl\t%3,%3,1\n\
%~2:%)";
}
}

static const char *output_82 PARAMS ((rtx *, rtx));

static const char *
output_82 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_MIPS16)
    return "neg\t%0,%1";
  operands[2] = const0_rtx;
  return "subu\t%0,%z2,%1";
}
}

static const char *output_83 PARAMS ((rtx *, rtx));

static const char *
output_83 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[3] = const0_rtx;
  return "subu\t%L0,%z3,%L1\n\tsubu\t%M0,%z3,%M1\n\tsltu\t%2,%z3,%L0\n\tsubu\t%M0,%M0,%2";
}
}

static const char *output_84 PARAMS ((rtx *, rtx));

static const char *
output_84 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = const0_rtx;
  return "dsubu\t%0,%z2,%1";
}
}

static const char *output_87 PARAMS ((rtx *, rtx));

static const char *
output_87 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_MIPS16)
    return "not\t%0,%1";
  operands[2] = const0_rtx;
  return "nor\t%0,%z2,%1";
}
}

static const char *output_88 PARAMS ((rtx *, rtx));

static const char *
output_88 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_MIPS16)
    {
      if (TARGET_64BIT)
	return "not\t%0,%1";
      return "not\t%M0,%M1\n\tnot\t%L0,%L1";
    }
  operands[2] = const0_rtx;
  if (TARGET_64BIT)
    return "nor\t%0,%z2,%1";
  return "nor\t%M0,%z2,%M1\n\tnor\t%L0,%z2,%L1";
}
}

static const char * const output_89[] = {
  "and\t%0,%1,%2",
  "andi\t%0,%1,%x2",
};

static const char *output_91 PARAMS ((rtx *, rtx));

static const char *
output_91 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_64BIT)
    return "and\t%0,%1,%2";
  return "and\t%M0,%M1,%M2\n\tand\t%L0,%L1,%L2";
}
}

static const char *output_92 PARAMS ((rtx *, rtx));

static const char *
output_92 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_64BIT)
    return "and\t%0,%2";
  return "and\t%M0,%M2\n\tand\t%L0,%L2";
}
}

static const char * const output_93[] = {
  "and\t%0,%1,%2",
  "andi\t%0,%1,%x2",
};

static const char * const output_94[] = {
  "or\t%0,%1,%2",
  "ori\t%0,%1,%x2",
};

static const char *output_96 PARAMS ((rtx *, rtx));

static const char *
output_96 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_64BIT)
    return "or\t%0,%1,%2";
  return "or\t%M0,%M1,%M2\n\tor\t%L0,%L1,%L2";
}
}

static const char *output_97 PARAMS ((rtx *, rtx));

static const char *
output_97 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_64BIT)
    return "or\t%0,%2";
  return "or\t%M0,%M2\n\tor\t%L0,%L2";
}
}

static const char * const output_98[] = {
  "xor\t%0,%1,%2",
  "xori\t%0,%1,%x2",
};

static const char * const output_99[] = {
  "xor\t%0,%2",
  "cmpi\t%1,%2",
  "cmp\t%1,%2",
};

static const char *output_100 PARAMS ((rtx *, rtx));

static const char *
output_100 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_64BIT)
    return "xor\t%0,%1,%2";
  return "xor\t%M0,%M1,%M2\n\txor\t%L0,%L1,%L2";
}
}

static const char * const output_102[] = {
  "xor\t%0,%2",
  "cmpi\t%1,%2",
  "cmp\t%1,%2",
};

static const char *output_105 PARAMS ((rtx *, rtx));

static const char *
output_105 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_64BIT)
    return "nor\t%0,%z1,%z2";
  return "nor\t%M0,%M1,%M2\n\tnor\t%L0,%L1,%L2";
}
}

static const char *output_107 PARAMS ((rtx *, rtx));

static const char *
output_107 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_MIPS16)
    return "dsll\t%0,%1,32\n\tdsra\t%0,32";
  return "dsll\t%0,%1,32\n\tdsra\t%0,%0,32";
}
}

static const char *output_108 PARAMS ((rtx *, rtx));

static const char *
output_108 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_MIPS16)
    return "dsll\t%0,%1,48\n\tdsra\t%0,48";
  return "andi\t%0,%1,0xffff";
}
}

static const char *output_109 PARAMS ((rtx *, rtx));

static const char *
output_109 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (TARGET_MIPS16)
    return "dsll\t%0,%1,56\n\tdsra\t%0,56";
  return "andi\t%0,%1,0x00ff"; 
}
}

static const char *output_110 PARAMS ((rtx *, rtx));

static const char *
output_110 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  int shift_amt = INTVAL (operands[2]) & 0x3f;

  if (shift_amt < 32)
    {
      operands[2] = GEN_INT (32 - shift_amt);
      return "dsll\t%0,%1,%2\n\tdsra\t%0,%0,32";
    }
  else
    {
      operands[2] = GEN_INT (shift_amt);
      return "dsra\t%0,%1,%2";
    }
}
}

static const char *output_111 PARAMS ((rtx *, rtx));

static const char *
output_111 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  int shift_amt = INTVAL (operands[2]) & 0x3f;

  if (shift_amt < 32)
    {
      operands[2] = GEN_INT (32 - shift_amt);
      return "dsll\t%0,%1,%2\n\tdsra\t%0,%0,32";
    }
  else if (shift_amt == 32)
    return "dsra\t%0,%1,32";
  else
    {
      operands[2] = GEN_INT (shift_amt);
      return "dsrl\t%0,%1,%2";
    }
}
}

static const char *output_112 PARAMS ((rtx *, rtx));

static const char *
output_112 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  int shift_amt = INTVAL (operands[2]) & 0x3f;

  if (shift_amt < 32)
    {
      operands[2] = GEN_INT (32 + shift_amt);
      if (TARGET_MIPS16)
	return "dsll\t%0,%1,%2\n\tdsra\t%0,32";
      return "dsll\t%0,%1,%2\n\tdsra\t%0,%0,32";
    }
  else
    return "move\t%0,%.";
}
}

static const char *output_116 PARAMS ((rtx *, rtx));

static const char *
output_116 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_117 PARAMS ((rtx *, rtx));

static const char *
output_117 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 0)
    return "andi\t%0,%1,0xffff";
  else
    return mips_move_1word (operands, insn, TRUE);
}
}

static const char *output_118 PARAMS ((rtx *, rtx));

static const char *
output_118 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_119 PARAMS ((rtx *, rtx));

static const char *
output_119 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 0)
    return "andi\t%0,%1,0xffff";
  else
    return mips_move_1word (operands, insn, TRUE);
}
}

static const char *output_120 PARAMS ((rtx *, rtx));

static const char *
output_120 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_121 PARAMS ((rtx *, rtx));

static const char *
output_121 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 0)
    return "andi\t%0,%1,0x00ff";
  else
    return mips_move_1word (operands, insn, TRUE);
}
}

static const char *output_122 PARAMS ((rtx *, rtx));

static const char *
output_122 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_123 PARAMS ((rtx *, rtx));

static const char *
output_123 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 0)
    return "andi\t%0,%1,0x00ff";
  else
    return mips_move_1word (operands, insn, TRUE);
}
}

static const char *output_124 PARAMS ((rtx *, rtx));

static const char *
output_124 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_125 PARAMS ((rtx *, rtx));

static const char *
output_125 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 0)
    return "andi\t%0,%1,0x00ff";
  else
    return mips_move_1word (operands, insn, TRUE);
}
}

static const char *output_126 PARAMS ((rtx *, rtx));

static const char *
output_126 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_move_1word (operands, insn, TRUE);
}
}

static const char *output_127 PARAMS ((rtx *, rtx));

static const char *
output_127 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_128 PARAMS ((rtx *, rtx));

static const char *
output_128 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_129 PARAMS ((rtx *, rtx));

static const char *
output_129 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_130 PARAMS ((rtx *, rtx));

static const char *
output_130 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_131 PARAMS ((rtx *, rtx));

static const char *
output_131 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_132 PARAMS ((rtx *, rtx));

static const char *
output_132 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_133 PARAMS ((rtx *, rtx));

static const char *
output_133 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_135 PARAMS ((rtx *, rtx));

static const char *
output_135 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx xoperands[10];

  if (which_alternative == 1)
    return "trunc.w.d %0,%1,%2";

  output_asm_insn ("trunc.w.d %3,%1,%2", operands);

  xoperands[0] = operands[0];
  xoperands[1] = operands[3];
  output_asm_insn (mips_move_1word (xoperands, insn, FALSE), xoperands);
  return "";
}
}

static const char *output_136 PARAMS ((rtx *, rtx));

static const char *
output_136 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx xoperands[10];

  if (which_alternative == 1)
    return "trunc.w.s %0,%1,%2";

  output_asm_insn ("trunc.w.s %3,%1,%2", operands);

  xoperands[0] = operands[0];
  xoperands[1] = operands[3];
  output_asm_insn (mips_move_1word (xoperands, insn, FALSE), xoperands);
  return "";
}
}

static const char *output_137 PARAMS ((rtx *, rtx));

static const char *
output_137 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx xoperands[10];

  if (which_alternative == 1)
    return "trunc.l.d %0,%1";

  output_asm_insn ("trunc.l.d %2,%1", operands);

  xoperands[0] = operands[0];
  xoperands[1] = operands[2];
  output_asm_insn (mips_move_2words (xoperands, insn), xoperands);
  return "";
}
}

static const char *output_138 PARAMS ((rtx *, rtx));

static const char *
output_138 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx xoperands[10];

  if (which_alternative == 1)
    return "trunc.l.s %0,%1";

  output_asm_insn ("trunc.l.s %2,%1", operands);

  xoperands[0] = operands[0];
  xoperands[1] = operands[2];
  output_asm_insn (mips_move_2words (xoperands, insn), xoperands);
  return "";
}
}

static const char *output_139 PARAMS ((rtx *, rtx));

static const char *
output_139 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  dslots_load_total++;
  if (GET_CODE (operands[1]) == MEM)
    return "l.s\t%0,%1%#\n\tcvt.d.w\t%0,%0";

  return "mtc1\t%1,%0%#\n\tcvt.d.w\t%0,%0";
}
}

static const char *output_140 PARAMS ((rtx *, rtx));

static const char *
output_140 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  dslots_load_total++;
  if (GET_CODE (operands[1]) == MEM)
    return "l.d\t%0,%1%#\n\tcvt.d.l\t%0,%0";

  return "dmtc1\t%1,%0%#\n\tcvt.d.l\t%0,%0";
}
}

static const char *output_141 PARAMS ((rtx *, rtx));

static const char *
output_141 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  dslots_load_total++;
  if (GET_CODE (operands[1]) == MEM)
    return "l.s\t%0,%1%#\n\tcvt.s.w\t%0,%0";

  return "mtc1\t%1,%0%#\n\tcvt.s.w\t%0,%0";
}
}

static const char *output_142 PARAMS ((rtx *, rtx));

static const char *
output_142 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  dslots_load_total++;
  if (GET_CODE (operands[1]) == MEM)
    return "l.d\t%0,%1%#\n\tcvt.s.l\t%0,%0";

  return "dmtc1\t%1,%0%#\n\tcvt.s.l\t%0,%0";
}
}

static const char *output_143 PARAMS ((rtx *, rtx));

static const char *
output_143 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx offset = const0_rtx;
  rtx addr = XEXP (operands[1], 0);
  rtx mem_addr = eliminate_constant_term (addr, &offset);
  const char *ret;

  if (TARGET_STATS)
    mips_count_memory_refs (operands[1], 2);

  /* The stack/frame pointers are always aligned, so we can convert
     to the faster lw if we are referencing an aligned stack location.  */

  if ((INTVAL (offset) & 3) == 0
      && (mem_addr == stack_pointer_rtx || mem_addr == frame_pointer_rtx))
    ret = "lw\t%0,%1";
  else
    ret = "ulw\t%0,%1";

  return mips_fill_delay_slot (ret, DELAY_LOAD, operands, insn);
}
}

static const char *output_144 PARAMS ((rtx *, rtx));

static const char *
output_144 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx offset = const0_rtx;
  rtx addr = XEXP (operands[0], 0);
  rtx mem_addr = eliminate_constant_term (addr, &offset);

  if (TARGET_STATS)
    mips_count_memory_refs (operands[0], 2);

  /* The stack/frame pointers are always aligned, so we can convert
     to the faster sw if we are referencing an aligned stack location.  */

  if ((INTVAL (offset) & 3) == 0
      && (mem_addr == stack_pointer_rtx || mem_addr == frame_pointer_rtx))
    return "sw\t%z1,%0";

  return "usw\t%z1,%0";
}
}

static const char *output_145 PARAMS ((rtx *, rtx));

static const char *
output_145 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx offset = const0_rtx;
  rtx addr = XEXP (operands[1], 0);
  rtx mem_addr = eliminate_constant_term (addr, &offset);
  const char *ret;

  if (TARGET_STATS)
    mips_count_memory_refs (operands[1], 2);

  /* The stack/frame pointers are always aligned, so we can convert
     to the faster lw if we are referencing an aligned stack location.  */

  if ((INTVAL (offset) & 7) == 0
      && (mem_addr == stack_pointer_rtx || mem_addr == frame_pointer_rtx))
    ret = "ld\t%0,%1";
  else
    ret = "uld\t%0,%1";

  return mips_fill_delay_slot (ret, DELAY_LOAD, operands, insn);
}
}

static const char *output_146 PARAMS ((rtx *, rtx));

static const char *
output_146 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  rtx offset = const0_rtx;
  rtx addr = XEXP (operands[0], 0);
  rtx mem_addr = eliminate_constant_term (addr, &offset);

  if (TARGET_STATS)
    mips_count_memory_refs (operands[0], 2);

  /* The stack/frame pointers are always aligned, so we can convert
     to the faster sw if we are referencing an aligned stack location.  */

  if ((INTVAL (offset) & 7) == 0
      && (mem_addr == stack_pointer_rtx || mem_addr == frame_pointer_rtx))
    return "sd\t%1,%0";

  return "usd\t%z1,%0";
}
}

static const char *output_149 PARAMS ((rtx *, rtx));

static const char *
output_149 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[1] = gen_rtx (REG, DImode, 31);
  return mips_move_2words (operands, insn);
}
}

static const char *output_150 PARAMS ((rtx *, rtx));

static const char *
output_150 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_2words (operands, insn); 
}

static const char *output_151 PARAMS ((rtx *, rtx));

static const char *
output_151 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_2words (operands, insn);
}

static const char *output_152 PARAMS ((rtx *, rtx));

static const char *
output_152 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_2words (operands, insn); 
}

static const char *output_153 PARAMS ((rtx *, rtx));

static const char *
output_153 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_2words (operands, insn);
}

static const char *output_154 PARAMS ((rtx *, rtx));

static const char *
output_154 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[1] = gen_rtx (REG, SImode, 31);
  return mips_move_1word (operands, insn, FALSE);
}
}

static const char *output_155 PARAMS ((rtx *, rtx));

static const char *
output_155 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_156 PARAMS ((rtx *, rtx));

static const char *
output_156 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_157 PARAMS ((rtx *, rtx));

static const char *
output_157 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_158 PARAMS ((rtx *, rtx));

static const char *
output_158 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_167 PARAMS ((rtx *, rtx));

static const char *
output_167 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_168 PARAMS ((rtx *, rtx));

static const char *
output_168 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_169 PARAMS ((rtx *, rtx));

static const char *
output_169 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_170 PARAMS ((rtx *, rtx));

static const char *
output_170 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_171 PARAMS ((rtx *, rtx));

static const char *
output_171 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_172 PARAMS ((rtx *, rtx));

static const char *
output_172 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, TRUE);
}

static const char *output_173 PARAMS ((rtx *, rtx));

static const char *
output_173 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_174 PARAMS ((rtx *, rtx));

static const char *
output_174 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_175 PARAMS ((rtx *, rtx));

static const char *
output_175 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_1word (operands, insn, FALSE);
}

static const char *output_176 PARAMS ((rtx *, rtx));

static const char *
output_176 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_2words (operands, insn); 
}

static const char *output_177 PARAMS ((rtx *, rtx));

static const char *
output_177 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_2words (operands, insn); 
}

static const char *output_178 PARAMS ((rtx *, rtx));

static const char *
output_178 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_2words (operands, insn); 
}

static const char *output_179 PARAMS ((rtx *, rtx));

static const char *
output_179 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return mips_move_2words (operands, insn);
}

static const char *output_181 PARAMS ((rtx *, rtx));

static const char *
output_181 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return output_block_move (insn, operands, 4, BLOCK_MOVE_NORMAL);
}

static const char *output_182 PARAMS ((rtx *, rtx));

static const char *
output_182 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return output_block_move (insn, operands, 4, BLOCK_MOVE_NORMAL);
}

static const char *output_183 PARAMS ((rtx *, rtx));

static const char *
output_183 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return output_block_move (insn, operands, 4, BLOCK_MOVE_NOT_LAST);
}

static const char *output_184 PARAMS ((rtx *, rtx));

static const char *
output_184 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return output_block_move (insn, operands, 4, BLOCK_MOVE_NOT_LAST);
}

static const char *output_185 PARAMS ((rtx *, rtx));

static const char *
output_185 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 return output_block_move (insn, operands, 4, BLOCK_MOVE_LAST);
}

static const char *output_186 PARAMS ((rtx *, rtx));

static const char *
output_186 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);

  return "sll\t%0,%1,%2";
}
}

static const char *output_187 PARAMS ((rtx *, rtx));

static const char *
output_187 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 0)
    return "sll\t%0,%2";

  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);

  return "sll\t%0,%1,%2";
}
}

static const char *output_188 PARAMS ((rtx *, rtx));

static const char *
output_188 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 
{
  operands[4] = const0_rtx;
  dslots_jump_total += 3;
  dslots_jump_filled += 2;

  return "sll\t%3,%2,26\n\
\tbgez\t%3,1f\n\
\tsll\t%M0,%L1,%2\n\
\t%(b\t3f\n\
\tmove\t%L0,%z4%)\n\
\n\
%~1:\n\
\t%(beq\t%3,%z4,2f\n\
\tsll\t%M0,%M1,%2%)\n\
\n\
\tsubu\t%3,%z4,%2\n\
\tsrl\t%3,%L1,%3\n\
\tor\t%M0,%M0,%3\n\
%~2:\n\
\tsll\t%L0,%L1,%2\n\
%~3:";
}
}

static const char *output_189 PARAMS ((rtx *, rtx));

static const char *
output_189 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);
  operands[4] = const0_rtx;
  return "sll\t%M0,%L1,%2\n\tmove\t%L0,%z4";
}
}

static const char *output_190 PARAMS ((rtx *, rtx));

static const char *
output_190 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  int amount = INTVAL (operands[2]);

  operands[2] = GEN_INT (amount & 31);
  operands[4] = const0_rtx;
  operands[5] = GEN_INT ((-amount) & 31);

  return "sll\t%M0,%M1,%2\n\tsrl\t%3,%L1,%5\n\tor\t%M0,%M0,%3\n\tsll\t%L0,%L1,%2";
}
}

static const char *output_191 PARAMS ((rtx *, rtx));

static const char *
output_191 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x3f);

  return "dsll\t%0,%1,%2";
}
}

static const char *output_192 PARAMS ((rtx *, rtx));

static const char *
output_192 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 0)
    return "dsll\t%0,%2";

  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x3f);

  return "dsll\t%0,%1,%2";
}
}

static const char *output_193 PARAMS ((rtx *, rtx));

static const char *
output_193 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);

  return "sra\t%0,%1,%2";
}
}

static const char *output_194 PARAMS ((rtx *, rtx));

static const char *
output_194 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 0)
    return "sra\t%0,%2";

  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);

  return "sra\t%0,%1,%2";
}
}

static const char *output_195 PARAMS ((rtx *, rtx));

static const char *
output_195 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 
{
  operands[4] = const0_rtx;
  dslots_jump_total += 3;
  dslots_jump_filled += 2;

  return "sll\t%3,%2,26\n\
\tbgez\t%3,1f\n\
\tsra\t%L0,%M1,%2\n\
\t%(b\t3f\n\
\tsra\t%M0,%M1,31%)\n\
\n\
%~1:\n\
\t%(beq\t%3,%z4,2f\n\
\tsrl\t%L0,%L1,%2%)\n\
\n\
\tsubu\t%3,%z4,%2\n\
\tsll\t%3,%M1,%3\n\
\tor\t%L0,%L0,%3\n\
%~2:\n\
\tsra\t%M0,%M1,%2\n\
%~3:";
}
}

static const char *output_196 PARAMS ((rtx *, rtx));

static const char *
output_196 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);
  return "sra\t%L0,%M1,%2\n\tsra\t%M0,%M1,31";
}
}

static const char *output_197 PARAMS ((rtx *, rtx));

static const char *
output_197 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  int amount = INTVAL (operands[2]);

  operands[2] = GEN_INT (amount & 31);
  operands[4] = GEN_INT ((-amount) & 31);

  return "srl\t%L0,%L1,%2\n\tsll\t%3,%M1,%4\n\tor\t%L0,%L0,%3\n\tsra\t%M0,%M1,%2";
}
}

static const char *output_198 PARAMS ((rtx *, rtx));

static const char *
output_198 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x3f);

  return "dsra\t%0,%1,%2";
}
}

static const char *output_199 PARAMS ((rtx *, rtx));

static const char *
output_199 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x3f);

  return "dsra\t%0,%2";
}
}

static const char *output_200 PARAMS ((rtx *, rtx));

static const char *
output_200 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);

  return "srl\t%0,%1,%2";
}
}

static const char *output_201 PARAMS ((rtx *, rtx));

static const char *
output_201 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (which_alternative == 0)
    return "srl\t%0,%2";

  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);

  return "srl\t%0,%1,%2";
}
}

static const char *output_203 PARAMS ((rtx *, rtx));

static const char *
output_203 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{
 
{
  operands[4] = const0_rtx;
  dslots_jump_total += 3;
  dslots_jump_filled += 2;

  return "sll\t%3,%2,26\n\
\tbgez\t%3,1f\n\
\tsrl\t%L0,%M1,%2\n\
\t%(b\t3f\n\
\tmove\t%M0,%z4%)\n\
\n\
%~1:\n\
\t%(beq\t%3,%z4,2f\n\
\tsrl\t%L0,%L1,%2%)\n\
\n\
\tsubu\t%3,%z4,%2\n\
\tsll\t%3,%M1,%3\n\
\tor\t%L0,%L0,%3\n\
%~2:\n\
\tsrl\t%M0,%M1,%2\n\
%~3:";
}
}

static const char *output_204 PARAMS ((rtx *, rtx));

static const char *
output_204 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);
  operands[4] = const0_rtx;
  return "srl\t%L0,%M1,%2\n\tmove\t%M0,%z4";
}
}

static const char *output_205 PARAMS ((rtx *, rtx));

static const char *
output_205 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  int amount = INTVAL (operands[2]);

  operands[2] = GEN_INT (amount & 31);
  operands[4] = GEN_INT ((-amount) & 31);

  return "srl\t%L0,%L1,%2\n\tsll\t%3,%M1,%4\n\tor\t%L0,%L0,%3\n\tsrl\t%M0,%M1,%2";
}
}

static const char *output_206 PARAMS ((rtx *, rtx));

static const char *
output_206 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x3f);

  return "dsrl\t%0,%1,%2";
}
}

static const char *output_207 PARAMS ((rtx *, rtx));

static const char *
output_207 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x3f);

  return "dsrl\t%0,%2";
}
}

static const char *output_208 PARAMS ((rtx *, rtx));

static const char *
output_208 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/0,
					 /*float_p=*/1,
					 /*inverted_p=*/0,
					 get_attr_length (insn));
}
}

static const char *output_209 PARAMS ((rtx *, rtx));

static const char *
output_209 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/0,
					 /*float_p=*/1,
					 /*inverted_p=*/1,
					 get_attr_length (insn));
}
}

static const char *output_210 PARAMS ((rtx *, rtx));

static const char *
output_210 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/0,
					 /*float_p=*/0,
					 /*inverted_p=*/0,
					 get_attr_length (insn));
}
}

static const char *output_211 PARAMS ((rtx *, rtx));

static const char *
output_211 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/0,
					 /*float_p=*/0,
					 /*inverted_p=*/1,
					 get_attr_length (insn));
}
}

static const char *output_212 PARAMS ((rtx *, rtx));

static const char *
output_212 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/0,
					 /*float_p=*/0,
					 /*inverted_p=*/0,
					 get_attr_length (insn));
}
}

static const char *output_213 PARAMS ((rtx *, rtx));

static const char *
output_213 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/0,
					 /*float_p=*/0,
					 /*inverted_p=*/1,
					 get_attr_length (insn));
}
}

static const char *output_214 PARAMS ((rtx *, rtx));

static const char *
output_214 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/1,
					 /*float_p=*/0,
					 /*inverted_p=*/0,
					 get_attr_length (insn));
}
}

static const char *output_215 PARAMS ((rtx *, rtx));

static const char *
output_215 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/1,
					 /*float_p=*/0,
					 /*inverted_p=*/0,
					 get_attr_length (insn));
}
}

static const char *output_216 PARAMS ((rtx *, rtx));

static const char *
output_216 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/1,
					 /*float_p=*/0,
					 /*inverted_p=*/1,
					 get_attr_length (insn));
}
}

static const char *output_217 PARAMS ((rtx *, rtx));

static const char *
output_217 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_output_conditional_branch (insn,
					 operands,
					 /*two_operands_p=*/1,
					 /*float_p=*/0,
					 /*inverted_p=*/1,
					 get_attr_length (insn));
}
}

static const char *output_218 PARAMS ((rtx *, rtx));

static const char *
output_218 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (operands[2] != pc_rtx)
    {
      if (which_alternative == 0)
	return "%*b%C0z\t%1,%2";
      else
	return "%*bt%C0z\t%2";
    }
  else
    {
      if (which_alternative == 0)
	return "%*b%N0z\t%1,%3";
      else
	return "%*bt%N0z\t%3";
    }
}
}

static const char *output_219 PARAMS ((rtx *, rtx));

static const char *
output_219 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (operands[2] != pc_rtx)
    {
      if (which_alternative == 0)
	return "%*b%C0z\t%1,%2";
      else
	return "%*bt%C0z\t%2";
    }
  else
    {
      if (which_alternative == 0)
	return "%*b%N0z\t%1,%3";
      else
	return "%*bt%N0z\t%3";
    }
}
}

static const char * const output_224[] = {
  "xor\t%0,%1,%2\n\tsltu\t%0,%0,1",
  "xori\t%0,%1,%2\n\tsltu\t%0,%0,1",
};

static const char * const output_225[] = {
  "xor\t%0,%1,%2\n\tsltu\t%0,%0,1",
  "xori\t%0,%1,%2\n\tsltu\t%0,%0,1",
};

static const char * const output_228[] = {
  "xor\t%0,%1,%2\n\tsltu\t%0,%.,%0",
  "xori\t%0,%1,%x2\n\tsltu\t%0,%.,%0",
};

static const char * const output_229[] = {
  "xor\t%0,%1,%2\n\tsltu\t%0,%.,%0",
  "xori\t%0,%1,%x2\n\tsltu\t%0,%.,%0",
};

static const char *output_240 PARAMS ((rtx *, rtx));

static const char *
output_240 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2])+1);
  return "slt\t%0,%1,%2";
}
}

static const char *output_241 PARAMS ((rtx *, rtx));

static const char *
output_241 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2])+1);
  return "slt\t%1,%2";
}
}

static const char *output_242 PARAMS ((rtx *, rtx));

static const char *
output_242 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2])+1);
  return "slt\t%0,%1,%2";
}
}

static const char *output_243 PARAMS ((rtx *, rtx));

static const char *
output_243 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2])+1);
  return "slt\t%1,%2";
}
}

static const char *output_256 PARAMS ((rtx *, rtx));

static const char *
output_256 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2]) + 1);
  return "sltu\t%0,%1,%2";
}
}

static const char *output_257 PARAMS ((rtx *, rtx));

static const char *
output_257 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2])+1);
  return "sltu\t%1,%2";
}
}

static const char *output_258 PARAMS ((rtx *, rtx));

static const char *
output_258 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2]) + 1);
  return "sltu\t%0,%1,%2";
}
}

static const char *output_259 PARAMS ((rtx *, rtx));

static const char *
output_259 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  operands[2] = GEN_INT (INTVAL (operands[2])+1);
  return "sltu\t%1,%2";
}
}

static const char *output_262 PARAMS ((rtx *, rtx));

static const char *
output_262 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.eq.d\t%Z0%1,%2", DELAY_FCMP, operands, insn);
}
}

static const char *output_263 PARAMS ((rtx *, rtx));

static const char *
output_263 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.lt.d\t%Z0%1,%2", DELAY_FCMP, operands, insn);
}
}

static const char *output_264 PARAMS ((rtx *, rtx));

static const char *
output_264 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.le.d\t%Z0%1,%2", DELAY_FCMP, operands, insn);
}
}

static const char *output_265 PARAMS ((rtx *, rtx));

static const char *
output_265 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.lt.d\t%Z0%2,%1", DELAY_FCMP, operands, insn);
}
}

static const char *output_266 PARAMS ((rtx *, rtx));

static const char *
output_266 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.le.d\t%Z0%2,%1", DELAY_FCMP, operands, insn);
}
}

static const char *output_267 PARAMS ((rtx *, rtx));

static const char *
output_267 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.eq.s\t%Z0%1,%2", DELAY_FCMP, operands, insn);
}
}

static const char *output_268 PARAMS ((rtx *, rtx));

static const char *
output_268 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.lt.s\t%Z0%1,%2", DELAY_FCMP, operands, insn);
}
}

static const char *output_269 PARAMS ((rtx *, rtx));

static const char *
output_269 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.le.s\t%Z0%1,%2", DELAY_FCMP, operands, insn);
}
}

static const char *output_270 PARAMS ((rtx *, rtx));

static const char *
output_270 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.lt.s\t%Z0%2,%1", DELAY_FCMP, operands, insn);
}
}

static const char *output_271 PARAMS ((rtx *, rtx));

static const char *
output_271 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return mips_fill_delay_slot ("c.le.s\t%Z0%2,%1", DELAY_FCMP, operands, insn);
}
}

static const char *output_272 PARAMS ((rtx *, rtx));

static const char *
output_272 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (GET_CODE (operands[0]) == REG)
    return "%*j\t%0";
  /* ??? I don't know why this is necessary.  This works around an
     assembler problem that appears when a label is defined, then referenced
     in a switch table, then used in a `j' instruction.  */
  else if (mips_abi != ABI_32 && mips_abi != ABI_O64)
    return "%*b\t%l0";
  else	
    return "%*j\t%l0";
}
}

static const char *output_278 PARAMS ((rtx *, rtx));

static const char *
output_278 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  /* .cpadd expands to add REG,REG,$gp when pic, and nothing when not pic.  */
  if (mips_abi == ABI_32 || mips_abi == ABI_O64)
    output_asm_insn (".cpadd\t%0", operands);
  return "%*j\t%0";
}
}

static const char *output_284 PARAMS ((rtx *, rtx));

static const char *
output_284 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  return "%*j\t%0";
}
}

static const char *output_287 PARAMS ((rtx *, rtx));

static const char *
output_287 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  register rtx target = operands[0];

  if (GET_CODE (target) == SYMBOL_REF)
    return "%*jal\t%0";
  else if (GET_CODE (target) == CONST_INT)
    return "%[li\t%@,%0\n\t%*jal\t%2,%@%]";
  else
    return "%*jal\t%2,%0";
}
}

static const char *output_288 PARAMS ((rtx *, rtx));

static const char *
output_288 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  register rtx target = operands[0];

  if (GET_CODE (target) == SYMBOL_REF)
    {
      if (GET_MODE (target) == SImode)
	return "la\t%^,%0\n\tjal\t%2,%^";
      else
	return "dla\t%^,%0\n\tjal\t%2,%^";
    }
  else if (GET_CODE (target) == CONST_INT)
    return "li\t%^,%0\n\tjal\t%2,%^";
  else if (REGNO (target) != PIC_FUNCTION_ADDR_REGNUM)
    return "move\t%^,%0\n\tjal\t%2,%^";
  else
    return "jal\t%2,%0";
}
}

static const char *output_292 PARAMS ((rtx *, rtx));

static const char *
output_292 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[0]) != PIC_FUNCTION_ADDR_REGNUM)
    return "move\t%^,%0\n\tjal\t%2,%^";
  else
    return "jal\t%2,%0";
}
}

static const char *output_293 PARAMS ((rtx *, rtx));

static const char *
output_293 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[0]) != PIC_FUNCTION_ADDR_REGNUM)
    return "move\t%^,%0\n\tjal\t%2,%^";
  else
    return "jal\t%2,%0";
}
}

static const char *output_295 PARAMS ((rtx *, rtx));

static const char *
output_295 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  register rtx target = operands[1];

  if (GET_CODE (target) == SYMBOL_REF)
    return "%*jal\t%1";
  else if (GET_CODE (target) == CONST_INT)
    return "%[li\t%@,%1\n\t%*jal\t%3,%@%]";
  else
    return "%*jal\t%3,%1";
}
}

static const char *output_296 PARAMS ((rtx *, rtx));

static const char *
output_296 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  register rtx target = operands[1];

  if (GET_CODE (target) == SYMBOL_REF)
    {
      if (GET_MODE (target) == SImode)
	return "la\t%^,%1\n\tjal\t%3,%^";
      else
	return "dla\t%^,%1\n\tjal\t%3,%^";
    }
  else if (GET_CODE (target) == CONST_INT)
    return "li\t%^,%1\n\tjal\t%3,%^";
  else if (REGNO (target) != PIC_FUNCTION_ADDR_REGNUM)
    return "move\t%^,%1\n\tjal\t%3,%^";
  else
    return "jal\t%3,%1";
}
}

static const char *output_300 PARAMS ((rtx *, rtx));

static const char *
output_300 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[1]) != PIC_FUNCTION_ADDR_REGNUM)
    return "move\t%^,%1\n\tjal\t%3,%^";
  else
    return "jal\t%3,%1";
}
}

static const char *output_301 PARAMS ((rtx *, rtx));

static const char *
output_301 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (REGNO (operands[1]) != PIC_FUNCTION_ADDR_REGNUM)
    return "move\t%^,%1\n\tjal\t%3,%^";
  else
    return "jal\t%3,%1";
}
}

static const char *output_302 PARAMS ((rtx *, rtx));

static const char *
output_302 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  register rtx target = operands[1];

  if (GET_CODE (target) == SYMBOL_REF)
    return "%*jal\t%1";
  else if (GET_CODE (target) == CONST_INT)
    return "%[li\t%@,%1\n\t%*jal\t%4,%@%]";
  else
    return "%*jal\t%4,%1";
}
}

static const char *output_303 PARAMS ((rtx *, rtx));

static const char *
output_303 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  register rtx target = operands[1];

  if (GET_CODE (target) == SYMBOL_REF)
    {
      if (GET_MODE (target) == SImode)
	return "la\t%^,%1\n\tjal\t%4,%^";
      else
	return "la\t%^,%1\n\tjal\t%4,%^";
    }
  else if (GET_CODE (target) == CONST_INT)
    return "li\t%^,%1\n\tjal\t%4,%^";
  else if (REGNO (target) != PIC_FUNCTION_ADDR_REGNUM)
    return "move\t%^,%1\n\tjal\t%4,%^";
  else
    return "jal\t%4,%1";
}
}

static const char * const output_305[] = {
  "mov%B4\t%0,%z2,%1",
  "mov%b4\t%0,%z3,%1",
};

static const char * const output_306[] = {
  "mov%B4\t%0,%z2,%1",
  "mov%b4\t%0,%z3,%1",
};

static const char * const output_307[] = {
  "mov%T3\t%0,%z1,%4",
  "mov%t3\t%0,%z2,%4",
};

static const char * const output_308[] = {
  "mov%B4\t%0,%z2,%1",
  "mov%b4\t%0,%z3,%1",
};

static const char * const output_309[] = {
  "mov%B4\t%0,%z2,%1",
  "mov%b4\t%0,%z3,%1",
};

static const char * const output_310[] = {
  "mov%T3\t%0,%z1,%4",
  "mov%t3\t%0,%z2,%4",
};

static const char * const output_311[] = {
  "mov%B4.s\t%0,%2,%1",
  "mov%b4.s\t%0,%3,%1",
};

static const char * const output_312[] = {
  "mov%B4.s\t%0,%2,%1",
  "mov%b4.s\t%0,%3,%1",
};

static const char * const output_313[] = {
  "mov%T3.s\t%0,%1,%4",
  "mov%t3.s\t%0,%2,%4",
};

static const char * const output_314[] = {
  "mov%B4.d\t%0,%2,%1",
  "mov%b4.d\t%0,%3,%1",
};

static const char * const output_315[] = {
  "mov%B4.d\t%0,%2,%1",
  "mov%b4.d\t%0,%3,%1",
};

static const char * const output_316[] = {
  "mov%T3.d\t%0,%1,%4",
  "mov%t3.d\t%0,%2,%4",
};

static const char *output_317 PARAMS ((rtx *, rtx));

static const char *
output_317 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  assemble_integer (operands[0], 1, 1);
  return "";
}
}

static const char *output_318 PARAMS ((rtx *, rtx));

static const char *
output_318 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  assemble_integer (operands[0], 2, 1);
  return "";
}
}

static const char *output_319 PARAMS ((rtx *, rtx));

static const char *
output_319 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  assemble_integer (operands[0], 4, 1);
  return "";
}
}

static const char *output_320 PARAMS ((rtx *, rtx));

static const char *
output_320 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  assemble_integer (operands[0], 8, 1);
  return "";
}
}

static const char *output_321 PARAMS ((rtx *, rtx));

static const char *
output_321 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  union real_extract u;

  if (GET_CODE (operands[0]) != CONST_DOUBLE)
    abort ();
  bcopy ((char *) &CONST_DOUBLE_LOW (operands[0]), (char *) &u, sizeof u);
  assemble_real (u.d, SFmode);
  return "";
}
}

static const char *output_322 PARAMS ((rtx *, rtx));

static const char *
output_322 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  union real_extract u;

  if (GET_CODE (operands[0]) != CONST_DOUBLE)
    abort ();
  bcopy ((char *) &CONST_DOUBLE_LOW (operands[0]), (char *) &u, sizeof u);
  assemble_real (u.d, DFmode);
  return "";
}
}

static const char *output_510 PARAMS ((rtx *, rtx));

static const char *
output_510 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (operands[3] != pc_rtx)
    return "%*b%C2z\t%1,%3";
  else
    return "%*b%N2z\t%1,%4";
}
}

static const char *output_511 PARAMS ((rtx *, rtx));

static const char *
output_511 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (operands[3] != pc_rtx)
    return "%*b%C2z\t%1,%3";
  else
    return "%*b%N2z\t%1,%4";
}
}

static const char *output_512 PARAMS ((rtx *, rtx));

static const char *
output_512 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (operands[3] != pc_rtx)
    return "%*bt%C2z\t%3";
  else
    return "%*bt%N2z\t%4";
}
}

static const char *output_513 PARAMS ((rtx *, rtx));

static const char *
output_513 (operands, insn)
     rtx *operands ATTRIBUTE_UNUSED;
     rtx insn ATTRIBUTE_UNUSED;
{

{
  if (operands[3] != pc_rtx)
    return "%*bt%C2z\t%3";
  else
    return "%*bt%N2z\t%4";
}
}


extern int register_operand PARAMS ((rtx, enum machine_mode));
extern int reg_or_0_operand PARAMS ((rtx, enum machine_mode));
extern int arith_operand PARAMS ((rtx, enum machine_mode));
extern int small_int PARAMS ((rtx, enum machine_mode));
extern int se_reg_or_0_operand PARAMS ((rtx, enum machine_mode));
extern int se_arith_operand PARAMS ((rtx, enum machine_mode));
extern int scratch_operand PARAMS ((rtx, enum machine_mode));
extern int se_register_operand PARAMS ((rtx, enum machine_mode));
extern int extend_operator PARAMS ((rtx, enum machine_mode));
extern int highpart_shift_operator PARAMS ((rtx, enum machine_mode));
extern int const_float_1_operand PARAMS ((rtx, enum machine_mode));
extern int true_reg_or_0_operand PARAMS ((rtx, enum machine_mode));
extern int immediate_operand PARAMS ((rtx, enum machine_mode));
extern int nonmemory_operand PARAMS ((rtx, enum machine_mode));
extern int se_nonmemory_operand PARAMS ((rtx, enum machine_mode));
extern int uns_arith_operand PARAMS ((rtx, enum machine_mode));
extern int se_uns_arith_operand PARAMS ((rtx, enum machine_mode));
extern int memory_operand PARAMS ((rtx, enum machine_mode));
extern int nonimmediate_operand PARAMS ((rtx, enum machine_mode));
extern int se_nonimmediate_operand PARAMS ((rtx, enum machine_mode));
extern int general_operand PARAMS ((rtx, enum machine_mode));
extern int movdi_operand PARAMS ((rtx, enum machine_mode));
extern int move_operand PARAMS ((rtx, enum machine_mode));
extern int address_operand PARAMS ((rtx, enum machine_mode));
extern int cmp_op PARAMS ((rtx, enum machine_mode));
extern int equality_op PARAMS ((rtx, enum machine_mode));
extern int pc_or_label_operand PARAMS ((rtx, enum machine_mode));
extern int pmode_register_operand PARAMS ((rtx, enum machine_mode));
extern int call_insn_operand PARAMS ((rtx, enum machine_mode));
extern int consttable_operand PARAMS ((rtx, enum machine_mode));
extern int const_int_operand PARAMS ((rtx, enum machine_mode));
extern int large_int PARAMS ((rtx, enum machine_mode));
extern int arith32_operand PARAMS ((rtx, enum machine_mode));
extern int comparison_operator PARAMS ((rtx, enum machine_mode));



static const struct insn_operand_data operand_data[] = 
{
  {
    0,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "dJ",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "dI",
    SImode,
    0,
    1
  },
  {
    small_int,
    "I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    small_int,
    "I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "0,d,d",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "IQ,O,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,&d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "0,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "%d,%d,%d",
    DImode,
    0,
    1
  },
  {
    small_int,
    "P,J,N",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "dJ",
    DImode,
    0,
    1
  },
  {
    se_arith_operand,
    "dI",
    DImode,
    0,
    1
  },
  {
    small_int,
    "I",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    small_int,
    "I",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "0,d,d",
    DImode,
    0,
    1
  },
  {
    arith_operand,
    "IQ,O,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "dJ",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "dI",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "0,d,d",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "I,O,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "0,d,d",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "I,O,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d,d,d",
    DImode,
    0,
    1
  },
  {
    small_int,
    "P,J,N",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "0,d,d",
    DImode,
    0,
    1
  },
  {
    arith_operand,
    "I,O,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d,l",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h,h",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=l,X",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a,a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=l",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=l",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=l,*d,*d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d,d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d,d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "0,l,*d",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h,h,h",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=X,3,l",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a,a,a",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=X,X,d",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=l",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=l",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "=x",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=a",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=l",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=h",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "=h",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    highpart_shift_operator,
    "",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=l",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=h",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=l",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "+l",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "+x",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "+a",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    extend_operator,
    "",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=h",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=l",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    DFmode,
    0,
    1
  },
  {
    const_float_1_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    SFmode,
    0,
    1
  },
  {
    const_float_1_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "=l",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=h",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    0
  },
  {
    0,
    "",
    VOIDmode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=l",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=h",
    DImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    0
  },
  {
    0,
    "",
    VOIDmode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "d,d",
    VOIDmode,
    0,
    1
  },
  {
    true_reg_or_0_operand,
    "d,J",
    VOIDmode,
    0,
    1
  },
  {
    immediate_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=l",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    nonmemory_operand,
    "di",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=l",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_nonmemory_operand,
    "di",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=h",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    nonmemory_operand,
    "di",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=l",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=h",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_nonmemory_operand,
    "di",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=l",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=&d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=&d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=&d",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=&d",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    uns_arith_operand,
    "%d,d",
    SImode,
    0,
    1
  },
  {
    uns_arith_operand,
    "d,K",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "%0",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "0",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "%d,d",
    DImode,
    0,
    1
  },
  {
    se_uns_arith_operand,
    "d,K",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d,t,t",
    SImode,
    0,
    1
  },
  {
    uns_arith_operand,
    "%0,d,d",
    SImode,
    0,
    1
  },
  {
    uns_arith_operand,
    "d,K,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,t,t",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "%0,d,d",
    DImode,
    0,
    1
  },
  {
    se_uns_arith_operand,
    "d,K,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_uns_arith_operand,
    "K",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    HImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    QImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    small_int,
    "I",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    DImode,
    0,
    1
  },
  {
    memory_operand,
    "R,m",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "d,R,m",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    memory_operand,
    "R,m",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "d,R,m",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    DImode,
    0,
    1
  },
  {
    memory_operand,
    "R,m",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    HImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "d,R,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    HImode,
    0,
    1
  },
  {
    memory_operand,
    "R,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "d,R,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    memory_operand,
    "R,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "d,R,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    DImode,
    0,
    1
  },
  {
    memory_operand,
    "R,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d,y,d,*d,d,d",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "d,d,y,*x,R,m",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,*f,R,To",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "f,*f,f,f",
    DFmode,
    0,
    1
  },
  {
    scratch_operand,
    "=d,*d,&d,&d",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=f,?*X,f,f",
    DFmode,
    0,
    0
  },
  {
    nonimmediate_operand,
    "=d,*f,R,To",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "f,*f,f,f",
    SFmode,
    0,
    1
  },
  {
    scratch_operand,
    "=d,*d,&d,&d",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=f,?*X,f,f",
    SFmode,
    0,
    0
  },
  {
    nonimmediate_operand,
    "=d,*f,R,To",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "f,*f,f,f",
    DFmode,
    0,
    1
  },
  {
    scratch_operand,
    "=f,?*X,f,f",
    DFmode,
    0,
    0
  },
  {
    nonimmediate_operand,
    "=d,*f,R,To",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "f,*f,f,f",
    SFmode,
    0,
    1
  },
  {
    scratch_operand,
    "=f,?*X,f,f",
    DFmode,
    0,
    0
  },
  {
    register_operand,
    "=f,f,f",
    DFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "d,R,m",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=f,f,f",
    DFmode,
    0,
    1
  },
  {
    se_nonimmediate_operand,
    "d,R,m",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=f,f,f",
    SFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "d,R,m",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=f,f,f",
    SFmode,
    0,
    1
  },
  {
    se_nonimmediate_operand,
    "d,R,m",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=&d,&d",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "R,o",
    BLKmode,
    0,
    1
  },
  {
    memory_operand,
    "=R,o",
    BLKmode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "dJ,dJ",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=&d,&d",
    DImode,
    0,
    1
  },
  {
    general_operand,
    "R,o",
    BLKmode,
    0,
    1
  },
  {
    memory_operand,
    "=R,o",
    BLKmode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "dJ,dJ",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=r",
    SImode,
    0,
    1
  },
  {
    immediate_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=r",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "r",
    SImode,
    0,
    1
  },
  {
    immediate_operand,
    "",
    SImode,
    0,
    1
  },
  {
    memory_operand,
    "=R,m",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,d,R,o,*x,*d,*x",
    DImode,
    0,
    1
  },
  {
    general_operand,
    "d,iF,R,o,d,d,J,*x,*d",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,y,d,d,d,d,d,R,To,*d",
    DImode,
    0,
    1
  },
  {
    general_operand,
    "d,d,y,K,N,R,To,d,d,*x",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,d,d,d,R,m,*x,*d,*x,*a",
    DImode,
    0,
    1
  },
  {
    movdi_operand,
    "d,S,IKL,Mnis,R,m,dJ,dJ,J,*x,*d,*J",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,y,d,d,d,d,d,d,R,m,*d",
    DImode,
    0,
    1
  },
  {
    movdi_operand,
    "d,d,y,K,N,s,R,m,d,d,*x",
    DImode,
    0,
    1
  },
  {
    memory_operand,
    "=R,m",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,d,d,d,R,m,*d,*f*z,*f,*f,*f,*R,*m,*x,*x,*d,*d",
    SImode,
    0,
    1
  },
  {
    move_operand,
    "d,S,IKL,Mnis,R,m,dJ,dJ,*f*z,*d,*f,*R,*m,*f,*f,J,*d,*x,*a",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,d,d,d,R,m,*d,*z,*x,*d,*x,*d",
    SImode,
    0,
    1
  },
  {
    move_operand,
    "d,S,IKL,Mnis,R,m,dJ,dJ,*z,*d,J,*x,*d,*a",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,y,d,d,d,d,d,d,d,R,m,*d,*d",
    SImode,
    0,
    1
  },
  {
    move_operand,
    "d,d,y,S,K,N,s,R,m,d,d,*x,*a",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,*d,*d,*d,*R,*m,*d,*f,*f,*f,*f,*R,*m",
    CCmode,
    0,
    1
  },
  {
    general_operand,
    "z,*d,*R,*m,*d,*d,*f,*d,*f,*R,*m,*f,*f",
    CCmode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    SFmode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=f",
    DFmode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,d,R,m,*d,*f,*f*z,*x,*d",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "d,IK,R,m,dJ,dJ,*f*z,*d,*f,*d,*x",
    HImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,d,R,m,*d,*z,*x,*d",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "d,IK,R,m,dJ,dJ,*z,*d,*d,*x",
    HImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,y,d,d,d,d,d,R,m,*d",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "d,d,y,K,N,R,m,d,d,*x",
    HImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,d,R,m,*d,*f*z,*f,*x,*d",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "d,IK,R,m,dJ,dJ,*f*z,*d,*f,*d,*x",
    QImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,d,R,m,*d,*z,*x,*d",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "d,IK,R,m,dJ,dJ,*z,*d,*d,*x",
    QImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,y,d,d,d,d,d,R,m,*d",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "d,d,y,K,N,R,m,d,d,*x",
    QImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=f,f,f,f,R,m,*f,*d,*d,*d,*d,*R,*m",
    SFmode,
    0,
    1
  },
  {
    general_operand,
    "f,G,R,Fm,fG,fG,*d,*f,*G*d,*R,*F*m,*d,*d",
    SFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,R,m",
    SFmode,
    0,
    1
  },
  {
    general_operand,
    "Gd,R,Fm,d,d",
    SFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,y,d,d,d,R,m",
    SFmode,
    0,
    1
  },
  {
    general_operand,
    "d,d,y,R,Fm,d,d",
    SFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=f,f,f,R,To,f,*f,*d,*d,*d,*d,*R,*T",
    DFmode,
    0,
    1
  },
  {
    general_operand,
    "f,R,To,fG,fG,F,*d,*f,*d*G,*R,*T*F,*d,*d",
    DFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=f,f,R,R,To,To,*d,*d,*d,*To,*R,*d",
    DFmode,
    0,
    1
  },
  {
    general_operand,
    "f,To,f,G,f,G,*F,*To,*R,*d,*d,*d",
    DFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,d,d,R,To",
    DFmode,
    0,
    1
  },
  {
    general_operand,
    "dG,R,ToF,d,d",
    DFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=d,y,d,d,d,R,To",
    DFmode,
    0,
    1
  },
  {
    general_operand,
    "d,d,y,R,ToF,d,d",
    DFmode,
    0,
    1
  },
  {
    address_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    memory_operand,
    "=o",
    BLKmode,
    0,
    1
  },
  {
    memory_operand,
    "o",
    BLKmode,
    0,
    1
  },
  {
    small_int,
    "I",
    SImode,
    0,
    1
  },
  {
    small_int,
    "I",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    memory_operand,
    "=Ro",
    BLKmode,
    0,
    1
  },
  {
    memory_operand,
    "Ro",
    BLKmode,
    0,
    1
  },
  {
    small_int,
    "I",
    SImode,
    0,
    1
  },
  {
    small_int,
    "I",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=&d",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "dI",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "0,d",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "d,I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=&d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    small_int,
    "IJK",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    arith_operand,
    "dI",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "0,d",
    DImode,
    0,
    1
  },
  {
    arith_operand,
    "d,I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "0,0",
    DImode,
    0,
    1
  },
  {
    arith_operand,
    "d,I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    memory_operand,
    "R,m",
    SImode,
    0,
    1
  },
  {
    immediate_operand,
    "I,I",
    SImode,
    0,
    1
  },
  {
    cmp_op,
    "",
    CCmode,
    0,
    0
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "z",
    CCmode,
    0,
    1
  },
  {
    cmp_op,
    "",
    SImode,
    0,
    0
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    cmp_op,
    "",
    DImode,
    0,
    0
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    equality_op,
    "",
    SImode,
    0,
    0
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    equality_op,
    "",
    DImode,
    0,
    0
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    equality_op,
    "",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "d,t",
    SImode,
    0,
    1
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    equality_op,
    "",
    DImode,
    0,
    0
  },
  {
    se_register_operand,
    "d,t",
    DImode,
    0,
    1
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=t",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=t",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "%d,d",
    SImode,
    0,
    1
  },
  {
    uns_arith_operand,
    "d,K",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "dJ",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=t",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "dJ",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_arith_operand,
    "dI",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=t,t",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "d,I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=t,t",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d,d",
    DImode,
    0,
    1
  },
  {
    se_arith_operand,
    "d,I",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    small_int,
    "I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=t",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    small_int,
    "I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    small_int,
    "I",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=t",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    small_int,
    "I",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=t",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=z",
    CCmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "=z",
    CCmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    pmode_register_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    call_insn_operand,
    "ei",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=y",
    SImode,
    0,
    1
  },
  {
    call_insn_operand,
    "ri",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "r",
    SImode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    se_register_operand,
    "r",
    DImode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "e",
    SImode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=y",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    VOIDmode,
    0,
    1
  },
  {
    call_insn_operand,
    "ei",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=y",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=df",
    VOIDmode,
    0,
    1
  },
  {
    call_insn_operand,
    "ri",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=df",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "r",
    SImode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=df",
    VOIDmode,
    0,
    1
  },
  {
    se_register_operand,
    "r",
    DImode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=df",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "e",
    SImode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=y",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=df",
    VOIDmode,
    0,
    1
  },
  {
    call_insn_operand,
    "ri",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=df",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "dJ,0",
    SImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "0,dJ",
    SImode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    se_register_operand,
    "d,d",
    DImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "dJ,0",
    SImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "0,dJ",
    SImode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "dJ,0",
    SImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "0,dJ",
    SImode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "z,z",
    CCmode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "dJ,0",
    DImode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "0,dJ",
    DImode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=d,d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d,d",
    DImode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "dJ,0",
    DImode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "0,dJ",
    DImode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=d,d",
    DImode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "dJ,0",
    DImode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "0,dJ",
    DImode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "z,z",
    CCmode,
    0,
    1
  },
  {
    register_operand,
    "=f,f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "f,0",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "0,f",
    SFmode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=f,f",
    SFmode,
    0,
    1
  },
  {
    se_register_operand,
    "d,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "f,0",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "0,f",
    SFmode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=f,f",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "f,0",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "0,f",
    SFmode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "z,z",
    CCmode,
    0,
    1
  },
  {
    register_operand,
    "=f,f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "f,0",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "0,f",
    DFmode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=f,f",
    DFmode,
    0,
    1
  },
  {
    se_register_operand,
    "d,d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "f,0",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "0,f",
    DFmode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=f,f",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "f,0",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "0,f",
    DFmode,
    0,
    1
  },
  {
    equality_op,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "z,z",
    CCmode,
    0,
    1
  },
  {
    consttable_operand,
    "=g",
    QImode,
    0,
    1
  },
  {
    consttable_operand,
    "=g",
    HImode,
    0,
    1
  },
  {
    consttable_operand,
    "=g",
    SImode,
    0,
    1
  },
  {
    consttable_operand,
    "=g",
    DImode,
    0,
    1
  },
  {
    consttable_operand,
    "=g",
    SFmode,
    0,
    1
  },
  {
    consttable_operand,
    "=g",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    address_operand,
    "p",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    address_operand,
    "p",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    const_int_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    const_int_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    se_arith_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    small_int,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    const_int_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    const_int_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    small_int,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=l",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=h",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=l",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=h",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "d",
    VOIDmode,
    0,
    1
  },
  {
    true_reg_or_0_operand,
    "dJ",
    VOIDmode,
    0,
    1
  },
  {
    immediate_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=l",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "=h",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    scratch_operand,
    "=l",
    SImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "=l",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "di",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=h",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "=h",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "di",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=l",
    DImode,
    0,
    0
  },
  {
    scratch_operand,
    "=a",
    DImode,
    0,
    0
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "",
    HImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    memory_operand,
    "",
    QImode,
    0,
    1
  },
  {
    immediate_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    immediate_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    DImode,
    0,
    1
  },
  {
    general_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=b",
    DImode,
    0,
    1
  },
  {
    0,
    "b",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=&d",
    TImode,
    0,
    1
  },
  {
    0,
    "=b",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "b",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "=&d",
    TImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    large_int,
    "",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "=b",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "b",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=&d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=b",
    SImode,
    0,
    1
  },
  {
    0,
    "b",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=&d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=z",
    CCmode,
    0,
    1
  },
  {
    general_operand,
    "z",
    CCmode,
    0,
    1
  },
  {
    register_operand,
    "=&f",
    TFmode,
    0,
    1
  },
  {
    general_operand,
    "=z",
    CCmode,
    0,
    1
  },
  {
    register_operand,
    "z",
    CCmode,
    0,
    1
  },
  {
    register_operand,
    "=&d",
    CCmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "",
    HImode,
    0,
    1
  },
  {
    const_int_operand,
    "",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "",
    QImode,
    0,
    1
  },
  {
    const_int_operand,
    "",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    general_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    general_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    general_operand,
    "",
    BLKmode,
    0,
    1
  },
  {
    general_operand,
    "",
    BLKmode,
    0,
    1
  },
  {
    arith32_operand,
    "",
    SImode,
    0,
    1
  },
  {
    immediate_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    small_int,
    "",
    SImode,
    0,
    1
  },
  {
    small_int,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    arith_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    small_int,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    const_int_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    memory_operand,
    "",
    SImode,
    0,
    1
  },
  {
    immediate_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    uns_arith_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    se_uns_arith_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    se_register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    HImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "dI",
    SImode,
    0,
    1
  },
  {
    arith_operand,
    "",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    0
  },
  {
    scratch_operand,
    "",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "r",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "r",
    DImode,
    0,
    1
  },
  {
    memory_operand,
    "m",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=df",
    VOIDmode,
    0,
    1
  },
  {
    memory_operand,
    "m",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    comparison_operator,
    "",
    VOIDmode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "",
    SImode,
    0,
    1
  },
  {
    reg_or_0_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    DImode,
    0,
    1
  },
  {
    comparison_operator,
    "",
    VOIDmode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "",
    DImode,
    0,
    1
  },
  {
    se_reg_or_0_operand,
    "",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    comparison_operator,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    comparison_operator,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "",
    DFmode,
    0,
    1
  },
  {
    register_operand,
    "=t",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    equality_op,
    "",
    SImode,
    0,
    0
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=t",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    DImode,
    0,
    1
  },
  {
    equality_op,
    "",
    DImode,
    0,
    0
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "t",
    SImode,
    0,
    1
  },
  {
    equality_op,
    "",
    SImode,
    0,
    0
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    DImode,
    0,
    1
  },
  {
    register_operand,
    "t",
    DImode,
    0,
    1
  },
  {
    equality_op,
    "",
    DImode,
    0,
    0
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    pc_or_label_operand,
    "",
    VOIDmode,
    0,
    1
  },
};



const struct insn_data insn_data[] = 
{
  {
    "adddf3",
    "add.d\t%0,%1,%2",
    (insn_gen_fn) gen_adddf3,
    &operand_data[1],
    3,
    0,
    1,
    1
  },
  {
    "addsf3",
    "add.s\t%0,%1,%2",
    (insn_gen_fn) gen_addsf3,
    &operand_data[4],
    3,
    0,
    1,
    1
  },
  {
    "addsi3_internal",
    "addu\t%0,%z1,%2",
    (insn_gen_fn) gen_addsi3_internal,
    &operand_data[7],
    3,
    0,
    1,
    1
  },
  {
    "addsi3_internal+1",
    "addu\t%$,%$,%0",
    0,
    &operand_data[10],
    1,
    0,
    1,
    1
  },
  {
    "addsi3_internal+2",
    "addu\t%0,%$,%1",
    0,
    &operand_data[11],
    2,
    0,
    1,
    1
  },
  {
    "adddi3_internal_1-1",
    (const PTR) output_5,
    0,
    &operand_data[13],
    3,
    0,
    3,
    3
  },
  {
    "adddi3_internal_1",
    (const PTR) output_6,
    (insn_gen_fn) gen_adddi3_internal_1,
    &operand_data[16],
    4,
    0,
    2,
    3
  },
  {
    "adddi3_internal_2",
    (const PTR) output_7,
    (insn_gen_fn) gen_adddi3_internal_2,
    &operand_data[20],
    4,
    0,
    3,
    2
  },
  {
    "adddi3_internal_3",
    (const PTR) output_8,
    (insn_gen_fn) gen_adddi3_internal_3,
    &operand_data[24],
    3,
    0,
    1,
    3
  },
  {
    "adddi3_internal_3+1",
    "daddu\t%$,%$,%0",
    0,
    &operand_data[27],
    1,
    0,
    1,
    1
  },
  {
    "adddi3_internal_3+2",
    "daddu\t%0,%$,%1",
    0,
    &operand_data[28],
    2,
    0,
    1,
    1
  },
  {
    "addsi3_internal_2-1",
    (const PTR) output_11,
    0,
    &operand_data[30],
    3,
    0,
    3,
    3
  },
  {
    "addsi3_internal_2",
    (const PTR) output_12,
    (insn_gen_fn) gen_addsi3_internal_2,
    &operand_data[33],
    3,
    0,
    1,
    3
  },
  {
    "addsi3_internal_2+1",
    (const PTR) output_13,
    0,
    &operand_data[36],
    3,
    0,
    3,
    3
  },
  {
    "subdf3",
    "sub.d\t%0,%1,%2",
    (insn_gen_fn) gen_subdf3,
    &operand_data[1],
    3,
    0,
    1,
    1
  },
  {
    "subsf3",
    "sub.s\t%0,%1,%2",
    (insn_gen_fn) gen_subsf3,
    &operand_data[4],
    3,
    0,
    1,
    1
  },
  {
    "subsi3_internal",
    "subu\t%0,%z1,%2",
    (insn_gen_fn) gen_subsi3_internal,
    &operand_data[7],
    3,
    0,
    1,
    1
  },
  {
    "subsi3_internal+1",
    "addu\t%$,%$,%n0",
    0,
    &operand_data[10],
    1,
    0,
    1,
    1
  },
  {
    "subsi3_internal+2",
    "addu\t%0,%$,%n1",
    0,
    &operand_data[11],
    2,
    0,
    1,
    1
  },
  {
    "subdi3_internal-1",
    (const PTR) output_19,
    0,
    &operand_data[39],
    3,
    0,
    3,
    3
  },
  {
    "subdi3_internal",
    "sltu\t%3,%L1,%L2\n\tsubu\t%L0,%L1,%L2\n\tsubu\t%M0,%M1,%M2\n\tsubu\t%M0,%M0,%3",
    (insn_gen_fn) gen_subdi3_internal,
    &operand_data[42],
    4,
    0,
    1,
    1
  },
  {
    "subdi3_internal_2",
    (const PTR) output_21,
    (insn_gen_fn) gen_subdi3_internal_2,
    &operand_data[46],
    4,
    0,
    3,
    2
  },
  {
    "subdi3_internal_3",
    (const PTR) output_22,
    (insn_gen_fn) gen_subdi3_internal_3,
    &operand_data[24],
    3,
    0,
    1,
    3
  },
  {
    "subdi3_internal_3+1",
    "daddu\t%$,%$,%n0",
    0,
    &operand_data[27],
    1,
    0,
    1,
    1
  },
  {
    "subdi3_internal_3+2",
    "daddu\t%0,%$,%n1",
    0,
    &operand_data[28],
    2,
    0,
    1,
    1
  },
  {
    "subsi3_internal_2-1",
    (const PTR) output_25,
    0,
    &operand_data[50],
    3,
    0,
    3,
    3
  },
  {
    "subsi3_internal_2",
    (const PTR) output_26,
    (insn_gen_fn) gen_subsi3_internal_2,
    &operand_data[33],
    3,
    0,
    1,
    3
  },
  {
    "subsi3_internal_2+1",
    (const PTR) output_27,
    0,
    &operand_data[36],
    3,
    0,
    3,
    3
  },
  {
    "muldf3_internal",
    "mul.d\t%0,%1,%2",
    (insn_gen_fn) gen_muldf3_internal,
    &operand_data[1],
    3,
    0,
    1,
    1
  },
  {
    "muldf3_r4300",
    (const PTR) output_29,
    (insn_gen_fn) gen_muldf3_r4300,
    &operand_data[1],
    3,
    0,
    1,
    3
  },
  {
    "mulsf3_internal",
    "mul.s\t%0,%1,%2",
    (insn_gen_fn) gen_mulsf3_internal,
    &operand_data[4],
    3,
    0,
    1,
    1
  },
  {
    "mulsf3_r4300",
    (const PTR) output_31,
    (insn_gen_fn) gen_mulsf3_r4300,
    &operand_data[4],
    3,
    0,
    1,
    3
  },
  {
    "mulsi3_mult3",
    (const PTR) output_32,
    (insn_gen_fn) gen_mulsi3_mult3,
    &operand_data[53],
    6,
    0,
    2,
    3
  },
  {
    "mulsi3_internal",
    "mult\t%1,%2",
    (insn_gen_fn) gen_mulsi3_internal,
    &operand_data[59],
    5,
    0,
    1,
    1
  },
  {
    "mulsi3_r4000",
    (const PTR) output_34,
    (insn_gen_fn) gen_mulsi3_r4000,
    &operand_data[64],
    6,
    0,
    1,
    3
  },
  {
    "*mul_acc_si",
    (const PTR) output_35,
    0,
    &operand_data[70],
    8,
    0,
    3,
    3
  },
  {
    "muldi3_internal",
    "dmult\t%1,%2",
    (insn_gen_fn) gen_muldi3_internal,
    &operand_data[78],
    5,
    0,
    1,
    1
  },
  {
    "muldi3_internal2",
    (const PTR) output_37,
    (insn_gen_fn) gen_muldi3_internal2,
    &operand_data[83],
    6,
    0,
    1,
    3
  },
  {
    "mulsidi3_internal",
    (const PTR) output_38,
    (insn_gen_fn) gen_mulsidi3_internal,
    &operand_data[89],
    6,
    0,
    1,
    3
  },
  {
    "mulsidi3_64bit",
    (const PTR) output_39,
    (insn_gen_fn) gen_mulsidi3_64bit,
    &operand_data[95],
    7,
    0,
    1,
    3
  },
  {
    "xmulsi3_highpart_internal",
    (const PTR) output_40,
    (insn_gen_fn) gen_xmulsi3_highpart_internal,
    &operand_data[102],
    8,
    0,
    1,
    3
  },
  {
    "smuldi3_highpart",
    "dmult\t%1,%2",
    (insn_gen_fn) gen_smuldi3_highpart,
    &operand_data[110],
    5,
    0,
    1,
    1
  },
  {
    "umuldi3_highpart",
    "dmultu\t%1,%2",
    (insn_gen_fn) gen_umuldi3_highpart,
    &operand_data[110],
    5,
    0,
    1,
    1
  },
  {
    "madsi",
    "mad\t%1,%2",
    (insn_gen_fn) gen_madsi,
    &operand_data[115],
    5,
    1,
    1,
    1
  },
  {
    "*mul_acc_di",
    (const PTR) output_44,
    0,
    &operand_data[120],
    6,
    1,
    1,
    3
  },
  {
    "*mul_acc_64bit_di",
    (const PTR) output_45,
    0,
    &operand_data[126],
    7,
    1,
    1,
    3
  },
  {
    "*mul_acc_64bit_di+1",
    "madd.d\t%0,%3,%1,%2",
    0,
    &operand_data[133],
    4,
    0,
    1,
    1
  },
  {
    "*mul_acc_64bit_di+2",
    "madd.s\t%0,%3,%1,%2",
    0,
    &operand_data[137],
    4,
    0,
    1,
    1
  },
  {
    "*mul_acc_64bit_di+3",
    "msub.d\t%0,%3,%1,%2",
    0,
    &operand_data[133],
    4,
    0,
    1,
    1
  },
  {
    "*mul_acc_64bit_di+4",
    "msub.s\t%0,%3,%1,%2",
    0,
    &operand_data[137],
    4,
    0,
    1,
    1
  },
  {
    "divdf3-4",
    "nmadd.d\t%0,%3,%1,%2",
    0,
    &operand_data[133],
    4,
    0,
    1,
    1
  },
  {
    "divdf3-3",
    "nmadd.s\t%0,%3,%1,%2",
    0,
    &operand_data[137],
    4,
    0,
    1,
    1
  },
  {
    "divdf3-2",
    "nmsub.d\t%0,%1,%2,%3",
    0,
    &operand_data[133],
    4,
    0,
    1,
    1
  },
  {
    "divdf3-1",
    "nmsub.s\t%0,%1,%2,%3",
    0,
    &operand_data[137],
    4,
    0,
    1,
    1
  },
  {
    "divdf3",
    "div.d\t%0,%1,%2",
    (insn_gen_fn) gen_divdf3,
    &operand_data[1],
    3,
    0,
    1,
    1
  },
  {
    "divsf3",
    "div.s\t%0,%1,%2",
    (insn_gen_fn) gen_divsf3,
    &operand_data[4],
    3,
    0,
    1,
    1
  },
  {
    "divsf3+1",
    "recip.d\t%0,%2",
    0,
    &operand_data[141],
    3,
    0,
    1,
    1
  },
  {
    "divmodsi4_internal-1",
    "recip.s\t%0,%2",
    0,
    &operand_data[144],
    3,
    0,
    1,
    1
  },
  {
    "divmodsi4_internal",
    "div\t$0,%1,%2",
    (insn_gen_fn) gen_divmodsi4_internal,
    &operand_data[147],
    7,
    2,
    1,
    1
  },
  {
    "divmoddi4_internal",
    "ddiv\t$0,%1,%2",
    (insn_gen_fn) gen_divmoddi4_internal,
    &operand_data[154],
    7,
    2,
    1,
    1
  },
  {
    "udivmodsi4_internal",
    "divu\t$0,%1,%2",
    (insn_gen_fn) gen_udivmodsi4_internal,
    &operand_data[147],
    7,
    2,
    1,
    1
  },
  {
    "udivmoddi4_internal",
    "ddivu\t$0,%1,%2",
    (insn_gen_fn) gen_udivmoddi4_internal,
    &operand_data[154],
    7,
    2,
    1,
    1
  },
  {
    "div_trap_normal",
    (const PTR) output_62,
    (insn_gen_fn) gen_div_trap_normal,
    &operand_data[161],
    3,
    0,
    2,
    3
  },
  {
    "div_trap_mips16",
    (const PTR) output_63,
    (insn_gen_fn) gen_div_trap_mips16,
    &operand_data[161],
    3,
    0,
    2,
    3
  },
  {
    "divsi3_internal",
    "div\t$0,%1,%2",
    (insn_gen_fn) gen_divsi3_internal,
    &operand_data[164],
    5,
    0,
    1,
    1
  },
  {
    "divdi3_internal",
    "ddiv\t$0,%1,%2",
    (insn_gen_fn) gen_divdi3_internal,
    &operand_data[169],
    5,
    0,
    1,
    1
  },
  {
    "modsi3_internal",
    "div\t$0,%1,%2",
    (insn_gen_fn) gen_modsi3_internal,
    &operand_data[174],
    5,
    0,
    1,
    1
  },
  {
    "moddi3_internal",
    "ddiv\t$0,%1,%2",
    (insn_gen_fn) gen_moddi3_internal,
    &operand_data[179],
    5,
    0,
    1,
    1
  },
  {
    "udivsi3_internal",
    "divu\t$0,%1,%2",
    (insn_gen_fn) gen_udivsi3_internal,
    &operand_data[164],
    5,
    0,
    1,
    1
  },
  {
    "udivdi3_internal",
    "ddivu\t$0,%1,%2",
    (insn_gen_fn) gen_udivdi3_internal,
    &operand_data[169],
    5,
    0,
    1,
    1
  },
  {
    "umodsi3_internal",
    "divu\t$0,%1,%2",
    (insn_gen_fn) gen_umodsi3_internal,
    &operand_data[174],
    5,
    0,
    1,
    1
  },
  {
    "umoddi3_internal",
    "ddivu\t$0,%1,%2",
    (insn_gen_fn) gen_umoddi3_internal,
    &operand_data[179],
    5,
    0,
    1,
    1
  },
  {
    "sqrtdf2",
    "sqrt.d\t%0,%1",
    (insn_gen_fn) gen_sqrtdf2,
    &operand_data[1],
    2,
    0,
    1,
    1
  },
  {
    "sqrtsf2",
    "sqrt.s\t%0,%1",
    (insn_gen_fn) gen_sqrtsf2,
    &operand_data[4],
    2,
    0,
    1,
    1
  },
  {
    "sqrtsf2+1",
    "rsqrt.d\t%0,%2",
    0,
    &operand_data[141],
    3,
    0,
    1,
    1
  },
  {
    "abssi2-1",
    "rsqrt.s\t%0,%2",
    0,
    &operand_data[144],
    3,
    0,
    1,
    1
  },
  {
    "abssi2",
    (const PTR) output_76,
    (insn_gen_fn) gen_abssi2,
    &operand_data[64],
    2,
    0,
    1,
    3
  },
  {
    "absdi2",
    (const PTR) output_77,
    (insn_gen_fn) gen_absdi2,
    &operand_data[83],
    2,
    0,
    1,
    3
  },
  {
    "absdf2",
    "abs.d\t%0,%1",
    (insn_gen_fn) gen_absdf2,
    &operand_data[1],
    2,
    0,
    1,
    1
  },
  {
    "abssf2",
    "abs.s\t%0,%1",
    (insn_gen_fn) gen_abssf2,
    &operand_data[4],
    2,
    0,
    1,
    1
  },
  {
    "ffssi2",
    (const PTR) output_80,
    (insn_gen_fn) gen_ffssi2,
    &operand_data[184],
    4,
    0,
    1,
    3
  },
  {
    "ffsdi2",
    (const PTR) output_81,
    (insn_gen_fn) gen_ffsdi2,
    &operand_data[188],
    4,
    0,
    1,
    3
  },
  {
    "negsi2",
    (const PTR) output_82,
    (insn_gen_fn) gen_negsi2,
    &operand_data[64],
    2,
    0,
    1,
    3
  },
  {
    "negdi2_internal",
    (const PTR) output_83,
    (insn_gen_fn) gen_negdi2_internal,
    &operand_data[192],
    3,
    0,
    1,
    3
  },
  {
    "negdi2_internal_2",
    (const PTR) output_84,
    (insn_gen_fn) gen_negdi2_internal_2,
    &operand_data[83],
    2,
    0,
    1,
    3
  },
  {
    "negdf2",
    "neg.d\t%0,%1",
    (insn_gen_fn) gen_negdf2,
    &operand_data[1],
    2,
    0,
    1,
    1
  },
  {
    "negsf2",
    "neg.s\t%0,%1",
    (insn_gen_fn) gen_negsf2,
    &operand_data[4],
    2,
    0,
    1,
    1
  },
  {
    "one_cmplsi2",
    (const PTR) output_87,
    (insn_gen_fn) gen_one_cmplsi2,
    &operand_data[64],
    2,
    0,
    1,
    3
  },
  {
    "one_cmpldi2",
    (const PTR) output_88,
    (insn_gen_fn) gen_one_cmpldi2,
    &operand_data[83],
    2,
    0,
    1,
    3
  },
  {
    "one_cmpldi2+1",
    (const PTR) output_89,
    0,
    &operand_data[195],
    3,
    0,
    2,
    2
  },
  {
    "one_cmpldi2+2",
    "and\t%0,%2",
    0,
    &operand_data[198],
    3,
    0,
    1,
    1
  },
  {
    "anddi3_internal1-2",
    (const PTR) output_91,
    0,
    &operand_data[201],
    3,
    0,
    1,
    3
  },
  {
    "anddi3_internal1-1",
    (const PTR) output_92,
    0,
    &operand_data[204],
    3,
    0,
    1,
    3
  },
  {
    "anddi3_internal1",
    (const PTR) output_93,
    (insn_gen_fn) gen_anddi3_internal1,
    &operand_data[207],
    3,
    0,
    2,
    2
  },
  {
    "anddi3_internal1+1",
    (const PTR) output_94,
    0,
    &operand_data[195],
    3,
    0,
    2,
    2
  },
  {
    "anddi3_internal1+2",
    "or\t%0,%2",
    0,
    &operand_data[198],
    3,
    0,
    1,
    1
  },
  {
    "anddi3_internal1+3",
    (const PTR) output_96,
    0,
    &operand_data[201],
    3,
    0,
    1,
    3
  },
  {
    "anddi3_internal1+4",
    (const PTR) output_97,
    0,
    &operand_data[204],
    3,
    0,
    1,
    3
  },
  {
    "anddi3_internal1+5",
    (const PTR) output_98,
    0,
    &operand_data[195],
    3,
    0,
    2,
    2
  },
  {
    "xordi3_immed-4",
    (const PTR) output_99,
    0,
    &operand_data[210],
    3,
    0,
    3,
    2
  },
  {
    "xordi3_immed-3",
    (const PTR) output_100,
    0,
    &operand_data[201],
    3,
    0,
    1,
    3
  },
  {
    "xordi3_immed-2",
    "xor\t%M0,%M2\n\txor\t%L0,%L2",
    0,
    &operand_data[204],
    3,
    0,
    1,
    1
  },
  {
    "xordi3_immed-1",
    (const PTR) output_102,
    0,
    &operand_data[213],
    3,
    0,
    3,
    2
  },
  {
    "xordi3_immed",
    "xori\t%0,%1,%x2",
    (insn_gen_fn) gen_xordi3_immed,
    &operand_data[216],
    3,
    0,
    1,
    1
  },
  {
    "*norsi3",
    "nor\t%0,%z1,%z2",
    0,
    &operand_data[64],
    3,
    0,
    1,
    1
  },
  {
    "*nordi3",
    (const PTR) output_105,
    0,
    &operand_data[201],
    3,
    0,
    1,
    3
  },
  {
    "truncdfsf2",
    "cvt.s.d\t%0,%1",
    (insn_gen_fn) gen_truncdfsf2,
    &operand_data[219],
    2,
    0,
    1,
    1
  },
  {
    "truncdisi2",
    (const PTR) output_107,
    (insn_gen_fn) gen_truncdisi2,
    &operand_data[221],
    2,
    0,
    1,
    3
  },
  {
    "truncdihi2",
    (const PTR) output_108,
    (insn_gen_fn) gen_truncdihi2,
    &operand_data[223],
    2,
    0,
    1,
    3
  },
  {
    "truncdiqi2",
    (const PTR) output_109,
    (insn_gen_fn) gen_truncdiqi2,
    &operand_data[225],
    2,
    0,
    1,
    3
  },
  {
    "truncdiqi2+1",
    (const PTR) output_110,
    0,
    &operand_data[227],
    3,
    0,
    1,
    3
  },
  {
    "truncdiqi2+2",
    (const PTR) output_111,
    0,
    &operand_data[227],
    3,
    0,
    1,
    3
  },
  {
    "truncdiqi2+3",
    (const PTR) output_112,
    0,
    &operand_data[227],
    3,
    0,
    1,
    3
  },
  {
    "zero_extendsidi2_internal-3",
    "andi\t%0,%1,0xffff",
    0,
    &operand_data[221],
    2,
    0,
    1,
    1
  },
  {
    "zero_extendsidi2_internal-2",
    "andi\t%0,%1,0xff",
    0,
    &operand_data[221],
    2,
    0,
    1,
    1
  },
  {
    "zero_extendsidi2_internal-1",
    "andi\t%0,%1,0xff",
    0,
    &operand_data[223],
    2,
    0,
    1,
    1
  },
  {
    "zero_extendsidi2_internal",
    (const PTR) output_116,
    (insn_gen_fn) gen_zero_extendsidi2_internal,
    &operand_data[230],
    2,
    0,
    2,
    3
  },
  {
    "zero_extendsidi2_internal+1",
    (const PTR) output_117,
    0,
    &operand_data[232],
    2,
    0,
    3,
    3
  },
  {
    "zero_extendsidi2_internal+2",
    (const PTR) output_118,
    0,
    &operand_data[234],
    2,
    0,
    2,
    3
  },
  {
    "zero_extendsidi2_internal+3",
    (const PTR) output_119,
    0,
    &operand_data[236],
    2,
    0,
    3,
    3
  },
  {
    "zero_extendsidi2_internal+4",
    (const PTR) output_120,
    0,
    &operand_data[238],
    2,
    0,
    2,
    3
  },
  {
    "zero_extendsidi2_internal+5",
    (const PTR) output_121,
    0,
    &operand_data[240],
    2,
    0,
    3,
    3
  },
  {
    "*paradoxical_extendhidi2-4",
    (const PTR) output_122,
    0,
    &operand_data[242],
    2,
    0,
    2,
    3
  },
  {
    "*paradoxical_extendhidi2-3",
    (const PTR) output_123,
    0,
    &operand_data[244],
    2,
    0,
    3,
    3
  },
  {
    "*paradoxical_extendhidi2-2",
    (const PTR) output_124,
    0,
    &operand_data[246],
    2,
    0,
    2,
    3
  },
  {
    "*paradoxical_extendhidi2-1",
    (const PTR) output_125,
    0,
    &operand_data[248],
    2,
    0,
    3,
    3
  },
  {
    "*paradoxical_extendhidi2",
    (const PTR) output_126,
    0,
    &operand_data[238],
    2,
    0,
    2,
    3
  },
  {
    "*paradoxical_extendhidi2+1",
    (const PTR) output_127,
    0,
    &operand_data[250],
    2,
    0,
    2,
    3
  },
  {
    "extendsidi2",
    (const PTR) output_128,
    (insn_gen_fn) gen_extendsidi2,
    &operand_data[252],
    2,
    0,
    6,
    3
  },
  {
    "extendhidi2_internal",
    (const PTR) output_129,
    (insn_gen_fn) gen_extendhidi2_internal,
    &operand_data[238],
    2,
    0,
    2,
    3
  },
  {
    "extendhisi2_internal",
    (const PTR) output_130,
    (insn_gen_fn) gen_extendhisi2_internal,
    &operand_data[234],
    2,
    0,
    2,
    3
  },
  {
    "extendqihi2_internal",
    (const PTR) output_131,
    (insn_gen_fn) gen_extendqihi2_internal,
    &operand_data[242],
    2,
    0,
    2,
    3
  },
  {
    "extendqisi2_insn",
    (const PTR) output_132,
    (insn_gen_fn) gen_extendqisi2_insn,
    &operand_data[246],
    2,
    0,
    2,
    3
  },
  {
    "extendqidi2_insn",
    (const PTR) output_133,
    (insn_gen_fn) gen_extendqidi2_insn,
    &operand_data[250],
    2,
    0,
    2,
    3
  },
  {
    "extendsfdf2",
    "cvt.d.s\t%0,%1",
    (insn_gen_fn) gen_extendsfdf2,
    &operand_data[254],
    2,
    0,
    1,
    1
  },
  {
    "fix_truncdfsi2",
    (const PTR) output_135,
    (insn_gen_fn) gen_fix_truncdfsi2,
    &operand_data[256],
    4,
    0,
    4,
    3
  },
  {
    "fix_truncsfsi2",
    (const PTR) output_136,
    (insn_gen_fn) gen_fix_truncsfsi2,
    &operand_data[260],
    4,
    0,
    4,
    3
  },
  {
    "fix_truncdfdi2",
    (const PTR) output_137,
    (insn_gen_fn) gen_fix_truncdfdi2,
    &operand_data[264],
    3,
    0,
    4,
    3
  },
  {
    "fix_truncsfdi2",
    (const PTR) output_138,
    (insn_gen_fn) gen_fix_truncsfdi2,
    &operand_data[267],
    3,
    0,
    4,
    3
  },
  {
    "floatsidf2",
    (const PTR) output_139,
    (insn_gen_fn) gen_floatsidf2,
    &operand_data[270],
    2,
    0,
    3,
    3
  },
  {
    "floatdidf2",
    (const PTR) output_140,
    (insn_gen_fn) gen_floatdidf2,
    &operand_data[272],
    2,
    0,
    3,
    3
  },
  {
    "floatsisf2",
    (const PTR) output_141,
    (insn_gen_fn) gen_floatsisf2,
    &operand_data[274],
    2,
    0,
    3,
    3
  },
  {
    "floatdisf2",
    (const PTR) output_142,
    (insn_gen_fn) gen_floatdisf2,
    &operand_data[276],
    2,
    0,
    3,
    3
  },
  {
    "movsi_ulw",
    (const PTR) output_143,
    (insn_gen_fn) gen_movsi_ulw,
    &operand_data[278],
    2,
    0,
    2,
    3
  },
  {
    "movsi_usw",
    (const PTR) output_144,
    (insn_gen_fn) gen_movsi_usw,
    &operand_data[280],
    2,
    0,
    2,
    3
  },
  {
    "movdi_uld",
    (const PTR) output_145,
    (insn_gen_fn) gen_movdi_uld,
    &operand_data[282],
    2,
    0,
    2,
    3
  },
  {
    "movdi_usd",
    (const PTR) output_146,
    (insn_gen_fn) gen_movdi_usd,
    &operand_data[284],
    2,
    0,
    2,
    3
  },
  {
    "high",
    "lui\t%0,%%hi(%1) # high",
    (insn_gen_fn) gen_high,
    &operand_data[286],
    2,
    0,
    1,
    1
  },
  {
    "low",
    "addiu\t%0,%1,%%lo(%2) # low",
    (insn_gen_fn) gen_low,
    &operand_data[288],
    3,
    0,
    1,
    1
  },
  {
    "low+1",
    (const PTR) output_149,
    0,
    &operand_data[291],
    1,
    0,
    2,
    3
  },
  {
    "movdi_internal",
    (const PTR) output_150,
    (insn_gen_fn) gen_movdi_internal,
    &operand_data[292],
    2,
    0,
    9,
    3
  },
  {
    "movdi_internal+1",
    (const PTR) output_151,
    0,
    &operand_data[294],
    2,
    0,
    10,
    3
  },
  {
    "movdi_internal2",
    (const PTR) output_152,
    (insn_gen_fn) gen_movdi_internal2,
    &operand_data[296],
    2,
    0,
    12,
    3
  },
  {
    "movdi_internal2+1",
    (const PTR) output_153,
    0,
    &operand_data[298],
    2,
    0,
    11,
    3
  },
  {
    "movsi_internal1-1",
    (const PTR) output_154,
    0,
    &operand_data[300],
    1,
    0,
    2,
    3
  },
  {
    "movsi_internal1",
    (const PTR) output_155,
    (insn_gen_fn) gen_movsi_internal1,
    &operand_data[301],
    2,
    0,
    19,
    3
  },
  {
    "movsi_internal2",
    (const PTR) output_156,
    (insn_gen_fn) gen_movsi_internal2,
    &operand_data[303],
    2,
    0,
    14,
    3
  },
  {
    "movsi_internal2+1",
    (const PTR) output_157,
    0,
    &operand_data[305],
    2,
    0,
    13,
    3
  },
  {
    "movcc",
    (const PTR) output_158,
    (insn_gen_fn) gen_movcc,
    &operand_data[307],
    2,
    0,
    13,
    3
  },
  {
    "movcc+1",
    "lwxc1\t%0,%1(%2)",
    0,
    &operand_data[309],
    3,
    0,
    1,
    1
  },
  {
    "movcc+2",
    "lwxc1\t%0,%1(%2)",
    0,
    &operand_data[312],
    3,
    0,
    1,
    1
  },
  {
    "movcc+3",
    "ldxc1\t%0,%1(%2)",
    0,
    &operand_data[315],
    3,
    0,
    1,
    1
  },
  {
    "movcc+4",
    "ldxc1\t%0,%1(%2)",
    0,
    &operand_data[318],
    3,
    0,
    1,
    1
  },
  {
    "movhi_internal1-4",
    "swxc1\t%0,%1(%2)",
    0,
    &operand_data[321],
    3,
    0,
    1,
    1
  },
  {
    "movhi_internal1-3",
    "swxc1\t%0,%1(%2)",
    0,
    &operand_data[324],
    3,
    0,
    1,
    1
  },
  {
    "movhi_internal1-2",
    "sdxc1\t%0,%1(%2)",
    0,
    &operand_data[327],
    3,
    0,
    1,
    1
  },
  {
    "movhi_internal1-1",
    "sdxc1\t%0,%1(%2)",
    0,
    &operand_data[330],
    3,
    0,
    1,
    1
  },
  {
    "movhi_internal1",
    (const PTR) output_167,
    (insn_gen_fn) gen_movhi_internal1,
    &operand_data[333],
    2,
    0,
    11,
    3
  },
  {
    "movhi_internal2",
    (const PTR) output_168,
    (insn_gen_fn) gen_movhi_internal2,
    &operand_data[335],
    2,
    0,
    10,
    3
  },
  {
    "movhi_internal2+1",
    (const PTR) output_169,
    0,
    &operand_data[337],
    2,
    0,
    10,
    3
  },
  {
    "movqi_internal1",
    (const PTR) output_170,
    (insn_gen_fn) gen_movqi_internal1,
    &operand_data[339],
    2,
    0,
    11,
    3
  },
  {
    "movqi_internal2",
    (const PTR) output_171,
    (insn_gen_fn) gen_movqi_internal2,
    &operand_data[341],
    2,
    0,
    10,
    3
  },
  {
    "movqi_internal2+1",
    (const PTR) output_172,
    0,
    &operand_data[343],
    2,
    0,
    10,
    3
  },
  {
    "movsf_internal1",
    (const PTR) output_173,
    (insn_gen_fn) gen_movsf_internal1,
    &operand_data[345],
    2,
    0,
    13,
    3
  },
  {
    "movsf_internal2",
    (const PTR) output_174,
    (insn_gen_fn) gen_movsf_internal2,
    &operand_data[347],
    2,
    0,
    5,
    3
  },
  {
    "movsf_internal2+1",
    (const PTR) output_175,
    0,
    &operand_data[349],
    2,
    0,
    7,
    3
  },
  {
    "movdf_internal1",
    (const PTR) output_176,
    (insn_gen_fn) gen_movdf_internal1,
    &operand_data[351],
    2,
    0,
    13,
    3
  },
  {
    "movdf_internal1a",
    (const PTR) output_177,
    (insn_gen_fn) gen_movdf_internal1a,
    &operand_data[353],
    2,
    0,
    12,
    3
  },
  {
    "movdf_internal2",
    (const PTR) output_178,
    (insn_gen_fn) gen_movdf_internal2,
    &operand_data[355],
    2,
    0,
    5,
    3
  },
  {
    "movdf_internal2+1",
    (const PTR) output_179,
    0,
    &operand_data[357],
    2,
    0,
    7,
    3
  },
  {
    "loadgp",
    "%[lui\t$1,%%hi(%%neg(%%gp_rel(%a0)))\n\taddiu\t$1,$1,%%lo(%%neg(%%gp_rel(%a0)))\n\tdaddu\t$gp,$1,%1%]",
    (insn_gen_fn) gen_loadgp,
    &operand_data[359],
    2,
    0,
    0,
    1
  },
  {
    "movstrsi_internal",
    (const PTR) output_181,
    (insn_gen_fn) gen_movstrsi_internal,
    &operand_data[361],
    8,
    0,
    1,
    3
  },
  {
    "movstrsi_internal+1",
    (const PTR) output_182,
    0,
    &operand_data[361],
    8,
    0,
    1,
    3
  },
  {
    "movstrsi_internal2",
    (const PTR) output_183,
    (insn_gen_fn) gen_movstrsi_internal2,
    &operand_data[361],
    8,
    0,
    1,
    3
  },
  {
    "movstrsi_internal2+1",
    (const PTR) output_184,
    0,
    &operand_data[361],
    8,
    0,
    1,
    3
  },
  {
    "movstrsi_internal3",
    (const PTR) output_185,
    (insn_gen_fn) gen_movstrsi_internal3,
    &operand_data[369],
    8,
    0,
    1,
    3
  },
  {
    "ashlsi3_internal1",
    (const PTR) output_186,
    (insn_gen_fn) gen_ashlsi3_internal1,
    &operand_data[377],
    3,
    0,
    1,
    3
  },
  {
    "ashlsi3_internal2",
    (const PTR) output_187,
    (insn_gen_fn) gen_ashlsi3_internal2,
    &operand_data[380],
    3,
    0,
    2,
    3
  },
  {
    "ashldi3_internal",
    (const PTR) output_188,
    (insn_gen_fn) gen_ashldi3_internal,
    &operand_data[383],
    4,
    0,
    1,
    3
  },
  {
    "ashldi3_internal2",
    (const PTR) output_189,
    (insn_gen_fn) gen_ashldi3_internal2,
    &operand_data[387],
    4,
    0,
    1,
    3
  },
  {
    "ashldi3_internal3",
    (const PTR) output_190,
    (insn_gen_fn) gen_ashldi3_internal3,
    &operand_data[387],
    4,
    0,
    1,
    3
  },
  {
    "ashldi3_internal4",
    (const PTR) output_191,
    (insn_gen_fn) gen_ashldi3_internal4,
    &operand_data[391],
    3,
    0,
    1,
    3
  },
  {
    "ashldi3_internal4+1",
    (const PTR) output_192,
    0,
    &operand_data[394],
    3,
    0,
    2,
    3
  },
  {
    "ashrsi3_internal1",
    (const PTR) output_193,
    (insn_gen_fn) gen_ashrsi3_internal1,
    &operand_data[377],
    3,
    0,
    1,
    3
  },
  {
    "ashrsi3_internal2",
    (const PTR) output_194,
    (insn_gen_fn) gen_ashrsi3_internal2,
    &operand_data[380],
    3,
    0,
    2,
    3
  },
  {
    "ashrdi3_internal",
    (const PTR) output_195,
    (insn_gen_fn) gen_ashrdi3_internal,
    &operand_data[383],
    4,
    0,
    1,
    3
  },
  {
    "ashrdi3_internal2",
    (const PTR) output_196,
    (insn_gen_fn) gen_ashrdi3_internal2,
    &operand_data[387],
    4,
    0,
    1,
    3
  },
  {
    "ashrdi3_internal3",
    (const PTR) output_197,
    (insn_gen_fn) gen_ashrdi3_internal3,
    &operand_data[387],
    4,
    0,
    1,
    3
  },
  {
    "ashrdi3_internal4",
    (const PTR) output_198,
    (insn_gen_fn) gen_ashrdi3_internal4,
    &operand_data[391],
    3,
    0,
    1,
    3
  },
  {
    "ashrdi3_internal4+1",
    (const PTR) output_199,
    0,
    &operand_data[397],
    3,
    0,
    2,
    3
  },
  {
    "lshrsi3_internal1",
    (const PTR) output_200,
    (insn_gen_fn) gen_lshrsi3_internal1,
    &operand_data[377],
    3,
    0,
    1,
    3
  },
  {
    "lshrsi3_internal2",
    (const PTR) output_201,
    (insn_gen_fn) gen_lshrsi3_internal2,
    &operand_data[380],
    3,
    0,
    2,
    3
  },
  {
    "lshrsi3_internal2+1",
    "lw\t%0,%1\n\tsrl\t%0,%2",
    0,
    &operand_data[400],
    3,
    0,
    2,
    1
  },
  {
    "lshrdi3_internal",
    (const PTR) output_203,
    (insn_gen_fn) gen_lshrdi3_internal,
    &operand_data[383],
    4,
    0,
    1,
    3
  },
  {
    "lshrdi3_internal2",
    (const PTR) output_204,
    (insn_gen_fn) gen_lshrdi3_internal2,
    &operand_data[387],
    4,
    0,
    1,
    3
  },
  {
    "lshrdi3_internal3",
    (const PTR) output_205,
    (insn_gen_fn) gen_lshrdi3_internal3,
    &operand_data[387],
    4,
    0,
    1,
    3
  },
  {
    "lshrdi3_internal4",
    (const PTR) output_206,
    (insn_gen_fn) gen_lshrdi3_internal4,
    &operand_data[391],
    3,
    0,
    1,
    3
  },
  {
    "lshrdi3_internal4+1",
    (const PTR) output_207,
    0,
    &operand_data[397],
    3,
    0,
    2,
    3
  },
  {
    "branch_fp",
    (const PTR) output_208,
    (insn_gen_fn) gen_branch_fp,
    &operand_data[403],
    3,
    0,
    1,
    3
  },
  {
    "branch_fp_inverted",
    (const PTR) output_209,
    (insn_gen_fn) gen_branch_fp_inverted,
    &operand_data[403],
    3,
    0,
    1,
    3
  },
  {
    "branch_zero",
    (const PTR) output_210,
    (insn_gen_fn) gen_branch_zero,
    &operand_data[406],
    3,
    0,
    1,
    3
  },
  {
    "branch_zero_inverted",
    (const PTR) output_211,
    (insn_gen_fn) gen_branch_zero_inverted,
    &operand_data[406],
    3,
    0,
    1,
    3
  },
  {
    "branch_zero_di",
    (const PTR) output_212,
    (insn_gen_fn) gen_branch_zero_di,
    &operand_data[409],
    3,
    0,
    1,
    3
  },
  {
    "branch_zero_di_inverted",
    (const PTR) output_213,
    (insn_gen_fn) gen_branch_zero_di_inverted,
    &operand_data[409],
    3,
    0,
    1,
    3
  },
  {
    "branch_equality",
    (const PTR) output_214,
    (insn_gen_fn) gen_branch_equality,
    &operand_data[412],
    4,
    0,
    1,
    3
  },
  {
    "branch_equality_di",
    (const PTR) output_215,
    (insn_gen_fn) gen_branch_equality_di,
    &operand_data[416],
    4,
    0,
    1,
    3
  },
  {
    "branch_equality_inverted",
    (const PTR) output_216,
    (insn_gen_fn) gen_branch_equality_inverted,
    &operand_data[412],
    4,
    0,
    1,
    3
  },
  {
    "branch_equality_di_inverted",
    (const PTR) output_217,
    (insn_gen_fn) gen_branch_equality_di_inverted,
    &operand_data[416],
    4,
    0,
    1,
    3
  },
  {
    "branch_equality_di_inverted+1",
    (const PTR) output_218,
    0,
    &operand_data[420],
    4,
    0,
    2,
    3
  },
  {
    "seq_si_zero-1",
    (const PTR) output_219,
    0,
    &operand_data[424],
    4,
    0,
    2,
    3
  },
  {
    "seq_si_zero",
    "sltu\t%0,%1,1",
    (insn_gen_fn) gen_seq_si_zero,
    &operand_data[64],
    2,
    0,
    1,
    1
  },
  {
    "seq_si_zero+1",
    "sltu\t%1,1",
    0,
    &operand_data[428],
    2,
    0,
    1,
    1
  },
  {
    "seq_di_zero",
    "sltu\t%0,%1,1",
    (insn_gen_fn) gen_seq_di_zero,
    &operand_data[83],
    2,
    0,
    1,
    1
  },
  {
    "seq_di_zero+1",
    "sltu\t%1,1",
    0,
    &operand_data[430],
    2,
    0,
    1,
    1
  },
  {
    "seq_si",
    (const PTR) output_224,
    (insn_gen_fn) gen_seq_si,
    &operand_data[432],
    3,
    0,
    2,
    2
  },
  {
    "seq_di",
    (const PTR) output_225,
    (insn_gen_fn) gen_seq_di,
    &operand_data[207],
    3,
    0,
    2,
    2
  },
  {
    "sne_si_zero",
    "sltu\t%0,%.,%1",
    (insn_gen_fn) gen_sne_si_zero,
    &operand_data[64],
    2,
    0,
    1,
    1
  },
  {
    "sne_di_zero",
    "sltu\t%0,%.,%1",
    (insn_gen_fn) gen_sne_di_zero,
    &operand_data[83],
    2,
    0,
    1,
    1
  },
  {
    "sne_si",
    (const PTR) output_228,
    (insn_gen_fn) gen_sne_si,
    &operand_data[432],
    3,
    0,
    2,
    2
  },
  {
    "sne_di",
    (const PTR) output_229,
    (insn_gen_fn) gen_sne_di,
    &operand_data[207],
    3,
    0,
    2,
    2
  },
  {
    "sgt_si",
    "slt\t%0,%z2,%1",
    (insn_gen_fn) gen_sgt_si,
    &operand_data[435],
    3,
    0,
    1,
    1
  },
  {
    "sgt_si+1",
    "slt\t%2,%1",
    0,
    &operand_data[438],
    3,
    0,
    1,
    1
  },
  {
    "sgt_di",
    "slt\t%0,%z2,%1",
    (insn_gen_fn) gen_sgt_di,
    &operand_data[441],
    3,
    0,
    1,
    1
  },
  {
    "sgt_di+1",
    "slt\t%2,%1",
    0,
    &operand_data[201],
    3,
    0,
    1,
    1
  },
  {
    "sge_si",
    "slt\t%0,%1,%2\n\txori\t%0,%0,0x0001",
    (insn_gen_fn) gen_sge_si,
    &operand_data[377],
    3,
    0,
    1,
    1
  },
  {
    "sge_di",
    "slt\t%0,%1,%2\n\txori\t%0,%0,0x0001",
    (insn_gen_fn) gen_sge_di,
    &operand_data[444],
    3,
    0,
    1,
    1
  },
  {
    "slt_si",
    "slt\t%0,%1,%2",
    (insn_gen_fn) gen_slt_si,
    &operand_data[377],
    3,
    0,
    1,
    1
  },
  {
    "slt_si+1",
    "slt\t%1,%2",
    0,
    &operand_data[447],
    3,
    0,
    2,
    1
  },
  {
    "slt_di",
    "slt\t%0,%1,%2",
    (insn_gen_fn) gen_slt_di,
    &operand_data[444],
    3,
    0,
    1,
    1
  },
  {
    "slt_di+1",
    "slt\t%1,%2",
    0,
    &operand_data[450],
    3,
    0,
    2,
    1
  },
  {
    "sle_si_const",
    (const PTR) output_240,
    (insn_gen_fn) gen_sle_si_const,
    &operand_data[453],
    3,
    0,
    1,
    3
  },
  {
    "sle_si_const+1",
    (const PTR) output_241,
    0,
    &operand_data[456],
    3,
    0,
    1,
    3
  },
  {
    "sle_di_const",
    (const PTR) output_242,
    (insn_gen_fn) gen_sle_di_const,
    &operand_data[459],
    3,
    0,
    1,
    3
  },
  {
    "sle_di_const+1",
    (const PTR) output_243,
    0,
    &operand_data[462],
    3,
    0,
    1,
    3
  },
  {
    "sle_si_reg",
    "slt\t%0,%z2,%1\n\txori\t%0,%0,0x0001",
    (insn_gen_fn) gen_sle_si_reg,
    &operand_data[64],
    3,
    0,
    1,
    1
  },
  {
    "sle_di_reg",
    "slt\t%0,%z2,%1\n\txori\t%0,%0,0x0001",
    (insn_gen_fn) gen_sle_di_reg,
    &operand_data[201],
    3,
    0,
    1,
    1
  },
  {
    "sgtu_si",
    "sltu\t%0,%z2,%1",
    (insn_gen_fn) gen_sgtu_si,
    &operand_data[435],
    3,
    0,
    1,
    1
  },
  {
    "sgtu_si+1",
    "sltu\t%2,%1",
    0,
    &operand_data[438],
    3,
    0,
    1,
    1
  },
  {
    "sgtu_di",
    "sltu\t%0,%z2,%1",
    (insn_gen_fn) gen_sgtu_di,
    &operand_data[441],
    3,
    0,
    1,
    1
  },
  {
    "sgtu_di+1",
    "sltu\t%2,%1",
    0,
    &operand_data[465],
    3,
    0,
    1,
    1
  },
  {
    "sgeu_si",
    "sltu\t%0,%1,%2\n\txori\t%0,%0,0x0001",
    (insn_gen_fn) gen_sgeu_si,
    &operand_data[377],
    3,
    0,
    1,
    1
  },
  {
    "sgeu_di",
    "sltu\t%0,%1,%2\n\txori\t%0,%0,0x0001",
    (insn_gen_fn) gen_sgeu_di,
    &operand_data[444],
    3,
    0,
    1,
    1
  },
  {
    "sltu_si",
    "sltu\t%0,%1,%2",
    (insn_gen_fn) gen_sltu_si,
    &operand_data[377],
    3,
    0,
    1,
    1
  },
  {
    "sltu_si+1",
    "sltu\t%1,%2",
    0,
    &operand_data[447],
    3,
    0,
    2,
    1
  },
  {
    "sltu_di",
    "sltu\t%0,%1,%2",
    (insn_gen_fn) gen_sltu_di,
    &operand_data[444],
    3,
    0,
    1,
    1
  },
  {
    "sltu_di+1",
    "sltu\t%1,%2",
    0,
    &operand_data[450],
    3,
    0,
    2,
    1
  },
  {
    "sleu_si_const",
    (const PTR) output_256,
    (insn_gen_fn) gen_sleu_si_const,
    &operand_data[453],
    3,
    0,
    1,
    3
  },
  {
    "sleu_si_const+1",
    (const PTR) output_257,
    0,
    &operand_data[456],
    3,
    0,
    1,
    3
  },
  {
    "sleu_di_const",
    (const PTR) output_258,
    (insn_gen_fn) gen_sleu_di_const,
    &operand_data[459],
    3,
    0,
    1,
    3
  },
  {
    "sleu_di_const+1",
    (const PTR) output_259,
    0,
    &operand_data[462],
    3,
    0,
    1,
    3
  },
  {
    "sleu_si_reg",
    "sltu\t%0,%z2,%1\n\txori\t%0,%0,0x0001",
    (insn_gen_fn) gen_sleu_si_reg,
    &operand_data[64],
    3,
    0,
    1,
    1
  },
  {
    "sleu_di_reg",
    "sltu\t%0,%z2,%1\n\txori\t%0,%0,0x0001",
    (insn_gen_fn) gen_sleu_di_reg,
    &operand_data[201],
    3,
    0,
    1,
    1
  },
  {
    "seq_df",
    (const PTR) output_262,
    (insn_gen_fn) gen_seq_df,
    &operand_data[468],
    3,
    0,
    1,
    3
  },
  {
    "slt_df",
    (const PTR) output_263,
    (insn_gen_fn) gen_slt_df,
    &operand_data[468],
    3,
    0,
    1,
    3
  },
  {
    "sle_df",
    (const PTR) output_264,
    (insn_gen_fn) gen_sle_df,
    &operand_data[468],
    3,
    0,
    1,
    3
  },
  {
    "sgt_df",
    (const PTR) output_265,
    (insn_gen_fn) gen_sgt_df,
    &operand_data[468],
    3,
    0,
    1,
    3
  },
  {
    "sge_df",
    (const PTR) output_266,
    (insn_gen_fn) gen_sge_df,
    &operand_data[468],
    3,
    0,
    1,
    3
  },
  {
    "seq_sf",
    (const PTR) output_267,
    (insn_gen_fn) gen_seq_sf,
    &operand_data[471],
    3,
    0,
    1,
    3
  },
  {
    "slt_sf",
    (const PTR) output_268,
    (insn_gen_fn) gen_slt_sf,
    &operand_data[471],
    3,
    0,
    1,
    3
  },
  {
    "sle_sf",
    (const PTR) output_269,
    (insn_gen_fn) gen_sle_sf,
    &operand_data[471],
    3,
    0,
    1,
    3
  },
  {
    "sgt_sf",
    (const PTR) output_270,
    (insn_gen_fn) gen_sgt_sf,
    &operand_data[471],
    3,
    0,
    1,
    3
  },
  {
    "sge_sf",
    (const PTR) output_271,
    (insn_gen_fn) gen_sge_sf,
    &operand_data[471],
    3,
    0,
    1,
    3
  },
  {
    "jump",
    (const PTR) output_272,
    (insn_gen_fn) gen_jump,
    &operand_data[404],
    1,
    0,
    0,
    3
  },
  {
    "jump+1",
    "b\t%l0",
    0,
    &operand_data[404],
    1,
    0,
    0,
    1
  },
  {
    "indirect_jump_internal1",
    "%*j\t%0",
    (insn_gen_fn) gen_indirect_jump_internal1,
    &operand_data[60],
    1,
    0,
    1,
    1
  },
  {
    "indirect_jump_internal2",
    "%*j\t%0",
    (insn_gen_fn) gen_indirect_jump_internal2,
    &operand_data[79],
    1,
    0,
    1,
    1
  },
  {
    "tablejump_internal1",
    "%*j\t%0",
    (insn_gen_fn) gen_tablejump_internal1,
    &operand_data[474],
    2,
    0,
    1,
    1
  },
  {
    "tablejump_internal2",
    "%*j\t%0",
    (insn_gen_fn) gen_tablejump_internal2,
    &operand_data[476],
    2,
    0,
    1,
    1
  },
  {
    "tablejump_internal2+1",
    (const PTR) output_278,
    0,
    &operand_data[474],
    2,
    1,
    1,
    3
  },
  {
    "casesi_internal-1",
    "%*j\t%0",
    0,
    &operand_data[476],
    2,
    1,
    1,
    1
  },
  {
    "casesi_internal",
    "%(bal\t%S1\n\tsll\t%2,%0,2\n%~%S1:\n\taddu\t%2,%2,$31%)\n\t\
lw\t%2,%1-%S1(%2)\n\taddu\t%2,%2,$31\n\tj\t%2",
    (insn_gen_fn) gen_casesi_internal,
    &operand_data[478],
    3,
    0,
    1,
    1
  },
  {
    "casesi_internal_di",
    "%(bal\t%S1\n\tsll\t%2,%0,2\n%~%S1:\n\taddu\t%2,%2,$31%)\n\t\
ld\t%2,%1-%S1(%2)\n\tdaddu\t%2,%2,$31\n\tj\t%2",
    (insn_gen_fn) gen_casesi_internal_di,
    &operand_data[481],
    3,
    0,
    1,
    1
  },
  {
    "blockage",
    "",
    (insn_gen_fn) gen_blockage,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  {
    "return",
    "%*j\t$31",
    (insn_gen_fn) gen_return,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  {
    "return_internal",
    (const PTR) output_284,
    (insn_gen_fn) gen_return_internal,
    &operand_data[484],
    1,
    0,
    0,
    3
  },
  {
    "get_fnaddr",
    "%($LF%= = . + 8\n\tbal\t$LF%=\n\tla\t%0,%1-$LF%=%)\n\taddu\t%0,%0,$31",
    (insn_gen_fn) gen_get_fnaddr,
    &operand_data[485],
    2,
    0,
    1,
    1
  },
  {
    "get_fnaddr+1",
    "%*jal\t%0",
    0,
    &operand_data[487],
    3,
    0,
    1,
    1
  },
  {
    "call_internal1",
    (const PTR) output_287,
    (insn_gen_fn) gen_call_internal1,
    &operand_data[490],
    3,
    0,
    1,
    3
  },
  {
    "call_internal2",
    (const PTR) output_288,
    (insn_gen_fn) gen_call_internal2,
    &operand_data[490],
    3,
    0,
    1,
    3
  },
  {
    "call_internal3a",
    "%*jal\t%2,%0",
    (insn_gen_fn) gen_call_internal3a,
    &operand_data[493],
    3,
    0,
    1,
    1
  },
  {
    "call_internal3b",
    "%*jal\t%2,%0",
    (insn_gen_fn) gen_call_internal3b,
    &operand_data[496],
    3,
    0,
    1,
    1
  },
  {
    "call_internal3c",
    "%*jal\t%2,%0",
    (insn_gen_fn) gen_call_internal3c,
    &operand_data[499],
    3,
    0,
    1,
    1
  },
  {
    "call_internal4a",
    (const PTR) output_292,
    (insn_gen_fn) gen_call_internal4a,
    &operand_data[493],
    3,
    0,
    1,
    3
  },
  {
    "call_internal4b",
    (const PTR) output_293,
    (insn_gen_fn) gen_call_internal4b,
    &operand_data[496],
    3,
    0,
    1,
    3
  },
  {
    "call_internal4b+1",
    "%*jal\t%1",
    0,
    &operand_data[502],
    4,
    0,
    1,
    1
  },
  {
    "call_value_internal1",
    (const PTR) output_295,
    (insn_gen_fn) gen_call_value_internal1,
    &operand_data[506],
    4,
    0,
    1,
    3
  },
  {
    "call_value_internal2",
    (const PTR) output_296,
    (insn_gen_fn) gen_call_value_internal2,
    &operand_data[506],
    4,
    0,
    1,
    3
  },
  {
    "call_value_internal3a",
    "%*jal\t%3,%1",
    (insn_gen_fn) gen_call_value_internal3a,
    &operand_data[510],
    4,
    0,
    1,
    1
  },
  {
    "call_value_internal3b",
    "%*jal\t%3,%1",
    (insn_gen_fn) gen_call_value_internal3b,
    &operand_data[514],
    4,
    0,
    1,
    1
  },
  {
    "call_value_internal3c",
    "%*jal\t%3,%1",
    (insn_gen_fn) gen_call_value_internal3c,
    &operand_data[518],
    4,
    0,
    1,
    1
  },
  {
    "call_value_internal4a",
    (const PTR) output_300,
    (insn_gen_fn) gen_call_value_internal4a,
    &operand_data[510],
    4,
    0,
    1,
    3
  },
  {
    "call_value_internal4b",
    (const PTR) output_301,
    (insn_gen_fn) gen_call_value_internal4b,
    &operand_data[514],
    4,
    0,
    1,
    3
  },
  {
    "call_value_multiple_internal1",
    (const PTR) output_302,
    (insn_gen_fn) gen_call_value_multiple_internal1,
    &operand_data[522],
    5,
    2,
    1,
    3
  },
  {
    "call_value_multiple_internal2",
    (const PTR) output_303,
    (insn_gen_fn) gen_call_value_multiple_internal2,
    &operand_data[522],
    5,
    2,
    1,
    3
  },
  {
    "nop",
    "%(nop%)",
    (insn_gen_fn) gen_nop,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  {
    "nop+1",
    (const PTR) output_305,
    0,
    &operand_data[527],
    5,
    0,
    2,
    2
  },
  {
    "nop+2",
    (const PTR) output_306,
    0,
    &operand_data[532],
    5,
    0,
    2,
    2
  },
  {
    "nop+3",
    (const PTR) output_307,
    0,
    &operand_data[537],
    5,
    0,
    2,
    2
  },
  {
    "nop+4",
    (const PTR) output_308,
    0,
    &operand_data[542],
    5,
    0,
    2,
    2
  },
  {
    "nop+5",
    (const PTR) output_309,
    0,
    &operand_data[547],
    5,
    0,
    2,
    2
  },
  {
    "nop+6",
    (const PTR) output_310,
    0,
    &operand_data[552],
    5,
    0,
    2,
    2
  },
  {
    "consttable_qi-6",
    (const PTR) output_311,
    0,
    &operand_data[557],
    5,
    0,
    2,
    2
  },
  {
    "consttable_qi-5",
    (const PTR) output_312,
    0,
    &operand_data[562],
    5,
    0,
    2,
    2
  },
  {
    "consttable_qi-4",
    (const PTR) output_313,
    0,
    &operand_data[567],
    5,
    0,
    2,
    2
  },
  {
    "consttable_qi-3",
    (const PTR) output_314,
    0,
    &operand_data[572],
    5,
    0,
    2,
    2
  },
  {
    "consttable_qi-2",
    (const PTR) output_315,
    0,
    &operand_data[577],
    5,
    0,
    2,
    2
  },
  {
    "consttable_qi-1",
    (const PTR) output_316,
    0,
    &operand_data[582],
    5,
    0,
    2,
    2
  },
  {
    "consttable_qi",
    (const PTR) output_317,
    (insn_gen_fn) gen_consttable_qi,
    &operand_data[587],
    1,
    0,
    1,
    3
  },
  {
    "consttable_hi",
    (const PTR) output_318,
    (insn_gen_fn) gen_consttable_hi,
    &operand_data[588],
    1,
    0,
    1,
    3
  },
  {
    "consttable_si",
    (const PTR) output_319,
    (insn_gen_fn) gen_consttable_si,
    &operand_data[589],
    1,
    0,
    1,
    3
  },
  {
    "consttable_di",
    (const PTR) output_320,
    (insn_gen_fn) gen_consttable_di,
    &operand_data[590],
    1,
    0,
    1,
    3
  },
  {
    "consttable_sf",
    (const PTR) output_321,
    (insn_gen_fn) gen_consttable_sf,
    &operand_data[591],
    1,
    0,
    1,
    3
  },
  {
    "consttable_df",
    (const PTR) output_322,
    (insn_gen_fn) gen_consttable_df,
    &operand_data[592],
    1,
    0,
    1,
    3
  },
  {
    "align_2",
    ".align 1",
    (insn_gen_fn) gen_align_2,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  {
    "align_4",
    ".align 2",
    (insn_gen_fn) gen_align_4,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  {
    "align_8",
    ".align 3",
    (insn_gen_fn) gen_align_8,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  {
    "leasi",
    "la %0,%a1",
    (insn_gen_fn) gen_leasi,
    &operand_data[593],
    2,
    0,
    1,
    1
  },
  {
    "leadi",
    "la %0,%a1",
    (insn_gen_fn) gen_leadi,
    &operand_data[595],
    2,
    0,
    1,
    1
  },
  {
    "addsi3",
    0,
    (insn_gen_fn) gen_addsi3,
    &operand_data[7],
    3,
    0,
    1,
    0
  },
  {
    "addsi3+1",
    0,
    0,
    &operand_data[597],
    2,
    0,
    0,
    0
  },
  {
    "adddi3-1",
    0,
    0,
    &operand_data[599],
    3,
    0,
    0,
    0
  },
  {
    "adddi3",
    0,
    (insn_gen_fn) gen_adddi3,
    &operand_data[602],
    3,
    1,
    0,
    0
  },
  {
    "adddi3+1",
    0,
    0,
    &operand_data[605],
    4,
    0,
    0,
    0
  },
  {
    "adddi3+2",
    0,
    0,
    &operand_data[605],
    4,
    0,
    0,
    0
  },
  {
    "adddi3+3",
    0,
    0,
    &operand_data[609],
    4,
    0,
    0,
    0
  },
  {
    "subsi3-3",
    0,
    0,
    &operand_data[609],
    4,
    0,
    0,
    0
  },
  {
    "subsi3-2",
    0,
    0,
    &operand_data[613],
    2,
    0,
    0,
    0
  },
  {
    "subsi3-1",
    0,
    0,
    &operand_data[615],
    3,
    0,
    0,
    0
  },
  {
    "subsi3",
    0,
    (insn_gen_fn) gen_subsi3,
    &operand_data[7],
    3,
    0,
    1,
    0
  },
  {
    "subsi3+1",
    0,
    0,
    &operand_data[597],
    2,
    0,
    0,
    0
  },
  {
    "subdi3-1",
    0,
    0,
    &operand_data[599],
    3,
    0,
    0,
    0
  },
  {
    "subdi3",
    0,
    (insn_gen_fn) gen_subdi3,
    &operand_data[201],
    3,
    1,
    1,
    0
  },
  {
    "subdi3+1",
    0,
    0,
    &operand_data[605],
    4,
    0,
    0,
    0
  },
  {
    "subdi3+2",
    0,
    0,
    &operand_data[605],
    4,
    0,
    0,
    0
  },
  {
    "subdi3+3",
    0,
    0,
    &operand_data[618],
    4,
    0,
    0,
    0
  },
  {
    "muldf3-3",
    0,
    0,
    &operand_data[618],
    4,
    0,
    0,
    0
  },
  {
    "muldf3-2",
    0,
    0,
    &operand_data[613],
    2,
    0,
    0,
    0
  },
  {
    "muldf3-1",
    0,
    0,
    &operand_data[615],
    3,
    0,
    0,
    0
  },
  {
    "muldf3",
    0,
    (insn_gen_fn) gen_muldf3,
    &operand_data[1],
    3,
    0,
    1,
    0
  },
  {
    "mulsf3",
    0,
    (insn_gen_fn) gen_mulsf3,
    &operand_data[4],
    3,
    0,
    1,
    0
  },
  {
    "mulsi3",
    0,
    (insn_gen_fn) gen_mulsi3,
    &operand_data[59],
    5,
    0,
    1,
    0
  },
  {
    "mulsi3+1",
    0,
    0,
    &operand_data[621],
    8,
    0,
    0,
    0
  },
  {
    "muldi3-1",
    0,
    0,
    &operand_data[621],
    8,
    0,
    0,
    0
  },
  {
    "muldi3",
    0,
    (insn_gen_fn) gen_muldi3,
    &operand_data[78],
    5,
    0,
    1,
    0
  },
  {
    "mulsidi3",
    0,
    (insn_gen_fn) gen_mulsidi3,
    &operand_data[89],
    3,
    0,
    1,
    0
  },
  {
    "umulsidi3",
    0,
    (insn_gen_fn) gen_umulsidi3,
    &operand_data[89],
    3,
    0,
    1,
    0
  },
  {
    "smulsi3_highpart",
    0,
    (insn_gen_fn) gen_smulsi3_highpart,
    &operand_data[102],
    3,
    0,
    1,
    0
  },
  {
    "umulsi3_highpart",
    0,
    (insn_gen_fn) gen_umulsi3_highpart,
    &operand_data[102],
    3,
    0,
    1,
    0
  },
  {
    "divmodsi4",
    0,
    (insn_gen_fn) gen_divmodsi4,
    &operand_data[629],
    7,
    2,
    1,
    0
  },
  {
    "divmoddi4",
    0,
    (insn_gen_fn) gen_divmoddi4,
    &operand_data[636],
    7,
    2,
    1,
    0
  },
  {
    "udivmodsi4",
    0,
    (insn_gen_fn) gen_udivmodsi4,
    &operand_data[629],
    7,
    2,
    1,
    0
  },
  {
    "udivmoddi4",
    0,
    (insn_gen_fn) gen_udivmoddi4,
    &operand_data[636],
    7,
    2,
    1,
    0
  },
  {
    "div_trap",
    0,
    (insn_gen_fn) gen_div_trap,
    &operand_data[643],
    3,
    0,
    1,
    0
  },
  {
    "divsi3",
    0,
    (insn_gen_fn) gen_divsi3,
    &operand_data[59],
    5,
    0,
    1,
    0
  },
  {
    "divdi3",
    0,
    (insn_gen_fn) gen_divdi3,
    &operand_data[646],
    5,
    0,
    1,
    0
  },
  {
    "modsi3",
    0,
    (insn_gen_fn) gen_modsi3,
    &operand_data[651],
    5,
    0,
    1,
    0
  },
  {
    "moddi3",
    0,
    (insn_gen_fn) gen_moddi3,
    &operand_data[110],
    5,
    0,
    1,
    0
  },
  {
    "udivsi3",
    0,
    (insn_gen_fn) gen_udivsi3,
    &operand_data[59],
    5,
    0,
    1,
    0
  },
  {
    "udivdi3",
    0,
    (insn_gen_fn) gen_udivdi3,
    &operand_data[656],
    5,
    0,
    1,
    0
  },
  {
    "umodsi3",
    0,
    (insn_gen_fn) gen_umodsi3,
    &operand_data[651],
    5,
    0,
    1,
    0
  },
  {
    "umoddi3",
    0,
    (insn_gen_fn) gen_umoddi3,
    &operand_data[661],
    5,
    0,
    1,
    0
  },
  {
    "negdi2",
    0,
    (insn_gen_fn) gen_negdi2,
    &operand_data[83],
    2,
    1,
    1,
    0
  },
  {
    "negdi2+1",
    0,
    0,
    &operand_data[605],
    2,
    0,
    0,
    0
  },
  {
    "andsi3",
    0,
    (insn_gen_fn) gen_andsi3,
    &operand_data[195],
    3,
    0,
    2,
    0
  },
  {
    "anddi3",
    0,
    (insn_gen_fn) gen_anddi3,
    &operand_data[201],
    3,
    0,
    1,
    0
  },
  {
    "anddi3+1",
    0,
    0,
    &operand_data[605],
    3,
    0,
    0,
    0
  },
  {
    "iorsi3",
    0,
    (insn_gen_fn) gen_iorsi3,
    &operand_data[195],
    3,
    0,
    2,
    0
  },
  {
    "iordi3",
    0,
    (insn_gen_fn) gen_iordi3,
    &operand_data[201],
    3,
    0,
    1,
    0
  },
  {
    "iordi3+1",
    0,
    0,
    &operand_data[605],
    3,
    0,
    0,
    0
  },
  {
    "xorsi3",
    0,
    (insn_gen_fn) gen_xorsi3,
    &operand_data[195],
    3,
    0,
    2,
    0
  },
  {
    "xordi3",
    0,
    (insn_gen_fn) gen_xordi3,
    &operand_data[201],
    3,
    0,
    1,
    0
  },
  {
    "xordi3+1",
    0,
    0,
    &operand_data[605],
    3,
    0,
    0,
    0
  },
  {
    "zero_extendsidi2-1",
    0,
    0,
    &operand_data[605],
    3,
    0,
    0,
    0
  },
  {
    "zero_extendsidi2",
    0,
    (insn_gen_fn) gen_zero_extendsidi2,
    &operand_data[666],
    2,
    0,
    0,
    0
  },
  {
    "zero_extendhisi2",
    0,
    (insn_gen_fn) gen_zero_extendhisi2,
    &operand_data[668],
    2,
    0,
    0,
    0
  },
  {
    "zero_extendhidi2",
    0,
    (insn_gen_fn) gen_zero_extendhidi2,
    &operand_data[670],
    2,
    0,
    0,
    0
  },
  {
    "zero_extendqihi2",
    0,
    (insn_gen_fn) gen_zero_extendqihi2,
    &operand_data[672],
    2,
    0,
    0,
    0
  },
  {
    "zero_extendqisi2",
    0,
    (insn_gen_fn) gen_zero_extendqisi2,
    &operand_data[674],
    2,
    0,
    0,
    0
  },
  {
    "zero_extendqidi2",
    0,
    (insn_gen_fn) gen_zero_extendqidi2,
    &operand_data[676],
    2,
    0,
    0,
    0
  },
  {
    "extendhidi2",
    0,
    (insn_gen_fn) gen_extendhidi2,
    &operand_data[670],
    2,
    0,
    0,
    0
  },
  {
    "extendhisi2",
    0,
    (insn_gen_fn) gen_extendhisi2,
    &operand_data[668],
    2,
    0,
    0,
    0
  },
  {
    "extendqihi2",
    0,
    (insn_gen_fn) gen_extendqihi2,
    &operand_data[672],
    2,
    0,
    0,
    0
  },
  {
    "extendqisi2",
    0,
    (insn_gen_fn) gen_extendqisi2,
    &operand_data[674],
    2,
    0,
    0,
    0
  },
  {
    "extendqidi2",
    0,
    (insn_gen_fn) gen_extendqidi2,
    &operand_data[676],
    2,
    0,
    0,
    0
  },
  {
    "fixuns_truncdfsi2",
    0,
    (insn_gen_fn) gen_fixuns_truncdfsi2,
    &operand_data[678],
    2,
    0,
    0,
    0
  },
  {
    "fixuns_truncdfdi2",
    0,
    (insn_gen_fn) gen_fixuns_truncdfdi2,
    &operand_data[680],
    2,
    0,
    0,
    0
  },
  {
    "fixuns_truncsfsi2",
    0,
    (insn_gen_fn) gen_fixuns_truncsfsi2,
    &operand_data[682],
    2,
    0,
    0,
    0
  },
  {
    "fixuns_truncsfdi2",
    0,
    (insn_gen_fn) gen_fixuns_truncsfdi2,
    &operand_data[684],
    2,
    0,
    0,
    0
  },
  {
    "extv",
    0,
    (insn_gen_fn) gen_extv,
    &operand_data[686],
    4,
    0,
    0,
    0
  },
  {
    "extzv",
    0,
    (insn_gen_fn) gen_extzv,
    &operand_data[686],
    4,
    0,
    0,
    0
  },
  {
    "insv",
    0,
    (insn_gen_fn) gen_insv,
    &operand_data[687],
    4,
    0,
    0,
    0
  },
  {
    "movdi",
    0,
    (insn_gen_fn) gen_movdi,
    &operand_data[691],
    2,
    0,
    0,
    0
  },
  {
    "movdi+1",
    0,
    0,
    &operand_data[605],
    2,
    0,
    0,
    0
  },
  {
    "reload_indi-1",
    0,
    0,
    &operand_data[613],
    2,
    0,
    0,
    0
  },
  {
    "reload_indi",
    0,
    (insn_gen_fn) gen_reload_indi,
    &operand_data[693],
    3,
    0,
    1,
    0
  },
  {
    "reload_outdi",
    0,
    (insn_gen_fn) gen_reload_outdi,
    &operand_data[696],
    3,
    0,
    1,
    0
  },
  {
    "reload_outdi+1",
    0,
    0,
    &operand_data[699],
    2,
    0,
    0,
    0
  },
  {
    "movsi",
    0,
    (insn_gen_fn) gen_movsi,
    &operand_data[701],
    2,
    0,
    0,
    0
  },
  {
    "movsi+1",
    0,
    0,
    &operand_data[597],
    2,
    0,
    0,
    0
  },
  {
    "movsi+2",
    0,
    0,
    &operand_data[597],
    2,
    0,
    0,
    0
  },
  {
    "reload_outsi-1",
    0,
    0,
    &operand_data[597],
    2,
    0,
    0,
    0
  },
  {
    "reload_outsi",
    0,
    (insn_gen_fn) gen_reload_outsi,
    &operand_data[703],
    3,
    0,
    1,
    0
  },
  {
    "reload_insi",
    0,
    (insn_gen_fn) gen_reload_insi,
    &operand_data[706],
    3,
    0,
    1,
    0
  },
  {
    "reload_incc",
    0,
    (insn_gen_fn) gen_reload_incc,
    &operand_data[709],
    3,
    0,
    1,
    0
  },
  {
    "reload_outcc",
    0,
    (insn_gen_fn) gen_reload_outcc,
    &operand_data[712],
    3,
    0,
    1,
    0
  },
  {
    "movhi",
    0,
    (insn_gen_fn) gen_movhi,
    &operand_data[715],
    2,
    0,
    0,
    0
  },
  {
    "movhi+1",
    0,
    0,
    &operand_data[717],
    2,
    0,
    0,
    0
  },
  {
    "movqi",
    0,
    (insn_gen_fn) gen_movqi,
    &operand_data[719],
    2,
    0,
    0,
    0
  },
  {
    "movqi+1",
    0,
    0,
    &operand_data[721],
    2,
    0,
    0,
    0
  },
  {
    "movsf",
    0,
    (insn_gen_fn) gen_movsf,
    &operand_data[723],
    2,
    0,
    0,
    0
  },
  {
    "movdf",
    0,
    (insn_gen_fn) gen_movdf,
    &operand_data[725],
    2,
    0,
    0,
    0
  },
  {
    "movdf+1",
    0,
    0,
    &operand_data[727],
    2,
    0,
    0,
    0
  },
  {
    "movstrsi",
    0,
    (insn_gen_fn) gen_movstrsi,
    &operand_data[729],
    4,
    0,
    0,
    0
  },
  {
    "movstrsi+1",
    0,
    0,
    &operand_data[733],
    8,
    0,
    0,
    0
  },
  {
    "ashlsi3",
    0,
    (insn_gen_fn) gen_ashlsi3,
    &operand_data[377],
    3,
    0,
    1,
    0
  },
  {
    "ashlsi3+1",
    0,
    0,
    &operand_data[599],
    3,
    0,
    0,
    0
  },
  {
    "ashldi3",
    0,
    (insn_gen_fn) gen_ashldi3,
    &operand_data[741],
    3,
    1,
    0,
    0
  },
  {
    "ashldi3+1",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "ashldi3+2",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "ashldi3+3",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "ashrsi3-2",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "ashrsi3-1",
    0,
    0,
    &operand_data[748],
    3,
    0,
    0,
    0
  },
  {
    "ashrsi3",
    0,
    (insn_gen_fn) gen_ashrsi3,
    &operand_data[377],
    3,
    0,
    1,
    0
  },
  {
    "ashrsi3+1",
    0,
    0,
    &operand_data[599],
    3,
    0,
    0,
    0
  },
  {
    "ashrdi3",
    0,
    (insn_gen_fn) gen_ashrdi3,
    &operand_data[741],
    3,
    1,
    0,
    0
  },
  {
    "ashrdi3+1",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "ashrdi3+2",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "ashrdi3+3",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "lshrsi3-2",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "lshrsi3-1",
    0,
    0,
    &operand_data[748],
    3,
    0,
    0,
    0
  },
  {
    "lshrsi3",
    0,
    (insn_gen_fn) gen_lshrsi3,
    &operand_data[377],
    3,
    0,
    1,
    0
  },
  {
    "lshrsi3+1",
    0,
    0,
    &operand_data[599],
    3,
    0,
    0,
    0
  },
  {
    "lshrdi3-1",
    0,
    0,
    &operand_data[751],
    3,
    0,
    0,
    0
  },
  {
    "lshrdi3",
    0,
    (insn_gen_fn) gen_lshrdi3,
    &operand_data[741],
    3,
    1,
    0,
    0
  },
  {
    "lshrdi3+1",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "lshrdi3+2",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "lshrdi3+3",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "cmpsi-2",
    0,
    0,
    &operand_data[744],
    4,
    0,
    0,
    0
  },
  {
    "cmpsi-1",
    0,
    0,
    &operand_data[748],
    3,
    0,
    0,
    0
  },
  {
    "cmpsi",
    0,
    (insn_gen_fn) gen_cmpsi,
    &operand_data[754],
    2,
    0,
    0,
    0
  },
  {
    "tstsi",
    0,
    (insn_gen_fn) gen_tstsi,
    &operand_data[597],
    1,
    0,
    0,
    0
  },
  {
    "cmpdi",
    0,
    (insn_gen_fn) gen_cmpdi,
    &operand_data[603],
    2,
    0,
    0,
    0
  },
  {
    "tstdi",
    0,
    (insn_gen_fn) gen_tstdi,
    &operand_data[603],
    1,
    0,
    0,
    0
  },
  {
    "cmpdf",
    0,
    (insn_gen_fn) gen_cmpdf,
    &operand_data[727],
    2,
    0,
    0,
    0
  },
  {
    "cmpsf",
    0,
    (insn_gen_fn) gen_cmpsf,
    &operand_data[756],
    2,
    0,
    0,
    0
  },
  {
    "beq",
    0,
    (insn_gen_fn) gen_beq,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "bne",
    0,
    (insn_gen_fn) gen_bne,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "bgt",
    0,
    (insn_gen_fn) gen_bgt,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "bge",
    0,
    (insn_gen_fn) gen_bge,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "blt",
    0,
    (insn_gen_fn) gen_blt,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "ble",
    0,
    (insn_gen_fn) gen_ble,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "bgtu",
    0,
    (insn_gen_fn) gen_bgtu,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "bgeu",
    0,
    (insn_gen_fn) gen_bgeu,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "bltu",
    0,
    (insn_gen_fn) gen_bltu,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "bleu",
    0,
    (insn_gen_fn) gen_bleu,
    &operand_data[404],
    1,
    0,
    0,
    0
  },
  {
    "seq",
    0,
    (insn_gen_fn) gen_seq,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "seq+1",
    0,
    0,
    &operand_data[758],
    3,
    0,
    0,
    0
  },
  {
    "sne-1",
    0,
    0,
    &operand_data[761],
    3,
    0,
    0,
    0
  },
  {
    "sne",
    0,
    (insn_gen_fn) gen_sne,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "sne+1",
    0,
    0,
    &operand_data[758],
    3,
    0,
    0,
    0
  },
  {
    "sgt-1",
    0,
    0,
    &operand_data[761],
    3,
    0,
    0,
    0
  },
  {
    "sgt",
    0,
    (insn_gen_fn) gen_sgt,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "sge",
    0,
    (insn_gen_fn) gen_sge,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "sge+1",
    0,
    0,
    &operand_data[764],
    3,
    0,
    0,
    0
  },
  {
    "slt-1",
    0,
    0,
    &operand_data[602],
    3,
    0,
    0,
    0
  },
  {
    "slt",
    0,
    (insn_gen_fn) gen_slt,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "sle",
    0,
    (insn_gen_fn) gen_sle,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "sle+1",
    0,
    0,
    &operand_data[621],
    3,
    0,
    0,
    0
  },
  {
    "sgtu-1",
    0,
    0,
    &operand_data[767],
    3,
    0,
    0,
    0
  },
  {
    "sgtu",
    0,
    (insn_gen_fn) gen_sgtu,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "sgeu",
    0,
    (insn_gen_fn) gen_sgeu,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "sgeu+1",
    0,
    0,
    &operand_data[764],
    3,
    0,
    0,
    0
  },
  {
    "sltu-1",
    0,
    0,
    &operand_data[602],
    3,
    0,
    0,
    0
  },
  {
    "sltu",
    0,
    (insn_gen_fn) gen_sltu,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "sleu",
    0,
    (insn_gen_fn) gen_sleu,
    &operand_data[7],
    1,
    2,
    1,
    0
  },
  {
    "sleu+1",
    0,
    0,
    &operand_data[621],
    3,
    0,
    0,
    0
  },
  {
    "indirect_jump-1",
    0,
    0,
    &operand_data[767],
    3,
    0,
    0,
    0
  },
  {
    "indirect_jump",
    0,
    (insn_gen_fn) gen_indirect_jump,
    &operand_data[643],
    1,
    0,
    1,
    0
  },
  {
    "tablejump",
    0,
    (insn_gen_fn) gen_tablejump,
    &operand_data[770],
    2,
    0,
    1,
    0
  },
  {
    "tablejump_internal3",
    0,
    (insn_gen_fn) gen_tablejump_internal3,
    &operand_data[474],
    2,
    1,
    1,
    0
  },
  {
    "tablejump_mips161",
    0,
    (insn_gen_fn) gen_tablejump_mips161,
    &operand_data[772],
    2,
    0,
    1,
    0
  },
  {
    "tablejump_mips162",
    0,
    (insn_gen_fn) gen_tablejump_mips162,
    &operand_data[772],
    2,
    0,
    1,
    0
  },
  {
    "tablejump_internal4",
    0,
    (insn_gen_fn) gen_tablejump_internal4,
    &operand_data[476],
    2,
    1,
    1,
    0
  },
  {
    "casesi",
    0,
    (insn_gen_fn) gen_casesi,
    &operand_data[774],
    7,
    3,
    1,
    0
  },
  {
    "builtin_setjmp_setup",
    0,
    (insn_gen_fn) gen_builtin_setjmp_setup,
    &operand_data[781],
    1,
    0,
    1,
    0
  },
  {
    "builtin_setjmp_setup_32",
    0,
    (insn_gen_fn) gen_builtin_setjmp_setup_32,
    &operand_data[289],
    1,
    0,
    1,
    0
  },
  {
    "builtin_setjmp_setup_64",
    0,
    (insn_gen_fn) gen_builtin_setjmp_setup_64,
    &operand_data[782],
    1,
    0,
    1,
    0
  },
  {
    "builtin_longjmp",
    0,
    (insn_gen_fn) gen_builtin_longjmp,
    &operand_data[781],
    1,
    0,
    1,
    0
  },
  {
    "prologue",
    0,
    (insn_gen_fn) gen_prologue,
    &operand_data[0],
    0,
    0,
    0,
    0
  },
  {
    "epilogue",
    0,
    (insn_gen_fn) gen_epilogue,
    &operand_data[0],
    0,
    0,
    0,
    0
  },
  {
    "call",
    0,
    (insn_gen_fn) gen_call,
    &operand_data[783],
    4,
    0,
    1,
    0
  },
  {
    "call_internal0",
    0,
    (insn_gen_fn) gen_call_internal0,
    &operand_data[785],
    3,
    0,
    0,
    0
  },
  {
    "call_value",
    0,
    (insn_gen_fn) gen_call_value,
    &operand_data[788],
    4,
    0,
    1,
    0
  },
  {
    "call_value_internal0",
    0,
    (insn_gen_fn) gen_call_value_internal0,
    &operand_data[791],
    4,
    0,
    0,
    0
  },
  {
    "call_value_multiple_internal0",
    0,
    (insn_gen_fn) gen_call_value_multiple_internal0,
    &operand_data[795],
    5,
    2,
    0,
    0
  },
  {
    "untyped_call",
    0,
    (insn_gen_fn) gen_untyped_call,
    &operand_data[791],
    3,
    0,
    0,
    0
  },
  {
    "movsicc",
    0,
    (insn_gen_fn) gen_movsicc,
    &operand_data[800],
    4,
    2,
    0,
    0
  },
  {
    "movdicc",
    0,
    (insn_gen_fn) gen_movdicc,
    &operand_data[804],
    4,
    2,
    0,
    0
  },
  {
    "movsfcc",
    0,
    (insn_gen_fn) gen_movsfcc,
    &operand_data[808],
    4,
    2,
    0,
    0
  },
  {
    "movdfcc",
    0,
    (insn_gen_fn) gen_movdfcc,
    &operand_data[812],
    4,
    2,
    0,
    0
  },
  {
    "movdfcc+1",
    (const PTR) output_510,
    0,
    &operand_data[816],
    5,
    0,
    1,
    3
  },
  {
    "movdfcc+2",
    (const PTR) output_511,
    0,
    &operand_data[821],
    5,
    0,
    1,
    3
  },
  {
    "movdfcc+3",
    (const PTR) output_512,
    0,
    &operand_data[826],
    5,
    0,
    1,
    3
  },
  {
    "movdfcc+4",
    (const PTR) output_513,
    0,
    &operand_data[831],
    5,
    0,
    1,
    3
  },
};


const char *
get_insn_name (code)
     int code;
{
  return insn_data[code].name;
}
