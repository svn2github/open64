libexec_PROGRAMS = gfec
gfec_SOURCES = c_int_model.c main.c omp_directive.cxx rt_symtab.cxx \
	tree_symtab.cxx wfe_decl.cxx wfe_dst.cxx wfe_expr.cxx wfe_misc.cxx \
	wfe_omp_check_stack.cxx wfe_omp_directives.cxx wfe_stmt.cxx

LDADD = ../be/be/libbe.la ../common/libcomutil.a ../targ_info/libtarginfo.a \
	../gcc/c/libgcc_c.a ../gcc/common/libgcc_common.a \
	../gcc/libiberty/libiberty.a \
	-lstdc++

_topgcc = ${top_srcdir}/contrib/gcc
AM_CPPFLAGS = -DCFE -DFRONT_END -DFRONT_END_C -DKEY -DMONGOOSE_CIF \
	-I${srcdir}/../include \
	-I${srcdir}/../common/com -I${srcdir}/../common/com/${TARG_SUBDIR} \
	-I${srcdir}/../common/util \
	-I${srcdir}/../libdwarf \
	-I${top_srcdir}/contrib/dwarf/libdwarf \
	-I${_topgcc}/include -I${_topgcc}/gcc -I${_topgcc}/gcc/config \
	-I../gcc/config
