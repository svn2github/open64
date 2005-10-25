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


/* ====================================================================
 * ====================================================================
 *
 * Module: cwh_types.h
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/crayf90/sgi/cwh_types.h,v $
 *
 * Revision history:
 *  dd-mmm-95 - Original Version
 *
 * Description: prototypes for entry points into cwh_types.c
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef CWH_TYPES_INCLUDED
#define CWH_TYPES_INCLUDED

#ifdef _KEEP_RCS_ID
static char *rcs_id = "$Source: /proj/osprey/CVS/open64/osprey1.0/crayf90/sgi/cwh_types.h,v $ $Revision: 1.1.1.1 $";
#endif /* _KEEP_RCS_ID */

enum ty_bound_enum {
  LOW,
  UPPER,
  STRIDE
};

extern TY_IDX  cwh_types_mk_procedure_TY (TY_IDX ret_typ,INT32 nparms, BOOL global, BOOL host) ;

extern TY_IDX  cwh_types_scalar_TY(TY_IDX ty) ;
extern TY_IDX  cwh_types_array_TY(TY_IDX ty) ;
extern TY_IDX  cwh_types_WN_TY(WN * wn, BOOL addr) ;
extern TY_IDX  cwh_types_dope_TY(INT32 num_dims,TY_IDX base, BOOL host, BOOL ptr);

extern TY_IDX  cwh_types_ch_parm_TY(WN *ln) ;
extern ST *  cwh_types_character_extra(ST *dummy) ;
extern BOOL  cwh_types_is_character(TY_IDX ty) ;
extern BOOL  cwh_types_is_logical(TY_IDX ty) ;
extern BOOL  cwh_types_is_character_function(TY_IDX ty) ;

extern TY_IDX  cwh_types_mk_common_TY(INT64 size, mUINT16 al);
extern void  cwh_types_mk_element(ST *c, ST * st);
extern TY_IDX  cwh_types_mk_namelist_TY(INT32 nitems) ;

extern FLD_HANDLE cwh_types_fld_dummy(INT64  off,TY_IDX ty) ;
extern void  cwh_types_get_dope_info(INT32 crayfield, INT32 *offset, INT32 *rshift, 
				     INT64 *mask, TYPE_ID *ty);
extern INT32 cwh_types_dope_rank(TY_IDX ty);
extern TY_IDX  cwh_types_dope_basic_TY(TY_IDX ty);

extern WN *  cwh_types_size_WN(TY_IDX, WN *e_sz) ;
extern TY_IDX  cwh_types_array_temp_TY(WN *ar, TY_IDX sc) ;
extern WN *  cwh_types_bound_WN(TY_IDX ty, INT16 i, enum ty_bound_enum  b) ;

extern INT64 cwh_cray_type_from_TY(TY_IDX ty);
extern INT64 cwh_cray_type_from_MTYPE(TYPE_ID ty);
extern BOOL  cwh_types_is_dope(TY_IDX ty) ;
extern FLD_HANDLE cwh_types_dope_dims_FLD(TY_IDX ty);

extern char * cwh_types_mk_anon_name (char * p) ;
extern TY_IDX cwh_types_array_util(INT16 rank, TY_IDX ta, INT32 align, INT64 size,char *name, 
				   BOOL alloc_arbs);

extern void  cwh_types_init_target(void);
extern TY_IDX  cwh_types_mk_pointer_TY(TY_IDX ty, BOOL host) ;
extern TY_IDX  cwh_types_mk_f90_pointer_ty (TY_IDX ty);
extern TY_IDX  cwh_types_mk_logical_TY(INT32 sz, mUINT16 align) ;
extern TY_IDX  cwh_types_form_misaligned_TY(TY_IDX ty,mUINT16 align) ;
extern TY_IDX  cwh_types_make_pointer_type(TY_IDX ty, BOOL f90_pointer);
extern TY_IDX  cwh_types_enter_TY(TY_IDX can) ;
extern TY_IDX  cwh_types_mk_equiv_TY(INT64 size);
extern TY_IDX  cwh_types_mk_character_TY (WN * sz, ST *st, BOOL is_wn);
extern TY_IDX  cwh_types_unique_TY(TY_IDX ty_idx); 
extern void    cwh_types_enter_common_element(ST *c, ST * st);
extern TY_IDX  cwh_types_mk_result_temp_TY(void) ;
extern   void  cwh_types_copyin_pragma(ST *st) ; 
extern bool    cwh_types_contains_dope(TY_IDX ty) ;


/* access to TY idx */

#define t_TY(x) (x.table_index)  


/* dope vector size definitions */
extern INT32 DOPE_bound_sz;
extern INT32 DOPE_dim_offset;
extern INT32 DOPE_sz;

#define DOPE_NM  11
#define DOPE_USED  DOPE_NM-1
#define BOUND_NM 3
#define DIM_SZ BOUND_NM*DOPE_bound_sz
#define ADDR_OFFSET 0
#define ADDR_TYPEID Pointer_Mtype

#define IS_TYLIST

extern TY_IDX DOPE_bound_ty ;

  /* decl_distribute_pragmas - set to a list of distribute pragmas generated */
extern WN   *decl_distribute_pragmas;

/* Type for LOGICAL(4), (predefined) */
extern TY_IDX logical4_ty;

#ifdef __cplusplus
extern "C" {
#endif

typedef struct dope_header1 {
    unsigned int        assoc     :1;   /* associated flag */
    unsigned int        ptr_alloc :1;   /* set if allocated by pointer */
    unsigned int        p_or_a    :2;   /* pointer or allocatable array. Use */
                                        /* enum ptrarray values.  */
    unsigned int        a_contig  :1;   /* array storage contiguous flag */
    unsigned int        unused    :27;  /* pad for first 32 bits        */
} dope_header1_type;

typedef struct dope_header2 {
    unsigned int        unused    :29;  /* pad for second 32-bits       */
    unsigned int        n_dim     :3;   /* number of dimensions */
} dope_header2_type;

typedef struct f90_type {

    unsigned int                :32;     /* used for future development */
    unsigned int        type    :8;     /* type code */
    unsigned int        dpflag  :1;     /* set if declared double precision
                                         * or double complex */
    unsigned int kind_or_star   :3;     /* Set if KIND= or *n appears in the
                                         * variable declaration.  Values
                                         * are from enum dec_codes */
    unsigned int        int_len :12;    /* internal length in bits of iolist
                                         * entity. 8 for character data to
                                         * indicate size of each character */
    unsigned int        dec_len :8;     /* declared length in bytes for *n
                                         * or KIND value. Ignored if
                                         * kind_or_star==DVD_DEFAULT */
} f90_type_t;

#ifdef __cplusplus
}
#endif

#endif /* CWH_TYPES_INCLUDED */

