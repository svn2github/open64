#
#
#  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.
#
#  This program is free software; you can redistribute it and/or modify it
#  under the terms of version 2 of the GNU General Public License as
#  published by the Free Software Foundation.
#
#  This program is distributed in the hope that it would be useful, but
#  WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
#
#  Further, this software is distributed without any warranty that it is
#  free of the rightful claim of any third person regarding infringement 
#  or the like.  Any license provided herein, whether implied or 
#  otherwise, applies only to this software file.  Patent licenses, if 
#  any, provided herein do not apply to combinations of this program with 
#  other software, or any other product whatsoever.  
#
#  You should have received a copy of the GNU General Public License along
#  with this program; if not, write the Free Software Foundation, Inc., 59
#  Temple Place - Suite 330, Boston MA 02111-1307, USA.
#
#  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
#  Mountain View, CA 94043, or:
#
#  http://www.sgi.com
#
#  For further information regarding this notice, see:
#
#  http://oss.sgi.com/projects/GenInfo/NoticeExplan
#
#

#
#ident "$Revision: 1.1.1.1 $"

SHELL=/bin/sh
ECHO=echo

ifndef GNU_BUILD

ifndef NO64BIT
SUBDIRS=targ32_m2 targ64_m3 targ64_m4 targ64_m4_r8 targ64_m4_r10 targn32_m3 targn32_m4 targn32_m4_r8 targn32_m4_r10
else
SUBDIRS=targ32_m2 targn32_m3 targn32_m4 targn32_m4_r8 targn32_m4_r10
endif

SUBDIRS1=targucode

ifdef NON_NDA
SUBDIRS2=
##else
# force targm2i to be exported after targn32_m3
# --- no longer build targm2i --
##SUBDIRS2=targm2i
endif
BUILDDIR=build

else

SUBDIRS=targia32_ia64
SUBDIRS1=targia32_ia32
# force nodebug to be done second
SUBDIRS2=targia32_ia64_nodebug
SUBDIRS3=targia64
BUILDDIR=targia32_ia64_nodebug/build

endif
# end of #ifdef GNU_BUILD

SUBPROD=buildprod62 buildprod63 buildpatch

COMMONTARGS=clobber clean rmtargets fluff tags
COMMONPREF=mongoose
_FORCE=$(COMMONPREF)_force
SRC=`pwd`
MANDIRS=man
BOOKDIRS=books
RELNOTEDIRS=relnotes

-include localdefs

#
# parallel targets
#
ifndef LOGDIR
LOGDIR=.
endif
ifndef LOG
LOG=cmplrs.$@
endif
ifndef STRAIN
STRAIN=$(TOOLROOT)/usr/sbin/strain
endif
TMPDIR=.
# on 6.2MR set FOLD to "| fold -w 512"
FOLD=
BASENAME=$(basename $@)
SUFFIX=$(patsubst .%,%,$(suffix $@))

test.foo:
	if test ! -d $(BASENAME) then \
	   $(ECHO) "SKIPPING $(BASENAME): No such directory."; \
	else \
	   $(ECHO) "suffix is $(SUFFIX)"; \
	fi

pexports: $(SUBDIRS:=.exports)
$(SUBDIRS2:=.exports): $(SUBDIRS:=.exports)
	if test ! -d $(BASENAME); then \
	   $(ECHO) "SKIPPING $(BASENAME): No such directory."; \
	else \
	   $(ECHO) "\tcd $(BASENAME); $(MAKE) $(SUFFIX)"; \
	   cd $(BASENAME) ; \
	     $(MAKE) $(SUFFIX) $(FOLD) > $(LOGDIR)/$(LOG) 2>&1; \
	     $(STRAIN) $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).strain 2>&1; \
	     $(STRAIN) -w $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).warnings 2>&1; \
	fi

pexports2: $(SUBDIRS1:=.exports)

$(SUBDIRS:=.exports) $(SUBDIRS1:=.exports):
	if test ! -d $(BASENAME); then \
	   $(ECHO) "SKIPPING $(BASENAME): No such directory."; \
	else \
	   $(ECHO) "\tcd $(BASENAME); $(MAKE) $(SUFFIX)"; \
	   cd $(BASENAME) ; \
	     $(MAKE) $(SUFFIX) $(FOLD) > $(LOGDIR)/$(LOG) 2>&1; \
	     $(STRAIN) $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).strain 2>&1; \
	     $(STRAIN) -w $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).warnings 2>&1; \
	fi


pclobber: $(SUBDIRS:=.clobber) $(SUBDIRS2:=.clobber)

pclobber2: $(SUBDIRS1:=.clobber)

pclobber3: $(SUBDIRS3:=.clobber)

$(SUBDIRS:=.clobber) $(SUBDIRS1:=.clobber) $(SUBDIRS2:=.clobber) $(SUBDIRS3:=.clobber):
	if test $(BASENAME) = "targucode" ; then \
		echo "SKIPPING  $(BASENAME): TO SAVE TIME" ; \
	else \
		if test ! -d $(BASENAME); then \
		   $(ECHO) "SKIPPING $(BASENAME): No such directory."; \
		else \
		   $(ECHO) "\tcd $(BASENAME); $(MAKE) $(SUFFIX)"; \
		   cd $(BASENAME) ; \
		     $(MAKE) $(SUFFIX) $(FOLD) > $(LOGDIR)/$(LOG) 2>&1; \
		     $(STRAIN) $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).strain 2>&1; \
		     $(STRAIN) -w $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).warnings 2>&1; \
		fi; \
	fi


prawidb: $(SUBDIRS:=.rawidb) $(MANDIRS:=.rawidb) $(BOOKDIRS:=.rawidb) $(RELNOTEDIRS:=.rawidb) $(SUBDIRS2:=.rawidb)

prawidb2: $(SUBDIRS1:=.rawidb)

$(SUBDIRS:=.rawidb) $(MANDIRS:=.rawidb) $(BOOKDIRS:=.rawidb) $(RELNOTEDIRS:=.rawidb) $(SUBDIRS1:=.rawidb) $(SUBDIRS2:=.rawidb):
	SRC=$(SRC); \
	if test ! -d $(BASENAME); then \
	   $(ECHO) "SKIPPING $(BASENAME): No such directory."; \
	else \
	   $(ECHO) "\tcd $(BASENAME); $(MAKE) $(SUFFIX) SRC=$$SRC"; \
	   cd $(BASENAME) ; \
	     $(MAKE) $(SUFFIX) SRC=$$SRC $(FOLD) > $(LOGDIR)/$(LOG) 2>&1; \
	     $(STRAIN) $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).strain 2>&1; \
	     $(STRAIN) -w $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).warnings 2>&1; \
	fi


pdefault: $(SUBDIRS2:=.default)
$(SUBDIRS2:=.default): $(SUBDIRS:=.default)
	SRC=$(SRC); \
	if test ! -d $(BASENAME); then \
	   $(ECHO) "SKIPPING $(BASENAME): No such directory."; \
	else \
	   $(ECHO) "\tcd $(BASENAME); $(MAKE) $(SUFFIX) SRC=$$SRC"; \
	   cd $(BASENAME) ; \
	     $(MAKE) $(SUFFIX) SRC=$$SRC $(FOLD) > $(LOGDIR)/$(LOG) 2>&1; \
	     $(STRAIN) $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).strain 2>&1; \
	     $(STRAIN) -w $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).warnings 2>&1; \
	fi

pdefault2: $(SUBDIRS1:=.default)

pdefault3: $(SUBDIRS3:=.default)

$(SUBDIRS:=.default) $(SUBDIRS1:=.default) $(SUBDIRS3:=.default):
	SRC=$(SRC); \
	if test ! -d $(BASENAME); then \
	   $(ECHO) "SKIPPING $(BASENAME): No such directory."; \
	else \
	   $(ECHO) "\tcd $(BASENAME); $(MAKE) $(SUFFIX) SRC=$$SRC"; \
	   cd $(BASENAME) ; \
	     $(MAKE) $(SUFFIX) SRC=$$SRC $(FOLD) > $(LOGDIR)/$(LOG) 2>&1; \
	     $(STRAIN) $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).strain 2>&1; \
	     $(STRAIN) -w $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).warnings 2>&1; \
	fi


default $(COMMONTARGS) install exports:
	@for d in $(SUBDIRS) $(SUBDIRS1) $(SUBDIRS2) ; do \
		if test ! -d $$d; then \
			echo "SKIPPING $$d: No such directory."; \
		else \
			$(ECHO) "\tcd $$d; $(MAKE) $@"; \
			cd $$d; $(MAKE) $@; cd ..; \
		fi \
	done

headers:
	@for d in $(SUBDIRS) $(SUBDIRS1) $(SUBDIRS2) ; do \
		if test ! -d $$d; then \
			echo "SKIPPING $$d: No such directory."; \
		else \
			$(ECHO) "\tcd $$d; $(MAKE) $@"; \
			cd $$d; $(MAKE) $@; cd ..; \
		fi \
	done

rawidb:
	SRC=$(SRC); \
	for d in $(SUBDIRS) $(MANDIRS) $(BOOKDIRS) $(RELNOTEDIRS) $(SUBDIRS1) $(SUBDIRS2) ; do \
		if test ! -d $$d; then \
			$(ECHO) "SKIPPING $$d: No such directory."; \
		else \
			$(ECHO) "\tcd $$d; $(MAKE) SRC=$$SRC $@"; \
			cd $$d; $(MAKE) SRC=$$SRC $@;  cd ..; \
		fi \
	done

startversion version:
	cd $(BUILDDIR); $(MAKE) $@

ism:
	cd $(BUILDDIR); $(MAKE) buildism

ismi:
	if test -d build_i ; then \
		cd build_i; $(MAKE) buildism ; \
	fi

images::
	cd $(BUILDDIR); $(MAKE) buildimages

imagesi::
	if test -d build_i ; then \
		cd build_i; $(MAKE) ibuildimages ; \
	fi

product:: base_product
	$(MAKE) pproduct_clobber LOGDIR=$(TMPDIR)
	rm -rf $(TMPDIR)/clobber*
	$(MAKE) pproduct_clobber pproduct_all

base_product:
	cd buildprod; $(MAKE) clobber all

pproduct_clobber: $(SUBPROD:=.clobber)
$(SUBPROD:=.clobber):
	if test ! -d $(BASENAME); then \
	   $(ECHO) "SKIPPING $(BASENAME): No such directory."; \
	else \
	   $(ECHO) "\tcd $(BASENAME); $(MAKE) $(SUFFIX)"; \
	   cd $(BASENAME) ; \
	     $(MAKE) $(SUFFIX) $(FOLD) > $(LOGDIR)/$(LOG) 2>&1; \
	     $(STRAIN) $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).strain 2>&1; \
	     $(STRAIN) -w $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).warnings 2>&1; \
	fi

pproduct_all: $(SUBPROD:=.all)
$(SUBPROD:=.all):
	if test ! -d $(BASENAME); then \
	   $(ECHO) "SKIPPING $(BASENAME): No such directory."; \
	else \
	   $(ECHO) "\tcd $(BASENAME); $(MAKE) $(SUFFIX)"; \
	   cd $(BASENAME) ; \
	     $(MAKE) $(SUFFIX) $(FOLD) > $(LOGDIR)/$(LOG) 2>&1; \
	     $(STRAIN) $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).strain 2>&1; \
	     $(STRAIN) -w $(LOGDIR)/$(LOG) > $(LOGDIR)/$(LOG).warnings 2>&1; \
	fi
