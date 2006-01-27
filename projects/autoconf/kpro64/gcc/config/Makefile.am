BUILT_SOURCES = genrtl.c gtype-desc.c insn-attr.h insn-attrtab.c insn-codes.h \
	insn-emit.c insn-extract.c insn-flags.h insn-opinit.c insn-output.c \
	insn-peep.c insn-recog.c options.h
CLEANFILES=

LDADD = ../libiberty/libiberty.a -lm

_topgcc = ${top_srcdir}/contrib/gcc

CLEANFILES += genrtl.c genrtl.h
genrtl.h: gengenrtl
	./gengenrtl -h > $@
genrtl.c: genrtl.h gengenrtl
	./gengenrtl > $@

GTFILES_FILES_FILES = ${_topgcc}/gcc/cp/mangle.c ${_topgcc}/gcc/cp/cp-tree.h \
	${_topgcc}/gcc/cp/decl.h ${_topgcc}/gcc/cp/lex.h \
	${_topgcc}/gcc/cp/call.c ${_topgcc}/gcc/cp/decl.c \
	${_topgcc}/gcc/cp/decl2.c ${_topgcc}/gcc/cp/parse.y \
	${_topgcc}/gcc/cp/pt.c ${_topgcc}/gcc/cp/repo.c \
	${_topgcc}/gcc/cp/spew.c ${_topgcc}/gcc/cp/tree.c \
	${_topgcc}/gcc/c-common.c ${_topgcc}/gcc/c-common.h \
	${_topgcc}/gcc/c-pragma.c \
	${_topgcc}/gcc/c-lang.c ${_topgcc}/gcc/c-parse.in \
	${_topgcc}/gcc/c-tree.h ${_topgcc}/gcc/c-decl.c \
	${_topgcc}/gcc/c-common.c ${_topgcc}/gcc/c-common.h \
	${_topgcc}/gcc/c-pragma.c ${_topgcc}/gcc/c-objc-common.c
GTFILES_FILES_LANGS = cp cp cp cp cp cp cp cp cp cp cp cp cp cp cp \
	c c c c c c c c

GTFILES = gcc-config.h ${GCC_FULL_HEADERS_CONFIG} \
	${_topgcc}/gcc/location.h ${_topgcc}/include/hashtab.h \
	${_topgcc}/gcc/bitmap.h ${_topgcc}/gcc/function.h \
	${_topgcc}/gcc/rtl.h ${_topgcc}/gcc/optabs.h \
	${_topgcc}/gcc/tree.h ${_topgcc}/gcc/libfuncs.h \
	${_topgcc}/gcc/hashtable.h ${_topgcc}/gcc/real.h \
	${_topgcc}/gcc/varray.h ${_topgcc}/gcc/ssa.h \
	${_topgcc}/gcc/insn-addr.h ${_topgcc}/gcc/cselib.h \
	${_topgcc}/gcc/c-common.h ${_topgcc}/gcc/c-tree.h \
	${_topgcc}/gcc/basic-block.h \
	${_topgcc}/gcc/alias.c ${_topgcc}/gcc/bitmap.c \
	${_topgcc}/gcc/cselib.c ${_topgcc}/gcc/dwarf2out.c \
	${_topgcc}/gcc/emit-rtl.c ${_topgcc}/gcc/except.c \
	${_topgcc}/gcc/explow.c ${_topgcc}/gcc/expr.c \
	${_topgcc}/gcc/fold-const.c ${_topgcc}/gcc/function.c \
	${_topgcc}/gcc/gcse.c ${_topgcc}/gcc/integrate.c \
	${_topgcc}/gcc/lists.c ${_topgcc}/gcc/optabs.c \
	${_topgcc}/gcc/profile.c ${_topgcc}/gcc/ra-build.c \
	${_topgcc}/gcc/regclass.c ${_topgcc}/gcc/reg-stack.c \
	${_topgcc}/gcc/sdbout.c ${_topgcc}/gcc/stmt.c \
	${_topgcc}/gcc/stor-layout.c ${_topgcc}/gcc/tree.c \
	${_topgcc}/gcc/varasm.c \
	${_topgcc}/gcc/config/${GCC_OUT_FILE} \
	${GTFILES_FILES_FILES}

GENGTYPE_ALL = gtype-desc.h gtype-desc.c gt-except.h gt-function.h \
	gt-integrate.h gt-stmt.h gt-tree.h gt-varasm.h gt-emit-rtl.h \
	gt-explow.h gt-stor-layout.h gt-regclass.h gt-lists.h gt-alias.h \
	gt-cselib.h gt-fold-const.h gt-gcse.h gt-profile.h gt-expr.h \
	gt-sdbout.h gt-optabs.h gt-bitmap.h gt-dwarf2out.h gt-ra-build.h \
	gt-reg-stack.h gt-c-common.h gt-c-decl.h gt-c-parse.h gt-c-pragma.h \
	gt-c-objc-common.h gtype-c.h gt-location.h \
	gt-cp-call.h gt-cp-decl2.h gt-cp-decl.h gt-cp-mangle.h gt-cp-parse.h \
	gt-cp-pt.h gt-cp-repo.h gt-cp-spew.h gt-cp-tree.h gtype-cp.h
CLEANFILES += ${GENGTYPE_ALL}

${GENGTYPE_ALL}: .gengtype ; @true

.gengtype: gengtype ${GTFILES}
	./gengtype
	@touch .gengtype

CLEANFILES += insn-attrtab.c
insn-attrtab.c: genattrtab
	./genattrtab ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-attr.h
insn-attr.h: genattr
	./genattr ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-codes.h
insn-codes.h: gencodes
	./gencodes ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-emit.c
insn-emit.c: genemit
	./genemit ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-extract.c
insn-extract.c: genextract
	./genextract ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-flags.h
insn-flags.h: genflags
	./genflags ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-opinit.c
insn-opinit.c: genopinit
	./genopinit ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-output.c
insn-output.c: genoutput
	./genoutput ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-peep.c
insn-peep.c: genpeep
	./genpeep ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-recog.c
insn-recog.c: genrecog
	./genrecog ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += options.h
options.h: Makefile
	echo '#include "cp/lang-options.h"' > $@

noinst_PROGRAMS = genattr genattrtab gencheck gencodes genconditions \
	genconfig genconstants genemit genextract genflags gengenrtl \
	gengtype genopinit genoutput genpeep genpreds genrecog

_early_support = dummy-conditions.c gensupport.c
_rtl = bitmap.c ggc-none.c read-rtl.c rtl.c
_support = gensupport.c insn-conditions.c

genattr_SOURCES = errors.c genattr.c print-rtl.c ${_rtl} ${_support}
genattrtab_SOURCES = errors.c genattrtab.c genautomata.c print-rtl.c \
	varray.c ${_rtl} ${_support}
gencheck_SOURCES = gencheck.c
gencodes_SOURCES = errors.c gencodes.c print-rtl.c ${_rtl} ${_support}
genconditions_SOURCES = errors.c genconditions.c ${_early_support} ${_rtl}
genconfig_SOURCES = errors.c genconfig.c print-rtl.c ${_rtl} ${_support}
genconstants_SOURCES = errors.c genconstants.c ${_early_support} ${_rtl}
genemit_SOURCES = errors.c genemit.c print-rtl.c ${_rtl} ${_support}
genextract_SOURCES = errors.c genextract.c print-rtl.c ${_rtl} ${_support}
genflags_SOURCES = errors.c genflags.c print-rtl.c ${_rtl} ${_support}
gengenrtl_SOURCES = gengenrtl.c
gengtype_SOURCES = gengtype.c gengtype-lex.c gengtype-yacc.c
genopinit_SOURCES = errors.c genopinit.c print-rtl.c ${_rtl} ${_support}
genoutput_SOURCES = errors.c genoutput.c print-rtl.c ${_rtl} ${_support}
genpeep_SOURCES = errors.c genpeep.c print-rtl.c ${_rtl} ${_support}
genpreds_SOURCES = genpreds.c
genrecog_SOURCES = errors.c genrecog.c print-rtl.c ${_rtl} ${_support}

bitmap.o: gt-bitmap.h
genattrtab.o: gencheck.h
gencheck.o: gencheck.h
genconstants.o: genrtl.h
genextract.o: insn-config.h
gengenrtl.o: hconfig.h
gengtype.o: gtyp-gen.h hconfig.h
gengtype-lex.o: hconfig.h
gengtype-yacc.o: hconfig.h
insn-conditions.o: insn-constants.h tm_p.h
print-rtl.o: tree-check.h

CLEANFILES += insn-conditions.c
insn-conditions.c: genconditions
	./genconditions ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-config.h
insn-config.h: genconfig
	./genconfig ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += insn-constants.h
insn-constants.h: genconstants
	./genconstants ${_topgcc}/gcc/config/${GCC_MD_FILE} > $@

CLEANFILES += tm-preds.h
tm-preds.h: genpreds
	./genpreds > $@

CLEANFILES += tree-check.h
tree-check.h: gencheck
	./gencheck > $@

CLEANFILES += gcc-config.h
gcc-config.h: Makefile
	HEADERS="${GCC_HEADERS_CONFIG}" \
	TARGET_CPU_DEFAULT="${GCC_TARGET_CPU_DEFAULT}" \
	TM_DEFINES="${GCC_TM_DEFINES}" \
	XM_DEFINES="${GCC_XM_DEFINES_CONFIG}" \
	${SHELL} ${_topgcc}/gcc/mkconfig.sh config.h
	rm -f cs-config.h
	mv config.h $@
	if test x${GCC_EXTRA_MODES} != x; then \
	    echo "#define EXTRA_MODES_FILE \"${GCC_EXTRA_MODES}\"" >> $@; \
	    echo "#define EXTRA_CC_MODES 1" >> $@; \
	fi
	echo "#define HAVE_AS_GOTOFF_IN_DATA 0" >> $@

CLEANFILES += gencheck.h
gencheck.h: Makefile
	echo '#include "cp/cp-tree.def"' > $@

CLEANFILES += hconfig.h
hconfig.h: gcc-config.h
	echo '#include <config.h>' > $@

GTFILES_LANG_DIR_NAMES = cp

CLEANFILES += gtyp-gen.h
gtyp-gen.h: Makefile
	echo "/* This file is machine generated.  Do not edit.  */" > $@
	echo "static const char *srcdir = \"${_topgcc}/gcc\";" >> $@
	echo "static const char *lang_files[] = {" >> $@
	for f in ${GTFILES_FILES_FILES}; do echo "\"$$f\", "; done >> $@
	echo "NULL};" >> $@
	echo "static const char *langs_for_lang_files[] = {" >> $@
	for f in ${GTFILES_FILES_LANGS}; do echo "\"$$f\", " ; done >> $@
	echo "NULL};" >> $@
	echo "static const char *all_files[] = {" >> $@
	for f in ${GTFILES}; do echo "\"$$f\", "; done >> $@
	echo " NULL};" >> $@
	echo "static const char *lang_dir_names[] = { \"c\", " >> $@
	for l in ${GTFILES_LANG_DIR_NAMES}; do echo "\"$$l\", "; done >> $@
	echo "NULL};" >> $@

CLEANFILES += tm_p.h
tm_p.h: tm-preds.h Makefile
	HEADERS="$(GCC_HEADERS_TM_P)" \
	TARGET_CPU_DEFAULT="" TM_DEFINES="" XM_DEFINES="" \
	${SHELL} ${_topgcc}/gcc/mkconfig.sh $@
	rm -f cs-$@

VPATH = ${_topgcc}/gcc

AM_CPPFLAGS = -DIN_GCC -DGENERATOR_FILE -I${_topgcc}/include -I${_topgcc}/gcc \
	-I${_topgcc}/gcc/config
