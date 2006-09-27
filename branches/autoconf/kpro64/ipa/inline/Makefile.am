libexec_PROGRAMS = inline
inline_SOURCES = inline.cxx inline_driver.cxx inline_stub.cxx \
	inline_utils.cxx ip_graph.cxx ip_graph_trav.cxx ipa_cg.cxx \
	ipa_inline.cxx ipa_nested_pu.cxx ipa_summary.cxx ipc_bread.cxx \
	ipc_dst_utils.cxx ipc_file.cxx ipc_option.cxx ipc_utils.cxx \
	ipl_summarize_util.cxx ipo_clone.cxx ipo_inline.cxx \
	ipo_inline_util.cxx ipo_parent.cxx ipo_tlog_utils.cxx \
	lwn_util.cxx lx_ipl_lno_util.cxx timelib.cxx
inline_LDADD = ../../be/be/libbe.la

AM_CPPFLAGS = -D_LIGHTWEIGHT_INLINER -DKEY \
	-I../../be/be \
	-I${srcdir}/../common \
	-I${srcdir}/../local \
	-I${srcdir}/../main/analyze \
	-I${srcdir}/../main/optimize \
	-I${srcdir}/../../be/com \
	-I${srcdir}/../../be/lno \
	-I${srcdir}/../../be/opt \
	-I${srcdir}/../../be/region \
	-I${srcdir}/../../common/com \
	-I${srcdir}/../../common/com/${TARG_SUBDIR} \
	-I${srcdir}/../../common/stl \
	-I${srcdir}/../../common/util \
	-I${srcdir}/../../include \
	-I${srcdir}/../../libdwarf \
	-I${top_srcdir}/contrib/dwarf/libdwarf

VPATH = ${srcdir} ${srcdir}/../common ${srcdir}/../local \
	${srcdir}/../main/analyze ${srcdir}/../main/optimize \
	${srcdir}/../../be/lno
