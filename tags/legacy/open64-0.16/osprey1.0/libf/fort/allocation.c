/*

  Copyright (C) 2000, 2001, Silicon Graphics, Inc.  All Rights Reserved.

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



#pragma ident "@(#) libf/fort/allocation.c	92.6	10/29/99 21:39:27"

#include <fortran.h>
#include <stddef.h>
#include <liberrno.h>
#include <cray/dopevec.h>
#include <cray/portdefs.h>
/* for malloc */
#ifdef	_LITTLE_ENDIAN
#include <stdlib.h>
#endif

extern long     _zero_entity;   /* nonzero addr for PRESENT func */

/*
 *      The alloc list describes all the items in the allocation list
 *      for the ALLOCATE and DEALLOCATE statements.
 */

#if	defined(__mips)
/* externs for special sma memory allocation/deallocation. */
extern void *_sma_fortran_allocate_global(size_t sz, int lstat);
#pragma weak _sma_fortran_allocate_global
extern void _sma_fortran_deallocate_global(void *p);
#pragma weak _sma_fortran_deallocate_global
#endif		/* end MIPS */

#ifndef ALLOC_VERSION
#define ALLOC_VERSION  1                /* alloc version number */
#endif

typedef struct AllocHead {
	unsigned int	version :8;	/* contains ALLOC_VERSION */
#ifdef _UNICOS
	unsigned int	        :32;	/* unused */
#elif defined(__mips) || defined(_LITTLE_ENDIAN)
	unsigned int	        :24;	/* unused */
	unsigned int	        :8;	/* unused */
#endif
	unsigned int	        :7;	/* unused */
	unsigned int	imalloc	:1;	/* call special malloc */
	unsigned int	icount  :16;	/* size of struct alloclist in */
					/* words. */
	DopeVectorType *dv[1];		/* array of pointers to dope vects */
} AllocHeadType;

/*    _ALLOCATE - called by compiled Fortran programs to allocate space
 *                for objects in the allocation list.  The status is
 *                returned in the optional stat_var.
 *      Synopsis
 *              void _ALLOCATE(AllocListType *aloclist,
 *                              _f_int *statvar);
 *              Where
 *                     aloclist - pointer to the allocation list. A header
 *                                word contains a version number and nwords,
 *                                the number of dope vector entries in the
 *                                list.  nwords of addresses of dope vectors
 *                                follow the header word.
 *                      statvar - (optional) pointer to a stat_var.  It is
 *                                set by the library for success or error.
 *                                The routine aborts if not successful and
 *                                statvar is not present.
 *      Return value
 *              A flag indicating success/failure is returned in stat_var. 
 */

void
_ALLOCATE(AllocHeadType *aloclist,
	  _f_int *statvar)
{
	int 		loopcount = 0;	/* icount from aloclist */
	int 		lstat = 0;	/* status variable present */
	int 		errflag = 0;	/* error flag */
	DopeVectorType	*dva;		/* pointer to dope vector */
	int 		i;		/* Loop counter */
	int 		iarray=0;	/* array of dv counter */
	int 		bytalign=0; 	/* byte aligned flag */
	long 		nbytes;		/* Number bytes in array */
	long 		fcdleng = 0;	/* fcdlen in array */
	ptrdiff_t	*base;		/* ptr to result array */
	int 		imalocflg = 0;	/* imalloc from aloclist */

	/* setup counter for number of addresses in allocation list */
	loopcount	= aloclist->icount;
	imalocflg	= aloclist->imalloc;

	/* check for presence of statvar */
	if(statvar != NULL)
		lstat	= 1;

	/* Pick up a dope vector for each item in the allocation list. */
	while(loopcount--) {
		dva	= aloclist->dv[iarray];
		switch(dva->p_or_a) {
			case POINTTR:
			{
				/* set allocation by pointer flag */
				dva->ptr_alloc	= 1;
				break;
			}

			case ALLOC_ARRY:
			{
				/* error if already allocated */
				if(dva->assoc) {
					if(lstat) {
						*statvar = FEALALLO;
						return;
					}
					_lerror (_LELVL_ABORT, FEALALLO);
				}
				break;
			}
		}

		/* if byte-aligned data type, set flag and byte length */
		if (dva->type_lens.type == DVTYPE_ASCII) {
			bytalign	= 1;
#if	defined(_ADDR64) || defined(_WORD32) || defined(__mips) || \
	defined(_LITTLE_ENDIAN)
			nbytes	= _fcdlen (dva->base_addr.charptr);
#else
			/* Use fcdlen on ymp/c90 only if f90 changes since
			 * length of an element is only in the second word,
			 * not in the fcd.  The internal length field is
			 * the length of a character byte, not an element.
			 */
			nbytes	= dva->base_addr.a.el_len >> 3;
#endif
			/* byte length for cptofcd after malloc */
			fcdleng	= nbytes;
		} else if (dva->type_lens.type == DVTYPE_DERIVEDWORD ||
	 	    dva->type_lens.type == DVTYPE_DERIVEDBYTE) {
			/* The length of an element is not in the internal
			 * length field.  It is in the el_len field for
			 * derived type.
			 */
			nbytes	= dva->base_addr.a.el_len >> 3;
		} else
			/* The length of an element is in the internal
			 * length field for noncharacter and nonderived type.
			 */
			nbytes	= dva->type_lens.int_len >> 3;

		/* clear base address */
		base	= (void *) &_zero_entity;

		/* calculate allocation size in bytes */
		for (i = 0; i < dva->n_dim; i++)
			nbytes *= dva->dimension[i].extent;

		/* Allocate size in bytes if not zero.  Zero size is */
		/* legal and should not cause an error. */
		if (nbytes != 0) {
#if	defined(_CRAYT3E)
			/* allocate from symmetric or private heap? */
			if (imalocflg != 0 ) {
				base	= (void *) _shmalloc (nbytes);
			} else
#endif
				base	= (void *) malloc (nbytes);
			/* if no memory assigned, error */
			if (base == NULL) {
				if(lstat) {
					*statvar	= FENOMEMY;
					return;
				}
				_lerror (_LELVL_ABORT, FENOMEMY);
			}
		}

		/* Set base address for allocated area.  If character, set */
		/* pointer as fcd.  Clear address if zero allocation. */
		/* Bytlen is nonzero for structures on addr64 machines. */
		if (bytalign)
			dva->base_addr.charptr =
			   _cptofcd( (char *) base, fcdleng);
		else
			dva->base_addr.a.ptr	= base;

		/* set associated/allocated flag in result dope vector,
		 * even for zero-sized allocation. */
		dva->assoc	= 1;

		/* set allocated address in result dope vector */
		dva->orig_base	= dva->base_addr.a.ptr;

		/* set allocated size in bits in result dope vector */
		dva->orig_size	= nbytes << 3;

		iarray++;
	}
	/* set status variable before returning */
	if(lstat)
		*statvar	= errflag;
}

/*  _DEALLOCATE - called by compiled Fortran programs to deallocate space
 *                for objects in the allocation list.  The status is
 *                returned in the optional stat_var.
 *      Synopsis
 *              void _DEALLOCATE(AllocListType *aloclist,
 *                              _f_int *statvar);
 *              Where
 *                     aloclist - pointer to the allocation list. A header
 *                                word contains a version number and nwords,
 *                                the number of dope vector entries in the
 *                                list.  nwords of addresses of dope vectors 
 *                                follow the header word.
 *                      statvar - (optional) pointer to a stat_var.  It is
 *                                set by the library for success or error.
 *                                The routine aborts if not successful and
 *                                statvar is not present.
 *      Return value
 *              A flag indicating success/failure is returned in stat_var. 
 */

void
_DEALLOCATE(AllocHeadType *aloclist,
	  _f_int *statvar)
{
	int 		bytalign = 0; 	/* byte aligned flag */
	int 		errflag = 0;	/* error flag */
	int 		i;		/* Loop counter */
	int 		iarray = 0;	/* array of dv counter */
	int 		imalocflg = 0;	/* imalloc from aloclist */
	int 		loopcount = 0;	/* icount from aloclist */
	int 		lstat = 0;	/* status variable present */
	long 		fcdleng = 0;	/* fcdlen in array in bytes */
	long 		nsize;		/* Number bits/bytes in array */
	DopeVectorType	*dva;		/* pointer to dope vector */
	ptrdiff_t	*base;		/* ptr to result array */

	/* setup counter for number of addresses in allocation list */
	loopcount	= aloclist->icount;
	imalocflg	= aloclist->imalloc;

	/* check for presence of statvar */
	if(statvar != NULL)
		lstat	= 1;

	/* Pick up a dope vector for each item in the allocation list. */
	while(loopcount--) {
		dva	= aloclist->dv[iarray];

		/* error if:
		 *  1) pointer is not allocated by pointer,
		 *  2) allocatable array is not allocated (associated),
		 *  3) or pointer allocated by pointer is disassociated
		 */
		if (((dva->p_or_a == POINTTR) && (!dva->ptr_alloc)) ||
		((dva->p_or_a == POINTTR) && (dva->ptr_alloc) &&
		     (!dva->assoc)) ||
		    ((dva->p_or_a ==  ALLOC_ARRY) && (!dva->assoc))) {
			/* error if not allocated by pointer */
			if(lstat) {
				*statvar	= FENODEAL;
				return;
			}
			_lerror (_LELVL_ABORT, FENODEAL);
		}

		/* set flag to indicate byte-aligned data type.
		 * set address pointer according to data type. */
		if (dva->type_lens.type == DVTYPE_ASCII) {

			/* character data types */
			bytalign	= 1;
			base = (void *) _fcdtocp (dva->base_addr.charptr);
			fcdleng	= _fcdlen(dva->base_addr.charptr);
			nsize	= fcdleng << 3;

		} else if (dva->type_lens.type == DVTYPE_DERIVEDWORD ||
	 	    dva->type_lens.type == DVTYPE_DERIVEDBYTE) {

			/* Length is only in el_len for derived type */
			nsize	= dva->base_addr.a.el_len;

			/* address is a C pointer with possible offset */
			base	= (void*) dva->base_addr.a.ptr;

		} else {
			/* noncharacter data types */
			base	= (void*) dva->base_addr.a.ptr;
			nsize	= dva->type_lens.int_len;
		}

		/* Calculate size in bits of current array. */
		for (i = 0; i < dva->n_dim; i++)
			nsize *= dva->dimension[i].extent;

		/* error if current size not same as original size */
		if (dva->orig_size != nsize ) {
			if(lstat) {
				*statvar	= FEDEASIZ;
				return;
			}
			_lerror (_LELVL_ABORT, FEDEASIZ, dva->orig_size, nsize);
		}
		/* free space when size not zero */
		if (nsize != 0)
#if	defined(_CRAYT3E)
			if (imalocflg != 0) {
				/* free from symmetric heap, not private heap */
				_shfree (base);
			} else
#endif
#if	!defined(__mips)
				free (base);
#else		/* else of NOT mips */
		{
			/* check for sma */
			if (!_sma_fortran_deallocate_global)
				free (base);
			else
				_sma_fortran_deallocate_global(base);
		}
#endif		/* endif of NOT mips */

		/* clear fields to indicate unallocated/unassociated */
		dva->assoc	= 0;
		dva->ptr_alloc	= 0;
		/* if byte, set pointer as fcd */
		if (bytalign)
			dva->base_addr.charptr =
			   _cptofcd( (void *) NULL, fcdleng);
		else
			dva->base_addr.a.ptr	= (void *) NULL;
		dva->orig_base	= dva->base_addr.a.ptr;
		dva->orig_size	= 0;

		iarray++;
	}

	/* set status variable before returning */
	if(lstat)
		*statvar	= errflag;
}

/*    _DEALLOC  - called by CF90 compiler only to deallocate space
 *                for objects in the allocation list.  There is no
 *                error returned for this function.
 *      Synopsis
 *              void _DEALLOC(AllocListType *aloclist)
 *              Where
 *                     aloclist - pointer to the allocation list. A header
 *                                word contains a version number and nwords,
 *                                the number of dope vector entries in the
 *                                list.  nwords of addresses of dope vectors
 *                                follow the header word.
 */

void
_DEALLOC(AllocHeadType *aloclist)
{
	int 		loopcount = 0;	/* icount from aloclist */
	int 		lstat = 0;	/* status variable present */
	DopeVectorType	*dva;		/* pointer to dope vector */
	int 		iarray=0;	/* array of dv counter */
	long 		fcdleng = 0;	/* fcdlen in array */
	int 		bytalign = 0; 	/* byte aligned flag */
	ptrdiff_t	*base;		/* ptr to result array */
	int 		imalocflg = 0;	/* imalloc from aloclist */

	/* setup counter for number of addresses in allocation list */
	loopcount	= aloclist->icount;
	imalocflg	= aloclist->imalloc;

	/* Pick up a dope vector for each item in the allocation list. */
	while(loopcount--) {
		dva	= aloclist->dv[iarray];

		/* return if not associated */
		if (!dva->assoc)
			return;
		/* set flag to indicate byte-aligned data type.
		 * set address pointer according to data type. */
		if (dva->type_lens.type == DVTYPE_ASCII ) {
			bytalign	= 1;
			base = (void *) _fcdtocp (dva->base_addr.charptr);
			fcdleng	= _fcdlen(dva->base_addr.charptr);
		} else
			base	= (void*) dva->base_addr.a.ptr;

		/* free space when size not zero */
		if (dva->orig_size != 0) {
#if	defined(_CRAYMPP) && !defined (_CRAYT3E)
			if (_issddptr(base)) {
				extern void _shfree(void *);
				_shfree(_sdd_read_base((void *) base));
			} else
#elif	defined(_CRAYT3E)
			if (imalocflg != 0) {
				/* free from symmetric heap, not private heap */
				_shfree (base);
			} else
#endif
				free (base);
		}

		/* clear fields to indicate unallocated/unassociated */
		dva->assoc	= 0;
		dva->ptr_alloc	= 0;

		/* if byte, set pointer as fcd */
		if (bytalign)
			dva->base_addr.charptr =
			   _cptofcd( (void *) NULL, fcdleng);
		else
			dva->base_addr.a.ptr	= (void *) NULL;

		dva->orig_base	= dva->base_addr.a.ptr;
		dva->orig_size	= 0;

		iarray++;
	}
}

/*    _REALLOC  - called by CF90 compiler only to extend the length of the
 *                allocatable array.  The space allocated for the array 
 *                constructor was not large enough for the actual size
 *                returned from a function call.  The array is a single
 *                dimension array and the dopevector must be updated with
 *                a new extent and possibly a new base address, a new
 *                orig_size and new orig_base.  The routine libc realloc
 *                must be used because part of the array will already be
 *                filled in and that part must be moved if the array cannot
 *                extended in place.
 *      Synopsis
 *              void _REALLOC(DopeVectorType *array,*length)
 *              Where
 *                     array    - pointer to dope vector for one-dimension
 *                                allocatable array to be extended.
 *                     length   - address of new size for the array.  The new
 *                                size is in bits.
 */
void
_REALLOC(DopeVectorType *array,
#if	(defined(__mips) && (_MIPS_SZLONG == 64)) || defined(_LITTLE_ENDIAN)
         _f_int8 *length)
#else
         _f_int *length)
#endif
{
	long 		fcdleng = 0;	/* fcdlen in array */
	int 		bytalign = 0; 	/* byte aligned flag */
	ptrdiff_t	*base;		/* ptr to array */
	long 		newlen; 	/* new byte size for array */
	long 		bitlen; 	/* new bitlen size for array */
	int 		debyteflag = 0; /* derived byte flag for el_len */

	bitlen	= *length;
	newlen	= bitlen >> 3;

	/* set flag to indicate byte-aligned data type.
	 * set address pointer according to data type. */
	if (array->type_lens.type == DVTYPE_ASCII) {
		bytalign	= 1;
		base	= (void *) _fcdtocp (array->base_addr.charptr);
		fcdleng	= _fcdlen(array->base_addr.charptr);
	} else if (array->type_lens.type == DVTYPE_DERIVEDWORD ||
	           array->type_lens.type == DVTYPE_DERIVEDBYTE) {
		base	= (void *) array->base_addr.a.ptr;
		debyteflag	= 1;
	} else
		base	= (void *) array->base_addr.a.ptr;

	/* if empty string from library */
	if (base == (ptrdiff_t *) &_zero_entity)
		base	= (ptrdiff_t *) NULL;

	/* allocate additional space or deallocate space */
	base	= (void *) realloc (base,newlen);
	/* if no memory assigned, error */
	if (base == NULL && newlen != 0)
		_lerror (_LELVL_ABORT, FENOMEMY);

	array->assoc	= (newlen == 0) ? 0 : 1;

	/* if byte, set pointer as fcd */
	if (bytalign)
		array->base_addr.charptr =
		    _cptofcd( (char *) base, fcdleng);
	else
		array->base_addr.a.ptr = base;

	array->orig_base	= array->base_addr.a.ptr;
	array->orig_size	= bitlen;
	if (debyteflag)
		array->base_addr.a.el_len	= bitlen;
}

#if	defined(__mips) || defined(_LITTLE_ENDIAN)

extern void* _F90_ALLOCATE_B(_f_int8 big_size, int assoc, int flags,
				int *statvar, void *oldval);

void*
_F90_ALLOCATE(	long size,
		int assoc,
		int flags,
		int *statvar,
		void *oldval)
{
	_f_int8	big_size;
	big_size	= (_f_int8) size;
	return((void*) _F90_ALLOCATE_B(big_size, assoc, flags, statvar, oldval));
}

/* _F90_ALLOCATE_B - called by compiled Fortran programs to allocate
 *		space for objects in the allocation list.  The status
 *		is returned in the optional stat_var.
 *
 *	Synopsis
 *
 *	void *_F90_ALLOCATE(long size, int assoc, int flags, int *statvar)
 *
 *	Where
 *		size - 64-bit value with number of bytes to allocate
 *		assoc - the current association status
 *		flags - bit flags
 *			1 - is a pointer
 *			4 - initialize for debugging with trap_uv
 *		statvar - (optional) pointer to a stat_var.  It is
 *			set by the library for success or error.
 *			The routine aborts if not successful and
 *			statvar is not present.
 *		oldval - if already associated, no new pointer returned.
 *		         if no memory available, return null pointer.
 *		         if zero size, return address of value 1.
 *
 *	Return value
 *		Address of the allocated memory
 */

#define FLAG_POINTER(x) ((x&1)!=0)
#define FLAG_TRAPUV(x) ((x&4)!=0)

void*
_F90_ALLOCATE_B(_f_int8 size,
		int assoc,
		int flags,
		int *statvar,
		void *oldval)
{
	int 	lstat = 0;	/* status variable present */
	int 	errflag = 0;	/* error flag */
	ptrdiff_t	*base;	/* ptr to result array */
	char	*p;
	long long	nbytes;		/* need long long for malloc */
	long	i;

	/* check for presence of statvar */
	if(statvar != NULL)
		lstat	= 1;

	if (!FLAG_POINTER(flags)) {
		if(assoc) {
			if(lstat) {
				*statvar	= FEALALLO;

				/* return the old value unchanged */
				return(oldval);
			}
			_lerror (_LELVL_ABORT, FEALALLO);
		}
	}

	/* initialize a type long long argument for malloc */
	nbytes	= (long long) size;

	/* replace the use of address 1 with globals.c entity
	 *   base	= (void *) 1;
	 */
	base	= (void *) &_zero_entity;

#if (defined(_SGI_SOURCE) && (_MIPS_SZPTR == 32))

	/* for -n32 only, check to see that size is 32-bits or less */  

	if ( nbytes > 0xffffffffu ) {

		/* No memory allocated, cannot allocate the larger
		 * size, i.e., size is greater than 32-bits.
		 */
		if(lstat) {
			*statvar	= FENOMEMY;
			return(base);
		}
		_lerror (_LELVL_ABORT, FENOMEMY);
	}
#endif

	/* Allocate size in bytes if not zero.  Zero size is legal
 	 * and should not cause an error.
	 */

	if (size != 0) {

#if	defined(_LITTLE_ENDIAN)
		base	= (void *) malloc (nbytes);
#else
		/* check for sma */
		if (!_sma_fortran_allocate_global)
			base	= (void *) malloc (nbytes);
		else
			base	= (void *)
				   _sma_fortran_allocate_global(nbytes,lstat);
#endif

		/* if no memory assigned, error */
		if (base == NULL) {
			if(lstat) {
				*statvar	= FENOMEMY;
				return(base);
			}
			_lerror (_LELVL_ABORT, FENOMEMY);
		}
	}

	if (FLAG_TRAPUV(flags)) {

		/* Initialize the memory with bad fp values.
		 * The size of a block is 0%4 on irix.
		 */
		for (p = (void *) base, i = 0; i < nbytes; i += 4) {
			*p	= 0xff; ++p;
			*p	= 0xfa; ++p;
			*p	= 0x5a; ++p;
			*p	= 0x5a; ++p;
		}
		/* leave whetever remains uninitialized */
	}

	return (base);
}
#endif	/* __mips */
