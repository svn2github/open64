# -*- Makefile -*-
#
#  Copyright 2005 PathScale, Inc.  All Rights Reserved.

#
#  Define build parameters
#
BUILD_AREA     = ..
BUILD_TOT      = ../..
BUILD_BASE     = ../../libopenmp
BUILD_ROOTS    = TARGET
BUILD_ABI      = I32BIT
BUILD_ARCH     = IA32
BUILD_TYPE     = SHARED
BUILD_BOTH     = quite
BUILD_OPTIMIZE = NODEBUG
BUILD_VARIANT  = DEFAULT
BUILD_INSTALL  = DEFAULT
BUILD_TARGET   = IA32
BUILD_OS       = LINUX
BUILD_HOST     = IA32

#  Include (optional) parameter override file
-include $(BUILD_AREA)/Makefile.override

#
# !!! Temporary setting. !!!
# Open64 has a bug when expanding atomic operations, like fetch_and_add.
# We need to compile libopenmp library with gcc or TOT compiler.
#
# Here we set to use gcc compiler.
#
# If you want to compile with TOT compiler, commend out the
# "BUILD_COMPIER" here and set the path to the TOT compiler.
#
override BUILD_COMPILER = GNU


#  Include setup file which will then include Makefile.base
include $(BUILD_TOT)/Makefile.gsetup
