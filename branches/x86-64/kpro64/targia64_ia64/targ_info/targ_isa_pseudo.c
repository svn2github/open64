#include "topcode.h"
#include "targ_isa_pseudo.h"

typedef struct {
  mTOP to_opc;
  mTOP from_opc;
  mUINT8 require[4];
  mUINT8 map[4][2];
} PSEUDO;

static const PSEUDO pseudos[42] = {

  /* pseudo => machine */

  /*  0: alloc => alloc_3 */
  {   6, 472, { 0, 0, 0, 0, }, { {1, 6}, {4, 7}, {2, 4}, {0, 0}, } },
  /*  1: shl_i => dep.z */
  { 123, 680, { 0, 0, 0, 0, }, { {3, 8}, {0, 0}, {0, 0}, {0, 0}, } },
  /*  2: shr_i => extr */
  { 127, 681, { 0, 0, 0, 0, }, { {3, 8}, {0, 0}, {0, 0}, {0, 0}, } },
  /*  3: shr_i.u => extr.u */
  { 128, 682, { 0, 0, 0, 0, }, { {3, 8}, {0, 0}, {0, 0}, {0, 0}, } },

  /* machine => pseudo */

  /*  4: adds => mov */
  { 678,   2, { 2, 0, 0, 0, }, { {4, 3}, {0, 0}, {0, 0}, {0, 0}, } },
  /*  5: addl => mov_i */
  { 679,   3, { 7, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /*  6: alloc_3 => alloc */
  { 472,   6, { 0, 0, 0, 0, }, { {1, 1}, {2, 2}, {3, 3}, {0, 0}, } },
  /*  7: br.cond => br */
  { 473,  11, { 1, 2, 0, 0, }, { {1, 3}, {4, 4}, {2, 5}, {0, 0}, } },
  /*  8: br_r.cond => br_r */
  { 474,  12, { 1, 2, 0, 0, }, { {1, 3}, {4, 4}, {2, 5}, {0, 0}, } },
  /*  9: brl.cond => brl */
  { 475,  27, { 1, 2, 0, 0, }, { {1, 3}, {4, 4}, {2, 5}, {0, 0}, } },
  /* 10: dep.z => shl_i */
  { 680, 123, { 8, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 11: extr => shr_i */
  { 681, 127, { 8, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 12: extr.u => shr_i.u */
  { 682, 128, { 8, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 13: fma => fnorm */
  { 661, 154, { 3, 4, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 14: fma => fadd */
  { 629, 154, { 3, 0, 0, 0, }, { {3, 5}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 15: fma => fmpy */
  { 653, 154, { 4, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 16: fma.s => fnorm.s */
  { 662, 155, { 3, 4, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 17: fma.s => fadd.s */
  { 630, 155, { 3, 0, 0, 0, }, { {3, 5}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 18: fma.s => fmpy.s */
  { 654, 155, { 4, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 19: fma.d => fnorm.d */
  { 663, 156, { 3, 4, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 20: fma.d => fadd.d */
  { 631, 156, { 3, 0, 0, 0, }, { {3, 5}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 21: fma.d => fmpy.d */
  { 655, 156, { 4, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 22: fmerge.ns => fneg */
  { 656, 158, { 5, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 23: fmerge.ns => fnegabs */
  { 657, 158, { 2, 0, 0, 0, }, { {4, 3}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 24: fmerge.s => fabs */
  { 628, 159, { 2, 0, 0, 0, }, { {4, 3}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 25: fmerge.s => mov_f */
  { 677, 159, { 5, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 26: fms => fsub */
  { 673, 165, { 3, 0, 0, 0, }, { {3, 5}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 27: fms.s => fsub.s */
  { 674, 166, { 3, 0, 0, 0, }, { {3, 5}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 28: fms.d => fsub.d */
  { 675, 167, { 3, 0, 0, 0, }, { {3, 5}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 29: fnma => fnmpy */
  { 658, 168, { 4, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 30: fnma.s => fnmpy.s */
  { 659, 169, { 4, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 31: fnma.d => fnmpy.d */
  { 660, 170, { 4, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 32: fpma => fpmpy */
  { 669, 187, { 4, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 33: fpmerge.ns => fpneg */
  { 670, 189, { 5, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 34: fpmerge.ns => fpnegabs */
  { 671, 189, { 2, 0, 0, 0, }, { {4, 3}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 35: fpmerge.s => fpabs */
  { 664, 190, { 2, 0, 0, 0, }, { {4, 3}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 36: fpnma => fpnmpy */
  { 672, 194, { 4, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 37: mov_t_br_i => mov_t_br */
  { 676, 283, { 6, 7, 4, 0, }, { {4, 4}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 38: xma.l => xmpy.l */
  { 688, 464, { 9, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 39: xma.h => xmpy.h */
  { 690, 465, { 9, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 40: xma.hu => xmpy.hu */
  { 691, 466, { 9, 0, 0, 0, }, { {0, 0}, {0, 0}, {0, 0}, {0, 0}, } },
  /* 41: TOP_UNDEFINED => TOP_UNDEFINED */
  { 759, 759, { 0 }, { {0, 0} }}
};

static const mUINT8 pseudo_index[759][2] = {
  { 41, 41 }, /* add       */
  { 41, 41 }, /* add_1     */
  {  4, 41 }, /* adds      */
  {  5, 41 }, /* addl      */
  { 41, 41 }, /* addp4     */
  { 41, 41 }, /* addp4_i   */
  {  6, 41 }, /* alloc_3   */
  { 41, 41 }, /* and       */
  { 41, 41 }, /* and_i     */
  { 41, 41 }, /* andcm     */
  { 41, 41 }, /* andcm_i   */
  {  7, 41 }, /* br.cond   */
  {  8, 41 }, /* br_r.cond */
  { 41, 41 }, /* br.call   */
  { 41, 41 }, /* br_r.call */
  { 41, 41 }, /* br.ret    */
  { 41, 41 }, /* br.ia     */
  { 41, 41 }, /* br.cloop  */
  { 41, 41 }, /* br.ctop   */
  { 41, 41 }, /* br.cexit  */
  { 41, 41 }, /* br.wtop   */
  { 41, 41 }, /* br.wexit  */
  { 41, 41 }, /* break.i   */
  { 41, 41 }, /* break.b   */
  { 41, 41 }, /* break.m   */
  { 41, 41 }, /* break.f   */
  { 41, 41 }, /* break.x   */
  {  9, 41 }, /* brl.cond  */
  { 41, 41 }, /* brl.call  */
  { 41, 41 }, /* brp       */
  { 41, 41 }, /* brp_r     */
  { 41, 41 }, /* brp.ret   */
  { 41, 41 }, /* bsw.0     */
  { 41, 41 }, /* bsw.1     */
  { 41, 41 }, /* chk.s.i   */
  { 41, 41 }, /* chk.s.m   */
  { 41, 41 }, /* chk_f.s   */
  { 41, 41 }, /* chk.a     */
  { 41, 41 }, /* chk_f.a   */
  { 41, 41 }, /* clrrrb    */
  { 41, 41 }, /* clrrrb.pr */
  { 41, 41 }, /* cmp.eq    */
  { 41, 41 }, /* cmp.eq.unc */
  { 41, 41 }, /* cmp.eq.and */
  { 41, 41 }, /* cmp.eq.or */
  { 41, 41 }, /* cmp.eq.or.andcm */
  { 41, 41 }, /* cmp.ne.and */
  { 41, 41 }, /* cmp.ne.or */
  { 41, 41 }, /* cmp.ne.or.andcm */
  { 41, 41 }, /* cmp.lt    */
  { 41, 41 }, /* cmp.lt.unc */
  { 41, 41 }, /* cmp.ltu   */
  { 41, 41 }, /* cmp.ltu.unc */
  { 41, 41 }, /* cmp_z1.lt.and */
  { 41, 41 }, /* cmp_z1.lt.or */
  { 41, 41 }, /* cmp_z1.lt.or.andcm */
  { 41, 41 }, /* cmp_z1.le.and */
  { 41, 41 }, /* cmp_z1.le.or */
  { 41, 41 }, /* cmp_z1.le.or.andcm */
  { 41, 41 }, /* cmp_z1.gt.and */
  { 41, 41 }, /* cmp_z1.gt.or */
  { 41, 41 }, /* cmp_z1.gt.or.andcm */
  { 41, 41 }, /* cmp_z1.ge.and */
  { 41, 41 }, /* cmp_z1.ge.or */
  { 41, 41 }, /* cmp_z1.ge.or.andcm */
  { 41, 41 }, /* cmp_i.eq  */
  { 41, 41 }, /* cmp_i.eq.unc */
  { 41, 41 }, /* cmp_i.eq.and */
  { 41, 41 }, /* cmp_i.eq.or */
  { 41, 41 }, /* cmp_i.eq.or.andcm */
  { 41, 41 }, /* cmp_i.ne.and */
  { 41, 41 }, /* cmp_i.ne.or */
  { 41, 41 }, /* cmp_i.ne.or.andcm */
  { 41, 41 }, /* cmp_i.lt  */
  { 41, 41 }, /* cmp_i.lt.unc */
  { 41, 41 }, /* cmp_i.ltu */
  { 41, 41 }, /* cmp_i.ltu.unc */
  { 41, 41 }, /* cmp4.eq   */
  { 41, 41 }, /* cmp4.eq.unc */
  { 41, 41 }, /* cmp4.eq.and */
  { 41, 41 }, /* cmp4.eq.or */
  { 41, 41 }, /* cmp4.eq.or.andcm */
  { 41, 41 }, /* cmp4.ne.and */
  { 41, 41 }, /* cmp4.ne.or */
  { 41, 41 }, /* cmp4.ne.or.andcm */
  { 41, 41 }, /* cmp4.lt   */
  { 41, 41 }, /* cmp4.lt.unc */
  { 41, 41 }, /* cmp4.ltu  */
  { 41, 41 }, /* cmp4.ltu.unc */
  { 41, 41 }, /* cmp4_z1.lt.and */
  { 41, 41 }, /* cmp4_z1.lt.or */
  { 41, 41 }, /* cmp4_z1.lt.or.andcm */
  { 41, 41 }, /* cmp4_z1.le.and */
  { 41, 41 }, /* cmp4_z1.le.or */
  { 41, 41 }, /* cmp4_z1.le.or.andcm */
  { 41, 41 }, /* cmp4_z1.gt.and */
  { 41, 41 }, /* cmp4_z1.gt.or */
  { 41, 41 }, /* cmp4_z1.gt.or.andcm */
  { 41, 41 }, /* cmp4_z1.ge.and */
  { 41, 41 }, /* cmp4_z1.ge.or */
  { 41, 41 }, /* cmp4_z1.ge.or.andcm */
  { 41, 41 }, /* cmp4_i.eq */
  { 41, 41 }, /* cmp4_i.eq.unc */
  { 41, 41 }, /* cmp4_i.eq.and */
  { 41, 41 }, /* cmp4_i.eq.or */
  { 41, 41 }, /* cmp4_i.eq.or.andcm */
  { 41, 41 }, /* cmp4_i.ne.and */
  { 41, 41 }, /* cmp4_i.ne.or */
  { 41, 41 }, /* cmp4_i.ne.or.andcm */
  { 41, 41 }, /* cmp4_i.lt */
  { 41, 41 }, /* cmp4_i.lt.unc */
  { 41, 41 }, /* cmp4_i.ltu */
  { 41, 41 }, /* cmp4_i.ltu.unc */
  { 41, 41 }, /* cmpxchg1  */
  { 41, 41 }, /* cmpxchg2  */
  { 41, 41 }, /* cmpxchg4  */
  { 41, 41 }, /* cmpxchg8  */
  { 41, 41 }, /* cover     */
  { 41, 41 }, /* czx1.l    */
  { 41, 41 }, /* czx1.r    */
  { 41, 41 }, /* czx2.l    */
  { 41, 41 }, /* czx2.r    */
  { 41, 41 }, /* dep       */
  { 10, 41 }, /* dep.z     */
  { 41, 41 }, /* dep_i     */
  { 41, 41 }, /* dep_i.z   */
  { 41, 41 }, /* epc       */
  { 11, 41 }, /* extr      */
  { 12, 41 }, /* extr.u    */
  { 41, 41 }, /* famax     */
  { 41, 41 }, /* famin     */
  { 41, 41 }, /* fand      */
  { 41, 41 }, /* fandcm    */
  { 41, 41 }, /* fc        */
  { 41, 41 }, /* fchkf     */
  { 41, 41 }, /* fclass.m  */
  { 41, 41 }, /* fclass.m.unc */
  { 41, 41 }, /* fclrf     */
  { 41, 41 }, /* fcmp.eq   */
  { 41, 41 }, /* fcmp.eq.unc */
  { 41, 41 }, /* fcmp.lt   */
  { 41, 41 }, /* fcmp.lt.unc */
  { 41, 41 }, /* fcmp.le   */
  { 41, 41 }, /* fcmp.le.unc */
  { 41, 41 }, /* fcmp.unord */
  { 41, 41 }, /* fcmp.unord.unc */
  { 41, 41 }, /* fcvt.fx   */
  { 41, 41 }, /* fcvt.fx.trunc */
  { 41, 41 }, /* fcvt.fxu  */
  { 41, 41 }, /* fcvt.fxu.trunc */
  { 41, 41 }, /* fcvt.xf   */
  { 41, 41 }, /* fetchadd4 */
  { 41, 41 }, /* fetchadd8 */
  { 41, 41 }, /* flushrs   */
  { 13, 41 }, /* fma       */
  { 16, 41 }, /* fma.s     */
  { 19, 41 }, /* fma.d     */
  { 41, 41 }, /* fmax      */
  { 22, 41 }, /* fmerge.ns */
  { 24, 41 }, /* fmerge.s  */
  { 41, 41 }, /* fmerge.se */
  { 41, 41 }, /* fmin      */
  { 41, 41 }, /* fmix.l    */
  { 41, 41 }, /* fmix.r    */
  { 41, 41 }, /* fmix.lr   */
  { 26, 41 }, /* fms       */
  { 27, 41 }, /* fms.s     */
  { 28, 41 }, /* fms.d     */
  { 29, 41 }, /* fnma      */
  { 30, 41 }, /* fnma.s    */
  { 31, 41 }, /* fnma.d    */
  { 41, 41 }, /* for       */
  { 41, 41 }, /* fpack     */
  { 41, 41 }, /* fpamax    */
  { 41, 41 }, /* fpamin    */
  { 41, 41 }, /* fpcmp.eq  */
  { 41, 41 }, /* fpcmp.lt  */
  { 41, 41 }, /* fpcmp.le  */
  { 41, 41 }, /* fpcmp.unord */
  { 41, 41 }, /* fpcmp.neq */
  { 41, 41 }, /* fpcmp.nlt */
  { 41, 41 }, /* fpcmp.nle */
  { 41, 41 }, /* fpcmp.ord */
  { 41, 41 }, /* fpcvt.fx  */
  { 41, 41 }, /* fpcvt.fx.trunc */
  { 41, 41 }, /* fpcvt.fxu */
  { 41, 41 }, /* fpcvt.fxu.trunc */
  { 32, 41 }, /* fpma      */
  { 41, 41 }, /* fpmax     */
  { 33, 41 }, /* fpmerge.ns */
  { 35, 41 }, /* fpmerge.s */
  { 41, 41 }, /* fpmerge.se */
  { 41, 41 }, /* fpmin     */
  { 41, 41 }, /* fpms      */
  { 36, 41 }, /* fpnma     */
  { 41, 41 }, /* fprcpa    */
  { 41, 41 }, /* fprsqrta  */
  { 41, 41 }, /* frcpa     */
  { 41, 41 }, /* frsqrta   */
  { 41, 41 }, /* fselect   */
  { 41, 41 }, /* fsetc     */
  { 41, 41 }, /* fswap     */
  { 41, 41 }, /* fswap.nl  */
  { 41, 41 }, /* fswap.nr  */
  { 41, 41 }, /* fsxt.l    */
  { 41, 41 }, /* fsxt.r    */
  { 41, 41 }, /* fwb       */
  { 41, 41 }, /* fxor      */
  { 41, 41 }, /* getf.s    */
  { 41, 41 }, /* getf.d    */
  { 41, 41 }, /* getf.exp  */
  { 41, 41 }, /* getf.sig  */
  { 41, 41 }, /* invala    */
  { 41, 41 }, /* invala.e  */
  { 41, 41 }, /* invala_f.e */
  { 41, 41 }, /* itc.i     */
  { 41, 41 }, /* itc.d     */
  { 41, 41 }, /* itr.i     */
  { 41, 41 }, /* itr.d     */
  { 41, 41 }, /* ld1       */
  { 41, 41 }, /* ld1_r     */
  { 41, 41 }, /* ld1_i     */
  { 41, 41 }, /* ld2       */
  { 41, 41 }, /* ld2_r     */
  { 41, 41 }, /* ld2_i     */
  { 41, 41 }, /* ld4       */
  { 41, 41 }, /* ld4_r     */
  { 41, 41 }, /* ld4_i     */
  { 41, 41 }, /* ld8       */
  { 41, 41 }, /* ld8_r     */
  { 41, 41 }, /* ld8_i     */
  { 41, 41 }, /* ld8.fill  */
  { 41, 41 }, /* ld8_r.fill */
  { 41, 41 }, /* ld8_i.fill */
  { 41, 41 }, /* ldfs      */
  { 41, 41 }, /* ldfs_r    */
  { 41, 41 }, /* ldfs_i    */
  { 41, 41 }, /* ldfd      */
  { 41, 41 }, /* ldfd_r    */
  { 41, 41 }, /* ldfd_i    */
  { 41, 41 }, /* ldfe      */
  { 41, 41 }, /* ldfe_r    */
  { 41, 41 }, /* ldfe_i    */
  { 41, 41 }, /* ldf8      */
  { 41, 41 }, /* ldf8_r    */
  { 41, 41 }, /* ldf8_i    */
  { 41, 41 }, /* ldf.fill  */
  { 41, 41 }, /* ldf_r.fill */
  { 41, 41 }, /* ldf_i.fill */
  { 41, 41 }, /* ldfps     */
  { 41, 41 }, /* ldfps_i   */
  { 41, 41 }, /* ldfpd     */
  { 41, 41 }, /* ldfpd_i   */
  { 41, 41 }, /* ldfp8     */
  { 41, 41 }, /* ldfp8_i   */
  { 41, 41 }, /* lfetch    */
  { 41, 41 }, /* lfetch.excl */
  { 41, 41 }, /* lfetch.fault */
  { 41, 41 }, /* lfetch.fault.excl */
  { 41, 41 }, /* lfetch_r  */
  { 41, 41 }, /* lfetch_r.excl */
  { 41, 41 }, /* lfetch_r.fault */
  { 41, 41 }, /* lfetch_r.fault.excl */
  { 41, 41 }, /* lfetch_i  */
  { 41, 41 }, /* lfetch_i.excl */
  { 41, 41 }, /* lfetch_i.fault */
  { 41, 41 }, /* lfetch_i.fault.excl */
  { 41, 41 }, /* loadrs    */
  { 41, 41 }, /* mf        */
  { 41, 41 }, /* mf.a      */
  { 41, 41 }, /* mix1.l    */
  { 41, 41 }, /* mix1.r    */
  { 41, 41 }, /* mix2.l    */
  { 41, 41 }, /* mix2.r    */
  { 41, 41 }, /* mix4.l    */
  { 41, 41 }, /* mix4.r    */
  { 41, 41 }, /* mov_f_ar.i */
  { 41, 41 }, /* mov_t_ar_r.i */
  { 41, 41 }, /* mov_t_ar_i.i */
  { 41, 41 }, /* mov_f_ar.m */
  { 41, 41 }, /* mov_t_ar_r.m */
  { 41, 41 }, /* mov_t_ar_i.m */
  { 41, 41 }, /* mov_f_br  */
  { 37, 41 }, /* mov_t_br_i */
  { 41, 41 }, /* mov_t_br.ret */
  { 41, 41 }, /* mov_t_cr  */
  { 41, 41 }, /* mov_f_cr  */
  { 41, 41 }, /* mov_f_cpuid */
  { 41, 41 }, /* mov_t_dbr */
  { 41, 41 }, /* mov_f_dbr */
  { 41, 41 }, /* mov_t_ibr */
  { 41, 41 }, /* mov_f_ibr */
  { 41, 41 }, /* mov_t_msr */
  { 41, 41 }, /* mov_f_msr */
  { 41, 41 }, /* mov_t_pkr */
  { 41, 41 }, /* mov_f_pkr */
  { 41, 41 }, /* mov_t_pmc */
  { 41, 41 }, /* mov_f_pmc */
  { 41, 41 }, /* mov_t_pmd */
  { 41, 41 }, /* mov_f_pmd */
  { 41, 41 }, /* mov_t_rr  */
  { 41, 41 }, /* mov_f_rr  */
  { 41, 41 }, /* mov_f_ip  */
  { 41, 41 }, /* mov_f_pr  */
  { 41, 41 }, /* mov_t_pr  */
  { 41, 41 }, /* mov_t_pr_i */
  { 41, 41 }, /* mov_t_psr */
  { 41, 41 }, /* mov_f_psr */
  { 41, 41 }, /* mov_t_psrum */
  { 41, 41 }, /* mov_f_psrum */
  { 41, 41 }, /* movl      */
  { 41, 41 }, /* mux1      */
  { 41, 41 }, /* mux2      */
  { 41, 41 }, /* nop.i     */
  { 41, 41 }, /* nop.b     */
  { 41, 41 }, /* nop.m     */
  { 41, 41 }, /* nop.f     */
  { 41, 41 }, /* nop.x     */
  { 41, 41 }, /* or        */
  { 41, 41 }, /* or_i      */
  { 41, 41 }, /* pack2.sss */
  { 41, 41 }, /* pack2.uss */
  { 41, 41 }, /* pack4.sss */
  { 41, 41 }, /* padd1     */
  { 41, 41 }, /* padd1.sss */
  { 41, 41 }, /* padd1.uus */
  { 41, 41 }, /* padd1.uuu */
  { 41, 41 }, /* padd2     */
  { 41, 41 }, /* padd2.sss */
  { 41, 41 }, /* padd2.uus */
  { 41, 41 }, /* padd2.uuu */
  { 41, 41 }, /* padd4     */
  { 41, 41 }, /* pavg1     */
  { 41, 41 }, /* pavg1.raz */
  { 41, 41 }, /* pavg2     */
  { 41, 41 }, /* pavg2.raz */
  { 41, 41 }, /* pavgsub1  */
  { 41, 41 }, /* pavgsub2  */
  { 41, 41 }, /* pcmp1.eq  */
  { 41, 41 }, /* pcmp1.gt  */
  { 41, 41 }, /* pcmp2.eq  */
  { 41, 41 }, /* pcmp2.gt  */
  { 41, 41 }, /* pcmp4.eq  */
  { 41, 41 }, /* pcmp4.gt  */
  { 41, 41 }, /* pmax1.u   */
  { 41, 41 }, /* pmax2     */
  { 41, 41 }, /* pmin1.u   */
  { 41, 41 }, /* pmin2     */
  { 41, 41 }, /* pmpy2.r   */
  { 41, 41 }, /* pmpy2.l   */
  { 41, 41 }, /* pmpyshr2  */
  { 41, 41 }, /* pmpyshr2.u */
  { 41, 41 }, /* popcnt    */
  { 41, 41 }, /* probe.r   */
  { 41, 41 }, /* probe.w   */
  { 41, 41 }, /* probe_i.r */
  { 41, 41 }, /* probe_i.w */
  { 41, 41 }, /* probe.r.fault */
  { 41, 41 }, /* probe.w.fault */
  { 41, 41 }, /* probe.rw.fault */
  { 41, 41 }, /* psad1     */
  { 41, 41 }, /* pshl2     */
  { 41, 41 }, /* pshl4     */
  { 41, 41 }, /* pshl2_i   */
  { 41, 41 }, /* pshl4_i   */
  { 41, 41 }, /* pshladd2  */
  { 41, 41 }, /* pshr2     */
  { 41, 41 }, /* pshr2.u   */
  { 41, 41 }, /* pshr4     */
  { 41, 41 }, /* pshr4.u   */
  { 41, 41 }, /* pshr2_i   */
  { 41, 41 }, /* pshr2_i.u */
  { 41, 41 }, /* pshr4_i   */
  { 41, 41 }, /* pshr4_i.u */
  { 41, 41 }, /* pshradd2  */
  { 41, 41 }, /* psub1     */
  { 41, 41 }, /* psub2     */
  { 41, 41 }, /* psub4     */
  { 41, 41 }, /* psub1.sss */
  { 41, 41 }, /* psub1.uus */
  { 41, 41 }, /* psub1.uuu */
  { 41, 41 }, /* psub2.sss */
  { 41, 41 }, /* psub2.uus */
  { 41, 41 }, /* psub2.uuu */
  { 41, 41 }, /* ptc.e     */
  { 41, 41 }, /* ptc.g     */
  { 41, 41 }, /* ptc.ga    */
  { 41, 41 }, /* ptc.l     */
  { 41, 41 }, /* ptr.d     */
  { 41, 41 }, /* ptr.i     */
  { 41, 41 }, /* rfi       */
  { 41, 41 }, /* rsm       */
  { 41, 41 }, /* rum       */
  { 41, 41 }, /* setf.s    */
  { 41, 41 }, /* setf.d    */
  { 41, 41 }, /* setf.exp  */
  { 41, 41 }, /* setf.sig  */
  { 41, 41 }, /* shl       */
  { 41, 41 }, /* shladd    */
  { 41, 41 }, /* shladdp4  */
  { 41, 41 }, /* shr       */
  { 41, 41 }, /* shr.u     */
  { 41, 41 }, /* shrp      */
  { 41, 41 }, /* srlz.i    */
  { 41, 41 }, /* srlz.d    */
  { 41, 41 }, /* ssm       */
  { 41, 41 }, /* st1       */
  { 41, 41 }, /* st1_i     */
  { 41, 41 }, /* st2       */
  { 41, 41 }, /* st2_i     */
  { 41, 41 }, /* st4       */
  { 41, 41 }, /* st4_i     */
  { 41, 41 }, /* st8       */
  { 41, 41 }, /* st8_i     */
  { 41, 41 }, /* st8.spill */
  { 41, 41 }, /* st8_i.spill */
  { 41, 41 }, /* stfs      */
  { 41, 41 }, /* stfs_i    */
  { 41, 41 }, /* stfd      */
  { 41, 41 }, /* stfd_i    */
  { 41, 41 }, /* stfe      */
  { 41, 41 }, /* stfe_i    */
  { 41, 41 }, /* stf8      */
  { 41, 41 }, /* stf8_i    */
  { 41, 41 }, /* stf.spill */
  { 41, 41 }, /* stf_i.spill */
  { 41, 41 }, /* sub       */
  { 41, 41 }, /* sub_1     */
  { 41, 41 }, /* sub_i     */
  { 41, 41 }, /* sum       */
  { 41, 41 }, /* sxt1      */
  { 41, 41 }, /* sxt2      */
  { 41, 41 }, /* sxt4      */
  { 41, 41 }, /* sync.i    */
  { 41, 41 }, /* tak       */
  { 41, 41 }, /* tbit.z    */
  { 41, 41 }, /* tbit.z.unc */
  { 41, 41 }, /* tbit.z.and */
  { 41, 41 }, /* tbit.z.or */
  { 41, 41 }, /* tbit.z.or.andcm */
  { 41, 41 }, /* tbit.nz.and */
  { 41, 41 }, /* tbit.nz.or */
  { 41, 41 }, /* tbit.nz.or.andcm */
  { 41, 41 }, /* thash     */
  { 41, 41 }, /* tnat.z    */
  { 41, 41 }, /* tnat.z.unc */
  { 41, 41 }, /* tnat.z.and */
  { 41, 41 }, /* tnat.z.or */
  { 41, 41 }, /* tnat.z.or.andcm */
  { 41, 41 }, /* tnat.nz.and */
  { 41, 41 }, /* tnat.nz.or */
  { 41, 41 }, /* tnat.nz.or.andcm */
  { 41, 41 }, /* tpa       */
  { 41, 41 }, /* ttag      */
  { 41, 41 }, /* unpack1.l */
  { 41, 41 }, /* unpack1.h */
  { 41, 41 }, /* unpack2.l */
  { 41, 41 }, /* unpack2.h */
  { 41, 41 }, /* unpack4.l */
  { 41, 41 }, /* unpack4.h */
  { 41, 41 }, /* xchg1     */
  { 41, 41 }, /* xchg2     */
  { 41, 41 }, /* xchg4     */
  { 41, 41 }, /* xchg8     */
  { 38, 41 }, /* xma.l     */
  { 39, 41 }, /* xma.h     */
  { 40, 41 }, /* xma.hu    */
  { 41, 41 }, /* xor       */
  { 41, 41 }, /* xor_i     */
  { 41, 41 }, /* zxt1      */
  { 41, 41 }, /* zxt2      */
  { 41, 41 }, /* zxt4      */
  { 41,  0 }, /* alloc     */
  { 41, 41 }, /* br        */
  { 41, 41 }, /* br_r      */
  { 41, 41 }, /* brl       */
  { 41, 41 }, /* cmp.eq.orcm */
  { 41, 41 }, /* cmp.eq.andcm */
  { 41, 41 }, /* cmp.eq.and.orcm */
  { 41, 41 }, /* cmp.ne    */
  { 41, 41 }, /* cmp.ne.unc */
  { 41, 41 }, /* cmp.ne.orcm */
  { 41, 41 }, /* cmp.ne.andcm */
  { 41, 41 }, /* cmp.ne.and.orcm */
  { 41, 41 }, /* cmp.le    */
  { 41, 41 }, /* cmp.le.unc */
  { 41, 41 }, /* cmp.gt    */
  { 41, 41 }, /* cmp.gt.unc */
  { 41, 41 }, /* cmp.ge    */
  { 41, 41 }, /* cmp.ge.unc */
  { 41, 41 }, /* cmp.leu   */
  { 41, 41 }, /* cmp.leu.unc */
  { 41, 41 }, /* cmp.gtu   */
  { 41, 41 }, /* cmp.gtu.unc */
  { 41, 41 }, /* cmp.geu   */
  { 41, 41 }, /* cmp.geu.unc */
  { 41, 41 }, /* cmp_z1.lt.orcm */
  { 41, 41 }, /* cmp_z1.lt.andcm */
  { 41, 41 }, /* cmp_z1.lt.and.orcm */
  { 41, 41 }, /* cmp_z1.le.orcm */
  { 41, 41 }, /* cmp_z1.le.andcm */
  { 41, 41 }, /* cmp_z1.le.and.orcm */
  { 41, 41 }, /* cmp_z1.gt.orcm */
  { 41, 41 }, /* cmp_z1.gt.andcm */
  { 41, 41 }, /* cmp_z1.gt.and.orcm */
  { 41, 41 }, /* cmp_z1.ge.orcm */
  { 41, 41 }, /* cmp_z1.ge.andcm */
  { 41, 41 }, /* cmp_z1.ge.and.orcm */
  { 41, 41 }, /* cmp_z2.lt.orcm */
  { 41, 41 }, /* cmp_z2.lt.andcm */
  { 41, 41 }, /* cmp_z2.lt.and.orcm */
  { 41, 41 }, /* cmp_z2.le.orcm */
  { 41, 41 }, /* cmp_z2.le.andcm */
  { 41, 41 }, /* cmp_z2.le.and.orcm */
  { 41, 41 }, /* cmp_z2.gt.orcm */
  { 41, 41 }, /* cmp_z2.gt.andcm */
  { 41, 41 }, /* cmp_z2.gt.and.orcm */
  { 41, 41 }, /* cmp_z2.ge.orcm */
  { 41, 41 }, /* cmp_z2.ge.andcm */
  { 41, 41 }, /* cmp_z2.ge.and.orcm */
  { 41, 41 }, /* cmp_z2.lt.and */
  { 41, 41 }, /* cmp_z2.lt.or */
  { 41, 41 }, /* cmp_z2.lt.or.andcm */
  { 41, 41 }, /* cmp_z2.le.and */
  { 41, 41 }, /* cmp_z2.le.or */
  { 41, 41 }, /* cmp_z2.le.or.andcm */
  { 41, 41 }, /* cmp_z2.gt.and */
  { 41, 41 }, /* cmp_z2.gt.or */
  { 41, 41 }, /* cmp_z2.gt.or.andcm */
  { 41, 41 }, /* cmp_z2.ge.and */
  { 41, 41 }, /* cmp_z2.ge.or */
  { 41, 41 }, /* cmp_z2.ge.or.andcm */
  { 41, 41 }, /* cmp_i.eq.orcm */
  { 41, 41 }, /* cmp_i.eq.andcm */
  { 41, 41 }, /* cmp_i.eq.and.orcm */
  { 41, 41 }, /* cmp_i.ne  */
  { 41, 41 }, /* cmp_i.ne.unc */
  { 41, 41 }, /* cmp_i.ne.orcm */
  { 41, 41 }, /* cmp_i.ne.andcm */
  { 41, 41 }, /* cmp_i.ne.and.orcm */
  { 41, 41 }, /* cmp_i.le  */
  { 41, 41 }, /* cmp_i.le.unc */
  { 41, 41 }, /* cmp_i.gt  */
  { 41, 41 }, /* cmp_i.gt.unc */
  { 41, 41 }, /* cmp_i.ge  */
  { 41, 41 }, /* cmp_i.ge.unc */
  { 41, 41 }, /* cmp_i.leu */
  { 41, 41 }, /* cmp_i.leu.unc */
  { 41, 41 }, /* cmp_i.gtu */
  { 41, 41 }, /* cmp_i.gtu.unc */
  { 41, 41 }, /* cmp_i.geu */
  { 41, 41 }, /* cmp_i.geu.unc */
  { 41, 41 }, /* cmp4.eq.orcm */
  { 41, 41 }, /* cmp4.eq.andcm */
  { 41, 41 }, /* cmp4.eq.and.orcm */
  { 41, 41 }, /* cmp4.ne   */
  { 41, 41 }, /* cmp4.ne.unc */
  { 41, 41 }, /* cmp4.ne.orcm */
  { 41, 41 }, /* cmp4.ne.andcm */
  { 41, 41 }, /* cmp4.ne.and.orcm */
  { 41, 41 }, /* cmp4.le   */
  { 41, 41 }, /* cmp4.le.unc */
  { 41, 41 }, /* cmp4.gt   */
  { 41, 41 }, /* cmp4.gt.unc */
  { 41, 41 }, /* cmp4.ge   */
  { 41, 41 }, /* cmp4.ge.unc */
  { 41, 41 }, /* cmp4.leu  */
  { 41, 41 }, /* cmp4.leu.unc */
  { 41, 41 }, /* cmp4.gtu  */
  { 41, 41 }, /* cmp4.gtu.unc */
  { 41, 41 }, /* cmp4.geu  */
  { 41, 41 }, /* cmp4.geu.unc */
  { 41, 41 }, /* cmp4_z1.lt.orcm */
  { 41, 41 }, /* cmp4_z1.lt.andcm */
  { 41, 41 }, /* cmp4_z1.lt.and.orcm */
  { 41, 41 }, /* cmp4_z1.le.orcm */
  { 41, 41 }, /* cmp4_z1.le.andcm */
  { 41, 41 }, /* cmp4_z1.le.and.orcm */
  { 41, 41 }, /* cmp4_z1.gt.orcm */
  { 41, 41 }, /* cmp4_z1.gt.andcm */
  { 41, 41 }, /* cmp4_z1.gt.and.orcm */
  { 41, 41 }, /* cmp4_z1.ge.orcm */
  { 41, 41 }, /* cmp4_z1.ge.andcm */
  { 41, 41 }, /* cmp4_z1.ge.and.orcm */
  { 41, 41 }, /* cmp4_z2.lt.orcm */
  { 41, 41 }, /* cmp4_z2.lt.andcm */
  { 41, 41 }, /* cmp4_z2.lt.and.orcm */
  { 41, 41 }, /* cmp4_z2.le.orcm */
  { 41, 41 }, /* cmp4_z2.le.andcm */
  { 41, 41 }, /* cmp4_z2.le.and.orcm */
  { 41, 41 }, /* cmp4_z2.gt.orcm */
  { 41, 41 }, /* cmp4_z2.gt.andcm */
  { 41, 41 }, /* cmp4_z2.gt.and.orcm */
  { 41, 41 }, /* cmp4_z2.ge.orcm */
  { 41, 41 }, /* cmp4_z2.ge.andcm */
  { 41, 41 }, /* cmp4_z2.ge.and.orcm */
  { 41, 41 }, /* cmp4_z2.lt.and */
  { 41, 41 }, /* cmp4_z2.lt.or */
  { 41, 41 }, /* cmp4_z2.lt.or.andcm */
  { 41, 41 }, /* cmp4_z2.le.and */
  { 41, 41 }, /* cmp4_z2.le.or */
  { 41, 41 }, /* cmp4_z2.le.or.andcm */
  { 41, 41 }, /* cmp4_z2.gt.and */
  { 41, 41 }, /* cmp4_z2.gt.or */
  { 41, 41 }, /* cmp4_z2.gt.or.andcm */
  { 41, 41 }, /* cmp4_z2.ge.and */
  { 41, 41 }, /* cmp4_z2.ge.or */
  { 41, 41 }, /* cmp4_z2.ge.or.andcm */
  { 41, 41 }, /* cmp4_i.eq.orcm */
  { 41, 41 }, /* cmp4_i.eq.andcm */
  { 41, 41 }, /* cmp4_i.eq.and.orcm */
  { 41, 41 }, /* cmp4_i.ne */
  { 41, 41 }, /* cmp4_i.ne.unc */
  { 41, 41 }, /* cmp4_i.ne.orcm */
  { 41, 41 }, /* cmp4_i.ne.andcm */
  { 41, 41 }, /* cmp4_i.ne.and.orcm */
  { 41, 41 }, /* cmp4_i.le */
  { 41, 41 }, /* cmp4_i.le.unc */
  { 41, 41 }, /* cmp4_i.gt */
  { 41, 41 }, /* cmp4_i.gt.unc */
  { 41, 41 }, /* cmp4_i.ge */
  { 41, 41 }, /* cmp4_i.ge.unc */
  { 41, 41 }, /* cmp4_i.leu */
  { 41, 41 }, /* cmp4_i.leu.unc */
  { 41, 41 }, /* cmp4_i.gtu */
  { 41, 41 }, /* cmp4_i.gtu.unc */
  { 41, 41 }, /* cmp4_i.geu */
  { 41, 41 }, /* cmp4_i.geu.unc */
  { 41, 41 }, /* fabs      */
  { 41, 41 }, /* fadd      */
  { 41, 41 }, /* fadd.s    */
  { 41, 41 }, /* fadd.d    */
  { 41, 41 }, /* fclass.nm */
  { 41, 41 }, /* fclass.nm.unc */
  { 41, 41 }, /* fcmp.gt   */
  { 41, 41 }, /* fcmp.gt.unc */
  { 41, 41 }, /* fcmp.ge   */
  { 41, 41 }, /* fcmp.ge.unc */
  { 41, 41 }, /* fcmp.neq  */
  { 41, 41 }, /* fcmp.neq.unc */
  { 41, 41 }, /* fcmp.nlt  */
  { 41, 41 }, /* fcmp.nlt.unc */
  { 41, 41 }, /* fcmp.nle  */
  { 41, 41 }, /* fcmp.nle.unc */
  { 41, 41 }, /* fcmp.ngt  */
  { 41, 41 }, /* fcmp.ngt.unc */
  { 41, 41 }, /* fcmp.nge  */
  { 41, 41 }, /* fcmp.nge.unc */
  { 41, 41 }, /* fcmp.ord  */
  { 41, 41 }, /* fcmp.ord.unc */
  { 41, 41 }, /* fcvt.xuf  */
  { 41, 41 }, /* fcvt.xuf.s */
  { 41, 41 }, /* fcvt.xuf.d */
  { 41, 41 }, /* fmpy      */
  { 41, 41 }, /* fmpy.s    */
  { 41, 41 }, /* fmpy.d    */
  { 41, 41 }, /* fneg      */
  { 41, 41 }, /* fnegabs   */
  { 41, 41 }, /* fnmpy     */
  { 41, 41 }, /* fnmpy.s   */
  { 41, 41 }, /* fnmpy.d   */
  { 41, 41 }, /* fnorm     */
  { 41, 41 }, /* fnorm.s   */
  { 41, 41 }, /* fnorm.d   */
  { 41, 41 }, /* fpabs     */
  { 41, 41 }, /* fpcmp.gt  */
  { 41, 41 }, /* fpcmp.ge  */
  { 41, 41 }, /* fpcmp.ngt */
  { 41, 41 }, /* fpcmp.nge */
  { 41, 41 }, /* fpmpy     */
  { 41, 41 }, /* fpneg     */
  { 41, 41 }, /* fpnegabs  */
  { 41, 41 }, /* fpnmpy    */
  { 41, 41 }, /* fsub      */
  { 41, 41 }, /* fsub.s    */
  { 41, 41 }, /* fsub.d    */
  { 41, 41 }, /* mov_t_br  */
  { 41, 41 }, /* mov_f     */
  { 41, 41 }, /* mov       */
  { 41, 41 }, /* mov_i     */
  { 41,  1 }, /* shl_i     */
  { 41,  2 }, /* shr_i     */
  { 41,  3 }, /* shr_i.u   */
  { 41, 41 }, /* tbit.nz   */
  { 41, 41 }, /* tbit.nz.unc */
  { 41, 41 }, /* tnat.nz   */
  { 41, 41 }, /* tnat.nz.unc */
  { 41, 41 }, /* xma.lu    */
  { 41, 41 }, /* xmpy.l    */
  { 41, 41 }, /* xmpy.lu   */
  { 41, 41 }, /* xmpy.h    */
  { 41, 41 }, /* xmpy.hu   */
  { 41, 41 }, /* break     */
  { 41, 41 }, /* chk.s     */
  { 41, 41 }, /* cmp.lt.and */
  { 41, 41 }, /* cmp.lt.or */
  { 41, 41 }, /* cmp.lt.or.andcm */
  { 41, 41 }, /* cmp.le.and */
  { 41, 41 }, /* cmp.le.or */
  { 41, 41 }, /* cmp.le.or.andcm */
  { 41, 41 }, /* cmp.gt.and */
  { 41, 41 }, /* cmp.gt.or */
  { 41, 41 }, /* cmp.gt.or.andcm */
  { 41, 41 }, /* cmp.ge.and */
  { 41, 41 }, /* cmp.ge.or */
  { 41, 41 }, /* cmp.ge.or.andcm */
  { 41, 41 }, /* cmp.lt.orcm */
  { 41, 41 }, /* cmp.lt.andcm */
  { 41, 41 }, /* cmp.lt.and.orcm */
  { 41, 41 }, /* cmp.le.orcm */
  { 41, 41 }, /* cmp.le.andcm */
  { 41, 41 }, /* cmp.le.and.orcm */
  { 41, 41 }, /* cmp.gt.orcm */
  { 41, 41 }, /* cmp.gt.andcm */
  { 41, 41 }, /* cmp.gt.and.orcm */
  { 41, 41 }, /* cmp.ge.orcm */
  { 41, 41 }, /* cmp.ge.andcm */
  { 41, 41 }, /* cmp.ge.and.orcm */
  { 41, 41 }, /* cmp4.lt.and */
  { 41, 41 }, /* cmp4.lt.or */
  { 41, 41 }, /* cmp4.lt.or.andcm */
  { 41, 41 }, /* cmp4.le.and */
  { 41, 41 }, /* cmp4.le.or */
  { 41, 41 }, /* cmp4.le.or.andcm */
  { 41, 41 }, /* cmp4.gt.and */
  { 41, 41 }, /* cmp4.gt.or */
  { 41, 41 }, /* cmp4.gt.or.andcm */
  { 41, 41 }, /* cmp4.ge.and */
  { 41, 41 }, /* cmp4.ge.or */
  { 41, 41 }, /* cmp4.ge.or.andcm */
  { 41, 41 }, /* cmp4.lt.orcm */
  { 41, 41 }, /* cmp4.lt.andcm */
  { 41, 41 }, /* cmp4.lt.and.orcm */
  { 41, 41 }, /* cmp4.le.orcm */
  { 41, 41 }, /* cmp4.le.andcm */
  { 41, 41 }, /* cmp4.le.and.orcm */
  { 41, 41 }, /* cmp4.gt.orcm */
  { 41, 41 }, /* cmp4.gt.andcm */
  { 41, 41 }, /* cmp4.gt.and.orcm */
  { 41, 41 }, /* cmp4.ge.orcm */
  { 41, 41 }, /* cmp4.ge.andcm */
  { 41, 41 }, /* cmp4.ge.and.orcm */
  { 41, 41 }, /* mov_f_ar  */
  { 41, 41 }, /* mov_t_ar_r */
  { 41, 41 }, /* mov_t_ar_i */
  { 41, 41 }, /* nop       */
  { 41, 41 }, /* asm       */
  { 41, 41 }, /* intrncall */
  { 41, 41 }, /* spadjust  */
  { 41, 41 }, /* copy.br   */
  { 41, 41 }, /* begin.pregtn */
  { 41, 41 }, /* end.pregtn */
  { 41, 41 }, /* bwd.bar   */
  { 41, 41 }, /* fwd.bar   */
  { 41, 41 }, /* dfixup    */
  { 41, 41 }, /* ffixup    */
  { 41, 41 }, /* ifixup    */
  { 41, 41 }, /* label     */
  { 41, 41 }, /* noop      */
};

#define OPND(n)   (o[(n)])
#define RESULT(n) (r[(n)])

TOP ISA_PSEUDO_Translate(TOP opc, INT64 *r, INT64 *o, ISA_PSEUDO_DIRECTION dir)
{
  int i;
  int j;
  int n;
  int arg[3];
  const INT idx = pseudo_index[(INT)opc][dir];
  const PSEUDO *pop = pseudos + idx;

  if (pop->from_opc != opc) return opc;

  if (dir == ISA_PSEUDO_to_pseudo) {
    do {
      for (i = 0;; ++i) {
        BOOL val;
        n = pop->require[i];
        switch (n) {
        case 0:
          goto xlate_pseudo;
        case 1:
          val = (OPND(0) == 0);
          break;
        case 2:
          val = (OPND(1) == 0);
          break;
        case 3:
          val = (OPND(3) == 1);
          break;
        case 4:
          val = (OPND(4) == 0);
          break;
        case 5:
          val = (OPND(1) == OPND(2));
          break;
        case 6:
          val = (OPND(1) == 1);
          break;
        case 7:
          val = (OPND(2) == 0);
          break;
        case 8:
          val = (OPND(2) == 64 - OPND(3));
          break;
        case 9:
          val = (OPND(3) == 0);
          break;
        default:
          return TOP_UNDEFINED;
        }
        if (!val) break;
      }
    } while ((++pop)->from_opc == opc);
    return opc;
  }

xlate_pseudo:
  for (j = 0, i = 0; (n = pop->map[i][1]); ++j, ++i) {
    switch (n) {
    case 1:
      arg[j] = (0);
      break;
    case 2:
      arg[j] = (OPND(0) - OPND(1));
      break;
    case 3:
      arg[j] = (OPND(2));
      break;
    case 4:
      arg[j] = (OPND(3));
      break;
    case 5:
      arg[j] = (OPND(4));
      break;
    case 6:
      arg[j] = (OPND(0) + OPND(1) + OPND(2));
      break;
    case 7:
      arg[j] = (OPND(0) + OPND(1));
      break;
    case 8:
      arg[j] = (64 - OPND(2));
      break;
    default:
      return TOP_UNDEFINED;
    }
  }
  for (j = 0, i = 0; (n = pop->map[i][0]); ++j, ++i) {
    switch (n) {
    case 1:
      (OPND(0)) = arg[j];
      break;
    case 2:
      (OPND(2)) = arg[j];
      break;
    case 3:
      (OPND(3)) = arg[j];
      break;
    case 4:
      (OPND(1)) = arg[j];
      break;
    default:
      return TOP_UNDEFINED;
    }
  }
  return (TOP)pop->to_opc;
}
