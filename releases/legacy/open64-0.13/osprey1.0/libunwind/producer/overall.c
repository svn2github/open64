/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2.1 of the GNU Lesser General Public License 
  as published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU Lesser General Public 
  License along with this program; if not, write the Free Software 
  Foundation, Inc., 59 Temple Place - Suite 330, Boston MA 02111-1307, 
  USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/



#include <stdlib.h>
#include <stdio.h>
#include <strings.h>
#ifndef __GNUC__
#include <cmplrs/ia64/targ_isa_registers.h>
#else
#include <targ_isa_registers.h>
#endif
#include <sys/unwindP.h>
#include "unwind_producer.h"



#define MAX_GENERAL_REGISTERS		128
#define MAX_FP_REGISTERS		128
#define MAX_BRANCH_REGISTERS		8
#define MAX_PREDICATE_REGISTERS		64
#define MAX_APPLICATION_REGISTERS	128


static __UNW_REG_TYPE
reg_to_enum (__uint32_t regclass, __uint32_t regno)
{
	switch (regclass) {
	case ISA_REGISTER_CLASS_integer:
		if (regno >= 4 && regno <= 7)
			return __UNW_R4 + (regno - 4);
		break;
	case ISA_REGISTER_CLASS_float:
		if (regno >= 2 && regno <= 5)
			return __UNW_F2 + (regno - 2);
		if (regno >= 16 && regno <= 31)
			return __UNW_F16 + (regno - 16);
		break;
	case ISA_REGISTER_CLASS_branch:
		if (regno == 0)
			return __UNW_RP;
		if (regno >= 1 && regno <= 5)
			return __UNW_B1 + (regno - 1);
		break;
	case ISA_REGISTER_CLASS_predicate:
		return __UNW_PRED;
	case ISA_REGISTER_CLASS_application:
		switch (regno) {
		case 64: return __UNW_PFS;
		case 65: return __UNW_LC;
		case 40: return __UNW_FPSR;
		case 36: return __UNW_UNAT;
		case 19: return __UNW_RNAT;
		case 17: return __UNW_BSP;
		case 18: return __UNW_BSPSTORE;
		}
		break;
	}
	return __UNW_UNDEFINED_REG;
}

/* producer function to add a reg-to-reg unwind descriptor */
__unw_error_t unwind_info_add_prologue_info_reg(__unw_info_t *info,
						__uint32_t regclass_src,
						__uint32_t regno_src,
						__uint64_t when,
						__uint32_t regclass_dest,
						__uint32_t regno_dest) {
	__unw_error_t ret;
	__uint32_t grmask = 0, brmask = 0;
	__UNW_REG_TYPE ureg;

	switch (regclass_src) {
	    case ISA_REGISTER_CLASS_integer:
		if (regno_src >= MAX_GENERAL_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		if (regno_src == 12) {
			/* sp */
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_mem_stack_v_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_psp_gr_info(info,
								regno_dest);
			return ret;
		}
		/* else general spill */
		ureg = reg_to_enum (regclass_src, regno_src);
		if (ureg == __UNW_UNDEFINED_REG)
			return __UNW_INV_ARG_ERROR;
		if (regclass_dest != ISA_REGISTER_CLASS_integer) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_reg_to_gr_info (info, when, 
			ureg, regno_dest);
		return ret;
		break;
	    case ISA_REGISTER_CLASS_float:
		if (regno_src >= MAX_FP_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		/* else general spill */
		ureg = reg_to_enum (regclass_src, regno_src);
		if (ureg == __UNW_UNDEFINED_REG)
			return __UNW_INV_ARG_ERROR;
		if (regclass_dest != ISA_REGISTER_CLASS_integer) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_reg_to_gr_info (info, when, 
			ureg, regno_dest);
		return ret;
		break;
	    case ISA_REGISTER_CLASS_predicate:
		if (regno_src >= MAX_PREDICATE_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch(regno_src) {
		    /* any regno_src will work by convention */
		    default:
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_preds_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_preds_gr_info(info,
								regno_dest);
			return ret;
			
		}
	    case ISA_REGISTER_CLASS_branch:
		if (regno_src >= MAX_BRANCH_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch (regno_src) {
		    case 0 /* rp */:
			if (ISA_REGISTER_CLASS_branch == regclass_dest) {
				ret = unwind_info_add_prologue_rp_br_info(info,
								regno_dest);
				return ret;
			} else if (ISA_REGISTER_CLASS_integer == regclass_dest) {
				ret = unwind_info_add_prologue_rp_when_info(info,
									when);
				if (__UNW_OK != ret) {
					return ret;
				}
				ret = unwind_info_add_prologue_rp_gr_info(info,
								regno_dest);
				return ret;
			} else {
				return __UNW_INV_ARG_ERROR;
			}
		    case 1: case 2: case 3: case 4: case 5:
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			if (1 == regno_src) {
				brmask = 0x01;
			} else if (2 == regno_src) {
				brmask = 0x02;
			} else if (3 == regno_src) {
				brmask = 0x04;
			} else if (4 == regno_src) {
				brmask = 0x08;
			} else {
				brmask = 0x10;
			}
			ret = unwind_info_add_prologue_br_gr_info(info,
							brmask, regno_dest);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_set_imask(info, 0x03, when);
			return ret;
		    default:
			return __UNW_INV_ARG_ERROR;
		}
	    case ISA_REGISTER_CLASS_application:
		if (regno_src >= MAX_APPLICATION_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch (regno_src) {
		    case 17: /* bsp */
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_bsp_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_bsp_gr_info(info,
								regno_dest);
			return ret;
		    case 18: /* bspstore */
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_bspstore_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_bspstore_gr_info(info,
								regno_dest);
			return ret;
		    case 19: /* rnat */
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_rnat_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_rnat_gr_info(info,
								regno_dest);
			return ret;
		    case 36: /* unat */
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_unat_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_unat_gr_info(info,
								regno_dest);
			return ret;
		    case 36+1: /* pri-unat by convention */
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_priunat_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_priunat_gr_info(info,
								regno_dest);
			return ret;
		    case 40: /* fpsr */
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_fpsr_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_fpsr_gr_info(info,
								regno_dest);
			return ret;
		    case 64 /* pfs */:
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_pfs_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_pfs_gr_info(info,
								regno_dest);
			return ret;
		    case 65: /* lc */
			if (ISA_REGISTER_CLASS_integer != regclass_dest) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_prologue_lc_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_lc_gr_info(info,
								regno_dest);
			return ret;
		    default:
			return __UNW_INV_ARG_ERROR;
		}
	    default:
		return __UNW_INV_ARG_ERROR;
	}
}

/* add body descriptor for reg->reg save */
__unw_error_t unwind_info_add_body_info_reg(__unw_info_t *info,
						__uint32_t regclass_src,
						__uint32_t regno_src,
						__uint64_t when,
						__uint32_t regclass_dest,
						__uint32_t regno_dest) 
{
	__unw_error_t ret;
	__UNW_REG_TYPE ureg = reg_to_enum (regclass_src, regno_src);
	if (ureg == __UNW_UNDEFINED_REG) {
		return __UNW_INV_ARG_ERROR;
	}
	if (regclass_dest != ISA_REGISTER_CLASS_integer) {
		return __UNW_INV_ARG_ERROR;
	}

	switch (regclass_src) {
	    case ISA_REGISTER_CLASS_integer:
		if (regno_src >= MAX_GENERAL_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_reg_to_gr_info (info, when, 
			ureg, regno_dest);
		return ret;
	    case ISA_REGISTER_CLASS_float:
		if (regno_src >= MAX_FP_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_reg_to_gr_info (info, when, 
			ureg, regno_dest);
		return ret;
	    case ISA_REGISTER_CLASS_branch:
		if (regno_src >= MAX_BRANCH_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_reg_to_gr_info (info, when, 
			ureg, regno_dest);
		return ret;
	    case ISA_REGISTER_CLASS_application:
		if (regno_src >= MAX_APPLICATION_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_reg_to_gr_info (info, when, 
			ureg, regno_dest);
		return ret;
	    default:
		return __UNW_INV_ARG_ERROR;
	}
}

__unw_error_t unwind_info_add_body_info_restore (__unw_info_t *info,
						__uint32_t regclass,
						__uint32_t regno,
						__uint64_t when)
{
	__unw_error_t ret;
	__UNW_REG_TYPE ureg = reg_to_enum (regclass, regno);
	if (ureg == __UNW_UNDEFINED_REG)
		return __UNW_INV_ARG_ERROR;

	switch (regclass) {
	    case ISA_REGISTER_CLASS_integer:
		if (regno >= MAX_GENERAL_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_restore_reg_info (info, when, ureg);
		return ret;
	    case ISA_REGISTER_CLASS_float:
		if (regno >= MAX_FP_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_restore_reg_info (info, when, ureg);
		return ret;
	    case ISA_REGISTER_CLASS_branch:
		if (regno >= MAX_BRANCH_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_restore_reg_info (info, when, ureg);
		return ret;
	    case ISA_REGISTER_CLASS_application:
		if (regno >= MAX_APPLICATION_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_restore_reg_info (info, when, ureg);
		return ret;
	    default:
		return __UNW_INV_ARG_ERROR;
	}
}


/* producer function to add a reg-to-spoffset unwind descriptor */
__unw_error_t unwind_info_add_prologue_info_sp_offset(__unw_info_t *info,
						__uint32_t regclass,
						__uint32_t regno,
						__uint64_t when,
						__uint64_t spoffset) {
	__unw_error_t ret;
	__UNW_REG_TYPE ureg;

	switch (regclass) {
	    case ISA_REGISTER_CLASS_integer:
		if (regno >= MAX_GENERAL_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		if (regno == 12) {
		    	/* sp */
			ret = unwind_info_add_prologue_mem_stack_v_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_psp_sprel_info(info,
								spoffset);
			return ret;
		}
		else {
			/* general spill */
			ureg = reg_to_enum (regclass, regno);
			if (ureg == __UNW_UNDEFINED_REG) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_spill_sprel_info (info, when, 
				ureg, spoffset);
			return ret;
		}
		break;
	    case ISA_REGISTER_CLASS_float:
		if (regno >= MAX_FP_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		/* general spill */
		ureg = reg_to_enum (regclass, regno);
		if (ureg == __UNW_UNDEFINED_REG) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_sprel_info (info, when, 
			ureg, spoffset);
		return ret;
	    case ISA_REGISTER_CLASS_predicate:
		if (regno >= MAX_PREDICATE_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch(regno) {
		    /* any regno will work by convention */
		    default:
			ret = unwind_info_add_prologue_preds_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_preds_sprel_info(info,
								spoffset);
			return ret;
		}
	    case ISA_REGISTER_CLASS_branch:
		if (regno >= MAX_BRANCH_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch (regno) {
		    case 0 /* rp */:
			ret = unwind_info_add_prologue_rp_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_rp_sprel_info(info,
								spoffset);
			return ret;
		    case 1: case 2: case 3: case 4: case 5:
			/* general spill */
			ureg = reg_to_enum (regclass, regno);
			if (ureg == __UNW_UNDEFINED_REG) {
				return __UNW_INV_ARG_ERROR;
			}
			ret = unwind_info_add_spill_sprel_info (info, when, 
				ureg, spoffset);
			return ret;
		    default:
			return __UNW_INV_ARG_ERROR;
		}
	    case ISA_REGISTER_CLASS_application:
		if (regno >= MAX_APPLICATION_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch (regno) {
		    case 17: /* bsp */
			ret = unwind_info_add_prologue_bsp_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_bsp_sprel_info(info,
								spoffset);
			return ret;
		    case 18: /* bspstore */
			ret = unwind_info_add_prologue_bspstore_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_bspstore_sprel_info(info,
								spoffset);
			return ret;
		    case 19: /* rnat */
			ret = unwind_info_add_prologue_rnat_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_rnat_sprel_info(info,
								spoffset);
			return ret;
		    case 36: /* unat */
			ret = unwind_info_add_prologue_unat_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_unat_sprel_info(info,
								spoffset);
			return ret;
		    case 36+1: /* pri-unat by convention */
			ret = unwind_info_add_prologue_priunat_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_priunat_sprel_info(info,
								spoffset);
			return ret;
		    case 40: /* fpsr */
			ret = unwind_info_add_prologue_fpsr_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_fpsr_sprel_info(info,
								spoffset);
			return ret;
		    case 64 /* pfs */:
			ret = unwind_info_add_prologue_pfs_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_pfs_sprel_info(info,
								spoffset);
			return ret;
		    case 65: /* lc */
			ret = unwind_info_add_prologue_lc_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_lc_sprel_info(info,
								spoffset);
			return ret;
		    default:
			return __UNW_INV_ARG_ERROR;
		}
	    default:
		return __UNW_INV_ARG_ERROR;
	}
}



/* producer function to add a reg-to-pspoffset unwind descriptor */
__unw_error_t unwind_info_add_prologue_info_psp_offset(__unw_info_t *info,
						__uint32_t regclass,
						__uint32_t regno,
						__uint64_t when,
						__uint64_t pspoffset) {
	__unw_error_t ret;
	__uint32_t grmask = 0, frmask = 0, brmask = 0;

	switch (regclass) {
	    case ISA_REGISTER_CLASS_integer:
		if (regno >= MAX_GENERAL_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch (regno) {
		    case 4: case 5: case 6: case 7:
			if (4 == regno) {
				grmask = 0x01;
			} else if (5 == regno) {
				grmask = 0x02;
			} else if (6 == regno) {
				grmask = 0x04;
			} else {
				grmask = 0x08;
			}
			ret = unwind_info_add_prologue_spill_base_info(info,
								pspoffset);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_gr_mem_info(info,
								grmask);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_set_imask(info, 0x02, when);
			return ret;
		    default:
			return __UNW_INV_ARG_ERROR;
		}
	    case ISA_REGISTER_CLASS_float:
		if (regno >= MAX_FP_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch(regno) {
		    case 2: case 3: case 4: case 5:
			if (2 == regno) {
				frmask = 0x01;
			} else if (3 == regno) {
				frmask = 0x02;
			} else if (4 == regno) {
				frmask = 0x04;
			} else {
				frmask = 0x08;
			}
			ret = unwind_info_add_prologue_spill_base_info(info,
								pspoffset);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_fr_mem_info(info,
								frmask);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_set_imask(info, 0x01, when);
			return ret;
		    case 16: case 17: case 18: case 19:
		    case 20: case 21: case 22: case 23:
		    case 24: case 25: case 26: case 27:
		    case 28: case 29: case 30: case 31:
			if (16 == regno) {
				frmask = 0x00010;
			} else if (17 == regno) {
				frmask = 0x00020;
			} else if (18 == regno) {
				frmask = 0x00040;
			} else if (19 == regno) {
				frmask = 0x00080;
			} else if (20 == regno) {
				frmask = 0x00100;
			} else if (21 == regno) {
				frmask = 0x00200;
			} else if (22 == regno) {
				frmask = 0x00400;
			} else if (23 == regno) {
				frmask = 0x00800;
			} else if (24 == regno) {
				frmask = 0x01000;
			} else if (25 == regno) {
				frmask = 0x02000;
			} else if (26 == regno) {
				frmask = 0x04000;
			} else if (27 == regno) {
				frmask = 0x08000;
			} else if (28 == regno) {
				frmask = 0x10000;
			} else if (29 == regno) {
				frmask = 0x20000;
			} else if (30 == regno) {
				frmask = 0x40000;
			} else {
				frmask = 0x80000;
			}
			ret = unwind_info_add_prologue_spill_base_info(info,
								pspoffset);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_frgr_mem_info(info,
								grmask, frmask);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_set_imask(info, 0x01, when);
			return ret;
		    default:
			return __UNW_INV_ARG_ERROR;
		}
	    case ISA_REGISTER_CLASS_predicate:
		if (regno >= MAX_PREDICATE_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch(regno) {
		    /* any regno will work by convention */
		    default:
			ret = unwind_info_add_prologue_preds_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_preds_psprel_info(info,
								pspoffset);
			return ret;
		}
	    case ISA_REGISTER_CLASS_branch:
		if (regno >= MAX_BRANCH_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch (regno) {
		    case 0 /* rp */:
			ret = unwind_info_add_prologue_rp_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_rp_psprel_info(info,
								pspoffset);
			return ret;
		    case 1: case 2: case 3: case 4: case 5:
			if (1 == regno) {
				brmask = 0x01;
			} else if (2 == regno) {
				brmask = 0x02;
			} else if (3 == regno) {
				brmask = 0x04;
			} else if (4 == regno) {
				brmask = 0x08;
			} else {
				brmask = 0x10;
			}
			ret = unwind_info_add_prologue_spill_base_info(info,
								pspoffset);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_br_mem_info(info,
								brmask);
			if (__UNW_OK != ret) {
				return ret;
			}
			unwind_info_set_imask(info, 0x03, when);
		    default:
			return __UNW_INV_ARG_ERROR;
		}
	    case ISA_REGISTER_CLASS_application:
		if (regno >= MAX_APPLICATION_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch (regno) {
		    case 17: /* bsp */
			ret = unwind_info_add_prologue_bsp_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_bsp_psprel_info(info,
								pspoffset);
			return ret;
		    case 18: /* bspstore */
			ret = unwind_info_add_prologue_bspstore_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_bspstore_psprel_info(info,
								pspoffset);
			return ret;
		    case 19: /* rnat */
			ret = unwind_info_add_prologue_rnat_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_rnat_psprel_info(info,
								pspoffset);
			return ret;
		    case 36: /* unat */
			ret = unwind_info_add_prologue_unat_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_unat_psprel_info(info,
								pspoffset);
			return ret;
		    case 36+1: /* pri-unat by convention */
			ret = unwind_info_add_prologue_priunat_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_priunat_psprel_info(info,
								pspoffset);
			return ret;
		    case 40: /* fpsr */
			ret = unwind_info_add_prologue_fpsr_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_fpsr_psprel_info(info,
								pspoffset);
			return ret;
		    case 64 /* pfs */:
			ret = unwind_info_add_prologue_pfs_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_pfs_psprel_info(info,
								pspoffset);
			return ret;
		    case 65: /* lc */
			ret = unwind_info_add_prologue_lc_when_info(info,
									when);
			if (__UNW_OK != ret) {
				return ret;
			}
			ret = unwind_info_add_prologue_lc_psprel_info(info,
								pspoffset);
			return ret;
		    default:
			return __UNW_INV_ARG_ERROR;
		}
	    default:
		return __UNW_INV_ARG_ERROR;
	}
}

/* add body descriptor for reg->sp save */
__unw_error_t unwind_info_add_body_info_sp_offset(__unw_info_t *info,
						__uint32_t regclass,
						__uint32_t regno,
						__uint64_t when,
						__uint64_t spoffset) 
{
	__unw_error_t ret;
	__UNW_REG_TYPE ureg = reg_to_enum (regclass, regno);
	if (ureg == __UNW_UNDEFINED_REG) {
		return __UNW_INV_ARG_ERROR;
	}

	switch (regclass) {
	    case ISA_REGISTER_CLASS_integer:
		if (regno >= MAX_GENERAL_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_sprel_info (info, when, 
			ureg, spoffset);
		return ret;
	    case ISA_REGISTER_CLASS_float:
		if (regno >= MAX_FP_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_sprel_info (info, when, 
			ureg, spoffset);
		return ret;
	    case ISA_REGISTER_CLASS_branch:
		if (regno >= MAX_BRANCH_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_sprel_info (info, when, 
			ureg, spoffset);
		return ret;
	    case ISA_REGISTER_CLASS_application:
		if (regno >= MAX_APPLICATION_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_sprel_info (info, when, 
			ureg, spoffset);
		return ret;
	    default:
		return __UNW_INV_ARG_ERROR;
	}
}

/* add body descriptor for reg->psp save */
__unw_error_t unwind_info_add_body_info_psp_offset(__unw_info_t *info,
						__uint32_t regclass,
						__uint32_t regno,
						__uint64_t when,
						__uint64_t pspoffset) 
{
	__unw_error_t ret;
	__UNW_REG_TYPE ureg = reg_to_enum (regclass, regno);
	if (ureg == __UNW_UNDEFINED_REG) {
		return __UNW_INV_ARG_ERROR;
	}

	switch (regclass) {
	    case ISA_REGISTER_CLASS_integer:
		if (regno >= MAX_GENERAL_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_psprel_info (info, when, 
			ureg, pspoffset);
		return ret;
	    case ISA_REGISTER_CLASS_float:
		if (regno >= MAX_FP_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_psprel_info (info, when, 
			ureg, pspoffset);
		return ret;
	    case ISA_REGISTER_CLASS_branch:
		if (regno >= MAX_BRANCH_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_psprel_info (info, when, 
			ureg, pspoffset);
		return ret;
	    case ISA_REGISTER_CLASS_application:
		if (regno >= MAX_APPLICATION_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		ret = unwind_info_add_spill_psprel_info (info, when, 
			ureg, pspoffset);
		return ret;
	    default:
		return __UNW_INV_ARG_ERROR;
	}
}

/* producer function to add a reg-to-fixedval unwind descriptor */
__unw_error_t unwind_info_add_prologue_info_fixed_value(__unw_info_t *info,
						__uint32_t regclass,
						__uint32_t regno,
						__uint64_t when,
						__uint64_t val) {
	__unw_error_t ret;

	switch (regclass) {
	    case ISA_REGISTER_CLASS_integer:
		if (regno >= MAX_GENERAL_REGISTERS) {
			return __UNW_INV_ARG_ERROR;
		}
		switch (regno) {
		    case 12 /* sp */:
			ret = unwind_info_add_prologue_mem_stack_f_info(info,
								when, val);
			return ret;
		    default:
			return __UNW_INV_ARG_ERROR;
		}
	    default:
		return __UNW_INV_ARG_ERROR;
	}
}



/* function to set the imask data */
__unw_error_t unwind_info_set_imask(__unw_info_t *info, __uint32_t flag,
							__uint64_t when) {
	__uint64_t byte_no = 0L, shift_no = 0L;
	unsigned char loc;

        /* check valid info argument */
        if (NULL == info) {
                return __UNW_NULL_ERROR;
        } else if (_unwind_info + _unwind_info_size != info) {
                return __UNW_INV_ARG_ERROR;
        }

	/* check valid operation */
	if (__UNW_PROLOGUE != _current_region_id) {
		 return __UNW_INV_OP_ERROR;
	}

	/* allocate imask space */
	if (0L == _imask_size) {
		if (0L == _imask_total_size) {
			_imask_total_size = ((_current_region_total_size * 2) + 7 ) / 8;
			if (NULL == (_imask = (void *)malloc((ssize_t)
					_imask_total_size))) {
				unwind_cleanup();
				return __UNW_MALLOC_ERROR;
			}
#ifdef DEBUG
			fprintf(stderr, "unwind_info_set_imask(): ");
			fprintf(stderr, "allocated _imask @ 0x%llx, ",
				(unsigned long long)_imask);
			fprintf(stderr, "total_size=%llu\n",
				(unsigned long long)_imask_total_size);
#endif
		} else if (_current_region_total_size > _imask_total_size) {
			_imask_total_size = ((_current_region_total_size * 2) + 7 ) / 8;
			if (NULL == (_imask = (void *)realloc(
					(void *)_imask,
					(ssize_t)_imask_total_size))) {
				unwind_cleanup();
				return __UNW_REALLOC_ERROR;
			}
#ifdef DEBUG
			fprintf(stderr, "unwind_info_set_imask(): ");
			fprintf(stderr, "reallocated _imask @ 0x%llx, ",
				(unsigned long long)_imask);
			fprintf(stderr, "total_size=%llu\n",
				(unsigned long long)_imask_total_size);
#endif
		}
		_imask_size = _current_region_total_size;
	}

	/* check valid time argument */
	if (when >= _imask_size) {
		return __UNW_INV_SIZE_ERROR;
	}

	/* check valid flag argument */
	if (flag >= 4) {
		return __UNW_INV_ARG_ERROR;
	}

	/* set the right byte */
	byte_no = (when * 2) / 8;
	shift_no = (when * 2) % 8;
	loc = (unsigned char)flag;
	loc <<= (6 - shift_no);
	*((char *)_imask + byte_no) |= loc;

	return __UNW_OK;
}



/* function to get the imask data */
__unw_error_t unwind_info_get_imask(__unw_info_t *info, __uint32_t *flag,
							__uint64_t when) {
	__uint64_t byte_no = 0L, shift_no = 0L;
	unsigned char loc;

        /* check valid info argument */
        if (NULL == info) {
                return __UNW_NULL_ERROR;
        } else if (_unwind_info + _unwind_info_size != info) {
                return __UNW_INV_ARG_ERROR;
        }

	/* check valid operation */
	if (__UNW_PROLOGUE != _current_region_id) {
		 return __UNW_INV_OP_ERROR;
	}

	/* check valid time argument */
	if (when >= _imask_size) {
		return __UNW_INV_SIZE_ERROR;
	}

	/* get the right byte */
	byte_no = (when * 2) / 8;
	shift_no = (when * 2) % 8;
	loc = *((char *)_imask + byte_no);
	loc <<= shift_no;
	loc >>= 6;
	*flag = (__uint32_t)loc;

	return __UNW_OK;
}



/* function to flush the imask data */
__unw_error_t unwind_info_add_imask(__unw_info_t *info) {
	__unw_error_t ret;
	__uint64_t i;
	__uint32_t flag, imask_needed = 0;

	/* check valid operation */
	if (__UNW_PROLOGUE != _current_region_id) {
		 return __UNW_INV_OP_ERROR;
	}

	/* check valid size */
	if (0L == _imask_size) {
		return __UNW_OK;
	}

	/* check whether imask is needed */
	/* by iterating over all the elements and finding a non-zero one */
	/* except for the last one that represends the last instruction slot */
	for (i = 0; i < _imask_size - 1; i++) {
		if (__UNW_OK != (ret = unwind_info_get_imask(info, &flag, i))) {
			/* reset size */
			_imask_size = 0L;

			return ret;
		}
		if (0 != flag) {
			imask_needed = 1;
			break;
		}
	}

	/* add descriptor */
	if (imask_needed) {
		ret = unwind_info_add_prologue_spill_mask_info(info,
					_imask, ((_imask_size * 2) + 7) / 8);
	}

	/* reset size */
	_imask_size = 0L;

	return ret;
}
