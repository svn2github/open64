#include "eps.h"
#include "bbregs.h"
#include "gra_live.h"

BOOL OPS_Group::try_add_at_head(OP* head_op)
{
    EPS_SIM_STATE sim;
    sim.Issue_OP(head_op, TRUE);

    iterator it;
    for(it=begin(); it!=end(); it++) {
        OP* op = *it;
        if(!sim.Issue_OP(op, TRUE)) {
            return FALSE;
        }
    }
    return TRUE;
} 

BOOL OPS_Group::add_at_head(OP* head_op)
{
    _ops_group.insert(_ops_group.begin(), 1, head_op);
    return TRUE;
}

BOOL OPS_Group::try_add(OP* op)
{
    return _sim_state.Issue_OP(op, FALSE);
}

BOOL OPS_Group::try_add_ops(OPS_GROUP* ops)
{
    EPS_SIM_STATE sim;
    iterator it;
    OP* br = NULL;
    for(it=begin(); it!=end(); it++) {
        OP* op = *it;
        if(OP_br(op)) {
            br = op;
            EPS_ASSERT(++it == end(), "br should be at the last of group.\n");
            break;
        }
        BOOL result = sim.Issue_OP(op, TRUE);
        EPS_ASSERT(result, "Something wrong in grouping\n");
    }

    OPS_GROUP::iterator opit;
    for(opit=ops->begin(); opit!=ops->end(); opit++) {
        OP* op2 = *opit;
        if(!sim.Issue_OP(op2, TRUE)) return FALSE;
    }
    if(br!=NULL && !sim.Issue_OP(br, TRUE)) return FALSE;

    return TRUE;
}

BOOL OPS_Group::add(OP* op)
{
    _sim_state.Issue_OP(op, TRUE);
    _ops_group.push_back(op);
    return TRUE;
}

BOOL OPS_Group::find_op(OP* op)
{
    iterator it;
    for(it=begin(); it!=end(); it++) {
        if(op==(*it)) {
            return TRUE;
        }
    }
    return FALSE;
}

BOOL OPS_Group::contain_ineligible(void)
{
    iterator it;
    for(it=begin(); it!=end(); it++) {
        OP* op = (*it);
        if(OP_call(op)) return TRUE;
        for(int i=0; i<OP_results(op); i++) {
            if(TN_is_save_reg(OP_result(op, i))) return TRUE;
        }
        if(OP_code(op)==TOP_spadjust) return TRUE;
        for(int i=0; i<OP_results(op); i++) {
            TN *tn = OP_result(op, i);
            if(TN_is_register(tn) && TN_number(tn)==13) return TRUE; // r13 is stack pointer
        }
    }
    return FALSE;
}

void OPS_Group::print(FILE* fp)
{
    iterator it;
    for(it=begin(); it!=end(); it++) {
        OP* op = *it;
        eps_print_asm(fp, op, NULL);
    }
}

void OPS_Group::debug_print(void)
{
    print(stderr);
}

void OPS_Group_vector::construct(BB* bb)
{
    OP* op;
    OPS_Group* group = NULL;
    iterator i;

    for(i=_vector.begin(); i!=_vector.end(); i++) {
        OPS_Group* g = *i;
        CXX_DELETE(g, EPS::current_eps_mempool());
        *i = NULL;
    }
    _vector.erase(_vector.begin(), _vector.end());

    this->_bb = bb;
    FOR_ALL_BB_OPs(bb, op) {
        if(!group) {
            group = CXX_NEW(OPS_Group(), EPS::current_eps_mempool());
            _vector.push_back(group);
        }
        if(!group->try_add(op)) {
            group = CXX_NEW(OPS_Group(), EPS::current_eps_mempool());
            _vector.push_back(group);
        }
        group->add(op);
    }
}

OPS_Group* OPS_Group_vector::find_op(OP* op)
{
    OPS_GROUP_VECTOR::iterator it;
    for(it=_vector.begin(); it!=_vector.end(); it++) {
        OPS_Group* og = *it;
        if(og->find_op(op)) return og;
    }
    return NULL;
}

void OPS_Group_vector::print(FILE* fp)
{
    OPS_GROUP_VECTOR::iterator it;
    if(_bb==NULL) return;
    fprintf(stderr, "BB_id:%d\n", BB_id(_bb));
    for(it=_vector.begin(); it!=_vector.end(); it++) {
        OPS_Group* og = *it;
        og->debug_print();
        fprintf(stderr, "=========================\n");
    }
}

void OPS_Group_vector::debug_print(void)
{
    print(stderr);
}

OPS_Group_vector_map::OPS_Group_vector_map(REGION* rgn)
{
    NODE_VECTOR nodes = rgn->Regional_Cfg()->Node_Set();
    for(NODE_VECTOR_ITER it=nodes.begin(); it!=nodes.end(); it++) {
        REGIONAL_CFG_NODE* node = *it;
        _map[node] = CXX_NEW(OPS_Group_vector(node), EPS::current_eps_mempool());
    }
}

OPS_Group_vector_map::~OPS_Group_vector_map()
{
    for(OGV_MAP::iterator it=_map.begin(); it!=_map.end(); it++) {
        CXX_DELETE((*it).second, EPS::current_eps_mempool());
    }
}

void OPS_Group_vector_map::debug_print(void)
{
    OGV_MAP::iterator it;
    fprintf(stderr, "OGV map\n");
    for(it=_map.begin(); it!=_map.end(); it++) {
        OPS_Group_vector* ogv = (*it).second;
        ogv->debug_print();
    }
}

#if EPS_DCM
DAV::DAV(OP* op)
{
    memcpy(&_op, op, OP_sizeof(OP_results(op), OP_opnds(op)));
    _op.next = _op.prev = NULL;
    _op.bb = NULL;
}

DAV::DAV(DAV& dav)
{
    memcpy(&_op, &dav._op, OP_sizeof(OP_results(&dav._op), OP_opnds(&dav._op)));
    _op.next = _op.prev = NULL;
    _op.bb = NULL;
}

BOOL DAV::is_equal(OP* op)
{
    OP* op1 = &(this->_op);
    OP* op2 = op;
    if(OP_code(op1)!=OP_code(op2)) return FALSE;
    if(OP_opnds(op1)!=OP_opnds(op2)) return FALSE;
    if(OP_results(op1) != OP_results(op2)) return FALSE;

    for(int i=0; i<OP_opnds(op1); i++) {
        TN* opnd1 = OP_opnd(op1, i);
        TN* opnd2 = OP_opnd(op2, i);

        if(TN_is_register(opnd1) && TN_is_register(opnd2)) {
            if(!TNs_Are_Equivalent(opnd1, opnd2)) return FALSE;
        }
        if(TN_is_register(opnd1) && TN_is_constant(opnd2)) return FALSE;
        if(TN_is_constant(opnd2) && TN_is_register(opnd1)) return FALSE;
        if(TN_is_constant(opnd1) && TN_is_constant(opnd2)) {
            if(TN_has_value(opnd1) && TN_has_value(opnd2)) {
                if(TN_value(opnd1)==TN_value(opnd2)) continue;
            }
            if( (TN_is_enum(opnd1) && TN_is_enum(opnd2)) ||
                (TN_is_label(opnd1) && TN_is_label(opnd2)) ||
                (TN_is_tag(opnd1) && TN_is_tag(opnd2)) ) {
                if(TN_var(opnd1)==TN_var(opnd2)) continue;
            }
            if(TN_is_symbol(opnd1) && TN_is_symbol(opnd2)) {
                if(TN_var(opnd1)==TN_var(opnd2) &&
                   TN_offset(opnd1)==TN_offset(opnd2)) continue;
            }
            return FALSE;
        }
    }

    return TRUE;
}

BOOL DAV::is_equal(DAV* r)
{
    return is_equal(&r->_op);
}

BOOL DAV::is_dependent_on(OP* op)
{
    int i, j;
    OP* avop = &(this->_op);

    // At first, check register dependencies.
    for(i=0; i<OP_results(avop); i++) {
        TN* avopnd = OP_result(avop, i);

        if(OP_Defs_TN(op, avopnd)) return TRUE; // output depedent.
        if(OP_Refs_TN(op, avopnd)) return TRUE; // true depedent.
    }
    for(i=0; i<OP_opnds(avop); i++) {
        TN* avopnd = OP_opnd(avop, i);

        if(OP_Defs_TN(op, avopnd)) return TRUE; // anti depedent.
    }

    // Second, check memory dependencies.
    if(OP_store(op) && (OP_store(avop) || OP_load(avop))) {
        return TRUE;
    }
    if(OP_load(op) && OP_store(avop)) {
        return TRUE;
    }

    // I hate this stuff...-_-;;;
    // But I cannot help doing this now...
    // Isn't there any way to avoid this?
    OP op1, op2;
    memcpy(&op1, op, sizeof(op1));
    memcpy(&op2, avop, sizeof(op2));
    // Third, misc dependencies.
    if(CGTARG_Dependence_Required(&op2, &op1)) {
        return TRUE;
    }

    return FALSE;
}

void DAV::print(FILE* fp)
{
    if(fp==NULL) fp = stderr;
    eps_print_asm(fp, &_op, NULL);
}

void DAV::debug_print(void)
{
    this->print(stderr);
}

DAV_list::DAV_list(DAV_list& davs)
{
    for (iterator i=davs.begin(); i!=davs.end(); i++) {
        _davs.push_back(CXX_NEW(DAV(**i), EPS::current_eps_mempool()));
    }
}

void DAV_list::destruct(void)
{
    for (iterator i=begin(); i!=end(); i++) {
        CXX_DELETE(*i, EPS::current_eps_mempool());
    }
}

void DAV_list::make_null(void)
{
    for(iterator i=begin(); i!=end(); i++) {
        CXX_DELETE(*i, EPS::current_eps_mempool());
        _davs.erase(i);
    }
}

void DAV_list::insert_dav(DAV* av1)
{
    if(!av1) return;

    DAV_LIST::iterator i;
    for(i=begin(); i!=end(); i++) {
        DAV* av = *i;
        if(av->is_unifiable(av1->op())) {
            CXX_DELETE(av, EPS::current_eps_mempool());
            _davs.erase(i);

            _davs.push_front(av1);
            return;
        }
    }
    _davs.push_front(av1);
    return;
}

void DAV_list::merge(DAV_list& list)
{
    // DAV should come from every predecessors.
    // this is not actually "merging", but "filtering"
    DAV_LIST::iterator i;
    DAV_LIST::iterator j;

    for(i=_davs.begin(); i!=_davs.end(); i++) {
        BOOL merged = FALSE;
        for(j=list._davs.begin(); j!=list._davs.end(); j++) {
            DAV* av1 = *i;
            DAV* av2 = *j;

            if(av1->is_unifiable(av2->op())) {
                merged = TRUE;
            }
        }
        if(!merged) {
            CXX_DELETE(*i, EPS::current_eps_mempool());
            _davs.erase(i);
        }
    }
}

void DAV_list::filter(OP* op)
{
    for(iterator i=begin(); i!=end(); i++) {
        if((*i)->is_dependent_on(op)) {
            CXX_DELETE(*i, EPS::current_eps_mempool());
            _davs.erase(i);
        }
    }
}

void DAV_list::filter_at_BB_bound(REGIONAL_CFG_NODE* node, REGIONAL_CFG_NODE* tonode)
{
    list<BB*> bbs;
    if(node->Is_Region()) {
        EPS::add_exit_targets(node->Region_Node(), &bbs);
    } else {
        bblist* succs;
        FOR_ALL_BB_SUCCS(node->BB_Node(), succs) {
            bbs.push_back(BBLIST_item(succs));
        }
    }

    PostDominator* pd = EPS::current_eps_driver()->get_pd();
    for(list<BB*>::iterator it=bbs.begin(); it!=bbs.end(); it++) {
        BB* succ = *it;
        if(!pd->inspect(succ, tonode->BB_Node())) {
            // tonode doesn't postdominates succ
            for(DAV_list::iterator dit=_davs.begin(); dit!=_davs.end(); dit++) {
                TN* x;
                DAV* dav = *dit;
                FOR_ALL_GTN_SET_members(BB_live_in(succ), x) {
                    if(OP_Defs_TN(dav->op(), x)) {
                        CXX_DELETE(dav, EPS::current_eps_mempool());
                        _davs.erase(dit);
                        break;
                    }
                }
            }
        }
    }
}

void DAV_list::print(FILE* fp)
{
    iterator i;
    for(i=begin(); i!=end(); i++) {
        DAV* av = *i;
        av->print(fp);
    }
}

void DAV_list::debug_print(void)
{
    print(stderr);
}

DownFence::DownFence(REGIONAL_CFG_NODE* node, OPS_Group* og)
{
    _fence_node = node;
    _og = og;
    _ogv = EPS::current_eps_driver()->get_ogv(node);
}

void DownFence::fill_group(void)
{
    DAV_list* davs;

    if(empty() || og()->is_full()) return;

    while(1) {
        davs = compute_dav_set(_fence_node->Home_Region(), _fence_node, og(), TRUE, 0);
        if(EPSDBG(1)) {
            fprintf(EPSLOG, "Down AV set at fence : ");
            eps_print_asm(EPSLOG, (*og()->begin()), NULL);
            davs->print(EPSLOG);
        }

        break;
    }
}

BOOL DownFence::advance_fence_in_node(void)
{
    OPS_Group_vector::reverse_iterator i;
    for(i=_ogv->rbegin(); i!=_ogv->rend(); i++) {
        OPS_Group* og = *i;
        if(_og==og) {
            i++;
            break;
        }
    }
    if(i==_ogv->rend()) {
        return TRUE;
    }

    _og = *i;
    return FALSE;
}

DAV_list* DownFence::compute_dav_set(REGION* start_rgn, REGIONAL_CFG_NODE* start_node, OPS_Group* start_og, BOOL at_fence, int ws)
{
    BOOL go_pred = TRUE;
    if(!at_fence) {
        if(EPSDBG(2)) {
            if(start_node->Is_Region()) {
                fprintf(EPSLOG, "Compute DAV set of Predecessor Region : %d", start_node->Region_Node()->Id());
            } else {
                fprintf(EPSLOG, "Compute DAV set of Predecessor BB : %d", BB_id(start_node->BB_Node()));
            }
        }

        if(EPS::current_eps_driver()->is_dfence(start_node, NULL)) {
            if(EPSDBG(2)) fprintf(EPSLOG, "\n");

            DAV_list* empty_davs = CXX_NEW(DAV_list(), EPS::current_eps_mempool());
            return empty_davs;
        }
    }

    if(!start_node->Is_Region()) {
        OPS_Group_vector* ogv = EPS::current_eps_driver()->get_ogv(start_node);

        for(OPS_Group_vector::iterator it=ogv->begin(); it!=ogv->end(); it++) {
            OPS_Group* og = (*it);
            if(og==start_og) {
                break;
            }

            if(og->contain_ineligible()) go_pred = FALSE;
        }
    } else {
        if(EPS::current_eps_driver()->dfence_in_node(start_node)) {
            go_pred = FALSE;
        }
    }

    DAV_list* davs;
    davs = CXX_NEW(DAV_list(), EPS::current_eps_mempool());
    if(go_pred) {
        for(REGIONAL_CFG_EDGE* pe = start_node->First_Pred(); pe; pe=pe->Next_Pred()) {
            REGIONAL_CFG_NODE* pred_node = pe->Src();
            if(EPS::recovery(pred_node)) continue;

            if(start_node->Home_Region()->Is_Contained_By(pred_node->Home_Region())) {
                // predecessor is in outer region.
                EPS_ASSERT(0, "this won't happen\n");
                continue;
            } else {
                // predecessor is in the same region.
                DAV_list pred_davs = *compute_dav_set(start_rgn, pred_node, NULL, FALSE, ws);

                if(EPSDBG(2)) {
                    if(pred_node->Is_Region()) {
                        fprintf(EPSLOG, "DAV set from Predecessor Region : %d\n", pred_node->Region_Node()->Id());
                    } else {
                        fprintf(EPSLOG, "DAV set from Predecessor BB : %d\n", BB_id(pred_node->BB_Node()));
                    }
                    pred_davs.print(EPSLOG);
                }

                davs->merge(pred_davs);
                davs->filter_at_BB_bound(pred_node, this->_fence_node);
            }
        }
    }

    if(start_node->Is_Region()) {
        davs->make_null();
    } else {
        BB* bb = start_node->BB_Node();
        OP* op;
        for(op=BB_first_op(bb); (start_og==NULL)?(op!=NULL):(!start_og->find_op(op)); op=OP_next(op)) {
            davs->filter(op);
            if(EPS::is_not_schedulable(op)) continue;
            davs->insert_dav(CXX_NEW(DAV(op), EPS::current_eps_mempool()));
        }
    }

    return davs;
}

void DFence_list::destruct(void)
{
    for(DFENCE_LIST::iterator i=_fences.begin(); i!=_fences.end(); i++) {
        CXX_DELETE(*i, EPS::current_eps_mempool());
    }
}

DownFence* DFence_list::dfence_in_node(REGIONAL_CFG_NODE* node)
{
    for(DFENCE_LIST::iterator i=_fences.begin(); i!=_fences.end(); i++) {
        DownFence* f = *i;
        if(f->fence_node()==node) {
            return f;
        }
    }
    return NULL;
}

DownFence* DFence_list::is_dfence(REGIONAL_CFG_NODE* node, OPS_Group* og)
{
    for(DFENCE_LIST::iterator i=_fences.begin(); i!=_fences.end(); i++) {
        DownFence* f = *i;
        if(f->fence_node()==node && (f->og()==og || f->empty() || og==NULL)) {
            return f;
        }
    }
    return NULL;
}

DownFence* DFence_list::is_dfence(REGIONAL_CFG_NODE* node, OP* op)
{
    for(DFENCE_LIST::iterator i=_fences.begin(); i!=_fences.end(); i++) {
        DownFence* f = *i;
        if(f->fence_node()==node && (f->empty() || f->find_op(op) || op==NULL)) {
            return f;
        }
    }
    return NULL;
}

DownFence* DFence_list::add_dfence(REGIONAL_CFG_NODE* node)
{
    if(node->Is_Region()) return add_dfence(node, NULL);

    OPS_Group_vector* ogv = EPS::current_eps_driver()->get_ogv(node);
    OP* last_op = BB_last_op(node->BB_Node());
    if(last_op==NULL) {
        return add_dfence(node, NULL);
    }

    OPS_Group* og = ogv->find_op(BB_last_op(node->BB_Node()));
    EPS_ASSERT(og!=NULL, "there should be an OPS_Group\n");

    return add_dfence(node, og);
}

DownFence* DFence_list::add_dfence(REGIONAL_CFG_NODE* node, OPS_Group* og)
{
    DownFence* dfence;

    dfence = is_dfence(node, og);
    if(dfence!=NULL) {
        return dfence;
    }

    dfence = CXX_NEW(DownFence(node, og), EPS::current_eps_mempool());
    _fences.push_back(dfence);
    return dfence;
}

void DFence_list::remove_dfence(DownFence* dfence)
{
    for(DFENCE_LIST::iterator i=_fences.begin(); i!=_fences.end(); i++) {
        if((*i)==dfence) {
            _fences.erase(i);
            CXX_DELETE(dfence, EPS::current_eps_mempool());
            return;
        }
    }
}
#endif // EPS_DCM
