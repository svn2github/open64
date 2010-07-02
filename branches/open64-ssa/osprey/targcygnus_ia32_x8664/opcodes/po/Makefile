# Makefile for program source directory in GNU NLS utilities package.
# Copyright (C) 1995, 1996, 1997 by Ulrich Drepper <drepper@gnu.ai.mit.edu>
# Copyright (C) 2003 Free Software Foundation, Inc.
#
# This file may be copied and used freely without restrictions.  It can
# be used in projects which are not available under the GNU Public License
# but which still want to provide support for the GNU gettext functionality.
# Please note that the actual code is *not* freely available.

PACKAGE = opcodes
VERSION = 2.16.1

SHELL = /bin/sh


srcdir = ../../../cygnus/opcodes/po
top_srcdir = ../../../cygnus/opcodes
VPATH = ../../../cygnus/opcodes/po

prefix = /usr/x8664-linux
exec_prefix = ${prefix}
datadir = $(prefix)/share
localedir = $(datadir)/locale
gnulocaledir = $(prefix)/share/locale
gettextsrcdir = $(prefix)/share/gettext/po
subdir = po

DESTDIR =

INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
MKINSTALLDIRS = $(srcdir)/../../mkinstalldirs

CC = gcc
GENCAT = @GENCAT@
GMSGFMT = PATH=../src:$$PATH /usr/bin/msgfmt
MSGFMT = /usr/bin/msgfmt
XGETTEXT = PATH=../src:$$PATH :
MSGMERGE = PATH=../src:$$PATH msgmerge

DEFS = -DHAVE_CONFIG_H
CFLAGS = -O0 -g -DIs_True_On -m32
CPPFLAGS = 

INCLUDES = -I.. -I$(top_srcdir)/intl

COMPILE = $(CC) -c $(DEFS) $(INCLUDES) $(CPPFLAGS) $(CFLAGS) $(XCFLAGS)

SOURCES = cat-id-tbl.c
POFILES =  fr.po sv.po tr.po es.po da.po de.po id.po pt_BR.po ro.po nl.po
GMOFILES =  fr.gmo sv.gmo tr.gmo es.gmo da.gmo de.gmo id.gmo pt_BR.gmo ro.gmo nl.gmo
DISTFILES = ChangeLog Makefile.in.in POTFILES.in $(PACKAGE).pot \
stamp-cat-id $(POFILES) $(GMOFILES) $(SOURCES)

POTFILES = \
	../../../cygnus/opcodes/a29k-dis.c \
	../../../cygnus/opcodes/alpha-dis.c \
	../../../cygnus/opcodes/alpha-opc.c \
	../../../cygnus/opcodes/arc-dis.c \
	../../../cygnus/opcodes/arc-ext.c \
	../../../cygnus/opcodes/arc-opc.c \
	../../../cygnus/opcodes/arm-dis.c \
	../../../cygnus/opcodes/arm-opc.h \
	../../../cygnus/opcodes/avr-dis.c \
	../../../cygnus/opcodes/cgen-asm.c \
	../../../cygnus/opcodes/cgen-dis.c \
	../../../cygnus/opcodes/cgen-opc.c \
	../../../cygnus/opcodes/cris-dis.c \
	../../../cygnus/opcodes/cris-opc.c \
	../../../cygnus/opcodes/crx-dis.c \
	../../../cygnus/opcodes/crx-opc.c \
	../../../cygnus/opcodes/d10v-dis.c \
	../../../cygnus/opcodes/d10v-opc.c \
	../../../cygnus/opcodes/d30v-dis.c \
	../../../cygnus/opcodes/d30v-opc.c \
	../../../cygnus/opcodes/disassemble.c \
	../../../cygnus/opcodes/dis-buf.c \
	../../../cygnus/opcodes/dis-init.c \
	../../../cygnus/opcodes/dlx-dis.c \
	../../../cygnus/opcodes/fr30-asm.c \
	../../../cygnus/opcodes/fr30-desc.c \
	../../../cygnus/opcodes/fr30-desc.h \
	../../../cygnus/opcodes/fr30-dis.c \
	../../../cygnus/opcodes/fr30-ibld.c \
	../../../cygnus/opcodes/fr30-opc.c \
	../../../cygnus/opcodes/fr30-opc.h \
	../../../cygnus/opcodes/frv-asm.c \
	../../../cygnus/opcodes/frv-desc.c \
	../../../cygnus/opcodes/frv-desc.h \
	../../../cygnus/opcodes/frv-dis.c \
	../../../cygnus/opcodes/frv-ibld.c \
	../../../cygnus/opcodes/frv-opc.c \
	../../../cygnus/opcodes/frv-opc.h \
	../../../cygnus/opcodes/h8300-dis.c \
	../../../cygnus/opcodes/h8500-dis.c \
	../../../cygnus/opcodes/h8500-opc.h \
	../../../cygnus/opcodes/hppa-dis.c \
	../../../cygnus/opcodes/i370-dis.c \
	../../../cygnus/opcodes/i370-opc.c \
	../../../cygnus/opcodes/i386-dis.c \
	../../../cygnus/opcodes/i860-dis.c \
	../../../cygnus/opcodes/i960-dis.c \
	../../../cygnus/opcodes/ia64-asmtab.c \
	../../../cygnus/opcodes/ia64-asmtab.h \
	../../../cygnus/opcodes/ia64-dis.c \
	../../../cygnus/opcodes/ia64-gen.c \
	../../../cygnus/opcodes/ia64-opc-a.c \
	../../../cygnus/opcodes/ia64-opc-b.c \
	../../../cygnus/opcodes/ia64-opc.c \
	../../../cygnus/opcodes/ia64-opc-d.c \
	../../../cygnus/opcodes/ia64-opc-f.c \
	../../../cygnus/opcodes/ia64-opc.h \
	../../../cygnus/opcodes/ia64-opc-i.c \
	../../../cygnus/opcodes/ia64-opc-m.c \
	../../../cygnus/opcodes/ip2k-asm.c \
	../../../cygnus/opcodes/ip2k-desc.c \
	../../../cygnus/opcodes/ip2k-desc.h \
	../../../cygnus/opcodes/ip2k-dis.c \
	../../../cygnus/opcodes/ip2k-ibld.c \
	../../../cygnus/opcodes/ip2k-opc.c \
	../../../cygnus/opcodes/ip2k-opc.h \
	../../../cygnus/opcodes/iq2000-asm.c \
	../../../cygnus/opcodes/iq2000-desc.c \
	../../../cygnus/opcodes/iq2000-desc.h \
	../../../cygnus/opcodes/iq2000-dis.c \
	../../../cygnus/opcodes/iq2000-ibld.c \
	../../../cygnus/opcodes/iq2000-opc.c \
	../../../cygnus/opcodes/iq2000-opc.h \
	../../../cygnus/opcodes/m10200-dis.c \
	../../../cygnus/opcodes/m10200-opc.c \
	../../../cygnus/opcodes/m10300-dis.c \
	../../../cygnus/opcodes/m10300-opc.c \
	../../../cygnus/opcodes/m32r-asm.c \
	../../../cygnus/opcodes/m32r-desc.c \
	../../../cygnus/opcodes/m32r-desc.h \
	../../../cygnus/opcodes/m32r-dis.c \
	../../../cygnus/opcodes/m32r-ibld.c \
	../../../cygnus/opcodes/m32r-opc.c \
	../../../cygnus/opcodes/m32r-opc.h \
	../../../cygnus/opcodes/m32r-opinst.c \
	../../../cygnus/opcodes/m68hc11-dis.c \
	../../../cygnus/opcodes/m68hc11-opc.c \
	../../../cygnus/opcodes/m68k-dis.c \
	../../../cygnus/opcodes/m68k-opc.c \
	../../../cygnus/opcodes/m88k-dis.c \
	../../../cygnus/opcodes/maxq-dis.c \
	../../../cygnus/opcodes/mcore-dis.c \
	../../../cygnus/opcodes/mcore-opc.h \
	../../../cygnus/opcodes/mips16-opc.c \
	../../../cygnus/opcodes/mips-dis.c \
	../../../cygnus/opcodes/mips-opc.c \
	../../../cygnus/opcodes/mmix-dis.c \
	../../../cygnus/opcodes/mmix-opc.c \
	../../../cygnus/opcodes/ns32k-dis.c \
	../../../cygnus/opcodes/openrisc-asm.c \
	../../../cygnus/opcodes/openrisc-desc.c \
	../../../cygnus/opcodes/openrisc-desc.h \
	../../../cygnus/opcodes/openrisc-dis.c \
	../../../cygnus/opcodes/openrisc-ibld.c \
	../../../cygnus/opcodes/openrisc-opc.c \
	../../../cygnus/opcodes/openrisc-opc.h \
	../../../cygnus/opcodes/or32-dis.c \
	../../../cygnus/opcodes/or32-opc.c \
	../../../cygnus/opcodes/pdp11-dis.c \
	../../../cygnus/opcodes/pdp11-opc.c \
	../../../cygnus/opcodes/pj-dis.c \
	../../../cygnus/opcodes/pj-opc.c \
	../../../cygnus/opcodes/ppc-dis.c \
	../../../cygnus/opcodes/ppc-opc.c \
	../../../cygnus/opcodes/s390-dis.c \
	../../../cygnus/opcodes/s390-mkopc.c \
	../../../cygnus/opcodes/s390-opc.c \
	../../../cygnus/opcodes/sh64-dis.c \
	../../../cygnus/opcodes/sh64-opc.c \
	../../../cygnus/opcodes/sh64-opc.h \
	../../../cygnus/opcodes/sh-dis.c \
	../../../cygnus/opcodes/sh-opc.h \
	../../../cygnus/opcodes/sparc-dis.c \
	../../../cygnus/opcodes/sparc-opc.c \
	../../../cygnus/opcodes/sysdep.h \
	../../../cygnus/opcodes/tic30-dis.c \
	../../../cygnus/opcodes/tic4x-dis.c \
	../../../cygnus/opcodes/tic54x-dis.c \
	../../../cygnus/opcodes/tic54x-opc.c \
	../../../cygnus/opcodes/tic80-dis.c \
	../../../cygnus/opcodes/tic80-opc.c \
	../../../cygnus/opcodes/v850-dis.c \
	../../../cygnus/opcodes/v850-opc.c \
	../../../cygnus/opcodes/vax-dis.c \
	../../../cygnus/opcodes/w65-dis.c \
	../../../cygnus/opcodes/w65-opc.h \
	../../../cygnus/opcodes/xstormy16-asm.c \
	../../../cygnus/opcodes/xstormy16-desc.c \
	../../../cygnus/opcodes/xstormy16-desc.h \
	../../../cygnus/opcodes/xstormy16-dis.c \
	../../../cygnus/opcodes/xstormy16-ibld.c \
	../../../cygnus/opcodes/xstormy16-opc.c \
	../../../cygnus/opcodes/xstormy16-opc.h \
	../../../cygnus/opcodes/xtensa-dis.c \
	../../../cygnus/opcodes/z8k-dis.c \
	../../../cygnus/opcodes/z8kgen.c \
	../../../cygnus/opcodes/z8k-opc.h

CATALOGS =  fr.gmo sv.gmo tr.gmo es.gmo da.gmo de.gmo id.gmo pt_BR.gmo ro.gmo nl.gmo
CATOBJEXT = .gmo
INSTOBJEXT = .mo

.SUFFIXES:
.SUFFIXES: .c .o .po .pox .gmo .mo .msg .cat

.c.o:
	$(COMPILE) $<

.po.pox:
	$(MAKE) $(PACKAGE).pot
	$(MSGMERGE) $< $(srcdir)/$(PACKAGE).pot -o $*.pox

.po.mo:
	$(MSGFMT) -o $@ $<

.po.gmo:
	file=$(srcdir)/`echo $* | sed 's,.*/,,'`.gmo \
	  && rm -f $$file && $(GMSGFMT) -o $$file $<

.po.cat:
	sed -f ../intl/po2msg.sed < $< > $*.msg \
	  && rm -f $@ && $(GENCAT) $@ $*.msg


all: all-yes

all-yes: $(CATALOGS) # $(PACKAGE).pot
all-no:

$(srcdir)/$(PACKAGE).pot: $(POTFILES)
	$(XGETTEXT) --default-domain=$(PACKAGE) --directory=$(top_srcdir) \
	  --add-comments --keyword=_ --keyword=N_ \
	  --files-from=$(srcdir)/POTFILES.in
	rm -f $(srcdir)/$(PACKAGE).pot
	mv $(PACKAGE).po $(srcdir)/$(PACKAGE).pot

$(srcdir)/cat-id-tbl.c: stamp-cat-id; @:
$(srcdir)/stamp-cat-id: $(PACKAGE).pot
	rm -f cat-id-tbl.tmp
	sed -f ../intl/po2tbl.sed $(srcdir)/$(PACKAGE).pot \
		| sed -e "s/@PACKAGE NAME@/$(PACKAGE)/" > cat-id-tbl.tmp
	if cmp -s cat-id-tbl.tmp $(srcdir)/cat-id-tbl.c; then \
	  rm cat-id-tbl.tmp; \
	else \
	  echo cat-id-tbl.c changed; \
	  rm -f $(srcdir)/cat-id-tbl.c; \
	  mv cat-id-tbl.tmp $(srcdir)/cat-id-tbl.c; \
	fi
	cd $(srcdir) && rm -f stamp-cat-id && echo timestamp > stamp-cat-id


install: install-exec install-data
install-exec:
install-info:
install-data: install-data-yes
install-data-no: all
install-data-yes: all
	if test -r $(MKINSTALLDIRS); then \
	  $(MKINSTALLDIRS) $(DESTDIR)$(datadir); \
	else \
	  $(top_srcdir)/mkinstalldirs $(DESTDIR)$(datadir); \
	fi
	@catalogs='$(CATALOGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  case "$$cat" in \
	    *.gmo) destdir=$(gnulocaledir);; \
	    *)     destdir=$(localedir);; \
	  esac; \
	  lang=`echo $$cat | sed 's/\$(CATOBJEXT)$$//'`; \
	  dir=$(DESTDIR)$$destdir/$$lang/LC_MESSAGES; \
	  if test -r $(MKINSTALLDIRS); then \
	    $(MKINSTALLDIRS) $$dir; \
	  else \
	    $(top_srcdir)/mkinstalldirs $$dir; \
	  fi; \
	  if test -r $$cat; then \
	    $(INSTALL_DATA) $$cat $$dir/$(PACKAGE)$(INSTOBJEXT); \
	    echo "installing $$cat as $$dir/$(PACKAGE)$(INSTOBJEXT)"; \
	  else \
	    $(INSTALL_DATA) $(srcdir)/$$cat $$dir/$(PACKAGE)$(INSTOBJEXT); \
	    echo "installing $(srcdir)/$$cat as" \
		 "$$dir/$(PACKAGE)$(INSTOBJEXT)"; \
	  fi; \
	  if test -r $$cat.m; then \
	    $(INSTALL_DATA) $$cat.m $$dir/$(PACKAGE)$(INSTOBJEXT).m; \
	    echo "installing $$cat.m as $$dir/$(PACKAGE)$(INSTOBJEXT).m"; \
	  else \
	    if test -r $(srcdir)/$$cat.m ; then \
	      $(INSTALL_DATA) $(srcdir)/$$cat.m \
		$$dir/$(PACKAGE)$(INSTOBJEXT).m; \
	      echo "installing $(srcdir)/$$cat as" \
		   "$$dir/$(PACKAGE)$(INSTOBJEXT).m"; \
	    else \
	      true; \
	    fi; \
	  fi; \
	done
	if test "$(PACKAGE)" = "gettext"; then \
	  if test -r $(MKINSTALLDIRS); then \
	    $(MKINSTALLDIRS) $(DESTDIR)$(gettextsrcdir); \
	  else \
	    $(top_srcdir)/mkinstalldirs $(DESTDIR)$(gettextsrcdir); \
	  fi; \
	  $(INSTALL_DATA) $(srcdir)/Makefile.in.in \
			  $(DESTDIR)$(gettextsrcdir)/Makefile.in.in; \
	else \
	  : ; \
	fi

# Define this as empty until I found a useful application.
installcheck:

uninstall:
	catalogs='$(CATALOGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  lang=`echo $$cat | sed 's/\$(CATOBJEXT)$$//'`; \
	  rm -f $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/$(PACKAGE)$(INSTOBJEXT); \
	  rm -f $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/$(PACKAGE)$(INSTOBJEXT).m; \
	  rm -f $(DESTDIR)$(gnulocaledir)/$$lang/LC_MESSAGES/$(PACKAGE)$(INSTOBJEXT); \
	  rm -f $(DESTDIR)$(gnulocaledir)/$$lang/LC_MESSAGES/$(PACKAGE)$(INSTOBJEXT).m; \
	done
	rm -f $(DESTDIR)$(gettextsrcdir)/po-Makefile.in.in

check: all

cat-id-tbl.o: ../intl/libgettext.h

dvi info tags TAGS ID:

mostlyclean:
	rm -f core core.* *.pox $(PACKAGE).po *.old.po cat-id-tbl.tmp
	rm -fr *.o

clean: mostlyclean

distclean: clean
	rm -f Makefile Makefile.in POTFILES *.mo *.msg *.cat *.cat.m

maintainer-clean: distclean
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."
	rm -f $(GMOFILES)

distdir = ../$(PACKAGE)-$(VERSION)/$(subdir)
dist distdir: update-po $(DISTFILES)
	dists="$(DISTFILES)"; \
	for file in $$dists; do \
	  ln $(srcdir)/$$file $(distdir) 2> /dev/null \
	    || cp -p $(srcdir)/$$file $(distdir); \
	done

update-po: Makefile
	$(MAKE) $(PACKAGE).pot
	PATH=`pwd`/../src:$$PATH; \
	cd $(srcdir); \
	catalogs='$(CATALOGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  lang=`echo $$cat | sed 's/\$(CATOBJEXT)$$//'`; \
	  mv $$lang.po $$lang.old.po; \
	  echo "$$lang:"; \
	  if $(MSGMERGE) $$lang.old.po $(PACKAGE).pot -o $$lang.po; then \
	    rm -f $$lang.old.po; \
	  else \
	    echo "msgmerge for $$cat failed!"; \
	    rm -f $$lang.po; \
	    mv $$lang.old.po $$lang.po; \
	  fi; \
	done

POTFILES: POTFILES.in
	( if test 'x$(srcdir)' != 'x.'; then \
	    posrcprefix='$(top_srcdir)/'; \
	  else \
	    posrcprefix="../"; \
	  fi; \
	  rm -f $@-t $@ \
	    && (sed -e '/^#/d' -e '/^[ 	]*$$/d' \
		    -e "s@.*@	$$posrcprefix& \\\\@" < $(srcdir)/$@.in \
		| sed -e '$$s/\\$$//') > $@-t \
	    && chmod a-w $@-t \
	    && mv $@-t $@ )

POTFILES.in: # ../Makefile
	cd .. && $(MAKE) po/POTFILES.in

Makefile: Make-in ../config.status POTFILES
	cd .. \
	  && CONFIG_FILES=$(subdir)/Makefile.in:$(subdir)/Make-in \
	     CONFIG_HEADERS= $(SHELL) ./config.status

# Tell versions [3.59,3.63) of GNU make not to export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
