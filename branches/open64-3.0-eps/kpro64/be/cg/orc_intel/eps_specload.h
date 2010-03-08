#ifndef _EPS_SPECLOAD_
#define _EPS_SPECLOAD_

#include <list>
#include <ext/hash_map>

#define REC_PROB 0.01F
#define BTM_PROB 0.99F
#define ENUM_LDTYPE_POS  1

class SpecLDs_Node {
friend class SpecLDs;
private:
    OP* _ld;
    OP* _new_ld; // 2008.11.07
    OP* _chk;
    std::list<OP*> _recovery_ops; // among candidates, which really move above _chk.
    std::list<OP*> _recovery_candidates; // operations which are dependent to _ld.

    int _id;
    static int _id_count;

    SpecLDs_Node(OP* newld, OP* ld, OP* chk);

public:
    OP* ld(void) { return _ld; }
    OP* newld(void) { return _new_ld; }
    OP* chk(void) { return _chk; }

    void update(OP* old_op, OP* new_op);
    void add_recovery_cand(OP* orig, OP* bk);
};

class SpecLDs {
private:
    struct hash_chk {
        int operator ()(OP* n) const {
            long long x = (long long)n;
            return (int)x;
        }
    };
    struct equal_chk {
        BOOL operator ()(const OP* n1, const OP* n2) const {
            return n1==n2;
        }
    };

    typedef mempool_allocator< pair<OP*, SpecLDs_Node*> > SPEC_LDS_ALLOC;
    typedef __gnu_cxx::hash_map<OP*, SpecLDs_Node*, hash_chk, equal_chk, SPEC_LDS_ALLOC> SPEC_LDS_MAP;
    SPEC_LDS_MAP _spec_lds;

public:
    SpecLDs() : _spec_lds(10, hash_chk(), equal_chk(), SPEC_LDS_ALLOC(EPS::current_eps_mempool())) { SpecLDs_Node::_id_count = 0;}

    SpecLDs_Node* new_spec_load(OP* newld, OP* ld, OP* chk);

    // When an operation moves above a "chk" operation,
    // find the node related to the "chk".
    SpecLDs_Node* move_instruction(OP* new_op, OP* chk);
    SpecLDs_Node* pushdown(OP* op, OP* chk);
    SpecLDs_Node* change(OP* oldchk, OP* newchk);

    BB* generate_recovery_block(OP* chk);
    BB* update_cfg(OP* chk);

    void update(OP* old_op, OP* new_op);
    void add_recovery_cand(OP* orig, OP* bk);

    BOOL chk_op_anti_dependent(OP* op, OP* chk);
};

#endif // _EPS_SPECLOAD_

