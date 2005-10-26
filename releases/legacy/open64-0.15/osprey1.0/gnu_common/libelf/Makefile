# Generated automatically from Makefile.in by configure.
# Makefile for libelf.
# Copyright (C) 1995 - 1998 Michael Riepe <michael@stud.uni-hannover.de>
# 
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Library General Public
# License as published by the Free Software Foundation; either
# version 2 of the License, or (at your option) any later version.
# 
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Library General Public License for more details.
# 
# You should have received a copy of the GNU Library General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

# @(#) $Id: Makefile,v 1.1.1.1 2005/10/21 19:00:00 marcel Exp $

MV = mv -f
RM = rm -f
LN_S = ln -s

CC = gcc
CFLAGS = -g -O2
LIBS = 

# no user serviceable parts below

PACKAGE = libelf
VERSION = 0.7.0

SHELL = /bin/sh


srcdir = .

SUBDIRS = lib po
DISTSUBDIRS = lib po

DISTFILES = \
	acconfig.h aclocal.m4 ChangeLog config.guess config.h.in \
	config.sub configure configure.in COPYING.LIB INSTALL install-sh \
	Makefile.in mkinstalldirs README stamp-h.in VERSION

all: all-recursive all-local
install: install-recursive install-local
uninstall: uninstall-recursive uninstall-local
mostlyclean: mostlyclean-recursive mostlyclean-local
clean: clean-recursive clean-local
distclean: distclean-recursive distclean-local
maintainer-clean: maintainer-clean-recursive maintainer-clean-local

install-compat uninstall-compat:
	cd lib && $(MAKE) $@

all-recursive install-recursive uninstall-recursive \
clean-recursive distclean-recursive \
mostlyclean-recursive maintainer-clean-recursive:
	for subdir in $(SUBDIRS); do \
	  target=`echo $@|sed 's,-recursive,,'`; \
	  echo making $$target in $$subdir; \
	  (cd $$subdir && $(MAKE) $$target) || exit 1; \
	done

all-local:

install-local:

uninstall-local:

mostlyclean-local:
	$(RM) *~ core errlist Log

clean-local: mostlyclean-local

distclean-local: clean-local
	$(RM) config.cache config.h config.log config.status Makefile stamp-h

maintainer-clean-local: distclean-local
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."
	$(RM) config.h.in configure stamp-dist
	$(RM) -r $(distdir)

# Maintainer only

distdir = $(PACKAGE)-$(VERSION)
dist: ./stamp-dist
./stamp-dist: $(DISTFILES)
	$(RM) -r $(distdir)
	mkdir $(distdir)
	for file in $(DISTFILES); do \
	  ln $(srcdir)/$$file $(distdir) || \
	    cp -p $(srcdir)/$$file $(distdir) || exit 1; \
	done
	for subdir in $(DISTSUBDIRS); do \
	  (cd $$subdir && $(MAKE) dist) || exit 1; \
	done
	-$(RM) $(distdir).tar.gz.bak $(PACKAGE).tar.gz
	-$(MV) $(distdir).tar.gz $(distdir).tar.gz.bak
	tar cvhfz $(distdir).tar.gz $(distdir)
	$(LN_S) $(distdir).tar.gz $(PACKAGE).tar.gz
	$(RM) stamp-dist && echo timestamp > stamp-dist

tags:
	rm -f tags
	ctags -vst lib/*.c
	ctags -ast lib/*.h

# For the justification of the following Makefile rules, see node
# `Automatic Remaking' in GNU Autoconf documentation.

configure: configure.in aclocal.m4
	$(RM) $(srcdir)/configure
	cd $(srcdir) && autoconf

config.h.in: stamp-h.in
stamp-h.in: configure.in acconfig.h
	$(RM) $(srcdir)/config.h.in
	cd $(srcdir) && autoheader
	cd $(srcdir) && $(RM) stamp-h.in && echo timestamp > stamp-h.in

config.h: stamp-h
stamp-h: config.h.in config.status
	CONFIG_FILES= CONFIG_HEADERS=config.h ./config.status
	$(RM) stamp-h && echo timestamp > stamp-h

Makefile: Makefile.in config.status
	CONFIG_FILES=$@ CONFIG_HEADERS= ./config.status

lib/Makefile: lib/Makefile.in config.status
	CONFIG_FILES=$@ CONFIG_HEADERS= ./config.status

lib/sys_elf.h: lib/stamp-h
lib/stamp-h: lib/sys_elf.h.in config.status
	CONFIG_FILES= CONFIG_HEADERS=lib/sys_elf.h ./config.status
	$(RM) lib/stamp-h && echo timestamp > lib/stamp-h

po/Makefile: po/Makefile.in config.status
	CONFIG_FILES=$@ CONFIG_HEADERS= ./config.status

config.status: configure config.h.in VERSION
	CC='$(CC)' CFLAGS='$(CFLAGS)' LIBS='$(LIBS)' ./config.status --recheck

reconfig:
	$(RM) config.cache
	CC='$(CC)' CFLAGS='$(CFLAGS)' LIBS='$(LIBS)' ./config.status --recheck

# Tell versions [3.59,3.63) of GNU make not to export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
