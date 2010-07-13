#include <stdio.h>
#include <stdarg.h>
#include "wssa_utils.h"
#include "wssa_mgr.h"
#include "wssa_wn.h"
#include "wn.h"
#include "wn_util.h"
#include "symtab.h"

namespace WSSA {

/*=============================================================================
 *
 * WSSA constructor/dump/common routines
 *
 *===========================================================================*/

WHIRL_SSA_MANAGER::WHIRL_SSA_MANAGER() {
  _ignore_dup_node = TRUE;  // ignore duplicated PHI/CHI/MU nodes
  _internal_check = TRUE;   // enable internal check
  _stat = STAT_INIT;        // internal status

  _root = NULL;
}

void
WHIRL_SSA_MANAGER::Clear() {
  /* clear WSSA_ST_IDX in ST */
  for (WST_SYM_TABLE::iterator iter = _sym_table.begin(); 
       iter !=_sym_table.end(); 
       iter++) {
    if (iter->Sym_type() == WST_WHIRL)
      Set_ST_wssa_st_idx(iter->St_idx(), WSSA_ST_ZERO);
  } 

  /* clear all tables and maps */
  _phi_table.clear();
  _chi_table.clear();
  _mu_table.clear();

  _field_table.clear();
  _vsym_table.clear();
  _sym_table.clear();

  _ret_vsym_st = WSSA_ST_ZERO;
  _default_vsym_st = WSSA_ST_ZERO;

  _wn_ver_map.clear();
  _label_phi_map.clear();
  _phi_map.clear();
  _chi_map.clear();
  _mu_map.clear();
}

WSSA_WN_IDX
WHIRL_SSA_MANAGER::Map_idx(const WN* wn) const {
  // OPERATOR_MAPCAT: 3bit
  // MAP_ID:         29bit (it's less than the map_id in WN, which is 30bit
  FmtAssert(WN_map_id(wn) != -1, ("map_id is not initialized"));
  FmtAssert(WN_map_id(wn) < (1<<29), ("Fix me, map_id is more than 29bit"));
  WSSA_WN_IDX idx = OPCODE_mapcat(WN_opcode(wn)) << 29 | WN_map_id(wn);
  return idx;
}

template<typename TBL, typename MAP>
int 
WHIRL_SSA_MANAGER::Print_table_with_map(const TBL& tbl, const MAP& map, FILE* fp) const {
  typedef typename MAP::const_iterator const_iterator;
  typedef typename MAP::data_type data_type;
  int chk_cnt = 0;
  std::vector<bool> chk_vec;
  chk_vec.resize( tbl.size() );
  for (const_iterator it = map.begin();
       it != map.end();
       it ++) {
    data_type idx = it->second;
    Is_True(idx < tbl.size(), ("map value out of range"));
    Is_True(chk_vec[idx] == false, ("map value has been outputed"));
    chk_vec[idx] = true;
    chk_cnt ++;
    tbl[idx].Print(fp, 2);
  }
  if (chk_cnt != tbl.size()) {
    for (std::size_t i=0; i<tbl.size(); i++) {
      if (chk_vec[i] == false) {
        fprintf(fp, "  (unused)");
        tbl[i].Print(fp, 0);
      }
    }
  }
}

int
WHIRL_SSA_MANAGER::Print(FILE* fp) const {
  fprintf(fp, "PHIs\n");
  Print_table_with_map(_phi_table, _phi_map, fp); 
  fprintf(fp, "CHIs\n");
  Print_table_with_map(_chi_table, _chi_map, fp); 
  fprintf(fp, "MUs\n");
  Print_table_with_map(_mu_table, _mu_map, fp); 
}

void
WHIRL_SSA_MANAGER::Verify() const {
}

/*=============================================================================
 *
 * Specialized Get_table/Get_map
 *
 *===========================================================================*/

template<>
PHI_TABLE& WHIRL_SSA_MANAGER::Get_table<NKIND_PHI>() {
    return _phi_table;
}

template<>
const PHI_TABLE& WHIRL_SSA_MANAGER::Get_table<NKIND_PHI>() const {
    return _phi_table;
}

template<>
CHI_TABLE& WHIRL_SSA_MANAGER::Get_table<NKIND_CHI>() {
    return _chi_table;
}

template<>
const CHI_TABLE& WHIRL_SSA_MANAGER::Get_table<NKIND_CHI>() const {
    return _chi_table;
}

template<>
MU_TABLE& WHIRL_SSA_MANAGER::Get_table<NKIND_MU>() {
    return _mu_table;
}

template<>
const MU_TABLE& WHIRL_SSA_MANAGER::Get_table<NKIND_MU>() const {
    return _mu_table;
}

template<>
WN_PHI_MAP& WHIRL_SSA_MANAGER::Get_map<NKIND_PHI>() {
    return _phi_map;
}

template<>
const WN_PHI_MAP& WHIRL_SSA_MANAGER::Get_map<NKIND_PHI>() const {
    return _phi_map;
}

template<>
WN_CHI_MAP& WHIRL_SSA_MANAGER::Get_map<NKIND_CHI>() {
    return _chi_map;
}

template<>
const WN_CHI_MAP& WHIRL_SSA_MANAGER::Get_map<NKIND_CHI>() const {
    return _chi_map;
}

template<>
WN_MU_MAP& WHIRL_SSA_MANAGER::Get_map<NKIND_MU>() {
    return _mu_map;
}

template<>
const WN_MU_MAP& WHIRL_SSA_MANAGER::Get_map<NKIND_MU>() const {
    return _mu_map;
}


/*=============================================================================
 *
 * WSSA PHI/CHI/MU/WN_VER management
 *
 *===========================================================================*/

template<typename NODE>
INT32
WHIRL_SSA_MANAGER::Add_node(const WN* wn, const NODE& node)
{
  typedef typename NODE::PARENT::NODE_TRAITS NODE_TRAITS;
  Is_True(WN_has_node(wn, (WSSA_NODE_KIND)NODE_TRAITS::NODE_KIND),
          ("WN can not have this kind of node"));

  INT32 list_idx = Get_or_create_list<(WSSA_NODE_KIND)NODE_TRAITS::NODE_KIND>(wn);
  Is_True(list_idx != INVALID_IDX, ("Get or create list failed"));
  typedef typename NKIND_TO_TYPES<(WSSA_NODE_KIND)NODE_TRAITS::NODE_KIND>::TABLE_TYPE TABLE_TYPE;
  typedef typename NKIND_TO_TYPES<(WSSA_NODE_KIND)NODE_TRAITS::NODE_KIND>::LIST_TYPE LIST_TYPE;
  TABLE_TYPE& table = Get_table<(WSSA_NODE_KIND)NODE_TRAITS::NODE_KIND>();
  LIST_TYPE& list = table[list_idx];

  if (_ignore_dup_node || _internal_check) {
    for (typename LIST_TYPE::iterator it = list.begin();
         it != list.end();
         it ++) {
      if (it->WST_idx() == node.WST_idx()) {
        for (int i=0; i<node.Res_count(); i++) {
          Is_True(it->Get_res(i) == node.Get_res(i),
                  ("inconsistent result for WST %d(%s)", node.WST_idx(), WST_name(node.WST_idx())));
        }
        for (int i=0; i<node.Opnd_count(); i++) {
          Is_True(it->Get_opnd(i) == node.Get_opnd(i),
                  ("inconsistent opnd(%d) for WST %d(%s)", i, node.WST_idx(), WST_name(node.WST_idx())));
        }
        if (_ignore_dup_node)
          return list_idx;
      }
    }
  }
  list.Add_node(node);
  return list_idx;
}

PHI_LIST_IDX
WHIRL_SSA_MANAGER::Add_PHI(WN* wn, const PHI_NODE& phi) {
  return Add_node(wn, phi);
}

PHI_LIST_IDX
WHIRL_SSA_MANAGER::Add_PHI(WN* wn, WSSA_ST_IDX st_idx, VER_NUM res, VER_NUM opnd1, VER_NUM opnd2) {
  PHI_NODE phi;
  phi.Set_WST_idx(st_idx);
  phi.Set_res(res);
  phi.Add_opnd(opnd1);
  phi.Add_opnd(opnd2);
  
  return Add_node(wn, phi);
}

CHI_LIST_IDX
WHIRL_SSA_MANAGER::Add_CHI(WN* wn, const CHI_NODE& chi) {
  return Add_node(wn, chi);
}

CHI_LIST_IDX
WHIRL_SSA_MANAGER::Add_CHI(WN* wn, WSSA_ST_IDX st_idx, VER_NUM res, VER_NUM opnd) {
  CHI_NODE chi;
  chi.Set_WST_idx(st_idx);
  chi.Set_res(res);
  chi.Set_opnd(opnd);
  
  return Add_CHI(wn, chi);
}

MU_LIST_IDX
WHIRL_SSA_MANAGER::Add_MU(WN* wn, const MU_NODE& mu) {
  return Add_node(wn, mu);
}

MU_LIST_IDX
WHIRL_SSA_MANAGER::Add_MU(WN* wn, WSSA_ST_IDX st_idx, VER_NUM opnd) {
  MU_NODE mu;
  mu.Set_WST_idx(st_idx);
  mu.Set_opnd(opnd);
  
  return Add_MU(wn, mu);
}

/*=============================================================================
 *
 * WSSA symbol management
 *
 *===========================================================================*/

VSYM_INFO_IDX
WHIRL_SSA_MANAGER::Add_vsym_info(const WST_Vsym_Info& vsym_info) {
  VSYM_INFO_IDX idx = _vsym_table.size();
  _vsym_table.push_back(vsym_info);
  return idx;
}

FIELD_INFO_IDX 
WHIRL_SSA_MANAGER::Add_field_info(const WST_Field_Info& field_info) {
  FIELD_INFO_IDX idx = _field_table.size();
  _field_table.push_back(field_info);
  return idx;
} 

WSSA_ST_IDX
WHIRL_SSA_MANAGER::Add_WSSA_symbol(const WSSA_Symbol_Entry& wssa_sym) {
  WSSA_ST_IDX idx = (WSSA_ST_IDX)_sym_table.size();
  _sym_table.push_back(wssa_sym);
  return idx;
}

WSSA_ST_IDX 
WHIRL_SSA_MANAGER::New_WST(WSSA_SYM_TYPE wst_type) {
  WSSA_Symbol_Entry sym(wst_type);
  switch (wst_type) {
    case WST_FIELD: {
      FIELD_INFO_IDX info_idx = Add_field_info(WST_Field_Info());
      sym.Set_field_idx(info_idx);
      break;
    }
    case WST_VSYM: {
      VSYM_INFO_IDX info_idx = Add_vsym_info(WST_Vsym_Info());
      sym.Set_vsym_idx(info_idx);
      break;
    }
    case WST_WHIRL:
      break;
    default:
      FmtAssert(FALSE, ("bad WSSA ST TYPE"));
  }
  return Add_WSSA_symbol(sym);
}

WSSA_ST_IDX
WHIRL_SSA_MANAGER::New_WST(ST_IDX idx) {
  Is_True(Get_WST_idx(idx) == WSSA_ST_ZERO, ("WHIRL ST already has a WSSA ST"));

  WSSA_Symbol_Entry sym(WST_WHIRL);
  sym.Set_st_idx(idx);
  WSSA_ST_IDX wst_idx = Add_WSSA_symbol(sym);
  Set_ST_wssa_st_idx(idx, (UINT32)wst_idx);
  return wst_idx;
}

WSSA_ST_IDX
WHIRL_SSA_MANAGER::New_WST(const WST_Field_Info& field) {
  WSSA_Symbol_Entry sym(WST_FIELD);
  FIELD_INFO_IDX info_idx = Add_field_info(field);
  sym.Set_field_idx(info_idx);
  return Add_WSSA_symbol(sym);
}

WSSA_ST_IDX
WHIRL_SSA_MANAGER::New_WST(const WST_Vsym_Info& vsym) {
  WSSA_Symbol_Entry sym(WST_VSYM);
  VSYM_INFO_IDX info_idx = Add_vsym_info(vsym);
  sym.Set_vsym_idx(info_idx);
  return Add_WSSA_symbol(sym);
}


WSSA_Symbol_Entry& 
WHIRL_SSA_MANAGER::Get_WST(WSSA_ST_IDX st_idx) {
  Is_True(st_idx >= 0 && st_idx < _sym_table.size(), ("wst_idx out of bounds"));
  return _sym_table[st_idx];
}

const WST_Field_Info&
WHIRL_SSA_MANAGER::Get_field_info(FIELD_INFO_IDX idx) const {
  Is_True(idx >= 0 && idx < _field_table.size(), ("field idx out of bounds"));
  return _field_table[idx];
}

const WST_Vsym_Info&
WHIRL_SSA_MANAGER::Get_vsym_info(VSYM_INFO_IDX idx) const {
  Is_True(idx >= 0 && idx < _vsym_table.size(), ("vsym idx out of bounds"));
  return _vsym_table[idx];
}

const WSSA_Symbol_Entry& 
WHIRL_SSA_MANAGER::Get_WST(WSSA_ST_IDX st_idx) const {
  Is_True(st_idx >= 0 && st_idx < _sym_table.size(), ("wst_idx out of bounds"));
  return _sym_table[st_idx];
}

WSSA_SYM_TYPE
WHIRL_SSA_MANAGER::Get_sym_type(WSSA_ST_IDX st_idx) {
  WSSA_Symbol_Entry& sym = Get_WST(st_idx);
  return sym.Sym_type();
}

ST*
WHIRL_SSA_MANAGER::Get_WHIRL_ST(WSSA_ST_IDX wst_idx) {
  WSSA_Symbol_Entry& sym = Get_WST(wst_idx);
  ST_IDX st_idx = 0;
  switch (sym.Sym_type()) {
  case WST_WHIRL:
    st_idx = sym.St_idx();
    break;
  default:
    FmtAssert(FALSE, ("bad sym type for Get_WHIRL_ST"));  
  }
  return &(St_Table[st_idx]);
}

VER_NUM
WHIRL_SSA_MANAGER::Get_max_ver(WSSA_ST_IDX st_idx) const {
  const WSSA_Symbol_Entry& sym = Get_WST(st_idx);
  return sym.Max_ver();
}

VER_NUM
WHIRL_SSA_MANAGER::Get_max_ver(ST_IDX st_idx) const {
  WSSA_ST_IDX wst_idx = Get_WST_idx(st_idx);
  return Get_max_ver(wst_idx);
}

VER_NUM
WHIRL_SSA_MANAGER::Get_max_ver(const ST* st) const {
  return Get_max_ver(ST_st_idx(st));
}

void
WHIRL_SSA_MANAGER::Set_max_ver(WSSA_ST_IDX st_idx, VER_NUM max_ver) {
  WSSA_Symbol_Entry& sym = Get_WST(st_idx);
  sym.Set_max_ver(max_ver);
}

void
WHIRL_SSA_MANAGER::Set_max_ver(ST_IDX st_idx, VER_NUM max_ver) {
  WSSA_ST_IDX wst_idx = Get_WST_idx(st_idx);
  Set_max_ver(wst_idx, wst_idx);
}

VER_NUM
WHIRL_SSA_MANAGER::New_ver(WSSA_ST_IDX st_idx) {
  WSSA_Symbol_Entry& sym = Get_WST(st_idx);
  return sym.Inc_max_ver();
}

VER_NUM
WHIRL_SSA_MANAGER::New_ver(ST_IDX st_idx) {
  WSSA_ST_IDX wst_idx = Get_WST_idx(st_idx);
  return New_ver(wst_idx);
}

ST_IDX
WHIRL_SSA_MANAGER::Get_ST_idx(WSSA_ST_IDX wst_idx) const {
  const WSSA_Symbol_Entry& sym = Get_WST(wst_idx);
  return sym.St_idx();
}

WSSA_ST_IDX
WHIRL_SSA_MANAGER::Get_WST_idx(ST_IDX st_idx) const {
  return (WSSA_ST_IDX)ST_wssa_st_idx(st_idx);
}

const char*
WHIRL_SSA_MANAGER::WST_name(WSSA_ST_IDX idx) const {
  const WSSA_Symbol_Entry& sym = Get_WST(idx);
  STR_IDX str_idx = 0;
  switch (sym.Sym_type()) {
  case WST_WHIRL:
    str_idx = ST_name_idx(St_Table[sym.St_idx()]);
    break;
  case WST_FIELD:
    str_idx = Get_field_info(sym.Field_idx()).Name_idx();
    break;
  case WST_VSYM:
    str_idx = Get_vsym_info(sym.Vsym_idx()).Name_idx();
    break;
  default:
    FmtAssert(FALSE, ("bad wssa symbol type"));
    return NULL;
  }
  return (const char*)(&(Str_Table[str_idx]));
}

/*=============================================================================
 *
 * WSSA iterator to traverse the PHI/MU/CHI list 
 *
 *===========================================================================*/

template<WSSA_NODE_KIND nkind>
INT32 WHIRL_SSA_MANAGER::Get_list_idx(const WN* wn) const {
  Is_True(WN_has_node(wn, nkind), ("WN can not have this kind of node"));

  WSSA_WN_IDX wn_idx = Map_idx(wn);
  const typename NKIND_TO_TYPES<nkind>::WN_MAP_TYPE& map = Get_map<nkind>();
  typename NKIND_TO_TYPES<nkind>::WN_MAP_TYPE::const_iterator it = map.find(wn_idx);
  if (it != map.end())
    return it->second;
  else
    return INVALID_IDX;
}

template<WSSA_NODE_KIND nkind>
INT32 WHIRL_SSA_MANAGER::Get_or_create_list(const WN* wn) {
  Is_True(WN_has_node(wn, nkind), ("WN can not have this kind of node"));

  WSSA_WN_IDX wn_idx = Map_idx(wn);
  typename NKIND_TO_TYPES<nkind>::WN_MAP_TYPE& map = Get_map<nkind>();
  typename NKIND_TO_TYPES<nkind>::WN_MAP_TYPE::iterator it = map.find(wn_idx);
  if (it != map.end()) {
    return it->second;
  }
  else {
    typename NKIND_TO_TYPES<nkind>::TABLE_TYPE& table = Get_table<nkind>();
    INT32 list_idx = table.size();
    typename NKIND_TO_TYPES<nkind>::LIST_TYPE list;
    list.Set_WN_map_idx(wn_idx);
    table.push_back(list);
    map[wn_idx] = list_idx;
    if (nkind == NKIND_PHI && WN_operator(wn) == OPR_LABEL) {
      _label_phi_map[WN_label_number(wn)] = list_idx;
    }
    return list_idx;
  }
}

template<WSSA_NODE_KIND nkind>
BOOL  WHIRL_SSA_MANAGER::WN_has_list(const WN* wn) const {
  if (WSSA::WN_has_node(wn, nkind) && 
      Get_list_idx<nkind>(wn) != INVALID_IDX)
    return TRUE;
  else
    return FALSE;
}
  
template<WSSA_NODE_KIND nkind>
const typename NKIND_TO_TYPES<nkind>::LIST_TYPE& WHIRL_SSA_MANAGER::Get_WN_list(const WN* wn) const {
  Is_True(WSSA::WN_has_node(wn, nkind), ("WN can not have this kind of list"));
  INT32 idx = Get_list_idx<nkind>(wn);
  const typename NKIND_TO_TYPES<nkind>::TABLE_TYPE& table = Get_table<nkind>();
  Is_True(idx >= 0 && idx < table.size(),
          ("Can not find list for given WN"));
  return table[idx];
}

template<WSSA_NODE_KIND nkind>
const typename NKIND_TO_TYPES<nkind>::NODE_TYPE& WHIRL_SSA_MANAGER::Get_WN_node(const WN* wn, WSSA_ST_IDX wst_idx) const {
  Is_True(WSSA::WN_has_node(wn, nkind), ("WN can not have this kind of node"));
  typedef typename NKIND_TO_TYPES<nkind>::LIST_TYPE LIST_TYPE;
  const LIST_TYPE& list = Get_WN_list<nkind>(wn);
  for (typename LIST_TYPE::const_iterator it  = list.begin();
       it != list.end();
       it ++) {
    if (it->WST_idx() == wst_idx) {
      return *it;
    }
  }
  FmtAssert(FALSE, ("can not find the phi node"));
  return *((const typename NKIND_TO_TYPES<nkind>::NODE_TYPE*)NULL);
}

PHI_LIST_IDX
WHIRL_SSA_MANAGER::Find_WN_PHI_list(const WN* wn) const {
  return Get_list_idx<NKIND_PHI>(wn);
}

PHI_LIST_IDX
WHIRL_SSA_MANAGER::Find_or_create_WN_PHI_list(const WN* wn) {
  return Get_or_create_list<NKIND_PHI>(wn);
}

CHI_LIST_IDX
WHIRL_SSA_MANAGER::Find_WN_CHI_list(const WN* wn) const {
  return Get_list_idx<NKIND_CHI>(wn);
}

CHI_LIST_IDX
WHIRL_SSA_MANAGER::Find_or_create_WN_CHI_list(const WN* wn) {
  return Get_or_create_list<NKIND_CHI>(wn);
}

MU_LIST_IDX
WHIRL_SSA_MANAGER::Find_WN_MU_list (const WN* wn) const {
  return Get_list_idx<NKIND_MU>(wn);
}

MU_LIST_IDX
WHIRL_SSA_MANAGER::Find_or_create_WN_MU_list (const WN* wn) {
  return Get_or_create_list<NKIND_MU>(wn);
}

BOOL
WHIRL_SSA_MANAGER::WN_has_PHI_list(const WN* wn) const {
  return WN_has_list<NKIND_PHI>(wn);
}

BOOL
WHIRL_SSA_MANAGER::WN_has_CHI_list(const WN* wn) const {
  return WN_has_list<NKIND_CHI>(wn);
}

BOOL
WHIRL_SSA_MANAGER::WN_has_MU_list(const WN* wn) const {
  return WN_has_list<NKIND_MU>(wn);
}

const WN_PHI_LIST&
WHIRL_SSA_MANAGER::WN_PHI_list(const WN* wn) const {
  return Get_WN_list<NKIND_PHI>(wn);
}

const WN_PHI_LIST&
WHIRL_SSA_MANAGER::WN_PHI_list(INT32 label_num) const {
  LABEL_PHI_MAP::const_iterator it = _label_phi_map.find(label_num);
  Is_True(it != _label_phi_map.end(), ("can not find label"));
  Is_True(it->second >= 0 && it->second < _phi_table.size(),
          ("Can not find PHI list for given label"));
  return _phi_table[it->second];
}

const WN_CHI_LIST&
WHIRL_SSA_MANAGER::WN_CHI_list(const WN* wn) const {
  return Get_WN_list<NKIND_CHI>(wn);
}

const WN_MU_LIST&
WHIRL_SSA_MANAGER::WN_MU_list(const WN* wn) const {
  return Get_WN_list<NKIND_MU>(wn);
}

const PHI_NODE&
WHIRL_SSA_MANAGER::WN_PHI_node(const WN* wn, WSSA_ST_IDX wst_idx) const {
  return Get_WN_node<NKIND_PHI>(wn, wst_idx);
}

const CHI_NODE&
WHIRL_SSA_MANAGER::WN_CHI_node(const WN* wn, WSSA_ST_IDX wst_idx) const {
  return Get_WN_node<NKIND_CHI>(wn, wst_idx);
}

const MU_NODE&
WHIRL_SSA_MANAGER::WN_MU_node(const WN* wn, WSSA_ST_IDX wst_idx) const {
  return Get_WN_node<NKIND_MU>(wn, wst_idx);
}

/*=============================================================================
 *
 * WSSA utilities for update
 *
 *===========================================================================*/

VER_NUM 
WHIRL_SSA_MANAGER::Rename_ver(WSSA_ST_IDX wst_idx, VER_NUM ver, WST_UNIQ_IDX_MAP* ver_map)
{
  Is_True( ver_map != NULL, ("WST_UNIQ_IDX_MAP is null") );
  WST_UNIQ_IDX idx = std::make_pair(wst_idx, ver);
  WST_UNIQ_IDX_MAP::iterator it = (*ver_map).find(idx);
  if (it != (*ver_map).end()) {
    WST_UNIQ_IDX& new_idx = it->second;
    return new_idx.second;
  }
  else {
    WST_UNIQ_IDX new_idx = std::make_pair(wst_idx, New_ver(wst_idx));
    (*ver_map)[idx] = new_idx;
    return new_idx.second;
  }
}

VER_NUM
WHIRL_SSA_MANAGER::Rename_ver(ST_IDX st_idx, VER_NUM ver, WST_UNIQ_IDX_MAP* ver_map)
{
  WSSA_ST_IDX wst_idx = Get_WST_idx(st_idx);
  return Rename_ver(wst_idx, ver, ver_map);
}

template<typename NODE>
void
WHIRL_SSA_MANAGER::Copy_node(NODE& dest, const NODE& src, BOOL rename, WST_UNIQ_IDX_MAP* ver_map)
{
  dest.Set_WST_idx(src.WST_idx());
  for (int i=0; i<src.Res_count(); i++) {
    dest.Set_res(i, rename ?
                    Rename_ver(src.WST_idx(), src.Get_res(i), ver_map) : src.Get_res(i));
  }
  for (int i=0; i<src.Opnd_count(); i++) {
    dest.Set_opnd(i, rename ?
                     Rename_ver(src.WST_idx(), src.Get_opnd(i), ver_map) : src.Get_opnd(i));
  }
}

void
WHIRL_SSA_MANAGER::Copy_SSA(WN* dest, const WN* src, BOOL rename, WST_UNIQ_IDX_MAP* ver_map)
{
  Is_True(WN_operator(dest) == WN_operator(src),
          ("WN_operator does not match, can not copy"));
  Is_True(ver_map != NULL, ("WST_UNIQ_IDX_MAP is null"));

  if (WN_has_phi(src)) {
    const WN_PHI_LIST& list = WN_PHI_list(src);
    for (WN_PHI_LIST::const_iterator it = list.begin();
         it != list.end();
         it ++) {
      PHI_NODE phi;
      Copy_node(phi, *it, rename, ver_map);
      Add_PHI(dest, phi);
    }
  }

  if (WN_has_chi(src)) {
    const WN_CHI_LIST& list = WN_CHI_list(src);
    for (WN_CHI_LIST::const_iterator it = list.begin();
         it != list.end();
         it ++) {
      CHI_NODE chi;
      Copy_node(chi, *it, rename, ver_map);
      Add_CHI(dest, chi);
    }
  }

  if (WN_has_mu(src)) {
    const WN_MU_LIST& list = WN_MU_list(src);
    for (WN_MU_LIST::const_iterator it = list.begin();
         it != list.end();
         it ++ ) {
      MU_NODE mu;
      Copy_node(mu, *it, rename, ver_map);
      Add_MU(dest, mu);
    }
  }

  if (WN_has_ver(src)) {
    VER_NUM ver = Get_WN_ver(src);
    Set_WN_ver(dest, rename ?
                     Rename_ver(WN_st_idx(src), ver, ver_map) : ver); 
  } 

}

WN* 
WHIRL_SSA_MANAGER::Copy_tree (const WN* tree, BOOL copy_map, BOOL rename, WST_UNIQ_IDX_MAP* ver_map)
{
  OPERATOR op = WN_operator(tree);
  Is_True(tree != NULL, ("Can not copy NULL tree"));
  Is_True(op >= OPERATOR_FIRST && op <= OPERATOR_LAST,
          ("bad operator"));

  WST_UNIQ_IDX_MAP temp_map;
  if (rename && ver_map == NULL) {
    // if renaming with NULL map, using a temporary map
    ver_map = &temp_map;
  }

  WN* copy = WN_CopyNode(tree);

  if (copy_map) 
    WN_COPY_All_Maps(copy, const_cast<WN*>(tree));

  Copy_SSA(copy, tree, rename, ver_map);

  if (op == OPR_BLOCK) {
    WN *prev_kid, *new_kid, *kid;
    new_kid = NULL;
    kid = WN_first(tree);
    if (kid) {
      new_kid = Copy_tree(kid, copy_map, rename, ver_map);
      WN_prev(new_kid) = NULL;
      WN_first(copy) = new_kid;
      kid = WN_next(kid);
      prev_kid = new_kid;

      while ( kid ) {
        new_kid = Copy_tree(kid, copy_map, rename, ver_map);
        WN_next(prev_kid) = new_kid;
        WN_prev(new_kid) = prev_kid;
        prev_kid = new_kid;
        kid = WN_next(kid);
      }

      WN_next(new_kid) = NULL;
    }
    else {
      WN_first(copy) = NULL;
    }
    WN_last(copy) = new_kid;
  }
  else {
    for (int kidno = 0; kidno < WN_kid_count(tree); kidno++) {
      WN* kid = WN_kid(tree, kidno);
      if ( kid ) {
        WN_kid(copy, kidno) = Copy_tree(kid, copy_map, rename, ver_map);
      }
      else {
        WN_kid(copy, kidno) = NULL;
      }
    }
  }
  return copy;
}

} /* namespace WSSA */

