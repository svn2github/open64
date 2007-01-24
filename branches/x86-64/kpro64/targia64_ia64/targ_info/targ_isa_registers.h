/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of the ISA registers. The description exports
 *   the following:
 *
 *   typedef (enum) ISA_REGISTER_CLASS
 *       An enumeration of the register classes.
 *
 *   typedef mISA_REGISTER_CLASS
 *       The most compact (integral) representation that can hold
 *       all values of ISA_REGISTER_CLASS
 *
 *   typedef (struct) ISA_REGISTER_CLASS_INFO
 *       Describes a particular register class. The contents are private.
 *
 *   const INT ISA_REGISTER_CLASS_UNDEFINED
 *       A special register class that is out-of-range of valid
 *       register clases.
 *
 *   const INT ISA_REGISTER_CLASS_MIN
 *       The first register class. The range of register classes
 *       is ISA_REGISTER_CLASS_MIN..ISA_REGISTER_CLASS_MAX
 *	    (this range excludes ISA_REGISTER_CLASS_UNDEFINED). * 
 *   const INT ISA_REGISTER_CLASS_MAX
 *       The last register class. The range of register classes
 *       is ISA_REGISTER_CLASS_MIN..ISA_REGISTER_CLASS_MAX
 *	    (this range excludes ISA_REGISTER_CLASS_UNDEFINED). * 
 *   const INT ISA_REGISTER_CLASS_COUNT
 *       The number of register classes. The range of register classes
 *       is ISA_REGISTER_CLASS_MIN..ISA_REGISTER_CLASS_MAX
 *	    (this range excludes ISA_REGISTER_CLASS_UNDEFINED). * 
 *   (macro) FOR_ALL_ISA_REGISTER_CLASS(cl)
 *       Iterate over all the register class values using the
 *       ISA_REGISTER_CLASS variable <cl>.
 *
 *   (macro) FOR_ALL_ISA_REGISTER_CLASS_IN_REVERSE(cl)
 *       Iterate over all the register class values in reverse order using
 *       the ISA_REGISTER_CLASS variable <cl>.
 *
 *   const INT ISA_REGISTER_MAX
 *       The maximum (highest) register number of all classes.
 *       NOTE: the lowest number register is implicitly 0.
 *
 *   typedef (enum) ISA_REGISTER_SUBCLASS
 *       An enumeration of the register subclasses.
 *
 *   typedef mISA_REGISTER_SUBCLASS
 *       The most compact (integral) representation that can hold
 *       all values of ISA_REGISTER_SUBCLASS
 *
 *   typedef (struct) ISA_REGISTER_SUBCLASS_INFO
 *       Describes a particular register subclass. The contents are private.
 *
 *   const INT ISA_REGISTER_SUBCLASS_UNDEFINED
 *       A special register subclass that is out-of-range of valid
 *       register subclases.
 *
 *   const INT ISA_REGISTER_SUBCLASS_MIN
 *       The first register subclass. The range of register subclasses
 *       is ISA_REGISTER_SUBCLASS_MIN..ISA_REGISTER_SUBCLASS_MAX
 * 
 *   const INT ISA_REGISTER_SUBCLASS_MAX
 *       The last register subclass. The range of register subclasses
 *       is ISA_REGISTER_SUBCLASS_MIN..ISA_REGISTER_SUBCLASS_MAX
 * 
 *   const INT ISA_REGISTER_SUBCLASS_COUNT
 *       The number of register subclasses.
 * 
 *   (macro) FOR_ALL_ISA_REGISTER_SUBCLASS(sc)
 *       Iterate over all the register subclass values using the
 *       the ISA_REGISTER_SUBCLASS variable <sc>.
 *
 *   const ISA_REGISTER_CLASS_INFO *ISA_REGISTER_CLASS_Info(
 *     ISA_REGISTER_CLASS rc
 *   )
 *       Return a pointer to the register class info for class 'rc'.
 *
 *   INT ISA_REGISTER_CLASS_INFO_First_Reg(
 *     const ISA_REGISTER_CLASS_INFO *info
 *   )
 *       Get the first (lowest numbered) register for the class
 *       described by 'info'.
 *
 *   INT ISA_REGISTER_CLASS_INFO_Last_Reg(
 *     const ISA_REGISTER_CLASS_INFO *info
 *   )
 *       Get the last (highest numbered) register for the class
 *       described by 'info'.
 *
 *   INT ISA_REGISTER_CLASS_INFO_Bit_Size(
 *     const ISA_REGISTER_CLASS_INFO *info
 *   )
 *       Get the size, in bits, of the register in the class
 *       described by 'info'.
 *
 *   BOOL ISA_REGISTER_CLASS_INFO_Can_Store(
 *     const ISA_REGISTER_CLASS_INFO *info
 *   )
 *       Return a flag that indicates if the registers in the class
 *       described by 'info' can be stored to memory, i.e. there
 *       is a store instruction for the registers in the class.
 *
 *   BOOL ISA_REGISTER_CLASS_INFO_Multiple_Save(
 *     const ISA_REGISTER_CLASS_INFO *info
 *   )
 *       Return a flag that indicates if the registers in the class
 *       described by 'info' can be saved and restore to memory in
 *       multiples, i.e. as a group.
 *
 *   const char *ISA_REGISTER_CLASS_INFO_Name(
 *     const ISA_REGISTER_CLASS_INFO *info
 *   )
 *       Return the name of the class described by 'info'.
 *
 *   const char *ISA_REGISTER_CLASS_INFO_Reg_Name(
 *     const ISA_REGISTER_CLASS_INFO *info,
 *     INT reg_index
 *   )
 *       Return the name of the 'reg_index'th register in the
 *       class described by 'info'. NOTE: reg_index==0 corresponds
 *       to the first register of the class.
 *
 *   const ISA_REGISTER_SUBCLASS_INFO *ISA_REGISTER_SUBCLASS_Info(
 *     ISA_REGISTER_SUBCLASS sc
 *   )
 *
 *       Return a pointer to the register subclass info for the
 *       subclass 'sc'.
 *
 *   const char *ISA_REGISTER_SUBCLASS_INFO_Name(
 *     const ISA_REGISTER_SUBCLASS_INFO *info
 *   )
 *
 *       Return the name of the subclass described by 'info'.
 *
 *   ISA_REGISTER_CLASS ISA_REGISTER_SUBCLASS_INFO_Class(
 *     const ISA_REGISTER_SUBCLASS_INFO *info
 *   )
 *
 *       Return the base register class for the subclass described
 *       by 'info'.
 *
 *   INT ISA_REGISTER_SUBCLASS_INFO_Count(
 *     const ISA_REGISTER_SUBCLASS_INFO *info
 *   )
 *
 *       Return the number of registers in the subclass described
 *       by 'info'.
 *
 *   UINT ISA_REGISTER_SUBCLASS_INFO_Member(
 *     const ISA_REGISTER_SUBCLASS_INFO *info,
 *     INT n
 *   )
 *
 *       Return the 'n'th member (register) of the subclass described
 *       by 'info'. The order of the registers returned is arbitrary.
 *
 *   const char *ISA_REGISTER_SUBCLASS_INFO_Reg_Name(
 *     const ISA_REGISTER_SUBCLASS_INFO *info,
 *     INT index
 *   )
 *
 *       Return the 'n'th member's register name of the subclass
 *       described by 'info'. If the member does not have a subclass
 *       specific name, NULL is returned.
 *
 *   void ISA_REGISTER_Initialize(void)
 *       Initialize the register package for use with the ISA specified
 *       by ISA_SUBSET_Value.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_registers_INCLUDED
#define targ_isa_registers_INCLUDED
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


#define ISA_REGISTER_FIRST (0)
#define ISA_REGISTER_MAX (127)

typedef enum {
  ISA_REGISTER_CLASS_UNDEFINED,
  ISA_REGISTER_CLASS_integer,
  ISA_REGISTER_CLASS_float,
  ISA_REGISTER_CLASS_predicate,
  ISA_REGISTER_CLASS_branch,
  ISA_REGISTER_CLASS_application,
  ISA_REGISTER_CLASS_control,
  ISA_REGISTER_CLASS_MIN = ISA_REGISTER_CLASS_integer,
  ISA_REGISTER_CLASS_MAX = ISA_REGISTER_CLASS_control,
  ISA_REGISTER_CLASS_COUNT = ISA_REGISTER_CLASS_MAX - ISA_REGISTER_CLASS_MIN + 1
} ISA_REGISTER_CLASS;

typedef mUINT8 mISA_REGISTER_CLASS;

#define FOR_ALL_ISA_REGISTER_CLASS(cl) \
	for (cl = ISA_REGISTER_CLASS_MIN; \
	     cl <= ISA_REGISTER_CLASS_MAX; \
	     cl = (ISA_REGISTER_CLASS)(cl + 1))

#define FOR_ALL_ISA_REGISTER_CLASS_IN_REVERSE(cl) \
	for (cl = ISA_REGISTER_CLASS_MAX; \
	     cl >= ISA_REGISTER_CLASS_MIN; \
	     cl = (ISA_REGISTER_CLASS)(cl - 1))

typedef struct {
  mUINT8 isa_mask;
  mUINT8 min_regnum;
  mUINT8 max_regnum;
  mUINT8 bit_size;
  mBOOL can_store;
  mBOOL multiple_save;
  const char *name;
  const char *reg_name[ISA_REGISTER_MAX+1];
} ISA_REGISTER_CLASS_INFO;

typedef enum {
  ISA_REGISTER_SUBCLASS_UNDEFINED,
  ISA_REGISTER_SUBCLASS_addl,
  ISA_REGISTER_SUBCLASS_ar_i,
  ISA_REGISTER_SUBCLASS_ar_m,
  ISA_REGISTER_SUBCLASS_ec,
  ISA_REGISTER_SUBCLASS_lc,
  ISA_REGISTER_SUBCLASS_MIN = ISA_REGISTER_SUBCLASS_addl,
  ISA_REGISTER_SUBCLASS_MAX = ISA_REGISTER_SUBCLASS_lc,
  ISA_REGISTER_SUBCLASS_COUNT = ISA_REGISTER_SUBCLASS_MAX - ISA_REGISTER_SUBCLASS_MIN + 1
} ISA_REGISTER_SUBCLASS;

typedef mUINT8 mISA_REGISTER_SUBCLASS;

#define FOR_ALL_ISA_REGISTER_SUBCLASS(sc) \
	for (sc = ISA_REGISTER_SUBCLASS_MIN; \
	     sc <= ISA_REGISTER_SUBCLASS_MAX; \
	     sc = (ISA_REGISTER_SUBCLASS)(sc + 1))

typedef struct {
  const char *name;
  mISA_REGISTER_CLASS rclass;
  mUINT8 count;
  mUINT8 members[ISA_REGISTER_MAX+1];
  const char *reg_name[ISA_REGISTER_MAX+1];
} ISA_REGISTER_SUBCLASS_INFO;

inline const ISA_REGISTER_CLASS_INFO *ISA_REGISTER_CLASS_Info(
  ISA_REGISTER_CLASS rc
)
{
  extern const ISA_REGISTER_CLASS_INFO ISA_REGISTER_CLASS_info[];
  extern mUINT8 ISA_REGISTER_CLASS_info_index[];
  INT index = ISA_REGISTER_CLASS_info_index[(INT)rc];
  return &ISA_REGISTER_CLASS_info[index];
}

inline INT ISA_REGISTER_CLASS_INFO_First_Reg(
  const ISA_REGISTER_CLASS_INFO *info
)
{
  return info->min_regnum;
}

inline INT ISA_REGISTER_CLASS_INFO_Last_Reg(
  const ISA_REGISTER_CLASS_INFO *info
)
{
  return info->max_regnum;
}

inline INT ISA_REGISTER_CLASS_INFO_Bit_Size(
  const ISA_REGISTER_CLASS_INFO *info
)
{
  return info->bit_size;
}

inline BOOL ISA_REGISTER_CLASS_INFO_Can_Store(
  const ISA_REGISTER_CLASS_INFO *info
)
{
  return info->can_store;
}

inline BOOL ISA_REGISTER_CLASS_INFO_Multiple_Save(
  const ISA_REGISTER_CLASS_INFO *info
)
{
  return info->multiple_save;
}

inline const char *ISA_REGISTER_CLASS_INFO_Name(
  const ISA_REGISTER_CLASS_INFO *info
)
{
  return info->name;
}

inline const char *ISA_REGISTER_CLASS_INFO_Reg_Name(
  const ISA_REGISTER_CLASS_INFO *info,
  INT reg_index
)
{
  return info->reg_name[reg_index];
}

inline const ISA_REGISTER_SUBCLASS_INFO *ISA_REGISTER_SUBCLASS_Info(
  ISA_REGISTER_SUBCLASS sc
)
{
  extern const ISA_REGISTER_SUBCLASS_INFO ISA_REGISTER_SUBCLASS_info[];
  return &ISA_REGISTER_SUBCLASS_info[sc];
}

inline const char *ISA_REGISTER_SUBCLASS_INFO_Name(
  const ISA_REGISTER_SUBCLASS_INFO *info
)
{
  return info->name;
}

inline ISA_REGISTER_CLASS ISA_REGISTER_SUBCLASS_INFO_Class(
  const ISA_REGISTER_SUBCLASS_INFO *info
)
{
  return (ISA_REGISTER_CLASS)info->rclass;
}

inline INT ISA_REGISTER_SUBCLASS_INFO_Count(
  const ISA_REGISTER_SUBCLASS_INFO *info
)
{
  return info->count;
}

inline UINT ISA_REGISTER_SUBCLASS_INFO_Member(
  const ISA_REGISTER_SUBCLASS_INFO *info,
  INT n
)
{
  return info->members[n];
}

inline const char *ISA_REGISTER_SUBCLASS_INFO_Reg_Name(
  const ISA_REGISTER_SUBCLASS_INFO *info,
  INT n
)
{
  return info->reg_name[n];
}

extern void ISA_REGISTER_Initialize(void);


#ifdef __cplusplus
}
#endif
#endif
