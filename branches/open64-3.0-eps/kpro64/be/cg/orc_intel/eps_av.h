#ifndef _EPS_AV_
#define _EPS_AV_

class RHS;
class AV;
class RHS_set;
class AV_list;
class AV_attribute;

class RHS {
friend class RHS_set;
protected:
    OP _op;

public:
    RHS(OP* op);
    RHS(RHS& rhs);
    ~RHS();

    OP* op() { return &_op; }

    BOOL is_equal (OP* op);
    BOOL is_equal (RHS* r);
    BOOL is_dependent_on(OP* op);
    BOOL is_dependent_on(Region_attribute* rgn_attrib);
    BOOL forward_substitution(OP* mov_op);
    BOOL undo_forward_substitution(RHS_set* rs, OP* mov_op);

    // for debug.
    void print(FILE* fp);
};

class AV : public RHS {
friend class AV_list;
private:
    AV_attribute _attrib;    
public:
    AV(OP* op);
    AV(AV& av);
    ~AV();

    BOOL is_unifiable(OP* op);

    AV_attribute* attrib() { return &_attrib; }

    BOOL is_dependent_on(OP* op);
    BOOL is_dependent_on(Region_attribute* rgn_attrib);

    void merge(AV& av1);
    void merge_at_split(AV& av1);

    static bool compare_SHP(AV* av1, AV* av2);
    static bool compare_DOS(AV* av1, AV* av2);
    static bool compare_DOS_DDG(AV* av1, AV* av2);
    static bool compare_DDG_DOS(AV* av1, AV* av2);
    static bool compare_DDG_by_DOS(AV* av1, AV* av2);

    static bool mem_dep(OP* pred_op, OP* succ_op, BOOL *definite);

    // for debug
    void debug_print(void);
    void print(FILE* fp);
};

class RHS_set {
private:
    typedef mempool_allocator<RHS*> RHS_ALLOC;
    typedef std::list<RHS*, RHS_ALLOC> RHS_SET;
    RHS_SET _rhs;
public:
    RHS_set() : _rhs(RHS_ALLOC(EPS::current_eps_mempool())) { }
    RHS_set(RHS_set& rhs);
    ~RHS_set() { destruct(); }

    void destruct(void);

    BOOL empty() { return _rhs.empty(); }
    BOOL has_same_rhs(OP* op);

    void make_null() { _rhs.erase(_rhs.begin(), _rhs.end()); }
    void intersect(AV_list* avs);
    void intersect(RHS_set* rhs);
    void merge(RHS_set* rhs);
    void insert(OP* op);
    BOOL forward_substitution(OP* op);
    BOOL undo_forward_substitution(OP* op);
    void kill(OP* op);
    void kill(REGION* rgn);

    typedef RHS_SET::iterator iterator;
    typedef RHS_SET::const_iterator const_iterator;
    iterator begin() { return _rhs.begin(); }
    iterator end() { return _rhs.end(); }
    const_iterator begin() const { return _rhs.begin(); }
    const_iterator end() const { return _rhs.end(); }

    RHS* single_rhs(void);

    // for debug.
    void print(FILE* fp);
};

class AV_list {
private:
    typedef mempool_allocator<AV*> AV_ALLOC;
    typedef std::list<AV*, AV_ALLOC> AV_LIST;
    AV_LIST _avs;
public:
    AV_list() : _avs (AV_ALLOC(EPS::current_eps_mempool())) { }
    AV_list(AV_list& avs);
    ~AV_list() { destruct(); }

    void destruct(void);

    BOOL empty(void) { return _avs.empty(); }
    void make_null(void);

    void update_av_attribute(int num_succs, int num_preds, REGIONAL_CFG_EDGE* edge);
    void merge_av_set(AV_list& list1, int num_succs);
    BOOL insert_av(reg_tn_set& lives, AV * av1); // return FALSE if av1 is unified with other av, TRUE otherwise
    BOOL has_same_rhs(OP* op);
    BOOL has_same_rhs(RHS_set* rhs);

    // 2006.11.15
    void remove(RHS_set* rhs);
    void remove(OP* op);

    void filter(reg_tn_set& lives, OP* op);
    void filter_by_region(REGIONAL_CFG_NODE* rgn_node);
    void filter_branch(void);
    void filter_by_issue_cycle(EPS_SIM_STATE* sim_state);
    void filter_by_issue_cycle_at_bb_bottom(EPS_SIM_STATE* sim_state, OP* br);
    void filter_by_heuristics(int int_reg_pressure, int float_reg_pressure);
    void filter_global(void);

	void filter_by_hot_load(void);
    
    void update_reg_pressure(OP* op);
    void calculate_reg_pressure(void);

    void add_predicate(TN* pred, BOOL taken);

    void inc_distance(void);

    // 2009.04
    void apply_resolved_control_dependent_predicate_map(void);

    typedef AV_LIST::iterator iterator;
    typedef AV_LIST::const_iterator const_iterator;
    iterator begin() { return _avs.begin(); }
    iterator end() { return _avs.end(); }
    const_iterator begin() const { return _avs.begin(); }
    const_iterator end() const { return _avs.end(); }

    // for debug.
    void debug_print(void);
    void print(FILE* fp);
};

#endif // _EPS_AV_

