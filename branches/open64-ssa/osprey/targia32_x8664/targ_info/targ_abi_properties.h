/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of the ABI properties. The description exports
 *   the following:
 *
 *   typedef (enum) ABI_PROPERTIES_ABI
 *
 *       An enumeration of the ABIs described. The names have the form:
 *
 *          ABI_PROPERTIES_ABI_xxx
 *
 *       where 'xxx' is replaced with the ABI name.
 *
 *   const ABI_PROPERTIES_ABI ABI_PROPERTIES_ABI_UNDEFINED
 *       Useful value guaranteed not to be a valid ABI_PROPERTIES_ABI.
 *
 *   ABI_PROPERTIES_ABI ABI_PROPERTIES_ABI_Value
 *       A variable containing the current ABI value.
 *
 *   const char *ABI_PROPERTIES_ABI_Name(ABI_PROPERTIES_ABI abi)
 *      Returns a name for the given 'abi'.
 *
 *   void ABI_PROPERTIES_Initialize(void)
 *       Initialize for the target ABI specified by ABI_PROPERTIES_ABI_Value.
 *
 *   const char *ABI_PROPERTY_Reg_Name(
 *     ISA_REGISTER_CLASS rc,
 *     INT reg
 *   )
 *       Return the ABI specific name of register 'reg' in class 'rc'.
 *
 *   BOOL ABI_PROPERTY_Is_xxx(
 *     ISA_REGISTER_CLASS rc,
 *     INT reg
 *   )
 *       Return a boolean that indicates if register 'reg' in class
 *       'rc' had the property 'xxx'.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_abi_properties_INCLUDED
#define targ_abi_properties_INCLUDED
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

#include "targ_isa_registers.h"

typedef struct {
  mUINT8 reg_flags[9][16];
  const char *reg_names[9][16];
} ABI_PROPERTIES;

#define ABI_PROPERTY_allocatable          0x01
#define ABI_PROPERTY_callee               0x02
#define ABI_PROPERTY_caller               0x04
#define ABI_PROPERTY_func_arg             0x80
#define ABI_PROPERTY_func_val             0x08
#define ABI_PROPERTY_stack_ptr            0x10
#define ABI_PROPERTY_frame_ptr            0x20
#define ABI_PROPERTY_static_link          0x40

typedef enum {
  ABI_PROPERTIES_ABI_n32,
  ABI_PROPERTIES_ABI_n64,
  ABI_PROPERTIES_ABI_UNDEFINED,
  ABI_PROPERTIES_ABI_MAX=1
} ABI_PROPERTIES_ABI;

extern ABI_PROPERTIES_ABI ABI_PROPERTIES_ABI_Value;

extern const char *ABI_PROPERTIES_ABI_Name(ABI_PROPERTIES_ABI abi);

extern void ABI_PROPERTIES_Initialize(void);

inline const char *ABI_PROPERTY_Reg_Name(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return ABI_PROPERTIES_target_props->reg_names[rc][reg];
}

inline BOOL ABI_PROPERTY_Is_allocatable(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
          & ABI_PROPERTY_allocatable) != 0;
}

inline BOOL ABI_PROPERTY_Is_callee(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
          & ABI_PROPERTY_callee) != 0;
}

inline BOOL ABI_PROPERTY_Is_caller(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
          & ABI_PROPERTY_caller) != 0;
}

inline BOOL ABI_PROPERTY_Is_func_arg(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
          & ABI_PROPERTY_func_arg) != 0;
}

inline BOOL ABI_PROPERTY_Is_func_val(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
          & ABI_PROPERTY_func_val) != 0;
}

inline BOOL ABI_PROPERTY_Is_stack_ptr(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
          & ABI_PROPERTY_stack_ptr) != 0;
}

inline BOOL ABI_PROPERTY_Is_frame_ptr(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
          & ABI_PROPERTY_frame_ptr) != 0;
}

inline BOOL ABI_PROPERTY_Is_static_link(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
          & ABI_PROPERTY_static_link) != 0;
}

/* For properties that map to only one register,
 * create accessor routines for those registers.
 * If they map to multiple registers,
 * create accessor routines for first register.
 */
#define ABI_PROPERTY_integer_allocatable_First_Register 0
#define ABI_PROPERTY_float_allocatable_First_Register 0
#define ABI_PROPERTY_x87_allocatable_First_Register 0
#define ABI_PROPERTY_mmx_allocatable_First_Register 0

#define ABI_PROPERTY_integer_callee_First_Register 1

#define ABI_PROPERTY_integer_caller_First_Register 0
#define ABI_PROPERTY_float_caller_First_Register 0
#define ABI_PROPERTY_x87_caller_First_Register 0
#define ABI_PROPERTY_mmx_caller_First_Register 0

#define ABI_PROPERTY_integer_func_arg_First_Register 4
#define ABI_PROPERTY_float_func_arg_First_Register 0

#define ABI_PROPERTY_integer_func_val_First_Register 0
#define ABI_PROPERTY_float_func_val_First_Register 0
#define ABI_PROPERTY_x87_func_val_First_Register 0

#define ABI_PROPERTY_integer_stack_ptr_Register 3

#define ABI_PROPERTY_integer_frame_ptr_Register 2

#define ABI_PROPERTY_integer_static_link_Register 10


#ifdef __cplusplus
}
#endif
#endif
