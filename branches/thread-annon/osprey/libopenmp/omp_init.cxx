/*
 *  Copyright (C) 2000, 2001 HPC,Tsinghua Univ.,China .  All Rights Reserved.
 *
 *      This program is free software; you can redistribute it and/or modify it
 *  under the terms of version 2 of the GNU General Public License as
 *  published by the Free Software Foundation.
 *
 *      This program is distributed in the hope that it would be useful, but
 *  WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 *      Further, this software is distributed without any warranty that it is
 *  free of the rightful claim of any third person regarding infringement
 *  or the like.  Any license provided herein, whether implied or
 *  otherwise, applies only to this software file.  Patent licenses, if
 *  any, provided herein do not apply to combinations of this program with
 *  other software, or any other product whatsoever.
 *
 *      You should have received a copy of the GNU General Public License along
 *  with this program; if not, write the Free Software Foundation, Inc., 59
 *  Temple Place - Suite 330, Boston MA 02111-1307, USA.
 *
 */

/*
 * File: omp_init.cxx
 * Abstract: initialize the internal data structures used in libopenmp by C++ ctor
 * History: 21/10/2008, created by Lai JianXin
 */

/* 
 * To align with the Pathscale OMP lowering 
 * Put '__ompc_sug_numthreads' here so that this file can be linked into the executable.
 */
int __ompc_sug_numthreads = 0;

extern "C" int  __ompc_init_rtl(int num_threads);

/*
 * class __ompc_rtl_initializer
 * initialize the libopenmp by a static instance.
 */
class __ompc_rtl_initializer {
private:
    __ompc_rtl_initializer() {
        // initialize the openmp rtl
	__ompc_init_rtl(0);
    }
    ~__ompc_rtl_initializer() {
        // Do nothing since __ompc_fini_rtl is added to atexit.
    }
    static __ompc_rtl_initializer inst_;
};
__ompc_rtl_initializer __ompc_rtl_initializer::inst_;

