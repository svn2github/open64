#
#
#  Copyright (C) 2000 Silicon Graphics, Inc.  All Rights Reserved.
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

# The directory where all CROSS compiler component build subdirectories
# are located
#

CROSS_BUILD_DIR = osprey/targia32_sl1
CROSS_BUILD_DIR_LD = osprey/targcygnus_ia32_sl1
GNUFE_BUILD_DIR = osprey-gcc/targia32_sl1
GNUFE42_BUILD_DIR = osprey-gcc-4.2.0/targia32_sl1

# All CROSS compiler components:
CROSS_COMPONENTS = \
                $(CROSS_BUILD_DIR)/driver/driver \
                $(CROSS_BUILD_DIR)/gccfe/gfec \
                $(CROSS_BUILD_DIR)/be/be \
                $(CROSS_BUILD_DIR)/be/be.so \
                $(CROSS_BUILD_DIR)/targ_info/itanium.so \
                $(CROSS_BUILD_DIR)/targ_info/itanium2.so \
                $(CROSS_BUILD_DIR)/cg/cg.so \
                $(CROSS_BUILD_DIR)/wopt/wopt.so \
                $(CROSS_BUILD_DIR)/lno/lno.so \
                $(CROSS_BUILD_DIR)/lw_inline/inline \
                $(CROSS_BUILD_DIR)/ipa/ipa.so \
                $(CROSS_BUILD_DIR)/ipl/ipl.so \
                $(CROSS_BUILD_DIR)/ipl/ipl \
                $(CROSS_BUILD_DIR)/whirl2c/whirl2c.so \
                $(CROSS_BUILD_DIR)/whirl2c/whirl2c \
                $(CROSS_BUILD_DIR)/whirl2f/whirl2f.so \
                $(CROSS_BUILD_DIR)/whirl2f/whirl2f \
                $(CROSS_BUILD_DIR)/ir_tools/ir_b2a \
                $(CROSS_BUILD_DIR)/wgen/wgen  \
                $(CROSS_BUILD_DIR)/wgen_4_2_0/wgen42  \
                $(CROSS_BUILD_DIR)/g++fe/gfecc  \
                $(CROSS_BUILD_DIR)/libspin/libgspin.a  \
                $(CROSS_BUILD_DIR)/libspin_4_2_0/libgspin42.a  \
                $(CROSS_BUILD_DIR_LD)/ld/ld-new \
		$(GNUFE_BUILD_DIR)/gcc/cc1 \
		$(GNUFE_BUILD_DIR)/gcc/cc1plus \
		$(GNUFE42_BUILD_DIR)/gcc/cc142 \
		$(GNUFE42_BUILD_DIR)/gcc/cc1plus42
#               $(CROSS_BUILD_DIR)/cord/gen_cord  
#               $(CROSS_BUILD_DIR)/g++fe/gfecc \

PHONY_TARGET = $(shell for i in $(CROSS_COMPONENTS); do basename "$$i" ; done) 
.PHONY : $(PHONY_TARGET) install clean clobber

all:build

$(CROSS_BUILD_DIR)/driver/driver driver: force
		gmake -C $(CROSS_BUILD_DIR)/driver

$(CROSS_BUILD_DIR)/gccfe/gfec gfec: force
		gmake -C $(CROSS_BUILD_DIR)/gccfe 

$(CROSS_BUILD_DIR)/g++fe/gfecc gfecc: force
		gmake -C $(CROSS_BUILD_DIR)/g++fe 

$(CROSS_BUILD_DIR)/be/be be: force
		gmake -C $(CROSS_BUILD_DIR)/be 

$(CROSS_BUILD_DIR)/be/be.so be.so: force
		gmake -C $(CROSS_BUILD_DIR)/be 

$(CROSS_BUILD_DIR)/cg/cg.so cg.so: force
		gmake -C $(CROSS_BUILD_DIR)/cg 

$(CROSS_BUILD_DIR)/wopt/wopt.so wopt.so: force
		gmake -C $(CROSS_BUILD_DIR)/wopt 

$(CROSS_BUILD_DIR)/lno/lno.so lno.so: force
		gmake -C $(CROSS_BUILD_DIR)/lno 

$(CROSS_BUILD_DIR)/ipa/ipa.so ipa.so: force
		gmake -C $(CROSS_BUILD_DIR)/ipa 

$(CROSS_BUILD_DIR)/ipl/ipl.so ipl.so: force
		gmake -C $(CROSS_BUILD_DIR)/ipl 

$(CROSS_BUILD_DIR)/ipl/ipl ipl: force
		gmake -C $(CROSS_BUILD_DIR)/ipl 

$(CROSS_BUILD_DIR)/lw_inline/inline inline: force
		gmake -C $(CROSS_BUILD_DIR)/lw_inline 

$(CROSS_BUILD_DIR)/whirl2c/whirl2c.so whirl2c.so: force
		gmake -C $(CROSS_BUILD_DIR)/whirl2c 

$(CROSS_BUILD_DIR)/whirl2c/whirl2c whirl2c: force
		gmake -C $(CROSS_BUILD_DIR)/whirl2c 

$(CROSS_BUILD_DIR)/whirl2f/whirl2f.so whirl2f.so: force
		gmake -C $(CROSS_BUILD_DIR)/whirl2f 

$(CROSS_BUILD_DIR)/whirl2f/whirl2f whirl2f: force
		gmake -C $(CROSS_BUILD_DIR)/whirl2f 

$(CROSS_BUILD_DIR)/targ_info/itanium.so itanium.so: force
		gmake -C $(CROSS_BUILD_DIR)/targ_info 

$(CROSS_BUILD_DIR)/targ_info/itanium2.so itanium2.so: force
		gmake -C $(CROSS_BUILD_DIR)/targ_info 

$(CROSS_BUILD_DIR)/ir_tools/ir_b2a ir_b2a: force
		gmake -C $(CROSS_BUILD_DIR)/ir_tools 

$(CROSS_BUILD_DIR)/cord/gen_cord gen_cord: force
		gmake -C $(CROSS_BUILD_DIR)/cord 

$(CROSS_BUILD_DIR)/crayf90/sgi/mfef90 mfef90: force
		gmake -C $(CROSS_BUILD_DIR)/crayf90/sgi 

$(CROSS_BUILD_DIR)/libspin/libgspin.a: force
		gmake -C $(CROSS_BUILD_DIR)/libspin/ 

$(CROSS_BUILD_DIR)/libspin_4_2_0/libgspin42.a: force
		gmake -C $(CROSS_BUILD_DIR)/libspin_4_2_0/ 

$(CROSS_BUILD_DIR)/wgen/wgen: force
		gmake -C $(CROSS_BUILD_DIR)/wgen/ 

$(CROSS_BUILD_DIR)/wgen_4_2_0/wgen42: force
		gmake -C $(CROSS_BUILD_DIR)/wgen_4_2_0/ 

$(CROSS_BUILD_DIR_LD)/ld/ld-new ld-new: $(CROSS_BUILD_DIR_LD)/Makefile force 
		cd $(CROSS_BUILD_DIR_LD); ./CONFIGURE; gmake

$(CROSS_BUILD_DIR_LD)/Makefile:
		cd $(CROSS_BUILD_DIR_LD); ./CONFIGURE

$(GNUFE_BUILD_DIR)/gcc/cc1 $(GNUFE_BUILD_DIR)/gcc/cc1plus: $(GNUFE_BUILD_DIR)/Makefile force
		gmake -C $(GNUFE_BUILD_DIR)

$(GNUFE_BUILD_DIR)/Makefile:
		cd $(GNUFE_BUILD_DIR); ./CONFIGURE 

$(GNUFE42_BUILD_DIR)/gcc/cc142 $(GNUFE42_BUILD_DIR)/gcc/cc1plus42: $(GNUFE42_BUILD_DIR)/Makefile force
		gmake -C $(GNUFE42_BUILD_DIR)

$(GNUFE42_BUILD_DIR)/Makefile:
		cd $(GNUFE42_BUILD_DIR); ./CONFIGURE 

build: $(CROSS_COMPONENTS)

install: ;@./INSTALL.cross

clean : clobber
clobber:
		gmake clobber -C $(CROSS_BUILD_DIR)/driver
		gmake clobber -C $(CROSS_BUILD_DIR)/gccfe 
		gmake clobber -C $(CROSS_BUILD_DIR)/g++fe 
		gmake clobber -C $(CROSS_BUILD_DIR)/be 
		gmake clobber -C $(CROSS_BUILD_DIR)/cg 
		gmake clobber -C $(CROSS_BUILD_DIR)/wopt 
		gmake clobber -C $(CROSS_BUILD_DIR)/lno 
		gmake clobber -C $(CROSS_BUILD_DIR)/ipa 
		gmake clobber -C $(CROSS_BUILD_DIR)/ipl 
		gmake clobber -C $(CROSS_BUILD_DIR)/lw_inline 
		gmake clobber -C $(CROSS_BUILD_DIR)/whirl2c 
		gmake clobber -C $(CROSS_BUILD_DIR)/whirl2f 
		gmake clobber -C $(CROSS_BUILD_DIR)/targ_info 
		gmake clobber -C $(CROSS_BUILD_DIR)/ir_tools 
		@for i in libcif libcmplrs libcomutil libcsup libdwarf libelf libelfutil \
			   libiberty libunwindP ; do  \
		    make clobber -C "$(CROSS_BUILD_DIR)/$${i}"  ; \
		done
#		gmake clobber -C $(CROSS_BUILD_DIR)/crayf90/sgi 
   		 
force: ;
