/* Constructed by gen_x_list $Revision: 1.1.1.1 $
 */
#ifndef st_list_included
#define st_list_included
#include  "defs.h"
#include  "errors.h"
#include  "mempool.h"
#include  "cgir.h"
#include  "st_list.h"
#define _X_LIST_TYPE_ ST_LIST
#define _X_LIST_TAG_ ST_LIST
#define _X_BASE_TYPE_ ST*
#define _X_RCS_ID_ st_list_rcs_id
#define _X_PUSH_ ST_LIST_Push
#define _X_DELETE_ ST_LIST_Delete
#define _X_DELETE_IF_ ST_LIST_Delete_If
#define ST_LIST_first(x) ((x)->first)
#define ST_LIST_rest(x)  ((x)->rest)
#define _X_LIST_LOCAL_BASE_TYPE_ ST_LIST_LOCAL_BASE_TYPE_
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
