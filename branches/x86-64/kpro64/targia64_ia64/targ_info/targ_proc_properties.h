/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of the properties (attributes) for the processors
 *   in the PROC. The description exports the following:
 *
 *   BOOL PROC_xxx(void)
 *       Return true/false if PROCESSOR_Value has/does-not-have the
 *       property 'xxx'.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_proc_properties_INCLUDED
#define targ_proc_properties_INCLUDED
#ifdef __cplusplus
extern "C" {
#endif

#ifndef defs_INCLUDED
#define defs_INCLUDED
typedef signed int INT;
typedef signed int INT32;
typedef signed long long INT64;
typedef signed char mINT8;
typedef signed short mINT16;
typedef signed int mINT32;
typedef signed long long mINT64;
typedef unsigned int UINT;
typedef unsigned int UINT32;
typedef unsigned long long UINT64;
typedef unsigned char mUINT8;
typedef unsigned short mUINT16;
typedef unsigned int mUINT32;
typedef unsigned long long mUINT64;
typedef int BOOL;
typedef unsigned char mBOOL;
#ifndef TRUE
#define TRUE    ((BOOL) 1)
#endif
#ifndef FALSE
#define FALSE   ((BOOL) 0)
#endif
#if (defined(_LANGUAGE_C) || defined(__GNUC__)) && !defined(inline)
#define inline static __inline
#endif
#endif

#include "targ_proc.h"

extern const mUINT8 PROC_PROPERTIES_flags[];


#define PROC_has_branch_delay_slot() (0)
#define PROC_has_same_cycle_branch_shadow() (0)
#define PROC_is_out_of_order() (0)
#define PROC_is_superscalar() (1)
#define PROC_has_bundles() (1)
#define PROC_has_delayed_exception() (1)
#define PROC_has_fast_recip() (0)

#ifdef __cplusplus
}
#endif
#endif
