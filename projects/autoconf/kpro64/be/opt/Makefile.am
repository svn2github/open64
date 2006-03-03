pkglib_LTLIBRARIES = wopt.la
wopt_la_SOURCES = init.cxx opt_alias_analysis.cxx opt_alias_class.cxx \
	opt_base.cxx opt_bb.cxx opt_bdce.cxx opt_bool.cxx opt_canon.cxx \
	opt_cfg.cxx opt_cfg_trans.cxx opt_combine.cxx opt_cond_const.cxx \
	opt_count.cxx opt_cse.cxx opt_daVinci.cxx opt_dbg.cxx opt_dce.cxx \
	opt_dom.cxx opt_dse.cxx opt_du.cxx opt_eant.cxx opt_eavail.cxx \
	opt_efinalize.cxx opt_ehoist.cxx opt_emit.cxx opt_eocc.cxx \
	opt_essa.cxx opt_estr.cxx opt_etable.cxx opt_exc.cxx opt_expr.cxx \
	opt_fb.cxx opt_find.cxx opt_fold.cxx opt_htable.cxx \
	opt_htable_emit.cxx opt_ivr.cxx opt_leaf_iter.cxx opt_lftr2.cxx \
	opt_loop.cxx opt_loop_trans.cxx opt_ltable.cxx opt_main.cxx \
	opt_min_essa.cxx opt_mtype_b.cxx opt_mu_chi.cxx opt_project.cxx \
	opt_prop.cxx opt_region_emit.cxx opt_rename.cxx opt_revise_ssa.cxx \
	opt_rvi.cxx opt_rvi_emit.cxx opt_rvilr.cxx opt_rvitab.cxx \
	opt_rviwn.cxx opt_speculate.cxx opt_spre_finalize.cxx opt_ssa.cxx \
	opt_ssu.cxx opt_stable.cxx opt_sym.cxx opt_tail.cxx opt_u64_lower.cxx \
	opt_util.cxx opt_verify.cxx opt_vn.cxx opt_vn_expr.cxx opt_vnfre.cxx \
	opt_whirlview.cxx opt_wn.cxx wodriver.cxx
wopt_la_LDFLAGS = -avoid-version -module

AM_CPPFLAGS = -DBACK_END -DKEY -DMONGOOSE_BE \
	-I../be -I../../targ_info \
	-I${srcdir}/../com \
	-I${srcdir}/../region \
	-I${srcdir}/../../common/com \
	-I${srcdir}/../../common/com/${TARG_SUBDIR} \
	-I${srcdir}/../../common/stl \
	-I${srcdir}/../../common/util \
	-I${srcdir}/../../include
