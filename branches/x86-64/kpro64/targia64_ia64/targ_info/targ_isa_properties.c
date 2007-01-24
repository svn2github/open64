#include "targ_isa_properties.h"

const mUINT64 ISA_PROPERTIES_flags[] = {
  0x0000001000000200ULL, /* add: iadd ijump */
  0x0000001000000000ULL, /* add_1: ijump */
  0x0000001000000200ULL, /* adds: iadd ijump */
  0x0000001000000200ULL, /* addl: iadd ijump */
  0x0000001000000200ULL, /* addp4: iadd ijump */
  0x0000001000000200ULL, /* addp4_i: iadd ijump */
  0x0000004008000000ULL, /* alloc_3: f_group ijump */
  0x0000001200000000ULL, /* and: ijump */
  0x0000001200000000ULL, /* and_i: ijump */
  0x0000001000000000ULL, /* andcm: ijump */
  0x0000001000000000ULL, /* andcm_i: ijump */
  0x0000001000000050ULL, /* br.cond: xfer cond ijump */
  0x0000001080000050ULL, /* br_r.cond: xfer cond ijump */
  0x0000001000000030ULL, /* br.call: xfer call ijump */
  0x0000001080000030ULL, /* br_r.call: xfer call ijump */
  0x0000001080000010ULL, /* br.ret: xfer ijump */
  0x0000000080000010ULL, /* br.ia: xfer ijump */
  0x0000000000000050ULL, /* br.cloop: xfer cond */
  0x0000000000000050ULL, /* br.ctop: xfer cond */
  0x0000000000000050ULL, /* br.cexit: xfer cond */
  0x0000001000000050ULL, /* br.wtop: xfer cond ijump */
  0x0000001000000050ULL, /* br.wexit: xfer cond ijump */
  0x0000001000000010ULL, /* break.i: xfer ijump */
  0x0000001000000010ULL, /* break.b: xfer ijump */
  0x0000001000000010ULL, /* break.m: xfer ijump */
  0x0000001000000010ULL, /* break.f: xfer ijump */
  0x0000001000000010ULL, /* break.x: xfer ijump */
  0x0000001000000050ULL, /* brl.cond: xfer cond ijump */
  0x0000001000000010ULL, /* brl.call: xfer ijump */
  0x0000008000000000ULL, /* brp: ijump */
  0x0000008000000000ULL, /* brp_r: ijump */
  0x0000008000000000ULL, /* brp.ret: ijump */
  0x0000000030000000ULL, /* bsw.0: l_group privileged */
  0x0000000030000000ULL, /* bsw.1: l_group privileged */
  0x0000001000000000ULL, /* chk.s.i: ijump */
  0x0000001000000000ULL, /* chk.s.m: ijump */
  0x0000001000000000ULL, /* chk_f.s: ijump */
  0x0000001000000000ULL, /* chk.a: ijump */
  0x0000001000000000ULL, /* chk_f.a: ijump */
  0x0000002010000000ULL, /* clrrrb: l_group ijump */
  0x0000002010000000ULL, /* clrrrb.pr: l_group ijump */
  0x0000001400000000ULL, /* cmp.eq: ijump */
  0x0000001400000000ULL, /* cmp.eq.unc: ijump */
  0x0000001400000000ULL, /* cmp.eq.and: ijump */
  0x0000001400000000ULL, /* cmp.eq.or: ijump */
  0x0000001400000000ULL, /* cmp.eq.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp.ne.and: ijump */
  0x0000001400000000ULL, /* cmp.ne.or: ijump */
  0x0000001400000000ULL, /* cmp.ne.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp.lt: ijump */
  0x0000001400000000ULL, /* cmp.lt.unc: ijump */
  0x0000001400000000ULL, /* cmp.ltu: ijump */
  0x0000001400000000ULL, /* cmp.ltu.unc: ijump */
  0x0000001400000000ULL, /* cmp_z1.lt.and: ijump */
  0x0000001400000000ULL, /* cmp_z1.lt.or: ijump */
  0x0000001400000000ULL, /* cmp_z1.lt.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.le.and: ijump */
  0x0000001400000000ULL, /* cmp_z1.le.or: ijump */
  0x0000001400000000ULL, /* cmp_z1.le.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.gt.and: ijump */
  0x0000001400000000ULL, /* cmp_z1.gt.or: ijump */
  0x0000001400000000ULL, /* cmp_z1.gt.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.ge.and: ijump */
  0x0000001400000000ULL, /* cmp_z1.ge.or: ijump */
  0x0000001400000000ULL, /* cmp_z1.ge.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_i.eq: ijump */
  0x0000001400000000ULL, /* cmp_i.eq.unc: ijump */
  0x0000001400000000ULL, /* cmp_i.eq.and: ijump */
  0x0000001400000000ULL, /* cmp_i.eq.or: ijump */
  0x0000001400000000ULL, /* cmp_i.eq.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_i.ne.and: ijump */
  0x0000001400000000ULL, /* cmp_i.ne.or: ijump */
  0x0000001400000000ULL, /* cmp_i.ne.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_i.lt: ijump */
  0x0000001400000000ULL, /* cmp_i.lt.unc: ijump */
  0x0000001400000000ULL, /* cmp_i.ltu: ijump */
  0x0000001400000000ULL, /* cmp_i.ltu.unc: ijump */
  0x0000001400000000ULL, /* cmp4.eq: ijump */
  0x0000001400000000ULL, /* cmp4.eq.unc: ijump */
  0x0000001400000000ULL, /* cmp4.eq.and: ijump */
  0x0000001400000000ULL, /* cmp4.eq.or: ijump */
  0x0000001400000000ULL, /* cmp4.eq.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4.ne.and: ijump */
  0x0000001400000000ULL, /* cmp4.ne.or: ijump */
  0x0000001400000000ULL, /* cmp4.ne.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4.lt: ijump */
  0x0000001400000000ULL, /* cmp4.lt.unc: ijump */
  0x0000001400000000ULL, /* cmp4.ltu: ijump */
  0x0000001400000000ULL, /* cmp4.ltu.unc: ijump */
  0x0000001400000000ULL, /* cmp4_z1.lt.and: ijump */
  0x0000001400000000ULL, /* cmp4_z1.lt.or: ijump */
  0x0000001400000000ULL, /* cmp4_z1.lt.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.le.and: ijump */
  0x0000001400000000ULL, /* cmp4_z1.le.or: ijump */
  0x0000001400000000ULL, /* cmp4_z1.le.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.gt.and: ijump */
  0x0000001400000000ULL, /* cmp4_z1.gt.or: ijump */
  0x0000001400000000ULL, /* cmp4_z1.gt.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.ge.and: ijump */
  0x0000001400000000ULL, /* cmp4_z1.ge.or: ijump */
  0x0000001400000000ULL, /* cmp4_z1.ge.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.eq: ijump */
  0x0000001400000000ULL, /* cmp4_i.eq.unc: ijump */
  0x0000001400000000ULL, /* cmp4_i.eq.and: ijump */
  0x0000001400000000ULL, /* cmp4_i.eq.or: ijump */
  0x0000001400000000ULL, /* cmp4_i.eq.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.ne.and: ijump */
  0x0000001400000000ULL, /* cmp4_i.ne.or: ijump */
  0x0000001400000000ULL, /* cmp4_i.ne.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.lt: ijump */
  0x0000001400000000ULL, /* cmp4_i.lt.unc: ijump */
  0x0000001400000000ULL, /* cmp4_i.ltu: ijump */
  0x0000001400000000ULL, /* cmp4_i.ltu.unc: ijump */
  0x0000001000000000ULL, /* cmpxchg1: ijump */
  0x0000001000000000ULL, /* cmpxchg2: ijump */
  0x0000001000000000ULL, /* cmpxchg4: ijump */
  0x0000001000000000ULL, /* cmpxchg8: ijump */
  0x0000000010000000ULL, /* cover: l_group */
  0x0000001000000000ULL, /* czx1.l: ijump */
  0x0000001000000000ULL, /* czx1.r: ijump */
  0x0000001000000000ULL, /* czx2.l: ijump */
  0x0000001000000000ULL, /* czx2.r: ijump */
  0x0000001000000000ULL, /* dep: ijump */
  0x0000001000000000ULL, /* dep.z: ijump */
  0x0000001000000000ULL, /* dep_i: ijump */
  0x0000001000000000ULL, /* dep_i.z: ijump */
  0x0000000000000000ULL, /* epc: */
  0x0000001000000000ULL, /* extr: ijump */
  0x0000001000000000ULL, /* extr.u: ijump */
  0x0000001000011000ULL, /* famax: flop fmisc ijump */
  0x0000001000011000ULL, /* famin: flop fmisc ijump */
  0x0000001200010000ULL, /* fand: fmisc ijump */
  0x0000001000010000ULL, /* fandcm: fmisc ijump */
  0x0000001000000000ULL, /* fc: ijump */
  0x0000001000000000ULL, /* fchkf: ijump */
  0x0000001000000000ULL, /* fclass.m: ijump */
  0x0000001000000000ULL, /* fclass.m.unc: ijump */
  0x0000001000000000ULL, /* fclrf: ijump */
  0x0000001000001000ULL, /* fcmp.eq: flop ijump */
  0x0000001000001000ULL, /* fcmp.eq.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.lt: flop ijump */
  0x0000001000001000ULL, /* fcmp.lt.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.le: flop ijump */
  0x0000001000001000ULL, /* fcmp.le.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.unord: flop ijump */
  0x0000001000001000ULL, /* fcmp.unord.unc: flop ijump */
  0x0000001000001000ULL, /* fcvt.fx: flop ijump */
  0x0000001000001000ULL, /* fcvt.fx.trunc: flop ijump */
  0x0000001000001000ULL, /* fcvt.fxu: flop ijump */
  0x0000001000001000ULL, /* fcvt.fxu.trunc: flop ijump */
  0x0000001000001000ULL, /* fcvt.xf: flop ijump */
  0x0000001000000000ULL, /* fetchadd4: ijump */
  0x0000001000000000ULL, /* fetchadd8: ijump */
  0x0000000008000000ULL, /* flushrs: f_group */
  0x0000001000021000ULL, /* fma: flop madd ijump */
  0x0000001000021000ULL, /* fma.s: flop madd ijump */
  0x0000001000021000ULL, /* fma.d: flop madd ijump */
  0x0000001000011000ULL, /* fmax: flop fmisc ijump */
  0x0000001000011000ULL, /* fmerge.ns: flop fmisc ijump */
  0x0000001000011000ULL, /* fmerge.s: flop fmisc ijump */
  0x0000001000011000ULL, /* fmerge.se: flop fmisc ijump */
  0x0000001000011000ULL, /* fmin: flop fmisc ijump */
  0x0000001000011000ULL, /* fmix.l: flop fmisc ijump */
  0x0000001000011000ULL, /* fmix.r: flop fmisc ijump */
  0x0000001000011000ULL, /* fmix.lr: flop fmisc ijump */
  0x0000001000021000ULL, /* fms: flop madd ijump */
  0x0000001000021000ULL, /* fms.s: flop madd ijump */
  0x0000001000021000ULL, /* fms.d: flop madd ijump */
  0x0000001000021000ULL, /* fnma: flop madd ijump */
  0x0000001000021000ULL, /* fnma.s: flop madd ijump */
  0x0000001000021000ULL, /* fnma.d: flop madd ijump */
  0x0000001040010000ULL, /* for: fmisc ior ijump */
  0x0000001000010000ULL, /* fpack: fmisc ijump */
  0x0000001000001000ULL, /* fpamax: flop ijump */
  0x0000001000001000ULL, /* fpamin: flop ijump */
  0x0000001000001000ULL, /* fpcmp.eq: flop ijump */
  0x0000001000001000ULL, /* fpcmp.lt: flop ijump */
  0x0000001000001000ULL, /* fpcmp.le: flop ijump */
  0x0000001000001000ULL, /* fpcmp.unord: flop ijump */
  0x0000001000001000ULL, /* fpcmp.neq: flop ijump */
  0x0000001000001000ULL, /* fpcmp.nlt: flop ijump */
  0x0000001000001000ULL, /* fpcmp.nle: flop ijump */
  0x0000001000001000ULL, /* fpcmp.ord: flop ijump */
  0x0000001000000000ULL, /* fpcvt.fx: ijump */
  0x0000001000000000ULL, /* fpcvt.fx.trunc: ijump */
  0x0000001000000000ULL, /* fpcvt.fxu: ijump */
  0x0000001000000000ULL, /* fpcvt.fxu.trunc: ijump */
  0x0000001000021000ULL, /* fpma: flop madd ijump */
  0x0000001000001000ULL, /* fpmax: flop ijump */
  0x0000001000001000ULL, /* fpmerge.ns: flop ijump */
  0x0000001000001000ULL, /* fpmerge.s: flop ijump */
  0x0000001000001000ULL, /* fpmerge.se: flop ijump */
  0x0000001000001000ULL, /* fpmin: flop ijump */
  0x0000001000001000ULL, /* fpms: flop ijump */
  0x0000001000021000ULL, /* fpnma: flop madd ijump */
  0x0000001001001000ULL, /* fprcpa: flop fdiv ijump */
  0x0000001003001000ULL, /* fprsqrta: flop fdiv sqrt ijump */
  0x0000001001011000ULL, /* frcpa: flop fmisc fdiv ijump */
  0x0000001003011000ULL, /* frsqrta: flop fmisc fdiv sqrt ijump */
  0x0000001000010000ULL, /* fselect: fmisc ijump */
  0x0000005000000000ULL, /* fsetc: ijump */
  0x0000001000010000ULL, /* fswap: fmisc ijump */
  0x0000001000010000ULL, /* fswap.nl: fmisc ijump */
  0x0000001000010000ULL, /* fswap.nr: fmisc ijump */
  0x0000001000010000ULL, /* fsxt.l: fmisc ijump */
  0x0000001000010000ULL, /* fsxt.r: fmisc ijump */
  0x0000001000000000ULL, /* fwb: ijump */
  0x0000001100010000ULL, /* fxor: fmisc ijump */
  0x0000001000000000ULL, /* getf.s: ijump */
  0x0000001000000000ULL, /* getf.d: ijump */
  0x0000001000000000ULL, /* getf.exp: ijump */
  0x0000001000000000ULL, /* getf.sig: ijump */
  0x0000001000000000ULL, /* invala: ijump */
  0x0000001000000000ULL, /* invala.e: ijump */
  0x0000001000000000ULL, /* invala_f.e: ijump */
  0x0000001020000000ULL, /* itc.i: privileged ijump */
  0x0000001020000000ULL, /* itc.d: privileged ijump */
  0x0000001020000000ULL, /* itr.i: privileged ijump */
  0x0000001020000000ULL, /* itr.d: privileged ijump */
  0x0000001004000001ULL, /* ld1: load memtrap ijump */
  0x0000001004000101ULL, /* ld1_r: load same_res memtrap ijump */
  0x0000001004000101ULL, /* ld1_i: load same_res memtrap ijump */
  0x0000001004000001ULL, /* ld2: load memtrap ijump */
  0x0000001004000101ULL, /* ld2_r: load same_res memtrap ijump */
  0x0000001004000101ULL, /* ld2_i: load same_res memtrap ijump */
  0x0000001004000001ULL, /* ld4: load memtrap ijump */
  0x0000001004000101ULL, /* ld4_r: load same_res memtrap ijump */
  0x0000001004000101ULL, /* ld4_i: load same_res memtrap ijump */
  0x0000001004000001ULL, /* ld8: load memtrap ijump */
  0x0000001004000101ULL, /* ld8_r: load same_res memtrap ijump */
  0x0000001004000101ULL, /* ld8_i: load same_res memtrap ijump */
  0x0000001004000009ULL, /* ld8.fill: load mem_fill_type memtrap ijump */
  0x0000001004000109ULL, /* ld8_r.fill: load mem_fill_type same_res memtrap ijump */
  0x0000001004000109ULL, /* ld8_i.fill: load mem_fill_type same_res memtrap ijump */
  0x0000001004000001ULL, /* ldfs: load memtrap ijump */
  0x0000001004000101ULL, /* ldfs_r: load same_res memtrap ijump */
  0x0000001004000101ULL, /* ldfs_i: load same_res memtrap ijump */
  0x0000001004000001ULL, /* ldfd: load memtrap ijump */
  0x0000001004000101ULL, /* ldfd_r: load same_res memtrap ijump */
  0x0000001004000101ULL, /* ldfd_i: load same_res memtrap ijump */
  0x0000001004000001ULL, /* ldfe: load memtrap ijump */
  0x0000001004000101ULL, /* ldfe_r: load same_res memtrap ijump */
  0x0000001004000101ULL, /* ldfe_i: load same_res memtrap ijump */
  0x0000001004000001ULL, /* ldf8: load memtrap ijump */
  0x0000001004000101ULL, /* ldf8_r: load same_res memtrap ijump */
  0x0000001004000101ULL, /* ldf8_i: load same_res memtrap ijump */
  0x0000001004000009ULL, /* ldf.fill: load mem_fill_type memtrap ijump */
  0x0000001004000109ULL, /* ldf_r.fill: load mem_fill_type same_res memtrap ijump */
  0x0000001004000109ULL, /* ldf_i.fill: load mem_fill_type same_res memtrap ijump */
  0x0000001004000001ULL, /* ldfps: load memtrap ijump */
  0x0000001004000001ULL, /* ldfps_i: load memtrap ijump */
  0x0000001004000001ULL, /* ldfpd: load memtrap ijump */
  0x0000001004000001ULL, /* ldfpd_i: load memtrap ijump */
  0x0000001004000001ULL, /* ldfp8: load memtrap ijump */
  0x0000001004000001ULL, /* ldfp8_i: load memtrap ijump */
  0x0000001000000004ULL, /* lfetch: prefetch ijump */
  0x0000001000000004ULL, /* lfetch.excl: prefetch ijump */
  0x0000001000000000ULL, /* lfetch.fault: ijump */
  0x0000001000000000ULL, /* lfetch.fault.excl: ijump */
  0x0000001000000104ULL, /* lfetch_r: prefetch same_res ijump */
  0x0000001000000104ULL, /* lfetch_r.excl: prefetch same_res ijump */
  0x0000001000000100ULL, /* lfetch_r.fault: same_res ijump */
  0x0000001000000100ULL, /* lfetch_r.fault.excl: same_res ijump */
  0x0000001000000104ULL, /* lfetch_i: prefetch same_res ijump */
  0x0000001000000104ULL, /* lfetch_i.excl: prefetch same_res ijump */
  0x0000001000000100ULL, /* lfetch_i.fault: same_res ijump */
  0x0000001000000100ULL, /* lfetch_i.fault.excl: same_res ijump */
  0x0000000008000000ULL, /* loadrs: f_group */
  0x0000001000000000ULL, /* mf: ijump */
  0x0000001000000000ULL, /* mf.a: ijump */
  0x0000001000080000ULL, /* mix1.l: mmshf ijump */
  0x0000001000080000ULL, /* mix1.r: mmshf ijump */
  0x0000001000080000ULL, /* mix2.l: mmshf ijump */
  0x0000001000080000ULL, /* mix2.r: mmshf ijump */
  0x0000001000080000ULL, /* mix4.l: mmshf ijump */
  0x0000001000080000ULL, /* mix4.r: mmshf ijump */
  0x0000001000000000ULL, /* mov_f_ar.i: ijump */
  0x0000001000000000ULL, /* mov_t_ar_r.i: ijump */
  0x0000001000000000ULL, /* mov_t_ar_i.i: ijump */
  0x0000001000000000ULL, /* mov_f_ar.m: ijump */
  0x0000001000000000ULL, /* mov_t_ar_r.m: ijump */
  0x0000001000000000ULL, /* mov_t_ar_i.m: ijump */
  0x0000001000000000ULL, /* mov_f_br: ijump */
  0x0000001000000000ULL, /* mov_t_br_i: ijump */
  0x0000001000000000ULL, /* mov_t_br.ret: ijump */
  0x0000001000000000ULL, /* mov_t_cr: ijump */
  0x0000001000000000ULL, /* mov_f_cr: ijump */
  0x0000001000000000ULL, /* mov_f_cpuid: ijump */
  0x0000001000000000ULL, /* mov_t_dbr: ijump */
  0x0000001000000000ULL, /* mov_f_dbr: ijump */
  0x0000001000000000ULL, /* mov_t_ibr: ijump */
  0x0000001000000000ULL, /* mov_f_ibr: ijump */
  0x0000001000000000ULL, /* mov_t_msr: ijump */
  0x0000001000000000ULL, /* mov_f_msr: ijump */
  0x0000001000000000ULL, /* mov_t_pkr: ijump */
  0x0000001000000000ULL, /* mov_f_pkr: ijump */
  0x0000001000000000ULL, /* mov_t_pmc: ijump */
  0x0000001000000000ULL, /* mov_f_pmc: ijump */
  0x0000001000000000ULL, /* mov_t_pmd: ijump */
  0x0000001000000000ULL, /* mov_f_pmd: ijump */
  0x0000001000000000ULL, /* mov_t_rr: ijump */
  0x0000001000000000ULL, /* mov_f_rr: ijump */
  0x0000001000000000ULL, /* mov_f_ip: ijump */
  0x0000003000000000ULL, /* mov_f_pr: ijump */
  0x0000003000000000ULL, /* mov_t_pr: ijump */
  0x0000003000000000ULL, /* mov_t_pr_i: ijump */
  0x0000001000000000ULL, /* mov_t_psr: ijump */
  0x0000001000000000ULL, /* mov_f_psr: ijump */
  0x0000001000000000ULL, /* mov_t_psrum: ijump */
  0x0000001000000000ULL, /* mov_f_psrum: ijump */
  0x0000001000000000ULL, /* movl: ijump */
  0x0000001000080000ULL, /* mux1: mmshf ijump */
  0x0000001000080000ULL, /* mux2: mmshf ijump */
  0x0000001000200000ULL, /* nop.i: noop ijump */
  0x0000001000200000ULL, /* nop.b: noop ijump */
  0x0000001000200000ULL, /* nop.m: noop ijump */
  0x0000001000200000ULL, /* nop.f: noop ijump */
  0x0000001000200000ULL, /* nop.x: noop ijump */
  0x0000001040000000ULL, /* or: ior ijump */
  0x0000001040000000ULL, /* or_i: ior ijump */
  0x0000001000080000ULL, /* pack2.sss: mmshf ijump */
  0x0000001000080000ULL, /* pack2.uss: mmshf ijump */
  0x0000001000080000ULL, /* pack4.sss: mmshf ijump */
  0x0000001000040000ULL, /* padd1: mmalu ijump */
  0x0000001000040000ULL, /* padd1.sss: mmalu ijump */
  0x0000001000040000ULL, /* padd1.uus: mmalu ijump */
  0x0000001000040000ULL, /* padd1.uuu: mmalu ijump */
  0x0000001000040000ULL, /* padd2: mmalu ijump */
  0x0000001000040000ULL, /* padd2.sss: mmalu ijump */
  0x0000001000040000ULL, /* padd2.uus: mmalu ijump */
  0x0000001000040000ULL, /* padd2.uuu: mmalu ijump */
  0x0000001000040000ULL, /* padd4: mmalu ijump */
  0x0000001000040000ULL, /* pavg1: mmalu ijump */
  0x0000001000040000ULL, /* pavg1.raz: mmalu ijump */
  0x0000001000040000ULL, /* pavg2: mmalu ijump */
  0x0000001000040000ULL, /* pavg2.raz: mmalu ijump */
  0x0000001000040000ULL, /* pavgsub1: mmalu ijump */
  0x0000001000040000ULL, /* pavgsub2: mmalu ijump */
  0x0000001000040000ULL, /* pcmp1.eq: mmalu ijump */
  0x0000001000040000ULL, /* pcmp1.gt: mmalu ijump */
  0x0000001000040000ULL, /* pcmp2.eq: mmalu ijump */
  0x0000001000040000ULL, /* pcmp2.gt: mmalu ijump */
  0x0000001000040000ULL, /* pcmp4.eq: mmalu ijump */
  0x0000001000040000ULL, /* pcmp4.gt: mmalu ijump */
  0x0000001000040000ULL, /* pmax1.u: mmalu ijump */
  0x0000001000040000ULL, /* pmax2: mmalu ijump */
  0x0000001000040000ULL, /* pmin1.u: mmalu ijump */
  0x0000001000040000ULL, /* pmin2: mmalu ijump */
  0x0000001000100000ULL, /* pmpy2.r: mmmul ijump */
  0x0000001000100000ULL, /* pmpy2.l: mmmul ijump */
  0x0000001000100000ULL, /* pmpyshr2: mmmul ijump */
  0x0000001000100000ULL, /* pmpyshr2.u: mmmul ijump */
  0x0000001000100000ULL, /* popcnt: mmmul ijump */
  0x0000001000000000ULL, /* probe.r: ijump */
  0x0000001000000000ULL, /* probe.w: ijump */
  0x0000001000000000ULL, /* probe_i.r: ijump */
  0x0000001000000000ULL, /* probe_i.w: ijump */
  0x0000001000000000ULL, /* probe.r.fault: ijump */
  0x0000001000000000ULL, /* probe.w.fault: ijump */
  0x0000001000000000ULL, /* probe.rw.fault: ijump */
  0x0000001000040000ULL, /* psad1: mmalu ijump */
  0x0000001000080000ULL, /* pshl2: mmshf ijump */
  0x0000001000080000ULL, /* pshl4: mmshf ijump */
  0x0000001000080000ULL, /* pshl2_i: mmshf ijump */
  0x0000001000080000ULL, /* pshl4_i: mmshf ijump */
  0x0000001000040000ULL, /* pshladd2: mmalu ijump */
  0x0000001000080000ULL, /* pshr2: mmshf ijump */
  0x0000001000080000ULL, /* pshr2.u: mmshf ijump */
  0x0000001000080000ULL, /* pshr4: mmshf ijump */
  0x0000001000080000ULL, /* pshr4.u: mmshf ijump */
  0x0000001000080000ULL, /* pshr2_i: mmshf ijump */
  0x0000001000080000ULL, /* pshr2_i.u: mmshf ijump */
  0x0000001000080000ULL, /* pshr4_i: mmshf ijump */
  0x0000001000080000ULL, /* pshr4_i.u: mmshf ijump */
  0x0000001000040000ULL, /* pshradd2: mmalu ijump */
  0x0000001000040000ULL, /* psub1: mmalu ijump */
  0x0000001000040000ULL, /* psub2: mmalu ijump */
  0x0000001000040000ULL, /* psub4: mmalu ijump */
  0x0000001000040000ULL, /* psub1.sss: mmalu ijump */
  0x0000001000040000ULL, /* psub1.uus: mmalu ijump */
  0x0000001000040000ULL, /* psub1.uuu: mmalu ijump */
  0x0000001000040000ULL, /* psub2.sss: mmalu ijump */
  0x0000001000040000ULL, /* psub2.uus: mmalu ijump */
  0x0000001000040000ULL, /* psub2.uuu: mmalu ijump */
  0x0000001020000000ULL, /* ptc.e: privileged ijump */
  0x0000001020000000ULL, /* ptc.g: privileged ijump */
  0x0000001020000000ULL, /* ptc.ga: privileged ijump */
  0x0000001020000000ULL, /* ptc.l: privileged ijump */
  0x0000001020000000ULL, /* ptr.d: privileged ijump */
  0x0000001020000000ULL, /* ptr.i: privileged ijump */
  0x0000000030000000ULL, /* rfi: l_group privileged */
  0x0000001020000000ULL, /* rsm: privileged ijump */
  0x0000001000000000ULL, /* rum: ijump */
  0x0000001000000000ULL, /* setf.s: ijump */
  0x0000001000000000ULL, /* setf.d: ijump */
  0x0000001000000000ULL, /* setf.exp: ijump */
  0x0000001000000000ULL, /* setf.sig: ijump */
  0x0000001000080000ULL, /* shl: mmshf ijump */
  0x0000001000000000ULL, /* shladd: ijump */
  0x0000001000000000ULL, /* shladdp4: ijump */
  0x0000001000080000ULL, /* shr: mmshf ijump */
  0x0000001000080000ULL, /* shr.u: mmshf ijump */
  0x0000001000000000ULL, /* shrp: ijump */
  0x0000001000000000ULL, /* srlz.i: ijump */
  0x0000001000000000ULL, /* srlz.d: ijump */
  0x0000001020000000ULL, /* ssm: privileged ijump */
  0x0000001004000002ULL, /* st1: store memtrap ijump */
  0x0000001004000102ULL, /* st1_i: store same_res memtrap ijump */
  0x0000001004000002ULL, /* st2: store memtrap ijump */
  0x0000001004000102ULL, /* st2_i: store same_res memtrap ijump */
  0x0000001004000002ULL, /* st4: store memtrap ijump */
  0x0000001004000102ULL, /* st4_i: store same_res memtrap ijump */
  0x0000001004000002ULL, /* st8: store memtrap ijump */
  0x0000001004000102ULL, /* st8_i: store same_res memtrap ijump */
  0x000000100400000aULL, /* st8.spill: store mem_fill_type memtrap ijump */
  0x000000100400010aULL, /* st8_i.spill: store mem_fill_type same_res memtrap ijump */
  0x0000001004000002ULL, /* stfs: store memtrap ijump */
  0x0000001004000102ULL, /* stfs_i: store same_res memtrap ijump */
  0x0000001004000002ULL, /* stfd: store memtrap ijump */
  0x0000001004000102ULL, /* stfd_i: store same_res memtrap ijump */
  0x0000001004000002ULL, /* stfe: store memtrap ijump */
  0x0000001004000102ULL, /* stfe_i: store same_res memtrap ijump */
  0x0000001004000002ULL, /* stf8: store memtrap ijump */
  0x0000001004000102ULL, /* stf8_i: store same_res memtrap ijump */
  0x000000100400000aULL, /* stf.spill: store mem_fill_type memtrap ijump */
  0x000000100400010aULL, /* stf_i.spill: store mem_fill_type same_res memtrap ijump */
  0x0000001000000400ULL, /* sub: isub ijump */
  0x0000001000000000ULL, /* sub_1: ijump */
  0x0000001000000400ULL, /* sub_i: isub ijump */
  0x0000001000000000ULL, /* sum: ijump */
  0x0000001000000000ULL, /* sxt1: ijump */
  0x0000001000000000ULL, /* sxt2: ijump */
  0x0000001000000000ULL, /* sxt4: ijump */
  0x0000001000000000ULL, /* sync.i: ijump */
  0x0000001020000000ULL, /* tak: privileged ijump */
  0x0000001000000000ULL, /* tbit.z: ijump */
  0x0000001000000000ULL, /* tbit.z.unc: ijump */
  0x0000001000000000ULL, /* tbit.z.and: ijump */
  0x0000001000000000ULL, /* tbit.z.or: ijump */
  0x0000001000000000ULL, /* tbit.z.or.andcm: ijump */
  0x0000001000000000ULL, /* tbit.nz.and: ijump */
  0x0000001000000000ULL, /* tbit.nz.or: ijump */
  0x0000001000000000ULL, /* tbit.nz.or.andcm: ijump */
  0x0000001000000000ULL, /* thash: ijump */
  0x0000001000000000ULL, /* tnat.z: ijump */
  0x0000001000000000ULL, /* tnat.z.unc: ijump */
  0x0000001000000000ULL, /* tnat.z.and: ijump */
  0x0000001000000000ULL, /* tnat.z.or: ijump */
  0x0000001000000000ULL, /* tnat.z.or.andcm: ijump */
  0x0000001000000000ULL, /* tnat.nz.and: ijump */
  0x0000001000000000ULL, /* tnat.nz.or: ijump */
  0x0000001000000000ULL, /* tnat.nz.or.andcm: ijump */
  0x0000001020000000ULL, /* tpa: privileged ijump */
  0x0000001000000000ULL, /* ttag: ijump */
  0x0000001000080000ULL, /* unpack1.l: mmshf ijump */
  0x0000001000080000ULL, /* unpack1.h: mmshf ijump */
  0x0000001000080000ULL, /* unpack2.l: mmshf ijump */
  0x0000001000080000ULL, /* unpack2.h: mmshf ijump */
  0x0000001000080000ULL, /* unpack4.l: mmshf ijump */
  0x0000001000080000ULL, /* unpack4.h: mmshf ijump */
  0x0000001000000000ULL, /* xchg1: ijump */
  0x0000001000000000ULL, /* xchg2: ijump */
  0x0000001000000000ULL, /* xchg4: ijump */
  0x0000001000000000ULL, /* xchg8: ijump */
  0x0000001000000800ULL, /* xma.l: imul ijump */
  0x0000001000000800ULL, /* xma.h: imul ijump */
  0x0000001000000800ULL, /* xma.hu: imul ijump */
  0x0000001100000000ULL, /* xor: ijump */
  0x0000001100000000ULL, /* xor_i: ijump */
  0x0000001000000000ULL, /* zxt1: ijump */
  0x0000001000000000ULL, /* zxt2: ijump */
  0x0000001000000000ULL, /* zxt4: ijump */
  0x0000004008000000ULL, /* alloc: f_group ijump */
  0x0000000000000010ULL, /* br: xfer */
  0x0000000080000010ULL, /* br_r: xfer ijump */
  0x0000000000000010ULL, /* brl: xfer */
  0x0000001400000000ULL, /* cmp.eq.orcm: ijump */
  0x0000001400000000ULL, /* cmp.eq.andcm: ijump */
  0x0000001400000000ULL, /* cmp.eq.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp.ne: ijump */
  0x0000001400000000ULL, /* cmp.ne.unc: ijump */
  0x0000001400000000ULL, /* cmp.ne.orcm: ijump */
  0x0000001400000000ULL, /* cmp.ne.andcm: ijump */
  0x0000001400000000ULL, /* cmp.ne.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp.le: ijump */
  0x0000001400000000ULL, /* cmp.le.unc: ijump */
  0x0000001400000000ULL, /* cmp.gt: ijump */
  0x0000001400000000ULL, /* cmp.gt.unc: ijump */
  0x0000001400000000ULL, /* cmp.ge: ijump */
  0x0000001400000000ULL, /* cmp.ge.unc: ijump */
  0x0000001400000000ULL, /* cmp.leu: ijump */
  0x0000001400000000ULL, /* cmp.leu.unc: ijump */
  0x0000001400000000ULL, /* cmp.gtu: ijump */
  0x0000001400000000ULL, /* cmp.gtu.unc: ijump */
  0x0000001400000000ULL, /* cmp.geu: ijump */
  0x0000001400000000ULL, /* cmp.geu.unc: ijump */
  0x0000001400000000ULL, /* cmp_z1.lt.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.lt.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.lt.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.le.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.le.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.le.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.gt.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.gt.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.gt.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.ge.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.ge.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z1.ge.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.lt.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.lt.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.lt.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.le.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.le.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.le.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.gt.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.gt.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.gt.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.ge.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.ge.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.ge.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.lt.and: ijump */
  0x0000001400000000ULL, /* cmp_z2.lt.or: ijump */
  0x0000001400000000ULL, /* cmp_z2.lt.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.le.and: ijump */
  0x0000001400000000ULL, /* cmp_z2.le.or: ijump */
  0x0000001400000000ULL, /* cmp_z2.le.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.gt.and: ijump */
  0x0000001400000000ULL, /* cmp_z2.gt.or: ijump */
  0x0000001400000000ULL, /* cmp_z2.gt.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_z2.ge.and: ijump */
  0x0000001400000000ULL, /* cmp_z2.ge.or: ijump */
  0x0000001400000000ULL, /* cmp_z2.ge.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp_i.eq.orcm: ijump */
  0x0000001400000000ULL, /* cmp_i.eq.andcm: ijump */
  0x0000001400000000ULL, /* cmp_i.eq.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_i.ne: ijump */
  0x0000001400000000ULL, /* cmp_i.ne.unc: ijump */
  0x0000001400000000ULL, /* cmp_i.ne.orcm: ijump */
  0x0000001400000000ULL, /* cmp_i.ne.andcm: ijump */
  0x0000001400000000ULL, /* cmp_i.ne.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp_i.le: ijump */
  0x0000001400000000ULL, /* cmp_i.le.unc: ijump */
  0x0000001400000000ULL, /* cmp_i.gt: ijump */
  0x0000001400000000ULL, /* cmp_i.gt.unc: ijump */
  0x0000001400000000ULL, /* cmp_i.ge: ijump */
  0x0000001400000000ULL, /* cmp_i.ge.unc: ijump */
  0x0000001400000000ULL, /* cmp_i.leu: ijump */
  0x0000001400000000ULL, /* cmp_i.leu.unc: ijump */
  0x0000001400000000ULL, /* cmp_i.gtu: ijump */
  0x0000001400000000ULL, /* cmp_i.gtu.unc: ijump */
  0x0000001400000000ULL, /* cmp_i.geu: ijump */
  0x0000001400000000ULL, /* cmp_i.geu.unc: ijump */
  0x0000001400000000ULL, /* cmp4.eq.orcm: ijump */
  0x0000001400000000ULL, /* cmp4.eq.andcm: ijump */
  0x0000001400000000ULL, /* cmp4.eq.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4.ne: ijump */
  0x0000001400000000ULL, /* cmp4.ne.unc: ijump */
  0x0000001400000000ULL, /* cmp4.ne.orcm: ijump */
  0x0000001400000000ULL, /* cmp4.ne.andcm: ijump */
  0x0000001400000000ULL, /* cmp4.ne.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4.le: ijump */
  0x0000001400000000ULL, /* cmp4.le.unc: ijump */
  0x0000001400000000ULL, /* cmp4.gt: ijump */
  0x0000001400000000ULL, /* cmp4.gt.unc: ijump */
  0x0000001400000000ULL, /* cmp4.ge: ijump */
  0x0000001400000000ULL, /* cmp4.ge.unc: ijump */
  0x0000001400000000ULL, /* cmp4.leu: ijump */
  0x0000001400000000ULL, /* cmp4.leu.unc: ijump */
  0x0000001400000000ULL, /* cmp4.gtu: ijump */
  0x0000001400000000ULL, /* cmp4.gtu.unc: ijump */
  0x0000001400000000ULL, /* cmp4.geu: ijump */
  0x0000001400000000ULL, /* cmp4.geu.unc: ijump */
  0x0000001400000000ULL, /* cmp4_z1.lt.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.lt.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.lt.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.le.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.le.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.le.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.gt.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.gt.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.gt.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.ge.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.ge.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z1.ge.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.lt.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.lt.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.lt.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.le.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.le.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.le.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.gt.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.gt.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.gt.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.ge.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.ge.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.ge.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.lt.and: ijump */
  0x0000001400000000ULL, /* cmp4_z2.lt.or: ijump */
  0x0000001400000000ULL, /* cmp4_z2.lt.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.le.and: ijump */
  0x0000001400000000ULL, /* cmp4_z2.le.or: ijump */
  0x0000001400000000ULL, /* cmp4_z2.le.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.gt.and: ijump */
  0x0000001400000000ULL, /* cmp4_z2.gt.or: ijump */
  0x0000001400000000ULL, /* cmp4_z2.gt.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_z2.ge.and: ijump */
  0x0000001400000000ULL, /* cmp4_z2.ge.or: ijump */
  0x0000001400000000ULL, /* cmp4_z2.ge.or.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.eq.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.eq.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.eq.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.ne: ijump */
  0x0000001400000000ULL, /* cmp4_i.ne.unc: ijump */
  0x0000001400000000ULL, /* cmp4_i.ne.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.ne.andcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.ne.and.orcm: ijump */
  0x0000001400000000ULL, /* cmp4_i.le: ijump */
  0x0000001400000000ULL, /* cmp4_i.le.unc: ijump */
  0x0000001400000000ULL, /* cmp4_i.gt: ijump */
  0x0000001400000000ULL, /* cmp4_i.gt.unc: ijump */
  0x0000001400000000ULL, /* cmp4_i.ge: ijump */
  0x0000001400000000ULL, /* cmp4_i.ge.unc: ijump */
  0x0000001400000000ULL, /* cmp4_i.leu: ijump */
  0x0000001400000000ULL, /* cmp4_i.leu.unc: ijump */
  0x0000001400000000ULL, /* cmp4_i.gtu: ijump */
  0x0000001400000000ULL, /* cmp4_i.gtu.unc: ijump */
  0x0000001400000000ULL, /* cmp4_i.geu: ijump */
  0x0000001400000000ULL, /* cmp4_i.geu.unc: ijump */
  0x0000001000011000ULL, /* fabs: flop fmisc ijump */
  0x0000001000003000ULL, /* fadd: flop fadd ijump */
  0x0000001000003000ULL, /* fadd.s: flop fadd ijump */
  0x0000001000003000ULL, /* fadd.d: flop fadd ijump */
  0x0000001000000000ULL, /* fclass.nm: ijump */
  0x0000001000000000ULL, /* fclass.nm.unc: ijump */
  0x0000001000001000ULL, /* fcmp.gt: flop ijump */
  0x0000001000001000ULL, /* fcmp.gt.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.ge: flop ijump */
  0x0000001000001000ULL, /* fcmp.ge.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.neq: flop ijump */
  0x0000001000001000ULL, /* fcmp.neq.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.nlt: flop ijump */
  0x0000001000001000ULL, /* fcmp.nlt.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.nle: flop ijump */
  0x0000001000001000ULL, /* fcmp.nle.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.ngt: flop ijump */
  0x0000001000001000ULL, /* fcmp.ngt.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.nge: flop ijump */
  0x0000001000001000ULL, /* fcmp.nge.unc: flop ijump */
  0x0000001000001000ULL, /* fcmp.ord: flop ijump */
  0x0000001000001000ULL, /* fcmp.ord.unc: flop ijump */
  0x0000001000000000ULL, /* fcvt.xuf: ijump */
  0x0000001000000000ULL, /* fcvt.xuf.s: ijump */
  0x0000001000000000ULL, /* fcvt.xuf.d: ijump */
  0x0000001000009000ULL, /* fmpy: flop fmul ijump */
  0x0000001000009000ULL, /* fmpy.s: flop fmul ijump */
  0x0000001000009000ULL, /* fmpy.d: flop fmul ijump */
  0x0000001000011000ULL, /* fneg: flop fmisc ijump */
  0x0000001000011000ULL, /* fnegabs: flop fmisc ijump */
  0x0000001000009000ULL, /* fnmpy: flop fmul ijump */
  0x0000001000009000ULL, /* fnmpy.s: flop fmul ijump */
  0x0000001000009000ULL, /* fnmpy.d: flop fmul ijump */
  0x0000001000001000ULL, /* fnorm: flop ijump */
  0x0000001000001000ULL, /* fnorm.s: flop ijump */
  0x0000001000001000ULL, /* fnorm.d: flop ijump */
  0x0000001000001000ULL, /* fpabs: flop ijump */
  0x0000001000001000ULL, /* fpcmp.gt: flop ijump */
  0x0000001000001000ULL, /* fpcmp.ge: flop ijump */
  0x0000001000001000ULL, /* fpcmp.ngt: flop ijump */
  0x0000001000001000ULL, /* fpcmp.nge: flop ijump */
  0x0000001000009000ULL, /* fpmpy: flop fmul ijump */
  0x0000001000001000ULL, /* fpneg: flop ijump */
  0x0000001000001000ULL, /* fpnegabs: flop ijump */
  0x0000001000009000ULL, /* fpnmpy: flop fmul ijump */
  0x0000001000005000ULL, /* fsub: flop fsub ijump */
  0x0000001000005000ULL, /* fsub.s: flop fsub ijump */
  0x0000001000005000ULL, /* fsub.d: flop fsub ijump */
  0x0000001000000000ULL, /* mov_t_br: ijump */
  0x0000001000011000ULL, /* mov_f: flop fmisc ijump */
  0x0000001020000000ULL, /* mov: privileged ijump */
  0x0000001000000000ULL, /* mov_i: ijump */
  0x0000001000000000ULL, /* shl_i: ijump */
  0x0000001000000000ULL, /* shr_i: ijump */
  0x0000001000000000ULL, /* shr_i.u: ijump */
  0x0000001000000000ULL, /* tbit.nz: ijump */
  0x0000001000000000ULL, /* tbit.nz.unc: ijump */
  0x0000001000000000ULL, /* tnat.nz: ijump */
  0x0000001000000000ULL, /* tnat.nz.unc: ijump */
  0x0000001000000800ULL, /* xma.lu: imul ijump */
  0x0000001000000800ULL, /* xmpy.l: imul ijump */
  0x0000001000000800ULL, /* xmpy.lu: imul ijump */
  0x0000001000000800ULL, /* xmpy.h: imul ijump */
  0x0000001000000800ULL, /* xmpy.hu: imul ijump */
  0x0000001800000010ULL, /* break: xfer ijump */
  0x0000001800000000ULL, /* chk.s: ijump */
  0x0000001c00000000ULL, /* cmp.lt.and: ijump */
  0x0000001c00000000ULL, /* cmp.lt.or: ijump */
  0x0000001c00000000ULL, /* cmp.lt.or.andcm: ijump */
  0x0000001c00000000ULL, /* cmp.le.and: ijump */
  0x0000001c00000000ULL, /* cmp.le.or: ijump */
  0x0000001c00000000ULL, /* cmp.le.or.andcm: ijump */
  0x0000001c00000000ULL, /* cmp.gt.and: ijump */
  0x0000001c00000000ULL, /* cmp.gt.or: ijump */
  0x0000001c00000000ULL, /* cmp.gt.or.andcm: ijump */
  0x0000001c00000000ULL, /* cmp.ge.and: ijump */
  0x0000001c00000000ULL, /* cmp.ge.or: ijump */
  0x0000001c00000000ULL, /* cmp.ge.or.andcm: ijump */
  0x0000001c00000000ULL, /* cmp.lt.orcm: ijump */
  0x0000001c00000000ULL, /* cmp.lt.andcm: ijump */
  0x0000001c00000000ULL, /* cmp.lt.and.orcm: ijump */
  0x0000001c00000000ULL, /* cmp.le.orcm: ijump */
  0x0000001c00000000ULL, /* cmp.le.andcm: ijump */
  0x0000001c00000000ULL, /* cmp.le.and.orcm: ijump */
  0x0000001c00000000ULL, /* cmp.gt.orcm: ijump */
  0x0000001c00000000ULL, /* cmp.gt.andcm: ijump */
  0x0000001c00000000ULL, /* cmp.gt.and.orcm: ijump */
  0x0000001c00000000ULL, /* cmp.ge.orcm: ijump */
  0x0000001c00000000ULL, /* cmp.ge.andcm: ijump */
  0x0000001c00000000ULL, /* cmp.ge.and.orcm: ijump */
  0x0000001c00000000ULL, /* cmp4.lt.and: ijump */
  0x0000001c00000000ULL, /* cmp4.lt.or: ijump */
  0x0000001c00000000ULL, /* cmp4.lt.or.andcm: ijump */
  0x0000001c00000000ULL, /* cmp4.le.and: ijump */
  0x0000001c00000000ULL, /* cmp4.le.or: ijump */
  0x0000001c00000000ULL, /* cmp4.le.or.andcm: ijump */
  0x0000001c00000000ULL, /* cmp4.gt.and: ijump */
  0x0000001c00000000ULL, /* cmp4.gt.or: ijump */
  0x0000001c00000000ULL, /* cmp4.gt.or.andcm: ijump */
  0x0000001c00000000ULL, /* cmp4.ge.and: ijump */
  0x0000001c00000000ULL, /* cmp4.ge.or: ijump */
  0x0000001c00000000ULL, /* cmp4.ge.or.andcm: ijump */
  0x0000001c00000000ULL, /* cmp4.lt.orcm: ijump */
  0x0000001c00000000ULL, /* cmp4.lt.andcm: ijump */
  0x0000001c00000000ULL, /* cmp4.lt.and.orcm: ijump */
  0x0000001c00000000ULL, /* cmp4.le.orcm: ijump */
  0x0000001c00000000ULL, /* cmp4.le.andcm: ijump */
  0x0000001c00000000ULL, /* cmp4.le.and.orcm: ijump */
  0x0000001c00000000ULL, /* cmp4.gt.orcm: ijump */
  0x0000001c00000000ULL, /* cmp4.gt.andcm: ijump */
  0x0000001c00000000ULL, /* cmp4.gt.and.orcm: ijump */
  0x0000001c00000000ULL, /* cmp4.ge.orcm: ijump */
  0x0000001c00000000ULL, /* cmp4.ge.andcm: ijump */
  0x0000001c00000000ULL, /* cmp4.ge.and.orcm: ijump */
  0x0000001800000000ULL, /* mov_f_ar: ijump */
  0x0000001800000000ULL, /* mov_t_ar_r: ijump */
  0x0000001800000000ULL, /* mov_t_ar_i: ijump */
  0x0000001800200000ULL, /* nop: noop ijump */
  0x0000010800000000ULL, /* asm: ijump */
  0x0000001800000080ULL, /* intrncall: uniq_res ijump */
  0x0000001800000200ULL, /* spadjust: iadd ijump */
  0x0000001800000000ULL, /* copy.br: ijump */
  0x0000000000400000ULL, /* begin.pregtn: dummy */
  0x0000000000400000ULL, /* end.pregtn: dummy */
  0x0000000000c00000ULL, /* bwd.bar: dummy unsafe */
  0x0000000000c00000ULL, /* fwd.bar: dummy unsafe */
  0x0000000000400000ULL, /* dfixup: dummy */
  0x0000000000400000ULL, /* ffixup: dummy */
  0x0000000000400000ULL, /* ifixup: dummy */
  0x0000000000400000ULL, /* label: dummy */
  0x0000000000600000ULL, /* noop: noop dummy */
};
