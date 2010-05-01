#ifndef __IPA_BE_WRITE_H__
#define __IPA_BE_WRITE_H__

#ifdef __cplusplus
extern "C" {
#endif

extern void
IPA_write_alias_summary (PU_Info* pu_info_tree, Output_File *fl);

extern void
IPA_irb_write_nystrom_alias_info(PU_Info*, Output_File *);

#ifdef __cplusplus
}
#endif

#endif
