/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   Utilities for decoding binary instructions. The following
 *   are exported:
 *
 *   TOP ISA_Decode_Inst(const ISA_PACK_INST *pinst, ISA_EXEC_UNIT unit)
 *       Decode the instruction pointed to by <pinst> in execution unit
 *       <unit> and return its opcode by function return value.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_decode_INCLUDED
#define targ_isa_decode_INCLUDED
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
#include "targ_isa_bundle.h"
#include "targ_isa_pack.h"

extern TOP ISA_Decode_Inst(const ISA_PACK_INST *pinst, ISA_EXEC_UNIT unit);

#ifdef __cplusplus
}
#endif
#endif
