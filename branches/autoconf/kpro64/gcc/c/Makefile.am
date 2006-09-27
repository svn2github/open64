noinst_LIBRARIES = libgcc_c.a
libgcc_c_a_SOURCES = c-aux-info.c c-convert.c c-decl.c c-errors.c c-lang.c \
	c-objc-common.c c-parse.c c-typeck.c

#bin_PROGRAMS = gcc
#gcc_SOURCES = gcc.c gccspec.c
#gcc_LDADD = ../common/libgcc_common.a ../libiberty/libiberty.a
#gcc_CPPFLAGS = -DDEFAULT_TARGET_MACHINE=\"${GCC_TARGET_ALIAS}\" \
#	-DDEFAULT_TARGET_VERSION=\"${PACKAGE_VERSION}\"

_topgcc = ${top_srcdir}/contrib/gcc
VPATH = ${_topgcc}/gcc
AM_CPPFLAGS = -DIN_GCC -I${_topgcc}/gcc -I${_topgcc}/gcc/config \
	-I${_topgcc}/include -I../config
