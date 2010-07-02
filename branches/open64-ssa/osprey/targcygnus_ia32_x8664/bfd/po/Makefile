# Makefile for program source directory in GNU NLS utilities package.
# Copyright (C) 1995, 1996, 1997 by Ulrich Drepper <drepper@gnu.ai.mit.edu>
# Copyright 2001, 2003 Free Software Foundation, Inc.
#
# This file may be copied and used freely without restrictions.  It can
# be used in projects which are not available under the GNU Public License
# but which still want to provide support for the GNU gettext functionality.
# Please note that the actual code is *not* freely available.

PACKAGE = bfd
VERSION = 2.16.1

SHELL = /bin/sh


srcdir = ../../../cygnus/bfd/po
top_srcdir = ../../../cygnus/bfd
VPATH = ../../../cygnus/bfd/po

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

DEFS = -DHAVE_CONFIG_H -DIPA_LINK -DKEY -DOSP_OPT
CFLAGS = -O0 -g -DIs_True_On -m32
CPPFLAGS = 

INCLUDES = -I.. -I$(top_srcdir)/intl

COMPILE = $(CC) -c $(DEFS) $(INCLUDES) $(CPPFLAGS) $(CFLAGS) $(XCFLAGS)

SOURCES = cat-id-tbl.c
POFILES =  fr.po tr.po ja.po es.po sv.po da.po zh_CN.po ro.po
GMOFILES =  fr.gmo tr.gmo ja.gmo es.gmo sv.gmo da.gmo zh_CN.gmo ro.gmo
DISTFILES = ChangeLog Makefile.in.in SRC-POTFILES.in BLD-POTFILES.in $(PACKAGE).pot \
stamp-cat-id $(POFILES) $(GMOFILES) $(SOURCES)

# Note - the following line gets processed by bfd/configure and amended
# to contain the full list of source dir POTFILES.
SRC-POTFILES = \
	../../../cygnus/bfd/aix386-core.c \
	../../../cygnus/bfd/aix5ppc-core.c \
	../../../cygnus/bfd/aout0.c \
	../../../cygnus/bfd/aout32.c \
	../../../cygnus/bfd/aout64.c \
	../../../cygnus/bfd/aout-adobe.c \
	../../../cygnus/bfd/aout-arm.c \
	../../../cygnus/bfd/aout-cris.c \
	../../../cygnus/bfd/aoutf1.h \
	../../../cygnus/bfd/aout-ns32k.c \
	../../../cygnus/bfd/aout-sparcle.c \
	../../../cygnus/bfd/aout-target.h \
	../../../cygnus/bfd/aout-tic30.c \
	../../../cygnus/bfd/aoutx.h \
	../../../cygnus/bfd/archive64.c \
	../../../cygnus/bfd/archive.c \
	../../../cygnus/bfd/archures.c \
	../../../cygnus/bfd/armnetbsd.c \
	../../../cygnus/bfd/bfd.c \
	../../../cygnus/bfd/bfdio.c \
	../../../cygnus/bfd/bfdwin.c \
	../../../cygnus/bfd/binary.c \
	../../../cygnus/bfd/bout.c \
	../../../cygnus/bfd/cache.c \
	../../../cygnus/bfd/cf-i386lynx.c \
	../../../cygnus/bfd/cf-m68klynx.c \
	../../../cygnus/bfd/cf-sparclynx.c \
	../../../cygnus/bfd/cisco-core.c \
	../../../cygnus/bfd/coff64-rs6000.c \
	../../../cygnus/bfd/coff-a29k.c \
	../../../cygnus/bfd/coff-alpha.c \
	../../../cygnus/bfd/coff-apollo.c \
	../../../cygnus/bfd/coff-arm.c \
	../../../cygnus/bfd/coff-aux.c \
	../../../cygnus/bfd/coffcode.h \
	../../../cygnus/bfd/coffgen.c \
	../../../cygnus/bfd/coff-go32.c \
	../../../cygnus/bfd/coff-h8300.c \
	../../../cygnus/bfd/coff-h8500.c \
	../../../cygnus/bfd/coff-i386.c \
	../../../cygnus/bfd/coff-i860.c \
	../../../cygnus/bfd/coff-i960.c \
	../../../cygnus/bfd/cofflink.c \
	../../../cygnus/bfd/coff-m68k.c \
	../../../cygnus/bfd/coff-m88k.c \
	../../../cygnus/bfd/coff-maxq.c \
	../../../cygnus/bfd/coff-mips.c \
	../../../cygnus/bfd/coff-or32.c \
	../../../cygnus/bfd/coff-rs6000.c \
	../../../cygnus/bfd/coff-sh.c \
	../../../cygnus/bfd/coff-sparc.c \
	../../../cygnus/bfd/coff-stgo32.c \
	../../../cygnus/bfd/coff-svm68k.c \
	../../../cygnus/bfd/coffswap.h \
	../../../cygnus/bfd/coff-tic30.c \
	../../../cygnus/bfd/coff-tic4x.c \
	../../../cygnus/bfd/coff-tic54x.c \
	../../../cygnus/bfd/coff-tic80.c \
	../../../cygnus/bfd/coff-u68k.c \
	../../../cygnus/bfd/coff-w65.c \
	../../../cygnus/bfd/coff-we32k.c \
	../../../cygnus/bfd/coff-z8k.c \
	../../../cygnus/bfd/corefile.c \
	../../../cygnus/bfd/cpu-a29k.c \
	../../../cygnus/bfd/cpu-alpha.c \
	../../../cygnus/bfd/cpu-arc.c \
	../../../cygnus/bfd/cpu-arm.c \
	../../../cygnus/bfd/cpu-avr.c \
	../../../cygnus/bfd/cpu-cr16c.c \
	../../../cygnus/bfd/cpu-cris.c \
	../../../cygnus/bfd/cpu-crx.c \
	../../../cygnus/bfd/cpu-d10v.c \
	../../../cygnus/bfd/cpu-d30v.c \
	../../../cygnus/bfd/cpu-dlx.c \
	../../../cygnus/bfd/cpu-fr30.c \
	../../../cygnus/bfd/cpu-frv.c \
	../../../cygnus/bfd/cpu-h8300.c \
	../../../cygnus/bfd/cpu-h8500.c \
	../../../cygnus/bfd/cpu-hppa.c \
	../../../cygnus/bfd/cpu-i370.c \
	../../../cygnus/bfd/cpu-i386.c \
	../../../cygnus/bfd/cpu-i860.c \
	../../../cygnus/bfd/cpu-i960.c \
	../../../cygnus/bfd/cpu-ia64.c \
	../../../cygnus/bfd/cpu-ip2k.c \
	../../../cygnus/bfd/cpu-iq2000.c \
	../../../cygnus/bfd/cpu-m10200.c \
	../../../cygnus/bfd/cpu-m10300.c \
	../../../cygnus/bfd/cpu-m32r.c \
	../../../cygnus/bfd/cpu-m68hc11.c \
	../../../cygnus/bfd/cpu-m68hc12.c \
	../../../cygnus/bfd/cpu-m68k.c \
	../../../cygnus/bfd/cpu-m88k.c \
	../../../cygnus/bfd/cpu-maxq.c \
	../../../cygnus/bfd/cpu-mcore.c \
	../../../cygnus/bfd/cpu-mips.c \
	../../../cygnus/bfd/cpu-mmix.c \
	../../../cygnus/bfd/cpu-msp430.c \
	../../../cygnus/bfd/cpu-ns32k.c \
	../../../cygnus/bfd/cpu-openrisc.c \
	../../../cygnus/bfd/cpu-or32.c \
	../../../cygnus/bfd/cpu-pdp11.c \
	../../../cygnus/bfd/cpu-pj.c \
	../../../cygnus/bfd/cpu-powerpc.c \
	../../../cygnus/bfd/cpu-rs6000.c \
	../../../cygnus/bfd/cpu-s390.c \
	../../../cygnus/bfd/cpu-sh.c \
	../../../cygnus/bfd/cpu-sparc.c \
	../../../cygnus/bfd/cpu-tic30.c \
	../../../cygnus/bfd/cpu-tic4x.c \
	../../../cygnus/bfd/cpu-tic54x.c \
	../../../cygnus/bfd/cpu-tic80.c \
	../../../cygnus/bfd/cpu-v850.c \
	../../../cygnus/bfd/cpu-vax.c \
	../../../cygnus/bfd/cpu-w65.c \
	../../../cygnus/bfd/cpu-we32k.c \
	../../../cygnus/bfd/cpu-xstormy16.c \
	../../../cygnus/bfd/cpu-xtensa.c \
	../../../cygnus/bfd/cpu-z8k.c \
	../../../cygnus/bfd/demo64.c \
	../../../cygnus/bfd/dwarf1.c \
	../../../cygnus/bfd/dwarf2.c \
	../../../cygnus/bfd/ecoff.c \
	../../../cygnus/bfd/ecofflink.c \
	../../../cygnus/bfd/ecoffswap.h \
	../../../cygnus/bfd/efi-app-ia32.c \
	../../../cygnus/bfd/efi-app-ia64.c \
	../../../cygnus/bfd/elf32-am33lin.c \
	../../../cygnus/bfd/elf32-arc.c \
	../../../cygnus/bfd/elf32-arm.c \
	../../../cygnus/bfd/elf32-avr.c \
	../../../cygnus/bfd/elf32.c \
	../../../cygnus/bfd/elf32-cr16c.c \
	../../../cygnus/bfd/elf32-cris.c \
	../../../cygnus/bfd/elf32-crx.c \
	../../../cygnus/bfd/elf32-d10v.c \
	../../../cygnus/bfd/elf32-d30v.c \
	../../../cygnus/bfd/elf32-dlx.c \
	../../../cygnus/bfd/elf32-fr30.c \
	../../../cygnus/bfd/elf32-frv.c \
	../../../cygnus/bfd/elf32-gen.c \
	../../../cygnus/bfd/elf32-h8300.c \
	../../../cygnus/bfd/elf32-hppa.c \
	../../../cygnus/bfd/elf32-hppa.h \
	../../../cygnus/bfd/elf32-i370.c \
	../../../cygnus/bfd/elf32-i386.c \
	../../../cygnus/bfd/elf32-i860.c \
	../../../cygnus/bfd/elf32-i960.c \
	../../../cygnus/bfd/elf32-ip2k.c \
	../../../cygnus/bfd/elf32-iq2000.c \
	../../../cygnus/bfd/elf32-m32r.c \
	../../../cygnus/bfd/elf32-m68hc11.c \
	../../../cygnus/bfd/elf32-m68hc12.c \
	../../../cygnus/bfd/elf32-m68hc1x.c \
	../../../cygnus/bfd/elf32-m68k.c \
	../../../cygnus/bfd/elf32-m88k.c \
	../../../cygnus/bfd/elf32-mcore.c \
	../../../cygnus/bfd/elf32-mips.c \
	../../../cygnus/bfd/elf32-msp430.c \
	../../../cygnus/bfd/elf32-openrisc.c \
	../../../cygnus/bfd/elf32-or32.c \
	../../../cygnus/bfd/elf32-pj.c \
	../../../cygnus/bfd/elf32-ppc.c \
	../../../cygnus/bfd/elf32-s390.c \
	../../../cygnus/bfd/elf32-sh64.c \
	../../../cygnus/bfd/elf32-sh64-com.c \
	../../../cygnus/bfd/elf32-sh.c \
	../../../cygnus/bfd/elf32-sh-symbian.c \
	../../../cygnus/bfd/elf32-sparc.c \
	../../../cygnus/bfd/elf32-v850.c \
	../../../cygnus/bfd/elf32-vax.c \
	../../../cygnus/bfd/elf32-xstormy16.c \
	../../../cygnus/bfd/elf32-xtensa.c \
	../../../cygnus/bfd/elf64-alpha.c \
	../../../cygnus/bfd/elf64.c \
	../../../cygnus/bfd/elf64-gen.c \
	../../../cygnus/bfd/elf64-hppa.c \
	../../../cygnus/bfd/elf64-hppa.h \
	../../../cygnus/bfd/elf64-mips.c \
	../../../cygnus/bfd/elf64-mmix.c \
	../../../cygnus/bfd/elf64-ppc.c \
	../../../cygnus/bfd/elf64-s390.c \
	../../../cygnus/bfd/elf64-sh64.c \
	../../../cygnus/bfd/elf64-sparc.c \
	../../../cygnus/bfd/elf64-x86-64.c \
	../../../cygnus/bfd/elf-bfd.h \
	../../../cygnus/bfd/elf.c \
	../../../cygnus/bfd/elfcode.h \
	../../../cygnus/bfd/elfcore.h \
	../../../cygnus/bfd/elf-eh-frame.c \
	../../../cygnus/bfd/elf-hppa.h \
	../../../cygnus/bfd/elflink.c \
	../../../cygnus/bfd/elf-m10200.c \
	../../../cygnus/bfd/elf-m10300.c \
	../../../cygnus/bfd/elfn32-mips.c \
	../../../cygnus/bfd/elf-strtab.c \
	../../../cygnus/bfd/elfxx-mips.c \
	../../../cygnus/bfd/epoc-pe-arm.c \
	../../../cygnus/bfd/epoc-pei-arm.c \
	../../../cygnus/bfd/format.c \
	../../../cygnus/bfd/freebsd.h \
	../../../cygnus/bfd/genlink.h \
	../../../cygnus/bfd/go32stub.h \
	../../../cygnus/bfd/hash.c \
	../../../cygnus/bfd/hp300bsd.c \
	../../../cygnus/bfd/hp300hpux.c \
	../../../cygnus/bfd/hpux-core.c \
	../../../cygnus/bfd/i386aout.c \
	../../../cygnus/bfd/i386bsd.c \
	../../../cygnus/bfd/i386dynix.c \
	../../../cygnus/bfd/i386freebsd.c \
	../../../cygnus/bfd/i386linux.c \
	../../../cygnus/bfd/i386lynx.c \
	../../../cygnus/bfd/i386mach3.c \
	../../../cygnus/bfd/i386msdos.c \
	../../../cygnus/bfd/i386netbsd.c \
	../../../cygnus/bfd/i386os9k.c \
	../../../cygnus/bfd/ieee.c \
	../../../cygnus/bfd/ihex.c \
	../../../cygnus/bfd/init.c \
	../../../cygnus/bfd/irix-core.c \
	../../../cygnus/bfd/libaout.h \
	../../../cygnus/bfd/libbfd.c \
	../../../cygnus/bfd/libbfd.h \
	../../../cygnus/bfd/libcoff.h \
	../../../cygnus/bfd/libecoff.h \
	../../../cygnus/bfd/libhppa.h \
	../../../cygnus/bfd/libieee.h \
	../../../cygnus/bfd/libnlm.h \
	../../../cygnus/bfd/liboasys.h \
	../../../cygnus/bfd/libpei.h \
	../../../cygnus/bfd/libxcoff.h \
	../../../cygnus/bfd/linker.c \
	../../../cygnus/bfd/lynx-core.c \
	../../../cygnus/bfd/m68k4knetbsd.c \
	../../../cygnus/bfd/m68klinux.c \
	../../../cygnus/bfd/m68klynx.c \
	../../../cygnus/bfd/m68knetbsd.c \
	../../../cygnus/bfd/m88kmach3.c \
	../../../cygnus/bfd/m88kopenbsd.c \
	../../../cygnus/bfd/mach-o.c \
	../../../cygnus/bfd/mach-o.h \
	../../../cygnus/bfd/merge.c \
	../../../cygnus/bfd/mipsbsd.c \
	../../../cygnus/bfd/mmo.c \
	../../../cygnus/bfd/netbsd.h \
	../../../cygnus/bfd/newsos3.c \
	../../../cygnus/bfd/nlm32-alpha.c \
	../../../cygnus/bfd/nlm32.c \
	../../../cygnus/bfd/nlm32-i386.c \
	../../../cygnus/bfd/nlm32-ppc.c \
	../../../cygnus/bfd/nlm32-sparc.c \
	../../../cygnus/bfd/nlm64.c \
	../../../cygnus/bfd/nlm.c \
	../../../cygnus/bfd/nlmcode.h \
	../../../cygnus/bfd/nlmswap.h \
	../../../cygnus/bfd/nlm-target.h \
	../../../cygnus/bfd/ns32k.h \
	../../../cygnus/bfd/ns32knetbsd.c \
	../../../cygnus/bfd/oasys.c \
	../../../cygnus/bfd/opncls.c \
	../../../cygnus/bfd/osf-core.c \
	../../../cygnus/bfd/pc532-mach.c \
	../../../cygnus/bfd/pdp11.c \
	../../../cygnus/bfd/pe-arm.c \
	../../../cygnus/bfd/pef.c \
	../../../cygnus/bfd/pef.h \
	../../../cygnus/bfd/pef-traceback.h \
	../../../cygnus/bfd/pe-i386.c \
	../../../cygnus/bfd/pei-arm.c \
	../../../cygnus/bfd/peicode.h \
	../../../cygnus/bfd/pei-i386.c \
	../../../cygnus/bfd/pei-mcore.c \
	../../../cygnus/bfd/pei-mips.c \
	../../../cygnus/bfd/pei-ppc.c \
	../../../cygnus/bfd/pei-sh.c \
	../../../cygnus/bfd/pe-mcore.c \
	../../../cygnus/bfd/pe-mips.c \
	../../../cygnus/bfd/pe-ppc.c \
	../../../cygnus/bfd/pe-sh.c \
	../../../cygnus/bfd/ppcboot.c \
	../../../cygnus/bfd/reloc16.c \
	../../../cygnus/bfd/reloc.c \
	../../../cygnus/bfd/riscix.c \
	../../../cygnus/bfd/sco5-core.c \
	../../../cygnus/bfd/section.c \
	../../../cygnus/bfd/simple.c \
	../../../cygnus/bfd/som.c \
	../../../cygnus/bfd/som.h \
	../../../cygnus/bfd/sparclinux.c \
	../../../cygnus/bfd/sparclynx.c \
	../../../cygnus/bfd/sparcnetbsd.c \
	../../../cygnus/bfd/srec.c \
	../../../cygnus/bfd/stabs.c \
	../../../cygnus/bfd/stab-syms.c \
	../../../cygnus/bfd/sunos.c \
	../../../cygnus/bfd/syms.c \
	../../../cygnus/bfd/targets.c \
	../../../cygnus/bfd/tekhex.c \
	../../../cygnus/bfd/trad-core.c \
	../../../cygnus/bfd/vax1knetbsd.c \
	../../../cygnus/bfd/vaxbsd.c \
	../../../cygnus/bfd/vaxnetbsd.c \
	../../../cygnus/bfd/versados.c \
	../../../cygnus/bfd/version.h \
	../../../cygnus/bfd/vms.c \
	../../../cygnus/bfd/vms-gsd.c \
	../../../cygnus/bfd/vms.h \
	../../../cygnus/bfd/vms-hdr.c \
	../../../cygnus/bfd/vms-misc.c \
	../../../cygnus/bfd/vms-tir.c \
	../../../cygnus/bfd/xcofflink.c \
	../../../cygnus/bfd/xcoff-target.h \
	../../../cygnus/bfd/xsym.c \
	../../../cygnus/bfd/xsym.h \
	../../../cygnus/bfd/xtensa-isa.c \
	../../../cygnus/bfd/xtensa-modules.c 

# Note - the following line gets processed by bfd/configure and amended
# to contain the full list of build dir POTFILES.
BLD-POTFILES = \
	../bfdver.h \
	../elf32-ia64.c \
	../elf32-target.h \
	../elf64-ia64.c \
	../elf64-target.h \
	../peigen.c \
	../pepigen.c \
	../targmatch.h 

CATALOGS =  fr.gmo tr.gmo ja.gmo es.gmo sv.gmo da.gmo zh_CN.gmo ro.gmo
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

$(srcdir)/$(PACKAGE).pot: $(SRC-POTFILES) $(BLD-POTFILES)
	$(XGETTEXT) --default-domain=$(PACKAGE) \
	  --directory=$(top_srcdir) \
	  --add-comments --keyword=_ --keyword=N_ \
	  --files-from=$(srcdir)/SRC-POTFILES.in 
	$(XGETTEXT) --default-domain=$(PACKAGE) \
	  --directory=.. \
	  --directory=. \
	  --add-comments --keyword=_ --keyword=N_ \
	  --join-existing \
	  --files-from=$(srcdir)/BLD-POTFILES.in
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
	rm -f Makefile Makefile.in *.mo *.msg *.cat *.cat.m
	rm -f SRC-POTFILES BLD-POTFILES 

maintainer-clean: distclean
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."
	rm -f $(GMOFILES) SRC-POTFILES.in BLD-POTFILES.in

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

SRC-POTFILES: SRC-POTFILES.in
	( if test 'x$(srcdir)' != 'x.'; then \
	    posrcprefix='$(top_srcdir)/'; \
	  else \
	    posrcprefix="../"; \
	  fi; \
	  rm -f $@-t $@ \
	    && (sed -e '/^#/d' \
	            -e '/^[ 	]*$$/d' \
		    -e "s@.*@	$$posrcprefix& \\\\@" < $(srcdir)/$@.in \
		| sed -e '$$s/\\$$//') > $@-t \
	    && chmod a-w $@-t \
	    && mv $@-t $@ )

BLD-POTFILES: BLD-POTFILES.in
	  ( rm -f $@-t $@ \
	    && (sed -e '/^#/d' \
	            -e '/^[ 	]*$$/d' \
		    -e "s@.*@	../& \\\\@" < $(srcdir)/$@.in \
		| sed -e '$$s/\\$$//') > $@-t \
	    && chmod a-w $@-t \
	    && mv $@-t $@ )

SRC-POTFILES.in: # ../Makefile
	cd .. && $(MAKE) po/SRC-POTFILES.in

BLD-POTFILES.in: # ../Makefile
	cd .. && $(MAKE) po/BLD-POTFILES.in

# Note - The presence of SRC-POTFILES and BLD-POTFILES as dependencies
# here breaks the implementation of the 'distclean' rule for maintainers.
# This is because if 'make distclean' is run in the BFD directory, the
# Makefile there will be deleted before 'distclean' is made here, and so
# the dependency SRC-POTFILES -> SRC-POTFILES.in -> ../Makefile cannot
# be satisfied.
#
# The SRC-POTFILES and BLD-POTFILES dependencies cannot be removed,
# however since it is necessary that these files be built during
# *configure* time, so that configure can insert them into the
# po/Makefile that it is creating, so that the Makefile will have
# the correct dependencies.
Makefile: Make-in ../config.status SRC-POTFILES BLD-POTFILES
	cd .. \
	  && CONFIG_FILES=$(subdir)/Makefile.in:$(subdir)/Make-in \
	     CONFIG_HEADERS= $(SHELL) ./config.status

# Tell versions [3.59,3.63) of GNU make not to export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
