C
C
C  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.
C
C  This program is free software; you can redistribute it and/or modify it
C  under the terms of version 2.1 of the GNU Lesser General Public License 
C  as published by the Free Software Foundation.
C
C  This program is distributed in the hope that it would be useful, but
C  WITHOUT ANY WARRANTY; without even the implied warranty of
C  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
C
C  Further, this software is distributed without any warranty that it is
C  free of the rightful claim of any third person regarding infringement 
C  or the like.  Any license provided herein, whether implied or 
C  otherwise, applies only to this software file.  Patent licenses, if
C  any, provided herein do not apply to combinations of this program with 
C  other software, or any other product whatsoever.  
C
C  You should have received a copy of the GNU Lesser General Public 
C  License along with this program; if not, write the Free Software 
C  Foundation, Inc., 59 Temple Place - Suite 330, Boston MA 02111-1307, 
C  USA.
C
C  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
C  Mountain View, CA 94043, or:
C
C  http://www.sgi.com
C
C  For further information regarding this notice, see:
C
C  http://oss.sgi.com/projects/GenInfo/NoticeExplan
C
C


	subroutine PREPROD_MASK_JS7@(result,source,dim,mask,sx)
*
CDIR$ ID "@(#) libfi/mpp_pre/preprod_s_7@.f	92.0	10/08/98 14:37:14"
************************************************************************
*
* Purpose:	Find the maximum value of the elements identified by mask,
*		while saving all intermediate results.  This routine handles
*		integer source arrays of rank 7. It returns an array result.
*		This routine is called by the C routine _PREPROD_JS7.
*
* Arguments:	result	- integer array of rank 7.
*		source	- integer array of rank 7.
*		dim	- integer scalar: dimension to search along.
*		mask	- logical array of rank 7.
*		sx	- integer array of rank 1:
*			  extents of the source array.
*
* Variables:	carry	- working variable to save current value of carry
*		init_val- initial value of carry variable
*
* Intrinsic functions called:
*		my_pe()
*		hiidx()
*		lowidx()
*		home()
*
* Documentation:
*		T3D Fortran 90 Array Intrinsics Interface Description
*		T3D Fortran 90 Array Intrinsics Design Description
*
* Author:	Kenneth Bussart
*		System Libraries Section
*		Cray Research, Inc.
*
************************************************************************
	implicit	none
	integer		sx(7)
	integer		dim
	integer		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	integer		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	logical		mask(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	integer		i, j, k, l, m, n, o, p
	integer		carry
	integer		init_val
*
	integer		FUNC, arg1, arg2
*
cdir$	serial_only
*
	FUNC (arg1,arg2) = arg1 * arg2
*
	init_val = 1
*
	if (dim .eq. 0) then
	    include "parapre_s7_dim0_mask.fh"
	else if (dim .eq. 1) then
	    include "parapre_s7_dim1_mask.fh"
	else if (dim .eq. 2) then
	    include "parapre_s7_dim2_mask.fh"
	else if (dim .eq. 3) then
	    include "parapre_s7_dim3_mask.fh"
	else if (dim .eq. 4) then
	    include "parapre_s7_dim4_mask.fh"
	else if (dim .eq. 5) then
	    include "parapre_s7_dim5_mask.fh"
	else if (dim .eq. 6) then
	    include "parapre_s7_dim6_mask.fh"
	else
	    include "parapre_s7_dim7_mask.fh"
	endif
*
	return
	end


	subroutine PREPROD_NOMASK_JS7@(result,source,dim,sx)
*
************************************************************************
*
* Purpose:	Find the maximum value of the elements in the array section,
*		while saving all intermediate results.  This routine handles
*		integer source arrays of rank 7.  It returns an array result.
*		This routine is called by the C routine _PREPROD_JS7.
*
* Arguments:	result	- integer array of rank 7.
*		source	- integer array of rank 7.
*		dim	- integer scalar: dimension to search along.
*		sx	- integer array of rank 1:
*			  extents of the source array.
*
* Variables:	carry	- working variable to save current value of carry
*		init_val- initial value of carry variable
*
* Intrinsic functions called:
*		my_pe()
*		hiidx()
*		lowidx()
*		home()
*
* Documentation:
*		T3D Fortran 90 Array Intrinsics Interface Description
*		T3D Fortran 90 Array Intrinsics Design Description
*
* Author:	Kenneth Bussart
*		System Libraries Section
*		Cray Research, Inc.
*
************************************************************************
	implicit	none
	integer		sx(7)
	integer		dim
	integer		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	integer		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	integer		i, j, k, l, m, n, o, p
	integer		carry
	integer		init_val
*
	integer		FUNC, arg1, arg2
*
cdir$	serial_only
*
	FUNC (arg1,arg2) = arg1 * arg2
*
	init_val = 1
*
	if (dim .eq. 0) then
	    include "parapre_s7_dim0_nomask.fh"
	else if (dim .eq. 1) then
	    include "parapre_s7_dim1_nomask.fh"
	else if (dim .eq. 2) then
	    include "parapre_s7_dim2_nomask.fh"
	else if (dim .eq. 3) then
	    include "parapre_s7_dim3_nomask.fh"
	else if (dim .eq. 4) then
	    include "parapre_s7_dim4_nomask.fh"
	else if (dim .eq. 5) then
	    include "parapre_s7_dim5_nomask.fh"
	else if (dim .eq. 6) then
	    include "parapre_s7_dim6_nomask.fh"
	else
	    include "parapre_s7_dim7_nomask.fh"
	endif
*
	return
	end


	subroutine PREPROD_MASK_SS7@(result,source,dim,mask,sx)
*
************************************************************************
*
* Purpose:	Find the maximum value of the elements identified by mask,
*		while saving all intermediate results.  This routine handles
*		real source arrays of rank 7. It returns an array result.
*		This routine is called by the C routine _PREPROD_SS7.
*
* Arguments:	result	- real array of rank 7.
*		source	- real array of rank 7.
*		dim	- integer scalar: dimension to search along.
*		mask	- logical array of rank 7.
*		sx	- integer array of rank 1:
*			  extents of the source array.
*
* Variables:	carry	- working variable to save current value of carry
*		init_val- initial value of carry variable
*
* Intrinsic functions called:
*		my_pe()
*		hiidx()
*		lowidx()
*		home()
*
* Documentation:
*		T3D Fortran 90 Array Intrinsics Interface Description
*		T3D Fortran 90 Array Intrinsics Design Description
*
* Author:	Kenneth Bussart
*		System Libraries Section
*		Cray Research, Inc.
*
************************************************************************
	implicit	none
	integer		sx(7)
	integer		dim
	real		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	real		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	logical		mask(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	integer		i, j, k, l, m, n, o, p
	real		carry
	real		init_val
*
	real		FUNC, arg1, arg2
*
cdir$	serial_only
*
	FUNC (arg1,arg2) = arg1 * arg2
*
	init_val = 1.0
*
	if (dim .eq. 0) then
	    include "parapre_s7_dim0_mask.fh"
	else if (dim .eq. 1) then
	    include "parapre_s7_dim1_mask.fh"
	else if (dim .eq. 2) then
	    include "parapre_s7_dim2_mask.fh"
	else if (dim .eq. 3) then
	    include "parapre_s7_dim3_mask.fh"
	else if (dim .eq. 4) then
	    include "parapre_s7_dim4_mask.fh"
	else if (dim .eq. 5) then
	    include "parapre_s7_dim5_mask.fh"
	else if (dim .eq. 6) then
	    include "parapre_s7_dim6_mask.fh"
	else
	    include "parapre_s7_dim7_mask.fh"
	endif
*
	return
	end


	subroutine PREPROD_NOMASK_SS7@(result,source,dim,sx)
*
************************************************************************
*
* Purpose:	Find the maximum value of the elements in the array section,
*		while saving all intermediate results.  This routine handles
*		real source arrays of rank 7.  It returns an array result.
*		This routine is called by the C routine _PREPROD_SS7.
*
* Arguments:	result	- real array of rank 7.
*		source	- real array of rank 7.
*		dim	- integer scalar: dimension to search along.
*		sx	- integer array of rank 1:
*			  extents of the source array.
*
* Variables:	carry	- working variable to save current value of carry
*		init_val- initial value of carry variable
*
* Intrinsic functions called:
*		my_pe()
*		hiidx()
*		lowidx()
*		home()
*
* Documentation:
*		T3D Fortran 90 Array Intrinsics Interface Description
*		T3D Fortran 90 Array Intrinsics Design Description
*
* Author:	Kenneth Bussart
*		System Libraries Section
*		Cray Research, Inc.
*
************************************************************************
	implicit	none
	integer		sx(7)
	integer		dim
	real		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	real		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	integer		i, j, k, l, m, n, o, p
	real		carry
	real		init_val
*
	real		FUNC, arg1, arg2
*
cdir$	serial_only
*
	FUNC (arg1,arg2) = arg1 * arg2
*
	init_val = 1.0
*
	if (dim .eq. 0) then
	    include "parapre_s7_dim0_nomask.fh"
	else if (dim .eq. 1) then
	    include "parapre_s7_dim1_nomask.fh"
	else if (dim .eq. 2) then
	    include "parapre_s7_dim2_nomask.fh"
	else if (dim .eq. 3) then
	    include "parapre_s7_dim3_nomask.fh"
	else if (dim .eq. 4) then
	    include "parapre_s7_dim4_nomask.fh"
	else if (dim .eq. 5) then
	    include "parapre_s7_dim5_nomask.fh"
	else if (dim .eq. 6) then
	    include "parapre_s7_dim6_nomask.fh"
	else
	    include "parapre_s7_dim7_nomask.fh"
	endif
*
	return
	end


	subroutine PREPROD_MASK_CS7@(result,source,dim,mask,sx)
*
************************************************************************
*
* Purpose:	Find the maximum value of the elements identified by mask,
*		while saving all intermediate results.  This routine handles
*		complex source arrays of rank 7. It returns an array result.
*		This routine is called by the C routine _PREPROD_CS7.
*
* Arguments:	result	- complex array of rank 7.
*		source	- complex array of rank 7.
*		dim	- integer scalar: dimension to search along.
*		mask	- logical array of rank 7.
*		sx	- integer array of rank 1:
*			  extents of the source array.
*
* Variables:	carry	- working variable to save current value of carry
*		init_val- initial value of carry variable
*
* Intrinsic functions called:
*		my_pe()
*		hiidx()
*		lowidx()
*		home()
*
* Documentation:
*		T3D Fortran 90 Array Intrinsics Interface Description
*		T3D Fortran 90 Array Intrinsics Design Description
*
* Author:	Kenneth Bussart
*		System Libraries Section
*		Cray Research, Inc.
*
************************************************************************
	implicit	none
	integer		sx(7)
	integer		dim
	complex		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	complex		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	logical		mask(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	integer		i, j, k, l, m, n, o, p
	complex		carry
	complex		init_val
*
	complex		FUNC, arg1, arg2
*
cdir$	serial_only
*
	FUNC (arg1,arg2) = arg1 * arg2
*
	init_val = cmplx (1.0,0.0)
*
	if (dim .eq. 0) then
	    include "parapre_s7_dim0_mask.fh"
	else if (dim .eq. 1) then
	    include "parapre_s7_dim1_mask.fh"
	else if (dim .eq. 2) then
	    include "parapre_s7_dim2_mask.fh"
	else if (dim .eq. 3) then
	    include "parapre_s7_dim3_mask.fh"
	else if (dim .eq. 4) then
	    include "parapre_s7_dim4_mask.fh"
	else if (dim .eq. 5) then
	    include "parapre_s7_dim5_mask.fh"
	else if (dim .eq. 6) then
	    include "parapre_s7_dim6_mask.fh"
	else
	    include "parapre_s7_dim7_mask.fh"
	endif
*
	return
	end


	subroutine PREPROD_NOMASK_CS7@(result,source,dim,sx)
*
************************************************************************
*
* Purpose:	Find the maximum value of the elements in the array section,
*		while saving all intermediate results.  This routine handles
*		integer source arrays of rank 7.  It returns an array result.
*		This routine is called by the C routine _PREPROD_CS7.
*
* Arguments:	result	- integer array of rank 7.
*		source	- integer array of rank 7.
*		dim	- integer scalar: dimension to search along.
*		sx	- integer array of rank 1:
*			  extents of the source array.
*
* Variables:	carry	- working variable to save current value of carry
*		init_val- initial value of carry variable
*
* Intrinsic functions called:
*		my_pe()
*		hiidx()
*		lowidx()
*		home()
*
* Documentation:
*		T3D Fortran 90 Array Intrinsics Interface Description
*		T3D Fortran 90 Array Intrinsics Design Description
*
* Author:	Kenneth Bussart
*		System Libraries Section
*		Cray Research, Inc.
*
************************************************************************
	implicit	none
	integer		sx(7)
	integer		dim
	complex		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	complex		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
	integer		i, j, k, l, m, n, o, p
	complex		carry
	complex		init_val
*
	complex		FUNC, arg1, arg2
*
cdir$	serial_only
*
	FUNC (arg1,arg2) = arg1 * arg2
*
	init_val = cmplx (1.0,0.0)
*
	if (dim .eq. 0) then
	    include "parapre_s7_dim0_nomask.fh"
	else if (dim .eq. 1) then
	    include "parapre_s7_dim1_nomask.fh"
	else if (dim .eq. 2) then
	    include "parapre_s7_dim2_nomask.fh"
	else if (dim .eq. 3) then
	    include "parapre_s7_dim3_nomask.fh"
	else if (dim .eq. 4) then
	    include "parapre_s7_dim4_nomask.fh"
	else if (dim .eq. 5) then
	    include "parapre_s7_dim5_nomask.fh"
	else if (dim .eq. 6) then
	    include "parapre_s7_dim6_nomask.fh"
	else
	    include "parapre_s7_dim7_nomask.fh"
	endif
*
	return
	end


!	subroutine PREPROD_SH_MASK_JS7@(result,source,dim,mask,sx)
!*
!************************************************************************
!*
!* Purpose:	Find the maximum value of the elements identified by mask,
!*		while saving all intermediate results.  This routine handles
!*		integer source arrays of rank 7. It returns an array result.
!*		This routine is called by the C routine _PREPROD_JS7.
!*
!* Arguments:	result	- integer array of rank 7.
!*		source	- integer array of rank 7.
!*		dim	- integer scalar: dimension to search along.
!*		mask	- logical array of rank 7.
!*		sx	- integer array of rank 1:
!*			  extents of the source array.
!*
!* Variables:	carry	- working variable to save current value of carry
!*		init_val- initial value of carry variable
!*
!* Intrinsic functions called:
!*		my_pe()
!*		hiidx()
!*		lowidx()
!*		home()
!*
!* Documentation:
!*		T3D Fortran 90 Array Intrinsics Interface Description
!*		T3D Fortran 90 Array Intrinsics Design Description
!*
!* Author:	Kenneth Bussart
!*		System Libraries Section
!*		Cray Research, Inc.
!*
!************************************************************************
!	implicit	none
!	integer		sx(7)
!	integer		dim
!	integer		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	integer		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	logical		mask(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	integer		i, j, k, l, m, n, o, p
!	integer		carry
!	integer		init_val
!*
!	integer		FUNC, arg1, arg2
!*
!cdir$	serial_only
!cdir$	unknown_shared	source, mask
!*
!	FUNC (arg1,arg2) = arg1 * arg2
!*
!	init_val = 1
!*
!	if (dim .eq. 0) then
!	    include "parapre_s7_dim0_mask.fh"
!	else if (dim .eq. 1) then
!	    include "parapre_s7_dim1_mask.fh"
!	else if (dim .eq. 2) then
!	    include "parapre_s7_dim2_mask.fh"
!	else if (dim .eq. 3) then
!	    include "parapre_s7_dim3_mask.fh"
!	else if (dim .eq. 4) then
!	    include "parapre_s7_dim4_mask.fh"
!	else if (dim .eq. 5) then
!	    include "parapre_s7_dim5_mask.fh"
!	else if (dim .eq. 6) then
!	    include "parapre_s7_dim6_mask.fh"
!	else
!	    include "parapre_s7_dim7_mask.fh"
!	endif
!*
!	return
!	end
!
!
!	subroutine PREPROD_SH_NOMASK_JS7@(result,source,dim,sx)
!*
!************************************************************************
!*
!* Purpose:	Find the maximum value of the elements in the array section,
!*		while saving all intermediate results.  This routine handles
!*		integer source arrays of rank 7.  It returns an array result.
!*		This routine is called by the C routine _PREPROD_JS7.
!*
!* Arguments:	result	- integer array of rank 7.
!*		source	- integer array of rank 7.
!*		dim	- integer scalar: dimension to search along.
!*		sx	- integer array of rank 1:
!*			  extents of the source array.
!*
!* Variables:	carry	- working variable to save current value of carry
!*		init_val- initial value of carry variable
!*
!* Intrinsic functions called:
!*		my_pe()
!*		hiidx()
!*		lowidx()
!*		home()
!*
!* Documentation:
!*		T3D Fortran 90 Array Intrinsics Interface Description
!*		T3D Fortran 90 Array Intrinsics Design Description
!*
!* Author:	Kenneth Bussart
!*		System Libraries Section
!*		Cray Research, Inc.
!*
!************************************************************************
!	implicit	none
!	integer		sx(7)
!	integer		dim
!	integer		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	integer		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	integer		i, j, k, l, m, n, o, p
!	integer		carry
!	integer		init_val
!*
!	integer		FUNC, arg1, arg2
!*
!cdir$	serial_only
!cdir$	unknown_shared	source
!*
!	FUNC (arg1,arg2) = arg1 * arg2
!*
!	init_val = 1
!*
!	if (dim .eq. 0) then
!	    include "parapre_s7_dim0_nomask.fh"
!	else if (dim .eq. 1) then
!	    include "parapre_s7_dim1_nomask.fh"
!	else if (dim .eq. 2) then
!	    include "parapre_s7_dim2_nomask.fh"
!	else if (dim .eq. 3) then
!	    include "parapre_s7_dim3_nomask.fh"
!	else if (dim .eq. 4) then
!	    include "parapre_s7_dim4_nomask.fh"
!	else if (dim .eq. 5) then
!	    include "parapre_s7_dim5_nomask.fh"
!	else if (dim .eq. 6) then
!	    include "parapre_s7_dim6_nomask.fh"
!	else
!	    include "parapre_s7_dim7_nomask.fh"
!	endif
!*
!	return
!	end
!
!
!	subroutine PREPROD_SH_MASK_SS7@(result,source,dim,mask,sx)
!*
!************************************************************************
!*
!* Purpose:	Find the maximum value of the elements identified by mask,
!*		while saving all intermediate results.  This routine handles
!*		real source arrays of rank 7. It returns an array result.
!*		This routine is called by the C routine _PREPROD_SS7.
!*
!* Arguments:	result	- real array of rank 7.
!*		source	- real array of rank 7.
!*		dim	- integer scalar: dimension to search along.
!*		mask	- logical array of rank 7.
!*		sx	- integer array of rank 1:
!*			  extents of the source array.
!*
!* Variables:	carry	- working variable to save current value of carry
!*		init_val- initial value of carry variable
!*
!* Intrinsic functions called:
!*		my_pe()
!*		hiidx()
!*		lowidx()
!*		home()
!*
!* Documentation:
!*		T3D Fortran 90 Array Intrinsics Interface Description
!*		T3D Fortran 90 Array Intrinsics Design Description
!*
!* Author:	Kenneth Bussart
!*		System Libraries Section
!*		Cray Research, Inc.
!*
!************************************************************************
!	implicit	none
!	integer		sx(7)
!	integer		dim
!	real		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	real		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	logical		mask(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	integer		i, j, k, l, m, n, o, p
!	real		carry
!	real		init_val
!*
!	real		FUNC, arg1, arg2
!*
!cdir$	serial_only
!cdir$	unknown_shared	source, mask
!*
!	FUNC (arg1,arg2) = arg1 * arg2
!*
!	init_val = 1.0
!*
!	if (dim .eq. 0) then
!	    include "parapre_s7_dim0_mask.fh"
!	else if (dim .eq. 1) then
!	    include "parapre_s7_dim1_mask.fh"
!	else if (dim .eq. 2) then
!	    include "parapre_s7_dim2_mask.fh"
!	else if (dim .eq. 3) then
!	    include "parapre_s7_dim3_mask.fh"
!	else if (dim .eq. 4) then
!	    include "parapre_s7_dim4_mask.fh"
!	else if (dim .eq. 5) then
!	    include "parapre_s7_dim5_mask.fh"
!	else if (dim .eq. 6) then
!	    include "parapre_s7_dim6_mask.fh"
!	else
!	    include "parapre_s7_dim7_mask.fh"
!	endif
!*
!	return
!	end
!
!
!	subroutine PREPROD_SH_NOMASK_SS7@(result,source,dim,sx)
!*
!************************************************************************
!*
!* Purpose:	Find the maximum value of the elements in the array section,
!*		while saving all intermediate results.  This routine handles
!*		real source arrays of rank 7.  It returns an array result.
!*		This routine is called by the C routine _PREPROD_SS7.
!*
!* Arguments:	result	- real array of rank 7.
!*		source	- real array of rank 7.
!*		dim	- integer scalar: dimension to search along.
!*		sx	- integer array of rank 1:
!*			  extents of the source array.
!*
!* Variables:	carry	- working variable to save current value of carry
!*		init_val- initial value of carry variable
!*
!* Intrinsic functions called:
!*		my_pe()
!*		hiidx()
!*		lowidx()
!*		home()
!*
!* Documentation:
!*		T3D Fortran 90 Array Intrinsics Interface Description
!*		T3D Fortran 90 Array Intrinsics Design Description
!*
!* Author:	Kenneth Bussart
!*		System Libraries Section
!*		Cray Research, Inc.
!*
!************************************************************************
!	implicit	none
!	integer		sx(7)
!	integer		dim
!	real		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	real		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	integer		i, j, k, l, m, n, o, p
!	real		carry
!	real		init_val
!*
!	real		FUNC, arg1, arg2
!*
!cdir$	serial_only
!cdir$	unknown_shared	source
!*
!	FUNC (arg1,arg2) = arg1 * arg2
!*
!	init_val = 1.0
!*
!	if (dim .eq. 0) then
!	    include "parapre_s7_dim0_nomask.fh"
!	else if (dim .eq. 1) then
!	    include "parapre_s7_dim1_nomask.fh"
!	else if (dim .eq. 2) then
!	    include "parapre_s7_dim2_nomask.fh"
!	else if (dim .eq. 3) then
!	    include "parapre_s7_dim3_nomask.fh"
!	else if (dim .eq. 4) then
!	    include "parapre_s7_dim4_nomask.fh"
!	else if (dim .eq. 5) then
!	    include "parapre_s7_dim5_nomask.fh"
!	else if (dim .eq. 6) then
!	    include "parapre_s7_dim6_nomask.fh"
!	else
!	    include "parapre_s7_dim7_nomask.fh"
!	endif
!*
!	return
!	end
!
!
!	subroutine PREPROD_SH_NOMASK_CS7@(result,source,dim,sx)
!*
!************************************************************************
!*
!* Purpose:	Find the maximum value of the elements in the array section,
!*		while saving all intermediate results.  This routine handles
!*		integer source arrays of rank 7.  It returns an array result.
!*		This routine is called by the C routine _PREPROD_CS7.
!*
!* Arguments:	result	- integer array of rank 7.
!*		source	- integer array of rank 7.
!*		dim	- integer scalar: dimension to search along.
!*		sx	- integer array of rank 1:
!*			  extents of the source array.
!*
!* Variables:	carry	- working variable to save current value of carry
!*		init_val- initial value of carry variable
!*
!* Intrinsic functions called:
!*		my_pe()
!*		hiidx()
!*		lowidx()
!*		home()
!*
!* Documentation:
!*		T3D Fortran 90 Array Intrinsics Interface Description
!*		T3D Fortran 90 Array Intrinsics Design Description
!*
!* Author:	Kenneth Bussart
!*		System Libraries Section
!*		Cray Research, Inc.
!*
!************************************************************************
!	implicit	none
!	integer		sx(7)
!	integer		dim
!	complex		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	complex		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	integer		i, j, k, l, m, n, o, p
!	complex		carry
!	complex		init_val
!*
!	complex		FUNC, arg1, arg2
!*
!cdir$	serial_only
!cdir$	unknown_shared	source
!*
!	FUNC (arg1,arg2) = arg1 * arg2
!*
!	init_val = cmplx (1.0,0.0)
!*
!	if (dim .eq. 0) then
!	    include "parapre_s7_dim0_nomask.fh"
!	else if (dim .eq. 1) then
!	    include "parapre_s7_dim1_nomask.fh"
!	else if (dim .eq. 2) then
!	    include "parapre_s7_dim2_nomask.fh"
!	else if (dim .eq. 3) then
!	    include "parapre_s7_dim3_nomask.fh"
!	else if (dim .eq. 4) then
!	    include "parapre_s7_dim4_nomask.fh"
!	else if (dim .eq. 5) then
!	    include "parapre_s7_dim5_nomask.fh"
!	else if (dim .eq. 6) then
!	    include "parapre_s7_dim6_nomask.fh"
!	else
!	    include "parapre_s7_dim7_nomask.fh"
!	endif
!*
!	return
!	end
!
!
!	subroutine PREPROD_SH_MASK_CS7@(result,source,dim,mask,sx)
!*
!************************************************************************
!*
!* Purpose:	Find the maximum value of the elements identified by mask,
!*		while saving all intermediate results.  This routine handles
!*		complex source arrays of rank 7. It returns an array result.
!*		This routine is called by the C routine _PREPROD_CS7.
!*
!* Arguments:	result	- complex array of rank 7.
!*		source	- complex array of rank 7.
!*		dim	- integer scalar: dimension to search along.
!*		mask	- logical array of rank 7.
!*		sx	- integer array of rank 1:
!*			  extents of the source array.
!*
!* Variables:	carry	- working variable to save current value of carry
!*		init_val- initial value of carry variable
!*
!* Intrinsic functions called:
!*		my_pe()
!*		hiidx()
!*		lowidx()
!*		home()
!*
!* Documentation:
!*		T3D Fortran 90 Array Intrinsics Interface Description
!*		T3D Fortran 90 Array Intrinsics Design Description
!*
!* Author:	Kenneth Bussart
!*		System Libraries Section
!*		Cray Research, Inc.
!*
!************************************************************************
!	implicit	none
!	integer		sx(7)
!	integer		dim
!	complex		source(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	complex		result(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	logical		mask(sx(1),sx(2),sx(3),sx(4),sx(5),sx(6),sx(7))
!	integer		i, j, k, l, m, n, o, p
!	complex		carry
!	complex		init_val
!*
!	complex		FUNC, arg1, arg2
!*
!cdir$	serial_only
!cdir$	unknown_shared	source, mask
!*
!	FUNC (arg1,arg2) = arg1 * arg2
!*
!	init_val = cmplx (1.0,0.0)
!*
!	if (dim .eq. 0) then
!	    include "parapre_s7_dim0_mask.fh"
!	else if (dim .eq. 1) then
!	    include "parapre_s7_dim1_mask.fh"
!	else if (dim .eq. 2) then
!	    include "parapre_s7_dim2_mask.fh"
!	else if (dim .eq. 3) then
!	    include "parapre_s7_dim3_mask.fh"
!	else if (dim .eq. 4) then
!	    include "parapre_s7_dim4_mask.fh"
!	else if (dim .eq. 5) then
!	    include "parapre_s7_dim5_mask.fh"
!	else if (dim .eq. 6) then
!	    include "parapre_s7_dim6_mask.fh"
!	else
!	    include "parapre_s7_dim7_mask.fh"
!	endif
!*
!	return
!	end
!
!
