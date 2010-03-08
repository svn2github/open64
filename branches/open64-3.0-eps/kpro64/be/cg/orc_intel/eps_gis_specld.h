#ifndef _EPS_GIS_SPECLD_H_
#define _EPS_GIS_SPECLD_H_

#include <set>
#include <ext/hash_map>

class GIS_SpecLDs {
private:
    struct hash_chk {
        int operator ()(OP* chk) const {
            if(!OP_chk(chk)) abort();
            return (long)OP_opnd(chk, 1);
        }
    };

    struct equal_chk {
        BOOL operator ()(const OP* n1, const OP* n2) const {
            return OP_opnd(n1,1)==OP_opnd(n2,1);
        }
    };

    struct compare_tn
    {
        bool operator()(const TN* tn1, const TN* tn2) const
        {
            return (long(tn1)) < (long(tn2));
/*
            if(TN_is_register(tn1) && TN_is_register(tn2)) {
                mTN_NUM num1 = TN_number(tn1); 
                mTN_NUM num2 = TN_number(tn2); 
        
                return (num1 < num2);
            }
            return 1;
*/
        }
    };

    typedef mempool_allocator<TN*> TN_ALLOC; 
    typedef std::set<TN*, compare_tn, TN_ALLOC> TN_SET;

    typedef mempool_allocator< pair<OP*, pair<TN_SET*, TN_SET*> > > SPEC_LDS_ALLOC;
    typedef __gnu_cxx::hash_map<OP*, pair<TN_SET*, TN_SET*>, hash_chk, equal_chk, SPEC_LDS_ALLOC> SPEC_LDS_MAP;
    SPEC_LDS_MAP _spec_lds;

public:
    GIS_SpecLDs() : _spec_lds(10, hash_chk(), equal_chk(), SPEC_LDS_ALLOC(EPS::current_eps_mempool())) { }

    void Construct(REGION* rgn);

    BOOL chk_op_anti_dependent(OP* op, OP* chk);
};


#endif // _EPS_GIS_SPECLD_H_
