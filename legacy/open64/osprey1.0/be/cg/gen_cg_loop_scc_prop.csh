#!/bin/csh -f
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


### ====================================================================
### ====================================================================
### Module: gen_cg_loop_scc_prop.csh
### $Revision: 1.1.1.1 $
### $Date: 2005/10/21 19:00:00 $
### $Author: marcel $
### $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/gen_cg_loop_scc_prop.csh,v $
### Revision history:
###   11-Aug-92
###
### Usage:      gen_cg_loop_scc_prop MTP_BIN
###
###     Generate the cg_loop_scc_prop.[ch] module.  The argument is the MTP_BIN
###     directory.  We do this in a file so the make rule can depend on and it
###     can be rebuilt when the procedure changes
###
### ====================================================================
### ====================================================================



csh -f $1/gen_x_prop.csh    'struct cg_loop_scc *'                     \
                            'CG_LOOP_SCC'                              \
                            'CG_LOOP_SCC_id(x)'                        \
                            'defs.h'                                   \
                            'mempool.h'                                 \
                            'cgir.h'                                   \
                            'cg_loop_scc_prop.h'                       \
                            'cg_loop_scc.h'
