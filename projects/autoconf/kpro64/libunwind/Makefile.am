noinst_LIBRARIES = libunwind.a
libunwind_a_SOURCES = body.c bsp.c bspstore.c dump.c dumpelf.c fpsr.c \
	header.c lc.c leb.c memstack.c overall.c pfs.c preds.c preserve.c \
	priunat.c process.c producer.c rnat.c rp.c spill.c unat.c

VPATH = ${srcdir}/producer ${srcdir}/utils

AM_CPPFLAGS = -I${srcdir}/../include -I../targ_info
