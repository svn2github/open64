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
  mUINT32 reg_flags[7][128];
  const char *reg_names[7][128];
} ABI_PROPERTIES;

#define ABI_PROPERTY_entry_ptr            0x00000000U
#define ABI_PROPERTY_allocatable          0x00000001U
#define ABI_PROPERTY_callee               0x00000002U
#define ABI_PROPERTY_caller               0x00000004U
#define ABI_PROPERTY_stacked              0x00000008U
#define ABI_PROPERTY_func_arg             0x00000010U
#define ABI_PROPERTY_func_val             0x00000020U
#define ABI_PROPERTY_static_link          0x00000040U
#define ABI_PROPERTY_global_ptr           0x00000080U
#define ABI_PROPERTY_frame_ptr            0x00000100U
#define ABI_PROPERTY_stack_ptr            0x00000200U
#define ABI_PROPERTY_zero                 0x00000400U
#define ABI_PROPERTY_fzero                0x00000800U
#define ABI_PROPERTY_fone                 0x00001000U
#define ABI_PROPERTY_true_predicate       0x00002000U
#define ABI_PROPERTY_ret_addr             0x00004000U
#define ABI_PROPERTY_prev_funcstate       0x00008000U
#define ABI_PROPERTY_loop_count           0x00010000U
#define ABI_PROPERTY_epilog_count         0x00020000U

typedef enum {
  ABI_PROPERTIES_ABI_i32,
  ABI_PROPERTIES_ABI_i64,
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

/*ARGSUSED*/
inline BOOL ABI_PROPERTY_Is_entry_ptr(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  return FALSE;
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

inline BOOL ABI_PROPERTY_Is_stacked(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_stacked) != 0;
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

inline BOOL ABI_PROPERTY_Is_static_link(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_static_link) != 0;
}

inline BOOL ABI_PROPERTY_Is_global_ptr(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_global_ptr) != 0;
}

inline BOOL ABI_PROPERTY_Is_frame_ptr(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_frame_ptr) != 0;
}

inline BOOL ABI_PROPERTY_Is_stack_ptr(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_stack_ptr) != 0;
}

inline BOOL ABI_PROPERTY_Is_zero(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_zero) != 0;
}

inline BOOL ABI_PROPERTY_Is_fzero(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_fzero) != 0;
}

inline BOOL ABI_PROPERTY_Is_fone(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_fone) != 0;
}

inline BOOL ABI_PROPERTY_Is_true_predicate(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_true_predicate) != 0;
}

inline BOOL ABI_PROPERTY_Is_ret_addr(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_ret_addr) != 0;
}

inline BOOL ABI_PROPERTY_Is_prev_funcstate(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_prev_funcstate) != 0;
}

inline BOOL ABI_PROPERTY_Is_loop_count(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_loop_count) != 0;
}

inline BOOL ABI_PROPERTY_Is_epilog_count(
  ISA_REGISTER_CLASS rc,
  INT reg)
{
  extern const ABI_PROPERTIES *ABI_PROPERTIES_target_props;
  return (  ABI_PROPERTIES_target_props->reg_flags[rc][reg]
      & ABI_PROPERTY_epilog_count) != 0;
}


#ifdef __cplusplus
}
#endif
#endif
