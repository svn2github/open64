#ifndef _EPS_PRTN_H_
#define _EPS_PRTN_H_

#include <set>
#include <map>
#include <algorithm>

class PRTN_Map {
private:
    struct hash_tn {
        UINT operator ()(TN* x) const {
            long long y = (long long)x;
            return (UINT)y;
        }
    };
    struct equal_tn {
        BOOL operator ()(const TN* x1, const TN* x2) const { return x1==x2; }
    };
    typedef mempool_allocator< pair<TN*, TN*> > PRTN_ALLOC;
    typedef __gnu_cxx::hash_map<TN*, TN*, hash_tn, equal_tn, PRTN_ALLOC> PRTN_MAP;
    typedef __gnu_cxx::hash_map<TN*, OP*, hash_tn, equal_tn, PRTN_ALLOC> PRTN_CMP_MAP;

    PRTN_MAP _map;
    PRTN_CMP_MAP _tn_cmp_map;
    PRTN_CMP_MAP _tn_br_map;

    typedef PRTN_MAP::iterator iterator;
    typedef PRTN_MAP::const_iterator const_iterator;

    iterator begin() { return _map.begin(); }
    iterator end() { return _map.end(); }
    const_iterator begin() const { return _map.begin(); }
    const_iterator end() const { return _map.end(); }

public:
    BOOL Remove(TN* tn);
    BOOL Insert(TN* tn1, TN* tn2, OP* op);
    BOOL InsertBR(TN* tn, OP* op);
    TN* Find(TN* tn);
    OP* FindCMP(TN* tn);
    OP* FindBR(TN* tn);

    void Create(BB* first_bb);
    void print(FILE* fp);
};

#endif // _EPS_PRTN_H_
