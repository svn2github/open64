noinst_LIBRARIES = libipa.a
libipa_a_SOURCES = cg_browser.cxx cg_print.cxx cg_summary.cxx cgb_carray.cxx \
	cgb.cxx cgb_ipa.cxx init.cxx ip_graph.cxx ip_graph_trav.cxx \
	ipa_builtins.cxx ipa_cg.cxx ipa_cost.cxx ipa_cost_util.cxx \
	ipa_cprop.cxx ipa_cprop_annot.cxx ipa_df.cxx ipa_feedback.cxx \
	ipa_inline.cxx ipa_lno_write.cxx ipa_main.cxx ipa_nested_pu.cxx \
	ipa_option.cxx ipa_preopt.cxx ipa_reorder.cxx ipa_reshape.cxx \
	ipa_section_annot.cxx ipa_section_main.cxx ipa_section_print.cxx \
	ipa_section_prop.cxx ipa_solver.cxx ipa_summary.cxx ipaa.cxx \
	ipc_bread.cxx ipc_bwrite.cxx ipc_compile.cxx ipc_dst_merge.cxx \
	ipc_dst_utils.cxx ipc_file.cxx ipc_link.cxx ipc_main.cxx \
	ipc_option.cxx ipc_partition.c ipc_pic.cxx ipc_symtab.cxx \
	ipc_symtab_merge.cxx ipc_ty_hash.cxx ipc_type_merge.cxx \
	ipl_summary_print.cxx ipl_tlog.cxx ipo_alias.cxx ipo_alias_class.cxx \
	ipo_autopar.cxx ipo_clone.cxx ipo_const.cxx ipo_dce.cxx \
	ipo_inline.cxx ipo_inline_util.cxx ipo_main.cxx ipo_pad.cxx \
	ipo_parent.cxx ipo_split.cxx reshape.cxx sparse_bv.cxx wb_ipa.cxx \
	wb_summary.cxx

AM_CPPFLAGS = -DKEY \
	-I../../be/be \
	-I${srcdir}/optimize \
	-I${srcdir}/analyze \
	-I${srcdir}/../common \
	-I${srcdir}/../local \
	-I${srcdir}/../../be/com \
	-I${srcdir}/../../be/lno \
	-I${srcdir}/../../be/opt \
	-I${srcdir}/../../be/region \
	-I${srcdir}/../../common/com \
	-I${srcdir}/../../common/com/${TARG_SUBDIR} \
	-I${srcdir}/../../common/stl \
	-I${srcdir}/../../common/util \
	-I${srcdir}/../../fake_ld/common \
	-I${srcdir}/../../include \
	-I${srcdir}/../../libdwarf \
	-I${top_srcdir}/contrib/dwarf/libdwarf \
	-I${srcdir}/../.. \
	-I${top_srcdir}/contrib/libelf/lib

VPATH = ${srcdir}/analyze ${srcdir}/optimize ${srcdir}/../common \
	${srcdir}/../local ${srcdir}/../../be/com
