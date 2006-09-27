#!/bin/sh
#
# One should not have to remember how to use autoconf and automake.
# When you change configure.ac or Makefile.am, run this script.
set -e
rm -f acconfig.h config.cache
aclocal19
autoconf259
#acconfig
autoheader259
automake19 -a
rm -rf autom4te.cache
