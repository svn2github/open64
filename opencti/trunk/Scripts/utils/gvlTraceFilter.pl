#!/usr/local/bin/perl -w
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
# This filter selects only output related to GVL trace output, eliminating
# all other compiler output.
#
# Command line parameters:
# $1 -- input file to filter. 
#
# Output is written to stdout.
#

use strict; 
use File::Basename;

#---------------------------------------
#
# Command line args
#

# name of currently executing script
my $me;
my $me_fullpath = $0;
($me = $0) =~ s%.*/%%;

# test name
my $infile = shift @ARGV || "";

sub error {
  print STDERR "$me: ";
  print STDERR @_;
  print STDERR "\n";
  exit 1;
}

#
# Validate command line parameters
#
if ($infile eq "") {
  error("invalid parameter");
}
open (IN, "< $infile") or
  error("can't open/access input file $infile");

my $line;
my $seen_vartab_dump = 0;
while ($line = <IN>) {

  if ($line =~ /VarTab dump:/) {
    $seen_vartab_dump = 1;
  }
  if ($seen_vartab_dump) {
    print $line;
    next;
  }

  # PBO match ratio
  if ($line =~ /14005/) {
    print $line;
    next;
  }

  # GVL trace output
  if ($line =~ /GVL:/ || $line =~ /SYZ:/) {
    print $line;
    next;
  }
}

exit 0;
