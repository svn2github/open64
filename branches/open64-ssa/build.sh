#!/bin/sh

make  MACHINE_TYPE=i386 $1 $2|| exit 1

make  lib MACHINE_TYPE=i386 $1 $2|| exit 2

make  lib  $1 $2|| exit 3

make install  MACHINE_TYPE=i386 || exit 4 

cd osprey/targx8664_builtonia32; make clean

cd ../targia32_builtonia32; make clean

cd ../..

make  lib  BUILD_COMPILER=OSP MACHINE_TYPE=i386 $1 $2|| exit 5

make  lib BUILD_COMPILER=OSP $1 $2|| exit 6

make install MACHINE_TYPE=i386 || exit 7

