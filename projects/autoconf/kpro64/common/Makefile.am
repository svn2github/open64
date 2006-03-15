noinst_LIBRARIES = libcomutil.a
libcomutil_a_SOURCES = bitset.c c_a_to_q.c c_q_add.c c_q_div.c c_q_mul.c \
	c_q_neg.c c_q_rel.c c_q_sqrt.c c_q_sub.c c_q_to_a.c c_qtenscale.c \
	c_qwmultu.c cxx_memory.cxx errors.cxx file_util.c flags.c linklist.c \
	memory.c mstack.c priority_queue.c quadsim.c resource.c tracing.c \
	util.c vstring.c

VPATH = ${srcdir}/util ${srcdir}/util/${TARG_SUBDIR}
AM_CPPFLAGS = ${PIC_FLAGS} -DKEY -DMONGOOSE_BE \
	-I${srcdir}/com -I${srcdir}/com/${TARG_SUBDIR} \
	-I${srcdir}/util \
	-I${srcdir}/../include
