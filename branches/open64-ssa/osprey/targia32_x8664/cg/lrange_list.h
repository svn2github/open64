/* Constructed by gen_x_list $Revision: 1.1.1.1 $
 */
#ifndef lrange_list_included
#define lrange_list_included
#include  "defs.h"
#include  "errors.h"
#include  "mempool.h"
#include  "gra_bb.h"
#include  "gra_lrange.h"
#include  "lrange_list.h"
#define _X_LIST_TYPE_ LRANGE_LIST
#define _X_LIST_TAG_ LRANGE_LIST
#define _X_BASE_TYPE_ LRANGE*
#define _X_RCS_ID_ lrange_list_rcs_id
#define _X_PUSH_ LRANGE_LIST_Push
#define _X_DELETE_ LRANGE_LIST_Delete
#define _X_DELETE_IF_ LRANGE_LIST_Delete_If
#define LRANGE_LIST_first(x) ((x)->first)
#define LRANGE_LIST_rest(x)  ((x)->rest)
#define _X_LIST_LOCAL_BASE_TYPE_ LRANGE_LIST_LOCAL_BASE_TYPE_
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
