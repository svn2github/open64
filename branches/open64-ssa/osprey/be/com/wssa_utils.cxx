#include "wssa_utils.h"
#include "wssa_mgr.h"
#include "pu_info.h"
#include "ir_reader.h"

namespace WSSA {

void
Put_indent(FILE* fp, int indent) {
  fprintf(fp, "%*s", indent, "");
}

const char* Get_WST_name(WSSA_ST_IDX idx) {
  const WHIRL_SSA_MANAGER* mgr = PU_Info_ssa_ptr(Current_PU_Info);
  return mgr->WST_name(idx);
}

VER_NUM Get_WST_max_ver(WSSA_ST_IDX idx) {
  const WHIRL_SSA_MANAGER* mgr = PU_Info_ssa_ptr(Current_PU_Info);
  return mgr->Get_max_ver(idx);
}

void dump_wn_no_ssa(WN* wn) {
  WHIRL_SSA_MANAGER* mgr = PU_Info_ssa_ptr(Current_PU_Info);
  MGR_STAT mgr_stat;
  if (mgr) {
    mgr_stat = mgr->Stat();
    mgr->Set_stat(STAT_DUMP); // disable SSA info
  }

  dump_wn(wn);

  if (mgr)
    mgr->Set_stat(mgr_stat);
}


void dump_tree_no_ssa(WN* wn) {
  WHIRL_SSA_MANAGER* mgr = PU_Info_ssa_ptr(Current_PU_Info);
  MGR_STAT mgr_stat;
  if (mgr) {
    mgr_stat = mgr->Stat();
    mgr->Set_stat(STAT_DUMP); // disable SSA info
  }

  dump_tree(wn);

  if (mgr)
    mgr->Set_stat(mgr_stat);
}

void fdump_wn_no_ssa(FILE* f, WN* wn) {
  WHIRL_SSA_MANAGER* mgr = PU_Info_ssa_ptr(Current_PU_Info);
  MGR_STAT mgr_stat;
  if (mgr) {
    mgr_stat = mgr->Stat();
    mgr->Set_stat(STAT_DUMP); // disable SSA info
  }

  fdump_wn(f, wn);

  if (mgr)
    mgr->Set_stat(mgr_stat);
}

void fdump_tree_no_ssa(FILE* f, WN* wn) {
  WHIRL_SSA_MANAGER* mgr = PU_Info_ssa_ptr(Current_PU_Info);
  MGR_STAT mgr_stat;
  if (mgr) {
    mgr_stat = mgr->Stat();
    mgr->Set_stat(STAT_DUMP); // disable SSA info
  }

  fdump_tree(f, wn);

  if (mgr)
    mgr->Set_stat(mgr_stat);
}


} /* namespace WSSA */

