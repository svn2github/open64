#ifndef WSSA_MGR_INCLUDED
#define WSSA_MGR_INCLUDED

#include "wssa_defs.h"
#include "wssa_core.h"
#include "wssa_sym.h"
#include "wssa_utils.h"
#include "wn.h"
#include "symtab.h"
#include <vector>

namespace WSSA {

/*
 * STATUS: WHIRL_SSA_MANAGER internal status
 * If internal status is not STAT_OK, can not query the PHI/CHI/MU/VER info
 */
enum MGR_STAT {
  STAT_INIT,    // just initialized
  STAT_EMIT,    // in the Pre_OPT emitter
  STAT_UPDATE,  // in the SSA Updater
  STAT_VERIFY,  // in the SSA verifier
  STAT_DUMP,    // in dump_tree/wn without ssa
  STAT_OK,      // OK, ready for normal operations
};

class WHIRL_SSA_MANAGER {
private:
  BOOL _ignore_dup_node;
  BOOL _internal_check;
  MGR_STAT _stat;

private:
  WN* _root;

  /* tables for IR */
  PHI_TABLE _phi_table;
  CHI_TABLE _chi_table;
  MU_TABLE  _mu_table;

  /* tables for symbol */
  WST_FIELD_TABLE _field_table;
  WST_VSYM_TABLE  _vsym_table;
  WST_SYM_TABLE   _sym_table;

  /* special symbols */
  WSSA_ST_IDX  _ret_vsym_st;
  WSSA_ST_IDX  _default_vsym_st;

  /* maps */
  WN_VER_MAP   _wn_ver_map;
  LABEL_PHI_MAP _label_phi_map;
  WN_PHI_MAP _phi_map;      // rebuilt in read
  WN_CHI_MAP _chi_map;      // rebuilt in read
  WN_MU_MAP  _mu_map;       // rebuilt in read

protected:
  /* generic interfaces */
  template<WSSA_NODE_KIND nkind>
  typename NKIND_TO_TYPES<nkind>::TABLE_TYPE& Get_table();

  template<WSSA_NODE_KIND nkind>
  const typename NKIND_TO_TYPES<nkind>::TABLE_TYPE& Get_table() const;

  template<WSSA_NODE_KIND nkind>
  typename NKIND_TO_TYPES<nkind>::WN_MAP_TYPE& Get_map();

  template<WSSA_NODE_KIND nkind>
  const typename NKIND_TO_TYPES<nkind>::WN_MAP_TYPE& Get_map() const;

  template<typename NODE>
  INT32 Add_node(const WN* wn, const NODE& node);

  template<typename NODE>
  void Copy_node(NODE& dest, const NODE& src, BOOL rename, WST_UNIQ_IDX_MAP* ver_map);

  template<WSSA_NODE_KIND nkind>
  INT32 Get_list_idx(const WN* wn) const;

  template<WSSA_NODE_KIND nkind>
  INT32 Get_or_create_list(const WN* wn);

  template<WSSA_NODE_KIND nkind>
  BOOL WN_has_list(const WN* wn) const;

  template<WSSA_NODE_KIND nkind>
  const typename NKIND_TO_TYPES<nkind>::LIST_TYPE& Get_WN_list(const WN* wn) const;

  template<WSSA_NODE_KIND nkind>
  const typename NKIND_TO_TYPES<nkind>::NODE_TYPE& Get_WN_node(const WN* wn, WSSA_ST_IDX wst_idx) const;

protected:
  /* Get list index on WN */
  PHI_LIST_IDX Find_WN_PHI_list(const WN* wn) const;
  CHI_LIST_IDX Find_WN_CHI_list(const WN* wn) const;
  MU_LIST_IDX  Find_WN_MU_list (const WN* wn) const;
  PHI_LIST_IDX Find_or_create_WN_PHI_list(const WN* wn);
  CHI_LIST_IDX Find_or_create_WN_CHI_list(const WN* wn);
  MU_LIST_IDX  Find_or_create_WN_MU_list (const WN* wn);

  /* for I/O only */
  PHI_TABLE& PHI_table()         { return _phi_table;     }
  CHI_TABLE& CHI_table()         { return _chi_table;     }
  MU_TABLE&  MU_table()          { return _mu_table;      }
  WST_FIELD_TABLE& Field_table() { return _field_table;   }
  WST_VSYM_TABLE& Vsym_table()   { return _vsym_table;    }
  WST_SYM_TABLE& Sym_table()     { return _sym_table;     }

  WN_PHI_MAP& WN_PHI_map()       { return _phi_map;       }
  WN_CHI_MAP& WN_CHI_map()       { return _chi_map;       }
  WN_MU_MAP&  WN_MU_map()        { return _mu_map;        }
  WN_VER_MAP&   WN_ver_map()     { return _wn_ver_map;    }
  LABEL_PHI_MAP& Label_PHI_map() { return _label_phi_map; }

  /* Generate internal MAP_ID from WN_IDX */
  WSSA_WN_IDX Map_idx(const WN* wn) const;

public:
  WHIRL_SSA_MANAGER();
 
  WN* Root_WN() const      { return _root; }
  void Set_root_WN(WN* wn) { _root = wn;   }

  MGR_STAT Stat() const           { return _stat;            }
  void   Set_stat(MGR_STAT stat)  { _stat = stat;            }
  BOOL Is_stat_OK() const         { return _stat == STAT_OK; }

  void Clear();

public:
  /* Attach the PHI_NODE to the WHIRL node */
  PHI_LIST_IDX Add_PHI(WN* wn, const PHI_NODE& phi);

  /* Create a new PHI_NODE 
   *    <st_idx, res> = phi (<st_idx, opnd1>, <st_idx, opnd2>) 
   * and attach to the WHIRL node
   */
  PHI_LIST_IDX Add_PHI(WN* wn, WSSA_ST_IDX st_idx, VER_NUM res, VER_NUM opnd1, VER_NUM opnd2);

  /* Attach the CHI_NODE to the WHIRL node */
  CHI_LIST_IDX Add_CHI(WN* wn, const CHI_NODE& chi);

  /* Create a new CHI_NODE
   *   <st_idx, res> = chi (<st_idx, opnd>)
   * and attach to the WHIRL node 
   */
  CHI_LIST_IDX Add_CHI(WN* wn, WSSA_ST_IDX st_idx, VER_NUM res, VER_NUM opnd);

  /* Attach the MU_NODE to the WHIRL node */
  MU_LIST_IDX  Add_MU (WN* wn, const MU_NODE&  mu);
  /* Create a new MU_NODE
   *   mu (<st_idx, opnd>)
   * and attach to the WHIRL node */
  MU_LIST_IDX  Add_MU (WN* wn, WSSA_ST_IDX st_idx, VER_NUM opnd);
  
  /* Lists attached on WN */
  BOOL  WN_has_PHI_list(const WN* wn) const;
  BOOL  WN_has_CHI_list(const WN* wn) const;
  BOOL  WN_has_MU_list (const WN* wn) const;
  const WN_PHI_LIST& WN_PHI_list(const WN* wn) const;
  const WN_PHI_LIST& WN_PHI_list(INT32 label_num) const;
  const WN_CHI_LIST& WN_CHI_list(const WN* wn) const;
  const WN_MU_LIST&  WN_MU_list(const WN* wn) const;

  /* Get PHI/CHI/MU node of given WN* and ST_IDX */
  const PHI_NODE& WN_PHI_node (const WN* wn, WSSA_ST_IDX st_idx) const;
  const CHI_NODE& WN_CHI_node (const WN* wn, WSSA_ST_IDX st_idx) const;
  const MU_NODE&  WN_MU_node  (const WN* wn, WSSA_ST_IDX st_idx) const;

  /* WHIRL node symbol and version */
  WSSA_ST_IDX WN_WST_idx(const WN* wn) const { return Get_WST_idx(WN_st_idx(wn));  }
  VER_NUM Get_WN_ver(const WN* wn) const     { 
    WN_VER_MAP::const_iterator it = _wn_ver_map.find( Map_idx(wn) );
    Is_True( it != _wn_ver_map.end(), ("Can not find wn_ver") );
    return it->second;
  }
  void Set_WN_ver(WN* wn, VER_NUM ver)       { _wn_ver_map[ Map_idx(wn) ] = ver;   }

private:
  /* Manage Symbols and Max version of the symbol */
  FIELD_INFO_IDX Add_field_info(const WST_Field_Info& field_info);
  VSYM_INFO_IDX Add_vsym_info(const WST_Vsym_Info& vsym_info);
  WSSA_ST_IDX Add_WSSA_symbol(const WSSA_Symbol_Entry& wssa_sym);
  WSSA_Symbol_Entry& Get_WST(WSSA_ST_IDX wst_idx);

public:   
  /* Manage Symbols and Max version of the symbol */
  WSSA_ST_IDX New_WST(WSSA_SYM_TYPE wst_type);
  WSSA_ST_IDX New_WST(ST_IDX idx);
  WSSA_ST_IDX New_WST(const WST_Field_Info& field);
  WSSA_ST_IDX New_WST(const WST_Vsym_Info& vsym);

  const WST_SYM_TABLE& Get_sym_table() const { return _sym_table; }

  const WST_Field_Info& Get_field_info(FIELD_INFO_IDX idx) const;
  const WST_Vsym_Info& Get_vsym_info(VSYM_INFO_IDX idx) const;
  const WSSA_Symbol_Entry& Get_WST(WSSA_ST_IDX wst_idx) const;
  WSSA_SYM_TYPE Get_sym_type(WSSA_ST_IDX st_idx);
  ST* Get_WHIRL_ST(WSSA_ST_IDX wst_idx);

  VER_NUM Get_max_ver(WSSA_ST_IDX wst_idx) const;
  VER_NUM Get_max_ver(ST_IDX st_idx) const;
  VER_NUM Get_max_ver(const ST* st) const;
  void Set_max_ver(WSSA_ST_IDX wst_idx, VER_NUM max_ver);
  void Set_max_ver(ST_IDX st_idx, VER_NUM max_ver);
  VER_NUM New_ver(WSSA_ST_IDX wst_idx);
  VER_NUM New_ver(ST_IDX st_idx);

  ST_IDX Get_ST_idx(WSSA_ST_IDX wst_idx) const;
  WSSA_ST_IDX Get_WST_idx(ST_IDX st_idx) const;
 
  void Set_default_vsym(WSSA_ST_IDX idx) { _default_vsym_st = idx;  }
  WSSA_ST_IDX Default_vsym()             { return _default_vsym_st; }
  void Set_return_vsym(WSSA_ST_IDX idx)  { _ret_vsym_st = idx;      }
  WSSA_ST_IDX Return_vsym()              { return _ret_vsym_st;     }

  const char* WST_name(WSSA_ST_IDX idx) const;

public:
  VER_NUM Rename_ver(WSSA_ST_IDX wst_idx, VER_NUM ver, WST_UNIQ_IDX_MAP* ver_map);
  VER_NUM Rename_ver(ST_IDX st_idx, VER_NUM ver, WST_UNIQ_IDX_MAP* ver_map);
  /* Copy SSA info */
  void Copy_SSA(WN* dest, const WN* src, BOOL rename, WST_UNIQ_IDX_MAP* ver_map);
  /* Copy tree with SSA info */
  WN* Copy_tree(const WN* tree, BOOL copy_map, BOOL rename, WST_UNIQ_IDX_MAP* ver_map);

private:
  /* dump methods */
  template<typename TBL, typename MAP>
  int Print_table_with_map(const TBL& tbl, const MAP& map, FILE* fp) const;

public:
  /* dump methods */
  int Print(FILE* fp = stdout) const;
  void Verify() const;
};

}; /* namespace WSSA */

#endif  /* WSSA_MGR_INCLUDED */
