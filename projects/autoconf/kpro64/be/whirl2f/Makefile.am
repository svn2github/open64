pkglib_LTLIBRARIES = whirl2f.la
whirl2f_la_SOURCES = diagnostics.cxx init.cxx init2f.cxx PUinfo.cxx st2f.cxx \
	stab_attr.cxx tcon2f.cxx token_buffer.cxx ty2f.cxx w2cf_parentize.cxx \
	w2cf_symtab.cxx w2f_driver.cxx whirl2f_common.cxx wn_attr.cxx \
	wn2f.cxx wn2f_expr.cxx wn2f_io.cxx wn2f_load_store.cxx wn2f_stmt.cxx \
	wn2f_pragma.cxx
whirl2f_la_LDFLAGS = -avoid-version -module

AM_CPPFLAGS = -DBUILD_WHIRL2F -DKEY \
	-I../be \
	-I${srcdir}/../be \
	-I${srcdir}/../com \
	-I${srcdir}/../region \
	-I${srcdir}/../whirl2c \
	-I${srcdir}/../../common/com \
	-I${srcdir}/../../common/com/${TARG_SUBDIR} \
	-I${srcdir}/../../common/stl \
	-I${srcdir}/../../common/util \
	-I${srcdir}/../../include  

VPATH = ${srcdir} ${srcdir}/../whirl2c
