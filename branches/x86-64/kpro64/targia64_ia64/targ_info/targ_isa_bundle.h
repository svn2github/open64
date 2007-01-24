#include "topcode.h"
/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of the bundling properties. The interface is
 *   divided into two pieces: scheduling, and packing. The scheduling
 *   interface exports the following:
 *
 *   const INT ISA_MAX_SLOTS
 *       An integer constant that indicates the maximum number of
 *       slots in a bundle.
 *
 *   const INT ISA_TAG_SHIFT
 *       Maximum number of bits required to encode all the execution
 *       property types.
 *
 *   typedef mUINTxx ISA_EXEC_UNIT_PROPERTY
 *       A single-bit mask of representing an execution unit.
 *
 *       The names have the form ISA_EXEC_PROPERTY_xxx
 *       where 'xxx' is replaced with the EXEC_UNIT_PROPERTY name.
 *
 *   typedef (enum) ISA_EXEC_UNIT
 *       An enumeration of the execution units.
 *
 *       The names have the form ISA_EXEC_xxx
 *       where 'xxx' is replaced with the EXEC_UNIT_PROPERTY name.
 *
 *       The values of ISA_EXEC_UNIT and ISA_EXEC_UNIT_PROPERTY are
 *       related in that the bit-mask value of an ISA_EXEC_UNIT_PROPERTY
 *       is equal to 2**ISA_EXEC_UNIT.
 *
 *   const INT ISA_EXEC_MAX
 *       The highest value ISA_EXEC_UNIT value.
 *
 *   BOOL ISA_EXEC_PROPERTY_is_xxx(TOP t) 
 *       Returns TRUE if EXEC_PROPERTY_is_xxx matches <t>'s property.
 *
 *   ISA_EXEC_UNIT_PROPERTY ISA_EXEC_Unit_Prop(TOP topcode)
 *       Returns exec_unit_property for the instruction specified
 *       by <topcode>.
 *
 *   ISA_BUNDLE_INFO ISA_EXEC_Bundle_Info(INT index)
 *       Return isa_bundle_info specified by <index>. 
 *
 *   ISA_EXEC_UNIT_PROPERTY ISA_EXEC_Slot_Prop(INT bundle, INT slot_index)
 *       Return exec_unit_property for the slot position <slot_index>
 *       in <bundle>.
 *
 *   UINT64 ISA_EXEC_Slot_Mask(INT bundle)
 *       Return slot_mask for <bundle>.
 *
 *   BOOL ISA_EXEC_Stop(INT bundle, INT slot_index)
 *       Return stop bit for the slot position <slot_index> in <bundle>.
 *
 *   ISA_EXEC_UNIT ISA_EXEC_Unit(INT bundle, INT slot_index)
 *       Return the execution unit slot position <slot_index> in <bundle>.
 *
 *   UINT32 ISA_EXEC_Stop_Mask(INT bundle)
 *       Return stop_mask for <bundle>.
 *
 *   const char *ISA_EXEC_Name(INT bundle)
 *       Return the name for <bundle>.
 *
 *   const char *ISA_EXEC_AsmName(INT bundle)
 *       Return the assembly language name for <bundle>.
 *
 *   BOOL ISA_EXEC_Stop_Before(INT bundle)
 *       Return stop bit (splite isssue) before <bundle>.
 *
 *   BOOL ISA_EXEC_Stop_After(INT bundle)
 *       Return stop bit (splite isssue) after <bundle>.
 *
 * ====================================================================
 *
 *   The packing interface exports the following:
 *
 *   typedef ISA_BUNDLE
 *       A type large enough to hold a bundle. This type will always
 *       be a struct containing an array of either 32-, or 64-bit
 *       unsigned integers.
 *
 *   typedef (enum) ISA_BUNDLE_PACK_COMP
 *       An enumeration of the bundle components to be packed.
 *
 *   const INT ISA_BUNDLE_PACK_COMP_MAX
 *       The maximum number of components to be packed for a bundle.
 *
 *   typedef (struct) ISA_BUNDLE_PACK_INFO
 *       Describes how a the components of a bundle are packed.
 *       The contents are private.
 *
 *   const ISA_BUNDLE_PACK_INFO *ISA_BUNDLE_Pack_Info(void)
 *       Returns a pointer to the first packing component.
 *       Increment the returned pointer to access any additional packing
 *       components for the bundle. A component of ISA_PACK_COMP_end
 *       marks the end.
 *
 *   INT ISA_BUNDLE_PACK_INFO_Comp(const ISA_BUNDLE_PACK_INFO *info)
 *       Identifies the bundle component to be packed.
 *
 *   INT ISA_BUNDLE_PACK_INFO_Index(const ISA_BUNDLE_PACK_INFO *info)
 *       The index of the bundle word containing the component.
 *
 *       ISA_BUNDLE_PACK_INFO_Index is meaningless for ISA_BUNDLE_PACK_COMP_end.
 *
 *   INT ISA_BUNDLE_PACK_INFO_CompPos(const ISA_BUNDLE_PACK_INFO *info)
 *       The offset, in bits, to the start of the component in the
 *       component value.
 *
 *       ISA_BUNDLE_PACK_INFO_CompPos is meaningless for ISA_BUNDLE_PACK_COMP_end.
 *
 *   INT ISA_BUNDLE_PACK_INFO_BundlePos(const ISA_BUNDLE_PACK_INFO *info)
 *       The offset, in bits, to the start of the component in the
 *       bundle word.
 *
 *       ISA_BUNDLE_PACK_INFO_BundlePos is meaningless for ISA_BUNDLE_PACK_COMP_end.
 *
 *   UINT64 ISA_BUNDLE_PACK_INFO_Mask(const ISA_BUNDLE_PACK_INFO *info)
 *       A bit mask that is as wide as the bundle component being
 *       packed. The mask is shifted to match the field in the
 *       bundle word.
 *
 *       ISA_BUNDLE_PACK_INFO_Mask is meaningless for ISA_BUNDLE_PACK_COMP_end.
 *
 *   INT ISA_BUNDLE_Pack_Info_Index(ISA_BUNDLE_PACK_COMP comp)
 *       Index into bundle packing info array (see ISA_BUNDLE_Pack_Info)
 *       to the start of the info for the component <comp>. If there
 *       is no packing info for <comp>, the index is for the 'end'
 *       component.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_bundle_INCLUDED
#define targ_isa_bundle_INCLUDED
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


#define ISA_MAX_SLOTS (3)
#define ISA_TAG_SHIFT (12)

typedef mUINT8 ISA_EXEC_UNIT_PROPERTY;

#define ISA_EXEC_PROPERTY_R_Unit          (0x1)
#define ISA_EXEC_PROPERTY_I_Unit          (0x2)
#define ISA_EXEC_PROPERTY_M_Unit          (0x4)
#define ISA_EXEC_PROPERTY_B_Unit          (0x8)
#define ISA_EXEC_PROPERTY_F_Unit          (0x10)
#define ISA_EXEC_PROPERTY_L_Unit          (0x20)
#define ISA_EXEC_PROPERTY_I2_Unit         (0x40)
#define ISA_EXEC_PROPERTY_B2_Unit         (0x80)

typedef enum {
  ISA_EXEC_R_Unit          = 0,
  ISA_EXEC_I_Unit          = 1,
  ISA_EXEC_M_Unit          = 2,
  ISA_EXEC_B_Unit          = 3,
  ISA_EXEC_F_Unit          = 4,
  ISA_EXEC_L_Unit          = 5,
  ISA_EXEC_I2_Unit         = 6,
  ISA_EXEC_B2_Unit         = 7,
  ISA_EXEC_MAX             = 7
} ISA_EXEC_UNIT;

typedef struct {
  const char *name;
  const char *asm_name;
  int slot_count;
  ISA_EXEC_UNIT_PROPERTY slot[3];
  mBOOL stop[3];
  mUINT8 unit[3];
  mUINT8 pack_code;
  mUINT8 stop_mask;
  mUINT64 slot_mask;
  mBOOL stop_bf;
  mBOOL stop_af;
} ISA_BUNDLE_INFO;

#define ISA_MAX_BUNDLES 16

extern const ISA_EXEC_UNIT_PROPERTY ISA_EXEC_unit_prop[];

#define EXEC_PROPERTY_is_R_Unit(t)	 (ISA_EXEC_unit_prop[(INT)t] & ISA_EXEC_PROPERTY_R_Unit)
#define EXEC_PROPERTY_is_I_Unit(t)	 (ISA_EXEC_unit_prop[(INT)t] & ISA_EXEC_PROPERTY_I_Unit)
#define EXEC_PROPERTY_is_M_Unit(t)	 (ISA_EXEC_unit_prop[(INT)t] & ISA_EXEC_PROPERTY_M_Unit)
#define EXEC_PROPERTY_is_B_Unit(t)	 (ISA_EXEC_unit_prop[(INT)t] & ISA_EXEC_PROPERTY_B_Unit)
#define EXEC_PROPERTY_is_F_Unit(t)	 (ISA_EXEC_unit_prop[(INT)t] & ISA_EXEC_PROPERTY_F_Unit)
#define EXEC_PROPERTY_is_L_Unit(t)	 (ISA_EXEC_unit_prop[(INT)t] & ISA_EXEC_PROPERTY_L_Unit)
#define EXEC_PROPERTY_is_I2_Unit(t)	 (ISA_EXEC_unit_prop[(INT)t] & ISA_EXEC_PROPERTY_I2_Unit)
#define EXEC_PROPERTY_is_B2_Unit(t)	 (ISA_EXEC_unit_prop[(INT)t] & ISA_EXEC_PROPERTY_B2_Unit)

inline ISA_EXEC_UNIT_PROPERTY ISA_EXEC_Unit_Prop(TOP topcode)
{
  return ISA_EXEC_unit_prop[(INT)topcode];
}

inline ISA_BUNDLE_INFO ISA_EXEC_Bundle_Info(INT index)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  return ISA_BUNDLE_info[index];
}

inline ISA_EXEC_UNIT_PROPERTY ISA_EXEC_Slot_Prop(INT bundle, INT slot_index)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  const ISA_BUNDLE_INFO *info = ISA_BUNDLE_info + bundle;
  return info->slot[slot_index];
}

inline UINT64 ISA_EXEC_Slot_Mask(INT bundle)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  const ISA_BUNDLE_INFO *info = ISA_BUNDLE_info + bundle;
  return info->slot_mask;
}

inline BOOL ISA_EXEC_Stop(INT bundle, INT slot_index)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  const ISA_BUNDLE_INFO *info = ISA_BUNDLE_info + bundle;
  return info->stop[slot_index];
}

inline ISA_EXEC_UNIT ISA_EXEC_Unit(INT bundle, INT slot_index)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  const ISA_BUNDLE_INFO *info = ISA_BUNDLE_info + bundle;
  return (ISA_EXEC_UNIT)info->unit[slot_index];
}

inline UINT32 ISA_EXEC_Stop_Mask(INT bundle)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  const ISA_BUNDLE_INFO *info = ISA_BUNDLE_info + bundle;
  return info->stop_mask;
}

inline const char * ISA_EXEC_Name(INT bundle)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  const ISA_BUNDLE_INFO *info = ISA_BUNDLE_info + bundle;
  return info->name;
}

inline const char * ISA_EXEC_AsmName(INT bundle)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  const ISA_BUNDLE_INFO *info = ISA_BUNDLE_info + bundle;
  return info->asm_name;
}

// Add two function for special slpit issue
inline BOOL ISA_EXEC_Stop_Before(INT bundle)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  const ISA_BUNDLE_INFO *info = ISA_BUNDLE_info + bundle;
  return info->stop_bf;
}

inline BOOL ISA_EXEC_Stop_After(INT bundle)
{
  extern const ISA_BUNDLE_INFO ISA_BUNDLE_info[];
  const ISA_BUNDLE_INFO *info = ISA_BUNDLE_info + bundle;
  return info->stop_af;
}

typedef struct {
  mUINT64 word[2];
} ISA_BUNDLE;

typedef enum {
  ISA_BUNDLE_PACK_COMP_end       = 0,  /* End of list marker */
  ISA_BUNDLE_PACK_COMP_stop      = 1,  /* Stop bit */
  ISA_BUNDLE_PACK_COMP_template  = 2,  /* Template */
  ISA_BUNDLE_PACK_COMP_slot      = 3,  /* SLOT+n => slot n */
  ISA_BUNDLE_PACK_COMP_MAX       = 5   /* Last component */
} ISA_BUNDLE_PACK_COMP;

typedef struct {
  mUINT8 comp;
  mUINT8 index;
  mUINT8 comp_pos;
  mUINT8 bundle_pos;
  UINT64 mask;
} ISA_BUNDLE_PACK_INFO;

inline const ISA_BUNDLE_PACK_INFO *ISA_BUNDLE_Pack_Info(void)
{
  extern const ISA_BUNDLE_PACK_INFO ISA_BUNDLE_pack_info[];
  return ISA_BUNDLE_pack_info;
}

inline INT ISA_BUNDLE_PACK_INFO_Comp(const ISA_BUNDLE_PACK_INFO *info)
{
  return info->comp;
}

inline INT ISA_BUNDLE_PACK_INFO_Index(const ISA_BUNDLE_PACK_INFO *info)
{
  return info->index;
}

inline INT ISA_BUNDLE_PACK_INFO_CompPos(const ISA_BUNDLE_PACK_INFO *info)
{
  return info->comp_pos;
}

inline INT ISA_BUNDLE_PACK_INFO_BundlePos(const ISA_BUNDLE_PACK_INFO *info)
{
  return info->bundle_pos;
}

inline UINT64 ISA_BUNDLE_PACK_INFO_Mask(const ISA_BUNDLE_PACK_INFO *info)
{
  return info->mask;
}

inline INT ISA_BUNDLE_Pack_Info_Index(ISA_BUNDLE_PACK_COMP comp)
{
  extern const mUINT8 ISA_BUNDLE_pack_info_index[6];
  return ISA_BUNDLE_pack_info_index[(INT)comp];
}


#ifdef __cplusplus
}
#endif
#endif
