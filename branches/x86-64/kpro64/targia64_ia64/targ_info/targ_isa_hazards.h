/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of the ISA hazards. The description exports
 *   the following:
 *
 *   typedef (enum) ISA_HAZARD
 *       An enumeration of the hazard types, and ISA_HAZARD_UNDEFINED.
 *
 *   typedef (struct) ISA_HAZARD_INFO
 *       Describes a particular hazard. The contents are private.
 *
 *   BOOL ISA_HAZARD_TOP_Has_Hazard(TOP topcode)
 *       Returns TRUE if the instruction specified by 'topcode'
 *       has a hazard.
 *
 *   ISA_HAZARD_INFO *ISA_HAZARD_First(TOP topcode)
 *       Get the first hazard description for 'topcode'.
 *
 *   ISA_HAZARD_INFO *ISA_HAZARD_Next(ISA_HAZARD_INFO *info)
 *       Gets the next hazard description when a 'topcode' has
 *       more than one hazard.
 *
 *   ISA_HAZARD ISA_HAZARD_Type(ISA_HAZARD_INFO *info)
 *       Returns the type of the hazard.
 *
 *   INT ISA_HAZARD_Data(ISA_HAZARD_INFO *info)
 *       Returns the hazard specific data.
 *
 *   INT ISA_HAZARD_Pre_Ops(ISA_HAZARD_INFO *info)
 *       Returns the number of OPs that must precede the instruction
 *       with the hazard.
 *
 *   INT ISA_HAZARD_Post_Ops(ISA_HAZARD_INFO *info)
 *       Returns the number of OPs that must follow the instruction
 *       with the hazard.
 *
 *   void ISA_HAZARD_Initialize(void)
 *       Initializes the hazard description data for ISA_SUBSET_Value. *       This may only be called once (if not called at all the description
 *       contains the hazards for all ISAs).
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_hazards_INCLUDED
#define targ_isa_hazards_INCLUDED
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

#include "targ_isa_subset.h"
typedef enum { 
  ISA_HAZARD_result,
  ISA_HAZARD_operand,
  ISA_HAZARD_errata,
  ISA_HAZARD_UNDEFINED
} ISA_HAZARD;

typedef struct {
  ISA_HAZARD type;
  mUINT16 data;
  mUINT16 pre_ops;
  mUINT16 post_ops;
  mUINT8 isa_mask;
  mUINT8 next;
} ISA_HAZARD_INFO;

inline BOOL ISA_HAZARD_TOP_Has_Hazard(TOP topcode)
{
  extern mUINT8 ISA_HAZARD_hazard_index[759];
  return ISA_HAZARD_hazard_index[(INT)topcode] != 0;
}

inline ISA_HAZARD_INFO *ISA_HAZARD_First(TOP topcode)
{
  extern mUINT8 ISA_HAZARD_hazard_index[759];
  extern ISA_HAZARD_INFO ISA_HAZARD_hazard_info[1];
  INT index = ISA_HAZARD_hazard_index[(INT)topcode];
  return index ? ISA_HAZARD_hazard_info + index : (ISA_HAZARD_INFO *)0;
}

inline ISA_HAZARD_INFO *ISA_HAZARD_Next(ISA_HAZARD_INFO *info)
{
  extern ISA_HAZARD_INFO ISA_HAZARD_hazard_info[1];
  INT index = info->next;
  return index ? ISA_HAZARD_hazard_info + index : (ISA_HAZARD_INFO *)0;
}

inline ISA_HAZARD ISA_HAZARD_Type(ISA_HAZARD_INFO *info)
{
  return info->type;
}

inline INT ISA_HAZARD_Data(ISA_HAZARD_INFO *info)
{
  return info->data;
}

inline INT ISA_HAZARD_Pre_Ops(ISA_HAZARD_INFO *info)
{
  return info->pre_ops;
}

inline INT ISA_HAZARD_Post_Ops(ISA_HAZARD_INFO *info)
{
  return info->post_ops;
}

extern void ISA_HAZARD_Initialize(void);

#ifdef __cplusplus
}
#endif
#endif
