pkglib_LTLIBRARIES = whirl2c.la
whirl2c_la_SOURCES = init.cxx init2c.cxx PUinfo.cxx st2c.cxx stab_attr.cxx \
	tcon2c.cxx token_buffer.cxx ty2c.cxx w2c_driver.cxx \
	w2cf_parentize.cxx w2cf_symtab.cxx whirl2c_common.cxx wn_attr.cxx \
	wn2c.cxx wn2c_pragma.cxx
whirl2c_la_LDFLAGS = -avoid-version -module

AM_CPPFLAGS = -DBUILD_WHIRL2C -DKEY -DMONGOOSE_BE \
	-I../be \
	-I${srcdir}/../be \
	-I${srcdir}/../com \
	-I${srcdir}/../region \
	-I${srcdir}/../../common/com \
	-I${srcdir}/../../common/com/${TARG_SUBDIR} \
	-I${srcdir}/../../common/stl \
	-I${srcdir}/../../common/util \
	-I${srcdir}/../../include
