#include "errors.h"
#include "targ_isa_lits.h"
#include "targ_isa_bundle.h"
#include "targ_isa_registers.h"
#include "targ_issue_port.h"
#include "targ_isa_operands.h"
#include "targ_bypass_mck.h"


SCHED_INFO_CLASS TARG_Sched_Info_Class(TOP top, BOOL is_chk)
{
  switch (top) {
  case TOP_add:
  case TOP_add_1:
  case TOP_adds:
  case TOP_addl:
    return SIC_IALU;
  case TOP_addp4:
  case TOP_addp4_i:
    return SIC_PNT;
  case TOP_alloc_3:
    return SIC_SYST_M0;
  case TOP_and:
  case TOP_and_i:
  case TOP_andcm:
  case TOP_andcm_i:
    return SIC_ILOG;
  case TOP_br_cond:
  case TOP_br_r_cond:
  case TOP_br_call:
  case TOP_br_r_call:
  case TOP_br_ret:
  case TOP_br_ia:
    return SIC_BR;
  case TOP_br_cloop:
  case TOP_br_ctop:
  case TOP_br_cexit:
  case TOP_br_wtop:
  case TOP_br_wexit:
    return SIC_BR_B2;
  case TOP_break_i:
    return SIC_NOP_I;
  case TOP_break_b:
    return SIC_NOP_B;
  case TOP_break_m:
    return SIC_NOP_M;
  case TOP_break_f:
    return SIC_NOP_F;
  case TOP_break_x:
    return SIC_NOP_X;
  case TOP_brl_cond:
  case TOP_brl_call:
    return SIC_BR;
  case TOP_brp:
  case TOP_brp_r:
  case TOP_brp_ret:
    return SIC_BRP;
  case TOP_bsw_0:
  case TOP_bsw_1:
    return SIC_SYST_B2;
  case TOP_chk_s_i:
    return SIC_CHK_I;
  case TOP_chk_s_m:
  case TOP_chk_f_s:
    return SIC_CHK_M;
  case TOP_chk_a:
  case TOP_chk_f_a:
    return SIC_CHK_ALAT;
  case TOP_clrrrb:
  case TOP_clrrrb_pr:
    return SIC_RSE_B;
  case TOP_cmp_eq:
  case TOP_cmp_eq_unc:
  case TOP_cmp_eq_and:
  case TOP_cmp_eq_or:
  case TOP_cmp_eq_or_andcm:
  case TOP_cmp_ne_and:
  case TOP_cmp_ne_or:
  case TOP_cmp_ne_or_andcm:
  case TOP_cmp_lt:
  case TOP_cmp_lt_unc:
  case TOP_cmp_ltu:
  case TOP_cmp_ltu_unc:
  case TOP_cmp_z1_lt_and:
  case TOP_cmp_z1_lt_or:
  case TOP_cmp_z1_lt_or_andcm:
  case TOP_cmp_z1_le_and:
  case TOP_cmp_z1_le_or:
  case TOP_cmp_z1_le_or_andcm:
  case TOP_cmp_z1_gt_and:
  case TOP_cmp_z1_gt_or:
  case TOP_cmp_z1_gt_or_andcm:
  case TOP_cmp_z1_ge_and:
  case TOP_cmp_z1_ge_or:
  case TOP_cmp_z1_ge_or_andcm:
  case TOP_cmp_i_eq:
  case TOP_cmp_i_eq_unc:
  case TOP_cmp_i_eq_and:
  case TOP_cmp_i_eq_or:
  case TOP_cmp_i_eq_or_andcm:
  case TOP_cmp_i_ne_and:
  case TOP_cmp_i_ne_or:
  case TOP_cmp_i_ne_or_andcm:
  case TOP_cmp_i_lt:
  case TOP_cmp_i_lt_unc:
  case TOP_cmp_i_ltu:
  case TOP_cmp_i_ltu_unc:
  case TOP_cmp4_eq:
  case TOP_cmp4_eq_unc:
  case TOP_cmp4_eq_and:
  case TOP_cmp4_eq_or:
  case TOP_cmp4_eq_or_andcm:
  case TOP_cmp4_ne_and:
  case TOP_cmp4_ne_or:
  case TOP_cmp4_ne_or_andcm:
  case TOP_cmp4_lt:
  case TOP_cmp4_lt_unc:
  case TOP_cmp4_ltu:
  case TOP_cmp4_ltu_unc:
  case TOP_cmp4_z1_lt_and:
  case TOP_cmp4_z1_lt_or:
  case TOP_cmp4_z1_lt_or_andcm:
  case TOP_cmp4_z1_le_and:
  case TOP_cmp4_z1_le_or:
  case TOP_cmp4_z1_le_or_andcm:
  case TOP_cmp4_z1_gt_and:
  case TOP_cmp4_z1_gt_or:
  case TOP_cmp4_z1_gt_or_andcm:
  case TOP_cmp4_z1_ge_and:
  case TOP_cmp4_z1_ge_or:
  case TOP_cmp4_z1_ge_or_andcm:
  case TOP_cmp4_i_eq:
  case TOP_cmp4_i_eq_unc:
  case TOP_cmp4_i_eq_and:
  case TOP_cmp4_i_eq_or:
  case TOP_cmp4_i_eq_or_andcm:
  case TOP_cmp4_i_ne_and:
  case TOP_cmp4_i_ne_or:
  case TOP_cmp4_i_ne_or_andcm:
  case TOP_cmp4_i_lt:
  case TOP_cmp4_i_lt_unc:
  case TOP_cmp4_i_ltu:
  case TOP_cmp4_i_ltu_unc:
    return SIC_ICMP;
  case TOP_cmpxchg1:
  case TOP_cmpxchg2:
  case TOP_cmpxchg4:
  case TOP_cmpxchg8:
    return SIC_SEM;
  case TOP_cover:
    return SIC_RSE_B;
  case TOP_czx1_l:
  case TOP_czx1_r:
  case TOP_czx2_l:
  case TOP_czx2_r:
    return SIC_XTD;
  case TOP_dep:
  case TOP_dep_z:
  case TOP_dep_i:
  case TOP_dep_i_z:
    return SIC_ISHF;
  case TOP_epc:
    return SIC_SYST_B;
  case TOP_extr:
  case TOP_extr_u:
    return SIC_ISHF;
  case TOP_famax:
  case TOP_famin:
  case TOP_fand:
  case TOP_fandcm:
    return SIC_FMISC;
  case TOP_fc:
    return SIC_SYST_M0;
  case TOP_fchkf:
    return SIC_FOTHER;
  case TOP_fclass_m:
  case TOP_fclass_m_unc:
    return SIC_FCMP;
  case TOP_fclrf:
    return SIC_FOTHER;
  case TOP_fcmp_eq:
  case TOP_fcmp_eq_unc:
  case TOP_fcmp_lt:
  case TOP_fcmp_lt_unc:
  case TOP_fcmp_le:
  case TOP_fcmp_le_unc:
  case TOP_fcmp_unord:
  case TOP_fcmp_unord_unc:
    return SIC_FCMP;
  case TOP_fcvt_fx:
  case TOP_fcvt_fx_trunc:
  case TOP_fcvt_fxu:
  case TOP_fcvt_fxu_trunc:
  case TOP_fcvt_xf:
    return SIC_FCVTFX;
  case TOP_fetchadd4:
  case TOP_fetchadd8:
    return SIC_SEM;
  case TOP_flushrs:
    return SIC_RSE_M;
  case TOP_fma:
  case TOP_fma_s:
  case TOP_fma_d:
    return SIC_FMAC;
  case TOP_fmax:
  case TOP_fmerge_ns:
  case TOP_fmerge_s:
  case TOP_fmerge_se:
  case TOP_fmin:
  case TOP_fmix_l:
  case TOP_fmix_r:
  case TOP_fmix_lr:
    return SIC_FMISC;
  case TOP_fms:
  case TOP_fms_s:
  case TOP_fms_d:
  case TOP_fnma:
  case TOP_fnma_s:
  case TOP_fnma_d:
    return SIC_FMAC;
  case TOP_for:
  case TOP_fpack:
    return SIC_FMISC;
  case TOP_fpamax:
  case TOP_fpamin:
  case TOP_fpcmp_eq:
  case TOP_fpcmp_lt:
  case TOP_fpcmp_le:
  case TOP_fpcmp_unord:
  case TOP_fpcmp_neq:
  case TOP_fpcmp_nlt:
  case TOP_fpcmp_nle:
  case TOP_fpcmp_ord:
    return SIC_SFMISC;
  case TOP_fpcvt_fx:
  case TOP_fpcvt_fx_trunc:
  case TOP_fpcvt_fxu:
  case TOP_fpcvt_fxu_trunc:
    return SIC_SFCVTFX;
  case TOP_fpma:
    return SIC_SFMAC;
  case TOP_fpmax:
  case TOP_fpmerge_ns:
  case TOP_fpmerge_s:
    return SIC_SFMISC;
  case TOP_fpmerge_se:
    return SIC_SFMERGESE;
  case TOP_fpmin:
    return SIC_SFMISC;
  case TOP_fpms:
  case TOP_fpnma:
    return SIC_SFMAC;
  case TOP_fprcpa:
  case TOP_fprsqrta:
    return SIC_SFMISC;
  case TOP_frcpa:
  case TOP_frsqrta:
  case TOP_fselect:
    return SIC_FMISC;
  case TOP_fsetc:
    return SIC_FOTHER;
  case TOP_fswap:
  case TOP_fswap_nl:
  case TOP_fswap_nr:
  case TOP_fsxt_l:
  case TOP_fsxt_r:
    return SIC_FMISC;
  case TOP_fwb:
    return SIC_SYST_M;
  case TOP_fxor:
    return SIC_FMISC;
  case TOP_getf_s:
  case TOP_getf_d:
  case TOP_getf_exp:
  case TOP_getf_sig:
    return SIC_FRFR;
  case TOP_invala:
  case TOP_invala_e:
  case TOP_invala_f_e:
    return SIC_SYST_M;
  case TOP_itc_i:
  case TOP_itc_d:
  case TOP_itr_i:
  case TOP_itr_d:
    return SIC_SYST_M0;
  case TOP_ld1:
  case TOP_ld1_r:
  case TOP_ld1_i:
  case TOP_ld2:
  case TOP_ld2_r:
  case TOP_ld2_i:
  case TOP_ld4:
  case TOP_ld4_r:
  case TOP_ld4_i:
  case TOP_ld8:
  case TOP_ld8_r:
  case TOP_ld8_i:
  case TOP_ld8_fill:
  case TOP_ld8_r_fill:
  case TOP_ld8_i_fill:
    return is_chk ? SIC_CLD : SIC_LD;
  case TOP_ldfs:
  case TOP_ldfs_r:
  case TOP_ldfs_i:
  case TOP_ldfd:
  case TOP_ldfd_r:
  case TOP_ldfd_i:
  case TOP_ldfe:
  case TOP_ldfe_r:
  case TOP_ldfe_i:
  case TOP_ldf8:
  case TOP_ldf8_r:
  case TOP_ldf8_i:
  case TOP_ldf_fill:
  case TOP_ldf_r_fill:
  case TOP_ldf_i_fill:
    return is_chk ? SIC_FCLD : SIC_FLD;
  case TOP_ldfps:
  case TOP_ldfps_i:
  case TOP_ldfpd:
  case TOP_ldfpd_i:
  case TOP_ldfp8:
  case TOP_ldfp8_i:
    return is_chk ? SIC_FCLD : SIC_FLDP;
  case TOP_lfetch:
  case TOP_lfetch_excl:
  case TOP_lfetch_fault:
  case TOP_lfetch_fault_excl:
  case TOP_lfetch_r:
  case TOP_lfetch_r_excl:
  case TOP_lfetch_r_fault:
  case TOP_lfetch_r_fault_excl:
  case TOP_lfetch_i:
  case TOP_lfetch_i_excl:
  case TOP_lfetch_i_fault:
  case TOP_lfetch_i_fault_excl:
    return SIC_LFETCH;
  case TOP_loadrs:
    return SIC_RSE_M;
  case TOP_mf:
    return SIC_SYST_M;
  case TOP_mf_a:
    return SIC_SYST_M0;
  case TOP_mix1_l:
  case TOP_mix1_r:
  case TOP_mix2_l:
  case TOP_mix2_r:
  case TOP_mix4_l:
  case TOP_mix4_r:
    return SIC_MMSHF;
  case TOP_mov_f_ar_i:
    return SIC_FRAR_I;
  case TOP_mov_t_ar_r_i:
  case TOP_mov_t_ar_i_i:
    return SIC_TOAR_I;
  case TOP_mov_f_ar_m:
    return SIC_FRAR_M;
  case TOP_mov_t_ar_r_m:
  case TOP_mov_t_ar_i_m:
    return SIC_TOAR_M;
  case TOP_mov_f_br:
    return SIC_FRBR;
  case TOP_mov_t_br_i:
  case TOP_mov_t_br_ret:
    return SIC_TOBR;
  case TOP_mov_t_cr:
    return SIC_TOCR;
  case TOP_mov_f_cr:
    return SIC_FRCR;
  case TOP_mov_f_cpuid:
  case TOP_mov_t_dbr:
  case TOP_mov_f_dbr:
  case TOP_mov_t_ibr:
  case TOP_mov_f_ibr:
  case TOP_mov_t_msr:
  case TOP_mov_f_msr:
  case TOP_mov_t_pkr:
  case TOP_mov_f_pkr:
  case TOP_mov_t_pmc:
  case TOP_mov_f_pmc:
  case TOP_mov_t_pmd:
  case TOP_mov_f_pmd:
  case TOP_mov_t_rr:
  case TOP_mov_f_rr:
    return SIC_SYST_M0;
  case TOP_mov_f_ip:
    return SIC_FRIP;
  case TOP_mov_f_pr:
    return SIC_FRPR;
  case TOP_mov_t_pr:
  case TOP_mov_t_pr_i:
    return SIC_TOPR;
  case TOP_mov_t_psr:
  case TOP_mov_f_psr:
  case TOP_mov_t_psrum:
  case TOP_mov_f_psrum:
    return SIC_SYST_M0;
  case TOP_movl:
    return SIC_LONG_I;
  case TOP_mux1:
  case TOP_mux2:
    return SIC_MMSHF;
  case TOP_nop_i:
    return SIC_NOP_I;
  case TOP_nop_b:
    return SIC_NOP_B;
  case TOP_nop_m:
    return SIC_NOP_M;
  case TOP_nop_f:
    return SIC_NOP_F;
  case TOP_nop_x:
    return SIC_NOP_X;
  case TOP_or:
  case TOP_or_i:
    return SIC_ILOG;
  case TOP_pack2_sss:
  case TOP_pack2_uss:
  case TOP_pack4_sss:
    return SIC_MMSHF;
  case TOP_padd1:
  case TOP_padd1_sss:
  case TOP_padd1_uus:
  case TOP_padd1_uuu:
  case TOP_padd2:
  case TOP_padd2_sss:
  case TOP_padd2_uus:
  case TOP_padd2_uuu:
  case TOP_padd4:
  case TOP_pavg1:
  case TOP_pavg1_raz:
  case TOP_pavg2:
  case TOP_pavg2_raz:
  case TOP_pavgsub1:
  case TOP_pavgsub2:
  case TOP_pcmp1_eq:
  case TOP_pcmp1_gt:
  case TOP_pcmp2_eq:
  case TOP_pcmp2_gt:
  case TOP_pcmp4_eq:
  case TOP_pcmp4_gt:
    return SIC_MMALU_A;
  case TOP_pmax1_u:
  case TOP_pmax2:
  case TOP_pmin1_u:
  case TOP_pmin2:
    return SIC_MMALU_I;
  case TOP_pmpy2_r:
  case TOP_pmpy2_l:
  case TOP_pmpyshr2:
  case TOP_pmpyshr2_u:
  case TOP_popcnt:
    return SIC_MMMUL;
  case TOP_probe_r:
  case TOP_probe_w:
  case TOP_probe_i_r:
  case TOP_probe_i_w:
  case TOP_probe_r_fault:
  case TOP_probe_w_fault:
  case TOP_probe_rw_fault:
    return SIC_SYST_M0;
  case TOP_psad1:
    return SIC_MMALU_I;
  case TOP_pshl2:
  case TOP_pshl4:
  case TOP_pshl2_i:
  case TOP_pshl4_i:
    return SIC_MMSHF;
  case TOP_pshladd2:
    return SIC_MMALU_A;
  case TOP_pshr2:
  case TOP_pshr2_u:
  case TOP_pshr4:
  case TOP_pshr4_u:
  case TOP_pshr2_i:
  case TOP_pshr2_i_u:
  case TOP_pshr4_i:
  case TOP_pshr4_i_u:
    return SIC_MMSHF;
  case TOP_pshradd2:
  case TOP_psub1:
  case TOP_psub2:
  case TOP_psub4:
  case TOP_psub1_sss:
  case TOP_psub1_uus:
  case TOP_psub1_uuu:
  case TOP_psub2_sss:
  case TOP_psub2_uus:
  case TOP_psub2_uuu:
    return SIC_MMALU_A;
  case TOP_ptc_e:
  case TOP_ptc_g:
  case TOP_ptc_ga:
  case TOP_ptc_l:
  case TOP_ptr_d:
  case TOP_ptr_i:
    return SIC_SYST_M0;
  case TOP_rfi:
    return SIC_SYST_B2;
  case TOP_rsm:
  case TOP_rum:
    return SIC_SYST_M0;
  case TOP_setf_s:
  case TOP_setf_d:
  case TOP_setf_exp:
  case TOP_setf_sig:
    return SIC_TOFR;
  case TOP_shl:
    return SIC_MMSHF;
  case TOP_shladd:
    return SIC_IALU;
  case TOP_shladdp4:
    return SIC_PNT;
  case TOP_shr:
  case TOP_shr_u:
    return SIC_MMSHF;
  case TOP_shrp:
    return SIC_ISHF;
  case TOP_srlz_i:
  case TOP_srlz_d:
    return SIC_SYST_M;
  case TOP_ssm:
    return SIC_SYST_M0;
  case TOP_st1:
  case TOP_st1_i:
  case TOP_st2:
  case TOP_st2_i:
  case TOP_st4:
  case TOP_st4_i:
  case TOP_st8:
  case TOP_st8_i:
  case TOP_st8_spill:
  case TOP_st8_i_spill:
    return SIC_ST;
  case TOP_stfs:
  case TOP_stfs_i:
  case TOP_stfd:
  case TOP_stfd_i:
  case TOP_stfe:
  case TOP_stfe_i:
  case TOP_stf8:
  case TOP_stf8_i:
  case TOP_stf_spill:
  case TOP_stf_i_spill:
    return SIC_STF;
  case TOP_sub:
  case TOP_sub_1:
  case TOP_sub_i:
    return SIC_IALU;
  case TOP_sum:
    return SIC_SYST_M0;
  case TOP_sxt1:
  case TOP_sxt2:
  case TOP_sxt4:
    return SIC_XTD;
  case TOP_sync_i:
    return SIC_SYST_M;
  case TOP_tak:
    return SIC_SYST_M0;
  case TOP_tbit_z:
  case TOP_tbit_z_unc:
  case TOP_tbit_z_and:
  case TOP_tbit_z_or:
  case TOP_tbit_z_or_andcm:
  case TOP_tbit_nz_and:
  case TOP_tbit_nz_or:
  case TOP_tbit_nz_or_andcm:
    return SIC_TBIT;
  case TOP_thash:
    return SIC_SYST_M0;
  case TOP_tnat_z:
  case TOP_tnat_z_unc:
  case TOP_tnat_z_and:
  case TOP_tnat_z_or:
  case TOP_tnat_z_or_andcm:
  case TOP_tnat_nz_and:
  case TOP_tnat_nz_or:
  case TOP_tnat_nz_or_andcm:
    return SIC_TBIT;
  case TOP_tpa:
  case TOP_ttag:
    return SIC_SYST_M0;
  case TOP_unpack1_l:
  case TOP_unpack1_h:
  case TOP_unpack2_l:
  case TOP_unpack2_h:
  case TOP_unpack4_l:
  case TOP_unpack4_h:
    return SIC_MMSHF;
  case TOP_xchg1:
  case TOP_xchg2:
  case TOP_xchg4:
  case TOP_xchg8:
    return SIC_SEM;
  case TOP_xma_l:
  case TOP_xma_h:
  case TOP_xma_hu:
    return SIC_XMA;
  case TOP_xor:
  case TOP_xor_i:
    return SIC_ILOG;
  case TOP_zxt1:
  case TOP_zxt2:
  case TOP_zxt4:
    return SIC_XTD;
  case TOP_alloc:
    return SIC_SYST_M0;
  case TOP_br:
  case TOP_br_r:
  case TOP_brl:
    return SIC_BR;
  case TOP_cmp_eq_orcm:
  case TOP_cmp_eq_andcm:
  case TOP_cmp_eq_and_orcm:
  case TOP_cmp_ne:
  case TOP_cmp_ne_unc:
  case TOP_cmp_ne_orcm:
  case TOP_cmp_ne_andcm:
  case TOP_cmp_ne_and_orcm:
  case TOP_cmp_le:
  case TOP_cmp_le_unc:
  case TOP_cmp_gt:
  case TOP_cmp_gt_unc:
  case TOP_cmp_ge:
  case TOP_cmp_ge_unc:
  case TOP_cmp_leu:
  case TOP_cmp_leu_unc:
  case TOP_cmp_gtu:
  case TOP_cmp_gtu_unc:
  case TOP_cmp_geu:
  case TOP_cmp_geu_unc:
  case TOP_cmp_z1_lt_orcm:
  case TOP_cmp_z1_lt_andcm:
  case TOP_cmp_z1_lt_and_orcm:
  case TOP_cmp_z1_le_orcm:
  case TOP_cmp_z1_le_andcm:
  case TOP_cmp_z1_le_and_orcm:
  case TOP_cmp_z1_gt_orcm:
  case TOP_cmp_z1_gt_andcm:
  case TOP_cmp_z1_gt_and_orcm:
  case TOP_cmp_z1_ge_orcm:
  case TOP_cmp_z1_ge_andcm:
  case TOP_cmp_z1_ge_and_orcm:
  case TOP_cmp_z2_lt_orcm:
  case TOP_cmp_z2_lt_andcm:
  case TOP_cmp_z2_lt_and_orcm:
  case TOP_cmp_z2_le_orcm:
  case TOP_cmp_z2_le_andcm:
  case TOP_cmp_z2_le_and_orcm:
  case TOP_cmp_z2_gt_orcm:
  case TOP_cmp_z2_gt_andcm:
  case TOP_cmp_z2_gt_and_orcm:
  case TOP_cmp_z2_ge_orcm:
  case TOP_cmp_z2_ge_andcm:
  case TOP_cmp_z2_ge_and_orcm:
  case TOP_cmp_z2_lt_and:
  case TOP_cmp_z2_lt_or:
  case TOP_cmp_z2_lt_or_andcm:
  case TOP_cmp_z2_le_and:
  case TOP_cmp_z2_le_or:
  case TOP_cmp_z2_le_or_andcm:
  case TOP_cmp_z2_gt_and:
  case TOP_cmp_z2_gt_or:
  case TOP_cmp_z2_gt_or_andcm:
  case TOP_cmp_z2_ge_and:
  case TOP_cmp_z2_ge_or:
  case TOP_cmp_z2_ge_or_andcm:
  case TOP_cmp_i_eq_orcm:
  case TOP_cmp_i_eq_andcm:
  case TOP_cmp_i_eq_and_orcm:
  case TOP_cmp_i_ne:
  case TOP_cmp_i_ne_unc:
  case TOP_cmp_i_ne_orcm:
  case TOP_cmp_i_ne_andcm:
  case TOP_cmp_i_ne_and_orcm:
  case TOP_cmp_i_le:
  case TOP_cmp_i_le_unc:
  case TOP_cmp_i_gt:
  case TOP_cmp_i_gt_unc:
  case TOP_cmp_i_ge:
  case TOP_cmp_i_ge_unc:
  case TOP_cmp_i_leu:
  case TOP_cmp_i_leu_unc:
  case TOP_cmp_i_gtu:
  case TOP_cmp_i_gtu_unc:
  case TOP_cmp_i_geu:
  case TOP_cmp_i_geu_unc:
  case TOP_cmp4_eq_orcm:
  case TOP_cmp4_eq_andcm:
  case TOP_cmp4_eq_and_orcm:
  case TOP_cmp4_ne:
  case TOP_cmp4_ne_unc:
  case TOP_cmp4_ne_orcm:
  case TOP_cmp4_ne_andcm:
  case TOP_cmp4_ne_and_orcm:
  case TOP_cmp4_le:
  case TOP_cmp4_le_unc:
  case TOP_cmp4_gt:
  case TOP_cmp4_gt_unc:
  case TOP_cmp4_ge:
  case TOP_cmp4_ge_unc:
  case TOP_cmp4_leu:
  case TOP_cmp4_leu_unc:
  case TOP_cmp4_gtu:
  case TOP_cmp4_gtu_unc:
  case TOP_cmp4_geu:
  case TOP_cmp4_geu_unc:
  case TOP_cmp4_z1_lt_orcm:
  case TOP_cmp4_z1_lt_andcm:
  case TOP_cmp4_z1_lt_and_orcm:
  case TOP_cmp4_z1_le_orcm:
  case TOP_cmp4_z1_le_andcm:
  case TOP_cmp4_z1_le_and_orcm:
  case TOP_cmp4_z1_gt_orcm:
  case TOP_cmp4_z1_gt_andcm:
  case TOP_cmp4_z1_gt_and_orcm:
  case TOP_cmp4_z1_ge_orcm:
  case TOP_cmp4_z1_ge_andcm:
  case TOP_cmp4_z1_ge_and_orcm:
  case TOP_cmp4_z2_lt_orcm:
  case TOP_cmp4_z2_lt_andcm:
  case TOP_cmp4_z2_lt_and_orcm:
  case TOP_cmp4_z2_le_orcm:
  case TOP_cmp4_z2_le_andcm:
  case TOP_cmp4_z2_le_and_orcm:
  case TOP_cmp4_z2_gt_orcm:
  case TOP_cmp4_z2_gt_andcm:
  case TOP_cmp4_z2_gt_and_orcm:
  case TOP_cmp4_z2_ge_orcm:
  case TOP_cmp4_z2_ge_andcm:
  case TOP_cmp4_z2_ge_and_orcm:
  case TOP_cmp4_z2_lt_and:
  case TOP_cmp4_z2_lt_or:
  case TOP_cmp4_z2_lt_or_andcm:
  case TOP_cmp4_z2_le_and:
  case TOP_cmp4_z2_le_or:
  case TOP_cmp4_z2_le_or_andcm:
  case TOP_cmp4_z2_gt_and:
  case TOP_cmp4_z2_gt_or:
  case TOP_cmp4_z2_gt_or_andcm:
  case TOP_cmp4_z2_ge_and:
  case TOP_cmp4_z2_ge_or:
  case TOP_cmp4_z2_ge_or_andcm:
  case TOP_cmp4_i_eq_orcm:
  case TOP_cmp4_i_eq_andcm:
  case TOP_cmp4_i_eq_and_orcm:
  case TOP_cmp4_i_ne:
  case TOP_cmp4_i_ne_unc:
  case TOP_cmp4_i_ne_orcm:
  case TOP_cmp4_i_ne_andcm:
  case TOP_cmp4_i_ne_and_orcm:
  case TOP_cmp4_i_le:
  case TOP_cmp4_i_le_unc:
  case TOP_cmp4_i_gt:
  case TOP_cmp4_i_gt_unc:
  case TOP_cmp4_i_ge:
  case TOP_cmp4_i_ge_unc:
  case TOP_cmp4_i_leu:
  case TOP_cmp4_i_leu_unc:
  case TOP_cmp4_i_gtu:
  case TOP_cmp4_i_gtu_unc:
  case TOP_cmp4_i_geu:
  case TOP_cmp4_i_geu_unc:
    return SIC_ICMP;
  case TOP_fabs:
    return SIC_FMISC;
  case TOP_fadd:
  case TOP_fadd_s:
  case TOP_fadd_d:
    return SIC_FMAC;
  case TOP_fclass_nm:
  case TOP_fclass_nm_unc:
  case TOP_fcmp_gt:
  case TOP_fcmp_gt_unc:
  case TOP_fcmp_ge:
  case TOP_fcmp_ge_unc:
  case TOP_fcmp_neq:
  case TOP_fcmp_neq_unc:
  case TOP_fcmp_nlt:
  case TOP_fcmp_nlt_unc:
  case TOP_fcmp_nle:
  case TOP_fcmp_nle_unc:
  case TOP_fcmp_ngt:
  case TOP_fcmp_ngt_unc:
  case TOP_fcmp_nge:
  case TOP_fcmp_nge_unc:
  case TOP_fcmp_ord:
  case TOP_fcmp_ord_unc:
    return SIC_FCMP;
  case TOP_fcvt_xuf:
  case TOP_fcvt_xuf_s:
  case TOP_fcvt_xuf_d:
  case TOP_fmpy:
  case TOP_fmpy_s:
  case TOP_fmpy_d:
    return SIC_FMAC;
  case TOP_fneg:
  case TOP_fnegabs:
    return SIC_FMISC;
  case TOP_fnmpy:
  case TOP_fnmpy_s:
  case TOP_fnmpy_d:
  case TOP_fnorm:
  case TOP_fnorm_s:
  case TOP_fnorm_d:
    return SIC_FMAC;
  case TOP_fpabs:
  case TOP_fpcmp_gt:
  case TOP_fpcmp_ge:
  case TOP_fpcmp_ngt:
  case TOP_fpcmp_nge:
    return SIC_SFMISC;
  case TOP_fpmpy:
    return SIC_SFMAC;
  case TOP_fpneg:
  case TOP_fpnegabs:
    return SIC_SFMISC;
  case TOP_fpnmpy:
    return SIC_SFMAC;
  case TOP_fsub:
  case TOP_fsub_s:
  case TOP_fsub_d:
    return SIC_FMAC;
  case TOP_mov_t_br:
    return SIC_TOBR;
  case TOP_mov_f:
    return SIC_FMISC;
  case TOP_mov:
  case TOP_mov_i:
    return SIC_IALU;
  case TOP_shl_i:
  case TOP_shr_i:
  case TOP_shr_i_u:
    return SIC_ISHF;
  case TOP_tbit_nz:
  case TOP_tbit_nz_unc:
  case TOP_tnat_nz:
  case TOP_tnat_nz_unc:
    return SIC_TBIT;
  case TOP_xma_lu:
  case TOP_xmpy_l:
  case TOP_xmpy_lu:
  case TOP_xmpy_h:
  case TOP_xmpy_hu:
    return SIC_XMA;
  case TOP_break:
  case TOP_chk_s:
    return SIC_DUMMY;
  case TOP_cmp_lt_and:
  case TOP_cmp_lt_or:
  case TOP_cmp_lt_or_andcm:
  case TOP_cmp_le_and:
  case TOP_cmp_le_or:
  case TOP_cmp_le_or_andcm:
  case TOP_cmp_gt_and:
  case TOP_cmp_gt_or:
  case TOP_cmp_gt_or_andcm:
  case TOP_cmp_ge_and:
  case TOP_cmp_ge_or:
  case TOP_cmp_ge_or_andcm:
  case TOP_cmp_lt_orcm:
  case TOP_cmp_lt_andcm:
  case TOP_cmp_lt_and_orcm:
  case TOP_cmp_le_orcm:
  case TOP_cmp_le_andcm:
  case TOP_cmp_le_and_orcm:
  case TOP_cmp_gt_orcm:
  case TOP_cmp_gt_andcm:
  case TOP_cmp_gt_and_orcm:
  case TOP_cmp_ge_orcm:
  case TOP_cmp_ge_andcm:
  case TOP_cmp_ge_and_orcm:
  case TOP_cmp4_lt_and:
  case TOP_cmp4_lt_or:
  case TOP_cmp4_lt_or_andcm:
  case TOP_cmp4_le_and:
  case TOP_cmp4_le_or:
  case TOP_cmp4_le_or_andcm:
  case TOP_cmp4_gt_and:
  case TOP_cmp4_gt_or:
  case TOP_cmp4_gt_or_andcm:
  case TOP_cmp4_ge_and:
  case TOP_cmp4_ge_or:
  case TOP_cmp4_ge_or_andcm:
  case TOP_cmp4_lt_orcm:
  case TOP_cmp4_lt_andcm:
  case TOP_cmp4_lt_and_orcm:
  case TOP_cmp4_le_orcm:
  case TOP_cmp4_le_andcm:
  case TOP_cmp4_le_and_orcm:
  case TOP_cmp4_gt_orcm:
  case TOP_cmp4_gt_andcm:
  case TOP_cmp4_gt_and_orcm:
  case TOP_cmp4_ge_orcm:
  case TOP_cmp4_ge_andcm:
  case TOP_cmp4_ge_and_orcm:
    return SIC_ICMP;
  case TOP_mov_f_ar:
  case TOP_mov_t_ar_r:
  case TOP_mov_t_ar_i:
  case TOP_nop:
  case TOP_asm:
  case TOP_intrncall:
  case TOP_spadjust:
  case TOP_copy_br:
    return SIC_DUMMY;
  case TOP_begin_pregtn:
  case TOP_end_pregtn:
  case TOP_bwd_bar:
  case TOP_fwd_bar:
  case TOP_dfixup:
  case TOP_ffixup:
  case TOP_ifixup:
  case TOP_label:
  case TOP_noop:
    return SIC_UNKNOWN;
}

  FmtAssert(FALSE, ("no scheduling class for %s ", TOP_Name(top)));
  /*NOTREACHED*/
}
static void
Odd_Latency_TOAR_M(TOP pred_code, TOP succ_code, INT src_reg, INT dst_reg, INT *latency)
{
INT reg = dst_reg;switch (reg) {
  case 0:	// ar.k0
  case 1:	// ar.k1
  case 2:	// ar.k2
  case 3:	// ar.k3
  case 4:	// ar.k4
  case 5:	// ar.k5
  case 6:	// ar.k6
  case 7:	// ar.k7
  case 24:	// ar.eflag
  case 25:	// ar.csd
  case 26:	// ar.ssd
  case 27:	// ar.cflg
  case 30:	// ar.fdr
    *latency = 2;
     break;
  case 21:	// ar.fcr
  case 29:	// ar.fir
    *latency = 4;
     break;
  case 18:	// ar.bspstore
  case 32:	// ar.ccv
  case 36:	// ar.unat
    *latency = 5;
     break;
  case 40:	// ar.fpsr
  case 19:	// ar.rnat
    *latency = 9;
     break;
  case 28:	// ar.fsr
    *latency = 23;
     break;
  case 44:	// ar.itc
    *latency = 35;
     break;
}
}

static void
Odd_Latency_TOAR_I(TOP pred_code, TOP succ_code, INT src_reg, INT dst_reg, INT *latency)
{
INT reg = dst_reg;switch (reg) {
  case 64:	// ar.pfs
    *latency = 0;
     break;
}
}

static void
Odd_Latency_FRAR_M(TOP pred_code, TOP succ_code, INT src_reg, INT dst_reg, INT *latency)
{
INT reg = src_reg;switch (reg) {
  case 32:	// ar.ccv
  case 19:	// ar.rnat
  case 36:	// ar.unat
    *latency = 6;
     break;
  case 0:	// ar.k0
  case 1:	// ar.k1
  case 2:	// ar.k2
  case 3:	// ar.k3
  case 4:	// ar.k4
  case 5:	// ar.k5
  case 6:	// ar.k6
  case 7:	// ar.k7
  case 16:	// ar.rsc
  case 18:	// ar.bspstore
  case 17:	// ar.bsp
  case 24:	// ar.eflag
  case 25:	// ar.csd
  case 26:	// ar.ssd
  case 27:	// ar.cflg
  case 28:	// ar.fsr
  case 30:	// ar.fdr
  case 40:	// ar.fpsr
    *latency = 13;
     break;
  case 44:	// ar.itc
  case 29:	// ar.fir
  case 21:	// ar.fcr
    *latency = 38;
     break;
}
}

static void
Odd_Latency_FRAR_I(TOP pred_code, TOP succ_code, INT src_reg, INT dst_reg, INT *latency)
{
INT reg = src_reg;switch (reg) {
  case 64:	// ar.pfs
  case 65:	// ar.lc
  case 66:	// ar.ec
    *latency = 2;
     break;
}
}

static void
Odd_Latency_TOCR(TOP pred_code, TOP succ_code, INT src_reg, INT dst_reg, INT *latency)
{
INT reg = dst_reg;switch (reg) {
  case 0:	// cr.dcr
  case 17:	// cr.isr
  case 19:	// cr.iip
  case 20:	// cr.ifa
  case 21:	// cr.itir
  case 22:	// cr.iipa
    *latency = 5;
     break;
  case 16:	// cr.ipsr
  case 23:	// cr.ifs
  case 24:	// cr.iim
  case 25:	// cr.iha
    *latency = 10;
     break;
  case 1:	// cr.itm
  case 64:	// cr.lid
  case 66:	// cr.tpr
  case 72:	// cr.itv
  case 73:	// cr.pmv
  case 74:	// cr.cmcv
  case 80:	// cr.lrr0
  case 81:	// cr.lrr1
  case 67:	// cr.eoi
    *latency = 35;
     break;
}
}

static void
Odd_Latency_FRCR(TOP pred_code, TOP succ_code, INT src_reg, INT dst_reg, INT *latency)
{
INT reg = src_reg;switch (reg) {
  case 17:	// cr.isr
  case 19:	// cr.iip
  case 24:	// cr.iim
  case 2:	// cr.iva
  case 22:	// cr.iipa
    *latency = 2;
     break;
  case 20:	// cr.ifa
  case 16:	// cr.ipsr
  case 0:	// cr.dcr
  case 21:	// cr.itir
  case 23:	// cr.ifs
  case 25:	// cr.iha
  case 8:	// cr.pta
    *latency = 13;
     break;
  case 65:	// cr.ivr
  case 64:	// cr.lid
  case 66:	// cr.tpr
  case 72:	// cr.itv
  case 1:	// cr.itm
  case 73:	// cr.pmv
  case 74:	// cr.cmcv
  case 80:	// cr.lrr0
  case 81:	// cr.lrr1
  case 67:	// cr.eoi
  case 68:	// cr.irr0
  case 69:	// cr.irr1
  case 70:	// cr.irr2
  case 71:	// cr.irr3
    *latency = 38;
     break;
}
}

/* =============================================================
 *
 * TARG_Adjust_Latency
 *
 * See interface description
 *
 * =============================================================
 */
void
TARG_Adjust_Latency(TOP pred_code, TOP succ_code, INT src_reg, INT dst_reg,
                     INT opnd, INT *latency, BOOL pred_is_chk, BOOL succ_is_chk)
{
  const SCHED_INFO_CLASS pred_class = TARG_Sched_Info_Class(pred_code, pred_is_chk);
  const SCHED_INFO_CLASS succ_class = TARG_Sched_Info_Class(succ_code, succ_is_chk);
  switch (pred_class) {
	case SIC_IALU:
		switch (succ_class) {
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd
			    && EXEC_PROPERTY_is_I_Unit(pred_code) )
			  *latency += 1;
			break;
		  case SIC_TOFR:
			if (EXEC_PROPERTY_is_I_Unit(pred_code) )
			  *latency += 1;
			break;
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_ICMP:
		switch (succ_class) {
		  case SIC_IALU:
		  case SIC_ICMP:
		  case SIC_ILOG:
		  case SIC_PNT:
		  case SIC_ISHF:
		  case SIC_TBIT:
		  case SIC_SYST_M:
		  case SIC_SYST_M0:
		  case SIC_SYST_I:
		  case SIC_SYST_I0:
		  case SIC_SYST_B:
		  case SIC_SYST_B0:
		  case SIC_SYST_B2:
		  case SIC_XTD:
		  case SIC_LONG_I:
		  case SIC_LFETCH:
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_FCVTFX:
		  case SIC_FCVTXF:
		  case SIC_FMAC:
		  case SIC_XMA:
		  case SIC_FMISC:
		  case SIC_SFMAC:
		  case SIC_SFCVTFX:
		  case SIC_SFMISC:
		  case SIC_SFMERGESE:
		  case SIC_STF:
		  case SIC_FCMP:
		  case SIC_FOTHER:
		  case SIC_TOFR:
		  case SIC_FRFR:
		  case SIC_TOPR:
		  case SIC_FRPR:
		  case SIC_TOBR:
		  case SIC_FRBR:
		  case SIC_TOAR_M:
		  case SIC_TOAR_I:
		  case SIC_FRAR_M:
		  case SIC_FRAR_I:
		  case SIC_TOCR:
		  case SIC_FRCR:
		  case SIC_NOP_I:
		  case SIC_NOP_M:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		  case SIC_NOP_B:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 0;
			break;
		  case SIC_NOP_X:
		  case SIC_NOP_F:
		  case SIC_RSE_M:
		  case SIC_RSE_B:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		  case SIC_BR:
		  case SIC_BR_B2:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 0;
			break;
		  case SIC_BRP:
		  case SIC_FRIP:
		  case SIC_CHK_ALAT:
		  case SIC_CHK_I:
		  case SIC_CHK_M:
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_ILOG:
		switch (succ_class) {
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd)
			  *latency += 1;
			break;
		  case SIC_TOFR:
			  *latency += 1;
			break;
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_PNT:
		switch (succ_class) {
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd)
			  *latency += 1;
			break;
		  case SIC_TOFR:
			  *latency += 1;
			break;
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_ISHF:
		switch (succ_class) {
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd)
			  *latency += 1;
			break;
		  case SIC_TOFR:
			  *latency += 1;
			break;
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_TBIT:
		switch (succ_class) {
		  case SIC_IALU:
		  case SIC_ICMP:
		  case SIC_ILOG:
		  case SIC_PNT:
		  case SIC_ISHF:
		  case SIC_TBIT:
		  case SIC_SYST_M:
		  case SIC_SYST_M0:
		  case SIC_SYST_I:
		  case SIC_SYST_I0:
		  case SIC_SYST_B:
		  case SIC_SYST_B0:
		  case SIC_SYST_B2:
		  case SIC_XTD:
		  case SIC_LONG_I:
		  case SIC_LFETCH:
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_FCVTFX:
		  case SIC_FCVTXF:
		  case SIC_FMAC:
		  case SIC_XMA:
		  case SIC_FMISC:
		  case SIC_SFMAC:
		  case SIC_SFCVTFX:
		  case SIC_SFMISC:
		  case SIC_SFMERGESE:
		  case SIC_STF:
		  case SIC_FCMP:
		  case SIC_FOTHER:
		  case SIC_TOFR:
		  case SIC_FRFR:
		  case SIC_TOPR:
		  case SIC_FRPR:
		  case SIC_TOBR:
		  case SIC_FRBR:
		  case SIC_TOAR_M:
		  case SIC_TOAR_I:
		  case SIC_FRAR_M:
		  case SIC_FRAR_I:
		  case SIC_TOCR:
		  case SIC_FRCR:
		  case SIC_NOP_I:
		  case SIC_NOP_M:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		  case SIC_NOP_B:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 0;
			break;
		  case SIC_NOP_X:
		  case SIC_NOP_F:
		  case SIC_RSE_M:
		  case SIC_RSE_B:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		  case SIC_BR:
		  case SIC_BR_B2:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 0;
			break;
		  case SIC_BRP:
		  case SIC_FRIP:
		  case SIC_CHK_ALAT:
		  case SIC_CHK_I:
		  case SIC_CHK_M:
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_SYST_M:
		break;
	case SIC_SYST_M0:
		break;
	case SIC_SYST_I:
		break;
	case SIC_SYST_I0:
		break;
	case SIC_SYST_B:
		break;
	case SIC_SYST_B0:
		break;
	case SIC_SYST_B2:
		break;
	case SIC_XTD:
		switch (succ_class) {
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd)
			  *latency += 1;
			break;
		  case SIC_TOFR:
			  *latency += 1;
			break;
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_LONG_I:
		break;
	case SIC_LFETCH:
		break;
	case SIC_LD:
		switch (succ_class) {
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd)
			  *latency += 1;
			break;
		  case SIC_TOFR:
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_FLD:
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_FLDP:
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_CLD:
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_FCLD:
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_ST:
		break;
	case SIC_SEM:
		break;
	case SIC_FCVTFX:
		switch (succ_class) {
		  case SIC_STF:
		  case SIC_FRFR:
		  case SIC_CHK_M:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_FCVTXF:
		switch (succ_class) {
		  case SIC_FCVTFX:
			  *latency += 0;
			break;
		  case SIC_FCVTXF:
			  *latency += 2;
			break;
		  case SIC_FMAC:
			  *latency += 0;
			break;
		  case SIC_XMA:
		  case SIC_FMISC:
		  case SIC_SFMAC:
		  case SIC_SFCVTFX:
		  case SIC_SFMISC:
		  case SIC_SFMERGESE:
			  *latency += 2;
			break;
		  case SIC_STF:
			  *latency += 3;
			break;
		  case SIC_FCMP:
		  case SIC_FOTHER:
			  *latency += 2;
			break;
		  case SIC_FRFR:
		  case SIC_CHK_M:
			  *latency += 3;
			break;
		}/*suc fu end*/
		break;
	case SIC_FMAC:
		switch (succ_class) {
		  case SIC_FCVTFX:
			  *latency += 0;
			break;
		  case SIC_FCVTXF:
			  *latency += 2;
			break;
		  case SIC_FMAC:
			  *latency += 0;
			break;
		  case SIC_XMA:
		  case SIC_FMISC:
		  case SIC_SFMAC:
		  case SIC_SFCVTFX:
		  case SIC_SFMISC:
		  case SIC_SFMERGESE:
			  *latency += 2;
			break;
		  case SIC_STF:
			  *latency += 3;
			break;
		  case SIC_FCMP:
		  case SIC_FOTHER:
			  *latency += 2;
			break;
		  case SIC_FRFR:
		  case SIC_CHK_M:
			  *latency += 3;
			break;
		}/*suc fu end*/
		break;
	case SIC_XMA:
		switch (succ_class) {
		  case SIC_STF:
		  case SIC_FRFR:
		  case SIC_CHK_M:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_FMISC:
		switch (succ_class) {
		  case SIC_IALU:
		  case SIC_ICMP:
		  case SIC_ILOG:
		  case SIC_PNT:
		  case SIC_ISHF:
		  case SIC_TBIT:
		  case SIC_SYST_M:
		  case SIC_SYST_M0:
		  case SIC_SYST_I:
		  case SIC_SYST_I0:
		  case SIC_SYST_B:
		  case SIC_SYST_B0:
		  case SIC_SYST_B2:
		  case SIC_XTD:
		  case SIC_LONG_I:
		  case SIC_LFETCH:
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_FCVTFX:
		  case SIC_FCVTXF:
		  case SIC_FMAC:
		  case SIC_XMA:
		  case SIC_FMISC:
		  case SIC_SFMAC:
		  case SIC_SFCVTFX:
		  case SIC_SFMISC:
		  case SIC_SFMERGESE:
		  case SIC_STF:
		  case SIC_FCMP:
		  case SIC_FOTHER:
		  case SIC_TOFR:
		  case SIC_FRFR:
		  case SIC_TOPR:
		  case SIC_FRPR:
		  case SIC_TOBR:
		  case SIC_FRBR:
		  case SIC_TOAR_M:
		  case SIC_TOAR_I:
		  case SIC_FRAR_M:
		  case SIC_FRAR_I:
		  case SIC_TOCR:
		  case SIC_FRCR:
		  case SIC_NOP_I:
		  case SIC_NOP_M:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		  case SIC_NOP_B:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 0;
			break;
		  case SIC_NOP_X:
		  case SIC_NOP_F:
		  case SIC_RSE_M:
		  case SIC_RSE_B:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		  case SIC_BR:
		  case SIC_BR_B2:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 0;
			break;
		  case SIC_BRP:
		  case SIC_FRIP:
		  case SIC_CHK_ALAT:
		  case SIC_CHK_I:
		  case SIC_CHK_M:
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_SFMAC:
		switch (succ_class) {
		  case SIC_FCVTFX:
		  case SIC_FCVTXF:
		  case SIC_FMAC:
		  case SIC_XMA:
		  case SIC_FMISC:
			  *latency += 2;
			break;
		  case SIC_SFMAC:
		  case SIC_SFCVTFX:
			  *latency += 0;
			break;
		  case SIC_SFMISC:
		  case SIC_SFMERGESE:
			  *latency += 2;
			break;
		  case SIC_STF:
			  *latency += 3;
			break;
		  case SIC_FCMP:
		  case SIC_FOTHER:
			  *latency += 2;
			break;
		  case SIC_FRFR:
		  case SIC_CHK_M:
			  *latency += 3;
			break;
		}/*suc fu end*/
		break;
	case SIC_SFCVTFX:
		switch (succ_class) {
		  case SIC_STF:
		  case SIC_FRFR:
		  case SIC_CHK_M:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_SFMISC:
		switch (succ_class) {
		  case SIC_IALU:
		  case SIC_ICMP:
		  case SIC_ILOG:
		  case SIC_PNT:
		  case SIC_ISHF:
		  case SIC_TBIT:
		  case SIC_SYST_M:
		  case SIC_SYST_M0:
		  case SIC_SYST_I:
		  case SIC_SYST_I0:
		  case SIC_SYST_B:
		  case SIC_SYST_B0:
		  case SIC_SYST_B2:
		  case SIC_XTD:
		  case SIC_LONG_I:
		  case SIC_LFETCH:
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_FCVTFX:
		  case SIC_FCVTXF:
		  case SIC_FMAC:
		  case SIC_XMA:
		  case SIC_FMISC:
		  case SIC_SFMAC:
		  case SIC_SFCVTFX:
		  case SIC_SFMISC:
		  case SIC_SFMERGESE:
		  case SIC_STF:
		  case SIC_FCMP:
		  case SIC_FOTHER:
		  case SIC_TOFR:
		  case SIC_FRFR:
		  case SIC_TOPR:
		  case SIC_FRPR:
		  case SIC_TOBR:
		  case SIC_FRBR:
		  case SIC_TOAR_M:
		  case SIC_TOAR_I:
		  case SIC_FRAR_M:
		  case SIC_FRAR_I:
		  case SIC_TOCR:
		  case SIC_FRCR:
		  case SIC_NOP_I:
		  case SIC_NOP_M:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		  case SIC_NOP_B:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 0;
			break;
		  case SIC_NOP_X:
		  case SIC_NOP_F:
		  case SIC_RSE_M:
		  case SIC_RSE_B:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		  case SIC_BR:
		  case SIC_BR_B2:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 0;
			break;
		  case SIC_BRP:
		  case SIC_FRIP:
		  case SIC_CHK_ALAT:
		  case SIC_CHK_I:
		  case SIC_CHK_M:
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_SFMERGESE:
		switch (succ_class) {
		  case SIC_STF:
		  case SIC_FRFR:
		  case SIC_CHK_M:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_STF:
		break;
	case SIC_FCMP:
		switch (succ_class) {
		  case SIC_IALU:
		  case SIC_ICMP:
		  case SIC_ILOG:
		  case SIC_PNT:
		  case SIC_ISHF:
		  case SIC_TBIT:
		  case SIC_SYST_M:
		  case SIC_SYST_M0:
		  case SIC_SYST_I:
		  case SIC_SYST_I0:
		  case SIC_SYST_B:
		  case SIC_SYST_B0:
		  case SIC_SYST_B2:
		  case SIC_XTD:
		  case SIC_LONG_I:
		  case SIC_LFETCH:
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_FCVTFX:
		  case SIC_FCVTXF:
		  case SIC_FMAC:
		  case SIC_XMA:
		  case SIC_FMISC:
		  case SIC_SFMAC:
		  case SIC_SFCVTFX:
		  case SIC_SFMISC:
		  case SIC_SFMERGESE:
		  case SIC_STF:
		  case SIC_FCMP:
		  case SIC_FOTHER:
		  case SIC_TOFR:
		  case SIC_FRFR:
		  case SIC_TOPR:
		  case SIC_FRPR:
		  case SIC_TOBR:
		  case SIC_FRBR:
		  case SIC_TOAR_M:
		  case SIC_TOAR_I:
		  case SIC_FRAR_M:
		  case SIC_FRAR_I:
		  case SIC_TOCR:
		  case SIC_FRCR:
		  case SIC_NOP_I:
		  case SIC_NOP_M:
		  case SIC_NOP_B:
		  case SIC_NOP_X:
		  case SIC_NOP_F:
		  case SIC_RSE_M:
		  case SIC_RSE_B:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		  case SIC_BR:
		  case SIC_BR_B2:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 0;
			break;
		  case SIC_BRP:
		  case SIC_FRIP:
		  case SIC_CHK_ALAT:
		  case SIC_CHK_I:
		  case SIC_CHK_M:
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			if (TOP_Find_Operand_Use(succ_code, OU_predicate) == opnd)
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_FOTHER:
		break;
	case SIC_TOFR:
		break;
	case SIC_FRFR:
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_TOPR:
		break;
	case SIC_FRPR:
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_TOBR:
		switch (succ_class) {
		  case SIC_FRBR:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_FRBR:
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_TOAR_M:
			// From-Odd_Latency_TOAR_M register latency is determined
			// by source register
			Odd_Latency_TOAR_M(pred_code, succ_code, src_reg, dst_reg, latency);
		break;
	case SIC_TOAR_I:
			// From-Odd_Latency_TOAR_I register latency is determined
			// by source register
			Odd_Latency_TOAR_I(pred_code, succ_code, src_reg, dst_reg, latency);
		switch (succ_class) {
		  case SIC_FRAR_I:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_FRAR_M:
			// From-Odd_Latency_FRAR_M register latency is determined
			// by source register
			Odd_Latency_FRAR_M(pred_code, succ_code, src_reg, dst_reg, latency);
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_FRAR_I:
			// From-Odd_Latency_FRAR_I register latency is determined
			// by source register
			Odd_Latency_FRAR_I(pred_code, succ_code, src_reg, dst_reg, latency);
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_TOCR:
			// From-Odd_Latency_TOCR register latency is determined
			// by source register
			Odd_Latency_TOCR(pred_code, succ_code, src_reg, dst_reg, latency);
		break;
	case SIC_FRCR:
			// From-Odd_Latency_FRCR register latency is determined
			// by source register
			Odd_Latency_FRCR(pred_code, succ_code, src_reg, dst_reg, latency);
		switch (succ_class) {
		  case SIC_MMALU_A:
		  case SIC_MMALU_I:
		  case SIC_MMSHF:
		  case SIC_MMMUL:
			  *latency += 1;
			break;
		}/*suc fu end*/
		break;
	case SIC_NOP_I:
		break;
	case SIC_NOP_M:
		break;
	case SIC_NOP_B:
		break;
	case SIC_NOP_X:
		break;
	case SIC_NOP_F:
		break;
	case SIC_RSE_M:
		break;
	case SIC_RSE_B:
		break;
	case SIC_BR:
		break;
	case SIC_BR_B2:
		break;
	case SIC_BRP:
		break;
	case SIC_FRIP:
		break;
	case SIC_CHK_ALAT:
		break;
	case SIC_CHK_I:
		break;
	case SIC_CHK_M:
		break;
	case SIC_MMALU_A:
		switch (succ_class) {
		  case SIC_IALU:
		  case SIC_ICMP:
		  case SIC_ILOG:
		  case SIC_PNT:
		  case SIC_ISHF:
		  case SIC_TBIT:
		  case SIC_SYST_M:
		  case SIC_SYST_M0:
		  case SIC_SYST_I:
		  case SIC_SYST_I0:
		  case SIC_SYST_B:
		  case SIC_SYST_B0:
		  case SIC_SYST_B2:
		  case SIC_XTD:
		  case SIC_LONG_I:
			  *latency += 2;
			break;
		  case SIC_LFETCH:
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd)
			  *latency += 2;
			break;
		  case SIC_TOFR:
		  case SIC_TOPR:
		  case SIC_TOBR:
		  case SIC_TOAR_M:
		  case SIC_TOAR_I:
		  case SIC_TOCR:
		  case SIC_RSE_M:
		  case SIC_RSE_B:
		  case SIC_CHK_ALAT:
		  case SIC_CHK_I:
		  case SIC_CHK_M:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_MMALU_I:
		switch (succ_class) {
		  case SIC_IALU:
		  case SIC_ICMP:
		  case SIC_ILOG:
		  case SIC_PNT:
		  case SIC_ISHF:
		  case SIC_TBIT:
		  case SIC_SYST_M:
		  case SIC_SYST_M0:
		  case SIC_SYST_I:
		  case SIC_SYST_I0:
		  case SIC_SYST_B:
		  case SIC_SYST_B0:
		  case SIC_SYST_B2:
		  case SIC_XTD:
		  case SIC_LONG_I:
			  *latency += 2;
			break;
		  case SIC_LFETCH:
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd)
			  *latency += 2;
			break;
		  case SIC_TOFR:
		  case SIC_TOPR:
		  case SIC_TOBR:
		  case SIC_TOAR_M:
		  case SIC_TOAR_I:
		  case SIC_TOCR:
		  case SIC_RSE_M:
		  case SIC_RSE_B:
		  case SIC_CHK_ALAT:
		  case SIC_CHK_I:
		  case SIC_CHK_M:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_MMSHF:
		switch (succ_class) {
		  case SIC_IALU:
		  case SIC_ICMP:
		  case SIC_ILOG:
		  case SIC_PNT:
		  case SIC_ISHF:
		  case SIC_TBIT:
		  case SIC_SYST_M:
		  case SIC_SYST_M0:
		  case SIC_SYST_I:
		  case SIC_SYST_I0:
		  case SIC_SYST_B:
		  case SIC_SYST_B0:
		  case SIC_SYST_B2:
		  case SIC_XTD:
		  case SIC_LONG_I:
			  *latency += 2;
			break;
		  case SIC_LFETCH:
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd)
			  *latency += 2;
			break;
		  case SIC_TOFR:
		  case SIC_TOPR:
		  case SIC_TOBR:
		  case SIC_TOAR_M:
		  case SIC_TOAR_I:
		  case SIC_TOCR:
		  case SIC_RSE_M:
		  case SIC_RSE_B:
		  case SIC_CHK_ALAT:
		  case SIC_CHK_I:
		  case SIC_CHK_M:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_MMMUL:
		switch (succ_class) {
		  case SIC_IALU:
		  case SIC_ICMP:
		  case SIC_ILOG:
		  case SIC_PNT:
		  case SIC_ISHF:
		  case SIC_TBIT:
		  case SIC_SYST_M:
		  case SIC_SYST_M0:
		  case SIC_SYST_I:
		  case SIC_SYST_I0:
		  case SIC_SYST_B:
		  case SIC_SYST_B0:
		  case SIC_SYST_B2:
		  case SIC_XTD:
		  case SIC_LONG_I:
			  *latency += 2;
			break;
		  case SIC_LFETCH:
		  case SIC_LD:
		  case SIC_FLD:
		  case SIC_FLDP:
		  case SIC_CLD:
		  case SIC_FCLD:
		  case SIC_ST:
		  case SIC_SEM:
		  case SIC_STF:
			if (TOP_Find_Operand_Use(succ_code, OU_base) == opnd)
			  *latency += 2;
			break;
		  case SIC_TOFR:
		  case SIC_TOPR:
		  case SIC_TOBR:
		  case SIC_TOAR_M:
		  case SIC_TOAR_I:
		  case SIC_TOCR:
		  case SIC_RSE_M:
		  case SIC_RSE_B:
		  case SIC_CHK_ALAT:
		  case SIC_CHK_I:
		  case SIC_CHK_M:
			  *latency += 2;
			break;
		}/*suc fu end*/
		break;
	case SIC_UNIMP:
		break;
	case SIC_LAST:
		break;
	}/*End of swtich of preceding fu*/


  // TOP_alloc only cannot place one group with flushrs,loadrs,br.call,br1.call
  // br.ia,br.ret,clrrrb,cover,rfi;
  if (pred_code  == TOP_alloc &&
     (succ_code == TOP_flushrs ||
     succ_code == TOP_br_cexit||
     succ_code == TOP_br_ctop ||
     succ_code == TOP_br_wexit ||
     succ_code == TOP_br_wtop ||
     succ_code == TOP_br_call ||
     succ_code == TOP_br_ia ||
     succ_code == TOP_br_ret ||
     succ_code == TOP_clrrrb ||
     succ_code == TOP_clrrrb_pr ||
     succ_code == TOP_cover ||
     succ_code == TOP_rfi ))
       *latency = 1;
}/* End of Adjust Latency*/

