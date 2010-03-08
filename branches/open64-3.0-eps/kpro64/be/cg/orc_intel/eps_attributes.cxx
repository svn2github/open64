#include "eps.h"

AV_attribute::AV_attribute()
{
    _n_spec = 0;
    _n_join = 0;
    _f_shp = 1.0;
    _n_iteration = 0;
    _b_is_local = TRUE;
    _b_is_unified = FALSE;
    _n_cross_region = 0;
    _n_distance = 0;
    _b_substituted = FALSE;
    _b_unifying_substitute = FALSE;
    _b_unifying_conditions = FALSE;
    _b_over_store = FALSE;
    _b_specload = FALSE;
    _pred = NULL;
    _b_taken_path = TRUE;
    _ddg_node = NULL;
    _b_hoist_without_speculation = FALSE;
}

AV_attribute::AV_attribute(AV_attribute& attrib)
{
    _n_spec = attrib._n_spec;
    _n_join = attrib._n_join;
    _f_shp = attrib._f_shp;
    _n_iteration = attrib._n_iteration;
    _b_is_local = attrib._b_is_local;
    _b_is_unified = attrib._b_is_unified;
    _n_cross_region = attrib._n_cross_region;
    _n_distance = attrib._n_distance;

    _dup_joins = attrib._dup_joins;

    join_set::iterator it;
    for(it=attrib._spec_dup_joins.begin(); it!=attrib._spec_dup_joins.end(); it++) {
        _spec_dup_joins.insert((*it));
    }

    _b_substituted = attrib._b_substituted;
    _b_unifying_substitute = attrib._b_unifying_substitute;
    _b_unifying_conditions = attrib._b_unifying_conditions;
    _b_over_store = attrib._b_over_store;
    _b_specload = attrib._b_specload;

    _pred = attrib._pred;
    _b_taken_path = attrib._b_taken_path;

    _ddg_node = attrib._ddg_node;

    product_of_predicates = attrib.product_of_predicates;
    not_live_predicates = attrib.not_live_predicates;
    _b_hoist_without_speculation = attrib._b_hoist_without_speculation;
}

AV_attribute& AV_attribute::operator = (const AV_attribute& attrib)
{
    _n_spec = attrib._n_spec;
    _n_join = attrib._n_join;
    _f_shp = attrib._f_shp;
    _n_iteration = attrib._n_iteration;
    _b_is_local = attrib._b_is_local;
    _b_is_unified = attrib._b_is_unified;
    _n_cross_region = attrib._n_cross_region;
    _n_distance = attrib._n_distance;

    _dup_joins = attrib._dup_joins;

    join_set::iterator it;
    for(it=attrib._spec_dup_joins.begin(); it!=attrib._spec_dup_joins.end(); it++) {
        _spec_dup_joins.insert((*it));
    }

    _b_substituted = attrib._b_substituted;
    _b_unifying_substitute = attrib._b_unifying_substitute;
    _b_unifying_conditions = attrib._b_unifying_conditions;
    _b_over_store = attrib._b_over_store;
    _b_specload = attrib._b_specload;

    _pred = attrib._pred;
    _b_taken_path = attrib._b_taken_path;

    _ddg_node = attrib._ddg_node;

    product_of_predicates = attrib.product_of_predicates;
    not_live_predicates = attrib.not_live_predicates;
    _b_hoist_without_speculation = attrib._b_hoist_without_speculation;

    return *this;
}

void AV_attribute::init(void)
{
    _n_spec = 0;
    _n_join = 0;
    _f_shp = 1.0;
    _n_iteration = 0;
    _b_is_local = TRUE;
    _b_is_unified = FALSE;
    _n_cross_region = 0;
    _n_distance = 0;

    join_set empty_set;
    _dup_joins = empty_set;
    _spec_dup_joins = empty_set;

    _b_substituted = FALSE;
    _b_unifying_substitute = FALSE;
    _b_unifying_conditions = FALSE;
    _b_over_store = FALSE;
    _b_specload = FALSE;

    _pred = NULL;
    _b_taken_path = TRUE;

    _ddg_node = NULL;

    _b_hoist_without_speculation = FALSE;
}

void AV_attribute::merge(AV_attribute* att)
{
#define max(a, b) (a)>(b) ? (a) : (b)
    int spec1 = _n_spec;
    int spec2 = att->_n_spec;
    spec(max(spec1, spec2) - 1);

    int join1 = join();
    int join2 = att->join();
    set_join(join1+join2);

    DDG_Node* node1 = ddg_node();
    DDG_Node* node2 = att->ddg_node();
    double length1, length2;
    if(node1) length1 = node1->Length();
    else length1 = 0.0; 
    if(node2) length2 = node2->Length();
    else length2 = 0.0;
    set_ddg_node(length1>length2?node1:node2);

    add_shp(att->shp());

    if(!(is_local() && att->is_local())) set_global();
    set_unified();

    if(substitute() || att->substitute() || att->unifying_substitute()) set_unifying_substitute();
    if(unifying_conditions() || att->unifying_conditions()) set_unifying_conditions();

    if(att->cross_region()>cross_region()) {
        set_cross_region(att->cross_region());
    }

    // 2006.12.11 
    if(att->distance()<distance()) {
        set_distance(att->distance());
    }
//    if(att->distance()>distance()) {
//        set_distance(att->distance());
//    }

    if(over_store() || att->over_store()) {
        set_over_store();
    }
    if(specload() || att->specload()) {
        set_specload();
    }

    EPS* eps = EPS::current_eps_driver();
    eps->get_join_info()->merge_join_set(_dup_joins, att->_dup_joins);
//    {
//        void debug_print_join_set(join_set* set);
//        fprintf(stderr, "merged:");
//        debug_print_join_set(&_dup_joins);
//    }
    eps->get_join_info()->merge_join_set(_spec_dup_joins, att->_spec_dup_joins);

    if(_pred!=att->_pred || _b_taken_path!=att->_b_taken_path) {
        _pred = NULL;
        _b_taken_path = TRUE;
    }

    EPS_ASSERT(spec()>=0, "Spec is negative!!");
}

void AV_attribute::add_dup_joins(BB* bb, BB* bk)
{
    _dup_joins.insert(pair<BB*,BB*>(bb, bk));
}

void AV_attribute::add_spec_dup_joins(BB* bb, BB* bk)
{
    _spec_dup_joins.insert(pair<BB*,BB*>(bb, bk));
}

int AV_attribute::join(void)
{
    return _dup_joins.size();
}

int AV_attribute::spec_join(void)
{
    return _spec_dup_joins.size();
}

join_set& AV_attribute::get_joins(void)
{
    return _dup_joins;
}

void AV_attribute::print(FILE* fp)
{
    if(_b_specload) fprintf(fp, "spld=%d, join=%d, shp=%f, iter=%d, dist=%d, ddg=%f", spec(), join(), shp(), iteration(), distance(), ddg_node()==NULL?0.0:ddg_node()->Length());
    else fprintf(fp, "spec=%d, join=%d, shp=%f, iter=%d, dist=%d, ddg=%f, rp=%d", spec(), join(), shp(), iteration(), distance(), ddg_node()==NULL?0.0:ddg_node()->Length(), get_int_pressure());
    fprintf(fp, "%s%s", is_local()?" local":" global", is_unified()?" unified":"");
    fprintf(fp, "%s", cross_region()>0?" cross_region":"");
    fprintf(fp, "%s", over_store()?" over_store":"");
    fprintf(fp, "%s", substitute()?" substituted":"");
    fprintf(fp, "%s", unifying_substitute()?" unifying_substitute":"");
    fprintf(fp, "%s", unifying_conditions()?" unifying_conditions":"");

    if(product_of_predicates.size()>0) {
        fprintf(fp, "\nproduct:{");
        reg_tn_map::iterator it;
        for(it=product_of_predicates.begin(); it!=product_of_predicates.end(); it++) {
            fprintf(fp, "%d,", (it->first));
        }
        fprintf(fp, "}\n");
    }

    fprintf(fp, "\n");

    if(_pred!=NULL) {
        char tn_buf[32];
        eps_print_TN(_pred, NULL, tn_buf, 0, 0);
        fprintf(fp, "pred: %s\n", tn_buf);
    }

    if(_dup_joins.size()>0) {
        join_set::iterator it;
        fprintf(fp, "        dup joins: ");
        for(it=_dup_joins.begin(); it!=_dup_joins.end(); it++) {
            fprintf(fp, "%d,%d ", BB_id((*it).first), BB_id((*it).second));
        }
        fprintf(fp, "\n");
    }
    if(_spec_dup_joins.size()>0) {
        join_set::iterator it;
        fprintf(fp, "        spec dup joins: ");
        for(it=_spec_dup_joins.begin(); it!=_spec_dup_joins.end(); it++) {
            fprintf(fp, "%d,%d ", BB_id((*it).first), BB_id((*it).second));
        }
        fprintf(fp, "\n");
    }
}

Node_attribute::Node_attribute(REGIONAL_CFG_NODE* node) {
    _node = node;
    _avs_at_header = NULL;
    _visited = FALSE;
    _scheduled = FALSE;
    _ready = FALSE;
#if EPS_DCM
    _down_scheduled = FALSE;
#endif
    _dfn = -1;
    _valid_eps_level = 0;

    _cycle = 0;
    _insts = 0;
    _weight = 0.0;
}

Node_attribute::~Node_attribute()
{
    if(_avs_at_header!=NULL) {
        CXX_DELETE(_avs_at_header, EPS::current_eps_mempool());
    }
}

AV_list* Node_attribute::get_avs_at_header()
{
    if(_valid_eps_level!=EPS::level()) {
        if(_avs_at_header!=NULL) {
            CXX_DELETE(_avs_at_header, EPS::current_eps_mempool());
        }
        _avs_at_header = NULL;
        _valid_eps_level = 0;
    }

    return _avs_at_header;
}

AV_list* Node_attribute::set_avs_at_header(AV_list* avs)
{
    _avs_at_header = avs;
    _valid_eps_level = EPS::level();
    return avs;
}

Node_attr_map::Node_attr_map(REGION* rgn):_map(10, hash_rgn(), equal_rgn(), NODE_ATTR_ALLOC(EPS::current_eps_mempool()))
{
    NODE_VECTOR nodes = rgn->Regional_Cfg()->Node_Set();
    for(NODE_VECTOR_ITER it=nodes.begin(); it!=nodes.end(); it++) {
        REGIONAL_CFG_NODE* node = *it;
        _map[node] = CXX_NEW(Node_attribute(node), EPS::current_eps_mempool());
    }
}

Node_attr_map::~Node_attr_map()
{
    for(NODE_ATTR_MAP::iterator iter=_map.begin(); iter!=_map.end(); iter++) {
//        CXX_DELETE((*iter).second, EPS::current_eps_mempool());
        CXX_DELETE((*iter).second, EPS::current_eps_mempool());
    }
}

Region_attribute::Region_attribute()
{
    _def_set = TN_SET_Create_Empty(128, EPS::current_eps_mempool());
    _use_set = TN_SET_Create_Empty(128, EPS::current_eps_mempool());

    _contain_st = FALSE;
    _contain_call = FALSE;
    _cicm = TRUE;
    _cross = TRUE;
    _eps = TRUE;
}

void Region_attribute::pre_calculate_region_attribute(REGION *rgn)
{
    REGIONAL_CFG* rgn_cfg = rgn->Regional_Cfg();
    EPS* eps = EPS::current_eps_driver();
    int inner_loops = 0;
    for(SEQ_REGIONAL_CFG_ITER it(rgn_cfg); it!=0; ++it) {
        REGIONAL_CFG_NODE* cfg_node = *it;
        if(cfg_node->Is_Region()) {
            Region_attribute* attr = eps->get_region_attrib(cfg_node->Region_Node());
            _contain_st |= attr->contain_st();
            _contain_call |= attr->contain_call();
            _cross &= attr->cross();
            inner_loops++;
        } else {
            OP* op;
            FOR_ALL_BB_OPs(cfg_node->BB_Node(), op) {
                if(OP_store(op)) {
                    _contain_st = TRUE;
                }
                if(OP_call(op)) {
                    _contain_call = TRUE;
                }
            }
        }
        if(cfg_node->Succ_Num() >5) { _cross = FALSE; }
    }
//    if(_contain_call) _cross = FALSE;
    if(inner_loops>5) _cross = FALSE;
//    if(inner_loops>5) _eps = FALSE;
}

void Region_attribute::calculate_region_attribute(REGION *rgn)
{
    REGIONAL_CFG* rgn_cfg = rgn->Regional_Cfg();
    EPS* eps = EPS::current_eps_driver();
    int inner_loops = 0;
    for(SEQ_REGIONAL_CFG_ITER it(rgn_cfg); it!=0; ++it) {
        REGIONAL_CFG_NODE* cfg_node = *it;
        if(cfg_node->Is_Region()) {
            Region_attribute* attr = eps->get_region_attrib(cfg_node->Region_Node());
            _def_set = TN_SET_UnionD(_def_set, attr->get_def_set(), EPS::current_eps_mempool());
            _use_set = TN_SET_UnionD(_use_set, attr->get_use_set(), EPS::current_eps_mempool());
            _contain_st |= attr->contain_st();
            _contain_call |= attr->contain_call();
            _cross &= attr->cross();
            inner_loops++;
        } else {
            OP* op;
            FOR_ALL_BB_OPs(cfg_node->BB_Node(), op) {
                for(int i=0; i<OP_results(op); i++) {
                    _def_set = TN_SET_Union1D(_def_set, OP_result(op, i), EPS::current_eps_mempool());
                }
                for(int i=0; i<OP_opnds(op); i++) {
                    if(TN_is_register(OP_opnd(op, i))) {
                        _use_set = TN_SET_Union1D(_use_set, OP_opnd(op, i), EPS::current_eps_mempool());
                    }
                }

                if(OP_store(op)) {
                    _contain_st = TRUE;
                }
                if(OP_call(op)) {
                    _contain_call = TRUE;
                }
            }
        }
        if(cfg_node->Succ_Num() >5) { _cross = FALSE; }
    }
//    if(_contain_call) _cross = FALSE;
    if(inner_loops>5) _cross = FALSE;
}

void AV_attribute::create_reg_pressure(reg_tn_set& lives, OP* op)
{
    int i;
    for(i=0; i<OP_opnds(op); i++) {
        TN* use = OP_opnd(op,i);
        if(TN_is_register(use) && (!TN_is_const_reg(use))) {
            _last_uses.insert(use);
        }
    }
    for(i=0; i<OP_results(op); i++) {
        TN* def = OP_result(op,i);
        if(TN_is_register(def) && (!TN_is_const_reg(def))) {
            lives.erase(def);
            _defs.insert(def);
        }
    }

    reg_tn_set::iterator it;
    for(it=lives.begin(); it!=lives.end(); it++) {
        TN* live = *it;
        _last_uses.erase(live);
    }
}

void AV_attribute::update_reg_pressure(OP* op)
{
    int i;
    for(i=0; i<OP_opnds(op); i++) {
        TN* use = OP_opnd(op,i);
        if(TN_is_register(use) && (!TN_is_const_reg(use))) {
            _last_uses.erase(use);
        }
    }
}

void AV_attribute::calculate_reg_pressure(void)
{
    reg_tn_set::iterator it;
    int_pressure = 0;
    float_pressure = 0;

    for(it=_defs.begin(); it!=_defs.end(); it++) {
        TN* tn = *it;
        if(TN_is_register(tn) && (!TN_is_const_reg(tn))) {
            if(!TN_is_float(tn)) {
                int_pressure ++;
            } else {
                float_pressure ++;
            }
        }
    }
    for(it=_last_uses.begin(); it!=_last_uses.end(); it++) {
        TN* tn = *it;
        if(TN_is_register(tn) && (!TN_is_const_reg(tn))) {
            if(!TN_is_float(tn)) {
                int_pressure --;
            } else {
                float_pressure --;
            }
        }
    }
}

