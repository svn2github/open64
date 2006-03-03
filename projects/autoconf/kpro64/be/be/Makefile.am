pkglib_LTLIBRARIES = libbe.la
libbe_la_SOURCES = be_symtab.cxx be_util.cxx be_version.cxx betarget.cxx \
	cleanup.cxx clone.cxx clone_DST_utils.cxx com_whirlview.cxx \
	config.cxx config_cache.cxx config_cache_targ.cxx config_elf_targ.cxx \
	config_host.c config_platform.c config_targ.cxx const.cxx \
	controls.cxx cxx_base.cxx cxx_graph.cxx cxx_hash_util.cxx \
	data_layout.cxx DaVinci.cxx dep_graph.cxx dra_clone.cxx \
	dra_demangle.cxx dra_ec.cxx dra_file_util.cxx dra_mangle.cxx \
	driver_targ.cxx dso.c dvector.cxx dwarf_DST.cxx dwarf_DST_dump.cxx \
	dwarf_DST_mem.cxx dwarf_DST_producer.cxx emulate.cxx err_host.cxx \
	f90_lower.cxx f90_lower_dep.cxx f90_utils.cxx fb_cfg.cxx fb_info.cxx \
	fb_whirl.cxx fill_align.cxx fill_align_targ.cxx glob.cxx \
	instr_reader.cxx intrn_info.cxx ipa_lno_file.cxx ipa_lno_summary.cxx \
	ipa_lno_util.cxx ipo_tlog_utils.cxx ir_bcom.cxx ir_bread.cxx \
	ir_bwrite.cxx ir_reader.cxx irbdata.cxx ll.cxx mat.cxx mem_ctr.cxx \
	mfmc_misc.cxx mfmc_query.cxx mfmc_setup.cxx mfmc_solve.cxx mtypes.cxx \
	omp_lower.cxx opcode.cxx opcode_core.cxx opt_addr_flags.cxx \
	opt_alias_mgr.cxx opt_alias_rule.cxx opt_cvtl_rule.cxx opt_goto.cxx \
	opt_ipaa_io.cxx opt_points_to_non_template.cxx options_stack.cxx \
	ori.cxx output_func_start_profiler.cxx printsrc.cxx \
	privatize_common.cxx prompf.cxx pu_info.cxx rbi.cxx region_bounds.cxx \
	region_init.cxx region_util.cxx rewrite_pragmas.cxx sections.cxx \
	soe.cxx standardize.cxx stblock.cxx strtab.cxx symtab.cxx \
	symtab_verify.cxx targ_const.cxx targ_sim.cxx ti_init.c ti_res.c \
	ti_res_count.c ti_res_res.c timing.cxx tlog.c ttype.cxx \
	u64_lower_wn.cxx vho_lower.cxx w2op.cxx wb.cxx wb_anl.cxx \
	wb_browser.cxx wb_buffer.cxx wb_carray.cxx wb_f90_lower.cxx \
	wb_ipl.cxx wb_lwr.cxx wb_omp.cxx wb_util.cxx weak.cxx whirl2src.cxx \
	wn.cxx wn_fio.cxx wn_instrument.cxx wn_lower.cxx wn_map.cxx wn_mp.cxx \
	wn_pragmas.cxx wn_retype_expr.cxx wn_simp.cxx wn_unroll.cxx \
	wn_util.cxx wn_verifier.cxx wutil.cxx xstats.cxx
libbe_la_LDFLAGS = -no-undefined
libbe_la_LIBADD = ../../common/libcomutil.a ../../targ_info/libtarginfo.a

GENSRCS = preg_list.cxx
GENHDRS = $(patsubst %.cxx,%.h,${GENSRCS})

nodist_libbe_la_SOURCES = ${GENSRCS}

BUILT_SOURCES = ${GENSRCS} ${GENHDRS}
CLEANFILES = ${GENSRCS} ${GENHDRS}

libexec_PROGRAMS = be
be_SOURCES = driver.cxx driver_util.cxx iter.cxx phase.cxx
be_LDADD = libbe.la ../../gcc/libiberty/libiberty.a

${BUILT_SOURCES}: gen_preg_list.csh
	csh -f $< ${srcdir}/../../common/util

AM_CPPFLAGS = -D__GNU_BUG_WORKAROUND -D_LEGO_CLONER -D_NEW_SYMTAB \
	-DBACK_END -DKEY -DMONGOOSE_BE \
	-I../../targ_info \
	-I${srcdir}/.. \
	-I${srcdir}/../cg \
	-I${srcdir}/../com \
	-I${srcdir}/../com/${TARG_SUBDIR} \
	-I${srcdir}/../lno \
	-I${srcdir}/../opt \
	-I${srcdir}/../region \
	-I${srcdir}/../../common/com \
	-I${srcdir}/../../common/com/${TARG_SUBDIR} \
	-I${srcdir}/../../common/util \
	-I${srcdir}/../../include \
	-I${srcdir}/../../ipa/common \
	-I${srcdir}/../../ipa/local \
	-I${srcdir}/../../ipa/main/analyze \
	-I${srcdir}/../../ipa/main/optimize \
	-I${srcdir}/../../libdwarf \
	-I${top_srcdir}/contrib/dwarf/libdwarf \
	-I${srcdir}/../../targ_info/access

VPATH = ${srcdir} ${srcdir}/${TARG_SUBDIR} \
	${srcdir}/../com ${srcdir}/../com/${TARG_SUBDIR} \
	${srcdir}/../lno \
	${srcdir}/../region \
	${srcdir}/../vho \
	${srcdir}/../../common/com ${srcdir}/../../common/com/${TARG_SUBDIR} \
	${srcdir}/../../common/instrument \
	${srcdir}/../../common/util ${srcdir}/../../common/util/${TARG_SUBDIR} \
	${srcdir}/../../ipa/main/optimize \
	${srcdir}/../../targ_info/access
