/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of how to pack the operands of ISA instructions
 *   into binary object code. The description exports the following:
 *
 *   typedef ISA_PACK_INST
 *       A scalar type large enough to hold an instruction.
 *
 *   const INT ISA_PACK_INST_SIZE
 *       The size, in bits, of an instruction.
 *
 *   typedef (enum) ISA_PACK_COMP
 *       An enumeration of the instruction components to be packed.
 *
 *   typedef (struct) ISA_PACK_INFO
 *       Describes how the operands of a particular instruction
 *       are packed. The contents are private.
 *
 *   const INT ISA_PACK_COMP_MAX
 *       The maximum number of operands to be packed for any instruction.
 *
 *   UINT64 ISA_PACK_Init_Mask(TOP topcode, INT iword)
 *       Returns an initial bit mask to initialize the instruction word,
 *       with index 'iword', for the instruction specified by 'topcode'
 *
 *   INT ISA_PACK_Inst_Words(TOP topcode)
 *       Returns the number of instruction words for the specified topcode.
 *
 *   const ISA_PACK_INFO *ISA_PACK_Info(TOP topcode)
 *       Returns a pointer to the first packing descriptions for
 *       the instruction specified by 'topcode'. Increment
 *       the returned pointer to access any additional packing
 *       descriptions for the instruction. A packing description
 *       with component ISA_PACK_COMP_end marks the end.
 *
 *   INT ISA_PACK_INFO_Comp(const ISA_PACK_INFO *info)
 *       Identifies the instruction component to be packed.
 *
 *   INT ISA_PACK_INFO_OpndPos(const ISA_PACK_INFO *info)
 *       The offset, in bits, to the start of the component in the
 *       operand value.
 *
 *       ISA_PACK_INFO_OpndPos is meaningless for ISA_PACK_COMP_end.
 *
 *   INT ISA_PACK_INFO_InstPos(const ISA_PACK_INFO *info)
 *       The offset, in bits, to the start of the component in the
 *       instruction word.
 *
 *       ISA_PACK_INFO_InstPos is meaningless for ISA_PACK_COMP_end.
 *
 *   UINT64 ISA_PACK_INFO_Mask(const ISA_PACK_INFO *info)
 *       A bit-mask that is as wide as the instruction field being
 *       packed. The mask is normalized such that the lowest bit
 *       of the mask is in bit-0.
 *
 *       The mask is meaningless for ISA_PACK_COMP_end.
 *
 *   typedef (struct) ISA_PACK_ADJ_INFO
 *       Describes how the operands of a particular instruction
 *       are to be adjust. The contents are private.
 *
 *   const INT ISA_PACK_ADJ_END
 *       A reserved ISA_PACK_ADJ_INFO code which indicates the end
 *       of a sequence of adjustments.
 *
 *   const ISA_PACK_ADJ_INFO *ISA_PACK_Adj_Info(TOP topcode)
 *       Returns a pointer to the first operand adjustment description
 *       for the instruction specified by 'topcode'. Increment
 *       the returned pointer to access any additional adjustment
 *       descriptions for the instruction. An adjustment description
 *       with code ISA_PACK_ADJ_END marks the end.
 *
 *   INT ISA_PACK_ADJ_INFO_Code(const ISA_PACK_ADJ_INFO *info, BOOL invert)
 *       Identifies the adjustment to be made. If <invert> is FALSE,
 *       the adjustment is for packing; otherwise if <invert> is TRUE,
 *       the adjustment is for unpacking.
 *
 *   INT ISA_PACK_ADJ_INFO_OpndIdx(const ISA_PACK_ADJ_INFO *info)
 *       The index of the operand, i.e. the operand number, to be adjusted.
 *
 *   void ISA_PACK_Adjust_Operands(const ISA_PACK_ADJ_INFO *info,
 *                                 INT64 *opnd,
 *                                 BOOL invert)
 *       Apply adjustemnts to all operands of an instruction, as
 *       specified by <info>. <opnd> is a pointer to an array of
 *       of operand values for the instruction. If <invert> is FALSE,
 *       the adjustment is for packing; otherwise if <invert> is TRUE,
 *       the adjustment is for unpacking.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_pack_INCLUDED
#define targ_isa_pack_INCLUDED
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

typedef mUINT64 ISA_PACK_INST;

#define ISA_PACK_INST_SIZE (41)

#define ISA_PACK_MAX_INST_WORDS (2)

typedef enum {
  ISA_PACK_COMP_end    = 0,  /* End of list marker */
  ISA_PACK_COMP_opnd   = 1,  /* OPND+n => operand n */
  ISA_PACK_COMP_result = 7,  /* RESULT+n => result n */
  ISA_PACK_COMP_MAX    = 8   /* Last component */
} ISA_PACK_COMP;

typedef struct {
  mUINT8 comp;
  mUINT8 opndpos;
  mUINT8 instpos;
  mUINT64 mask;
} ISA_PACK_INFO;

inline UINT64 ISA_PACK_Init_Mask(TOP topcode, INT iword)
{
  extern const mUINT64 ISA_PACK_init_mask[759][2];
  return ISA_PACK_init_mask[(INT)topcode][iword];
}

inline INT ISA_PACK_Inst_Words(TOP topcode)
{
  extern const mUINT8 ISA_PACK_inst_words[759];
  return ISA_PACK_inst_words[(INT)topcode];
}

inline const ISA_PACK_INFO *ISA_PACK_Info(TOP topcode)
{
  extern const mUINT16 ISA_PACK_info_index[];
  extern const ISA_PACK_INFO ISA_PACK_info[];
  INT index = ISA_PACK_info_index[(INT)topcode];
  return index == 0 ? 0 : &ISA_PACK_info[index];
}

inline INT ISA_PACK_INFO_Comp(const ISA_PACK_INFO *info)
{
  return info->comp;
}

inline INT ISA_PACK_INFO_OpndPos(const ISA_PACK_INFO *info)
{
  return info->opndpos;
}

inline INT ISA_PACK_INFO_InstPos(const ISA_PACK_INFO *info)
{
  return info->instpos;
}

inline UINT64 ISA_PACK_INFO_Mask(const ISA_PACK_INFO *info)
{
  return info->mask;
}

typedef struct {
  mUINT8 code[2];
  mUINT8 opndidx;
} ISA_PACK_ADJ_INFO;

enum { ISA_PACK_ADJ_END = 0 };

inline INT ISA_PACK_ADJ_INFO_Code(const ISA_PACK_ADJ_INFO *info, BOOL invert)
{
  return info->code[invert];
}

inline INT ISA_PACK_ADJ_INFO_OpndIdx(const ISA_PACK_ADJ_INFO *info)
{
  return info->opndidx;
}

inline const ISA_PACK_ADJ_INFO *ISA_PACK_Adj_Info(TOP topcode)
{
  extern const ISA_PACK_ADJ_INFO ISA_PACK_adj_info[];
  extern const mUINT8 ISA_PACK_adj_info_index[];
  INT index = ISA_PACK_adj_info_index[(INT)topcode];
  return index == 0 ? 0 : &ISA_PACK_adj_info[index];
}

extern void ISA_PACK_Adjust_Operands(const ISA_PACK_ADJ_INFO *info,
                                       INT64 *opnd,
                                       BOOL invert);

#ifdef __cplusplus
}
#endif
#endif
