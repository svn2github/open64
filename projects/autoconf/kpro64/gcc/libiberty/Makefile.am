noinst_LIBRARIES = libiberty.a
libiberty_a_SOURCES = concat.c getruntime.c hashtab.c obstack.c safe-ctype.c \
	xexit.c xmalloc.c xmemdup.c xstrdup.c

_topgcc = ${top_srcdir}/contrib/gcc
VPATH = ${_topgcc}/libiberty
AM_CPPFLAGS = -I${_topgcc}/libiberty -I${_topgcc}/include
