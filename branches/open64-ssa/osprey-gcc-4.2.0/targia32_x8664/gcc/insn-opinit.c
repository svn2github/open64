/* Generated automatically by the program `genopinit'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
#include "flags.h"
#include "insn-config.h"
#include "recog.h"
#include "expr.h"
#include "optabs.h"
#include "reload.h"

void
init_all_optabs (void)
{
#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC
  int i, j;
#endif

  if (HAVE_zero_extendhidi2)
    zext_optab->handlers[DImode][HImode].insn_code = CODE_FOR_zero_extendhidi2;
  if (HAVE_zero_extendqidi2)
    zext_optab->handlers[DImode][QImode].insn_code = CODE_FOR_zero_extendqidi2;
  if (HAVE_extendhidi2)
    sext_optab->handlers[DImode][HImode].insn_code = CODE_FOR_extendhidi2;
  if (HAVE_extendqidi2)
    sext_optab->handlers[DImode][QImode].insn_code = CODE_FOR_extendqidi2;
  sext_optab->handlers[SImode][HImode].insn_code = CODE_FOR_extendhisi2;
  sext_optab->handlers[HImode][QImode].insn_code = CODE_FOR_extendqihi2;
  sext_optab->handlers[SImode][QImode].insn_code = CODE_FOR_extendqisi2;
  if (HAVE_floathixf2)
    sfloat_optab->handlers[XFmode][HImode].insn_code = CODE_FOR_floathixf2;
  if (HAVE_floatsixf2)
    sfloat_optab->handlers[XFmode][SImode].insn_code = CODE_FOR_floatsixf2;
  if (HAVE_floatdixf2)
    sfloat_optab->handlers[XFmode][DImode].insn_code = CODE_FOR_floatdixf2;
  if (HAVE_divqi3)
    sdiv_optab->handlers[QImode].insn_code = CODE_FOR_divqi3;
  if (HAVE_udivqi3)
    udiv_optab->handlers[QImode].insn_code = CODE_FOR_udivqi3;
  if (HAVE_divmodhi4)
    sdivmod_optab->handlers[HImode].insn_code = CODE_FOR_divmodhi4;
  if (HAVE_udivmoddi4)
    udivmod_optab->handlers[DImode].insn_code = CODE_FOR_udivmoddi4;
  udivmod_optab->handlers[SImode].insn_code = CODE_FOR_udivmodsi4;
  ctz_optab->handlers[SImode].insn_code = CODE_FOR_ctzsi2;
  if (HAVE_ctzdi2)
    ctz_optab->handlers[DImode].insn_code = CODE_FOR_ctzdi2;
  if (HAVE_sqrtxf2)
    sqrt_optab->handlers[XFmode].insn_code = CODE_FOR_sqrtxf2;
  if (HAVE_sincosdf3)
    sincos_optab->handlers[DFmode].insn_code = CODE_FOR_sincosdf3;
  if (HAVE_sincossf3)
    sincos_optab->handlers[SFmode].insn_code = CODE_FOR_sincossf3;
  if (HAVE_sincosxf3)
    sincos_optab->handlers[XFmode].insn_code = CODE_FOR_sincosxf3;
  if (HAVE_sminsf3)
    smin_optab->handlers[SFmode].insn_code = CODE_FOR_sminsf3;
  if (HAVE_smaxsf3)
    smax_optab->handlers[SFmode].insn_code = CODE_FOR_smaxsf3;
  if (HAVE_smindf3)
    smin_optab->handlers[DFmode].insn_code = CODE_FOR_smindf3;
  if (HAVE_smaxdf3)
    smax_optab->handlers[DFmode].insn_code = CODE_FOR_smaxdf3;
  if (HAVE_sqrtv4sf2)
    sqrt_optab->handlers[V4SFmode].insn_code = CODE_FOR_sqrtv4sf2;
  if (HAVE_sqrtv2df2)
    sqrt_optab->handlers[V2DFmode].insn_code = CODE_FOR_sqrtv2df2;
  if (HAVE_ashrv8hi3)
    ashr_optab->handlers[V8HImode].insn_code = CODE_FOR_ashrv8hi3;
  if (HAVE_ashrv4si3)
    ashr_optab->handlers[V4SImode].insn_code = CODE_FOR_ashrv4si3;
  if (HAVE_lshrv8hi3)
    lshr_optab->handlers[V8HImode].insn_code = CODE_FOR_lshrv8hi3;
  if (HAVE_lshrv4si3)
    lshr_optab->handlers[V4SImode].insn_code = CODE_FOR_lshrv4si3;
  if (HAVE_lshrv2di3)
    lshr_optab->handlers[V2DImode].insn_code = CODE_FOR_lshrv2di3;
  if (HAVE_ashlv8hi3)
    ashl_optab->handlers[V8HImode].insn_code = CODE_FOR_ashlv8hi3;
  if (HAVE_ashlv4si3)
    ashl_optab->handlers[V4SImode].insn_code = CODE_FOR_ashlv4si3;
  if (HAVE_ashlv2di3)
    ashl_optab->handlers[V2DImode].insn_code = CODE_FOR_ashlv2di3;
  if (HAVE_sync_old_addqi)
    sync_old_add_optab[QImode] = CODE_FOR_sync_old_addqi;
  if (HAVE_sync_old_addhi)
    sync_old_add_optab[HImode] = CODE_FOR_sync_old_addhi;
  if (HAVE_sync_old_addsi)
    sync_old_add_optab[SImode] = CODE_FOR_sync_old_addsi;
  if (HAVE_sync_old_adddi)
    sync_old_add_optab[DImode] = CODE_FOR_sync_old_adddi;
  sync_lock_test_and_set[QImode] = CODE_FOR_sync_lock_test_and_setqi;
  sync_lock_test_and_set[HImode] = CODE_FOR_sync_lock_test_and_sethi;
  sync_lock_test_and_set[SImode] = CODE_FOR_sync_lock_test_and_setsi;
  if (HAVE_sync_lock_test_and_setdi)
    sync_lock_test_and_set[DImode] = CODE_FOR_sync_lock_test_and_setdi;
  sync_add_optab[QImode] = CODE_FOR_sync_addqi;
  sync_add_optab[HImode] = CODE_FOR_sync_addhi;
  sync_add_optab[SImode] = CODE_FOR_sync_addsi;
  if (HAVE_sync_adddi)
    sync_add_optab[DImode] = CODE_FOR_sync_adddi;
  sync_sub_optab[QImode] = CODE_FOR_sync_subqi;
  sync_sub_optab[HImode] = CODE_FOR_sync_subhi;
  sync_sub_optab[SImode] = CODE_FOR_sync_subsi;
  if (HAVE_sync_subdi)
    sync_sub_optab[DImode] = CODE_FOR_sync_subdi;
  sync_ior_optab[QImode] = CODE_FOR_sync_iorqi;
  sync_ior_optab[HImode] = CODE_FOR_sync_iorhi;
  sync_ior_optab[SImode] = CODE_FOR_sync_iorsi;
  if (HAVE_sync_iordi)
    sync_ior_optab[DImode] = CODE_FOR_sync_iordi;
  sync_and_optab[QImode] = CODE_FOR_sync_andqi;
  sync_and_optab[HImode] = CODE_FOR_sync_andhi;
  sync_and_optab[SImode] = CODE_FOR_sync_andsi;
  if (HAVE_sync_anddi)
    sync_and_optab[DImode] = CODE_FOR_sync_anddi;
  sync_xor_optab[QImode] = CODE_FOR_sync_xorqi;
  sync_xor_optab[HImode] = CODE_FOR_sync_xorhi;
  sync_xor_optab[SImode] = CODE_FOR_sync_xorsi;
  if (HAVE_sync_xordi)
    sync_xor_optab[DImode] = CODE_FOR_sync_xordi;
  if (HAVE_cmpti)
    cmp_optab->handlers[TImode].insn_code = CODE_FOR_cmpti;
  cmp_optab->handlers[DImode].insn_code = CODE_FOR_cmpdi;
  cmp_optab->handlers[SImode].insn_code = CODE_FOR_cmpsi;
  cmp_optab->handlers[HImode].insn_code = CODE_FOR_cmphi;
  if (HAVE_cmpqi)
    cmp_optab->handlers[QImode].insn_code = CODE_FOR_cmpqi;
  if (HAVE_cmpxf)
    cmp_optab->handlers[XFmode].insn_code = CODE_FOR_cmpxf;
  if (HAVE_cmpdf)
    cmp_optab->handlers[DFmode].insn_code = CODE_FOR_cmpdf;
  if (HAVE_cmpsf)
    cmp_optab->handlers[SFmode].insn_code = CODE_FOR_cmpsf;
  mov_optab->handlers[SImode].insn_code = CODE_FOR_movsi;
  mov_optab->handlers[HImode].insn_code = CODE_FOR_movhi;
  if (HAVE_movstricthi)
    movstrict_optab->handlers[HImode].insn_code = CODE_FOR_movstricthi;
  mov_optab->handlers[QImode].insn_code = CODE_FOR_movqi;
  reload_out_optab[QImode] = CODE_FOR_reload_outqi;
  if (HAVE_movstrictqi)
    movstrict_optab->handlers[QImode].insn_code = CODE_FOR_movstrictqi;
  mov_optab->handlers[DImode].insn_code = CODE_FOR_movdi;
  if (HAVE_movti)
    mov_optab->handlers[TImode].insn_code = CODE_FOR_movti;
  mov_optab->handlers[SFmode].insn_code = CODE_FOR_movsf;
  mov_optab->handlers[DFmode].insn_code = CODE_FOR_movdf;
  mov_optab->handlers[XFmode].insn_code = CODE_FOR_movxf;
  if (HAVE_movtf)
    mov_optab->handlers[TFmode].insn_code = CODE_FOR_movtf;
  zext_optab->handlers[SImode][HImode].insn_code = CODE_FOR_zero_extendhisi2;
  zext_optab->handlers[HImode][QImode].insn_code = CODE_FOR_zero_extendqihi2;
  zext_optab->handlers[SImode][QImode].insn_code = CODE_FOR_zero_extendqisi2;
  zext_optab->handlers[DImode][SImode].insn_code = CODE_FOR_zero_extendsidi2;
  sext_optab->handlers[DImode][SImode].insn_code = CODE_FOR_extendsidi2;
  if (HAVE_extendsfdf2)
    sext_optab->handlers[DFmode][SFmode].insn_code = CODE_FOR_extendsfdf2;
  if (HAVE_extendsfxf2)
    sext_optab->handlers[XFmode][SFmode].insn_code = CODE_FOR_extendsfxf2;
  if (HAVE_extenddfxf2)
    sext_optab->handlers[XFmode][DFmode].insn_code = CODE_FOR_extenddfxf2;
  if (HAVE_truncdfsf2)
    trunc_optab->handlers[SFmode][DFmode].insn_code = CODE_FOR_truncdfsf2;
  if (HAVE_truncxfsf2)
    trunc_optab->handlers[SFmode][XFmode].insn_code = CODE_FOR_truncxfsf2;
  if (HAVE_truncxfdf2)
    trunc_optab->handlers[DFmode][XFmode].insn_code = CODE_FOR_truncxfdf2;
  if (HAVE_fix_truncxfdi2)
    sfixtrunc_optab->handlers[DImode][XFmode].insn_code = CODE_FOR_fix_truncxfdi2;
  if (HAVE_fix_truncsfdi2)
    sfixtrunc_optab->handlers[DImode][SFmode].insn_code = CODE_FOR_fix_truncsfdi2;
  if (HAVE_fix_truncdfdi2)
    sfixtrunc_optab->handlers[DImode][DFmode].insn_code = CODE_FOR_fix_truncdfdi2;
  if (HAVE_fix_truncxfsi2)
    sfixtrunc_optab->handlers[SImode][XFmode].insn_code = CODE_FOR_fix_truncxfsi2;
  if (HAVE_fix_truncsfsi2)
    sfixtrunc_optab->handlers[SImode][SFmode].insn_code = CODE_FOR_fix_truncsfsi2;
  if (HAVE_fix_truncdfsi2)
    sfixtrunc_optab->handlers[SImode][DFmode].insn_code = CODE_FOR_fix_truncdfsi2;
  if (HAVE_fix_truncsfhi2)
    sfixtrunc_optab->handlers[HImode][SFmode].insn_code = CODE_FOR_fix_truncsfhi2;
  if (HAVE_fix_truncdfhi2)
    sfixtrunc_optab->handlers[HImode][DFmode].insn_code = CODE_FOR_fix_truncdfhi2;
  if (HAVE_fix_truncxfhi2)
    sfixtrunc_optab->handlers[HImode][XFmode].insn_code = CODE_FOR_fix_truncxfhi2;
  if (HAVE_floathisf2)
    sfloat_optab->handlers[SFmode][HImode].insn_code = CODE_FOR_floathisf2;
  if (HAVE_floatsisf2)
    sfloat_optab->handlers[SFmode][SImode].insn_code = CODE_FOR_floatsisf2;
  if (HAVE_floatdisf2)
    sfloat_optab->handlers[SFmode][DImode].insn_code = CODE_FOR_floatdisf2;
  if (HAVE_floathidf2)
    sfloat_optab->handlers[DFmode][HImode].insn_code = CODE_FOR_floathidf2;
  if (HAVE_floatsidf2)
    sfloat_optab->handlers[DFmode][SImode].insn_code = CODE_FOR_floatsidf2;
  if (HAVE_floatdidf2)
    sfloat_optab->handlers[DFmode][DImode].insn_code = CODE_FOR_floatdidf2;
  if (HAVE_floatunssisf2)
    ufloat_optab->handlers[SFmode][SImode].insn_code = CODE_FOR_floatunssisf2;
  if (HAVE_floatunsdisf2)
    ufloat_optab->handlers[SFmode][DImode].insn_code = CODE_FOR_floatunsdisf2;
  if (HAVE_floatunsdidf2)
    ufloat_optab->handlers[DFmode][DImode].insn_code = CODE_FOR_floatunsdidf2;
  if (HAVE_addti3)
    add_optab->handlers[TImode].insn_code = CODE_FOR_addti3;
  add_optab->handlers[DImode].insn_code = CODE_FOR_adddi3;
  add_optab->handlers[SImode].insn_code = CODE_FOR_addsi3;
  if (HAVE_addhi3)
    add_optab->handlers[HImode].insn_code = CODE_FOR_addhi3;
  if (HAVE_addqi3)
    add_optab->handlers[QImode].insn_code = CODE_FOR_addqi3;
  if (HAVE_addxf3)
    addv_optab->handlers[XFmode].insn_code =
    add_optab->handlers[XFmode].insn_code = CODE_FOR_addxf3;
  if (HAVE_adddf3)
    addv_optab->handlers[DFmode].insn_code =
    add_optab->handlers[DFmode].insn_code = CODE_FOR_adddf3;
  if (HAVE_addsf3)
    addv_optab->handlers[SFmode].insn_code =
    add_optab->handlers[SFmode].insn_code = CODE_FOR_addsf3;
  if (HAVE_subti3)
    sub_optab->handlers[TImode].insn_code = CODE_FOR_subti3;
  sub_optab->handlers[DImode].insn_code = CODE_FOR_subdi3;
  sub_optab->handlers[SImode].insn_code = CODE_FOR_subsi3;
  if (HAVE_subhi3)
    sub_optab->handlers[HImode].insn_code = CODE_FOR_subhi3;
  if (HAVE_subqi3)
    sub_optab->handlers[QImode].insn_code = CODE_FOR_subqi3;
  if (HAVE_subxf3)
    subv_optab->handlers[XFmode].insn_code =
    sub_optab->handlers[XFmode].insn_code = CODE_FOR_subxf3;
  if (HAVE_subdf3)
    subv_optab->handlers[DFmode].insn_code =
    sub_optab->handlers[DFmode].insn_code = CODE_FOR_subdf3;
  if (HAVE_subsf3)
    subv_optab->handlers[SFmode].insn_code =
    sub_optab->handlers[SFmode].insn_code = CODE_FOR_subsf3;
  if (HAVE_muldi3)
    smul_optab->handlers[DImode].insn_code = CODE_FOR_muldi3;
  smul_optab->handlers[SImode].insn_code = CODE_FOR_mulsi3;
  if (HAVE_mulhi3)
    smul_optab->handlers[HImode].insn_code = CODE_FOR_mulhi3;
  if (HAVE_mulqi3)
    smul_optab->handlers[QImode].insn_code = CODE_FOR_mulqi3;
  if (HAVE_umulqihi3)
    umul_widen_optab->handlers[HImode].insn_code = CODE_FOR_umulqihi3;
  if (HAVE_mulqihi3)
    smul_widen_optab->handlers[HImode].insn_code = CODE_FOR_mulqihi3;
  if (HAVE_umulditi3)
    umul_widen_optab->handlers[TImode].insn_code = CODE_FOR_umulditi3;
  if (HAVE_umulsidi3)
    umul_widen_optab->handlers[DImode].insn_code = CODE_FOR_umulsidi3;
  if (HAVE_mulditi3)
    smul_widen_optab->handlers[TImode].insn_code = CODE_FOR_mulditi3;
  if (HAVE_mulsidi3)
    smul_widen_optab->handlers[DImode].insn_code = CODE_FOR_mulsidi3;
  if (HAVE_umuldi3_highpart)
    umul_highpart_optab->handlers[DImode].insn_code = CODE_FOR_umuldi3_highpart;
  umul_highpart_optab->handlers[SImode].insn_code = CODE_FOR_umulsi3_highpart;
  if (HAVE_smuldi3_highpart)
    smul_highpart_optab->handlers[DImode].insn_code = CODE_FOR_smuldi3_highpart;
  smul_highpart_optab->handlers[SImode].insn_code = CODE_FOR_smulsi3_highpart;
  if (HAVE_mulxf3)
    smulv_optab->handlers[XFmode].insn_code =
    smul_optab->handlers[XFmode].insn_code = CODE_FOR_mulxf3;
  if (HAVE_muldf3)
    smulv_optab->handlers[DFmode].insn_code =
    smul_optab->handlers[DFmode].insn_code = CODE_FOR_muldf3;
  if (HAVE_mulsf3)
    smulv_optab->handlers[SFmode].insn_code =
    smul_optab->handlers[SFmode].insn_code = CODE_FOR_mulsf3;
  if (HAVE_divxf3)
    sdiv_optab->handlers[XFmode].insn_code = CODE_FOR_divxf3;
  if (HAVE_divdf3)
    sdiv_optab->handlers[DFmode].insn_code = CODE_FOR_divdf3;
  if (HAVE_divsf3)
    sdiv_optab->handlers[SFmode].insn_code = CODE_FOR_divsf3;
  if (HAVE_divmoddi4)
    sdivmod_optab->handlers[DImode].insn_code = CODE_FOR_divmoddi4;
  sdivmod_optab->handlers[SImode].insn_code = CODE_FOR_divmodsi4;
  if (HAVE_udivmodhi4)
    udivmod_optab->handlers[HImode].insn_code = CODE_FOR_udivmodhi4;
  if (HAVE_anddi3)
    and_optab->handlers[DImode].insn_code = CODE_FOR_anddi3;
  and_optab->handlers[SImode].insn_code = CODE_FOR_andsi3;
  if (HAVE_andhi3)
    and_optab->handlers[HImode].insn_code = CODE_FOR_andhi3;
  if (HAVE_andqi3)
    and_optab->handlers[QImode].insn_code = CODE_FOR_andqi3;
  if (HAVE_iordi3)
    ior_optab->handlers[DImode].insn_code = CODE_FOR_iordi3;
  ior_optab->handlers[SImode].insn_code = CODE_FOR_iorsi3;
  if (HAVE_iorhi3)
    ior_optab->handlers[HImode].insn_code = CODE_FOR_iorhi3;
  if (HAVE_iorqi3)
    ior_optab->handlers[QImode].insn_code = CODE_FOR_iorqi3;
  if (HAVE_xordi3)
    xor_optab->handlers[DImode].insn_code = CODE_FOR_xordi3;
  xor_optab->handlers[SImode].insn_code = CODE_FOR_xorsi3;
  if (HAVE_xorhi3)
    xor_optab->handlers[HImode].insn_code = CODE_FOR_xorhi3;
  if (HAVE_xorqi3)
    xor_optab->handlers[QImode].insn_code = CODE_FOR_xorqi3;
  if (HAVE_negti2)
    neg_optab->handlers[TImode].insn_code = CODE_FOR_negti2;
  neg_optab->handlers[DImode].insn_code = CODE_FOR_negdi2;
  neg_optab->handlers[SImode].insn_code = CODE_FOR_negsi2;
  if (HAVE_neghi2)
    neg_optab->handlers[HImode].insn_code = CODE_FOR_neghi2;
  if (HAVE_negqi2)
    neg_optab->handlers[QImode].insn_code = CODE_FOR_negqi2;
  if (HAVE_negsf2)
    negv_optab->handlers[SFmode].insn_code =
    neg_optab->handlers[SFmode].insn_code = CODE_FOR_negsf2;
  if (HAVE_abssf2)
    absv_optab->handlers[SFmode].insn_code =
    abs_optab->handlers[SFmode].insn_code = CODE_FOR_abssf2;
  if (HAVE_copysignsf3)
    copysign_optab->handlers[SFmode].insn_code = CODE_FOR_copysignsf3;
  if (HAVE_negdf2)
    negv_optab->handlers[DFmode].insn_code =
    neg_optab->handlers[DFmode].insn_code = CODE_FOR_negdf2;
  if (HAVE_absdf2)
    absv_optab->handlers[DFmode].insn_code =
    abs_optab->handlers[DFmode].insn_code = CODE_FOR_absdf2;
  if (HAVE_copysigndf3)
    copysign_optab->handlers[DFmode].insn_code = CODE_FOR_copysigndf3;
  if (HAVE_negxf2)
    negv_optab->handlers[XFmode].insn_code =
    neg_optab->handlers[XFmode].insn_code = CODE_FOR_negxf2;
  if (HAVE_absxf2)
    absv_optab->handlers[XFmode].insn_code =
    abs_optab->handlers[XFmode].insn_code = CODE_FOR_absxf2;
  if (HAVE_one_cmpldi2)
    one_cmpl_optab->handlers[DImode].insn_code = CODE_FOR_one_cmpldi2;
  one_cmpl_optab->handlers[SImode].insn_code = CODE_FOR_one_cmplsi2;
  if (HAVE_one_cmplhi2)
    one_cmpl_optab->handlers[HImode].insn_code = CODE_FOR_one_cmplhi2;
  if (HAVE_one_cmplqi2)
    one_cmpl_optab->handlers[QImode].insn_code = CODE_FOR_one_cmplqi2;
  if (HAVE_ashlti3)
    ashl_optab->handlers[TImode].insn_code = CODE_FOR_ashlti3;
  ashl_optab->handlers[DImode].insn_code = CODE_FOR_ashldi3;
  ashl_optab->handlers[SImode].insn_code = CODE_FOR_ashlsi3;
  if (HAVE_ashlhi3)
    ashl_optab->handlers[HImode].insn_code = CODE_FOR_ashlhi3;
  if (HAVE_ashlqi3)
    ashl_optab->handlers[QImode].insn_code = CODE_FOR_ashlqi3;
  if (HAVE_ashrti3)
    ashr_optab->handlers[TImode].insn_code = CODE_FOR_ashrti3;
  ashr_optab->handlers[DImode].insn_code = CODE_FOR_ashrdi3;
  ashr_optab->handlers[SImode].insn_code = CODE_FOR_ashrsi3;
  if (HAVE_ashrhi3)
    ashr_optab->handlers[HImode].insn_code = CODE_FOR_ashrhi3;
  if (HAVE_ashrqi3)
    ashr_optab->handlers[QImode].insn_code = CODE_FOR_ashrqi3;
  if (HAVE_lshrti3)
    lshr_optab->handlers[TImode].insn_code = CODE_FOR_lshrti3;
  lshr_optab->handlers[DImode].insn_code = CODE_FOR_lshrdi3;
  lshr_optab->handlers[SImode].insn_code = CODE_FOR_lshrsi3;
  if (HAVE_lshrhi3)
    lshr_optab->handlers[HImode].insn_code = CODE_FOR_lshrhi3;
  if (HAVE_lshrqi3)
    lshr_optab->handlers[QImode].insn_code = CODE_FOR_lshrqi3;
  rotl_optab->handlers[DImode].insn_code = CODE_FOR_rotldi3;
  rotl_optab->handlers[SImode].insn_code = CODE_FOR_rotlsi3;
  if (HAVE_rotlhi3)
    rotl_optab->handlers[HImode].insn_code = CODE_FOR_rotlhi3;
  if (HAVE_rotlqi3)
    rotl_optab->handlers[QImode].insn_code = CODE_FOR_rotlqi3;
  rotr_optab->handlers[DImode].insn_code = CODE_FOR_rotrdi3;
  rotr_optab->handlers[SImode].insn_code = CODE_FOR_rotrsi3;
  if (HAVE_rotrhi3)
    rotr_optab->handlers[HImode].insn_code = CODE_FOR_rotrhi3;
  if (HAVE_rotrqi3)
    rotr_optab->handlers[QImode].insn_code = CODE_FOR_rotrqi3;
  setcc_gen_code[EQ] = CODE_FOR_seq;
  setcc_gen_code[NE] = CODE_FOR_sne;
  setcc_gen_code[GT] = CODE_FOR_sgt;
  setcc_gen_code[GTU] = CODE_FOR_sgtu;
  setcc_gen_code[LT] = CODE_FOR_slt;
  setcc_gen_code[LTU] = CODE_FOR_sltu;
  setcc_gen_code[GE] = CODE_FOR_sge;
  setcc_gen_code[GEU] = CODE_FOR_sgeu;
  setcc_gen_code[LE] = CODE_FOR_sle;
  setcc_gen_code[LEU] = CODE_FOR_sleu;
  if (HAVE_sunordered)
    setcc_gen_code[UNORDERED] = CODE_FOR_sunordered;
  if (HAVE_sordered)
    setcc_gen_code[ORDERED] = CODE_FOR_sordered;
  if (HAVE_suneq)
    setcc_gen_code[UNEQ] = CODE_FOR_suneq;
  if (HAVE_sunge)
    setcc_gen_code[UNGE] = CODE_FOR_sunge;
  if (HAVE_sungt)
    setcc_gen_code[UNGT] = CODE_FOR_sungt;
  if (HAVE_sunle)
    setcc_gen_code[UNLE] = CODE_FOR_sunle;
  if (HAVE_sunlt)
    setcc_gen_code[UNLT] = CODE_FOR_sunlt;
  if (HAVE_sltgt)
    setcc_gen_code[LTGT] = CODE_FOR_sltgt;
  bcc_gen_fctn[EQ] = gen_beq;
  bcc_gen_fctn[NE] = gen_bne;
  bcc_gen_fctn[GT] = gen_bgt;
  bcc_gen_fctn[GTU] = gen_bgtu;
  bcc_gen_fctn[LT] = gen_blt;
  bcc_gen_fctn[LTU] = gen_bltu;
  bcc_gen_fctn[GE] = gen_bge;
  bcc_gen_fctn[GEU] = gen_bgeu;
  bcc_gen_fctn[LE] = gen_ble;
  bcc_gen_fctn[LEU] = gen_bleu;
  if (HAVE_bunordered)
    bcc_gen_fctn[UNORDERED] = gen_bunordered;
  if (HAVE_bordered)
    bcc_gen_fctn[ORDERED] = gen_bordered;
  if (HAVE_buneq)
    bcc_gen_fctn[UNEQ] = gen_buneq;
  if (HAVE_bunge)
    bcc_gen_fctn[UNGE] = gen_bunge;
  if (HAVE_bungt)
    bcc_gen_fctn[UNGT] = gen_bungt;
  if (HAVE_bunle)
    bcc_gen_fctn[UNLE] = gen_bunle;
  if (HAVE_bunlt)
    bcc_gen_fctn[UNLT] = gen_bunlt;
  if (HAVE_bltgt)
    bcc_gen_fctn[LTGT] = gen_bltgt;
  ffs_optab->handlers[SImode].insn_code = CODE_FOR_ffssi2;
  if (HAVE_ffsdi2)
    ffs_optab->handlers[DImode].insn_code = CODE_FOR_ffsdi2;
  clz_optab->handlers[SImode].insn_code = CODE_FOR_clzsi2;
  if (HAVE_clzdi2)
    clz_optab->handlers[DImode].insn_code = CODE_FOR_clzdi2;
  if (HAVE_sqrtsf2)
    sqrt_optab->handlers[SFmode].insn_code = CODE_FOR_sqrtsf2;
  if (HAVE_sqrtdf2)
    sqrt_optab->handlers[DFmode].insn_code = CODE_FOR_sqrtdf2;
  if (HAVE_fmodsf3)
    fmod_optab->handlers[SFmode].insn_code = CODE_FOR_fmodsf3;
  if (HAVE_fmoddf3)
    fmod_optab->handlers[DFmode].insn_code = CODE_FOR_fmoddf3;
  if (HAVE_fmodxf3)
    fmod_optab->handlers[XFmode].insn_code = CODE_FOR_fmodxf3;
  if (HAVE_dremsf3)
    drem_optab->handlers[SFmode].insn_code = CODE_FOR_dremsf3;
  if (HAVE_dremdf3)
    drem_optab->handlers[DFmode].insn_code = CODE_FOR_dremdf3;
  if (HAVE_dremxf3)
    drem_optab->handlers[XFmode].insn_code = CODE_FOR_dremxf3;
  if (HAVE_tandf2)
    tan_optab->handlers[DFmode].insn_code = CODE_FOR_tandf2;
  if (HAVE_tansf2)
    tan_optab->handlers[SFmode].insn_code = CODE_FOR_tansf2;
  if (HAVE_tanxf2)
    tan_optab->handlers[XFmode].insn_code = CODE_FOR_tanxf2;
  if (HAVE_atan2df3)
    atan2_optab->handlers[DFmode].insn_code = CODE_FOR_atan2df3;
  if (HAVE_atandf2)
    atan_optab->handlers[DFmode].insn_code = CODE_FOR_atandf2;
  if (HAVE_atan2sf3)
    atan2_optab->handlers[SFmode].insn_code = CODE_FOR_atan2sf3;
  if (HAVE_atansf2)
    atan_optab->handlers[SFmode].insn_code = CODE_FOR_atansf2;
  if (HAVE_atan2xf3)
    atan2_optab->handlers[XFmode].insn_code = CODE_FOR_atan2xf3;
  if (HAVE_atanxf2)
    atan_optab->handlers[XFmode].insn_code = CODE_FOR_atanxf2;
  if (HAVE_asindf2)
    asin_optab->handlers[DFmode].insn_code = CODE_FOR_asindf2;
  if (HAVE_asinsf2)
    asin_optab->handlers[SFmode].insn_code = CODE_FOR_asinsf2;
  if (HAVE_asinxf2)
    asin_optab->handlers[XFmode].insn_code = CODE_FOR_asinxf2;
  if (HAVE_acosdf2)
    acos_optab->handlers[DFmode].insn_code = CODE_FOR_acosdf2;
  if (HAVE_acossf2)
    acos_optab->handlers[SFmode].insn_code = CODE_FOR_acossf2;
  if (HAVE_acosxf2)
    acos_optab->handlers[XFmode].insn_code = CODE_FOR_acosxf2;
  if (HAVE_logsf2)
    log_optab->handlers[SFmode].insn_code = CODE_FOR_logsf2;
  if (HAVE_logdf2)
    log_optab->handlers[DFmode].insn_code = CODE_FOR_logdf2;
  if (HAVE_logxf2)
    log_optab->handlers[XFmode].insn_code = CODE_FOR_logxf2;
  if (HAVE_log10sf2)
    log10_optab->handlers[SFmode].insn_code = CODE_FOR_log10sf2;
  if (HAVE_log10df2)
    log10_optab->handlers[DFmode].insn_code = CODE_FOR_log10df2;
  if (HAVE_log10xf2)
    log10_optab->handlers[XFmode].insn_code = CODE_FOR_log10xf2;
  if (HAVE_log2sf2)
    log2_optab->handlers[SFmode].insn_code = CODE_FOR_log2sf2;
  if (HAVE_log2df2)
    log2_optab->handlers[DFmode].insn_code = CODE_FOR_log2df2;
  if (HAVE_log2xf2)
    log2_optab->handlers[XFmode].insn_code = CODE_FOR_log2xf2;
  if (HAVE_log1psf2)
    log1p_optab->handlers[SFmode].insn_code = CODE_FOR_log1psf2;
  if (HAVE_log1pdf2)
    log1p_optab->handlers[DFmode].insn_code = CODE_FOR_log1pdf2;
  if (HAVE_log1pxf2)
    log1p_optab->handlers[XFmode].insn_code = CODE_FOR_log1pxf2;
  if (HAVE_logbsf2)
    logb_optab->handlers[SFmode].insn_code = CODE_FOR_logbsf2;
  if (HAVE_logbdf2)
    logb_optab->handlers[DFmode].insn_code = CODE_FOR_logbdf2;
  if (HAVE_logbxf2)
    logb_optab->handlers[XFmode].insn_code = CODE_FOR_logbxf2;
  if (HAVE_ilogbsi2)
    ilogb_optab->handlers[SImode].insn_code = CODE_FOR_ilogbsi2;
  if (HAVE_expsf2)
    exp_optab->handlers[SFmode].insn_code = CODE_FOR_expsf2;
  if (HAVE_expdf2)
    exp_optab->handlers[DFmode].insn_code = CODE_FOR_expdf2;
  if (HAVE_expxf2)
    exp_optab->handlers[XFmode].insn_code = CODE_FOR_expxf2;
  if (HAVE_exp10sf2)
    exp10_optab->handlers[SFmode].insn_code = CODE_FOR_exp10sf2;
  if (HAVE_exp10df2)
    exp10_optab->handlers[DFmode].insn_code = CODE_FOR_exp10df2;
  if (HAVE_exp10xf2)
    exp10_optab->handlers[XFmode].insn_code = CODE_FOR_exp10xf2;
  if (HAVE_exp2sf2)
    exp2_optab->handlers[SFmode].insn_code = CODE_FOR_exp2sf2;
  if (HAVE_exp2df2)
    exp2_optab->handlers[DFmode].insn_code = CODE_FOR_exp2df2;
  if (HAVE_exp2xf2)
    exp2_optab->handlers[XFmode].insn_code = CODE_FOR_exp2xf2;
  if (HAVE_expm1df2)
    expm1_optab->handlers[DFmode].insn_code = CODE_FOR_expm1df2;
  if (HAVE_expm1sf2)
    expm1_optab->handlers[SFmode].insn_code = CODE_FOR_expm1sf2;
  if (HAVE_expm1xf2)
    expm1_optab->handlers[XFmode].insn_code = CODE_FOR_expm1xf2;
  if (HAVE_ldexpdf3)
    ldexp_optab->handlers[DFmode].insn_code = CODE_FOR_ldexpdf3;
  if (HAVE_ldexpsf3)
    ldexp_optab->handlers[SFmode].insn_code = CODE_FOR_ldexpsf3;
  if (HAVE_ldexpxf3)
    ldexp_optab->handlers[XFmode].insn_code = CODE_FOR_ldexpxf3;
  if (HAVE_rintdf2)
    rint_optab->handlers[DFmode].insn_code = CODE_FOR_rintdf2;
  if (HAVE_rintsf2)
    rint_optab->handlers[SFmode].insn_code = CODE_FOR_rintsf2;
  if (HAVE_rintxf2)
    rint_optab->handlers[XFmode].insn_code = CODE_FOR_rintxf2;
  if (HAVE_lrinthi2)
    lrint_optab->handlers[HImode].insn_code = CODE_FOR_lrinthi2;
  if (HAVE_lrintsi2)
    lrint_optab->handlers[SImode].insn_code = CODE_FOR_lrintsi2;
  if (HAVE_lrintdi2)
    lrint_optab->handlers[DImode].insn_code = CODE_FOR_lrintdi2;
  if (HAVE_floorxf2)
    floor_optab->handlers[XFmode].insn_code = CODE_FOR_floorxf2;
  if (HAVE_floordf2)
    floor_optab->handlers[DFmode].insn_code = CODE_FOR_floordf2;
  if (HAVE_floorsf2)
    floor_optab->handlers[SFmode].insn_code = CODE_FOR_floorsf2;
  if (HAVE_lfloorhi2)
    lfloor_optab->handlers[HImode].insn_code = CODE_FOR_lfloorhi2;
  if (HAVE_lfloorsi2)
    lfloor_optab->handlers[SImode].insn_code = CODE_FOR_lfloorsi2;
  if (HAVE_lfloordi2)
    lfloor_optab->handlers[DImode].insn_code = CODE_FOR_lfloordi2;
  if (HAVE_ceilxf2)
    ceil_optab->handlers[XFmode].insn_code = CODE_FOR_ceilxf2;
  if (HAVE_ceildf2)
    ceil_optab->handlers[DFmode].insn_code = CODE_FOR_ceildf2;
  if (HAVE_ceilsf2)
    ceil_optab->handlers[SFmode].insn_code = CODE_FOR_ceilsf2;
  if (HAVE_lceilhi2)
    lceil_optab->handlers[HImode].insn_code = CODE_FOR_lceilhi2;
  if (HAVE_lceilsi2)
    lceil_optab->handlers[SImode].insn_code = CODE_FOR_lceilsi2;
  if (HAVE_lceildi2)
    lceil_optab->handlers[DImode].insn_code = CODE_FOR_lceildi2;
  if (HAVE_btruncxf2)
    btrunc_optab->handlers[XFmode].insn_code = CODE_FOR_btruncxf2;
  if (HAVE_btruncdf2)
    btrunc_optab->handlers[DFmode].insn_code = CODE_FOR_btruncdf2;
  if (HAVE_btruncsf2)
    btrunc_optab->handlers[SFmode].insn_code = CODE_FOR_btruncsf2;
  if (HAVE_nearbyintxf2)
    nearbyint_optab->handlers[XFmode].insn_code = CODE_FOR_nearbyintxf2;
  if (HAVE_nearbyintdf2)
    nearbyint_optab->handlers[DFmode].insn_code = CODE_FOR_nearbyintdf2;
  if (HAVE_nearbyintsf2)
    nearbyint_optab->handlers[SFmode].insn_code = CODE_FOR_nearbyintsf2;
  if (HAVE_movmemsi)
    movmem_optab[SImode] = CODE_FOR_movmemsi;
  if (HAVE_movmemdi)
    movmem_optab[DImode] = CODE_FOR_movmemdi;
  setmem_optab[SImode] = CODE_FOR_setmemsi;
  if (HAVE_setmemdi)
    setmem_optab[DImode] = CODE_FOR_setmemdi;
  if (HAVE_cmpstrnsi)
    cmpstrn_optab[SImode] = CODE_FOR_cmpstrnsi;
  strlen_optab->handlers[SImode].insn_code = CODE_FOR_strlensi;
  strlen_optab->handlers[DImode].insn_code = CODE_FOR_strlendi;
  if (HAVE_movdicc)
    movcc_gen_code[DImode] = CODE_FOR_movdicc;
  movcc_gen_code[SImode] = CODE_FOR_movsicc;
  if (HAVE_movhicc)
    movcc_gen_code[HImode] = CODE_FOR_movhicc;
  if (HAVE_movqicc)
    movcc_gen_code[QImode] = CODE_FOR_movqicc;
  if (HAVE_movsfcc)
    movcc_gen_code[SFmode] = CODE_FOR_movsfcc;
  if (HAVE_movdfcc)
    movcc_gen_code[DFmode] = CODE_FOR_movdfcc;
  if (HAVE_movxfcc)
    movcc_gen_code[XFmode] = CODE_FOR_movxfcc;
  addcc_optab->handlers[QImode].insn_code = CODE_FOR_addqicc;
  addcc_optab->handlers[HImode].insn_code = CODE_FOR_addhicc;
  addcc_optab->handlers[SImode].insn_code = CODE_FOR_addsicc;
  if (HAVE_adddicc)
    addcc_optab->handlers[DImode].insn_code = CODE_FOR_adddicc;
  if (HAVE_movv16qi)
    mov_optab->handlers[V16QImode].insn_code = CODE_FOR_movv16qi;
  if (HAVE_movv8hi)
    mov_optab->handlers[V8HImode].insn_code = CODE_FOR_movv8hi;
  if (HAVE_movv4si)
    mov_optab->handlers[V4SImode].insn_code = CODE_FOR_movv4si;
  if (HAVE_movv2di)
    mov_optab->handlers[V2DImode].insn_code = CODE_FOR_movv2di;
  if (HAVE_movv4sf)
    mov_optab->handlers[V4SFmode].insn_code = CODE_FOR_movv4sf;
  if (HAVE_movv2df)
    mov_optab->handlers[V2DFmode].insn_code = CODE_FOR_movv2df;
  if (HAVE_pushv16qi1)
    push_optab->handlers[V16QImode].insn_code = CODE_FOR_pushv16qi1;
  if (HAVE_pushv8hi1)
    push_optab->handlers[V8HImode].insn_code = CODE_FOR_pushv8hi1;
  if (HAVE_pushv4si1)
    push_optab->handlers[V4SImode].insn_code = CODE_FOR_pushv4si1;
  if (HAVE_pushv2di1)
    push_optab->handlers[V2DImode].insn_code = CODE_FOR_pushv2di1;
  if (HAVE_pushv4sf1)
    push_optab->handlers[V4SFmode].insn_code = CODE_FOR_pushv4sf1;
  if (HAVE_pushv2df1)
    push_optab->handlers[V2DFmode].insn_code = CODE_FOR_pushv2df1;
  if (HAVE_movmisalignv16qi)
    movmisalign_optab->handlers[V16QImode].insn_code = CODE_FOR_movmisalignv16qi;
  if (HAVE_movmisalignv8hi)
    movmisalign_optab->handlers[V8HImode].insn_code = CODE_FOR_movmisalignv8hi;
  if (HAVE_movmisalignv4si)
    movmisalign_optab->handlers[V4SImode].insn_code = CODE_FOR_movmisalignv4si;
  if (HAVE_movmisalignv2di)
    movmisalign_optab->handlers[V2DImode].insn_code = CODE_FOR_movmisalignv2di;
  if (HAVE_movmisalignv4sf)
    movmisalign_optab->handlers[V4SFmode].insn_code = CODE_FOR_movmisalignv4sf;
  if (HAVE_movmisalignv2df)
    movmisalign_optab->handlers[V2DFmode].insn_code = CODE_FOR_movmisalignv2df;
  if (HAVE_negv4sf2)
    negv_optab->handlers[V4SFmode].insn_code =
    neg_optab->handlers[V4SFmode].insn_code = CODE_FOR_negv4sf2;
  if (HAVE_absv4sf2)
    absv_optab->handlers[V4SFmode].insn_code =
    abs_optab->handlers[V4SFmode].insn_code = CODE_FOR_absv4sf2;
  if (HAVE_addv4sf3)
    addv_optab->handlers[V4SFmode].insn_code =
    add_optab->handlers[V4SFmode].insn_code = CODE_FOR_addv4sf3;
  if (HAVE_subv4sf3)
    subv_optab->handlers[V4SFmode].insn_code =
    sub_optab->handlers[V4SFmode].insn_code = CODE_FOR_subv4sf3;
  if (HAVE_mulv4sf3)
    smulv_optab->handlers[V4SFmode].insn_code =
    smul_optab->handlers[V4SFmode].insn_code = CODE_FOR_mulv4sf3;
  if (HAVE_divv4sf3)
    sdiv_optab->handlers[V4SFmode].insn_code = CODE_FOR_divv4sf3;
  if (HAVE_smaxv4sf3)
    smax_optab->handlers[V4SFmode].insn_code = CODE_FOR_smaxv4sf3;
  if (HAVE_sminv4sf3)
    smin_optab->handlers[V4SFmode].insn_code = CODE_FOR_sminv4sf3;
  if (HAVE_reduc_splus_v4sf)
    reduc_splus_optab->handlers[V4SFmode].insn_code = CODE_FOR_reduc_splus_v4sf;
  if (HAVE_reduc_smax_v4sf)
    reduc_smax_optab->handlers[V4SFmode].insn_code = CODE_FOR_reduc_smax_v4sf;
  if (HAVE_reduc_smin_v4sf)
    reduc_smin_optab->handlers[V4SFmode].insn_code = CODE_FOR_reduc_smin_v4sf;
  if (HAVE_vcondv4sf)
    vcond_gen_code[V4SFmode] = CODE_FOR_vcondv4sf;
  if (HAVE_andv4sf3)
    and_optab->handlers[V4SFmode].insn_code = CODE_FOR_andv4sf3;
  if (HAVE_iorv4sf3)
    ior_optab->handlers[V4SFmode].insn_code = CODE_FOR_iorv4sf3;
  if (HAVE_xorv4sf3)
    xor_optab->handlers[V4SFmode].insn_code = CODE_FOR_xorv4sf3;
  if (HAVE_vec_initv4sf)
    vec_init_optab->handlers[V4SFmode].insn_code = CODE_FOR_vec_initv4sf;
  if (HAVE_vec_setv4sf)
    vec_set_optab->handlers[V4SFmode].insn_code = CODE_FOR_vec_setv4sf;
  if (HAVE_vec_extractv4sf)
    vec_extract_optab->handlers[V4SFmode].insn_code = CODE_FOR_vec_extractv4sf;
  if (HAVE_negv2df2)
    negv_optab->handlers[V2DFmode].insn_code =
    neg_optab->handlers[V2DFmode].insn_code = CODE_FOR_negv2df2;
  if (HAVE_absv2df2)
    absv_optab->handlers[V2DFmode].insn_code =
    abs_optab->handlers[V2DFmode].insn_code = CODE_FOR_absv2df2;
  if (HAVE_addv2df3)
    addv_optab->handlers[V2DFmode].insn_code =
    add_optab->handlers[V2DFmode].insn_code = CODE_FOR_addv2df3;
  if (HAVE_subv2df3)
    subv_optab->handlers[V2DFmode].insn_code =
    sub_optab->handlers[V2DFmode].insn_code = CODE_FOR_subv2df3;
  if (HAVE_mulv2df3)
    smulv_optab->handlers[V2DFmode].insn_code =
    smul_optab->handlers[V2DFmode].insn_code = CODE_FOR_mulv2df3;
  if (HAVE_divv2df3)
    sdiv_optab->handlers[V2DFmode].insn_code = CODE_FOR_divv2df3;
  if (HAVE_smaxv2df3)
    smax_optab->handlers[V2DFmode].insn_code = CODE_FOR_smaxv2df3;
  if (HAVE_sminv2df3)
    smin_optab->handlers[V2DFmode].insn_code = CODE_FOR_sminv2df3;
  if (HAVE_reduc_splus_v2df)
    reduc_splus_optab->handlers[V2DFmode].insn_code = CODE_FOR_reduc_splus_v2df;
  if (HAVE_vcondv2df)
    vcond_gen_code[V2DFmode] = CODE_FOR_vcondv2df;
  if (HAVE_andv2df3)
    and_optab->handlers[V2DFmode].insn_code = CODE_FOR_andv2df3;
  if (HAVE_iorv2df3)
    ior_optab->handlers[V2DFmode].insn_code = CODE_FOR_iorv2df3;
  if (HAVE_xorv2df3)
    xor_optab->handlers[V2DFmode].insn_code = CODE_FOR_xorv2df3;
  if (HAVE_vec_setv2df)
    vec_set_optab->handlers[V2DFmode].insn_code = CODE_FOR_vec_setv2df;
  if (HAVE_vec_extractv2df)
    vec_extract_optab->handlers[V2DFmode].insn_code = CODE_FOR_vec_extractv2df;
  if (HAVE_vec_initv2df)
    vec_init_optab->handlers[V2DFmode].insn_code = CODE_FOR_vec_initv2df;
  if (HAVE_negv16qi2)
    neg_optab->handlers[V16QImode].insn_code = CODE_FOR_negv16qi2;
  if (HAVE_negv8hi2)
    neg_optab->handlers[V8HImode].insn_code = CODE_FOR_negv8hi2;
  if (HAVE_negv4si2)
    neg_optab->handlers[V4SImode].insn_code = CODE_FOR_negv4si2;
  if (HAVE_negv2di2)
    neg_optab->handlers[V2DImode].insn_code = CODE_FOR_negv2di2;
  if (HAVE_addv16qi3)
    add_optab->handlers[V16QImode].insn_code = CODE_FOR_addv16qi3;
  if (HAVE_addv8hi3)
    add_optab->handlers[V8HImode].insn_code = CODE_FOR_addv8hi3;
  if (HAVE_addv4si3)
    add_optab->handlers[V4SImode].insn_code = CODE_FOR_addv4si3;
  if (HAVE_addv2di3)
    add_optab->handlers[V2DImode].insn_code = CODE_FOR_addv2di3;
  if (HAVE_subv16qi3)
    sub_optab->handlers[V16QImode].insn_code = CODE_FOR_subv16qi3;
  if (HAVE_subv8hi3)
    sub_optab->handlers[V8HImode].insn_code = CODE_FOR_subv8hi3;
  if (HAVE_subv4si3)
    sub_optab->handlers[V4SImode].insn_code = CODE_FOR_subv4si3;
  if (HAVE_subv2di3)
    sub_optab->handlers[V2DImode].insn_code = CODE_FOR_subv2di3;
  if (HAVE_mulv16qi3)
    smul_optab->handlers[V16QImode].insn_code = CODE_FOR_mulv16qi3;
  if (HAVE_mulv8hi3)
    smul_optab->handlers[V8HImode].insn_code = CODE_FOR_mulv8hi3;
  if (HAVE_mulv4si3)
    smul_optab->handlers[V4SImode].insn_code = CODE_FOR_mulv4si3;
  if (HAVE_mulv2di3)
    smul_optab->handlers[V2DImode].insn_code = CODE_FOR_mulv2di3;
  if (HAVE_sdot_prodv8hi)
    sdot_prod_optab->handlers[V8HImode].insn_code = CODE_FOR_sdot_prodv8hi;
  if (HAVE_udot_prodv4si)
    udot_prod_optab->handlers[V4SImode].insn_code = CODE_FOR_udot_prodv4si;
  if (HAVE_vec_shl_v16qi)
    vec_shl_optab->handlers[V16QImode].insn_code = CODE_FOR_vec_shl_v16qi;
  if (HAVE_vec_shl_v8hi)
    vec_shl_optab->handlers[V8HImode].insn_code = CODE_FOR_vec_shl_v8hi;
  if (HAVE_vec_shl_v4si)
    vec_shl_optab->handlers[V4SImode].insn_code = CODE_FOR_vec_shl_v4si;
  if (HAVE_vec_shl_v2di)
    vec_shl_optab->handlers[V2DImode].insn_code = CODE_FOR_vec_shl_v2di;
  if (HAVE_vec_shr_v16qi)
    vec_shr_optab->handlers[V16QImode].insn_code = CODE_FOR_vec_shr_v16qi;
  if (HAVE_vec_shr_v8hi)
    vec_shr_optab->handlers[V8HImode].insn_code = CODE_FOR_vec_shr_v8hi;
  if (HAVE_vec_shr_v4si)
    vec_shr_optab->handlers[V4SImode].insn_code = CODE_FOR_vec_shr_v4si;
  if (HAVE_vec_shr_v2di)
    vec_shr_optab->handlers[V2DImode].insn_code = CODE_FOR_vec_shr_v2di;
  if (HAVE_umaxv16qi3)
    umax_optab->handlers[V16QImode].insn_code = CODE_FOR_umaxv16qi3;
  if (HAVE_smaxv8hi3)
    smax_optab->handlers[V8HImode].insn_code = CODE_FOR_smaxv8hi3;
  if (HAVE_umaxv8hi3)
    umax_optab->handlers[V8HImode].insn_code = CODE_FOR_umaxv8hi3;
  if (HAVE_smaxv16qi3)
    smax_optab->handlers[V16QImode].insn_code = CODE_FOR_smaxv16qi3;
  if (HAVE_smaxv4si3)
    smax_optab->handlers[V4SImode].insn_code = CODE_FOR_smaxv4si3;
  if (HAVE_umaxv4si3)
    umax_optab->handlers[V4SImode].insn_code = CODE_FOR_umaxv4si3;
  if (HAVE_uminv16qi3)
    umin_optab->handlers[V16QImode].insn_code = CODE_FOR_uminv16qi3;
  if (HAVE_sminv8hi3)
    smin_optab->handlers[V8HImode].insn_code = CODE_FOR_sminv8hi3;
  if (HAVE_sminv16qi3)
    smin_optab->handlers[V16QImode].insn_code = CODE_FOR_sminv16qi3;
  if (HAVE_sminv4si3)
    smin_optab->handlers[V4SImode].insn_code = CODE_FOR_sminv4si3;
  if (HAVE_uminv8hi3)
    umin_optab->handlers[V8HImode].insn_code = CODE_FOR_uminv8hi3;
  if (HAVE_uminv4si3)
    umin_optab->handlers[V4SImode].insn_code = CODE_FOR_uminv4si3;
  if (HAVE_vcondv16qi)
    vcond_gen_code[V16QImode] = CODE_FOR_vcondv16qi;
  if (HAVE_vcondv8hi)
    vcond_gen_code[V8HImode] = CODE_FOR_vcondv8hi;
  if (HAVE_vcondv4si)
    vcond_gen_code[V4SImode] = CODE_FOR_vcondv4si;
  if (HAVE_vconduv16qi)
    vcondu_gen_code[V16QImode] = CODE_FOR_vconduv16qi;
  if (HAVE_vconduv8hi)
    vcondu_gen_code[V8HImode] = CODE_FOR_vconduv8hi;
  if (HAVE_vconduv4si)
    vcondu_gen_code[V4SImode] = CODE_FOR_vconduv4si;
  if (HAVE_one_cmplv16qi2)
    one_cmpl_optab->handlers[V16QImode].insn_code = CODE_FOR_one_cmplv16qi2;
  if (HAVE_one_cmplv8hi2)
    one_cmpl_optab->handlers[V8HImode].insn_code = CODE_FOR_one_cmplv8hi2;
  if (HAVE_one_cmplv4si2)
    one_cmpl_optab->handlers[V4SImode].insn_code = CODE_FOR_one_cmplv4si2;
  if (HAVE_one_cmplv2di2)
    one_cmpl_optab->handlers[V2DImode].insn_code = CODE_FOR_one_cmplv2di2;
  if (HAVE_andv16qi3)
    and_optab->handlers[V16QImode].insn_code = CODE_FOR_andv16qi3;
  if (HAVE_andv8hi3)
    and_optab->handlers[V8HImode].insn_code = CODE_FOR_andv8hi3;
  if (HAVE_andv4si3)
    and_optab->handlers[V4SImode].insn_code = CODE_FOR_andv4si3;
  if (HAVE_andv2di3)
    and_optab->handlers[V2DImode].insn_code = CODE_FOR_andv2di3;
  if (HAVE_iorv16qi3)
    ior_optab->handlers[V16QImode].insn_code = CODE_FOR_iorv16qi3;
  if (HAVE_iorv8hi3)
    ior_optab->handlers[V8HImode].insn_code = CODE_FOR_iorv8hi3;
  if (HAVE_iorv4si3)
    ior_optab->handlers[V4SImode].insn_code = CODE_FOR_iorv4si3;
  if (HAVE_iorv2di3)
    ior_optab->handlers[V2DImode].insn_code = CODE_FOR_iorv2di3;
  if (HAVE_xorv16qi3)
    xor_optab->handlers[V16QImode].insn_code = CODE_FOR_xorv16qi3;
  if (HAVE_xorv8hi3)
    xor_optab->handlers[V8HImode].insn_code = CODE_FOR_xorv8hi3;
  if (HAVE_xorv4si3)
    xor_optab->handlers[V4SImode].insn_code = CODE_FOR_xorv4si3;
  if (HAVE_xorv2di3)
    xor_optab->handlers[V2DImode].insn_code = CODE_FOR_xorv2di3;
  if (HAVE_vec_setv2di)
    vec_set_optab->handlers[V2DImode].insn_code = CODE_FOR_vec_setv2di;
  if (HAVE_vec_extractv2di)
    vec_extract_optab->handlers[V2DImode].insn_code = CODE_FOR_vec_extractv2di;
  if (HAVE_vec_initv2di)
    vec_init_optab->handlers[V2DImode].insn_code = CODE_FOR_vec_initv2di;
  if (HAVE_vec_setv4si)
    vec_set_optab->handlers[V4SImode].insn_code = CODE_FOR_vec_setv4si;
  if (HAVE_vec_extractv4si)
    vec_extract_optab->handlers[V4SImode].insn_code = CODE_FOR_vec_extractv4si;
  if (HAVE_vec_initv4si)
    vec_init_optab->handlers[V4SImode].insn_code = CODE_FOR_vec_initv4si;
  if (HAVE_vec_setv8hi)
    vec_set_optab->handlers[V8HImode].insn_code = CODE_FOR_vec_setv8hi;
  if (HAVE_vec_extractv8hi)
    vec_extract_optab->handlers[V8HImode].insn_code = CODE_FOR_vec_extractv8hi;
  if (HAVE_vec_initv8hi)
    vec_init_optab->handlers[V8HImode].insn_code = CODE_FOR_vec_initv8hi;
  if (HAVE_vec_setv16qi)
    vec_set_optab->handlers[V16QImode].insn_code = CODE_FOR_vec_setv16qi;
  if (HAVE_vec_extractv16qi)
    vec_extract_optab->handlers[V16QImode].insn_code = CODE_FOR_vec_extractv16qi;
  if (HAVE_vec_initv16qi)
    vec_init_optab->handlers[V16QImode].insn_code = CODE_FOR_vec_initv16qi;
  if (HAVE_movv8qi)
    mov_optab->handlers[V8QImode].insn_code = CODE_FOR_movv8qi;
  if (HAVE_movv4hi)
    mov_optab->handlers[V4HImode].insn_code = CODE_FOR_movv4hi;
  if (HAVE_movv2si)
    mov_optab->handlers[V2SImode].insn_code = CODE_FOR_movv2si;
  if (HAVE_movv2sf)
    mov_optab->handlers[V2SFmode].insn_code = CODE_FOR_movv2sf;
  if (HAVE_pushv8qi1)
    push_optab->handlers[V8QImode].insn_code = CODE_FOR_pushv8qi1;
  if (HAVE_pushv4hi1)
    push_optab->handlers[V4HImode].insn_code = CODE_FOR_pushv4hi1;
  if (HAVE_pushv2si1)
    push_optab->handlers[V2SImode].insn_code = CODE_FOR_pushv2si1;
  if (HAVE_pushv2sf1)
    push_optab->handlers[V2SFmode].insn_code = CODE_FOR_pushv2sf1;
  if (HAVE_movmisalignv8qi)
    movmisalign_optab->handlers[V8QImode].insn_code = CODE_FOR_movmisalignv8qi;
  if (HAVE_movmisalignv4hi)
    movmisalign_optab->handlers[V4HImode].insn_code = CODE_FOR_movmisalignv4hi;
  if (HAVE_movmisalignv2si)
    movmisalign_optab->handlers[V2SImode].insn_code = CODE_FOR_movmisalignv2si;
  if (HAVE_movmisalignv2sf)
    movmisalign_optab->handlers[V2SFmode].insn_code = CODE_FOR_movmisalignv2sf;
  if (HAVE_vec_setv2sf)
    vec_set_optab->handlers[V2SFmode].insn_code = CODE_FOR_vec_setv2sf;
  if (HAVE_vec_extractv2sf)
    vec_extract_optab->handlers[V2SFmode].insn_code = CODE_FOR_vec_extractv2sf;
  if (HAVE_vec_initv2sf)
    vec_init_optab->handlers[V2SFmode].insn_code = CODE_FOR_vec_initv2sf;
  if (HAVE_vec_setv2si)
    vec_set_optab->handlers[V2SImode].insn_code = CODE_FOR_vec_setv2si;
  if (HAVE_vec_extractv2si)
    vec_extract_optab->handlers[V2SImode].insn_code = CODE_FOR_vec_extractv2si;
  if (HAVE_vec_initv2si)
    vec_init_optab->handlers[V2SImode].insn_code = CODE_FOR_vec_initv2si;
  if (HAVE_vec_setv4hi)
    vec_set_optab->handlers[V4HImode].insn_code = CODE_FOR_vec_setv4hi;
  if (HAVE_vec_extractv4hi)
    vec_extract_optab->handlers[V4HImode].insn_code = CODE_FOR_vec_extractv4hi;
  if (HAVE_vec_initv4hi)
    vec_init_optab->handlers[V4HImode].insn_code = CODE_FOR_vec_initv4hi;
  if (HAVE_vec_setv8qi)
    vec_set_optab->handlers[V8QImode].insn_code = CODE_FOR_vec_setv8qi;
  if (HAVE_vec_extractv8qi)
    vec_extract_optab->handlers[V8QImode].insn_code = CODE_FOR_vec_extractv8qi;
  if (HAVE_vec_initv8qi)
    vec_init_optab->handlers[V8QImode].insn_code = CODE_FOR_vec_initv8qi;
  if (HAVE_sync_compare_and_swapqi)
    sync_compare_and_swap[QImode] = CODE_FOR_sync_compare_and_swapqi;
  if (HAVE_sync_compare_and_swaphi)
    sync_compare_and_swap[HImode] = CODE_FOR_sync_compare_and_swaphi;
  if (HAVE_sync_compare_and_swapsi)
    sync_compare_and_swap[SImode] = CODE_FOR_sync_compare_and_swapsi;
  if (HAVE_sync_compare_and_swapdi)
    sync_compare_and_swap[DImode] = CODE_FOR_sync_compare_and_swapdi;
  if (HAVE_sync_compare_and_swapti)
    sync_compare_and_swap[TImode] = CODE_FOR_sync_compare_and_swapti;
  if (HAVE_sync_compare_and_swap_ccqi)
    sync_compare_and_swap_cc[QImode] = CODE_FOR_sync_compare_and_swap_ccqi;
  if (HAVE_sync_compare_and_swap_cchi)
    sync_compare_and_swap_cc[HImode] = CODE_FOR_sync_compare_and_swap_cchi;
  if (HAVE_sync_compare_and_swap_ccsi)
    sync_compare_and_swap_cc[SImode] = CODE_FOR_sync_compare_and_swap_ccsi;
  if (HAVE_sync_compare_and_swap_ccdi)
    sync_compare_and_swap_cc[DImode] = CODE_FOR_sync_compare_and_swap_ccdi;
  if (HAVE_sync_compare_and_swap_ccti)
    sync_compare_and_swap_cc[TImode] = CODE_FOR_sync_compare_and_swap_ccti;

#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC
  /* This flag says the same insns that convert to a signed fixnum
     also convert validly to an unsigned one.  */
  for (i = 0; i < NUM_MACHINE_MODES; i++)
    for (j = 0; j < NUM_MACHINE_MODES; j++)
      ufixtrunc_optab->handlers[i][j].insn_code
      = sfixtrunc_optab->handlers[i][j].insn_code;
#endif
}
