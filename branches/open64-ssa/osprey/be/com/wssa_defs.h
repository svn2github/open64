#ifndef WSSA_DEFS_INCLUDED
#define WSSA_DEFS_INCLUDED

#include "defs.h"
#include <utility>

/* external types */
typedef INT32 WSSA_WN_IDX;  // wn_map_id
class WN;                   // forward decl of WN
class ST;                   // forward decl of ST

#define INVALID_VER     0xffffffff
#define INVALID_IDX     0xffffffff
#define ZERO_VER_NUM    0

/* internal types */
namespace WSSA {

// 3 kinds of SSA nodes: phi, chi, mu
enum WSSA_NODE_KIND {
  NKIND_PHI,
  NKIND_CHI,
  NKIND_MU
};

// return the name of SSA nodes
extern const char* WSSA_node_name(INT kind);

// SSA symtab index, using enum to avoid the conflict with ST_IDX
enum WSSA_ST_IDX {
  WSSA_ST_ZERO = 0,
  WSSA_ST_FIRST = 1,
  WSSA_ST_INVALID = INVALID_IDX
};

typedef UINT32 FIELD_INFO_IDX;
typedef UINT32 VSYM_INFO_IDX;

typedef UINT32 VER_NUM; 
typedef UINT32 PHI_LIST_IDX;
typedef UINT32 CHI_LIST_IDX;
typedef UINT32 MU_LIST_IDX;

/* WST_UNIQ_IDX = WSSA_ST_IDX + VER_NUM */
typedef std::pair<WSSA_ST_IDX, VER_NUM> WST_UNIQ_IDX;

enum WSSA_VSYM_TYPE {
  WVT_UNKNOWN,         /* undefined type */
  WVT_LDA_SCALAR,      /* lda-based scalar vsym */
  WVT_LDA_VSYM,        /* lda-based non-scalar vsym */
  WVT_UNIQUE_VSYM,     /* unique vsym */
  WVT_SPECIAL_VSYM,    /* special vsym, def_vsym and ret_vsym */
};

enum WSSA_SYM_TYPE {
  WST_UNKNOWN,         /* undefined type */
  WST_WHIRL,           /* WHIRL ST */
  WST_FIELD,           /* FIELDS in struct variable */
  WST_VSYM,            /* virtual symbols */
};

class WHIRL_SSA_MANAGER;    // forward decl of WHIRL_SSA_MANAGER

}; /* namespace WSSA */

#endif /* WSSA_DEFS_INCLUDED */
