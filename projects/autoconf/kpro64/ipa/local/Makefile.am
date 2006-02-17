noinst_LIBRARIES = libipl.a
libipl_a_SOURCES = ipa_cost_util.cxx ipa_section.cxx ipa_section_main.cxx \
	ipa_section_print.cxx ipl_array_bread_write.cxx ipl_bread_write.cxx \
	ipl_elfsym.cxx ipl_linex.cxx ipl_main.cxx ipl_outline.cxx \
	ipl_reorder.cxx ipl_summarize_util.cxx ipl_summary_print.cxx \
	ipl_tlog.cxx init.cxx loop_info.cxx reshape.cxx wb_ipl_summary.cxx

AM_CPPFLAGS = -DIPA_SUMMARY -DKEY -DMONGOOSE_BE \
	-I../../be/be \
	-I${srcdir}/../common \
	-I${srcdir}/../main/analyze \
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

VPATH = ${srcdir} ${srcdir}/../../be/com
