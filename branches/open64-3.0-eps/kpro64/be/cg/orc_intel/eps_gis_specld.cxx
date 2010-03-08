#include "eps.h"

void GIS_SpecLDs::Construct(REGION* rgn)
{
    NODE_VECTOR nodes = rgn->Regional_Cfg()->Node_Set();

    // 1st phase: find every chk operations.
    NODE_VECTOR::iterator it;
    for(it=nodes.begin(); it!=nodes.end(); it++) {
        REGIONAL_CFG_NODE* node = *it;
        if(node->Is_Region()) continue;

        BB* bb = node->BB_Node();
        OP* op;

        FOR_ALL_BB_OPs(bb, op) {
            if(OP_chk(op)) {
                TN_SET* def_set = (TN_SET*)CXX_NEW(TN_SET(), EPS::current_eps_mempool());
                TN_SET* use_set = (TN_SET*)CXX_NEW(TN_SET(), EPS::current_eps_mempool());
                _spec_lds[op] = pair<TN_SET*,TN_SET*>(def_set, use_set);
                def_set->insert(OP_opnd(op,2));
            }
        }
    }

    // 2nd phase: find every related OPs and TNs conservatively.
    SPEC_LDS_MAP::iterator m_it;
    for(m_it=_spec_lds.begin(); m_it!=_spec_lds.end(); m_it++) {
        TN_SET* defs = (*m_it).second.first;
        TN_SET* uses = (*m_it).second.second;
        while(true) {
            int def_size = defs->size();
            int use_size = uses->size();
            for(it=nodes.begin(); it!=nodes.end(); it++) {
                REGIONAL_CFG_NODE* node = *it;
                if(node->Is_Region()) continue;

                BB* bb = node->BB_Node();
                OP* op;

                FOR_ALL_BB_OPs(bb, op) {
                    int i;
                    for(i=0; i<OP_results(op); i++) {
                        if(defs->find(OP_result(op,i))!=defs->end()) {
                            int j;
                            for(j=0; j<OP_results(op); j++) {
                                if(TN_is_register(OP_result(op,j))) defs->insert(OP_result(op,j));
                            }
                            for(j=0; j<OP_opnds(op); j++) {
                                if(TN_is_register(OP_opnd(op,j))) uses->insert(OP_opnd(op,j));
                            }
                        }
                    }
                    for(i=0; i<OP_opnds(op); i++) {
                        if(defs->find(OP_opnd(op,i))!=defs->end()) {
                            // this OP is possibly in the dependency chain.
                            int j;
                            for(j=0; j<OP_results(op); j++) {
                                if(TN_is_register(OP_result(op,j))) defs->insert(OP_result(op,j));
                            }
                            for(j=0; j<OP_opnds(op); j++) {
                                if(TN_is_register(OP_opnd(op,j))) uses->insert(OP_opnd(op,j));
                            }
                        }
                    }
                }
            }
            if(def_size==defs->size() && use_size==uses->size()) break;
        }
    }

    fprintf(EPSLOG, "GIS_SPECLDS found:\n");
    for(m_it=_spec_lds.begin(); m_it!=_spec_lds.end(); m_it++) {
        fprintf(EPSLOG, "GIS_SPECLDS_CHK: ");
        eps_print_asm(EPSLOG, (*m_it).first, NULL);

        TN_SET* defs = (*m_it).second.first;
        TN_SET* uses = (*m_it).second.second;

        fprintf(EPSLOG, "DEFS: ");
        for(TN_SET::iterator tit=defs->begin(); tit!=defs->end(); tit++) {
            char buf[256];
            eps_print_TN(*tit, NULL, buf, 0, 0);
            fprintf(EPSLOG, "%s ", buf);
        }
        fprintf(EPSLOG, "\n");

        fprintf(EPSLOG, "USES: ");
        for(TN_SET::iterator tit=uses->begin(); tit!=uses->end(); tit++) {
            char buf[256];
            eps_print_TN(*tit, NULL, buf, 0, 0);
            fprintf(EPSLOG, "%s ", buf);
        }
        fprintf(EPSLOG, "\n");
    }
    fprintf(EPSLOG, "GIS_SPECLDS end:\n");
}

BOOL GIS_SpecLDs::chk_op_anti_dependent(OP* op, OP* chk)
{
    if(!OP_chk(chk)) return FALSE;

    pair<TN_SET*, TN_SET*> use_defs = _spec_lds[chk];
    TN_SET* defs = use_defs.first;
    TN_SET* uses = use_defs.second;

    int i;
    for(i=0; i<OP_results(op); i++) {
        if(defs->find(OP_result(op,i))!=defs->end()) return TRUE;
        if(uses->find(OP_result(op,i))!=uses->end()) return TRUE;
    }
    return FALSE;
}


