#include "topcode.h"
#include "targ_isa_subset.h"

static const char* const isa_subset_names[] = {
  "intel1",  "UNDEFINED"
};
ISA_SUBSET ISA_SUBSET_Value = ISA_SUBSET_UNDEFINED;

const char* ISA_SUBSET_Name( ISA_SUBSET subset ) {
  return isa_subset_names[(INT)subset];
}
static const char isa_subset_opcode_table[2][95] = {
  { /* intel1 */
    0377, /* add add_1 adds addl addp4 addp4_i alloc_3 and */
    0377, /* and_i andcm andcm_i br.cond br_r.cond br.call br_r.call br.ret */
    0377, /* br.ia br.cloop br.ctop br.cexit br.wtop br.wexit break.i break.b */
    0377, /* break.m break.f break.x brl.cond brl.call brp brp_r brp.ret */
    0377, /* bsw.0 bsw.1 chk.s.i chk.s.m chk_f.s chk.a chk_f.a clrrrb */
    0377, /* clrrrb.pr cmp.eq cmp.eq.unc cmp.eq.and cmp.eq.or cmp.eq.or.andcm cmp.ne.and cmp.ne.or */
    0377, /* cmp.ne.or.andcm cmp.lt cmp.lt.unc cmp.ltu cmp.ltu.unc cmp_z1.lt.and cmp_z1.lt.or cmp_z1.lt.or.andcm */
    0377, /* cmp_z1.le.and cmp_z1.le.or cmp_z1.le.or.andcm cmp_z1.gt.and cmp_z1.gt.or cmp_z1.gt.or.andcm cmp_z1.ge.and cmp_z1.ge.or */
    0377, /* cmp_z1.ge.or.andcm cmp_i.eq cmp_i.eq.unc cmp_i.eq.and cmp_i.eq.or cmp_i.eq.or.andcm cmp_i.ne.and cmp_i.ne.or */
    0377, /* cmp_i.ne.or.andcm cmp_i.lt cmp_i.lt.unc cmp_i.ltu cmp_i.ltu.unc cmp4.eq cmp4.eq.unc cmp4.eq.and */
    0377, /* cmp4.eq.or cmp4.eq.or.andcm cmp4.ne.and cmp4.ne.or cmp4.ne.or.andcm cmp4.lt cmp4.lt.unc cmp4.ltu */
    0377, /* cmp4.ltu.unc cmp4_z1.lt.and cmp4_z1.lt.or cmp4_z1.lt.or.andcm cmp4_z1.le.and cmp4_z1.le.or cmp4_z1.le.or.andcm cmp4_z1.gt.and */
    0377, /* cmp4_z1.gt.or cmp4_z1.gt.or.andcm cmp4_z1.ge.and cmp4_z1.ge.or cmp4_z1.ge.or.andcm cmp4_i.eq cmp4_i.eq.unc cmp4_i.eq.and */
    0377, /* cmp4_i.eq.or cmp4_i.eq.or.andcm cmp4_i.ne.and cmp4_i.ne.or cmp4_i.ne.or.andcm cmp4_i.lt cmp4_i.lt.unc cmp4_i.ltu */
    0377, /* cmp4_i.ltu.unc cmpxchg1 cmpxchg2 cmpxchg4 cmpxchg8 cover czx1.l czx1.r */
    0377, /* czx2.l czx2.r dep dep.z dep_i dep_i.z epc extr */
    0377, /* extr.u famax famin fand fandcm fc fchkf fclass.m */
    0377, /* fclass.m.unc fclrf fcmp.eq fcmp.eq.unc fcmp.lt fcmp.lt.unc fcmp.le fcmp.le.unc */
    0377, /* fcmp.unord fcmp.unord.unc fcvt.fx fcvt.fx.trunc fcvt.fxu fcvt.fxu.trunc fcvt.xf fetchadd4 */
    0377, /* fetchadd8 flushrs fma fma.s fma.d fmax fmerge.ns fmerge.s */
    0377, /* fmerge.se fmin fmix.l fmix.r fmix.lr fms fms.s fms.d */
    0377, /* fnma fnma.s fnma.d for fpack fpamax fpamin fpcmp.eq */
    0377, /* fpcmp.lt fpcmp.le fpcmp.unord fpcmp.neq fpcmp.nlt fpcmp.nle fpcmp.ord fpcvt.fx */
    0377, /* fpcvt.fx.trunc fpcvt.fxu fpcvt.fxu.trunc fpma fpmax fpmerge.ns fpmerge.s fpmerge.se */
    0377, /* fpmin fpms fpnma fprcpa fprsqrta frcpa frsqrta fselect */
    0377, /* fsetc fswap fswap.nl fswap.nr fsxt.l fsxt.r fwb fxor */
    0377, /* getf.s getf.d getf.exp getf.sig invala invala.e invala_f.e itc.i */
    0377, /* itc.d itr.i itr.d ld1 ld1_r ld1_i ld2 ld2_r */
    0377, /* ld2_i ld4 ld4_r ld4_i ld8 ld8_r ld8_i ld8.fill */
    0377, /* ld8_r.fill ld8_i.fill ldfs ldfs_r ldfs_i ldfd ldfd_r ldfd_i */
    0377, /* ldfe ldfe_r ldfe_i ldf8 ldf8_r ldf8_i ldf.fill ldf_r.fill */
    0377, /* ldf_i.fill ldfps ldfps_i ldfpd ldfpd_i ldfp8 ldfp8_i lfetch */
    0377, /* lfetch.excl lfetch.fault lfetch.fault.excl lfetch_r lfetch_r.excl lfetch_r.fault lfetch_r.fault.excl lfetch_i */
    0377, /* lfetch_i.excl lfetch_i.fault lfetch_i.fault.excl loadrs mf mf.a mix1.l mix1.r */
    0377, /* mix2.l mix2.r mix4.l mix4.r mov_f_ar.i mov_t_ar_r.i mov_t_ar_i.i mov_f_ar.m */
    0377, /* mov_t_ar_r.m mov_t_ar_i.m mov_f_br mov_t_br_i mov_t_br.ret mov_t_cr mov_f_cr mov_f_cpuid */
    0377, /* mov_t_dbr mov_f_dbr mov_t_ibr mov_f_ibr mov_t_msr mov_f_msr mov_t_pkr mov_f_pkr */
    0377, /* mov_t_pmc mov_f_pmc mov_t_pmd mov_f_pmd mov_t_rr mov_f_rr mov_f_ip mov_f_pr */
    0377, /* mov_t_pr mov_t_pr_i mov_t_psr mov_f_psr mov_t_psrum mov_f_psrum movl mux1 */
    0377, /* mux2 nop.i nop.b nop.m nop.f nop.x or or_i */
    0377, /* pack2.sss pack2.uss pack4.sss padd1 padd1.sss padd1.uus padd1.uuu padd2 */
    0377, /* padd2.sss padd2.uus padd2.uuu padd4 pavg1 pavg1.raz pavg2 pavg2.raz */
    0377, /* pavgsub1 pavgsub2 pcmp1.eq pcmp1.gt pcmp2.eq pcmp2.gt pcmp4.eq pcmp4.gt */
    0377, /* pmax1.u pmax2 pmin1.u pmin2 pmpy2.r pmpy2.l pmpyshr2 pmpyshr2.u */
    0377, /* popcnt probe.r probe.w probe_i.r probe_i.w probe.r.fault probe.w.fault probe.rw.fault */
    0377, /* psad1 pshl2 pshl4 pshl2_i pshl4_i pshladd2 pshr2 pshr2.u */
    0377, /* pshr4 pshr4.u pshr2_i pshr2_i.u pshr4_i pshr4_i.u pshradd2 psub1 */
    0377, /* psub2 psub4 psub1.sss psub1.uus psub1.uuu psub2.sss psub2.uus psub2.uuu */
    0377, /* ptc.e ptc.g ptc.ga ptc.l ptr.d ptr.i rfi rsm */
    0377, /* rum setf.s setf.d setf.exp setf.sig shl shladd shladdp4 */
    0377, /* shr shr.u shrp srlz.i srlz.d ssm st1 st1_i */
    0377, /* st2 st2_i st4 st4_i st8 st8_i st8.spill st8_i.spill */
    0377, /* stfs stfs_i stfd stfd_i stfe stfe_i stf8 stf8_i */
    0377, /* stf.spill stf_i.spill sub sub_1 sub_i sum sxt1 sxt2 */
    0377, /* sxt4 sync.i tak tbit.z tbit.z.unc tbit.z.and tbit.z.or tbit.z.or.andcm */
    0377, /* tbit.nz.and tbit.nz.or tbit.nz.or.andcm thash tnat.z tnat.z.unc tnat.z.and tnat.z.or */
    0377, /* tnat.z.or.andcm tnat.nz.and tnat.nz.or tnat.nz.or.andcm tpa ttag unpack1.l unpack1.h */
    0377, /* unpack2.l unpack2.h unpack4.l unpack4.h xchg1 xchg2 xchg4 xchg8 */
    0377, /* xma.l xma.h xma.hu xor xor_i zxt1 zxt2 zxt4 */
    0377, /* alloc br br_r brl cmp.eq.orcm cmp.eq.andcm cmp.eq.and.orcm cmp.ne */
    0377, /* cmp.ne.unc cmp.ne.orcm cmp.ne.andcm cmp.ne.and.orcm cmp.le cmp.le.unc cmp.gt cmp.gt.unc */
    0377, /* cmp.ge cmp.ge.unc cmp.leu cmp.leu.unc cmp.gtu cmp.gtu.unc cmp.geu cmp.geu.unc */
    0377, /* cmp_z1.lt.orcm cmp_z1.lt.andcm cmp_z1.lt.and.orcm cmp_z1.le.orcm cmp_z1.le.andcm cmp_z1.le.and.orcm cmp_z1.gt.orcm cmp_z1.gt.andcm */
    0377, /* cmp_z1.gt.and.orcm cmp_z1.ge.orcm cmp_z1.ge.andcm cmp_z1.ge.and.orcm cmp_z2.lt.orcm cmp_z2.lt.andcm cmp_z2.lt.and.orcm cmp_z2.le.orcm */
    0377, /* cmp_z2.le.andcm cmp_z2.le.and.orcm cmp_z2.gt.orcm cmp_z2.gt.andcm cmp_z2.gt.and.orcm cmp_z2.ge.orcm cmp_z2.ge.andcm cmp_z2.ge.and.orcm */
    0377, /* cmp_z2.lt.and cmp_z2.lt.or cmp_z2.lt.or.andcm cmp_z2.le.and cmp_z2.le.or cmp_z2.le.or.andcm cmp_z2.gt.and cmp_z2.gt.or */
    0377, /* cmp_z2.gt.or.andcm cmp_z2.ge.and cmp_z2.ge.or cmp_z2.ge.or.andcm cmp_i.eq.orcm cmp_i.eq.andcm cmp_i.eq.and.orcm cmp_i.ne */
    0377, /* cmp_i.ne.unc cmp_i.ne.orcm cmp_i.ne.andcm cmp_i.ne.and.orcm cmp_i.le cmp_i.le.unc cmp_i.gt cmp_i.gt.unc */
    0377, /* cmp_i.ge cmp_i.ge.unc cmp_i.leu cmp_i.leu.unc cmp_i.gtu cmp_i.gtu.unc cmp_i.geu cmp_i.geu.unc */
    0377, /* cmp4.eq.orcm cmp4.eq.andcm cmp4.eq.and.orcm cmp4.ne cmp4.ne.unc cmp4.ne.orcm cmp4.ne.andcm cmp4.ne.and.orcm */
    0377, /* cmp4.le cmp4.le.unc cmp4.gt cmp4.gt.unc cmp4.ge cmp4.ge.unc cmp4.leu cmp4.leu.unc */
    0377, /* cmp4.gtu cmp4.gtu.unc cmp4.geu cmp4.geu.unc cmp4_z1.lt.orcm cmp4_z1.lt.andcm cmp4_z1.lt.and.orcm cmp4_z1.le.orcm */
    0377, /* cmp4_z1.le.andcm cmp4_z1.le.and.orcm cmp4_z1.gt.orcm cmp4_z1.gt.andcm cmp4_z1.gt.and.orcm cmp4_z1.ge.orcm cmp4_z1.ge.andcm cmp4_z1.ge.and.orcm */
    0377, /* cmp4_z2.lt.orcm cmp4_z2.lt.andcm cmp4_z2.lt.and.orcm cmp4_z2.le.orcm cmp4_z2.le.andcm cmp4_z2.le.and.orcm cmp4_z2.gt.orcm cmp4_z2.gt.andcm */
    0377, /* cmp4_z2.gt.and.orcm cmp4_z2.ge.orcm cmp4_z2.ge.andcm cmp4_z2.ge.and.orcm cmp4_z2.lt.and cmp4_z2.lt.or cmp4_z2.lt.or.andcm cmp4_z2.le.and */
    0377, /* cmp4_z2.le.or cmp4_z2.le.or.andcm cmp4_z2.gt.and cmp4_z2.gt.or cmp4_z2.gt.or.andcm cmp4_z2.ge.and cmp4_z2.ge.or cmp4_z2.ge.or.andcm */
    0377, /* cmp4_i.eq.orcm cmp4_i.eq.andcm cmp4_i.eq.and.orcm cmp4_i.ne cmp4_i.ne.unc cmp4_i.ne.orcm cmp4_i.ne.andcm cmp4_i.ne.and.orcm */
    0377, /* cmp4_i.le cmp4_i.le.unc cmp4_i.gt cmp4_i.gt.unc cmp4_i.ge cmp4_i.ge.unc cmp4_i.leu cmp4_i.leu.unc */
    0377, /* cmp4_i.gtu cmp4_i.gtu.unc cmp4_i.geu cmp4_i.geu.unc fabs fadd fadd.s fadd.d */
    0377, /* fclass.nm fclass.nm.unc fcmp.gt fcmp.gt.unc fcmp.ge fcmp.ge.unc fcmp.neq fcmp.neq.unc */
    0377, /* fcmp.nlt fcmp.nlt.unc fcmp.nle fcmp.nle.unc fcmp.ngt fcmp.ngt.unc fcmp.nge fcmp.nge.unc */
    0377, /* fcmp.ord fcmp.ord.unc fcvt.xuf fcvt.xuf.s fcvt.xuf.d fmpy fmpy.s fmpy.d */
    0377, /* fneg fnegabs fnmpy fnmpy.s fnmpy.d fnorm fnorm.s fnorm.d */
    0377, /* fpabs fpcmp.gt fpcmp.ge fpcmp.ngt fpcmp.nge fpmpy fpneg fpnegabs */
    0377, /* fpnmpy fsub fsub.s fsub.d mov_t_br mov_f mov mov_i */
    0377, /* shl_i shr_i shr_i.u tbit.nz tbit.nz.unc tnat.nz tnat.nz.unc xma.lu */
    0377, /* xmpy.l xmpy.lu xmpy.h xmpy.hu break chk.s cmp.lt.and cmp.lt.or */
    0377, /* cmp.lt.or.andcm cmp.le.and cmp.le.or cmp.le.or.andcm cmp.gt.and cmp.gt.or cmp.gt.or.andcm cmp.ge.and */
    0377, /* cmp.ge.or cmp.ge.or.andcm cmp.lt.orcm cmp.lt.andcm cmp.lt.and.orcm cmp.le.orcm cmp.le.andcm cmp.le.and.orcm */
    0377, /* cmp.gt.orcm cmp.gt.andcm cmp.gt.and.orcm cmp.ge.orcm cmp.ge.andcm cmp.ge.and.orcm cmp4.lt.and cmp4.lt.or */
    0377, /* cmp4.lt.or.andcm cmp4.le.and cmp4.le.or cmp4.le.or.andcm cmp4.gt.and cmp4.gt.or cmp4.gt.or.andcm cmp4.ge.and */
    0377, /* cmp4.ge.or cmp4.ge.or.andcm cmp4.lt.orcm cmp4.lt.andcm cmp4.lt.and.orcm cmp4.le.orcm cmp4.le.andcm cmp4.le.and.orcm */
    0377, /* cmp4.gt.orcm cmp4.gt.andcm cmp4.gt.and.orcm cmp4.ge.orcm cmp4.ge.andcm cmp4.ge.and.orcm mov_f_ar mov_t_ar_r */
    0377, /* mov_t_ar_i nop asm intrncall spadjust copy.br begin.pregtn end.pregtn */
    0177, /* bwd.bar fwd.bar dfixup ffixup ifixup label noop */
  },
  { /* UNDEFINED */
    0
  }
};
int ISA_SUBSET_Member( ISA_SUBSET subset, TOP opcode )
{
  INT byte_index = ((UINT) opcode) / 8;
  INT bit_index = ((UINT) opcode) % 8;
  INT byte = isa_subset_opcode_table[(int) subset][byte_index];
  return (byte >> bit_index) & 1;
}
