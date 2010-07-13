#ifndef WSSA_CORE_INCLUDED
#define WSSA_CORE_INCLUDED

#include <stdio.h>
#include <vector>
#include <list>
#include <iterator>
#include <ext/hash_map>
using __gnu_cxx::hash_map;
#include "mempool_allocator.h"
#include "wssa_defs.h"
#include "wssa_core_template.h"
#include "errors.h"

namespace WSSA {

// traits for phi node
class PHI_NODE_TRAITS {
public:
  enum { NODE_KIND = NKIND_PHI };
  enum { LHS_COUNT = 1, RHS_COUNT = -1 };

  typedef VER_NUM ELEM_TYPE;
  // PHI node has 1 result and variable operands
  typedef FIXED_ARRAY<ELEM_TYPE, LHS_COUNT> RES_TYPE;
  typedef std::vector<ELEM_TYPE> OPND_TYPE;
};

// traits for chi node
class CHI_NODE_TRAITS {
public:
  enum { NODE_KIND = NKIND_CHI };
  enum { LHS_COUNT = 1, RHS_COUNT = 1 };

  typedef VER_NUM ELEM_TYPE;
  // CHI node has 1 result and 1 operand
  typedef FIXED_ARRAY<ELEM_TYPE, LHS_COUNT> RES_TYPE;
  typedef FIXED_ARRAY<ELEM_TYPE, RHS_COUNT> OPND_TYPE;
};

// traits for mu node
class MU_NODE_TRAITS {
public:
  enum { NODE_KIND = NKIND_MU  };
  enum { LHS_COUNT = 0, RHS_COUNT = 1 };

  typedef VER_NUM ELEM_TYPE;
  // MU node has 0 result and 1 operand
  typedef FIXED_ARRAY<ELEM_TYPE, LHS_COUNT> RES_TYPE;
  typedef FIXED_ARRAY<ELEM_TYPE, RHS_COUNT> OPND_TYPE;
};

// ssa phi node
class PHI_NODE : public SSA_GENERIC_NODE<PHI_NODE_TRAITS> {
public:
  typedef SSA_GENERIC_NODE<PHI_NODE_TRAITS> PARENT;
public:
  VER_NUM Res() const        { return PARENT::Get_res(0);    }
  void Set_res(VER_NUM ver)  { PARENT::Set_res(0, ver);  }
  using PARENT::Set_res;

  VER_NUM Opnd(int idx) const{ return PARENT::Get_opnd(idx); }
  int Add_opnd(VER_NUM ver)  { PARENT::Add_opnd(ver); }
};

// ssa chi node
class CHI_NODE : public SSA_GENERIC_NODE<CHI_NODE_TRAITS> {
public:
  typedef SSA_GENERIC_NODE<CHI_NODE_TRAITS> PARENT;
public:
  VER_NUM Res() const        { return PARENT::Get_res(0);    }
  void Set_res(VER_NUM ver)  { PARENT::Set_res(0, ver);  }
  using PARENT::Set_res;

  VER_NUM Opnd() const       { return PARENT::Get_opnd(0);   }
  void Set_opnd(VER_NUM ver) { PARENT::Set_opnd(0, ver); }
  using PARENT::Set_opnd;
};

// ssa mu node
class MU_NODE : public SSA_GENERIC_NODE<MU_NODE_TRAITS> {
public:
  typedef SSA_GENERIC_NODE<MU_NODE_TRAITS> PARENT;
public:
  VER_NUM Opnd() const       { return PARENT::Get_opnd(0);   }
  void Set_opnd(VER_NUM ver) { PARENT::Set_opnd(0, ver); }
  using PARENT::Set_opnd;
};


/* list definition */
class WN_PHI_LIST : public SSA_GENERIC_LIST<PHI_NODE> {
public:
  void Add_PHI(const PHI_NODE& phi) { Add_node(phi); }
};

class WN_CHI_LIST : public SSA_GENERIC_LIST<CHI_NODE> {
public:
  void Add_CHI(const CHI_NODE& chi) { Add_node(chi); }
};

class WN_MU_LIST  : public SSA_GENERIC_LIST<MU_NODE>  {
public:
  void Add_MU(const MU_NODE& mu)    { Add_node(mu);  }
};

/* table definition */
typedef std::vector<WN_PHI_LIST>            PHI_TABLE;
typedef std::vector<WN_CHI_LIST>            CHI_TABLE;
typedef std::vector<WN_MU_LIST>             MU_TABLE;

/* map definition */
typedef hash_map<INT32, PHI_LIST_IDX>       LABEL_PHI_MAP;
typedef hash_map<WSSA_WN_IDX, PHI_LIST_IDX> WN_PHI_MAP;
typedef hash_map<WSSA_WN_IDX, CHI_LIST_IDX> WN_CHI_MAP;
typedef hash_map<WSSA_WN_IDX, MU_LIST_IDX>  WN_MU_MAP;
typedef hash_map<WSSA_WN_IDX, VER_NUM>      WN_VER_MAP;

// wssa node kind to traits type
template<WSSA_NODE_KIND kind>
struct NKIND_TO_TYPES;

// NKIND_PHI -> PHI_NODE_TRAITS
template<>
struct NKIND_TO_TYPES<NKIND_PHI> {
  typedef PHI_NODE_TRAITS TRAITS;
  typedef PHI_NODE        NODE_TYPE;
  typedef WN_PHI_LIST     LIST_TYPE;
  typedef PHI_TABLE       TABLE_TYPE;
  typedef WN_PHI_MAP      WN_MAP_TYPE;
};

// NKIND_CHI -> CHI_NODE_TRAITS
template<>
struct NKIND_TO_TYPES<NKIND_CHI> {
  typedef CHI_NODE_TRAITS TRAITS;
  typedef CHI_NODE        NODE_TYPE;
  typedef WN_CHI_LIST     LIST_TYPE;
  typedef CHI_TABLE       TABLE_TYPE;
  typedef WN_CHI_MAP      WN_MAP_TYPE;
};

// NKIND_MU  -> MU_NODE_TRAITS
template<>
struct NKIND_TO_TYPES<NKIND_MU> {
  typedef MU_NODE_TRAITS  TRAITS;
  typedef MU_NODE         NODE_TYPE;
  typedef WN_MU_LIST      LIST_TYPE;
  typedef MU_TABLE        TABLE_TYPE;
  typedef WN_MU_MAP       WN_MAP_TYPE;
};

/* hash functors */
struct WST_IDX_HASHER {
  std::size_t operator() (const WSSA_ST_IDX& idx) const {
    return (INT32)idx;
  }
};

struct WST_UNIQ_HASHER {
  std::size_t operator() (const WST_UNIQ_IDX& arg) const {
    return arg.first << 16 + arg.second;
  }
};

// ST VER -> ST VER map, used in renaming
typedef hash_map<WST_UNIQ_IDX, WST_UNIQ_IDX, WST_UNIQ_HASHER> WST_UNIQ_IDX_MAP;  

}; /* namespace WSSA */


#endif  /* WSSA_CORE_INCLUDED */

