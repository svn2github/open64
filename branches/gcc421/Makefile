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

# The directory where all native compiler component build subdirectories
# are located
#

MACHINE_TYPE = $(shell uname -m | sed -e s/i.86/i386/ )

ifneq ($(MACHINE_TYPE), ia64)
ifneq ($(MACHINE_TYPE), x86_64)
ifneq ($(MACHINE_TYPE), i386)
  ABORT_BUILD = "Unsupported Platform: $(MACHINE_TYPE)"
endif
endif
endif


ifdef ABORT_BUILD
PHONY: abort
abort .DEFAULT:
	@echo "Error: " $(ABORT_BUILD)
	@exit 1
else
# MACHINE_TYPE is ia64 or x86_64 or i386


ifeq ($(MACHINE_TYPE), ia64)
# ia64
  NATIVE_BUILD_DIR    = osprey/targia64_ia64_nodebug
  NATIVE_BUILD_DIR_LD = osprey/targcygnus_ia64_ia64
  GNUFE_BUILD_DIR     = osprey-gcc/targia64_ia64
  GNUFE42_BUILD_DIR   = osprey-gcc-4.2.0/targia64_ia64
  TARGET_EXTRA_OBJ    = $(NATIVE_BUILD_DIR)/targ_info/itanium.so 
  TARGET_EXTRA_OBJ   += $(NATIVE_BUILD_DIR)/orc_ict/orc_ict.so
  TARGET_EXTRA_OBJ   += $(NATIVE_BUILD_DIR)/orc_intel/orc_intel.so
  LIB_BUILD_DIR       = osprey/targia64
endif
ifeq ($(MACHINE_TYPE), i386)
# i386
  NATIVE_BUILD_DIR    = osprey/targia32_x8664
  NATIVE_BUILD_DIR_LD = osprey/targcygnus_ia32_x8664
  GNUFE_BUILD_DIR     = osprey-gcc/targia32_x8664
  GNUFE42_BUILD_DIR   = osprey-gcc-4.2.0/targia32_x8664
  TARGET_EXTRA_OBJ    = $(NATIVE_BUILD_DIR)/targ_info/opteron.so
  TARGET_EXTRA_OBJ   += $(NATIVE_BUILD_DIR)/targ_info/em64t.so
  LIB_BUILD_DIR       = osprey/targia32_builtonia32
endif

ifeq ($(MACHINE_TYPE), x86_64)
# x86_64
  NATIVE_BUILD_DIR    = osprey/targx8664_x8664
  NATIVE_BUILD_DIR_LD = osprey/targcygnus_x8664_x8664
  GNUFE_BUILD_DIR     = osprey-gcc/targx8664_x8664
  GNUFE42_BUILD_DIR   = osprey-gcc-4.2.0/targx8664_x8664
  TARGET_EXTRA_OBJ    = $(NATIVE_BUILD_DIR)/targ_info/opteron.so
  TARGET_EXTRA_OBJ   += $(NATIVE_BUILD_DIR)/targ_info/em64t.so
  LIB_BUILD_DIR       = osprey/targx8664_builtonia32
endif

CROSS_BUILD = false

# All native compiler components:
BASIC_COMPONENTS = \
		$(NATIVE_BUILD_DIR)/driver/driver \
                $(NATIVE_BUILD_DIR)/be/be \
                $(NATIVE_BUILD_DIR)/be/be.so \
                $(NATIVE_BUILD_DIR)/cg/cg.so \
                $(NATIVE_BUILD_DIR)/wopt/wopt.so \
                $(NATIVE_BUILD_DIR)/lno/lno.so \
                $(NATIVE_BUILD_DIR)/lw_inline/inline \
                $(NATIVE_BUILD_DIR)/ipa/ipa.so \
                $(NATIVE_BUILD_DIR)/ipl/ipl.so \
                $(NATIVE_BUILD_DIR)/ipl/ipl \
                $(NATIVE_BUILD_DIR)/whirl2c/whirl2c.so \
                $(NATIVE_BUILD_DIR)/whirl2c/whirl2c \
                $(NATIVE_BUILD_DIR)/whirl2f/whirl2f.so \
                $(NATIVE_BUILD_DIR)/whirl2f/whirl2f \
                $(NATIVE_BUILD_DIR)/ir_tools/ir_b2a \
                $(NATIVE_BUILD_DIR_LD)/ld/ld-new 

GNU3_FE_COMPONENTS = \
                $(NATIVE_BUILD_DIR)/gccfe/gfec \
                $(NATIVE_BUILD_DIR)/g++fe/gfecc

GNU4_FE_COMPONENTS = \
                $(NATIVE_BUILD_DIR)/wgen/wgen \
                $(GNUFE_BUILD_DIR)/gcc/cc1  \
                $(GNUFE_BUILD_DIR)/gcc/cc1plus

GNU42_FE_COMPONENTS = \
                $(NATIVE_BUILD_DIR)/wgen_4_2_0/wgen42 \
                $(GNUFE_BUILD_DIR)/gcc/cc142 \
                $(GNUFE_BUILD_DIR)/gcc/cc1plus42

FORT_FE_COMPONENTS = \
                $(NATIVE_BUILD_DIR)/crayf90/sgi/mfef95

FIRST_COMPONENTS = \
		$(NATIVE_BUILD_DIR)/include \
		$(NATIVE_BUILD_DIR)/libcomutil \
		$(NATIVE_BUILD_DIR)/libcmplrs \
                $(NATIVE_BUILD_DIR)/libiberty \
		$(NATIVE_BUILD_DIR)/targ_info \
		$(NATIVE_BUILD_DIR)/libelf \
		$(NATIVE_BUILD_DIR)/libelfutil \
		$(NATIVE_BUILD_DIR)/libdwarf \
		$(NATIVE_BUILD_DIR)/libunwindP \
		$(NATIVE_BUILD_DIR)/libcif \
		$(NATIVE_BUILD_DIR)/arith

NATIVE_COMPONENTS = $(BASIC_COMPONENTS) $(TARGET_EXTRA_OBJ)  \
                    $(GNU3_FE_COMPONENTS) $(GNU4_FE_COMPONENTS) \
                    $(GNU42_FE_COMPONENTS) $(FORT_FE_COMPONENTS) \
		    $(FIRST_COMPONENTS) 

CROSS_COMPONENTS =  $(BASIC_COMPONENTS) $(TARGET_EXTRA_OBJ) \
                    $(GNU3_FE_COMPONENTS) $(FORT_FE_COMPONENTS)

CROSS_PHONY_TARGET = $(shell for i in $(CROSS_COMPONENTS); do basename "$$i" ; done)

PHONY_TARGET = $(shell for i in $(NATIVE_COMPONENTS); do basename "$$i" ; done) 
.PHONY : $(PHONY_TARGET) install clean clobber 

#define SKIP_DEP_BUILD will disable the unnecessary dependency check
export SKIP_DEP_BUILD=1 

all: build
include:
	$(MAKE) -C $(NATIVE_BUILD_DIR)/include

libcomutil: include
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libcomutil

libcmplrs: include
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libcmplrs

libiberty: include
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libiberty

targ_info: include
	$(MAKE) -C $(NATIVE_BUILD_DIR)/targ_info

libelf: include
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libelf

libelfutil: include
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libelfutil

libdwarf: libelf
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libdwarf

libunwindP: targ_info
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libunwindP

libcif: include
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libcif

arith:
	$(MAKE) -C $(NATIVE_BUILD_DIR)/arith

$(NATIVE_BUILD_DIR)/driver/driver driver: include
	$(MAKE) -C $(NATIVE_BUILD_DIR)/driver

$(NATIVE_BUILD_DIR)/gccfe/gfec gfec: libiberty libcomutil libcmplrs
	$(MAKE) -C $(NATIVE_BUILD_DIR)/gccfe

$(NATIVE_BUILD_DIR)/g++fe/gfecc gfecc: libiberty libcomutil libcmplrs
	$(MAKE) -C $(NATIVE_BUILD_DIR)/g++fe

$(NATIVE_BUILD_DIR)/wgen/wgen wgen: libiberty libcomutil libcmplrs $(NATIVE_BUILD_DIR)/libspin/libgspin.a
	$(MAKE) -C $(NATIVE_BUILD_DIR)/wgen

$(NATIVE_BUILD_DIR)/wgen_4_2_0/wgen42 wgen42: libiberty libcomutil libcmplrs $(NATIVE_BUILD_DIR)/libspin_4_2_0/libgspin42.a
	$(MAKE) -C $(NATIVE_BUILD_DIR)/wgen_4_2_0

$(NATIVE_BUILD_DIR)/be/be be: be.so 
$(NATIVE_BUILD_DIR)/be/be.so be.so: include libiberty targ_info
	$(MAKE) -C $(NATIVE_BUILD_DIR)/be

$(NATIVE_BUILD_DIR)/cg/cg.so cg.so: be.so libelf libelfutil libdwarf libunwindP
	$(MAKE) -C $(NATIVE_BUILD_DIR)/cg

$(NATIVE_BUILD_DIR)/wopt/wopt.so wopt.so: be.so 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/wopt

$(NATIVE_BUILD_DIR)/lno/lno.so lno.so: wopt.so ipl.so
	$(MAKE) -C $(NATIVE_BUILD_DIR)/lno

$(NATIVE_BUILD_DIR)/ipa/ipa.so ipa.so: ipl.so
	$(MAKE) -C $(NATIVE_BUILD_DIR)/ipa

$(NATIVE_BUILD_DIR)/ipl/ipl ipl: ipl.so
$(NATIVE_BUILD_DIR)/ipl/ipl.so ipl.so: be.so
	$(MAKE) -C $(NATIVE_BUILD_DIR)/ipl

$(NATIVE_BUILD_DIR)/lw_inline/inline inline: be.so
	$(MAKE) -C $(NATIVE_BUILD_DIR)/lw_inline

$(NATIVE_BUILD_DIR)/whirl2c/whirl2c whirl2c: whirl2c.so
$(NATIVE_BUILD_DIR)/whirl2c/whirl2c.so whirl2c.so: be.so
	$(MAKE) -C $(NATIVE_BUILD_DIR)/whirl2c

$(NATIVE_BUILD_DIR)/whirl2f/whirl2f whirl2f: whirl2f.so
$(NATIVE_BUILD_DIR)/whirl2f/whirl2f.so whirl2f.so: be.so
	$(MAKE) -C $(NATIVE_BUILD_DIR)/whirl2f

ifeq ($(MACHINE_TYPE), ia64)
$(NATIVE_BUILD_DIR)/orc_ict/orc_ict.so orc_ict.so: cg.so
	$(MAKE) -C $(NATIVE_BUILD_DIR)/orc_ict

$(NATIVE_BUILD_DIR)/orc_intel/orc_intel.so orc_intel.so: cg.so
	$(MAKE) -C $(NATIVE_BUILD_DIR)/orc_intel

$(NATIVE_BUILD_DIR)/targ_info/itanium.so itanium.so: targ_info

else
$(NATIVE_BUILD_DIR)/targ_info/opteron.so opteron.so: targ_info
$(NATIVE_BUILD_DIR)/targ_info/em64t.so em64t.so: targ_info
endif

$(NATIVE_BUILD_DIR)/ir_tools/ir_b2a ir_b2a: libcomutil
	$(MAKE) -C $(NATIVE_BUILD_DIR)/ir_tools

$(NATIVE_BUILD_DIR)/crayf90/sgi/mfef95 mfef95: libcomutil libcif arith
	$(MAKE) -C $(NATIVE_BUILD_DIR)/crayf90

# some GNU components need different opt flags in debug/nodebug build
ifeq ($(BUILD_OPTIMIZE), DEBUG)
    GNU_CFLAGS = '-O0 -g -DIs_True_On'
else
    GNU_CFLAGS = '-O2'
endif

.PHONY: Force libspin libspin42 phony_targets first
$(NATIVE_BUILD_DIR_LD)/ld/ld-new ld-new: $(NATIVE_BUILD_DIR_LD)/Makefile Force
	$(MAKE) -C $(NATIVE_BUILD_DIR_LD)

$(NATIVE_BUILD_DIR_LD)/Makefile:  
	cd $(NATIVE_BUILD_DIR_LD); BUILD_OPTIMIZE=$(BUILD_OPTIMIZE) CFLAGS=$(GNU_CFLAGS) ./CONFIGURE

$(NATIVE_BUILD_DIR)/libspin/libgspin.a libspin:
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libspin

$(NATIVE_BUILD_DIR)/libspin_4_2_0/libgspin42.a  libspin42:
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libspin_4_2_0 

# GNU 4.0.2 based FE
$(GNUFE_BUILD_DIR)/gcc/cc1plus cc1plus: cc1
$(GNUFE_BUILD_DIR)/gcc/cc1 cc1: $(GNUFE_BUILD_DIR)/Makefile Force
	$(MAKE) -C $(GNUFE_BUILD_DIR)

$(GNUFE_BUILD_DIR)/Makefile: $(NATIVE_BUILD_DIR)/libspin/libgspin.a
	cd $(GNUFE_BUILD_DIR); BUILD_OPTIMIZE=$(BUILD_OPTIMIZE) CFLAGS=$(GNU_CFLAGS) ./CONFIGURE

# GNU 4.2.0 based FE
$(GNUFE42_BUILD_DIR)/gcc/cc1plus42 cc1plus42: cc142 
$(GNUFE42_BUILD_DIR)/gcc/cc142 cc142: $(GNUFE42_BUILD_DIR)/Makefile Force
	$(MAKE) -C $(GNUFE42_BUILD_DIR)

$(GNUFE42_BUILD_DIR)/Makefile: $(NATIVE_BUILD_DIR)/libspin_4_2_0/libgspin42.a
	cd $(GNUFE42_BUILD_DIR); BUILD_OPTIMIZE=$(BUILD_OPTIMIZE) CFLAGS=$(GNU_CFLAGS) ./CONFIGURE

build:
	$(MAKE) first
	$(MAKE) phony_targets 

first:libspin libspin42
phony_targets: $(PHONY_TARGET)
cross: NATIVE_BUILD_DIR = osprey/targia32_ia64_nodebug
cross: NATIVE_BUILD_DIR_LD = osprey/targcygnus_ia32_ia64
cross: CROSS_BUILD = true
cross: $(CROSS_PHONY_TARGET)
	echo $(CROSS_PHONY_TARGET)

install: ;@./install_compiler.sh $(MACHINE_TYPE)
install-cross: ;@./install_compiler.sh ia64-cross

.PHONY: library lib clean-library clean-lib
library lib: LIB_ACTION = default
clean-library clean-lib: LIB_ACTION = clobber
library lib clean-library clean-lib:
	+@for d in $(LIB_BUILD_DIR); do \
	    echo $(MAKE) -C $$d $(LIB_ACTION); \
	    $(MAKE) -C $$d $(LIB_ACTION); \
	    retval=$$?; \
	    if [ $$retval != 0 ]; then \
		if grep -q k <<<'$(MAKEFLAGS)'; then \
		    exit=$$retval; \
		else \
		    exit $$retval; \
		fi; \
	    fi; \
	done; \
	exit $$exit


clobber: clean 
	rm -rf $(CROSSDIR) $(BOOTDIR)
clean: clean-lib
	$(MAKE) -C $(NATIVE_BUILD_DIR)/driver clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/gccfe clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/wgen clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/wgen_4_2_0 clobber
	$(MAKE) -C $(NATIVE_BUILD_DIR)/g++fe clobber
	$(MAKE) -C $(NATIVE_BUILD_DIR)/be clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/cg clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/wopt clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/lno clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/ipa clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/ipl clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/lw_inline clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/whirl2c clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/whirl2f clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/../libkapi clean 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/targ_info clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/ir_tools clobber 
	$(MAKE) -C $(NATIVE_BUILD_DIR)/crayf90 clobber
	$(MAKE) -C $(NATIVE_BUILD_DIR)/arith clobber
	$(MAKE) -C $(NATIVE_BUILD_DIR)/include clobber
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libspin clobber
	$(MAKE) -C $(NATIVE_BUILD_DIR)/libspin_4_2_0 clobber
ifeq ($(MACHINE_TYPE), ia64)
	$(MAKE) -C $(NATIVE_BUILD_DIR)/orc_ict clobber
	$(MAKE) -C $(NATIVE_BUILD_DIR)/orc_intel clobber
endif
	cd $(NATIVE_BUILD_DIR_LD); ./CLOBBER
	cd $(GNUFE_BUILD_DIR); ./CLOBBER
	cd $(GNUFE42_BUILD_DIR); ./CLOBBER
	@for i in libcif libcmplrs libcomutil libcsup libdwarf libelf libelfutil \
		libiberty libunwindP libspin libspin_4_2_0; do  \
		$(MAKE) -C "$(NATIVE_BUILD_DIR)/$${i}" clobber; \
	done

#end of ifdef ABORT_BUILD
endif

help:
	@echo "Help of the Makefile for Open64 compiler source"
	@echo "Available targets:"
	@echo "  - (DEFAULT)"
	@echo "    Build the components of the compiler"
	@echo "  - help"
	@echo "    Display this help"
	@echo "  - install"
	@echo "    Install the components of the compiler."
	@echo "    If TOOLROOT is set, the compiler will be installed under the TOOLROOT,"
	@echo "    otherwise, you will be prompted to input the path\n"
	@echo "  - library"
	@echo "    Build the libraries needed by the compiler"
	@echo "  - clean-lib"
	@echo "    Remove intermediate files generated in building libraries"
	@echo "  - clean"
	@echo "  - clobber"
	@echo "    Remove all intermediate files"
	@echo ""
	@echo "Available options (former is default):" 
	@echo "  - BUILD_OPTIMIZE={NODEBUG|DEBUG}"
	@echo "    Enable debug the compiler or not"
	@echo "  - BUILD_COMPILER={GNU|OSP|PSC}"
	@echo "    Using GCC(GNU) or Open64(OSP) Or Pathscale(PSC) compiler"
	@echo "    to build the open64 compiler"
	@echo "  - V={0|1}"
	@echo "    Display detailed compilation progress or not"
.PHONY: bootstrap reboot boot cross_gcc

BOOTDIR=$(PWD)/boot
CROSSDIR=$(PWD)/cross_gcc
bootstrap: reboot
#build the reboot compiler
reboot: boot
	$(MAKE) clean
	set +h; $(MAKE) all lib BUILD_COMPILER=OSP PATH=$(BOOTDIR)/bin:$(PATH)

#build the boot compiler using the exist open64 compiler
boot:
#if opencc is not found use gcc to build the cross compiler
	if ! opencc -v >/dev/null 2>&1; then $(MAKE) cross_gcc; fi
	$(MAKE) clean
	rm -rf $(BOOTDIR)
	set +h; $(MAKE) all lib BUILD_COMPILER=OSP PATH=$(CROSSDIR)/bin:$(PATH)
	$(MAKE) install TOOLROOT=$(BOOTDIR)

cross_gcc: 
	$(MAKE) clean
	@rm -rf $(CROSSDIR)
	$(MAKE) all BUILD_COMPILER=GNU
	$(MAKE) install TOOLROOT=$(CROSSDIR)
	set +h; $(MAKE) lib BUILD_COMPILER=OSP PATH=$(CROSSDIR)/bin:$(PATH)
	$(MAKE) install TOOLROOT=$(CROSSDIR)
