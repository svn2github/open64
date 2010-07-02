/* Constructed by gen_x_list $Revision: 1.1.1.1 $
 */
#ifndef bb_list_included
#define bb_list_included
#include  "defs.h"
#include  "errors.h"
#include  "mempool.h"
#include  "cgir.h"
#include  "bb_list.h"
#define _X_LIST_TYPE_ BB_LIST
#define _X_LIST_TAG_ BB_LIST
#define _X_BASE_TYPE_ BB*
#define _X_RCS_ID_ bb_list_rcs_id
#define _X_PUSH_ BB_LIST_Push
#define _X_DELETE_ BB_LIST_Delete
#define _X_DELETE_IF_ BB_LIST_Delete_If
#define BB_LIST_first(x) ((x)->first)
#define BB_LIST_rest(x)  ((x)->rest)
#define _X_LIST_LOCAL_BASE_TYPE_ BB_LIST_LOCAL_BASE_TYPE_
#include  "x_list.h"
#undef _X_LIST_TYPE_
#undef _X_LIST_TAG_
#undef _X_BASE_TYPE_
#undef _X_RCS_ID_
#undef _X_PUSH_
#undef _X_DELETE_
#undef _X_DELETE_IF_
#undef _X_LIST_LOCAL_BASE_TYPE_
#endif
