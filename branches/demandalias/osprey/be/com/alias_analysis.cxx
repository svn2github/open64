#include "math.h"
#include <boost/config.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/graph_utility.hpp>
#include <boost/graph/strong_components.hpp>
#include <boost/graph/topological_sort.hpp>
#include "wn.h"
#include "wn_util.h"
#include "mempool_allocator.h"
#include "erglob.h"
#include "cxx_memory.h"
#include "tracing.h"
#include "ir_reader.h"
#include "targ_sim.h"
#include "intrn_info.h"
#include "config_opt.h"
#include "opt_points_to.h"
#include "opt_sym.h"
#include "alias_analysis.h"

#define TRACE_ADSN_ALIAS_FLAG      0x800

using namespace std;

typedef IDTYPE ALIAS_ID;

typedef enum {
  SPECIAL_OBJ,  // for global object
  SPECIAL_PTR,  // for global ptr which will point to globa object
  SYM,          // symbol to represent a block of memory
  REG,          // register variable
  REF,          // take address of, like &a
  DEREF,        // dereference of, like *p
  FIELD,        // take address of field in struct, like &(s.f1),  &(p->f1)
  MALLOC,       // for memory allocation, like malloc, alloca, ...
  KWN,          // for some wn which cannot be classified
  VAL_HOLDER,   // for online value aliased nodes grouping
  OTHER,
} ALIAS_MEMBER_KIND;

typedef struct {
  TY_IDX str_ty_idx;
  INT64 ofst;
  INT64 size;  
} FLD_INFO;

typedef struct {
  ST *base;
  INT64 ofst;
  INT64 size;
} STB_INFO;

class ALIAS_MEMBER_INFO {
private:
  ALIAS_MEMBER_KIND _kind;
    
  union {
    ALIAS_ID _id;         // used when kind == REF/DEREF/FIELD
                          // e.g. for **p, the base should be alias id of *p
    ST* _sym;             // used when kind == SYM
    WN_OFFSET _preg_id;   // used when kind == REG
    UINT64 _linenum;      // used when kind == MALLOC
    WN* _wn;              // used when some wn cannot easily classfied, e.g. arithmetic expr
  } _base;

  ALIAS_ID _root_id;
  union {
    FLD_INFO _fld;        // used when kind = FIELD
    STB_INFO _stb;        // used when kind = SYM
  } _info;
  
  void Init() {
    _kind = OTHER;
    _base._id = ILLEGAL_ALIAS_ID;
    _root_id = ILLEGAL_ALIAS_ID;
    _info._fld.str_ty_idx = 0;
    _info._fld.ofst = 0;
    _info._fld.size = 0;
  }

  void Set_Kind(ALIAS_MEMBER_KIND kind) { _kind = kind; }
  void Set_Base_Id(ALIAS_ID id) {
    FmtAssert(Kind() == FIELD || Kind() == DEREF || Kind() == REF, ("wrong alias member kind"));
    _base._id = id;
  }  
  void Set_Sym(ST *sym) {
    FmtAssert(Kind() == SYM, ("wrong alias member kind"));
    _base._sym = sym;
  }
  void Set_Preg_Id(WN_OFFSET preg_id) {
    FmtAssert(Kind() == REG, ("wrong alias member kind"));
    _base._preg_id = preg_id;
  }
  void Set_Linenum(UINT64 linenum) {
    FmtAssert(Kind() == MALLOC, ("wrong alias member kind"));
    _base._linenum = linenum;
  }
  void Set_Wn(WN *wn) {
    FmtAssert(Kind() == KWN, ("wrong alias kind"));
    _base._wn = wn;
  }
  void Set_Fld_Info(FLD_INFO finfo) {
    FmtAssert(Kind() == FIELD, ("wrong alias member kind"));
    _info._fld = finfo;
  }

  FLD_INFO Get_Fld_Info (TY_IDX ty_idx, UINT field_id) {
    if (TY_kind(ty_idx) == KIND_POINTER)
      ty_idx = TY_pointed(ty_idx);
    if (TY_kind(ty_idx) == KIND_ARRAY)
      ty_idx = TY_etype(ty_idx);

    FmtAssert(TY_kind(ty_idx) == KIND_STRUCT, ("not struct type"));
    FLD_INFO finfo;
    finfo.str_ty_idx = ty_idx;
  
    UINT cur_field_id = 0;
    FLD_HANDLE fld_hd = FLD_get_to_field (ty_idx, field_id, cur_field_id);
    finfo.ofst = FLD_ofst(fld_hd);
    finfo.size = TY_size (FLD_type(fld_hd));
    return finfo;
  }

  void Set_Stb_Info(STB_INFO stb) {
    FmtAssert(Kind() == SYM, ("wrong alias member kind"));
    _info._stb = stb;
  }

  STB_INFO Get_Stb_Info(ST *st) {
    ST *st_base;
    INT64 ofst;
    Expand_ST_into_base_and_ofst(st, 0, &st_base, &ofst);
    STB_INFO sti;
    sti.base = st_base;
    sti.ofst = ofst;
    sti.size = TY_size(ST_type(st));
    return sti;
  }
    
public:
  ALIAS_MEMBER_KIND Kind() { return _kind; }
  ALIAS_ID Base_Id() {
    FmtAssert(Kind() == FIELD || Kind() == DEREF || Kind() == REF, ("wrong alias member kind"));
    return _base._id;
  }
  ST* Sym() {
    FmtAssert(Kind() == SYM, ("wrong alias member kind"));
    return _base._sym;
  }
  WN_OFFSET Preg_Id() {
    FmtAssert(Kind() == REG, ("wrong alias member kind"));
    return _base._preg_id;
  }
  UINT64 Linenum() {
    FmtAssert(Kind() == MALLOC, ("wrong alias member kind"));
    return _base._linenum;
  }
  WN* Wn() {
    FmtAssert(Kind() == KWN, ("wrong alias member kind"));
    return _base._wn;
  }
  FLD_INFO Fld_Info() {
    FmtAssert(Kind() == FIELD, ("wrong alias member kind"));
    return _info._fld;
  }
  TY_IDX Str_Ty_Idx() {
    FmtAssert(Kind() == FIELD, ("wrong alias member kind"));
    return _info._fld.str_ty_idx;
  }
  INT64 Fld_Ofst() {
    FmtAssert(Kind() == FIELD, ("wrong alias member kind"));
    return _info._fld.ofst;
  }
  INT64 Fld_Size() {
    FmtAssert(Kind() == FIELD, ("wrong alias member kind"));
    return _info._fld.size;
  }
  STB_INFO Stb_Info() {
    FmtAssert(Kind() == SYM, ("wrong alias member kind"));
    return _info._stb;
  }
  ST* Stb_Base() {
    FmtAssert(Kind() == SYM, ("wrong alias member kind"));
    return _info._stb.base;
  }
  INT64 Stb_Ofst() {
    FmtAssert(Kind() == SYM, ("wrong alias member kind"));
    return _info._stb.ofst;
  }
  INT64 Stb_Size() {
    FmtAssert(Kind() == SYM, ("wrong alias member kind"));
    return _info._stb.size;
  }
  
  ALIAS_ID Root_Id() { return _root_id; }
  void Set_Root_Id(ALIAS_ID id) { _root_id = id; }

  ALIAS_MEMBER_INFO () { Init(); }
  ALIAS_MEMBER_INFO (ALIAS_MEMBER_KIND kind) {
    // for kind = SPECIAL_PTR/SPECIAL_OBJ/VAL_HOLDER
    Init();
    Set_Kind(kind);
  }

  ALIAS_MEMBER_INFO (WN_OFFSET preg_id) {
    // for kind = REG
    Init();
    Set_Kind(REG);
    Set_Preg_Id(preg_id);
  }
  ALIAS_MEMBER_INFO (UINT64 line_num) {
    // for kind = MALLOC
    Init();
    Set_Kind(MALLOC);
    Set_Linenum(line_num);
  }
  ALIAS_MEMBER_INFO (WN *wn) {
    // for kind = KWN
    Init();
    Set_Kind(KWN);
    Set_Wn(wn);
  }
  ALIAS_MEMBER_INFO (ST *st) {
    // for kind = SYM
    Init();
    Set_Kind(SYM);
    Set_Sym(st);
    Set_Stb_Info(Get_Stb_Info(st));

  }
  ALIAS_MEMBER_INFO (ALIAS_ID base_id, TY_IDX ty_idx, UINT field_id, ALIAS_ID root_id) {
    // for kind = FIELD
    Init();
    Set_Kind(FIELD);
    Set_Base_Id(base_id);
    Set_Fld_Info(Get_Fld_Info(ty_idx, field_id));
    Set_Root_Id(root_id);
  }
  ALIAS_MEMBER_INFO (ALIAS_ID base_id, ALIAS_MEMBER_KIND kind, ALIAS_ID root_id) {
    // for kind = REF/DEREF
    FmtAssert(kind == REF || kind == DEREF, ("wrong alias kind"));
    Init();
    Set_Kind(kind);
    Set_Base_Id(base_id);
    Set_Root_Id(root_id);
  }

  BOOL Has_Lvalue() {
    switch (Kind()) {
      case DEREF:
      case SYM:
      case REG:
      case MALLOC:
      case SPECIAL_OBJ:
        return TRUE;
      case REF:
      case FIELD:
      case SPECIAL_PTR:
      case KWN:
      case VAL_HOLDER:
        return FALSE;
      default:
        FmtAssert(FALSE, ("wrong alias kind"));
    }
  }

  BOOL Lead_Id_Chain() {
    switch (Kind()) {
      case SYM:
      case REG:
      case MALLOC:
      case KWN:
      case SPECIAL_PTR:
      case SPECIAL_OBJ:
      case VAL_HOLDER:
        return TRUE;
      case FIELD:
      case DEREF:
      case REF:
        return FALSE;
      default:
        FmtAssert(FALSE, ("wrong alias kind"));
    }
  }

  friend BOOL operator== (ALIAS_MEMBER_INFO info1, ALIAS_MEMBER_INFO info2) {
    if (info1.Kind() == info2.Kind()) {
      switch (info1.Kind()) {
        case REG:
            return info1.Preg_Id() == info2.Preg_Id();
        case SYM:
            return info1.Sym() == info2.Sym() ||
                    info1.Stb_Base() == info2.Stb_Base() &&
                    info1.Stb_Ofst() == info2.Stb_Ofst() &&
                    info1.Stb_Size() == info2.Stb_Size();
        case FIELD:
            return info1.Base_Id() == info2.Base_Id() && 
                    info1.Str_Ty_Idx() == info2.Str_Ty_Idx() &&
                    info1.Fld_Ofst() == info2.Fld_Ofst() &&
                    info1.Fld_Size() == info2.Fld_Size();
        case DEREF:
        case REF:
            return info1.Base_Id() == info2.Base_Id();
        case MALLOC:
            return info1.Linenum() == info2.Linenum();
        case KWN:
            return info1.Wn() == info2.Wn();
        case SPECIAL_PTR:
        case SPECIAL_OBJ:
        case VAL_HOLDER:
            return TRUE;
        default:
            FmtAssert(FALSE, ("unknown alias member kind"));
      }
    }
    return FALSE;
  }

  BOOL Verify() {
    switch (Kind()) {
      case REG:
      {
        if (Preg_Id() == 0) {
          FmtAssert(FALSE, ("wrong base preg id"));
          return FALSE;
        }
        break;
      }
      case SYM:
      {
        if (Sym() == NULL) {
          FmtAssert(FALSE, ("wrong base sym"));
          return FALSE;
        }
        break;
      }
      case MALLOC:
      {
/*        if (Linenum() == 0) {
          FmtAssert(FALSE, ("wrong line num")); 
          return FALSE;
        }*/
        break;
      }
      case FIELD:
      {
        if (Base_Id() == ILLEGAL_ALIAS_ID || Str_Ty_Idx() == 0 || Fld_Size() == 0) {
          FmtAssert(FALSE, ("wrong field info")); 
          return FALSE;
        }
        break;
      }
      case DEREF:
      case REF:
      {
        if (Base_Id() == ILLEGAL_ALIAS_ID) {
          FmtAssert(FALSE, ("wrong base id"));         
          return FALSE;
        }
        break;
      }
      case KWN:
      {
        if (Wn() == NULL) {
          FmtAssert(Wn() != NULL, ("wrong base wn"));
          return FALSE;
        }
        break;
      }
      case SPECIAL_PTR:
      case SPECIAL_OBJ:
      case VAL_HOLDER:
        break;
      default:
        FmtAssert(FALSE, ("unknown alias member kind"));
    }    
    
    return TRUE;
  }
  
  void Print(FILE *fp = TFile) {
    switch (Kind()) {
      case SYM:
      {
        fprintf(fp, "SYM, ");
        fprintf(fp, "sym: %s, ", ST_name(Sym()));
        fprintf(fp, "base_st: %s, ", ST_name(Stb_Base()));
        fprintf(fp, "ofst: %lld, ", Stb_Ofst());
        fprintf(fp, "size: %lld, ", Stb_Size());
        fprintf(fp, "root_id: %d\n", Root_Id());
        break;
      	}
      case REG:
      {
        fprintf(fp, "REG, ");
        fprintf(fp, "base_preg: %d\n", Preg_Id());
        break;
      }
      case MALLOC:
      {
        fprintf(fp, "MALLOC, ");
        fprintf(fp, "linenum: %d\n", Srcpos_To_Line(Linenum()));
        break;
      }
      case FIELD:
      {
        fprintf(fp, "FIELD, ");
        fprintf(fp, "base_id: %d, ", Base_Id());
        fprintf(fp, "struct_ty: %s, ", TY_name(Str_Ty_Idx()));
        fprintf(fp, "ofst: %lld, ", Fld_Ofst());
        fprintf(fp, "size: %lld, ", Fld_Size());
        fprintf(fp, "root_id: %d\n", Root_Id());
        break;
      }
      case DEREF:
      {
        fprintf(fp, "DEREF, ");
        fprintf(fp, "base_id: %d, ", Base_Id());
        fprintf(fp, "root_id: %d\n", Root_Id());
        break;
      }
      case REF:
      {
        fprintf(fp, "REF, ");
        fprintf(fp, "base_id: %d ", Base_Id());
        fprintf(fp, "root_id: %d\n", Root_Id());
        break;
      }
      case SPECIAL_PTR:
      {
        fprintf(fp, "SPECIAL PTR\n");
        break;
      }
      case SPECIAL_OBJ:
      {
        fprintf(fp, "SPECIAL OBJ\n");
        break;
      }
      case KWN:
      {
        fprintf(fp, "KWN: %s\n", OPCODE_name(WN_opcode(Wn())));
        break;
      }
      case VAL_HOLDER:
      {
        fprintf(fp, "VAL HOLDER\n");
        break;
      }
      default: 
        FmtAssert(FALSE, ("wrong kind"));
    }
  }
};

typedef enum {
  ASSIGNMENT,
  DEREFERENCE,
} EDGE_TYPE;

namespace boost
{
  enum vertex_alias_id_t { vertex_alias_id };
  BOOST_INSTALL_PROPERTY(vertex, alias_id);

  enum vertex_live_t { vertex_live };
  BOOST_INSTALL_PROPERTY(vertex, live);

  enum vertex_vset_t {vertex_vset};
  BOOST_INSTALL_PROPERTY(vertex, vset);
    ;
  enum edge_alias_t { edge_alias };
  BOOST_INSTALL_PROPERTY(edge, alias);
}

using namespace boost;
typedef property < vertex_index_t, INT,
        property < vertex_alias_id_t, ALIAS_ID, 
        property < vertex_live_t, INT, 
        property < vertex_vset_t, void* > > > >                 VertexProperty;
typedef property < edge_alias_t, EDGE_TYPE >                    EdgeProperty;
typedef adjacency_list<
                  listS,
                  vecS,
                  bidirectionalS,
                  VertexProperty,
                  EdgeProperty >                                PROG_EXP_GRAPH;
typedef graph_traits<PROG_EXP_GRAPH>::vertex_descriptor         Vertex;
typedef graph_traits<PROG_EXP_GRAPH>::vertex_iterator           Vertex_Iter;
typedef graph_traits<PROG_EXP_GRAPH>::edge_descriptor           Edge;
typedef graph_traits<PROG_EXP_GRAPH>::edge_iterator             Edge_Iter;
typedef graph_traits<PROG_EXP_GRAPH>::out_edge_iterator         Out_Edge_Iter;
typedef graph_traits<PROG_EXP_GRAPH>::in_edge_iterator          In_Edge_Iter;
typedef property_map<PROG_EXP_GRAPH, vertex_alias_id_t>::type   Vertex_Alias_Map;
typedef property_map<PROG_EXP_GRAPH, vertex_index_t>::type      Vertex_Index_Map;
typedef property_map<PROG_EXP_GRAPH, vertex_live_t>::type       Vertex_Live_Map;
typedef property_map<PROG_EXP_GRAPH, vertex_vset_t>::type       Vertex_Vset_Map;
typedef property_map<PROG_EXP_GRAPH, edge_alias_t>::type        Edge_Alias_Map;

enum INVALID_VERTEX {
  ILLEGAL_VERTEX = 0,	// this aux_id is always invalid
};

class Alias_Analysis_Manager {

  // types used to construct alias ids
  typedef vector<ALIAS_ID>                            ID_CHAIN;
  typedef ID_CHAIN::iterator                          ID_CHAIN_ITER;
  typedef pair<ALIAS_ID, ALIAS_ID>                    ID_PAIR;

  // types used to represent reachable ids
  typedef BS                                          ID_SET; 
  typedef struct {
    BOOL complete;
    ID_SET *set;
  } ID_RSET;
  
  // types used to represent constraints
  typedef pair<ALIAS_ID, ALIAS_ID>                    CONSTRAINT;
  typedef vector<CONSTRAINT>                          CONSTRAINT_VEC;
  typedef CONSTRAINT_VEC::iterator                    CONSTRAINT_ITER;

  // types used in PEG building
  typedef map<ALIAS_ID, Vertex>                       ID2V_MAP;
  typedef ID2V_MAP::iterator                          ID2V_ITER;
  typedef map<Vertex, Vertex>                         V2V_MAP;
  typedef V2V_MAP::iterator                           V2V_ITER;

  // types used in PEG symplification
  typedef vector<Vertex>                              VTX_VEC;
  typedef VTX_VEC::iterator                           VTX_ITER;
  typedef VTX_VEC::reverse_iterator                   VTX_RTER;
  typedef vector<VTX_VEC>                             VTX_CLASS;
  typedef VTX_CLASS::iterator                         VCLASS_ITER;
  
  // types are used in demand-driven alias analysis using CFL-reachability 
  typedef enum { 
    S_INVALID = 0x0,
    S1 = 0x01, 
    S2 = 0x02, 
    S3 = 0x04, 
    S4 = 0x08, 
  } AUTOMATON_STATE;
  typedef INT8 ATMTS_FLAG_TYPE;

  enum INVALID_ATMTS_FLAG {
    ILLEGAL_ATMT_FLAG = 0,
  };
 
  typedef pair<Vertex, Vertex>                        V_PAIR;  
  typedef pair<V_PAIR, AUTOMATON_STATE>               WORKITEM;
  typedef map<V_PAIR, ATMTS_FLAG_TYPE>                WORKLIST;  

  typedef pair<Vertex, AUTOMATON_STATE>               REACHELEM;
  typedef less<Vertex>                                COMP_VTX;
  typedef map<Vertex, ATMTS_FLAG_TYPE, COMP_VTX, mempool_allocator
             <pair<Vertex, ATMTS_FLAG_TYPE> > >       REACHSET;
  typedef REACHSET::iterator                          REACHITER;
  typedef map<Vertex, REACHSET>                       REACHSET_MAP;
  typedef REACHSET_MAP::iterator                      REACHSET_ITER;
  
  typedef BS                                          VSET;
  typedef map<Vertex, VSET*>                          ALIASET_MAP;
  typedef ALIASET_MAP::iterator                       ALIASET_ITER;

  #define Overlapped_Range(b1, e1, b2, e2)  (b1 <= b2 && e1 > b2 || b2 < b1 && e2 > b1)
  #define min(a, b)                                   (a < b? a: b)
  #define max(a, b)                                   (a > b? a: b)
public:
    
  Alias_Analysis_Manager();
  Alias_Analysis_Manager(WN *region, OPT_STAB *opt_stab, MEM_POOL *pool);
  void Analyze();
  BOOL Aliased(ALIAS_ID id1, ALIAS_ID id2);
  ALIAS_ID Get_Wn_Alias_Id(WN *wn);
  ALIAS_ID Get_St_Alias_Id(ST *st);
  ALIAS_ID Get_Reg_Alias_Id(WN_OFFSET preg_id);
  ALIAS_ID Find_Dereference_Id(ALIAS_ID id);
  ALIAS_ID Find_Addr_Id(ALIAS_ID id);
  BOOL Verify_Wn_Alias_Id(OPERATOR opr, ALIAS_ID id);
  void Print(FILE *fp = TFile);

private:
  WN *_region;
  OPT_STAB *_opt_stab;
  MEM_POOL *_gpool;     // used for memory use in alias member info, constraints;
  MEM_POOL _lpool;      // used only for demand driven cfl-reachability

  // switch variables to control program analysis methodology
  BOOL _fld_sensitive;
  INT _k_limit; 
  BOOL _coarse_trace;
  BOOL _deep_trace;

  // basic data structures to represent program representation and constraints
  ALIAS_ID _global_obj_alias_id;            // global alias id for ptr
  ALIAS_ID _global_ptr_alias_id;            // global ptr id for obj
  vector<ALIAS_MEMBER_INFO> _alias_members; // used to store alias member info for each vertex
  INT _prog_member_count;                   // the count of alias members which really appear in program
  map<ST*, ALIAS_ID> _st2id_map;            // the map from st* to its alias id
  map<WN_OFFSET, ALIAS_ID> _preg2id_map;    // the map from preg id to its alias id
  map<UINT64, ALIAS_ID> _linenum2id_map;    // the map from linenum of malloc to alas id
  map<WN*, ALIAS_ID> _wn2id_map;            // map from wn to its alias id
  map<ALIAS_ID, ID_CHAIN*> _id_chain;       // the _id_chain is used to link all the alias member info related to one symbol

  map<WN*, BOOL> _wn2pty_map;             // map to record whether wn hold a pointer or non-pointer
  ID_CHAIN _escaped_parms;                // the alias ids which escaped becaused of function call  
  CONSTRAINT_VEC _constraints;            // the set of constraint

  // used in program expression graph building
  PROG_EXP_GRAPH  _prog_exp_g;            // the graph built and saved to do demand-driven alias analysis
  ID2V_MAP _id2v_map;                     // map from alias id to vertex of prog_exp_g graph
  V2V_MAP _deref_edges;                   // dereference edges

  // used in demand driven alias analysis  
  WORKLIST _worklist;                     // worklist used in CFL reachability analysis
  REACHSET_MAP _reach_map;                // map from vertex to its reach set
  ALIASET_MAP _alias_map;                 // map from vertex to its alias member set

  // used to do one-level flow alias analysis
  map<VSET*, Vertex> _valholder_map;      // map from the value group to the representative val holder node
  
  // used to cache alias anlaysis results
  map<ID_PAIR, BOOL> _alias_cache;        // map used to cache alias analysis result
  map<ALIAS_ID, ID_RSET> _reach_cache;    // map used to cache reached ids
    
  WN* Region()          { return _region;}
  OPT_STAB* Opt_stab()  { return _opt_stab; }
  MEM_POOL* Pool() { return _gpool; }
  BOOL Fld_Sensitive() { return _fld_sensitive; }
  INT K_Limit() { return _k_limit; } 
  BOOL C_Trace()          { return _coarse_trace; }
  BOOL D_Trace()          { return _deep_trace; }

  // help functions to access alias info
  ALIAS_ID Global_Ptr_Id()   { return _global_ptr_alias_id; }
  ALIAS_ID Global_Obj_Id()   { return _global_obj_alias_id; }
  ALIAS_ID First_Id()        { return 2; }
  ALIAS_ID Last_Id()         { return First_Id() + _prog_member_count - 1; }
  ALIAS_ID New_Id()          { return _alias_members.size(); }
     
  void Set_Id(ST *st, ALIAS_ID id)           { _st2id_map[st] = id; }
  void Set_Id(UINT64 linenum, ALIAS_ID id)   { _linenum2id_map[linenum] = id; }
  void Set_Id(WN_OFFSET preg_id, ALIAS_ID id){ _preg2id_map[preg_id] = id;}
  void Set_Id(WN *wn, ALIAS_ID id)           { _wn2id_map[wn] = id; }
  
  ALIAS_ID Find_Id(ST *st) {
    if (_st2id_map.find(st) == _st2id_map.end())
      return ILLEGAL_ALIAS_ID;
    return _st2id_map[st];
  }
  ALIAS_ID Find_Id(UINT64 linenum) {
    if (_linenum2id_map.find(linenum) == _linenum2id_map.end())
      return ILLEGAL_ALIAS_ID;
    return _linenum2id_map[linenum];
  }
  ALIAS_ID Find_Id(WN_OFFSET preg_id) {
    if (_preg2id_map.find(preg_id) == _preg2id_map.end())
      return ILLEGAL_ALIAS_ID;
    return _preg2id_map[preg_id];
  }
  ALIAS_ID Find_Id(WN *wn) {
    if (_wn2id_map.find(wn) == _wn2id_map.end())
      return ILLEGAL_ALIAS_ID;
    return _wn2id_map[wn];
  }
  ALIAS_ID Find_Id(ALIAS_MEMBER_INFO info);
  ALIAS_MEMBER_INFO& Get_Alias_Info(ALIAS_ID id) {
    FmtAssert(id != ILLEGAL_ALIAS_ID && id <= _alias_members.size(), ("wrong id"));
    return _alias_members[id];
  }
  ST* Get_Base_Sym(ALIAS_ID id) { return Get_Alias_Info(id).Sym(); }
  ALIAS_ID Get_Base_Id(ALIAS_ID id) { return Get_Alias_Info(id).Base_Id(); }
  ALIAS_ID Get_Root_Id(ALIAS_ID id) { return Get_Alias_Info(id).Root_Id(); }
  ALIAS_MEMBER_KIND Get_Alias_Kind(ALIAS_ID id) { return Get_Alias_Info(id).Kind(); }
  BOOL Has_Lvalue(ALIAS_ID id) { return Get_Alias_Info(id).Has_Lvalue(); }
  BOOL Lead_Id_Chain(ALIAS_ID id) { return Get_Alias_Info(id).Lead_Id_Chain(); }
  void Init_Id_Chain(ALIAS_ID id) {
    FmtAssert(_id_chain.find(id) == _id_chain.end(), ("redundant initialization for id chain"));
    _id_chain[id] = new ID_CHAIN;
    _id_chain[id]->push_back(id);
  }
  ID_CHAIN_ITER Id_Chain_Begin(ALIAS_ID id) {
    ALIAS_ID root_id = Get_Root_Id(id);
    FmtAssert(Lead_Id_Chain(root_id), ("wrong alias member kind"));
    FmtAssert(_id_chain.find(root_id) != _id_chain.end(), ("id chain not init"));
    return _id_chain[root_id]->begin();
  }
  ID_CHAIN_ITER Id_Chain_End(ALIAS_ID id) {
    ALIAS_ID root_id = Get_Root_Id(id);
    FmtAssert(Lead_Id_Chain(root_id), ("wrong alias member kind"));
    FmtAssert(_id_chain.find(root_id) != _id_chain.end(), ("id chain not init"));
    return _id_chain[root_id]->end();
  }
  void Add_To_Id_Chain(ALIAS_ID id, ALIAS_ID root_id)  {
    FmtAssert(Lead_Id_Chain(root_id), ("wrong alias member kind"));
    _id_chain[root_id]->push_back(id);
  }

  // utility used in alias analysis
  BOOL WN_has_aux(WN *wn);
  AUX_ID WN_aux(WN *wn);
  ST * Get_Wn_St(WN *wn);
  BOOL Ty1_Include_Ty2 (TY_IDX ty1, TY_IDX ty2);
  BOOL Callee_Returns_New_Memory(WN *call_wn);
  BOOL Stmt_stores_return_value(WN *stmt);
  BOOL Sym_Content_Escaped(ST *st);
  BOOL Sym_Location_Escaped(ST* st);
  ST * Get_Sym_Base(ST *st);
  BOOL Preg_Home_Wn(WN *unknown_wn);
  ALIAS_ID Analyze_Preg_Alias_Id(WN *wn);
  BOOL WN_Has_Alias_Id(WN *wn);
  BOOL Is_Fortran_Stable_Pointer(ALIAS_ID id, WN* parm);

  // the following 4 functions are dealing with pointer type, 
  // hope that pointer type can be implemented as basic type in WN later
  void Set_Wn_Hold_Pointer(WN *wn) { _wn2pty_map[wn] = TRUE; }
  void Set_Wn_Hold_Non_Pointer(WN *wn) { _wn2pty_map[wn] = FALSE; }  
  BOOL Wn_Hold_Pointer(WN *wn) {        // return TRUE if wn MAY hold a pointer
    if (_wn2pty_map.find(wn) != _wn2pty_map.end())
      return _wn2pty_map[wn] == TRUE;
    return FALSE;
  }
  BOOL Wn_Hold_Non_Pointer(WN *wn) {    // return TRUE if wn MUST NOT hold a pointer
    if (_wn2pty_map.find(wn) != _wn2pty_map.end())
      return _wn2pty_map[wn] == FALSE;
    return FALSE;
  }

  // the following functions are used to build alias members 
  ALIAS_ID New_Member(ALIAS_MEMBER_INFO info);
  ALIAS_ID New_Dereference(ALIAS_ID id);
  ALIAS_ID New_Addr(ALIAS_ID id);
  BOOL Add_Constraint(ALIAS_ID to_id, ALIAS_ID from_id);
  ALIAS_ID Handle_Expr(WN *expr);
  void Handle_Assignment(WN *stmt);
  void Handle_Call(WN *call);
  void Handle_Func(WN *func);
  void Handle_Rgn(WN *rgn);
  void Build_Constraints_Rec(WN *wn);
  void Add_Escaped_Parm(ALIAS_ID pid);
  void Build_Constraints_For_Escaped_Parms ();  
  void Build_Constraints_For_STB();
  void Build_Constraints(WN *wn);
 
  // the following functions are used to build and simplify graph expression graph
  INT Pegv_Up_Bound()  { return 2*Last_Id(); }
  ID2V_ITER Get_Peg_Vertex(ALIAS_ID id)  { return _id2v_map.find(id); }
  void Set_Peg_Vertex(ALIAS_ID id, Vertex vertex)  { _id2v_map[id] = vertex; }
  ID2V_ITER Get_Peg_VEnd()    { return _id2v_map.end(); }
  ID2V_ITER Get_Peg_VBegin()  { return _id2v_map.begin(); } 
  ALIAS_ID  Get_Pegv_Id(Vertex v) { return get(get(vertex_alias_id, _prog_exp_g), v); }
  void Set_Pegv_Id(Vertex v, ALIAS_ID id) { put(get(vertex_alias_id, _prog_exp_g), v, id); }
  BOOL Live_Peg_Vertex(Vertex v)  { return get(get(vertex_live, _prog_exp_g), v); }
  void Set_Pegv_Live(Vertex v) { put(get(vertex_live, _prog_exp_g), v, 1); }
  void Reset_Pegv_Live(Vertex v) { put(get(vertex_live, _prog_exp_g), v, 0); }
  Vertex Get_Live_Pegv(Vertex dead_vtx) { return Get_Peg_Vertex(Get_Pegv_Id(dead_vtx))->second; }
  VSET* Get_Pegv_Valset(Vertex v) { return (VSET*)get(get(vertex_vset, _prog_exp_g), v); }
  void Set_Pegv_Valset(Vertex v, VSET* vset) {put(get(vertex_vset, _prog_exp_g), v, vset); }
  Vertex Find_Dereference(Vertex v) { 
    if (_deref_edges.find(v) == _deref_edges.end())
      return ILLEGAL_VERTEX;
    else
      return _deref_edges[v];
  }
  Vertex Find_Addr(Vertex v) {
    for (V2V_ITER itr = _deref_edges.begin(); itr != _deref_edges.end(); itr++) {
      if (itr->second == v)
        return itr->first;
    }
    return ILLEGAL_VERTEX;
  }
  Vertex New_Peg_Vertex(ALIAS_ID id);
  void Del_Peg_Vertex(Vertex v);
  BOOL New_Peg_Edge(Vertex from_v, Vertex to_v, EDGE_TYPE type);
  void Del_Peg_Edge(Vertex from_v, Vertex to_v);
  void Add_D_Edge(Vertex v, Vertex dv);
  BOOL Add_D_Edge(ALIAS_ID id);
  BOOL Add_A_Edge(ALIAS_ID to_id, ALIAS_ID from_id);
  void Redirect_A_Edges(Vertex v1, Vertex v2);
  void Redirect_D_Edges(Vertex v1, Vertex v2);
  void Build_PEG();
  Vertex Get_Assign_From(Vertex v, BOOL need_init);
  Vertex Get_Assign_To(Vertex v, BOOL need_init);
  Vertex Merge_Pegvs(Vertex v1, Vertex v2);
  void Merge_Pegvs_Up(Vertex v1, Vertex v2);
  Vertex Merge_Pegvs_Thr(Vertex v1, Vertex v2);
  void Merge_Vtx_Class(VTX_CLASS& vcs);
  INT Classify_Pegvs(map<Vertex, INT>& map, VTX_VEC& container);
  void Simplify_PEG();
  void Clear_PEG();
    
  // demand alias analysis, using CFL reachability analysis
  BOOL Has_ATMT_State(ATMTS_FLAG_TYPE sflag, AUTOMATON_STATE s)     { return sflag & s; }
  void Set_ATMT_State(ATMTS_FLAG_TYPE& sflag, AUTOMATON_STATE s)    { sflag = sflag | s; }
  void Reset_ATMT_State(ATMTS_FLAG_TYPE& sflag, AUTOMATON_STATE s ) { sflag = sflag & ~s; }
  AUTOMATON_STATE Take_ATMT_State(ATMTS_FLAG_TYPE& sflag);
  WORKITEM Take_Workitem();
  void Add_Workitem(WORKITEM item, WORKLIST& worklist);
  
  VSET* Find_Alias_Set(Vertex v) {
    if (_alias_map.find(v) == _alias_map.end()) {
      return NULL;
    } else
      return _alias_map[v];
  }
  VSET* Get_Alias_Set(Vertex v) {
    if (_alias_map.find(v) == _alias_map.end()) {
      VSET *aliaset = New_Vset(&_lpool);
      _alias_map[v] = aliaset;
    } 
    return _alias_map[v];
  }
  REACHSET& Get_Reach_Set(Vertex v) {
    if (_reach_map.find(v) == _reach_map.end()) {
      REACHSET reachset(COMP_VTX(), &_lpool);
      _reach_map[v] = reachset;
    } 
    return _reach_map[v];
  }
  void Init_Worklist() { _worklist.clear(); }
  void Init_Reach_Map() { _reach_map.clear(); }
  void Init_Alias_Map() { _alias_map.clear(); }
  void Delete_Worklist() {  _worklist.clear(); }
  void Delete_Reach_Map() {
    _reach_map.clear(); 
  }
  void Delete_Alias_Map() {
    _alias_map.clear(); 
  }
  
  REACHELEM Get_Reach_Elem(REACHSET& reachset, BOOL need_init);
  BOOL Add_Reach_Elem(REACHSET& reachset, Vertex s, AUTOMATON_STATE c);
  void Propagate(Vertex n, Vertex s, AUTOMATON_STATE c);
  BOOL Overlapped_Fld(ALIAS_ID id1, ALIAS_ID id2);
  BOOL CFL_Reachable(ALIAS_ID id1, ALIAS_ID id2);

  // implementation of one level flow demand driven alias anlaysis
  // which is also based on cfl reachability
  BOOL Vset_Inclusive(VSET *set, Vertex v) { return FBS_MemberP_Validate(set, v); }
  void Vset_Add(VSET *set, Vertex v) { FBS_Union1D_Validate(set, v);}
  void Vset_Copy(VSET *set1, VSET *set2) { FBS_Copy_Validate(set1, set2); }
  void Vset_Union(VSET *set1, VSET *set2)  { FBS_UnionD_Validate(set1, set2); } 
  void Vset_Difference(VSET *set1, VSET *set2) { FBS_DifferenceD_Validate(set1, set2); }
  VSET* New_Vset(MEM_POOL *pool) { return BS_Create_Empty(Pegv_Up_Bound(), pool); }
  #define  FOR_ALL_VSET(set, v) \
            for(v = BS_Choose(set); v != (Vertex)BS_CHOOSE_FAILURE; v = BS_Choose_Next(set, v)) 
  
  VSET* Init_Pegv_Vset(Vertex v) {
    VSET* set = Get_Pegv_Valset(v);
    if (set == NULL) {
      set = New_Vset(Pool());
      Vset_Add(set, v);
      Set_Pegv_Valset(v, set);
      return set;
    } else
      return set;
  }
 
  BOOL Same_Val_Set(Vertex v1, Vertex v2) {
    VSET *set1 = Get_Pegv_Valset(v1);
    VSET *set2 = Get_Pegv_Valset(v2);
    if (set1 != NULL && set2 != NULL && set1 == set2)
      return TRUE;
    else
      return FALSE;
  }
  BOOL Vert_Inc_Val_Set(Vertex dv1, Vertex dv2) {
    if (Find_Dereference(Find_Valholder(dv1)) == dv2 ||
        Find_Dereference(Find_Valholder(dv2)) == dv1)
      return TRUE;
    else
      return FALSE;
  }

  BOOL Is_Valholder(Vertex v) {
    VSET *set = Get_Pegv_Valset(v);
    if (set != NULL && Find_Valholder(set) == v)
      return TRUE;
    else
      return FALSE;
  }
  
  Vertex Find_Valholder(Vertex v) {
    VSET* set = Get_Pegv_Valset(v);
    if (set != NULL) {
      return Find_Valholder(set);
    } else
      return v;
  }
  Vertex Find_Valholder(VSET *set) {
    if(_valholder_map.find(set) == _valholder_map.end())
      return ILLEGAL_VERTEX;
    else
      return _valholder_map[set];
  }
  Vertex Init_Valholder(VSET *set) {
    if (_valholder_map.find(set) == _valholder_map.end()) {
      // alias member for valholder can be ignored, now left for easy debugging
      ALIAS_ID vh_id = New_Member(ALIAS_MEMBER_INFO(VAL_HOLDER));
      Vertex vh = New_Peg_Vertex(vh_id);
      Set_Pegv_Valset(vh, set);
      Add_A_Edges_For_Valholder(vh, set);
      Vertex v;
      FOR_ALL_VSET(set, v)
        Merge_Pegvs_Up(vh, v);
      return vh;
    } else 
      return _valholder_map[set];
  }
  void Set_Valholder(VSET *set, Vertex v) { _valholder_map[set] = v; }
  void Del_Valholder(VSET *set) { _valholder_map.erase(set); }

  void Add_A_Edges_For_Valholder(Vertex vh, VSET *set);
  void Update_A_Edges_For_Valholder(Vertex vh, VSET *set);
  VSET* Union_Val_Set(VSET * set1, VSET * set2);
  void Union_Up(Vertex v1, Vertex v2); 
  BOOL Olf_CFL_Reachable(ALIAS_ID id1, ALIAS_ID id2);
  
  // cache can be used to reduce alias analysis time
  BOOL Find_In_Acache(ALIAS_ID id1, ALIAS_ID id2)  { 
    ID_PAIR pair(min(id1, id2), max(id1, id2));
    return _alias_cache.find(pair) != _alias_cache.end(); 
  }
  void Add_To_Acache(ALIAS_ID id1, ALIAS_ID id2, BOOL aliased) {
    ID_PAIR pair(min(id1, id2), max(id1, id2));
    _alias_cache[pair] = aliased;
  }
  BOOL Aliased_By_Acache(ALIAS_ID id1, ALIAS_ID id2) { 
    ID_PAIR pair(min(id1, id2), max(id1, id2));
    return _alias_cache[pair]; 
  }

  BOOL Idset_Inclusive(ID_SET *set, ALIAS_ID id) { return FBS_MemberP_Validate(set, id); }
  void Idset_Add(ID_SET *set, ALIAS_ID id) { FBS_Union1D_Validate(set, id);}
  ID_SET* New_Idset(MEM_POOL *pool) { return BS_Create_Empty(Last_Id() + 1, pool); }

  BOOL Find_In_Rcache(ALIAS_ID id) { return _reach_cache.find(id) != _reach_cache.end(); }
  BOOL Reachable_By_Rcache(ALIAS_ID id1, ALIAS_ID id2) {
    ID_SET* idset1 = _reach_cache.find(id1) == _reach_cache.end()? NULL : _reach_cache[id1].set;
    if (idset1 != NULL && Idset_Inclusive(idset1, id2))
      return TRUE;

    return FALSE;
  }
/*
  BOOL Unreachable_By_Rcache(ALIAS_ID id1, ALIAS_ID id2) {
    BOOL known = _reach_cache.find(id1) == _reach_cache.end()? FALSE : _reach_cache[id1].complete;
    if (known && !Idset_Inclusive(_reach_cache[id1].set, id2))
      return TRUE;
    else
      return FALSE;
  }*/
  BOOL Rcache_Complete(ALIAS_ID id) { 
    return _reach_cache.find(id) == _reach_cache.end()? FALSE : _reach_cache[id].complete;
  }
  void Set_Rcache_Complete(ALIAS_ID id) {
    FmtAssert(Find_In_Rcache(id), ("not rcached"));
    _reach_cache[id].complete = TRUE;
  }
  void Add_To_Rcache(ALIAS_ID id1, ALIAS_ID id2) {
    if (id1 > Last_Id() || id2 > Last_Id())
      return;

    ID_SET* idset1 = _reach_cache.find(id1) == _reach_cache.end()? NULL : _reach_cache[id1].set;
    if (idset1 == NULL) {
      idset1 = New_Idset(Pool());
      ID_RSET rset;
      rset.complete = FALSE;
      rset.set = idset1;
      _reach_cache[id1] = rset;
    }
    Idset_Add(idset1, id2);
  }
  void Cache_CFL_Reach(Vertex v, BOOL complete);
    
  void Dump_Region(FILE *fp = TFile);
  void Dump_Constraints(FILE *fp = TFile);
  void Dump_Prog_Exp_Graph(FILE *fp = TFile);
  void Dump_Vtx_Class(VTX_CLASS& vcx, FILE *fp = TFile);
  void Dump_Peg_Scc(VTX_CLASS& sccs, FILE *fp = TFile);
  void Dump_Tplgc(VTX_VEC& cntnr, FILE *fp = TFile);
  void Dump_Alias(FILE *fp = TFile);
  void Dump_Valholder(Vertex v, FILE *fp = TFile);

  #define Trace_STB(sti, fp)                          if(C_Trace()) Dump_STB(sti, fp)
  #define Trace_Region(fp)                            if(C_Trace()) Dump_Region(fp)
  #define Trace_Constraints(fp)                       if(C_Trace()) Dump_Constraints(fp)
  #define Trace_Prog_Exp_Graph(fp)                    if(C_Trace()) Dump_Prog_Exp_Graph(fp)
  #define Trace_Vtx_Class(vcs, fp)                    if(C_Trace()) Dump_Vtx_Class(vcs, fp);
  #define Trace_Peg_Scc(sccs, fp)                     if(C_Trace()) Dump_Peg_Scc(sccs, fp)
  #define Trace_Tplgc(cntnr, fp)                      if(C_Trace()) Dump_Tplgc(cntnr, fp)
  #define Trace_Alias(fp)                             if(C_Trace()) Dump_Alias(fp)
  #define Trace_Valholder(vh, fp)                     if(D_Trace()) Dump_Valholder(vh, fp)
  #define Trace_Peg_Smpl_P2(fp, s, n1, n2)            if(C_Trace()) fprintf(fp, s, n1, n2)
  #define Trace_Peg_Merge_P2(fp, s, n1, n2)           if(D_Trace()) fprintf(fp, s, n1, n2)
  #define Trace_CFL_Reach_P1(fp, s, n1)               if(D_Trace()) fprintf(fp, s, n1)
  #define Trace_CFL_Reach_P2(fp, s, n1, n2)           if(D_Trace()) fprintf(fp, s, n1, n2)
  #define Trace_CFL_Reach_P3(fp, s, n1, n2, n3)       if(D_Trace()) fprintf(fp, s, n1, n2, n3)
  #define Trace_CFL_Reach(fp, s)                      if(D_Trace()) fprintf(fp, s)
  #define Trace_Alias_Analysis(fp, s)                 if(D_Trace()) fprintf(fp, s)

};

BOOL
Alias_Analysis_Manager::WN_Has_Alias_Id(WN *wn) {
  OPERATOR opr = WN_operator(wn);
  return (OPERATOR_is_expression(opr) || OPERATOR_is_store(opr));
}

ALIAS_ID
Alias_Analysis_Manager::Analyze_Preg_Alias_Id(WN *wn) {
  FmtAssert(WN_Has_Alias_Id(wn), ("wn has no alias id"));
  FmtAssert(WN_operator(wn) == OPR_LDID && ST_sclass(Get_Wn_St(wn)) == SCLASS_REG, ("not preg wn"));
  return New_Member(ALIAS_MEMBER_INFO(WN_offset(wn)));
}

BOOL
Alias_Analysis_Manager::Preg_Home_Wn(WN *unknown_wn) {
  if (WN_operator(unknown_wn) == OPR_LDID) {
    if (ST_sclass(Get_Wn_St(unknown_wn)) == SCLASS_REG)
      return TRUE;
  }
  return FALSE;
}

BOOL
Alias_Analysis_Manager::Callee_Returns_New_Memory(WN *call_wn) { // copied from AC
    if (WN_Call_Does_Mem_Alloc(call_wn))
      return TRUE;
    if (WN_operator(call_wn) == OPR_CALL) {
      ST *st = Get_Wn_St(call_wn);
      if ((strcmp("malloc", ST_name(st)) == 0) ||
	  (strcmp("alloca", ST_name(st)) == 0) ||
	  (strcmp("calloc", ST_name(st)) == 0) ||
          (strcmp("_F90_ALLOCATE", ST_name(st)) == 0) ||
          WOPT_Enable_Disambiguate_Heap_Obj && PU_has_attr_malloc (Pu_Table[ST_pu(st)])) {
        return TRUE;
      }
    }
    return FALSE;
}

BOOL
Alias_Analysis_Manager::WN_has_aux(WN* wn) {
  OPERATOR opr = WN_operator(wn);
  return (OPERATOR_is_scalar_load(opr) ||
          OPERATOR_is_scalar_store(opr) ||
          opr == OPR_LDA);
}

AUX_ID
Alias_Analysis_Manager::WN_aux(WN *wn) {
  return (AUX_ID) WN_st_idx(wn);
}

ST*
Alias_Analysis_Manager::Get_Wn_St(WN *wn) {
#if 1
  if (WN_has_aux(wn)) {
    AUX_ID aux_id = WN_aux(wn);
    return Opt_stab()->St(aux_id);
  } else {
    return WN_st(wn);
  }
#else
  return WN_st(wn);
#endif
}

BOOL
Alias_Analysis_Manager::Ty1_Include_Ty2 (TY_IDX ty1, TY_IDX ty2)
{
  if (TY_IDX_index(ty1) == TY_IDX_index(ty2)) {
    return TRUE;
  }

  // if the type is array, use element type instead 
  while (TY_kind(ty1) == KIND_ARRAY)
    ty1 = TY_AR_etype (ty1);

  while (TY_kind(ty2) == KIND_ARRAY)
    ty2 = TY_AR_etype (ty2);
   
  if (TY_kind(ty1) != KIND_STRUCT || TY_kind(ty2) != KIND_STRUCT) {
    // not applicable 
    Is_True (FALSE, ("The parameter passed to Ty1_Include_Ty2() should be aggregate type"));
    return FALSE;
  }

  if (TY_fld(ty1).Is_Null()) {
    // structure has no fields, e.g some iterators in C++, 
    // ANSI C type rule is not applicable to this situation
    return TRUE;
  }

  FLD_ITER iter = Make_fld_iter (FLD_HANDLE (Ty_Table[ty1].Fld ()));
  do {
    TY_IDX field_ty = (*iter).type;

    Is_True (TY_IDX_index(field_ty) != 0, 
             ("Invalid type of field in strucure of type %d", (INT)ty1));
      
    if (TY_IDX_index(field_ty) == TY_IDX_index(ty2)) {
      return TRUE;
    }

    while (TY_kind(field_ty) == KIND_ARRAY)
	field_ty = TY_AR_etype (field_ty);

    if (TY_kind(field_ty) == KIND_STRUCT && Ty1_Include_Ty2 (field_ty, ty2)) {
        return TRUE;
    }
  } while (!FLD_last_field (iter++));

  return FALSE;
}

BOOL
Alias_Analysis_Manager::Stmt_stores_return_value(WN *stmt) { // copied form AC
    WN *rhs = WN_kid0(stmt);

    return (OPCODE_is_store(WN_opcode(stmt)) &&
            (WN_operator(rhs) == OPR_LDID) &&
	    (ST_sclass(Get_Wn_St(rhs)) == SCLASS_REG) &&
            Preg_Is_Dedicated(WN_offset(rhs)));
}
  
BOOL
Alias_Analysis_Manager::Sym_Content_Escaped(ST *st) {
    FmtAssert(st!= NULL, ("Null st"));
    switch (ST_sclass(st)) {
      case SCLASS_FORMAL:
      case SCLASS_FORMAL_REF:
      case SCLASS_PSTATIC:
      case SCLASS_FSTATIC:
      case SCLASS_EXTERN:
      case SCLASS_UGLOBAL:
      case SCLASS_DGLOBAL:
      case SCLASS_COMMON:
      case SCLASS_UNKNOWN:
      case SCLASS_TEXT:
        return TRUE;
      case SCLASS_AUTO:
      case SCLASS_REG:
        if (ST_IDX_level(ST_st_idx(st)) == CURRENT_SYMTAB)
          return FALSE;
        else
          return TRUE;
      default:
        FmtAssert(FALSE, ("to be implemented"));
    }
}

BOOL
Alias_Analysis_Manager::Sym_Location_Escaped(ST* st) {
    FmtAssert(st!= NULL, ("Null st"));
    switch (ST_sclass(st)) {
      case SCLASS_PSTATIC:
      case SCLASS_FSTATIC:
      case SCLASS_EXTERN:
      case SCLASS_UGLOBAL:
      case SCLASS_DGLOBAL:
      case SCLASS_COMMON:
      case SCLASS_UNKNOWN:
      case SCLASS_TEXT:
        return TRUE;
      case SCLASS_AUTO:
      case SCLASS_REG:
      case SCLASS_FORMAL:
      case SCLASS_FORMAL_REF:
        if (ST_IDX_level(ST_st_idx(st)) == CURRENT_SYMTAB)
          return FALSE;
        else
          return TRUE;
      default:
        FmtAssert(FALSE, ("to be implemented"));
    }
}

ST *
Alias_Analysis_Manager::Get_Sym_Base(ST *st) {
    if (ST_sclass(st) == SCLASS_REG || 
      ST_sclass(st) == SCLASS_TEXT || 
      ST_sclass(st) == SCLASS_FORMAL ||
      ST_sclass(st) == SCLASS_UNKNOWN ||
      (ST_class(st) == CLASS_BLOCK && STB_merge(st))) {
      return st;
    }

    ST *tmpbase = st;
    while (ST_base(tmpbase) != tmpbase) {
      if (ST_class(tmpbase) == CLASS_BLOCK && STB_merge(tmpbase)) {
        return tmpbase;
      }
      ST_SCLASS sclass = ST_sclass(tmpbase);    
      FmtAssert(sclass != SCLASS_FORMAL && sclass != SCLASS_UNKNOWN && sclass != SCLASS_TEXT, 
        ("wrong sclass"));

      tmpbase = ST_base(tmpbase);
    }
    return tmpbase;
}

BOOL
Alias_Analysis_Manager::Is_Fortran_Stable_Pointer(ALIAS_ID id, WN* wn_parm) {
  if (id != ILLEGAL_ALIAS_ID && PU_src_lang(Get_Current_PU()) == PU_F90_LANG) { // copy from AC
    WN *parm = WN_kid0(wn_parm);
    const TY_IDX ty = WN_ty(parm);
    if ((TY_kind(ty) == KIND_POINTER) && 
	(TY_kind(TY_pointed(ty)) != KIND_POINTER) &&	// Not a Cray pointer
	!TY_is_f90_pointer(ty)) {			// Not an f90 pointer
      if ((WN_operator(parm) == OPR_LDA) || (WN_operator(parm) == OPR_LDMA)) {
	const ST *const st = Get_Wn_St(parm);
	if (!ST_is_f90_target(st))
          return TRUE;
      } else
	return TRUE;
    }
  }
  return FALSE;
}
  
ALIAS_ID
Alias_Analysis_Manager::Find_Id(ALIAS_MEMBER_INFO info) {
  switch (info.Kind()) {
    case SYM:
    {
        ALIAS_ID id = Find_Id(info.Sym());
        ALIAS_ID root_id = Find_Id(info.Stb_Base());
        if (id != ILLEGAL_ALIAS_ID) {
          return id;
        } else if (root_id != ILLEGAL_ALIAS_ID) {
          ID_CHAIN_ITER itr0 = Id_Chain_Begin(root_id);
          ID_CHAIN_ITER itrn = Id_Chain_End(root_id);
          while(itr0 != itrn) {
            if (Get_Alias_Info(*itr0) == info)
              return *itr0;
            itr0 ++;
          }
          return ILLEGAL_ALIAS_ID;
        } else
          return ILLEGAL_ALIAS_ID;
    }
    case REG:
      return Find_Id(info.Preg_Id());
    case MALLOC:
      return Find_Id(info.Linenum());
    case FIELD:
    case REF:
    case DEREF:
    {
      ID_CHAIN_ITER itr0 = Id_Chain_Begin(info.Root_Id());
      ID_CHAIN_ITER itrn = Id_Chain_End(info.Root_Id());
      while(itr0 != itrn) {
        if (Get_Alias_Info(*itr0) == info)
          return *itr0;
        itr0 ++;
      }
      return ILLEGAL_ALIAS_ID;
    }
    case KWN:
      return Find_Id(info.Wn());
    case SPECIAL_OBJ:
    case SPECIAL_PTR:
    case VAL_HOLDER:
      return ILLEGAL_ALIAS_ID;
    default:
      FmtAssert(FALSE, ("unknown info kind"));  
  }
}

ALIAS_ID
Alias_Analysis_Manager::Find_Dereference_Id(ALIAS_ID id) {
  ALIAS_MEMBER_INFO info = Get_Alias_Info(id);
  switch (info.Kind()) {
    case SPECIAL_PTR:
      return Global_Obj_Id();
    case REF:
      return info.Base_Id();
    case SYM:
    case REG:
    case FIELD:
    case DEREF:
    case KWN:
    case VAL_HOLDER:
    {
      ALIAS_MEMBER_INFO deref_info(id, DEREF, info.Root_Id());
      return Find_Id(deref_info);
    }
    case MALLOC:
    case SPECIAL_OBJ:
      return ILLEGAL_ALIAS_ID;
    default:
      FmtAssert(FALSE, ("wrong id"));
  }
}

ALIAS_ID
Alias_Analysis_Manager::Find_Addr_Id(ALIAS_ID id) {
  ALIAS_MEMBER_INFO info = Get_Alias_Info(id);
  switch (info.Kind()) {
    case DEREF:
      return info.Base_Id();
    case SYM:
    case MALLOC:
    {
      ALIAS_MEMBER_INFO addr_info(id, REF, info.Root_Id());
      return Find_Id(addr_info); 
    }
    case SPECIAL_OBJ:
      return Global_Ptr_Id();
    case REG:
    case REF:
    case FIELD:
    case SPECIAL_PTR:
    case KWN:
    case VAL_HOLDER:
      return ILLEGAL_ALIAS_ID;
    default:
      FmtAssert(FALSE, ("wrong alias id"));
  }
}

ALIAS_ID
Alias_Analysis_Manager::New_Member(ALIAS_MEMBER_INFO info) {
  // check whether info is legal
  if (!info.Verify()) {
    FmtAssert(FALSE, ("illegal alias info"));
    return ILLEGAL_ALIAS_ID;
  }
  
  // check whether it has been added
  ALIAS_ID id = Find_Id(info);
  if (id != ILLEGAL_ALIAS_ID) 
    return id;

  // maintain id chain and maps
  id = New_Id();
  switch (info.Kind()) {
    case SYM: 
    {
      ALIAS_ID root_id = Find_Id(info.Stb_Base());
      if (root_id != ILLEGAL_ALIAS_ID) {
        info.Set_Root_Id(root_id);
        Add_To_Id_Chain(id, root_id);
      } else {
        info.Set_Root_Id(id);
        Init_Id_Chain(id);
        Set_Id(info.Stb_Base(), id);
      }
      _alias_members.push_back(info);
       
      ST *st = info.Sym(); 
      if (Sym_Content_Escaped(st)) {
        Add_Constraint(id, Global_Ptr_Id());      // the escaped sym can point to any object
      }
      
      if(Sym_Location_Escaped(st)) {
        ALIAS_ID addr_id = New_Member(ALIAS_MEMBER_INFO(id, REF, info.Root_Id()));
        Add_Constraint(Global_Ptr_Id(), addr_id); // the escaped sym can be addr-taken and
                                                  // can be pointed by global ptr
      }

      break;
    }
    case REG:
    {
      info.Set_Root_Id(id);
      Init_Id_Chain(id);
      Set_Id(info.Preg_Id(), id);
      _alias_members.push_back(info);
      break;
    }
    case MALLOC:
    {
      info.Set_Root_Id(id);
      Init_Id_Chain(id);
      Set_Id(info.Linenum(), id);
      _alias_members.push_back(info);
      break;
    }
    case FIELD:
    {
      ALIAS_ID base_id = info.Base_Id();
      Add_To_Id_Chain(id, info.Root_Id());
      _alias_members.push_back(info);
      Add_Constraint(id, base_id);   // if sp points to o, then sp.fi points to o
      break;
    }
    case REF:
    case DEREF:
    {
      Add_To_Id_Chain(id, info.Root_Id());
      _alias_members.push_back(info);
      break;
    }
    case KWN:
    {
      info.Set_Root_Id(id);
      Init_Id_Chain(id);
      _alias_members.push_back(info);
      break;
    }
    case SPECIAL_OBJ:
    case SPECIAL_PTR:
    case VAL_HOLDER:
    {
      info.Set_Root_Id(id);
      Init_Id_Chain(id);
      _alias_members.push_back(info);
      break;
    }
    default:
      FmtAssert(FALSE, ("unknown alias kind"));
  }

  return id;
}

ALIAS_ID
Alias_Analysis_Manager::New_Dereference(ALIAS_ID id) {
  ALIAS_MEMBER_INFO info = Get_Alias_Info(id);
  switch (info.Kind()) {
    case SPECIAL_PTR:
      return Global_Obj_Id();
    case REF:
      return info.Base_Id();
    case SYM:
    case REG:
    case FIELD:
    case DEREF:
    case KWN:
    case VAL_HOLDER:
    {
      ALIAS_MEMBER_INFO deref_info(id, DEREF, info.Root_Id());
      return New_Member(deref_info);
    }
    case MALLOC:
    case SPECIAL_OBJ:
      FmtAssert(FALSE, ("wrong alias kind"));
    default:
      FmtAssert(FALSE, ("unknown alias kind"));
  }
}

ALIAS_ID
Alias_Analysis_Manager::New_Addr(ALIAS_ID id) {
  ALIAS_MEMBER_INFO info = Get_Alias_Info(id);
  switch (info.Kind()) {
    case DEREF:
      return info.Base_Id();
    case SYM:
    case MALLOC:
    {
      ALIAS_MEMBER_INFO addr_info(id, REF, info.Root_Id());
      return New_Member(addr_info); 
    }
    case SPECIAL_OBJ:
      return Global_Ptr_Id();
    case REG:
    case REF:
    case FIELD:
    case SPECIAL_PTR:
    case VAL_HOLDER:
    case KWN:
      FmtAssert(FALSE, ("wrong alias kind"));
    default:
      FmtAssert(FALSE, ("unknown alias id"));
  }
}

BOOL
Alias_Analysis_Manager::Add_Constraint(ALIAS_ID to_id, ALIAS_ID from_id) {
  FmtAssert(to_id != ILLEGAL_ALIAS_ID && from_id != ILLEGAL_ALIAS_ID, ("illegal alias id"));

  if (to_id == from_id)
    return FALSE;
  
  CONSTRAINT new_constr(to_id, from_id);
  for (CONSTRAINT_ITER iter = _constraints.begin(); iter != _constraints.end(); iter++) {
    if (new_constr == *iter) {
      return FALSE;
    }
  }
  _constraints.push_back(new_constr);
  return TRUE;
}

ALIAS_ID
Alias_Analysis_Manager::Handle_Expr(WN *wn) {
  FmtAssert(WN_Has_Alias_Id(wn), ("wn has no alias id"));
  OPERATOR opr = WN_operator(wn); 
  ALIAS_ID id = ILLEGAL_ALIAS_ID;
  switch (opr) {
    case OPR_IDNAME:
    {
      ST *st = Get_Wn_St(wn);
      if (ST_class(st) == CLASS_PREG)
        id = New_Member(ALIAS_MEMBER_INFO(WN_offset(wn)));
      else
        id = New_Member(ALIAS_MEMBER_INFO(st));
      break;
    }
    case OPR_LDA:
    {
      id = New_Member(ALIAS_MEMBER_INFO(Get_Wn_St(wn)));
      ALIAS_ID root_id = Get_Root_Id(id);
      id = New_Member(ALIAS_MEMBER_INFO(id, REF, root_id));
      if (Fld_Sensitive() && WN_field_id(wn) != 0) {
        id = New_Member(ALIAS_MEMBER_INFO(id, WN_ty(wn), WN_field_id(wn), root_id));
      }

      Set_Wn_Hold_Pointer(wn);
      break;
    }
    case OPR_LDID:
    case OPR_STID:
    {
      ST *st = Get_Wn_St(wn);
      if (ST_class(st) == CLASS_PREG)
        id = New_Member(ALIAS_MEMBER_INFO(WN_offset(wn)));
      else
        id = New_Member(ALIAS_MEMBER_INFO(st));
      if (Fld_Sensitive() && WN_field_id(wn) != 0) {
        ALIAS_ID root_id = Get_Root_Id(id);
        id = New_Member(ALIAS_MEMBER_INFO(id, REF, root_id));
        id = New_Member(ALIAS_MEMBER_INFO(id, WN_ty(wn), WN_field_id(wn), root_id));
        id = New_Member(ALIAS_MEMBER_INFO(id, DEREF, root_id));
      }

      if (TY_kind(WN_ty(wn)) == KIND_POINTER)
        Set_Wn_Hold_Pointer(wn);
      break;
    }
    case OPR_LDBITS:
    case OPR_STBITS:
    {
      // TODO: deal with bit field
      ALIAS_ID id;
      ST *st = Get_Wn_St(wn);
      if (ST_class(st) == CLASS_PREG)
        id = New_Member(ALIAS_MEMBER_INFO(WN_offset(wn)));
      else
        id = New_Member(ALIAS_MEMBER_INFO(st));

      if (TY_kind(WN_ty(wn)) == KIND_POINTER)
        Set_Wn_Hold_Pointer(wn);
      break;
    }
    case OPR_ILOAD:
    case OPR_MLOAD:
    case OPR_ISTORE:
    case OPR_MSTORE:
    {
      WN *base = OPERATOR_is_load(opr)? WN_kid0(wn): WN_kid1(wn);
      ALIAS_ID base_id = Handle_Expr (base);
      FmtAssert(base_id != ILLEGAL_ALIAS_ID, ("no base id found"));
      ALIAS_ID root_id = Get_Root_Id(base_id);
      if (Fld_Sensitive() && WN_field_id(wn) != 0) {
        base_id = New_Member(ALIAS_MEMBER_INFO(base_id, WN_ty(wn), WN_field_id(wn), root_id));
      } 

      if (Get_Alias_Kind(base_id) == REF)
        id = Get_Base_Id(base_id);
      else
        id = New_Member(ALIAS_MEMBER_INFO(base_id, DEREF, root_id));

      if (TY_kind(WN_object_ty(wn)) == KIND_POINTER)
        Set_Wn_Hold_Pointer(wn);
      break;
    }
    case OPR_ILDBITS:
    case OPR_ISTBITS:
    {
      // TODO: deal with bit field
      WN *base = OPERATOR_is_load(opr)? WN_kid0(wn): WN_kid1(wn);
      ALIAS_ID base_id = Handle_Expr (base);
      FmtAssert(base_id != ILLEGAL_ALIAS_ID, ("no base id found"));
      ALIAS_ID root_id = Get_Root_Id(base_id);
      if (Get_Alias_Kind(base_id) == REF)
        id = Get_Base_Id(base_id);
      else
        id = New_Member(ALIAS_MEMBER_INFO(base_id, DEREF, root_id));

      if (TY_kind(WN_object_ty(wn)) == KIND_POINTER)
        Set_Wn_Hold_Pointer(wn);
      
      break;
    }
    case OPR_ADD:
    case OPR_SUB:
    {
      WN *kid1 = WN_kid0(wn);
      WN *kid2 = WN_kid1(wn);
      ALIAS_ID id1 = Handle_Expr(kid1);  // for address like: p+n, p+1
      ALIAS_ID id2 = Handle_Expr(kid2);
      BOOL pointer1 = Wn_Hold_Pointer(kid1);
      BOOL pointer2 = Wn_Hold_Pointer(kid2);
      BOOL non_pointer1 = Wn_Hold_Non_Pointer(kid1);
      BOOL non_pointer2 = Wn_Hold_Non_Pointer(kid2);
      
      if (pointer1 && pointer2) {
        id = New_Member(ALIAS_MEMBER_INFO(wn));
        Add_Constraint(id, id1);
        Add_Constraint(id, id2);
        Set_Wn_Hold_Pointer(wn);
      } else if (non_pointer1 && non_pointer2) {
        id = ILLEGAL_ALIAS_ID;
        Set_Wn_Hold_Non_Pointer(wn);
      } else if (pointer1 || non_pointer2) {
        FmtAssert(id1 != ILLEGAL_ALIAS_ID, ("no legal alias id found for pointer"));
        id = id1;
        Set_Wn_Hold_Pointer(wn);
      } else if (pointer2 || non_pointer1) {
        FmtAssert(id2 != ILLEGAL_ALIAS_ID, ("no legal alias id found for pointer"));
        id = id2;
        Set_Wn_Hold_Pointer(wn);
      } else if (Wn_Hold_Non_Pointer(wn)) {
        id = ILLEGAL_ALIAS_ID;
      } else {
        FmtAssert(id1 != ILLEGAL_ALIAS_ID && id2 != ILLEGAL_ALIAS_ID, ("no legal alias id found"));
        id = New_Member(ALIAS_MEMBER_INFO(wn));
        Add_Constraint(id, id1);
        Add_Constraint(id, id2);
      }

      break;
    }
    case OPR_ABS:
    case OPR_SQRT:
    case OPR_RSQRT:
    case OPR_RECIP:
    case OPR_REALPART:
    case OPR_IMAGPART:
    case OPR_RND:
    case OPR_TRUNC:
    case OPR_CEIL:
    case OPR_FLOOR:
    case OPR_BNOT:
    case OPR_LNOT:
    case OPR_COMPLEX:
    case OPR_MPY:   
    case OPR_DIV:
    case OPR_MOD:
    case OPR_REM:
    case OPR_MAX:
    case OPR_MIN:
    case OPR_EQ:
    case OPR_NE:
    case OPR_GE:
    case OPR_GT:
    case OPR_LE:
    case OPR_LT:
//    case OPR_BAND:
    case OPR_BIOR:
    case OPR_BXOR:
    case OPR_LAND:
    case OPR_LIOR:
//    case OPR_SHL:
    case OPR_ASHR:
    case OPR_LSHR:
    case OPR_MADD:
    case OPR_MSUB:
    case OPR_NMADD:
    case OPR_NMSUB:
    case OPR_CVT:
    case OPR_CVTL:
    {
      id = ILLEGAL_ALIAS_ID;
      for (UINT i = 0; i < WN_kid_count(wn); i++) {
        WN *kid = WN_kid(wn, i);
        Set_Wn_Hold_Non_Pointer(kid);
        Handle_Expr(kid);
      }  
      Set_Wn_Hold_Non_Pointer(wn);
      break;
    }
    case OPR_ARRAY:
    {
      id = Handle_Expr(WN_kid0(wn));
      for (UINT i = 0; i < WN_kid_count(wn); i++) 
        Handle_Expr(WN_kid(wn, i));
      break;
    }
    case OPR_INTCONST:
    case OPR_CONST:
    {
//      id = Global_Ptr_Id();
      id = ILLEGAL_ALIAS_ID;
      Set_Wn_Hold_Non_Pointer(wn);
      break;
    }
    case OPR_ALLOCA:
    {
      ALIAS_ID base_id = New_Member(ALIAS_MEMBER_INFO(WN_linenum(wn)));
      id = New_Member(ALIAS_MEMBER_INFO(base_id, REF, base_id));
      break;
    }
    case OPR_PARM:
    {
      id = Handle_Expr(WN_kid0(wn));
      
      if (id != ILLEGAL_ALIAS_ID && WN_Parm_By_Reference(wn))
          New_Dereference(id);
      break;
    }
    default:
    {
      if (Wn_Hold_Non_Pointer(wn)) {
        for (UINT i = 0; i < WN_kid_count(wn); i++) {
          Handle_Expr(WN_kid(wn, i));
        } 
      } else {
        id = New_Member(ALIAS_MEMBER_INFO(wn));
        for (UINT i = 0; i < WN_kid_count(wn); i++) {
          ALIAS_ID kid_id = Handle_Expr(WN_kid(wn, i));
          if (kid_id != ILLEGAL_ALIAS_ID)
            Add_Constraint(id, kid_id);
        }
      }
    }
  }

  if (id != ILLEGAL_ALIAS_ID)
    Set_Id(wn, id);
  return id;
}

void
Alias_Analysis_Manager::Handle_Assignment(WN *stmt) {
  FmtAssert(OPERATOR_is_store(WN_operator(stmt)), ("assignment is not store"));
  if (Find_Id(stmt) != ILLEGAL_ALIAS_ID)
    return;
  WN *lhs = stmt;
  WN *rhs = WN_kid0(stmt);
  ALIAS_ID idl = Handle_Expr(lhs);
  ALIAS_ID idr = Handle_Expr(rhs);
  if (idl != ILLEGAL_ALIAS_ID && idr != ILLEGAL_ALIAS_ID)
    Add_Constraint(idl, idr);
}

void
Alias_Analysis_Manager::Handle_Call(WN *call) {
  OPERATOR call_opr = WN_operator(call);
  if (call_opr == OPR_INTRINSIC_CALL && INTRN_has_no_side_effects(WN_intrinsic(call)))
    return;

  INT parm_num = 0;
  if (call_opr == OPR_ICALL) {
    parm_num = WN_kid_count(call) - 1;
    Handle_Expr(WN_kid(call, parm_num));
  } else
    parm_num = WN_kid_count(call);

  for (UINT i = 0; i < parm_num; ++i) {
    WN *parm_wn = WN_kid(call, i);
    Is_True(WN_operator(parm_wn) == OPR_PARM, ("wrong parameter"));
    ALIAS_ID idp = Handle_Expr(parm_wn);
    if (idp != ILLEGAL_ALIAS_ID && !Is_Fortran_Stable_Pointer(idp, parm_wn)) {
      Add_Escaped_Parm(idp);
    }
  }

  ALIAS_ID idl, idr;
  if (Callee_Returns_New_Memory(call)) {
    idr = New_Member(ALIAS_MEMBER_INFO(WN_linenum(call)));
    idr = New_Member(ALIAS_MEMBER_INFO(idr, REF, idr));

    WN *stmt = WN_next(call);
    FmtAssert(Stmt_stores_return_value(stmt), 
              ("not expected stmt to store return value"));
    idl = Handle_Expr(stmt);
    Add_Constraint(idl, idr);
    FmtAssert(WN_next(stmt)==NULL || !Stmt_stores_return_value(WN_next(stmt)), 
              ("redundant store for return value"));;
  } else {
    WN *stmt = WN_next(call);
    while(stmt!=NULL && Stmt_stores_return_value(stmt)) {
      idl = Handle_Expr(stmt);
      Add_Constraint(idl, Global_Ptr_Id());
      stmt = WN_next(stmt);
    }
  }
}

void
Alias_Analysis_Manager::Handle_Func(WN * func) {
  for (UINT i = 0; i < WN_num_formals(func); i++) {
    ST *sym = Get_Wn_St(WN_formal(func, i));
    ALIAS_ID idf = New_Member(ALIAS_MEMBER_INFO(sym));
    Add_Constraint(idf, Global_Ptr_Id());
  }

  WN* body = WN_func_body(func);
  for ( WN *stmt = WN_first(body); stmt; stmt = WN_next(stmt) )
    Build_Constraints_Rec(stmt);
}

void
Alias_Analysis_Manager::Handle_Rgn(WN * rgn) {
  for ( UINT i = 0; i < WN_kid_count(rgn); i++ )
    Build_Constraints_Rec (WN_kid(rgn, i));
}

void
Alias_Analysis_Manager::Build_Constraints_Rec(WN *wn) {
  OPERATOR opr = WN_operator(wn);
  if ( opr == OPR_FUNC_ENTRY) {
    Handle_Func(wn);
  } else if ( opr == OPR_REGION ) {
    Handle_Rgn(wn);
  } else if ( opr == OPR_BLOCK ) {
    for (WN *stmt = WN_first(wn); stmt; stmt = WN_next(stmt) ) {
      Build_Constraints_Rec(stmt);
    }
  } else if (OPERATOR_is_store(opr)) {
    Handle_Assignment(wn);
  } else if (OPERATOR_is_call(opr)) {
    Handle_Call(wn);
  } else if (OPERATOR_is_expression(opr)) {
    Handle_Expr(wn);
  } else if (OPERATOR_is_black_box(opr)){
    return;
  } else {
    for ( INT32 i = 0; i < WN_kid_count( wn ); i++ )
      Build_Constraints_Rec(WN_kid(wn, i));
  }
}

void
Alias_Analysis_Manager::Add_Escaped_Parm(ALIAS_ID pid) {
  for (ID_CHAIN_ITER itr = _escaped_parms.begin(); itr != _escaped_parms.end(); itr++) {
    if (*itr == pid)
      return;
  }
  _escaped_parms.push_back(pid);
}

void
Alias_Analysis_Manager::Build_Constraints_For_Escaped_Parms () {
  for (ID_CHAIN_ITER itr = _escaped_parms.begin(); itr != _escaped_parms.end(); itr++) {
    ALIAS_ID did = Find_Dereference_Id(*itr);
    if (did != ILLEGAL_ALIAS_ID)
      Add_Constraint(did, Global_Ptr_Id());
  }
}

void
Alias_Analysis_Manager::Build_Constraints_For_STB() {
  vector<STB_INFO> sti_vec;
  map<ST*, ALIAS_ID>::iterator sitr, sitrn;
  sitr = _st2id_map.begin();
  sitrn = _st2id_map.end();
  while (sitr != sitrn) {
    ST *st_base = sitr->first;
    ALIAS_ID root_id = sitr->second;
      ID_CHAIN_ITER itr = Id_Chain_Begin(root_id);
      ID_CHAIN_ITER itrn = Id_Chain_End(root_id);
      while(itr != itrn) {
        ALIAS_ID id = *itr;
        if (Get_Alias_Kind(id) != SYM) {
          itr++;
          continue;
        }
        STB_INFO stb = Get_Alias_Info(id).Stb_Info();
        ID_CHAIN_ITER itr1 = itr+1;
        while(itr1 != itrn) {
          ALIAS_ID id1 = *itr1;
          if (Get_Alias_Kind(id1) != SYM) {
            itr1++;
            continue;
          }
          STB_INFO stb1 = Get_Alias_Info(id1).Stb_Info();
          if (Overlapped_Range(stb.ofst, stb.ofst+stb.size, stb1.ofst, stb1.ofst+stb1.size)) {
            ALIAS_ID addr = New_Addr(id);
            ALIAS_ID addr1 = New_Addr(id1);
            Add_Constraint(addr, addr1);
            Add_Constraint(addr1, addr);
          }
          itr1++;
        }
        itr ++;
      }
    sitr++;
  }
}

void
Alias_Analysis_Manager::Build_Constraints(WN *wn) {
  _alias_members.push_back(ALIAS_MEMBER_INFO());  // this is for INLLEGAL_ALIAS_ID
  _alias_members.push_back(ALIAS_MEMBER_INFO());  // this is for MESS_ALIAS_ID
  _global_obj_alias_id = New_Member(ALIAS_MEMBER_INFO(SPECIAL_OBJ));
  _global_ptr_alias_id = New_Member(ALIAS_MEMBER_INFO(SPECIAL_PTR));
  Add_Constraint(_global_obj_alias_id, _global_ptr_alias_id);
  Build_Constraints_Rec(wn);
  Build_Constraints_For_Escaped_Parms();
  Build_Constraints_For_STB();
  _prog_member_count = _alias_members.size()-2;
 
  Trace_Region(TFile);
  Trace_Constraints(TFile);
}

Vertex
Alias_Analysis_Manager::New_Peg_Vertex(ALIAS_ID id) {
  ID2V_ITER iv = Get_Peg_Vertex(id);
  if (iv != Get_Peg_VEnd())
    return iv->second;

  Vertex v = add_vertex(_prog_exp_g);
  Set_Pegv_Live(v);
  Set_Pegv_Id(v, id);
  Set_Pegv_Valset(v, NULL);
  Set_Peg_Vertex(id, v);
  return v;
}

void
Alias_Analysis_Manager::Del_Peg_Vertex(Vertex v) {
  // delete all v-related edges
  clear_vertex(v, _prog_exp_g);
  // donot really remove here, which will destroy the vertex value
  // instead we mark the vertex not live, and release the memory when needed
  Reset_Pegv_Live(v);
}

BOOL
Alias_Analysis_Manager::New_Peg_Edge(Vertex from_v, Vertex to_v, EDGE_TYPE type) {
  Edge e;
  BOOL find = FALSE;
  tie(e, find) = edge(from_v, to_v, _prog_exp_g);
  if (!find)
    add_edge(from_v, to_v, type, _prog_exp_g);
  return !find;
}

void
Alias_Analysis_Manager::Del_Peg_Edge(Vertex from_v, Vertex to_v) {
  remove_edge(from_v, to_v, _prog_exp_g);
}

BOOL
Alias_Analysis_Manager::Add_A_Edge(ALIAS_ID to_id, ALIAS_ID from_id) {
  Vertex from_v = Get_Peg_Vertex(from_id)->second;
  Vertex to_v = Get_Peg_Vertex(to_id)->second;
  return New_Peg_Edge(from_v, to_v, ASSIGNMENT);
}

void
Alias_Analysis_Manager::Add_D_Edge(Vertex v, Vertex dv) {
  FmtAssert(v != dv, ("wrong deref edge added"));
  _deref_edges[v] = dv;
}

BOOL
Alias_Analysis_Manager::Add_D_Edge(ALIAS_ID id) {
  Vertex v = Get_Peg_Vertex(id)->second;
  if (_deref_edges.find(v) == _deref_edges.end()) {
    ALIAS_ID did =Find_Dereference_Id(id);
    if (did != ILLEGAL_ALIAS_ID) {
      Vertex dv = Get_Peg_Vertex(did)->second;
      Add_D_Edge(v, dv);
      return TRUE;
    }
  }
  return FALSE;
}

void
Alias_Analysis_Manager::Redirect_A_Edges(Vertex v1, Vertex v2) {
  // copy all the edges
  Out_Edge_Iter oei, oei_end;
  VTX_VEC tos;
  for (tie(oei, oei_end) = out_edges(v2, _prog_exp_g); oei != oei_end; ++oei) {
    Vertex v2_to = target(*oei, _prog_exp_g);
    if (v2_to != v1)
      tos.push_back(v2_to);
  }

  for (INT i = 0; i < tos.size(); i++) {
    New_Peg_Edge(v1, tos[i], ASSIGNMENT);
    Del_Peg_Edge(v2, tos[i]);
  }

  In_Edge_Iter iei, iei_end;
  VTX_VEC froms;
  for (tie(iei, iei_end) = in_edges(v2, _prog_exp_g); iei != iei_end; ++iei) {
    Vertex v2_from = source(*iei, _prog_exp_g);
    if (v2_from != v1)
      froms.push_back(v2_from);
  }

  for (INT i = 0; i < froms.size(); i ++) {
    New_Peg_Edge(froms[i], v1, ASSIGNMENT);
    Del_Peg_Edge(froms[i], v2);
  }

}

void
Alias_Analysis_Manager::Redirect_D_Edges(Vertex v1, Vertex v2) {
  VTX_VEC froms;
  for (V2V_ITER itr = _deref_edges.begin(); itr != _deref_edges.end(); itr++) {
    if (v2 == itr->second)
      froms.push_back(itr->first);    
  }

  // redirect all *-->v2 to *-->v1
  for (INT i = 0; i < froms.size(); i++)
    _deref_edges[froms[i]] = v1;

  // erase all v2-->*
  _deref_edges.erase(v2);
}

void
Alias_Analysis_Manager::Build_PEG() {
  // make ILLEGAL_ALIAS_ID map to the ILLEGAL_VERTEX
  Vertex v0 = New_Peg_Vertex(ILLEGAL_ALIAS_ID);
  FmtAssert(v0 == ILLEGAL_VERTEX, ("illegal vertex !=0"));
  
  // add all the vertex into program expression graph for all the alias members
  for (ALIAS_ID id = First_Id(); id <= Last_Id(); id++) 
    New_Peg_Vertex(id);

  // build dereference edges
  for (ALIAS_ID id = First_Id(); id <= Last_Id(); id++)
    Add_D_Edge(id);

  // build assignment edges here
  for (CONSTRAINT_ITER iter = _constraints.begin(); iter != _constraints.end(); iter++)
    Add_A_Edge(iter->first, iter->second);
  
  Trace_Prog_Exp_Graph(TFile);
}

Vertex
Alias_Analysis_Manager::Merge_Pegvs(Vertex v1, Vertex v2) {
  FmtAssert(Live_Peg_Vertex(v1) && Live_Peg_Vertex(v2), ("vertex not live"));
  Trace_Peg_Merge_P2(TFile, "Pegv Merge: %d, %d\n", Get_Pegv_Id(v1), Get_Pegv_Id(v2));
  
  if (v1 == v2)
    return v1;

  // copy v2 related edges onto v1
  Redirect_A_Edges(v1, v2);
  Redirect_D_Edges(v1, v2);

  // copy v2 related id2peg map to v1
  ID2V_ITER itr = Get_Peg_VBegin();
  ID2V_ITER itrn = Get_Peg_VEnd();
  while (itr != itrn) {
    if (itr->second == v2)
      Set_Peg_Vertex(itr->first, v1);
    itr++;
  }

  // delete v2 from _prog_exp_g
  Del_Peg_Vertex(v2);  

  return v1;
}

void
Alias_Analysis_Manager::Merge_Pegvs_Up(Vertex v1, Vertex v2) {
  FmtAssert(v1 != ILLEGAL_VERTEX && v2 != ILLEGAL_VERTEX, ("wrong vertex"));

  if (v1 == v2)
    return;
  
  // the dereference of field should also be merged
  Vertex dv2 = Find_Dereference(v2);
  if (dv2 != ILLEGAL_VERTEX) {
    Vertex dv1 = Find_Dereference(v1);
    if (dv1 == ILLEGAL_VERTEX) {
      Add_D_Edge(v1, dv2);
    } else {
      Merge_Pegvs_Thr(dv1, dv2);
    }
  }
}

Vertex
Alias_Analysis_Manager::Merge_Pegvs_Thr(Vertex v1, Vertex v2) {
  FmtAssert(Live_Peg_Vertex(v1) && Live_Peg_Vertex(v2), ("vertex not live"));
  if (Find_Dereference(v1) != v2 && Find_Dereference(v2) == v2)
    Merge_Pegvs_Up(v1, v2);
  return Merge_Pegvs(v1, v2);
}

void
Alias_Analysis_Manager::Merge_Vtx_Class(VTX_CLASS& vcs) {
  // merge vertex in each vector
  for ( VCLASS_ITER citr = vcs.begin(); citr != vcs.end(); citr++) {
    VTX_VEC vc = *citr;
    if (vc.size() <= 1) 
      continue;    
    VTX_ITER vitr = vc.begin();
    Vertex v1 = *vitr;
    if (!Live_Peg_Vertex(v1)) 
      v1 = Get_Live_Pegv(v1);
    for (vitr++; vitr != vc.end(); vitr++) {
      if (Live_Peg_Vertex(*vitr))
        Merge_Pegvs_Thr(v1, *vitr);
    }
  }

}

INT
Alias_Analysis_Manager::Classify_Pegvs(map<Vertex, INT>& vtx_class, VTX_VEC& container) {
  INT count = 0;
  for (VTX_RTER rtr = container.rbegin(); rtr != container.rend(); rtr ++) {
    Vertex v = *rtr;
    if (Find_Addr(v) != ILLEGAL_VERTEX) {
      vtx_class[v] = count;
      count++;
    } else if (in_degree(v, _prog_exp_g) == 0 || Get_Alias_Kind(Get_Pegv_Id(v)) == FIELD) {
      vtx_class[v] = count;
      count++;
    } else {
      BOOL pure = TRUE;
      Vertex s_v = Get_Assign_From(v, TRUE);
      FmtAssert(vtx_class.find(s_v) != vtx_class.end(), ("not topological order"));
      INT pcount = vtx_class[s_v];
      for (s_v = Get_Assign_From(v, FALSE); s_v != ILLEGAL_VERTEX; s_v = Get_Assign_From(v, FALSE)) {
        FmtAssert(vtx_class.find(s_v) != vtx_class.end(), ("not topological order"));
        if (vtx_class[s_v] != pcount){
          pure = FALSE;
          break;
        }
      }
      if (pure)
        vtx_class[v] = pcount;
      else {
        vtx_class[v] = count;
        count ++;
      }
    }  
  }

  return count+1;
}

void
Alias_Analysis_Manager::Simplify_PEG() {
  // calculate strongly connected component
  map<Vertex, INT> component;
  INT num_scc = strong_components(_prog_exp_g,  make_assoc_property_map(component));
  VTX_CLASS sccs(num_scc);
  Vertex_Iter vi, vi_end;
  for (tie(vi, vi_end) = vertices(_prog_exp_g); vi != vi_end; vi++) {
    INT scc_id = component[*vi];
    sccs[scc_id].push_back(*vi);
  }
  Trace_Peg_Scc(sccs, TFile);

  // merge vertex in each scc
  Merge_Vtx_Class(sccs);

  Trace_Prog_Exp_Graph(TFile);

  // calculate sets of vertex which may have the same points-to set
  VTX_VEC container;
  topological_sort(_prog_exp_g, back_inserter(container));
  Trace_Tplgc(container, TFile);

  map<Vertex, INT> vtx_class;
  INT num_class = Classify_Pegvs(vtx_class, container);
  
  // collect all the vertex with same class into one vector and merge
  VTX_CLASS v_classes(num_class);
  for (tie(vi, vi_end) = vertices(_prog_exp_g); vi != vi_end; vi++) {
    Vertex v = *vi;
    FmtAssert(vtx_class.find(v) != vtx_class.end(), ("vertex not classified"));
    INT count = vtx_class[v];
    v_classes[count].push_back(v);
  }
  Trace_Vtx_Class(v_classes, TFile);

  // merge vertex in each class
  Merge_Vtx_Class(v_classes);

  Trace_Prog_Exp_Graph(TFile);
  Clear_PEG();
  Trace_Prog_Exp_Graph(TFile);
  
  return;
}

void
Alias_Analysis_Manager::Clear_PEG() {
  // step1 : remove all the dead vertex
  Vertex_Iter vtr, vtr_end;
  BOOL change = TRUE;
  INT deadv_num = 0;
  while (change) {
    tie(vtr, vtr_end) = vertices(_prog_exp_g);
    while(vtr != vtr_end) {
      change = FALSE;
      if (!Live_Peg_Vertex(*vtr)) {
        deadv_num++;
        remove_vertex(*vtr, _prog_exp_g);
        change = TRUE;
        break;
      }
      vtr++;
    }
  }

  if (deadv_num <=0)
    return;
  
  // step2: build the map from old vertex to new vertex
  V2V_MAP o2n_vmap;
  for (tie(vtr, vtr_end) = vertices(_prog_exp_g); vtr != vtr_end; vtr++) {
    Vertex nv = *vtr;
    Vertex ov = Get_Peg_Vertex(Get_Pegv_Id(nv))->second;
    FmtAssert(o2n_vmap.find(ov) == o2n_vmap.end(), ("wrong v2id map"));
    o2n_vmap[ov] = nv;
  }

  // step3: resume external storage of vertex
  // step3.1 renew _id2v_map
  ID2V_ITER itr = _id2v_map.begin(); 
  ID2V_ITER itr_end = _id2v_map.end();
  while(itr != itr_end) {
    itr->second = o2n_vmap[itr->second];
    itr++;
  }

  // step3.2 renew _deref_edges
  V2V_MAP new_derefs;
  V2V_ITER eitr = _deref_edges.begin();
  V2V_ITER eitr_end = _deref_edges.end();
  while(eitr != eitr_end) {
    Vertex nfirst = o2n_vmap[eitr->first];
    Vertex nsecond = o2n_vmap[eitr->second];
    new_derefs[nfirst] = nsecond;
    eitr++;
  }
  _deref_edges.clear();
  _deref_edges = new_derefs;

  // step3.3 resume _valholder_map
  map<VSET*, Vertex>::iterator mitr = _valholder_map.begin();
  map<VSET*, Vertex>::iterator mitr_end = _valholder_map.end();
  while(mitr != mitr_end) {
    VSET *set = mitr->first;
    VSET *nset = New_Vset(Pool());
    Vertex v;
    FOR_ALL_VSET(set, v) {
      if (Live_Peg_Vertex(v)) 
        Vset_Add(nset, o2n_vmap[v]);
    }
    Vset_Copy(set, nset);
    mitr->second = o2n_vmap[mitr->second];
    mitr++;
  }
}

Alias_Analysis_Manager::AUTOMATON_STATE
Alias_Analysis_Manager::Take_ATMT_State(ATMTS_FLAG_TYPE& sflag) {
  FmtAssert(sflag != ILLEGAL_ATMT_FLAG, (" no available state in workelem"));
  if (Has_ATMT_State(sflag, S1)) {
    Reset_ATMT_State(sflag, S1);
    return S1;
  } else if (Has_ATMT_State(sflag, S2)) {
    Reset_ATMT_State(sflag, S2);
    return S2;
  } else if (Has_ATMT_State(sflag, S3)) {
    Reset_ATMT_State(sflag, S3);
    return S3;
  } else if (Has_ATMT_State(sflag, S4)) {
    Reset_ATMT_State(sflag, S4);
    return S4;
  } else {
    FmtAssert(FALSE, ("wrong automaton state flag"));
  }  
}

Alias_Analysis_Manager::WORKITEM
Alias_Analysis_Manager::Take_Workitem() {
  V_PAIR apair= _worklist.begin()->first;
  ATMTS_FLAG_TYPE sflag = _worklist.begin()->second;
  AUTOMATON_STATE s = Take_ATMT_State(sflag);
  WORKITEM item(apair, s);
  if (sflag == ILLEGAL_ATMT_FLAG) 
    _worklist.erase(_worklist.begin());
  else
    _worklist.begin()->second = sflag;
  
  return item;
}

void
Alias_Analysis_Manager::Add_Workitem(WORKITEM item, WORKLIST& worklist) {
  V_PAIR apair = item.first;
  AUTOMATON_STATE s = item.second;
  if (worklist.find(apair) == worklist.end())
    worklist[apair] = s;
  else
    Set_ATMT_State(worklist[apair], s);
}

Alias_Analysis_Manager::REACHELEM
Alias_Analysis_Manager::Get_Reach_Elem(REACHSET& reachset, BOOL need_init) {
  static REACHITER ritr;
  static REACHITER ritrn;
  static ATMTS_FLAG_TYPE sflag;
  if (reachset.empty())
    return REACHELEM(ILLEGAL_VERTEX, S_INVALID);

  if (need_init) {
    ritr = reachset.begin();
    ritrn = reachset.end();
    sflag = ritr->second;
  }
  if (sflag == ILLEGAL_ATMT_FLAG) {
    ritr++;
    if (ritr == ritrn) 
      return REACHELEM(ILLEGAL_VERTEX, S_INVALID);
    else 
      sflag = ritr->second;
  }
  return REACHELEM(ritr->first, Take_ATMT_State(sflag));  
}

BOOL
Alias_Analysis_Manager::Add_Reach_Elem(REACHSET& reachset, Vertex s, AUTOMATON_STATE c) {
  REACHITER ritr = reachset.find(s);
  if(ritr == reachset.end()) {
    reachset[s] = c;
    return TRUE;
  } else if (!Has_ATMT_State(ritr->second, c)) {
    Set_ATMT_State(ritr->second, c);
    return TRUE;
  } else
    return FALSE;
}

Vertex
Alias_Analysis_Manager::Get_Assign_From(Vertex peg_v, BOOL need_init) {
  static In_Edge_Iter etr, etr_end;
  if (need_init) {
    tie(etr, etr_end) = in_edges(peg_v, _prog_exp_g);
  }
  if (etr != etr_end) {
    Vertex from_v = source(*etr, _prog_exp_g);
    etr++;
    return from_v;
  } else {
    return ILLEGAL_VERTEX;
  }
}
    
Vertex
Alias_Analysis_Manager::Get_Assign_To(Vertex peg_v, BOOL need_init) {
  static Out_Edge_Iter etr, etr_end;
  if (need_init) {
    tie(etr, etr_end) = out_edges(peg_v, _prog_exp_g);
  }
  if (etr != etr_end) {
    Vertex to_v = target(*etr, _prog_exp_g);
    etr++;
    return to_v;
  } else {
    return ILLEGAL_VERTEX;
  }
}

BOOL
Alias_Analysis_Manager::Overlapped_Fld(ALIAS_ID id1, ALIAS_ID id2) {
  ALIAS_MEMBER_INFO info1 = Get_Alias_Info(id1);
  ALIAS_MEMBER_INFO info2 = Get_Alias_Info(id2);
  FmtAssert (info1.Kind() == FIELD && info2.Kind() == FIELD, ("non field access"));
  TY_IDX ty1 = info1.Str_Ty_Idx();
  TY_IDX ty2 = info2.Str_Ty_Idx();
  return (ty1 != ty2 && (Ty1_Include_Ty2(ty1, ty2) || Ty1_Include_Ty2(ty2, ty1))) || 
              (ty1 == ty2 && Overlapped_Range(info1.Fld_Ofst(), info1.Fld_Ofst() + info1.Fld_Size(), 
              info2.Fld_Ofst(), info2.Fld_Ofst() + info2.Fld_Size()));

}

void
Alias_Analysis_Manager::Propagate(Vertex n, Vertex s, AUTOMATON_STATE c) {
  if (Fld_Sensitive()) {
    ALIAS_ID idn = Get_Pegv_Id(n);
    ALIAS_ID ids = Get_Pegv_Id(s);
    if (Get_Alias_Kind(idn) == FIELD && Get_Alias_Kind(ids) == FIELD && !Overlapped_Fld(idn, ids))
      return;
  }

  REACHSET& reach = Get_Reach_Set(n);
  if(Add_Reach_Elem(reach, s, c)) {
    WORKITEM item(V_PAIR(n, s), c);
    Add_Workitem(item, _worklist);
    Trace_CFL_Reach_P3(TFile, "%d reach %d at S%d\n", Get_Pegv_Id(s), Get_Pegv_Id(n), (int)log2((double)c)+1);
  }
}

BOOL
Alias_Analysis_Manager::CFL_Reachable(ALIAS_ID id1, ALIAS_ID id2) {
  Trace_CFL_Reach_P2(TFile, "check for %d and %d\n", id1, id2);

  Vertex v1 = Get_Peg_Vertex(id1)->second;
  Vertex v2 = Get_Peg_Vertex(id2)->second;
  
  // init main data structure
  MEM_POOL_Push(&_lpool);
  Init_Worklist();
  Init_Reach_Map();
  Init_Alias_Map();

  WORKITEM item(V_PAIR(v1, v1), S1);
  Add_Workitem(item, _worklist);

  // main loop for reachability analysis
  BOOL reached = FALSE;
  INT iter_num = 0;
  while (!_worklist.empty()) {
    iter_num ++;
    if (iter_num > K_Limit()) {
      reached = TRUE;
      Trace_CFL_Reach(TFile, "reached due to k-limit\n");
      break;
    }

    WORKITEM cur_item = Take_Workitem();
    Vertex n = cur_item.first.first;
    Vertex s = cur_item.first.second;
    AUTOMATON_STATE cur_state = cur_item.second;

    Trace_CFL_Reach_P3(TFile, "new round with %d, %d, at S%d\n", 
                        Get_Pegv_Id(n), Get_Pegv_Id(s), (int)log2((double)cur_state)+1);
    
    // check if destination has reached
    if ((s == v1 && n == v2) || (s == v2 && n == v1)) {
      Trace_CFL_Reach(TFile, "reached due to cfl\n");
      reached = TRUE;
      break;
    }

    // propagate info upward
    Vertex dn = Find_Dereference(n);
    Vertex ds = Find_Dereference(s);
    if (dn != ILLEGAL_VERTEX && ds != ILLEGAL_VERTEX && dn != ds) {
      Trace_CFL_Reach_P2(TFile, "up with %d, %d\n", Get_Pegv_Id(dn), Get_Pegv_Id(ds));
        
      VSET *set = Get_Alias_Set(ds);
      if (!Vset_Inclusive(set, dn)) {
        Vset_Add(set, dn);
        Propagate(dn, ds, S2);

        REACHSET& reach = Get_Reach_Set(ds);
        for (REACHELEM elem = Get_Reach_Elem(reach, TRUE); 
          elem != REACHELEM(ILLEGAL_VERTEX, S_INVALID);
          elem = Get_Reach_Elem(reach, FALSE)) {
          Vertex dsr = elem.first;
          AUTOMATON_STATE cr = elem.second;
          switch (cr) {
            case S1:
              Propagate(dn, dsr, S2);
              break;
            case S3:
              Propagate(dn, dsr, S4);
              break;
            default:
              break;
          }
        }
      }
    }
   
    // propagate reachability through value flows
    Trace_CFL_Reach_P1(TFile, "flow with %d\n", Get_Pegv_Id(n));
    
    switch (cur_state) {
      case S1:
      {
        for (Vertex m = Get_Assign_From(n, TRUE); m != ILLEGAL_VERTEX; 
            m = Get_Assign_From(n, FALSE))
          Propagate(m, s, S1);

        VSET* set = Find_Alias_Set(n);
        if (set != NULL) {
          Vertex v;
          FOR_ALL_VSET(set, v)
            Propagate(v, s, S2);
        }
        for (Vertex m = Get_Assign_To(n, TRUE); m != ILLEGAL_VERTEX;
            m = Get_Assign_To(n, FALSE))
          Propagate(m, s, S3);
 
        break;
      }
      case S2:
      {
        for (Vertex m = Get_Assign_From(n, TRUE); m != ILLEGAL_VERTEX; 
            m = Get_Assign_From(n, FALSE))
          Propagate(m, s, S1);
            
        for (Vertex m = Get_Assign_To(n, TRUE); m != ILLEGAL_VERTEX;
            m = Get_Assign_To(n, FALSE))
          Propagate(m, s, S3);
        
        break;
      }
      case S3:
      {
        for (Vertex m = Get_Assign_To(n, TRUE); m != ILLEGAL_VERTEX; 
            m = Get_Assign_To(n, FALSE))
          Propagate(m, s, S3);

        VSET* set = Find_Alias_Set(n);
        if (set != NULL) {
          Vertex v;
          FOR_ALL_VSET(set, v)
            Propagate(v, s, S4);
        }
    
        break;
      }
      case S4:
      {
        for (Vertex m = Get_Assign_To(n, TRUE); m != ILLEGAL_VERTEX; 
            m = Get_Assign_To(n, FALSE))
          Propagate(m, s, S3);
       
        break;
      }
      default:
        FmtAssert(FALSE, ("wrong automaton state"));
    }

    // Propagate info downward
    Vertex an = Find_Addr(n);
    if (an != ILLEGAL_VERTEX && (cur_state == S1 || cur_state == S3 )) {
      Trace_CFL_Reach_P1(TFile, "down with %d\n", Get_Pegv_Id(an));
      Propagate(an, an, S1);
    }
  }
  Trace_CFL_Reach_P2(TFile, (reached? "%d reached %d\n" : "%d not reached %d\n"), id1, id2);
  
  Delete_Worklist();
  Delete_Reach_Map();
  Delete_Alias_Map();
  
  MEM_POOL_Pop(&_lpool);
  return reached;

}

void
Alias_Analysis_Manager::Add_A_Edges_For_Valholder(Vertex vh, VSET *set) {
  Vertex v;
  FOR_ALL_VSET(set, v)  {
    VTX_VEC froms;
    froms.clear();
    for (Vertex from = Get_Assign_From(v, TRUE); from != ILLEGAL_VERTEX; 
        from = Get_Assign_From(v, FALSE)) {
      if(from != vh && !Vset_Inclusive(set, from)) 
        froms.push_back(from);
    }
    for (VTX_ITER itr = froms.begin(); itr != froms.end(); itr++) {
      Del_Peg_Edge(*itr, v);
      New_Peg_Edge(*itr, vh, ASSIGNMENT);
    }

    VTX_VEC tos;
    tos.clear();
    for (Vertex to = Get_Assign_To(v, TRUE); to != ILLEGAL_VERTEX;
        to = Get_Assign_To(v, FALSE)) {
      if (to != vh && !Vset_Inclusive(set, to)) 
        tos.push_back(to);
    }
    for(VTX_ITER itr = tos.begin(); itr != tos.end(); itr++) {
      Del_Peg_Edge(v, *itr);
      New_Peg_Edge(vh, *itr, ASSIGNMENT);
    }
  }
}

void
Alias_Analysis_Manager::Update_A_Edges_For_Valholder(Vertex vh, VSET *set) {
  VTX_VEC in_froms;
  in_froms.clear();
  for (Vertex from = Get_Assign_From(vh, TRUE); from != ILLEGAL_VERTEX;
        from = Get_Assign_From(vh, FALSE)) {
    if (Vset_Inclusive(set, from))
      in_froms.push_back(from);
  }
  for (VTX_ITER itr = in_froms.begin(); itr != in_froms.end(); itr++)
    Del_Peg_Edge(*itr, vh);

  VTX_VEC in_tos;
  in_tos.clear();
  for (Vertex to = Get_Assign_To(vh, TRUE); to != ILLEGAL_VERTEX;
        to = Get_Assign_To(vh, FALSE)) {
    if (Vset_Inclusive(set, to))
      in_tos.push_back(to);
  }
  for (VTX_ITER itr = in_tos.begin(); itr != in_tos.end(); itr++)
    Del_Peg_Edge(vh, *itr);
}

Alias_Analysis_Manager::VSET*
Alias_Analysis_Manager::Union_Val_Set(VSET *set1, VSET *set2) {
  Vset_Union(set1, set2);

  // delete dead vertex
  VSET *deadvs = New_Vset(Pool());
  Vertex v;
  FOR_ALL_VSET(set1, v)
    if (!Live_Peg_Vertex(v))
      Vset_Add(deadvs, v);
    else
      Set_Pegv_Valset(v, set1);

  Vset_Difference(set1, deadvs);
  return set1;
}

void
Alias_Analysis_Manager::Union_Up(Vertex v1, Vertex v2) {
  VSET *set1 = Init_Pegv_Vset(v1);
  VSET *set2 = Init_Pegv_Vset(v2);
  
  // merge value holder nodes and its up-level nodes
  Vertex vh1 = Init_Valholder(set1);
  Trace_Valholder(vh1, TFile);
  Vertex vh2 = Init_Valholder(set2);
  Trace_Valholder(vh2, TFile);
  Vertex vh = Merge_Pegvs_Thr(vh1, vh2);

  // union value alias sets, while
  // a. merge the elements of two sets
  // b. fix the map from id to its value alias set
  VSET *set =  Union_Val_Set(set1, set2);

  // reset value alias map for vh
  Set_Pegv_Valset(vh, set);
  
  // reset value holder node map
  Del_Valholder(set1);
  Del_Valholder(set2);
  Set_Valholder(set, vh);

  // move delete the "inside set" edges for  value holder node
  Update_A_Edges_For_Valholder(vh, set);
  Trace_Valholder(vh, TFile);
  
  //Trace_Prog_Exp_Graph(TFile);
  //Clear_PEG();
  //Trace_Prog_Exp_Graph(TFile);
  
}

void
Alias_Analysis_Manager::Cache_CFL_Reach(Vertex cv, BOOL complete) {
  FmtAssert(!Is_Valholder(cv), ("cv is val holder"));
  
  // cache all cfl reachability info
  // the reach set for node cv is complete
  VSET *reached_vs = New_Vset(Pool());
  VSET *valset = Get_Pegv_Valset(cv);
  if (valset != NULL) {
    FmtAssert(Find_Valholder(valset) != cv, ("cv is val holder"));
    Vset_Union(reached_vs, valset);
  } else
    Vset_Add(reached_vs, cv);

  Vertex fcv = Find_Valholder(cv);  
  REACHSET_ITER itr = _reach_map.begin();
  REACHSET_ITER itrn = _reach_map.end();
  while (itr != itrn) {
    Vertex v1 = itr->first;
    REACHSET vrs = itr->second;
    REACHITER ritr = vrs.begin();
    REACHITER ritrn = vrs.end();
    while (ritr != ritrn) {
      Vertex v2 = ritr->first;
      if (v1 == fcv && v2 != fcv) {
        // add v2 into reached_vs
        valset = Get_Pegv_Valset(v2);
        if (valset != NULL) {
          Vset_Union(reached_vs, valset);
        } else
          Vset_Add(reached_vs, v2);

      } else if (v2 == fcv && v1 != fcv) {
        // add v1 into reached vs
        valset = Get_Pegv_Valset(v1);
        if (valset != NULL) {
          Vset_Union(reached_vs, valset);
        } else
          Vset_Add(reached_vs, v1);

      }
      ritr++;
    }
    itr++;
  }

#if 0
  fprintf(TFile, "\ndump reach set for %d\n", Get_Pegv_Id(cv));
  Vertex v;
  FOR_ALL_VSET(reached_vs, v) {
    fprintf(TFile, "%d, ", Get_Pegv_Id(v));
  }
  fprintf(TFile, "\n");
#endif

  ID_CHAIN srcs, sinks;
  for (ALIAS_ID id = First_Id(); id <= Last_Id(); id++) {
    Vertex v = Get_Peg_Vertex(id)->second;
    FmtAssert(!Is_Valholder(v), ("v is val holder"));
    if (v == cv) {
      srcs.push_back(id);
      sinks.push_back(id);
    } else if (Vset_Inclusive(reached_vs, v))
      sinks.push_back(id);
  }

  FmtAssert(srcs.size() > 0, ("no source found"));
  for (INT i = 0; i < srcs.size(); i++) {
    Add_To_Rcache(srcs[i], ILLEGAL_ALIAS_ID);
    for (INT j = 0; j < sinks.size(); j++)
      Add_To_Rcache(srcs[i], sinks[j]);

    if (complete)
      Set_Rcache_Complete(srcs[i]);
  }

}

BOOL
Alias_Analysis_Manager::Olf_CFL_Reachable(ALIAS_ID id1, ALIAS_ID id2) {
  Trace_CFL_Reach_P2(TFile, "check for %d and %d\n", id1, id2); 

  BOOL reached = FALSE;
  BOOL peg_changed = TRUE;
  INT iter_num = 0;
  while (peg_changed) {
    peg_changed = FALSE;
  
    Vertex v1 = Get_Peg_Vertex(id1)->second;
    Vertex v2 = Get_Peg_Vertex(id2)->second;
    Vertex f1 = Find_Valholder(v1);
    Vertex f2 = Find_Valholder(v2);
    if (v1 == v2) {
      Trace_CFL_Reach(TFile, "reached due to same vertex\n");
      reached = TRUE;
      break;
    } else if (f1 == f2) {
      Trace_CFL_Reach(TFile, "reached due to same val holder\n");
      reached = TRUE;
      break;
    }

    // init main data structure
    MEM_POOL_Push(&_lpool);
    Init_Worklist();
    Init_Reach_Map();
    Init_Alias_Map();

    WORKITEM item(V_PAIR(v1, v1), S1);
    Add_Workitem(item, _worklist);

    // main loop for reachability analysis
    reached = FALSE;
    while (!_worklist.empty()) {
      iter_num ++;
      if (iter_num > K_Limit()) {
        Trace_CFL_Reach(TFile, "reached due to k-limit\n");
        reached = TRUE;
        break;
      }

      WORKITEM cur_item = Take_Workitem();
      Vertex n = cur_item.first.first;
      Vertex s = cur_item.first.second;
      AUTOMATON_STATE cur_state = cur_item.second;

      Trace_CFL_Reach_P3(TFile, "new round with %d, %d, at S%d\n", 
                        Get_Pegv_Id(n), Get_Pegv_Id(s), (int)log2((double)cur_state)+1);

      // check if destination has reached
      if ((s == f1 && n == f2) || (s == f2 && n == f1)) {
        Trace_CFL_Reach(TFile, "reached due to cfl\n");
        reached = TRUE;
        break;
      }

      // up propagation, dealing with memory alias  
      Vertex dn = Find_Dereference(n);
      Vertex ds = Find_Dereference(s);
      // propagate info upward
      if (dn != ILLEGAL_VERTEX && ds != ILLEGAL_VERTEX && dn != ds && 
         !Same_Val_Set(dn, ds) && !Vert_Inc_Val_Set(dn, ds)) {
        Trace_CFL_Reach_P2(TFile, "union up with %d, %d\n", Get_Pegv_Id(dn), Get_Pegv_Id(ds));
        Union_Up(dn, ds);
        peg_changed = TRUE;
        break;
      }
      Vertex fs = Find_Valholder(s);
      Vertex fn = Find_Valholder(n);
      FmtAssert(fs != ILLEGAL_VERTEX && fn != ILLEGAL_VERTEX, ("wrong val holder"));
      // propagate reachability through value flows
      Trace_CFL_Reach_P2(TFile, "flow with %d, %d\n", Get_Pegv_Id(fn), Get_Pegv_Id(fs));

      switch (cur_state) {
        case S1:
        {
          for (Vertex m = Get_Assign_From(fn, TRUE); m != ILLEGAL_VERTEX; 
              m = Get_Assign_From(fn, FALSE)) {
            Propagate(m, fs, S1);
          }
          for (Vertex m = Get_Assign_To(fn, TRUE); m != ILLEGAL_VERTEX;
              m = Get_Assign_To(fn, FALSE)) {
            Propagate(m, fs, S3);
          }
          break;
        }
        case S3:
        {
          for (Vertex m = Get_Assign_To(fn, TRUE); m != ILLEGAL_VERTEX; 
              m = Get_Assign_To(fn, FALSE)) {
            Propagate(m, fs, S3);
          }
          break;
        }

        default:
          FmtAssert(FALSE, ("wrong automaton state"));
      }

      // Propagate info downward
      Vertex an = Find_Addr(n);
      if (an != ILLEGAL_VERTEX && (cur_state == S1 || cur_state == S3 )) {
        Trace_CFL_Reach_P1(TFile, "down with %d\n", Get_Pegv_Id(an));
        Propagate(an, an, S1);
      }
    }

    if (!peg_changed) {
      Cache_CFL_Reach(v1, !reached);
    }

    Delete_Worklist();
    Delete_Reach_Map();
    Delete_Alias_Map();
    MEM_POOL_Pop(&_lpool);
  }

  Trace_CFL_Reach_P3(TFile, (reached? "%d reached %d in %d steps\n" : "%d not reached %d in %d steps\n"), 
                        id1, id2, iter_num);
  return reached;
}

void
Alias_Analysis_Manager::Dump_Region(FILE *fp) {
  fprintf(fp, "=====================Dump Region Alias Member=======================\n");
  fdump_tree_no_st(fp, Region());

  for (ALIAS_ID id = First_Id(); id <= Last_Id(); id++) {
    fprintf(fp, "Id: %d ", id);
    Get_Alias_Info(id).Print(fp);
  }
}

void
Alias_Analysis_Manager::Dump_Constraints(FILE *fp) {
  fprintf(fp, "======================Dump Contraints============================\n");
  // dump all the constraints
  for (CONSTRAINT_ITER iter = _constraints.begin(); iter != _constraints.end(); iter++) {
    fprintf(fp, "%d <- %d \n", iter->first, iter->second);
  }
  return;
}

void
Alias_Analysis_Manager::Dump_Prog_Exp_Graph(FILE *fp) {
  fprintf(fp, "======================Dump Prog Exp Graph============================\n");
  fprintf(fp, "node count: %d, edge count: %d\n", num_vertices(_prog_exp_g), num_edges(_prog_exp_g));

  // dump all map from id to vertex
  fprintf(fp, "Id->Vertexes:\n");
  for (ALIAS_ID id = First_Id(); id <= Last_Id(); id++) {
    Vertex v = Get_Peg_Vertex(id)->second;
    FmtAssert(v != ILLEGAL_VERTEX && Live_Peg_Vertex(v), ("no live vertex found"));
    fprintf(fp, "Id: %d -> Vtx: %d\n", id, Get_Pegv_Id(v));
  }

  // dump all the assignment edges
  fprintf(fp, "Assignment Edges:\n");
  Edge_Iter ei, ei_end;
  for (tie(ei, ei_end) = edges(_prog_exp_g); ei != ei_end; ++ei) {
    Edge e = *ei;
    Vertex sv = source(e, _prog_exp_g);
    Vertex tv = target(e, _prog_exp_g);
    fprintf(fp, "A-edge: %d <- %d\n", Get_Pegv_Id(tv), Get_Pegv_Id(sv));
  }

  fprintf(fp, "Dereference Edges:\n");
  Vertex_Iter vi, vi_end;
  for (tie(vi, vi_end) = vertices(_prog_exp_g); vi != vi_end; ++vi) {
    Vertex v = *vi;
    if (!Live_Peg_Vertex(v))
      continue;
    Vertex dv = Find_Dereference(v);
    if (dv != ILLEGAL_VERTEX)
      fprintf(fp, "D-edge: %d -> %d\n", Get_Pegv_Id(v), Get_Pegv_Id(dv));
  }

  fprintf(fp, "Flow Edges: \n");
  for (tie(vi, vi_end) = vertices(_prog_exp_g); vi != vi_end; ++vi) {
    Vertex v = *vi;
    if (!Live_Peg_Vertex(v))
      continue;
    Vertex fv = Find_Valholder(v);
    if (fv != ILLEGAL_VERTEX)
      fprintf(fp, "F-edge: %d -> %d\n", Get_Pegv_Id(v), Get_Pegv_Id(fv));
  }

}

void
Alias_Analysis_Manager::Dump_Vtx_Class(VTX_CLASS& vcs, FILE *fp) {
  for (VCLASS_ITER citr = vcs.begin(); citr != vcs.end(); citr++) {
    fprintf(fp, "VCLASS:");
    VTX_VEC vc = *citr;
    for (VTX_ITER vitr = vc.begin(); vitr != vc.end(); vitr++)
      if (Live_Peg_Vertex(*vitr))
        fprintf(fp, "v%d, ", Get_Pegv_Id(*vitr));
    fprintf(fp, "\n");
  }

}

void
Alias_Analysis_Manager::Dump_Peg_Scc(VTX_CLASS& sccs, FILE *fp) {
  fprintf(fp, "========================Dump SCC============================\n");
  Dump_Vtx_Class(sccs, fp);
}

void
Alias_Analysis_Manager::Dump_Tplgc(VTX_VEC& cntnr, FILE *fp) {
  fprintf(fp, "========================Dump Topological=======================\n");
  for (VTX_RTER vtr = cntnr.rbegin(); vtr != cntnr.rend(); vtr++)
    if (Live_Peg_Vertex(*vtr))
      fprintf(fp, "%d, ", Get_Pegv_Id(*vtr));
  fprintf(fp, "\n");
}
  
void
Alias_Analysis_Manager::Dump_Alias(FILE *fp) {
  fprintf(fp, "========================Dump Alias============================\n");
  for (ALIAS_ID id = First_Id(); id <= Last_Id(); id++) {
    if (!Has_Lvalue(id)) {
      fprintf(fp, "%d has no lvalue\n", id);
      continue;
    }
    fprintf(fp, "%d alias with {", id); 
    for (ALIAS_ID jd = First_Id(); jd < id; jd++) {
      if (!Has_Lvalue(jd))
        continue;

      BOOL aliased_ij = Aliased(id, jd);
      /*BOOL aliased_ji = Aliased(jd, id);
      FmtAssert(aliased_ij == aliased_ji, ("algorithm not symmetrical"));*/
      if (aliased_ij)
        fprintf(fp, "%d, ", jd);
    }
    fprintf(fp, "}\n");
  }
  return;
}

void
Alias_Analysis_Manager::Dump_Valholder(Vertex vh, FILE *fp) {
  fprintf(fp, "Val holder: %d: for set: ", Get_Pegv_Id(vh));
  VSET *set = Get_Pegv_Valset(vh);
  Vertex v;
  FOR_ALL_VSET(set, v)
    fprintf(fp, "%d, ", Get_Pegv_Id(v));
  fprintf(fp, "\n");

  fprintf(fp, "From nodes:");
  for (Vertex from = Get_Assign_From(vh, TRUE); from != ILLEGAL_VERTEX;
        from = Get_Assign_From(vh, FALSE)) 
    fprintf(fp, "%d, ", Get_Pegv_Id(from));
  fprintf(fp, "\n");
  fprintf(fp, "To nodes:");
  for (Vertex to = Get_Assign_To(vh, TRUE); to != ILLEGAL_VERTEX;
        to = Get_Assign_To(vh, FALSE)) 
    fprintf(fp, "%d, ", Get_Pegv_Id(to));
  fprintf(fp, "\n");
}

Alias_Analysis_Manager::Alias_Analysis_Manager(WN *region, OPT_STAB *opt_stab, MEM_POOL *pool) {
  _gpool = pool;
  _region = region;
  _opt_stab = opt_stab;
  _fld_sensitive = Adsn_Fld_Sstv;
  _k_limit = Adsn_Limit;
  _coarse_trace = Get_Trace(TP_GLOBOPT, TRACE_ADSN_ALIAS_FLAG) ||
                  Get_Trace(TP_ALIAS, TRACE_ADSN_ALIAS_FLAG);
  _deep_trace = Get_Trace(TP_ALIAS, TRACE_ADSN_ALIAS_FLAG);
}

void
Alias_Analysis_Manager::Analyze(){
  _global_ptr_alias_id = ILLEGAL_ALIAS_ID;
  _global_obj_alias_id = ILLEGAL_ALIAS_ID;
  Build_Constraints(Region());

  MEM_POOL_Initialize(&_lpool, "Demand-driven local pool", FALSE);
  Build_PEG();
  Simplify_PEG();
  Trace_Alias(TFile);
  Trace_Prog_Exp_Graph(TFile);
}

BOOL
Alias_Analysis_Manager::Aliased(ALIAS_ID id1, ALIAS_ID id2) {      
  if (id1 == ILLEGAL_ALIAS_ID || id2 == ILLEGAL_ALIAS_ID) {
    Trace_Alias_Analysis(TFile, "map failure\n");
    return TRUE;
  }
  if (id1 == MESS_ALIAS_ID || id2 == MESS_ALIAS_ID) {
    Trace_Alias_Analysis(TFile, "mess alias id\n");
    return TRUE;
  }
  FmtAssert(Has_Lvalue(id1) && Has_Lvalue(id2), ("has no lvalue"));

  // fast disambiguate by some must/must not rules
  if (id1 == id2) {
    Trace_Alias_Analysis(TFile, "quick analysis\n");
    return TRUE;
  }
  if (Get_Alias_Kind(id1) == REG || Get_Alias_Kind(id2) == REG) {
    Trace_Alias_Analysis(TFile, "quick analysis\n");
    return FALSE;
  }

  ALIAS_ID addr_id1 = Find_Addr_Id(id1);
  ALIAS_ID addr_id2 = Find_Addr_Id(id2);
  if (Find_Addr_Id(id1) == ILLEGAL_ALIAS_ID) {
    FmtAssert(Get_Alias_Kind(id1) == SYM, ("wrong alias kind"));
    Trace_Alias_Analysis(TFile, "quick analysis\n");    
    return FALSE;
  }
  if (Find_Addr_Id(id2) == ILLEGAL_ALIAS_ID) {
    FmtAssert(Get_Alias_Kind(id2) == SYM, ("wrong alias kind"));
    Trace_Alias_Analysis(TFile, "quick analysis\n");
    return FALSE;
  }

  // check whether the result can be got from cache
  if (Find_In_Acache(id1, id2)) {
    Trace_Alias_Analysis(TFile, "by acache\n");
    return Aliased_By_Acache(id1, id2);
  }
  
  if (Find_In_Rcache(addr_id1)) {
    if (Rcache_Complete(addr_id1)) {
      Trace_Alias_Analysis(TFile, "by rcache\n");
      return Reachable_By_Rcache(addr_id1, addr_id2);
    } else if (Reachable_By_Rcache(addr_id1, addr_id2)) {
      Trace_Alias_Analysis(TFile, "by rcache\n");
      return TRUE;
    }
  } else if (Find_In_Rcache(addr_id2)) {
    if (Rcache_Complete(addr_id2)) {
      Trace_Alias_Analysis(TFile, "by rcache\n");
      return Reachable_By_Rcache(addr_id2, addr_id1);
    } else if (Reachable_By_Rcache(addr_id2, addr_id1)) {
      Trace_Alias_Analysis(TFile, "by rcache\n");
      return TRUE;
    }
  }

  // check alias by alias/pointer analysis
  Trace_Alias_Analysis(TFile, "cfl reach analsyis\n");
  BOOL aliased = TRUE;
  if (!Olf_CFL_Reachable(addr_id1, addr_id2)) {
    aliased = FALSE;
  }

  Add_To_Acache(id1, id2, aliased);
  return aliased;
}

BOOL
Alias_Analysis_Manager::Verify_Wn_Alias_Id(OPERATOR opr, ALIAS_ID id) {
  if (OPERATOR_is_load(opr) || OPERATOR_is_store(opr) || opr == OPR_PARM) {   
    if (!Has_Lvalue(id)) {
      FmtAssert(FALSE, ("wrong id")); 
      return FALSE;
    }
  } else {
    FmtAssert(FALSE, ("not legal wn"));
    return FALSE;
  }
  return TRUE;
}

ALIAS_ID
Alias_Analysis_Manager::Get_Wn_Alias_Id(WN *wn) { 
  return Find_Id(wn);
}

ALIAS_ID
Alias_Analysis_Manager::Get_St_Alias_Id(ST * st) {
  return Find_Id(ALIAS_MEMBER_INFO(st));
}

ALIAS_ID
Alias_Analysis_Manager::Get_Reg_Alias_Id(WN_OFFSET preg_id) {
  return Find_Id(ALIAS_MEMBER_INFO(preg_id));
}

void
Alias_Analysis_Manager::Print(FILE *fp) {
  Dump_Region(fp);
  Dump_Constraints(fp);
  Dump_Prog_Exp_Graph(fp);
  Dump_Alias(fp);
}

// external interface
Alias_Analysis_Manager *aam = NULL;

void Create_Adsn_Manager(WN *region, OPT_STAB *opt_stab, MEM_POOL *pool) {
  MEM_POOL_Push(pool);
  aam = CXX_NEW(Alias_Analysis_Manager(region, opt_stab, pool), pool);
  aam->Analyze();
}

BOOL Adsn_Manager_Initialized() {
  return (aam != NULL);
}

BOOL Aliased_Id_By_Adsn(ALIAS_ID id1, ALIAS_ID id2) {
  if (Adsn_Manager_Initialized())
    return aam->Aliased(id1, id2);
  else
    return TRUE;
}

IDTYPE Get_Wn_Adsn_Id(WN *wn) {
  if (Adsn_Manager_Initialized())
    return aam->Get_Wn_Alias_Id(wn);
  else
    return ILLEGAL_ALIAS_ID;
}

IDTYPE Get_St_Adsn_Id(ST *st) {
  if (Adsn_Manager_Initialized())
    return aam->Get_St_Alias_Id(st);
  else
    return ILLEGAL_ALIAS_ID;
}

IDTYPE Get_Reg_Adsn_Id(WN_OFFSET preg_id) {
  if (Adsn_Manager_Initialized())
    return aam->Get_Reg_Alias_Id(preg_id);
  else
    return ILLEGAL_ALIAS_ID;

}

IDTYPE Get_Adsn_Dereference_Id(ALIAS_ID id) {
  if (Adsn_Manager_Initialized())
    return aam->Find_Dereference_Id(id);
  else
    return ILLEGAL_ALIAS_ID;
}

IDTYPE Get_Adsn_Addr_Id(ALIAS_ID id) {
  if (Adsn_Manager_Initialized())
    return aam->Find_Addr_Id(id);
  else
    return ILLEGAL_ALIAS_ID;
}

BOOL
Verify_Wn_Adsn_Id(OPERATOR opr, ALIAS_ID id) {
  if (Adsn_Manager_Initialized())
    return aam->Verify_Wn_Alias_Id(opr, id);
  else
    return FALSE;
}
