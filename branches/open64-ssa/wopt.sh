#!/bin/sh

cd /proj/opensrc_nobackup/zhiweic/SVN/puretrunk/osprey/targia32_x8664/wopt

make BUILD_OPTIMIZE=DEBUG MACHINE_TYPE=i386 || exit 1

cd /proj/opensrc_nobackup/zhiweic/SVN/puretrunk/

make install MACHINE_TYPE=i386
