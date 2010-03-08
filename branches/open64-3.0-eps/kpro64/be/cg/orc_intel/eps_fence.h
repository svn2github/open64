#ifndef _FENCE_H_
#define _FENCE_H_

#include <map>

class Fence {
friend class Fence_list;
friend class EPS;
friend class DDG;
private:
    REGIONAL_CFG_NODE* _fence_node;
    EPS_SIM_STATE _sim_state;
    OP* _fence_op;
    OP* _fence_boundary; // if boundary OP is NULL, it means the boundary is at the bottom of the BB.OP* _fence_boundary;
    OP* _new_op; // for live info update
    TN* _chosen_TN;
    BOOL _need_av_invalidate;

    int int_pressure;
    int float_pressure;

    // 2004.11.25
    // I add _bk_bb_set which record bookkeeped basic blocks,
    // so that I prevent multiple bookkepings for 1 basic block
    //
    //       A
    //     /   \
    //   B   C   D
    //   | /   \ |
    //   E       F
    //     \   /
    //       G
    //  code motion from G to A will leave 2 bookkeepings at C,
    //  which might occur bug.
    //
    std::set<int> _bk_bb_set;

    typedef mempool_allocator<TN*> TN_ALLOC;
    typedef std::list<TN*, TN_ALLOC> TN_LIST;
    TN_LIST _chosen_TNs;
    
    REGIONAL_CFG_NODE* fence_node(void) { return _fence_node; }
    OP* fence_op(void) { return _fence_op; }
    OP* fence_boundary(void) { return _fence_boundary; }

//    void mark_TNs(RHS_set* best_rhs, BS** visited, BB* bb, OP* boundary,
//            BOOL at_fence, TN_SET* preferred_TNs[], TN_SET **ineligible_TNs, BOOL* pred_bk, TN* pred,
//            MEM_POOL* pool);
    void mark_TNs(RHS_set* best_rhs, std::map<int, int>& visited, BB* bb, OP* boundary,
            BOOL at_fence, TN_SET* preferred_TNs[], TN_SET **ineligible_TNs, BOOL* pred_bk, TN* pred,
            MEM_POOL* pool);

    void update_live_info(REGIONAL_CFG_NODE* src, REGIONAL_CFG_NODE* dest);
    void update_live_info(REGIONAL_CFG_NODE* src, BB* dest);
    void update_live_info(BB* src, BB* dest);
    
public:
    Fence(REGIONAL_CFG_NODE* node, OP* op)
        : _chosen_TNs(TN_ALLOC(EPS::current_eps_mempool()))
    {
        _fence_node = node,
        _fence_op = op;
        _fence_boundary = op;
        _chosen_TN = NULL;

        int_pressure = 0;
        float_pressure = 0;
    }
    AV_list* compute_av_set(REGION* start_rgn, REGIONAL_CFG_NODE* start_node, OP* start_op, reg_tn_set* live, BOOL at_fence, int ws);
    AV* select_best_av(AV_list* avs);
    BOOL select_definition_TN(AV* best_av, REGIONAL_CFG_NODE* node, OP* boundary);

    void fill_group(void);
    BOOL advance_fence_in_node(void);
    void force_schedule(void);

    OP* search_in_node(RHS_set* rhs_down, REGIONAL_CFG_NODE* node, OP* boundary, BOOL from_fence, BOOL check_dest, BOOL* after_store);
    OP* move_instruction(AV* av);
    RHS_set* move_instruction(RHS_set* rhs_down, REGIONAL_CFG_NODE* pred, REGIONAL_CFG_NODE* node, OP* boundary, BOOL at_fence, BOOL after_store, BOOL* pred_bk);
    void make_bookkeeping(RHS_set* rhs, REGIONAL_CFG_NODE* pred, REGIONAL_CFG_NODE* node, BOOL pred_bk);

    void print(FILE* fp);
};

class Fence_list {
private:
    typedef mempool_allocator<Fence*> FENCE_ALLOC;
    typedef std::list<Fence*, FENCE_ALLOC> FENCE_LIST;
    FENCE_LIST _fences;
public:
    Fence_list() : _fences(FENCE_ALLOC(EPS::current_eps_mempool())) {}
    ~Fence_list() {}

    // 2007.02.09
    typedef FENCE_LIST::iterator iterator;
    typedef FENCE_LIST::const_iterator const_iterator;
    iterator begin() { return _fences.begin(); }
    iterator end() { return _fences.end(); }
    const_iterator begin() const { return _fences.begin(); }
    const_iterator end() const { return _fences.end(); }

    bool empty(void) { return _fences.empty(); }

    void destruct(void);
    Fence* fence_in_node(REGIONAL_CFG_NODE* node);
    Fence* is_fence(REGIONAL_CFG_NODE* node, OP* op);
    Fence* add_fence(REGIONAL_CFG_NODE* node);
    Fence* add_fence(REGIONAL_CFG_NODE* node, OP* op);
//sylee 08.09.08
    Fence* add_fence2(REGIONAL_CFG_NODE* node, EPS_SIM_STATE _sim_stat);
    Fence* add_fence2(REGIONAL_CFG_NODE* node, OP* op, EPS_SIM_STATE _sim_stat);
//sylee 08.09.08
    
    
    void remove_fence(Fence* fence);

    void debug_print(void);
};

#endif // _FENCE_H_
