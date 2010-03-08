#include "eps.h"
#include "eps_prtn.h"

BOOL PRTN_Map::Remove(TN* tn)
{
    if(_map.find(tn)==_map.end()) return FALSE;

    CXX_DELETE(_map[tn], EPS::current_eps_mempool());
    _map.erase(tn);

    return TRUE;
}

extern int eps_print_TN(TN *tn, const OP *op, char *buf, int result_num, int opnd_num);

BOOL PRTN_Map::Insert(TN* tn1, TN* tn2, OP* op)
{
    char tn_buf[32];
    BOOL bFail = FALSE;
    if(_map.find(tn1)!=_map.end() && (_map[tn1]!=tn2 || _map[tn1]==True_TN)) {
        eps_print_TN(tn1, NULL, tn_buf, 0, 0);
        fprintf(stderr, "conflict TN: %s\n",tn_buf);

        TN* complement = _map[tn1];
        _map[tn1] = NULL;
        if(complement) _map[complement] = NULL;

        bFail = TRUE;
    }
    if(_map.find(tn2)!=_map.end() && (_map[tn2]!=tn1 || _map[tn2]==True_TN)) {
        eps_print_TN(tn2, NULL, tn_buf, 0, 0);
        fprintf(stderr, "conflict TN: %s\n",tn_buf);

        TN* complement = _map[tn2];
        _map[tn2] = NULL;
        if(complement) _map[complement] = NULL;

        bFail = TRUE;
    }

    if(bFail) return FALSE;

    _map[tn1] = (tn2==True_TN)?NULL:tn2;
    _map[tn2] = (tn1==True_TN)?NULL:tn1;

    PRTN_CMP_MAP::iterator it2;
    it2 = _tn_cmp_map.find(tn1);
    if(it2!=_tn_cmp_map.end()) {
        _tn_cmp_map[tn1] = NULL;
    } else {
        _tn_cmp_map[tn1] = op;
    }
    it2 = _tn_cmp_map.find(tn2);
    if(it2!=_tn_cmp_map.end()) {
        _tn_cmp_map[tn2] = NULL;
    } else {
        _tn_cmp_map[tn2] = op;
    }


    return TRUE;
}

BOOL PRTN_Map::InsertBR(TN* tn, OP* op)
{
    PRTN_CMP_MAP::iterator it;

    it = _tn_br_map.find(tn);
    if(it!=_tn_br_map.end()) { // if there are more than one br with same predicate, remove.
        _tn_br_map[tn] = (OP*)1;
    } else {
        _tn_br_map[tn] = op;
    }

    return TRUE;
}

TN* PRTN_Map::Find(TN* tn)
{
    iterator it = _map.find(tn);
    if(it==_map.end()) return NULL;

    return (*it).second;
}

OP* PRTN_Map::FindCMP(TN* tn)
{
    PRTN_CMP_MAP::iterator it = _tn_cmp_map.find(tn);
    if(it==_tn_cmp_map.end()) return NULL;

    return (*it).second;
}

OP* PRTN_Map::FindBR(TN* tn)
{
    PRTN_CMP_MAP::iterator it = _tn_br_map.find(tn);
    if(it==_tn_br_map.end()) return NULL;

    return (*it).second;
}

void PRTN_Map::Create(BB* first_bb)
{
    for(BB* bb=first_bb; bb; bb=BB_next(bb)) {
        for(OP* op = BB_first_op(bb); op; op=OP_next(op)) {
            if(OP_results(op)==2 && TN_register_class(OP_result(op,0))==ISA_REGISTER_CLASS_predicate) {
                TN* tn1 = OP_result(op,0);
                TN* tn2 = OP_result(op,1);
                Insert(tn1, tn2, op);
            }
            TN* br_pred = OP_opnd(op, OP_PREDICATE_OPND);
            if(br_pred!=NULL) {
                InsertBR(br_pred, op);
            }
        }
    }
}

void PRTN_Map::print(FILE* fp)
{
    char tn_buf1[32];
    char tn_buf2[32];
    iterator it;
    for(it=begin(); it!=end(); it++) {
        TN* tn1 = (*it).first;
        TN* tn2 = (*it).second;
        eps_print_TN(tn1, NULL, tn_buf1, 0, 0);
        eps_print_TN(tn2, NULL, tn_buf2, 0, 0);

        fprintf(fp, "TN_pair: (%s, %s)\n", tn_buf1, tn_buf2);
    }
}

