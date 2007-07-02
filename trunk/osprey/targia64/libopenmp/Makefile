#
#  Makefile for gccfe
#

#
#  Define build parameters
#
BUILD_AREA     = ..
BUILD_TOT      = ../..
BUILD_BASE     = ../../libopenmp
BUILD_ROOTS    = TARGET
BUILD_ABI      = I64BIT
BUILD_ARCH     = IA64
BUILD_TYPE     = SHARED
BUILD_OPTIMIZE = DEBUG
BUILD_VARIANT  = DEFAULT
BUILD_INSTALL  = DEFAULT
BUILD_TARGET   = IA64
BUILD_COMPILER = SGI
BUILD_OS       = LINUX
BUILD_HOST     = IA32

#ifdef IRIX
# smake

#  Include (optional) parameter override file
#if exists($(BUILD_AREA)/Makefile.override)
#include "$(BUILD_AREA)/Makefile.override"
#endif
#  Include setup file which will then include Makefile.base
#include "$(BUILD_TOT)/Makefile.setup"

#else
# gmake

#  Include (optional) parameter override file
-include $(BUILD_AREA)/Makefile.override


#  Temporary setting. There's some bug if compile libopenmp with Open64,
#  so we need to compile it with gcc now.
BUILD_COMPILER = GNU

#  Include setup file which will then include Makefile.base
include $(BUILD_TOT)/Makefile.gsetup

#endif

