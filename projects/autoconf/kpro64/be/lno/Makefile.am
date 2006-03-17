pkglib_LTLIBRARIES = lno.la
lno_la_SOURCES = access_main.cxx access_vector.cxx aequiv.cxx al_loop.cxx \
	al_ref.cxx ara.cxx ara_live.cxx ara_loop.cxx ara_region.cxx \
	ara_utils.cxx array_bounds.cxx array_lower.cxx autod.cxx \
	cache_model.cxx call_info.cxx can.cxx cond.cxx cross_cache.cxx \
	cross_snl.cxx cse.cxx cxx_queue.cxx dead.cxx debug.cxx dep.cxx \
	dnf.cxx doacross.cxx eliminate.cxx ff_pragmas.cxx ff_utils.cxx \
	fis_gthr.cxx fission.cxx fiz_fuse.cxx forward.cxx frac.cxx fusion.cxx \
	if_info.cxx ifminmax.cxx init.cxx inner_fission.cxx ipa_lno_cost.cxx \
	ipa_lno_read.cxx ipa_lno_reshape.cxx lego.cxx lego_affinity.cxx \
	lego_ec.cxx lego_gen.cxx lego_io.cxx lego_local.cxx lego_opts.cxx \
	lego_pragma.cxx lego_skew.cxx lego_util.cxx lno_bv.cxx lno_scc.cxx \
	lno_split.cxx lnodriver.cxx lnopt_hoistif.cxx lnopt_main.cxx \
	lnotarget.cxx lnoutils.cxx lu_mat_textra.cxx lwn_util.cxx \
	lx_prompf_anl.cxx mat_textra.cxx minvariant.cxx \
	model.cxx move.cxx name.cxx oinvar.cxx outer.cxx pad.cxx parallel.cxx \
	parids.cxx parmodel.cxx permute.cxx pf_loop.cxx pf_manual.cxx \
	pf_ref.cxx prefetch.cxx reduc.cxx reverse.cxx scalar_expand.cxx \
	sclrze.cxx sdlist.cxx shackle.cxx shackle_ifs.cxx shackle_mem.cxx \
	simd.cxx small_trips.cxx snl_deps.cxx snl_dist.cxx snl_gen.cxx \
	snl_inv.cxx snl_nest.cxx snl_test.cxx snl_trans.cxx snl_utils.cxx \
	snl_xbounds.cxx soe.cxx split_tiles.cxx sxlimit.cxx sxlist.cxx \
	tile.cxx vintr_fis.cxx vs_textra.cxx wind_down.cxx zmult.cxx 
lno_la_LDFLAGS = -avoid-version -module
lno_la_LIBADD = ../be/libbe.la

AM_CPPFLAGS = -DBACK_END -DKEY -DLNO \
	-I../be -I../../targ_info \
	-I${srcdir}/../be \
	-I${srcdir}/../cg \
	-I${srcdir}/../com \
	-I${srcdir}/../opt \
	-I${srcdir}/../prompf_anl \
	-I${srcdir}/../region \
	-I${srcdir}/../../common/com \
	-I${srcdir}/../../common/com/${TARG_SUBDIR} \
	-I${srcdir}/../../common/stl \
	-I${srcdir}/../../common/util \
	-I${srcdir}/../../include \
	-I${srcdir}/../../ipa/local \
	-I${srcdir}/../../libdwarf \
	-I${top_srcdir}/contrib/dwarf/libdwarf \
	-I${srcdir}/../../targ_info/access

VPATH = ${srcdir} ${srcdir}/${TARG_SUBDIR}
