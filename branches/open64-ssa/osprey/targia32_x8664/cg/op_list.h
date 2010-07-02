/* Constructed by gen_x_list $Revision: 1.1.1.1 $
 */
#ifndef op_list_included
#define op_list_included
#include  "defs.h"
#include  "mempool.h"
#include  "cgir.h"
#include  "op_list.h"
#define _X_LIST_TYPE_ OP_LIST
#define _X_LIST_TAG_ OP_LIST
#define _X_BASE_TYPE_ OP*
#define _X_RCS_ID_ op_list_rcs_id
#define _X_PUSH_ OP_LIST_Push
#define _X_DELETE_ OP_LIST_Delete
#define _X_DELETE_IF_ OP_LIST_Delete_If
#define OP_LIST_first(x) ((x)->first)
#define OP_LIST_rest(x)  ((x)->rest)
#define _X_LIST_LOCAL_BASE_TYPE_ OP_LIST_LOCAL_BASE_TYPE_
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
