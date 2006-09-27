/* Generated automatically by the program `genopinit'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "rtl.h"
#include "flags.h"
#include "insn-flags.h"
#include "insn-codes.h"
#include "insn-config.h"
#include "recog.h"
#include "expr.h"
#include "reload.h"

void
init_all_optabs ()
{
  extendtab[(int) DImode][(int) QImode][0] = CODE_FOR_extendqidi2;
  extendtab[(int) DImode][(int) HImode][0] = CODE_FOR_extendhidi2;
  extendtab[(int) DImode][(int) SImode][0] = CODE_FOR_extendsidi2;
  extendtab[(int) DImode][(int) QImode][1] = CODE_FOR_zero_extendqidi2;
  extendtab[(int) DImode][(int) HImode][1] = CODE_FOR_zero_extendhidi2;
  extendtab[(int) DImode][(int) SImode][1] = CODE_FOR_zero_extendsidi2;
  extendtab[(int) DFmode][(int) SFmode][0] = CODE_FOR_extendsfdf2;
  floattab[(int) XFmode][(int) DImode][0] = CODE_FOR_floatdixf2;
  fixtrunctab[(int) SFmode][(int) DImode][0] = CODE_FOR_fix_truncsfdi2;
  fixtrunctab[(int) DFmode][(int) DImode][0] = CODE_FOR_fix_truncdfdi2;
  floattab[(int) SFmode][(int) DImode][1] = CODE_FOR_floatunsdisf2;
  floattab[(int) DFmode][(int) DImode][1] = CODE_FOR_floatunsdidf2;
  fixtrunctab[(int) SFmode][(int) DImode][1] = CODE_FOR_fixuns_truncsfdi2;
  fixtrunctab[(int) DFmode][(int) DImode][1] = CODE_FOR_fixuns_truncdfdi2;
  add_optab->handlers[(int) DImode].insn_code = CODE_FOR_adddi3;
  sub_optab->handlers[(int) DImode].insn_code = CODE_FOR_subdi3;
  smul_optab->handlers[(int) DImode].insn_code = CODE_FOR_muldi3;
  smul_highpart_optab->handlers[(int) DImode].insn_code = CODE_FOR_smuldi3_highpart;
  umul_highpart_optab->handlers[(int) DImode].insn_code = CODE_FOR_umuldi3_highpart;
  neg_optab->handlers[(int) DImode].insn_code = CODE_FOR_negdi2;
  add_optab->handlers[(int) SFmode].insn_code = CODE_FOR_addsf3;
  sub_optab->handlers[(int) SFmode].insn_code = CODE_FOR_subsf3;
  smul_optab->handlers[(int) SFmode].insn_code = CODE_FOR_mulsf3;
  abs_optab->handlers[(int) SFmode].insn_code = CODE_FOR_abssf2;
  neg_optab->handlers[(int) SFmode].insn_code = CODE_FOR_negsf2;
  smin_optab->handlers[(int) SFmode].insn_code = CODE_FOR_minsf3;
  smax_optab->handlers[(int) SFmode].insn_code = CODE_FOR_maxsf3;
  add_optab->handlers[(int) DFmode].insn_code = CODE_FOR_adddf3;
  sub_optab->handlers[(int) DFmode].insn_code = CODE_FOR_subdf3;
  smul_optab->handlers[(int) DFmode].insn_code = CODE_FOR_muldf3;
  abs_optab->handlers[(int) DFmode].insn_code = CODE_FOR_absdf2;
  neg_optab->handlers[(int) DFmode].insn_code = CODE_FOR_negdf2;
  smin_optab->handlers[(int) DFmode].insn_code = CODE_FOR_mindf3;
  smax_optab->handlers[(int) DFmode].insn_code = CODE_FOR_maxdf3;
  ashl_optab->handlers[(int) DImode].insn_code = CODE_FOR_ashldi3;
  ashr_optab->handlers[(int) DImode].insn_code = CODE_FOR_ashrdi3;
  lshr_optab->handlers[(int) DImode].insn_code = CODE_FOR_lshrdi3;
  and_optab->handlers[(int) DImode].insn_code = CODE_FOR_anddi3;
  ior_optab->handlers[(int) DImode].insn_code = CODE_FOR_iordi3;
  xor_optab->handlers[(int) DImode].insn_code = CODE_FOR_xordi3;
  one_cmpl_optab->handlers[(int) DImode].insn_code = CODE_FOR_one_cmpldi2;
  mov_optab->handlers[(int) QImode].insn_code = CODE_FOR_movqi;
  mov_optab->handlers[(int) HImode].insn_code = CODE_FOR_movhi;
  mov_optab->handlers[(int) SImode].insn_code = CODE_FOR_movsi;
  mov_optab->handlers[(int) DImode].insn_code = CODE_FOR_movdi;
  mov_optab->handlers[(int) SFmode].insn_code = CODE_FOR_movsf;
  mov_optab->handlers[(int) DFmode].insn_code = CODE_FOR_movdf;
  mov_optab->handlers[(int) XFmode].insn_code = CODE_FOR_movxf;
  add_optab->handlers[(int) SImode].insn_code = CODE_FOR_addsi3;
  sub_optab->handlers[(int) SImode].insn_code = CODE_FOR_subsi3;
  smul_optab->handlers[(int) SImode].insn_code = CODE_FOR_mulsi3;
  neg_optab->handlers[(int) SImode].insn_code = CODE_FOR_negsi2;
  abs_optab->handlers[(int) SImode].insn_code = CODE_FOR_abssi2;
  smin_optab->handlers[(int) SImode].insn_code = CODE_FOR_sminsi3;
  smax_optab->handlers[(int) SImode].insn_code = CODE_FOR_smaxsi3;
  umin_optab->handlers[(int) SImode].insn_code = CODE_FOR_uminsi3;
  umax_optab->handlers[(int) SImode].insn_code = CODE_FOR_umaxsi3;
  abs_optab->handlers[(int) DImode].insn_code = CODE_FOR_absdi2;
  smin_optab->handlers[(int) DImode].insn_code = CODE_FOR_smindi3;
  smax_optab->handlers[(int) DImode].insn_code = CODE_FOR_smaxdi3;
  umin_optab->handlers[(int) DImode].insn_code = CODE_FOR_umindi3;
  umax_optab->handlers[(int) DImode].insn_code = CODE_FOR_umaxdi3;
  ffs_optab->handlers[(int) DImode].insn_code = CODE_FOR_ffsdi2;
  ashl_optab->handlers[(int) SImode].insn_code = CODE_FOR_ashlsi3;
  ashr_optab->handlers[(int) SImode].insn_code = CODE_FOR_ashrsi3;
  lshr_optab->handlers[(int) SImode].insn_code = CODE_FOR_lshrsi3;
  rotr_optab->handlers[(int) SImode].insn_code = CODE_FOR_rotrsi3;
  rotr_optab->handlers[(int) DImode].insn_code = CODE_FOR_rotrdi3;
  one_cmpl_optab->handlers[(int) SImode].insn_code = CODE_FOR_one_cmplsi2;
  cmp_optab->handlers[(int) SImode].insn_code = CODE_FOR_cmpsi;
  cmp_optab->handlers[(int) DImode].insn_code = CODE_FOR_cmpdi;
  cmp_optab->handlers[(int) SFmode].insn_code = CODE_FOR_cmpsf;
  cmp_optab->handlers[(int) DFmode].insn_code = CODE_FOR_cmpdf;
  if (HAVE_cmpxf)
    cmp_optab->handlers[(int) XFmode].insn_code = CODE_FOR_cmpxf;
  mov_optab->handlers[(int) CCmode].insn_code = CODE_FOR_movcc;
  bcc_gen_fctn[(int) EQ] = gen_beq;
  bcc_gen_fctn[(int) NE] = gen_bne;
  bcc_gen_fctn[(int) LT] = gen_blt;
  bcc_gen_fctn[(int) LE] = gen_ble;
  bcc_gen_fctn[(int) GT] = gen_bgt;
  bcc_gen_fctn[(int) GE] = gen_bge;
  bcc_gen_fctn[(int) LTU] = gen_bltu;
  bcc_gen_fctn[(int) LEU] = gen_bleu;
  bcc_gen_fctn[(int) GTU] = gen_bgtu;
  bcc_gen_fctn[(int) GEU] = gen_bgeu;
  setcc_gen_code[(int) EQ] = CODE_FOR_seq;
  setcc_gen_code[(int) NE] = CODE_FOR_sne;
  setcc_gen_code[(int) LT] = CODE_FOR_slt;
  setcc_gen_code[(int) LE] = CODE_FOR_sle;
  setcc_gen_code[(int) GT] = CODE_FOR_sgt;
  setcc_gen_code[(int) GE] = CODE_FOR_sge;
  setcc_gen_code[(int) LTU] = CODE_FOR_sltu;
  setcc_gen_code[(int) LEU] = CODE_FOR_sleu;
  setcc_gen_code[(int) GTU] = CODE_FOR_sgtu;
  setcc_gen_code[(int) GEU] = CODE_FOR_sgeu;
}
