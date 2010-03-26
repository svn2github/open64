# Copyright 2005 PathScale, Inc.  All Rights Reserved.
#
# This file is free software; you can redistribute it and/or modify it
# under the terms of version 2 of the GNU General Public License, as
# published by the Free Software Foundation.
#
# This file is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file; see the file COPYING.  If not, write to the
# Free Software Foundation, 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

export OPEN64_MAJOR_VERSION := 0
export OPEN64_MINOR_VERSION := 0
export OPEN64_PATCH_LEVEL := 0
export OPEN64_EXTRA_VERSION := -custom
export OPEN64_FULL_VERSION := 3.0
export OPEN64_GCC_VERSION := 3.3.1
export OPEN64_GCC40_VERSION := 4.0.2
export OPEN64_GCC42_VERSION := 4.2.0
export OPEN64_ARCH_64 := loongson
export OPEN64_ARCH_32 := loongson
export OPEN64_ARCH := $(OPEN64_ARCH_64)
export OPEN64_TARGET_64 := $(OPEN64_ARCH_64)-linux
export OPEN64_TARGET_32 := $(OPEN64_ARCH_32)-linux
export OPEN64_TARGET := $(OPEN64_TARGET_64)
export OPEN64_ROOT_PREFIX := /opt/open64
export OPEN64_INSTALL_PREFIX := $(OPEN64_PREFIX)
export OPEN64_NAME_PREFIX := loong
export OPEN64_INCLUDE_DIR := $(OPEN64_INSTALL_PREFIX)/lib/gcc-lib/$(OPEN64_TARGET)/open64-$(OPEN64_FULL_VERSION)/include/

top_dir := .
compiler_dir := $(top_dir)/targia32_loongson
cygnus_dir := $(top_dir)/targcygnus_ia32_loongson
fe_4_2_0_dir := ../osprey-gcc-4.2.0/targia32_loongson

all: compiler messages ipa_link fe_4_2_0

compiler:
	$(MAKE) -C $(compiler_dir)
	$(MAKE) -C $(compiler_dir)/crayf90/sgi mfef95

messages: compiler
	$(MAKE) -C $(compiler_dir)/crayf90/sgi cf95.cat
	$(MAKE) -C $(compiler_dir)/libu lib.cat

ipa_link:
	cd $(cygnus_dir) && ./CONFIGURE
	$(MAKE) -C $(cygnus_dir)

fe_4_2_0:
	cd $(fe_4_2_0_dir) && ./CONFIGURE
	$(MAKE) -C $(fe_4_2_0_dir)


clean: compiler-clean ipa_link-clean
	find $(compiler_dir) $(cygnus_dir)  \
	  -name Makedepend -print0 | xargs -r0 rm -f

	cd ../osprey-gcc-4.2.0/gcc; rm -f gspin-alloc.h  gspin-assert.h  gspin-base-types.h   gspin-io.h  gspin-list.h  gspin-mempool.h  gspin-tel.h  gspin-tree.h

	cd $(fe_4_2_0_dir); ./CLOBBER

	cd $(cygnus_dir); ./CLOBBER

compiler-clean:
	$(MAKE) clean -C $(compiler_dir) 

ipa_link-clean:
	-[ -f $(cygnus_dir)/Makefile ] && $(MAKE) -C $(cygnus_dir) $


install:
	./INSTALL.cross
