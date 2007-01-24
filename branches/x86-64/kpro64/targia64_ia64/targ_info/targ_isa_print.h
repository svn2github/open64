/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of how to print the operands of ISA instructions
 *   in ascii. The description exports the following:
 *
 *   typedef (enum) ISA_PRINT_COMP
 *       An enumeration of the instruction components to be printed.
 *
 *   typedef (struct) ISA_PRINT_INFO
 *       Describes how one particular instruction is printed.
 *       The contents are private.
 *
 *   const INT ISA_PRINT_COMP_MAX
 *       The maximum number of components to be printed for any instruction.
 *
 *   const ISA_PRINT_INFO *ISA_PRINT_Info(TOP topcode)
 *       Returns a pointer to the printing description for the
 *       instruction specified by 'topcode'.
 *
 *       The instruction is printed by calling one of the printf routines
 *       with the format string returned from ISA_PRINT_INFO_Format.
 *       Additional printf arguments, necessitated by the format string,
 *       are described by ISA_PRINT_INFO_Comp.
 *
 *   INT ISA_PRINT_INFO_Comp(const ISA_PRINT_INFO *info, INT index)
 *       Identifies a instruction component to be printed.
 *
 *       'index' specifies the component. The first component has index
 *       0; the end of the components is signalled by the return of
 *       ISA_PRINT_COMP_end.
 *
 *   const char *ISA_PRINT_INFO_Format(const ISA_PRINT_INFO *info)
 *       The printf format string for printing the instruction
 *       described by 'info'.
 *
 *   const char *ISA_PRINT_AsmName(TOP topcode)
 *       Returns the assembly language name for <topcode>.
 *
 *   BOOL ISA_PRINT_Operand_Is_Part_Of_Name(TOP topcode, INT opindex)
 *       Returns whether the operand is part of the full asm name.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_print_INCLUDED
#define targ_isa_print_INCLUDED
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

#define ISA_PRINT_END_GROUP             (";;")
#define ISA_PRINT_PREDICATE             ("(%s)")
#define ISA_PRINT_BEGIN_BUNDLE          ("{\t      %s")
#define ISA_PRINT_END_BUNDLE            ("};")

typedef enum {
  ISA_PRINT_COMP_end    = 0,  /* End of list marker */
  ISA_PRINT_COMP_name   = 1,  /* Instruction name */
  ISA_PRINT_COMP_opnd   = 2,  /* OPND+n => operand n */
  ISA_PRINT_COMP_result = 8,  /* RESULT+n => result n */
  ISA_PRINT_COMP_MAX    = 9   /* Last component */
} ISA_PRINT_COMP;

typedef struct {
  const char *format;
  mUINT8 comp[10];
} ISA_PRINT_INFO;

extern const ISA_PRINT_INFO ISA_PRINT_info[69];

extern const unsigned char ISA_PRINT_info_index[759];

inline const ISA_PRINT_INFO *ISA_PRINT_Info(TOP topcode)
{
  INT index = ISA_PRINT_info_index[(INT)topcode];
  return index == 0 ? 0 : &ISA_PRINT_info[index];
}

inline const char* ISA_PRINT_INFO_Format(const ISA_PRINT_INFO *info)
{
  return info->format;
}

inline INT ISA_PRINT_INFO_Comp(const ISA_PRINT_INFO *info, INT index)
{
  return info->comp[index];
}

inline const char *ISA_PRINT_AsmName(TOP topcode)
{
  extern const char * const ISA_PRINT_asmname[];
  return ISA_PRINT_asmname[(INT)topcode];
}

extern BOOL ISA_PRINT_Operand_Is_Part_Of_Name(TOP topcode, INT opindex);

#ifdef __cplusplus
}
#endif
#endif
