noinst_LIBRARIES = libiberty.a
libiberty_a_SOURCES = concat.c cp-demangle.c cplus-dem.c dyn-string.c \
	fibheap.c getpwd.c getruntime.c hashtab.c hex.c lbasename.c \
	make-relative-prefix.c make-temp-file.c md5.c mkstemps.c obstack.c \
	partition.c pexecute.c physmem.c safe-ctype.c splay-tree.c xexit.c \
	xmalloc.c xmemdup.c xstrdup.c xstrerror.c

_topgcc = ${top_srcdir}/contrib/gcc
VPATH = ${_topgcc}/libiberty
AM_CPPFLAGS = -I${_topgcc}/libiberty -I${_topgcc}/include
