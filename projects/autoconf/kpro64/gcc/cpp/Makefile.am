noinst_LIBRARIES = libgcc_cpp.a
libgcc_cpp_a_SOURCES = call.c class.c cp-lang.c cvt.c decl.c decl2.c dump.c \
	error.c except.c expr.c friend.c init.c lex.c mangle.c method.c \
	optimize.c parse.c pt.c ptree.c repo.c rtti.c search.c semantics.c \
	spew.c tree.c typeck.c typeck2.c

#bin_PROGRAMS = cpp
#cpp_SOURCES = gcc.c cppspec.c
#cpp_LDADD = ../common/libgcc_common.a ../libiberty/libiberty.a
#cpp_CPPFLAGS = -DDEFAULT_TARGET_MACHINE=\"${GCC_TARGET_ALIAS}\" \
#	-DDEFAULT_TARGET_VERSION=\"${PACKAGE_VERSION}\"

_topgcc = ${top_srcdir}/contrib/gcc
VPATH = ${_topgcc}/gcc/cp ${_topgcc}/gcc
AM_CPPFLAGS = -DIN_GCC -I${_topgcc}/gcc -I${_topgcc}/gcc/config \
	-I${_topgcc}/gcc/cp -I${_topgcc}/include -I../config
