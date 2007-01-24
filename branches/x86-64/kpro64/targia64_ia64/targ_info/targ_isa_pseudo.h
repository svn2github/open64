/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   Utilities for pseudo instructions. The following are exported:
 *
 *   typedef (enum) ISA_PSEUDO_DIRECTION
 *       Specifies the direction of a machine/pseudo instruction
 *       translation:
 *
 *       ISA_PSEUDO_to_pseudo -- translate from machine to pseudo instruction
 *       ISA_PSEUDO_to_machine -- translate from pseudo to machine instruction
 *
 *   TOP ISA_PSEUDO_Translate(TOP opc,
 *                            INT64 *r,
 *                            INT64 *o,
 *                            ISA_PSEUDO_DIRECTION dir)
 *       Translate the instruction with opcode <opc>, results
 *       array <r> and operands array <o>. The direction of the
 *       translation is controlled by <dir>. If there is a translation
 *       return the translated topcode by function return value, and
 *       the possibly modified operands and results by the <o> and <r>
 *       arrays. If there is no translation, return <opc> by function
 *       value, with unmodified operands and results. If an internal
 *       error is detected, TOP_UNDEFINED is returned rather than
 *       asserting.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_pseudo_INCLUDED
#define targ_isa_pseudo_INCLUDED
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
  ISA_PSEUDO_to_pseudo = 0,
  ISA_PSEUDO_to_machine = 1
} ISA_PSEUDO_DIRECTION;

extern TOP ISA_PSEUDO_Translate(TOP opc,
                                INT64 *r,
                                INT64 *o,
                                ISA_PSEUDO_DIRECTION dir);

#ifdef __cplusplus
}
#endif
#endif
