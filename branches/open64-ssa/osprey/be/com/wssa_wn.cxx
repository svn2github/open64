#include "wssa_wn.h"
#include "wn.h"

namespace WSSA {

BOOL
WN_has_node(const WN* wn, WSSA_NODE_KIND nkind)
{
  switch (nkind) {
    case NKIND_PHI:
      return WN_has_phi(wn);
    case NKIND_CHI:
      return WN_has_chi(wn);
    case NKIND_MU:
      return WN_has_mu (wn);
    default:
      Is_True(FALSE, ("Invalid nkind"));
      return FALSE;
  }
}

BOOL
WN_has_phi(const WN* wn) 
{
  OPERATOR opr = WN_operator(wn);
  switch (opr) {
    case OPR_IF:
    case OPR_DO_LOOP:
    case OPR_WHILE_DO:
    case OPR_DO_WHILE:
    case OPR_LABEL:
      return TRUE;
    default:
      return FALSE;
  }
}

BOOL
WN_has_chi(const WN* wn) 
{
  OPERATOR opr = WN_operator(wn);
  switch (opr) {
    case OPR_FUNC_ENTRY:  // entry chi
    case OPR_ISTORE:
    case OPR_ISTOREX:
    case OPR_ISTBITS:
    case OPR_MSTORE:
    case OPR_STID:
    case OPR_STBITS:
    case OPR_CALL:
    case OPR_ICALL:
    case OPR_INTRINSIC_CALL:
    case OPR_IO:
    case OPR_FORWARD_BARRIER:
    case OPR_BACKWARD_BARRIER:
    case OPR_DEALLOCA:
    case OPR_OPT_CHI:  // entry chi
    case OPR_REGION:  // black-box region
    case OPR_ASM_STMT:
      return TRUE;
    case OPR_LABEL:
      if (WN_Label_Is_Handler_Begin(wn))  // entry chi
        return TRUE;
      else
        return FALSE;
    default:
      return FALSE;
  }
}

BOOL
WN_has_mu(const WN* wn) 
{
  OPERATOR opr = WN_operator(wn);
  switch (opr) {
    case OPR_ASM_STMT:
    case OPR_ILOAD:
    case OPR_ILDBITS:
    case OPR_ILOADX:
    case OPR_MLOAD:
    case OPR_CALL:
    case OPR_ICALL:
    case OPR_INTRINSIC_CALL:
    case OPR_IO:
    case OPR_RETURN:
    case OPR_RETURN_VAL:
    case OPR_FORWARD_BARRIER:
    case OPR_BACKWARD_BARRIER:
    case OPR_REGION: // black-box region
    case OPR_REGION_EXIT:
    case OPR_PARM:
      return TRUE;
    default:
      return FALSE;
  }
}

BOOL
WN_has_ver(const WN* wn) 
{
  OPERATOR opr = WN_operator(wn);
  switch (opr) {
    case OPR_LDID:
    case OPR_LDBITS:
    case OPR_STID:
    case OPR_STBITS:
      return TRUE;
    default:
      return FALSE;
  }
}

BOOL
WN_def_ver(const WN* wn)
{
  OPERATOR opr = WN_operator(wn);
  switch (opr) {
    case OPR_STID:
    case OPR_STBITS:
      return TRUE;
    default:
      return FALSE;
  }
}

BOOL
WN_use_ver(const WN* wn)
{
  OPERATOR opr = WN_operator(wn);
  switch (opr) {
    case OPR_LDID:
    case OPR_LDBITS:
      return TRUE;
    default:
      return FALSE;
  }
}

} /* namespace WSSA */

