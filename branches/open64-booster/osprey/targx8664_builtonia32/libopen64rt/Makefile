#
#
#  Makefile for libopen64rt
#

#
#  Define build parameters
#
BUILD_AREA     = ..
BUILD_TOT      = ../..
BUILD_BASE     = ../../libopen64rt
BUILD_ROOTS    = TARGET
BUILD_ABI      = 64BIT
BUILD_ARCH     = X8664
BUILD_TYPE     = SHARED
BUILD_BOTH     =
BUILD_OPTIMIZE = -O
BUILD_VARIANT  = DEFAULT
BUILD_INSTALL  = DEFAULT
BUILD_TARGET   = X8664
BUILD_COMPILER = GNU
BUILD_OS       = LINUX
BUILD_HOST     = IA32

ASFILES	=	fastcopy_gh.s


#  Include (optional) parameter override file
-include $(BUILD_AREA)/Makefile.override

#  Include setup file which will then include Makefile.base
include $(BUILD_TOT)/Makefile.gsetup
