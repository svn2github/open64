#include "eps.h"

join_info::join_info(BB* first_bb)
{
    int join_seqno = 1;

    for(BB* bb=first_bb; bb; bb=BB_next(bb)) {
        if(BB_preds_len(bb)>1) {
            join_index_map[bb] = join_seqno++;
        }
    }

    num_join = join_seqno - 1;

    join_array = CXX_NEW_ARRAY(BB*, num_join, EPS::current_eps_mempool());
    join_adj_matrix = CXX_NEW_ARRAY(BOOL*, num_join, EPS::current_eps_mempool());
    for(int i=0; i<num_join; i++) {
        join_adj_matrix[i] = CXX_NEW_ARRAY(BOOL, num_join, EPS::current_eps_mempool());
        for(int j=0; j<num_join; j++) {
            join_adj_matrix[i][j] = FALSE;
        }
        join_adj_matrix[i][i] = FALSE;
    }

    build_join_graph(first_bb);

if(EPSDBG(1)) {
    for(BB* bb=first_bb; bb; bb=BB_next(bb)) {
        if(BB_preds_len(bb)<=1) continue;
        fprintf(EPSLOG, "rel_join of %d(%d) : ", BB_id(bb), join_index_map[bb]);
        int id1 = join_index_map[bb];
        for(BB* bb2=first_bb; bb2; bb2=BB_next(bb2)) {
            if(BB_preds_len(bb2)<=1) continue;
            int id2 = join_index_map[bb2];
            if(join_adj_matrix[id1-1][id2-1]) {
                fprintf(EPSLOG, " %d", BB_id(bb2));
            }
        }
        fprintf(EPSLOG, "\n");
    }
}
}

join_info::~join_info()
{
    for(int i=0; i<num_join; i++) {
        CXX_DELETE_ARRAY(join_adj_matrix[i], EPS::current_eps_mempool());
    }
    CXX_DELETE_ARRAY(join_adj_matrix, EPS::current_eps_mempool());
    CXX_DELETE_ARRAY(join_array, EPS::current_eps_mempool());
}

void join_info::find_adjacent_join(BB* bb, int src_id)
{
    int dst_id;

    if(BB_preds_len(bb)>1) {
        // encountered by another join.
        dst_id = join_index_map[bb] - 1;

        // don't propagate accross lop boundary
        // this may be inexact when CICM is done.
        if(src_id==dst_id || Regional_Cfg_Node(bb)->Is_Entry()) {
            return;
        }

        EPS_ASSERT(dst_id>=0, "index should be non-negative\n");
        join_adj_matrix[src_id][dst_id] = TRUE;
    } else {
        BBLIST* succs;
        FOR_ALL_BB_SUCCS(bb, succs) {
            find_adjacent_join(BBLIST_item(succs), src_id);
        }
    }

    return;
}

void join_info::build_join_graph(BB* first_bb)
{
    for(BB* bb=first_bb; bb; bb=BB_next(bb)) {
        if(BB_preds_len(bb)>1) {
            int join_id = join_index_map[bb] - 1;
            EPS_ASSERT(join_id >= 0, "index should be non-negative\n");
            join_array[join_id] = bb;

            BBLIST* succs;
            FOR_ALL_BB_SUCCS(bb, succs) {
                find_adjacent_join(BBLIST_item(succs), join_id);
            }
        }
    }

    // compute transitive closure of join_adj_matrix
    for(int k=0; k<num_join; k++) {
        for(int i=0; i<num_join; i++) {
            for(int j=0; j<num_join; j++) {
if(EPSDBG(1)) {
    if((!join_adj_matrix[i][j]) && (join_adj_matrix[i][k] & join_adj_matrix[k][j]))
        fprintf(EPSLOG, "%d->%d->%d\n", i, k, j);
}
                join_adj_matrix[i][j] |= (join_adj_matrix[i][k] & join_adj_matrix[k][j]);
            }
        }
    }

    return;
}

void join_info::rel_join(BB* bb, join_set& rel_join_of_bb)
{
    EPS_ASSERT(BB_preds_len(bb)>1, "non-join bb for rel_join\n");

    // this is caller's responsibility
    // rel_join_of_bb.make_null();

    int src_id = join_index_map[bb] - 1;
    EPS_ASSERT(src_id>=0, "index should be non-negative\n");
    for(int i=0; i<num_join; i++) {
        if(i!=src_id && join_adj_matrix[src_id][i]) {
            BB* another_bb = join_array[i];

            // diagnostic
            EPS_ASSERT((join_index_map[another_bb]-1) == i, "inconsistency in index mapping\n");
            rel_join_of_bb.insert(pair<BB*,BB*>(another_bb, NULL));
        }
    }
}

BOOL join_info::is_rel_join(BB* bb1, BB* bb2)
{
    int src_id = join_index_map[bb1] - 1;
    int dst_id = join_index_map[bb2] - 1;
    EPS_ASSERT(src_id>=0 && dst_id>=0, "index should be non-negative\n");
    return join_adj_matrix[src_id][dst_id];
}

BOOL join_info::is_in(BB* bb)
{
    for(int i=0; i<num_join; i++) {
        if(join_array[i] == bb) return TRUE;
    }

    return FALSE;
}

void join_info::merge_join_set(join_set& set1, join_set& set2)
{
    join_set common, match;
    join_set temp1, temp2, temp3;
    BB* join_bb;

//fprintf(stderr, "set1:");
//debug_print_join_set(&set1);
//fprintf(stderr, "set2:");
//debug_print_join_set(&set2);

    if(set1.size()==0 && set2.size()==0) {
        return;
    } else if(set1.size()==0) {
        set1 = set2;
        return;
    } else if(set2.size()==0) {
        return;
    }

    // compute common set of set1 and set2
    set_intersection(set1.begin(), set1.end(), set2.begin(), set2.end(), std::insert_iterator<join_set>(common, common.begin()), ltBBidFunc);

    // compute match
    join_set::iterator common_it;
    for(common_it=common.begin(); common_it!=common.end(); common_it++) {
        // temp1 is accumulated.
        rel_join((*common_it).first, temp1);
    }
    // match_join = common_join - rel_join(common_join);
    set_difference(common.begin(), common.end(), temp1.begin(), temp1.end(), std::insert_iterator<join_set>(match, match.begin()), ltBBidFunc);

    // temp1 = set1 + set2;
    temp1.erase(temp1.begin(), temp1.end());
    set_union(set1.begin(), set1.end(), set2.begin(), set2.end(), std::insert_iterator<join_set>(temp1, temp1.begin()), ltBBidFunc);

    // temp2 = temp1 - match == (set1 + set2) - match;
    set_difference(temp1.begin(), temp1.end(), match.begin(), match.end(), std::inserter<join_set>(temp2, temp2.begin()), ltBBidFunc);

    temp1.erase(temp1.begin(), temp1.end());
    set1.erase(set1.begin(), set1.end());

    join_set::iterator match_it;
    for(match_it=match.begin(); match_it!=match.end(); match_it++) {
        rel_join((*match_it).first, temp1);
    }

    // set1 = temp2 - (temp1 - common) == ((set1+set2)-match) - (rel_join(match) - common)
    set_difference(temp1.begin(), temp1.end(), common.begin(), common.end(), std::insert_iterator<join_set>(temp3, temp3.begin()), ltBBidFunc);
    set_difference(temp2.begin(), temp2.end(), temp3.begin(), temp3.end(), std::insert_iterator<join_set>(set1, set1.begin()), ltBBidFunc);
}


void join_info::add_dup_join_block(AV_list& avs, REGIONAL_CFG_NODE* pred, REGIONAL_CFG_NODE* node)
{
    BOOL do_add = FALSE;
    BB* bk = NULL;

    if(node->Is_Region()) {
        REGION_TYPE type = node->Region_Node()->Region_Type();
        if(type==SEME || type==LOOP) {
            do_add = FALSE;
        } else {
            do_add = TRUE;
//            EPS_ASSERT(0, "not implemented\n");
        }
    } else if(node->Is_Entry()) {
        do_add = FALSE;
    } else if(node->Pred_Num()==1 && node->First_Pred()->Src()->Is_Region()) {
        // this node is region exit node.
        do_add = FALSE;
    } else if(BB_preds_len(node->BB_Node())>1) {
        do_add = TRUE;
        if(BB_preds_len(node->BB_Node())==2) {
            REGIONAL_CFG_EDGE* e;
            for(e=node->First_Pred(); e; e=e->Next_Pred()) {
                REGIONAL_CFG_NODE* p = e->Src();
                if((!p->Is_Region()) && p!=pred) {
                    bk = p->BB_Node();
                    break;
                }
            }
        }
    } else {
        do_add = FALSE;
    }

    if(do_add) {
        for(AV_list::iterator it = avs.begin(); it!=avs.end(); it++) {
            AV* av = *it;
            av->attrib()->add_dup_joins(node->BB_Node(), bk);
            if(av->attrib()->spec()>0) {
                av->attrib()->add_spec_dup_joins(node->BB_Node(), bk);
            }
        }
    }
}

void debug_print_join_set(join_set* set)
{
    fprintf(stderr, "join_set: ");
    for(join_set::iterator it = set->begin(); it!=set->end(); it++) {
        fprintf(stderr, "%d,", BB_id((*it).first));
    }
    fprintf(stderr, "\n");
}
