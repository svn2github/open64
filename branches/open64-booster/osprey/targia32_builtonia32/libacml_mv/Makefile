#
#  Copyright (C) 2009-2010 Advanced Micro Devices, Inc.  All Rights Reserved.
#
#  libacml_mv is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation; either
#  version 2.1 of the License, or (at your option) any later version.
#
#  libacml_mv is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with libacml_mv.  If not, see
#  <http://www.gnu.org/licenses/>.
#

#
#  Makefile for libacml_mv
#

#
#  Define build parameters
#
BUILD_AREA     = ..
BUILD_TOT      = ../..
BUILD_BASE     = ../../libacml_mv
BUILD_ROOTS    = TARGET
BUILD_ABI      = I32BIT
BUILD_ARCH     = IA32
BUILD_TYPE     = SHARED
BUILD_BOTH     =
BUILD_OPTIMIZE = NODEBUG
BUILD_VARIANT  = DEFAULT
BUILD_INSTALL  = DEFAULT
BUILD_TARGET   = IA32
BUILD_OS       = LINUX
BUILD_HOST     = IA32

#  Include (optional) parameter override file
-include $(BUILD_AREA)/Makefile.override

#  Include setup file which will then include Makefile.base
include $(BUILD_TOT)/Makefile.gsetup

