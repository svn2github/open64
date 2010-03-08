#ifndef _EPS_H_
#define _EPS_H_

#include <stdio.h>

#include <set>
#include <list>
#include <stack>
#include <vector>
#include <ext/hash_map>

#include "cg.h"
#include "op.h"
#include "cgtarget.h"
#include "bb.h"
#include "region.h"

#include "prdb.h"
#include "prdb_util.h"
#include "pqs_cg.h"

#include "cg_dep_graph.h"
#include "dag.h"
#include "reg_live.h"
#include "gra_live.h"

#include "region_bb_util.h"
#include "region_map.h"

#include "cggrp_microsched.h"

#define EPS_CROSS_REGION 1
#define EPS_SPECLOAD 1
#define EPS_SPECLOAD2 0
#define EPS_ADVLOAD 0
#define BR_LOW_PRIOR 1
#define CHK_LOW_PRIOR 1
#define EPS_DCM 0

#define MORE_CODEMOTION 0

#define SCHEDULE_NODE 0
#define SCHEDULE_FENCE_LIST 1

#define OPTIMIZE_EPS

class EPS_MEM {
protected:
    MEM_POOL _m;
    EPS_MEM() {
        _m.magic_num = 0;
        MEM_POOL_Initialize( &_m, "EPS_MEM", TRUE);
        MEM_POOL_Push(&_m);
    }

    ~EPS_MEM() {
        MEM_POOL_Pop(&_m );
        MEM_POOL_Delete(&_m);
    }
};

class AV;
class AV_list;
class AV_attribute;
class Fence;
class Fence_list;
class Node_attribute;
class Node_attr_map;
class Region_attribute;
class join_info;
class DDG;
class PostDominator;
class OPS_Group;
class OPS_Group_vector;
class OPS_Group_vector_map;
//sy lee
class EPS_SIM_STATE;
//sylee

#if EPS_SPECLOAD
class SpecLDs;
#endif
class GIS_SpecLDs;
#if EPS_DCM
class DownFence;
class DFence_list;
#endif

//#include "eps_option.h"
//#include "eps_debug.h"
//#include "eps_simulator.h"
#include "eps_join.h"

#include "eps_prtn.h"

typedef mempool_allocator<OP*> OP_ALLOC;
typedef vector<OP*, OP_ALLOC> OPS_GROUP;


class EPS : public EPS_MEM {
private:
    static EPS* _current_eps_driver;
    static MEM_POOL* _current_eps_mempool;

    REGION_TREE* _region_tree;
    REGION* _current_region;

    Fence_list* _fence_list;
    Node_attr_map* _node_attr_map;
    REGION_MAP _region_map;

    join_info* _join_info;

    std::set<int> new_bbs;

public:
    DDG* _ddg;
    PostDominator* _pd;
    OPS_Group_vector_map* _ogv_map;

private:
    BOOL _is_scheduling;

//    PRDB_GEN* prdb;

    PRTN_Map prtn_map;

    GIS_SpecLDs* _gis_spec_lds;

public:
    std::map<int,int> control_dependent_predicate_map;  // 2009/04/09
    std::map<int,int> control_dependent_predicate_map_applied;  // 2009/06/16
    void resolve_control_dependent_predicates(REGION* rgn);
    BOOL resolve_control_dependent_predicates(REGION* rgn, TN* tn1, TN* tn2);

private:
#if EPS_SPECLOAD
    SpecLDs* _spec_lds;
#endif
#if EPS_DCM
    DFence_list* _dfence_list;
#endif

    void init_eps(REGION* rgn);
    void init_fences(void);
    void init_node_attr(REGION* rgn);
    static int _eps_level;

    // because REGION data structure does not contain backedges.
    // we add backedges before schedule then delete them after schedule.
    vector<REGIONAL_CFG_EDGE*> _saved_backedges;
    void add_backedges(void);
    void del_backedges(void);
    void remove_empty_bb(REGION* rgn);
    static BOOL remove_basic_block(BB* bb);
public:
    EPS(REGION_TREE* region_tree);
    ~EPS();
    void run(void);
    static BOOL decide_region(REGION* rgn);
    static BOOL mark_hot_load(DDG* ddg, REGION* rgn);     // 2009/02/15
    static BOOL is_hot_load(OP* op);            // 2009/02/15
    void schedule_region(REGION* rgn);
#if SCHEDULE_NODE
    void schedule_node(REGIONAL_CFG_NODE* node);
#elif SCHEDULE_FENCE_LIST
    BOOL check_ready(REGIONAL_CFG_NODE* node);
    void schedule_fences(REGION* rgn);
#else
#error
#endif
#if EPS_DCM
//    void down_schedule_region(REGION* rgn);
    void down_schedule_node(REGIONAL_CFG_NODE* node);
#endif

    void pushdown_chk_region(REGION* rgn);
    void pushdown_chk_node(REGIONAL_CFG_NODE* node);
    void post_process_region(REGION* rgn);
    void post_process_node(REGIONAL_CFG_NODE* node);
    static void post_post_process(BB* bb);

    static EPS* current_eps_driver(void) { return _current_eps_driver; }
    static MEM_POOL* current_eps_mempool(void) { return _current_eps_mempool; }

    static BOOL Is_OP_Dependent(OP* op, OP* prev_op);

    static void set_is_scheduling(BOOL s) { if(_current_eps_driver) _current_eps_driver->_is_scheduling = s; }
    static BOOL is_scheduling(void) { return _current_eps_driver==NULL?FALSE:_current_eps_driver->_is_scheduling; }

    static BOOL is_ineligible_succ(OP* op);
    static BOOL is_not_schedulable(OP* op);
    static BOOL go_further_successor(REGIONAL_CFG_NODE* node);
    static void add_exit_targets(REGION* rgn, std::list<BB*>* list);
    REGION* current_region(void) { return _current_region; }
    BB* get_first_bb(void);

    void create_fences_at_successors(REGIONAL_CFG_NODE* node);
#if EPS_DCM
    void create_dfences_at_predecessors(REGIONAL_CFG_NODE* node);
#endif

    Node_attribute* get_attrib(REGIONAL_CFG_NODE* node);
    Node_attribute* add_attrib(REGIONAL_CFG_NODE* node);
    Region_attribute* get_region_attrib(REGION* rgn);
    join_info* get_join_info(void) { return _join_info; }

    BOOL bad_join(REGIONAL_CFG_NODE* join_node, OPS_GROUP* avop);
    BOOL bad_join(join_set& joins, OP* avop);

    DDG* get_ddg(void) { return _ddg; }
    PostDominator* get_pd(void) { return _pd; }
    OPS_Group_vector* get_ogv(REGIONAL_CFG_NODE* node);

#if EPS_SPECLOAD
    SpecLDs* get_spec_lds(void) { return _spec_lds; }
    static BOOL recovery(REGIONAL_CFG_NODE* node);
#endif

    GIS_SpecLDs* get_gis_spec_lds(void) { return _gis_spec_lds; }

#if EPS_DCM
    DownFence* dfence_in_node(REGIONAL_CFG_NODE* node);
    DownFence* is_dfence(REGIONAL_CFG_NODE* node, OP* op);
    DownFence* add_dfence(REGIONAL_CFG_NODE* node);
    DownFence* add_dfence(REGIONAL_CFG_NODE* node, OP* op);
    void remove_dfence(DownFence* fence);
#endif

    // 2004.07.02
    void disallow_cicm(BOOL check);
    void disallow_cicm(REGION* rgn, BOOL check);

    void make_preheader(void);
    void make_preheader(REGION* rgn);
    void add_region_exit_node(void);
    void add_region_exit_node(REGION* rgn);
    BB* new_block_split_preds(BB* bbpred, BB* bbnode);
    void split_predecessors(BB* bb);
    void insert_bb_at_Z(BB* bb);
    void insert_bb_at_Z(BB* bp, BB* bs);
    static void remove_empty_blocks(BB* first_bb);

    static int level(void) { return _eps_level; }
    static void inc_level(void) { _eps_level++; }

    BOOL no_fence(void);
    Fence* fence_in_node(REGIONAL_CFG_NODE* node);
    Fence* is_fence(REGIONAL_CFG_NODE* node, OP* op);
    Fence* add_fence(REGIONAL_CFG_NODE* node);
    Fence* add_fence(REGIONAL_CFG_NODE* node, OP* op);

    //sylee 2008.09.08
    Fence* add_fence2(REGIONAL_CFG_NODE* node, OP* op, EPS_SIM_STATE _sim_stat);
    Fence* add_fence2(REGIONAL_CFG_NODE* node, EPS_SIM_STATE _sim_stat);

    
    //sylee 2008.09.08
    void remove_fence(Fence* fence);

    BOOL is_new_bb(int id) { return new_bbs.find(id)!=new_bbs.end(); }

    static TN* FindComplement(TN* tn);

    static void analysis_regions(REGION* rgn, int depth);
    static double calculate_IPCs_region(REGION* rgn, const char* message, int depth);
    static double calculate_IPCs(BB* first_bb, const char* message);

public:
    void AddRecoveryBlock(int bbid) { m_setRecoveryBlocks.insert(bbid); }
    bool IsRecoveryBlock(int bbid) { return m_setRecoveryBlocks.find(bbid)!=m_setRecoveryBlocks.end(); }
public:
    bool IsCriticalEdgeEntryRegion(int id) { return m_setCriticalEdgeEntryRegions.find(id)!=m_setCriticalEdgeEntryRegions.end(); }
protected:
    std::set<int> m_setRecoveryBlocks;
    std::set<int> m_setCriticalEdgeEntryRegions;
};

#include "eps_option.h"
#include "eps_debug.h"
#include "eps_simulator.h"
#include "eps_join.h"
#include "eps_attributes.h"
#include "eps_av.h"
#include "eps_fence.h"
#include "eps_ddg.h"
#include "eps_specload.h"
#include "eps_down.h"

#include "eps_gis_specld.h"

inline void EPS::init_eps(REGION* rgn)
{
    _current_region = rgn;
// 2004.07.02 moved to disallow_cicm...
//    Region_attribute* attr = CXX_NEW(Region_attribute(), EPS::current_eps_mempool());
//    REGION_MAP_Set(_region_map, _current_region, attr);
}
inline void EPS::init_fences(void)
{
    if(_fence_list!=NULL) CXX_DELETE(_fence_list, EPS::current_eps_mempool());
    _fence_list = CXX_NEW(Fence_list(), EPS::current_eps_mempool());
}
inline void EPS::init_node_attr(REGION* rgn)
{
    if(_node_attr_map!=NULL) CXX_DELETE(_node_attr_map, EPS::current_eps_mempool());
    _node_attr_map = CXX_NEW(Node_attr_map(rgn), EPS::current_eps_mempool());
}

inline Node_attribute* EPS::get_attrib(REGIONAL_CFG_NODE* node) { return _node_attr_map->get_attrib(node); }
inline Node_attribute* EPS::add_attrib(REGIONAL_CFG_NODE* node) { return _node_attr_map->add_attrib(node); }

inline OPS_Group_vector* EPS::get_ogv(REGIONAL_CFG_NODE* node) { return _ogv_map->get_ogv(node); }

inline BOOL EPS::no_fence(void) { return (_fence_list->empty()); }
inline Fence* EPS::fence_in_node(REGIONAL_CFG_NODE* node) { return _fence_list->fence_in_node(node); }
inline Fence* EPS::is_fence(REGIONAL_CFG_NODE* node, OP* op) { return _fence_list->is_fence(node, op); }
inline Fence* EPS::add_fence(REGIONAL_CFG_NODE* node) { return _fence_list->add_fence(node); }
inline Fence* EPS::add_fence(REGIONAL_CFG_NODE* node, OP* op) { return _fence_list->add_fence(node, op); }
inline void EPS::remove_fence(Fence* fence) { _fence_list->remove_fence(fence); }

#if EPS_DCM
inline DownFence* EPS::dfence_in_node(REGIONAL_CFG_NODE* node) { return _dfence_list->dfence_in_node(node); }
inline DownFence* EPS::is_dfence(REGIONAL_CFG_NODE* node, OP* op) { return _dfence_list->is_dfence(node, op); }
inline DownFence* EPS::add_dfence(REGIONAL_CFG_NODE* node) { return _dfence_list->add_dfence(node); }
inline void EPS::remove_dfence(DownFence* dfence) { _dfence_list->remove_dfence(dfence); }
#endif

inline Region_attribute* EPS::get_region_attrib(REGION* rgn)
{
    return (Region_attribute*)REGION_MAP_Get(_region_map, rgn);
}
    
#endif // _EPS_H_

