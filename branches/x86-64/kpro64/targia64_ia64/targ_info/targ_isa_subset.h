/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of the ISA subset hierarchy.  The description
 *   exports the following:
 *
 *   typedef (enum) ISA_SUBSET
 *       An enumberated type of the different subsets.
 *
 *   const ISA_SUBSET ISA_SUBSET_UNDEFINED
 *       Useful value guaranteed not to be a valid ISA_SUBSET.
 *
 *   extern ISA_SUBSET ISA_SUBSET_Value
 *       A variable containing the current subset value.
 *
 *   const char* ISA_SUBSET_Name( ISA_SUBSET subset )
 *       Returns a name suitable for printing.
 *
 *   int ISA_SUBSET_Member( ISA_SUBSET subset, TOP opcode )
 *       Is the given <opcode> a member of the given <subset>?
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_subset_INCLUDED
#define targ_isa_subset_INCLUDED
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

#include "topcode.h"

typedef enum {
  ISA_SUBSET_intel1,
  ISA_SUBSET_UNDEFINED,
  ISA_SUBSET_MIN=ISA_SUBSET_intel1,
  ISA_SUBSET_MAX=ISA_SUBSET_intel1
} ISA_SUBSET;
extern ISA_SUBSET ISA_SUBSET_Value;

extern const char* ISA_SUBSET_Name( ISA_SUBSET subset );
extern INT ISA_SUBSET_Member( ISA_SUBSET subset,
                              TOP opcode );

#ifdef __cplusplus
}
#endif
#endif
