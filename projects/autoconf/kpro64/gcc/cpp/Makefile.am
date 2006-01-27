noinst_LIBRARIES = libgcc_cpp.a
libgcc_cpp_a_SOURCES = call.c class.c cp-lang.c cvt.c decl.c decl2.c dump.c \
	error.c except.c expr.c friend.c init.c lex.c mangle.c method.c \
	optimize.c parse.c pt.c ptree.c repo.c rtti.c search.c semantics.c \
	spew.c tree.c typeck.c typeck2.c

_topgcc = ${top_srcdir}/contrib/gcc
VPATH = ${_topgcc}/gcc/cp
AM_CPPFLAGS = -DIN_GCC -I${_topgcc}/gcc -I${_topgcc}/gcc/config \
	-I${_topgcc}/gcc/cp -I${_topgcc}/include -I../config
