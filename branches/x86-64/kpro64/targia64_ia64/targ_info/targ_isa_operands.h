/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of the ISA instruction operands. The description
 *   exports the following:
 *
 *   typedef (struct) ISA_OPERAND_VALTYP
 *       Describes a particular operand/result type, including
 *       the type of value it may contain and whether or not is
 *       a register, literal or enum. The contents are private.
 *
 *   typedef (struct) ISA_OPERAND_INFO
 *       Identifies the operand types of a particular instruction.
 *       The contents are private.
 *
 *,  typedef (enum) ISA_OPERAND_USE
 *       Identifies the useage of an operand of a particular instruction.
 *       The names have the form OU_xxxx.
 *
 *   const INT OU_UNDEFINED
 *       Identifies an undefined/unknown operand use.
 *
 *   const INT ISA_OPERAND_max_operands
 *       The maximum number of operands of any instruction.
 *
 *   const INT ISA_OPERAND_max_results
 *       The maximum number of results of any instruction.
 *
 *   const ISA_OPERAND_INFO *ISA_OPERAND_Info(TOP topcode)
 *       Return a pointer to the operand info for the instruction
 *       specified by 'topcode'.
 *
 *   INT ISA_OPERAND_INFO_Operands(const ISA_OPERAND_INFO *oinfo)
 *       Return the number of operands specified by the operand
 *       info 'oinfo'.
 *
 *   const ISA_OPERAND_VALTYP *ISA_OPERAND_INFO_Operand(
 *     const ISA_OPERAND_INFO *oinfo,
 *     int opnd
 *   )
 *       Get the operand type of operand 'opnd' specified by the
 *       operand info 'oinfo'.
 *
 *   INT ISA_OPERAND_INFO_Results(const ISA_OPERAND_INFO *oinfo)
 *       Return the number of results specified by the operand
 *       info 'oinfo'.
 *
 *   const ISA_OPERAND_VALTYP *ISA_OPERAND_INFO_Result(
 *     const ISA_OPERAND_INFO *oinfo,
 *     int result
 *   )
 *       Get the operand type for the result 'result' specified by the
 *       operand info 'oinfo'.
 *
 *   ISA_OPERAND_USE ISA_OPERAND_INFO_Use(
 *     const ISA_OPERAND_INFO *oinfo,
 *     INT opnd
 *   )
 *       Get the operand use type of operand 'opnd' specified by the
 *       operand info 'oinfo'.
 *
 *   BOOL ISA_OPERAND_Any_Use(ISA_OPERAND_USE ouse)
 *       Returns a boolean that indicates if any instruction in the
 *       architecture has an an operand with usage 'use'. Useful
 *       for omitting sections of code that aren't applicable to
 *       some architectures.
 *
 *   ISA_REGISTER_CLASS ISA_OPERAND_VALTYP_Register_Class(
 *     const ISA_OPERAND_VALTYP *otype
 *   )
 *       Get the register class for the operand specified by 'otype'.
 *
 *   ISA_REGISTER_SUBCLASS ISA_OPERAND_VALTYP_Register_Subclass(
 *     const ISA_OPERAND_VALTYP *otype
 *   )
 *       Get the register subclass for the operand specified by 'otype'.
 *
 *   ISA_LIT_CLASS ISA_OPERAND_VALTYP_Literal_Class(const ISA_OPERAND_VALTYP *otype)
 *       Get the literal class for the operand specified by 'otype'.
 *
 *   ISA_ENUM_CLASS ISA_OPERAND_VALTYP_Enum_Class(
 *     const ISA_OPERAND_VALTYP *otype
 *   )
 *       Get the enum class for the operand specified by 'otype'.
 *
 *   INT ISA_OPERAND_VALTYP_Size(const ISA_OPERAND_VALTYP *otype)
 *       Get the size for the operand specified by 'otype'.
 *
 *   BOOL ISA_OPERAND_VALTYP_Is_Register(const ISA_OPERAND_VALTYP *otype)
 *       Return a boolean to specify if the operand specifed
 *       by 'otype' is a register.
 *
 *   BOOL ISA_OPERAND_VALTYP_Is_Signed(const ISA_OPERAND_VALTYP *otype)
 *       Return a boolean to specify if the operand specifed
 *       by 'otype' is signed.
 *
 *   BOOL ISA_OPERAND_VALTYP_Is_FPU_Int(const ISA_OPERAND_VALTYP *otype)
 *       Return a boolean to specify if the operand specifed
 *       by 'otype' is an FPU integer.
 *
 *   BOOL ISA_OPERAND_VALTYP_Is_PCRel(const ISA_OPERAND_VALTYP *otype)
 *       Return a boolean to specify if the operand specifed
 *       by 'otype' is pc-relative.
 *
 *   BOOL ISA_OPERAND_VALTYP_Is_Literal (const ISA_OPERAND_VALTYP *otype)
 *       Return a boolean to specify if the operand specifed
 *       by 'otype' is a literal.
 *
 *   BOOL ISA_OPERAND_VALTYP_Is_Enum (const ISA_OPERAND_VALTYP *otype)
 *       Return a boolean to specify if the operand specifed
 *       by 'otype' is an enum.
 *
 *   BOOL TOP_Can_Have_Immediate(INT64 value, TOP topcode)
 *       Return a boolean to specify if the 64-bit integer value can fit
 *       in the literal field of an instruction with the given topcode.
 *
 *   INT TOP_Immediate_Operand(TOP topcode, ISA_LIT_CLASS *lclass)
 *       If 'topcode' has an immediate operand, return its operand
 *       number by value and literal class by reference through 'lclass'
 *       (a null pointer can be passed for 'lclass' if the literal
 *       class is not needed). If there is no immediate operand, return -1.
 *
 *   INT TOP_Relocatable_Operand(TOP topcode, ISA_LIT_CLASS *lclass)
 *       If 'topcode' has a relocatable operand, return its operand
 *       number by value and literal class by reference through 'lclass'
 *       (a null pointer can be passed for 'lclass' if the literal
 *       class is not needed). If there is no relocatable operand, return -1.
 *
 *   INT TOP_Find_Operand_Use(TOP topcode, ISA_OPERAND_USE use)
 *       For the instruction specified by 'topcode', give the
 *       operand number with the use 'use'. If there is no such
 *       operand, return -1.
 *
 *   void TOP_Operand_Uses(TOP topcode, ISA_OPERAND_USE *uses)
 *       For the instruction specified by 'topcode', return
 *       the usage of all its operands in the array pointed to
 *       by 'uses'. The use of operand n corresponds to 'uses'[n].
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_operands_INCLUDED
#define targ_isa_operands_INCLUDED
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
#include "targ_isa_registers.h"
#include "targ_isa_enums.h"
#include "targ_isa_lits.h"

typedef enum {
  OU_UNDEFINED,
  OU_predicate,
  OU_offset,
  OU_base,
  OU_postincr,
  OU_target,
  OU_storeval,
  OU_opnd1,
  OU_opnd2,
  OU_maddend,
  OU_MAX = 9
} ISA_OPERAND_USE;

typedef struct {
  mUINT8 rclass;
  mUINT8 rsubclass;
  mUINT8 lclass;
  mUINT8 eclass;
  mUINT8 size;
  mUINT8 flags;
} ISA_OPERAND_VALTYP;

enum {
  ISA_OPERAND_max_operands=6,
  ISA_OPERAND_max_results=3
};

typedef struct {
  mUINT8 opnds;
  mUINT8 opnd[ISA_OPERAND_max_operands];
  mUINT8 ouse[ISA_OPERAND_max_operands];
  mUINT8 results;
  mUINT8 result[ISA_OPERAND_max_results];
} ISA_OPERAND_INFO;

inline const ISA_OPERAND_INFO *ISA_OPERAND_Info(TOP topcode)
{
  extern const mUINT8 ISA_OPERAND_info_index[];
  extern const ISA_OPERAND_INFO ISA_OPERAND_info[];
  INT index = ISA_OPERAND_info_index[(INT)topcode];
  return &ISA_OPERAND_info[index];
}

inline INT ISA_OPERAND_INFO_Operands(const ISA_OPERAND_INFO *oinfo)
{
  return oinfo->opnds;
}

inline const ISA_OPERAND_VALTYP *ISA_OPERAND_INFO_Operand(
  const ISA_OPERAND_INFO *oinfo,
  INT opnd)
{
  extern const ISA_OPERAND_VALTYP ISA_OPERAND_operand_types[];
  INT index = oinfo->opnd[opnd];
  return &ISA_OPERAND_operand_types[index];
}

inline INT ISA_OPERAND_INFO_Results(const ISA_OPERAND_INFO *oinfo)
{
  return oinfo->results;
}

inline const ISA_OPERAND_VALTYP *ISA_OPERAND_INFO_Result(
  const ISA_OPERAND_INFO *oinfo,
  INT result)
{
  extern const ISA_OPERAND_VALTYP ISA_OPERAND_operand_types[];
  INT index = oinfo->result[result];
  return &ISA_OPERAND_operand_types[index];
}

inline ISA_REGISTER_CLASS ISA_OPERAND_VALTYP_Register_Class(
  const ISA_OPERAND_VALTYP *otype)
{
  return (ISA_REGISTER_CLASS)otype->rclass;
}

inline ISA_REGISTER_SUBCLASS ISA_OPERAND_VALTYP_Register_Subclass(
  const ISA_OPERAND_VALTYP *otype)
{
  return (ISA_REGISTER_SUBCLASS)otype->rsubclass;
}

inline ISA_LIT_CLASS ISA_OPERAND_VALTYP_Literal_Class(const ISA_OPERAND_VALTYP *otype)
{
  return (ISA_LIT_CLASS)otype->lclass;
}

inline ISA_ENUM_CLASS ISA_OPERAND_VALTYP_Enum_Class(
  const ISA_OPERAND_VALTYP *otype)
{
  return (ISA_ENUM_CLASS)otype->eclass;
}

inline INT ISA_OPERAND_VALTYP_Size(const ISA_OPERAND_VALTYP *otype)
{
  return otype->size;
}

inline BOOL ISA_OPERAND_VALTYP_Is_Register(const ISA_OPERAND_VALTYP *otype)
{
  return (otype->flags & 0x01) != 0;
}

inline BOOL ISA_OPERAND_VALTYP_Is_Literal(const ISA_OPERAND_VALTYP *otype)
{
  return (otype->lclass != LC_UNDEFINED);
}

inline BOOL ISA_OPERAND_VALTYP_Is_Enum(const ISA_OPERAND_VALTYP *otype)
{
  return (otype->eclass != EC_UNDEFINED);
}

inline BOOL ISA_OPERAND_VALTYP_Is_Signed(const ISA_OPERAND_VALTYP *otype)
{
  return (otype->flags & 0x02) != 0;
}

/*ARGSUSED*/
inline BOOL ISA_OPERAND_VALTYP_Is_FPU_Int(const ISA_OPERAND_VALTYP *otype)
{
  return FALSE;
}

inline BOOL ISA_OPERAND_VALTYP_Is_PCRel(const ISA_OPERAND_VALTYP *otype)
{
  return (otype->flags & 0x08) != 0;
}

inline ISA_OPERAND_USE ISA_OPERAND_INFO_Use(
  const ISA_OPERAND_INFO *oinfo,
  INT opnd)
{
  return (ISA_OPERAND_USE)oinfo->ouse[opnd];
}

inline BOOL ISA_OPERAND_Any_Use(ISA_OPERAND_USE ouse)
{
  return (0x00000000000003fbULL & (1ULL << ouse)) != 0;
}

extern INT TOP_Immediate_Operand(TOP topcode, ISA_LIT_CLASS *lclass);

extern INT TOP_Relocatable_Operand(TOP topcode, ISA_LIT_CLASS *lclass);

extern BOOL TOP_Can_Have_Immediate(INT64 value, TOP topcode);

extern INT TOP_Find_Operand_Use(TOP topcode, ISA_OPERAND_USE use);

extern void TOP_Operand_Uses(TOP topcode, ISA_OPERAND_USE *uses);


#ifdef __cplusplus
}
#endif
#endif
