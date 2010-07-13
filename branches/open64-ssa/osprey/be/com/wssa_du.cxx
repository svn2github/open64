#include "wssa_du.h"
#include "wssa_core.h"
#include "wssa_mgr.h"
#include "wssa_utils.h"
#include "wssa_wn.h"
#include "wn.h"
#include "symtab.h"
#include "pu_info.h"

namespace WSSA {

static const WHIRL_SSA_MANAGER*
dump_get_wssa_manager() {
  return PU_Info_ssa_ptr(Current_PU_Info);
}

/*=============================================================================
 *
 * DEF_NODE & USE_NODE
 *
 *===========================================================================*/

template<>
const char* 
Get_node_desc(DEF_KIND kt) {
  switch(kt) {
    case DEF_BY_WN:  return "def by wn";
    case DEF_BY_PHI: return "def by phi";
    case DEF_BY_CHI: return "def by chi";
    case DEF_BY_ANY: return "def by any";
    default:         return "DEF UNK";
  }
}

template<>
const char* 
Get_node_desc(USE_KIND kt) {
  switch(kt) {
    case USE_BY_WN:  return "use by wn";
    case USE_BY_PHI: return "use by phi";
    case USE_BY_MU:  return "use by mu";
    case USE_BY_ANY: return "use by any";
    default:         return "USE UNK";
  }
}

/*=============================================================================
 *
 * DU & UD MANAGER
 *
 *===========================================================================*/

WSSA_DU_MANAGER::WSSA_DU_MANAGER(WHIRL_SSA_MANAGER* mgr)
  : _wssa_mgr(mgr), _root(NULL) {
}

WSSA_DU_MANAGER::WSSA_DU_MANAGER(WN* tree)
  : _wssa_mgr(PU_Info_ssa_ptr(Current_PU_Info)), _root(tree) {
  FmtAssert(_wssa_mgr != NULL, ("WHIRL SSA Manager is null"));
}

const WHIRL_SSA_MANAGER*
WSSA_DU_MANAGER::SSA_Manager() const
{
  FmtAssert(_wssa_mgr != NULL, ("WHIRL SSA Manager is null"));
  return _wssa_mgr;
}

template<>
DEF_TYPE_TRAITS::TABLE_TYPE& 
WSSA_DU_MANAGER::Get_table(DEF_KIND dt) {
  return _def_table;
}

template<>
const DEF_TYPE_TRAITS::TABLE_TYPE& 
WSSA_DU_MANAGER::Get_table(DEF_KIND dt) const {
  return _def_table;
}

template<>
USE_TYPE_TRAITS::TABLE_TYPE& 
WSSA_DU_MANAGER::Get_table(USE_KIND ut) {
  return _use_table;
}

template<>
const USE_TYPE_TRAITS::TABLE_TYPE& 
WSSA_DU_MANAGER::Get_table(USE_KIND ut) const {
  return _use_table;
}

template<>
DEF_TYPE_TRAITS::MAP_TYPE& 
WSSA_DU_MANAGER::Get_map(DEF_KIND dt) {
  return _def_map;
}

template<>
const DEF_TYPE_TRAITS::MAP_TYPE& 
WSSA_DU_MANAGER::Get_map(DEF_KIND dt) const {
  return _def_map;
}

template<>
USE_TYPE_TRAITS::MAP_TYPE& 
WSSA_DU_MANAGER::Get_map(USE_KIND ut) {
  return _use_map;
}

template<>
const USE_TYPE_TRAITS::MAP_TYPE& 
WSSA_DU_MANAGER::Get_map(USE_KIND ut) const {
  return _use_map;
}

template<typename NODE_KIND>
typename DU_TYPE_TRAITS<NODE_KIND>::INDEX_TYPE
WSSA_DU_MANAGER::Get_list_idx(WSSA_ST_IDX st_idx, VER_NUM ver, NODE_KIND kt) const
{
  typename DU_TYPE_TRAITS<NODE_KIND>::MAP_TYPE::const_iterator it 
    = Get_map(kt).find(std::make_pair(st_idx, ver));
  if ( it != Get_map(kt).end() )
    return it->second;
  else
    return INVALID_IDX;
}

template<typename NODE_KIND>
const typename DU_TYPE_TRAITS<NODE_KIND>::LIST_TYPE&
WSSA_DU_MANAGER::Get_list(WSSA_ST_IDX st_idx, VER_NUM ver, NODE_KIND kt) const
{
  typename DU_TYPE_TRAITS<NODE_KIND>::INDEX_TYPE idx = Get_list_idx(st_idx, ver, kt);
  FmtAssert(idx != INVALID_IDX, ("Invalid index"));
  return Get_table(kt)[idx];
}

template<typename NODE_KIND>
void
WSSA_DU_MANAGER::Add_node(WSSA_ST_IDX st_idx, VER_NUM ver, NODE_KIND kd, WN* wn)
{
  typename DU_TYPE_TRAITS<NODE_KIND>::NODE_TYPE node;
  typename DU_TYPE_TRAITS<NODE_KIND>::TABLE_TYPE& table = Get_table(kd);
  typename DU_TYPE_TRAITS<NODE_KIND>::MAP_TYPE& map = Get_map(kd);
  typedef  typename DU_TYPE_TRAITS<NODE_KIND>::LIST_TYPE LIST_TYPE;
  node.Set_node_kind(kd);
  node.Set_WN(wn);

  typename DU_TYPE_TRAITS<NODE_KIND>::INDEX_TYPE idx = Get_list_idx(st_idx, ver, kd);
  if (idx == INVALID_IDX) {
    idx = table.size();
    table.push_back(LIST_TYPE(st_idx, ver));
    map[std::make_pair(st_idx, ver)] = idx;
  }
  else {
#ifdef Is_True_On
    const LIST_TYPE& list = table[idx];
    for (typename LIST_TYPE::const_iterator it = list.begin();
         it != list.end();
         it ++) {
      Is_True(it->Get_WN() != wn, ("Fix ME: WN already added this node"));
    }
#endif
  }
  table[idx].push_back(node);
}

void
WSSA_DU_MANAGER::Build(BOOL ud, BOOL du)
{
  Is_True(_wssa_mgr != NULL, ("WHIRL SSA Manager is null"));
  Is_True(_root != NULL, ("Root WN is null"));

  Clean(TRUE, TRUE);
  Build(ud, du, _root);
}

void
WSSA_DU_MANAGER::Build(WN* wn, BOOL ud, BOOL du)
{
  _root = wn;
  Build(ud, du);
}

void
WSSA_DU_MANAGER::Build(BOOL ud, BOOL du, WN* wn)
{
  Is_True(wn != NULL, ("Null wn"));

  const WHIRL_SSA_MANAGER* mgr = SSA_Manager();
  Is_True(mgr != NULL && mgr->Is_stat_OK(), ("WHIRL SSA info is unavailable"));

  OPERATOR opr = WN_operator(wn);
  if (mgr->WN_has_PHI_list(wn)) {
    const WN_PHI_LIST& list = mgr->WN_PHI_list(wn);
    for (WN_PHI_LIST::const_iterator it = list.begin();
         it != list.end();
         it ++) {
      WSSA_ST_IDX wst_idx = it->WST_idx();
      if (ud) {
        Add_node(wst_idx, it->Res(), DEF_BY_PHI, wn);
      }
      if (du) {
        for (int i=0; i<it->Opnd_count(); i++) {
          Add_node(wst_idx, it->Get_opnd(i), USE_BY_PHI, wn);
        }
      }
    }
  }

  if (mgr->WN_has_CHI_list(wn)) {
    const WN_CHI_LIST& list = mgr->WN_CHI_list(wn);
    for (WN_CHI_LIST::const_iterator it = list.begin();
         it != list.end();
         it ++) {
      if (ud) {
        Add_node(it->WST_idx(), it->Get_res(0), DEF_BY_CHI, wn);
      }
    }
  }

  if (du && mgr->WN_has_MU_list(wn)) {
    const WN_MU_LIST& list = mgr->WN_MU_list(wn);
    for (WN_MU_LIST::const_iterator it = list.begin();
         it != list.end();
         it ++) {
      Add_node(it->WST_idx(), it->Get_opnd(0), USE_BY_MU, wn);
    }
  }

  switch(opr) {
    case OPR_BLOCK:
      for (WN* item = WN_first(wn); item != NULL; item = WN_next(item)) {
        Build(ud, du, item);
      }
      break;
    case OPR_REGION:
      Build(ud, du, WN_region_body(wn));
      break;

    case OPR_LDID:
    case OPR_LDBITS:
      if (du) {
        Add_node(mgr->Get_WST_idx(WN_st_idx(wn)), 
                 mgr->Get_WN_ver(wn), USE_BY_WN, wn);
      }
      break;
    case OPR_STID:
    case OPR_STBITS:
      if (ud) {
        Add_node(mgr->Get_WST_idx(WN_st_idx(wn)), 
                 mgr->Get_WN_ver(wn), DEF_BY_WN, wn);
        Build(ud, du, WN_kid(wn, 0));
      }
      break;
    default:
      for (int i=0; i<WN_kid_count(wn); i++) {
        Build(ud, du, WN_kid(wn, i));
      }
  }
}

void
WSSA_DU_MANAGER::Clean(BOOL ud, BOOL du) {
  // clean old data
  if (ud) {
    _def_table.clear();
    _def_map.clear();
  }
  if (du) {
    _use_table.clear();
    _use_map.clear();
  }
}


const DEF_LIST&
WSSA_DU_MANAGER::Get_def(WSSA_ST_IDX st_idx, VER_NUM ver) const
{
  return Get_list(st_idx, ver, DEF_BY_ANY);
}

const DEF_LIST&
WSSA_DU_MANAGER::Get_def(const WN* wn) const
{
  Is_True(WN_def_ver(wn), ("WN don't define ver"));

  WSSA_ST_IDX st_idx = SSA_Manager()->WN_WST_idx(wn);
  VER_NUM ver = SSA_Manager()->Get_WN_ver(wn);
  return Get_def(st_idx, ver);
}

const USE_LIST&
WSSA_DU_MANAGER::Get_use(WSSA_ST_IDX st_idx, VER_NUM ver) const
{
  return Get_list(st_idx, ver, USE_BY_ANY);
}

const USE_LIST&
WSSA_DU_MANAGER::Get_use(const WN* wn) const
{
  Is_True(WN_use_ver(wn), ("WN don't use ver"));

  WSSA_ST_IDX st_idx = SSA_Manager()->WN_WST_idx(wn);
  VER_NUM ver = SSA_Manager()->Get_WN_ver(wn);
  return Get_use(st_idx, ver);
}

void
WSSA_DU_MANAGER::Print(FILE* fp) const
{
}

void
WSSA_DU_MANAGER::Verify() const
{
}

} /* namespace WSSA */

