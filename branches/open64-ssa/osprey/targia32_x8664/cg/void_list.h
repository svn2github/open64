/* Constructed by gen_x_list $Revision: 1.1.1.1 $
 */
#ifndef void_list_included
#define void_list_included
#include  "defs.h"
#include  "errors.h"
#include  "mempool.h"
#include  "cgir.h"
#include  "void_list.h"
#define _X_LIST_TYPE_ VOID_LIST
#define _X_LIST_TAG_ VOID_LIST
#define _X_BASE_TYPE_ void*
#define _X_RCS_ID_ void_list_rcs_id
#define _X_PUSH_ VOID_LIST_Push
#define _X_DELETE_ VOID_LIST_Delete
#define _X_DELETE_IF_ VOID_LIST_Delete_If
#define VOID_LIST_first(x) ((x)->first)
#define VOID_LIST_rest(x)  ((x)->rest)
#define _X_LIST_LOCAL_BASE_TYPE_ VOID_LIST_LOCAL_BASE_TYPE_
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
