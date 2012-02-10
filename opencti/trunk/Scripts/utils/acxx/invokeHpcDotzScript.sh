#!/bin/sh
# ====================================================================
#
# Copyright (C) 2011, Hewlett-Packard Development Company, L.P.
# All Rights Reserved.
#
# Open64 is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# Open64 is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA  02110-1301, USA.
#
# ====================================================================
#
# Invoker script for Codegen .z tests. This script acts as an 
# interface between CTI and the codegen .z tests, which expect
# see particular variables set to select bits for the test.
#
#  Variables:
#       
#       TCC   		location of C driver
#       CC_OPTS         Options passed to the C driver
#       DD_OPTS         Data mode
#       F90T		location of F90 driver
#       F90_OPTS        Options passed to F90 driver
#       TaCC            location of aC++ driver
#       CG_OPTS		Additional code gen compiler options passed
#       TAHOE_SIM       location of simulator. we could get rid of this
#       SIMDB_OPTS	Options for simulator. We could get rid of thisn
#       TAHOE_DWD       location of dwarf dumper
#       PERL		location of perl.
#
# Notes:
#   - we currently ignore CG_OPTS
#
# Source CTI global environment file
. $(dirname $0)/../../../lib/CTI_global.env

TEST=$1
#
export FPATH="$CTI_GROUPS/Regression/ACXX/hpc/include"
#
export WR_CC="$CC"
export DEBUG_SCRIPT="$CTI_GROUPS/Regression/ACXX/hpt/Symdebug/debug_script"
export test_CC="$CXX"
export test_cc="$CC"
export HPT_MAND_OPTS="/bin/echo \c"
export EH_OPT="+eh"
export Run=`pwd`
export test_NM="/bin/nm"
export TCC="$CC"
export F90T="$FC"
export TaCC="$CXX"
#
export DD_OPTS="$DATA_MODE"
export CC_OPTS="$CC_OPTIONS ${CTI_OPT_SIGN}O${OPT_LEVEL}"
export test_opts="$CXX_OPTIONS ${CTI_OPT_SIGN}O${OPT_LEVEL}"
export F90_OPTS="$FC_OPTIONS ${CTI_OPT_SIGN}O${OPT_LEVEL}"
# ?no ACC_OPTS?
#
TAHOE_SIM=""
SIMDB_OPTS=""
if [ "$USE_SIMULATORS" = "true" ] 
then
  TAHOE_SIM=$SIMULATOR
  TTP_EXECUTE=$SIMULATOR
fi
#
export TAHOE_DWD=/path/to/sdk/usr/local/bin/dwd
export PERL="$CTI_PERL"
#
exec ./$1

