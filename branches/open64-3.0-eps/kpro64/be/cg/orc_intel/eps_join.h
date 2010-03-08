#ifndef _JOIN_H_
#define _JOIN_H_

#include <set>
#include <map>

struct ltBBPid
{
    bool operator()(const pair<BB*, BB*> b1, const pair<BB*, BB*> b2) const
    {
        return BB_id(b1.first) < BB_id(b2.first);
    }
};
struct ltBBid
{
    bool operator()(const BB* b1, const BB* b2) const
    {
        return BB_id(b1) < BB_id(b2);
    }
};
inline bool ltBBidFunc(pair<BB*,BB*> b1, pair<BB*,BB*> b2) { return BB_id(b1.first)<BB_id(b2.first); }

typedef std::set<pair<BB*,BB*>, ltBBPid> join_set;
typedef std::map<BB*, int, ltBBid> join_map;

void debug_print_join_set(join_set* set);

class join_info
{
private:
    int num_join;
    join_map join_index_map;
    BB** join_array;
    BOOL** join_adj_matrix;

public:
    join_info(BB* first_bb);
    ~join_info();

    void rel_join(BB* bb, join_set& rel_join_of_bb);
    BOOL is_rel_join(BB* bb1, BB*bb2);
    BOOL is_in(BB* bb);

    void merge_join_set(join_set& set1, join_set& set2);

    void add_dup_join_block(AV_list& avs, REGIONAL_CFG_NODE* pred, REGIONAL_CFG_NODE* node);

protected:
    void find_adjacent_join(BB* bb, int src_id);
    void build_join_graph(BB* first_bb);
};

#endif // _JOIN_H_
