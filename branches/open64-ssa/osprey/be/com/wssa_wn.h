#ifndef WSSA_WN_INCLUDED
#define WSSA_WN_INCLUDED

#include "wssa_defs.h"
class WN;
class ST;

namespace WSSA {

// return TRUE if the node with given kind can attach to the WN
BOOL WN_has_node(const WN* wn, WSSA_NODE_KIND nkind);

// return TRUE if the PHI_NODE can attach to the WN
BOOL WN_has_phi(const WN* wn);

// return TRUE if the CHI_NODE can attach to the WN
// refer WN_has_chi() in  opt/opt_wn.cxx
BOOL WN_has_chi(const WN* wn);

// return TRUE if the MU_NODE can attach to the WN
// refer WN_has_mu() in opt/opt_wn.cxx
BOOL WN_has_mu (const WN* wn);

// return TRUE if the version can attach to the WN
BOOL WN_has_ver(const WN* wn);

// return TRUE if the version can be defined by the WN (STID/STBITS)
BOOL WN_def_ver(const WN* wn);

// return TRUE if the version can be used by the WN (LDID/LDBITS)
BOOL WN_use_ver(const WN* wn);

} /* namespace WSSA */

#endif  /* WSSA_WN_INCLUDED */
