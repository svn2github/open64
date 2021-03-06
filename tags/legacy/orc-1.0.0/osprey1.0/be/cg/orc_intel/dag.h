/*
  Copyright (C) 2000-2002, Intel Corporation
  All rights reserved.
  
  Redistribution and use in source and binary forms, with or without modification,
  are permitted provided that the following conditions are met:
  
  Redistributions of source code must retain the above copyright notice, this list
  of conditions and the following disclaimer. 
  
  Redistributions in binary form must reproduce the above copyright notice, this list
  of conditions and the following disclaimer in the documentation and/or other materials
  provided with the distribution. 

  Neither the name of the owner nor the names of its contributors may be used to endorse or
  promote products derived from this software without specific prior written permission. 

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//-*-c++-*-

//*********************************************************************
//
// Module: dag.h
// $Date: 2005/10/21 19:00:00 $
// $Author: marcel $
// $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/dag.h,v $
//
// Description:
//
// Interface of DAG (dependence graph) construction related utilities.
//
//*********************************************************************

#ifndef dag_INCLUDED
#define dag_INCLUDED

#include <set.h>
#include "tn_map.h"
#include "region.h"
#include "recovery.h"
#include "prdb.h"

/* Functions defined in cg_dep_graph.cxx.
 */
extern BOOL has_assigned_reg(TN *tn);
extern void add_reg_assignment(TN *tn);
extern void add_gtn_use_arc(OP *op, UINT8 opnd);
extern BOOL OP_like_store(OP *op);
extern BOOL get_mem_dep(OP *pred, OP *succ, BOOL *definite, UINT8 *omega);
extern ARC *new_arc_with_latency(CG_DEP_KIND kind, OP *pred, OP *succ,
                                 INT16 latency, UINT8 omega,
                                 UINT8 opnd, BOOL is_definite);
extern ARC *shorter_succ_arc(ARC *arc1, ARC *arc2);
extern void adjust_for_rw_elim(ARC_LIST *arcs, UINT32 num_definite_arcs,
                               ARC *shortest, ARC *shortest_to_from_store);
extern BOOL op_defines_sp(OP *op);
extern BOOL CG_DEP_Alloca_Aliases(OP *mem_op);
extern BOOL is_xfer_depndnce_reqd(const void *op, const void *xfer_op);
extern void maybe_add_exit_sp_adj_arc (OP *mem_op, OP *exit_sp_adj_op);
extern _CG_DEP_OP_INFO *new_op_info(void);
extern void Invoke_Init_Routines();
extern void CG_DEP_Delete_DAG(void);

extern TN_MAP gtn_use_map;

inline BOOL ARC_is_memin(ARC *arc)
{
    return ARC_kind(arc) == CG_DEP_MEMIN;
}

inline BOOL ARC_is_postbr(ARC *arc)
{
    return ARC_kind(arc) == CG_DEP_POSTBR;
}

inline BOOL ARC_is_br(ARC *arc)
{
    return ARC_kind(arc) == CG_DEP_POSTBR || 
           ARC_kind(arc) == CG_DEP_PREBR;
}

inline BOOL ARC_is_postchk(ARC *arc)
{
    return ARC_kind(arc) == CG_DEP_POSTCHK;
}

inline BOOL
ARC_is_control_spec(ARC* arc) {
    if ( ARC_is_dotted(arc) &&
         ( ARC_is_postbr(arc) && OP_br(ARC_pred(arc)) ||
           ARC_is_postchk(arc) && OP_chk(ARC_pred(arc)) ) ) {
        return TRUE;
    }

    return FALSE;
}


inline BOOL
ARC_is_data_spec(ARC* arc) {
    if (ARC_is_dotted(arc) &&
        ARC_is_mem(arc) &&
        OP_store(ARC_pred(arc))) {
        return TRUE;
    }

    return FALSE;
}

inline BOOL
ARC_is_spec(ARC* arc) {
    return ARC_is_control_spec(arc) || ARC_is_data_spec(arc);
}

/* Base class for the use of mempool.
 */
class DAG_MEM {
protected:
    MEM_POOL _mem_pool;

    DAG_MEM() {
        MEM_POOL_Initialize( &_mem_pool, "DAG_MEM", true );
        MEM_POOL_Push( &_mem_pool );
    }
    ~DAG_MEM() {
        MEM_POOL_Pop( &_mem_pool );
        MEM_POOL_Delete(&_mem_pool );
    }
};

/* ====================================================================
 *
 * DAG_BUILDER:
 *
 * This class is intended for building DAG for a SEME region.
 *
 * ====================================================================
 */
class DAG_BUILDER : public DAG_MEM {

friend class SCHEDULER;

private:
    typedef set<OP*> OPs;

    template <class _Ptr_Tp>
    struct ptr_hash {
        size_t operator()(_Ptr_Tp __x) const { return UINT(__x); }
    };

    /* Mapping: TN -> OPs
     */
    typedef mempool_allocator< pair<TN*,OPs> >          TN_OPs_ALLOC;
    typedef hash_map<TN*, OPs,
                   ptr_hash<TN*>, equal_to<TN*>,
                   TN_OPs_ALLOC>                        TN_OPs_MAP;
    typedef TN_OPs_MAP::iterator                        TN_OPs_MAP_ITER;
  
    /* Mapping: BB -> OPs
     */
    typedef mempool_allocator< pair<BB*,OPs> >          BB_OPs_ALLOC;
    typedef hash_map<BB*, OPs,
                   ptr_hash<BB*>, equal_to<BB*>,
                   BB_OPs_ALLOC>                        BB_OPs_MAP;
    typedef BB_OPs_MAP::iterator                        BB_OPs_MAP_ITER;
  
    /* Mapping: BB -> (TN -> OPs)
     */
    typedef mempool_allocator< pair<BB*,TN_OPs_MAP> >   BB_DEF_USE_ALLOC;
    typedef hash_map<BB*, TN_OPs_MAP,
                   ptr_hash<BB*>, equal_to<BB*>,
                   BB_DEF_USE_ALLOC>                    BB_DEF_USE_MAP;
    typedef BB_DEF_USE_MAP::iterator                    BB_DEF_USE_MAP_ITER;

    BOOL            _cyclic;
    BOOL            _include_assigned_registers;
    BOOL            _include_memread_arcs;
    BOOL            _include_memin_arcs;
    BOOL            _include_control_arcs;
    BB*             _bb;
    REGION*         _region;
    UINT            _num_data_spec_arcs;
    UINT            _num_cntl_spec_arcs;
    BB_OPs_MAP      _bb_ops_map;
    BB_DEF_USE_MAP  _bb_def_info_map;
    BB_DEF_USE_MAP  _bb_use_info_map;
    OPs             _empty_set;

    /* predicate query system 
     */
    PRDB_GEN*       _prdb ;

    /* Internal member functions.
     */
    BOOL OP_Shadowed_By_Prev_OPs (OP*, OPs&, COMPARE_FUNCTION);
    BOOL Is_Control_Speculative (OP* pred, OP* succ);
    OPs& Get_Def_Use_OPs    (OP *op, UINT8 res, CG_DEP_KIND arc_kind);
    void Set_Def_Use_OPs    (OP *op);
    void Compute_Defs_Uses_In (BB* bb);
    void Compute_OPs_In     (BB* bb);
    void Build_Reg_Arcs     (OP* op);
    void Build_Mem_Arcs     (OP *op);
    void Build_Misc_Arcs    (OP* op);
    void Build_Branch_Arcs  (OP* op, BOOL include_latency);
  
public:

    /* Constructors and Destructors.
     */
    DAG_BUILDER (REGION* region, PRDB_GEN * prdb,
                     BOOL    assigned_regs, BOOL    memread_arcs,
                     BOOL    memin_arcs,    BOOL    control_arcs);

    DAG_BUILDER(BB* bb,PRDB_GEN* prdb=NULL);

    ~DAG_BUILDER(void);

    /* Exported interfaces
     */
    void Build_DAG (void);
};


INT16 get_opnd_idx (OP *op , TN* tn) ;
void adjust_reganti_latency (ARC *arc) ;
void adjust_reganti_latency (BB *bb) ;

#endif

