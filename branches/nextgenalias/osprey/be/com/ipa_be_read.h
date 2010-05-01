#ifndef __IPA_BE_READ_H__
#define __IPA_BE_READ_H__

#include "be_ipa_util.h"


#ifdef __cplusplus
extern "C" {
#endif

extern IPA_BE_SUMMARY CURRENT_BE_SUMMARY;

extern void
IPA_read_alias_summary (void* fhandle, PU_Info* pu_info_tree, MEM_POOL* pool);


#if 0
extern void
IPA_irb_write_nystrom_alias_info(PU_Info*, Output_File *);
#endif

#ifdef __cplusplus
}
#endif

#endif
