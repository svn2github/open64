#include "stdio.h" 
#include "targ_issue_port.h" 
ISSUE_PORT  ip_M0 = 0;
ISSUE_PORT  ip_M1 = 1;
ISSUE_PORT  ip_M2 = 2;
ISSUE_PORT  ip_M3 = 3;
ISSUE_PORT  ip_I0 = 4;
ISSUE_PORT  ip_I1 = 5;
ISSUE_PORT  ip_F0 = 6;
ISSUE_PORT  ip_F1 = 7;
ISSUE_PORT  ip_B0 = 8;
ISSUE_PORT  ip_B1 = 9;
ISSUE_PORT  ip_B2 = 10;
ISSUE_PORT  ip_invalid = 11; 
 ISSUE_PORT ip_number = 11;
char *issue_port_name[] = {
  "M0",
  "M1",
  "M2",
  "M3",
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
  ip_I0,
  ip_I1,
  ip_M0,
  ip_M1,
  ip_M2,
  ip_M3,
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
PORT_SET M_PORTS(15);
PORT_SET I_PORTS(48);
PORT_SET F_PORTS(192);
PORT_SET B_PORTS(1792);

const INT op_issue_port[759] = {
     63,  /* add                  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* add_1                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* adds                 ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* addl                 ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* addp4                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* addp4_i              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
      4,  /* alloc_3              ip_M2 */
     63,  /* and                  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* and_i                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* andcm                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* andcm_i              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
    1792,  /* br.cond              ip_B0  ip_B1  ip_B2 */
    1792,  /* br_r.cond            ip_B0  ip_B1  ip_B2 */
    1792,  /* br.call              ip_B0  ip_B1  ip_B2 */
    1792,  /* br_r.call            ip_B0  ip_B1  ip_B2 */
    1792,  /* br.ret               ip_B0  ip_B1  ip_B2 */
    1792,  /* br.ia                ip_B0  ip_B1  ip_B2 */
    1024,  /* br.cloop             ip_B2 */
    1024,  /* br.ctop              ip_B2 */
    1024,  /* br.cexit             ip_B2 */
    1024,  /* br.wtop              ip_B2 */
    1024,  /* br.wexit             ip_B2 */
     48,  /* break.i              ip_I0  ip_I1 */
    1792,  /* break.b              ip_B0  ip_B1  ip_B2 */
     15,  /* break.m              ip_M0  ip_M1  ip_M2  ip_M3 */
    192,  /* break.f              ip_F0  ip_F1 */
     48,  /* break.x              ip_I0  ip_I1 */
    1792,  /* brl.cond             ip_B0  ip_B1  ip_B2 */
    1792,  /* brl.call             ip_B0  ip_B1  ip_B2 */
    1792,  /* brp                  ip_B0  ip_B1  ip_B2 */
    1792,  /* brp_r                ip_B0  ip_B1  ip_B2 */
    1792,  /* brp.ret              ip_B0  ip_B1  ip_B2 */
    1024,  /* bsw.0                ip_B2 */
    1024,  /* bsw.1                ip_B2 */
     48,  /* chk.s.i              ip_I0  ip_I1 */
      3,  /* chk.s.m              ip_M0  ip_M1 */
      3,  /* chk_f.s              ip_M0  ip_M1 */
      3,  /* chk.a                ip_M0  ip_M1 */
      3,  /* chk_f.a              ip_M0  ip_M1 */
    1024,  /* clrrrb               ip_B2 */
    1024,  /* clrrrb.pr            ip_B2 */
     63,  /* cmp.eq               ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.eq.unc           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.eq.and           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.eq.or            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.eq.or.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ne.and           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ne.or            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ne.or.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.lt               ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.lt.unc           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ltu              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ltu.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.lt.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.lt.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.lt.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.le.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.le.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.le.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.gt.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.gt.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.gt.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.ge.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.ge.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.ge.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.eq             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.eq.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.eq.and         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.eq.or          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.eq.or.andcm    ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ne.and         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ne.or          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ne.or.andcm    ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.lt             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.lt.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ltu            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ltu.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.eq              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.eq.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.eq.and          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.eq.or           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.eq.or.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ne.and          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ne.or           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ne.or.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.lt              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.lt.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ltu             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ltu.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.lt.and       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.lt.or        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.lt.or.andcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.le.and       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.le.or        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.le.or.andcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.gt.and       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.gt.or        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.gt.or.andcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.ge.and       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.ge.or        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.ge.or.andcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.eq            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.eq.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.eq.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.eq.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.eq.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ne.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ne.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ne.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.lt            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.lt.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ltu           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ltu.unc       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     12,  /* cmpxchg1             ip_M2  ip_M3 */
     12,  /* cmpxchg2             ip_M2  ip_M3 */
     12,  /* cmpxchg4             ip_M2  ip_M3 */
     12,  /* cmpxchg8             ip_M2  ip_M3 */
    1024,  /* cover                ip_B2 */
     48,  /* czx1.l               ip_I0  ip_I1 */
     48,  /* czx1.r               ip_I0  ip_I1 */
     48,  /* czx2.l               ip_I0  ip_I1 */
     48,  /* czx2.r               ip_I0  ip_I1 */
     16,  /* dep                  ip_I0 */
     16,  /* dep.z                ip_I0 */
     16,  /* dep_i                ip_I0 */
     16,  /* dep_i.z              ip_I0 */
    512,  /* epc                  ip_B1 */
     16,  /* extr                 ip_I0 */
     16,  /* extr.u               ip_I0 */
    192,  /* famax                ip_F0  ip_F1 */
    192,  /* famin                ip_F0  ip_F1 */
    192,  /* fand                 ip_F0  ip_F1 */
    192,  /* fandcm               ip_F0  ip_F1 */
      4,  /* fc                   ip_M2 */
    192,  /* fchkf                ip_F0  ip_F1 */
    192,  /* fclass.m             ip_F0  ip_F1 */
    192,  /* fclass.m.unc         ip_F0  ip_F1 */
    192,  /* fclrf                ip_F0  ip_F1 */
    192,  /* fcmp.eq              ip_F0  ip_F1 */
    192,  /* fcmp.eq.unc          ip_F0  ip_F1 */
    192,  /* fcmp.lt              ip_F0  ip_F1 */
    192,  /* fcmp.lt.unc          ip_F0  ip_F1 */
    192,  /* fcmp.le              ip_F0  ip_F1 */
    192,  /* fcmp.le.unc          ip_F0  ip_F1 */
    192,  /* fcmp.unord           ip_F0  ip_F1 */
    192,  /* fcmp.unord.unc       ip_F0  ip_F1 */
    192,  /* fcvt.fx              ip_F0  ip_F1 */
    192,  /* fcvt.fx.trunc        ip_F0  ip_F1 */
    192,  /* fcvt.fxu             ip_F0  ip_F1 */
    192,  /* fcvt.fxu.trunc       ip_F0  ip_F1 */
    192,  /* fcvt.xf              ip_F0  ip_F1 */
     12,  /* fetchadd4            ip_M2  ip_M3 */
     12,  /* fetchadd8            ip_M2  ip_M3 */
      1,  /* flushrs              ip_M0 */
    192,  /* fma                  ip_F0  ip_F1 */
    192,  /* fma.s                ip_F0  ip_F1 */
    192,  /* fma.d                ip_F0  ip_F1 */
    192,  /* fmax                 ip_F0  ip_F1 */
    192,  /* fmerge.ns            ip_F0  ip_F1 */
    192,  /* fmerge.s             ip_F0  ip_F1 */
    192,  /* fmerge.se            ip_F0  ip_F1 */
    192,  /* fmin                 ip_F0  ip_F1 */
    192,  /* fmix.l               ip_F0  ip_F1 */
    192,  /* fmix.r               ip_F0  ip_F1 */
    192,  /* fmix.lr              ip_F0  ip_F1 */
    192,  /* fms                  ip_F0  ip_F1 */
    192,  /* fms.s                ip_F0  ip_F1 */
    192,  /* fms.d                ip_F0  ip_F1 */
    192,  /* fnma                 ip_F0  ip_F1 */
    192,  /* fnma.s               ip_F0  ip_F1 */
    192,  /* fnma.d               ip_F0  ip_F1 */
    192,  /* for                  ip_F0  ip_F1 */
    192,  /* fpack                ip_F0  ip_F1 */
    192,  /* fpamax               ip_F0  ip_F1 */
    192,  /* fpamin               ip_F0  ip_F1 */
    192,  /* fpcmp.eq             ip_F0  ip_F1 */
    192,  /* fpcmp.lt             ip_F0  ip_F1 */
    192,  /* fpcmp.le             ip_F0  ip_F1 */
    192,  /* fpcmp.unord          ip_F0  ip_F1 */
    192,  /* fpcmp.neq            ip_F0  ip_F1 */
    192,  /* fpcmp.nlt            ip_F0  ip_F1 */
    192,  /* fpcmp.nle            ip_F0  ip_F1 */
    192,  /* fpcmp.ord            ip_F0  ip_F1 */
    192,  /* fpcvt.fx             ip_F0  ip_F1 */
    192,  /* fpcvt.fx.trunc       ip_F0  ip_F1 */
    192,  /* fpcvt.fxu            ip_F0  ip_F1 */
    192,  /* fpcvt.fxu.trunc      ip_F0  ip_F1 */
    192,  /* fpma                 ip_F0  ip_F1 */
    192,  /* fpmax                ip_F0  ip_F1 */
    192,  /* fpmerge.ns           ip_F0  ip_F1 */
    192,  /* fpmerge.s            ip_F0  ip_F1 */
    192,  /* fpmerge.se           ip_F0  ip_F1 */
    192,  /* fpmin                ip_F0  ip_F1 */
    192,  /* fpms                 ip_F0  ip_F1 */
    192,  /* fpnma                ip_F0  ip_F1 */
    192,  /* fprcpa               ip_F0  ip_F1 */
    192,  /* fprsqrta             ip_F0  ip_F1 */
    192,  /* frcpa                ip_F0  ip_F1 */
    192,  /* frsqrta              ip_F0  ip_F1 */
    192,  /* fselect              ip_F0  ip_F1 */
    192,  /* fsetc                ip_F0  ip_F1 */
    192,  /* fswap                ip_F0  ip_F1 */
    192,  /* fswap.nl             ip_F0  ip_F1 */
    192,  /* fswap.nr             ip_F0  ip_F1 */
    192,  /* fsxt.l               ip_F0  ip_F1 */
    192,  /* fsxt.r               ip_F0  ip_F1 */
      1,  /* fwb                  ip_M0 */
    192,  /* fxor                 ip_F0  ip_F1 */
      4,  /* getf.s               ip_M2 */
      4,  /* getf.d               ip_M2 */
      4,  /* getf.exp             ip_M2 */
      4,  /* getf.sig             ip_M2 */
      3,  /* invala               ip_M0  ip_M1 */
      3,  /* invala.e             ip_M0  ip_M1 */
      3,  /* invala_f.e           ip_M0  ip_M1 */
      4,  /* itc.i                ip_M2 */
      4,  /* itc.d                ip_M2 */
      4,  /* itr.i                ip_M2 */
      4,  /* itr.d                ip_M2 */
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
     15,  /* ldfs                 ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldfs_r               ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldfs_i               ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldfd                 ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldfd_r               ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldfd_i               ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldfe                 ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldfe_r               ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldfe_i               ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldf8                 ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldf8_r               ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldf8_i               ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldf.fill             ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldf_r.fill           ip_M0  ip_M1  ip_M2  ip_M3 */
     15,  /* ldf_i.fill           ip_M0  ip_M1  ip_M2  ip_M3 */
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
      1,  /* mf                   ip_M0 */
      1,  /* mf.a                 ip_M0 */
     48,  /* mix1.l               ip_I0  ip_I1 */
     48,  /* mix1.r               ip_I0  ip_I1 */
     48,  /* mix2.l               ip_I0  ip_I1 */
     48,  /* mix2.r               ip_I0  ip_I1 */
     48,  /* mix4.l               ip_I0  ip_I1 */
     48,  /* mix4.r               ip_I0  ip_I1 */
     16,  /* mov_f_ar.i           ip_I0 */
     16,  /* mov_t_ar_r.i         ip_I0 */
     16,  /* mov_t_ar_i.i         ip_I0 */
      4,  /* mov_f_ar.m           ip_M2 */
      4,  /* mov_t_ar_r.m         ip_M2 */
      4,  /* mov_t_ar_i.m         ip_M2 */
     16,  /* mov_f_br             ip_I0 */
     16,  /* mov_t_br_i           ip_I0 */
     16,  /* mov_t_br.ret         ip_I0 */
      4,  /* mov_t_cr             ip_M2 */
      4,  /* mov_f_cr             ip_M2 */
      4,  /* mov_f_cpuid          ip_M2 */
      4,  /* mov_t_dbr            ip_M2 */
      4,  /* mov_f_dbr            ip_M2 */
      4,  /* mov_t_ibr            ip_M2 */
      4,  /* mov_f_ibr            ip_M2 */
      4,  /* mov_t_msr            ip_M2 */
      4,  /* mov_f_msr            ip_M2 */
      4,  /* mov_t_pkr            ip_M2 */
      4,  /* mov_f_pkr            ip_M2 */
      4,  /* mov_t_pmc            ip_M2 */
      4,  /* mov_f_pmc            ip_M2 */
      4,  /* mov_t_pmd            ip_M2 */
      4,  /* mov_f_pmd            ip_M2 */
      4,  /* mov_t_rr             ip_M2 */
      4,  /* mov_f_rr             ip_M2 */
     16,  /* mov_f_ip             ip_I0 */
     16,  /* mov_f_pr             ip_I0 */
     16,  /* mov_t_pr             ip_I0 */
     16,  /* mov_t_pr_i           ip_I0 */
      4,  /* mov_t_psr            ip_M2 */
      4,  /* mov_f_psr            ip_M2 */
      4,  /* mov_t_psrum          ip_M2 */
      4,  /* mov_f_psrum          ip_M2 */
     48,  /* movl                 ip_I0  ip_I1 */
     48,  /* mux1                 ip_I0  ip_I1 */
     48,  /* mux2                 ip_I0  ip_I1 */
     48,  /* nop.i                ip_I0  ip_I1 */
    1792,  /* nop.b                ip_B0  ip_B1  ip_B2 */
     15,  /* nop.m                ip_M0  ip_M1  ip_M2  ip_M3 */
    192,  /* nop.f                ip_F0  ip_F1 */
     48,  /* nop.x                ip_I0  ip_I1 */
     63,  /* or                   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* or_i                 ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     48,  /* pack2.sss            ip_I0  ip_I1 */
     48,  /* pack2.uss            ip_I0  ip_I1 */
     48,  /* pack4.sss            ip_I0  ip_I1 */
     63,  /* padd1                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* padd1.sss            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* padd1.uus            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* padd1.uuu            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* padd2                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* padd2.sss            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* padd2.uus            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* padd2.uuu            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* padd4                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pavg1                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pavg1.raz            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pavg2                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pavg2.raz            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pavgsub1             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pavgsub2             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pcmp1.eq             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pcmp1.gt             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pcmp2.eq             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pcmp2.gt             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pcmp4.eq             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* pcmp4.gt             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     48,  /* pmax1.u              ip_I0  ip_I1 */
     48,  /* pmax2                ip_I0  ip_I1 */
     48,  /* pmin1.u              ip_I0  ip_I1 */
     48,  /* pmin2                ip_I0  ip_I1 */
     16,  /* pmpy2.r              ip_I0 */
     16,  /* pmpy2.l              ip_I0 */
     16,  /* pmpyshr2             ip_I0 */
     16,  /* pmpyshr2.u           ip_I0 */
     16,  /* popcnt               ip_I0 */
      4,  /* probe.r              ip_M2 */
      4,  /* probe.w              ip_M2 */
      4,  /* probe_i.r            ip_M2 */
      4,  /* probe_i.w            ip_M2 */
      4,  /* probe.r.fault        ip_M2 */
      4,  /* probe.w.fault        ip_M2 */
      4,  /* probe.rw.fault       ip_M2 */
     48,  /* psad1                ip_I0  ip_I1 */
     48,  /* pshl2                ip_I0  ip_I1 */
     48,  /* pshl4                ip_I0  ip_I1 */
     48,  /* pshl2_i              ip_I0  ip_I1 */
     48,  /* pshl4_i              ip_I0  ip_I1 */
     63,  /* pshladd2             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     48,  /* pshr2                ip_I0  ip_I1 */
     48,  /* pshr2.u              ip_I0  ip_I1 */
     48,  /* pshr4                ip_I0  ip_I1 */
     48,  /* pshr4.u              ip_I0  ip_I1 */
     48,  /* pshr2_i              ip_I0  ip_I1 */
     48,  /* pshr2_i.u            ip_I0  ip_I1 */
     48,  /* pshr4_i              ip_I0  ip_I1 */
     48,  /* pshr4_i.u            ip_I0  ip_I1 */
     63,  /* pshradd2             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* psub1                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* psub2                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* psub4                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* psub1.sss            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* psub1.uus            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* psub1.uuu            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* psub2.sss            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* psub2.uus            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* psub2.uuu            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
      4,  /* ptc.e                ip_M2 */
      4,  /* ptc.g                ip_M2 */
      4,  /* ptc.ga               ip_M2 */
      4,  /* ptc.l                ip_M2 */
      4,  /* ptr.d                ip_M2 */
      4,  /* ptr.i                ip_M2 */
    1024,  /* rfi                  ip_B2 */
      4,  /* rsm                  ip_M2 */
      4,  /* rum                  ip_M2 */
     12,  /* setf.s               ip_M2  ip_M3 */
     12,  /* setf.d               ip_M2  ip_M3 */
     12,  /* setf.exp             ip_M2  ip_M3 */
     12,  /* setf.sig             ip_M2  ip_M3 */
     48,  /* shl                  ip_I0  ip_I1 */
     63,  /* shladd               ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* shladdp4             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     48,  /* shr                  ip_I0  ip_I1 */
     48,  /* shr.u                ip_I0  ip_I1 */
     16,  /* shrp                 ip_I0 */
      1,  /* srlz.i               ip_M0 */
      1,  /* srlz.d               ip_M0 */
      4,  /* ssm                  ip_M2 */
     12,  /* st1                  ip_M2  ip_M3 */
     12,  /* st1_i                ip_M2  ip_M3 */
     12,  /* st2                  ip_M2  ip_M3 */
     12,  /* st2_i                ip_M2  ip_M3 */
     12,  /* st4                  ip_M2  ip_M3 */
     12,  /* st4_i                ip_M2  ip_M3 */
     12,  /* st8                  ip_M2  ip_M3 */
     12,  /* st8_i                ip_M2  ip_M3 */
     12,  /* st8.spill            ip_M2  ip_M3 */
     12,  /* st8_i.spill          ip_M2  ip_M3 */
     12,  /* stfs                 ip_M2  ip_M3 */
     12,  /* stfs_i               ip_M2  ip_M3 */
     12,  /* stfd                 ip_M2  ip_M3 */
     12,  /* stfd_i               ip_M2  ip_M3 */
     12,  /* stfe                 ip_M2  ip_M3 */
     12,  /* stfe_i               ip_M2  ip_M3 */
     12,  /* stf8                 ip_M2  ip_M3 */
     12,  /* stf8_i               ip_M2  ip_M3 */
     12,  /* stf.spill            ip_M2  ip_M3 */
     12,  /* stf_i.spill          ip_M2  ip_M3 */
     63,  /* sub                  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* sub_1                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* sub_i                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
      4,  /* sum                  ip_M2 */
     48,  /* sxt1                 ip_I0  ip_I1 */
     48,  /* sxt2                 ip_I0  ip_I1 */
     48,  /* sxt4                 ip_I0  ip_I1 */
      1,  /* sync.i               ip_M0 */
      4,  /* tak                  ip_M2 */
     16,  /* tbit.z               ip_I0 */
     16,  /* tbit.z.unc           ip_I0 */
     16,  /* tbit.z.and           ip_I0 */
     16,  /* tbit.z.or            ip_I0 */
     16,  /* tbit.z.or.andcm      ip_I0 */
     16,  /* tbit.nz.and          ip_I0 */
     16,  /* tbit.nz.or           ip_I0 */
     16,  /* tbit.nz.or.andcm     ip_I0 */
      4,  /* thash                ip_M2 */
     16,  /* tnat.z               ip_I0 */
     16,  /* tnat.z.unc           ip_I0 */
     16,  /* tnat.z.and           ip_I0 */
     16,  /* tnat.z.or            ip_I0 */
     16,  /* tnat.z.or.andcm      ip_I0 */
     16,  /* tnat.nz.and          ip_I0 */
     16,  /* tnat.nz.or           ip_I0 */
     16,  /* tnat.nz.or.andcm     ip_I0 */
      4,  /* tpa                  ip_M2 */
      4,  /* ttag                 ip_M2 */
     48,  /* unpack1.l            ip_I0  ip_I1 */
     48,  /* unpack1.h            ip_I0  ip_I1 */
     48,  /* unpack2.l            ip_I0  ip_I1 */
     48,  /* unpack2.h            ip_I0  ip_I1 */
     48,  /* unpack4.l            ip_I0  ip_I1 */
     48,  /* unpack4.h            ip_I0  ip_I1 */
     12,  /* xchg1                ip_M2  ip_M3 */
     12,  /* xchg2                ip_M2  ip_M3 */
     12,  /* xchg4                ip_M2  ip_M3 */
     12,  /* xchg8                ip_M2  ip_M3 */
    192,  /* xma.l                ip_F0  ip_F1 */
    192,  /* xma.h                ip_F0  ip_F1 */
    192,  /* xma.hu               ip_F0  ip_F1 */
     63,  /* xor                  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* xor_i                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     48,  /* zxt1                 ip_I0  ip_I1 */
     48,  /* zxt2                 ip_I0  ip_I1 */
     48,  /* zxt4                 ip_I0  ip_I1 */
      4,  /* alloc                ip_M2 */
    1792,  /* br                   ip_B0  ip_B1  ip_B2 */
    1792,  /* br_r                 ip_B0  ip_B1  ip_B2 */
    1792,  /* brl                  ip_B0  ip_B1  ip_B2 */
     63,  /* cmp.eq.orcm          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.eq.andcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.eq.and.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ne               ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ne.unc           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ne.orcm          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ne.andcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ne.and.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.le               ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.le.unc           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gt               ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gt.unc           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ge               ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ge.unc           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.leu              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.leu.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gtu              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gtu.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.geu              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.geu.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.lt.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.lt.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.lt.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.le.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.le.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.le.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.gt.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.gt.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.gt.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.ge.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.ge.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z1.ge.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.lt.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.lt.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.lt.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.le.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.le.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.le.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.gt.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.gt.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.gt.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.ge.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.ge.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.ge.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.lt.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.lt.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.lt.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.le.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.le.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.le.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.gt.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.gt.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.gt.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.ge.and        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.ge.or         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_z2.ge.or.andcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.eq.orcm        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.eq.andcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.eq.and.orcm    ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ne             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ne.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ne.orcm        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ne.andcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ne.and.orcm    ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.le             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.le.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.gt             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.gt.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ge             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.ge.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.leu            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.leu.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.gtu            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.gtu.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.geu            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp_i.geu.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.eq.orcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.eq.andcm        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.eq.and.orcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ne              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ne.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ne.orcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ne.andcm        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ne.and.orcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.le              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.le.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gt              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gt.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ge              ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ge.unc          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.leu             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.leu.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gtu             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gtu.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.geu             ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.geu.unc         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.lt.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.lt.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.lt.and.orcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.le.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.le.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.le.and.orcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.gt.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.gt.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.gt.and.orcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.ge.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.ge.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z1.ge.and.orcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.lt.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.lt.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.lt.and.orcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.le.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.le.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.le.and.orcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.gt.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.gt.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.gt.and.orcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.ge.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.ge.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.ge.and.orcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.lt.and       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.lt.or        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.lt.or.andcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.le.and       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.le.or        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.le.or.andcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.gt.and       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.gt.or        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.gt.or.andcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.ge.and       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.ge.or        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_z2.ge.or.andcm  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.eq.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.eq.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.eq.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ne            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ne.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ne.orcm       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ne.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ne.and.orcm   ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.le            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.le.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.gt            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.gt.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ge            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.ge.unc        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.leu           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.leu.unc       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.gtu           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.gtu.unc       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.geu           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4_i.geu.unc       ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
    192,  /* fabs                 ip_F0  ip_F1 */
    192,  /* fadd                 ip_F0  ip_F1 */
    192,  /* fadd.s               ip_F0  ip_F1 */
    192,  /* fadd.d               ip_F0  ip_F1 */
    192,  /* fclass.nm            ip_F0  ip_F1 */
    192,  /* fclass.nm.unc        ip_F0  ip_F1 */
    192,  /* fcmp.gt              ip_F0  ip_F1 */
    192,  /* fcmp.gt.unc          ip_F0  ip_F1 */
    192,  /* fcmp.ge              ip_F0  ip_F1 */
    192,  /* fcmp.ge.unc          ip_F0  ip_F1 */
    192,  /* fcmp.neq             ip_F0  ip_F1 */
    192,  /* fcmp.neq.unc         ip_F0  ip_F1 */
    192,  /* fcmp.nlt             ip_F0  ip_F1 */
    192,  /* fcmp.nlt.unc         ip_F0  ip_F1 */
    192,  /* fcmp.nle             ip_F0  ip_F1 */
    192,  /* fcmp.nle.unc         ip_F0  ip_F1 */
    192,  /* fcmp.ngt             ip_F0  ip_F1 */
    192,  /* fcmp.ngt.unc         ip_F0  ip_F1 */
    192,  /* fcmp.nge             ip_F0  ip_F1 */
    192,  /* fcmp.nge.unc         ip_F0  ip_F1 */
    192,  /* fcmp.ord             ip_F0  ip_F1 */
    192,  /* fcmp.ord.unc         ip_F0  ip_F1 */
    192,  /* fcvt.xuf             ip_F0  ip_F1 */
    192,  /* fcvt.xuf.s           ip_F0  ip_F1 */
    192,  /* fcvt.xuf.d           ip_F0  ip_F1 */
    192,  /* fmpy                 ip_F0  ip_F1 */
    192,  /* fmpy.s               ip_F0  ip_F1 */
    192,  /* fmpy.d               ip_F0  ip_F1 */
    192,  /* fneg                 ip_F0  ip_F1 */
    192,  /* fnegabs              ip_F0  ip_F1 */
    192,  /* fnmpy                ip_F0  ip_F1 */
    192,  /* fnmpy.s              ip_F0  ip_F1 */
    192,  /* fnmpy.d              ip_F0  ip_F1 */
    192,  /* fnorm                ip_F0  ip_F1 */
    192,  /* fnorm.s              ip_F0  ip_F1 */
    192,  /* fnorm.d              ip_F0  ip_F1 */
    192,  /* fpabs                ip_F0  ip_F1 */
    192,  /* fpcmp.gt             ip_F0  ip_F1 */
    192,  /* fpcmp.ge             ip_F0  ip_F1 */
    192,  /* fpcmp.ngt            ip_F0  ip_F1 */
    192,  /* fpcmp.nge            ip_F0  ip_F1 */
    192,  /* fpmpy                ip_F0  ip_F1 */
    192,  /* fpneg                ip_F0  ip_F1 */
    192,  /* fpnegabs             ip_F0  ip_F1 */
    192,  /* fpnmpy               ip_F0  ip_F1 */
    192,  /* fsub                 ip_F0  ip_F1 */
    192,  /* fsub.s               ip_F0  ip_F1 */
    192,  /* fsub.d               ip_F0  ip_F1 */
     16,  /* mov_t_br             ip_I0 */
    192,  /* mov_f                ip_F0  ip_F1 */
     63,  /* mov                  ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* mov_i                ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     16,  /* shl_i                ip_I0 */
     16,  /* shr_i                ip_I0 */
     16,  /* shr_i.u              ip_I0 */
     16,  /* tbit.nz              ip_I0 */
     16,  /* tbit.nz.unc          ip_I0 */
     16,  /* tnat.nz              ip_I0 */
     16,  /* tnat.nz.unc          ip_I0 */
    192,  /* xma.lu               ip_F0  ip_F1 */
    192,  /* xmpy.l               ip_F0  ip_F1 */
    192,  /* xmpy.lu              ip_F0  ip_F1 */
    192,  /* xmpy.h               ip_F0  ip_F1 */
    192,  /* xmpy.hu              ip_F0  ip_F1 */
      0,  /* break               */
      0,  /* chk.s               */
     63,  /* cmp.lt.and           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.lt.or            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.lt.or.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.le.and           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.le.or            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.le.or.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gt.and           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gt.or            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gt.or.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ge.and           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ge.or            ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ge.or.andcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.lt.orcm          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.lt.andcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.lt.and.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.le.orcm          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.le.andcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.le.and.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gt.orcm          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gt.andcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.gt.and.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ge.orcm          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ge.andcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp.ge.and.orcm      ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.lt.and          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.lt.or           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.lt.or.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.le.and          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.le.or           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.le.or.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gt.and          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gt.or           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gt.or.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ge.and          ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ge.or           ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ge.or.andcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.lt.orcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.lt.andcm        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.lt.and.orcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.le.orcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.le.andcm        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.le.and.orcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gt.orcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gt.andcm        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.gt.and.orcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ge.orcm         ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ge.andcm        ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
     63,  /* cmp4.ge.and.orcm     ip_M0  ip_M1  ip_M2  ip_M3  ip_I0  ip_I1 */
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
INT PROCESSOR_Version=2;
