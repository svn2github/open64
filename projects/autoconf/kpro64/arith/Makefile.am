noinst_LIBRARIES = libarith.a
libarith_a_SOURCES = bits.c compare.c convert.c cray_fadd.c cray_fdiv.c \
	cray_fmul.c cvt.c edition.c ieee_fadd.c ieee_fdiv.c ieee_fmul.c \
	ieee_norm.c ieee_sqrt.c intrin.c math.c miscmath.c strcvt.c \
	cray1_sim.c fintrin_dc_irix_tmp.f fintrin_irix_tmp.f native.c \
	test_ar_intrin.c 

EDITION = $(shell cat ${srcdir}/edition)
AM_CPPFLAGS = -D__mips -D_LITTLE_ENDIAN -DEDITION=\"${EDITION}\"
