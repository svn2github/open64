noinst_LIBRARIES = libsigen.a libtarginfo.a
libtarginfo_a_SOURCES = ti_asm.c ti_bundle.c ti_errors.c ti_latency.c
libsigen_a_SOURCES = si_gen.cxx

if TARG_X8664
pkglib_LTLIBRARIES = em64t.la opteron.la
_targ_tools = em64t_si_gen opteron_si_gen
endif

if TARG_IA64
pkglib_LTLIBRARIES = itanium.la
_targ_tools = itanium_si_gen
endif

GENSRCS = targ_abi_properties.c targ_isa_bundle.c targ_isa_decode.c \
	targ_isa_enums.c targ_isa_hazards.c targ_isa_lits.c \
	targ_isa_operands.c targ_isa_pack.c targ_isa_print.c \
	targ_isa_properties.c targ_isa_pseudo.c targ_isa_registers.c \
	targ_isa_subset.c targ_proc.c targ_proc_properties.c topcode.c
GENHDRS = $(patsubst %.c,%.h,${GENSRCS})
GENXPRT = $(patsubst %.c,%.Exported,${GENSRCS})

nodist_libtarginfo_a_SOURCES = ${GENSRCS}

BUILT_SOURCES = ${GENSRCS} ${GENHDRS}
CLEANFILES = ${GENSRCS} ${GENHDRS} ${GENXPRT}

targ_abi_properties.c: abi_properties_gen
	./$<

targ_isa_bundle.c: isa_bundle_gen
	./$<

targ_isa_decode.c: isa_decode_gen
	./$<

targ_isa_enums.c: isa_enums_gen
	./$<

targ_isa_hazards.c: isa_hazards_gen
	./$<

targ_isa_lits.c: isa_lits_gen
	./$<

targ_isa_operands.c: isa_operands_gen
	./$<

targ_isa_pack.c: isa_pack_gen
	./$<

targ_isa_print.c: isa_print_gen
	./$<

targ_isa_properties.c targ_isa_properties.h: isa_properties_gen
	./$<

targ_isa_pseudo.c: isa_pseudo_gen
	./$<

targ_isa_registers.c targ_isa_registers.h: isa_registers_gen
	./$<

targ_isa_subset.c targ_isa_subset.h: isa_subset_gen
	./$<

targ_proc.c: proc_gen
	./$<

targ_proc_properties.c: proc_properties_gen
	./$<

topcode.c topcode.h: isa_gen
	./$<

noinst_PROGRAMS = abi_properties_gen isa_bundle_gen isa_decode_gen \
	isa_enums_gen isa_gen isa_hazards_gen isa_lits_gen \
	isa_operands_gen isa_pack_gen isa_print_gen isa_properties_gen \
	isa_pseudo_gen isa_registers_gen isa_subset_gen proc_gen \
	proc_properties_gen ${_targ_tools}

abi_properties_gen_SOURCES = gen_util.cxx abi_properties.cxx \
	abi_properties_gen.cxx
nodist_abi_properties_gen_SOURCES = targ_isa_registers.c targ_isa_subset.c
abi_properties.${OBJEXT}: targ_isa_registers.h
abi_properties_gen.${OBJEXT}: targ_isa_registers.h

isa_bundle_gen_SOURCES = gen_util.cxx isa_bundle.cxx isa_bundle_gen.cxx
nodist_isa_bundle_gen_SOURCES = targ_isa_properties.c topcode.c
isa_bundle_gen.${OBJEXT}: targ_isa_properties.h topcode.h

isa_decode_gen_SOURCES = gen_util.cxx isa_decode.cxx isa_decode_gen.cxx
nodist_isa_decode_gen_SOURCES = targ_isa_bundle.c topcode.c
isa_decode_gen.${OBJEXT}: topcode.h

isa_enums_gen_SOURCES = gen_util.cxx isa_enums.cxx isa_enums_gen.cxx

isa_gen_SOURCES = gen_util.cxx isa.cxx isa_gen.cxx

isa_hazards_gen_SOURCES = gen_util.cxx isa_hazards.cxx isa_hazards_gen.cxx
nodist_isa_hazards_gen_SOURCES = targ_isa_subset.c topcode.c
isa_hazards_gen.${OBJEXT}: targ_isa_subset.h topcode.h

isa_lits_gen_SOURCES = gen_util.cxx isa_lits.cxx isa_lits_gen.cxx

isa_operands_gen_SOURCES = gen_util.cxx isa_operands.cxx isa_operands_gen.cxx
nodist_isa_operands_gen_SOURCES = targ_isa_enums.c targ_isa_lits.c \
	targ_isa_registers.c targ_isa_subset.c topcode.c
isa_operands_gen.${OBJEXT}: topcode.h

isa_pack_gen_SOURCES = gen_util.cxx isa_pack.cxx isa_pack_gen.cxx
nodist_isa_pack_gen_SOURCES = targ_isa_properties.c topcode.c
isa_pack_gen.${OBJEXT}: targ_isa_properties.h topcode.h

isa_print_gen_SOURCES = gen_util.cxx isa_print.cxx isa_print_gen.cxx
nodist_isa_print_gen_SOURCES = targ_isa_properties.c topcode.c
isa_print_gen.${OBJEXT}: targ_isa_properties.h topcode.h

isa_properties_gen_SOURCES = gen_util.cxx isa_properties.cxx \
	isa_properties_gen.cxx
nodist_isa_properties_gen_SOURCES = topcode.c
isa_properties_gen.${OBJEXT}: topcode.h

isa_pseudo_gen_SOURCES = gen_util.cxx isa_pseudo.cxx isa_pseudo_gen.cxx
nodist_isa_pseudo_gen_SOURCES = targ_isa_enums.c targ_isa_lits.c \
	targ_isa_operands.c targ_isa_registers.c targ_isa_subset.c topcode.c
isa_pseudo_gen.${OBJEXT}: targ_isa_operands.h topcode.h

isa_registers_gen_SOURCES = gen_util.cxx isa_registers.cxx \
	isa_registers_gen.cxx
nodist_isa_registers_gen_SOURCES = targ_isa_subset.c topcode.c
isa_registers.${OBJEXT}: targ_isa_subset.h

isa_subset_gen_SOURCES = gen_util.cxx isa_subset.cxx isa_subset_gen.cxx
nodist_isa_subset_gen_SOURCES = topcode.c
isa_subset.${OBJEXT}: topcode.h
isa_subset_gen.${OBJEXT}: topcode.h

proc_gen_SOURCES = gen_util.cxx proc.cxx proc_gen.cxx

proc_properties_gen_SOURCES = gen_util.cxx proc_properties.cxx \
	proc_properties_gen.cxx
nodist_proc_properties_gen_SOURCES = targ_proc.c
proc_properties_gen.${OBJEXT}: targ_proc.h

#
# X8664
#
if TARG_X8664
em64t_la_SOURCES = em64t.c
em64t_la_LDFLAGS = -avoid-version -module

BUILT_SOURCES += ${em64t_la_SOURCES}
CLEANFILES += ${em64t_la_SOURCES}

em64t.c: em64t_si_gen
	./$<

em64t_si_gen_SOURCES = em64t_si.cxx
em64t_si_gen_LDADD = ${noinst_LIBRARIES}

opteron_la_SOURCES = opteron.c
opteron_la_LDFLAGS = -avoid-version -module

BUILT_SOURCES += ${opteron_la_SOURCES}
CLEANFILES += ${opteron_la_SOURCES}

opteron.c: opteron_si_gen
	./$<

opteron_si_gen_SOURCES = opteron_si.cxx
opteron_si_gen_LDADD = ${noinst_LIBRARIES}
endif

#
# IA64
# 
if TARG_IA64
itanium_la_SOURCES = itanium.c
itanium_la_LDFLAGS = -avoid-version -module

BUILT_SOURCES += ${itanium_la_SOURCES}
CLEANFILES += ${itanium_la_SOURCES}

itanium.c: itanium_si_gen
	./$<

itanium_si_gen_SOURCES = itanium_si.cxx
itanium_si_gen_LDADD = ${noinst_LIBRARIES}
endif

AM_CPPFLAGS = ${PIC_FLAGS} -I${srcdir}/access -I${srcdir}/generate

VPATH = ${srcdir}/abi/${TARG_SUBDIR} ${srcdir}/access ${srcdir}/generate \
	${srcdir}/isa/${TARG_SUBDIR} ${srcdir}/proc/${TARG_SUBDIR}
