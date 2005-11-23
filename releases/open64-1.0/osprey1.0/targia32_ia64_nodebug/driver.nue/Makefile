#
#  Makefile for driver
#

#
#  Define build parameters
#
BUILD_AREA     = ..
BUILD_TOT      = ../..
BUILD_BASE     = ../../driver
BUILD_ROOTS    = TARGET
BUILD_ABI      = I32BIT
BUILD_ARCH     = IA32
BUILD_TYPE     = SHARED
BUILD_OPTIMIZE = NODEBUG
BUILD_VARIANT  = NUE
BUILD_INSTALL  = DEFAULT
BUILD_TARGET   = IA64
BUILD_COMPILER = GNU
BUILD_OS       = LINUX


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

#  Include setup file which will then include Makefile.base
include $(BUILD_TOT)/Makefile.gsetup

#endif

