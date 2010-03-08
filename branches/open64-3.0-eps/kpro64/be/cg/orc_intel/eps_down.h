#ifndef _DOWN_H_
#define _DOWN_H_

class OPS_Group {
friend class OPS_Group_vector;
private:
    typedef mempool_allocator<OP*> OP_ALLOC;
    typedef vector<OP*, OP_ALLOC> OPS_GROUP;
    OPS_GROUP _ops_group;
    EPS_SIM_STATE _sim_state;

private:
    OPS_Group() : _ops_group(OP_ALLOC(EPS::current_eps_mempool())) {}

    BOOL add_at_head(OP* head_op);
    BOOL add(OP* op);

public:
    BOOL try_add_at_head(OP* head_op);
    BOOL try_add(OP* op);
    BOOL try_add_ops(OPS_GROUP* ops);

    int size(void) { return _ops_group.size(); }
    BOOL empty(void) { return _ops_group.size()==0; }
    BOOL is_full(void) { return _ops_group.size()>=6; }
    BOOL find_op(OP* op);
    BOOL contain_ineligible(void);

    typedef OPS_GROUP::iterator iterator;
    typedef OPS_GROUP::const_iterator const_iterator;
    iterator begin() { return _ops_group.begin(); }
    iterator end() { return _ops_group.end(); }
    const_iterator begin() const { return _ops_group.begin(); }
    const_iterator end() const { return _ops_group.end(); }

    void print(FILE* fp);
    void debug_print(void);
};

class OPS_Group_vector {
private:
    typedef mempool_allocator<OPS_Group*> OPS_GROUP_ALLOC;
    typedef vector<OPS_Group*, OPS_GROUP_ALLOC> OPS_GROUP_VECTOR;
    OPS_GROUP_VECTOR _vector;
    BB* _bb;

public:
    OPS_Group_vector(REGIONAL_CFG_NODE* node) : _vector(OPS_GROUP_VECTOR(EPS::current_eps_mempool()))
    {
        if(!node->Is_Region()) {
            construct(node->BB_Node());
        }
    }
    void construct(BB* bb);

    typedef OPS_GROUP_VECTOR::iterator iterator;
    typedef OPS_GROUP_VECTOR::const_iterator const_iterator;
    typedef OPS_GROUP_VECTOR::reverse_iterator reverse_iterator;
    typedef OPS_GROUP_VECTOR::const_reverse_iterator const_reverse_iterator;

    iterator begin() { return _vector.begin(); }
    iterator end() { return _vector.end(); }
    const_iterator begin() const { return _vector.begin(); }
    const_iterator end() const { return _vector.end(); }

    reverse_iterator rbegin() { return _vector.rbegin(); }
    reverse_iterator rend() { return _vector.rend(); }
    const_reverse_iterator rbegin() const { return _vector.rbegin(); }
    const_reverse_iterator rend() const { return _vector.rend(); }

    OPS_Group* back() { return _vector.back(); }
    BOOL empty() { return _vector.empty(); }

    OPS_Group* find_op(OP* op);

    void print(FILE* fp);
    void debug_print(void);
};

class OPS_Group_vector_map {
private:
    struct hash_rgn {
        UINT operator ()(REGIONAL_CFG_NODE* x) const { return (x->Id()); }
    };
    struct equal_rgn {
        BOOL operator ()(const REGIONAL_CFG_NODE* x1, const REGIONAL_CFG_NODE* x2)
            const { return x1->Id()==x2->Id(); }
    };

    typedef mempool_allocator< pair<REGIONAL_CFG_NODE*, OPS_Group_vector*> > OGV_MAP_ALLOC;
    typedef hash_map<REGIONAL_CFG_NODE*, OPS_Group_vector*, hash_rgn, equal_rgn, OGV_MAP_ALLOC> OGV_MAP;
    OGV_MAP _map;
public:
    OPS_Group_vector_map(REGION* rgn);
    ~OPS_Group_vector_map();

    OPS_Group_vector* get_ogv(REGIONAL_CFG_NODE* node) {
        EPS_ASSERT(_map.find(node)!=_map.end(), "there should be node\n");
        return (_map[node]);
    }

//    OPS_Group_vector* add_ogv(REGIONAL_CFG_NODE* node) {
//        return _map[node] = CXX_NEW(OPS_Group_vector(node), EPS::current_eps_mempool());
//    }

    void debug_print(void);
};

#if EPS_DCM
class DAV {
private:
    OP _op;
public:
    DAV(OP* op);
    DAV(DAV& dav);

    OP* op() { return &_op; }

    BOOL is_equal(OP* op);
    BOOL is_equal(DAV* d);
    BOOL is_unifiable(OP* op) { return is_equal(op); }
    BOOL is_dependent_on(OP* op);

    void print(FILE* fp);
    void debug_print(void);
};

class DAV_list {
private:
    typedef mempool_allocator<DAV*> DAV_ALLOC;
    typedef list<DAV*, DAV_ALLOC> DAV_LIST;
    DAV_LIST _davs;
public:
    DAV_list() : _davs(DAV_ALLOC(EPS::current_eps_mempool())) {}
    DAV_list(DAV_list& davs);
    ~DAV_list() { destruct(); }

    void destruct(void);
    BOOL empty(void) { return _davs.empty(); }
    void make_null(void);

    void insert_dav(DAV * av1);

    void merge(DAV_list& list);
    void filter(OP* op);
    void filter_at_BB_bound(REGIONAL_CFG_NODE* node, REGIONAL_CFG_NODE* tonode);

    typedef DAV_LIST::iterator iterator;
    typedef DAV_LIST::const_iterator const_iterator;
    iterator begin() { return _davs.begin(); }
    iterator end() { return _davs.end(); }
    const_iterator begin() const { return _davs.begin(); }
    const_iterator end() const { return _davs.end(); }

    // for debug.
    void debug_print(void);
    void print(FILE* fp);
};

class DownFence {
friend class DFence_list;
private:
    REGIONAL_CFG_NODE* _fence_node;
    OPS_Group* _og;
    OPS_Group_vector* _ogv;
public:
    DownFence(REGIONAL_CFG_NODE* node, OPS_Group* og);

    BOOL find_op(OP* op) { return _og->find_op(op); }
    BOOL empty(void) { return _og==NULL || _og->empty(); }

    OPS_Group* og(void) { return _og; }
    REGIONAL_CFG_NODE* fence_node(void) { return _fence_node; }

    void fill_group(void);
    BOOL advance_fence_in_node(void);
    void force_schedule(void);

    DAV_list* compute_dav_set(REGION* start_rgn, REGIONAL_CFG_NODE* start_node, OPS_Group* start_og, BOOL at_fence, int ws);
    DAV* select_best_av(DAV_list* davs);
};

class DFence_list {
private:
    typedef mempool_allocator<DownFence*> DFENCE_ALLOC;
    typedef list<DownFence*, DFENCE_ALLOC> DFENCE_LIST;
    DFENCE_LIST _fences;
public:
    DFence_list() : _fences(DFENCE_LIST(EPS::current_eps_mempool())) {}
    ~DFence_list() {}

    BOOL empty(void) { return _fences.empty(); }
    void destruct(void);
    DownFence* dfence_in_node(REGIONAL_CFG_NODE* node);
    DownFence* is_dfence(REGIONAL_CFG_NODE* node, OP* op);
    DownFence* is_dfence(REGIONAL_CFG_NODE* node, OPS_Group* og);
    DownFence* add_dfence(REGIONAL_CFG_NODE* node);
//    DownFence* add_dfence(REGIONAL_CFG_NODE* node, OP* op);
    DownFence* add_dfence(REGIONAL_CFG_NODE* node, OPS_Group* og);
    void remove_dfence(DownFence* fence);
};

#endif // EPS_DCM
#endif
