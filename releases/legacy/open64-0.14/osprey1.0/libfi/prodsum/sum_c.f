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


       subroutine _SUM_C(dv_result, dv_array, dim, dv_mask)
CDIR$ ID "@(#) libfi/prodsum/sum_c.f	92.0	10/08/98 14:37:14"
	implicit none

*	.. local arrays -- must be same type as function ..
	complex(kind=8)	a(0:*)
	complex(kind=8) b(0:*)

	pointer (p_a, a)
	pointer (p_b, b)
        logical(KIND=4) mask4(0:*)
	logical(KIND=8) mask(0:*)
	pointer (p_mask, mask)
	pointer (p_mask4, mask4)

	include "sum_90.h"

	end
