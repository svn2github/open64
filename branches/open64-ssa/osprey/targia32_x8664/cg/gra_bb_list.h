/* Constructed by gen_x_list $Revision: 1.1.1.1 $
 */
#ifndef gra_bb_list_included
#define gra_bb_list_included
#include  "defs.h"
#include  "errors.h"
#include  "mempool.h"
#include  "gra_bb.h"
#include  "gra_bb_list.h"
#define _X_LIST_TYPE_ GRA_BB_LIST
#define _X_LIST_TAG_ GRA_BB_LIST
#define _X_BASE_TYPE_ GRA_BB*
#define _X_RCS_ID_ gra_bb_list_rcs_id
#define _X_PUSH_ GRA_BB_LIST_Push
#define _X_DELETE_ GRA_BB_LIST_Delete
#define _X_DELETE_IF_ GRA_BB_LIST_Delete_If
#define GRA_BB_LIST_first(x) ((x)->first)
#define GRA_BB_LIST_rest(x)  ((x)->rest)
#define _X_LIST_LOCAL_BASE_TYPE_ GRA_BB_LIST_LOCAL_BASE_TYPE_
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
