noinst_LIBRARIES = libcg.a
libcg_a_SOURCES = annotations.cxx bb_map.cxx bblist.cxx bbutil.cxx calls.cxx \
	cflow.cxx cg.cxx cg_cflow.cxx cg_convert_x87.cxx cg_db_op.cxx \
	cg_dep_graph.cxx cg_flags.cxx cg_flags_arch.cxx cg_gcov.cxx \
	cg_loop.cxx cg_loop_mii.cxx cg_loop_recur.cxx cg_loop_scc.cxx \
	cg_region.cxx cg_sched.cxx cg_sched_est.cxx cg_spill.cxx cg_swp.cxx \
	cg_swp_allocator.cxx cg_swp_bundle.cxx cg_swp_emit.cxx \
	cg_swp_sched.cxx cg_swp_target.cxx cg_thr.cxx cg_vector.cxx \
	cgdriver.cxx cgdwarf.cxx cgdwarf_targ.cxx cgemit.cxx cgemit_targ.cxx \
	cgexp.cxx cgprep.cxx cgtarget.cxx cio_rwtran.cxx comment.cxx \
	dominate.cxx ebo.cxx ebo_special.cxx eh_region.cxx em_dwarf.cxx \
	em_elf.cxx entry_exit_targ.cxx exp_branch.cxx exp_divrem.cxx \
	exp_loadstore.cxx exp_predicate.cxx expand.cxx findloops.cxx freq.cxx \
	gcm.cxx gra.cxx gra_bb.cxx gra_cflow.cxx gra_color.cxx gra_create.cxx \
	gra_grant.cxx gra_interfere.cxx gra_live.cxx gra_loop.cxx \
	gra_lrange.cxx gra_lrange_subuniverse.cxx gra_lrange_vset.cxx \
	gra_lunit.cxx gra_pref.cxx gra_region.cxx gra_spill.cxx gra_split.cxx \
	gra_trace.cxx gtn_tn_set.cxx gtn_universe.cxx hb.cxx \
	hb_block_select.cxx hb_cflow.cxx hb_hazards.cxx hb_id_candidates.cxx \
	hb_if_convert.cxx hb_sched.cxx hb_tail_duplication.cxx hb_trace.cxx \
	iface_scn.cxx igls.cxx init.cxx label_util.cxx localize.cxx lra.cxx \
	note.cxx op_map.cxx oputil.cxx pqs.cxx pqs_cg.cxx reg_live.cxx \
	register.cxx register_targ.cxx tag.cxx targ_em_const.cxx \
	targ_em_dwarf.cxx targ_em_elf.cxx tn_map.cxx tnutil.cxx variants.cxx \
	whirl2ops.cxx

GENSRCS = bb_list.cxx bb_set.cxx cg_loop_scc_prop.cxx gra_bb_list.cxx \
	gtn_set.cxx lrange_list.cxx lrange_set.cxx op_list.cxx st_list.cxx \
	tn_list.cxx tn_prop.cxx tn_set.cxx void_list.cxx

GENHDRS = $(patsubst %.cxx,%.h,${GENSRCS})

nodist_libcg_a_SOURCES = ${GENSRCS}

BUILT_SOURCES = ${GENSRCS} ${GENHDRS}
CLEANFILES = ${GENSRCS} ${GENHDRS}

bb_list.cxx bb_list.h: gen_bb_list.csh
	csh -f $< ${srcdir}/../../common/util

bb_set.cxx bb_set.h: gen_bb_set.csh
	csh -f $< ${srcdir}/../../common/util

cg_loop_scc_prop.cxx cg_loop_scc_prop.h: gen_cg_loop_scc_prop.csh
	csh -f $< ${srcdir}/../../common/util

gra_bb_list.cxx gra_bb_list.h: gen_gra_bb_list.csh
	csh -f $< ${srcdir}/../../common/util

gtn_set.cxx gtn_set.h: gen_gtn_set.csh
	csh -f $< ${srcdir}/../../common/util

lrange_list.cxx lrange_list.h: gen_lrange_list.csh
	csh -f $< ${srcdir}/../../common/util

lrange_set.cxx lrange_set.h: gen_lrange_set.csh
	csh -f $< ${srcdir}/../../common/util

op_list.cxx op_list.h: gen_op_list.csh
	csh -f $< ${srcdir}/../../common/util

st_list.cxx st_list.h: gen_st_list.csh
	csh -f $< ${srcdir}/../../common/util

tn_list.cxx tn_list.h: gen_tn_list.csh
	csh -f $< ${srcdir}/../../common/util

tn_prop.cxx tn_prop.h: gen_tn_prop.csh
	csh -f $< ${srcdir}/../../common/util

tn_set.cxx tn_set.h: gen_tn_set.csh
	csh -f $< ${srcdir}/../../common/util

void_list.cxx void_list.h: gen_void_list.csh
	csh -f $< ${srcdir}/../../common/util

AM_CPPFLAGS = -DBACK_END -DKEY -DMONGOOSE_BE \
	-I../be -I../../targ_info \
	-I${srcdir}/gra_mon \
	-I${srcdir}/${TARG_SUBDIR} \
	-I${srcdir}/../com \
	-I${srcdir}/../region \
	-I${srcdir}/../.. \
	-I${srcdir}/../../common/com \
	-I${srcdir}/../../common/com/${TARG_SUBDIR} \
	-I${srcdir}/../../common/stl \
	-I${srcdir}/../../common/util \
	-I${srcdir}/../../include \
	-I${srcdir}/../../libdwarf \
	-I${top_srcdir}/contrib/dwarf/libdwarf \
	-I${srcdir}/../../targ_info/access \
	-I${top_srcdir}/contrib/libelf/lib

VPATH = ${srcdir} ${srcdir}/gra_mon ${srcdir}/${TARG_SUBDIR} \
	${srcdir}/../../common/com ${srcdir}/../../common/com/${TARG_SUBDIR}
