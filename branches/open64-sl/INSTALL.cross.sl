#!/bin/bash
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
echo $TOOLROOT



VER_MAJOR="1"
VER_MINOR="0"
#PATCH_LEVEL=""
VERSION="${VER_MAJOR}.${VER_MINOR}"

    # set the build host
BUILD_HOST="ia32" ; 
#[ `uname -m | grep -i 'i[0-9]86' | wc -l` -eq 1 ] && BUILD_HOST="ia32"

    # set the target host, it must be "ia64"
#TARG_HOST="mips32"
TARG_HOST="sl1"

    # set the TARGET O.S, only linux is supported currently 
TARG_OS="linux"

    # set the building host's O.S, currently only linux is supported.
BUILD_OS="linux" 
#[ `uname -s | grep -i linux | wc -l` -eq 1 ] && BUILD_OS="linux"

    # everything we will install is under $ROOT
ROOT=${TOOLROOT}/

INTERPOSE=${TARG_HOST}-orc-${TARG_OS}
[ "$BUILD_HOST" = "$TARG_HOST" ] &&  INTERPOSE="" ; 

AREA="osprey/targ${BUILD_HOST}_${TARG_HOST}"
GNUFE_AREA="osprey-gcc/targ${BUILD_HOST}_${TARG_HOST}"
GNUFE42_AREA="osprey-gcc-4.2.0/targ${BUILD_HOST}_${TARG_HOST}"

PHASEPATH=${ROOT}/usr/bin
NATIVE_LIB_DIR=${COMP_TARGET_ROOT}/usr/${INTERPOSE}/lib
INSTR_LIB_DIR=${COMP_TARGET_ROOT}/usr/lib
BIN_DIR=${ROOT}/usr/bin
ALT_BIN_DIR=${ROOT}/usr/altbin

INSTALL="/usr/bin/install -D"
INSTALL_DATA="/usr/bin/install -D -m 644"

INSTALL_EXEC_SUB () {

    [ $# -ne 2 ] && echo "Usage: INSTALL_EXEC_SUB SRC_file DEST_file" && return 1
    
    [ ! -e "$1" ] && echo "$1 does not exist" && return 1

    echo -e "$2 : $1 \n\t${INSTALL} $1 $2\n" | make -f - |\
    grep -v "Entering directory\|Leaving directory\|up to date"

    return 0;
}

INSTALL_DATA_SUB () {

    [ $# -ne 2 ] && echo "Usage: INSTALL_DATA_SUB SRC_file DEST_file" && exit 1

    [ ! -e "$1" ] && echo "$1 does not exist" && return 1

    echo -e "$2 : $1 \n\t${INSTALL_DATA} $1 $2\n" | make -f - |\
    grep -v "Entering directory\|Leaving directory\|up to date"

    return 0
}


INSTALL_DRIVER () {
    INSTALL_EXEC_SUB ${AREA}/driver/driver  ${PHASEPATH}/driver

    [ ! -d ${BIN_DIR}       ] && mkdir -p ${BIN_DIR}
#    [ ! -e ${BIN_DIR}/mipscc ] && ln -sf driver ${BIN_DIR}/mipscc
    [ ! -e ${BIN_DIR}/mipsel-elf-linux-g++  ] && ln -sf driver ${BIN_DIR}/mipsel-elf-linux-g++
    [ ! -e ${BIN_DIR}/slCC ] && ln -sf driver ${BIN_DIR}/slCC
    [ ! -e ${BIN_DIR}/mipsel-elf-linux-gcc  ] && ln -sf driver ${BIN_DIR}/mipsel-elf-linux-gcc
    [ ! -e ${BIN_DIR}/slcc ] && ln -sf driver ${BIN_DIR}/slcc
    [ ! -e ${BIN_DIR}/mipsf90 ] && ln -sf driver ${BIN_DIR}/mipsf90
    [ ! -e ${ROOT}/usr/lib/ldscripts ] && mkdir -p ${ROOT}/usr/lib/ldscripts
    cp -rf osprey/ldscripts/sl1* ${ROOT}/usr/lib/ldscripts/
    [ ! -e ${ROOT}/usr/libsl5/ldscripts ] && mkdir -p ${ROOT}/usr/libsl5/ldscripts
    cp -rf osprey/ldscripts/sl5* ${ROOT}/usr/libsl5/ldscripts/
#   [ ! -e ${ROOT}/usr/libsl2/h264enc ] && mkdir -p ${ROOT}/usr/libsl2/h264enc
#   cp -f osprey/h264enc/lut ${ROOT}/usr/libsl2/h264enc/
    return 0
}

   # Install front-end components
INSTALL_FE () {

    INSTALL_EXEC_SUB ${AREA}/gccfe/gfec  ${PHASEPATH}/gfec
    INSTALL_EXEC_SUB ${AREA}/g++fe/gfecc ${PHASEPATH}/gfecc

    # GNU 4.0.2 based FE
    INSTALL_EXEC_SUB ${AREA}/wgen/wgen ${PHASEPATH}/wgen
    INSTALL_EXEC_SUB ${GNUFE_AREA}/gcc/cc1 ${PHASEPATH}/cc1
    INSTALL_EXEC_SUB ${GNUFE_AREA}/gcc/cc1plus ${PHASEPATH}/cc1plus
    # GNU 4.2.0 based FE
    INSTALL_EXEC_SUB ${AREA}/wgen_4_2_0/wgen42 ${PHASEPATH}/wgen42
    INSTALL_EXEC_SUB ${GNUFE42_AREA}/gcc/cc142 ${PHASEPATH}/cc142
    INSTALL_EXEC_SUB ${GNUFE42_AREA}/gcc/cc1plus42 ${PHASEPATH}/cc1plus42

    # Currently we do not install fortran 90 front-end
    #INSTALL_EXEC_SUB ${AREA}/crayf90/sgi/mfef90   ${PHASEPATH}/mfef90
    #INSTALL_EXEC_SUB ${AREA}/crayf90/sgi/cf90.cat ${PHASEPATH}/cf90.cat

    return 0
}

  # Install back-end components 
INSTALL_BE () {
    INSTALL_EXEC_SUB ${AREA}/be/be  ${PHASEPATH}/be
    INSTALL_EXEC_SUB ${AREA}/be/be.so ${PHASEPATH}/be.so

    return 0
}

  # Install IPA-related components
INSTALL_IPA () {

    INSTALL_EXEC_SUB ${AREA}/ipa/ipa.so ${PHASEPATH}/ipa.so
    INSTALL_EXEC_SUB ${AREA}/ipl/ipl.so ${PHASEPATH}/ipl.so

    ld_new_dir="osprey/targcygnus_${BUILD_HOST}_${TARG_HOST}/ld"

    INSTALL_EXEC_SUB ${ld_new_dir}/ld-new  ${PHASEPATH}/ipa_link
    ln -sf be ${PHASEPATH}/ipl 

    return 0
}

INSTALL_CG () {
    INSTALL_EXEC_SUB ${AREA}/cg/cg.so                ${PHASEPATH}/cg.so
    return 0
}

INSTALL_WHIRL_STUFF () {

    INSTALL_EXEC_SUB  ${AREA}/whirl2c/whirl2c   ${PHASEPATH}/whirl2c
    INSTALL_EXEC_SUB  ${AREA}/whirl2f/whirl2f   ${PHASEPATH}/whirl2f
    INSTALL_EXEC_SUB  ${AREA}/whirl2c/whirl2c.so ${PHASEPATH}/whirl2c.so
    INSTALL_EXEC_SUB  ${AREA}/whirl2f/whirl2f.so ${PHASEPATH}/whirl2f.so

    (cd ${PHASEPATH}; ln -sf be whirl2c_be) 
    (cd ${PHASEPATH}; ln -sf be whirl2f_be) 

    INSTALL_EXEC_SUB  ${AREA}/ir_tools/ir_b2a    ${BIN_DIR}/ir_b2a

    return 0
}



    # Install those archieves that are deemed as part of compiler, so 
    # we put them where the orcc-phases reside.
INSTALL_PHASE_SPECIFIC_ARCHIVES () {

        # f90 related archieves 
    INSTALL_DATA_SUB ${AREA}/temp_f90libs/lib.cat  ${PHASEPATH}/lib.cat
    INSTALL_DATA_SUB ${AREA}/temp_f90libs/lib.exp  ${PHASEPATH}/lib.exp

        # instrument archieves.
    d="targ${TARG_HOST}/"
    INSTALL_DATA_SUB $d/libcginstr/libcginstr.a  ${PHASEPATH}/libcginstr.a  
    INSTALL_DATA_SUB $d/libinstr/libinstr.a      ${PHASEPATH}/libinstr.a 

        #  SGI implementation for turning on FLUSH to ZERO 
    INSTALL_DATA_SUB $d/init/ftz.o     ${PHASEPATH}/ftz.o

        # libgcc.a and libstdc++.a are deemed as GNU-linker specific 
        # archieves.

    d="../lib/${TARG_HOST}-${TARG_OS}/gnu/" 
    if [ -d $d ]; then
        for i in libstdc++.a libgcc.a ; do 
            INSTALL_DATA_SUB ${d}/${i}  ${PHASEPATH}/$i
        done
    fi

    return 0
}

   
INSTALL_GENERAL_PURPOSE_NATIVE_ARCHIVES () {

    d="targ${TARG_HOST}/"

    INSTALL_DATA_SUB ${d}/libfortran/libfortran.a ${NATIVE_LIB_DIR}/libfortran.a 
    INSTALL_DATA_SUB ${d}/libu/libffio.a          ${NATIVE_LIB_DIR}/libffio.a
    INSTALL_DATA_SUB ${d}/libmsgi/libmsgi.a       ${NATIVE_LIB_DIR}/libmsgi.a
    INSTALL_DATA_SUB ${d}/libmv/libmv.a           ${NATIVE_LIB_DIR}/libmv.a
        
        # It seems libm.so sometimes could not work, so we put it at ${PHASEPATH}
        #
    INSTALL_DATA_SUB ../lib/${TARG_HOST}-${TARG_OS}/gnu/libm.a ${PHASEPATH}/libm.a

    return 0
}


INSTALL_PREBUILD_GNU_NATIVE_CRT_STARTUP () {

    for i in ../lib/${TARG_HOST}-${TARG_OS}/crt/* ; do 
	[ "`basename $i`" = "CVS" ] && continue
        INSTALL_DATA_SUB $i ${PHASEPATH}/`basename $i`
    done 
    
    return 0
}


INSTALL_PREBUILD_OPEN64_NATIVE_LIB () {
    return 0
}

   # Install GNU glic-devel package. this is perform only for cross compilation. 
   # On native environment, we requires the end user install glibc-devel before 
   # hand.
INSTALL_PREBUILD_GLIBC_NATIVE_LIB () {

    for i in ../lib/${TARG_HOST}-${TARG_OS}/gnu/* ; do 
        x=`basename $i`
        [ "$x" = "CVS" ] && continue;
        [ "$x" = "libgcc.a"    ] && continue;
        [ "$x" = "libstdc++.a" ] && continue;
        INSTALL_EXEC_SUB $i ${NATIVE_LIB_DIR}/`basename $i`
    done  
    
    return 0
}

INSTALL_PREBUILD_PHASE () {

        # Some prebuild
    if [ -d ../bin/${BUILD_HOST}-${BUILD_OS}/phase ] ; then
        for i in ../bin/${BUILD_HOST}-${BUILD_OS}/phase/* ; do 
	        [ "`basename $i`" = "CVS" ] && continue
            INSTALL_EXEC_SUB $i ${PHASEPATH}/`basename $i`
        done
    fi
    return 0
}

INSTALL_CROSS_UTIL () {

    if [ -d ../bin/${BUILD_HOST}-${BUILD_OS}/util/ ] ; then
        for i in ../bin/${BUILD_HOST}-${BUILD_OS}/util/* ; do 
	        [ "`basename $i`" = "CVS" ] && continue
            INSTALL_EXEC_SUB $i ${BIN_DIR}/`basename $i`
        done
    fi

    return 0
}

INSTALL_NATIVE_HEADER () {

    INSTALL_DATA_SUB osprey/include/nue/stdarg.h  ${PHASEPATH}/include/stdarg.h
    INSTALL_DATA_SUB osprey/include/nue/va-ia64.h  ${PHASEPATH}/include/va-ia64.h 

    cp -f -a osprey/include ${PHASEPATH}/ 

    return 0
}

INSTALL_MAN_PAGE () {

    d1=man/linux/man1
    d2=$ROOT/usr/man/man1

    INSTALL_DATA_SUB $d1/sgicc.1 $d2 
    INSTALL_DATA_SUB $d1/sgif90.1 $d2

    ln -sf $d2/sgicc.1  $d2/sgiCC.1

    return 0
}

INSTALL_MISC () {

    INSTALL_EXEC_SUB ${AREA}/wopt/wopt.so         ${PHASEPATH}/wopt.so
    INSTALL_EXEC_SUB ${AREA}/lw_inline/lw_inline  ${PHASEPATH}/inline
    INSTALL_EXEC_SUB ${AREA}/lno/lno.so           ${PHASEPATH}/lno.so
    #INSTALL_EXEC_SUB ${AREA}/targ_info/r10000.so ${PHASEPATH}/r10000.so
    INSTALL_EXEC_SUB ${AREA}/targ_info/sl1_pcore.so ${PHASEPATH}/sl1_pcore.so
    INSTALL_EXEC_SUB ${AREA}/targ_info/sl1_dsp.so ${PHASEPATH}/sl1_dsp.so
    INSTALL_EXEC_SUB ${AREA}/targ_info/sl2_pcore.so ${PHASEPATH}/sl2_pcore.so
    INSTALL_EXEC_SUB ${AREA}/targ_info/sl2_mcore.so ${PHASEPATH}/sl2_mcore.so
    INSTALL_EXEC_SUB ${AREA}/targ_info/sl5.so ${PHASEPATH}/sl5.so
    [ "$BUILD_HOST" != "$TARG_HOST" ] && ln -s /data/share/sl1-1-toolchain//gcc-3.3.5-tools/bin ${ALT_BIN_DIR} 2>/dev/null

        # install some scripts
    if [ -d ../bin/misc/ ]; then
        for i in ../bin/misc/* ; do 
            [ -f "$i" ] && INSTALL_EXEC_SUB ${i} ${BIN_DIR}/`basename $i`
        done
    fi

    return 0
}

cd `dirname $0`

INSTALL_DRIVER 
INSTALL_FE 
INSTALL_BE 
INSTALL_IPA 
INSTALL_CG 
INSTALL_WHIRL_STUFF 

#INSTALL_PHASE_SPECIFIC_ARCHIVES 
#[ "$BUILD_HOST" != "$TARG_HOST" ] && INSTALL_PREBUILD_GLIBC_NATIVE_LIB 
[ "$BUILD_HOST" != "$TARG_HOST" ] && INSTALL_NATIVE_HEADER 
#INSTALL_PREBUILD_OPEN64_NATIVE_LIB 
#INSTALL_GENERAL_PURPOSE_NATIVE_ARCHIVES
#INSTALL_PREBUILD_GNU_NATIVE_CRT_STARTUP 

[ "$BUILD_HOST" != "$TARG_HOST" ] && INSTALL_CROSS_UTIL
INSTALL_PREBUILD_PHASE 

INSTALL_MISC

exit 0
