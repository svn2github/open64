#ifndef _EPS_ATTRIBUTES_H_
#define _EPS_ATTRIBUTES_H_

class DDG_Node;

struct ltTNid
{
    bool operator()(const TN* tn1, const TN* tn2) const
    {
        EPS_ASSERT(TN_is_register(tn1), "tn1 is not reg tn\n");
        EPS_ASSERT(TN_is_register(tn2), "tn2 is not reg tn\n");

        return TN_number(tn1) < TN_number(tn2);
    }
};

typedef std::set<TN*, ltTNid> reg_tn_set;
typedef std::map<int, TN*> reg_tn_map;

class AV_attribute {
friend class AV;
private:
    int _n_spec;    // degree of speculativeness.
    int _n_join;    // number of join points.
    float _f_shp;   // speculative hit probability.

    join_set _dup_joins;
    join_set _spec_dup_joins;

    int int_pressure;
    int float_pressure;
    reg_tn_set _defs;
    reg_tn_set _last_uses;

    int _n_iteration;   // number of iterations.
    BOOL _b_is_local;   // whether this av come from the same bb.
    BOOL _b_is_unified;
    int _n_cross_region;
    int _n_distance;
    BOOL _b_substituted;
    BOOL _b_unifying_substitute;
    BOOL _b_over_store;
    BOOL _b_specload;

    BOOL _b_unifying_conditions;

    TN* _pred;
    BOOL _b_taken_path;

    DDG_Node* _ddg_node;

public:
    AV_attribute();
    AV_attribute(AV_attribute& attrib); // copy constructor
    AV_attribute& operator = (const AV_attribute& attrib);

    void init(void);

    void inc_join(int a=1) { _n_join += a; }
    void dec_join(void) { _n_join--; }
    void set_join(int a) { _n_join = a>=0?a:0; }
    //int  join(void) { return _n_join; }
    int  join(void);
    int  spec_join(void);
    join_set& get_joins(void);

    void inc_spec(int a=1) { _n_spec += a; }
    void dec_spec(void) { _n_spec--; }
    void spec(int a) { _n_spec = a>=0?a:0; }
//    int  spec(void) { return _n_spec>=_n_iteration?(_n_spec-_n_iteration):_n_spec; }
    int  spec(void) {
        if(!_b_hoist_without_speculation) {
            int dec = _pred==NULL?0:1;
            int ret = _n_spec-dec;
            return ret>=0?ret:0;
        }
        return 0;
//        return _n_spec;
    }

    void add_shp(float shp) { _f_shp += shp; }
    void mult_shp(float shp) { _f_shp *= shp; }
    void shp(float f) { _f_shp = f; }
    float shp(void) { return _f_shp; }

    void inc_iteration(void) { _n_iteration++; }
    int iteration(void) { return _n_iteration; }

    void set_global(void) { _b_is_local = FALSE; }
    BOOL is_local(void) { return _b_is_local; }

    void set_unified(void) { _b_is_unified = TRUE; }
    BOOL is_unified(void) { return _b_is_unified; }

    void set_cross_region(void) { _n_cross_region++; }
    void set_cross_region(int n) { _n_cross_region=n; }
    int cross_region(void) { return _n_cross_region; }

    void inc_distance(int d=1) { _n_distance+=d; }
    void set_distance(int d) { _n_distance = d; }
    int distance(void) { return _n_distance; }

    void merge(AV_attribute* att);

    void add_dup_joins(BB* bb, BB* bk);
    void add_spec_dup_joins(BB* bb, BB* bk);

    TN* pred(void) { return _b_taken_path==TRUE?_pred:NULL; }
    BOOL pred_taken(void) { return _b_taken_path; }
    void set_pred(TN* pred, BOOL taken) { _pred = pred; _b_taken_path = taken; }
//    void set_pred(TN* pred, BOOL taken) { }

    DDG_Node* ddg_node(void) { return _ddg_node; }
    void set_ddg_node(DDG_Node* node) { _ddg_node = node; }

    BOOL substitute(void) { return _b_substituted; }
    void set_substitute(void) { _b_substituted = TRUE; }

    BOOL unifying_substitute(void) { return _b_unifying_substitute; }
    void set_unifying_substitute(void) { _b_unifying_substitute = TRUE; }

    BOOL unifying_conditions(void) { return _b_unifying_conditions; }
    void set_unifying_conditions(void) { _b_unifying_conditions = TRUE; }

    BOOL over_store(void) { return _b_over_store; }
    void set_over_store(void) { _b_over_store = TRUE; }

    BOOL specload(void) { return _b_specload; }
    void set_specload(void) { _b_specload = TRUE; }

    int get_int_pressure(void) { return int_pressure; }
    int get_float_pressure(void) { return float_pressure; }
    void create_reg_pressure(reg_tn_set& lives, OP* op);
    void update_reg_pressure(OP* op);
    void calculate_reg_pressure(void);

    void print(FILE* fp);

public:
    reg_tn_map product_of_predicates;  // 2009.04
    reg_tn_map not_live_predicates;     // 2009.04
    bool _b_hoist_without_speculation;
};

class Node_attribute {
private:
    REGIONAL_CFG_NODE* _node;
    AV_list* _avs_at_header;
    BOOL _visited;
    BOOL _scheduled;
    BOOL _ready;
    BOOL _compensated;
#if EPS_DCM
    BOOL _down_scheduled;
#endif
    int _dfn;
    int _valid_eps_level;

    int _cycle;
    int _insts;
    double _weight;

public:
    Node_attribute(REGIONAL_CFG_NODE* node);
    ~Node_attribute();

    AV_list* get_avs_at_header(void);
    AV_list* set_avs_at_header(AV_list* avs);

    BOOL is_visited(void) { return _visited; }
    void set_visited(BOOL b) { _visited = b; }

    BOOL is_scheduled(void) { return _scheduled; }
    void set_scheduled(BOOL b) { _scheduled = b; }

    BOOL is_ready(void) { return _ready; }
    void set_ready(BOOL b) { _ready = b; }

    BOOL is_compensated(void) { return _compensated; }
    void set_compensated(BOOL b) { _compensated = b; }

#if EPS_DCM
    BOOL is_dscheduled(void) { return _down_scheduled; }
    void set_dscheduled(BOOL b) { _down_scheduled = b; }
#endif

    int dfn(void) { return _dfn; }
    void dfn(int n) { _dfn = n; }

    int cycle(void) { return _cycle; }
    void cycle(int c) { _cycle = c; }
    int insts(void) { return _insts; }
    void insts(int i) { _insts = i;; }
    double weight(void) { return _weight; }
    void weight(double d) { _weight = d; }
};

class Node_attr_map {
private:
    struct hash_rgn {
        UINT operator ()(REGIONAL_CFG_NODE* x) const { return (x->Id()); }
    };
    struct equal_rgn {
        BOOL operator ()(const REGIONAL_CFG_NODE* x1, const REGIONAL_CFG_NODE* x2)
            const { return x1->Id()==x2->Id(); }
    };

    typedef mempool_allocator< pair<REGIONAL_CFG_NODE*, Node_attribute*> > NODE_ATTR_ALLOC;
    typedef __gnu_cxx::hash_map<REGIONAL_CFG_NODE*, Node_attribute*, hash_rgn, equal_rgn, NODE_ATTR_ALLOC> NODE_ATTR_MAP;
    NODE_ATTR_MAP _map;
public:
    Node_attr_map(REGION* rgn);
    ~Node_attr_map();

    Node_attribute* get_attrib(REGIONAL_CFG_NODE* node) {
        return (_map[node]);
    }

    Node_attribute* add_attrib(REGIONAL_CFG_NODE* node) {
        return _map[node] = CXX_NEW(Node_attribute(node), EPS::current_eps_mempool());
    }
};

class Region_attribute {
private:
    TN_SET* _def_set;
    TN_SET* _use_set;
    BOOL _contain_st;
    BOOL _contain_call;

    BOOL _cicm;
    BOOL _cross;

    BOOL _eps;
public:
    Region_attribute(void);
    ~Region_attribute() { }

    TN_SET* get_def_set(void) { return _def_set; }
    TN_SET* get_use_set(void) { return _use_set; }
    BOOL contain_st(void) { return _contain_st; }
    BOOL contain_call(void) { return _contain_call; }

    BOOL cicm_allowed(void) { return _cicm; }
    void cicm_disallow(void) { _cicm = FALSE; }

    BOOL cross(void) { return _cross; }
    BOOL eps(void) { return _eps; }

    void pre_calculate_region_attribute(REGION *rgn);
    void calculate_region_attribute(REGION *rgn);
};

#endif // _EPS_ATTRIBUTES_H_
