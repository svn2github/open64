/*
 * Copyright 2003, 2004 PathScale, Inc.  All Rights Reserved.
 */

/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if 
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/


//  
//  Generate ISA registers information
///////////////////////////////////////


//  $Revision: 1.1 $
//  $Date: 2005/07/27 02:18:13 $
//  $Author: kevinlo $
//  $Source: /depot/CVSROOT/javi/src/sw/cmplr/common/targ_info/isa/x8664/isa_registers.cxx,v $

#include <stddef.h>
#include "isa_registers_gen.h"
#include "targ_isa_subset.h"

/* The order is assigned to favor the parameter passing. */
static const char* int_reg_names[16] = {
  "%rax", "%rbx", "%rbp", "%rsp", "%rdi", "%rsi", "%rdx", "%rcx",
  "%r8",  "%r9",  "%r10", "%r11", "%r12", "%r13", "%r14", "%r15"
};

static const char* xmm_reg_names[16] = {
  "%xmm0", "%xmm1", "%xmm2",  "%xmm3",  "%xmm4",  "%xmm5",  "%xmm6",  "%xmm7",
  "%xmm8", "%xmm9", "%xmm10", "%xmm11", "%xmm12", "%xmm13", "%xmm14", "%xmm15",
};

static const char* x87_reg_names[8] = {
  "%st0", "%st1", "%st2", "%st3", "%st4","%st5","%st6","%st7"
};

#ifdef TARG_X8664_SOCC

static const char* cop_areg_names[32] = {
  "%a0", "%a1", "%a2", "%a3", "%a4", "%a5", "%a6", "%a7",
  "%a8", "%a9", "%a10", "%a11", "%a12", "%a13", "%a14", "%a15",
  "%a16", "%a17", "%a18", "%a19", "%a20", "%a21", "%a22", "%a23",
  "%a24", "%a25", "%a26", "%a27", "%a28", "%a29", "%a30", "%a31"
};

static const char* cop_vreg_names[512] = {
  "%v0", "%v1", "%v2", "%v3", "%v4", "%v5", "%a6", "%v7",
  "%v8", "%v9", "%v10", "%v11", "%v12", "%v13", "%v14", "%v15",
  "%v16", "%v17", "%v18", "%v19", "%v20", "%v21", "%v22", "%v23",
  "%v24", "%v25", "%v26", "%v27", "%v28", "%v29", "%v30", "%v31",
  "%v32", "%v33", "%v34", "%v35", "%v36", "%v37", "%v38", "%v39",
  "%v40", "%v41", "%v42", "%v43", "%v44", "%v45", "%v46", "%v47", 
  "%v48", "%v49", "%v50", "%v51", "%v52", "%v53", "%v54", "%v55", 
  "%v56", "%v57", "%v58", "%v59", "%v60", "%v61", "%v62", "%v63",
  "%v64", "%v65", "%v66", "%v67", "%v68", "%v69", "%v70", "%v71",
  "%v72", "%v73", "%v74", "%v75", "%v76", "%v77", "%v78", "%v79",
  "%v80", "%v81", "%v82", "%v83", "%v84", "%v85", "%v86", "%v87",
  "%v88", "%v89", "%v90", "%v91", "%v92", "%v93", "%v94", "%v95",
  "%v96", "%v97", "%v98", "%v99", "%v100", "%v101", "%v102", "%v103",
  "%v104", "%v105", "%v106", "%v107", "%v108", "%v109", "%v110", "%v111",
  "%v112", "%v113", "%v114", "%v115", "%v116", "%v117", "%v118", "%v119",
  "%v120", "%v121", "%v122", "%v123", "%v124", "%v125", "%v126", "%v127", 
};

#endif


enum { RAX=0, RBX, RBP, RSP, RDI, RSI, RDX, RCX,
       R8, R9, R10, R11, R12, R13, R14, R15 };

static int rax_reg[] = { RAX };
static int rdx_reg[] = { RDX };
static int rcx_reg[] = { RCX };
static int rbp_reg[] = { RBP };
static int rsp_reg[] = { RSP };
static int r11_reg[] = { R11 };

static int ISA_Mask(ISA_SUBSET isa)
{
  return 1 << (int)isa;
}


static int All_ISA_Mask(void)
{
  int i;
  int mask = 0;
  for (i = ISA_SUBSET_MIN; i <= ISA_SUBSET_MAX; ++i) {
    mask |= 1 << i;
  }
  return mask;
}


static int Range_ISA_Mask(ISA_SUBSET min_isa, ISA_SUBSET max_isa)
{
  int i;
  int mask = 0;
  for (i = (int)min_isa; i <= (int)max_isa; ++i) {
    mask |= 1 << i;
  }
  return mask;
}


main (int argc, char** argv)
{
  ISA_Registers_Begin( "x8664" );

  ISA_REGISTER_CLASS rc_integer = ISA_Register_Class_Create( "integer", 64,  true,  false );
  ISA_REGISTER_CLASS rc_fp      = ISA_Register_Class_Create( "float",   64,  true,  false );
  ISA_REGISTER_CLASS rc_rflags  = ISA_Register_Class_Create( "rflags",  64,  false, false );
  ISA_REGISTER_CLASS rc_rip     = ISA_Register_Class_Create( "rip",     64,  false, false );
  ISA_REGISTER_CLASS rc_x87     = ISA_Register_Class_Create( "x87",    128,  true,  false );
  ISA_REGISTER_CLASS rc_x87_cw  = ISA_Register_Class_Create( "x87_cw",  16,  false, false );
#ifdef TARG_X8664_SOCC
  ISA_REGISTER_CLASS rc_cop_areg = ISA_Register_Class_Create( "cop_areg",  64,  true, false );
  ISA_REGISTER_CLASS rc_cop_vreg = ISA_Register_Class_Create( "cop_vreg",  64,  true, false );
#endif
  ISA_Register_Set( rc_integer, 0, 15, "%u", int_reg_names,  All_ISA_Mask() );
  ISA_Register_Set( rc_fp,      0, 15, "%u", xmm_reg_names,  All_ISA_Mask() );
  ISA_Register_Set( rc_rflags,  0, 0,  "%rflags", NULL,      All_ISA_Mask() );
  ISA_Register_Set( rc_rip,     0, 0,  "%rip",    NULL,      All_ISA_Mask() );
  ISA_Register_Set( rc_x87,     0, 7,  "%u", x87_reg_names,  All_ISA_Mask() );
  ISA_Register_Set( rc_x87_cw,  0, 0,  "%%x87_cw",NULL,      All_ISA_Mask() );
#ifdef TARG_X8664_SOCC
  ISA_Register_Set(rc_cop_areg, 0, 31, "%u", cop_areg_names, All_ISA_Mask() );
  ISA_Register_Set(rc_cop_vreg, 0,127, "%u", cop_vreg_names, All_ISA_Mask() );
#endif

  ISA_Register_Subclass_Create("rax", rc_integer, 1, rax_reg, NULL);
  ISA_Register_Subclass_Create("rdx", rc_integer, 1, rdx_reg, NULL);
  ISA_Register_Subclass_Create("rcx", rc_integer, 1, rcx_reg, NULL);
  ISA_Register_Subclass_Create("rbp", rc_integer, 1, rbp_reg, NULL);
  ISA_Register_Subclass_Create("rsp", rc_integer, 1, rsp_reg, NULL);
  ISA_Register_Subclass_Create("r11", rc_integer, 1, r11_reg, NULL);

  ISA_Registers_End();
}
