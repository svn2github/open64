#ifndef _DDG_H_
#define _DDG_H_

#include <set>
#include <map>
#include <algorithm>

#define SPEC_PENALTY (1.0)

//#define USE_DDG_MAX_LENGTH 1

class DDG_Node;
class DDG_Edge;
class DDG_Map;
class DDG;

typedef mempool_allocator<DDG_Node*> DDG_NODE_ALLOC;
typedef std::list<DDG_Node*, DDG_NODE_ALLOC> DDG_NODE_LIST;

class DDG_Node {
friend class DDG;
friend class DDG_Map;
private:
    typedef mempool_allocator<DDG_Edge*> DDG_EDGE_ALLOC;
    typedef std::list<DDG_Edge*, DDG_EDGE_ALLOC> DDG_EDGE_LIST;
    OP* _op;
    DDG_EDGE_LIST _preds;
    DDG_EDGE_LIST _succs;
    int _id;
    int _eps_id;
    int _last_eps_id;
    int _spec_ld_id;

    double _length;
    double _max_length;
    BOOL _visited;

    DDG_Node* _head;
    BOOL _is_copy_in_cycle;

    static int _id_count;   // initialize in DDG constructor.

    //sylee 081002 hot_node
    BOOL _mark_hot_node;
    BOOL _mark_visited;

    double Initiate(void);
    void Initiate2(double length);

    int FindCopyCycle(DDG_Node* head, int copies);
    void Update(BOOL at_fence, int eps_id);
public:
    DDG_Node(OP* o) :
        _preds(DDG_EDGE_ALLOC(EPS::current_eps_mempool())),
        _succs(DDG_EDGE_ALLOC(EPS::current_eps_mempool()))
    {
        _op = o;
        _visited = FALSE;
        _is_copy_in_cycle = FALSE;

        _mark_hot_node = FALSE;			//sylee
        _mark_visited = FALSE;

        _head = NULL;
        _length = 0.0;
        _max_length = 0.0;
        _id = _id_count++;
        _eps_id = -1;
        _last_eps_id = -1;
        _spec_ld_id = -1;
    }

    ~DDG_Node();

    OP* Op(void) { return _op; }
    int Id(void) { return _id; }
    double Length(void);
    double MaxLength(void);
    int EPS_Id(void) { return _eps_id; }
    int Last_EPS_Id(void) { return _last_eps_id; }

    typedef DDG_EDGE_LIST::iterator edge_iterator;
    typedef DDG_EDGE_LIST::const_iterator const_edge_iterator;
    edge_iterator succ_begin() { return _succs.begin(); }
    edge_iterator succ_end() { return _succs.end(); }
    edge_iterator pred_begin() { return _preds.begin(); }
    edge_iterator pred_end() { return _preds.end(); }
    const_edge_iterator succ_begin() const { return _succs.begin(); }
    const_edge_iterator succ_end() const { return _succs.end(); }
    const_edge_iterator pred_begin() const { return _preds.begin(); }
    const_edge_iterator pred_end() const { return _preds.end(); }

    DDG_Edge* Find_In_Succs(DDG_Node* n);
    DDG_Edge* Find_In_Preds(DDG_Node* n);
    void Connect(DDG_Node* n, int iter);
    void Unify(DDG_Node* n);
    void Unify_Succ(DDG_Node* n);
    void Unify_Pred(DDG_Node* n);
//sylee 081006
    void mark_linked_node(void);
    void mark_hot_node(BOOL mark){_mark_hot_node = mark; return;}
    BOOL is_hot_node(){return _mark_hot_node;}
    void mark_visited(BOOL makr){_mark_visited = makr; return;}
    BOOL is_visited(){return _mark_visited;}
// jaemok 090215
    BOOL LoadLength(DDG_Node* head);
// jaemok 090215
    void relate_hot_loads(void);
    void MaxLength(DDG_Node* head);
};

class DDG_Edge {
friend class DDG;
friend class DDG_Node;
private:
    DDG_Node* _src;
    DDG_Node* _dst;
    int _length;
    int _iter;
public:
    DDG_Edge(DDG_Node* s, DDG_Node* d, int l, int iter) {
        _src = s;
        _dst = d;
        _length = l;
        _iter = iter;
    }

    DDG_Node* Src(void) { return _src; }
    DDG_Node* Dst(void) { return _dst; }
    int Length(void) { return _length; }
    int Iter(void) { return _iter; }
};


class DDG_Map {
private:
    struct hash_op {
        UINT operator ()(OP* x) const {
            long long y = (long long)x;
            return (UINT)y;
        }
    };
    struct equal_op {
        BOOL operator ()(const OP* x1, const OP* x2) const { return x1==x2; }
    };

    typedef mempool_allocator< pair<OP*, DDG_Node*> > DDG_MAP_NODE_ALLOC;
    typedef __gnu_cxx::hash_map<OP*, DDG_Node*, hash_op, equal_op, DDG_MAP_NODE_ALLOC> DDG_MAP;
    DDG_MAP _map;
    REGION* _rgn;
public:
    DDG_Map(REGION* rgn);
    ~DDG_Map();

    typedef DDG_MAP::iterator iterator;
    typedef DDG_MAP::const_iterator const_iterator;

    iterator begin() { return _map.begin(); }
    iterator end() { return _map.end(); }
    const_iterator begin() const { return _map.begin(); }
    const_iterator end() const { return _map.end(); }

    BOOL Remove(OP* o);
    BOOL Insert(OP* o);
    DDG_Node* Find(OP* o);

    void ClearVisited(void);
};

struct ltOP
{
    bool operator()(const OP* op1, const OP* op2) const
    {
        return op1 < op2;
    }
};
typedef std::set<OP*, ltOP> OP_set;

class DDG_BB_attribute {
private:
    REGIONAL_CFG_NODE* _node;
    OP_set _live_out;

public:
    DDG_BB_attribute(REGIONAL_CFG_NODE* node);
    ~DDG_BB_attribute();

    OP_set* Live_Out(void) { return &_live_out; }
};

class DDG_BB_attr_map {
private:
    struct hash_rgn {
        UINT operator ()(REGIONAL_CFG_NODE* x) const { return (x->Id()); }
    };
    struct equal_rgn {
        BOOL operator ()(const REGIONAL_CFG_NODE* x1, const REGIONAL_CFG_NODE* x2)
            const { return x1->Id()==x2->Id(); }
    };

    typedef mempool_allocator< pair<REGIONAL_CFG_NODE*, DDG_BB_attribute*> > DDG_ATTR_ALLOC;
    typedef __gnu_cxx::hash_map<REGIONAL_CFG_NODE*, DDG_BB_attribute*, hash_rgn, equal_rgn, DDG_ATTR_ALLOC> DDG_ATTR_MAP;

    DDG_ATTR_MAP _map;

public:
    DDG_BB_attr_map(REGION* rgn);
    ~DDG_BB_attr_map();

    DDG_BB_attribute* get_attrib(REGIONAL_CFG_NODE* node) {
        return (_map[node]);
    }
};

class PostDominator {
    typedef std::set<int> iset;
    struct ltBBid
    {
        bool operator()(const BB* bb1, const BB* bb2) const
        {
            return BB_id(bb1) < BB_id(bb2);
        }
    };
    typedef std::map<BB*, iset, ltBBid> BB_iset_map;

private:
    BB_iset_map _map;
public:
    PostDominator(BB* first_bb);
    BOOL inspect(BB* a, BB* b);
};

class DDG {
friend void visualize_ddg(FILE* vcg, DDG* ddg);
friend void visualize_ddg(DDG* ddg);
friend void visualize_ddg(DDG* ddg, char* str);
private:
    REGION* _rgn;
    PostDominator* _pd;
    DDG_Map* _map;
    DDG_BB_attr_map* _bb_map;
public:
    DDG(void) { _map = NULL; _rgn = NULL; _pd = NULL; _bb_map = NULL; DDG_Node::_id_count = 0; }
    BOOL Construct(REGION* rgn, PostDominator* pd);
    BOOL Destruct(void);

    BOOL Insert(OP* op) { return _map->Insert(op); }
    BOOL Remove(OP* op) { return _map->Remove(op); }
    DDG_Node* Find(OP* op) { return _map->Find(op); }

    void Update(Fence* fence, int eps_level);

private:
    static void Find_LD_Recovery_Cand(DDG_Node* n, int id, std::list<OP*>& candidates);
public:
    void Find_LD_Recovery_Cand(OP* ld, int id, std::list<OP*>& candidates);

    static BOOL is_dependent(OP* o1, OP* o2);
    static BOOL kill(OP* o1, OP* o2);

    void ClearVisited(void) { _map->ClearVisited(); }

	//void     mark_hot_nodes(Fence* fence);//sylee
};

DDG_Node* DDG_Find_Defining_Op(OP* op, int opnd);
DDG_Node* DDG_Find_Defining_Op(OP* op, DDG_Node* node, int opnd);

#endif // _DDG_H_

