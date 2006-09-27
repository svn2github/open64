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

export PSC_MAJOR_VERSION := 0
export PSC_MINOR_VERSION := 0
export PSC_PATCH_LEVEL := 0
export PSC_EXTRA_VERSION := -custom
export PSC_FULL_VERSION := $(PSC_MAJOR_VERSION).$(PSC_MINOR_VERSION).$(PSC_PATCH_LEVEL)$(PSC_EXTRA_VERSION)
export export PSC_FULL_VERSION
export PSC_GCC_VERSION := 3.3.1
export PSC_ARCH_64 := x86_64
export PSC_ARCH_32 := i386
export PSC_ARCH := $(PSC_ARCH_64)
export PSC_TARGET_64 := $(PSC_ARCH_64)-pathscale-linux
export PSC_TARGET_32 := $(PSC_ARCH_32)-pathscale-linux
export PSC_TARGET := $(PSC_TARGET_64)
export PSC_ROOT_PREFIX := /opt/pathscale
export PSC_PREFIX := $(PSC_ROOT_PREFIX)/$(PSC_TARGET)
export PSC_INSTALL_PREFIX := $(PSC_PREFIX)
export PSC_NAME_PREFIX := path
export PSC_INCLUDE_DIR := $(PSC_INSTALL_PREFIX)/lib/gcc-lib/$(PSC_TARGET)/pathscale-$(PSC_FULL_VERSION)/include/
export PSC_LIB_DIR := $(PSC_ROOT_PREFIX)/lib/$(PSC_FULL_VERSION)

top_dir := .
compiler_dir := $(top_dir)/targia32_x8664
cygnus_dir := $(top_dir)/targcygnus_ia32_x8664
lib32_dir := $(top_dir)/targia32_builtonia32
lib64_dir := $(top_dir)/targx8664_builtonia32

all: compiler messages cygnus libs

compiler:
	$(MAKE) -C $(compiler_dir)
	$(MAKE) -C $(compiler_dir)/crayf90/sgi mfef95

messages: compiler
	$(MAKE) -C $(compiler_dir)/crayf90/sgi cf95.cat
	$(MAKE) -C $(compiler_dir)/arith arith.cat
	$(MAKE) -C $(compiler_dir)/libu lib.cat

cygnus:
	cd $(cygnus_dir) && ./CONFIGURE
	$(MAKE) -C $(cygnus_dir)

libs: lib32 lib64

lib32:
	$(MAKE) -C $(lib32_dir)

lib64:
	$(MAKE) -C $(lib64_dir)

clean: compiler-clean cygnus-clean libs-clean
	find $(compiler_dir) $(cygnus_dir) $(lib32_dir) $(lib64_dir) \
	  -name Makedepend -print0 | xargs -r0 rm -f

compiler-clean:
	$(MAKE) -C $(compiler_dir) $@

cygnus-clean:
	-[ -f $(cygnus_dir)/Makefile ] && $(MAKE) -C $(cygnus_dir) $@

libs-clean: lib32-clean lib64-clean

lib32-clean:
	$(MAKE) -C $(lib32_dir) $@

lib64-clean:
	$(MAKE) -C $(lib64_dir) $@
