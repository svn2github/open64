#include "stdio.h" 
#include "targ_issue_port.h" 
ISSUE_PORT  ip_M0 = 0;
ISSUE_PORT  ip_M1 = 1;
ISSUE_PORT  ip_I0 = 2;
ISSUE_PORT  ip_I1 = 3;
ISSUE_PORT  ip_F0 = 4;
ISSUE_PORT  ip_F1 = 5;
ISSUE_PORT  ip_B0 = 6;
ISSUE_PORT  ip_B1 = 7;
ISSUE_PORT  ip_B2 = 8;
ISSUE_PORT  ip_invalid = 9; 
 ISSUE_PORT ip_number = 9;
char *issue_port_name[] = {
  "M0",
  "M1",
  "I0",
  "I1",
  "F0",
  "F1",
  "B0",
  "B1",
  "B2",
  "invalid" 
};

ISSUE_PORT issue_port_seq[]={
  ip_M0,
  ip_M1,
  ip_I0,
  ip_I1,
  ip_F0,
  ip_F1,
  ip_B2,
  ip_B1,
  ip_B0,
  ip_invalid
};
void PORT_SET::Print(FILE *fp, char *str) {
    BOOL first=true;
    for (INT i=0; i<ip_invalid; i++)
        if (body & 1<<i) {
            if (!first) fprintf(fp, str); /* print string to seperate*/
            fprintf(fp, Issue_Port_Name((ISSUE_PORT)i));
            first = false;
        }
}
ISSUE_PORT PORT_SET::First_IP() {
    for (INT i=0; i<ip_invalid; i++)
        if (body & 1<<i) return (ISSUE_PORT)i;
    return ip_invalid;
}
ISSUE_PORT PORT_SET::Last_IP() {
    for (INT i=ip_invalid; i>=0; i--)
        if (body & 1<<i) return (ISSUE_PORT)i;
    return ip_invalid;
}
INT PORT_SET::Count() {
    INT count = 0;
    for (INT i=ip_invalid; i>=0; i--)
        if (body & 1<<i) count++;
    return count;
}
PORT_SET M_PORTS(3);
PORT_SET I_PORTS(12);
PORT_SET F_PORTS(48);
PORT_SET B_PORTS(448);

const INT op_issue_port[759] = {
     15,  /* add                  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* add_1                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* adds                 ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* addl                 ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* addp4                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* addp4_i              ip_M0  ip_M1  ip_I0  ip_I1 */
      1,  /* alloc_3              ip_M0 */
     15,  /* and                  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* and_i                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* andcm                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* andcm_i              ip_M0  ip_M1  ip_I0  ip_I1 */
    448,  /* br.cond              ip_B0  ip_B1  ip_B2 */
    448,  /* br_r.cond            ip_B0  ip_B1  ip_B2 */
    448,  /* br.call              ip_B0  ip_B1  ip_B2 */
    448,  /* br_r.call            ip_B0  ip_B1  ip_B2 */
    448,  /* br.ret               ip_B0  ip_B1  ip_B2 */
    448,  /* br.ia                ip_B0  ip_B1  ip_B2 */
    256,  /* br.cloop             ip_B2 */
    256,  /* br.ctop              ip_B2 */
    256,  /* br.cexit             ip_B2 */
    256,  /* br.wtop              ip_B2 */
    256,  /* br.wexit             ip_B2 */
     12,  /* break.i              ip_I0  ip_I1 */
    448,  /* break.b              ip_B0  ip_B1  ip_B2 */
      3,  /* break.m              ip_M0  ip_M1 */
     48,  /* break.f              ip_F0  ip_F1 */
     12,  /* break.x              ip_I0  ip_I1 */
    448,  /* brl.cond             ip_B0  ip_B1  ip_B2 */
    448,  /* brl.call             ip_B0  ip_B1  ip_B2 */
    320,  /* brp                  ip_B0  ip_B2 */
    320,  /* brp_r                ip_B0  ip_B2 */
    320,  /* brp.ret              ip_B0  ip_B2 */
    256,  /* bsw.0                ip_B2 */
    256,  /* bsw.1                ip_B2 */
     12,  /* chk.s.i              ip_I0  ip_I1 */
      3,  /* chk.s.m              ip_M0  ip_M1 */
      3,  /* chk_f.s              ip_M0  ip_M1 */
      3,  /* chk.a                ip_M0  ip_M1 */
      3,  /* chk_f.a              ip_M0  ip_M1 */
    256,  /* clrrrb               ip_B2 */
    256,  /* clrrrb.pr            ip_B2 */
     15,  /* cmp.eq               ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.eq.unc           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.eq.and           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.eq.or            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.eq.or.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ne.and           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ne.or            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ne.or.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.lt               ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.lt.unc           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ltu              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ltu.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.lt.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.lt.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.lt.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.le.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.le.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.le.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.gt.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.gt.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.gt.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.ge.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.ge.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.ge.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.eq             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.eq.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.eq.and         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.eq.or          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.eq.or.andcm    ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ne.and         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ne.or          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ne.or.andcm    ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.lt             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.lt.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ltu            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ltu.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.eq              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.eq.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.eq.and          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.eq.or           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.eq.or.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ne.and          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ne.or           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ne.or.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.lt              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.lt.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ltu             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ltu.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.lt.and       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.lt.or        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.lt.or.andcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.le.and       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.le.or        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.le.or.andcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.gt.and       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.gt.or        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.gt.or.andcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.ge.and       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.ge.or        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.ge.or.andcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.eq            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.eq.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.eq.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.eq.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.eq.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ne.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ne.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ne.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.lt            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.lt.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ltu           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ltu.unc       ip_M0  ip_M1  ip_I0  ip_I1 */
      1,  /* cmpxchg1             ip_M0 */
      1,  /* cmpxchg2             ip_M0 */
      1,  /* cmpxchg4             ip_M0 */
      1,  /* cmpxchg8             ip_M0 */
    256,  /* cover                ip_B2 */
     12,  /* czx1.l               ip_I0  ip_I1 */
     12,  /* czx1.r               ip_I0  ip_I1 */
     12,  /* czx2.l               ip_I0  ip_I1 */
     12,  /* czx2.r               ip_I0  ip_I1 */
      4,  /* dep                  ip_I0 */
      4,  /* dep.z                ip_I0 */
      4,  /* dep_i                ip_I0 */
      4,  /* dep_i.z              ip_I0 */
    448,  /* epc                  ip_B0  ip_B1  ip_B2 */
      4,  /* extr                 ip_I0 */
      4,  /* extr.u               ip_I0 */
     16,  /* famax                ip_F0 */
     16,  /* famin                ip_F0 */
     16,  /* fand                 ip_F0 */
     16,  /* fandcm               ip_F0 */
      1,  /* fc                   ip_M0 */
     48,  /* fchkf                ip_F0  ip_F1 */
     16,  /* fclass.m             ip_F0 */
     16,  /* fclass.m.unc         ip_F0 */
     48,  /* fclrf                ip_F0  ip_F1 */
     16,  /* fcmp.eq              ip_F0 */
     16,  /* fcmp.eq.unc          ip_F0 */
     16,  /* fcmp.lt              ip_F0 */
     16,  /* fcmp.lt.unc          ip_F0 */
     16,  /* fcmp.le              ip_F0 */
     16,  /* fcmp.le.unc          ip_F0 */
     16,  /* fcmp.unord           ip_F0 */
     16,  /* fcmp.unord.unc       ip_F0 */
     48,  /* fcvt.fx              ip_F0  ip_F1 */
     48,  /* fcvt.fx.trunc        ip_F0  ip_F1 */
     48,  /* fcvt.fxu             ip_F0  ip_F1 */
     48,  /* fcvt.fxu.trunc       ip_F0  ip_F1 */
     48,  /* fcvt.xf              ip_F0  ip_F1 */
      1,  /* fetchadd4            ip_M0 */
      1,  /* fetchadd8            ip_M0 */
      1,  /* flushrs              ip_M0 */
     48,  /* fma                  ip_F0  ip_F1 */
     48,  /* fma.s                ip_F0  ip_F1 */
     48,  /* fma.d                ip_F0  ip_F1 */
     16,  /* fmax                 ip_F0 */
     16,  /* fmerge.ns            ip_F0 */
     16,  /* fmerge.s             ip_F0 */
     16,  /* fmerge.se            ip_F0 */
     16,  /* fmin                 ip_F0 */
     16,  /* fmix.l               ip_F0 */
     16,  /* fmix.r               ip_F0 */
     16,  /* fmix.lr              ip_F0 */
     48,  /* fms                  ip_F0  ip_F1 */
     48,  /* fms.s                ip_F0  ip_F1 */
     48,  /* fms.d                ip_F0  ip_F1 */
     48,  /* fnma                 ip_F0  ip_F1 */
     48,  /* fnma.s               ip_F0  ip_F1 */
     48,  /* fnma.d               ip_F0  ip_F1 */
     16,  /* for                  ip_F0 */
     16,  /* fpack                ip_F0 */
     16,  /* fpamax               ip_F0 */
     16,  /* fpamin               ip_F0 */
     16,  /* fpcmp.eq             ip_F0 */
     16,  /* fpcmp.lt             ip_F0 */
     16,  /* fpcmp.le             ip_F0 */
     16,  /* fpcmp.unord          ip_F0 */
     16,  /* fpcmp.neq            ip_F0 */
     16,  /* fpcmp.nlt            ip_F0 */
     16,  /* fpcmp.nle            ip_F0 */
     16,  /* fpcmp.ord            ip_F0 */
     48,  /* fpcvt.fx             ip_F0  ip_F1 */
     48,  /* fpcvt.fx.trunc       ip_F0  ip_F1 */
     48,  /* fpcvt.fxu            ip_F0  ip_F1 */
     48,  /* fpcvt.fxu.trunc      ip_F0  ip_F1 */
     48,  /* fpma                 ip_F0  ip_F1 */
     16,  /* fpmax                ip_F0 */
     16,  /* fpmerge.ns           ip_F0 */
     16,  /* fpmerge.s            ip_F0 */
     16,  /* fpmerge.se           ip_F0 */
     16,  /* fpmin                ip_F0 */
     48,  /* fpms                 ip_F0  ip_F1 */
     48,  /* fpnma                ip_F0  ip_F1 */
     16,  /* fprcpa               ip_F0 */
     16,  /* fprsqrta             ip_F0 */
     16,  /* frcpa                ip_F0 */
     16,  /* frsqrta              ip_F0 */
     16,  /* fselect              ip_F0 */
     48,  /* fsetc                ip_F0  ip_F1 */
     16,  /* fswap                ip_F0 */
     16,  /* fswap.nl             ip_F0 */
     16,  /* fswap.nr             ip_F0 */
     16,  /* fsxt.l               ip_F0 */
     16,  /* fsxt.r               ip_F0 */
      3,  /* fwb                  ip_M0  ip_M1 */
     16,  /* fxor                 ip_F0 */
      1,  /* getf.s               ip_M0 */
      1,  /* getf.d               ip_M0 */
      1,  /* getf.exp             ip_M0 */
      1,  /* getf.sig             ip_M0 */
      3,  /* invala               ip_M0  ip_M1 */
      3,  /* invala.e             ip_M0  ip_M1 */
      3,  /* invala_f.e           ip_M0  ip_M1 */
      1,  /* itc.i                ip_M0 */
      1,  /* itc.d                ip_M0 */
      1,  /* itr.i                ip_M0 */
      1,  /* itr.d                ip_M0 */
      3,  /* ld1                  ip_M0  ip_M1 */
      3,  /* ld1_r                ip_M0  ip_M1 */
      3,  /* ld1_i                ip_M0  ip_M1 */
      3,  /* ld2                  ip_M0  ip_M1 */
      3,  /* ld2_r                ip_M0  ip_M1 */
      3,  /* ld2_i                ip_M0  ip_M1 */
      3,  /* ld4                  ip_M0  ip_M1 */
      3,  /* ld4_r                ip_M0  ip_M1 */
      3,  /* ld4_i                ip_M0  ip_M1 */
      3,  /* ld8                  ip_M0  ip_M1 */
      3,  /* ld8_r                ip_M0  ip_M1 */
      3,  /* ld8_i                ip_M0  ip_M1 */
      3,  /* ld8.fill             ip_M0  ip_M1 */
      3,  /* ld8_r.fill           ip_M0  ip_M1 */
      3,  /* ld8_i.fill           ip_M0  ip_M1 */
      3,  /* ldfs                 ip_M0  ip_M1 */
      3,  /* ldfs_r               ip_M0  ip_M1 */
      3,  /* ldfs_i               ip_M0  ip_M1 */
      3,  /* ldfd                 ip_M0  ip_M1 */
      3,  /* ldfd_r               ip_M0  ip_M1 */
      3,  /* ldfd_i               ip_M0  ip_M1 */
      3,  /* ldfe                 ip_M0  ip_M1 */
      3,  /* ldfe_r               ip_M0  ip_M1 */
      3,  /* ldfe_i               ip_M0  ip_M1 */
      3,  /* ldf8                 ip_M0  ip_M1 */
      3,  /* ldf8_r               ip_M0  ip_M1 */
      3,  /* ldf8_i               ip_M0  ip_M1 */
      3,  /* ldf.fill             ip_M0  ip_M1 */
      3,  /* ldf_r.fill           ip_M0  ip_M1 */
      3,  /* ldf_i.fill           ip_M0  ip_M1 */
      3,  /* ldfps                ip_M0  ip_M1 */
      3,  /* ldfps_i              ip_M0  ip_M1 */
      3,  /* ldfpd                ip_M0  ip_M1 */
      3,  /* ldfpd_i              ip_M0  ip_M1 */
      3,  /* ldfp8                ip_M0  ip_M1 */
      3,  /* ldfp8_i              ip_M0  ip_M1 */
      3,  /* lfetch               ip_M0  ip_M1 */
      3,  /* lfetch.excl          ip_M0  ip_M1 */
      3,  /* lfetch.fault         ip_M0  ip_M1 */
      3,  /* lfetch.fault.excl    ip_M0  ip_M1 */
      3,  /* lfetch_r             ip_M0  ip_M1 */
      3,  /* lfetch_r.excl        ip_M0  ip_M1 */
      3,  /* lfetch_r.fault       ip_M0  ip_M1 */
      3,  /* lfetch_r.fault.excl  ip_M0  ip_M1 */
      3,  /* lfetch_i             ip_M0  ip_M1 */
      3,  /* lfetch_i.excl        ip_M0  ip_M1 */
      3,  /* lfetch_i.fault       ip_M0  ip_M1 */
      3,  /* lfetch_i.fault.excl  ip_M0  ip_M1 */
      1,  /* loadrs               ip_M0 */
      3,  /* mf                   ip_M0  ip_M1 */
      1,  /* mf.a                 ip_M0 */
     12,  /* mix1.l               ip_I0  ip_I1 */
     12,  /* mix1.r               ip_I0  ip_I1 */
     12,  /* mix2.l               ip_I0  ip_I1 */
     12,  /* mix2.r               ip_I0  ip_I1 */
     12,  /* mix4.l               ip_I0  ip_I1 */
     12,  /* mix4.r               ip_I0  ip_I1 */
      4,  /* mov_f_ar.i           ip_I0 */
      4,  /* mov_t_ar_r.i         ip_I0 */
      4,  /* mov_t_ar_i.i         ip_I0 */
      1,  /* mov_f_ar.m           ip_M0 */
      1,  /* mov_t_ar_r.m         ip_M0 */
      1,  /* mov_t_ar_i.m         ip_M0 */
      4,  /* mov_f_br             ip_I0 */
      4,  /* mov_t_br_i           ip_I0 */
      4,  /* mov_t_br.ret         ip_I0 */
      1,  /* mov_t_cr             ip_M0 */
      1,  /* mov_f_cr             ip_M0 */
      1,  /* mov_f_cpuid          ip_M0 */
      1,  /* mov_t_dbr            ip_M0 */
      1,  /* mov_f_dbr            ip_M0 */
      1,  /* mov_t_ibr            ip_M0 */
      1,  /* mov_f_ibr            ip_M0 */
      1,  /* mov_t_msr            ip_M0 */
      1,  /* mov_f_msr            ip_M0 */
      1,  /* mov_t_pkr            ip_M0 */
      1,  /* mov_f_pkr            ip_M0 */
      1,  /* mov_t_pmc            ip_M0 */
      1,  /* mov_f_pmc            ip_M0 */
      1,  /* mov_t_pmd            ip_M0 */
      1,  /* mov_f_pmd            ip_M0 */
      1,  /* mov_t_rr             ip_M0 */
      1,  /* mov_f_rr             ip_M0 */
      4,  /* mov_f_ip             ip_I0 */
      4,  /* mov_f_pr             ip_I0 */
      4,  /* mov_t_pr             ip_I0 */
      4,  /* mov_t_pr_i           ip_I0 */
      1,  /* mov_t_psr            ip_M0 */
      1,  /* mov_f_psr            ip_M0 */
      1,  /* mov_t_psrum          ip_M0 */
      1,  /* mov_f_psrum          ip_M0 */
     12,  /* movl                 ip_I0  ip_I1 */
     12,  /* mux1                 ip_I0  ip_I1 */
     12,  /* mux2                 ip_I0  ip_I1 */
     12,  /* nop.i                ip_I0  ip_I1 */
    448,  /* nop.b                ip_B0  ip_B1  ip_B2 */
      3,  /* nop.m                ip_M0  ip_M1 */
     48,  /* nop.f                ip_F0  ip_F1 */
     12,  /* nop.x                ip_I0  ip_I1 */
     15,  /* or                   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* or_i                 ip_M0  ip_M1  ip_I0  ip_I1 */
     12,  /* pack2.sss            ip_I0  ip_I1 */
     12,  /* pack2.uss            ip_I0  ip_I1 */
     12,  /* pack4.sss            ip_I0  ip_I1 */
     15,  /* padd1                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* padd1.sss            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* padd1.uus            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* padd1.uuu            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* padd2                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* padd2.sss            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* padd2.uus            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* padd2.uuu            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* padd4                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pavg1                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pavg1.raz            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pavg2                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pavg2.raz            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pavgsub1             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pavgsub2             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pcmp1.eq             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pcmp1.gt             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pcmp2.eq             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pcmp2.gt             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pcmp4.eq             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* pcmp4.gt             ip_M0  ip_M1  ip_I0  ip_I1 */
     12,  /* pmax1.u              ip_I0  ip_I1 */
     12,  /* pmax2                ip_I0  ip_I1 */
     12,  /* pmin1.u              ip_I0  ip_I1 */
     12,  /* pmin2                ip_I0  ip_I1 */
      4,  /* pmpy2.r              ip_I0 */
      4,  /* pmpy2.l              ip_I0 */
      4,  /* pmpyshr2             ip_I0 */
      4,  /* pmpyshr2.u           ip_I0 */
      4,  /* popcnt               ip_I0 */
      1,  /* probe.r              ip_M0 */
      1,  /* probe.w              ip_M0 */
      1,  /* probe_i.r            ip_M0 */
      1,  /* probe_i.w            ip_M0 */
      1,  /* probe.r.fault        ip_M0 */
      1,  /* probe.w.fault        ip_M0 */
      1,  /* probe.rw.fault       ip_M0 */
     12,  /* psad1                ip_I0  ip_I1 */
     12,  /* pshl2                ip_I0  ip_I1 */
     12,  /* pshl4                ip_I0  ip_I1 */
     12,  /* pshl2_i              ip_I0  ip_I1 */
     12,  /* pshl4_i              ip_I0  ip_I1 */
     15,  /* pshladd2             ip_M0  ip_M1  ip_I0  ip_I1 */
     12,  /* pshr2                ip_I0  ip_I1 */
     12,  /* pshr2.u              ip_I0  ip_I1 */
     12,  /* pshr4                ip_I0  ip_I1 */
     12,  /* pshr4.u              ip_I0  ip_I1 */
     12,  /* pshr2_i              ip_I0  ip_I1 */
     12,  /* pshr2_i.u            ip_I0  ip_I1 */
     12,  /* pshr4_i              ip_I0  ip_I1 */
     12,  /* pshr4_i.u            ip_I0  ip_I1 */
     15,  /* pshradd2             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* psub1                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* psub2                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* psub4                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* psub1.sss            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* psub1.uus            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* psub1.uuu            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* psub2.sss            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* psub2.uus            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* psub2.uuu            ip_M0  ip_M1  ip_I0  ip_I1 */
      1,  /* ptc.e                ip_M0 */
      1,  /* ptc.g                ip_M0 */
      1,  /* ptc.ga               ip_M0 */
      1,  /* ptc.l                ip_M0 */
      1,  /* ptr.d                ip_M0 */
      1,  /* ptr.i                ip_M0 */
    256,  /* rfi                  ip_B2 */
      1,  /* rsm                  ip_M0 */
      1,  /* rum                  ip_M0 */
      3,  /* setf.s               ip_M0  ip_M1 */
      3,  /* setf.d               ip_M0  ip_M1 */
      3,  /* setf.exp             ip_M0  ip_M1 */
      3,  /* setf.sig             ip_M0  ip_M1 */
     12,  /* shl                  ip_I0  ip_I1 */
     15,  /* shladd               ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* shladdp4             ip_M0  ip_M1  ip_I0  ip_I1 */
     12,  /* shr                  ip_I0  ip_I1 */
     12,  /* shr.u                ip_I0  ip_I1 */
      4,  /* shrp                 ip_I0 */
      3,  /* srlz.i               ip_M0  ip_M1 */
      3,  /* srlz.d               ip_M0  ip_M1 */
      1,  /* ssm                  ip_M0 */
      3,  /* st1                  ip_M0  ip_M1 */
      3,  /* st1_i                ip_M0  ip_M1 */
      3,  /* st2                  ip_M0  ip_M1 */
      3,  /* st2_i                ip_M0  ip_M1 */
      3,  /* st4                  ip_M0  ip_M1 */
      3,  /* st4_i                ip_M0  ip_M1 */
      3,  /* st8                  ip_M0  ip_M1 */
      3,  /* st8_i                ip_M0  ip_M1 */
      3,  /* st8.spill            ip_M0  ip_M1 */
      3,  /* st8_i.spill          ip_M0  ip_M1 */
      3,  /* stfs                 ip_M0  ip_M1 */
      3,  /* stfs_i               ip_M0  ip_M1 */
      3,  /* stfd                 ip_M0  ip_M1 */
      3,  /* stfd_i               ip_M0  ip_M1 */
      3,  /* stfe                 ip_M0  ip_M1 */
      3,  /* stfe_i               ip_M0  ip_M1 */
      3,  /* stf8                 ip_M0  ip_M1 */
      3,  /* stf8_i               ip_M0  ip_M1 */
      3,  /* stf.spill            ip_M0  ip_M1 */
      3,  /* stf_i.spill          ip_M0  ip_M1 */
     15,  /* sub                  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* sub_1                ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* sub_i                ip_M0  ip_M1  ip_I0  ip_I1 */
      1,  /* sum                  ip_M0 */
     12,  /* sxt1                 ip_I0  ip_I1 */
     12,  /* sxt2                 ip_I0  ip_I1 */
     12,  /* sxt4                 ip_I0  ip_I1 */
      3,  /* sync.i               ip_M0  ip_M1 */
      1,  /* tak                  ip_M0 */
      4,  /* tbit.z               ip_I0 */
      4,  /* tbit.z.unc           ip_I0 */
      4,  /* tbit.z.and           ip_I0 */
      4,  /* tbit.z.or            ip_I0 */
      4,  /* tbit.z.or.andcm      ip_I0 */
      4,  /* tbit.nz.and          ip_I0 */
      4,  /* tbit.nz.or           ip_I0 */
      4,  /* tbit.nz.or.andcm     ip_I0 */
      1,  /* thash                ip_M0 */
      4,  /* tnat.z               ip_I0 */
      4,  /* tnat.z.unc           ip_I0 */
      4,  /* tnat.z.and           ip_I0 */
      4,  /* tnat.z.or            ip_I0 */
      4,  /* tnat.z.or.andcm      ip_I0 */
      4,  /* tnat.nz.and          ip_I0 */
      4,  /* tnat.nz.or           ip_I0 */
      4,  /* tnat.nz.or.andcm     ip_I0 */
      1,  /* tpa                  ip_M0 */
      1,  /* ttag                 ip_M0 */
     12,  /* unpack1.l            ip_I0  ip_I1 */
     12,  /* unpack1.h            ip_I0  ip_I1 */
     12,  /* unpack2.l            ip_I0  ip_I1 */
     12,  /* unpack2.h            ip_I0  ip_I1 */
     12,  /* unpack4.l            ip_I0  ip_I1 */
     12,  /* unpack4.h            ip_I0  ip_I1 */
      1,  /* xchg1                ip_M0 */
      1,  /* xchg2                ip_M0 */
      1,  /* xchg4                ip_M0 */
      1,  /* xchg8                ip_M0 */
     48,  /* xma.l                ip_F0  ip_F1 */
     48,  /* xma.h                ip_F0  ip_F1 */
     48,  /* xma.hu               ip_F0  ip_F1 */
     15,  /* xor                  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* xor_i                ip_M0  ip_M1  ip_I0  ip_I1 */
     12,  /* zxt1                 ip_I0  ip_I1 */
     12,  /* zxt2                 ip_I0  ip_I1 */
     12,  /* zxt4                 ip_I0  ip_I1 */
      1,  /* alloc                ip_M0 */
    448,  /* br                   ip_B0  ip_B1  ip_B2 */
    448,  /* br_r                 ip_B0  ip_B1  ip_B2 */
    448,  /* brl                  ip_B0  ip_B1  ip_B2 */
     15,  /* cmp.eq.orcm          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.eq.andcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.eq.and.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ne               ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ne.unc           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ne.orcm          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ne.andcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ne.and.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.le               ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.le.unc           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gt               ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gt.unc           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ge               ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ge.unc           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.leu              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.leu.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gtu              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gtu.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.geu              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.geu.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.lt.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.lt.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.lt.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.le.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.le.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.le.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.gt.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.gt.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.gt.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.ge.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.ge.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z1.ge.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.lt.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.lt.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.lt.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.le.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.le.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.le.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.gt.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.gt.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.gt.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.ge.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.ge.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.ge.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.lt.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.lt.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.lt.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.le.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.le.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.le.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.gt.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.gt.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.gt.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.ge.and        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.ge.or         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_z2.ge.or.andcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.eq.orcm        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.eq.andcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.eq.and.orcm    ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ne             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ne.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ne.orcm        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ne.andcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ne.and.orcm    ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.le             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.le.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.gt             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.gt.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ge             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.ge.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.leu            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.leu.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.gtu            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.gtu.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.geu            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp_i.geu.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.eq.orcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.eq.andcm        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.eq.and.orcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ne              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ne.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ne.orcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ne.andcm        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ne.and.orcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.le              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.le.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gt              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gt.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ge              ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ge.unc          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.leu             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.leu.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gtu             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gtu.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.geu             ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.geu.unc         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.lt.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.lt.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.lt.and.orcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.le.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.le.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.le.and.orcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.gt.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.gt.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.gt.and.orcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.ge.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.ge.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z1.ge.and.orcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.lt.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.lt.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.lt.and.orcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.le.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.le.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.le.and.orcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.gt.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.gt.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.gt.and.orcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.ge.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.ge.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.ge.and.orcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.lt.and       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.lt.or        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.lt.or.andcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.le.and       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.le.or        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.le.or.andcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.gt.and       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.gt.or        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.gt.or.andcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.ge.and       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.ge.or        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_z2.ge.or.andcm  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.eq.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.eq.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.eq.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ne            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ne.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ne.orcm       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ne.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ne.and.orcm   ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.le            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.le.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.gt            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.gt.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ge            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.ge.unc        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.leu           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.leu.unc       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.gtu           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.gtu.unc       ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.geu           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4_i.geu.unc       ip_M0  ip_M1  ip_I0  ip_I1 */
     16,  /* fabs                 ip_F0 */
     48,  /* fadd                 ip_F0  ip_F1 */
     48,  /* fadd.s               ip_F0  ip_F1 */
     48,  /* fadd.d               ip_F0  ip_F1 */
     16,  /* fclass.nm            ip_F0 */
     16,  /* fclass.nm.unc        ip_F0 */
     16,  /* fcmp.gt              ip_F0 */
     16,  /* fcmp.gt.unc          ip_F0 */
     16,  /* fcmp.ge              ip_F0 */
     16,  /* fcmp.ge.unc          ip_F0 */
     16,  /* fcmp.neq             ip_F0 */
     16,  /* fcmp.neq.unc         ip_F0 */
     16,  /* fcmp.nlt             ip_F0 */
     16,  /* fcmp.nlt.unc         ip_F0 */
     16,  /* fcmp.nle             ip_F0 */
     16,  /* fcmp.nle.unc         ip_F0 */
     16,  /* fcmp.ngt             ip_F0 */
     16,  /* fcmp.ngt.unc         ip_F0 */
     16,  /* fcmp.nge             ip_F0 */
     16,  /* fcmp.nge.unc         ip_F0 */
     16,  /* fcmp.ord             ip_F0 */
     16,  /* fcmp.ord.unc         ip_F0 */
     48,  /* fcvt.xuf             ip_F0  ip_F1 */
     48,  /* fcvt.xuf.s           ip_F0  ip_F1 */
     48,  /* fcvt.xuf.d           ip_F0  ip_F1 */
     48,  /* fmpy                 ip_F0  ip_F1 */
     48,  /* fmpy.s               ip_F0  ip_F1 */
     48,  /* fmpy.d               ip_F0  ip_F1 */
     16,  /* fneg                 ip_F0 */
     16,  /* fnegabs              ip_F0 */
     48,  /* fnmpy                ip_F0  ip_F1 */
     48,  /* fnmpy.s              ip_F0  ip_F1 */
     48,  /* fnmpy.d              ip_F0  ip_F1 */
     48,  /* fnorm                ip_F0  ip_F1 */
     48,  /* fnorm.s              ip_F0  ip_F1 */
     48,  /* fnorm.d              ip_F0  ip_F1 */
     16,  /* fpabs                ip_F0 */
     16,  /* fpcmp.gt             ip_F0 */
     16,  /* fpcmp.ge             ip_F0 */
     16,  /* fpcmp.ngt            ip_F0 */
     16,  /* fpcmp.nge            ip_F0 */
     48,  /* fpmpy                ip_F0  ip_F1 */
     16,  /* fpneg                ip_F0 */
     16,  /* fpnegabs             ip_F0 */
     48,  /* fpnmpy               ip_F0  ip_F1 */
     48,  /* fsub                 ip_F0  ip_F1 */
     48,  /* fsub.s               ip_F0  ip_F1 */
     48,  /* fsub.d               ip_F0  ip_F1 */
      4,  /* mov_t_br             ip_I0 */
     16,  /* mov_f                ip_F0 */
     15,  /* mov                  ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* mov_i                ip_M0  ip_M1  ip_I0  ip_I1 */
      4,  /* shl_i                ip_I0 */
      4,  /* shr_i                ip_I0 */
      4,  /* shr_i.u              ip_I0 */
      4,  /* tbit.nz              ip_I0 */
      4,  /* tbit.nz.unc          ip_I0 */
      4,  /* tnat.nz              ip_I0 */
      4,  /* tnat.nz.unc          ip_I0 */
     48,  /* xma.lu               ip_F0  ip_F1 */
     48,  /* xmpy.l               ip_F0  ip_F1 */
     48,  /* xmpy.lu              ip_F0  ip_F1 */
     48,  /* xmpy.h               ip_F0  ip_F1 */
     48,  /* xmpy.hu              ip_F0  ip_F1 */
      0,  /* break               */
      0,  /* chk.s               */
     15,  /* cmp.lt.and           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.lt.or            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.lt.or.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.le.and           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.le.or            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.le.or.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gt.and           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gt.or            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gt.or.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ge.and           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ge.or            ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ge.or.andcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.lt.orcm          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.lt.andcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.lt.and.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.le.orcm          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.le.andcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.le.and.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gt.orcm          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gt.andcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.gt.and.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ge.orcm          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ge.andcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp.ge.and.orcm      ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.lt.and          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.lt.or           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.lt.or.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.le.and          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.le.or           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.le.or.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gt.and          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gt.or           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gt.or.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ge.and          ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ge.or           ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ge.or.andcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.lt.orcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.lt.andcm        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.lt.and.orcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.le.orcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.le.andcm        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.le.and.orcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gt.orcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gt.andcm        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.gt.and.orcm     ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ge.orcm         ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ge.andcm        ip_M0  ip_M1  ip_I0  ip_I1 */
     15,  /* cmp4.ge.and.orcm     ip_M0  ip_M1  ip_I0  ip_I1 */
      0,  /* mov_f_ar            */
      0,  /* mov_t_ar_r          */
      0,  /* mov_t_ar_i          */
      0,  /* nop                 */
      0,  /* asm                 */
      0,  /* intrncall           */
      0,  /* spadjust            */
      0,  /* copy.br             */
      0,  /* begin.pregtn        */
      0,  /* end.pregtn          */
      0,  /* bwd.bar             */
      0,  /* fwd.bar             */
      0,  /* dfixup              */
      0,  /* ffixup              */
      0,  /* ifixup              */
      0,  /* label               */
      0
};
INT PROCESSOR_Version=1;
