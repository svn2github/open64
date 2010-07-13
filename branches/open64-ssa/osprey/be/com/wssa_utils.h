#ifndef WSSA_UTILS_INCLUDED
#define WSSA_UTILS_INCLUDED

#include "defs.h"
#include <stdio.h>
#include <sys/time.h>
#include <vector>
#include "wssa_defs.h"
#include "tracing.h"

#define TT_WSSA_CALL_TRACE        0x00000001 // trace call chain in wssa
#define TT_WSSA_MGR               0x00000010 // trace wssa manager
#define TT_WSSA_PREOPT_EMT        0x00000020 // trace wssa Pre_OPT emitter
#define TT_WSSA_VERIFIER          0x00000040 // trace wssa verifier
#define TT_WSSA_WHIRL2SRC         0x00000080 // trace wssa whirl2c/whirl2f
#define TT_WSSA_UPDATER           0x00000100 // trace wssa updater
#define TT_WSSA_SIMPLIFIER        0x00000200 // trace wssa simplifier
#define TT_WSSA_LNO               0x00010000 // trace wssa info usage/update in LNO

namespace WSSA {

// utility routines for Print/Verify, etc
// in order to remove the dependency on WHRIL_SSA_MANAGER in Print/Verify routines
void Put_indent(FILE* fp, int indent);
const char* Get_WST_name(WSSA_ST_IDX idx);
VER_NUM Get_WST_max_ver(WSSA_ST_IDX idx);

// utility routines for dump WN/tree
void dump_wn_no_ssa(WN* wn);
void dump_tree_no_ssa(WN* wn);
void fdump_wn_no_ssa(FILE* f, WN* wn);
void fdump_tree_no_ssa(FILE* f, WN* wn);

};

#endif /* WSSA_UTILS_INCLUDED */

