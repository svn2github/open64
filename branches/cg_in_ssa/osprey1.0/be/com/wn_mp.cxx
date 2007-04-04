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



#ifdef USE_PCH
#include "be_com_pch.h"
#endif /* USE_PCH */
#pragma hdrstop

#include <string.h>

#include <elf.h>
#include "alloca.h"
#include "cxx_template.h"
#include "defs.h"
#include "glob.h"
#include "errors.h"
#include "erglob.h"
#include "erbe.h"
#include "tracing.h"
#include "strtab.h"

#include "symtab.h"

#include "wn.h"
#include "wn_util.h"
#include "wn_simp.h"
#include "stblock.h"
#include "data_layout.h"
#include "targ_sim.h"
#include "targ_const.h"
#include "config_targ.h"
#include "config_asm.h"
#include "const.h"
#include "ttype.h"
#include "wn_pragmas.h"
#include "wn_lower.h"
#include "region_util.h"
#include "wutil.h"
#include "wn_map.h"
#include "pu_info.h"
#include "dwarf_DST.h"
#include "dwarf_DST_producer.h"
#include "dwarf_DST_mem.h"
#include "config.h"
#include "standardize.h"
#include "irbdata.h"
#include "omp_lower.h"
#include "privatize_common.h"
#include "cxx_hash.h"
#include "wn_mp.h"
#include "mempool.h"
#include "parmodel.h"	// for NOMINAL_PROCS
#include "fb_info.h"
#include "fb_whirl.h"
#include "be_symtab.h"


/*
MP lowerer cleanup TODO by DRK:

1.  Convert all the tables (LABEL, VAR, etc.) to BOUNDSCHECKED_VECTOR's,
put BOUNDSCHECKED_VECTOR into cxx_template.h

2.  Define class for entering/exiting a PU's scope such that global
vars CURRENT_SYMTAB, Current_pu, Current_Map_Tab, and Current_PU_Info
are managed automatically (stack discipline seems appropriate)

3.  New global utility function for defining function prototype TY's

4.  Delete "unused function"'s when debugging is done

5.  Make sure we use ST * and TY * instead of IDX's where possible

6.  MP_Reduction_Combine_Cycles() should use targ_info or something for
machine cycle time and runtime costs.
*/


#define WN_Compare_Trees(x,y)	(WN_Simp_Compare_Trees(x,y))

static DST_INFO_IDX  nested_dst;


inline WN_OFFSET WN_offsetx ( WN *wn )
{
  OPERATOR opr;
  opr = WN_operator(wn);
  if ((opr == OPR_PRAGMA) || (opr == OPR_XPRAGMA)) {
    return (WN_pragma_arg1(wn));
  } else {
    return (WN_offset(wn));
  }
}

inline void WN_set_offsetx ( WN *wn, WN_OFFSET ofst )
{
  OPERATOR opr;
  opr = WN_operator(wn);
  if ((opr == OPR_PRAGMA) || (opr == OPR_XPRAGMA)) {
    WN_pragma_arg1(wn) = ofst;
  } else {
    WN_offset(wn) = ofst;
  }
}

inline TYPE_ID Promote_Type(TYPE_ID mtype)
{
  switch (mtype) {
    case MTYPE_I1 : case MTYPE_I2: return(MTYPE_I4);
    case MTYPE_U1 : case MTYPE_U2: return(MTYPE_U4);
    default: return mtype;
  }
}

static void
my_Get_Return_Pregs(PREG_NUM *rreg1, PREG_NUM *rreg2, mTYPE_ID type,
                    const char *file, INT line)
{
  if (WHIRL_Return_Info_On) {
    RETURN_INFO return_info = Get_Return_Info(Be_Type_Tbl(type),
                                              Use_Simulated);
    if (RETURN_INFO_count(return_info) <= 2) {
      *rreg1 = RETURN_INFO_preg(return_info, 0);
      *rreg2 = RETURN_INFO_preg(return_info, 1);
    } else
      Fail_FmtAssertion("file %s, line %d: more than 2 return registers",
                        file, line);

  } else
    Get_Return_Pregs(type, MTYPE_UNKNOWN, rreg1, rreg2);

  FmtAssert(*rreg1 != 0 && *rreg2 == 0, ("bad return pregs"));
} // my_Get_Return_Pregs()

#define GET_RETURN_PREGS(rreg1, rreg2, type) \
  my_Get_Return_Pregs(&rreg1, &rreg2, type, __FILE__, __LINE__)

typedef enum {

  MPRUNTIME_NONE = 0,
  MPRUNTIME_FIRST = 1,

    MPR_SETUP                = 1,
    MPR_CLEANUP              = 2,

    MPR_GETLOCK              = 3,
    MPR_UNLOCK               = 4,
    MPR_BARRIER              = 5,
    MPR_SETLOCK              = 6,
    MPR_UNSETLOCK            = 7,

    MPR_COPYIN               = 8,

    MPR_PARALLEL_DO_32       = 9,
    MPR_PARALLEL_DO_64       = 10,
    MPR_PARALLEL_REGION      = 11,

    MPR_BEGIN_PDO_32         = 12,
    MPR_BEGIN_PDO_64         = 13,
    MPR_NEXT_ITERS_32        = 14,
    MPR_NEXT_ITERS_64        = 15,
    MPR_END_PDO              = 16,

    MPR_BEGIN_SINGLE_PROCESS = 17,
    MPR_END_SINGLE_PROCESS   = 18,

    MPR_ENTER_GATE           = 19,
    MPR_EXIT_GATE            = 20,

    MPR_BEGIN_INDEPENDENT    = 21,
    MPR_END_INDEPENDENT      = 22,

    MPR_MY_THREADNUM         = 23,

  MPR_OMP_PARALLEL_REGION    = 24,
  MPR_OMP_BEGIN_SPR          = 25,      /* serialized parallel region */
  MPR_OMP_END_SPR            = 26,
  MPR_OMP_PARALLEL_DO_32     = 27,
  MPR_OMP_PARALLEL_DO_64     = 28,
  
  MPR_OMP_BEGIN_PDO_64         = 29,
  MPR_OMP_NEXT_ITERS_64        = 30,
  MPR_OMP_END_PDO              = 31,

  MPR_OMP_BEGIN_SINGLE_PROCESS = 32,
  MPR_OMP_END_SINGLE_PROCESS   = 33,
  MPR_OMP_BARRIER              = 34,

  MPR_OMP_PDO_ORDERED_BEGIN    = 35,
  MPR_OMP_PDO_ORDERED_END      = 36,
  MPR_OMP_ORDERED_BEGIN          = 37,
  MPR_OMP_ORDERED_END            = 38,

  MPR_OMP_COPYIN               = 39,
  MPR_OMP_NONPOD_COPYIN        = 40,
  MPR_OMP_NONPOD_ARRAY_COPYIN  = 41,

  MPRUNTIME_LAST = MPR_OMP_NONPOD_ARRAY_COPYIN

} MPRUNTIME;


  // kinds of nested functions generated for parallel constructs
typedef enum {
  PAR_FUNC_NONE = 0,
  PAR_FUNC_DO32,
  PAR_FUNC_DO64,
  PAR_FUNC_REGION,
  PAR_FUNC_LAST = PAR_FUNC_REGION
} PAR_FUNC_TYPE;

typedef enum {
  VAR_NONE             = 0,
  VAR_LASTLOCAL        = 1,
  VAR_LOCAL            = 2,
    /* FIRSTPRIVATE implies LOCAL for all purposes in MP lowering */
  VAR_FIRSTPRIVATE     = 3,
  VAR_REDUCTION_SCALAR = 4,
  VAR_REDUCTION_ARRAY  = 5
} VAR_TYPE;

typedef struct {
  VAR_TYPE   vtype;
  TYPE_ID    mtype;
  BOOL       has_offset;
  BOOL       is_static_array;
  BOOL       is_dynamic_array;
    // TRUE iff (vtype == VAR_LASTLOCAL) and variable is also FIRSTPRIVATE
  BOOL       is_last_and_firstprivate;
  BOOL       is_non_pod;  // C++ object or array of objects
                          // "pod" stands for "plain old data"
  TY_IDX     ty;
  WN        *vtree;
  WN        *vtreex;
  ST        *orig_st;
  WN_OFFSET  orig_offset;
  ST        *new_st;
  WN_OFFSET  new_offset;
  OPERATOR   reduction_opr; /* specified in REDUCTION pragma */
  OPCODE     reduction_opc; /* computed from reduction_opr and its operands */
} VAR_TABLE;

typedef enum {
  PCLASS_UNKNOWN        = 0,
  PCLASS_DEADIN_DEADOUT = 1,
  PCLASS_COPYIN_DEADOUT = 2,
  PCLASS_DEADIN_COPYOUT = 3,
  PCLASS_COPYIN_COPYOUT = 4,
  PCLASS_LIVEIN_DEADOUT = 5,
  PCLASS_DEADIN_LIVEOUT = 6,
  PCLASS_LIVEIN_LIVEOUT = 7 
} PREG_CLASS;

typedef struct {
  PREG_CLASS  pclass;
  TYPE_ID     type;
  BOOL        preamble_store;
  BOOL        lastlocal_list;
  BOOL        local_list;
  BOOL        reduction_list;
  BOOL        shared_list;
  INT32       shared_flags;
  ST          *temp;
} PREG_INFO;

typedef LABEL_IDX LABEL_INFO_TABLE;

typedef ST * SHARED_TABLE;

typedef INT32 MPID_TABLE;

typedef HASH_TABLE<WN *, BOOL> WN_TO_BOOL_HASH;
static const mINT32 NUM_HASH_ELEMENTS = 1021;

/*
Template for simple fixed-size vector with bounds-checking (if compiled for
debugging).  Why did we have to re-invent the wheel here?  Because neither
the old classes in cxx_template.cxx nor the new STL classes have precisely
this functionality.
*/

template<class T>
class BOUNDSCHECKED_VECTOR {
  T *array;
  mUINT32 size;
  MEM_POOL *mempool;
  typedef BOUNDSCHECKED_VECTOR<T> *PV;
  BOOL zero_is_invalid; // index 0 is invalid (for e.g. PREG_IDX)
  PV *ppv;  // external pointer to "this"; invalidate upon destruction
public:
  BOUNDSCHECKED_VECTOR(MEM_POOL *_mempool, mUINT32 _size,
                       BOOL _zero_is_invalid = FALSE, PV *_ppv = NULL)
    : mempool(_mempool), size(_size), zero_is_invalid(_zero_is_invalid),
      ppv(_ppv) {
      array = CXX_NEW_ARRAY(T, size, mempool);
      if (ppv)
        *ppv = this;
  }
  T &operator[](mINT32 idx) {
#ifdef Is_True_On
    if (idx < 0)
      Fail_FmtAssertion("BOUNDSCHECKED_VECTOR::operator[] : negative index "
                        "%d", idx);
    if (idx == 0 && zero_is_invalid)
      Fail_FmtAssertion("BOUNDSCHECKED_VECTOR::operator[] : invalid zero "
                        "index");
    if (idx >= size)
      Fail_FmtAssertion("BOUNDSCHECKED_VECTOR::operator[] : out-of-bounds "
                        "index %d (array size is %d)", idx, size);
#endif
    return array[idx];
  }
    // so we can say: pv->at(idx)
  T &at(mINT32 idx) { return (*this)[idx]; }
  mUINT32 Size() const { return size; }
  ~BOUNDSCHECKED_VECTOR() {
    CXX_DELETE_ARRAY(array, mempool);
    if (ppv)
      *ppv = NULL;
  }
};

static BOOL first_call = TRUE;  // first call to wn_lower()
static MEM_POOL mp_lower_pool;  // for lower_mp() temporaries

static WN *stmt_block;		/* Original statement nodes */
static WN *serial_stmt_block;	/* Serial statement nodes */
static WN *cont_nodes;		/* Statement nodes after mp code */
static WN *do_node;		/* Do loop node for parallel do */
static WN *replace_block;	/* Replacement nodes to be returned */
static WN *ntrip_calc;		/* Ntrip calculation code */
static WN *livein_block;	/* Livein code for mp call */
static WN *alloca_block;	/* Alloca code for mp routine */
static WN *copyin_block;	/* Copyin code for mp call */
static WN *copyout_block;	/* Copyout code for mp call */
static WN *firstprivate_block;  /* FIRSTPRIVATE code for mp call */
static WN *liveout_block;	/* Liveout code for mp call */
static WN *do_prefix;		/* Prefix code for do loop */
static WN *if_preamble_block;	/* MP if preamble block */
static WN *if_postamble_block;	/* MP if postamble block */
static WN *do_preamble_block;	/* Do preamble block */
static INT64 line_number;	/* Line number of parallel do/region */

static ST *parallel_proc;	/* Extracted parallel process */
static ST *local_start;		/* Parallel do local start */
static ST *local_ntrip;		/* Parallel do local ntrip */
static ST *thread_info;		/* Parallel do thread info */
static WN *base_node;		/* Parallel do base */
static WN *ntrip_node;		/* Parallel do trip count */
static WN *stride_node;		/* Parallel do stride */
static WN *parallel_func;	/* Parallel do function */
static FEEDBACK *parallel_pu_fb;  /* Feedback for parallel function */
static WN *reference_block;	/* Parallel funciton reference block */
static INT32 func_level;	/* Parallel function stab level */
static ST *do_index_st;		/* User do index variable ST */
static TYPE_ID do_index_type;	/* User do index variable type */
static BOOL fast_doacross;	/* Flag if doacross meets fastpath requirement*/

static INT32 copyin_count;	/* Count of copyins */
static INT32 local_count;	/* Count of lastlocals, locals, firstprivates
				   & reductions */
static INT32 reduction_count;	/* Count of reductions */
static INT32 shared_count;	/* Count of shareds, lastlocals & reductions */
static WN *affinity_nodes;	/* Points to (optional) affinity nodes */
static WN *affinity_d_nodes;	/* Points to (optional) affinity data nodes */
static WN *affinity_t_nodes;	/* Points to (optional) affinity thread nodes */
static WN *chunk_node;		/* Points to (optional) chunk node */
static WN *copyin_nodes;	/* Points to (optional) copyin nodes */
static WN *copyin_nodes_end;	/* Points to (optional) copyin nodes end */
static WN *if_node;		/* Points to (optional) if node */
static WN *lastlocal_nodes;	/* Points to (optional) lastlocal nodes */
static WN *lastthread_node;	/* Points to (optional) lastthread node */
static WN *local_nodes;		/* Points to (optional) local nodes */
static WN *firstprivate_nodes;	/* Points to (optional) firstprivate nodes */
                                // frontend-generated finalization code for
                                // non-POD lastlocals
static WN *non_pod_finalization_nodes;
                                // firstprivate and lastprivate appear on same
                                // non-POD ST
static BOOL non_pod_first_and_lastprivate;
static WN *mpnum_node;		/* Points to (optional) mpnum node */
static WN *mpsched_node;	/* Points to (optional) mpsched node */
static WN *numthreads_node;	/* Points to (optional) numthreads node */
static WN *ordered_node;	/* Points to (optional) ordered node */
static WN *do_order_lb = NULL; /* store lb and stride of an ordered parallel */
static WN *do_order_stride = NULL; /* loop, passed to omp-pdo-ordered calls */
static WN *reduction_nodes;	/* Points to (optional) reduction nodes */
static WN *shared_nodes;	/* Points to (optional) shared nodes */

static INT32 num_constructs;	   /* Number of parallel constructs */
static INT32 nested_local_count;   /* Nested count of lastlocals, locals, &
				      firstprivates */
static INT32 nested_reduction_count; /* Nested count of reductions */
static WN *nested_affinity_nodes;  /* Points to (nested) affinity nodes */
static WN *nested_affinity_d_nodes;/* Points to (nested) affin. data nodes */
static WN *nested_affinity_t_nodes;/* Points to (nested) affin. thread nodes */
static WN *nested_chunk_node;	   /* Points to (nested) chunk node */
static WN *nested_lastlocal_nodes; /* Points to (nested) lastlocal nodes */
static WN *nested_lastthread_node; /* Points to (nested) lastthread node */
static WN *nested_local_nodes;	   /* Points to (nested) local nodes */
static WN *nested_firstprivate_nodes; /* Points to (nested) firstprivate
					 nodes */
static WN *nested_mpsched_node;	   /* Points to (nested) mpsched node */
static WN *nested_nowait_node;	   /* Points to (nested) nowait node */
static WN *nested_ordered_node;	   /* Points to (nested) ordered node */
static WN *nested_do_order_lb = NULL; /* store lb and stride of an ordered */
static WN *nested_do_order_stride = NULL; /* parallel loop */
static WN *nested_reduction_nodes; /* Points to (nested) reduction nodes */
static WN *nested_shared_nodes;	   /* Points to (nested) shared nodes */

static VAR_TABLE *var_table;	    /* Table of variable substitutions */
static VAR_TABLE *nested_var_table; /* Table of nested variable substitutions */

typedef BOUNDSCHECKED_VECTOR<PREG_INFO> PREG_INFO_TABLE;
PREG_INFO_TABLE *preg_info_table;   /* Table of preg information */

static LABEL_INFO_TABLE *label_info_table;    /* Mapping from parent to
                                                 nested PU labels */
static SHARED_TABLE *shared_table;  /* Table of shared ST's */
static MPID_TABLE *mpid_table;	    /* Table of assigned mpid's */

static INT32 mpid_size = 0;	    /* Size of mpid_table */

  // Generic types for nested parallel functions
static TY_IDX mpdo32_ty = TY_IDX_ZERO;
static TY_IDX mpdo64_ty = TY_IDX_ZERO;
static TY_IDX mpregion_ty = TY_IDX_ZERO;
  // Generic type for parallel runtime routines
static TY_IDX mpruntime_ty = TY_IDX_ZERO;

static ST_IDX last_pu_proc_sym = ST_IDX_ZERO; // last PU we compiled
static INT32 do_id = 0;			// Unique do number within PU
static INT32 region_id = 0;		// Unique region number within PU
static INT32 lock_id = 0;		// Unique lock number within PU
static WN *pu_chunk_node = NULL;        // (optional) PU chunk node
static WN *pu_mpsched_node = NULL;      // (optional) PU mpsched node

  // ST's for compiler-generated temporaries
static ST *mpbase_st = NULL;		/* ST for local iteration base */
static ST *mptrips_st = NULL;		/* ST for local iteration trips */
static ST *mpflags_st = NULL;		/* ST for local iteration flags */

static BOOL pu_has_eh = FALSE;		/* Parent PU contains EH region */

static SYMTAB_IDX psymtab;	/* Parent symbol table */
static SYMTAB_IDX csymtab;	/* Child symbol table */
static PU_Info *ppuinfo;	/* Parent PU info structure */
static WN_MAP_TAB *pmaptab;	/* Parent map table */
static WN_MAP_TAB *cmaptab;	/* Child map table */

static BOOL pu_has_alloca;	/* PU contains alloca */
static BOOL pu_has_region;	/* PU contains region */

static BOOL inside_versioning_if; /* root node of tree being lowered is the
                                     MP_IF test for LNO versioning */

  // TRUE if MP region we're currently processing has the compiler-
  // generated flag set on its first pragma (the one that identifies it
  // as a PARALLEL_REGION, PDO, etc.), FALSE otherwise
static BOOL comp_gen_construct;

  // What kind of construct we're lowering.  We don't distinguish among
  // most of the simpler types. Note that mpt is set according to the
  // outermost construct by lower_mp (say, to MPP_PARALLEL_REGION), and
  // when we reach an inner construct (say, MPP_PDO) we save the old value
  // of mpt, set it to something appropriate for the inner construct until
  // we're done processing that construct, then restore the old value of mpt.
static MP_process_type mpt;


/*  This table contains the external names of all MP runtime routines.  */

static char *mpr_names [MPRUNTIME_LAST + 1] = {
  "",				/* MPRUNTIME_NONE */
  "__mp_setup",			/* MPR_SETUP */
  "__mp_cleanup",		/* MPR_CLEANUP */
  "__mp_getlock",		/* MPR_GETLOCK */
  "__mp_unlock",		/* MPR_UNLOCK */
  "__mp_barrier",		/* MPR_BARRIER */
  "mp_setlock",			/* MPR_SETLOCK */
  "mp_unsetlock",		/* MPR_UNSETLOCK */
  "__mp_copyin",		/* MPR_COPYIN */
  "__mp_parallel_do",		/* MPR_PARALLEL_DO_32 */
  "__mp_parallel_do_64",	/* MPR_PARALLEL_DO_64 */
  "__mp_region",		/* MPR_PARALLEL_REGION */
  "__mp_begin_pdo",		/* MPR_BEGIN_PDO_32 */
  "__mp_begin_pdo_64",		/* MPR_BEGIN_PDO_64 */
  "__mp_next_iters",		/* MPR_NEXT_ITERS_32 */
  "__mp_next_iters_64",		/* MPR_NEXT_ITERS_64 */
  "__mp_end_pdo",		/* MPR_END_PDO */
  "__mp_begin_single_process",	/* MPR_BEGIN_SINGLE_PROCESS */
  "__mp_end_single_process",	/* MPR_END_SINGLE_PROCESS */
  "__mp_enter_gate_new",	/* MPR_ENTER_GATE */
  "__mp_exit_gate_new",		/* MPR_EXIT_GATE */
  "__mp_begin_single_process",	/* MPR_BEGIN_INDEPENDENT */
  NULL,                     	/* MPR_END_INDEPENDENT */
  "mp_my_threadnum",            /* MPR_MY_THREADNUM */
  "__omp_region",               /* MPR_OMP_PARALLEL_REGION */
  "__omp_begin_spr",            /* MPR_OMP_BEGIN_SPR */
  "__omp_end_spr",              /* MPR_OMP_END_SPR */
  "__omp_parallel_do",          /* MPR_OMP_PARALLEL_DO_32 */
  "__omp_parallel_do_64",       /* MPR_OMP_PARALLEL_DO_64 */
  "__omp_begin_pdo_64",		/* MPR_OMP_BEGIN_PDO_64 */
  "__omp_next_iters_64",	/* MPR_OMP_NEXT_ITERS_64 */
  "__omp_end_pdo",		/* MPR_OMP_END_PDO */
  "__omp_begin_single_process",	/* MPR_OMP_BEGIN_SINGLE_PROCESS */
  "__omp_end_single_process",	/* MPR_OMP_END_SINGLE_PROCESS */
  "__omp_barrier",		/* MPR_OMP_BARRIER */
  "__omp_pdo_ordered_begin",	/* MPR_OMP_PDO_ORDERED_BEGIN */
  "__omp_pdo_ordered_end",	/* MPR_OMP_PDO_ORDERED_END */
  "__omp_begin_ordered",	/* MPR_OMP_ORDERED_BEGIN */
  "__omp_end_ordered",	        /* MPR_OMP_ORDERED_END */
  "__omp_copyin",		/* MPR_OMP_COPYIN */
  "__omp_nonpod_copyin",	/* MPR_OMP_COPYIN */
  "__omp_nonpod_array_copyin",	/* MPR_OMP_COPYIN */
};


/*  This table contains ST_IDX entries entries for each of the MP
    runtime routines.  These entries allow efficient sharing of all
    calls to a particular runtime routine. */

static ST_IDX mpr_sts [MPRUNTIME_LAST + 1] = {
  ST_IDX_ZERO,	 /* MPRUNTIME_NONE */
  ST_IDX_ZERO,	 /* MPR_SETUP */
  ST_IDX_ZERO,	 /* MPR_CLEANUP */
  ST_IDX_ZERO,	 /* MPR_GETLOCK */
  ST_IDX_ZERO,	 /* MPR_UNLOCK */
  ST_IDX_ZERO,	 /* MPR_BARRIER */
  ST_IDX_ZERO,	 /* MPR_SETLOCK */
  ST_IDX_ZERO,	 /* MPR_UNSETLOCK */
  ST_IDX_ZERO,	 /* MPR_COPYIN */
  ST_IDX_ZERO,	 /* MPR_PARALLEL_DO_32 */
  ST_IDX_ZERO,	 /* MPR_PARALLEL_DO_64 */
  ST_IDX_ZERO,	 /* MPR_PARALLEL_REGION */
  ST_IDX_ZERO,	 /* MPR_BEGIN_PDO_32 */
  ST_IDX_ZERO,	 /* MPR_BEGIN_PDO_64 */
  ST_IDX_ZERO,	 /* MPR_NEXT_ITERS_32 */
  ST_IDX_ZERO,	 /* MPR_NEXT_ITERS_64 */
  ST_IDX_ZERO,	 /* MPR_END_PDO */
  ST_IDX_ZERO,	 /* MPR_BEGIN_SINGLE_PROCESS */
  ST_IDX_ZERO,	 /* MPR_END_SINGLE_PROCESS */
  ST_IDX_ZERO,	 /* MPR_ENTER_GATE */
  ST_IDX_ZERO,	 /* MPR_EXIT_GATE */
  ST_IDX_ZERO,	 /* MPR_BEGIN_INDEPENDENT */
  ST_IDX_ZERO,	 /* MPR_END_INDEPENDENT */
  ST_IDX_ZERO,	 /* MPR_MY_THREADNUM */
  ST_IDX_ZERO,	 /* MPR_OMP_PARALLEL_REGION */
  ST_IDX_ZERO,	 /* MPR_OMP_BEGIN_SPR */
  ST_IDX_ZERO,	 /* MPR_OMP_END_SPR */
  ST_IDX_ZERO,	 /* MPR_OMP_PARALLEL_DO_32 */
  ST_IDX_ZERO,	 /* MPR_OMP_PARALLEL_DO_64 */
  ST_IDX_ZERO,	 /* MPR_OMP_BEGIN_PDO_64 */
  ST_IDX_ZERO,	 /* MPR_OMP_NEXT_ITERS_64 */
  ST_IDX_ZERO,	 /* MPR_OMP_END_PDO */
  ST_IDX_ZERO,	 /* MPR_OMP_BEGIN_SINGLE_PROCESS */
  ST_IDX_ZERO,	 /* MPR_OMP_END_SINGLE_PROCESS */
  ST_IDX_ZERO,	 /* MPR_OMP_BARRIER */
  ST_IDX_ZERO,	 /* MPR_OMP_PDO_ORDERED_BEGIN */
  ST_IDX_ZERO,	 /* MPR_OMP_PDO_ORDERED_END */
  ST_IDX_ZERO,	 /* MPR_OMP_ORDERED_BEGIN */
  ST_IDX_ZERO,	 /* MPR_OMP_ORDERED_END */
  ST_IDX_ZERO,	 /* MPR_OMP_COPYIN */
  ST_IDX_ZERO,	 /* MPR_OMP_NONPOD_COPYIN */
  ST_IDX_ZERO,	 /* MPR_OMP_NONPOD_ARRAY_COPYIN */
};

#define MPSP_STATUS_PREG_NAME "mpsp_status"


/*
After returning from lower_mp(), all MP constructs should have been lowered
in both the Whirl tree passed to lower_mp() and the nested PU (if one was
created).  If all MP constructs have been lowered in a Whirl tree, the tree
will contain no MP pragmas, MP IF's, or non-POD finalization IF's.  This
class verifies this post- condition just before returning from lower_mp().

This class could easily be extended to perform additional verification on
the lowered Whirl.
*/

class Verify_MP_Lowered {
  BOOL replace_block_set;
  WN *replace_block_start;
    // i.e. WN_next() of last node in replace_block
  WN *replace_block_sibling;
  BOOL nested_pu_set;
  WN *nested_pu;

  static void Verify_No_MP(WN *tree);

public:
  Verify_MP_Lowered() : replace_block_set(FALSE), nested_pu_set(FALSE) { }

  void Set_replace_block(WN *replace, WN *sibling) {
    Is_True(!replace_block_set, ("Set_replace_block() called already"));
    replace_block_set = TRUE;
    replace_block_start = replace;
    replace_block_sibling = sibling;
  }

  void Set_nested_pu_tree(WN *pu) {
    Is_True(!nested_pu_set, ("Set_nested_pu_tree() called already"));
    nested_pu_set = TRUE;
    nested_pu = pu;
  }

  void Set_replace_block_and_nested_pu(WN *replace, WN *sibling, WN *pu) {
    Is_True(!replace_block_set && !nested_pu_set,
            ("replace_block_start and/or nested_pu set already"));
    replace_block_set = TRUE;
    replace_block_start = replace;
    replace_block_sibling = sibling;
    nested_pu_set = TRUE;
    nested_pu = pu;
  }

  ~Verify_MP_Lowered();
};

/*
Destructor verifies that both the replace_block and nested PU have been set
(either may be NULL), then verifies that neither contains any MP pragmas,
MP IF's, or non-POD finalization IF's.  If compiled without debugging
support, it does nothing.
*/

Verify_MP_Lowered::~Verify_MP_Lowered()
{
  Is_True(replace_block_set, ("replace_block_start not set"));
  Is_True(nested_pu_set, ("nested_pu not set"));

#ifdef Is_True_On
  for (WN *wn = replace_block_start; wn && wn != replace_block_sibling;
       wn = WN_next(wn))
    Verify_No_MP(wn);

  if (nested_pu)
    Verify_No_MP(nested_pu);
#endif
}

  // Verify that tree contains no MP pragmas or IF's
void Verify_MP_Lowered::Verify_No_MP(WN *tree)
{
  WN_ITER *wni = WN_WALK_TreeIter(tree);

  for ( ; wni; wni = WN_WALK_TreeNext(wni)) {
    WN *wn = WN_ITER_wn(wni);
    OPERATOR opr = WN_operator(wn);

    if ((opr == OPR_PRAGMA || opr == OPR_XPRAGMA) &&
        WN_pragmas[WN_pragma(wn)].users & PUSER_MP)
      Fail_FmtAssertion("Verify_MP_Lowered: unlowered MP pragma %d, "
          "node %#lx, tree %#lx", WN_pragma(wn), (unsigned long) wn,
          (unsigned long) tree);

    if (opr == OPR_IF && WN_Is_If_MpVersion(wn))
      Fail_FmtAssertion("Verify_MP_Lowered: unlowered MP IF, node %#lx, "
          "tree %#lx", (unsigned long) wn, (unsigned long) tree);

    BOOL first_and_last;
    if (Is_Nonpod_Finalization_IF(wn, &first_and_last))
      Fail_FmtAssertion("Verify_MP_Lowered: unlowered non-POD finalization "
                        "IF, node %#lx, tree %#lx",
			(unsigned long) wn, (unsigned long) tree);
  }
}

Verify_MP_Lowered *verify_mp_lowered_ptr; // set upon entry to lower_mp()


/* Forward function declarations. */

static WN * Gen_MP_Load_Store ( ST * from_st, WN_OFFSET from_offset,
				ST * to_st,   WN_OFFSET to_offset,
				BOOL is_dynamic );

static BOOL Is_NameLock_ST(ST *st);

ST_IDX Make_MPRuntime_ST ( MPRUNTIME rop );

#define GET_MPRUNTIME_ST(x) (mpr_sts[x] == ST_IDX_ZERO ? \
                             Make_MPRuntime_ST(x) : mpr_sts[x])


/*
Utility class for temporarily changing the line_number global variable.
When an object of this class is created, line_number is set to the value
given in the constructor; when the object is destroyed, line_number is
restored to the value it had before the object was created.
*/

class Linenum_Pusher {
  INT64 old_line_number;
public:
  Linenum_Pusher(INT64 new_line_number) {
    if (new_line_number <= 0)
      Fail_FmtAssertion(
        "Linenum_Pusher::Linenum_Pusher() : invalid line number %lld",
        new_line_number);
    old_line_number = line_number;
    line_number = new_line_number;
//    DevWarn("setting line_number to %ld", new_line_number);
  }
  ~Linenum_Pusher() { line_number = old_line_number; }
};


/*
Create a DST entry for a local variable in either the parent subprogram or
the nested subprogram.
*/

static void Add_DST_variable ( ST *st, DST_INFO_IDX parent_dst, 
			       INT64 line_number, DST_INFO_IDX type_idx )
{
  DST_INFO      *info;
  DST_INFO_IDX  dst, child_idx;
  DST_ATTR_IDX attr_idx;
  DST_ASSOC_INFO *assoc;
  DST_BASETYPE *attr;
  USRCPOS       srcpos;
  INT32         typesize;
  static DST_INFO_IDX int32_idx = {DST_INVALID_BLOCK_IDX, DST_INVALID_BYTE_IDX};
  static DST_INFO_IDX int64_idx = {DST_INVALID_BLOCK_IDX, DST_INVALID_BYTE_IDX};
  DST_INFO_IDX  int_idx;
  DST_IDX	cmp;
  char         *name;

  /* don't do anything if without -g option */
  if (Debug_Level == 0)
    return;

  if (DST_IS_NULL( type_idx )) {
    /* For variables which do not exist in the original program, there
    ** are no type information for them.  We need to search in the DST
    ** tree for the corresponding type entry
    */
    if (TY_kind(ST_type(st)) == KIND_POINTER) {
      typesize = TY_size(TY_pointed(ST_type(st)));
    } else {
      typesize = TY_size(ST_type(st));
    }

    char *int_name1, *int_name2, *int_name3;
    DST_INFO_IDX *int_idx_p;

    switch (typesize) {
    case 4:
      int_name1 = "int"; int_name2 = "INTEGER*4"; int_name3 = "INTEGER_4";
      int_idx_p = &int32_idx;
      break;
    case 8:
      int_name1 = "long long"; 
      int_name2 = "INTEGER*8"; int_name3 = "INTEGER_8";
      int_idx_p = &int64_idx;
      break;
    default:
      Fail_FmtAssertion("can't handle typesize == %d", (INT) typesize);
    }

    if (DST_IS_NULL(*int_idx_p) ) {
      cmp = DST_get_compile_unit();
      info = DST_INFO_IDX_TO_PTR( cmp );
      attr_idx = DST_INFO_attributes( info );
      child_idx = DST_COMPILE_UNIT_first_child(
                  DST_ATTR_IDX_TO_PTR(attr_idx, DST_COMPILE_UNIT));
      while (!DST_IS_NULL(child_idx)) {
        info = DST_INFO_IDX_TO_PTR( child_idx );
        if (DST_INFO_tag( info ) == DW_TAG_base_type) {
          attr = DST_ATTR_IDX_TO_PTR(DST_INFO_attributes(info), DST_BASETYPE);
          name = DST_STR_IDX_TO_PTR( DST_FORMAL_PARAMETER_name(attr));
          if (!strcmp(name, int_name1) || !strcmp(name, int_name2) ||
              !strcmp(name, int_name3)) {
            *int_idx_p = child_idx;
            break;
          }
        }
        child_idx = DST_INFO_sibling(DST_INFO_IDX_TO_PTR(child_idx));
      }
      if (DST_IS_NULL(child_idx)) {
          // type not emitted by frontend, so we have to insert it
        *int_idx_p = DST_mk_basetype(int_name1, DW_ATE_signed, typesize);
        (void) DST_append_child(parent_dst, *int_idx_p);
      }
    }
    int_idx = *int_idx_p;

  }

  USRCPOS_srcpos(srcpos) = line_number;
  if (ST_sclass(st) == SCLASS_FORMAL_REF) {
    dst = DST_mk_formal_parameter( srcpos,
			ST_name( st ),
			int_idx,	/* type DST_IDX */
			NULL,
			DST_INVALID_IDX,
			DST_INVALID_IDX,
			FALSE,
			FALSE,
			FALSE,   // is_artificial
			FALSE ); // is_declaration_only
    DST_SET_deref( DST_INFO_flag( DST_INFO_IDX_TO_PTR (dst) ) );
  } else
    dst = DST_mk_variable( srcpos,
			ST_name( st ),
			int_idx, 	/* type DST_IDX */
			0 /* offset */,
			(void *) NULL,	/* a_variable_ptr */
			DST_INVALID_IDX,
			FALSE,		/* memory allocated */
			TRUE, 		/* parameter has sc_auto */
			FALSE,		/* sc_extern || sc_unspecified */
			FALSE);		/* is_artificial */

  (void)DST_append_child( parent_dst, dst );
  info = DST_INFO_IDX_TO_PTR( dst );
  assoc = &DST_VARIABLE_def_st(
		DST_ATTR_IDX_TO_PTR(DST_INFO_attributes(info), DST_VARIABLE));
  pDST_ASSOC_INFO_st_idx(assoc) = ST_st_idx(st);
  DST_SET_assoc_idx(DST_INFO_flag(info));
  DST_RESET_assoc_fe(DST_INFO_flag(info));
}


DST_IDX Find_DST_From_ST ( ST *st, PU_Info *pu_info )
{
  DST_INFO_IDX	dst, child_idx;
  DST_INFO      *info;
  INT32		level, index;
  DST_ASSOC_INFO *assoc;
  DST_DW_tag	tag;
  DST_flag      flag;
  DST_ATTR_IDX	iattr;

  level = ST_level(st);
  index = ST_index(st);
  dst = PU_Info_pu_dst( pu_info );
  /* Go through the list of children in the parent subprogram to find the
  ** one that points to this ST entry
  */
  info = DST_INFO_IDX_TO_PTR( dst );
  iattr = DST_INFO_attributes( info );
  child_idx = DST_SUBPROGRAM_def_first_child(
		DST_ATTR_IDX_TO_PTR(iattr, DST_SUBPROGRAM));
  while (!DST_IS_NULL(child_idx)) {
    info = DST_INFO_IDX_TO_PTR( child_idx );
    tag = DST_INFO_tag(info);
    flag = DST_INFO_flag(info);
    iattr = DST_INFO_attributes(info);
    level = ST_level(st);
    index = ST_index(st);
    switch (tag) 
    {
      case DW_TAG_formal_parameter:
        assoc = &DST_FORMAL_PARAMETER_st(
		DST_ATTR_IDX_TO_PTR(iattr, DST_FORMAL_PARAMETER));
	break;
      case DW_TAG_variable:
        assoc = &DST_VARIABLE_def_st(
		DST_ATTR_IDX_TO_PTR(iattr, DST_VARIABLE));
	break;
      default:
	goto next;
    }
    if (pDST_ASSOC_INFO_st_level(assoc) == level 
	&& pDST_ASSOC_INFO_st_index(assoc) == index) {
        // PV 644324: F90 arrays with dope vectors have DST entries for
        // compiler-generated variables for array bounds that match in
        // level and index but have no name: search for entry with valid name
      DST_INFO_IDX name_idx;

      if (tag == DW_TAG_formal_parameter) {
        name_idx = DST_FORMAL_PARAMETER_name(DST_ATTR_IDX_TO_PTR(iattr,
                                                DST_FORMAL_PARAMETER));
      } else if (tag == DW_TAG_variable) {
        DST_VARIABLE *vattr = DST_ATTR_IDX_TO_PTR(iattr, DST_VARIABLE);

        name_idx = DST_IS_comm(flag) ? DST_VARIABLE_comm_name(vattr) :
                                       DST_VARIABLE_def_name(vattr);
      } else
        Fail_FmtAssertion("impossible tag == %d\n", (INT) tag);

      if (DST_IS_NULL(name_idx))
        goto next;

      return child_idx;
    }
next:
    child_idx = DST_INFO_sibling(DST_INFO_IDX_TO_PTR(child_idx));
  }
  return( DST_INVALID_IDX );
}


void Create_New_DST ( DST_INFO_IDX dst, ST *st , BOOL append_to_nested )
{
  DST_INFO      *info;
  DST_INFO_IDX  new_dst, type_idx;
  DST_ASSOC_INFO *assoc;
  DST_DW_tag	tag;
  DST_flag	flag;
  DST_ATTR_IDX	iattr;
  DST_VARIABLE  *vattr;
  DST_FORMAL_PARAMETER *fattr;
  USRCPOS       srcpos;
  char		*name;

  USRCPOS_srcpos(srcpos) = 0LL;
  info = DST_INFO_IDX_TO_PTR( dst );
  tag = DST_INFO_tag(info);
  iattr = DST_INFO_attributes(info);
  flag = DST_INFO_flag(info);
  type_idx = DST_INVALID_IDX;
  switch (tag) 
  {
    case DW_TAG_formal_parameter:
      fattr = DST_ATTR_IDX_TO_PTR(iattr, DST_FORMAL_PARAMETER);
      type_idx = DST_FORMAL_PARAMETER_type( fattr );
      name = DST_STR_IDX_TO_PTR( DST_FORMAL_PARAMETER_name( fattr ) );
      break;
    case DW_TAG_variable:
      if (DST_IS_comm(flag)) {
	vattr = DST_ATTR_IDX_TO_PTR(iattr, DST_VARIABLE);
	type_idx = DST_VARIABLE_comm_type( vattr );
	name = DST_STR_IDX_TO_PTR( DST_VARIABLE_comm_name( vattr ) );
      }
      else {
        vattr = DST_ATTR_IDX_TO_PTR(iattr, DST_VARIABLE);
        type_idx = DST_VARIABLE_def_type( vattr );
	name = DST_STR_IDX_TO_PTR( DST_VARIABLE_def_name( vattr ) );
      }
      break;
    default:
	Fail_FmtAssertion( "Unimplemented local MP variable kind" );
  }
  new_dst = DST_mk_variable( srcpos,
			name,
			type_idx, 	/* type DST_IDX */
			0 /* offset */,
			(void *) NULL,	/* a_variable_ptr */
			DST_INVALID_IDX,
			FALSE,		/* memory allocated */
			TRUE, 		/* parameter has sc_auto */
			FALSE,		/* sc_extern || sc_unspecified */
			FALSE);		/* is_artificial */

  if (append_to_nested)
    (void)DST_append_child( nested_dst, new_dst );
  info = DST_INFO_IDX_TO_PTR( new_dst );
  iattr = DST_INFO_attributes(info);
  assoc = &DST_VARIABLE_def_st(
		DST_ATTR_IDX_TO_PTR(iattr, DST_VARIABLE));
  pDST_ASSOC_INFO_st_idx(assoc) = ST_st_idx(st);
  DST_SET_assoc_idx(DST_INFO_flag(info));
  DST_RESET_assoc_fe(DST_INFO_flag(info));
}


static void Create_Func_DST ( char * st_name )
{
  DST_INFO_IDX	dst = PU_Info_pu_dst( Current_PU_Info );
  DST_INFO	*info = DST_INFO_IDX_TO_PTR(dst);
  DST_ASSOC_INFO *assoc;
  USRCPOS       srcpos;

  USRCPOS_srcpos(srcpos) = line_number;
  nested_dst =  DST_mk_subprogram( srcpos,
			st_name,
			DST_INVALID_IDX,	/* return type */
			DST_INVALID_IDX,	/* for weak symbols */
			(void *) NULL,
			DW_INL_not_inlined,
			DW_VIRTUALITY_none,
			0,
			FALSE,			/* declaration */
			FALSE,			/* prototype */
			FALSE			/* external */
			);
  (void)DST_append_child( dst, nested_dst );
  info = DST_INFO_IDX_TO_PTR( nested_dst );
  assoc = &DST_SUBPROGRAM_def_st(
		DST_ATTR_IDX_TO_PTR(DST_INFO_attributes(info), DST_SUBPROGRAM));
  pDST_ASSOC_INFO_st_idx(assoc) = ST_st_idx(parallel_proc);
  DST_SET_assoc_idx(DST_INFO_flag(info));
  DST_RESET_assoc_fe(DST_INFO_flag(info));
}


/*  Compare two PRAGMA nodes or XPRAGMA trees for equality.  */

static BOOL Identical_Pragmas ( WN * wn1, WN * wn2 )
{
  INT32 i;

  if ((WN_operator(wn1) != WN_operator(wn2)) ||
      (WN_pragma(wn1) != WN_pragma(wn2)) ||
      (WN_st(wn1) != WN_st(wn2)) ||
      (WN_pragma_flags(wn1) != WN_pragma_flags(wn2)) ||
      ((WN_operator(wn1) == OPR_PRAGMA) &&
       (WN_pragma_arg64(wn1) != WN_pragma_arg64(wn2))) ||
      (WN_kid_count(wn1) != WN_kid_count(wn2)))
    return (FALSE);

  for (i = 0; i < WN_kid_count(wn1); i++)
    if (WN_Compare_Trees(WN_kid(wn1, i), WN_kid(wn2, i)) != 0)
      return (FALSE);

  return (TRUE);
}


/*
Create (nested) parallel function.  This includes creating the following:
the corresponding nested symbol table; entries for the TY, PU, and ST
tables; debugging information; PU_Info object; and Whirl tree.
Current_PU_Info is set to point to the new nested function, and the
parallel function's symtab becomes CURRENT_SYMTAB.
*/

static void Create_Nested_Parallel_Function ( PAR_FUNC_TYPE func_type )
{
  BOOL is_do32 = FALSE, is_do64 = FALSE, is_region = FALSE;
  switch (func_type) {  // validate input, set type flag
  case PAR_FUNC_DO32:
    is_do32 = TRUE;
    break;
  case PAR_FUNC_DO64:
    is_do64 = TRUE;
    break;
  case PAR_FUNC_REGION:
    is_region = TRUE;
    break;
  default:
    Fail_FmtAssertion("invalid parallel function type %d", (INT) func_type);
    break;
  }

  const char *construct_type_str = is_region ? "mpregion" : "mpdo";
  char temp_str[64];


  // get function prototype

  TY_IDX &func_ty_idx = (is_do32 ? mpdo32_ty :
                         is_do64 ? mpdo64_ty :
                         mpregion_ty);

  if  (func_ty_idx == TY_IDX_ZERO) {
    // create new type for function, and type for pointer to function

    TY& ty = New_TY(func_ty_idx);
    sprintf(temp_str, ".%s", construct_type_str);
    TY_Init(ty, 0, KIND_FUNCTION, MTYPE_UNKNOWN, Save_Str(temp_str));
    Set_TY_align(func_ty_idx, 1);

    TYLIST_IDX parm_idx;
    TYLIST& parm_list = New_TYLIST(parm_idx);
    Set_TY_tylist(ty, parm_idx);
    Set_TYLIST_type(parm_list, Be_Type_Tbl(MTYPE_V));  // return type

    if (!is_region) {
        // Three integer parameters, types depend on type of par. function
      Set_TYLIST_type(New_TYLIST(parm_idx), // start
                      Be_Type_Tbl(is_do64 ? MTYPE_I8 : MTYPE_I4));
      Set_TYLIST_type(New_TYLIST(parm_idx), // ntrip
                      Be_Type_Tbl(is_do64 ? MTYPE_I8 : MTYPE_I4));
      Set_TYLIST_type(New_TYLIST(parm_idx), // flags
                      Be_Type_Tbl(MTYPE_I4));
    }

    Set_TYLIST_type(New_TYLIST(parm_idx), TY_IDX_ZERO); // end of parm list

      // now create a type for a pointer to this function
    TY_IDX ptr_ty_idx;
    TY &ptr_ty = New_TY(ptr_ty_idx);
    sprintf(temp_str, ".%s_ptr", construct_type_str);
    TY_Init(ptr_ty, Pointer_Size, KIND_POINTER, Pointer_Mtype,
            Save_Str(temp_str));
    Set_TY_pointed(ptr_ty, func_ty_idx);
  }


  // generate new name for nested function

  INT32 mp_region_num;    // MP region number within parent PU
  INT32 mp_construct_num; // construct number within MP region

  if (mpnum_node)
    mp_region_num = WN_pragma_arg1(mpnum_node);
  else
      // should PAR regions and PAR DO's be numbered separately? -- DRK
    mp_region_num = ++(is_region ? region_id : do_id);
  mp_construct_num = mpid_table[mp_region_num]++;

  const char *old_st_name = ST_name(PU_Info_proc_sym(Current_PU_Info));
  char *st_name = (char *) alloca(strlen(old_st_name) + 32);
  if (mp_construct_num == 0)
    sprintf ( st_name, "__%s_%s%d", construct_type_str, old_st_name,
	      mp_region_num );
  else
    sprintf ( st_name, "__%s_%s%d.%d", construct_type_str, old_st_name,
	      mp_region_num, mp_construct_num );


  // create new PU and ST for nested function

  PU_IDX pu_idx;
  PU& pu = New_PU(pu_idx);
  PU_Init(pu, func_ty_idx, CURRENT_SYMTAB);

/*
Many questions of DRK's about flags:

is_pure and no_side_effects shouldn't be set due to output ref. parms?
does no_delete matter?
have no idea: needs_fill_align_lowering, needs_t9, put_in_elf_section,
  has_return_address, has_inlines, calls_{set,long}jmp, namelist
has_very_high_whirl and mp_needs_lno should have been handled already
is inheriting pu_recursive OK?
*/

  Set_PU_no_inline(pu);
  Set_PU_is_nested_func(pu);
  Set_PU_mp(pu);
    // child PU inherits language flags from parent
  if (PU_c_lang(Current_PU_Info_pu()))
    Set_PU_c_lang(pu);
  if (PU_cxx_lang(Current_PU_Info_pu()))
    Set_PU_cxx_lang(pu);
  if (PU_f77_lang(Current_PU_Info_pu()))
    Set_PU_f77_lang(pu);
  if (PU_f90_lang(Current_PU_Info_pu()))
    Set_PU_f90_lang(pu);
  if (PU_java_lang(Current_PU_Info_pu()))
    Set_PU_java_lang(pu);

  Set_FILE_INFO_has_mp(File_info);  // is this true after MP lowerer?--DRK

  parallel_proc = New_ST(GLOBAL_SYMTAB);
  ST_Init(parallel_proc,
          Save_Str (st_name),
          CLASS_FUNC,
          SCLASS_TEXT,
          EXPORT_LOCAL,
          pu_idx);
  Set_ST_addr_passed(parallel_proc);

  Allocate_Object ( parallel_proc );


  // create nested symbol table for parallel function

  New_Scope(CURRENT_SYMTAB + 1,
            Malloc_Mem_Pool,  // find something more appropriate--DRK
            TRUE);
  csymtab = CURRENT_SYMTAB;
  func_level = CURRENT_SYMTAB;
  Scope_tab[csymtab].st = parallel_proc;

  Set_PU_lexical_level(pu, CURRENT_SYMTAB);

  Create_Func_DST ( st_name );


  // pre-allocate in child as many pregs as there are in the parent

  for (UINT32 i = 1; i < PREG_Table_Size(psymtab); i++) {
    PREG_IDX preg_idx;
    PREG &preg = New_PREG(csymtab, preg_idx);
      // share name with corresponding parent preg
    Set_PREG_name_idx(preg,
      PREG_name_idx((*Scope_tab[psymtab].preg_tab)[preg_idx]));
  }

  if (!is_region) {
    // create ST's for parameters

    local_start = New_ST (CURRENT_SYMTAB);
    ST_Init (local_start,
             Save_Str ( "__mparg_base" ),
             CLASS_VAR,
             SCLASS_FORMAL_REF,
             EXPORT_LOCAL,
             Be_Type_Tbl (is_do64 ? MTYPE_I8 : MTYPE_I4));

    local_ntrip = New_ST (CURRENT_SYMTAB);
    ST_Init (local_ntrip,
             Save_Str ( "__mparg_ntrip" ),
             CLASS_VAR,
             SCLASS_FORMAL_REF,
             EXPORT_LOCAL,
             Be_Type_Tbl (is_do64 ? MTYPE_I8 : MTYPE_I4));

    thread_info = New_ST (CURRENT_SYMTAB);
    ST_Init (thread_info,
             Save_Str ( "__mparg_flags" ),
             CLASS_VAR,
             SCLASS_FORMAL_REF,
             EXPORT_LOCAL,
             Be_Type_Tbl (MTYPE_I4));

  }


  // create WHIRL tree for nested function

  parallel_func = WN_CreateBlock ( );
  reference_block = WN_CreateBlock ( );

  WN *func_entry = WN_CreateEntry ( is_region ? 0 : 3, parallel_proc,
                                    parallel_func, WN_CreateBlock ( ),
				    reference_block );

  if (!is_region) {
    WN_kid0(func_entry) = WN_CreateIdname ( 0, local_start );
    WN_kid1(func_entry) = WN_CreateIdname ( 0, local_ntrip );
    WN_kid2(func_entry) = WN_CreateIdname ( 0, thread_info );
  }

  WN_linenum(func_entry) = line_number;


  // create PU_Info for nested function

  PU_Info *parallel_pu = TYPE_MEM_POOL_ALLOC ( PU_Info, Malloc_Mem_Pool );
  PU_Info_init ( parallel_pu );
  Set_PU_Info_tree_ptr (parallel_pu, func_entry );
  verify_mp_lowered_ptr->Set_nested_pu_tree(func_entry);

  PU_Info_proc_sym(parallel_pu) = ST_st_idx(parallel_proc);
  PU_Info_maptab(parallel_pu) = cmaptab = WN_MAP_TAB_Create(MEM_pu_pool_ptr);
  PU_Info_pu_dst(parallel_pu) = nested_dst;
  Set_PU_Info_state(parallel_pu, WT_SYMTAB, Subsect_InMem);
  Set_PU_Info_state(parallel_pu, WT_TREE, Subsect_InMem);
  Set_PU_Info_state(parallel_pu, WT_PROC_SYM, Subsect_InMem);
  Set_PU_Info_flags(parallel_pu, PU_IS_COMPILER_GENERATED);

    // use hack to save csymtab using parallel_pu, so we can restore it
    // later when we lower parallel_pu; this is necessary because the
    // new symtab routines can't maintain more than one chain of symtabs
    // in memory at one time, and we lower the parent PU all the way to
    // CG before we lower any of the nested MP PUs
        // Save_Local_Symtab expects this
  Set_PU_Info_symtab_ptr(parallel_pu, NULL);
  Save_Local_Symtab(csymtab, parallel_pu);

  Is_True(PU_Info_state(parallel_pu, WT_FEEDBACK) == Subsect_Missing,
          ("there should be no feedback for parallel_pu"));
  if (Cur_PU_Feedback) {
    parallel_pu_fb = CXX_NEW(FEEDBACK(func_entry,
                                      MEM_pu_nz_pool_ptr,
				      1, 1, 1, 1, 1, 1, 1,
				      cmaptab),
		             MEM_pu_nz_pool_ptr);
    Set_PU_Info_state(parallel_pu, WT_FEEDBACK, Subsect_InMem);
    Set_PU_Info_feedback_ptr(parallel_pu, parallel_pu_fb);
        // Note that unlike every other kind of map, the FEEDBACK map for
        // the child PU is read and written by the MP lowerer. Therefore
        // we copy over all the relevant values here, and don't transfer
        // the parent FEEDBACK map at the end of MP lowerering.
    FB_Transfer(Cur_PU_Feedback, parallel_pu_fb, stmt_block);
  }

  RID *root_rid = RID_Create ( 0, 0, func_entry );
  RID_type(root_rid) = RID_TYPE_func_entry;
  Set_PU_Info_regions_ptr ( parallel_pu, root_rid );
  Is_True(PU_Info_regions_ptr(parallel_pu) != NULL,
	 ("Create_Nested_Parallel_Function, NULL root RID"));

  PU_Info *tpu = PU_Info_child(Current_PU_Info);

    // add parallel_pu after last child MP PU_Info item in parent's list
  if (tpu && PU_Info_state(tpu, WT_SYMTAB) == Subsect_InMem &&
      PU_mp(PU_Info_pu(tpu)) ) {
    PU_Info *npu;

    while ((npu = PU_Info_next(tpu)) &&
	   PU_Info_state(npu, WT_SYMTAB) == Subsect_InMem &&
	   PU_mp(PU_Info_pu(npu)) )
      tpu = npu;

    PU_Info_next(tpu) = parallel_pu;
    PU_Info_next(parallel_pu) = npu;
  } else {
    PU_Info_child(Current_PU_Info) = parallel_pu;
    PU_Info_next(parallel_pu) = tpu;
  }


  // change some global state; need to clean this up--DRK

  Current_PU_Info = parallel_pu;
  Current_pu = &Current_PU_Info_pu();
  Current_Map_Tab = pmaptab;

  if (!is_region) {
    Add_DST_variable ( local_start, nested_dst, line_number, DST_INVALID_IDX );
    Add_DST_variable ( local_ntrip, nested_dst, line_number, DST_INVALID_IDX );
    Add_DST_variable ( thread_info, nested_dst, line_number, DST_INVALID_IDX );
  }
}


/*  Create either a preg or a temp depending on presence of C++ exception
    handling.  */

static void Create_Preg_or_Temp ( TYPE_ID mtype, char *name, ST **st,
				  WN_OFFSET *ofst )
{
  ST *new_st;

  if (!pu_has_eh) {
    *st = MTYPE_To_PREG ( mtype );
    *ofst = Create_Preg (mtype, name);
  } else {
    new_st = New_ST (CURRENT_SYMTAB);
    ST_Init (new_st,
             Save_Str2 ( "__mptemp_", name ),
             CLASS_VAR,
             SCLASS_AUTO,
             EXPORT_LOCAL,
             MTYPE_To_TY (mtype));
    Set_ST_is_temp_var ( new_st );
    *st = new_st;
    *ofst = 0;
  }
}


/*
If tree is the test for whether a thread is the MASTER, return TRUE, else
return FALSE.

The test for being the MASTER consists of checking whether a PREG called
thread_num is 0.  thread_num is set by code preceding the "if" to be the
result of calling omp_get_thread_num().
*/

static BOOL Is_Master_Test(WN *tree)
{
  if (WN_operator(tree) != OPR_EQ)
    return FALSE;

  WN *wn_ldid;

  if (WN_operator(WN_kid(tree, 0)) == OPR_LDID)
    wn_ldid = WN_kid(tree, 0);
  else if (WN_operator(WN_kid(tree, 1)) == OPR_LDID)
    wn_ldid = WN_kid(tree, 1);
  else
    return FALSE;

  WN *wn_intconst = (wn_ldid == WN_kid(tree, 0)) ? WN_kid(tree, 1) :
    WN_kid(tree, 0);

  if (WN_operator(wn_intconst) != OPR_INTCONST)
    return FALSE;

  if (WN_const_val(wn_intconst) != 0 ||
      Preg_Is_Dedicated(WN_offset(wn_ldid)) ||
      strcmp(THREAD_NUM_PREG_NAME, Preg_Name(WN_offset(wn_ldid))) != 0)
    return FALSE;

  return TRUE;
}


/*
If tree is the test for whether a thread should enter a SINGLE section,
return TRUE, else return FALSE.

The test for entering a SINGLE consists of checking whether a PREG called
MPSP_STATUS_PREG_NAME is a non-0 value.  The PREG is set by code preceding
the "if" to be the result of calling omp_begin_single_process() or
mp_begin_single_process().
*/

static BOOL Is_Single_Test(WN *tree)
{
  if (WN_operator(tree) != OPR_LDID ||
      Preg_Is_Dedicated(WN_offset(tree)) ||
      strcmp(MPSP_STATUS_PREG_NAME, Preg_Name(WN_offset(tree))) != 0)

    return FALSE;

  return TRUE;
}


/*
If the root of tree is a SINGLE, MASTER, CRITICAL, or ATOMIC construct (and
therefore guards all the WNs below it), enter all nodes guarded by tree
into guarded_set; otherwise, do nothing.

Only recursive calls should use optional parameter tree_is_guarded.
*/

static void
Enter_Guarded_WNs(WN_TO_BOOL_HASH *guarded_set, WN *tree,
                  BOOL tree_is_guarded = FALSE) // only used for recursion
{
  if (tree_is_guarded) {
      // enter entire tree recursively
    guarded_set->Enter(tree, TRUE);

    if (!OPCODE_is_leaf(WN_opcode(tree))) {
      if (WN_opcode(tree) == OPC_BLOCK) {
        for (WN *kid = WN_first(tree); kid; kid = WN_next(kid))
          Enter_Guarded_WNs(guarded_set, kid, TRUE);
      } else {
        for (INT kidno = 0; kidno < WN_kid_count(tree); kidno++) {
          WN *kid = WN_kid(tree, kidno);
          if (kid)
            Enter_Guarded_WNs(guarded_set, kid, TRUE);
        }
      }
    }

    return;
  }

/*
The lowered WHIRL for the guarding MP constructs is as follows:

  MASTER:
    "then" block of "if" passes Is_Master_Test()
  SINGLE:
    "then" block of "if" passes Is_Single_Test()
  named CRITICAL:
    everything between matching OPC_VCALL(MPR_GETLOCK) and
      OPC_VCALL(MPR_UNLOCK) is guarded
  unnamed CRITICAL:
    everything between OPC_VCALL(MPR_SETLOCK) and OPC_VCALL(MPR_UNSETLOCK)
      is guarded
  ATOMIC:
    Lowered in 3 different ways.  One is as a CRITICAL section (handled as
    above).  The other two are as intrinsic calls, in which case we get
    help from a routine in the OMP Prelowerer.  Only the LDA for the scalar
    variable or array base being atomically updated needs to be guarded.
*/

  if (WN_operator(tree) == OPR_INTRINSIC_CALL) {
    WN *lda = Get_ATOMIC_Update_LDA(tree);
    if (lda) {
      guarded_set->Enter(lda, TRUE);
      return;
    }
  }

  OPCODE opc = WN_opcode(tree);
  ST_IDX end_st, end_name_st = ST_IDX_ZERO;

  switch (opc) {
  case OPC_IF:
    if (Is_Master_Test(WN_if_test(tree)) ||
        Is_Single_Test(WN_if_test(tree)) )
      Enter_Guarded_WNs(guarded_set, WN_then(tree), TRUE);
    return;
  case OPC_VCALL:
    if (WN_st_idx(tree) == GET_MPRUNTIME_ST(MPR_GETLOCK)) { // named CRITICAL
      end_st = GET_MPRUNTIME_ST(MPR_UNLOCK);
        // call has one PARM child that's an LDA of the lock var.
      end_name_st = WN_st_idx(WN_kid0(WN_kid0(tree)));
    } else if (WN_st_idx(tree) == GET_MPRUNTIME_ST(MPR_SETLOCK)) {
        // unnamed CRITICAL
      end_st = GET_MPRUNTIME_ST(MPR_UNSETLOCK);
    } else
      return;
    break;
  default:
    return; // not a guarding construct
  }

  Is_True(opc == OPC_VCALL,
          ("should be looking for call that marks end of guarded code"));

    // add all nodes in CRITICAL section to guarded_set, warning if we
    // can't find the matching CRITICAL END
  DYN_ARRAY<WN *> nodes_in_critsect(Malloc_Mem_Pool);

  for (WN *guarded_wn = WN_next(tree); guarded_wn;
       guarded_wn = WN_next(guarded_wn)) {
    if (WN_opcode(guarded_wn) == OPC_VCALL &&
        WN_st_idx(guarded_wn) == end_st &&
        (!end_name_st || WN_st_idx(WN_kid0(WN_kid0(guarded_wn))) ==
	                           end_name_st) )
      break;  // found matching CRITICAL END
    nodes_in_critsect.AddElement(guarded_wn);
  }
//  if (!guarded_wn)
//    DevWarn("Enter_Guarded_WNs() did not find matching CRITICAL END");

  for (INT i = 0; i <= nodes_in_critsect.Lastidx(); i++)
    Enter_Guarded_WNs(guarded_set, nodes_in_critsect[i], TRUE);
}


/*  Walk tree to locate all uplevel references and build list of them.
    guarded_set is the set of WNs guarded by SINGLE or MASTER constructs;
    guared stores to non-SHARED STs do not elicit a warning message. */

static void Gather_Uplevel_References ( WN * block, INT32 level, WN * parent,
					WN * grandparent, WN * tree,
					WN_TO_BOOL_HASH *guarded_set )
{
  WN *wn;
  WN *node;
  INT32 i;
  ST *st;
  OPCODE op;
  OPERATOR opr;

  BOOL a_pointer;
  WN_PRAGMA_ACCESSED_FLAGS flags;

  Is_True(level >= 2, ("impossible symtab level == %d", level));

  if (tree) {

    Enter_Guarded_WNs(guarded_set, tree);

    op = WN_opcode(tree);
    opr = WN_operator(tree);

    if (op == OPC_LOOP_INFO)
      return;

    if (op == OPC_BLOCK)
      for (node = WN_first(tree); node; node = WN_next(node))
	Gather_Uplevel_References ( block, level, tree, parent, node,
	                            guarded_set );
    else
      for (i = 0; i < WN_kid_count(tree); i++)
	Gather_Uplevel_References ( block, level, tree, parent,
				    WN_kid(tree, i), guarded_set );

    if (OPCODE_has_sym(op) && (st = WN_st(tree)) != NULL &&
        ST_level(st) < level && ST_class(st) == CLASS_VAR) {

      a_pointer = (TY_kind(ST_type(st)) == KIND_POINTER);

      if (opr == OPR_LDID && !a_pointer)
	flags = ACCESSED_LOAD;
      else if (opr == OPR_STID)
	flags = ACCESSED_STORE;
      else if ((opr == OPR_LDA) && !a_pointer)
	if (WN_operator(parent) == OPR_ILOAD)
	  flags = ACCESSED_LOAD;
	else if (WN_operator(parent) == OPR_ISTORE)
	  flags = ACCESSED_STORE;
	else if (WN_operator(parent) == OPR_ARRAY)
	  if (WN_operator(grandparent) == OPR_ILOAD)
	    flags = ACCESSED_LOAD;
	  else if (WN_operator(grandparent) == OPR_ISTORE)
	    flags = ACCESSED_STORE;
	  else
	    flags = (WN_PRAGMA_ACCESSED_FLAGS) (ACCESSED_LOAD |
						ACCESSED_STORE |
						ACCESSED_ILOAD |
						ACCESSED_ISTORE);
	else
	  flags = (WN_PRAGMA_ACCESSED_FLAGS) (ACCESSED_LOAD |
					      ACCESSED_STORE |
					      ACCESSED_ILOAD |
					      ACCESSED_ISTORE);
      else if ((opr == OPR_LDID) && a_pointer)
	if (WN_operator(parent) == OPR_ILOAD)
	  flags = (WN_PRAGMA_ACCESSED_FLAGS) (ACCESSED_LOAD |
					      ACCESSED_ILOAD);
	else if (WN_operator(parent) == OPR_ISTORE)
	  flags = (WN_PRAGMA_ACCESSED_FLAGS) (ACCESSED_LOAD |
					      ACCESSED_ISTORE);
	else if (WN_operator(parent) == OPR_ARRAY)
	  if (WN_operator(grandparent) == OPR_ILOAD)
	    flags = (WN_PRAGMA_ACCESSED_FLAGS) (ACCESSED_LOAD |
						ACCESSED_ILOAD);
	  else if (WN_operator(grandparent) == OPR_ISTORE)
	    flags = (WN_PRAGMA_ACCESSED_FLAGS) (ACCESSED_LOAD |
						ACCESSED_ISTORE);
	  else
	    flags = (WN_PRAGMA_ACCESSED_FLAGS) (ACCESSED_LOAD |
						ACCESSED_STORE |
						ACCESSED_ILOAD |
						ACCESSED_ISTORE);
	else
	  flags = (WN_PRAGMA_ACCESSED_FLAGS) (ACCESSED_LOAD |
					      ACCESSED_STORE |
					      ACCESSED_ILOAD |
					      ACCESSED_ISTORE);
      else
	flags = (WN_PRAGMA_ACCESSED_FLAGS) (ACCESSED_LOAD |
					    ACCESSED_STORE |
					    ACCESSED_ILOAD |
					    ACCESSED_ISTORE);

      wn = WN_first(block);
      while (wn && (WN_st(wn) < st))
	wn = WN_next(wn);
      if (wn && (WN_st(wn) == st))
	WN_pragma_arg2(wn) |= flags;
      else {
        const ST_SCLASS sclass = ST_sclass(st);

        if (sclass == SCLASS_AUTO || sclass == SCLASS_FORMAL_REF ||
            sclass == SCLASS_FORMAL || sclass == SCLASS_PSTATIC)
          Set_ST_has_nested_ref ( st );

	WN_INSERT_BlockBefore ( block, wn,
				WN_CreatePragma ( WN_PRAGMA_ACCESSED_ID, st, 0,
						  flags ));
      }

      if ((flags & ACCESSED_STORE) && (TY_kind(ST_type(st)) == KIND_SCALAR)) {
	for (i = 0; (i < shared_count) && (st != shared_table[i]); i++) { }
	if (i == shared_count) {
	  ST *split_blk, *common_blk = ST_Source_COMMON_Block(st, &split_blk);
	  BOOL is_threadprivate_common =
	    (ST_is_thread_private(st)) ||
	    (split_blk && ST_is_thread_private(split_blk)) ||
	    (common_blk && ST_is_thread_private(common_blk));

          if (!Is_NameLock_ST(st) &&
              !is_threadprivate_common &&
              !guarded_set->Find(tree) &&
	      !comp_gen_construct) {
            ErrMsg ( EC_MPLOWER_shared_store, st );
          }
	  shared_table[shared_count++] = st;
	}
      }

    }

    if (((op == OPC_U4INTRINSIC_CALL) &&
	 (WN_intrinsic(tree) == INTRN_U4I4ALLOCA)) ||
	((op == OPC_U8INTRINSIC_CALL) &&
	 (WN_intrinsic(tree) == INTRN_U8I8ALLOCA))) {
      Is_True(!Alloca_Dealloca_On,
              ("Alloca_Dealloca_On yet found INTRN_ALLOCA"));
      pu_has_alloca = TRUE;
    }

    if (opr == OPR_ALLOCA) {
      Is_True(Alloca_Dealloca_On,
              ("found OPR_ALLOCA yet not Alloca_Dealloca_On"));
      pu_has_alloca = TRUE;
    }

    if (op == OPC_REGION)
      pu_has_region = TRUE;

  }
}


/*  Walk tree gathering information about all interesting preg usage.  */

static void Walk_and_Info_Pregs ( WN * tree )
{
  WN *node;
  INT32 i;
  OPCODE op;

  if (tree) {

    op = WN_opcode(tree);
    if (op == OPC_BLOCK)
      for (node = WN_first(tree); node; node = WN_next(node))
	Walk_and_Info_Pregs ( node );
    else
      for (i = 0; i < WN_kid_count(tree); i++)
	Walk_and_Info_Pregs ( WN_kid(tree, i) );

    if (OPCODE_has_sym(op) && OPCODE_has_offset(op) && WN_st(tree) &&
        (ST_class(WN_st(tree)) == CLASS_PREG) &&
        !Preg_Is_Dedicated(WN_offsetx(tree))) {
      PREG_IDX pnum = Get_Preg_Idx(WN_offsetx(tree));

      PREG_INFO *preg = &preg_info_table->at(pnum);

      if (preg->type == MTYPE_UNKNOWN)
	preg->type = ST_btype(WN_st(tree));
    }
  }
}


/*  Walk tree replacing livein/out parent pregs with temps.  */

static void Walk_and_Replace_Pregs ( WN * tree )
{
  WN *node;
  INT32 i;
  OPCODE op;
  PREG_INFO *preg;

  if (tree) {

    op = WN_opcode(tree);
    if (op == OPC_BLOCK)
      for (node = WN_first(tree); node; node = WN_next(node))
	Walk_and_Replace_Pregs ( node );
    else
      for (i = 0; i < WN_kid_count(tree); i++)
	Walk_and_Replace_Pregs ( WN_kid(tree, i) );

    if (OPCODE_has_sym(op) && OPCODE_has_offset(op) && WN_st(tree) &&
	(ST_class(WN_st(tree)) == CLASS_PREG) &&
	!Preg_Is_Dedicated(WN_offsetx(tree)) ) {
      preg = &preg_info_table->at(Get_Preg_Idx(WN_offsetx(tree)));

      if (preg->temp && (preg->pclass != PCLASS_COPYIN_DEADOUT)) {
        WN_st_idx(tree) = ST_st_idx(preg->temp);
        WN_set_offsetx(tree, 0);
      }

    }
  }
}


/*
Translate a label in sequential code to an equivalent label in MP code. If
the equivalent MP label doesn't exist then create it.  For orphaned
constructs, just return the input label--no translation needed, since we
don't copy the MP code or move it into a nested scope.
*/

// scrutinize all uses of St_Table and Label_Table to make sure they
// refer to the right symtab level -- DRK

static LABEL_IDX Translate_Label ( LABEL_IDX plabel_idx )
{
  if (plabel_idx == LABEL_IDX_ZERO)
    return LABEL_IDX_ZERO;

  if (mpt == MPP_ORPHANED_SINGLE || mpt == MPP_ORPHANED_PDO)
    return plabel_idx;

  LABEL_IDX clabel_idx = label_info_table[plabel_idx];

  if (clabel_idx == LABEL_IDX_ZERO) {
      // remove when symtab-setting stuff gets cleaned up--DRK
    Is_True(csymtab != SYMTAB_IDX_ZERO, ("child symtab not created yet"));
    Is_True(psymtab != SYMTAB_IDX_ZERO, ("psymtab not set yet"));
    Is_True(psymtab < csymtab,
            ("fishy-looking psymtab %d and/or csymtab %d",
	     (INT) psymtab, (INT) csymtab));
    Is_True(CURRENT_SYMTAB == csymtab, ("CURRENT_SYMTAB != csymtab"));
    char* Cur_PU_Name = ST_name(PU_Info_proc_sym(Current_PU_Info));
    INT strsize = strlen(User_Label_Number_Format) + 64 + strlen(Cur_PU_Name);
    char* labelname = (char*) calloc(strsize, 1);
    sprintf ( labelname, User_Label_Number_Format, (INT) csymtab,
	      (INT) plabel_idx, ST_name(Get_Current_PU_ST()) );

    LABEL &clabel = New_LABEL(csymtab, clabel_idx);
    LABEL_Init(clabel, Save_Str(labelname),
               LABEL_kind((*Scope_tab[psymtab].label_tab)[plabel_idx]));
    label_info_table[plabel_idx] = clabel_idx;
  }
  
  return clabel_idx;
}


/*
Return TRUE if upper and lower bounds of each dimension of arr_ty are
defined, FALSE otherwise. arr_ty must be an array type.
*/

static BOOL TY_All_Bounds_Defined(TY_IDX arr_ty)
{
  Is_True(TY_kind(arr_ty) == KIND_ARRAY, ("not an array type"));

  INT i;
  for (i = 0; i < TY_AR_ndims(arr_ty); i++) {
    if (!TY_AR_const_lbnd(arr_ty, i) &&
        TY_AR_lbnd_var(arr_ty, i) == 0)
      return FALSE; // lower bound not defined
    if (!TY_AR_const_ubnd(arr_ty, i) &&
        TY_AR_ubnd_var(arr_ty, i) == 0)
      return FALSE; // upper bound not defined
  }

  return TRUE;
} // TY_All_Bounds_Defined()


/*  Calculate size of a dynamic array (in bytes).  */

static WN * Calculate_Array_Size ( ST * st, TY_IDX ty )
{
  INT32 i;
  WN   *wn;
  WN   *lower = NULL;
  WN   *upper = NULL;
  const OPCODE int_opc = (Pointer_Size == 4) ? OPC_I4INTCONST :
                         (Pointer_Size == 8) ? OPC_I8INTCONST : OPCODE_UNKNOWN;
  const mTYPE_ID int_mtype = (int_opc == OPC_I4INTCONST) ? MTYPE_I4 : MTYPE_I8;

  Is_True(int_opc != OPCODE_UNKNOWN, ("invalid Pointer_Size"));

  wn = WN_CreateIntconst ( int_opc, TY_size(TY_AR_etype(ty)) );
  for (i = 0; i < TY_AR_ndims(ty); i++) {
    if (TY_AR_const_lbnd(ty, i))
      lower = WN_CreateIntconst ( int_opc, TY_AR_lbnd_val(ty, i) );
    else {
      if (TY_AR_lbnd_var(ty,i)) {
        lower = WN_CreateLdid (OPCODE_make_op(OPR_LDID,
                                TY_mtype(ST_type(TY_AR_lbnd_var(ty,i))),
                                TY_mtype(ST_type(TY_AR_lbnd_var(ty,i)))),
                               0, TY_AR_lbnd_var(ty,i),
                               ST_type(TY_AR_lbnd_var(ty,i)));
      }
      else lower = NULL;
    }
    if (TY_AR_const_ubnd(ty, i))
      upper = WN_CreateIntconst ( int_opc, TY_AR_ubnd_val(ty, i) );
    else {
      if (TY_AR_ubnd_var(ty,i)) {
        upper = WN_CreateLdid (OPCODE_make_op(OPR_LDID,
                                 TY_mtype(ST_type(TY_AR_ubnd_var(ty,i))),
                                 TY_mtype(ST_type(TY_AR_ubnd_var(ty,i)))),
                               0, TY_AR_ubnd_var(ty,i),
                               ST_type(TY_AR_ubnd_var(ty,i)));
      }
      else upper = NULL;
    }
    if (upper && lower) {
      wn = WN_Mpy ( int_mtype, wn, WN_Add ( int_mtype,
					    WN_Sub ( int_mtype, upper, lower ),
					    WN_CreateIntconst ( int_opc,
								1 )));
    } else {
      ErrMsg ( EC_MPLOWER_local_nosize, st );
      WN_DELETE_Tree (wn);
      wn = WN_CreateIntconst ( int_opc, 0 );
      break;
    }
  }

  return (wn);
}

// Return a Whirl BLOCK for allocating a VLA auto variable using ALLOCA.
static WN *
Gen_Auto_Alloca(ST *st, WN_OFFSET offset, TY_IDX ty, WN *size)
{
  WN *block = WN_CreateBlock(), *vla_stid_kid;

  if (Alloca_Dealloca_On) {
      // use ALLOCA operator
    vla_stid_kid = WN_CreateAlloca(size);

  } else {
      // Call ALLOCA intrinsic
    WN *intrin_call = WN_Create(
      (Pointer_Size == 4) ? OPC_U4INTRINSIC_CALL : OPC_U8INTRINSIC_CALL, 1);
    WN_intrinsic(intrin_call) = (Pointer_Size == 4) ? INTRN_U4I4ALLOCA :
                                INTRN_U8I8ALLOCA;
    WN_Set_Call_Non_Data_Mod(intrin_call);
    WN_Set_Call_Non_Data_Ref(intrin_call);
    WN_Set_Call_Non_Parm_Mod(intrin_call);
    WN_Set_Call_Non_Parm_Ref(intrin_call);
    WN_Set_Call_Parm_Ref(intrin_call);
    WN_linenum(intrin_call) = line_number;
    WN_kid(intrin_call, 0) = WN_CreateParm(
      (Pointer_Size == 4) ? MTYPE_I4 : MTYPE_I8, size,
      Be_Type_Tbl((Pointer_Size == 4) ? MTYPE_I4 : MTYPE_I8),
      WN_PARM_BY_VALUE);

    WN_INSERT_BlockLast(block, intrin_call);

      // Load returned value
    PREG_NUM rreg1, rreg2;

    GET_RETURN_PREGS(rreg1, rreg2, Pointer_type);
    vla_stid_kid = WN_LdidPreg(Pointer_type, rreg1);
  }

  WN *vla_stid = WN_Stid(Pointer_type, offset, st, ty, vla_stid_kid);
  WN_linenum(vla_stid) = line_number;
  WN_INSERT_BlockLast(block, vla_stid);

  return block;
}


// A VLA that is scoped within a parallel construct
// will have its ALLOCA generated by the front end,
// and it doesn't need a new ALLOCA when localized.

static std::vector<ST*> inner_scope_vla;

static void 
Gather_Inner_Scope_Vlas(WN *wn)
{
  if (WN_operator(wn) == OPR_STID && WN_operator(WN_kid0(wn)) == OPR_ALLOCA) {
    inner_scope_vla.push_back(WN_st(wn));    
  }
  else if (WN_operator(wn) == OPR_BLOCK) {
    for (WN *kid = WN_first(wn); kid; kid = WN_next(kid)) {
      Gather_Inner_Scope_Vlas(kid);
    }
  }
  else {
    for (INT kidno = 0; kidno < WN_kid_count(wn); kidno++) {
      Gather_Inner_Scope_Vlas(WN_kid(wn, kidno));
    }
  }
}

static BOOL
Vla_Needs_Alloca(ST *st)
{
  std::vector<ST*>::iterator i;
  for (i = inner_scope_vla.begin(); i != inner_scope_vla.end(); i++) {
    if (*i == st) {
      return FALSE;
    }
  }
  return TRUE;
} 


/*
Make a local symbol having the same type as the original symbol.  The
parameters firstprivate_blockp and alloca_blockp are the same as in
Create_Local_Variables().  Input parameter prev_def points to a prior entry
for the symbol (NULL if there's none): in particular, if vtype is
VAR_FIRSTPRIVATE, there may have been a prior VAR_LASTLOCAL entry (if the
variable is both FIRSTPRIVATE and LASTPRIVATE) or a prior VAR_LOCAL entry
(if old_st was marked SHARED_DEADOUT).
*/

static void Localize_Variable ( VAR_TABLE *v, VAR_TYPE vtype, OPERATOR opr,
                                WN *vtree, ST *old_st, WN_OFFSET old_offset,
				WN **firstprivate_blockp, WN **alloca_blockp,
				VAR_TABLE *prev_def )
{
  ST   *sym;
  TY_IDX ty;
  char *localname;
  DST_INFO_IDX dst;
  const BOOL orphaned =
    (mpt == MPP_ORPHANED_SINGLE || mpt == MPP_ORPHANED_PDO);

  Is_True(!prev_def || vtype == VAR_FIRSTPRIVATE,
          ("prev_def only valid for VAR_FIRSTPRIVATE"));
  Is_True(!prev_def || prev_def->vtype == VAR_LASTLOCAL ||
          prev_def->vtype == VAR_LOCAL,
          ("invalid vtype for prev_def"));

    // disallow privatizing things that are EQUIVALENCEd: PV 707883
  switch (vtype) {
  case VAR_LASTLOCAL:
  case VAR_LOCAL:
  case VAR_FIRSTPRIVATE:
    if (Has_Base_Block(old_st) && ST_is_equivalenced(old_st)) {
        // if the MP region in which the privatization pragma appears
        // was compiler-generated, it must have come from LNO (-pfa), in
	// which case alias analysis has determined that privatization is
	// actually OK: PV 574997
      if (comp_gen_construct) {
//        DevWarn("allowing privatization of EQUIVALENCEd %s", ST_name(old_st));
        break;
      }
      ErrMsg(EC_MPLOWER_priv_equiv, old_st);
      return;
    }
    break;
  default:
    break;
  }

  v->vtype	      = vtype;
  v->is_static_array  = ((ST_sclass(old_st) == SCLASS_FORMAL) &&
			 ((vtype == VAR_LOCAL) || (vtype == VAR_LASTLOCAL) ||
			  (vtype == VAR_FIRSTPRIVATE)) &&
			 (TY_kind(ST_type(old_st)) == KIND_POINTER) &&
			 (TY_kind(TY_pointed(ST_type(old_st))) == KIND_ARRAY) &&
			 (TY_size(TY_pointed(ST_type(old_st))) != 0));
  v->is_dynamic_array = (((vtype == VAR_LOCAL) || (vtype == VAR_LASTLOCAL) ||
			  (vtype == VAR_FIRSTPRIVATE)) &&
			 (TY_kind(ST_type(old_st)) == KIND_POINTER) &&
                         (ST_keep_name_w2f(old_st) || 
                          PU_src_lang(Get_Current_PU()) == PU_F77_LANG ||
                          PU_src_lang(Get_Current_PU()) == PU_F90_LANG) &&
			 (TY_kind(TY_pointed(ST_type(old_st))) == KIND_ARRAY) &&
			 (TY_size(TY_pointed(ST_type(old_st))) == 0) &&
			 TY_All_Bounds_Defined(TY_pointed(
			                         ST_type(old_st)) ) );
  v->is_non_pod       = ( ST_class(old_st) != CLASS_PREG &&
                          ( TY_kind(ST_type(old_st)) == KIND_STRUCT &&
                            TY_is_non_pod(ST_type(old_st)) ) ||
                          ( TY_kind(ST_type(old_st)) == KIND_ARRAY &&
                            TY_kind(TY_etype(ST_type(old_st))) == 
			      KIND_STRUCT &&
			    TY_is_non_pod(TY_etype(ST_type(old_st))) ) );
  v->vtree	      = vtree;
  v->vtreex	      = NULL;
  v->orig_st	      = old_st;
  v->orig_offset      = old_offset;

#ifdef Is_True_On
  if (v->is_non_pod)
    switch (mpt) {
    case MPP_SINGLE:
    case MPP_ORPHANED_SINGLE:
    case MPP_PDO:
    case MPP_ORPHANED_PDO:
    case MPP_PARALLEL_REGION:
      break;
    default:
      Fail_FmtAssertion("non-POD object invalidly privatized on construct "
                        "with mpt == %d", (INT) mpt);
    }
#endif

  if (prev_def) {
    v->mtype = prev_def->mtype;
    v->has_offset = prev_def->has_offset;
    v->ty = prev_def->ty;
    v->vtree = prev_def->vtree ? WN_COPY_Tree(prev_def->vtree) : NULL;
    v->vtreex = prev_def->vtreex ? WN_COPY_Tree(prev_def->vtreex) : NULL;
    v->new_st = prev_def->new_st;
    v->new_offset = prev_def->new_offset;
    if (prev_def->vtype == VAR_LASTLOCAL)
      prev_def->is_last_and_firstprivate = TRUE;

  } else if (ST_class(old_st) != CLASS_PREG) {

    ty = ST_type(old_st);
    if ((TY_kind(ty) == KIND_POINTER) &&
	((v->is_static_array) || (vtype == VAR_REDUCTION_ARRAY)))
      ty = TY_pointed(ty);
    if ((TY_kind(ty) == KIND_ARRAY) && (vtype == VAR_REDUCTION_ARRAY))
      ty = TY_etype(ty);

    localname = (char *) alloca(strlen(ST_name(old_st)) + 32);
      // if already localized, append "x" to localization prefix
    if (strncmp(ST_name(old_st), "__mplocal_", 10) == 0)
      sprintf ( localname, "__mplocalx_%s", &ST_name(old_st)[10] );
    else if (strncmp(ST_name(old_st), "__mplocalfe_", 12) == 0)
      sprintf ( localname, "__mplocalfex_%s", &ST_name(old_st)[12] );
    else if (strncmp(ST_name(old_st), "__mptemp_", 9) == 0)
      sprintf ( localname, "__mptempx_%s", &ST_name(old_st)[9] );
    else
      sprintf ( localname, "__mplocal_%s", ST_name(old_st) );

    if (v->is_non_pod && orphaned) {
        // Within orphaned worksharing constructs, non-POD objects are
        // privatized already by the frontend, so we don't create a new
        // symbol for such objects.
      sym = NULL;

    } else {
        // Create privatized version of symbol.
      sym = New_ST (CURRENT_SYMTAB);
      ST_Init (sym,
               Save_Str (localname),
               CLASS_VAR,             // SCLASS_AUTO requires CLASS_VAR
               SCLASS_AUTO,
               EXPORT_LOCAL,
               ty);
      if (ST_addr_saved(old_st))
        Set_ST_addr_saved(sym);
      if (ST_addr_passed(old_st))
        Set_ST_addr_passed(sym);

      // Don't do the following; it depends on a back-end-specific table
      // that doesn't exist until we're compiling the nested MP
      // procedure, and addr_used_locally is recomputed by the optimizer
      // in any case.
      // if (BE_ST_addr_used_locally(old_st)) Set_BE_ST_addr_used_locally(sym);

      if (v->is_dynamic_array) {
        Set_ST_pt_to_unique_mem(sym);
        Set_ST_pt_to_compiler_generated_mem(sym);
      }

      if (Debug_Level > 0) {
          // search in the DST tree of the parent subprogram for the
          // DST entry corresponding to this symbol
        dst = Find_DST_From_ST( old_st, ppuinfo );
          // Only create a new DST entry for a valid symbol, not any
          // of the predef stuff.  If we're localizing for an orphaned
	  // construct, there's no nested function and associated symbol
	  // table or DST.
        if (!DST_IS_NULL(dst))
          Create_New_DST( dst, sym, !orphaned );
      }
    } // if (orphaned)

    if (TY_kind(ty) == KIND_ARRAY) {
      v->mtype = TY_mtype(TY_etype(ty));
      v->has_offset = (vtype != VAR_LASTLOCAL) && (vtype != VAR_LOCAL) &&
		      (vtype != VAR_FIRSTPRIVATE);
    } else if (TY_kind(ty) == KIND_STRUCT) {
      v->mtype = TY_mtype(ty);
      v->has_offset = FALSE;
    } else if (v->is_dynamic_array) {
      v->mtype = TY_mtype(TY_AR_etype(TY_pointed(ty)));
      v->has_offset = FALSE;
    } else {
      v->mtype = TY_mtype(ty);
      v->has_offset = TRUE;
    }
    v->ty         = ty;
    v->new_st     = sym;
    v->new_offset = 0;

    if ((v->is_static_array) && (vtree == NULL)) {
      v->vtree = WN_RLdid ( Promote_Type(Pointer_type), Pointer_type,
			    old_offset, old_st, ST_type(old_st) );
      v->vtreex = WN_Create ( (Pointer_Size == 4) ? OPC_U4ARRAY : OPC_U8ARRAY,
			      3 );
      WN_element_size(v->vtreex) = Pointer_Size;
      WN_kid0(v->vtreex) = WN_RLdid ( Promote_Type(Pointer_type), Pointer_type,
				      old_offset, old_st, ST_type(old_st) );
      WN_kid1(v->vtreex) = WN_Intconst ( MTYPE_I4, 0 );
      WN_kid2(v->vtreex) = WN_Intconst ( MTYPE_I4, 0 );
    }

    if (v->is_dynamic_array && 
        Vla_Needs_Alloca(v->orig_st) &&
        !v->is_non_pod) { // fecc allocates non-POD VLAs
      if (*alloca_blockp == NULL)
	*alloca_blockp = WN_CreateBlock ( );
      WN_INSERT_BlockLast(*alloca_blockp,
        Gen_Auto_Alloca(v->new_st, v->new_offset, v->ty,
                        Calculate_Array_Size(old_st, TY_pointed(ty))));
    }

  } else {  // ST_class(old_st) == CLASS_PREG
    v->mtype      = ST_btype(old_st);
    v->has_offset = TRUE;
    v->ty         = ST_type(old_st);
    v->new_st     = old_st;
    v->new_offset = old_offset;

  }

  if (vtype == VAR_FIRSTPRIVATE && firstprivate_blockp &&
      !v->is_non_pod) {   // fecc generates constructor calls
    if (*firstprivate_blockp == NULL)
      *firstprivate_blockp = WN_CreateBlock ( );
    WN_INSERT_BlockLast(*firstprivate_blockp,
      Gen_MP_Load_Store(v->orig_st, v->orig_offset,
                        v->new_st, v->new_offset,
                        v->is_dynamic_array));
  }

    /* determine the opcode for reductions */
  if (vtype == VAR_REDUCTION_SCALAR || vtype == VAR_REDUCTION_ARRAY) {
    TYPE_ID rtype, dtype = MTYPE_V;

      /* Operator is explicit in OMP, or inferred by OMP_Prelower for MP.
         If it's still unknown by this point, it couldn't be inferred
	 because the operator wasn't used in the lexical scope of the
	 reduction clause, so it's an error. */
    if (opr == OPERATOR_UNKNOWN) {
      char *redvar_name = (char *) alloca(strlen(ST_name(v->orig_st)) + 32);

      sprintf(redvar_name, "%s %s",
	      vtree ? "element of array" : "variable",
              ST_name(v->orig_st));
      ErrMsg(EC_MPLOWER_red_not_found, redvar_name);
    }

      // Promote 1 and 2 byte types to 4 bytes
    if (v->mtype == MTYPE_I1 || v->mtype == MTYPE_I2)
      rtype = MTYPE_I4;
    else if (v->mtype == MTYPE_U1 || v->mtype == MTYPE_U2)
      rtype = MTYPE_U4;
    else
      rtype = v->mtype;

    switch (opr) {
    case OPR_LAND:
    case OPR_LIOR:
      if (v->mtype == MTYPE_I8) {
          // truncate result on LOGICAL*8 to 4 bytes: PV 602935
        rtype = MTYPE_I4;
      }
      break;

    case OPR_EQ:
    case OPR_NE:
      if (rtype == MTYPE_I8) {
        dtype = MTYPE_I8;
          // truncate .EQV./.NEQV. result on LOGICAL*8: PV 659567
	rtype = MTYPE_I4;
      } else {
        dtype = rtype;
      }
      break;

    case OPR_CAND:
    case OPR_CIOR:
        // for && and ||, the rtype must be MTYPE_I4: PV 677602
      rtype = MTYPE_I4;
      break;

    default:
      break;
    }

    v->reduction_opr = opr;
    v->reduction_opc = OPCODE_make_op(opr, rtype, dtype);
  } else {
    v->reduction_opr = OPERATOR_UNKNOWN;
    v->reduction_opc = OPCODE_UNKNOWN;
  }
}


/*
Verify that the given PRAGMA or XPRAGMA tree doesn't reference any
non-dedicated pregs.
*/

static void Verify_No_Pregs_In_Tree(WN *tree)
{
  WN_ITER *it = WN_WALK_TreeIter(tree);

  while (it) {
    WN *wn = it->wn;

    OPERATOR opr = WN_operator(wn);

    if (OPERATOR_has_sym(opr) && OPERATOR_has_offset(opr) && WN_st(wn) &&
        ST_class(WN_st(wn)) == CLASS_PREG &&
        !Preg_Is_Dedicated(WN_offsetx(wn)))
      Fail_FmtAssertion("invalid preg reference in worksharing scope pragma");

    it = WN_WALK_TreeNext(it);
  }
}


/*  Walk the reduction, last_local, local, and firstprivate lists and add the
    contents to the VAR_TABLE table.  If firstprivate_blockp is non-NULL,
    then (*firstprivate_blockp) must be NULL, and the code to initialize
    values of FIRSTPRIVATE variables is returned in (*firstprivate_blockp);
    if the value of (*firstprivate_blockp) is NULL upon return, no such
    code was generated.  Accumulate code to allocate dynamic arrays in
    (*alloca_blockp).  */

static void Create_Local_Variables ( VAR_TABLE * vtab, WN * reductions,
				     WN * lastlocals, WN * locals,
				     WN * firstprivates, 
				     WN **firstprivate_blockp,
				     WN * lastthread,
				     WN ** alloca_blockp )
{
  WN        *l;
  OPERATOR   opr;
  VAR_TABLE *v = vtab;
  BOOL is_non_combined_worksharing = FALSE;

  switch (mpt) {
  case MPP_SINGLE:
  case MPP_ORPHANED_SINGLE:
  case MPP_PDO:
  case MPP_ORPHANED_PDO:
    is_non_combined_worksharing = TRUE;
    break;
  case MPP_PARALLEL_DO:
  case MPP_PARALLEL_REGION:
    break;
  default:
    Fail_FmtAssertion("illegal construct, mpt == %d", (INT) mpt);
  }

#ifdef Is_True_On
  if (is_non_combined_worksharing) {
      /* PV 656616 : In a worksharing construct, pregs should never appear
         in a reduction, lastlocal, or firstprivate pragma. In the non-
         orphaned case, they should have been scoped shared on the
	 parallel region and replaced by temps during Process_Preg_Temps().
	 In the orphaned case, it's a reprivatization error. */
    WN *ll[] = { reductions, lastlocals, firstprivates, NULL };
    INT i;

    for (i = 0; ll[i]; i++)
      for (l = ll[i]; l; l = WN_next(l))
        Verify_No_Pregs_In_Tree(l);
  }
#endif

  /* Do reductions */
  for (l = reductions; l; l = WN_next(l)) {
    if (WN_opcode(l) == OPC_PRAGMA) {
      Localize_Variable ( v, VAR_REDUCTION_SCALAR,
                          (OPERATOR) WN_pragma_arg2(l), NULL, WN_st(l),
			  WN_offsetx(l), firstprivate_blockp, alloca_blockp,
			  NULL );
      v++;
    } else {
      opr = WN_operator(WN_kid0(l));
      if ((opr == OPR_LDA) || (opr == OPR_LDID)) {
	Localize_Variable ( v, VAR_REDUCTION_SCALAR,
			    (OPERATOR) WN_pragma_arg2(l), NULL,
			    WN_st(WN_kid0(l)), WN_offsetx(WN_kid0(l)),
			    firstprivate_blockp, alloca_blockp, NULL );
	v++;
      } else if (opr == OPR_ARRAY) {
	Localize_Variable ( v, VAR_REDUCTION_ARRAY,
	                    (OPERATOR) WN_pragma_arg2(l),
                            WN_COPY_Tree ( WN_kid0(l) ),
			    WN_st(WN_kid0(WN_kid0(l))),
			    WN_offsetx(WN_kid0(WN_kid0(l))),
			    firstprivate_blockp, alloca_blockp, NULL );
	v++;
      } else {
        Fail_FmtAssertion ( "invalid reduction directive" );
      }
    }
  }

  /* Do lastlocals */
  for (l = lastlocals; l; l = WN_next(l)) {
    if (WN_pragma_arg2(l) & SHARED_DEADOUT)
      Localize_Variable ( v, VAR_LOCAL, OPERATOR_UNKNOWN, NULL, WN_st(l),
                          WN_offsetx(l), firstprivate_blockp,
			  alloca_blockp, NULL );
    else
      Localize_Variable ( v, VAR_LASTLOCAL, OPERATOR_UNKNOWN, NULL,
                          WN_st(l), WN_offsetx(l), firstprivate_blockp,
			  alloca_blockp, NULL );
    v++;
  }
   
  /* Do locals */
  for (l = locals; l; l = WN_next(l)) {
    Localize_Variable ( v, VAR_LOCAL, OPERATOR_UNKNOWN, NULL, WN_st(l),
                        WN_offsetx(l), firstprivate_blockp, alloca_blockp,
			NULL );
    if (lastthread && (v->orig_st == WN_st(lastthread)) &&
	(v->orig_offset == WN_offsetx(lastthread))) {
      WN_st_idx(lastthread) = ST_st_idx(v->new_st);
      WN_set_offsetx(lastthread, v->new_offset);
    }
    v++;
  }

  /* Do firstprivates */
  for (l = firstprivates; l; l = WN_next(l)) {
      // Search for LASTLOCAL entry for l in vtab.
    VAR_TABLE *llv = vtab;

    for ( ; llv->orig_st; llv++)
      if (WN_st(l) == llv->orig_st &&
          (!llv->has_offset || WN_offsetx(l) == llv->orig_offset)) {
          // VAR_LOCAL can happen for SHARED_DEADOUT
        Is_True(llv->vtype == VAR_LASTLOCAL || llv->vtype == VAR_LOCAL,
                ("impossible combination of variable types"));
	break;
      }

    if (!llv->orig_st)
      llv = NULL;

    Localize_Variable ( v, VAR_FIRSTPRIVATE, OPERATOR_UNKNOWN, NULL,
                        WN_st(l), WN_offsetx(l), firstprivate_blockp,
			alloca_blockp, llv );
    if (lastthread && (v->orig_st == WN_st(lastthread)) &&
	(v->orig_offset == WN_offsetx(lastthread))) {
      WN_st_idx(lastthread) = ST_st_idx(v->new_st);
      WN_set_offsetx(lastthread, v->new_offset);
    }
    v++;
  }
}


/*  Determine the final (accumulating) reduction op based on the primary
    reduction op.  This is necessary because OPR_SUB and OPR_DIV must be
    handled specially.  While the individual threads perform a SUB/DIV the
    final reduction op must be ADD/MUL.  */

static OPCODE Make_Final_Reduction_Op ( OPCODE op )
{
  OPERATOR opr = OPCODE_operator(op);

  if (opr == OPR_SUB)
      return (OPCODE_make_op ( OPR_ADD, OPCODE_rtype(op), MTYPE_V ));
  else if (opr == OPR_DIV)
      return (OPCODE_make_op ( OPR_MPY, OPCODE_rtype(op), MTYPE_V ));
  else
      return (op);
}


/*
Set ST of *new_initv to localized version of ST of *old_initv (or just
ST of *old_initv, if it's not localized).
*/

static void
Localize_INITVKIND_SYMOFF(INITV_IDX new_idx, INITV_IDX old_idx, VAR_TABLE *v )
{
  Is_True(new_idx !=0, ("null new_idx"));
  Is_True(old_idx !=0, ("null old_idx"));

  INITV &new_initv = Initv_Table[new_idx];
  INITV &old_initv = Initv_Table[old_idx];

  BOOL same_initv = new_idx == old_idx;
  INITV_IDX orig_next;
  if (same_initv)
    orig_next = INITV_next(old_idx);

  Is_True(INITV_kind(new_initv) == INITVKIND_SYMOFF,
          ("wrong kind of new_initv"));
  Is_True(INITV_kind(old_initv) == INITVKIND_SYMOFF,
          ("wrong kind of old_initv"));

  INITV_Set_SYMOFF(new_initv, INITV_repeat1(old_initv), INITV_st(old_initv),
                   INITV_ofst(old_initv));
  if (same_initv)
    Set_INITV_next(new_idx, orig_next);

  for ( ; v->orig_st; v++) {
    if (ST_st_idx(*v->orig_st) == INITV_st(old_initv) &&
        (!v->has_offset || (v->orig_offset == INITV_ofst(old_initv))) ) {
      INITV_Set_SYMOFF(new_initv, INITV_repeat1(new_initv),
          ST_st_idx(*v->new_st),
	  v->has_offset ? v->new_offset : INITV_ofst(new_initv));
      if (same_initv)
        Set_INITV_next(new_idx, orig_next);
      break;
    }
  }
}


/*
Apply Localize_INITVKIND_SYMOFF() to each INITVKIND_SYMOFF in an INITO.
*/

static void
Localize_All_INITVKIND_SYMOFFs(INITO_IDX obj_idx, VAR_TABLE *vtab )
{
  Is_True(obj_idx !=0, ("null obj_idx"));

  STACK<INITV_IDX> initv_stack(Malloc_Mem_Pool);
  INITV_IDX val_idx = INITO_val(obj_idx);

  while (val_idx) {
    INITVKIND k = INITV_kind(val_idx);
    switch (k) {
      case INITVKIND_SYMOFF:
        Localize_INITVKIND_SYMOFF(val_idx, val_idx, vtab);
	val_idx = INITV_next(val_idx);
	break;

      case INITVKIND_ZERO:
      case INITVKIND_ONE:
      case INITVKIND_VAL:
      case INITVKIND_PAD:
      case INITVKIND_SYMDIFF:   // do we need to localize these next 3?
      case INITVKIND_SYMDIFF16:
      case INITVKIND_LABEL:
	val_idx = INITV_next(val_idx);
	break;

      case INITVKIND_BLOCK:
        initv_stack.Push(val_idx);
	val_idx = INITV_blk(val_idx);
	break;

      default:
	Fail_FmtAssertion ( "unknown INITV kind %d", (INT) k );
    }

    while (!val_idx && initv_stack.Elements() > 0) {
      val_idx = INITV_next(initv_stack.Pop());
    }
  }
}


  // functor class
struct Localize_Nested_PU_Exception_Region {
  INITO_IDX old_inito;
  VAR_TABLE *vtab;
  SYMTAB_IDX level;
  Localize_Nested_PU_Exception_Region(INITO_IDX _old_inito, VAR_TABLE *_vtab,
    SYMTAB_IDX _level) : old_inito(_old_inito), vtab(_vtab), level(_level) { }
  BOOL operator() (UINT32 nested_raw_idx, const INITO *) const {
    INITO_IDX nested_inito_idx = make_INITO_IDX(nested_raw_idx, level);

    if (old_inito == nested_inito_idx) {
      Localize_All_INITVKIND_SYMOFFs(old_inito, vtab);
      return TRUE;
    }
    return FALSE;
  }
};


/*  Process C++ exception handling block.  */

static void Process_Exception_Region ( WN * node, VAR_TABLE * vtab )
{
  char *localname;
  INITO_IDX old_inito, new_inito;
  ST *old_initst, *new_initst;
  INITV_IDX old_initv, new_initv, pinito, parent, prev;
  STACK<INITV_IDX> old_stack(Malloc_Mem_Pool), new_stack(Malloc_Mem_Pool);

  Is_True(((WN_opcode(node) == OPC_REGION) && WN_ereg_supp(node)),
	  ("expecting region node with ereg_supp"));

#ifdef Is_True_On
  switch (mpt) {
  case MPP_SINGLE:
  case MPP_PDO:
  case MPP_PARALLEL_DO:
  case MPP_PARALLEL_REGION:
    break;
  default:
    Fail_FmtAssertion("not inside a PARALLEL region");
  }
#endif

  Set_PU_has_exc_scopes(Pu_Table[ST_pu(*parallel_proc)]);

  old_inito  = WN_ereg_supp(node);

    // Fix PV 560818: Suppose old_inito is associated with the nested PU
    // (as can happen if it appears in a PDO inside a parallel region,
    // since Walk_And_Localize() gets called twice on its region).  Then
    // we localize by replacing old_inito's ST's, because if we had instead
    // created a new INITO then old_inito would have remained associated
    // with the nested PU (which is redundant, and probably incorrect) and
    // might have contained incorrect unlocalized STs.
  if (For_all_until(Inito_Table, Current_scope,
          Localize_Nested_PU_Exception_Region(old_inito, vtab,
	                                      Current_scope)) != 0)
    return;

  old_initst = INITO_st(old_inito);
  old_initv  = INITO_val(old_inito);

  localname = (char *) alloca(strlen(ST_name(old_initst)) + 32);
  sprintf ( localname, "__mpstatic_%s", ST_name(old_initst) );

  new_initst = New_ST (CURRENT_SYMTAB);
  ST_Init (new_initst,
           Save_Str ( localname ),
           ST_class(old_initst),
           ST_sclass(old_initst),
           ST_export(old_initst),
           ST_type(old_initst));

    // is blindly copying all flags correct? -- DRK
  new_initst->flags = old_initst->flags;
  new_initst->flags_ext = old_initst->flags_ext;

    // Because we're moving stmt_block out of the parent PU, and we assume
    // INITO's aren't shared with any other REGION, old_inito will no
    // longer be referenced by any REGION upon return from lower_mp(), so
    // mark its ST as unused. (If it actually is still referenced, we'll
    // hit an assertion in be/cg/cgemit.cxx.) If we don't mark it unused,
    // it may contain references to labels created by
    // Rename_Duplicate_Labels() whose WN's no longer exist in the parent,
    // which would cause a different assertion in cgemit.cxx.
  Set_ST_is_not_used(*old_initst);

  WN_ereg_supp(node) = new_inito = New_INITO ( new_initst );

  pinito = new_inito;
  parent = 0;
  prev = 0;

  while ( old_initv ) {

    (void) Initv_Table.New_entry(new_initv);
    INITV& new_initv_ref = Initv_Table[new_initv];
    INITV& old_initv_ref = Initv_Table[old_initv];

    if (pinito) {
      Set_INITO_val(pinito, new_initv);
      pinito = 0;
    } else if (parent) {
      Set_INITV_blk(parent, new_initv);
      parent = 0;
    } else if (prev) {
      Set_INITV_next(prev, new_initv);
    }

    INITVKIND k = INITV_kind(old_initv);
    switch ( k ) {

    case INITVKIND_SYMOFF:
      INITV_Set_SYMOFF(new_initv_ref, INITV_repeat1(old_initv_ref),
          INITV_st(old_initv_ref), INITV_ofst(old_initv_ref));
      Localize_INITVKIND_SYMOFF(new_initv, old_initv, vtab);
      old_initv = INITV_next(old_initv);
      prev = new_initv;
      break;

    case INITVKIND_ZERO:
      INITV_Set_ZERO(new_initv_ref, INITV_mtype(old_initv_ref),
          INITV_repeat2(old_initv_ref));
      old_initv = INITV_next(old_initv);
      prev = new_initv;
      break;

    case INITVKIND_ONE:
      INITV_Set_ONE(new_initv_ref, INITV_mtype(old_initv_ref),
          INITV_repeat2(old_initv_ref));
      old_initv = INITV_next(old_initv);
      prev = new_initv;
      break;

    case INITVKIND_VAL:
      INITV_Set_VAL(new_initv_ref, INITV_tc(old_initv_ref),
          INITV_repeat2(old_initv_ref));
      old_initv = INITV_next(old_initv);
      prev = new_initv;
      break;

    case INITVKIND_BLOCK:
      INITV_Set_BLOCK(new_initv_ref, INITV_repeat1(old_initv_ref), 0);
      old_stack.Push(old_initv);
      new_stack.Push(new_initv);
      old_initv = INITV_blk(old_initv);
      parent = new_initv;
      prev = 0;
      break;

    case INITVKIND_PAD:
      INITV_Set_PAD(new_initv_ref, INITV_pad(old_initv_ref));
      old_initv = INITV_next(old_initv);
      prev = new_initv;
      break;

    case INITVKIND_SYMDIFF:
    case INITVKIND_SYMDIFF16:
      INITV_Set_SYMDIFF(new_initv_ref, INITV_repeat1(old_initv_ref),
          INITV_lab1(old_initv_ref), INITV_st2(old_initv_ref),
          INITV_kind(old_initv) == INITVKIND_SYMDIFF16);
      old_initv = INITV_next(old_initv);
      prev = new_initv;
      break;

    case INITVKIND_LABEL:
      INITV_Set_LABEL(new_initv_ref, INITV_repeat1(old_initv_ref),
                      Translate_Label(INITV_lab(old_initv_ref)));
      old_initv = INITV_next(old_initv);
      prev = new_initv;
      break;

    default:
      Fail_FmtAssertion ( "unknown INITV kind %d", (INT) k );

    }

    while (!old_initv && old_stack.Elements() > 0) {
      old_initv = INITV_next(old_stack.Pop());
      prev = new_stack.Pop();
    }

  }
  
}


/*
To fix PV 553472, Walk_and_Localize() has to update alias information when
renaming variables in orphaned MP constructs.  These updates require that
we maintain parent pointers.  The following data structure allows
Walk_and_Localize() to maintain a list of parent pointers, for orphaned
constructs only.
*/

class Localize_Parent_Stack {
public:
  BOOL orphaned;
  STACK<WN *> parent_stack; // a node's parent is always below it on the stack
    // If _orphaned is FALSE, wn may be NULL; otherwise wn must be the top
    // of the Whirl tree to be localized
  Localize_Parent_Stack(BOOL _orphaned, WN *top) : orphaned(_orphaned),
    parent_stack(Malloc_Mem_Pool) { Push(top); }
  void Push(WN *wn) { if (orphaned) parent_stack.Push(wn); }
  void Pop() { if (orphaned) (void) parent_stack.Pop(); }
};


#define OMP_NON_POD_LASTLOCAL_FLAG_NAME "__omp_non_pod_lastlocal"
#define OMP_NON_POD_FIRST_AND_LASTLOCAL_FLAG_NAME \
        "__omp_non_pod_first_and_lastlocal"

/*
Return TRUE if wn is an IF node that looks like this:

   IF
     I4I4LDID 0 <1,84,st_name> T<4,.predef_I4,4>
     I4INTCONST 0 (0x0)
    I4I4NE
   THEN
    ....
   END_IF

where st_name can be either __omp_non_pod_lastlocal or
__omp_non_pod_first_and_lastlocal.

If return value is TRUE, return TRUE in *is_first_and_last if st_name
was __omp_non_pod_first_and_lastlocal, FALSE otherwise.
*/

BOOL Is_Nonpod_Finalization_IF(WN *wn, BOOL *is_first_and_last)
{
  if (WN_operator(wn) != OPR_IF)
    return FALSE;

  WN *test = WN_if_test(wn);
  if (WN_operator(test) != OPR_NE)
    return FALSE;

  WN *ldid = WN_kid0(test), *intconst = WN_kid1(test);
  ST *ldid_st;
  if (WN_operator(ldid) != OPR_LDID ||
      (ldid_st = WN_st(ldid)) == NULL)
    return FALSE;

  BOOL first_and_last;

  if (strcmp(ST_name(*ldid_st), OMP_NON_POD_LASTLOCAL_FLAG_NAME) == 0)
    first_and_last = FALSE;
  else if (strcmp(ST_name(*ldid_st),
                  OMP_NON_POD_FIRST_AND_LASTLOCAL_FLAG_NAME) == 0)
    first_and_last = TRUE;
  else
    return FALSE;

  if (WN_operator(intconst) != OPR_INTCONST ||
      WN_rtype(intconst) != MTYPE_I4 ||
      WN_const_val(intconst) != 0)
    return FALSE;

  *is_first_and_last = first_and_last;
  return TRUE;
}


/*
Walk the tree, replacing global references with local ones.  Within
parallel regions, also translate label numbers from those of the parent PU
to those of the child, and generate new INITO/INITV structures (for e.g.
C++ exception handling blocks) for the child PU.

Argument is_par_region must be TRUE iff tree is an MP construct that's a
parallel region.

In a non-recursive call to this routine, output argument
non_pod_finalization must point to a NULL WN *. Upon return,
(*non_pod_finalization) points to the non-POD finalization IF node (if one
was found in the tree), and this IF node is removed from the tree; the IF
node cannot have been the "tree" argument in the non-recursive call.

Note that within orphaned worksharing constructs, non-POD variables have
been localized already by the frontend, so we don't rewrite references to
such variables that appear in vtab.

In a non-recursive call to this routine, it is guaranteed that if the root
node of tree is not a load or store (e.g. it's a DO_LOOP or block), that
root node will not be replaced.
*/

static WN *
Walk_and_Localize (WN * tree, VAR_TABLE * vtab, Localize_Parent_Stack * lps,
                   BOOL is_par_region, WN **non_pod_finalization)
{
  OPCODE op;
  OPERATOR opr;
  INT32 i;
  WN *r;
  WN *temp;
  ST *old_sym;
  WN_OFFSET old_offset;
  VAR_TABLE *w;
  const BOOL is_orphaned_worksharing =
                (mpt == MPP_ORPHANED_PDO || mpt == MPP_ORPHANED_SINGLE);

  /* Ignore NULL subtrees. */

  if (tree == NULL)
    return (tree);

  /* Initialization. */

  op = WN_opcode(tree);
  opr = OPCODE_operator(op);

  /* Look for and replace any nodes referencing localized symbols */

  if (opr == OPR_LDID) {
    old_sym = WN_st(tree);
    old_offset = WN_offsetx(tree);
    for (w=vtab; w->orig_st; w++) {
      if ((w->orig_st == old_sym) &&
	  (w->has_offset ? (w->orig_offset == old_offset) : TRUE ) &&
          (w->vtype != VAR_REDUCTION_ARRAY) &&
	  ! (w->is_non_pod && is_orphaned_worksharing)) {
	if (w->is_static_array) {
	  temp = WN_Lda ( Pointer_type, w->new_offset, w->new_st);
	    // PV 682222: if the MP lowerer introduces LDA's on privatized
	    // ST's, we must run PU_adjust_addr_flags() before we run WOPT
	  Set_BE_ST_pu_needs_addr_flag_adjust (PU_Info_proc_sym(Current_PU_Info));
	  WN_Delete ( tree );
	  tree = temp;
	  // Don't do the following; it depends on a back-end-specific table
	  // that doesn't exist until we're compiling the nested MP
	  // procedure, and addr_used_locally is recomputed by the optimizer
	  // in any case.
	  // Set_BE_ST_addr_used_locally(w->new_st);
	  op = WN_opcode(tree);
	  opr = OPCODE_operator(op);
	} else {
          WN_st_idx(tree) = ST_st_idx(w->new_st);
	  if (w->has_offset)
	    WN_set_offsetx(tree, w->new_offset);
	}
	if (w->is_dynamic_array) {  // fix PV 553472 by updating aliases
            // child of ldst that's on the path to tree
          WN *ldst, *ldst_child = tree;

            // search for first parent that's ILOAD or ISTORE
          for (INT i = 0; i < lps->parent_stack.Elements();
	       i++, ldst_child = ldst) {
            ldst = lps->parent_stack.Top_nth(i);
	    opr = WN_operator(ldst);

              // kid0 of ARRAY must be on path to tree (i.e., tree must
              // be part of the base address computation)
            if (opr == OPR_ARRAY && ldst_child != WN_kid0(ldst))
              break;
              // kid1 of ISTORE must be on path to tree (i.e., tree must
              // be part of the store address computation)
            if (opr == OPR_ISTORE && ldst_child != WN_kid1(ldst))
              break;

            if (opr != OPR_ILOAD && opr != OPR_ISTORE)
              continue;

              // this tells WOPT that despite the fact that w->new_st has
              // the PT_TO_UNIQUE_MEM bit set, ldst in fact accesses memory
              // that's pointed to by w->new_st
            Erase_Restricted_Mapping(ldst);
          }
	}
	break;
      }
    }
  } else if (opr == OPR_STID) {
    old_sym = WN_st(tree);
    old_offset = WN_offsetx(tree);
    for (w=vtab; w->orig_st; w++) {
      if ((w->vtree == NULL) &&
	  (w->orig_st == old_sym) &&
	  (w->has_offset ? (w->orig_offset == old_offset) : TRUE ) &&
	  ! (w->is_non_pod && is_orphaned_worksharing)) {
	WN_st_idx(tree) = ST_st_idx(w->new_st);
	if (w->has_offset)
	  WN_set_offsetx(tree, w->new_offset);
	break;
      }
    }
  } else if (opr == OPR_ILOAD) {
    for (w=vtab; w->orig_st; w++) {
      if ((w->vtree && (WN_Compare_Trees(w->vtree, WN_kid0(tree)) == 0)) ||
	  (w->vtreex && (WN_Compare_Trees(w->vtreex, WN_kid0(tree)) == 0))) {
        Is_True(! w->is_non_pod, ("non-POD pointer expression?!?"));
	temp = WN_RLdid ( Promote_Type(w->mtype), w->mtype, w->new_offset,
			  w->new_st, w->ty );
	WN_DELETE_Tree ( tree );
	tree = temp;
	op = WN_opcode(tree);
	opr = OPCODE_operator(op);
	break;
      }
    }
  } else if (opr == OPR_ISTORE) {
    for (w=vtab; w->orig_st; w++) {
      if ((w->vtree && (WN_Compare_Trees(w->vtree, WN_kid1(tree)) == 0)) ||
	  (w->vtreex && (WN_Compare_Trees(w->vtreex, WN_kid1(tree)) == 0))) {
        Is_True(! w->is_non_pod, ("non-POD pointer expression?!?"));
	temp = WN_Stid ( w->mtype, w->new_offset, w->new_st, w->ty,
			 WN_kid0(tree) );
	WN_linenum(temp) = WN_linenum(tree);
	WN_prev(temp) = WN_prev(tree);
	if (WN_prev(temp))
	  WN_next(WN_prev(temp)) = temp;
	WN_next(temp) = WN_next(tree);
	if (WN_next(temp))
	  WN_prev(WN_next(temp)) = temp;
	WN_DELETE_Tree ( WN_kid1(tree) );
	WN_Delete ( tree );
	tree = temp;
	op = WN_opcode(tree);
	opr = OPCODE_operator(op);
	break;
      }
    }
    // PV 600983: don't translate labels (or exception regions) inside
    // orphaned constructs
  } else if ((op == OPC_REGION) && WN_ereg_supp(tree) &&
             !is_orphaned_worksharing) {
    Process_Exception_Region ( tree, vtab );
  } else if (OPCODE_has_label(op) && is_par_region && 
             !is_orphaned_worksharing) {
    LABEL_IDX new_lab =  Translate_Label (WN_label_number(tree));
    WN_label_number(tree) = new_lab;
  } else if (OPCODE_has_sym(op) && WN_st(tree)) {
    old_sym = WN_st(tree);
    old_offset = OPCODE_has_offset(op) ? WN_offsetx(tree) : 0;
    for (w=vtab; w->orig_st; w++) {
      if ((w->vtype != VAR_REDUCTION_ARRAY) &&
	  (w->orig_st == old_sym) &&
	  (w->has_offset ? (w->orig_offset == old_offset) : TRUE ) &&
	  ! (w->is_non_pod && is_orphaned_worksharing)) {
	WN_st_idx(tree) = ST_st_idx(w->new_st);
	if (OPCODE_has_offset(op) && w->has_offset)
	  WN_set_offsetx(tree, w->new_offset);
	break;
      }
    }
  }

  /* Walk all children */

  lps->Push(tree);
  if (op == OPC_BLOCK) {
    r = WN_first(tree);
    while (r) { // localize each node in block
      r = Walk_and_Localize ( r, vtab, lps, is_par_region, 
                              non_pod_finalization );
      if (WN_prev(r) == NULL)
	WN_first(tree) = r;
      if (WN_next(r) == NULL)
	WN_last(tree) = r;

      if (Is_Nonpod_Finalization_IF(r, &non_pod_first_and_lastprivate)) {
        if (*non_pod_finalization)
          Fail_FmtAssertion("already found non-POD finalization IF");
          // remove mem barriers around the IF
	WN *bar1 = WN_prev(r), *bar2 = WN_next(r), *then = WN_then(r),
	   *bar3 = WN_first(then), *bar4 = WN_last(then);
	Is_True(bar1 && WN_operator(bar1) == OPR_FORWARD_BARRIER,
	        ("bad bar1"));
	Is_True(bar2 && WN_operator(bar2) == OPR_BACKWARD_BARRIER,
	        ("bad bar2"));
	Is_True(bar3 && WN_operator(bar3) == OPR_BACKWARD_BARRIER,
	        ("bad bar3"));
	Is_True(bar4 && WN_operator(bar4) == OPR_FORWARD_BARRIER,
	        ("bad bar4"));
        WN_DELETE_FromBlock(tree, bar1);
        WN_DELETE_FromBlock(tree, bar2);
        WN_DELETE_FromBlock(then, bar3);
        WN_DELETE_FromBlock(then, bar4);
          // extract finalization code without localizing it
	*non_pod_finalization = r;
        WN *tmp = WN_next(r);
        WN_EXTRACT_FromBlock(tree, r);
        r = tmp;
      } else {
      	r = WN_next(r);
      }
    }
  } else {
    for (i=0; i < WN_kid_count(tree); i++)
      WN_kid(tree, i) = Walk_and_Localize ( WN_kid(tree, i), vtab, lps,
                                            is_par_region,
					    non_pod_finalization );
  }
  lps->Pop();

  return (tree);
}   


/*  Create any needed temporaries in local scope.  */

static void Make_Local_Temps ( void )
{
    // note that if multiple orphaned PDO's appear in a PU, then multiple
    // instances of these local variables will be inserted into the PU's
    // symbol table

  mpbase_st = New_ST (CURRENT_SYMTAB);
  ST_Init (mpbase_st,
           Save_Str ( "__mpvar_base" ),
           CLASS_VAR,
           SCLASS_AUTO,
           EXPORT_LOCAL,
           MTYPE_To_TY ( MTYPE_I8 ));
  Set_ST_addr_passed ( mpbase_st );

  mptrips_st = New_ST (CURRENT_SYMTAB);
  ST_Init (mptrips_st,
           Save_Str ( "__mpvar_ntrip" ),
           CLASS_VAR,
           SCLASS_AUTO,
           EXPORT_LOCAL,
           MTYPE_To_TY ( MTYPE_I8 ));
  Set_ST_addr_passed ( mptrips_st );

  mpflags_st = New_ST (CURRENT_SYMTAB);
  ST_Init (mpflags_st,
           Save_Str ( "__mpvar_flags" ),
           CLASS_VAR,
           SCLASS_AUTO,
           EXPORT_LOCAL,
           MTYPE_To_TY ( MTYPE_I4 ));
  Set_ST_addr_passed ( mpflags_st );
}


/***********************************************************************
 *
 * Return a global TY of size 128-bytes, aligned at 128-bytes.
 * Useful for unioning with lock variables.
 *
 ***********************************************************************/
static TY_IDX Lock_Padding_TY () {

  static TY_IDX arr_ty = TY_IDX_ZERO;

  if (arr_ty == TY_IDX_ZERO) {
      // define arr_ty as an array of 128 bytes
    TY& ty = New_TY (arr_ty);
    TY_Init (ty, 128, KIND_ARRAY, MTYPE_UNKNOWN, Save_Str("__lock_pad_type"));
    Set_TY_etype(ty, Be_Type_Tbl(MTYPE_I1));

    ARB_HANDLE arb = New_ARB ();
    ARB_Init (arb, 1, 1, 1);
    Set_ARB_dimension(arb, 1);
    Set_ARB_first_dimen(arb);
    Set_ARB_last_dimen(arb);
    Set_ARB_const_lbnd(arb);
    Set_ARB_lbnd_val(arb,0);
    Set_ARB_const_ubnd(arb);
    Set_ARB_ubnd_val(arb,128-1);
    Set_ARB_const_stride(arb);
    Set_ARB_stride_val(arb,1);

    Set_TY_arb(ty, arb);
    Set_TY_align (arr_ty, 128);
  }

  return arr_ty;
}

/*  Create critical lock temporary in parent scope.  */

static ST * Create_Critical_Lock ( void )
{
  ST *st;
  char st_name[32];

  st = New_ST (GLOBAL_SYMTAB);
  sprintf ( st_name, "__mplock_%d", ++lock_id );
  ST_Init (st,
           Save_Str (st_name),
           CLASS_VAR,
           SCLASS_FSTATIC,
           EXPORT_LOCAL,
           MTYPE_To_TY (MTYPE_I4));
  Set_ST_addr_passed(st);
  Set_ST_is_initialized(st);
  Set_ST_init_value_zero(st);

  shared_table[shared_count++] = st;

  /* pad out to a cache-line. Union it with an 128-byte character array */
  {
    char name[64];
    ST *pad;

    sprintf (name, "%s_pad", st_name);
    pad = New_ST (GLOBAL_SYMTAB);
    ST_Init (pad,
             Save_Str (name),
             CLASS_VAR,
             SCLASS_FSTATIC,
             EXPORT_LOCAL,
             Lock_Padding_TY());
    Set_ST_addr_passed (pad);

    St_Block_Union (st, pad);
  }

  return (st);
}

/*  Create lock variable for named lock i.e. in a COMMON block.
 *  lock_name is the ST for the lock-name.
 */

static ST * Create_Name_Lock (ST* lock_name)
{
  ST *st;
  ST *base_st;
  char *name;

  static TY_IDX struct_ty = 0;

  if (struct_ty == TY_IDX_ZERO) {
    /* Create a struct for the common */
    FLD_HANDLE field = New_FLD ();
    FLD_Init(field, Save_Str("padding"), Lock_Padding_TY(), 0);
    Set_FLD_last_field(field);

    /* Create a struct type with the above fields */
    TY &ty = New_TY(struct_ty);
    TY_Init(ty, TY_size(FLD_type(field)), KIND_STRUCT, MTYPE_M,
            Save_Str("padding_type"));
    Set_TY_fld(ty, field);
    Set_TY_align(struct_ty, TY_align(FLD_type(field)));
  }

  /* Now create the ST entry for the COMMON block */
  name = (char*) alloca (Targ_String_Length(ST_tcon_val(lock_name)) + 30);
  sprintf (name, "__namelock_common_%s",
           Targ_String_Address(ST_tcon_val(lock_name)));

  base_st            = New_ST(GLOBAL_SYMTAB);
  ST_Init(base_st, Save_Str(name), CLASS_VAR, SCLASS_COMMON,
          EXPORT_PREEMPTIBLE, struct_ty);

  /* now create the real ST for the variable */
  sprintf (name, "__namelock_%s",
           Targ_String_Address(ST_tcon_val(lock_name)));
  st = New_ST (GLOBAL_SYMTAB);
  ST_Init(st, Save_Str(name), CLASS_VAR, SCLASS_COMMON, EXPORT_LOCAL,
          MTYPE_To_TY(MTYPE_I4));
  Set_ST_base_idx(st, ST_st_idx(base_st));
  Set_ST_addr_passed(st);
// are these the default for COMMON? -- DRK
//  Set_ST_is_initialized(st);
//  Set_ST_init_value_zero(st);

  return (st);
}


/*  Do all processing necessary for pregs existing in code destined for nested
    procedure.  */

static void Process_Preg_Temps ( WN * tree, BOOL is_region )
{
  INT32 i;
  INT32 tcnt  = PREG_Table_Size(CURRENT_SYMTAB);
  BOOL  anytemp = FALSE;
  ST    *st;
  TY_IDX ty;
  WN    *wn;
  TYPE_ID     mtype;
  PREG_INFO *preg;
  PREG_CLASS  pclass;
  char        tempname[32];

  if (tcnt == 0)
    return;

  PREG_INFO_TABLE prit(&mp_lower_pool, tcnt, TRUE, &preg_info_table);

  /*  Find out information about all preg usage in nested mp PU being
      created.  */

  Walk_and_Info_Pregs ( tree );

  for (wn = reduction_nodes; wn; wn = WN_next(wn))
    if ((WN_opcode(wn) == OPC_PRAGMA) && WN_st(wn) &&
	(ST_class(WN_st(wn)) == CLASS_PREG) &&
	!Preg_Is_Dedicated(WN_offsetx(wn)) )
      prit[Get_Preg_Idx(WN_offsetx(wn))].reduction_list = TRUE;

  for (wn = lastlocal_nodes; wn; wn = WN_next(wn))
    if (WN_st(wn) && (ST_class(WN_st(wn)) == CLASS_PREG) &&
	!Preg_Is_Dedicated(WN_offsetx(wn)) ) {
      prit[Get_Preg_Idx(WN_offsetx(wn))].lastlocal_list = TRUE;
      prit[Get_Preg_Idx(WN_offsetx(wn))].shared_flags = WN_pragma_arg2(wn);
  }

  for (wn = local_nodes; wn; wn = WN_next(wn))
    if (WN_st(wn) && (ST_class(WN_st(wn)) == CLASS_PREG) &&
	!Preg_Is_Dedicated(WN_offsetx(wn)) )
      prit[Get_Preg_Idx(WN_offsetx(wn))].local_list = TRUE;

  for (wn = firstprivate_nodes; wn; wn = WN_next(wn))
    if (WN_st(wn) && (ST_class(WN_st(wn)) == CLASS_PREG) &&
	!Preg_Is_Dedicated(WN_offsetx(wn)) )
          /* Treat FIRSTPRIVATE preg just like a LOCAL one */
      prit[Get_Preg_Idx(WN_offsetx(wn))].local_list = TRUE;

  for (wn = shared_nodes; wn; wn = WN_next(wn))
    if (WN_st(wn) && (ST_class(WN_st(wn)) == CLASS_PREG) &&
	!Preg_Is_Dedicated(WN_offsetx(wn)) ) {
      prit[Get_Preg_Idx(WN_offsetx(wn))].shared_list = TRUE;
      prit[Get_Preg_Idx(WN_offsetx(wn))].shared_flags = WN_pragma_arg2(wn);
    }

  if (if_preamble_block)
    for (wn = WN_first(if_preamble_block); wn; wn = WN_next(wn))
      if ((WN_operator(wn) == OPR_STID) &&
	  (ST_class(WN_st(wn)) == CLASS_PREG) &&
	  !Preg_Is_Dedicated(WN_offsetx(wn)) )
        prit[Get_Preg_Idx(WN_offsetx(wn))].preamble_store = TRUE;

  if (do_preamble_block)
    for (wn = WN_first(do_preamble_block); wn; wn = WN_next(wn))
      if ((WN_operator(wn) == OPR_STID) &&
	  (ST_class(WN_st(wn)) == CLASS_PREG) &&
	  !Preg_Is_Dedicated(WN_offsetx(wn)) )
        prit[Get_Preg_Idx(WN_offsetx(wn))].preamble_store = TRUE;

  /*  Process preg information and create parent temps for any livein /
      liveout values.  */

  for (i = 1; i < tcnt; i++) {
    preg = &prit[i];

    if (preg->type == MTYPE_UNKNOWN)
      pclass = PCLASS_DEADIN_DEADOUT;
    else if (preg->lastlocal_list)
      if (preg->shared_flags & SHARED_DEADOUT)
	pclass = PCLASS_DEADIN_DEADOUT;
      else
	pclass = PCLASS_DEADIN_LIVEOUT;
    else if (preg->local_list)
      if (preg->preamble_store)
        pclass = PCLASS_COPYIN_DEADOUT;
      else
        pclass = PCLASS_DEADIN_DEADOUT;
    else if (preg->reduction_list)
      pclass = PCLASS_LIVEIN_LIVEOUT;
    else if (preg->shared_list)
      if (preg->shared_flags & SHARED_DEADIN)
	if (preg->shared_flags & SHARED_DEADOUT)
	  pclass = PCLASS_DEADIN_DEADOUT;
	else
	  pclass = PCLASS_DEADIN_LIVEOUT;
      else
	if (preg->shared_flags & SHARED_DEADOUT)
	  pclass = PCLASS_LIVEIN_DEADOUT;
	else
	  pclass = PCLASS_LIVEIN_LIVEOUT;
    else if (preg->preamble_store)
      pclass = PCLASS_COPYIN_DEADOUT;
    else
      pclass = PCLASS_DEADIN_DEADOUT;
    preg->pclass = pclass;

    if (pclass != PCLASS_DEADIN_DEADOUT) {

      anytemp = TRUE;
      PREG_NUM pnum = Get_Preg_Num(i);
      mtype = preg->type;
      ty = MTYPE_To_TY ( mtype );
      sprintf ( tempname, "__mptemp_preg%d", pnum );

      st = New_ST ( );
      ST_Init ( st, Save_Str ( tempname ), CLASS_VAR, SCLASS_AUTO,
        EXPORT_LOCAL, ty );

      Set_ST_has_nested_ref ( st );

      preg->temp = st;

        // if preg is copyin or livein, spill to corresponding temp in parent
      if ((pclass == PCLASS_COPYIN_DEADOUT) ||
	  (pclass == PCLASS_COPYIN_COPYOUT) ||
	  (pclass == PCLASS_LIVEIN_DEADOUT) ||
	  (pclass == PCLASS_LIVEIN_LIVEOUT)) {
	wn = WN_Stid ( mtype, 0, st, ty, WN_LdidPreg ( mtype, pnum ));
	WN_linenum(wn) = line_number;
	if (livein_block == NULL)
	  livein_block = WN_CreateBlock ( );
	WN_INSERT_BlockLast ( livein_block, wn );
      }

        // if preg is copyin, restore from parent's temp to child's preg
      if ((pclass == PCLASS_COPYIN_DEADOUT) ||
	  (pclass == PCLASS_COPYIN_COPYOUT)) {
	wn = WN_StidIntoPreg ( mtype, pnum, MTYPE_To_PREG ( mtype ),
			       WN_RLdid ( Promote_Type(mtype), mtype, 0, st,
					  ty ));
	WN_linenum(wn) = line_number;
	if (copyin_block == NULL)
	  copyin_block = WN_CreateBlock ( );
	WN_INSERT_BlockLast ( copyin_block, wn );
      }

        // if preg is copyout, spill child's preg to parent's temp
      if ((pclass == PCLASS_DEADIN_COPYOUT) ||
	  (pclass == PCLASS_COPYIN_COPYOUT)) {
	wn = WN_Stid ( mtype, 0, st, ty, WN_LdidPreg ( mtype, pnum ));
	WN_linenum(wn) = line_number;
	if (copyout_block == NULL)
	  copyout_block = WN_CreateBlock ( );
	WN_INSERT_BlockLast ( copyout_block, wn );
      }

        // if preg is copyout or liveout, restore parent's preg from temp
      if ((pclass == PCLASS_DEADIN_COPYOUT) ||
	  (pclass == PCLASS_COPYIN_COPYOUT) ||
	  (pclass == PCLASS_DEADIN_LIVEOUT) ||
	  (pclass == PCLASS_LIVEIN_LIVEOUT)) {
	wn = WN_StidIntoPreg ( mtype, pnum, MTYPE_To_PREG ( mtype ),
			       WN_RLdid ( Promote_Type(mtype), mtype, 0, st,
					  ty ));
	WN_linenum(wn) = line_number;
	if (liveout_block == NULL)
	  liveout_block = WN_CreateBlock ( );
	WN_INSERT_BlockLast ( liveout_block, wn );
	shared_table[shared_count++] = st;
      }

    }
  }

  /*  Finally, translate appropriate preg usage to uplevel temp usage.  */

  if (anytemp) {

    Walk_and_Replace_Pregs ( tree );

    for (wn = reduction_nodes; wn; wn = WN_next(wn))
      if ((WN_opcode(wn) == OPC_PRAGMA) && WN_st(wn) &&
	  (ST_class(WN_st(wn)) == CLASS_PREG) &&
	  !Preg_Is_Dedicated(WN_offsetx(wn)) ) {
	PREG_NUM pnum = Get_Preg_Idx(WN_offsetx(wn));
	preg = &prit[pnum];
	if (preg->temp) {
	  WN_st_idx(wn) = ST_st_idx(preg->temp);
	  WN_set_offsetx(wn, 0);
	}
      } else if (WN_opcode(wn) == OPC_XPRAGMA)
	Walk_and_Replace_Pregs ( WN_kid0(wn) );

    for (wn = lastlocal_nodes; wn; wn = WN_next(wn))
      if (WN_st(wn) && (ST_class(WN_st(wn)) == CLASS_PREG) &&
	  !Preg_Is_Dedicated(WN_offsetx(wn)) ) {
	PREG_NUM pnum = Get_Preg_Idx(WN_offsetx(wn));
	preg = &prit[pnum];
	if (preg->temp) {
	  WN_st_idx(wn) = ST_st_idx(preg->temp);
	  WN_set_offsetx(wn, 0);
	}
      }

    for (wn = local_nodes; wn; wn = WN_next(wn))
      if (WN_st(wn) && (ST_class(WN_st(wn)) == CLASS_PREG) &&
	  !Preg_Is_Dedicated(WN_offsetx(wn)) ) {
	PREG_NUM pnum = Get_Preg_Idx(WN_offsetx(wn));
	preg = &prit[pnum];
	if (preg->temp) {
	  WN_st_idx(wn) = ST_st_idx(preg->temp);
	  WN_set_offsetx(wn, 0);
	}
      }

    for (wn = firstprivate_nodes; wn; wn = WN_next(wn))
      if (WN_st(wn) && (ST_class(WN_st(wn)) == CLASS_PREG) &&
	  !Preg_Is_Dedicated(WN_offsetx(wn)) ) {
	PREG_NUM pnum = Get_Preg_Idx(WN_offsetx(wn));
	preg = &prit[pnum];
	if (preg->temp) {
	  WN_st_idx(wn) = ST_st_idx(preg->temp);
	  WN_set_offsetx(wn, 0);
	}
      }

    for (wn = shared_nodes; wn; wn = WN_next(wn))
      if (WN_st(wn) && (ST_class(WN_st(wn)) == CLASS_PREG) &&
	  !Preg_Is_Dedicated(WN_offsetx(wn)) ) {
	PREG_NUM pnum = Get_Preg_Idx(WN_offsetx(wn));
	preg = &prit[pnum];
	if (preg->temp) {
	  WN_st_idx(wn) = ST_st_idx(preg->temp);
	  WN_set_offsetx(wn, 0);
	}
      }

  }
}


/*
Transfer all maps (except WN_MAP_FEEDBACK) associated with each node in the
tree from the parent mapset to the kid's.
*/

static void
Transfer_Maps_R ( WN_MAP_TAB * parent, WN_MAP_TAB * child, WN * tree,
                  RID * root_rid );

static void
Transfer_Maps ( WN_MAP_TAB * parent, WN_MAP_TAB * child, WN * tree,
                RID * root_rid )
{
    // to preserve WN_MAP_FEEDBACK in child map table, copy its contents
    // to fb_map
  HASH_TABLE<WN *, INT32> fb_map(NUM_HASH_ELEMENTS, Malloc_Mem_Pool);
  WN_ITER *wni = WN_WALK_TreeIter(tree);

  for ( ; wni; wni = WN_WALK_TreeNext(wni)) {
    WN *wn = WN_ITER_wn(wni);

    fb_map.Enter(wn, IPA_WN_MAP32_Get(child, WN_MAP_FEEDBACK, wn));
  }

  Transfer_Maps_R(parent, child, tree, root_rid); // overwrites WN_MAP_FEEDBACK

    // now restore values for WN_MAP_FEEDBACK from fb_map
  HASH_TABLE_ITER<WN *, INT32> fb_map_iter(&fb_map);
  WN *wn;
  INT32 val;

  while (fb_map_iter.Step(&wn, &val))
    IPA_WN_MAP32_Set(child, WN_MAP_FEEDBACK, wn, val);

//  parent->_is_used[WN_MAP_FEEDBACK] = is_used;  // restore the flag
} // Transfer_Maps

// this function does the real work
static void
Transfer_Maps_R ( WN_MAP_TAB * parent, WN_MAP_TAB * child, WN * tree,
                  RID * root_rid )
{
  WN *node;
  INT32 i;

  if (tree) {
    if (WN_opcode(tree) == OPC_BLOCK) {
      for (node = WN_first(tree); node; node = WN_next(node))
	Transfer_Maps_R ( parent, child, node, root_rid );
    } else
      for (i = 0; i < WN_kid_count(tree); i++)
	Transfer_Maps_R ( parent, child, WN_kid(tree, i), root_rid );

    if (WN_map_id(tree) != -1) {
      RID *rid = REGION_get_rid ( tree );
      IPA_WN_Move_Maps_PU ( parent, child, tree );
      if (WN_opcode(tree) == OPC_REGION) {
	Is_True(root_rid != NULL, ("Transfer_Maps_R, NULL root RID"));
	RID_unlink ( rid );
	RID_Add_kid ( rid, root_rid );
      } 
    }
  }
} // Transfer_Maps_R


ST_IDX Make_MPRuntime_ST ( MPRUNTIME rop )
{
  Is_True(rop >= MPRUNTIME_FIRST && rop <= MPRUNTIME_LAST,
          ("Make_MPRuntime_ST: bad rop == %d", (INT) rop));

    // If the global type doesn't exist, create it and its pointer type.
  if (mpruntime_ty == TY_IDX_ZERO) {
    TY &mpr_ty = New_TY ( mpruntime_ty );
    TY_Init(mpr_ty, 0, KIND_FUNCTION, MTYPE_UNKNOWN,
            Save_Str(".mpruntime"));
    Set_TY_align(mpruntime_ty, 1);

    TYLIST_IDX parm_idx;
    TYLIST& parm_list = New_TYLIST(parm_idx);
    Set_TY_tylist(mpr_ty, parm_idx);
    Set_TYLIST_type(parm_list, Be_Type_Tbl(MTYPE_I4));  // I4 return type
      // are there really no parameters? -- DRK
    Set_TYLIST_type(New_TYLIST(parm_idx), TY_IDX_ZERO); // end of parm list

    TY_IDX ty_idx;
    TY &ty = New_TY ( ty_idx );
    TY_Init(ty, Pointer_Size, KIND_POINTER, Pointer_Mtype,
      Save_Str ( ".mpruntime_ptr" ));
    Set_TY_pointed(ty, mpruntime_ty);

    Set_TY_align(ty_idx, Pointer_Size); // unnecessary? TY_Init does
                                        // not set alignment -- DRK
  }

  PU_IDX pu_idx;
  PU& pu = New_PU(pu_idx);
  PU_Init(pu, mpruntime_ty, CURRENT_SYMTAB);

  /*  Create the ST, fill in all appropriate fields and enter into the */
  /*  global symbol table.  */

  ST *st = New_ST ( GLOBAL_SYMTAB );
  ST_Init(st, Save_Str ( mpr_names[rop] ), CLASS_FUNC, SCLASS_EXTERN,
    EXPORT_PREEMPTIBLE, pu_idx);

  Allocate_Object ( st );

  mpr_sts[rop] = ST_st_idx(*st);
  return mpr_sts[rop];
}


/*  Generate an appropriate load WN based on an ST.  */

static WN * Gen_MP_Load ( ST * st, WN_OFFSET offset )
{
  WN *wn;
  TY_IDX ty = ST_type(st);

  wn = WN_RLdid ( Promote_Type(TY_mtype(ty)),
                  TY_mtype(ty), offset, st, ty );

  return (wn);
}


/*  Generate an appropriate store WN based on an ST.  */

static WN * Gen_MP_Store ( ST * st, WN_OFFSET offset, WN * value )
{
  WN *wn;
  TY_IDX ty = ST_type(st);

  wn = WN_Stid ( TY_mtype(ty), offset, st, ty, value );
  WN_linenum(wn) = line_number;

  return (wn);
}


/*  Generate appropriate load/store WN's based on two ST's.  */

static WN * Gen_MP_Load_Store ( ST * from_st, WN_OFFSET from_offset,
				ST * to_st,   WN_OFFSET to_offset,
				BOOL is_dynamic )
{
  TY_IDX ty;
  TY_IDX pty;
  WN *wn;
  WN *laddr_wn;
  WN *saddr_wn;
  WN *bytes_wn;
  BOOL is_from_ptr;
  BOOL is_to_ptr;

  is_from_ptr = (TY_kind(ST_type(from_st)) == KIND_POINTER);
  is_to_ptr   = (TY_kind(ST_type(to_st)) == KIND_POINTER);
  if (is_from_ptr && is_to_ptr && !is_dynamic)
    is_from_ptr = is_to_ptr = FALSE;

  ty = (is_from_ptr) ? TY_pointed(ST_type(from_st)) : ST_type(from_st);

  if ((TY_kind(ty) != KIND_ARRAY) && (TY_kind(ty) != KIND_STRUCT))
    wn = Gen_MP_Store ( to_st, to_offset,
			Gen_MP_Load ( from_st, from_offset ));
  else {
    if (TY_size(ty) > INT32_MAX)
      bytes_wn = WN_Intconst ( MTYPE_I8, TY_size(ty) );
    else if (TY_size(ty) > 0)
      bytes_wn = WN_Intconst ( MTYPE_I4, TY_size(ty) );
    else
      bytes_wn = Calculate_Array_Size ( from_st, ty );
    if (is_from_ptr)
      laddr_wn = WN_RLdid ( Promote_Type(Pointer_type), Pointer_type,
			    from_offset, from_st, ST_type(from_st) );
    else
      laddr_wn = WN_Lda ( Pointer_type, from_offset, from_st );
    if (is_to_ptr)
      saddr_wn = WN_RLdid ( Promote_Type(Pointer_type), Pointer_type,
			    to_offset, to_st, ST_type(to_st) );
    else
      saddr_wn = WN_Lda ( Pointer_type, to_offset, to_st );
    pty = Make_Pointer_Type ( ty, FALSE );
    wn = WN_CreateMstore ( 0, pty,
			   WN_CreateMload ( 0, pty, laddr_wn,
					    WN_COPY_Tree (bytes_wn) ),
			   saddr_wn, bytes_wn );
  }

  return (wn);
}


/*  Generate a setup call.  */

static WN * Gen_MP_Setup ( void )
{
  WN *wn;

  wn = WN_Create ( OPC_VCALL, 0 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_SETUP );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  return (wn);
}


/*  Generate a cleanup call.  */

static WN * Gen_MP_Cleanup ( void )
{
  WN *wn;

  wn = WN_Create ( OPC_VCALL, 0 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_CLEANUP );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  return (wn);
}


/*  Generate a getlock call.  */

extern WN * Gen_MP_Getlock ( ST * lock )
{
  WN *wn;
  WN *wnx;

  wn = WN_Create ( OPC_VCALL, 1 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_GETLOCK );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Mod ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  wnx = WN_Lda ( Pointer_type, 0, lock );
  WN_kid0(wn) = WN_CreateParm ( Pointer_type, wnx, WN_ty(wnx),
				WN_PARM_BY_REFERENCE );

  return (wn);
}


/*  Generate a unlock call.  */

extern WN * Gen_MP_Unlock ( ST * lock )
{
  WN *wn;
  WN *wnx;

  wn = WN_Create ( OPC_VCALL, 1 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_UNLOCK );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Mod ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  wnx = WN_Lda ( Pointer_type, 0, lock );
  WN_kid0(wn) = WN_CreateParm ( Pointer_type, wnx, WN_ty(wnx),
				WN_PARM_BY_REFERENCE );

  return (wn);
}


/*  Generate a barrier call.  */

static WN * Gen_MP_Barrier (BOOL is_omp)
{
  WN *wn;

  wn = WN_Create ( OPC_VCALL, 0 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( is_omp ? MPR_OMP_BARRIER : MPR_BARRIER );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  return (wn);
}

/*  Generate a setlock call.  */

extern WN * Gen_MP_Setlock ( void )
{
  WN *wn;

  wn = WN_Create ( OPC_VCALL, 0 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_SETLOCK );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  return (wn);
}



/*  Generate a unsetlock call.  */

extern WN * Gen_MP_Unsetlock ( void )
{
  WN *wn;

  wn = WN_Create ( OPC_VCALL, 0 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_UNSETLOCK );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  return (wn);
}


/*  Generate an enter_gate call.  */

static WN * Gen_MP_Enter_Gate (INT32 construct_num)
{
  WN *wn;

  wn = WN_Create ( OPC_VCALL, 1 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_ENTER_GATE );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  WN_kid0(wn) = WN_CreateParm (MTYPE_I4,
                               WN_CreateIntconst (OPC_I4INTCONST,
                                                  construct_num),
                               Be_Type_Tbl(MTYPE_I4),
                               WN_PARM_BY_VALUE);
  return (wn);
}


/*  Generate an exit_gate call.  */

static WN * Gen_MP_Exit_Gate (INT32 construct_num)
{
  WN *wn;

  wn = WN_Create ( OPC_VCALL, 1 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_EXIT_GATE );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  WN_kid0(wn) = WN_CreateParm (MTYPE_I4,
                               WN_CreateIntconst (OPC_I4INTCONST,
                                                  construct_num),
                               Be_Type_Tbl(MTYPE_I4),
                               WN_PARM_BY_VALUE);
  return (wn);
}


/*
copyin_wn must be a COPYIN pragma from an OpenMP PARALLEL or
combined worksharing directive.

Returns TRUE if copyin_wn is an OMP C++ non-POD COPYIN clause, FALSE
otherwise.
*/

static BOOL
is_omp_non_pod_copyin(WN *copyin_wn)
{
  if (WN_opcode(copyin_wn) != OPC_XPRAGMA ||
      !WN_pragma_omp(copyin_wn))
    return FALSE;

  WN *kid = WN_kid0(copyin_wn);
  if (!kid)
    return FALSE;

  ST *st = WN_st(kid);
  if (!st)
    return FALSE;

  return (ST_sym_class(st) == CLASS_FUNC);
}


/*  Generate a copyin call.  */

static WN * Gen_MP_Copyin ( BOOL is_omp )
{
  WN *wn;
  WN *wnx;
  WN *wny;
  TY_IDX ty;
  INT32 kid;
  INT32 size;
  BOOL have_pods = FALSE;
  BOOL have_nonpods = FALSE;
  INT count = 0;
  WN *block = WN_CreateBlock();

  // First scan the COPYIN nodes to determine what all we need
  // i.e. just PODS, just non-PODS, or both.

  for (wnx = copyin_nodes; wnx; wnx = WN_next(wnx)) {

    if (is_omp && is_omp_non_pod_copyin(wnx)) {
      // wnx must be a copyin for a C++ non-POD object.
      // We need to create special calls for those, and return them in
      // a block node. Process them in the subsequent loop.
      have_nonpods = TRUE;
    }
    else {
      // non-PODS require just a single call to mp/omp_copyin.
      count++;
      have_pods = TRUE;
    }
  }

  if (have_pods) {
    wn = WN_Create ( OPC_VCALL, 2 * count + 1 );
    WN_st_idx(wn) = (is_omp ? GET_MPRUNTIME_ST (MPR_OMP_COPYIN) :
                     GET_MPRUNTIME_ST ( MPR_COPYIN ));
    WN_Set_Call_Non_Data_Mod ( wn );
    WN_Set_Call_Non_Data_Ref ( wn );
    WN_Set_Call_Non_Parm_Mod ( wn );
    WN_Set_Call_Non_Parm_Ref ( wn );
    WN_Set_Call_Parm_Mod ( wn );
    WN_Set_Call_Parm_Ref ( wn );
    WN_linenum(wn) = line_number;

    WN_kid0(wn) = WN_CreateParm ( MTYPE_I4,
                                  WN_Intconst ( MTYPE_I4, count ),
                                  Be_Type_Tbl(MTYPE_I4), WN_PARM_BY_VALUE );

    for (wnx = copyin_nodes, kid = 1; wnx; wnx = WN_next(wnx), kid += 2) {

      if (is_omp && is_omp_non_pod_copyin(wnx)) {
        continue; // skip C++ non-PODs
      }

      if (WN_opcode(wnx) == OPC_PRAGMA) {
        wny = WN_Lda ( Pointer_type, WN_offsetx(wnx), WN_st(wnx) );
        ty = ST_type(WN_st(wnx));
        size = TY_size(ty);
      } else if (WN_operator(WN_kid0(wnx)) == OPR_LDA) {
        wny = WN_COPY_Tree ( WN_kid0(wnx) );
        ty = ST_type(WN_st(WN_kid0(wnx)));
        size = TY_size(ty);
      } else if ((WN_operator(WN_kid0(wnx)) == OPR_ARRAY) &&
                 (WN_operator(WN_kid0(WN_kid0(wnx))) == OPR_LDA)) {
        wny = WN_COPY_Tree ( WN_kid0(wnx) );
        ty = TY_AR_etype(ST_type(WN_st(WN_kid0(WN_kid0(wnx))))); 
        size = TY_size(ty);
      } else
        Fail_FmtAssertion ( "bad copyin node (%s) in MP processing",
                            OPCODE_name(WN_opcode(WN_kid0(wnx))) );

      WN_kid(wn,kid)   = WN_CreateParm ( Pointer_type, wny,
                                         Make_Pointer_Type ( ty,
                                                             FALSE ),
                                         WN_PARM_BY_REFERENCE );
      WN_kid(wn,kid+1) = WN_CreateParm ( MTYPE_I4,
                                         WN_Intconst ( MTYPE_I4, size ),
                                         Be_Type_Tbl(MTYPE_I4),
                                         WN_PARM_BY_VALUE );
    }
    WN_INSERT_BlockFirst (block, wn);
  }

  if (have_nonpods) {

    for (wnx = copyin_nodes; wnx; wnx = WN_next(wnx)) {

      if (!(is_omp && is_omp_non_pod_copyin(wnx))) {
        continue; // skip PODs
      }

      ST* st = WN_st(wnx);
      TY_IDX ty = ST_type(st);
      
      if (TY_kind(ty) != KIND_ARRAY) {

        // scalar non-POD

        wn = WN_Create (OPC_VCALL, 2);
        WN_st_idx(wn) = (GET_MPRUNTIME_ST (MPR_OMP_NONPOD_COPYIN));
        WN_Set_Call_Non_Data_Mod ( wn );
        WN_Set_Call_Non_Data_Ref ( wn );
        WN_Set_Call_Non_Parm_Mod ( wn );
        WN_Set_Call_Non_Parm_Ref ( wn );
        WN_Set_Call_Parm_Mod ( wn );
        WN_Set_Call_Parm_Ref ( wn );
        WN_linenum(wn) = line_number;
      
        // pass the address of the object
        WN *obj = WN_CreateLda (OPCODE_make_op(OPR_LDA, Pointer_type, MTYPE_V),
                                0,
                                Make_Pointer_Type(ty,FALSE),
                                st);
        WN_kid0(wn) = WN_CreateParm (Pointer_type,
                                     obj,
                                     Make_Pointer_Type(ty, FALSE),
                                     WN_PARM_BY_REFERENCE);
        // second argument is the address of the assignment operator
        FmtAssert (ST_export(WN_st(WN_kid0(wnx))) == EXPORT_PREEMPTIBLE,
                   ("COPYIN (%s) requires a pre-emptible assignment operator",
                    ST_name(st)));
        WN_kid1(wn) = WN_CreateParm(Pointer_type,
                                    WN_COPY_Tree(WN_kid0(wnx)),
                                    WN_ty(WN_kid0(wnx)),
                                    WN_PARM_BY_REFERENCE);
      }
      else {

        // array non-pod 
        // Since these are thread-private, they must be globals,
        // therefore they must be fixed size, and cannot be VLAs.

        wn = WN_Create (OPC_VCALL, 4);
        WN_st_idx(wn) = (GET_MPRUNTIME_ST (MPR_OMP_NONPOD_ARRAY_COPYIN));
        WN_Set_Call_Non_Data_Mod ( wn );
        WN_Set_Call_Non_Data_Ref ( wn );
        WN_Set_Call_Non_Parm_Mod ( wn );
        WN_Set_Call_Non_Parm_Ref ( wn );
        WN_Set_Call_Parm_Mod ( wn );
        WN_Set_Call_Parm_Ref ( wn );
        WN_linenum(wn) = line_number;
      
        // pass the address of the object
        WN *obj = WN_CreateLda (OPCODE_make_op(OPR_LDA, Pointer_type, MTYPE_V),
                                0,
                                Make_Pointer_Type(ty, FALSE),
                                st);
        WN_kid(wn,0) = WN_CreateParm (Pointer_type,
                                     obj,
                                     Make_Pointer_Type(ty, FALSE),
                                     WN_PARM_BY_REFERENCE);

        // second argument is the address of the assignment operator
        FmtAssert (ST_export(WN_st(WN_kid0(wnx))) == EXPORT_PREEMPTIBLE,
                   ("COPYIN (%s) requires a pre-emptible assignment operator",
                    ST_name(st)));
        WN_kid(wn,1) = WN_CreateParm(Pointer_type,
                                     WN_COPY_Tree(WN_kid0(wnx)),
                                     WN_ty(WN_kid0(wnx)),
                                     WN_PARM_BY_REFERENCE);

        // third argument is the size of each element
        INT size;
        size = TY_size(TY_AR_etype(ty));
        WN_kid(wn,2) = WN_CreateParm(MTYPE_I8,
                                     WN_CreateIntconst (OPC_I8INTCONST,size),
                                     Be_Type_Tbl(MTYPE_I8),
                                     WN_PARM_BY_VALUE);

        // fourth argument is the number of elements
        INT64 num_elems = 1;
        for (INT i=0; i<TY_AR_ndims(ty); i++) {

          FmtAssert (TY_AR_const_ubnd(ty,i) &&
                     TY_AR_const_lbnd(ty,i) &&
                     TY_AR_const_stride(ty,i),
                     ("COPYIN array (%s) has non-const bounds. Weird!\n",
                      ST_name(st)));

          num_elems = num_elems * (TY_AR_ubnd_val(ty,i) -
                                   TY_AR_lbnd_val(ty,i) + 1);
        }
        WN* elems = WN_CreateIntconst(OPC_I8INTCONST,num_elems);
        WN_kid(wn,3) = WN_CreateParm(MTYPE_I8,
                                     elems,
                                     Be_Type_Tbl(MTYPE_I8),
                                     WN_PARM_BY_VALUE);
      }
      
      WN_INSERT_BlockLast (block, wn);
    }
  }

  return (block);
}


/*
Given a REDUCTION_LIST for an MP construct, return an estimate (in machine
cycles) of the time for combining all the partial (local) reduction results
into the final (shared) result.  Return TRUE in *using_critical if all the
combining operations should be lowered by wrapping them in a single
CRITICAL section, or FALSE if each combining operation should be lowered as
an individual ATOMIC operation.

For now, assume 250 MHz Origin with 8 processors.  Eventually these values
should come from platform-dependent tables (maybe targ_info?).
*/

INT
MP_Reduction_Combine_Cycles(REDUCTION_LIST *rlist, BOOL *using_critical)
{
  Is_True(rlist->Elements() > 0, ("no reductions"));

  const double cycle_time = 1 / 250.0e6;
  const double crit_time = 20.6e-6;   // time for a CRITICAL section
  const double cas_time =   8.9e-6;   // time for a compare-and-swap
  const double fop_time =   8.4e-6;   // time for a fetch-and-op

  INT tot_cycles = 0, i;

  *using_critical = TRUE;

#ifdef TARG_IA32
  return tot_cycles;
#endif

  if (rlist->Elements() > 2) {
    return (INT)(crit_time / cycle_time);
  }

    // if any reduction operation is "&&" or "||", we must use CRITICAL
  for (i = 0; i < rlist->Elements(); i++) {
    OPERATOR oper = WN_operator(WN_kid0((*rlist)[i]));
    if (oper == OPR_CAND || oper == OPR_CIOR)
      return (INT)(crit_time / cycle_time);
  }

  for (i = 0; i < rlist->Elements(); i++) {
    switch (WN_ATOMIC_STORE_Lowering_Class((*rlist)[i])) {
    case ALCLASS_SWAP:
      tot_cycles += (INT)(cas_time / cycle_time);
      break;
    case ALCLASS_DIRECT:
      tot_cycles += (INT)(fop_time / cycle_time);
      break;
    case ALCLASS_CRITICAL:
      return (INT)(crit_time / cycle_time);
    default:
      Fail_FmtAssertion("bogus ATOMIC_Lowering_Class");
    }
  }

  *using_critical = FALSE;
  return tot_cycles;
}


/*
Generate code blocks for initialization and final combine-and-store for all
reductions in a parallel construct.  Should only be called if var_table
contains reduction variables.  Returns init/store code in
init_block/store_block, with the root always a WHIRL block.

By default, we guard all operations for combining partial reduction results
into final results by a single critical section.  However, if there are 2
or fewer reductions in the construct and all combining operations can be
performed atomically using Compare-and-swap or Fetch-and-op, then we use
the atomic operations instead of a critical section.

The cutoff point of 2 was determined by measurements of the cost of
the final combining using critical sections and atomic operations, on a 250
MHz. Origin2000 using 8 processors.  The atomic version took about 7,500
cycles, while the critical section took about 15,000.
*/

static void
Gen_MP_Reduction(VAR_TABLE *var_table, INT num_vars, WN **init_block,
                 WN **store_block)
{
  INT i, num_redns = 0;
  VAR_TABLE *v;

  *init_block = WN_CreateBlock ( );
  *store_block = WN_CreateBlock ( );

    // init. of partial reduction result
  for (i = 0, v = var_table; i < num_vars; i++, v++)
    if (v->vtype == VAR_REDUCTION_SCALAR ||
        v->vtype == VAR_REDUCTION_ARRAY) {
      num_redns++;
      WN_INSERT_BlockLast(*init_block,
          Gen_MP_Store(v->new_st, v->new_offset,
                       Make_Reduction_Identity(v->reduction_opr,
		                               v->mtype)));
    }

  Is_True(num_redns > 0, ("no reductions!"));

  REDUCTION_LIST redn_list(&mp_lower_pool);

    // count number of reductions we can do atomically
  for (i = 0, v = var_table; i < num_vars; i++, v++)
    if (v->vtype == VAR_REDUCTION_SCALAR ||
        v->vtype == VAR_REDUCTION_ARRAY) {

        // try representing combining computation as ATOMIC
      WN *atomic = WN_CreatePragma(WN_PRAGMA_ATOMIC, (ST*) 0, 0, 0);
      WN_INSERT_BlockLast(*store_block, atomic);

        // compute lvalue for final result
      WN *orig_val = (v->vtype == VAR_REDUCTION_SCALAR) ?
                    Gen_MP_Load(v->orig_st, v->orig_offset) :
                    WN_Iload(v->mtype, 0, v->ty, WN_COPY_Tree(v->vtree));
      WN *new_val = Gen_MP_Load(v->new_st, v->new_offset);
      if ( (v->reduction_opr == OPR_CAND || v->reduction_opr == OPR_CIOR) &&
           (v->mtype == MTYPE_F4 || v->mtype == MTYPE_F8 ||
	    v->mtype == MTYPE_FQ) ) {
          // convert float to integer for C operators && and || : PV 677602
        orig_val = WN_NE(v->mtype, orig_val, 
                         Make_Const(Host_To_Targ_Float(v->mtype, 0.0)));
        new_val = WN_NE(v->mtype, new_val,
                        Make_Const(Host_To_Targ_Float(v->mtype, 0.0)));
      }
      WN *result = WN_CreateExp2(Make_Final_Reduction_Op(v->reduction_opc),
                                 orig_val, new_val);

        // add CVT if needed
      TYPE_ID restype = OPCODE_rtype(v->reduction_opc);
      switch (v->mtype) { 
      case MTYPE_I1: 
        result = WN_CreateCvtl(OPC_I4CVTL, 8, result);
        restype = MTYPE_I4; 
        break;
      case MTYPE_I2: 
        result = WN_CreateCvtl(OPC_I4CVTL, 16, result);
        restype = MTYPE_I4; 
	break;
      case MTYPE_U1: 
	result = WN_CreateCvtl(OPC_U4CVTL, 8, result);
        restype = MTYPE_U4; 
	break;
      case MTYPE_U2: 
	result = WN_CreateCvtl(OPC_U4CVTL, 16, result);
        restype = MTYPE_U4; 
	break;
      } 
      if ( ( (restype == MTYPE_I4 || restype == MTYPE_I8 ||
              restype == MTYPE_U4 || restype == MTYPE_U8) &&
             (v->mtype == MTYPE_F4 || v->mtype == MTYPE_F8 ||
	      v->mtype == MTYPE_FQ) ) ||
           ( (v->mtype == MTYPE_I4 || v->mtype == MTYPE_I8 ||
              v->mtype == MTYPE_U4 || v->mtype == MTYPE_U8) &&
             (restype == MTYPE_F4 || restype == MTYPE_F8 ||
	      restype == MTYPE_FQ) ) )
        result = WN_Cvt(restype, v->mtype, result);
      else if ((restype == MTYPE_I4 || restype == MTYPE_I8 ||
              restype == MTYPE_U4 || restype == MTYPE_U8) && 
	      (v->mtype == MTYPE_I4 || v->mtype == MTYPE_I8 ||
              v->mtype == MTYPE_U4 || v->mtype == MTYPE_U8) && 
	      v->mtype != restype)
	result = WN_Cvt(restype, v->mtype, result);
	   

        // create the store that follows the ATOMIC
      if (v->vtype == VAR_REDUCTION_SCALAR) { 
        WN_INSERT_BlockLast(*store_block,
            Gen_MP_Store(v->orig_st, v->orig_offset, result) );
      } else { 
        WN_INSERT_BlockLast(*store_block,
            WN_Istore(v->mtype, 0,
                Make_Pointer_Type(v->ty, FALSE), WN_COPY_Tree(v->vtree),
		result) );
      } 

      redn_list.AddElement(WN_next(atomic));
    }

  BOOL lower_using_critical;
  MP_Reduction_Combine_Cycles(&redn_list, &lower_using_critical);
    // end of critical section for combining
  WN *unlock = NULL;

    // lower combining computations appropriately
  for (WN *next = WN_first(*store_block); next; ) {
    WN *atomic = next;
    WN *store = WN_next(atomic);
    next = WN_next(store);

    if (!lower_using_critical) {
      ATOMIC_Lowering_Class alclass = WN_ATOMIC_Lowering_Class(atomic);
      Is_True(alclass == ALCLASS_SWAP || alclass == ALCLASS_DIRECT,
              ("invalid alclass == %d", (INT) alclass));
      WN *operation = WN_kid0(store);
      WN *atomic_block =
        (alclass == ALCLASS_SWAP) ?
          Atomic_Using_Swap(atomic, store, operation, *store_block, NULL) :
          Atomic_Direct(atomic, store, operation);
         // replace atomic by its lowered version
      for (WN *wn = WN_first(atomic_block); wn; ) {
        WN *wn2 = WN_next(wn);
        WN_EXTRACT_FromBlock(atomic_block, wn);
        WN_INSERT_BlockBefore(*store_block, atomic, wn);
        wn = wn2;
      }
      WN_Delete(atomic_block);
      WN_DELETE_FromBlock(*store_block, store);
      WN_DELETE_FromBlock(*store_block, atomic);

    } else {
      if (!unlock) {
          // insert critical section at start of *store_block
        ST *mplock = Create_Critical_Lock();
        WN_INSERT_BlockFirst(*store_block, Gen_MP_Getlock(mplock));
        unlock = Gen_MP_Unlock(mplock);
        WN_INSERT_BlockAfter(*store_block, WN_first(*store_block),
                      unlock);
      }
      WN_EXTRACT_FromBlock(*store_block, store);
      WN_INSERT_BlockBefore(*store_block, unlock, store);
      WN_DELETE_FromBlock(*store_block, atomic);
    }
  }
}


/*  Generate a begin pdo (32 bit) call.  */

static WN * Gen_MP_BeginPDO_32 (WN * base, WN * tripcount, WN * stride,
				WN * constructnum, WN * numthreads,
				WN * schedtype, WN * chunksize )
{
  WN *wn;

  FmtAssert (FALSE,
             ("Gen_MP_BeginPDO_32: should not be called\n"));

  wn = WN_Create ( OPC_VCALL, 7 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_BEGIN_PDO_32 );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  WN_kid(wn,0) = WN_CreateParm ( MTYPE_I4, base, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,1) = WN_CreateParm ( MTYPE_I4, tripcount, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,2) = WN_CreateParm ( MTYPE_I4, stride, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,3) = WN_CreateParm ( MTYPE_I4, constructnum, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,4) = WN_CreateParm ( MTYPE_I4, numthreads, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,5) = WN_CreateParm ( MTYPE_I4, schedtype, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,6) = WN_CreateParm ( MTYPE_I4, chunksize, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );

  return ( wn );
}

static WN* WN_Integer_Cast(WN* tree, TYPE_ID to, TYPE_ID from)
{
  if (from != to)
    return WN_CreateExp1(OPCODE_make_op(OPR_CVT, to, from), tree);
  else
    return tree;
}


/*  Generate a begin pdo (64 bit) call.  */

static WN * Gen_MP_BeginPDO_64 (WN * base, WN * tripcount, WN * stride,
				WN * constructnum, WN * numthreads,
				WN * schedtype, WN * chunksize, BOOL is_omp )
{
  WN *wn;

  if (is_omp) {
    wn = WN_Create ( OPC_VCALL, 6 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_OMP_BEGIN_PDO_64 );
  } else {
    wn = WN_Create ( OPC_VCALL, 7 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_BEGIN_PDO_64 );
  }
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  WN* wn_new_base = WN_Integer_Cast(base, MTYPE_I8, WN_rtype(base));
  WN* wn_new_tripcount = WN_Integer_Cast(tripcount, MTYPE_I8, 
    WN_rtype(tripcount));
  WN* wn_new_stride = WN_Integer_Cast(stride, MTYPE_I8, WN_rtype(stride));

  WN_kid(wn,0) = WN_CreateParm ( MTYPE_I8, wn_new_base, Be_Type_Tbl(MTYPE_I8),
    WN_PARM_BY_VALUE );
  WN_kid(wn,1) = WN_CreateParm ( MTYPE_I8, wn_new_tripcount, 
    Be_Type_Tbl(MTYPE_I8), WN_PARM_BY_VALUE );
  WN_kid(wn,2) = WN_CreateParm ( MTYPE_I8, wn_new_stride, Be_Type_Tbl(MTYPE_I8),
    WN_PARM_BY_VALUE );
  if (is_omp) {
    WN_kid(wn,3) = WN_CreateParm ( MTYPE_I4, numthreads, Be_Type_Tbl(MTYPE_I4),
                                   WN_PARM_BY_VALUE );
    WN_kid(wn,4) = WN_CreateParm ( MTYPE_I4, schedtype, Be_Type_Tbl(MTYPE_I4),
                                   WN_PARM_BY_VALUE );
    WN_kid(wn,5) = WN_CreateParm ( MTYPE_I4, chunksize, Be_Type_Tbl(MTYPE_I4),
                                   WN_PARM_BY_VALUE );
  } else {
    WN_kid(wn,3) = WN_CreateParm ( MTYPE_I4, constructnum, Be_Type_Tbl(MTYPE_I4),
                                   WN_PARM_BY_VALUE );
    WN_kid(wn,4) = WN_CreateParm ( MTYPE_I4, numthreads, Be_Type_Tbl(MTYPE_I4),
                                   WN_PARM_BY_VALUE );
    WN_kid(wn,5) = WN_CreateParm ( MTYPE_I4, schedtype, Be_Type_Tbl(MTYPE_I4),
                                   WN_PARM_BY_VALUE );
    WN_kid(wn,6) = WN_CreateParm ( MTYPE_I4, chunksize, Be_Type_Tbl(MTYPE_I4),
                                   WN_PARM_BY_VALUE );
  }

  return ( wn );
}


/*  Generate a next iters (32 bit) call.  */

static WN * Gen_MP_NextIters_32 (WN * constructnum, WN * thisbase,
				 WN * thistrips, WN * thisflags)
{
  WN *wn;

  FmtAssert (FALSE, ("Gen_MP_NextIters_32 should not be called anymore"));

  wn = WN_Create ( OPC_I4CALL, 4 );
  WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_NEXT_ITERS_32 );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Mod ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  WN_kid0(wn) = WN_CreateParm ( MTYPE_I4,constructnum, Be_Type_Tbl(MTYPE_I4),
                                WN_PARM_BY_VALUE );
  WN_kid1(wn) = WN_CreateParm ( Pointer_type, thisbase, WN_ty(thisbase),
                                WN_PARM_BY_REFERENCE );
  WN_kid2(wn) = WN_CreateParm ( Pointer_type, thistrips, WN_ty(thistrips),
                                WN_PARM_BY_REFERENCE );
  WN_kid3(wn) = WN_CreateParm ( Pointer_type, thisflags, WN_ty(thisflags),
                                WN_PARM_BY_REFERENCE );

  return ( wn );
}


/*  Generate a next iters (64 bit) call.  */

static WN * Gen_MP_NextIters_64 (WN * constructnum, WN * thisbase,
				 WN * thistrips, WN * thisflags, BOOL is_omp)
{
  WN *wn;

  if (is_omp) {
    wn = WN_Create ( OPC_I4CALL, 3 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_OMP_NEXT_ITERS_64 );
  } else {
    wn = WN_Create ( OPC_I4CALL, 4 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_NEXT_ITERS_64 );
  }
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Mod ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  if (is_omp) {
    WN_kid0(wn) = WN_CreateParm ( Pointer_type, thisbase, WN_ty(thisbase),
                                  WN_PARM_BY_REFERENCE );
    WN_kid1(wn) = WN_CreateParm ( Pointer_type, thistrips, WN_ty(thistrips),
                                  WN_PARM_BY_REFERENCE );
    WN_kid2(wn) = WN_CreateParm ( Pointer_type, thisflags, WN_ty(thisflags),
                                  WN_PARM_BY_REFERENCE );
  } else {
    WN_kid0(wn) = WN_CreateParm ( MTYPE_I4, constructnum, Be_Type_Tbl(MTYPE_I4),
                                  WN_PARM_BY_VALUE );
    WN_kid1(wn) = WN_CreateParm ( Pointer_type, thisbase, WN_ty(thisbase),
                                  WN_PARM_BY_REFERENCE );
    WN_kid2(wn) = WN_CreateParm ( Pointer_type, thistrips, WN_ty(thistrips),
                                  WN_PARM_BY_REFERENCE );
    WN_kid3(wn) = WN_CreateParm ( Pointer_type, thisflags, WN_ty(thisflags),
                                  WN_PARM_BY_REFERENCE );
  }

  return ( wn );
}


/*  Generate an end pdo call.  
 *  If not omp then the argument to the call is the constructnum.
 *  if is_omp, then the argument to the call is 1 if do-barrier, 0 if no-wait.
 */

static WN * Gen_MP_EndPDO (WN * constructnum, BOOL is_omp, BOOL do_wait)
{
  WN *wn;

  if (is_omp) {
    wn = WN_Create ( OPC_VCALL, 1 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_OMP_END_PDO );
  } else {
    wn = WN_Create ( OPC_VCALL, 1 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_END_PDO );
  }
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  if (is_omp) {
    WN_kid0(wn) = WN_CreateParm (MTYPE_I8,
                                 WN_CreateIntconst (OPC_I8INTCONST, 
                                                    (do_wait ? 1 : 0)),
                                 Be_Type_Tbl(MTYPE_I8),
                                 WN_PARM_BY_VALUE );
  } else {
    WN_kid0(wn) = WN_CreateParm (MTYPE_I4, constructnum, Be_Type_Tbl(MTYPE_I4),
                                 WN_PARM_BY_VALUE );
  }

  return ( wn );
}


/*  Generate a begin single process call.  */

static WN * Gen_MP_BeginSingleProcess (WN * constructnum, BOOL is_omp)
{
  WN *wn;

  if (is_omp) {
    wn = WN_Create ( OPC_I4CALL, 0 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_OMP_BEGIN_SINGLE_PROCESS );
  } else {
    wn = WN_Create ( OPC_I4CALL, 1 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_BEGIN_SINGLE_PROCESS );
  }
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  if (!is_omp) {
    WN_kid0(wn) = WN_CreateParm (MTYPE_I4, constructnum, Be_Type_Tbl(MTYPE_I4),
                                 WN_PARM_BY_VALUE);
  }

  return ( wn );
}


/*  Generate an end single process call.  This call should be inserted only
    if the END SINGLE pragma was OMP (in which case is_omp should be TRUE,
    and nowait should be TRUE iff the END SINGLE pragma had the NOWAIT
    clause), or if the pragma wasn't OMP and did not have the NOWAIT
    clause. */

static WN *
Gen_MP_EndSingleProcess (WN * constructnum, BOOL is_omp, BOOL nowait)
{
  Is_True(is_omp || !nowait, ("no need for END_SINGLE_PROCESS runtime call"));

  WN *wn = WN_Create ( OPC_VCALL, 1 );

  if (is_omp) {
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_OMP_END_SINGLE_PROCESS );
    WN_kid0(wn) = WN_CreateParm (MTYPE_I8,
        WN_CreateIntconst(OPC_I8INTCONST, (INT64) !nowait),
        Be_Type_Tbl(MTYPE_I8), WN_PARM_BY_VALUE);
  } else {
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_END_SINGLE_PROCESS );
    WN_kid0(wn) = WN_CreateParm (MTYPE_I4, constructnum, Be_Type_Tbl(MTYPE_I4),
                                 WN_PARM_BY_VALUE);
  }
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  return ( wn );
}


/* Return TRUE if tree contains a call to the alloca intrinsic anywhere,
   otherwise return FALSE. */

static BOOL Calls_Alloca(WN *tree)
{
  WN *kid;
  INT kidno;
  OPCODE opc;

  Is_True(tree, ("NULL tree passed to Calls_Alloca()"));

  opc = WN_opcode(tree);
  if ((opc == OPC_U4INTRINSIC_CALL &&
       WN_intrinsic(tree) == INTRN_U4I4ALLOCA) ||
      (opc == OPC_U8INTRINSIC_CALL &&
       WN_intrinsic(tree) == INTRN_U8I8ALLOCA)) {
    Is_True(!Alloca_Dealloca_On,
            ("Alloca_Dealloca_On yet found INTRN_ALLOCA"));
    return TRUE;
  }

  if (WN_operator(tree) == OPR_ALLOCA) {
    Is_True(Alloca_Dealloca_On,
            ("found OPR_ALLOCA yet not Alloca_Dealloca_On"));
    return TRUE;
  }

  if (!OPCODE_is_leaf(opc))
    if (opc == OPC_BLOCK) {
      for (kid = WN_first(tree); kid; kid = WN_next(kid))
        if (Calls_Alloca(kid))
          return TRUE;

    } else {
      for (kidno = 0; kidno < WN_kid_count(tree); kidno++)
        if (Calls_Alloca(WN_kid(tree, kidno)))
          return TRUE;
    }

  return FALSE;
}

/*
Hack for determining if an ST has an associated F90 dope vector (this is
true for F90 pointers, allocatable arrays, and arrays that may be
non-contiguous).
*/

/*
from dphillim:
so  if it has a dope TY and
    the dope_TY points to a KIND_ARRAY,
    and its not an f90 pointer 
    and not an argument (SCALAR_FORMAL_REF), 
    Then it's an allocatable because there's nothing left.
*/

static const char * const dope_str_prefix = ".dope." ;
static const INT dope_str_prefix_len = 6;

static BOOL
ST_Has_Dope_Vector(ST *st)
{
  if (ST_class(st) != CLASS_VAR)
    return FALSE;

  if ( TY_is_f90_pointer(Ty_Table[ST_type(*st)]) )
    return TRUE;

  TY_IDX ty = ST_type(st);
  while (TY_kind(ty) == KIND_POINTER)
    ty = TY_pointed(ty);

  if (TY_kind(ty) == KIND_STRUCT &&
      strncmp(TY_name(ty), dope_str_prefix, dope_str_prefix_len) == 0)
    return TRUE;

  return FALSE;
}


/* Return a block containing code for saving the stack pointer. 
   st_basename is the basename for a temporary that is generated for
   storing the SP.  The output parameter sp_save_stid is for use with
   Gen_Restore_Stack_Pointer(). */

static WN *
Gen_Save_Stack_Pointer(char *st_basename, WN **sp_save_stid)
{
  char *newstname;
  static INT count = 0;
  WN *save_block = WN_CreateBlock(), *preg_stid_kid;

    // Create uniquely-named preg for saving SP
  newstname = (char *) alloca(strlen(st_basename) + 32);
  sprintf(newstname, "$%s%d__$stkptr", st_basename, count++);

  PREG_NUM sp_preg = Create_Preg(Pointer_type, (char *) newstname);

  if (Alloca_Dealloca_On) {
      // use ALLOCA operator with size 0
    preg_stid_kid = WN_CreateAlloca(WN_CreateIntconst(OPC_I4INTCONST, 0));

  } else {
      // Call intrinsic for reading SP
    WN *intrin_call;
    intrin_call = WN_Create(OPCODE_make_op(OPR_INTRINSIC_CALL, 
                                           Pointer_type, MTYPE_V), 0);
    WN_Set_Call_Non_Parm_Ref(intrin_call);
    WN_intrinsic(intrin_call) =
        (Pointer_Size == 8) ? INTRN_U8READSTACKPOINTER :
                              INTRN_U4READSTACKPOINTER;
    WN_linenum(intrin_call) = line_number;
    WN_INSERT_BlockLast(save_block, intrin_call);

      // Load returned SP value
    PREG_NUM rreg1, rreg2;

    GET_RETURN_PREGS(rreg1, rreg2, Pointer_type);
    preg_stid_kid = WN_LdidPreg(Pointer_type, rreg1);
  }

  *sp_save_stid = WN_StidIntoPreg(Pointer_type, sp_preg,
    MTYPE_To_PREG(Pointer_type), preg_stid_kid);
  WN_linenum(*sp_save_stid) = line_number;

  WN_INSERT_BlockLast(save_block, *sp_save_stid);
  return save_block;
}


// Given a list of alloca's for auto variables, this class builds a
// read-only list of the ST's that get allocated.

class Alloca_Var_List {
public:
  struct Info {
    ST *st;
    WN_OFFSET offset;
    TY_IDX ty;
    Info(ST *_st, WN_OFFSET _ofs, TY_IDX _ty) : st(_st), offset(_ofs), ty(_ty)
      { }
  };
private:
  DYN_ARRAY<Info> _list;
public:
  Alloca_Var_List(WN *alloca_block);
  const DYN_ARRAY<Info> *list() const { return &_list; }
};

Alloca_Var_List::Alloca_Var_List(WN *alloca_block) :
  _list(&mp_lower_pool)
{
  Is_True(WN_operator(alloca_block) == OPR_BLOCK, ("not a BLOCK"));

  if (!Alloca_Dealloca_On)
    return;

  for (WN *kid = WN_first(alloca_block); kid; kid = WN_next(kid)) {
    OPERATOR opr = WN_operator(kid);

    switch (opr) {
    case OPR_INTRINSIC_CALL:
      Is_True(WN_intrinsic(kid) == INTRN_U4I4ALLOCA ||
              WN_intrinsic(kid) == INTRN_U8I8ALLOCA, ("expected alloca()"));
      Is_True(!Alloca_Dealloca_On,
              ("Alloca_Dealloca_On yet found INTRN_ALLOCA"));
      break;
    case OPR_STID:
      _list.AddElement(Info(WN_st(kid), WN_offset(kid), WN_ty(kid)));
      break;
    default:
      Fail_FmtAssertion("unexpected opr == %d\n", (INT) opr);
    }
  }
}


// Return a Whirl block that restores the stack pointer. sp_save_stid is
// the output param. from Gen_Save_Stack_Pointer(), avlist is computed
// from all the alloca's following the stack pointer save.
static WN *
Gen_Restore_Stack_Pointer(WN *sp_save_stid, Alloca_Var_List *avlist)
{
  WN *restore_block = WN_CreateBlock();
  WN *dealloca;
  WN *ldid_old_sp = WN_CreateLdid(
    OPCODE_make_op(OPR_LDID, Pointer_type, Pointer_type),
    WN_offset(sp_save_stid), WN_st(sp_save_stid), WN_ty(sp_save_stid));

  if (Alloca_Dealloca_On) {
      // use DEALLOCA operator
    INT num_allocas = avlist->list()->Elements();
    dealloca = WN_CreateDealloca(num_allocas + 1);
    WN_kid0(dealloca) = ldid_old_sp;
      // kids 1 to N are auto vars whose lifetime ends at DEALLOCA
    for (INT i = 0; i < num_allocas; i++) {
      const Alloca_Var_List::Info *info = &(*avlist->list())[i];
      WN_kid(dealloca, i + 1) = WN_CreateLdid(
        OPCODE_make_op(OPR_LDID, Pointer_type, Pointer_type),
        info->offset, info->st, info->ty);
    }

  } else {
      // call SETSTACKPOINTER intrinsic
    dealloca = WN_Create(
      OPCODE_make_op(OPR_INTRINSIC_CALL, MTYPE_V, MTYPE_V), 1);
    WN_Set_Call_Non_Parm_Mod(dealloca);
    WN_Set_Call_Non_Parm_Ref(dealloca);
    WN_Set_Call_Parm_Ref(dealloca);

    WN_intrinsic(dealloca) = (Pointer_Size == 8) ?
        INTRN_U8I8SETSTACKPOINTER : INTRN_U4I4SETSTACKPOINTER;
    WN_kid0(dealloca) = WN_CreateParm(Pointer_type, ldid_old_sp,
      Be_Type_Tbl(Pointer_type), WN_PARM_BY_VALUE );
    WN_linenum(dealloca) = line_number;
  }

  WN_INSERT_BlockLast(restore_block, dealloca);
  return restore_block;
}


/* Given a block of code appearing within an OMP SINGLE or PCF
   SINGLEPROCESS directive, and flags for whether the directive was OMP
   and had the NOWAIT clause, return a block of corresponding MP-lowered
   code.  Argument single_block becomes part of the output block, so it
   must not already be part of the Whirl tree. */

static WN *
Gen_MP_SingleProcess_Block(WN *single_block, BOOL nowait, BOOL is_omp)
{
  WN *mp_single_block = WN_CreateBlock(), *return_stid, *single_test;
  WN *sp_block = WN_CreateBlock();
  ST *return_st;
  WN_OFFSET return_ofst;
  PREG_NUM rreg1, rreg2;

  WN_INSERT_BlockLast(mp_single_block,
    Gen_MP_BeginSingleProcess(
      WN_CreateIntconst(OPC_I4INTCONST, num_constructs),
      is_omp));

  Create_Preg_or_Temp(MTYPE_I4, MPSP_STATUS_PREG_NAME, &return_st,
                      &return_ofst);
  GET_RETURN_PREGS(rreg1, rreg2, MTYPE_I4);
  return_stid = WN_Stid(MTYPE_I4, return_ofst, return_st, ST_type(return_st),
			WN_LdidPreg(MTYPE_I4, rreg1));
  WN_linenum(return_stid) = line_number;
  WN_INSERT_BlockLast(mp_single_block, return_stid);

  single_test = WN_CreateIf(WN_Ldid(MTYPE_I4, return_ofst, return_st,
				    ST_type(return_st)),
		            single_block, WN_CreateBlock());
  WN_linenum(single_test) = line_number;
  WN_INSERT_BlockLast(mp_single_block, single_test);

  if (is_omp || !nowait)
    WN_INSERT_BlockLast(mp_single_block,
                        Gen_MP_EndSingleProcess(
			  WN_CreateIntconst(OPC_I4INTCONST, num_constructs),
			  is_omp, nowait));

  return mp_single_block;
}


/* Given a region for an OMP SINGLE work-sharing construct, return a block
   of corresponding MP-lowered code.  The input single_region is not
   deleted (though some of its pragmas are, and its body is spliced out), so
   the caller must still remove it from the Whirl tree. */

static WN *Gen_MP_SingleProcess_Region(WN *single_region)
{
  WN *prag = WN_first(WN_region_pragmas(single_region)), *single_prag = prag;
  WN *single_block = WN_region_body(single_region);
  VAR_TABLE *vt;
  WN_PRAGMA_ID prag_id;
  INT vt_size = 0, i;
  WN **nested_list, *wn, *nested_prag;
  WN *nested_local_nodes = NULL, *nested_firstprivate_nodes = NULL;
  BOOL nowait = FALSE;
  BOOL do_dealloca = FALSE;
  WN *mp_single_block = WN_CreateBlock();
  WN *sp_save_stid;
  Alloca_Var_List *avlist;

  Is_True(mpt == MPP_SINGLE || mpt == MPP_ORPHANED_SINGLE,
          ("not inside a SINGLE"));

  if (mpt == MPP_ORPHANED_SINGLE) {
      // set up some globals
    psymtab = CURRENT_SYMTAB;
    ppuinfo = Current_PU_Info;
    pmaptab = Current_Map_Tab;
  }

  prag = WN_next(prag);
  WN_next(single_prag) = NULL;  /* Remove all but SINGLE pragma */
  WN_last(WN_region_pragmas(single_region)) = single_prag;

  while (prag)
    switch (prag_id = (WN_PRAGMA_ID) WN_pragma(prag)) {
    case WN_PRAGMA_LOCAL:
    case WN_PRAGMA_FIRSTPRIVATE:
      nested_prag = prag;
      prag = WN_next(prag);
      nested_list = ( prag_id == WN_PRAGMA_LOCAL &&
                      !ST_Has_Dope_Vector(WN_st(nested_prag)) ) ?
                        &nested_local_nodes :
                        &nested_firstprivate_nodes;
      for (wn = *nested_list; wn; wn = WN_next(wn))
        if (Identical_Pragmas(nested_prag, wn))
          break;
      if (!wn) {
        WN_next(nested_prag) = *nested_list;
        *nested_list = nested_prag;
        vt_size++;
      } else
        WN_Delete(nested_prag);
      break;

      /* we can get a SHARED(preg) clause in a SINGLE region due to
         variable renaming in LNO; must ignore these pragmas */
    case WN_PRAGMA_SHARED:
      nested_prag = prag;
      prag = WN_next(prag);
      WN_Delete(nested_prag);
      break;

    case WN_PRAGMA_NOWAIT:
      nowait = TRUE;
      nested_prag = prag;
      prag = WN_next(prag);
      WN_Delete(nested_prag);
      break;

    case WN_PRAGMA_END_MARKER:
      nested_prag = prag;
      prag = WN_next(prag);
      WN_Delete(nested_prag);
      break; 

    default:
      Fail_FmtAssertion("illegal pragma type %d in SINGLE directive",
                        WN_pragma(prag));
    }

  WN_region_body(single_region) = NULL; /* splice out body of SINGLE region */

  if (vt_size) {  /* must localize some variables */
    WN *nested_alloca_block = NULL, *firstprivate_block = NULL;

    vt = (VAR_TABLE *) alloca((vt_size + 1) * sizeof(VAR_TABLE));
    bzero(vt, (vt_size + 1) * sizeof(VAR_TABLE));
    Create_Local_Variables(vt, NULL, NULL, nested_local_nodes,
                           nested_firstprivate_nodes, &firstprivate_block,
                           NULL, &nested_alloca_block);

    Localize_Parent_Stack lps(mpt == MPP_ORPHANED_SINGLE, single_block);
    WN *nested_non_pod_finalization_nodes = NULL;
    Walk_and_Localize(single_block, vt, &lps, FALSE,
                      &nested_non_pod_finalization_nodes);

      /* If we need to dynamically allocate space for any localized
         variables, we also try to deallocate this space at the end of
         the SINGLE region.  We want to deallocate so that if the SINGLE
         is inside a loop, the stack won't become huge.  However, we
         don't deallocate if there's a call to the alloca() intrinsic
         inside the lexical extent of the SINGLE directive, because that
         would also deallocate the space the user requested. */
      /* Also, for now we always allocate any needed space for localized
         variables.  This isn't necessary (and is inefficient) when an
         orphaned SINGLE region is executed serially.  However, it's
         more trouble to clone the region into serial and parallel cases,
         and we think the serial cases will be rare enough that we'll
         defer this optimization for now.--DRK */

    if (nested_alloca_block) {
      if ((do_dealloca = !Calls_Alloca(single_block)) != 0) {
        WN_INSERT_BlockLast(mp_single_block,
            Gen_Save_Stack_Pointer("mpsingle", &sp_save_stid));
        avlist = CXX_NEW(Alloca_Var_List(nested_alloca_block),
	                 &mp_lower_pool);
      }
      WN_INSERT_BlockLast(mp_single_block, nested_alloca_block);
      Set_PU_has_alloca(Get_Current_PU());
    }

    if (firstprivate_block)
      WN_INSERT_BlockLast(mp_single_block, firstprivate_block);

    for (i = 0; i < vt_size; i++) {
      if (vt[i].vtree)
        WN_DELETE_Tree(vt[i].vtree);
      if (vt[i].vtreex)
        WN_DELETE_Tree(vt[i].vtreex);
    }
  } // if (vt_size)

  WN_INSERT_BlockLast(mp_single_block,
    Gen_MP_SingleProcess_Block(single_block, nowait,
      WN_pragma_omp(single_prag)));

  if (do_dealloca) {
    WN_INSERT_BlockLast(mp_single_block,
        Gen_Restore_Stack_Pointer(sp_save_stid, avlist));
    CXX_DELETE(avlist, &mp_lower_pool);
  }

    /* Delete PRIVATE/FIRSTPRIVATE pragmas */
  while (nested_local_nodes) {
    wn = WN_next(nested_local_nodes);
    WN_Delete(nested_local_nodes);
    nested_local_nodes = wn;
  }
  while (nested_firstprivate_nodes) {
    wn = WN_next(nested_firstprivate_nodes);
    WN_Delete(nested_firstprivate_nodes);
    nested_firstprivate_nodes = wn;
  }

  return mp_single_block;
} // Gen_MP_SingleProcess_Region()


/*  Generate a parallel do (32 bit) call.  */

static WN * Gen_MP_ParallelDo_32 (ST * proc, WN * uplink, WN * schedtype,
				  WN * base, WN * tripcount, WN * stride,
				  WN * chunksize, BOOL is_omp)
{
  WN *wn;
  WN *wnx;

  wn = WN_Create ( OPC_I4CALL, 7 );
  if (is_omp) {
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_OMP_PARALLEL_DO_32 );
  } else {
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_PARALLEL_DO_32 );
  }
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  wnx = WN_Lda ( Pointer_type, 0, proc );
  WN_kid(wn,0) = WN_CreateParm ( Pointer_type, wnx, WN_ty(wnx),
				 WN_PARM_BY_REFERENCE );
  WN_kid(wn,1) = WN_CreateParm ( Pointer_type, uplink, WN_ty(uplink),
				 WN_PARM_BY_REFERENCE );
  WN_kid(wn,2) = WN_CreateParm ( MTYPE_I4, schedtype, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,3) = WN_CreateParm ( MTYPE_I4, base, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,4) = WN_CreateParm ( MTYPE_I4, tripcount, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,5) = WN_CreateParm ( MTYPE_I4, stride, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,6) = WN_CreateParm ( MTYPE_I4, chunksize, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );

  return ( wn );
}


/*  Generate a parallel do (64 bit) call.  */

static WN * Gen_MP_ParallelDo_64 (ST * proc, WN * uplink, WN * schedtype,
				  WN * base, WN * tripcount, WN * stride,
				  WN * chunksize, BOOL is_omp)
{
  WN *wn;
  WN *wnx;

  WN* wn_new_base = WN_Integer_Cast(base, MTYPE_I8, WN_rtype(base));
  WN* wn_new_tripcount = WN_Integer_Cast(tripcount, MTYPE_I8, 
    WN_rtype(tripcount));
  WN* wn_new_stride = WN_Integer_Cast(stride, MTYPE_I8, WN_rtype(stride));

  wn = WN_Create ( OPC_I4CALL, 7 );
  if (is_omp)
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_OMP_PARALLEL_DO_64 );
  else
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_PARALLEL_DO_64 );
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  wnx = WN_Lda ( Pointer_type, 0, proc );
  WN_kid(wn,0) = WN_CreateParm ( Pointer_type, wnx, WN_ty(wnx),
				 WN_PARM_BY_REFERENCE );
  WN_kid(wn,1) = WN_CreateParm ( Pointer_type, uplink, WN_ty(uplink),
				 WN_PARM_BY_REFERENCE );
  WN_kid(wn,2) = WN_CreateParm ( MTYPE_I4, schedtype, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,3) = WN_CreateParm ( MTYPE_I8, wn_new_base, Be_Type_Tbl(MTYPE_I8),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,4) = WN_CreateParm ( MTYPE_I8, wn_new_tripcount, 
     				 Be_Type_Tbl(MTYPE_I8), WN_PARM_BY_VALUE );
  WN_kid(wn,5) = WN_CreateParm ( MTYPE_I8, wn_new_stride, Be_Type_Tbl(MTYPE_I8),
				 WN_PARM_BY_VALUE );
  WN_kid(wn,6) = WN_CreateParm ( MTYPE_I4, chunksize, Be_Type_Tbl(MTYPE_I4),
				 WN_PARM_BY_VALUE );

  return ( wn );
}


/*  Generate a parallel region call.  */

static WN * Gen_MP_ParallelRegion (ST * proc, WN * uplink, WN * nconst,
				   WN * nthread, BOOL is_omp)
{
  WN *wn;
  WN *wnx;

  if (is_omp) {
    wn = WN_Create ( OPC_I4CALL, 3 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_OMP_PARALLEL_REGION );
  } else {
    wn = WN_Create ( OPC_I4CALL, 4 );
    WN_st_idx(wn) = GET_MPRUNTIME_ST ( MPR_PARALLEL_REGION );
  }
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_Set_Call_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  wnx = WN_Lda ( Pointer_type, 0, proc );
  WN_kid0(wn) = WN_CreateParm ( Pointer_type, wnx, WN_ty(wnx),
				WN_PARM_BY_REFERENCE );
  WN_kid1(wn) = WN_CreateParm ( Pointer_type, uplink, WN_ty(uplink),
				WN_PARM_BY_REFERENCE );
  if (!is_omp) {
    WN_kid2(wn) = WN_CreateParm ( MTYPE_I4, nconst, Be_Type_Tbl(MTYPE_I4),
                                  WN_PARM_BY_VALUE );
    WN_kid3(wn) = WN_CreateParm ( MTYPE_I4, nthread, Be_Type_Tbl(MTYPE_I4),
                                  WN_PARM_BY_VALUE );
  } else {
    WN_kid2(wn) = WN_CreateParm ( MTYPE_I4, nthread, Be_Type_Tbl(MTYPE_I4),
                                  WN_PARM_BY_VALUE );
  }

  return ( wn );
}

/* Generate an OMP begin_SPR call */
extern WN *Gen_OMP_Begin_SPR (MP_process_type mpt) {
  WN *wn;
  UINT64 flag;

  wn = WN_Create (OPC_VCALL, 1);
  WN_st_idx(wn) = GET_MPRUNTIME_ST (MPR_OMP_BEGIN_SPR);
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  if (mpt == MPP_PARALLEL_REGION) flag = 0;
  else flag = 0x1;

  WN_kid0(wn) = WN_CreateParm (MTYPE_U8,
                               WN_CreateIntconst (OPC_U8INTCONST, flag),
                               Be_Type_Tbl(MTYPE_U8),
                               WN_PARM_BY_VALUE);
  return wn;
}

/* Generate an OMP end_SPR call */
extern WN *Gen_OMP_End_SPR (MP_process_type mpt) {
  WN *wn;
  UINT64 flag;

  wn = WN_Create (OPC_VCALL, 1);
  WN_st_idx(wn) = GET_MPRUNTIME_ST (MPR_OMP_END_SPR);
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  if (mpt == MPP_PARALLEL_REGION) flag = 0;
  else flag = 0x1;

  WN_kid0(wn) = WN_CreateParm (MTYPE_U8,
                               WN_CreateIntconst (OPC_U8INTCONST, flag),
                               Be_Type_Tbl(MTYPE_U8),
                               WN_PARM_BY_VALUE);
  return wn;
}

static WN *Gen_OMP_Pdo_Ordered_Begin (WN *lb, WN *stride) {
  WN *wn = WN_Create (OPC_VCALL, 2);
  WN_st_idx(wn) = GET_MPRUNTIME_ST (MPR_OMP_PDO_ORDERED_BEGIN);
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;

  WN* wn_new_lb = WN_Integer_Cast(lb, MTYPE_I8, WN_rtype(lb));
  WN* wn_new_stride = WN_Integer_Cast(stride, MTYPE_I8, WN_rtype(stride));

  WN_kid0(wn) = WN_CreateParm (MTYPE_I8, wn_new_lb, Be_Type_Tbl(MTYPE_I8),
                               WN_PARM_BY_VALUE);
  WN_kid1(wn) = WN_CreateParm (MTYPE_I8, wn_new_stride, Be_Type_Tbl(MTYPE_I8),
                               WN_PARM_BY_VALUE);
  return wn;
}

static WN *Gen_OMP_Pdo_Ordered_End () {
  WN *wn = WN_Create (OPC_VCALL, 0);
  WN_st_idx(wn) = GET_MPRUNTIME_ST (MPR_OMP_PDO_ORDERED_END);
  WN_Set_Call_Non_Data_Mod ( wn );
  WN_Set_Call_Non_Data_Ref ( wn );
  WN_Set_Call_Non_Parm_Mod ( wn );
  WN_Set_Call_Non_Parm_Ref ( wn );
  WN_linenum(wn) = line_number;
  return wn;
}

static WN *Gen_OMP_Begin_Ordered () {

  WN *wn = WN_Create (OPC_VCALL, 0);
  WN_st_idx(wn) = GET_MPRUNTIME_ST (MPR_OMP_ORDERED_BEGIN);
  WN_Set_Call_Non_Data_Mod(wn);
  WN_Set_Call_Non_Data_Ref(wn);
  WN_Set_Call_Non_Parm_Mod(wn);
  WN_Set_Call_Non_Parm_Ref(wn);
  WN_linenum(wn) = line_number;
  return wn;
}

static WN *Gen_OMP_End_Ordered () {

  WN *wn = WN_Create (OPC_VCALL, 0);
  WN_st_idx(wn) = GET_MPRUNTIME_ST (MPR_OMP_ORDERED_END);
  WN_Set_Call_Non_Data_Mod(wn);
  WN_Set_Call_Non_Data_Ref(wn);
  WN_Set_Call_Non_Parm_Mod(wn);
  WN_Set_Call_Non_Parm_Ref(wn);
  WN_linenum(wn) = line_number;
  return wn;
}

static struct namelock_kind {
  ST *name;
  ST *lock;
} *namelock_list = NULL;

static INT32 nl_idx = 0;
static INT32 nl_max = 0;

/***********************************************************************
 *
 * Given an ST for a named-lock, return the ST for the lock
 * allocated in the COMMON block, if any. NULL otherwise.
 *
 ***********************************************************************/
static ST* NameLock_Find (ST *name) {
  INT32 i;
  for (i=0; i<nl_idx; i++) {
//    if (name == namelock_list[i].name) return (namelock_list[i].lock);
    // when frontend is fixed, change this back to previous line--DRK
    {
      FmtAssert (ST_class(name) == CLASS_CONST, ("non-CONST class"));
      FmtAssert (ST_class(namelock_list[i].name) == CLASS_CONST,
                 ("non-CONST class"));

      TCON &name_tcon = Tcon_Table[ST_tcon(name)];
      TCON &list_tcon = Tcon_Table[ST_tcon(namelock_list[i].name)];
      if (Targ_String_Length(name_tcon) == Targ_String_Length(list_tcon) &&
          strncmp(Targ_String_Address(name_tcon),
	          Targ_String_Address(list_tcon),
		  Targ_String_Length(name_tcon)) == 0)
        return (namelock_list[i].lock);
    }
  }
  return NULL;
}

/***********************************************************************
 *
 * Given the ST for a named lock and the corresponding COMMON lock variable,
 * add to the list. Barf if duplicate.
 *
 ***********************************************************************/
static void NameLock_Add (ST *name, ST *lock) {
  FmtAssert (NameLock_Find(name) == NULL,
             ("NameLock_Add called with duplicate entry"));

  if (nl_idx == nl_max) {
    /* grow the array. Add 20 elements. */
    namelock_list = (struct namelock_kind*)
      MEM_POOL_Realloc (Malloc_Mem_Pool,
                        namelock_list,
                        nl_max*sizeof(struct namelock_kind),
                        (nl_max+20)*sizeof(struct namelock_kind));
    nl_max += 20;
  }
  namelock_list[nl_idx].name = name;
  namelock_list[nl_idx].lock = lock;
  nl_idx++;
}

/***********************************************************************
 *
 * Given an ST for the "name" of a named critical section,
 * return the ST for the appropriate COMMON block variable.
 *
 ***********************************************************************/
static ST *Get_NameLock_ST (ST *name) {
  ST *lock_st;

  if (name == NULL) return NULL;

  lock_st = NameLock_Find (name);
  if (lock_st != NULL) return lock_st;

  lock_st = Create_Name_Lock (name);
  NameLock_Add (name, lock_st);
  return lock_st;
}

/***********************************************************************
 * Given an ST, return TRUE if it's the COMMON block variable corresponding
 * to a named critical section, FALSE otherwise.
 ***********************************************************************/

static BOOL Is_NameLock_ST(ST *st)
{
  if (ST_name(st)[0] != '_')  /* fast-check */
    return FALSE;
  return (strncmp(ST_name(st), "__namelock_", 11) == 0);
}

/*
Strip all nested MP pragmas and MP regions (except CRITICAL SECTION's).  In
the case of MP_IF's generated by LNO for versioning, if
inside_versioning_if is TRUE we set the test of the MP_IF to FALSE so that
we always execute the "else" part (i.e. the serialized version of the
code).
*/

static void Strip_Nested_MP ( WN * tree, BOOL pcf_ok )
{
  INT32 kidno;
  ST *lock_st;
  WN *new_kid;
  WN *kid;
  WN *next_kid;
  ST *lock_stack[128];
  INT32 lptr = 0;
  INT32 pcf_nest = 0;

  if (tree == NULL)
    return;

  if (WN_opcode(tree) == OPC_BLOCK) {
    for (kid = WN_first(tree); kid; kid = next_kid) {
      next_kid = WN_next(kid);
      if (((WN_opcode(kid) == OPC_PRAGMA) ||
	   (WN_opcode(kid) == OPC_XPRAGMA)) &&
	  (WN_pragmas[WN_pragma(kid)].users & PUSER_MP)) {
	if (WN_pragma(kid) == WN_PRAGMA_CRITICAL_SECTION_BEGIN) {
	  /* always translate critical section begin nodes */
	  ++pcf_nest;
          if (WN_opcode(kid) == OPC_PRAGMA &&
              WN_pragma_omp(kid) &&
              WN_st(kid)) {
            lock_st = Get_NameLock_ST(WN_st(kid));
          }
	  else if ((WN_opcode(kid) == OPC_XPRAGMA) &&
                   (WN_operator(WN_kid0(kid)) == OPR_LDA))
	    lock_st = WN_st(WN_kid0(kid));
	  else if ((WN_opcode(kid) == OPC_PRAGMA) && WN_st(kid))
	    lock_st = WN_st(kid);
	  else
	    lock_st = NULL;
	  lock_stack[lptr++] = lock_st;
	  if (lock_st) {
	    Linenum_Pusher p(WN_Get_Linenum(kid));
	    new_kid = Gen_MP_Getlock ( lock_st );
	  } else {
	    Linenum_Pusher p(WN_Get_Linenum(kid));
	    new_kid = Gen_MP_Setlock ( );
	  }
	  if (WN_prev(kid))
	    WN_next(WN_prev(kid)) = new_kid;
	  else
	    WN_first(tree) = new_kid;
	  WN_prev(new_kid) = WN_prev(kid);
	  WN_next(new_kid) = WN_next(kid);
	  if (WN_next(kid))
	    WN_prev(WN_next(kid)) = new_kid;
	  else
	    WN_last(tree) = new_kid;
	  WN_DELETE_Tree ( kid );
	} else if (WN_pragma(kid) == WN_PRAGMA_CRITICAL_SECTION_END) {
	  /* always translate critical section end nodes */
	  --pcf_nest;
	  lock_st = lock_stack[--lptr];
          if (WN_pragma_omp(kid) && WN_st(kid)) {
            FmtAssert (lock_st == Get_NameLock_ST(WN_st(kid)),
                       ("Mismatch in lock on critical section"));
          }
	  if (lock_st) {
	    Linenum_Pusher p(WN_Get_Linenum(kid));
	    new_kid = Gen_MP_Unlock ( lock_st );
	  } else {
	    Linenum_Pusher p(WN_Get_Linenum(kid));
	    new_kid = Gen_MP_Unsetlock ( );
	  }
	  if (WN_prev(kid))
	    WN_next(WN_prev(kid)) = new_kid;
	  else
	    WN_first(tree) = new_kid;
	  WN_prev(new_kid) = WN_prev(kid);
	  WN_next(new_kid) = WN_next(kid);
	  if (WN_next(kid))
	    WN_prev(WN_next(kid)) = new_kid;
	  else
	    WN_last(tree) = new_kid;
	  WN_Delete ( kid );
	} else if ((WN_pragma(kid) == WN_PRAGMA_BARRIER) &&
		   (pcf_nest == 0) && pcf_ok) {
	  /* allow barrier nodes to remain */
	} else if ((WN_pragma(kid) == WN_PRAGMA_ENTER_GATE) &&
		   (pcf_nest == 0) && pcf_ok) {
	  /* allow enter_gate nodes to remain */
	} else if ((WN_pragma(kid) == WN_PRAGMA_EXIT_GATE) &&
		   (pcf_nest == 0) && pcf_ok) {
	  /* allow exit_gate nodes to remain */
	} else if ((WN_pragma(kid) == WN_PRAGMA_INDEPENDENT_BEGIN) &&
		   (pcf_nest++ == 0) && pcf_ok) {
	  /* allow independent begin nodes to remain */
	} else if ((WN_pragma(kid) == WN_PRAGMA_INDEPENDENT_END) &&
		   (--pcf_nest == 0) && pcf_ok) {
	  /* allow independent end nodes to remain */

          /* hack: allow SINGLE BEGIN/END pairs: DRK */
	} else if ((WN_pragma(kid) == WN_PRAGMA_SINGLE_PROCESS_BEGIN) &&
		   (pcf_nest++ == 0) && pcf_ok) {
	  /* allow single begin nodes to remain */
	} else if ((WN_pragma(kid) == WN_PRAGMA_SINGLE_PROCESS_END) &&
		   (--pcf_nest == 0) && pcf_ok) {
	  /* allow single end nodes to remain */

	} else if (WN_pragma(kid) == WN_PRAGMA_ORDERED_BEGIN ||
                   WN_pragma(kid) == WN_PRAGMA_ORDERED_END) {
          /* always lower; will cleanup later */
          WN *call;
          call = (WN_pragma(kid) == WN_PRAGMA_ORDERED_BEGIN ? 
                  Gen_OMP_Begin_Ordered () :
                  Gen_OMP_End_Ordered ());
          WN_INSERT_BlockAfter (tree, kid, call);
          WN_Delete (WN_EXTRACT_FromBlock (tree, kid));
	} else {
	  /* strip all other mp pragmas */
	  if (WN_prev(kid))
	    WN_next(WN_prev(kid)) = WN_next(kid);
	  else
	    WN_first(tree) = WN_next(kid);
	  if (WN_next(kid))
	    WN_prev(WN_next(kid)) = WN_prev(kid);
	  else
	    WN_last(tree) = WN_prev(kid);
	  WN_DELETE_Tree ( kid );
	}
      } else if ((WN_opcode(kid) == OPC_REGION) &&
		 WN_first(WN_region_pragmas(kid)) &&
		 (WN_pragmas[WN_pragma(WN_first(WN_region_pragmas(kid)))].users
								& PUSER_MP)) {
	WN_PRAGMA_ID region_type = (WN_PRAGMA_ID)
	    WN_pragma(WN_first(WN_region_pragmas(kid)));

	if ((region_type == WN_PRAGMA_SINGLE_PROCESS_BEGIN ||
	     region_type == WN_PRAGMA_PDO_BEGIN) &&
	    (pcf_nest == 0) && pcf_ok) {
	    // Allow mp region to remain but strip contents. This leaves
	    // non-POD finalization code in place (if any).
	  Strip_Nested_MP ( WN_region_body(kid), FALSE );
	} else {
	  if (region_type == WN_PRAGMA_PDO_BEGIN)
	    Move_Non_POD_Finalization_Code(WN_region_body(kid));

	  /* splice in the contents of mp region */

	  if (WN_first(WN_region_body(kid))) {
            if (WN_pragma_omp(WN_first(WN_region_pragmas(kid))) &&
                (region_type == WN_PRAGMA_DOACROSS ||
                 region_type == WN_PRAGMA_PARALLEL_DO ||
                 region_type == WN_PRAGMA_PARALLEL_BEGIN)) {

              MP_process_type nested_mpt =
	        (region_type == WN_PRAGMA_PARALLEL_BEGIN ?
	                        MPP_PARALLEL_REGION : MPP_PARALLEL_DO);

              /* insert the spr calls if necessary, before the splicing */
              WN_INSERT_BlockFirst(WN_region_body(kid),
	                           Gen_OMP_Begin_SPR(nested_mpt));
              WN_INSERT_BlockLast(WN_region_body(kid),
	                          Gen_OMP_End_SPR (nested_mpt));
            }

	    if (WN_prev(kid))
	      WN_next(WN_prev(kid)) = next_kid = WN_first(WN_region_body(kid));
	    else
	      WN_first(tree) = next_kid = WN_first(WN_region_body(kid));
	    WN_prev(WN_first(WN_region_body(kid))) = WN_prev(kid);
	    WN_next(WN_last(WN_region_body(kid))) = WN_next(kid);
	    if (WN_next(kid))
	      WN_prev(WN_next(kid)) = WN_last(WN_region_body(kid));
	    else
	      WN_last(tree) = WN_last(WN_region_body(kid));
	  } else {
	    if (WN_prev(kid))
	      WN_next(WN_prev(kid)) = next_kid = WN_next(kid);
	    else
	      WN_first(tree) = next_kid = WN_next(kid);
	    if (WN_next(kid))
	      WN_prev(WN_next(kid)) = WN_prev(kid);
	    else
	      WN_last(tree) = WN_prev(kid);
	  }
	  WN_DELETE_Tree ( WN_region_pragmas(kid) );
	  WN_DELETE_Tree ( WN_region_exits(kid) );
	  WN_Delete ( WN_region_body(kid) );
	  RID_Delete ( Current_Map_Tab, kid );
	  WN_Delete ( kid );

	}

        /* replace nested versioning MP_IF by its "else" (serialized) kid */
      } else if (WN_opcode(kid) == OPC_IF && WN_Is_If_MpVersion(kid)) {

              // temporary patch for PV 583176: always do
              // WN_Reset_If_MpVersion() on the IF, otherwise certain
              // nested parallel constructs cause a compiler assertion
	if (TRUE ||
	    inside_versioning_if) {
/*
What I really want to do here is to replace the entire MP_IF by the "else"
part, but this somehow corrupts the WHIRL so that CG chokes later on due
to a node with an invalid opcode (i.e. 0).  Need to look into this
later--DRK.
*/

//          DevWarn("replacing test in MP_IF by FALSE value");
//          WN *else_node = WN_else(kid);
          Strip_Nested_MP ( WN_then(kid) , ((pcf_nest == 0) && pcf_ok) );
          Strip_Nested_MP ( WN_else(kid) , ((pcf_nest == 0) && pcf_ok) );
          WN_DELETE_Tree(WN_if_test(kid));
          WN_if_test(kid) = WN_CreateIntconst(OPC_I4INTCONST, 0);
          WN_Reset_If_MpVersion(kid);

        } else {
          BOOL old_ivi = inside_versioning_if;  // restore value at end

          inside_versioning_if = TRUE;
          Strip_Nested_MP ( WN_then(kid) , ((pcf_nest == 0) && pcf_ok) );
          Strip_Nested_MP ( WN_else(kid) , ((pcf_nest == 0) && pcf_ok) );
          inside_versioning_if = old_ivi;
        }

      } else {
	/* recursively strip everything else */
	Strip_Nested_MP ( kid, ((pcf_nest == 0) && pcf_ok) );
      }
    }

  } else {

    for (kidno = 0; kidno < WN_kid_count(tree); kidno++)
      if (WN_kid(tree, kidno))
	Strip_Nested_MP ( WN_kid(tree, kidno), ((pcf_nest == 0) && pcf_ok) );

  }
}


/*  Walk through the preamble code (if any) in preamble blocks looking for
    stores into LOCAL, LASTLOCAL, and FIRSTPRIVATE variables (other than
    PREG's).  If any such
    stores are found then there needs to be a corresponding copyin operation
    created for each one.  */

static void Process_Preamble_Stores ( WN * tree, VAR_TABLE * vtab )
{
  OPCODE op;
  OPERATOR opr;
  INT32 i;
  WN *r;
  ST *old_sym;
  WN_OFFSET old_offset;
  VAR_TABLE *w;

  /* Ignore NULL subtrees. */

  if (tree == NULL)
    return;

  /* Initialization. */

  op = WN_opcode(tree);
  opr = OPCODE_operator(op);

  /* Look for any nodes storing into localized, non-preg symbols. */

  if (OPCODE_has_sym(op) && WN_st(tree) &&
      (ST_class(WN_st(tree)) != CLASS_PREG)) {
    if (opr == OPR_STID) {
      old_sym = WN_st(tree);
      old_offset = WN_offsetx(tree);
      for (w=vtab; w->orig_st; w++) {
	if ((w->vtree == NULL) &&
	    (w->orig_st == old_sym) &&
	    (w->has_offset ? (w->orig_offset == old_offset) : TRUE )) {
	  if (copyin_block == NULL)
	    copyin_block = WN_CreateBlock ( );
	  WN_INSERT_BlockLast ( copyin_block,
				Gen_MP_Load_Store ( w->orig_st, old_offset,
						    w->new_st, old_offset,
						    w->is_dynamic_array ));
	  break;
	}
      }
    } else if (opr == OPR_ISTORE) {
      for (w=vtab; w->orig_st; w++) {
	if ((w->vtree && (WN_Compare_Trees(w->vtree, WN_kid1(tree)) == 0)) ||
	    (w->vtreex && (WN_Compare_Trees(w->vtreex, WN_kid1(tree)) == 0))) {
	  if (copyin_block == NULL)
	    copyin_block = WN_CreateBlock ( );
	  WN_INSERT_BlockLast ( copyin_block,
				Gen_MP_Load_Store ( w->orig_st, w->orig_offset,
						    w->new_st, w->new_offset,
						    w->is_dynamic_array ));
	  break;
	}
      }
    }
  }

  /* Walk all children */

  if (op == OPC_BLOCK)
    for (r = WN_first(tree); r; r = WN_next(r))
      Process_Preamble_Stores ( r, vtab );
  else
    for (i=0; i < WN_kid_count(tree); i++)
      Process_Preamble_Stores ( WN_kid(tree, i), vtab );

  return;
}   

/*
 * Called with the serial instance of an ordered omp parallel do
 * Delete calls to 
 *      omp_pdo_ordered_begin_iter
 *      omp_pdo_ordered_end_iter
 *      omp_ordered_begin
 *      omp_ordered_end
 */
static void Cleanup_Ordered (WN* block_wn, WN* wn) {

  OPCODE opc;

  if (!wn) return;

  opc = WN_opcode(wn);
  if (opc == OPC_VCALL) {
    char* name = ST_name(WN_st(wn));
    if (strcmp (name, "__omp_pdo_ordered_begin_iter") == 0 ||
        strcmp (name, "__omp_pdo_ordered_end_iter") == 0 ||
        strcmp (name, "__omp_begin_ordered") == 0 ||
        strcmp (name, "__omp_end_ordered") == 0) {

      WN_DELETE_Tree(WN_EXTRACT_FromBlock (block_wn, wn));
      return;
    }
  }

  if (opc == OPC_REGION && RID_TYPE_mp(REGION_get_rid(wn))) {
    /* don't go into nested parallel regions,
     * since they should retain their clauses.
     * Strictly speaking only nested parallel regions should retain
     * their clauses, while we can delete them from a PDO.
     */
    WN* pragma = WN_first(WN_region_pragmas(wn));
    while (pragma) {
      if (WN_pragma(pragma) == WN_PRAGMA_PARALLEL_BEGIN ||
          WN_pragma(pragma) == WN_PRAGMA_PARALLEL_DO) {
        return;
      }
      pragma = WN_next(pragma);
    }
  }

  if (opc == OPC_BLOCK) {
    WN* kid = WN_first(wn);
    while (kid) {
      /* we need to get next since Cleanup_Ordered may blow-away kid */
      WN* tmp = WN_next(kid);
      Cleanup_Ordered (wn, kid);
      kid = tmp;
    }
  }
  else {
    INT i;
    for (i=0; i<WN_kid_count(wn); i++) {
      Cleanup_Ordered (block_wn, WN_kid(wn,i));
    }
  }
}


/*  Extract do info for mp scheduling. 
 */

static void Extract_Do_Info ( WN * do_tree )
{
  WN        *do_idname  = WN_index(do_tree);
  ST        *do_id_st   = WN_st(do_idname);
  WN_OFFSET  do_id_ofst = WN_offsetx(do_idname);
  WN        *do_init;
  WN        *do_limit;
  WN        *do_stride;
  BOOL      was_kid0 = FALSE;

  /* Extract mp scheduling info from do */

  do_init = WN_kid0(WN_start(do_tree));
  WN_kid0(WN_start(do_tree)) = NULL;

  if ((WN_operator(WN_kid0(WN_end(do_tree))) == OPR_LDID) &&
      (WN_st(WN_kid0(WN_end(do_tree))) == do_id_st) &&
      (WN_offsetx(WN_kid0(WN_end(do_tree))) == do_id_ofst)) {
    was_kid0 = TRUE;
    do_limit = WN_kid1(WN_end(do_tree));
    WN_kid1(WN_end(do_tree)) = NULL;
  } else if ((WN_operator(WN_kid1(WN_end(do_tree))) == OPR_LDID) &&
	     (WN_st(WN_kid1(WN_end(do_tree))) == do_id_st) &&
	     (WN_offsetx(WN_kid1(WN_end(do_tree))) == do_id_ofst)) {
    do_limit = WN_kid0(WN_end(do_tree));
    WN_kid0(WN_end(do_tree)) = NULL;
  } else {
    WN_Upper_Bound_Standardize ( do_tree, WN_end(do_tree), TRUE );
    if ((WN_operator(WN_kid0(WN_end(do_tree))) == OPR_LDID) &&
	(WN_st(WN_kid0(WN_end(do_tree))) == do_id_st) &&
	(WN_offsetx(WN_kid0(WN_end(do_tree))) == do_id_ofst)) {
      was_kid0 = TRUE;
      do_limit = WN_kid1(WN_end(do_tree));
      WN_kid1(WN_end(do_tree)) = NULL;
    } else if ((WN_operator(WN_kid1(WN_end(do_tree))) == OPR_LDID) &&
	       (WN_st(WN_kid1(WN_end(do_tree))) == do_id_st) &&
	       (WN_offsetx(WN_kid1(WN_end(do_tree))) == do_id_ofst)) {
      do_limit = WN_kid0(WN_end(do_tree));
      WN_kid0(WN_end(do_tree)) = NULL;
    } else {
      Fail_FmtAssertion ( "malformed limit test in MP processing" );
    }
  }

  if ((WN_operator(WN_kid0(WN_kid0(WN_step(do_tree)))) == OPR_LDID) &&
      (WN_st(WN_kid0(WN_kid0(WN_step(do_tree)))) == do_id_st) &&
      (WN_offsetx(WN_kid0(WN_kid0(WN_step(do_tree)))) == do_id_ofst))
    do_stride = WN_COPY_Tree ( WN_kid1(WN_kid0(WN_step(do_tree))) );
  else
    do_stride = WN_COPY_Tree ( WN_kid0(WN_kid0(WN_step(do_tree))) );

  /* Generate mp scheduling expressions */

  base_node = do_init;

  if (((WN_operator(WN_end(do_tree)) == OPR_LT) && was_kid0) ||
      ((WN_operator(WN_end(do_tree)) == OPR_GT) && !was_kid0)) { 
    WN* wn_exp0 = WN_Sub(do_index_type, do_limit, WN_COPY_Tree(do_init));
    wn_exp0 = WN_Integer_Cast(wn_exp0, do_index_type, WN_rtype(wn_exp0));
    WN* wn_exp1 = WN_Add(do_index_type, wn_exp0, WN_COPY_Tree(do_stride));
    wn_exp1 = WN_Integer_Cast(wn_exp1, do_index_type, WN_rtype(wn_exp1));
    WN* wn_exp2 = WN_Sub(do_index_type, wn_exp1, WN_Intconst(do_index_type, 1));
    wn_exp2 = WN_Integer_Cast(wn_exp2, do_index_type, WN_rtype(wn_exp2));
    WN* wn_exp3 = WN_Div(do_index_type, wn_exp2, WN_COPY_Tree(do_stride));
    ntrip_node = wn_exp3; 
  } else if (((WN_operator(WN_end(do_tree)) == OPR_GT) && was_kid0) ||
           ((WN_operator(WN_end(do_tree)) == OPR_LT) && !was_kid0)) { 
    WN* wn_exp0 = WN_Sub(do_index_type, do_limit, WN_COPY_Tree(do_init));
    wn_exp0 = WN_Integer_Cast(wn_exp0, do_index_type, WN_rtype(wn_exp0));
    WN* wn_exp1 = WN_Add(do_index_type, wn_exp0, WN_Intconst(do_index_type, 1));
    wn_exp1 = WN_Integer_Cast(wn_exp1, do_index_type, WN_rtype(wn_exp1));
    WN* wn_exp2 = WN_Add(do_index_type, wn_exp1, WN_COPY_Tree(do_stride));
    wn_exp2 = WN_Integer_Cast(wn_exp2, do_index_type, WN_rtype(wn_exp2));
    WN* wn_exp3 = WN_Div(do_index_type, wn_exp2, WN_COPY_Tree(do_stride));
    ntrip_node = wn_exp3; 
  } else { 
    WN* wn_exp0 = WN_Sub(do_index_type, do_limit, WN_COPY_Tree(do_init));
    wn_exp0 = WN_Integer_Cast(wn_exp0, do_index_type, WN_rtype(wn_exp0));
    WN* wn_exp1 = WN_Add(do_index_type, wn_exp0, WN_COPY_Tree(do_stride));
    wn_exp1 = WN_Integer_Cast(wn_exp1, do_index_type, WN_rtype(wn_exp1));
    WN* wn_exp2 = WN_Div(do_index_type, wn_exp1, WN_COPY_Tree(do_stride));
    ntrip_node = wn_exp2; 
  } 
  stride_node = do_stride;

}


/*  Rewrite do statement.  */

static void Rewrite_Do ( WN * do_tree )
{
  WN        *wn;
  WN        *do_idname  = WN_index(do_tree);
  ST        *do_id_st   = WN_st(do_idname);
  WN_OFFSET  do_id_ofst = WN_offsetx(do_idname);
  WN        *do_stride;
  WN        *loop_info;
  ST        *limit_st;
  WN_OFFSET  limit_ofst;

  /* Generate do preamble code to calculate limit value */

  if ((WN_operator(WN_kid0(WN_kid0(WN_step(do_tree)))) == OPR_LDID) &&
      (WN_st(WN_kid0(WN_kid0(WN_step(do_tree)))) == do_id_st) &&
      (WN_offsetx(WN_kid0(WN_kid0(WN_step(do_tree)))) == do_id_ofst))
    do_stride = WN_kid1(WN_kid0(WN_step(do_tree)));
  else
    do_stride = WN_kid0(WN_kid0(WN_step(do_tree)));

  Create_Preg_or_Temp ( do_index_type, "do_limit", &limit_st, &limit_ofst );
  if ((WN_operator(WN_end(do_tree)) == OPR_LT) ||
      (WN_operator(WN_end(do_tree)) == OPR_GT))
    wn = WN_Add ( do_index_type,
		  Gen_MP_Load ( local_start, 0 ),
		  WN_Mpy ( do_index_type,
			   Gen_MP_Load ( local_ntrip, 0 ),
			   WN_COPY_Tree ( do_stride )));
  else
    wn = WN_Sub ( do_index_type,
		  WN_Add ( do_index_type,
			   Gen_MP_Load ( local_start, 0 ),
			   WN_Mpy ( do_index_type,
				    Gen_MP_Load ( local_ntrip, 0 ),
				    WN_COPY_Tree ( do_stride ))),
		  WN_COPY_Tree ( do_stride ));
  do_prefix = WN_Stid ( do_index_type, limit_ofst, limit_st, ST_type(limit_st),
			wn );
  WN_linenum(do_prefix) = line_number;

  /* Fix up the do loop controls */

/* Temporary fix for PV 381272.  Wopt cannot handle double convert of I8 -> I1/2
   and so we coerce I8 to I4 first.  Note that the offset (4) is correct for
   little endian systems only. */
  if ((ST_sclass(local_start) == SCLASS_AUTO) &&
      (ST_btype(local_start) == MTYPE_I8) &&
      ((WN_desc(WN_start(do_tree)) == MTYPE_I1) ||
       (WN_desc(WN_start(do_tree)) == MTYPE_I2))) { 
    WN_kid0(WN_start(do_tree)) = WN_RLdid ( Promote_Type(MTYPE_I4), MTYPE_I4, 4,
					    local_start, MTYPE_To_TY(MTYPE_I4));
  } else { 
/* End temporary fix for PV 381272. */
    WN* wn_local_start = Gen_MP_Load(local_start, 0);
    WN* wn_new_local_start = WN_Integer_Cast(wn_local_start, Promote_Type(WN_desc(WN_start(do_tree))), WN_rtype(wn_local_start));
    WN_kid0(WN_start(do_tree)) = wn_new_local_start; 
  } 

  WN* wn_ldid = WN_Ldid(do_index_type, limit_ofst, limit_st, 
    ST_type(limit_st));
  WN* wn_cvt_ldid = wn_ldid; 
  if (WN_rtype(wn_cvt_ldid) != WN_desc(WN_end(do_tree)))
     wn_cvt_ldid = WN_Integer_Cast(wn_cvt_ldid, WN_desc(WN_end(do_tree)),
       WN_rtype(wn_cvt_ldid));
  if (WN_kid0(WN_end(do_tree)) == NULL) { 
    WN_kid0(WN_end(do_tree)) = wn_cvt_ldid; 
  } else { 
    WN_kid1(WN_end(do_tree)) = wn_cvt_ldid;
  } 

  /* Fix up the optional LOOP_INFO node */

  loop_info = WN_do_loop_info(do_tree);
  if (loop_info) {
    WN_loop_trip_est(loop_info) = 0;
    WN_loop_depth(loop_info) = 1;
    WN_Reset_Loop_Nz_Trip ( loop_info );
    if (WN_loop_trip(loop_info)) {
      WN_DELETE_Tree ( WN_loop_trip(loop_info) );
      WN_set_loop_trip ( loop_info, Gen_MP_Load ( local_ntrip, 0 ));
    }
  }
} // Rewrite_Do()


/*  Transform a pdo.  */

static WN * Transform_PDO ( WN * tree )
{
  INT32      i;
  INT32      vsize;
  WN        *wn;
  WN        *wn1;
  WN        *wn2;
  WN        *cur_node;
  WN        *first_node;
  WN        *prev_node;
  WN        *next_node;
  WN        *pdo_node;
  WN        *mpsched_wn;
  WN        *chunk_wn;
  WN        *body_block;
  WN        *while_block;
  WN        *reduction_init_block;
  WN        *reduction_store_block;
  ST        *return_st;
  WN_OFFSET  return_ofst;
  PREG_NUM   rreg1, rreg2;
  BOOL       while_seen = FALSE;
  BOOL       is_omp;
  BOOL       do_dealloca = FALSE;
  WN         *nested_alloca_block = NULL, *nested_firstprivate_block = NULL;
  WN         *sp_save_stid;
  Alloca_Var_List *avlist;
  const BOOL orphaned = (mpt == MPP_ORPHANED_PDO);

  Is_True(mpt == MPP_PDO || mpt == MPP_ORPHANED_PDO,
          ("not inside a PDO loop"));

  /* Initialization. */

  nested_local_count      = 0;
  nested_reduction_count  = 0;
  nested_affinity_nodes   = NULL;
  nested_affinity_d_nodes = NULL;
  nested_affinity_t_nodes = NULL;
  nested_chunk_node       = NULL;
  nested_lastlocal_nodes  = NULL;
  nested_lastthread_node  = NULL;
  nested_local_nodes      = NULL;
  nested_firstprivate_nodes = NULL;
  nested_mpsched_node     = NULL;
  nested_nowait_node      = NULL;
  nested_ordered_node     = NULL;
  nested_reduction_nodes  = NULL;
  nested_shared_nodes     = NULL;
  nested_do_order_lb      = NULL;
  nested_do_order_stride  = NULL;

  if (orphaned) {
      // set up some globals
    psymtab = CURRENT_SYMTAB;
    ppuinfo = Current_PU_Info;
    pmaptab = Current_Map_Tab;

      /* create temporaries for calls to runtime PDO routines */
    Make_Local_Temps();
    local_start = mpbase_st;
    local_ntrip = mptrips_st;
    thread_info = mpflags_st;
  }

  cur_node = WN_first(WN_region_pragmas(tree));

  FmtAssert (cur_node &&
             WN_opcode(cur_node) == OPC_PRAGMA &&
             WN_pragma(cur_node) == WN_PRAGMA_PDO_BEGIN,
             ("Transform_PDO: Unexpected first pragma node"));
  is_omp = WN_pragma_omp(cur_node);

  next_node = WN_next(cur_node);
  WN_Delete ( cur_node );

  while (cur_node = next_node) {

    next_node = WN_next(cur_node);

    if (((WN_opcode(cur_node) == OPC_PRAGMA) ||
	 (WN_opcode(cur_node) == OPC_XPRAGMA)) &&
	(WN_pragmas[WN_pragma(cur_node)].users & PUSER_MP)) {

      switch (WN_pragma(cur_node)) {

	case WN_PRAGMA_AFFINITY:
	  WN_next(cur_node) = nested_affinity_nodes;
	  nested_affinity_nodes = cur_node;
	  break;

	case WN_PRAGMA_DATA_AFFINITY:
	  WN_next(cur_node) = nested_affinity_d_nodes;
	  nested_affinity_d_nodes = cur_node;
	  break;

	case WN_PRAGMA_THREAD_AFFINITY:
	  WN_next(cur_node) = nested_affinity_t_nodes;
	  nested_affinity_t_nodes = cur_node;
	  break;

	case WN_PRAGMA_CHUNKSIZE:
	  if (nested_chunk_node)
	    WN_DELETE_Tree ( nested_chunk_node );
	  nested_chunk_node = cur_node;
	  break;

	case WN_PRAGMA_LASTLOCAL:
	  for (wn = nested_lastlocal_nodes; wn; wn = WN_next(wn))
	    if (Identical_Pragmas(cur_node, wn))
	      break;
	  if (wn == NULL) {
	    WN_next(cur_node) = nested_lastlocal_nodes;
	    nested_lastlocal_nodes = cur_node;
	    ++nested_local_count;
	    if (TY_kind(ST_type(WN_st(cur_node))) == KIND_SCALAR)
	      shared_table[shared_count++] = WN_st(cur_node);
	  } else
	    WN_Delete ( cur_node );
	  break;

	case WN_PRAGMA_LASTTHREAD:
	  if (nested_lastthread_node)
	    WN_Delete ( nested_lastthread_node );
	  nested_lastthread_node = cur_node;
	  break;

	case WN_PRAGMA_LOCAL:
	  for (wn = nested_local_nodes; wn; wn = WN_next(wn))
	    if (Identical_Pragmas(cur_node, wn))
	      break;
	  if (wn == NULL) {
	    if (ST_Has_Dope_Vector(WN_st(cur_node))) {
	        // F90 arrays with dope vectors must be initialized
	      WN_next(cur_node) = nested_firstprivate_nodes;
	      nested_firstprivate_nodes = cur_node;
	    } else {
	      WN_next(cur_node) = nested_local_nodes;
	      nested_local_nodes = cur_node;
	    }
	    ++nested_local_count;
	  } else
	    WN_Delete ( cur_node );
	  break;

	case WN_PRAGMA_FIRSTPRIVATE:
	  for (wn = nested_firstprivate_nodes; wn; wn = WN_next(wn))
	    if (Identical_Pragmas(cur_node, wn))
	      break;
	  if (wn == NULL) {
	    WN_next(cur_node) = nested_firstprivate_nodes;
	    nested_firstprivate_nodes = cur_node;
	    ++nested_local_count;
	  } else
	    WN_Delete ( cur_node );
	  break;

	case WN_PRAGMA_MPSCHEDTYPE:
	  if (nested_mpsched_node)
	    WN_Delete ( nested_mpsched_node );
	  nested_mpsched_node = cur_node;
	  break;

	case WN_PRAGMA_NOWAIT:
	  if (nested_nowait_node)
	    WN_Delete ( nested_nowait_node );
	  nested_nowait_node = cur_node;
	  break;

	case WN_PRAGMA_ORDERED:
	  if (nested_ordered_node)
	    WN_Delete ( nested_ordered_node );
	  nested_ordered_node = cur_node;
	  break;

        case WN_PRAGMA_ORDERED_LOWER_BOUND:
          if (nested_do_order_lb) WN_Delete (nested_do_order_lb);
          nested_do_order_lb = cur_node;
          break;

        case WN_PRAGMA_ORDERED_STRIDE:
          if (nested_do_order_stride) WN_Delete (nested_do_order_stride);
          nested_do_order_stride = cur_node;
          break;

	case WN_PRAGMA_PDO_END: 
	case WN_PRAGMA_END_MARKER:
	  break; 

	case WN_PRAGMA_REDUCTION:
	  for (wn = nested_reduction_nodes; wn; wn = WN_next(wn))
	    if (Identical_Pragmas(cur_node, wn))
	      break;
	  if (wn == NULL) {
	    WN_next(cur_node) = nested_reduction_nodes;
	    nested_reduction_nodes = cur_node;
	    ++nested_local_count;
	    ++nested_reduction_count;
	    if (WN_opcode(cur_node) == OPC_PRAGMA)
	      shared_table[shared_count++] = WN_st(cur_node);
	  } else
	    WN_DELETE_Tree ( cur_node );
	  break;

      /* we can get a SHARED(preg) clause in a SINGLE region due to
         variable renaming in LNO; must allow these pragmas */
	case WN_PRAGMA_SHARED:
	  for (wn = nested_shared_nodes; wn; wn = WN_next(wn))
	    if (Identical_Pragmas(cur_node, wn))
	      break;
	  if (wn == NULL) {
	    WN_next(cur_node) = nested_shared_nodes;
	    nested_shared_nodes = cur_node;
	    if (TY_kind(ST_type(WN_st(cur_node))) == KIND_SCALAR)
	      shared_table[shared_count++] = WN_st(cur_node);
	  } else
	    WN_Delete ( cur_node );
	  break;

	default:
	  Fail_FmtAssertion (
		  "out of context pragma (%s) in MP {region pragma} processing",
		  WN_pragmas[WN_pragma(cur_node)].name);

      }

    } else

      Fail_FmtAssertion ( "out of context node (%s) in MP {region} processing",
			  OPCODE_name(WN_opcode(cur_node)) );
  }

  body_block = WN_region_body(tree);
  first_node = pdo_node = WN_first(body_block);
  while (pdo_node && (WN_opcode(pdo_node) != OPC_DO_LOOP)) {
    if ((WN_opcode(pdo_node) == OPC_DO_WHILE) ||
	(WN_opcode(pdo_node) == OPC_WHILE_DO))
      while_seen = TRUE;
    pdo_node = WN_next(pdo_node);
  }

  if (pdo_node) {
    WN *nested_non_pod_finalization_nodes;

    if (non_pod_finalization_nodes) {
        // In non-orphaned PDO, Process_Parallel_Region() will have
        // extracted non-POD finalization code (if any), so we re-insert it
      if (mpt != MPP_PDO)
        Fail_FmtAssertion("out of place non-POD finalization code");
      nested_non_pod_finalization_nodes = non_pod_finalization_nodes;
      non_pod_finalization_nodes = NULL;
    } else
      nested_non_pod_finalization_nodes = NULL;

    if (nested_local_count) {
        // privatize within DO_LOOP but not code before or after it
      vsize = (nested_local_count + 1) * sizeof(VAR_TABLE);
      nested_var_table = (VAR_TABLE *) alloca ( vsize );
      bzero ( nested_var_table, vsize );
      Create_Local_Variables ( nested_var_table, nested_reduction_nodes,
			       nested_lastlocal_nodes, nested_local_nodes,
			       nested_firstprivate_nodes,
			       &nested_firstprivate_block,
			       nested_lastthread_node,
                                 /* orphaned PDO does its own allocation */
			       orphaned ? &nested_alloca_block :
			                  &alloca_block);
      Localize_Parent_Stack lps(orphaned, body_block);
        // Walk_and_Localize() won't replace DO_LOOP node
      (void) Walk_and_Localize ( pdo_node, nested_var_table, &lps, FALSE,
                                 &nested_non_pod_finalization_nodes );
    }

    prev_node = WN_prev(pdo_node);
    if (prev_node) {
        // add synchronization to sandwich code before PDO
      WN *code_before_pdo = WN_CreateBlock();
      WN_EXTRACT_ItemsFromBlock(body_block, first_node, prev_node);
      WN_first(code_before_pdo) = first_node;
      WN_last(code_before_pdo) = prev_node;
      WN_INSERT_BlockBefore(body_block, pdo_node, code_before_pdo);
      prev_node = WN_prev(pdo_node);
    }

    WN *code_after_pdo = NULL;  // BLOCK for sandwich code after PDO (if any)
    if (WN_next(pdo_node)) {
      WN *next_node = WN_next(pdo_node), *last_node = WN_last(body_block);
      code_after_pdo = WN_CreateBlock();
      WN_EXTRACT_ItemsFromBlock(body_block, next_node, last_node);
      WN_first(code_after_pdo) = next_node;
      WN_last(code_after_pdo) = last_node;
    }
    WN_EXTRACT_FromBlock(body_block, pdo_node);

    /* Determine user's real do index and type. */

    do_index_st = WN_st(WN_index(pdo_node));

    do_index_type = TY_mtype(ST_type(do_index_st));
    if (do_index_type == MTYPE_I1 || do_index_type == MTYPE_I2)
      do_index_type = MTYPE_I4;
    else if (do_index_type == MTYPE_U1 || do_index_type == MTYPE_U2)
      do_index_type = MTYPE_U4;

    /* Translate do statement itself. */

    Extract_Do_Info ( pdo_node );

    Rewrite_Do ( pdo_node );

    /* Determine mp scheduling parameters. */
  
    if (nested_lastthread_node) {

      mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
				       WN_PRAGMA_SCHEDTYPE_SIMPLE );
      chunk_wn = WN_CreateIntconst ( OPC_I4INTCONST, 1 );

    } else if ((nested_ordered_node && !WN_pragma_omp(nested_ordered_node)) ||
               (ordered_node && !WN_pragma_omp(ordered_node))) {

      mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
				       WN_PRAGMA_SCHEDTYPE_DYNAMIC );
      chunk_wn = WN_CreateIntconst ( OPC_I4INTCONST, 1 );

    } else {

      if (nested_mpsched_node)
	mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
					 WN_pragma_arg1(nested_mpsched_node) );
      else if (mpsched_node)
	mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
					 WN_pragma_arg1(mpsched_node) );
      else if (pu_mpsched_node)
	mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
					 WN_pragma_arg1(pu_mpsched_node) );
      else if (nested_chunk_node || chunk_node || pu_chunk_node)
	mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
					 WN_PRAGMA_SCHEDTYPE_DYNAMIC );
      else
	mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
					 WN_PRAGMA_SCHEDTYPE_SIMPLE );
  
      if (nested_chunk_node)
	chunk_wn = WN_COPY_Tree ( WN_kid0(nested_chunk_node) );
      else if (chunk_node)
	chunk_wn = WN_COPY_Tree ( WN_kid0(chunk_node) );
      else if (pu_chunk_node)
	chunk_wn = WN_COPY_Tree ( WN_kid0(pu_chunk_node) );
      else
	chunk_wn = WN_CreateIntconst ( OPC_I4INTCONST, 1 );

    }

    /* Generate replacement code for pdo. */
  
    if (nested_alloca_block) {
      WN *last = WN_last(nested_alloca_block), *save_last;

        /* conditionally do deallocation of alloca()'d memory--see detailed
	   comment in Gen_MP_SingleProcess_Region() */
      if ((do_dealloca = !Calls_Alloca(body_block)) != 0) {
        wn = Gen_Save_Stack_Pointer("orphaned_pdo", &sp_save_stid);
        save_last = WN_last(wn);
        WN_INSERT_BlockAfter(body_block, prev_node, wn);
        prev_node = save_last;
        avlist = CXX_NEW(Alloca_Var_List(nested_alloca_block),
                         &mp_lower_pool);
      }
      WN_INSERT_BlockAfter(body_block, prev_node, nested_alloca_block);
      prev_node = last;

      Set_PU_has_alloca(Get_Current_PU());
    }

    if (nested_lastthread_node) {
      wn = Gen_MP_Store ( WN_st(nested_lastthread_node),
			  WN_offsetx(nested_lastthread_node),
			  WN_Intconst ( MTYPE_I4, 0 ));
      WN_INSERT_BlockAfter(body_block, prev_node, wn);
      prev_node = wn;
    }

    if (nested_firstprivate_block) {
      Is_True(nested_firstprivate_nodes, ("NULL nested_firstprivate_nodes"));

      WN *last = WN_last(nested_firstprivate_block);

      WN_INSERT_BlockAfter(body_block, prev_node, nested_firstprivate_block);
      prev_node = last;
    }

    if (nested_reduction_count) {
      WN *last;

      Gen_MP_Reduction(nested_var_table, nested_local_count,
                       &reduction_init_block, &reduction_store_block);
      last = WN_last(reduction_init_block);
      WN_INSERT_BlockAfter(body_block, prev_node, reduction_init_block);
      prev_node = last;
    }

    if (nested_ordered_node && WN_pragma_omp(nested_ordered_node)) {
      WN *order_begin;
      order_begin = Gen_OMP_Pdo_Ordered_Begin(WN_kid0(nested_do_order_lb),
                                              WN_kid0(nested_do_order_stride));
      WN_INSERT_BlockAfter (body_block, prev_node, order_begin);
      prev_node = order_begin;
    }

    if (numthreads_node)
      wn = Gen_MP_BeginPDO_64 ( base_node, ntrip_node, stride_node,
				WN_CreateIntconst ( OPC_I4INTCONST,
						    num_constructs ),
				WN_COPY_Tree ( WN_kid0(numthreads_node) ),
				mpsched_wn, chunk_wn, is_omp );
    else
      wn = Gen_MP_BeginPDO_64 ( base_node, ntrip_node, stride_node,
				WN_CreateIntconst ( OPC_I4INTCONST,
						    num_constructs ),
				WN_CreateIntconst ( OPC_I4INTCONST, 0 ),
				mpsched_wn, chunk_wn, is_omp );


    WN_INSERT_BlockAfter(body_block, prev_node, wn);
    prev_node = wn;

    wn1 = Gen_MP_NextIters_64 ( WN_CreateIntconst ( OPC_I4INTCONST,
						    num_constructs ),
				WN_Lda ( Pointer_type, 0, mpbase_st ),
				WN_Lda ( Pointer_type, 0, mptrips_st ),
				WN_Lda ( Pointer_type, 0, mpflags_st ),
                                is_omp );
    WN_INSERT_BlockAfter(body_block, prev_node, wn1);
    prev_node = wn1;

    Create_Preg_or_Temp ( MTYPE_I4, "mpni_status", &return_st, &return_ofst );
    GET_RETURN_PREGS(rreg1, rreg2, MTYPE_I4);
    wn2 = WN_Stid ( MTYPE_I4, return_ofst, return_st, ST_type(return_st),
		    WN_LdidPreg ( MTYPE_I4, rreg1 ));
    WN_linenum(wn2) = line_number;
    WN_INSERT_BlockAfter(body_block, prev_node, wn2);
    prev_node = wn2;

    while_block = WN_CreateBlock ( );
    WN_INSERT_BlockLast ( while_block, do_prefix );
    WN_INSERT_BlockLast ( while_block, pdo_node );
    WN_INSERT_BlockLast ( while_block, WN_COPY_Tree ( wn1 ) );
    WN_INSERT_BlockLast ( while_block, WN_COPY_Tree ( wn2 ) );
    wn = WN_CreateWhileDo ( WN_Ldid ( MTYPE_I4, return_ofst, return_st,
				      ST_type(return_st) ),
			    while_block );
    WN_linenum(wn) = line_number;
    WN_INSERT_BlockAfter(body_block, prev_node, wn);
    prev_node = wn;
  
    if (nested_lastlocal_nodes || nested_non_pod_finalization_nodes) {
      BOOL found_non_pod = FALSE;
      WN *first_and_last_mp_barrier = non_pod_first_and_lastprivate ?
                                      Gen_MP_Barrier(FALSE) : NULL;

      wn = WN_CreateBlock ( );
      for (i = 0; i < nested_local_count; i++) {
        VAR_TABLE *v = &nested_var_table[i];

	if (v->vtype == VAR_LASTLOCAL) {
            // if any variables are both LASTLOCAL and FIRSTPRIVATE, put
            // an MP barrier just before the LASTLOCAL finalization to
            // prevent the race condition described in PV 566923
	  if (v->is_last_and_firstprivate && !first_and_last_mp_barrier)
	    first_and_last_mp_barrier = Gen_MP_Barrier(FALSE);

            // generate finalization code, unless frontend already did so
	  if (!v->is_non_pod) {
	    WN_INSERT_BlockLast ( wn,
	        Gen_MP_Load_Store ( v->new_st, v->new_offset,
	                            v->orig_st, v->orig_offset,
	                            v->is_dynamic_array ) );
          } else
            found_non_pod = TRUE;
	}
      }

        // validate non-POD finalization code
      if (nested_non_pod_finalization_nodes) {
        if (mpt == MPP_ORPHANED_PDO) {
            // orphaned PDO case: lastprivate nodes are on PDO
          if (!found_non_pod)
            Fail_FmtAssertion("missing non-POD lastprivate clauses");
        } else {
            // non-orphaned PDO case: lastprivate nodes are on PARALLEL
          if (found_non_pod)
              // fecc should move lastprivate clauses to enclosing PARALLEL
            Fail_FmtAssertion("extraneous non-POD lastprivate clauses");
        }
      } else {
        if (found_non_pod)
            // should never have clauses without finalization code
          Fail_FmtAssertion("missing non-POD finalization code");
      }

      if (nested_non_pod_finalization_nodes) {
        WN *finalization_code = WN_then(nested_non_pod_finalization_nodes);

        WN_then(nested_non_pod_finalization_nodes) = NULL;
        WN_INSERT_BlockLast(wn, finalization_code);
        WN_DELETE_Tree(nested_non_pod_finalization_nodes);
      }

      if (nested_lastthread_node)
	wn = WN_CreateIf ( Gen_MP_Load ( WN_st(nested_lastthread_node), 
					 WN_offsetx(nested_lastthread_node) ),
			   wn, WN_CreateBlock() );
      else
	wn = WN_CreateIf ( WN_Band ( MTYPE_I4,
				     Gen_MP_Load ( thread_info, 0 ),
				     WN_CreateIntconst ( OPC_I4INTCONST,
							 0x100 )),
			   wn, WN_CreateBlock() );
      WN_linenum(wn) = line_number;

        // if needed, insert an MP barrier surrounded by memory barriers
      if (first_and_last_mp_barrier) {
      	WN *blk = WN_CreateBlock();
      	WN_INSERT_BlockLast(blk, WN_CreateBarrier(TRUE, 0));
      	WN_INSERT_BlockLast(blk, first_and_last_mp_barrier);
      	WN_INSERT_BlockLast(blk, WN_CreateBarrier(FALSE, 0));
      	WN *last = WN_last(blk);
      	WN_INSERT_BlockAfter(body_block, prev_node, blk);
      	prev_node = last;
      }
      
        // insert the IF, surrounded by memory barriers
      {
      	WN *blk = WN_CreateBlock();
      	WN_INSERT_BlockLast(blk, WN_CreateBarrier(TRUE, 0));
      	WN_INSERT_BlockLast(blk, wn);
      	WN_INSERT_BlockLast(blk, WN_CreateBarrier(FALSE, 0));
      	WN *last = WN_last(blk);
      	WN_INSERT_BlockAfter(body_block, prev_node, blk);
      	prev_node = last;
      }

        // Insert barriers inside the if as well
      WN_INSERT_BlockBefore (WN_then(wn), NULL, WN_CreateBarrier(TRUE,0));
      WN_INSERT_BlockAfter (WN_then(wn), NULL, WN_CreateBarrier(FALSE,0));
    } // if (nested_lastlocal_nodes || nested_non_pod_finalization_nodes)

    if (nested_reduction_count) {
      WN *last = WN_last(reduction_store_block);

      WN_INSERT_BlockAfter(body_block, prev_node, reduction_store_block);
      prev_node = last;
    }

    if (nested_nowait_node == NULL || is_omp) {
      if (nested_nowait_node == NULL) {
          // insert a forward barrier
        WN *bwn = WN_CreateBarrier(TRUE, 0);
        WN_INSERT_BlockAfter(body_block, prev_node, bwn);
        prev_node = bwn;
      }
      wn = Gen_MP_EndPDO ( WN_CreateIntconst ( OPC_I4INTCONST,
					       num_constructs ),
                           is_omp,
                           (nested_nowait_node ? FALSE : TRUE));
      WN_INSERT_BlockAfter(body_block, prev_node, wn);
      prev_node = wn;
      if (nested_nowait_node == NULL) {
        // insert a backward barrier
        wn = WN_CreateBarrier(FALSE, 0);
        WN_INSERT_BlockAfter(body_block, prev_node, wn);
        prev_node = wn;
      }
    }

    if (nested_ordered_node && WN_pragma_omp(nested_ordered_node)) {
      WN *order_end = Gen_OMP_Pdo_Ordered_End ();
      WN_INSERT_BlockAfter(body_block, prev_node, order_end);
      prev_node = order_end;
    }

    if (do_dealloca) {
      WN *restore_block = Gen_Restore_Stack_Pointer(sp_save_stid, avlist);
      CXX_DELETE(avlist, &mp_lower_pool);
      WN *last = WN_last(restore_block);

      WN_INSERT_BlockAfter(body_block, prev_node, restore_block);
      prev_node = last;
    }

    if (code_after_pdo) {
        // insert post-PDO sandwich code after all lowered PDO code
      WN *last = WN_last(code_after_pdo);
      WN_INSERT_BlockAfter(body_block, prev_node, code_after_pdo);
      prev_node = last;
    }

    WN_next(prev_node) = NULL;
    WN_last(body_block) = prev_node;

  } else {

    /* There was no do_loop node in spite of a pdo pragma. Any residual code
       can be discarded. */

    if (!while_seen) {
      if (WN_first(body_block)) {
	WN_DELETE_Tree ( body_block );
	body_block = WN_CreateBlock ( );
      }
    } else
      Fail_FmtAssertion
		  ("parallel DO was converted to WHILE and not converted back");

  } // if (pdo_node)

  /* Free up all saved nodes. */

  while (nested_affinity_nodes) {
    WN *wn = WN_next(nested_affinity_nodes);
    WN_DELETE_Tree ( nested_affinity_nodes );
    nested_affinity_nodes = wn;
  }

  while (nested_affinity_d_nodes) {
    WN *wn = WN_next(nested_affinity_d_nodes);
    WN_DELETE_Tree ( nested_affinity_d_nodes );
    nested_affinity_d_nodes = wn;
  }

  while (nested_affinity_t_nodes) {
    WN *wn = WN_next(nested_affinity_t_nodes);
    WN_DELETE_Tree ( nested_affinity_t_nodes );
    nested_affinity_t_nodes = wn;
  }

  if (nested_chunk_node)
    WN_DELETE_Tree ( nested_chunk_node );

  while (nested_lastlocal_nodes) {
    WN *wn = WN_next(nested_lastlocal_nodes);
    WN_Delete ( nested_lastlocal_nodes );
    nested_lastlocal_nodes = wn;
  }

  if (nested_lastthread_node)
    WN_Delete ( nested_lastthread_node );

  while (nested_local_nodes) {
    WN *wn = WN_next(nested_local_nodes);
    WN_Delete ( nested_local_nodes );
    nested_local_nodes = wn;
  }

  while (nested_firstprivate_nodes) {
    WN *wn = WN_next(nested_firstprivate_nodes);
    WN_Delete ( nested_firstprivate_nodes );
    nested_firstprivate_nodes = wn;
  }

  if (nested_mpsched_node)
    WN_Delete ( nested_mpsched_node );

  if (nested_nowait_node)
    WN_Delete ( nested_nowait_node );

  if (nested_ordered_node)
    WN_Delete ( nested_ordered_node );

  while (nested_reduction_nodes) {
    WN *wn = WN_next(nested_reduction_nodes);
    WN_Delete ( nested_reduction_nodes );
    nested_reduction_nodes = wn;
  }

  while (nested_shared_nodes) {
    WN *wn = WN_next(nested_shared_nodes);
    WN_Delete ( nested_shared_nodes );
    nested_shared_nodes = wn;
  }

  for (i=0; i < nested_local_count; i++) {
    if (nested_var_table[i].vtree)
      WN_DELETE_Tree ( nested_var_table[i].vtree );
    if (nested_var_table[i].vtreex)
      WN_DELETE_Tree ( nested_var_table[i].vtreex );
  }

  return (body_block);
} // Transform_PDO()


/*
Scale FB for do_loop to reflect worksharing of its iterations among all
the threads (e.g. multiply the number of iterations by
fraction_per_thread).
*/

static void Scale_FB_Parallel_Do(WN *do_loop, float fraction_per_thread)
{
  Is_True(do_loop && WN_operator(do_loop) == OPR_DO_LOOP,
          ("bad do_loop"));
  Is_True(fraction_per_thread <= 1.0, ("bogus fraction_per_thread"));
  FB_Info_Loop loop_fil = parallel_pu_fb->Query_loop(do_loop);

    // Assume we will reach the parallel loop the same number of times
    // as in the serial case, so leave freq_zero, freq_positive, and
    // freq_out alone.
    // In reality, depending on the loop's schedule these frequencies could
    // be different from the serial case, but precise estimates are too
    // hard to compute for all the different cases.
  
  if (fraction_per_thread <= 0.5 &&
      (fraction_per_thread * loop_fil.freq_iterate.Value() >=
       loop_fil.freq_positive.Value())) {
      // There is at least one iteration per thread on average, so we
      // can scale the loop body's FB by fraction_per_thread. This is
      // the normal case.
    loop_fil.freq_iterate *= fraction_per_thread;
    loop_fil.freq_back = loop_fil.freq_iterate - loop_fil.freq_positive;

  } else {
      // There's less than one iteration per thread on average. This is
      // an uncommon case, and it's hard to tell how to update the FB in
      // the loop body (in fact frequencies are different for different
      // threads!), so just give up and leave it alone.
    return;
  }

  parallel_pu_fb->Annot_loop(do_loop, loop_fil);

    // scale loop body FB by fraction_per_thread
  parallel_pu_fb->FB_scale(WN_do_body(do_loop),
                           FB_FREQ(fraction_per_thread, FALSE));
} // Scale_FB_Parallel_Do()


/*  Transform the contents of a parallel region.  */

static void Transform_Parallel_Block ( WN * tree )
{
  INT32 i;
  WN *wn;
  WN *wn2;
  WN *wn3;
  WN *wn4;
  WN *cur_node;
  WN *prev_node;
  WN *next_node;
  WN *sp_block;
  ST *lock_st;
  INT32 num_criticals;
  BOOL is_omp, is_region;
  WN_PRAGMA_ID cur_id, end_id;
  INT32 gate_construct_num;

  for (cur_node = WN_first(tree); cur_node; cur_node = next_node) {

    prev_node = WN_prev(cur_node);
    next_node = WN_next(cur_node);

    if (((WN_opcode(cur_node) == OPC_PRAGMA) ||
         (WN_opcode(cur_node) == OPC_XPRAGMA)) &&
        (WN_pragmas[WN_pragma(cur_node)].users & PUSER_MP)) {

      switch (cur_id = (WN_PRAGMA_ID) WN_pragma(cur_node)) {

	case WN_PRAGMA_BARRIER:

          wn = Gen_MP_Barrier (WN_pragma_omp(cur_node));

	  if (prev_node)
	    WN_next(prev_node) = wn;
	  else
	    WN_first(tree) = wn;
	  WN_prev(wn) = prev_node;
	  WN_next(wn) = next_node;
	  if (next_node)
	    WN_prev(next_node) = wn;
	  else
	    WN_last(tree) = wn;

	  WN_Delete ( cur_node );
	  break;

	case WN_PRAGMA_ENTER_GATE:

          gate_construct_num = ++num_constructs;
	  wn = Gen_MP_Enter_Gate (gate_construct_num);

	  if (prev_node)
	    WN_next(prev_node) = wn;
	  else
	    WN_first(tree) = wn;
	  WN_prev(wn) = prev_node;
	  WN_next(wn) = next_node;
	  if (next_node)
	    WN_prev(next_node) = wn;
	  else
	    WN_last(tree) = wn;

	  WN_Delete ( cur_node );
	  break;

	case WN_PRAGMA_EXIT_GATE:

	  wn = Gen_MP_Exit_Gate (gate_construct_num);

	  if (prev_node)
	    WN_next(prev_node) = wn;
	  else
	    WN_first(tree) = wn;
	  WN_prev(wn) = prev_node;
	  WN_next(wn) = next_node;
	  if (next_node)
	    WN_prev(next_node) = wn;
	  else
	    WN_last(tree) = wn;

	  WN_Delete ( cur_node );
	  break;

	case WN_PRAGMA_CRITICAL_SECTION_BEGIN:

          if (WN_opcode(cur_node) == OPC_PRAGMA &&
              WN_pragma_omp(cur_node) &&
              WN_st(cur_node)) {
            lock_st = Get_NameLock_ST(WN_st(cur_node));
          }
	  else if ((WN_opcode(cur_node) == OPC_XPRAGMA) &&
                   (WN_operator(WN_kid0(cur_node)) == OPR_LDA))
	    lock_st = WN_st(WN_kid0(cur_node));
	  else if ((WN_opcode(cur_node) == OPC_PRAGMA) && WN_st(cur_node))
	    lock_st = WN_st(cur_node);
	  else
	    lock_st = NULL;
	  if (lock_st) {
	    Linenum_Pusher p(WN_Get_Linenum(cur_node));
	    wn = Gen_MP_Getlock ( lock_st );
	  } else {
	    Linenum_Pusher p(WN_Get_Linenum(cur_node));
	    wn = Gen_MP_Setlock ( );
	  }

	  if (prev_node)
	    WN_next(prev_node) = wn;
	  else
	    WN_first(tree) = wn;
	  WN_prev(wn) = prev_node;
	  WN_next(wn) = next_node;
	  if (next_node)
	    WN_prev(next_node) = wn;
	  else
	    WN_last(tree) = wn;

	  WN_DELETE_Tree ( cur_node );

	  num_criticals = 1;
	  cur_node = next_node;
	  while (cur_node) {
	    if ((WN_opcode(cur_node) == OPC_PRAGMA) ||
		(WN_opcode(cur_node) == OPC_XPRAGMA))
	      if (WN_pragma(cur_node) == WN_PRAGMA_CRITICAL_SECTION_BEGIN)
		++num_criticals;
	      else if (WN_pragma(cur_node) == WN_PRAGMA_CRITICAL_SECTION_END)
		if ((--num_criticals) == 0)
		  break;
	    cur_node = WN_next(cur_node);
	  }
	  if (cur_node == NULL)
	    Fail_FmtAssertion (
		      "missing pragma (CRITICAL_SECTION_END) in MP processing");
	  if (lock_st) {
	    Linenum_Pusher p(WN_Get_Linenum(cur_node));
	    wn = Gen_MP_Unlock ( lock_st );
	  } else {
	    Linenum_Pusher p(WN_Get_Linenum(cur_node));
	    wn = Gen_MP_Unsetlock ( );
	  }

	  WN_next(WN_prev(cur_node)) = wn;
	  WN_prev(wn) = WN_prev(cur_node);
	  WN_next(wn) = WN_next(cur_node);
	  if (WN_next(cur_node))
	    WN_prev(WN_next(cur_node)) = wn;
	  else
	    WN_last(tree) = wn;

	  WN_Delete ( cur_node );
	  break;

          /* an MP "independent" construct in C doesn't appear as a region */
          /* as a hack, continue to allow SINGLE BEGIN/END pairs, until
             LNO generates the right thing--DRK */
        case WN_PRAGMA_INDEPENDENT_BEGIN:
        case WN_PRAGMA_SINGLE_PROCESS_BEGIN:

          end_id = (cur_id == WN_PRAGMA_INDEPENDENT_BEGIN) ?
              WN_PRAGMA_INDEPENDENT_END : WN_PRAGMA_SINGLE_PROCESS_END;

	  ++num_constructs;
          is_omp = WN_pragma_omp(cur_node);

            /* create block from nodes inside BEGIN/END; delete BEGIN/END */
          wn = cur_node;  /* the BEGIN node */
          cur_node = wn2 = WN_next(cur_node); /* first node in block */
	  while (cur_node &&
		 ((WN_opcode(cur_node) != OPC_PRAGMA) ||
		  (WN_pragma(cur_node) != end_id)))
	    cur_node = WN_next(cur_node);
	  if (!cur_node)
	    Fail_FmtAssertion(
                "missing pragma (INDEPENDENT_END) in MP processing");
          wn3 = WN_prev(cur_node);  /* last node in block */
          wn4 = cur_node; /* the END node */
	  sp_block = WN_CreateBlock();
	  if (wn2 != wn4) { /* block is non-empty */
	    WN_EXTRACT_ItemsFromBlock(tree, wn2, wn3);
	    WN_first(sp_block) = wn2;
	    WN_last(sp_block) = wn3;
	  }
	  WN_DELETE_FromBlock(tree, wn);
	  WN_DELETE_FromBlock(tree, wn4);

          {
            WN *mp_sp_block = Gen_MP_SingleProcess_Block(sp_block, FALSE,
	                                                 is_omp);
              // fix PV 589326: keep lowering MP constructs within and
              // after the INDEPENDENT/SINGLE construct
	    next_node = WN_first(mp_sp_block);
	    WN_INSERT_BlockAfter(tree, prev_node, mp_sp_block);
	  }
	  break;

      case WN_PRAGMA_ORDERED_BEGIN:
        WN_INSERT_BlockAfter (tree, prev_node, Gen_OMP_Begin_Ordered());
        WN_DELETE_FromBlock (tree, cur_node);
        break;
      
      case WN_PRAGMA_ORDERED_END:
        WN_INSERT_BlockAfter (tree, prev_node, Gen_OMP_End_Ordered());
        WN_DELETE_FromBlock (tree, cur_node);
        break;

	default:
	  Fail_FmtAssertion (
	      "out of context pragma (%s) in MP {parallel region} processing",
	      WN_pragmas[WN_pragma(cur_node)].name);

      }

    } else if ((is_region = (WN_opcode(cur_node) == OPC_REGION &&
                             WN_first(WN_region_pragmas(cur_node)) &&
                             WN_opcode(WN_first(
			        WN_region_pragmas(cur_node))) ==
				OPC_PRAGMA) ) &&
	       WN_pragma(WN_first(WN_region_pragmas(cur_node))) ==
						WN_PRAGMA_PDO_BEGIN) {

      BOOL save_comp_gen_construct = comp_gen_construct;
      comp_gen_construct = ( WN_pragma_compiler_generated(
                                WN_first(WN_region_pragmas(cur_node))) != 0 );
      MP_process_type save_mpt = mpt;
      mpt = MPP_PDO;

      ++num_constructs;
      wn = Transform_PDO ( cur_node );
      if (non_pod_finalization_nodes)
        Fail_FmtAssertion("out of place non-POD finalization code");

      if (WN_first(wn)) {
	if (prev_node)
	  WN_next(prev_node) = WN_first(wn);
	else
	  WN_first(tree) = WN_first(wn);
	WN_prev(WN_first(wn)) = prev_node;
	WN_next(WN_last(wn)) = next_node;
	if (next_node)
	  WN_prev(next_node) = WN_last(wn);
	else
	  WN_last(tree) = WN_last(wn);
	next_node = WN_first(wn);
      } else {
	if (prev_node)
	  WN_next(prev_node) = next_node;
	else
	  WN_first(tree) = next_node;
	if (next_node)
	  WN_prev(next_node) = prev_node;
	else
	  WN_last(tree) = prev_node;
      }

      WN_Delete ( WN_region_pragmas(cur_node) );
      WN_DELETE_Tree ( WN_region_exits(cur_node) );
      RID_Delete ( Current_Map_Tab, cur_node );
      WN_Delete ( cur_node );
      WN_Delete ( wn );

      comp_gen_construct = save_comp_gen_construct; // restore old value
      mpt = save_mpt;

    } else if (is_region &&
	       WN_pragma(WN_first(WN_region_pragmas(cur_node))) ==
                  WN_PRAGMA_SINGLE_PROCESS_BEGIN) {

      BOOL save_comp_gen_construct = comp_gen_construct;
      comp_gen_construct = ( WN_pragma_compiler_generated(
                                WN_first(WN_region_pragmas(cur_node))) != 0 );
      MP_process_type save_mpt = mpt;
      mpt = MPP_SINGLE;

      ++num_constructs;
      wn = Gen_MP_SingleProcess_Region(cur_node);
      WN_EXTRACT_FromBlock(tree, cur_node);
      WN_INSERT_BlockAfter(tree, prev_node, wn);
      WN_DELETE_Tree(WN_region_pragmas(cur_node));
      WN_DELETE_Tree(WN_region_exits(cur_node));
      RID_Delete(Current_Map_Tab, cur_node);
      WN_Delete(cur_node);

      comp_gen_construct = save_comp_gen_construct; // restore old value
      mpt = save_mpt;

    } else {

      for (i = 0; i < WN_kid_count(cur_node); i++)
	if (WN_kid(cur_node, i) &&
	    (WN_opcode(WN_kid(cur_node, i)) == OPC_BLOCK))
	  Transform_Parallel_Block ( WN_kid(cur_node, i) );

    }
  }
} // Transform_Parallel_Block()


/*  Process the contents of a parallel do.  */

static void Process_Parallel_Do ( void )
{
  INT32 i;
  WN *wn;
  WN *lastthread_init = NULL;
  WN *reduction_init_block = NULL;
  WN *reduction_store_block = NULL;
  WN *last_local_if = NULL;

  Is_True(mpt == MPP_PARALLEL_DO, ("not inside a PARALLEL DO"));

  /* Initialization. */

  psymtab = CURRENT_SYMTAB;
  ppuinfo = Current_PU_Info;
  pmaptab = Current_Map_Tab;

  /* Strip any nested mp stuff due to inlining. */

  Strip_Nested_MP ( stmt_block, FALSE );

  // Gather STs for inner scope VLAs

  Gather_Inner_Scope_Vlas ( stmt_block );

  /* Extract do info for mp scheduling. */

  Extract_Do_Info (do_node);

  /* Create and initialize all parent temps that will be needed. */

  Process_Preg_Temps ( stmt_block, FALSE );

  /* Create parallel do function. */

  Create_Nested_Parallel_Function ( fast_doacross ? PAR_FUNC_DO32 : 
                                    PAR_FUNC_DO64 );
  
  /* Create local variable correspondence table */

  Create_Local_Variables ( var_table, reduction_nodes, lastlocal_nodes,
			   local_nodes, firstprivate_nodes,
			   &firstprivate_block, lastthread_node,
			   &alloca_block );

  /* Do the replacement walk and identify reduction variables */

  Localize_Parent_Stack lps(FALSE, NULL);
  stmt_block = Walk_and_Localize ( stmt_block, var_table, &lps, TRUE,
                                   &non_pod_finalization_nodes );

  /* Create copyin nodes for all local vars with preamble stores. */

  Process_Preamble_Stores ( if_preamble_block, var_table );
  Process_Preamble_Stores ( do_preamble_block, var_table );

  if (Cur_PU_Feedback) {
      // scale FB frequency of do loop by (1 / num_processors)
    Scale_FB_Parallel_Do(do_node, 1.0 / NOMINAL_PROCS);
  }

  /* Rewrite do loop */

  Rewrite_Do ( do_node );

  if (ordered_node && WN_pragma_omp(ordered_node)) {
    /* Insert pdo_ordered_begin/end calls */
    WN *order_begin = Gen_OMP_Pdo_Ordered_Begin (WN_kid0(do_order_lb),
                                                 WN_kid0(do_order_stride));
    WN *order_end = Gen_OMP_Pdo_Ordered_End ();
    WN_INSERT_BlockFirst (stmt_block, order_begin);
    WN_INSERT_BlockLast (stmt_block, order_end);
    WN_kid0(do_order_lb) = WN_kid0(do_order_stride) = NULL;
  }

  if (copyin_nodes) {
    WN_INSERT_BlockFirst (stmt_block, Gen_MP_Copyin(TRUE));
  }

  /* Generate initialization code for lastthread variable */

  if (lastthread_node)
    lastthread_init = Gen_MP_Store ( WN_st(lastthread_node),
				     WN_offsetx(lastthread_node),
				     WN_Intconst ( MTYPE_I4, 0 ));

  if (reduction_count)  /* Generate init/finish reduction code */
    Gen_MP_Reduction(var_table, local_count, &reduction_init_block,
                     &reduction_store_block);

  /* Build up the if for the last_locals */

  BOOL hit_first_last_priv_bug = FALSE;
  if (lastlocal_nodes) {

    wn = WN_CreateBlock ( );
    for (i=0; i < local_count; i++) {
      if (var_table[i].vtype == VAR_LASTLOCAL) {
          // if any variables are both LASTLOCAL and FIRSTPRIVATE, put
          // an MP barrier just before the LASTLOCAL finalization to
          // prevent the race condition described in PV 566923
        if (var_table[i].is_last_and_firstprivate &&
            !hit_first_last_priv_bug) {
            // We can't use a barrier to fix PV 566923 (as we can in the
            // PDO case) because the __mpdo_() nested routine may be called
            // multiple times, which means the finalization code gets called
            // multiple times, which can result in deadlock.  So this is
            // not yet implemented for PARALLEL DO.
          ErrMsgLine(EC_MPLOWER_first_last_priv, line_number);
          hit_first_last_priv_bug = TRUE;
        }

	WN_INSERT_BlockLast ( wn,
			      Gen_MP_Load_Store ( var_table[i].new_st,
						  var_table[i].new_offset,
						  var_table[i].orig_st,
						  var_table[i].orig_offset,
					       var_table[i].is_dynamic_array ));
       }
    }
    if (lastthread_node)
      last_local_if = WN_CreateIf ( Gen_MP_Load ( WN_st(lastthread_node), 
						  WN_offsetx(lastthread_node) ),
				    wn, WN_CreateBlock ( ) );
    else
      last_local_if = WN_CreateIf ( WN_Band ( MTYPE_I4,
					      Gen_MP_Load ( thread_info, 0 ),
					     WN_CreateIntconst ( OPC_I4INTCONST,
								 0x100 )),
				    wn, WN_CreateBlock ( ) );
    WN_linenum(last_local_if) = line_number;
  }

  /* Consolidate all portions of nested parallel procedure */

  if (alloca_block)
    WN_INSERT_BlockLast ( parallel_func, alloca_block );
  WN_INSERT_BlockLast ( parallel_func,
			WN_CreatePragma ( WN_PRAGMA_PREAMBLE_END, ST_IDX_ZERO,
			                  0, 0 ));
  if (firstprivate_block)
    WN_INSERT_BlockLast ( parallel_func, firstprivate_block );
  if (copyin_block)
    WN_INSERT_BlockLast ( parallel_func, copyin_block );
  if (lastthread_init)
    WN_INSERT_BlockLast ( parallel_func, lastthread_init );
  if (reduction_init_block)
    WN_INSERT_BlockLast ( parallel_func, reduction_init_block );
  if (do_prefix)
    WN_INSERT_BlockLast ( parallel_func, do_prefix );
  WN_INSERT_BlockLast ( parallel_func, stmt_block );
  if (last_local_if) {
    WN_INSERT_BlockLast (parallel_func, WN_CreateBarrier(FALSE, 0));
    WN_INSERT_BlockLast (parallel_func, last_local_if);
    WN_INSERT_BlockBefore (WN_then(last_local_if), NULL, 
					WN_CreateBarrier(TRUE,0));
    WN_INSERT_BlockAfter (WN_then(last_local_if), NULL, 
					WN_CreateBarrier(FALSE,0));
    WN_INSERT_BlockLast (parallel_func, WN_CreateBarrier(TRUE, 0));// forward
  }
  if (reduction_store_block)
    WN_INSERT_BlockLast ( parallel_func, reduction_store_block );
  if (copyout_block)
    WN_INSERT_BlockLast ( parallel_func, copyout_block );
  
  /* Generate return at end of parallel function */

  wn = WN_CreateReturn ( );
  WN_linenum(wn) = line_number;
  WN_INSERT_BlockLast ( parallel_func, wn );

  /* Transfer any mappings for nodes moved from parent to parallel function */

  Transfer_Maps ( pmaptab, cmaptab, parallel_func,
		  PU_Info_regions_ptr(Current_PU_Info) );

  /* Create a new dependence graph for the child  and move all the 
     appropriate vertices from the parent to the child graph */

  Current_Map_Tab = cmaptab;
  MP_Fix_Dependence_Graph ( ppuinfo, Current_PU_Info, parallel_func ); 
  Current_Map_Tab = pmaptab;

  /* Create uplevel reference list and mark pu if it contains alloca. */

  pu_has_alloca = FALSE;
  pu_has_region = FALSE;
  WN_TO_BOOL_HASH guarded_set(NUM_HASH_ELEMENTS, Malloc_Mem_Pool);
  Gather_Uplevel_References ( reference_block, func_level, NULL, NULL,
			      parallel_func, &guarded_set );
  if (pu_has_alloca) {
      Set_PU_has_alloca(Get_Current_PU());
  }
  if (pu_has_region) {
      Set_PU_has_region(Get_Current_PU());
  }

  /* Restore parent information. */
  
  CURRENT_SYMTAB = psymtab;
  Current_PU_Info = ppuinfo;
  Current_pu = &Current_PU_Info_pu();
  Current_Map_Tab = pmaptab;
} // Process_Parallel_Do()


/*  Process the contents of a parallel region.  */

static void Process_Parallel_Region ( void )
{
  WN *wn, *reduction_init_block = NULL, *reduction_store_block = NULL;

  Is_True(mpt == MPP_PARALLEL_REGION, ("not in a PARALLEL region"));

  /* Initialization. */

  psymtab = CURRENT_SYMTAB;
  ppuinfo = Current_PU_Info;
  pmaptab = Current_Map_Tab;

  /* Strip any nested mp stuff due to inlining. */

  Strip_Nested_MP ( stmt_block, TRUE );

  // Gather STs for inner scope VLAs

  Gather_Inner_Scope_Vlas ( stmt_block );

  /* Create and initialize all parent temps that will be needed. */

  Process_Preg_Temps ( stmt_block, TRUE );

  /* Create parallel do function. */

  Create_Nested_Parallel_Function ( PAR_FUNC_REGION );

  /* Create any needed local temps. */

  Make_Local_Temps ( );
  local_start = mpbase_st;
  local_ntrip = mptrips_st;
  thread_info = mpflags_st;
  
  /* Create local variable correspondence table and walk the tree replacing
     references. */

    // lastlocal_nodes are all non-POD lastprivates
  Create_Local_Variables ( var_table, reduction_nodes, lastlocal_nodes,
                           local_nodes, firstprivate_nodes,
			   &firstprivate_block, NULL, &alloca_block );
  Localize_Parent_Stack lps(FALSE, NULL);
  stmt_block = Walk_and_Localize ( stmt_block, var_table, &lps, TRUE , 
                                   &non_pod_finalization_nodes );

  /* Transform contents of parallel region */

  if (copyin_nodes) {
    WN_INSERT_BlockFirst (stmt_block, Gen_MP_Copyin(TRUE));
  }

  Transform_Parallel_Block ( stmt_block );

  if (reduction_count)  /* Generate init/finish reduction code */
    Gen_MP_Reduction(var_table, local_count, &reduction_init_block,
                     &reduction_store_block);

  /* Consolidate all portions of nested parallel procedure */

  if (alloca_block)
    WN_INSERT_BlockLast ( parallel_func, alloca_block );
  WN_INSERT_BlockLast ( parallel_func,
		        WN_CreatePragma ( WN_PRAGMA_PREAMBLE_END, ST_IDX_ZERO,
			                  0, 0 ));
  if (firstprivate_block)
    WN_INSERT_BlockLast ( parallel_func, firstprivate_block );
  if (reduction_init_block)
    WN_INSERT_BlockLast ( parallel_func, reduction_init_block );
  WN_INSERT_BlockLast ( parallel_func, stmt_block );
  if (reduction_store_block)
    WN_INSERT_BlockLast ( parallel_func, reduction_store_block );

  /* Generate return at end of parallel function */

  wn = WN_CreateReturn ( );
  WN_linenum(wn) = line_number;
  WN_INSERT_BlockLast ( parallel_func, wn );

  /* Transfer any mappings for nodes moved from parent to parallel function */

  Transfer_Maps ( pmaptab, cmaptab, parallel_func, 
		  PU_Info_regions_ptr(Current_PU_Info) );

  /* Create a new dependence graph for the child  and move all the 
     appropriate vertices from the parent to the child graph */

  Current_Map_Tab = cmaptab;
  MP_Fix_Dependence_Graph ( ppuinfo, Current_PU_Info, parallel_func ); 
  Current_Map_Tab = pmaptab;

  /* Create uplevel reference list and mark pu if it contains alloca. */

  pu_has_alloca = FALSE;
  pu_has_region = FALSE;
  WN_TO_BOOL_HASH guarded_set(NUM_HASH_ELEMENTS, Malloc_Mem_Pool);
  Gather_Uplevel_References ( reference_block, func_level, NULL, NULL,
			      parallel_func, &guarded_set );
  if (pu_has_alloca) {
      Set_PU_has_alloca(Get_Current_PU());
  }
  if (pu_has_region) {
      Set_PU_has_region(Get_Current_PU());
  }

  /* Restore parent information. */
  
  CURRENT_SYMTAB = psymtab;
  Current_PU_Info = ppuinfo;
  Current_pu = &Current_PU_Info_pu();
  Current_Map_Tab = pmaptab;
} // Process_Parallel_Region()


/*  This is the main routine used to process parallel do's and parallel
    regions.  It calls support routines to handle the contents of the
    parallel do/region and copyin, but this code does everything else.  */

WN * lower_mp ( WN * block, WN * node, INT32 actions )
{
  INT32 i;			/* Temporary index */
  INT32 vsize;			/* Var_table size */
  INT32 lsize;			/* label_info_table size */
  INT32 ssize;			/* Shared_table size */
  INT32 msize;			/* Mpnum_table size */
  BOOL cont;			/* Loop control */
  WN   *wn;			/* Temporary node */
  WN   *temp_node;		/* Temporary node */
  WN   *stmt1_block;		/* If true statement block */
  WN   *stmt2_block;		/* If false statement block */
  WN   *cur_node;		/* Current node within original nodes */
  WN   *next_node;		/* Next node in sequence */
  WN   *return_nodes;		/* Nodes to be returned */
  WN   *fp;			/* Frame pointer uplink */
  WN   *mpsched_wn;		/* Real wn for mpsched node */
  WN   *chunk_wn;		/* Real wn for chunk node */
  WN   *mp_call_wn;		/* Real wn for mp call */
  WN   *if_cond_wn;		/* Real wn for if condition */
  ST   *lock_st;		/* ST for critical section lock */
  ST   *ntrip_st;		/* ST for loop trip count */
  ST   *return_st;		/* ST for mp status return */
  WN_OFFSET ntrip_ofst;		/* Offset for loop trip count */
  WN_OFFSET return_ofst;	/* Offset for mp status return */
  PREG_NUM rreg1, rreg2;	/* Pregs with I4 return values */
  INT32 num_criticals;		/* Number of nested critical sections */
  BOOL  while_seen;		/* While seen where do should be */
  BOOL  mp_if;			/* MP if transformation flag */

  /* Validate input arguments. */

  Is_True(actions & LOWER_MP,
	  ("actions does not contain LOWER_MP"));
  Is_True(((WN_opcode(node) == OPC_PRAGMA) ||
	   (WN_opcode(node) == OPC_XPRAGMA) ||
	   (WN_opcode(node) == OPC_IF) ||
	   (WN_opcode(node) == OPC_REGION)),
	  ("invalid mp node"));

  Is_True(PU_Info_proc_sym(Current_PU_Info) == last_pu_proc_sym,
          ("LowerMP_PU_Init() not called for this PU"));

  Verify_MP_Lowered verify_mp_lowered;
  verify_mp_lowered_ptr = &verify_mp_lowered;

  /* Special case handling of PU-scope pragmas. */

  if (block == NULL) {

    if ((WN_opcode(node) == OPC_PRAGMA) || (WN_opcode(node) == OPC_XPRAGMA)) {

      if (WN_pragma(node) == WN_PRAGMA_CHUNKSIZE) {
        pu_chunk_node = WN_COPY_Tree ( node );

      } else if (WN_pragma(node) == WN_PRAGMA_MPSCHEDTYPE) {
	pu_mpsched_node = WN_COPY_Tree ( node );

      }

    }

    verify_mp_lowered.Set_replace_block_and_nested_pu(NULL, NULL, NULL);
    return (NULL);

  }

  /* Initialization. */

  copyin_count       = 0;
  local_count        = 0;
  reduction_count    = 0;
  shared_count       = 0;
  num_constructs     = 0;
  num_criticals      = 0;
  affinity_nodes     = NULL;
  affinity_d_nodes   = NULL;
  affinity_t_nodes   = NULL;
  chunk_node         = NULL;
  copyin_nodes       = NULL;
  copyin_nodes_end   = NULL;
  if_node            = NULL;
  lastlocal_nodes    = NULL;
  lastthread_node    = NULL;
  local_nodes        = NULL;
  firstprivate_nodes = NULL;
  non_pod_finalization_nodes = NULL;
  non_pod_first_and_lastprivate = FALSE;
  mpnum_node         = NULL;
  mpsched_node       = NULL;
  numthreads_node    = NULL;
  ordered_node       = NULL;
  reduction_nodes    = NULL;
  shared_nodes       = NULL;
  stmt_block         = NULL;
  replace_block      = NULL;
  cont_nodes         = NULL;
  do_node            = NULL;
  ntrip_calc         = NULL;
  livein_block       = NULL;
  alloca_block       = NULL;
  copyin_block       = NULL;
  copyout_block      = NULL;
  firstprivate_block = NULL;
  liveout_block      = NULL;
  if_cond_wn         = NULL;
  if_preamble_block  = NULL;
  if_postamble_block = NULL;
  do_preamble_block  = NULL;
  serial_stmt_block  = NULL;
  fast_doacross      = FALSE;
  while_seen         = FALSE;
  mp_if              = FALSE;
  do_order_lb        = NULL;
  do_order_stride    = NULL;
  inside_versioning_if = FALSE;
  comp_gen_construct = FALSE;
  mpt                = MPP_UNKNOWN;
  csymtab            = SYMTAB_IDX_ZERO;
  psymtab            = SYMTAB_IDX_ZERO;
  ppuinfo            = NULL;

  inner_scope_vla.clear();

    // mempool initialization
  if (first_call) {
    MEM_POOL_Initialize(&mp_lower_pool, "MP Lowering Pool", TRUE);
    first_call = FALSE;
  }
  MEM_POOL_Popper popper(&mp_lower_pool);

  lsize = sizeof(LABEL_INFO_TABLE) * LABEL_Table_Size(CURRENT_SYMTAB);
  label_info_table = (LABEL_INFO_TABLE *) alloca ( lsize );
  bzero ( label_info_table, lsize );

  ssize = 4096 * sizeof(SHARED_TABLE);
  shared_table = (SHARED_TABLE *) alloca ( ssize );
  bzero ( shared_table, ssize );

  if (mpid_size == 0) {
    mpid_size = 1028;
    msize = mpid_size * sizeof(MPID_TABLE);
    mpid_table = (MPID_TABLE *) malloc ( msize );
    bzero ( mpid_table, msize );
  }

  pu_has_eh = PU_has_exc_scopes(Get_Current_PU());

  /* Determine processing required based on first node. */

  start_processing:

  if ((WN_opcode(node) == OPC_PRAGMA) || (WN_opcode(node) == OPC_XPRAGMA)) {

    if (WN_pragma(node) == WN_PRAGMA_BARRIER) {

      wn = Gen_MP_Barrier (WN_pragma_omp(node));
      WN_next(wn) = WN_next(node);
      if (WN_next(wn))
	WN_prev(WN_next(wn)) = wn;
      WN_Delete ( node );
      verify_mp_lowered.Set_replace_block_and_nested_pu(wn, WN_next(wn),
        NULL);
      return (wn);

    } else if (WN_pragma(node) == WN_PRAGMA_CHUNKSIZE) {
      pu_chunk_node = node;
      verify_mp_lowered.Set_replace_block_and_nested_pu(NULL, NULL, NULL);
      return (WN_next(node));

    } else if (WN_pragma(node) == WN_PRAGMA_MPSCHEDTYPE) {
      pu_mpsched_node = node;
      verify_mp_lowered.Set_replace_block_and_nested_pu(NULL, NULL, NULL);
      return (WN_next(node));

    } else if (WN_pragma(node) == WN_PRAGMA_COPYIN) {

      mpt = MPP_COPYIN;
      next_node = node;

    } else if (WN_pragma(node) == WN_PRAGMA_COPYIN_BOUND) {

      wn = WN_next(node);
      WN_DELETE_Tree ( node );
      verify_mp_lowered.Set_replace_block_and_nested_pu(NULL, NULL, NULL);
      return (wn);

    } else if (WN_pragma(node) == WN_PRAGMA_CRITICAL_SECTION_BEGIN) {

      mpt = MPP_CRITICAL_SECTION;
      next_node = node;

    } else if (WN_pragma(node) == WN_PRAGMA_ORDERED_BEGIN) {

      WN *call;
      wn = WN_next(node);
      call = Gen_OMP_Begin_Ordered ();
      WN_next(call) = wn;
      if (wn) WN_prev(wn) = call;
      WN_DELETE_Tree(node);
      verify_mp_lowered.Set_replace_block_and_nested_pu(call,
        WN_next(call), NULL);
      return call;

    } else if (WN_pragma(node) == WN_PRAGMA_ORDERED_END) {

      WN *call;
      wn = WN_next(node);
      call = Gen_OMP_End_Ordered ();
      WN_next(call) = wn;
      if (wn) WN_prev(wn) = call;
      WN_DELETE_Tree(node);
      verify_mp_lowered.Set_replace_block_and_nested_pu(call,
        WN_next(call), NULL);
      return call;

    } else

      Fail_FmtAssertion (
	      "out of context pragma (%s) in MP {standalone pragma} processing",
	      WN_pragmas[WN_pragma(node)].name);

  } else if ((WN_opcode(node) == OPC_REGION) &&
	     WN_first(WN_region_pragmas(node)) &&
	     ((WN_opcode(WN_first(WN_region_pragmas(node))) == OPC_PRAGMA) ||
	      (WN_opcode(WN_first(WN_region_pragmas(node))) == OPC_XPRAGMA))) {

    WN *wtmp = WN_first(WN_region_pragmas(node));
    WN_PRAGMA_ID wid = (WN_PRAGMA_ID) WN_pragma(wtmp);

    comp_gen_construct = ( WN_pragma_compiler_generated(
                             WN_first(WN_region_pragmas(node))) != 0 );

    switch (wid) {
      /* orphaned SINGLE region: process it now and return */
    case WN_PRAGMA_SINGLE_PROCESS_BEGIN:
      ++num_constructs;
      mpt = MPP_ORPHANED_SINGLE;
      Strip_Nested_MP(WN_region_body(node), FALSE);
      wn = Gen_MP_SingleProcess_Region(node);
      if ((WN_next(wn) = WN_next(node)) != NULL)
        WN_prev(WN_next(wn)) = wn;
      WN_DELETE_Tree(WN_region_pragmas(node));
      WN_DELETE_Tree(WN_region_exits(node));
      RID_Delete(Current_Map_Tab, node);
      WN_Delete(node);
      verify_mp_lowered.Set_replace_block_and_nested_pu(wn, WN_next(wn),
        NULL);
      return wn;

    case WN_PRAGMA_DOACROSS:
    case WN_PRAGMA_PARALLEL_DO:
      mpt = MPP_PARALLEL_DO;
      break;

    case WN_PRAGMA_PDO_BEGIN:
      mpt = MPP_ORPHANED_PDO;
      verify_mp_lowered.Set_nested_pu_tree(NULL);
      break;

    case WN_PRAGMA_PARALLEL_BEGIN:
      mpt = MPP_PARALLEL_REGION;
      break;

    default:
      Fail_FmtAssertion (
		 "out of context pragma (%s) in MP {primary pragma} processing",
		 WN_pragmas[wid].name);
    }

    next_node = WN_next(wtmp);
    cont_nodes = WN_next(node);
    stmt_block = WN_region_body(node);

    if (mpt != MPP_ORPHANED_PDO) {
      WN_Delete ( wtmp );
      WN_Delete ( WN_region_pragmas(node) );
      WN_DELETE_Tree ( WN_region_exits(node) );
    }

  } else if ((WN_opcode(node) == OPC_IF) && WN_Is_If_MpVersion(node)) {

    inside_versioning_if = TRUE;
    mp_if = TRUE;
    if_cond_wn = WN_if_test(node);
    next_node = WN_first(WN_then(node));
    serial_stmt_block = WN_else(node);

    while (next_node && (WN_opcode(next_node) != OPC_REGION)) {
      if (if_preamble_block == NULL)
	if_preamble_block = WN_CreateBlock ( );
      wn = WN_next(next_node);
      WN_INSERT_BlockLast ( if_preamble_block, next_node );
      next_node = wn;
    }

    if (next_node == NULL)
      Fail_FmtAssertion (
			 "missing versioned parallel region in MP processing" );

    temp_node = WN_next(next_node);
    while (temp_node) {
      if (if_postamble_block == NULL)
	if_postamble_block = WN_CreateBlock ( );
      wn = WN_next(temp_node);
      WN_INSERT_BlockLast ( if_postamble_block, temp_node );
      temp_node = wn;
    }

    WN_next(next_node) = WN_next(node);
    WN_Delete ( WN_then(node) );
    WN_Delete ( node );

    node = next_node;
    goto start_processing;

  } else

    Fail_FmtAssertion ( "out of context node (%s) in MP {top-level} processing",
			OPCODE_name(WN_opcode(node)) );

  /* Process all mp pragma clauses and accumulate statements as appropriate. */

    // Transform_PDO() parses clauses of orphanded PDO
  cont = (mpt != MPP_ORPHANED_PDO);

  while (cont && (cur_node = next_node)) {

    next_node = WN_next(cur_node);

    if (((WN_opcode(cur_node) == OPC_PRAGMA) ||
         (WN_opcode(cur_node) == OPC_XPRAGMA)) &&
        (WN_pragmas[WN_pragma(cur_node)].users & PUSER_MP)) {

      if (mpt == MPP_COPYIN) {

	if (WN_pragma(cur_node) == WN_PRAGMA_COPYIN) {
	  WN_prev(cur_node) = copyin_nodes_end;
	  WN_next(cur_node) = NULL;
	  if (copyin_nodes == NULL)
	    copyin_nodes_end = copyin_nodes = cur_node;
	  else
	    copyin_nodes_end = WN_next(copyin_nodes_end) = cur_node;
	  ++copyin_count;
	} else {
	  cont_nodes = cur_node;
	  cont = FALSE;
	}

      } else if (mpt == MPP_CRITICAL_SECTION) {

	if (WN_pragma(cur_node) == WN_PRAGMA_CRITICAL_SECTION_BEGIN) {
	  if ((num_criticals++) == 0) {
	    stmt_block = WN_CreateBlock ( );
	    WN_first(stmt_block) = next_node;
	    if (next_node)
	      WN_prev(next_node) = NULL;
	  }
	} else if (WN_pragma(cur_node) == WN_PRAGMA_CRITICAL_SECTION_END) {
	  if ((--num_criticals) == 0) {
	    WN_last(stmt_block) = WN_prev(cur_node);
	    if (WN_prev(cur_node))
	      WN_next(WN_prev(cur_node)) = NULL;
	    else
	      WN_first(stmt_block) = NULL;
	    cont_nodes = next_node;
	    cont = FALSE;
	  }
	}

      } else {

	switch (WN_pragma(cur_node)) {

	  case WN_PRAGMA_AFFINITY:
	    WN_next(cur_node) = affinity_nodes;
	    affinity_nodes = cur_node;
	    break;

	  case WN_PRAGMA_DATA_AFFINITY:
	    WN_next(cur_node) = affinity_d_nodes;
	    affinity_d_nodes = cur_node;
	    break;

	  case WN_PRAGMA_THREAD_AFFINITY:
	    WN_next(cur_node) = affinity_t_nodes;
	    affinity_t_nodes = cur_node;
	    break;

	  case WN_PRAGMA_CHUNKSIZE:
	    if (chunk_node)
	      WN_DELETE_Tree ( chunk_node );
	    chunk_node = cur_node;
	    break;

	  case WN_PRAGMA_IF:
	    if (if_node)
	      WN_DELETE_Tree ( if_node );
	    if_node = cur_node;
	    break;

	  case WN_PRAGMA_LASTLOCAL:
	    for (wn = lastlocal_nodes; wn; wn = WN_next(wn))
	      if (Identical_Pragmas(cur_node, wn))
		break;
	    if (wn == NULL) {
	      WN_next(cur_node) = lastlocal_nodes;
	      lastlocal_nodes = cur_node;
	      ++local_count;
	      if (TY_kind(ST_type(WN_st(cur_node))) == KIND_SCALAR)
		shared_table[shared_count++] = WN_st(cur_node);
	    } else
	      WN_Delete ( cur_node );
	    break;

	  case WN_PRAGMA_LASTTHREAD:
	    if (lastthread_node)
	      WN_Delete ( lastthread_node );
	    lastthread_node = cur_node;
	    break;

	  case WN_PRAGMA_LOCAL:
	    for (wn = local_nodes; wn; wn = WN_next(wn))
	      if (Identical_Pragmas(cur_node, wn))
		break;
	    if (wn == NULL) {
              if (ST_Has_Dope_Vector(WN_st(cur_node))) {
                WN_next(cur_node) = firstprivate_nodes;
                firstprivate_nodes = cur_node;
              } else {
                WN_next(cur_node) = local_nodes;
                local_nodes = cur_node;
              }
	      ++local_count;
	    } else
	      WN_Delete ( cur_node );
	    break;

	  case WN_PRAGMA_FIRSTPRIVATE:
	    for (wn = firstprivate_nodes; wn; wn = WN_next(wn))
	      if (Identical_Pragmas(cur_node, wn))
		break;
	    if (wn == NULL) {
	      WN_next(cur_node) = firstprivate_nodes;
	      firstprivate_nodes = cur_node;
	      ++local_count;
	    } else
	      WN_Delete ( cur_node );
	    break;

	  case WN_PRAGMA_MPNUM: 
	    if (mpnum_node)
	      WN_Delete ( mpnum_node );
	    mpnum_node = cur_node;
	    break;

	  case WN_PRAGMA_MPSCHEDTYPE:
	    if (mpsched_node)
	      WN_Delete ( mpsched_node );
	    mpsched_node = cur_node;
	    break;

	  case WN_PRAGMA_NUMTHREADS:
	    if (numthreads_node)
	      WN_DELETE_Tree ( numthreads_node );
	    numthreads_node = cur_node;
	    break;

	  case WN_PRAGMA_ORDERED:
	    if (ordered_node)
	      WN_Delete ( ordered_node );
	    ordered_node = cur_node;
	    break;

        case WN_PRAGMA_ORDERED_LOWER_BOUND:
          if (do_order_lb) WN_Delete (do_order_lb);
          do_order_lb = cur_node;
          break;

        case WN_PRAGMA_ORDERED_STRIDE:
          if (do_order_stride) WN_Delete (do_order_stride);
          do_order_stride = cur_node;
          break;

	  case WN_PRAGMA_PARALLEL_END: 
	  case WN_PRAGMA_END_MARKER:
	    break;

	  case WN_PRAGMA_REDUCTION:
	    for (wn = reduction_nodes; wn; wn = WN_next(wn))
	      if (Identical_Pragmas(cur_node, wn))
		break;
	    if (wn == NULL) {
	      WN_next(cur_node) = reduction_nodes;
	      reduction_nodes = cur_node;
	      ++local_count;
	      ++reduction_count;
	      if (WN_opcode(cur_node) == OPC_PRAGMA)
		shared_table[shared_count++] = WN_st(cur_node);
	    } else
	      WN_DELETE_Tree ( cur_node );
	    break;

	  case WN_PRAGMA_SHARED:
	    for (wn = shared_nodes; wn; wn = WN_next(wn))
	      if (Identical_Pragmas(cur_node, wn))
		break;
	    if (wn == NULL) {
	      WN_next(cur_node) = shared_nodes;
	      shared_nodes = cur_node;
	      if (TY_kind(ST_type(WN_st(cur_node))) == KIND_SCALAR)
		shared_table[shared_count++] = WN_st(cur_node);
	    } else
	      WN_Delete ( cur_node );
	    break;

        case WN_PRAGMA_COPYIN:
          FmtAssert (WN_pragma_omp(cur_node), ("COPYIN clause must be OMP"));
	  WN_prev(cur_node) = copyin_nodes_end;
	  WN_next(cur_node) = NULL;
	  if (copyin_nodes == NULL)
	    copyin_nodes_end = copyin_nodes = cur_node;
	  else
	    copyin_nodes_end = WN_next(copyin_nodes_end) = cur_node;
	  ++copyin_count;
          break;

	  default:
	    Fail_FmtAssertion (
	       "out of context pragma (%s) in MP {top-level pragma} processing",
	       WN_pragmas[WN_pragma(cur_node)].name);

	}

      }

    } else if (mpt == MPP_COPYIN) {

      cont_nodes = cur_node;
      cont = FALSE;

    } else if (mpt == MPP_CRITICAL_SECTION) {

      /* just accumulate nodes */

    } else

      Fail_FmtAssertion (
		     "out of context node (%s) in MP {continuation} processing",
		     OPCODE_name(WN_opcode(cur_node)) );

  }

  if (num_criticals != 0)
    Fail_FmtAssertion (
		     "missing pragma (CRITICAL_SECTION_END) in MP processing" );


  /* Process all parallel constructs and generate replacement code. */

  if (cont_nodes)
    WN_prev(cont_nodes) = NULL;

  replace_block = WN_CreateBlock ( );

  if (mpt == MPP_COPYIN) {

    line_number = WN_linenum(node);
    Set_Error_Line(line_number);

    WN_INSERT_BlockLast ( replace_block, Gen_MP_Copyin ( FALSE ) );

    verify_mp_lowered.Set_nested_pu_tree(NULL);

  } else if (mpt == MPP_CRITICAL_SECTION) {

    line_number = WN_linenum(node);
    Set_Error_Line(line_number);

    if (WN_opcode(node) == OPC_PRAGMA &&
        WN_pragma_omp(node) &&
        WN_st(node)) {
      lock_st = Get_NameLock_ST(WN_st(node));
    }
    else if ((WN_opcode(node) == OPC_XPRAGMA) &&
             (WN_operator(WN_kid0(node)) == OPR_LDA))
      lock_st = WN_st(WN_kid0(node));
    else if ((WN_opcode(node) == OPC_PRAGMA) && WN_st(node))
      lock_st = WN_st(node);
    else
      lock_st = NULL;

    if (lock_st) {
        // redundant, but marks where we need to deal with this in future
        // also the line number for the unlock isn't set correctly
      Linenum_Pusher p(WN_Get_Linenum(node));
      WN_INSERT_BlockLast ( replace_block, Gen_MP_Getlock ( lock_st ) );
      Strip_Nested_MP ( stmt_block, FALSE );
      WN_INSERT_BlockLast ( replace_block, stmt_block );
      WN_INSERT_BlockLast ( replace_block, Gen_MP_Unlock ( lock_st ) );
    } else {
      Linenum_Pusher p(WN_Get_Linenum(node));
      WN_INSERT_BlockLast ( replace_block, Gen_MP_Setlock ( ) );
      Strip_Nested_MP ( stmt_block, FALSE );
      WN_INSERT_BlockLast ( replace_block, stmt_block );
      WN_INSERT_BlockLast ( replace_block, Gen_MP_Unsetlock ( ) );
    }

    WN_DELETE_Tree ( node );
    WN_Delete ( cur_node );

    verify_mp_lowered.Set_nested_pu_tree(NULL);

  } else if (mpt == MPP_PARALLEL_DO) {

    BOOL is_omp = WN_pragma_omp(WN_first(WN_region_pragmas(node)));

    next_node = WN_first(stmt_block);
    while ((do_node = next_node) && (WN_opcode(do_node) != OPC_DO_LOOP)) {
      next_node = WN_next(do_node);
      if ((WN_opcode(do_node) == OPC_DO_WHILE) ||
	  (WN_opcode(do_node) == OPC_WHILE_DO))
	while_seen = TRUE;
      if (do_preamble_block == NULL)
	do_preamble_block = WN_CreateBlock ( );
      WN_INSERT_BlockLast ( do_preamble_block, do_node );
    }

    /* Do loop not found in spite of doacross node. Serialize any code in
       parallel region. */

    if (do_node == NULL) {
      if (!while_seen) {
	WN_Delete ( stmt_block );
	RID_Delete ( Current_Map_Tab, node );
	WN_Delete ( node );
	local_count = 0;
	WN_INSERT_BlockLast ( replace_block, do_preamble_block );
	verify_mp_lowered_ptr->Set_nested_pu_tree(NULL);
	goto finish_processing;
      } else
        Fail_FmtAssertion
		  ("parallel DO was converted to WHILE and not converted back");
    }

      /* Note: front end can put code for finalizing the loop index after DO
         but inside the parallel region */

    WN_first(stmt_block) = do_node;
    WN_prev(do_node) = NULL;

    line_number = WN_linenum(do_node);
    Set_Error_Line(line_number);

    do_index_st = WN_st(WN_index(do_node));

    do_index_type = TY_mtype(ST_type(do_index_st));
    if (do_index_type == MTYPE_I1 || do_index_type == MTYPE_I2)
      do_index_type = MTYPE_I4;
    else if (do_index_type == MTYPE_U1 || do_index_type == MTYPE_U2)
      do_index_type = MTYPE_U4;

    if (do_index_type == MTYPE_I4)
      if (lastthread_node)
	fast_doacross = TRUE;
      else if (ordered_node)
	fast_doacross = FALSE;
      else if (mpsched_node)
	fast_doacross =
		 (WN_pragma_arg1(mpsched_node) == WN_PRAGMA_SCHEDTYPE_SIMPLE);
      else if (pu_mpsched_node)
	fast_doacross =
	      (WN_pragma_arg1(pu_mpsched_node) == WN_PRAGMA_SCHEDTYPE_SIMPLE);
      else if (chunk_node || pu_chunk_node)
	fast_doacross = FALSE;
      else
	fast_doacross = TRUE;
    else
      fast_doacross = FALSE;

    vsize = (local_count + 1) * sizeof(VAR_TABLE);
    var_table = (VAR_TABLE *) alloca ( vsize );
    bzero ( var_table, vsize );

    fp = WN_LdidPreg ( Pointer_type, Frame_Pointer_Preg_Offset );

    if (serial_stmt_block)
      Strip_Nested_MP ( serial_stmt_block, FALSE );
    else
      serial_stmt_block = Copy_Non_MP_Tree ( stmt_block );

    if (is_omp) {
      WN *nest_wn;
      
      nest_wn = Gen_OMP_Begin_SPR (mpt);
      WN_INSERT_BlockAfter (serial_stmt_block, NULL, nest_wn);
      nest_wn = Gen_OMP_End_SPR (mpt);
      WN_INSERT_BlockBefore (serial_stmt_block, NULL, nest_wn);
    }

    Process_Parallel_Do ( );

    if (lastthread_node) {

      mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
				       WN_PRAGMA_SCHEDTYPE_SIMPLE );
      chunk_wn = WN_CreateIntconst ( OPC_I4INTCONST, 1 );

    } else if (ordered_node && !(WN_pragma_omp(ordered_node))) {

        mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
                                         WN_PRAGMA_SCHEDTYPE_DYNAMIC );
        chunk_wn = WN_CreateIntconst ( OPC_I4INTCONST, 1 );
      
    } else {

      if (mpsched_node)
	mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
					 WN_pragma_arg1(mpsched_node) );
      else if (pu_mpsched_node)
	mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
					 WN_pragma_arg1(pu_mpsched_node) );
      else if (chunk_node || pu_chunk_node)
	mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
					 WN_PRAGMA_SCHEDTYPE_DYNAMIC );
      else
	mpsched_wn = WN_CreateIntconst ( OPC_I4INTCONST,
					 WN_PRAGMA_SCHEDTYPE_SIMPLE );

      if (chunk_node)
	chunk_wn = WN_COPY_Tree ( WN_kid0(chunk_node) );
      else if (pu_chunk_node)
	chunk_wn = WN_COPY_Tree ( WN_kid0(pu_chunk_node) );
      else
	chunk_wn = WN_CreateIntconst ( OPC_I4INTCONST, 1 );

    }

    /* do this always -- serial portion may have had a begin/end ordered */
    Cleanup_Ordered (serial_stmt_block, serial_stmt_block);

    Create_Preg_or_Temp ( do_index_type, "trip_count", &ntrip_st, &ntrip_ofst );
    wn = WN_Stid ( do_index_type, ntrip_ofst, ntrip_st, ST_type(ntrip_st),
		   ntrip_node );
    WN_linenum(wn) = line_number;
    ntrip_calc = WN_CreateBlock ( );
    WN_INSERT_BlockLast ( ntrip_calc, wn );
    ntrip_node = WN_Ldid ( do_index_type, ntrip_ofst, ntrip_st,
			   ST_type(ntrip_st) );

    if (fast_doacross)
      mp_call_wn = Gen_MP_ParallelDo_32 ( parallel_proc, fp, mpsched_wn,
					  base_node, ntrip_node, stride_node,
					  chunk_wn, is_omp );
    else
      mp_call_wn = Gen_MP_ParallelDo_64 ( parallel_proc, fp, mpsched_wn,
					  base_node, ntrip_node, stride_node,
					  chunk_wn, is_omp );

    RID_Delete ( Current_Map_Tab, node );
    WN_Delete ( node );

  } else if (mpt == MPP_ORPHANED_PDO) {

    next_node = WN_first(stmt_block);
    while ((do_node = next_node) && (WN_opcode(do_node) != OPC_DO_LOOP)) {
      next_node = WN_next(do_node);
      if ((WN_opcode(do_node) == OPC_DO_WHILE) ||
	  (WN_opcode(do_node) == OPC_WHILE_DO))
	while_seen = TRUE;
      if (do_preamble_block == NULL)
	do_preamble_block = WN_CreateBlock ( );
      WN_INSERT_BlockLast ( do_preamble_block, do_node );
    }

    if (do_node == NULL) {
      if (!while_seen) {
          /* Do loop not found in spite of PDO node. Serialize all the code
             we did find. */
	WN_Delete ( stmt_block );
	WN_DELETE_Tree ( WN_region_pragmas(node) );
	WN_DELETE_Tree ( WN_region_exits(node) );
	RID_Delete ( Current_Map_Tab, node );
	WN_Delete ( node );
	local_count = 0;
	WN_INSERT_BlockLast ( replace_block, do_preamble_block );
	verify_mp_lowered_ptr->Set_nested_pu_tree(NULL);
	goto finish_processing;
      } else
        Fail_FmtAssertion
		  ("PDO was converted to WHILE and not converted back");
    }

    WN_first(stmt_block) = do_node;
    WN_prev(do_node) = NULL;

    line_number = WN_linenum(do_node);
    Set_Error_Line(line_number);

    Strip_Nested_MP(stmt_block, FALSE);
    if (serial_stmt_block) {
      Is_True(inside_versioning_if,
              ("where did serial_stmt_block come from???"));
      Move_Non_POD_Finalization_Code(serial_stmt_block);
    }
    Transform_PDO(node);
    stmt_block = WN_region_body(node);

    WN_Delete ( WN_region_pragmas(node) );
    WN_DELETE_Tree ( WN_region_exits(node) );
    RID_Delete ( Current_Map_Tab, node );
    WN_Delete ( node );

  } else if (mpt == MPP_PARALLEL_REGION) {

    BOOL is_omp = WN_pragma_omp(WN_first(WN_region_pragmas(node)));

    line_number = WN_linenum(node);
    Set_Error_Line(line_number);

    vsize = (local_count + 1) * sizeof(VAR_TABLE);
    var_table = (VAR_TABLE *) alloca ( vsize );
    bzero ( var_table, vsize );

    fp = WN_LdidPreg ( Pointer_type, Frame_Pointer_Preg_Offset );

    if (serial_stmt_block) {
      Is_True(inside_versioning_if,
              ("where did serial_stmt_block come from???"));
      Move_Non_POD_Finalization_Code(serial_stmt_block);
      Strip_Nested_MP ( serial_stmt_block, FALSE );
    } else
      serial_stmt_block = Copy_Non_MP_Tree ( stmt_block );

    Process_Parallel_Region ( );

    if (is_omp) {
      WN *nest_wn;
      mp_call_wn = Gen_MP_ParallelRegion
        (parallel_proc, fp, NULL,
         (numthreads_node ? WN_COPY_Tree (WN_kid0(numthreads_node)) :
          WN_CreateIntconst (OPC_I4INTCONST, 0)),
         is_omp);

      /* now adjust serial_stmt_block with nested_region calls */

      nest_wn = Gen_OMP_Begin_SPR (mpt);
      WN_INSERT_BlockAfter (serial_stmt_block, NULL, nest_wn);
      /* unfortunately we don't know whether there really is an ordered PDO
       * inside or not.
       */
      Cleanup_Ordered (serial_stmt_block, serial_stmt_block);
      nest_wn = Gen_OMP_End_SPR (mpt);
      WN_INSERT_BlockBefore (serial_stmt_block, NULL, nest_wn);
    }
    else 
      mp_call_wn = Gen_MP_ParallelRegion
        (parallel_proc, fp,
         WN_CreateIntconst (OPC_I4INTCONST, num_constructs),
         (numthreads_node ? WN_COPY_Tree (WN_kid0(numthreads_node)) :
          WN_CreateIntconst (OPC_I4INTCONST, 0)), is_omp);

    RID_Delete ( Current_Map_Tab, node );
    WN_Delete ( node );

  }

  /* Build final code for parallel loops and regions. */

  if ((mpt == MPP_PARALLEL_DO) || (mpt == MPP_PARALLEL_REGION)) {

    stmt1_block = WN_CreateBlock ( );
    if (mp_if) {
      if (if_preamble_block)
	WN_INSERT_BlockLast ( stmt1_block, if_preamble_block );
      if (do_preamble_block)
	WN_INSERT_BlockLast ( stmt1_block, do_preamble_block );
      if (ntrip_calc)
	WN_INSERT_BlockLast ( stmt1_block, ntrip_calc );
    }
    if (livein_block)
      WN_INSERT_BlockLast ( stmt1_block, livein_block );
    WN_INSERT_BlockLast ( stmt1_block, mp_call_wn );
    Create_Preg_or_Temp ( MTYPE_I4, "mp_status", &return_st, &return_ofst );
    GET_RETURN_PREGS(rreg1, rreg2, MTYPE_I4);
    wn = WN_Stid ( MTYPE_I4, return_ofst, return_st, ST_type(return_st),
		   WN_LdidPreg ( MTYPE_I4, rreg1 ));
    WN_linenum(wn) = line_number;
    WN_INSERT_BlockLast ( stmt1_block, wn );
    if (liveout_block) {
      wn = WN_CreateIf ( WN_Ldid ( MTYPE_I4, return_ofst, return_st,
				   ST_type(return_st) ),
			 WN_CreateBlock ( ), liveout_block );
      WN_linenum(wn) = line_number;
      WN_INSERT_BlockLast ( stmt1_block, wn );
    }
    if (mp_if && if_postamble_block)
      WN_INSERT_BlockLast ( stmt1_block, if_postamble_block );

    if (!mp_if) {
      if (do_preamble_block)
	WN_INSERT_BlockLast ( replace_block, do_preamble_block );
      if (ntrip_calc)
	WN_INSERT_BlockLast ( replace_block, ntrip_calc );
      if (if_node)
	if_cond_wn = WN_COPY_Tree ( WN_kid0(if_node) );
      if (mpt == MPP_PARALLEL_DO) {
	wn = WN_GT ( do_index_type, WN_Ldid ( do_index_type, ntrip_ofst,
					      ntrip_st, ST_type(ntrip_st) ),
		     WN_Intconst ( do_index_type, 1 ));
	if (if_cond_wn)
	  if_cond_wn = WN_CAND ( if_cond_wn, wn );
	else
	  if_cond_wn = wn;
      }
      wn = WN_LNOT ( WN_Create_Intrinsic ( OPC_I4INTRINSIC_OP,
					   INTRN_MP_IN_PARALLEL_REGION, 0,
					   NULL ) );
      if (if_cond_wn)
	if_cond_wn = WN_CAND ( if_cond_wn, wn );
      else
	if_cond_wn = wn;
    }

    stmt2_block = WN_CreateBlock ( );
    wn = WN_Stid ( MTYPE_I4, return_ofst, return_st, ST_type(return_st),
		   WN_CreateIntconst ( OPC_I4INTCONST, 1 ));
    WN_linenum(wn) = line_number;
    WN_INSERT_BlockLast ( stmt2_block, wn );
    wn = WN_CreateIf ( if_cond_wn, stmt1_block, stmt2_block );
    WN_linenum(wn) = line_number;
    WN_INSERT_BlockLast ( replace_block, wn );

    wn = WN_CreateIf ( WN_Ldid ( MTYPE_I4, return_ofst, return_st,
				 ST_type(return_st) ),
		       serial_stmt_block, WN_CreateBlock ( ) );
    WN_linenum(wn) = line_number;
    WN_INSERT_BlockLast ( replace_block, wn );

  } else if (mpt == MPP_ORPHANED_PDO) {

    Is_True(livein_block == NULL,
           ("non-NULL livein_block for MPP_ORPHANED_PDO"));
    Is_True(liveout_block == NULL,
           ("non-NULL liveout_block for MPP_ORPHANED_PDO"));

    if (do_preamble_block)
      WN_INSERT_BlockLast ( replace_block, do_preamble_block );
    WN_INSERT_BlockLast ( replace_block, stmt_block );

  }


  /* Free up all saved nodes. */

finish_processing:

  while (affinity_nodes) {
    next_node = WN_next(affinity_nodes);
    WN_DELETE_Tree ( affinity_nodes );
    affinity_nodes = next_node;
  }

  while (affinity_d_nodes) {
    next_node = WN_next(affinity_d_nodes);
    WN_DELETE_Tree ( affinity_d_nodes );
    affinity_d_nodes = next_node;
  }

  while (affinity_t_nodes) {
    next_node = WN_next(affinity_t_nodes);
    WN_DELETE_Tree ( affinity_t_nodes );
    affinity_t_nodes = next_node;
  }

  if (chunk_node)
    WN_DELETE_Tree ( chunk_node );

  while (copyin_nodes) {
    next_node = WN_next(copyin_nodes);
    WN_DELETE_Tree ( copyin_nodes );
    copyin_nodes = next_node;
  }

  if (if_node)
    WN_DELETE_Tree ( if_node );

  while (lastlocal_nodes) {
    next_node = WN_next(lastlocal_nodes);
    WN_Delete ( lastlocal_nodes );
    lastlocal_nodes = next_node;
  }

  while (firstprivate_nodes) {
    next_node = WN_next(firstprivate_nodes);
    WN_Delete ( firstprivate_nodes );
    firstprivate_nodes = next_node;
  }

  if (lastthread_node)
    WN_Delete ( lastthread_node );

  while (local_nodes) {
    next_node = WN_next(local_nodes);
    WN_Delete ( local_nodes );
    local_nodes = next_node;
  }

  if (mpnum_node)
    WN_Delete ( mpnum_node );

  if (mpsched_node)
    WN_Delete ( mpsched_node );

  if (numthreads_node)
    WN_DELETE_Tree ( numthreads_node );

  if (ordered_node)
    WN_Delete ( ordered_node );

  while (reduction_nodes) {
    next_node = WN_next(reduction_nodes);
    WN_DELETE_Tree ( reduction_nodes );
    reduction_nodes = next_node;
  }

  while (shared_nodes) {
    next_node = WN_next(shared_nodes);
    WN_Delete ( shared_nodes );
    shared_nodes = next_node;
  }

  for (i=0; i < local_count; i++) {
    if (var_table[i].vtree)
      WN_DELETE_Tree ( var_table[i].vtree );
    if (var_table[i].vtreex)
      WN_DELETE_Tree ( var_table[i].vtreex );
  }

  /* Setup the appropriate return code. */

  if (mp_if) {

    /* For mp if's return the entire replacement block and the caller will
       handle it from there. */

    verify_mp_lowered.Set_replace_block(replace_block,
      WN_next(WN_last(replace_block)));
    return_nodes = replace_block;

  } else {

    /* For all other parallel nodes return the replacement code chained with
       any code following the original parallel constructs. */

    if (WN_first(replace_block)) {
      return_nodes = WN_first(replace_block);
      WN_next(WN_last(replace_block)) = cont_nodes;
      if (cont_nodes)
	WN_prev(cont_nodes) = WN_last(replace_block);
    } else
      return_nodes = cont_nodes;

    WN_Delete ( replace_block );
    verify_mp_lowered.Set_replace_block(return_nodes, cont_nodes);
  }

  return (return_nodes);
} // lower_mp()

/***********************************************************************
 *
 * Per-PU initializations for the MP-lowerer.
 * Called by WN_Lower.
 *
 ***********************************************************************/

extern void LowerMP_PU_Init()
{
  if (PU_Info_proc_sym(Current_PU_Info) != last_pu_proc_sym) {
    last_pu_proc_sym = PU_Info_proc_sym(Current_PU_Info);
    nl_idx = 0;
    do_id = 0;
    region_id = 0;
    lock_id = 0;
    if (mpid_size > 0)
      bzero ( mpid_table, mpid_size * sizeof(MPID_TABLE) );
      // ignore pu_chunk_node and pu_mpsched_node from prior PU; no need to
      // deallocate it since Whirl mempool gets popped at end of compiling
      // the PU
    pu_chunk_node = NULL;
    pu_mpsched_node = NULL;
  }
}

extern BOOL WN_has_pragma_with_side_effect ( WN *wn )
{
  OPERATOR opr;
  opr = WN_operator(wn);
  FmtAssert (((opr == OPR_PRAGMA) || (opr == OPR_XPRAGMA)),
             ("WN must contain PRAGMA in WN_has_pragma_with_side_effect\n"));
  switch (WN_pragma(wn)) {
  case WN_PRAGMA_BARRIER:
  case WN_PRAGMA_CRITICAL_SECTION_BEGIN:
  case WN_PRAGMA_COPYIN:
  case WN_PRAGMA_ORDERED:
  case WN_PRAGMA_SINGLE_PROCESS_BEGIN:
  case WN_PRAGMA_FILL:
  case WN_PRAGMA_ALIGN:
  case WN_PRAGMA_INDEPENDENT_BEGIN:
  case WN_PRAGMA_ORDERED_BEGIN:
  case WN_PRAGMA_REDISTRIBUTE:
  case WN_PRAGMA_DISTRIBUTE:
  case WN_PRAGMA_ENTER_GATE:
  case WN_PRAGMA_PAGE_PLACE:
	return TRUE;
  default:
	return FALSE;
  }
}


/*
Return TRUE if st is for a dynamic array localized by the MP lowerer,
FALSE otherwise.
*/

BOOL ST_is_localized_dynarray(ST *st)
{
    // check that ST flags are right
  if (ST_sclass(st) != SCLASS_AUTO || ! ST_is_export_local(st)||
      !ST_pt_to_unique_mem(st))
    return FALSE;

    // check for __mplocal_ or __mplocalx_ prefix
  char *name = ST_name(st);
  if (strncmp(name, "__mplocal", 9) == 0 &&
      (name[9] == '_' || (name[9] == 'x' && name[10] == '_')) )
    return TRUE;

  return FALSE;
}
