#!/bin/sh

#
# put all open stuffs under root/, 
#   without any symbol links, such as ipl, whirl2c_be and whirl2f_be
#   without any gcc stuffs, such as crt*.o, libgcc.*, libstdc++.*
# the layout of root/ will be like this:
# root/
#   opt/
#     open64/
#       bin/
#         opencc, openCC, openf90, ...
#       lib/
#         gcc-lib/ia64-open64-linux/$version/...
#

BUILDROOT=`pwd`/root
rpmbuild -bb --buildroot=$BUILDROOT SPECS/open64.spec

