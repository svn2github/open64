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
BUILD_BASE_ARCH = ../../libopen64rt/x8664
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

memset.o: $(BUILD_BASE_ARCH)/memset.S
	gcc -m64 -c -I$(BUILD_BASE_ARCH) -MMD -include $(BUILD_BASE_ARCH)/libc-symbols.h $(BUILD_BASE_ARCH)/memset.S

cacheinfo.o: $(BUILD_BASE_ARCH)/cacheinfo.c
	gcc -m64 -O -c -I$(BUILD_BASE_ARCH) -MMD -include $(BUILD_BASE_ARCH)/libc-symbols.h $(BUILD_BASE_ARCH)/cacheinfo.c

