#include "wssa_core.h"
#include "wssa_mgr.h"
#include "wn.h"
#include "symtab.h"
#include "pu_info.h"
#include "ir_reader.h"

namespace WSSA {

// return the name of the given SSA node kind
const char* WSSA_node_name(INT kind) {
  switch( kind ) {
    case NKIND_PHI: return "phi";
    case NKIND_CHI: return "chi";
    case NKIND_MU: return "mu";
    default: return "unknown";
  }
}

} /* namespace WSSA */
