#include "topcode.h"
#include "targ_isa_pack.h"


const ISA_PACK_INFO ISA_PACK_info[] = {
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* UNDEFINED */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a1, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a1, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a1, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* a1, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a1 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a2, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a2, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 27, 0x0000000000000003 },  /* a2, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* a2, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* a2, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a2 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a3, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a3, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* a3, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a3, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* a3, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a3 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a4, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a4, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 27, 0x000000000000003f },  /* a4, OPND2 */
  { ISA_PACK_COMP_opnd+1  , 13, 36, 0x0000000000000001 },  /* a4, OPND3 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a4, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* a4, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a4 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a5, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a5, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 27, 0x00000000000001ff },  /* a5, OPND2 */
  { ISA_PACK_COMP_opnd+1  , 16, 22, 0x000000000000001f },  /* a5, OPND3 */
  { ISA_PACK_COMP_opnd+1  , 21, 36, 0x0000000000000001 },  /* a5, OPND4 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x0000000000000003 },  /* a5, OPND5 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* a5, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a5 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a6, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a6, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a6, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* a6, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* a6, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a6 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a7, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* a7, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* a7, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* a7, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a7 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a8a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a8a, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* a8a, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a8a, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* a8a, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* a8a, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a8a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a8b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a8b, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* a8b, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a8b, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* a8b, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* a8b, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a8b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a9, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a9, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a9, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* a9, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a9 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a10, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a10, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 27, 0x0000000000000003 },  /* a10, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* a10, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* a10, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a10 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a11, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* a11, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* a11, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a11 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a12, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a12, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 27, 0x00000000000001ff },  /* a12, OPND2 */
  { ISA_PACK_COMP_opnd+1  , 16, 22, 0x000000000000001f },  /* a12, OPND3 */
  { ISA_PACK_COMP_opnd+1  , 21, 36, 0x0000000000000001 },  /* a12, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* a12, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a12 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a13, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a13, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a13, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* a13, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* a13, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a13 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a14, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a14, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a14, OPND2 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* a14, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* a14, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a14 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a15, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* a15, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* a15, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* a15, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* a15, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a15 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a16, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* a16, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* a16, OPND2 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* a16, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* a16, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a16 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a17, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a17, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* a17, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a17, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* a17, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* a17, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a17 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a18, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a18, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* a18, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a18, OPND3 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* a18, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* a18, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a18 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a19, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a19, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* a19, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a19, OPND3 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* a19, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* a19, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a19 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a20, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a20, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* a20, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a20, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* a20, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* a20, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a20 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a21, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* a21, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* a21, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* a21, OPND3 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* a21, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* a21, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a21 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a22, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* a22, OPND1 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* a22, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* a22, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a22 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* a23, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* a23, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* a23, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* a23, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* a23 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i1, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i1, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* i1, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 30, 0x0000000000000003 },  /* i1, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i1, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i1 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i2, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i2, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* i2, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i2, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i2 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i3, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i3, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000000f },  /* i3, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i3, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i3 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i4, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i4, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x00000000000000ff },  /* i4, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i4, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i4 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i5, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i5, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* i5, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i5, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i5 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i6, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i6, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 14, 0x000000000000001f },  /* i6, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i6, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i6 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i7, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i7, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* i7, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i7, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i7 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i8, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i8, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000001f },  /* i8, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i8, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i8 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i9, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i9, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i9, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i9 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i10, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i10, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* i10, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 27, 0x000000000000003f },  /* i10, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i10, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i10 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i11, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i11, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 14, 0x000000000000003f },  /* i11, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 27, 0x000000000000003f },  /* i11, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i11, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i11 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i12, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i12, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000003f },  /* i12, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 27, 0x000000000000003f },  /* i12, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i12, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i12 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i13, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i13, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* i13, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000003f },  /* i13, OPND3 */
  { ISA_PACK_COMP_opnd+3  ,  0, 27, 0x000000000000003f },  /* i13, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i13, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i13 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i14, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 36, 0x0000000000000001 },  /* i14, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* i14, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 14, 0x000000000000003f },  /* i14, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 27, 0x000000000000003f },  /* i14, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i14, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i14 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i15, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i15, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* i15, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 31, 0x000000000000003f },  /* i15, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 27, 0x000000000000000f },  /* i15, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i15, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i15 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i16, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i16, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 14, 0x000000000000003f },  /* i16, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* i16, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* i16, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i16 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i17, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i17, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* i17, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* i17, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i17 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i19, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0,  6, 0x00000000000fffff },  /* i19, OPND1 */
  { ISA_PACK_COMP_opnd+1  , 20, 36, 0x0000000000000001 },  /* i19, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i19 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i20, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i20, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  4,  6, 0x000000000000007f },  /* i20, OPND2 */
  { ISA_PACK_COMP_opnd+2  , 11, 20, 0x0000000000001fff },  /* i20, OPND3 */
  { ISA_PACK_COMP_opnd+2  , 24, 36, 0x0000000000000001 },  /* i20, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i20 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i21, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x0000000000000003 },  /* i21, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 23, 0x0000000000000001 },  /* i21, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* i21, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  4, 24, 0x00000000000001ff },  /* i21, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x0000000000000007 },  /* i21, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i21 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i22, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x0000000000000007 },  /* i22, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i22, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i22 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i23, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i23, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  1,  6, 0x000000000000007f },  /* i23, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  8, 24, 0x00000000000000ff },  /* i23, OPND3 */
  { ISA_PACK_COMP_opnd+2  , 16, 36, 0x0000000000000001 },  /* i23, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i23 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i24, OPND0 */
  { ISA_PACK_COMP_opnd+1  , 16,  6, 0x0000000007ffffff },  /* i24, OPND1 */
  { ISA_PACK_COMP_opnd+1  , 43, 36, 0x0000000000000001 },  /* i24, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i24 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i25, OPND0 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i25, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i25 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i26, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i26, OPND1 */
  { ISA_PACK_COMP_result  ,  0, 20, 0x000000000000007f },  /* i26, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i26 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i27, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i27, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* i27, OPND2 */
  { ISA_PACK_COMP_result  ,  0, 20, 0x000000000000007f },  /* i27, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i27 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i28, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i28, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i28, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i28 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i29, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i29, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i29, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i29 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i30, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i30, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x0000000000000007 },  /* i30, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i30 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i31, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i31, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 14, 0x000000000000003f },  /* i31, OPND2 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* i31, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* i31, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i31 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i32, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i32, OPND1 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* i32, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* i32, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i32 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i33, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* i33, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000003f },  /* i33, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 27, 0x000000000000003f },  /* i33, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i33, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i33 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* i34, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* i34, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 14, 0x000000000000003f },  /* i34, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  0, 27, 0x000000000000003f },  /* i34, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* i34, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* i34 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m1a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x000000000000000f },  /* m1a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m1a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m1a, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m1a, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m1a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m1b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m1b, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m1b, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m1b, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m1b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m2a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x000000000000000f },  /* m2a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m2a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m2a, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x000000000000007f },  /* m2a, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m2a, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m2a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m2b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m2b, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m2b, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m2b, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m2b, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m2b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m3a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x000000000000000f },  /* m3a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m3a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m3a, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x000000000000007f },  /* m3a, OPND4 */
  { ISA_PACK_COMP_opnd+4  ,  7, 27, 0x0000000000000001 },  /* m3a, OPND5 */
  { ISA_PACK_COMP_opnd+4  ,  8, 36, 0x0000000000000001 },  /* m3a, OPND6 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m3a, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m3a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m3b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m3b, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m3b, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m3b, OPND3 */
  { ISA_PACK_COMP_opnd+3  ,  7, 27, 0x0000000000000001 },  /* m3b, OPND4 */
  { ISA_PACK_COMP_opnd+3  ,  8, 36, 0x0000000000000001 },  /* m3b, OPND5 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m3b, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m3b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m4a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x0000000000000001 },  /* m4a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m4a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m4a, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x000000000000007f },  /* m4a, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m4a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m4b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m4b, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m4b, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m4b, OPND3 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m4b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m5a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x0000000000000001 },  /* m5a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m5a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m5a, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x000000000000007f },  /* m5a, OPND4 */
  { ISA_PACK_COMP_opnd+5  ,  0,  6, 0x000000000000007f },  /* m5a, OPND5 */
  { ISA_PACK_COMP_opnd+5  ,  7, 27, 0x0000000000000001 },  /* m5a, OPND6 */
  { ISA_PACK_COMP_opnd+5  ,  8, 36, 0x0000000000000001 },  /* m5a, OPND7 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m5a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m5b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m5b, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m5b, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m5b, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0,  6, 0x000000000000007f },  /* m5b, OPND4 */
  { ISA_PACK_COMP_opnd+4  ,  7, 27, 0x0000000000000001 },  /* m5b, OPND5 */
  { ISA_PACK_COMP_opnd+4  ,  8, 36, 0x0000000000000001 },  /* m5b, OPND6 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m5b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m6a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x000000000000000f },  /* m6a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m6a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m6a, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m6a, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m6a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m6b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m6b, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m6b, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m6b, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m6b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m7a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x000000000000000f },  /* m7a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m7a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m7a, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x000000000000007f },  /* m7a, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m7a, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m7a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m7b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m7b, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m7b, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m7b, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m7b, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m7b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m8a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x000000000000000f },  /* m8a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m8a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m8a, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x000000000000007f },  /* m8a, OPND4 */
  { ISA_PACK_COMP_opnd+4  ,  7, 27, 0x0000000000000001 },  /* m8a, OPND5 */
  { ISA_PACK_COMP_opnd+4  ,  8, 36, 0x0000000000000001 },  /* m8a, OPND6 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m8a, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m8a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m8b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m8b, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m8b, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m8b, OPND3 */
  { ISA_PACK_COMP_opnd+3  ,  7, 27, 0x0000000000000001 },  /* m8b, OPND4 */
  { ISA_PACK_COMP_opnd+3  ,  8, 36, 0x0000000000000001 },  /* m8b, OPND5 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m8b, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m8b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m9, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m9, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m9, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m9, OPND3 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m9 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m10, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m10, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m10, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m10, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0,  6, 0x000000000000007f },  /* m10, OPND4 */
  { ISA_PACK_COMP_opnd+4  ,  7, 27, 0x0000000000000001 },  /* m10, OPND5 */
  { ISA_PACK_COMP_opnd+4  ,  8, 36, 0x0000000000000001 },  /* m10, OPND6 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m10 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m11, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x000000000000000f },  /* m11, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m11, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m11, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m11, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 13, 0x000000000000007f },  /* m11, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m11 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m12, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x000000000000000f },  /* m12, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m12, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m12, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m12, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 13, 0x000000000000007f },  /* m12, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m12 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m13, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m13, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m13, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m13 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m14, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m14, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m14, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m14, OPND3 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m14 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m15, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m15, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m15, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m15, OPND3 */
  { ISA_PACK_COMP_opnd+3  ,  7, 27, 0x0000000000000001 },  /* m15, OPND4 */
  { ISA_PACK_COMP_opnd+3  ,  8, 36, 0x0000000000000001 },  /* m15, OPND5 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m15 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m16a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x0000000000000001 },  /* m16a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m16a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m16a, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x000000000000007f },  /* m16a, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m16a, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m16a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m16b, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 28, 0x0000000000000003 },  /* m16b, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* m16b, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* m16b, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m16b, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m16b */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m17, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 32, 0x0000000000000001 },  /* m17, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 28, 0x0000000000000003 },  /* m17, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* m17, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x0000000000000007 },  /* m17, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m17, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m17 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m18, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* m18, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m18, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m18 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m19, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* m19, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m19, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m19 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m20, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* m20, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  4,  6, 0x000000000000007f },  /* m20, OPND2 */
  { ISA_PACK_COMP_opnd+2  , 11, 20, 0x0000000000001fff },  /* m20, OPND3 */
  { ISA_PACK_COMP_opnd+2  , 24, 36, 0x0000000000000001 },  /* m20, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m20 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m21, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* m21, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  4,  6, 0x000000000000007f },  /* m21, OPND2 */
  { ISA_PACK_COMP_opnd+2  , 11, 20, 0x0000000000001fff },  /* m21, OPND3 */
  { ISA_PACK_COMP_opnd+2  , 24, 36, 0x0000000000000001 },  /* m21, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m21 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m22, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 33, 0x0000000000000001 },  /* m22, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0,  6, 0x000000000000007f },  /* m22, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  4, 13, 0x00000000000fffff },  /* m22, OPND3 */
  { ISA_PACK_COMP_opnd+3  , 24, 36, 0x0000000000000001 },  /* m22, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m22 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m23, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 33, 0x0000000000000001 },  /* m23, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0,  6, 0x000000000000007f },  /* m23, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  4, 13, 0x00000000000fffff },  /* m23, OPND3 */
  { ISA_PACK_COMP_opnd+3  , 24, 36, 0x0000000000000001 },  /* m23, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m23 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m24, OPND0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m24 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m25 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m26, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0,  6, 0x000000000000007f },  /* m26, OPND1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m26 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m27, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0,  6, 0x000000000000007f },  /* m27, OPND1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m27 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m28, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m28, OPND1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m28 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m29, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* m29, OPND1 */
  { ISA_PACK_COMP_result  ,  0, 20, 0x000000000000007f },  /* m29, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m29 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m30, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* m30, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 36, 0x0000000000000001 },  /* m30, OPND2 */
  { ISA_PACK_COMP_result  ,  0, 20, 0x000000000000007f },  /* m30, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m30 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m31, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m31, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m31, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m31 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m32, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* m32, OPND1 */
  { ISA_PACK_COMP_result  ,  0, 20, 0x000000000000007f },  /* m32, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m32 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m33, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m33, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m33, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m33 */
  { ISA_PACK_COMP_opnd    ,  0, 13, 0x000000000000007f },  /* m34, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m34, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  3, 27, 0x000000000000000f },  /* m34, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m34, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m34 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m35, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* m35, OPND1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m35 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m36, OPND0 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m36, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m36 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m37, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0,  6, 0x00000000000fffff },  /* m37, OPND1 */
  { ISA_PACK_COMP_opnd+1  , 20, 36, 0x0000000000000001 },  /* m37, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m37 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m38, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m38, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* m38, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m38, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m38 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m39, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m39, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x0000000000000003 },  /* m39, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m39, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m39 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m40, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m40, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x0000000000000003 },  /* m40, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m40 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m41, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* m41, OPND1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m41 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m42, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m42, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* m42, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m42 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m43, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m43, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m43, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m43 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m44, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0,  6, 0x00000000001fffff },  /* m44, OPND1 */
  { ISA_PACK_COMP_opnd+1  , 21, 31, 0x0000000000000003 },  /* m44, OPND2 */
  { ISA_PACK_COMP_opnd+1  , 23, 36, 0x0000000000000001 },  /* m44, OPND3 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m44 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m45, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m45, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* m45, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m45 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* m46, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m46, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m46, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m46 */
  { ISA_PACK_COMP_opnd    ,  0, 13, 0x000000000000007f },  /* m47, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* m47, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0,  0, 0x0000000000000000 },  /* m47, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 27, 0x000000000000000f },  /* m47, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* m47, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* m47 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* b1, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 33, 0x0000000000000003 },  /* b1, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 12, 0x0000000000000001 },  /* b1, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 35, 0x0000000000000001 },  /* b1, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  4, 13, 0x00000000000fffff },  /* b1, OPND4 */
  { ISA_PACK_COMP_opnd+4  , 24, 36, 0x0000000000000001 },  /* b1, OPND5 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b1 */
  { ISA_PACK_COMP_opnd    ,  0, 33, 0x0000000000000003 },  /* b2, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 12, 0x0000000000000001 },  /* b2, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 35, 0x0000000000000001 },  /* b2, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  4, 13, 0x00000000000fffff },  /* b2, OPND3 */
  { ISA_PACK_COMP_opnd+3  , 24, 36, 0x0000000000000001 },  /* b2, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b2 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* b3, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 33, 0x0000000000000003 },  /* b3, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 12, 0x0000000000000001 },  /* b3, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 35, 0x0000000000000001 },  /* b3, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  4, 13, 0x00000000000fffff },  /* b3, OPND4 */
  { ISA_PACK_COMP_opnd+4  , 24, 36, 0x0000000000000001 },  /* b3, OPND5 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x0000000000000007 },  /* b3, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b3 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* b4, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 33, 0x0000000000000003 },  /* b4, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 12, 0x0000000000000001 },  /* b4, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 35, 0x0000000000000001 },  /* b4, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x0000000000000007 },  /* b4, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b4 */
  { ISA_PACK_COMP_opnd    ,  0, 33, 0x0000000000000003 },  /* b4a, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 12, 0x0000000000000001 },  /* b4a, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 35, 0x0000000000000001 },  /* b4a, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x0000000000000007 },  /* b4a, OPND3 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b4a */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* b5, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 33, 0x0000000000000003 },  /* b5, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 12, 0x0000000000000001 },  /* b5, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 35, 0x0000000000000001 },  /* b5, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x0000000000000007 },  /* b5, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x0000000000000007 },  /* b5, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b5 */
  { ISA_PACK_COMP_opnd    ,  0,  3, 0x0000000000000003 },  /* b6, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 35, 0x0000000000000001 },  /* b6, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  4, 13, 0x00000000000fffff },  /* b6, OPND2 */
  { ISA_PACK_COMP_opnd+2  , 24, 36, 0x0000000000000001 },  /* b6, OPND3 */
  { ISA_PACK_COMP_opnd+3  ,  4,  6, 0x000000000000007f },  /* b6, OPND4 */
  { ISA_PACK_COMP_opnd+3  , 11, 33, 0x0000000000000003 },  /* b6, OPND5 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b6 */
  { ISA_PACK_COMP_opnd    ,  0,  3, 0x0000000000000003 },  /* b7, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 35, 0x0000000000000001 },  /* b7, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x0000000000000007 },  /* b7, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  4,  6, 0x000000000000007f },  /* b7, OPND3 */
  { ISA_PACK_COMP_opnd+3  , 11, 33, 0x0000000000000003 },  /* b7, OPND4 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b7 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b8 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* b9, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0,  6, 0x00000000000fffff },  /* b9, OPND1 */
  { ISA_PACK_COMP_opnd+1  , 20, 36, 0x0000000000000001 },  /* b9, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b9 */
  { ISA_PACK_COMP_opnd    ,  0, 12, 0x0000000000000001 },  /* b10, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 35, 0x0000000000000001 },  /* b10, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  4, 13, 0x00000000000fffff },  /* b10, OPND2 */
  { ISA_PACK_COMP_opnd+2  , 24, 36, 0x0000000000000001 },  /* b10, OPND3 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b10 */
  { ISA_PACK_COMP_opnd    ,  0, 12, 0x0000000000000001 },  /* b11, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 35, 0x0000000000000001 },  /* b11, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x0000000000000007 },  /* b11, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* b11 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f1, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f1, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* f1, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 27, 0x000000000000007f },  /* f1, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  0, 13, 0x000000000000007f },  /* f1, OPND4 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f1, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f1 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f2, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* f2, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 27, 0x000000000000007f },  /* f2, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* f2, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f2, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f2 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f3, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* f3, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 27, 0x000000000000007f },  /* f3, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* f3, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f3, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f3 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f4, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f4, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* f4, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* f4, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* f4, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* f4, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f4 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f5, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* f5, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 33, 0x0000000000000003 },  /* f5, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  2, 20, 0x000000000000007f },  /* f5, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* f5, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* f5, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f5 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f6, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f6, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* f6, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* f6, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f6, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* f6, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f6 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f7, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f7, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* f7, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f7, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* f7, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f7 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f8, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f8, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* f8, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* f8, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f8, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f8 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f9, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* f9, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* f9, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f9, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f9 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f10, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f10, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* f10, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f10, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f10 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f11, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* f11, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f11, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f11 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f12, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f12, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* f12, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* f12, OPND3 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f12 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f13, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f13, OPND1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f13 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f14, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f14, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  4,  6, 0x00000000000fffff },  /* f14, OPND2 */
  { ISA_PACK_COMP_opnd+2  , 24, 36, 0x0000000000000001 },  /* f14, OPND3 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f14 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f15, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0,  6, 0x00000000000fffff },  /* f15, OPND1 */
  { ISA_PACK_COMP_opnd+1  , 20, 36, 0x0000000000000001 },  /* f15, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f15 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f16, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* f16, OPND1 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f16, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f16 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f17, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* f17, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* f17, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f17, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f17 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f18, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* f18, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 27, 0x000000000000007f },  /* f18, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* f18, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f18, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f18 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f19, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x000000000000007f },  /* f19, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 27, 0x000000000000007f },  /* f19, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f19, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f19 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f20, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f20, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* f20, OPND2 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f20, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f20 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f21, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f21, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* f21, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* f21, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f21, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f21 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f22, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f22, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* f22, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 27, 0x000000000000007f },  /* f22, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f22, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f22 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f23, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* f23, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 33, 0x0000000000000003 },  /* f23, OPND2 */
  { ISA_PACK_COMP_opnd+2  ,  2, 20, 0x000000000000007f },  /* f23, OPND3 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* f23, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* f23, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f23 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f24, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f24, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* f24, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* f24, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000003f },  /* f24, RESULT0 */
  { ISA_PACK_COMP_result+1,  0, 27, 0x000000000000003f },  /* f24, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f24 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f25, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f25, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 13, 0x000000000000007f },  /* f25, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 20, 0x000000000000007f },  /* f25, OPND3 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* f25, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* f25, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f25 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f26, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f26, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* f26, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* f26, OPND3 */
  { ISA_PACK_COMP_result  ,  0, 27, 0x000000000000003f },  /* f26, RESULT0 */
  { ISA_PACK_COMP_result+1,  0,  6, 0x000000000000003f },  /* f26, RESULT1 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f26 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* f27, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 34, 0x0000000000000003 },  /* f27, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 20, 0x000000000000007f },  /* f27, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 13, 0x000000000000007f },  /* f27, OPND3 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* f27, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* f27 */
  { ISA_PACK_COMP_opnd+1  , 21,  0, 0x000001ffffffffff },  /* x1, OPND0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x1 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* x1, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0,  6, 0x00000000000fffff },  /* x1, OPND1 */
  { ISA_PACK_COMP_opnd+1  , 20, 36, 0x0000000000000001 },  /* x1, OPND2 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x1 */
  { ISA_PACK_COMP_opnd+1  , 22,  0, 0x000001ffffffffff },  /* x2, OPND0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x2 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* x2, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 13, 0x000000000000007f },  /* x2, OPND1 */
  { ISA_PACK_COMP_opnd+1  ,  7, 27, 0x00000000000001ff },  /* x2, OPND2 */
  { ISA_PACK_COMP_opnd+1  , 16, 22, 0x000000000000001f },  /* x2, OPND3 */
  { ISA_PACK_COMP_opnd+1  , 21, 21, 0x0000000000000001 },  /* x2, OPND4 */
  { ISA_PACK_COMP_opnd+1  , 63, 36, 0x0000000000000001 },  /* x2, OPND5 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x000000000000007f },  /* x2, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x2 */
  { ISA_PACK_COMP_opnd+4  , 24,  2, 0x0000007fffffffff },  /* x3, OPND0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x3 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* x3, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 33, 0x0000000000000003 },  /* x3, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 12, 0x0000000000000001 },  /* x3, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 35, 0x0000000000000001 },  /* x3, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  4, 13, 0x00000000000fffff },  /* x3, OPND4 */
  { ISA_PACK_COMP_opnd+4  , 63, 36, 0x0000000000000001 },  /* x3, OPND5 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x3 */
  { ISA_PACK_COMP_opnd+4  , 24,  2, 0x0000007fffffffff },  /* x4, OPND0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x4 */
  { ISA_PACK_COMP_opnd    ,  0,  0, 0x000000000000003f },  /* x4, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 33, 0x0000000000000003 },  /* x4, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  0, 12, 0x0000000000000001 },  /* x4, OPND2 */
  { ISA_PACK_COMP_opnd+3  ,  0, 35, 0x0000000000000001 },  /* x4, OPND3 */
  { ISA_PACK_COMP_opnd+4  ,  4, 13, 0x00000000000fffff },  /* x4, OPND4 */
  { ISA_PACK_COMP_opnd+4  , 63, 36, 0x0000000000000001 },  /* x4, OPND5 */
  { ISA_PACK_COMP_result  ,  0,  6, 0x0000000000000007 },  /* x4, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x4 */
  { ISA_PACK_COMP_opnd+2  , 24,  2, 0x0000007fffffffff },  /* x5, OPND0 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x5 */
  { ISA_PACK_COMP_opnd    ,  0, 12, 0x0000000000000001 },  /* x5, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 35, 0x0000000000000001 },  /* x5, OPND1 */
  { ISA_PACK_COMP_opnd+2  ,  4, 13, 0x00000000000fffff },  /* x5, OPND2 */
  { ISA_PACK_COMP_opnd+2  , 63, 36, 0x0000000000000001 },  /* x5, OPND3 */
  { ISA_PACK_COMP_end     , -1, -1,                 -1 },  /* x5 */
};


const mUINT16 ISA_PACK_info_index[759] = {
    1,  /* add: a1 */
    1,  /* add_1: a1 */
   18,  /* adds: a4 */
   25,  /* addl: a5 */
    1,  /* addp4: a1 */
   18,  /* addp4_i: a4 */
  560,  /* alloc_3: m34 */
    1,  /* and: a1 */
   12,  /* and_i: a3 */
    1,  /* andcm: a1 */
   12,  /* andcm_i: a3 */
  619,  /* br.cond: b1 */
  640,  /* br_r.cond: b4 */
  632,  /* br.call: b3 */
  651,  /* br_r.call: b5 */
  640,  /* br.ret: b4 */
  646,  /* br.ia: b4a */
  626,  /* br.cloop: b2 */
  626,  /* br.ctop: b2 */
  626,  /* br.cexit: b2 */
  619,  /* br.wtop: b1 */
  619,  /* br.wexit: b1 */
  244,  /* break.i: i19 */
  672,  /* break.b: b9 */
  571,  /* break.m: m37 */
  764,  /* break.f: f15 */
  839,  /* break.x: x1 */
  855,  /* brl.cond: x3 */
  864,  /* brl.call: x4 */
  658,  /* brp: b6 */
  665,  /* brp_r: b7 */
  665,  /* brp.ret: b7 */
  671,  /* bsw.0: b8 */
  671,  /* bsw.1: b8 */
  248,  /* chk.s.i: i20 */
  503,  /* chk.s.m: m20 */
  509,  /* chk_f.s: m21 */
  515,  /* chk.a: m22 */
  521,  /* chk_f.a: m23 */
  671,  /* clrrrb: b8 */
  671,  /* clrrrb.pr: b8 */
   33,  /* cmp.eq: a6 */
   33,  /* cmp.eq.unc: a6 */
   33,  /* cmp.eq.and: a6 */
   33,  /* cmp.eq.or: a6 */
   33,  /* cmp.eq.or.andcm: a6 */
   33,  /* cmp.ne.and: a6 */
   33,  /* cmp.ne.or: a6 */
   33,  /* cmp.ne.or.andcm: a6 */
   33,  /* cmp.lt: a6 */
   33,  /* cmp.lt.unc: a6 */
   33,  /* cmp.ltu: a6 */
   33,  /* cmp.ltu.unc: a6 */
   39,  /* cmp_z1.lt.and: a7 */
   39,  /* cmp_z1.lt.or: a7 */
   39,  /* cmp_z1.lt.or.andcm: a7 */
   39,  /* cmp_z1.le.and: a7 */
   39,  /* cmp_z1.le.or: a7 */
   39,  /* cmp_z1.le.or.andcm: a7 */
   39,  /* cmp_z1.gt.and: a7 */
   39,  /* cmp_z1.gt.or: a7 */
   39,  /* cmp_z1.gt.or.andcm: a7 */
   39,  /* cmp_z1.ge.and: a7 */
   39,  /* cmp_z1.ge.or: a7 */
   39,  /* cmp_z1.ge.or.andcm: a7 */
   44,  /* cmp_i.eq: a8a */
   44,  /* cmp_i.eq.unc: a8a */
   44,  /* cmp_i.eq.and: a8a */
   44,  /* cmp_i.eq.or: a8a */
   44,  /* cmp_i.eq.or.andcm: a8a */
   44,  /* cmp_i.ne.and: a8a */
   44,  /* cmp_i.ne.or: a8a */
   44,  /* cmp_i.ne.or.andcm: a8a */
   44,  /* cmp_i.lt: a8a */
   44,  /* cmp_i.lt.unc: a8a */
   51,  /* cmp_i.ltu: a8b */
   51,  /* cmp_i.ltu.unc: a8b */
   33,  /* cmp4.eq: a6 */
   33,  /* cmp4.eq.unc: a6 */
   33,  /* cmp4.eq.and: a6 */
   33,  /* cmp4.eq.or: a6 */
   33,  /* cmp4.eq.or.andcm: a6 */
   33,  /* cmp4.ne.and: a6 */
   33,  /* cmp4.ne.or: a6 */
   33,  /* cmp4.ne.or.andcm: a6 */
   33,  /* cmp4.lt: a6 */
   33,  /* cmp4.lt.unc: a6 */
   33,  /* cmp4.ltu: a6 */
   33,  /* cmp4.ltu.unc: a6 */
   39,  /* cmp4_z1.lt.and: a7 */
   39,  /* cmp4_z1.lt.or: a7 */
   39,  /* cmp4_z1.lt.or.andcm: a7 */
   39,  /* cmp4_z1.le.and: a7 */
   39,  /* cmp4_z1.le.or: a7 */
   39,  /* cmp4_z1.le.or.andcm: a7 */
   39,  /* cmp4_z1.gt.and: a7 */
   39,  /* cmp4_z1.gt.or: a7 */
   39,  /* cmp4_z1.gt.or.andcm: a7 */
   39,  /* cmp4_z1.ge.and: a7 */
   39,  /* cmp4_z1.ge.or: a7 */
   39,  /* cmp4_z1.ge.or.andcm: a7 */
   44,  /* cmp4_i.eq: a8a */
   44,  /* cmp4_i.eq.unc: a8a */
   44,  /* cmp4_i.eq.and: a8a */
   44,  /* cmp4_i.eq.or: a8a */
   44,  /* cmp4_i.eq.or.andcm: a8a */
   44,  /* cmp4_i.ne.and: a8a */
   44,  /* cmp4_i.ne.or: a8a */
   44,  /* cmp4_i.ne.or.andcm: a8a */
   44,  /* cmp4_i.lt: a8a */
   44,  /* cmp4_i.lt.unc: a8a */
   51,  /* cmp4_i.ltu: a8b */
   51,  /* cmp4_i.ltu.unc: a8b */
  475,  /* cmpxchg1: m16a */
  475,  /* cmpxchg2: m16a */
  475,  /* cmpxchg4: m16a */
  475,  /* cmpxchg8: m16a */
  671,  /* cover: b8 */
  291,  /* czx1.l: i29 */
  291,  /* czx1.r: i29 */
  291,  /* czx2.l: i29 */
  291,  /* czx2.r: i29 */
  226,  /* dep: i15 */
  206,  /* dep.z: i12 */
  219,  /* dep_i: i14 */
  212,  /* dep_i.z: i13 */
  671,  /* epc: b8 */
  200,  /* extr: i11 */
  200,  /* extr.u: i11 */
  731,  /* famax: f8 */
  731,  /* famin: f8 */
  737,  /* fand: f9 */
  737,  /* fandcm: f9 */
  536,  /* fc: m28 */
  759,  /* fchkf: f14 */
  711,  /* fclass.m: f5 */
  711,  /* fclass.m.unc: f5 */
  756,  /* fclrf: f13 */
  704,  /* fcmp.eq: f4 */
  704,  /* fcmp.eq.unc: f4 */
  704,  /* fcmp.lt: f4 */
  704,  /* fcmp.lt.unc: f4 */
  704,  /* fcmp.le: f4 */
  704,  /* fcmp.le.unc: f4 */
  704,  /* fcmp.unord: f4 */
  704,  /* fcmp.unord.unc: f4 */
  742,  /* fcvt.fx: f10 */
  742,  /* fcvt.fx.trunc: f10 */
  742,  /* fcvt.fxu: f10 */
  742,  /* fcvt.fxu.trunc: f10 */
  747,  /* fcvt.xf: f11 */
  488,  /* fetchadd4: m17 */
  488,  /* fetchadd8: m17 */
  529,  /* flushrs: m25 */
  685,  /* fma: f1 */
  685,  /* fma.s: f1 */
  685,  /* fma.d: f1 */
  731,  /* fmax: f8 */
  737,  /* fmerge.ns: f9 */
  737,  /* fmerge.s: f9 */
  737,  /* fmerge.se: f9 */
  731,  /* fmin: f8 */
  737,  /* fmix.l: f9 */
  737,  /* fmix.r: f9 */
  737,  /* fmix.lr: f9 */
  685,  /* fms: f1 */
  685,  /* fms.s: f1 */
  685,  /* fms.d: f1 */
  685,  /* fnma: f1 */
  685,  /* fnma.s: f1 */
  685,  /* fnma.d: f1 */
  737,  /* for: f9 */
  737,  /* fpack: f9 */
  731,  /* fpamax: f8 */
  731,  /* fpamin: f8 */
  731,  /* fpcmp.eq: f8 */
  731,  /* fpcmp.lt: f8 */
  731,  /* fpcmp.le: f8 */
  731,  /* fpcmp.unord: f8 */
  731,  /* fpcmp.neq: f8 */
  731,  /* fpcmp.nlt: f8 */
  731,  /* fpcmp.nle: f8 */
  731,  /* fpcmp.ord: f8 */
  742,  /* fpcvt.fx: f10 */
  742,  /* fpcvt.fx.trunc: f10 */
  742,  /* fpcvt.fxu: f10 */
  742,  /* fpcvt.fxu.trunc: f10 */
  685,  /* fpma: f1 */
  731,  /* fpmax: f8 */
  737,  /* fpmerge.ns: f9 */
  737,  /* fpmerge.s: f9 */
  737,  /* fpmerge.se: f9 */
  731,  /* fpmin: f8 */
  685,  /* fpms: f1 */
  685,  /* fpnma: f1 */
  718,  /* fprcpa: f6 */
  725,  /* fprsqrta: f7 */
  718,  /* frcpa: f6 */
  725,  /* frsqrta: f7 */
  698,  /* fselect: f3 */
  751,  /* fsetc: f12 */
  737,  /* fswap: f9 */
  737,  /* fswap.nl: f9 */
  737,  /* fswap.nr: f9 */
  737,  /* fsxt.l: f9 */
  737,  /* fsxt.r: f9 */
  527,  /* fwb: m24 */
  737,  /* fxor: f9 */
  499,  /* getf.s: m19 */
  499,  /* getf.d: m19 */
  499,  /* getf.exp: m19 */
  499,  /* getf.sig: m19 */
  527,  /* invala: m24 */
  530,  /* invala.e: m26 */
  533,  /* invala_f.e: m27 */
  589,  /* itc.i: m41 */
  589,  /* itc.d: m41 */
  592,  /* itr.i: m42 */
  592,  /* itr.d: m42 */
  322,  /* ld1: m1a */
  333,  /* ld1_r: m2a */
  346,  /* ld1_i: m3a */
  322,  /* ld2: m1a */
  333,  /* ld2_r: m2a */
  346,  /* ld2_i: m3a */
  322,  /* ld4: m1a */
  333,  /* ld4_r: m2a */
  346,  /* ld4_i: m3a */
  322,  /* ld8: m1a */
  333,  /* ld8_r: m2a */
  346,  /* ld8_i: m3a */
  328,  /* ld8.fill: m1b */
  340,  /* ld8_r.fill: m2b */
  355,  /* ld8_i.fill: m3b */
  391,  /* ldfs: m6a */
  402,  /* ldfs_r: m7a */
  415,  /* ldfs_i: m8a */
  391,  /* ldfd: m6a */
  402,  /* ldfd_r: m7a */
  415,  /* ldfd_i: m8a */
  391,  /* ldfe: m6a */
  402,  /* ldfe_r: m7a */
  415,  /* ldfe_i: m8a */
  391,  /* ldf8: m6a */
  402,  /* ldf8_r: m7a */
  415,  /* ldf8_i: m8a */
  397,  /* ldf.fill: m6b */
  409,  /* ldf_r.fill: m7b */
  424,  /* ldf_i.fill: m8b */
  445,  /* ldfps: m11 */
  452,  /* ldfps_i: m12 */
  445,  /* ldfpd: m11 */
  452,  /* ldfpd_i: m12 */
  445,  /* ldfp8: m11 */
  452,  /* ldfp8_i: m12 */
  459,  /* lfetch: m13 */
  459,  /* lfetch.excl: m13 */
  459,  /* lfetch.fault: m13 */
  459,  /* lfetch.fault.excl: m13 */
  463,  /* lfetch_r: m14 */
  463,  /* lfetch_r.excl: m14 */
  463,  /* lfetch_r.fault: m14 */
  463,  /* lfetch_r.fault.excl: m14 */
  468,  /* lfetch_i: m15 */
  468,  /* lfetch_i.excl: m15 */
  468,  /* lfetch_i.fault: m15 */
  468,  /* lfetch_i.fault.excl: m15 */
  529,  /* loadrs: m25 */
  527,  /* mf: m24 */
  527,  /* mf.a: m24 */
  155,  /* mix1.l: i2 */
  155,  /* mix1.r: i2 */
  155,  /* mix2.l: i2 */
  155,  /* mix2.r: i2 */
  155,  /* mix4.l: i2 */
  155,  /* mix4.r: i2 */
  287,  /* mov_f_ar.i: i28 */
  278,  /* mov_t_ar_r.i: i26 */
  282,  /* mov_t_ar_i.i: i27 */
  548,  /* mov_f_ar.m: m31 */
  539,  /* mov_t_ar_r.m: m29 */
  543,  /* mov_t_ar_i.m: m30 */
  261,  /* mov_f_br: i22 */
  254,  /* mov_t_br_i: i21 */
  254,  /* mov_t_br.ret: i21 */
  552,  /* mov_t_cr: m32 */
  556,  /* mov_f_cr: m33 */
  596,  /* mov_f_cpuid: m43 */
  592,  /* mov_t_dbr: m42 */
  596,  /* mov_f_dbr: m43 */
  592,  /* mov_t_ibr: m42 */
  596,  /* mov_f_ibr: m43 */
  592,  /* mov_t_msr: m42 */
  596,  /* mov_f_msr: m43 */
  592,  /* mov_t_pkr: m42 */
  596,  /* mov_f_pkr: m43 */
  592,  /* mov_t_pmc: m42 */
  596,  /* mov_f_pmc: m43 */
  592,  /* mov_t_pmd: m42 */
  596,  /* mov_f_pmd: m43 */
  592,  /* mov_t_rr: m42 */
  596,  /* mov_f_rr: m43 */
  275,  /* mov_f_ip: i25 */
  275,  /* mov_f_pr: i25 */
  265,  /* mov_t_pr: i23 */
  271,  /* mov_t_pr_i: i24 */
  565,  /* mov_t_psr: m35 */
  568,  /* mov_f_psr: m36 */
  565,  /* mov_t_psrum: m35 */
  568,  /* mov_f_psrum: m36 */
  845,  /* movl: x2 */
  160,  /* mux1: i3 */
  165,  /* mux2: i4 */
  244,  /* nop.i: i19 */
  672,  /* nop.b: b9 */
  571,  /* nop.m: m37 */
  764,  /* nop.f: f15 */
  839,  /* nop.x: x1 */
    1,  /* or: a1 */
   12,  /* or_i: a3 */
  155,  /* pack2.sss: i2 */
  155,  /* pack2.uss: i2 */
  155,  /* pack4.sss: i2 */
   58,  /* padd1: a9 */
   58,  /* padd1.sss: a9 */
   58,  /* padd1.uus: a9 */
   58,  /* padd1.uuu: a9 */
   58,  /* padd2: a9 */
   58,  /* padd2.sss: a9 */
   58,  /* padd2.uus: a9 */
   58,  /* padd2.uuu: a9 */
   58,  /* padd4: a9 */
   58,  /* pavg1: a9 */
   58,  /* pavg1.raz: a9 */
   58,  /* pavg2: a9 */
   58,  /* pavg2.raz: a9 */
   58,  /* pavgsub1: a9 */
   58,  /* pavgsub2: a9 */
   58,  /* pcmp1.eq: a9 */
   58,  /* pcmp1.gt: a9 */
   58,  /* pcmp2.eq: a9 */
   58,  /* pcmp2.gt: a9 */
   58,  /* pcmp4.eq: a9 */
   58,  /* pcmp4.gt: a9 */
  155,  /* pmax1.u: i2 */
  155,  /* pmax2: i2 */
  155,  /* pmin1.u: i2 */
  155,  /* pmin2: i2 */
  155,  /* pmpy2.r: i2 */
  155,  /* pmpy2.l: i2 */
  149,  /* pmpyshr2: i1 */
  149,  /* pmpyshr2.u: i1 */
  190,  /* popcnt: i9 */
  575,  /* probe.r: m38 */
  575,  /* probe.w: m38 */
  580,  /* probe_i.r: m39 */
  580,  /* probe_i.w: m39 */
  585,  /* probe.r.fault: m40 */
  585,  /* probe.w.fault: m40 */
  585,  /* probe.rw.fault: m40 */
  155,  /* psad1: i2 */
  180,  /* pshl2: i7 */
  180,  /* pshl4: i7 */
  185,  /* pshl2_i: i8 */
  185,  /* pshl4_i: i8 */
   63,  /* pshladd2: a10 */
  170,  /* pshr2: i5 */
  170,  /* pshr2.u: i5 */
  170,  /* pshr4: i5 */
  170,  /* pshr4.u: i5 */
  175,  /* pshr2_i: i6 */
  175,  /* pshr2_i.u: i6 */
  175,  /* pshr4_i: i6 */
  175,  /* pshr4_i.u: i6 */
   63,  /* pshradd2: a10 */
   58,  /* psub1: a9 */
   58,  /* psub2: a9 */
   58,  /* psub4: a9 */
   58,  /* psub1.sss: a9 */
   58,  /* psub1.uus: a9 */
   58,  /* psub1.uuu: a9 */
   58,  /* psub2.sss: a9 */
   58,  /* psub2.uus: a9 */
   58,  /* psub2.uuu: a9 */
  536,  /* ptc.e: m28 */
  605,  /* ptc.g: m45 */
  605,  /* ptc.ga: m45 */
  605,  /* ptc.l: m45 */
  605,  /* ptr.d: m45 */
  605,  /* ptr.i: m45 */
  671,  /* rfi: b8 */
  600,  /* rsm: m44 */
  600,  /* rum: m44 */
  495,  /* setf.s: m18 */
  495,  /* setf.d: m18 */
  495,  /* setf.exp: m18 */
  495,  /* setf.sig: m18 */
  180,  /* shl: i7 */
    6,  /* shladd: a2 */
    6,  /* shladdp4: a2 */
  170,  /* shr: i5 */
  170,  /* shr.u: i5 */
  194,  /* shrp: i10 */
  527,  /* srlz.i: m24 */
  527,  /* srlz.d: m24 */
  600,  /* ssm: m44 */
  363,  /* st1: m4a */
  374,  /* st1_i: m5a */
  363,  /* st2: m4a */
  374,  /* st2_i: m5a */
  363,  /* st4: m4a */
  374,  /* st4_i: m5a */
  363,  /* st8: m4a */
  374,  /* st8_i: m5a */
  369,  /* st8.spill: m4b */
  383,  /* st8_i.spill: m5b */
  432,  /* stfs: m9 */
  437,  /* stfs_i: m10 */
  432,  /* stfd: m9 */
  437,  /* stfd_i: m10 */
  432,  /* stfe: m9 */
  437,  /* stfe_i: m10 */
  432,  /* stf8: m9 */
  437,  /* stf8_i: m10 */
  432,  /* stf.spill: m9 */
  437,  /* stf_i.spill: m10 */
    1,  /* sub: a1 */
    1,  /* sub_1: a1 */
   12,  /* sub_i: a3 */
  600,  /* sum: m44 */
  291,  /* sxt1: i29 */
  291,  /* sxt2: i29 */
  291,  /* sxt4: i29 */
  527,  /* sync.i: m24 */
  609,  /* tak: m46 */
  233,  /* tbit.z: i16 */
  233,  /* tbit.z.unc: i16 */
  233,  /* tbit.z.and: i16 */
  233,  /* tbit.z.or: i16 */
  233,  /* tbit.z.or.andcm: i16 */
  233,  /* tbit.nz.and: i16 */
  233,  /* tbit.nz.or: i16 */
  233,  /* tbit.nz.or.andcm: i16 */
  609,  /* thash: m46 */
  239,  /* tnat.z: i17 */
  239,  /* tnat.z.unc: i17 */
  239,  /* tnat.z.and: i17 */
  239,  /* tnat.z.or: i17 */
  239,  /* tnat.z.or.andcm: i17 */
  239,  /* tnat.nz.and: i17 */
  239,  /* tnat.nz.or: i17 */
  239,  /* tnat.nz.or.andcm: i17 */
  609,  /* tpa: m46 */
  609,  /* ttag: m46 */
  155,  /* unpack1.l: i2 */
  155,  /* unpack1.h: i2 */
  155,  /* unpack2.l: i2 */
  155,  /* unpack2.h: i2 */
  155,  /* unpack4.l: i2 */
  155,  /* unpack4.h: i2 */
  482,  /* xchg1: m16b */
  482,  /* xchg2: m16b */
  482,  /* xchg4: m16b */
  482,  /* xchg8: m16b */
  692,  /* xma.l: f2 */
  692,  /* xma.h: f2 */
  692,  /* xma.hu: f2 */
    1,  /* xor: a1 */
   12,  /* xor_i: a3 */
  291,  /* zxt1: i29 */
  291,  /* zxt2: i29 */
  291,  /* zxt4: i29 */
  613,  /* alloc: m47 */
  676,  /* br: b10 */
  681,  /* br_r: b11 */
  874,  /* brl: x5 */
   80,  /* cmp.eq.orcm: a13 */
   80,  /* cmp.eq.andcm: a13 */
   86,  /* cmp.eq.and.orcm: a14 */
   86,  /* cmp.ne: a14 */
   86,  /* cmp.ne.unc: a14 */
   80,  /* cmp.ne.orcm: a13 */
   80,  /* cmp.ne.andcm: a13 */
   86,  /* cmp.ne.and.orcm: a14 */
   98,  /* cmp.le: a16 */
   98,  /* cmp.le.unc: a16 */
   92,  /* cmp.gt: a15 */
   92,  /* cmp.gt.unc: a15 */
   86,  /* cmp.ge: a14 */
   86,  /* cmp.ge.unc: a14 */
   98,  /* cmp.leu: a16 */
   98,  /* cmp.leu.unc: a16 */
   92,  /* cmp.gtu: a15 */
   92,  /* cmp.gtu.unc: a15 */
   86,  /* cmp.geu: a14 */
   86,  /* cmp.geu.unc: a14 */
  144,  /* cmp_z1.lt.orcm: a23 */
  144,  /* cmp_z1.lt.andcm: a23 */
  139,  /* cmp_z1.lt.and.orcm: a22 */
  144,  /* cmp_z1.le.orcm: a23 */
  144,  /* cmp_z1.le.andcm: a23 */
  139,  /* cmp_z1.le.and.orcm: a22 */
  144,  /* cmp_z1.gt.orcm: a23 */
  144,  /* cmp_z1.gt.andcm: a23 */
  139,  /* cmp_z1.gt.and.orcm: a22 */
  144,  /* cmp_z1.ge.orcm: a23 */
  144,  /* cmp_z1.ge.andcm: a23 */
  139,  /* cmp_z1.ge.and.orcm: a22 */
  144,  /* cmp_z2.lt.orcm: a23 */
  144,  /* cmp_z2.lt.andcm: a23 */
  139,  /* cmp_z2.lt.and.orcm: a22 */
  144,  /* cmp_z2.le.orcm: a23 */
  144,  /* cmp_z2.le.andcm: a23 */
  139,  /* cmp_z2.le.and.orcm: a22 */
  144,  /* cmp_z2.gt.orcm: a23 */
  144,  /* cmp_z2.gt.andcm: a23 */
  139,  /* cmp_z2.gt.and.orcm: a22 */
  144,  /* cmp_z2.ge.orcm: a23 */
  144,  /* cmp_z2.ge.andcm: a23 */
  139,  /* cmp_z2.ge.and.orcm: a22 */
  144,  /* cmp_z2.lt.and: a23 */
  144,  /* cmp_z2.lt.or: a23 */
  144,  /* cmp_z2.lt.or.andcm: a23 */
  144,  /* cmp_z2.le.and: a23 */
  144,  /* cmp_z2.le.or: a23 */
  144,  /* cmp_z2.le.or.andcm: a23 */
  144,  /* cmp_z2.gt.and: a23 */
  144,  /* cmp_z2.gt.or: a23 */
  144,  /* cmp_z2.gt.or.andcm: a23 */
  144,  /* cmp_z2.ge.and: a23 */
  144,  /* cmp_z2.ge.or: a23 */
  144,  /* cmp_z2.ge.or.andcm: a23 */
  104,  /* cmp_i.eq.orcm: a17 */
  104,  /* cmp_i.eq.andcm: a17 */
  111,  /* cmp_i.eq.and.orcm: a18 */
  111,  /* cmp_i.ne: a18 */
  111,  /* cmp_i.ne.unc: a18 */
  104,  /* cmp_i.ne.orcm: a17 */
  104,  /* cmp_i.ne.andcm: a17 */
  111,  /* cmp_i.ne.and.orcm: a18 */
  125,  /* cmp_i.le: a20 */
  125,  /* cmp_i.le.unc: a20 */
  132,  /* cmp_i.gt: a21 */
  132,  /* cmp_i.gt.unc: a21 */
  111,  /* cmp_i.ge: a18 */
  111,  /* cmp_i.ge.unc: a18 */
  125,  /* cmp_i.leu: a20 */
  125,  /* cmp_i.leu.unc: a20 */
  132,  /* cmp_i.gtu: a21 */
  132,  /* cmp_i.gtu.unc: a21 */
  118,  /* cmp_i.geu: a19 */
  118,  /* cmp_i.geu.unc: a19 */
   80,  /* cmp4.eq.orcm: a13 */
   80,  /* cmp4.eq.andcm: a13 */
   86,  /* cmp4.eq.and.orcm: a14 */
   86,  /* cmp4.ne: a14 */
   86,  /* cmp4.ne.unc: a14 */
   80,  /* cmp4.ne.orcm: a13 */
   80,  /* cmp4.ne.andcm: a13 */
   86,  /* cmp4.ne.and.orcm: a14 */
   98,  /* cmp4.le: a16 */
   98,  /* cmp4.le.unc: a16 */
   92,  /* cmp4.gt: a15 */
   92,  /* cmp4.gt.unc: a15 */
   86,  /* cmp4.ge: a14 */
   86,  /* cmp4.ge.unc: a14 */
   98,  /* cmp4.leu: a16 */
   98,  /* cmp4.leu.unc: a16 */
   92,  /* cmp4.gtu: a15 */
   92,  /* cmp4.gtu.unc: a15 */
   86,  /* cmp4.geu: a14 */
   86,  /* cmp4.geu.unc: a14 */
  144,  /* cmp4_z1.lt.orcm: a23 */
  144,  /* cmp4_z1.lt.andcm: a23 */
  139,  /* cmp4_z1.lt.and.orcm: a22 */
  144,  /* cmp4_z1.le.orcm: a23 */
  144,  /* cmp4_z1.le.andcm: a23 */
  139,  /* cmp4_z1.le.and.orcm: a22 */
  144,  /* cmp4_z1.gt.orcm: a23 */
  144,  /* cmp4_z1.gt.andcm: a23 */
  139,  /* cmp4_z1.gt.and.orcm: a22 */
  144,  /* cmp4_z1.ge.orcm: a23 */
  144,  /* cmp4_z1.ge.andcm: a23 */
  139,  /* cmp4_z1.ge.and.orcm: a22 */
  144,  /* cmp4_z2.lt.orcm: a23 */
  144,  /* cmp4_z2.lt.andcm: a23 */
  139,  /* cmp4_z2.lt.and.orcm: a22 */
  144,  /* cmp4_z2.le.orcm: a23 */
  144,  /* cmp4_z2.le.andcm: a23 */
  139,  /* cmp4_z2.le.and.orcm: a22 */
  144,  /* cmp4_z2.gt.orcm: a23 */
  144,  /* cmp4_z2.gt.andcm: a23 */
  139,  /* cmp4_z2.gt.and.orcm: a22 */
  144,  /* cmp4_z2.ge.orcm: a23 */
  144,  /* cmp4_z2.ge.andcm: a23 */
  139,  /* cmp4_z2.ge.and.orcm: a22 */
  144,  /* cmp4_z2.lt.and: a23 */
  144,  /* cmp4_z2.lt.or: a23 */
  144,  /* cmp4_z2.lt.or.andcm: a23 */
  144,  /* cmp4_z2.le.and: a23 */
  144,  /* cmp4_z2.le.or: a23 */
  144,  /* cmp4_z2.le.or.andcm: a23 */
  144,  /* cmp4_z2.gt.and: a23 */
  144,  /* cmp4_z2.gt.or: a23 */
  144,  /* cmp4_z2.gt.or.andcm: a23 */
  144,  /* cmp4_z2.ge.and: a23 */
  144,  /* cmp4_z2.ge.or: a23 */
  144,  /* cmp4_z2.ge.or.andcm: a23 */
  104,  /* cmp4_i.eq.orcm: a17 */
  104,  /* cmp4_i.eq.andcm: a17 */
  111,  /* cmp4_i.eq.and.orcm: a18 */
  111,  /* cmp4_i.ne: a18 */
  111,  /* cmp4_i.ne.unc: a18 */
  104,  /* cmp4_i.ne.orcm: a17 */
  104,  /* cmp4_i.ne.andcm: a17 */
  111,  /* cmp4_i.ne.and.orcm: a18 */
  125,  /* cmp4_i.le: a20 */
  125,  /* cmp4_i.le.unc: a20 */
  132,  /* cmp4_i.gt: a21 */
  132,  /* cmp4_i.gt.unc: a21 */
  111,  /* cmp4_i.ge: a18 */
  111,  /* cmp4_i.ge.unc: a18 */
  125,  /* cmp4_i.leu: a20 */
  125,  /* cmp4_i.leu.unc: a20 */
  132,  /* cmp4_i.gtu: a21 */
  132,  /* cmp4_i.gtu.unc: a21 */
  118,  /* cmp4_i.geu: a19 */
  118,  /* cmp4_i.geu.unc: a19 */
  768,  /* fabs: f16 */
  793,  /* fadd: f21 */
  793,  /* fadd.s: f21 */
  793,  /* fadd.d: f21 */
  805,  /* fclass.nm: f23 */
  805,  /* fclass.nm.unc: f23 */
  812,  /* fcmp.gt: f24 */
  812,  /* fcmp.gt.unc: f24 */
  812,  /* fcmp.ge: f24 */
  812,  /* fcmp.ge.unc: f24 */
  819,  /* fcmp.neq: f25 */
  819,  /* fcmp.neq.unc: f25 */
  819,  /* fcmp.nlt: f25 */
  819,  /* fcmp.nlt.unc: f25 */
  819,  /* fcmp.nle: f25 */
  819,  /* fcmp.nle.unc: f25 */
  826,  /* fcmp.ngt: f26 */
  826,  /* fcmp.ngt.unc: f26 */
  826,  /* fcmp.nge: f26 */
  826,  /* fcmp.nge.unc: f26 */
  819,  /* fcmp.ord: f25 */
  819,  /* fcmp.ord.unc: f25 */
  788,  /* fcvt.xuf: f20 */
  788,  /* fcvt.xuf.s: f20 */
  788,  /* fcvt.xuf.d: f20 */
  799,  /* fmpy: f22 */
  799,  /* fmpy.s: f22 */
  799,  /* fmpy.d: f22 */
  772,  /* fneg: f17 */
  768,  /* fnegabs: f16 */
  799,  /* fnmpy: f22 */
  799,  /* fnmpy.s: f22 */
  799,  /* fnmpy.d: f22 */
  788,  /* fnorm: f20 */
  788,  /* fnorm.s: f20 */
  788,  /* fnorm.d: f20 */
  768,  /* fpabs: f16 */
  833,  /* fpcmp.gt: f27 */
  833,  /* fpcmp.ge: f27 */
  833,  /* fpcmp.ngt: f27 */
  833,  /* fpcmp.nge: f27 */
  799,  /* fpmpy: f22 */
  772,  /* fpneg: f17 */
  768,  /* fpnegabs: f16 */
  799,  /* fpnmpy: f22 */
  793,  /* fsub: f21 */
  793,  /* fsub.s: f21 */
  793,  /* fsub.d: f21 */
  295,  /* mov_t_br: i30 */
  772,  /* mov_f: f17 */
   69,  /* mov: a11 */
   73,  /* mov_i: a12 */
  310,  /* shl_i: i33 */
  316,  /* shr_i: i34 */
  316,  /* shr_i.u: i34 */
  299,  /* tbit.nz: i31 */
  299,  /* tbit.nz.unc: i31 */
  305,  /* tnat.nz: i32 */
  305,  /* tnat.nz.unc: i32 */
  777,  /* xma.lu: f18 */
  783,  /* xmpy.l: f19 */
  783,  /* xmpy.lu: f19 */
  783,  /* xmpy.h: f19 */
  783,  /* xmpy.hu: f19 */
    0,  /* break */
    0,  /* chk.s */
    0,  /* cmp.lt.and */
    0,  /* cmp.lt.or */
    0,  /* cmp.lt.or.andcm */
    0,  /* cmp.le.and */
    0,  /* cmp.le.or */
    0,  /* cmp.le.or.andcm */
    0,  /* cmp.gt.and */
    0,  /* cmp.gt.or */
    0,  /* cmp.gt.or.andcm */
    0,  /* cmp.ge.and */
    0,  /* cmp.ge.or */
    0,  /* cmp.ge.or.andcm */
    0,  /* cmp.lt.orcm */
    0,  /* cmp.lt.andcm */
    0,  /* cmp.lt.and.orcm */
    0,  /* cmp.le.orcm */
    0,  /* cmp.le.andcm */
    0,  /* cmp.le.and.orcm */
    0,  /* cmp.gt.orcm */
    0,  /* cmp.gt.andcm */
    0,  /* cmp.gt.and.orcm */
    0,  /* cmp.ge.orcm */
    0,  /* cmp.ge.andcm */
    0,  /* cmp.ge.and.orcm */
    0,  /* cmp4.lt.and */
    0,  /* cmp4.lt.or */
    0,  /* cmp4.lt.or.andcm */
    0,  /* cmp4.le.and */
    0,  /* cmp4.le.or */
    0,  /* cmp4.le.or.andcm */
    0,  /* cmp4.gt.and */
    0,  /* cmp4.gt.or */
    0,  /* cmp4.gt.or.andcm */
    0,  /* cmp4.ge.and */
    0,  /* cmp4.ge.or */
    0,  /* cmp4.ge.or.andcm */
    0,  /* cmp4.lt.orcm */
    0,  /* cmp4.lt.andcm */
    0,  /* cmp4.lt.and.orcm */
    0,  /* cmp4.le.orcm */
    0,  /* cmp4.le.andcm */
    0,  /* cmp4.le.and.orcm */
    0,  /* cmp4.gt.orcm */
    0,  /* cmp4.gt.andcm */
    0,  /* cmp4.gt.and.orcm */
    0,  /* cmp4.ge.orcm */
    0,  /* cmp4.ge.andcm */
    0,  /* cmp4.ge.and.orcm */
    0,  /* mov_f_ar */
    0,  /* mov_t_ar_r */
    0,  /* mov_t_ar_i */
    0,  /* nop */
    0,  /* asm */
    0,  /* intrncall */
    0,  /* spadjust */
    0,  /* copy.br */
    0,  /* begin.pregtn */
    0,  /* end.pregtn */
    0,  /* bwd.bar */
    0,  /* fwd.bar */
    0,  /* dfixup */
    0,  /* ffixup */
    0,  /* ifixup */
    0,  /* label */
    0,  /* noop */
};

const mUINT64 ISA_PACK_init_mask[759][2] = {
  { 0x0000010000000000, 0x0000000000000000, }, /* add */
  { 0x0000010008000000, 0x0000000000000000, }, /* add_1 */
  { 0x0000010800000000, 0x0000000000000000, }, /* adds */
  { 0x0000012000000000, 0x0000000000000000, }, /* addl */
  { 0x0000010040000000, 0x0000000000000000, }, /* addp4 */
  { 0x0000010c00000000, 0x0000000000000000, }, /* addp4_i */
  { 0x0000002c00000000, 0x0000000000000000, }, /* alloc_3 */
  { 0x0000010060000000, 0x0000000000000000, }, /* and */
  { 0x0000010160000000, 0x0000000000000000, }, /* and_i */
  { 0x0000010068000000, 0x0000000000000000, }, /* andcm */
  { 0x0000010168000000, 0x0000000000000000, }, /* andcm_i */
  { 0x0000008000000000, 0x0000000000000000, }, /* br.cond */
  { 0x0000000100000000, 0x0000000000000000, }, /* br_r.cond */
  { 0x000000a000000000, 0x0000000000000000, }, /* br.call */
  { 0x0000002000000000, 0x0000000000000000, }, /* br_r.call */
  { 0x0000000108000100, 0x0000000000000000, }, /* br.ret */
  { 0x0000000100000040, 0x0000000000000000, }, /* br.ia */
  { 0x0000008000000140, 0x0000000000000000, }, /* br.cloop */
  { 0x00000080000001c0, 0x0000000000000000, }, /* br.ctop */
  { 0x0000008000000180, 0x0000000000000000, }, /* br.cexit */
  { 0x00000080000000c0, 0x0000000000000000, }, /* br.wtop */
  { 0x0000008000000080, 0x0000000000000000, }, /* br.wexit */
  { 0x0000000000000000, 0x0000000000000000, }, /* break.i */
  { 0x0000000000000000, 0x0000000000000000, }, /* break.b */
  { 0x0000000000000000, 0x0000000000000000, }, /* break.m */
  { 0x0000000000000000, 0x0000000000000000, }, /* break.f */
  { 0x0000000000000000, 0x0000000000000000, }, /* break.x */
  { 0x0000000000000000, 0x0000018000000000, }, /* brl.cond */
  { 0x0000000000000000, 0x000001a000000000, }, /* brl.call */
  { 0x000000e000000000, 0x0000000000000000, }, /* brp */
  { 0x0000004080000000, 0x0000000000000000, }, /* brp_r */
  { 0x0000004088000000, 0x0000000000000000, }, /* brp.ret */
  { 0x0000000060000000, 0x0000000000000000, }, /* bsw.0 */
  { 0x0000000068000000, 0x0000000000000000, }, /* bsw.1 */
  { 0x0000000200000000, 0x0000000000000000, }, /* chk.s.i */
  { 0x0000002200000000, 0x0000000000000000, }, /* chk.s.m */
  { 0x0000002600000000, 0x0000000000000000, }, /* chk_f.s */
  { 0x0000000800000000, 0x0000000000000000, }, /* chk.a */
  { 0x0000000c00000000, 0x0000000000000000, }, /* chk_f.a */
  { 0x0000000020000000, 0x0000000000000000, }, /* clrrrb */
  { 0x0000000028000000, 0x0000000000000000, }, /* clrrrb.pr */
  { 0x000001c000000000, 0x0000000000000000, }, /* cmp.eq */
  { 0x000001c000001000, 0x0000000000000000, }, /* cmp.eq.unc */
  { 0x0000018200000000, 0x0000000000000000, }, /* cmp.eq.and */
  { 0x000001a200000000, 0x0000000000000000, }, /* cmp.eq.or */
  { 0x000001c200000000, 0x0000000000000000, }, /* cmp.eq.or.andcm */
  { 0x0000018200001000, 0x0000000000000000, }, /* cmp.ne.and */
  { 0x000001a200001000, 0x0000000000000000, }, /* cmp.ne.or */
  { 0x000001c200001000, 0x0000000000000000, }, /* cmp.ne.or.andcm */
  { 0x0000018000000000, 0x0000000000000000, }, /* cmp.lt */
  { 0x0000018000001000, 0x0000000000000000, }, /* cmp.lt.unc */
  { 0x000001a000000000, 0x0000000000000000, }, /* cmp.ltu */
  { 0x000001a000001000, 0x0000000000000000, }, /* cmp.ltu.unc */
  { 0x0000019200001000, 0x0000000000000000, }, /* cmp_z1.lt.and */
  { 0x000001b200001000, 0x0000000000000000, }, /* cmp_z1.lt.or */
  { 0x000001d200001000, 0x0000000000000000, }, /* cmp_z1.lt.or.andcm */
  { 0x0000019000001000, 0x0000000000000000, }, /* cmp_z1.le.and */
  { 0x000001b000001000, 0x0000000000000000, }, /* cmp_z1.le.or */
  { 0x000001d000001000, 0x0000000000000000, }, /* cmp_z1.le.or.andcm */
  { 0x0000019000000000, 0x0000000000000000, }, /* cmp_z1.gt.and */
  { 0x000001b000000000, 0x0000000000000000, }, /* cmp_z1.gt.or */
  { 0x000001d000000000, 0x0000000000000000, }, /* cmp_z1.gt.or.andcm */
  { 0x0000019200000000, 0x0000000000000000, }, /* cmp_z1.ge.and */
  { 0x000001b200000000, 0x0000000000000000, }, /* cmp_z1.ge.or */
  { 0x000001d200000000, 0x0000000000000000, }, /* cmp_z1.ge.or.andcm */
  { 0x000001c800000000, 0x0000000000000000, }, /* cmp_i.eq */
  { 0x000001c800001000, 0x0000000000000000, }, /* cmp_i.eq.unc */
  { 0x0000018a00000000, 0x0000000000000000, }, /* cmp_i.eq.and */
  { 0x000001aa00000000, 0x0000000000000000, }, /* cmp_i.eq.or */
  { 0x000001ca00000000, 0x0000000000000000, }, /* cmp_i.eq.or.andcm */
  { 0x0000018a00001000, 0x0000000000000000, }, /* cmp_i.ne.and */
  { 0x000001aa00001000, 0x0000000000000000, }, /* cmp_i.ne.or */
  { 0x000001ca00001000, 0x0000000000000000, }, /* cmp_i.ne.or.andcm */
  { 0x0000018800000000, 0x0000000000000000, }, /* cmp_i.lt */
  { 0x0000018800001000, 0x0000000000000000, }, /* cmp_i.lt.unc */
  { 0x000001a800000000, 0x0000000000000000, }, /* cmp_i.ltu */
  { 0x000001a800001000, 0x0000000000000000, }, /* cmp_i.ltu.unc */
  { 0x000001c400000000, 0x0000000000000000, }, /* cmp4.eq */
  { 0x000001c400001000, 0x0000000000000000, }, /* cmp4.eq.unc */
  { 0x0000018600000000, 0x0000000000000000, }, /* cmp4.eq.and */
  { 0x000001a600000000, 0x0000000000000000, }, /* cmp4.eq.or */
  { 0x000001c600000000, 0x0000000000000000, }, /* cmp4.eq.or.andcm */
  { 0x0000018600001000, 0x0000000000000000, }, /* cmp4.ne.and */
  { 0x000001a600001000, 0x0000000000000000, }, /* cmp4.ne.or */
  { 0x000001c600001000, 0x0000000000000000, }, /* cmp4.ne.or.andcm */
  { 0x0000018400000000, 0x0000000000000000, }, /* cmp4.lt */
  { 0x0000018400001000, 0x0000000000000000, }, /* cmp4.lt.unc */
  { 0x000001a400000000, 0x0000000000000000, }, /* cmp4.ltu */
  { 0x000001a400001000, 0x0000000000000000, }, /* cmp4.ltu.unc */
  { 0x0000019600001000, 0x0000000000000000, }, /* cmp4_z1.lt.and */
  { 0x000001b600001000, 0x0000000000000000, }, /* cmp4_z1.lt.or */
  { 0x000001d600001000, 0x0000000000000000, }, /* cmp4_z1.lt.or.andcm */
  { 0x0000019400001000, 0x0000000000000000, }, /* cmp4_z1.le.and */
  { 0x000001b400001000, 0x0000000000000000, }, /* cmp4_z1.le.or */
  { 0x000001d400001000, 0x0000000000000000, }, /* cmp4_z1.le.or.andcm */
  { 0x0000019400000000, 0x0000000000000000, }, /* cmp4_z1.gt.and */
  { 0x000001b400000000, 0x0000000000000000, }, /* cmp4_z1.gt.or */
  { 0x000001d400000000, 0x0000000000000000, }, /* cmp4_z1.gt.or.andcm */
  { 0x0000019600000000, 0x0000000000000000, }, /* cmp4_z1.ge.and */
  { 0x000001b600000000, 0x0000000000000000, }, /* cmp4_z1.ge.or */
  { 0x000001d600000000, 0x0000000000000000, }, /* cmp4_z1.ge.or.andcm */
  { 0x000001cc00000000, 0x0000000000000000, }, /* cmp4_i.eq */
  { 0x000001cc00001000, 0x0000000000000000, }, /* cmp4_i.eq.unc */
  { 0x0000018e00000000, 0x0000000000000000, }, /* cmp4_i.eq.and */
  { 0x000001ae00000000, 0x0000000000000000, }, /* cmp4_i.eq.or */
  { 0x000001ce00000000, 0x0000000000000000, }, /* cmp4_i.eq.or.andcm */
  { 0x0000018e00001000, 0x0000000000000000, }, /* cmp4_i.ne.and */
  { 0x000001ae00001000, 0x0000000000000000, }, /* cmp4_i.ne.or */
  { 0x000001ce00001000, 0x0000000000000000, }, /* cmp4_i.ne.or.andcm */
  { 0x0000018c00000000, 0x0000000000000000, }, /* cmp4_i.lt */
  { 0x0000018c00001000, 0x0000000000000000, }, /* cmp4_i.lt.unc */
  { 0x000001ac00000000, 0x0000000000000000, }, /* cmp4_i.ltu */
  { 0x000001ac00001000, 0x0000000000000000, }, /* cmp4_i.ltu.unc */
  { 0x0000008008000000, 0x0000000000000000, }, /* cmpxchg1 */
  { 0x0000008048000000, 0x0000000000000000, }, /* cmpxchg2 */
  { 0x0000008088000000, 0x0000000000000000, }, /* cmpxchg4 */
  { 0x00000080c8000000, 0x0000000000000000, }, /* cmpxchg8 */
  { 0x0000000010000000, 0x0000000000000000, }, /* cover */
  { 0x00000000c0000000, 0x0000000000000000, }, /* czx1.l */
  { 0x00000000e0000000, 0x0000000000000000, }, /* czx1.r */
  { 0x00000000c8000000, 0x0000000000000000, }, /* czx2.l */
  { 0x00000000e8000000, 0x0000000000000000, }, /* czx2.r */
  { 0x0000008000000000, 0x0000000000000000, }, /* dep */
  { 0x000000a600000000, 0x0000000000000000, }, /* dep.z */
  { 0x000000ae00000000, 0x0000000000000000, }, /* dep_i */
  { 0x000000a604000000, 0x0000000000000000, }, /* dep_i.z */
  { 0x0000000080000000, 0x0000000000000000, }, /* epc */
  { 0x000000a400002000, 0x0000000000000000, }, /* extr */
  { 0x000000a400000000, 0x0000000000000000, }, /* extr.u */
  { 0x00000000b8000000, 0x0000000000000000, }, /* famax */
  { 0x00000000b0000000, 0x0000000000000000, }, /* famin */
  { 0x0000000160000000, 0x0000000000000000, }, /* fand */
  { 0x0000000168000000, 0x0000000000000000, }, /* fandcm */
  { 0x0000002180000000, 0x0000000000000000, }, /* fc */
  { 0x0000000040000000, 0x0000000000000000, }, /* fchkf */
  { 0x000000a000000000, 0x0000000000000000, }, /* fclass.m */
  { 0x000000a000001000, 0x0000000000000000, }, /* fclass.m.unc */
  { 0x0000000028000000, 0x0000000000000000, }, /* fclrf */
  { 0x0000008000000000, 0x0000000000000000, }, /* fcmp.eq */
  { 0x0000008000001000, 0x0000000000000000, }, /* fcmp.eq.unc */
  { 0x0000009000000000, 0x0000000000000000, }, /* fcmp.lt */
  { 0x0000009000001000, 0x0000000000000000, }, /* fcmp.lt.unc */
  { 0x0000008200000000, 0x0000000000000000, }, /* fcmp.le */
  { 0x0000008200001000, 0x0000000000000000, }, /* fcmp.le.unc */
  { 0x0000009200000000, 0x0000000000000000, }, /* fcmp.unord */
  { 0x0000009200001000, 0x0000000000000000, }, /* fcmp.unord.unc */
  { 0x00000000c0000000, 0x0000000000000000, }, /* fcvt.fx */
  { 0x00000000d0000000, 0x0000000000000000, }, /* fcvt.fx.trunc */
  { 0x00000000c8000000, 0x0000000000000000, }, /* fcvt.fxu */
  { 0x00000000d8000000, 0x0000000000000000, }, /* fcvt.fxu.trunc */
  { 0x00000000e0000000, 0x0000000000000000, }, /* fcvt.xf */
  { 0x0000008488000000, 0x0000000000000000, }, /* fetchadd4 */
  { 0x00000084c8000000, 0x0000000000000000, }, /* fetchadd8 */
  { 0x0000000060000000, 0x0000000000000000, }, /* flushrs */
  { 0x0000010000000000, 0x0000000000000000, }, /* fma */
  { 0x0000011000000000, 0x0000000000000000, }, /* fma.s */
  { 0x0000012000000000, 0x0000000000000000, }, /* fma.d */
  { 0x00000000a8000000, 0x0000000000000000, }, /* fmax */
  { 0x0000000088000000, 0x0000000000000000, }, /* fmerge.ns */
  { 0x0000000080000000, 0x0000000000000000, }, /* fmerge.s */
  { 0x0000000090000000, 0x0000000000000000, }, /* fmerge.se */
  { 0x00000000a0000000, 0x0000000000000000, }, /* fmin */
  { 0x00000001d8000000, 0x0000000000000000, }, /* fmix.l */
  { 0x00000001d0000000, 0x0000000000000000, }, /* fmix.r */
  { 0x00000001c8000000, 0x0000000000000000, }, /* fmix.lr */
  { 0x0000014000000000, 0x0000000000000000, }, /* fms */
  { 0x0000015000000000, 0x0000000000000000, }, /* fms.s */
  { 0x0000016000000000, 0x0000000000000000, }, /* fms.d */
  { 0x0000018000000000, 0x0000000000000000, }, /* fnma */
  { 0x0000019000000000, 0x0000000000000000, }, /* fnma.s */
  { 0x000001a000000000, 0x0000000000000000, }, /* fnma.d */
  { 0x0000000170000000, 0x0000000000000000, }, /* for */
  { 0x0000000140000000, 0x0000000000000000, }, /* fpack */
  { 0x00000020b8000000, 0x0000000000000000, }, /* fpamax */
  { 0x00000020b0000000, 0x0000000000000000, }, /* fpamin */
  { 0x0000002180000000, 0x0000000000000000, }, /* fpcmp.eq */
  { 0x0000002188000000, 0x0000000000000000, }, /* fpcmp.lt */
  { 0x0000002190000000, 0x0000000000000000, }, /* fpcmp.le */
  { 0x0000002198000000, 0x0000000000000000, }, /* fpcmp.unord */
  { 0x00000021a0000000, 0x0000000000000000, }, /* fpcmp.neq */
  { 0x00000021a8000000, 0x0000000000000000, }, /* fpcmp.nlt */
  { 0x00000021b0000000, 0x0000000000000000, }, /* fpcmp.nle */
  { 0x00000021b8000000, 0x0000000000000000, }, /* fpcmp.ord */
  { 0x00000020c0000000, 0x0000000000000000, }, /* fpcvt.fx */
  { 0x00000020d0000000, 0x0000000000000000, }, /* fpcvt.fx.trunc */
  { 0x00000020c8000000, 0x0000000000000000, }, /* fpcvt.fxu */
  { 0x00000020d8000000, 0x0000000000000000, }, /* fpcvt.fxu.trunc */
  { 0x0000013000000000, 0x0000000000000000, }, /* fpma */
  { 0x00000020a8000000, 0x0000000000000000, }, /* fpmax */
  { 0x0000002088000000, 0x0000000000000000, }, /* fpmerge.ns */
  { 0x0000002080000000, 0x0000000000000000, }, /* fpmerge.s */
  { 0x0000002090000000, 0x0000000000000000, }, /* fpmerge.se */
  { 0x00000020a0000000, 0x0000000000000000, }, /* fpmin */
  { 0x0000017000000000, 0x0000000000000000, }, /* fpms */
  { 0x000001b000000000, 0x0000000000000000, }, /* fpnma */
  { 0x0000002200000000, 0x0000000000000000, }, /* fprcpa */
  { 0x0000003200000000, 0x0000000000000000, }, /* fprsqrta */
  { 0x0000000200000000, 0x0000000000000000, }, /* frcpa */
  { 0x0000001200000000, 0x0000000000000000, }, /* frsqrta */
  { 0x000001c000000000, 0x0000000000000000, }, /* fselect */
  { 0x0000000020000000, 0x0000000000000000, }, /* fsetc */
  { 0x00000001a0000000, 0x0000000000000000, }, /* fswap */
  { 0x00000001a8000000, 0x0000000000000000, }, /* fswap.nl */
  { 0x00000001b0000000, 0x0000000000000000, }, /* fswap.nr */
  { 0x00000001e8000000, 0x0000000000000000, }, /* fsxt.l */
  { 0x00000001e0000000, 0x0000000000000000, }, /* fsxt.r */
  { 0x0000000100000000, 0x0000000000000000, }, /* fwb */
  { 0x0000000178000000, 0x0000000000000000, }, /* fxor */
  { 0x0000008788000000, 0x0000000000000000, }, /* getf.s */
  { 0x00000087c8000000, 0x0000000000000000, }, /* getf.d */
  { 0x0000008748000000, 0x0000000000000000, }, /* getf.exp */
  { 0x0000008708000000, 0x0000000000000000, }, /* getf.sig */
  { 0x0000000080000000, 0x0000000000000000, }, /* invala */
  { 0x0000000090000000, 0x0000000000000000, }, /* invala.e */
  { 0x0000000098000000, 0x0000000000000000, }, /* invala_f.e */
  { 0x0000002178000000, 0x0000000000000000, }, /* itc.i */
  { 0x0000002170000000, 0x0000000000000000, }, /* itc.d */
  { 0x0000002078000000, 0x0000000000000000, }, /* itr.i */
  { 0x0000002070000000, 0x0000000000000000, }, /* itr.d */
  { 0x0000008000000000, 0x0000000000000000, }, /* ld1 */
  { 0x0000009000000000, 0x0000000000000000, }, /* ld1_r */
  { 0x000000a000000000, 0x0000000000000000, }, /* ld1_i */
  { 0x0000008040000000, 0x0000000000000000, }, /* ld2 */
  { 0x0000009040000000, 0x0000000000000000, }, /* ld2_r */
  { 0x000000a040000000, 0x0000000000000000, }, /* ld2_i */
  { 0x0000008080000000, 0x0000000000000000, }, /* ld4 */
  { 0x0000009080000000, 0x0000000000000000, }, /* ld4_r */
  { 0x000000a080000000, 0x0000000000000000, }, /* ld4_i */
  { 0x00000080c0000000, 0x0000000000000000, }, /* ld8 */
  { 0x00000090c0000000, 0x0000000000000000, }, /* ld8_r */
  { 0x000000a0c0000000, 0x0000000000000000, }, /* ld8_i */
  { 0x00000086c0000000, 0x0000000000000000, }, /* ld8.fill */
  { 0x00000096c0000000, 0x0000000000000000, }, /* ld8_r.fill */
  { 0x000000a6c0000000, 0x0000000000000000, }, /* ld8_i.fill */
  { 0x000000c080000000, 0x0000000000000000, }, /* ldfs */
  { 0x000000d080000000, 0x0000000000000000, }, /* ldfs_r */
  { 0x000000e080000000, 0x0000000000000000, }, /* ldfs_i */
  { 0x000000c0c0000000, 0x0000000000000000, }, /* ldfd */
  { 0x000000d0c0000000, 0x0000000000000000, }, /* ldfd_r */
  { 0x000000e0c0000000, 0x0000000000000000, }, /* ldfd_i */
  { 0x000000c000000000, 0x0000000000000000, }, /* ldfe */
  { 0x000000d000000000, 0x0000000000000000, }, /* ldfe_r */
  { 0x000000e000000000, 0x0000000000000000, }, /* ldfe_i */
  { 0x000000c040000000, 0x0000000000000000, }, /* ldf8 */
  { 0x000000d040000000, 0x0000000000000000, }, /* ldf8_r */
  { 0x000000e040000000, 0x0000000000000000, }, /* ldf8_i */
  { 0x000000c6c0000000, 0x0000000000000000, }, /* ldf.fill */
  { 0x000000d6c0000000, 0x0000000000000000, }, /* ldf_r.fill */
  { 0x000000e6c0000000, 0x0000000000000000, }, /* ldf_i.fill */
  { 0x000000c088000000, 0x0000000000000000, }, /* ldfps */
  { 0x000000d088000000, 0x0000000000000000, }, /* ldfps_i */
  { 0x000000c0c8000000, 0x0000000000000000, }, /* ldfpd */
  { 0x000000d0c8000000, 0x0000000000000000, }, /* ldfpd_i */
  { 0x000000c048000000, 0x0000000000000000, }, /* ldfp8 */
  { 0x000000d048000000, 0x0000000000000000, }, /* ldfp8_i */
  { 0x000000cb00000000, 0x0000000000000000, }, /* lfetch */
  { 0x000000cb40000000, 0x0000000000000000, }, /* lfetch.excl */
  { 0x000000cb80000000, 0x0000000000000000, }, /* lfetch.fault */
  { 0x000000cbc0000000, 0x0000000000000000, }, /* lfetch.fault.excl */
  { 0x000000db00000000, 0x0000000000000000, }, /* lfetch_r */
  { 0x000000db40000000, 0x0000000000000000, }, /* lfetch_r.excl */
  { 0x000000db80000000, 0x0000000000000000, }, /* lfetch_r.fault */
  { 0x000000dbc0000000, 0x0000000000000000, }, /* lfetch_r.fault.excl */
  { 0x000000eb00000000, 0x0000000000000000, }, /* lfetch_i */
  { 0x000000eb40000000, 0x0000000000000000, }, /* lfetch_i.excl */
  { 0x000000eb80000000, 0x0000000000000000, }, /* lfetch_i.fault */
  { 0x000000ebc0000000, 0x0000000000000000, }, /* lfetch_i.fault.excl */
  { 0x0000000050000000, 0x0000000000000000, }, /* loadrs */
  { 0x0000000110000000, 0x0000000000000000, }, /* mf */
  { 0x0000000118000000, 0x0000000000000000, }, /* mf.a */
  { 0x000000e8a0000000, 0x0000000000000000, }, /* mix1.l */
  { 0x000000e880000000, 0x0000000000000000, }, /* mix1.r */
  { 0x000000eaa0000000, 0x0000000000000000, }, /* mix2.l */
  { 0x000000ea80000000, 0x0000000000000000, }, /* mix2.r */
  { 0x000000f8a0000000, 0x0000000000000000, }, /* mix4.l */
  { 0x000000f880000000, 0x0000000000000000, }, /* mix4.r */
  { 0x0000000190000000, 0x0000000000000000, }, /* mov_f_ar.i */
  { 0x0000000150000000, 0x0000000000000000, }, /* mov_t_ar_r.i */
  { 0x0000000050000000, 0x0000000000000000, }, /* mov_t_ar_i.i */
  { 0x0000002110000000, 0x0000000000000000, }, /* mov_f_ar.m */
  { 0x0000002150000000, 0x0000000000000000, }, /* mov_t_ar_r.m */
  { 0x0000000140000000, 0x0000000000000000, }, /* mov_t_ar_i.m */
  { 0x0000000188000000, 0x0000000000000000, }, /* mov_f_br */
  { 0x0000000e00000000, 0x0000000000000000, }, /* mov_t_br_i */
  { 0x0000000e00400000, 0x0000000000000000, }, /* mov_t_br.ret */
  { 0x0000002160000000, 0x0000000000000000, }, /* mov_t_cr */
  { 0x0000002120000000, 0x0000000000000000, }, /* mov_f_cr */
  { 0x00000020b8000000, 0x0000000000000000, }, /* mov_f_cpuid */
  { 0x0000002008000000, 0x0000000000000000, }, /* mov_t_dbr */
  { 0x0000002088000000, 0x0000000000000000, }, /* mov_f_dbr */
  { 0x0000002010000000, 0x0000000000000000, }, /* mov_t_ibr */
  { 0x0000002090000000, 0x0000000000000000, }, /* mov_f_ibr */
  { 0x0000002030000000, 0x0000000000000000, }, /* mov_t_msr */
  { 0x00000020b0000000, 0x0000000000000000, }, /* mov_f_msr */
  { 0x0000002018000000, 0x0000000000000000, }, /* mov_t_pkr */
  { 0x0000002098000000, 0x0000000000000000, }, /* mov_f_pkr */
  { 0x0000002020000000, 0x0000000000000000, }, /* mov_t_pmc */
  { 0x00000020a0000000, 0x0000000000000000, }, /* mov_f_pmc */
  { 0x0000002028000000, 0x0000000000000000, }, /* mov_t_pmd */
  { 0x00000020a8000000, 0x0000000000000000, }, /* mov_f_pmd */
  { 0x0000002000000000, 0x0000000000000000, }, /* mov_t_rr */
  { 0x0000002080000000, 0x0000000000000000, }, /* mov_f_rr */
  { 0x0000000180000000, 0x0000000000000000, }, /* mov_f_ip */
  { 0x0000000198000000, 0x0000000000000000, }, /* mov_f_pr */
  { 0x0000000600000000, 0x0000000000000000, }, /* mov_t_pr */
  { 0x0000000400000000, 0x0000000000000000, }, /* mov_t_pr_i */
  { 0x0000002168000000, 0x0000000000000000, }, /* mov_t_psr */
  { 0x0000002128000000, 0x0000000000000000, }, /* mov_f_psr */
  { 0x0000002148000000, 0x0000000000000000, }, /* mov_t_psrum */
  { 0x0000002108000000, 0x0000000000000000, }, /* mov_f_psrum */
  { 0x0000000000000000, 0x000000c000000000, }, /* movl */
  { 0x000000eca0000000, 0x0000000000000000, }, /* mux1 */
  { 0x000000eea0000000, 0x0000000000000000, }, /* mux2 */
  { 0x0000000008000000, 0x0000000000000000, }, /* nop.i */
  { 0x0000004000000000, 0x0000000000000000, }, /* nop.b */
  { 0x0000000008000000, 0x0000000000000000, }, /* nop.m */
  { 0x0000000008000000, 0x0000000000000000, }, /* nop.f */
  { 0x0000000000000000, 0x0000000008000000, }, /* nop.x */
  { 0x0000010070000000, 0x0000000000000000, }, /* or */
  { 0x0000010170000000, 0x0000000000000000, }, /* or_i */
  { 0x000000ea20000000, 0x0000000000000000, }, /* pack2.sss */
  { 0x000000ea00000000, 0x0000000000000000, }, /* pack2.uss */
  { 0x000000f820000000, 0x0000000000000000, }, /* pack4.sss */
  { 0x0000010400000000, 0x0000000000000000, }, /* padd1 */
  { 0x0000010408000000, 0x0000000000000000, }, /* padd1.sss */
  { 0x0000010418000000, 0x0000000000000000, }, /* padd1.uus */
  { 0x0000010410000000, 0x0000000000000000, }, /* padd1.uuu */
  { 0x0000010600000000, 0x0000000000000000, }, /* padd2 */
  { 0x0000010608000000, 0x0000000000000000, }, /* padd2.sss */
  { 0x0000010618000000, 0x0000000000000000, }, /* padd2.uus */
  { 0x0000010610000000, 0x0000000000000000, }, /* padd2.uuu */
  { 0x0000011400000000, 0x0000000000000000, }, /* padd4 */
  { 0x0000010450000000, 0x0000000000000000, }, /* pavg1 */
  { 0x0000010458000000, 0x0000000000000000, }, /* pavg1.raz */
  { 0x0000010650000000, 0x0000000000000000, }, /* pavg2 */
  { 0x0000010658000000, 0x0000000000000000, }, /* pavg2.raz */
  { 0x0000010470000000, 0x0000000000000000, }, /* pavgsub1 */
  { 0x0000010670000000, 0x0000000000000000, }, /* pavgsub2 */
  { 0x0000010520000000, 0x0000000000000000, }, /* pcmp1.eq */
  { 0x0000010528000000, 0x0000000000000000, }, /* pcmp1.gt */
  { 0x0000010720000000, 0x0000000000000000, }, /* pcmp2.eq */
  { 0x0000010728000000, 0x0000000000000000, }, /* pcmp2.gt */
  { 0x0000011520000000, 0x0000000000000000, }, /* pcmp4.eq */
  { 0x0000011528000000, 0x0000000000000000, }, /* pcmp4.gt */
  { 0x000000e850000000, 0x0000000000000000, }, /* pmax1.u */
  { 0x000000ea70000000, 0x0000000000000000, }, /* pmax2 */
  { 0x000000e810000000, 0x0000000000000000, }, /* pmin1.u */
  { 0x000000ea30000000, 0x0000000000000000, }, /* pmin2 */
  { 0x000000ead0000000, 0x0000000000000000, }, /* pmpy2.r */
  { 0x000000eaf0000000, 0x0000000000000000, }, /* pmpy2.l */
  { 0x000000e230000000, 0x0000000000000000, }, /* pmpyshr2 */
  { 0x000000e210000000, 0x0000000000000000, }, /* pmpyshr2.u */
  { 0x000000e690000000, 0x0000000000000000, }, /* popcnt */
  { 0x00000021c0000000, 0x0000000000000000, }, /* probe.r */
  { 0x00000021c8000000, 0x0000000000000000, }, /* probe.w */
  { 0x00000020c0000000, 0x0000000000000000, }, /* probe_i.r */
  { 0x00000020c8000000, 0x0000000000000000, }, /* probe_i.w */
  { 0x0000002190000000, 0x0000000000000000, }, /* probe.r.fault */
  { 0x0000002198000000, 0x0000000000000000, }, /* probe.w.fault */
  { 0x0000002188000000, 0x0000000000000000, }, /* probe.rw.fault */
  { 0x000000e8b0000000, 0x0000000000000000, }, /* psad1 */
  { 0x000000e240000000, 0x0000000000000000, }, /* pshl2 */
  { 0x000000f040000000, 0x0000000000000000, }, /* pshl4 */
  { 0x000000ee50000000, 0x0000000000000000, }, /* pshl2_i */
  { 0x000000fc50000000, 0x0000000000000000, }, /* pshl4_i */
  { 0x0000010680000000, 0x0000000000000000, }, /* pshladd2 */
  { 0x000000e220000000, 0x0000000000000000, }, /* pshr2 */
  { 0x000000e200000000, 0x0000000000000000, }, /* pshr2.u */
  { 0x000000f020000000, 0x0000000000000000, }, /* pshr4 */
  { 0x000000f000000000, 0x0000000000000000, }, /* pshr4.u */
  { 0x000000e630000000, 0x0000000000000000, }, /* pshr2_i */
  { 0x000000e610000000, 0x0000000000000000, }, /* pshr2_i.u */
  { 0x000000f430000000, 0x0000000000000000, }, /* pshr4_i */
  { 0x000000f410000000, 0x0000000000000000, }, /* pshr4_i.u */
  { 0x00000106c0000000, 0x0000000000000000, }, /* pshradd2 */
  { 0x0000010420000000, 0x0000000000000000, }, /* psub1 */
  { 0x0000010620000000, 0x0000000000000000, }, /* psub2 */
  { 0x0000011420000000, 0x0000000000000000, }, /* psub4 */
  { 0x0000010428000000, 0x0000000000000000, }, /* psub1.sss */
  { 0x0000010438000000, 0x0000000000000000, }, /* psub1.uus */
  { 0x0000010430000000, 0x0000000000000000, }, /* psub1.uuu */
  { 0x0000010628000000, 0x0000000000000000, }, /* psub2.sss */
  { 0x0000010638000000, 0x0000000000000000, }, /* psub2.uus */
  { 0x0000010630000000, 0x0000000000000000, }, /* psub2.uuu */
  { 0x00000021a0000000, 0x0000000000000000, }, /* ptc.e */
  { 0x0000002050000000, 0x0000000000000000, }, /* ptc.g */
  { 0x0000002058000000, 0x0000000000000000, }, /* ptc.ga */
  { 0x0000002048000000, 0x0000000000000000, }, /* ptc.l */
  { 0x0000002060000000, 0x0000000000000000, }, /* ptr.d */
  { 0x0000002068000000, 0x0000000000000000, }, /* ptr.i */
  { 0x0000000040000000, 0x0000000000000000, }, /* rfi */
  { 0x0000000038000000, 0x0000000000000000, }, /* rsm */
  { 0x0000000028000000, 0x0000000000000000, }, /* rum */
  { 0x000000c788000000, 0x0000000000000000, }, /* setf.s */
  { 0x000000c7c8000000, 0x0000000000000000, }, /* setf.d */
  { 0x000000c748000000, 0x0000000000000000, }, /* setf.exp */
  { 0x000000c708000000, 0x0000000000000000, }, /* setf.sig */
  { 0x000000f240000000, 0x0000000000000000, }, /* shl */
  { 0x0000010080000000, 0x0000000000000000, }, /* shladd */
  { 0x00000100c0000000, 0x0000000000000000, }, /* shladdp4 */
  { 0x000000f220000000, 0x0000000000000000, }, /* shr */
  { 0x000000f200000000, 0x0000000000000000, }, /* shr.u */
  { 0x000000ac00000000, 0x0000000000000000, }, /* shrp */
  { 0x0000000188000000, 0x0000000000000000, }, /* srlz.i */
  { 0x0000000180000000, 0x0000000000000000, }, /* srlz.d */
  { 0x0000000030000000, 0x0000000000000000, }, /* ssm */
  { 0x0000008c00000000, 0x0000000000000000, }, /* st1 */
  { 0x000000ac00000000, 0x0000000000000000, }, /* st1_i */
  { 0x0000008c40000000, 0x0000000000000000, }, /* st2 */
  { 0x000000ac40000000, 0x0000000000000000, }, /* st2_i */
  { 0x0000008c80000000, 0x0000000000000000, }, /* st4 */
  { 0x000000ac80000000, 0x0000000000000000, }, /* st4_i */
  { 0x0000008cc0000000, 0x0000000000000000, }, /* st8 */
  { 0x000000acc0000000, 0x0000000000000000, }, /* st8_i */
  { 0x0000008ec0000000, 0x0000000000000000, }, /* st8.spill */
  { 0x000000aec0000000, 0x0000000000000000, }, /* st8_i.spill */
  { 0x000000cc80000000, 0x0000000000000000, }, /* stfs */
  { 0x000000ec80000000, 0x0000000000000000, }, /* stfs_i */
  { 0x000000ccc0000000, 0x0000000000000000, }, /* stfd */
  { 0x000000ecc0000000, 0x0000000000000000, }, /* stfd_i */
  { 0x000000cc00000000, 0x0000000000000000, }, /* stfe */
  { 0x000000ec00000000, 0x0000000000000000, }, /* stfe_i */
  { 0x000000cc40000000, 0x0000000000000000, }, /* stf8 */
  { 0x000000ec40000000, 0x0000000000000000, }, /* stf8_i */
  { 0x000000cec0000000, 0x0000000000000000, }, /* stf.spill */
  { 0x000000eec0000000, 0x0000000000000000, }, /* stf_i.spill */
  { 0x0000010028000000, 0x0000000000000000, }, /* sub */
  { 0x0000010020000000, 0x0000000000000000, }, /* sub_1 */
  { 0x0000010128000000, 0x0000000000000000, }, /* sub_i */
  { 0x0000000020000000, 0x0000000000000000, }, /* sum */
  { 0x00000000a0000000, 0x0000000000000000, }, /* sxt1 */
  { 0x00000000a8000000, 0x0000000000000000, }, /* sxt2 */
  { 0x00000000b0000000, 0x0000000000000000, }, /* sxt4 */
  { 0x0000000198000000, 0x0000000000000000, }, /* sync.i */
  { 0x00000020f8000000, 0x0000000000000000, }, /* tak */
  { 0x000000a000000000, 0x0000000000000000, }, /* tbit.z */
  { 0x000000a000001000, 0x0000000000000000, }, /* tbit.z.unc */
  { 0x000000b000000000, 0x0000000000000000, }, /* tbit.z.and */
  { 0x000000a200000000, 0x0000000000000000, }, /* tbit.z.or */
  { 0x000000b200000000, 0x0000000000000000, }, /* tbit.z.or.andcm */
  { 0x000000b000001000, 0x0000000000000000, }, /* tbit.nz.and */
  { 0x000000a200001000, 0x0000000000000000, }, /* tbit.nz.or */
  { 0x000000b200001000, 0x0000000000000000, }, /* tbit.nz.or.andcm */
  { 0x00000020d0000000, 0x0000000000000000, }, /* thash */
  { 0x000000a000002000, 0x0000000000000000, }, /* tnat.z */
  { 0x000000a000003000, 0x0000000000000000, }, /* tnat.z.unc */
  { 0x000000b000002000, 0x0000000000000000, }, /* tnat.z.and */
  { 0x000000a200002000, 0x0000000000000000, }, /* tnat.z.or */
  { 0x000000b200002000, 0x0000000000000000, }, /* tnat.z.or.andcm */
  { 0x000000b000003000, 0x0000000000000000, }, /* tnat.nz.and */
  { 0x000000a200003000, 0x0000000000000000, }, /* tnat.nz.or */
  { 0x000000b200003000, 0x0000000000000000, }, /* tnat.nz.or.andcm */
  { 0x00000020f0000000, 0x0000000000000000, }, /* tpa */
  { 0x00000020d8000000, 0x0000000000000000, }, /* ttag */
  { 0x000000e860000000, 0x0000000000000000, }, /* unpack1.l */
  { 0x000000e840000000, 0x0000000000000000, }, /* unpack1.h */
  { 0x000000ea60000000, 0x0000000000000000, }, /* unpack2.l */
  { 0x000000ea40000000, 0x0000000000000000, }, /* unpack2.h */
  { 0x000000f860000000, 0x0000000000000000, }, /* unpack4.l */
  { 0x000000f840000000, 0x0000000000000000, }, /* unpack4.h */
  { 0x0000008208000000, 0x0000000000000000, }, /* xchg1 */
  { 0x0000008248000000, 0x0000000000000000, }, /* xchg2 */
  { 0x0000008288000000, 0x0000000000000000, }, /* xchg4 */
  { 0x00000082c8000000, 0x0000000000000000, }, /* xchg8 */
  { 0x000001d000000000, 0x0000000000000000, }, /* xma.l */
  { 0x000001dc00000000, 0x0000000000000000, }, /* xma.h */
  { 0x000001d800000000, 0x0000000000000000, }, /* xma.hu */
  { 0x0000010078000000, 0x0000000000000000, }, /* xor */
  { 0x0000010178000000, 0x0000000000000000, }, /* xor_i */
  { 0x0000000080000000, 0x0000000000000000, }, /* zxt1 */
  { 0x0000000088000000, 0x0000000000000000, }, /* zxt2 */
  { 0x0000000090000000, 0x0000000000000000, }, /* zxt4 */
  { 0x0000002c00000000, 0x0000000000000000, }, /* alloc */
  { 0x0000008000000000, 0x0000000000000000, }, /* br */
  { 0x0000000100000000, 0x0000000000000000, }, /* br_r */
  { 0x0000000000000000, 0x0000018000000000, }, /* brl */
  { 0x000001a200001000, 0x0000000000000000, }, /* cmp.eq.orcm */
  { 0x0000018200001000, 0x0000000000000000, }, /* cmp.eq.andcm */
  { 0x000001c200001000, 0x0000000000000000, }, /* cmp.eq.and.orcm */
  { 0x000001c000000000, 0x0000000000000000, }, /* cmp.ne */
  { 0x000001c000001000, 0x0000000000000000, }, /* cmp.ne.unc */
  { 0x000001a200000000, 0x0000000000000000, }, /* cmp.ne.orcm */
  { 0x0000018200000000, 0x0000000000000000, }, /* cmp.ne.andcm */
  { 0x000001c200000000, 0x0000000000000000, }, /* cmp.ne.and.orcm */
  { 0x0000018000000000, 0x0000000000000000, }, /* cmp.le */
  { 0x0000018000001000, 0x0000000000000000, }, /* cmp.le.unc */
  { 0x0000018000000000, 0x0000000000000000, }, /* cmp.gt */
  { 0x0000018000001000, 0x0000000000000000, }, /* cmp.gt.unc */
  { 0x0000018000000000, 0x0000000000000000, }, /* cmp.ge */
  { 0x0000018000001000, 0x0000000000000000, }, /* cmp.ge.unc */
  { 0x000001a000000000, 0x0000000000000000, }, /* cmp.leu */
  { 0x000001a000001000, 0x0000000000000000, }, /* cmp.leu.unc */
  { 0x000001a000000000, 0x0000000000000000, }, /* cmp.gtu */
  { 0x000001a000001000, 0x0000000000000000, }, /* cmp.gtu.unc */
  { 0x000001a000000000, 0x0000000000000000, }, /* cmp.geu */
  { 0x000001a000001000, 0x0000000000000000, }, /* cmp.geu.unc */
  { 0x000001b200000000, 0x0000000000000000, }, /* cmp_z1.lt.orcm */
  { 0x0000019200000000, 0x0000000000000000, }, /* cmp_z1.lt.andcm */
  { 0x000001d200000000, 0x0000000000000000, }, /* cmp_z1.lt.and.orcm */
  { 0x000001b000000000, 0x0000000000000000, }, /* cmp_z1.le.orcm */
  { 0x0000019000000000, 0x0000000000000000, }, /* cmp_z1.le.andcm */
  { 0x000001d000000000, 0x0000000000000000, }, /* cmp_z1.le.and.orcm */
  { 0x000001b000001000, 0x0000000000000000, }, /* cmp_z1.gt.orcm */
  { 0x0000019000001000, 0x0000000000000000, }, /* cmp_z1.gt.andcm */
  { 0x000001d000001000, 0x0000000000000000, }, /* cmp_z1.gt.and.orcm */
  { 0x000001b200001000, 0x0000000000000000, }, /* cmp_z1.ge.orcm */
  { 0x0000019200001000, 0x0000000000000000, }, /* cmp_z1.ge.andcm */
  { 0x000001d200001000, 0x0000000000000000, }, /* cmp_z1.ge.and.orcm */
  { 0x000001b000001000, 0x0000000000000000, }, /* cmp_z2.lt.orcm */
  { 0x0000019000001000, 0x0000000000000000, }, /* cmp_z2.lt.andcm */
  { 0x000001d000001000, 0x0000000000000000, }, /* cmp_z2.lt.and.orcm */
  { 0x000001b200001000, 0x0000000000000000, }, /* cmp_z2.le.orcm */
  { 0x0000019200001000, 0x0000000000000000, }, /* cmp_z2.le.andcm */
  { 0x000001d200001000, 0x0000000000000000, }, /* cmp_z2.le.and.orcm */
  { 0x000001b200000000, 0x0000000000000000, }, /* cmp_z2.gt.orcm */
  { 0x0000019200000000, 0x0000000000000000, }, /* cmp_z2.gt.andcm */
  { 0x000001d200000000, 0x0000000000000000, }, /* cmp_z2.gt.and.orcm */
  { 0x000001b000000000, 0x0000000000000000, }, /* cmp_z2.ge.orcm */
  { 0x0000019000000000, 0x0000000000000000, }, /* cmp_z2.ge.andcm */
  { 0x000001d000000000, 0x0000000000000000, }, /* cmp_z2.ge.and.orcm */
  { 0x0000019000000000, 0x0000000000000000, }, /* cmp_z2.lt.and */
  { 0x000001b000000000, 0x0000000000000000, }, /* cmp_z2.lt.or */
  { 0x000001d000000000, 0x0000000000000000, }, /* cmp_z2.lt.or.andcm */
  { 0x0000019200000000, 0x0000000000000000, }, /* cmp_z2.le.and */
  { 0x000001b200000000, 0x0000000000000000, }, /* cmp_z2.le.or */
  { 0x000001d200000000, 0x0000000000000000, }, /* cmp_z2.le.or.andcm */
  { 0x0000019200001000, 0x0000000000000000, }, /* cmp_z2.gt.and */
  { 0x000001b200001000, 0x0000000000000000, }, /* cmp_z2.gt.or */
  { 0x000001d200001000, 0x0000000000000000, }, /* cmp_z2.gt.or.andcm */
  { 0x0000019000001000, 0x0000000000000000, }, /* cmp_z2.ge.and */
  { 0x000001b000001000, 0x0000000000000000, }, /* cmp_z2.ge.or */
  { 0x000001d000001000, 0x0000000000000000, }, /* cmp_z2.ge.or.andcm */
  { 0x000001aa00001000, 0x0000000000000000, }, /* cmp_i.eq.orcm */
  { 0x0000018a00001000, 0x0000000000000000, }, /* cmp_i.eq.andcm */
  { 0x000001ca00001000, 0x0000000000000000, }, /* cmp_i.eq.and.orcm */
  { 0x000001c800000000, 0x0000000000000000, }, /* cmp_i.ne */
  { 0x000001c800001000, 0x0000000000000000, }, /* cmp_i.ne.unc */
  { 0x000001aa00000000, 0x0000000000000000, }, /* cmp_i.ne.orcm */
  { 0x0000018a00000000, 0x0000000000000000, }, /* cmp_i.ne.andcm */
  { 0x000001ca00000000, 0x0000000000000000, }, /* cmp_i.ne.and.orcm */
  { 0x0000018800000000, 0x0000000000000000, }, /* cmp_i.le */
  { 0x0000018800001000, 0x0000000000000000, }, /* cmp_i.le.unc */
  { 0x0000018800000000, 0x0000000000000000, }, /* cmp_i.gt */
  { 0x0000018800001000, 0x0000000000000000, }, /* cmp_i.gt.unc */
  { 0x0000018800000000, 0x0000000000000000, }, /* cmp_i.ge */
  { 0x0000018800001000, 0x0000000000000000, }, /* cmp_i.ge.unc */
  { 0x000001a800000000, 0x0000000000000000, }, /* cmp_i.leu */
  { 0x000001a800001000, 0x0000000000000000, }, /* cmp_i.leu.unc */
  { 0x000001a800000000, 0x0000000000000000, }, /* cmp_i.gtu */
  { 0x000001a800001000, 0x0000000000000000, }, /* cmp_i.gtu.unc */
  { 0x000001a800000000, 0x0000000000000000, }, /* cmp_i.geu */
  { 0x000001a800001000, 0x0000000000000000, }, /* cmp_i.geu.unc */
  { 0x000001a600001000, 0x0000000000000000, }, /* cmp4.eq.orcm */
  { 0x0000018600001000, 0x0000000000000000, }, /* cmp4.eq.andcm */
  { 0x000001c600001000, 0x0000000000000000, }, /* cmp4.eq.and.orcm */
  { 0x000001c400000000, 0x0000000000000000, }, /* cmp4.ne */
  { 0x000001c400001000, 0x0000000000000000, }, /* cmp4.ne.unc */
  { 0x000001a600000000, 0x0000000000000000, }, /* cmp4.ne.orcm */
  { 0x0000018600000000, 0x0000000000000000, }, /* cmp4.ne.andcm */
  { 0x000001c600000000, 0x0000000000000000, }, /* cmp4.ne.and.orcm */
  { 0x0000018400000000, 0x0000000000000000, }, /* cmp4.le */
  { 0x0000018400001000, 0x0000000000000000, }, /* cmp4.le.unc */
  { 0x0000018400000000, 0x0000000000000000, }, /* cmp4.gt */
  { 0x0000018400001000, 0x0000000000000000, }, /* cmp4.gt.unc */
  { 0x0000018400000000, 0x0000000000000000, }, /* cmp4.ge */
  { 0x0000018400001000, 0x0000000000000000, }, /* cmp4.ge.unc */
  { 0x000001a400000000, 0x0000000000000000, }, /* cmp4.leu */
  { 0x000001a400001000, 0x0000000000000000, }, /* cmp4.leu.unc */
  { 0x000001a400000000, 0x0000000000000000, }, /* cmp4.gtu */
  { 0x000001a400001000, 0x0000000000000000, }, /* cmp4.gtu.unc */
  { 0x000001a400000000, 0x0000000000000000, }, /* cmp4.geu */
  { 0x000001a400001000, 0x0000000000000000, }, /* cmp4.geu.unc */
  { 0x000001b600000000, 0x0000000000000000, }, /* cmp4_z1.lt.orcm */
  { 0x0000019600000000, 0x0000000000000000, }, /* cmp4_z1.lt.andcm */
  { 0x000001d600000000, 0x0000000000000000, }, /* cmp4_z1.lt.and.orcm */
  { 0x000001b400000000, 0x0000000000000000, }, /* cmp4_z1.le.orcm */
  { 0x0000019400000000, 0x0000000000000000, }, /* cmp4_z1.le.andcm */
  { 0x000001d400000000, 0x0000000000000000, }, /* cmp4_z1.le.and.orcm */
  { 0x000001b400001000, 0x0000000000000000, }, /* cmp4_z1.gt.orcm */
  { 0x0000019400001000, 0x0000000000000000, }, /* cmp4_z1.gt.andcm */
  { 0x000001d400001000, 0x0000000000000000, }, /* cmp4_z1.gt.and.orcm */
  { 0x000001b600001000, 0x0000000000000000, }, /* cmp4_z1.ge.orcm */
  { 0x0000019600001000, 0x0000000000000000, }, /* cmp4_z1.ge.andcm */
  { 0x000001d600001000, 0x0000000000000000, }, /* cmp4_z1.ge.and.orcm */
  { 0x000001b400001000, 0x0000000000000000, }, /* cmp4_z2.lt.orcm */
  { 0x0000019400001000, 0x0000000000000000, }, /* cmp4_z2.lt.andcm */
  { 0x000001d400001000, 0x0000000000000000, }, /* cmp4_z2.lt.and.orcm */
  { 0x000001b600001000, 0x0000000000000000, }, /* cmp4_z2.le.orcm */
  { 0x0000019600001000, 0x0000000000000000, }, /* cmp4_z2.le.andcm */
  { 0x000001d600001000, 0x0000000000000000, }, /* cmp4_z2.le.and.orcm */
  { 0x000001b600000000, 0x0000000000000000, }, /* cmp4_z2.gt.orcm */
  { 0x0000019600000000, 0x0000000000000000, }, /* cmp4_z2.gt.andcm */
  { 0x000001d600000000, 0x0000000000000000, }, /* cmp4_z2.gt.and.orcm */
  { 0x000001b400000000, 0x0000000000000000, }, /* cmp4_z2.ge.orcm */
  { 0x0000019400000000, 0x0000000000000000, }, /* cmp4_z2.ge.andcm */
  { 0x000001d400000000, 0x0000000000000000, }, /* cmp4_z2.ge.and.orcm */
  { 0x0000019400000000, 0x0000000000000000, }, /* cmp4_z2.lt.and */
  { 0x000001b400000000, 0x0000000000000000, }, /* cmp4_z2.lt.or */
  { 0x000001d400000000, 0x0000000000000000, }, /* cmp4_z2.lt.or.andcm */
  { 0x0000019600000000, 0x0000000000000000, }, /* cmp4_z2.le.and */
  { 0x000001b600000000, 0x0000000000000000, }, /* cmp4_z2.le.or */
  { 0x000001d600000000, 0x0000000000000000, }, /* cmp4_z2.le.or.andcm */
  { 0x0000019600001000, 0x0000000000000000, }, /* cmp4_z2.gt.and */
  { 0x000001b600001000, 0x0000000000000000, }, /* cmp4_z2.gt.or */
  { 0x000001d600001000, 0x0000000000000000, }, /* cmp4_z2.gt.or.andcm */
  { 0x0000019400001000, 0x0000000000000000, }, /* cmp4_z2.ge.and */
  { 0x000001b400001000, 0x0000000000000000, }, /* cmp4_z2.ge.or */
  { 0x000001d400001000, 0x0000000000000000, }, /* cmp4_z2.ge.or.andcm */
  { 0x000001ae00001000, 0x0000000000000000, }, /* cmp4_i.eq.orcm */
  { 0x0000018e00001000, 0x0000000000000000, }, /* cmp4_i.eq.andcm */
  { 0x000001ce00001000, 0x0000000000000000, }, /* cmp4_i.eq.and.orcm */
  { 0x000001cc00000000, 0x0000000000000000, }, /* cmp4_i.ne */
  { 0x000001cc00001000, 0x0000000000000000, }, /* cmp4_i.ne.unc */
  { 0x000001ae00000000, 0x0000000000000000, }, /* cmp4_i.ne.orcm */
  { 0x0000018e00000000, 0x0000000000000000, }, /* cmp4_i.ne.andcm */
  { 0x000001ce00000000, 0x0000000000000000, }, /* cmp4_i.ne.and.orcm */
  { 0x0000018c00000000, 0x0000000000000000, }, /* cmp4_i.le */
  { 0x0000018c00001000, 0x0000000000000000, }, /* cmp4_i.le.unc */
  { 0x0000018c00000000, 0x0000000000000000, }, /* cmp4_i.gt */
  { 0x0000018c00001000, 0x0000000000000000, }, /* cmp4_i.gt.unc */
  { 0x0000018c00000000, 0x0000000000000000, }, /* cmp4_i.ge */
  { 0x0000018c00001000, 0x0000000000000000, }, /* cmp4_i.ge.unc */
  { 0x000001ac00000000, 0x0000000000000000, }, /* cmp4_i.leu */
  { 0x000001ac00001000, 0x0000000000000000, }, /* cmp4_i.leu.unc */
  { 0x000001ac00000000, 0x0000000000000000, }, /* cmp4_i.gtu */
  { 0x000001ac00001000, 0x0000000000000000, }, /* cmp4_i.gtu.unc */
  { 0x000001ac00000000, 0x0000000000000000, }, /* cmp4_i.geu */
  { 0x000001ac00001000, 0x0000000000000000, }, /* cmp4_i.geu.unc */
  { 0x0000000080000000, 0x0000000000000000, }, /* fabs */
  { 0x0000010008000000, 0x0000000000000000, }, /* fadd */
  { 0x0000011008000000, 0x0000000000000000, }, /* fadd.s */
  { 0x0000012008000000, 0x0000000000000000, }, /* fadd.d */
  { 0x000000a000000000, 0x0000000000000000, }, /* fclass.nm */
  { 0x000000a000001000, 0x0000000000000000, }, /* fclass.nm.unc */
  { 0x0000009000000000, 0x0000000000000000, }, /* fcmp.gt */
  { 0x0000009000001000, 0x0000000000000000, }, /* fcmp.gt.unc */
  { 0x0000008200000000, 0x0000000000000000, }, /* fcmp.ge */
  { 0x0000008200001000, 0x0000000000000000, }, /* fcmp.ge.unc */
  { 0x0000008000000000, 0x0000000000000000, }, /* fcmp.neq */
  { 0x0000008000001000, 0x0000000000000000, }, /* fcmp.neq.unc */
  { 0x0000009000000000, 0x0000000000000000, }, /* fcmp.nlt */
  { 0x0000009000001000, 0x0000000000000000, }, /* fcmp.nlt.unc */
  { 0x0000008200000000, 0x0000000000000000, }, /* fcmp.nle */
  { 0x0000008200001000, 0x0000000000000000, }, /* fcmp.nle.unc */
  { 0x0000009000000000, 0x0000000000000000, }, /* fcmp.ngt */
  { 0x0000009000001000, 0x0000000000000000, }, /* fcmp.ngt.unc */
  { 0x0000008200000000, 0x0000000000000000, }, /* fcmp.nge */
  { 0x0000008200001000, 0x0000000000000000, }, /* fcmp.nge.unc */
  { 0x0000009200000000, 0x0000000000000000, }, /* fcmp.ord */
  { 0x0000009200001000, 0x0000000000000000, }, /* fcmp.ord.unc */
  { 0x0000010008000000, 0x0000000000000000, }, /* fcvt.xuf */
  { 0x0000011008000000, 0x0000000000000000, }, /* fcvt.xuf.s */
  { 0x0000012008000000, 0x0000000000000000, }, /* fcvt.xuf.d */
  { 0x0000010000000000, 0x0000000000000000, }, /* fmpy */
  { 0x0000011000000000, 0x0000000000000000, }, /* fmpy.s */
  { 0x0000012000000000, 0x0000000000000000, }, /* fmpy.d */
  { 0x0000000088000000, 0x0000000000000000, }, /* fneg */
  { 0x0000000088000000, 0x0000000000000000, }, /* fnegabs */
  { 0x0000018000000000, 0x0000000000000000, }, /* fnmpy */
  { 0x0000019000000000, 0x0000000000000000, }, /* fnmpy.s */
  { 0x000001a000000000, 0x0000000000000000, }, /* fnmpy.d */
  { 0x0000010008000000, 0x0000000000000000, }, /* fnorm */
  { 0x0000011008000000, 0x0000000000000000, }, /* fnorm.s */
  { 0x0000012008000000, 0x0000000000000000, }, /* fnorm.d */
  { 0x0000002080000000, 0x0000000000000000, }, /* fpabs */
  { 0x0000002188000000, 0x0000000000000000, }, /* fpcmp.gt */
  { 0x0000002190000000, 0x0000000000000000, }, /* fpcmp.ge */
  { 0x00000021a8000000, 0x0000000000000000, }, /* fpcmp.ngt */
  { 0x00000021b0000000, 0x0000000000000000, }, /* fpcmp.nge */
  { 0x0000013000000000, 0x0000000000000000, }, /* fpmpy */
  { 0x0000002088000000, 0x0000000000000000, }, /* fpneg */
  { 0x0000002088000000, 0x0000000000000000, }, /* fpnegabs */
  { 0x000001b000000000, 0x0000000000000000, }, /* fpnmpy */
  { 0x0000014008000000, 0x0000000000000000, }, /* fsub */
  { 0x0000015008000000, 0x0000000000000000, }, /* fsub.s */
  { 0x0000016008000000, 0x0000000000000000, }, /* fsub.d */
  { 0x0000000e00100000, 0x0000000000000000, }, /* mov_t_br */
  { 0x0000000080000000, 0x0000000000000000, }, /* mov_f */
  { 0x0000010800000000, 0x0000000000000000, }, /* mov */
  { 0x0000012000000000, 0x0000000000000000, }, /* mov_i */
  { 0x000000a600000000, 0x0000000000000000, }, /* shl_i */
  { 0x000000a400002000, 0x0000000000000000, }, /* shr_i */
  { 0x000000a400000000, 0x0000000000000000, }, /* shr_i.u */
  { 0x000000a000000000, 0x0000000000000000, }, /* tbit.nz */
  { 0x000000a000001000, 0x0000000000000000, }, /* tbit.nz.unc */
  { 0x000000a000002000, 0x0000000000000000, }, /* tnat.nz */
  { 0x000000a000003000, 0x0000000000000000, }, /* tnat.nz.unc */
  { 0x000001d000000000, 0x0000000000000000, }, /* xma.lu */
  { 0x000001d000000000, 0x0000000000000000, }, /* xmpy.l */
  { 0x000001d000000000, 0x0000000000000000, }, /* xmpy.lu */
  { 0x000001dc00000000, 0x0000000000000000, }, /* xmpy.h */
  { 0x000001d800000000, 0x0000000000000000, }, /* xmpy.hu */
  { 0x0000000000000000, 0x0000000000000000, }, /* break */
  { 0x0000000000000000, 0x0000000000000000, }, /* chk.s */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.lt.and */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.lt.or */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.lt.or.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.le.and */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.le.or */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.le.or.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.gt.and */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.gt.or */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.gt.or.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.ge.and */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.ge.or */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.ge.or.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.lt.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.lt.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.lt.and.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.le.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.le.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.le.and.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.gt.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.gt.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.gt.and.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.ge.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.ge.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp.ge.and.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.lt.and */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.lt.or */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.lt.or.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.le.and */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.le.or */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.le.or.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.gt.and */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.gt.or */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.gt.or.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.ge.and */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.ge.or */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.ge.or.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.lt.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.lt.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.lt.and.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.le.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.le.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.le.and.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.gt.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.gt.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.gt.and.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.ge.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.ge.andcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* cmp4.ge.and.orcm */
  { 0x0000000000000000, 0x0000000000000000, }, /* mov_f_ar */
  { 0x0000000000000000, 0x0000000000000000, }, /* mov_t_ar_r */
  { 0x0000000000000000, 0x0000000000000000, }, /* mov_t_ar_i */
  { 0x0000000000000000, 0x0000000000000000, }, /* nop */
  { 0x0000000000000000, 0x0000000000000000, }, /* asm */
  { 0x0000000000000000, 0x0000000000000000, }, /* intrncall */
  { 0x0000000000000000, 0x0000000000000000, }, /* spadjust */
  { 0x0000000000000000, 0x0000000000000000, }, /* copy.br */
  { 0x0000000000000000, 0x0000000000000000, }, /* begin.pregtn */
  { 0x0000000000000000, 0x0000000000000000, }, /* end.pregtn */
  { 0x0000000000000000, 0x0000000000000000, }, /* bwd.bar */
  { 0x0000000000000000, 0x0000000000000000, }, /* fwd.bar */
  { 0x0000000000000000, 0x0000000000000000, }, /* dfixup */
  { 0x0000000000000000, 0x0000000000000000, }, /* ffixup */
  { 0x0000000000000000, 0x0000000000000000, }, /* ifixup */
  { 0x0000000000000000, 0x0000000000000000, }, /* label */
  { 0x0000000000000000, 0x0000000000000000, }, /* noop */
};

const mUINT8 ISA_PACK_inst_words[759] = {
    1,  /* add */
    1,  /* add_1 */
    1,  /* adds */
    1,  /* addl */
    1,  /* addp4 */
    1,  /* addp4_i */
    1,  /* alloc_3 */
    1,  /* and */
    1,  /* and_i */
    1,  /* andcm */
    1,  /* andcm_i */
    1,  /* br.cond */
    1,  /* br_r.cond */
    1,  /* br.call */
    1,  /* br_r.call */
    1,  /* br.ret */
    1,  /* br.ia */
    1,  /* br.cloop */
    1,  /* br.ctop */
    1,  /* br.cexit */
    1,  /* br.wtop */
    1,  /* br.wexit */
    1,  /* break.i */
    1,  /* break.b */
    1,  /* break.m */
    1,  /* break.f */
    2,  /* break.x */
    2,  /* brl.cond */
    2,  /* brl.call */
    1,  /* brp */
    1,  /* brp_r */
    1,  /* brp.ret */
    1,  /* bsw.0 */
    1,  /* bsw.1 */
    1,  /* chk.s.i */
    1,  /* chk.s.m */
    1,  /* chk_f.s */
    1,  /* chk.a */
    1,  /* chk_f.a */
    1,  /* clrrrb */
    1,  /* clrrrb.pr */
    1,  /* cmp.eq */
    1,  /* cmp.eq.unc */
    1,  /* cmp.eq.and */
    1,  /* cmp.eq.or */
    1,  /* cmp.eq.or.andcm */
    1,  /* cmp.ne.and */
    1,  /* cmp.ne.or */
    1,  /* cmp.ne.or.andcm */
    1,  /* cmp.lt */
    1,  /* cmp.lt.unc */
    1,  /* cmp.ltu */
    1,  /* cmp.ltu.unc */
    1,  /* cmp_z1.lt.and */
    1,  /* cmp_z1.lt.or */
    1,  /* cmp_z1.lt.or.andcm */
    1,  /* cmp_z1.le.and */
    1,  /* cmp_z1.le.or */
    1,  /* cmp_z1.le.or.andcm */
    1,  /* cmp_z1.gt.and */
    1,  /* cmp_z1.gt.or */
    1,  /* cmp_z1.gt.or.andcm */
    1,  /* cmp_z1.ge.and */
    1,  /* cmp_z1.ge.or */
    1,  /* cmp_z1.ge.or.andcm */
    1,  /* cmp_i.eq */
    1,  /* cmp_i.eq.unc */
    1,  /* cmp_i.eq.and */
    1,  /* cmp_i.eq.or */
    1,  /* cmp_i.eq.or.andcm */
    1,  /* cmp_i.ne.and */
    1,  /* cmp_i.ne.or */
    1,  /* cmp_i.ne.or.andcm */
    1,  /* cmp_i.lt */
    1,  /* cmp_i.lt.unc */
    1,  /* cmp_i.ltu */
    1,  /* cmp_i.ltu.unc */
    1,  /* cmp4.eq */
    1,  /* cmp4.eq.unc */
    1,  /* cmp4.eq.and */
    1,  /* cmp4.eq.or */
    1,  /* cmp4.eq.or.andcm */
    1,  /* cmp4.ne.and */
    1,  /* cmp4.ne.or */
    1,  /* cmp4.ne.or.andcm */
    1,  /* cmp4.lt */
    1,  /* cmp4.lt.unc */
    1,  /* cmp4.ltu */
    1,  /* cmp4.ltu.unc */
    1,  /* cmp4_z1.lt.and */
    1,  /* cmp4_z1.lt.or */
    1,  /* cmp4_z1.lt.or.andcm */
    1,  /* cmp4_z1.le.and */
    1,  /* cmp4_z1.le.or */
    1,  /* cmp4_z1.le.or.andcm */
    1,  /* cmp4_z1.gt.and */
    1,  /* cmp4_z1.gt.or */
    1,  /* cmp4_z1.gt.or.andcm */
    1,  /* cmp4_z1.ge.and */
    1,  /* cmp4_z1.ge.or */
    1,  /* cmp4_z1.ge.or.andcm */
    1,  /* cmp4_i.eq */
    1,  /* cmp4_i.eq.unc */
    1,  /* cmp4_i.eq.and */
    1,  /* cmp4_i.eq.or */
    1,  /* cmp4_i.eq.or.andcm */
    1,  /* cmp4_i.ne.and */
    1,  /* cmp4_i.ne.or */
    1,  /* cmp4_i.ne.or.andcm */
    1,  /* cmp4_i.lt */
    1,  /* cmp4_i.lt.unc */
    1,  /* cmp4_i.ltu */
    1,  /* cmp4_i.ltu.unc */
    1,  /* cmpxchg1 */
    1,  /* cmpxchg2 */
    1,  /* cmpxchg4 */
    1,  /* cmpxchg8 */
    1,  /* cover */
    1,  /* czx1.l */
    1,  /* czx1.r */
    1,  /* czx2.l */
    1,  /* czx2.r */
    1,  /* dep */
    1,  /* dep.z */
    1,  /* dep_i */
    1,  /* dep_i.z */
    1,  /* epc */
    1,  /* extr */
    1,  /* extr.u */
    1,  /* famax */
    1,  /* famin */
    1,  /* fand */
    1,  /* fandcm */
    1,  /* fc */
    1,  /* fchkf */
    1,  /* fclass.m */
    1,  /* fclass.m.unc */
    1,  /* fclrf */
    1,  /* fcmp.eq */
    1,  /* fcmp.eq.unc */
    1,  /* fcmp.lt */
    1,  /* fcmp.lt.unc */
    1,  /* fcmp.le */
    1,  /* fcmp.le.unc */
    1,  /* fcmp.unord */
    1,  /* fcmp.unord.unc */
    1,  /* fcvt.fx */
    1,  /* fcvt.fx.trunc */
    1,  /* fcvt.fxu */
    1,  /* fcvt.fxu.trunc */
    1,  /* fcvt.xf */
    1,  /* fetchadd4 */
    1,  /* fetchadd8 */
    1,  /* flushrs */
    1,  /* fma */
    1,  /* fma.s */
    1,  /* fma.d */
    1,  /* fmax */
    1,  /* fmerge.ns */
    1,  /* fmerge.s */
    1,  /* fmerge.se */
    1,  /* fmin */
    1,  /* fmix.l */
    1,  /* fmix.r */
    1,  /* fmix.lr */
    1,  /* fms */
    1,  /* fms.s */
    1,  /* fms.d */
    1,  /* fnma */
    1,  /* fnma.s */
    1,  /* fnma.d */
    1,  /* for */
    1,  /* fpack */
    1,  /* fpamax */
    1,  /* fpamin */
    1,  /* fpcmp.eq */
    1,  /* fpcmp.lt */
    1,  /* fpcmp.le */
    1,  /* fpcmp.unord */
    1,  /* fpcmp.neq */
    1,  /* fpcmp.nlt */
    1,  /* fpcmp.nle */
    1,  /* fpcmp.ord */
    1,  /* fpcvt.fx */
    1,  /* fpcvt.fx.trunc */
    1,  /* fpcvt.fxu */
    1,  /* fpcvt.fxu.trunc */
    1,  /* fpma */
    1,  /* fpmax */
    1,  /* fpmerge.ns */
    1,  /* fpmerge.s */
    1,  /* fpmerge.se */
    1,  /* fpmin */
    1,  /* fpms */
    1,  /* fpnma */
    1,  /* fprcpa */
    1,  /* fprsqrta */
    1,  /* frcpa */
    1,  /* frsqrta */
    1,  /* fselect */
    1,  /* fsetc */
    1,  /* fswap */
    1,  /* fswap.nl */
    1,  /* fswap.nr */
    1,  /* fsxt.l */
    1,  /* fsxt.r */
    1,  /* fwb */
    1,  /* fxor */
    1,  /* getf.s */
    1,  /* getf.d */
    1,  /* getf.exp */
    1,  /* getf.sig */
    1,  /* invala */
    1,  /* invala.e */
    1,  /* invala_f.e */
    1,  /* itc.i */
    1,  /* itc.d */
    1,  /* itr.i */
    1,  /* itr.d */
    1,  /* ld1 */
    1,  /* ld1_r */
    1,  /* ld1_i */
    1,  /* ld2 */
    1,  /* ld2_r */
    1,  /* ld2_i */
    1,  /* ld4 */
    1,  /* ld4_r */
    1,  /* ld4_i */
    1,  /* ld8 */
    1,  /* ld8_r */
    1,  /* ld8_i */
    1,  /* ld8.fill */
    1,  /* ld8_r.fill */
    1,  /* ld8_i.fill */
    1,  /* ldfs */
    1,  /* ldfs_r */
    1,  /* ldfs_i */
    1,  /* ldfd */
    1,  /* ldfd_r */
    1,  /* ldfd_i */
    1,  /* ldfe */
    1,  /* ldfe_r */
    1,  /* ldfe_i */
    1,  /* ldf8 */
    1,  /* ldf8_r */
    1,  /* ldf8_i */
    1,  /* ldf.fill */
    1,  /* ldf_r.fill */
    1,  /* ldf_i.fill */
    1,  /* ldfps */
    1,  /* ldfps_i */
    1,  /* ldfpd */
    1,  /* ldfpd_i */
    1,  /* ldfp8 */
    1,  /* ldfp8_i */
    1,  /* lfetch */
    1,  /* lfetch.excl */
    1,  /* lfetch.fault */
    1,  /* lfetch.fault.excl */
    1,  /* lfetch_r */
    1,  /* lfetch_r.excl */
    1,  /* lfetch_r.fault */
    1,  /* lfetch_r.fault.excl */
    1,  /* lfetch_i */
    1,  /* lfetch_i.excl */
    1,  /* lfetch_i.fault */
    1,  /* lfetch_i.fault.excl */
    1,  /* loadrs */
    1,  /* mf */
    1,  /* mf.a */
    1,  /* mix1.l */
    1,  /* mix1.r */
    1,  /* mix2.l */
    1,  /* mix2.r */
    1,  /* mix4.l */
    1,  /* mix4.r */
    1,  /* mov_f_ar.i */
    1,  /* mov_t_ar_r.i */
    1,  /* mov_t_ar_i.i */
    1,  /* mov_f_ar.m */
    1,  /* mov_t_ar_r.m */
    1,  /* mov_t_ar_i.m */
    1,  /* mov_f_br */
    1,  /* mov_t_br_i */
    1,  /* mov_t_br.ret */
    1,  /* mov_t_cr */
    1,  /* mov_f_cr */
    1,  /* mov_f_cpuid */
    1,  /* mov_t_dbr */
    1,  /* mov_f_dbr */
    1,  /* mov_t_ibr */
    1,  /* mov_f_ibr */
    1,  /* mov_t_msr */
    1,  /* mov_f_msr */
    1,  /* mov_t_pkr */
    1,  /* mov_f_pkr */
    1,  /* mov_t_pmc */
    1,  /* mov_f_pmc */
    1,  /* mov_t_pmd */
    1,  /* mov_f_pmd */
    1,  /* mov_t_rr */
    1,  /* mov_f_rr */
    1,  /* mov_f_ip */
    1,  /* mov_f_pr */
    1,  /* mov_t_pr */
    1,  /* mov_t_pr_i */
    1,  /* mov_t_psr */
    1,  /* mov_f_psr */
    1,  /* mov_t_psrum */
    1,  /* mov_f_psrum */
    2,  /* movl */
    1,  /* mux1 */
    1,  /* mux2 */
    1,  /* nop.i */
    1,  /* nop.b */
    1,  /* nop.m */
    1,  /* nop.f */
    2,  /* nop.x */
    1,  /* or */
    1,  /* or_i */
    1,  /* pack2.sss */
    1,  /* pack2.uss */
    1,  /* pack4.sss */
    1,  /* padd1 */
    1,  /* padd1.sss */
    1,  /* padd1.uus */
    1,  /* padd1.uuu */
    1,  /* padd2 */
    1,  /* padd2.sss */
    1,  /* padd2.uus */
    1,  /* padd2.uuu */
    1,  /* padd4 */
    1,  /* pavg1 */
    1,  /* pavg1.raz */
    1,  /* pavg2 */
    1,  /* pavg2.raz */
    1,  /* pavgsub1 */
    1,  /* pavgsub2 */
    1,  /* pcmp1.eq */
    1,  /* pcmp1.gt */
    1,  /* pcmp2.eq */
    1,  /* pcmp2.gt */
    1,  /* pcmp4.eq */
    1,  /* pcmp4.gt */
    1,  /* pmax1.u */
    1,  /* pmax2 */
    1,  /* pmin1.u */
    1,  /* pmin2 */
    1,  /* pmpy2.r */
    1,  /* pmpy2.l */
    1,  /* pmpyshr2 */
    1,  /* pmpyshr2.u */
    1,  /* popcnt */
    1,  /* probe.r */
    1,  /* probe.w */
    1,  /* probe_i.r */
    1,  /* probe_i.w */
    1,  /* probe.r.fault */
    1,  /* probe.w.fault */
    1,  /* probe.rw.fault */
    1,  /* psad1 */
    1,  /* pshl2 */
    1,  /* pshl4 */
    1,  /* pshl2_i */
    1,  /* pshl4_i */
    1,  /* pshladd2 */
    1,  /* pshr2 */
    1,  /* pshr2.u */
    1,  /* pshr4 */
    1,  /* pshr4.u */
    1,  /* pshr2_i */
    1,  /* pshr2_i.u */
    1,  /* pshr4_i */
    1,  /* pshr4_i.u */
    1,  /* pshradd2 */
    1,  /* psub1 */
    1,  /* psub2 */
    1,  /* psub4 */
    1,  /* psub1.sss */
    1,  /* psub1.uus */
    1,  /* psub1.uuu */
    1,  /* psub2.sss */
    1,  /* psub2.uus */
    1,  /* psub2.uuu */
    1,  /* ptc.e */
    1,  /* ptc.g */
    1,  /* ptc.ga */
    1,  /* ptc.l */
    1,  /* ptr.d */
    1,  /* ptr.i */
    1,  /* rfi */
    1,  /* rsm */
    1,  /* rum */
    1,  /* setf.s */
    1,  /* setf.d */
    1,  /* setf.exp */
    1,  /* setf.sig */
    1,  /* shl */
    1,  /* shladd */
    1,  /* shladdp4 */
    1,  /* shr */
    1,  /* shr.u */
    1,  /* shrp */
    1,  /* srlz.i */
    1,  /* srlz.d */
    1,  /* ssm */
    1,  /* st1 */
    1,  /* st1_i */
    1,  /* st2 */
    1,  /* st2_i */
    1,  /* st4 */
    1,  /* st4_i */
    1,  /* st8 */
    1,  /* st8_i */
    1,  /* st8.spill */
    1,  /* st8_i.spill */
    1,  /* stfs */
    1,  /* stfs_i */
    1,  /* stfd */
    1,  /* stfd_i */
    1,  /* stfe */
    1,  /* stfe_i */
    1,  /* stf8 */
    1,  /* stf8_i */
    1,  /* stf.spill */
    1,  /* stf_i.spill */
    1,  /* sub */
    1,  /* sub_1 */
    1,  /* sub_i */
    1,  /* sum */
    1,  /* sxt1 */
    1,  /* sxt2 */
    1,  /* sxt4 */
    1,  /* sync.i */
    1,  /* tak */
    1,  /* tbit.z */
    1,  /* tbit.z.unc */
    1,  /* tbit.z.and */
    1,  /* tbit.z.or */
    1,  /* tbit.z.or.andcm */
    1,  /* tbit.nz.and */
    1,  /* tbit.nz.or */
    1,  /* tbit.nz.or.andcm */
    1,  /* thash */
    1,  /* tnat.z */
    1,  /* tnat.z.unc */
    1,  /* tnat.z.and */
    1,  /* tnat.z.or */
    1,  /* tnat.z.or.andcm */
    1,  /* tnat.nz.and */
    1,  /* tnat.nz.or */
    1,  /* tnat.nz.or.andcm */
    1,  /* tpa */
    1,  /* ttag */
    1,  /* unpack1.l */
    1,  /* unpack1.h */
    1,  /* unpack2.l */
    1,  /* unpack2.h */
    1,  /* unpack4.l */
    1,  /* unpack4.h */
    1,  /* xchg1 */
    1,  /* xchg2 */
    1,  /* xchg4 */
    1,  /* xchg8 */
    1,  /* xma.l */
    1,  /* xma.h */
    1,  /* xma.hu */
    1,  /* xor */
    1,  /* xor_i */
    1,  /* zxt1 */
    1,  /* zxt2 */
    1,  /* zxt4 */
    1,  /* alloc */
    1,  /* br */
    1,  /* br_r */
    2,  /* brl */
    1,  /* cmp.eq.orcm */
    1,  /* cmp.eq.andcm */
    1,  /* cmp.eq.and.orcm */
    1,  /* cmp.ne */
    1,  /* cmp.ne.unc */
    1,  /* cmp.ne.orcm */
    1,  /* cmp.ne.andcm */
    1,  /* cmp.ne.and.orcm */
    1,  /* cmp.le */
    1,  /* cmp.le.unc */
    1,  /* cmp.gt */
    1,  /* cmp.gt.unc */
    1,  /* cmp.ge */
    1,  /* cmp.ge.unc */
    1,  /* cmp.leu */
    1,  /* cmp.leu.unc */
    1,  /* cmp.gtu */
    1,  /* cmp.gtu.unc */
    1,  /* cmp.geu */
    1,  /* cmp.geu.unc */
    1,  /* cmp_z1.lt.orcm */
    1,  /* cmp_z1.lt.andcm */
    1,  /* cmp_z1.lt.and.orcm */
    1,  /* cmp_z1.le.orcm */
    1,  /* cmp_z1.le.andcm */
    1,  /* cmp_z1.le.and.orcm */
    1,  /* cmp_z1.gt.orcm */
    1,  /* cmp_z1.gt.andcm */
    1,  /* cmp_z1.gt.and.orcm */
    1,  /* cmp_z1.ge.orcm */
    1,  /* cmp_z1.ge.andcm */
    1,  /* cmp_z1.ge.and.orcm */
    1,  /* cmp_z2.lt.orcm */
    1,  /* cmp_z2.lt.andcm */
    1,  /* cmp_z2.lt.and.orcm */
    1,  /* cmp_z2.le.orcm */
    1,  /* cmp_z2.le.andcm */
    1,  /* cmp_z2.le.and.orcm */
    1,  /* cmp_z2.gt.orcm */
    1,  /* cmp_z2.gt.andcm */
    1,  /* cmp_z2.gt.and.orcm */
    1,  /* cmp_z2.ge.orcm */
    1,  /* cmp_z2.ge.andcm */
    1,  /* cmp_z2.ge.and.orcm */
    1,  /* cmp_z2.lt.and */
    1,  /* cmp_z2.lt.or */
    1,  /* cmp_z2.lt.or.andcm */
    1,  /* cmp_z2.le.and */
    1,  /* cmp_z2.le.or */
    1,  /* cmp_z2.le.or.andcm */
    1,  /* cmp_z2.gt.and */
    1,  /* cmp_z2.gt.or */
    1,  /* cmp_z2.gt.or.andcm */
    1,  /* cmp_z2.ge.and */
    1,  /* cmp_z2.ge.or */
    1,  /* cmp_z2.ge.or.andcm */
    1,  /* cmp_i.eq.orcm */
    1,  /* cmp_i.eq.andcm */
    1,  /* cmp_i.eq.and.orcm */
    1,  /* cmp_i.ne */
    1,  /* cmp_i.ne.unc */
    1,  /* cmp_i.ne.orcm */
    1,  /* cmp_i.ne.andcm */
    1,  /* cmp_i.ne.and.orcm */
    1,  /* cmp_i.le */
    1,  /* cmp_i.le.unc */
    1,  /* cmp_i.gt */
    1,  /* cmp_i.gt.unc */
    1,  /* cmp_i.ge */
    1,  /* cmp_i.ge.unc */
    1,  /* cmp_i.leu */
    1,  /* cmp_i.leu.unc */
    1,  /* cmp_i.gtu */
    1,  /* cmp_i.gtu.unc */
    1,  /* cmp_i.geu */
    1,  /* cmp_i.geu.unc */
    1,  /* cmp4.eq.orcm */
    1,  /* cmp4.eq.andcm */
    1,  /* cmp4.eq.and.orcm */
    1,  /* cmp4.ne */
    1,  /* cmp4.ne.unc */
    1,  /* cmp4.ne.orcm */
    1,  /* cmp4.ne.andcm */
    1,  /* cmp4.ne.and.orcm */
    1,  /* cmp4.le */
    1,  /* cmp4.le.unc */
    1,  /* cmp4.gt */
    1,  /* cmp4.gt.unc */
    1,  /* cmp4.ge */
    1,  /* cmp4.ge.unc */
    1,  /* cmp4.leu */
    1,  /* cmp4.leu.unc */
    1,  /* cmp4.gtu */
    1,  /* cmp4.gtu.unc */
    1,  /* cmp4.geu */
    1,  /* cmp4.geu.unc */
    1,  /* cmp4_z1.lt.orcm */
    1,  /* cmp4_z1.lt.andcm */
    1,  /* cmp4_z1.lt.and.orcm */
    1,  /* cmp4_z1.le.orcm */
    1,  /* cmp4_z1.le.andcm */
    1,  /* cmp4_z1.le.and.orcm */
    1,  /* cmp4_z1.gt.orcm */
    1,  /* cmp4_z1.gt.andcm */
    1,  /* cmp4_z1.gt.and.orcm */
    1,  /* cmp4_z1.ge.orcm */
    1,  /* cmp4_z1.ge.andcm */
    1,  /* cmp4_z1.ge.and.orcm */
    1,  /* cmp4_z2.lt.orcm */
    1,  /* cmp4_z2.lt.andcm */
    1,  /* cmp4_z2.lt.and.orcm */
    1,  /* cmp4_z2.le.orcm */
    1,  /* cmp4_z2.le.andcm */
    1,  /* cmp4_z2.le.and.orcm */
    1,  /* cmp4_z2.gt.orcm */
    1,  /* cmp4_z2.gt.andcm */
    1,  /* cmp4_z2.gt.and.orcm */
    1,  /* cmp4_z2.ge.orcm */
    1,  /* cmp4_z2.ge.andcm */
    1,  /* cmp4_z2.ge.and.orcm */
    1,  /* cmp4_z2.lt.and */
    1,  /* cmp4_z2.lt.or */
    1,  /* cmp4_z2.lt.or.andcm */
    1,  /* cmp4_z2.le.and */
    1,  /* cmp4_z2.le.or */
    1,  /* cmp4_z2.le.or.andcm */
    1,  /* cmp4_z2.gt.and */
    1,  /* cmp4_z2.gt.or */
    1,  /* cmp4_z2.gt.or.andcm */
    1,  /* cmp4_z2.ge.and */
    1,  /* cmp4_z2.ge.or */
    1,  /* cmp4_z2.ge.or.andcm */
    1,  /* cmp4_i.eq.orcm */
    1,  /* cmp4_i.eq.andcm */
    1,  /* cmp4_i.eq.and.orcm */
    1,  /* cmp4_i.ne */
    1,  /* cmp4_i.ne.unc */
    1,  /* cmp4_i.ne.orcm */
    1,  /* cmp4_i.ne.andcm */
    1,  /* cmp4_i.ne.and.orcm */
    1,  /* cmp4_i.le */
    1,  /* cmp4_i.le.unc */
    1,  /* cmp4_i.gt */
    1,  /* cmp4_i.gt.unc */
    1,  /* cmp4_i.ge */
    1,  /* cmp4_i.ge.unc */
    1,  /* cmp4_i.leu */
    1,  /* cmp4_i.leu.unc */
    1,  /* cmp4_i.gtu */
    1,  /* cmp4_i.gtu.unc */
    1,  /* cmp4_i.geu */
    1,  /* cmp4_i.geu.unc */
    1,  /* fabs */
    1,  /* fadd */
    1,  /* fadd.s */
    1,  /* fadd.d */
    1,  /* fclass.nm */
    1,  /* fclass.nm.unc */
    1,  /* fcmp.gt */
    1,  /* fcmp.gt.unc */
    1,  /* fcmp.ge */
    1,  /* fcmp.ge.unc */
    1,  /* fcmp.neq */
    1,  /* fcmp.neq.unc */
    1,  /* fcmp.nlt */
    1,  /* fcmp.nlt.unc */
    1,  /* fcmp.nle */
    1,  /* fcmp.nle.unc */
    1,  /* fcmp.ngt */
    1,  /* fcmp.ngt.unc */
    1,  /* fcmp.nge */
    1,  /* fcmp.nge.unc */
    1,  /* fcmp.ord */
    1,  /* fcmp.ord.unc */
    1,  /* fcvt.xuf */
    1,  /* fcvt.xuf.s */
    1,  /* fcvt.xuf.d */
    1,  /* fmpy */
    1,  /* fmpy.s */
    1,  /* fmpy.d */
    1,  /* fneg */
    1,  /* fnegabs */
    1,  /* fnmpy */
    1,  /* fnmpy.s */
    1,  /* fnmpy.d */
    1,  /* fnorm */
    1,  /* fnorm.s */
    1,  /* fnorm.d */
    1,  /* fpabs */
    1,  /* fpcmp.gt */
    1,  /* fpcmp.ge */
    1,  /* fpcmp.ngt */
    1,  /* fpcmp.nge */
    1,  /* fpmpy */
    1,  /* fpneg */
    1,  /* fpnegabs */
    1,  /* fpnmpy */
    1,  /* fsub */
    1,  /* fsub.s */
    1,  /* fsub.d */
    1,  /* mov_t_br */
    1,  /* mov_f */
    1,  /* mov */
    1,  /* mov_i */
    1,  /* shl_i */
    1,  /* shr_i */
    1,  /* shr_i.u */
    1,  /* tbit.nz */
    1,  /* tbit.nz.unc */
    1,  /* tnat.nz */
    1,  /* tnat.nz.unc */
    1,  /* xma.lu */
    1,  /* xmpy.l */
    1,  /* xmpy.lu */
    1,  /* xmpy.h */
    1,  /* xmpy.hu */
    1,  /* break */
    1,  /* chk.s */
    1,  /* cmp.lt.and */
    1,  /* cmp.lt.or */
    1,  /* cmp.lt.or.andcm */
    1,  /* cmp.le.and */
    1,  /* cmp.le.or */
    1,  /* cmp.le.or.andcm */
    1,  /* cmp.gt.and */
    1,  /* cmp.gt.or */
    1,  /* cmp.gt.or.andcm */
    1,  /* cmp.ge.and */
    1,  /* cmp.ge.or */
    1,  /* cmp.ge.or.andcm */
    1,  /* cmp.lt.orcm */
    1,  /* cmp.lt.andcm */
    1,  /* cmp.lt.and.orcm */
    1,  /* cmp.le.orcm */
    1,  /* cmp.le.andcm */
    1,  /* cmp.le.and.orcm */
    1,  /* cmp.gt.orcm */
    1,  /* cmp.gt.andcm */
    1,  /* cmp.gt.and.orcm */
    1,  /* cmp.ge.orcm */
    1,  /* cmp.ge.andcm */
    1,  /* cmp.ge.and.orcm */
    1,  /* cmp4.lt.and */
    1,  /* cmp4.lt.or */
    1,  /* cmp4.lt.or.andcm */
    1,  /* cmp4.le.and */
    1,  /* cmp4.le.or */
    1,  /* cmp4.le.or.andcm */
    1,  /* cmp4.gt.and */
    1,  /* cmp4.gt.or */
    1,  /* cmp4.gt.or.andcm */
    1,  /* cmp4.ge.and */
    1,  /* cmp4.ge.or */
    1,  /* cmp4.ge.or.andcm */
    1,  /* cmp4.lt.orcm */
    1,  /* cmp4.lt.andcm */
    1,  /* cmp4.lt.and.orcm */
    1,  /* cmp4.le.orcm */
    1,  /* cmp4.le.andcm */
    1,  /* cmp4.le.and.orcm */
    1,  /* cmp4.gt.orcm */
    1,  /* cmp4.gt.andcm */
    1,  /* cmp4.gt.and.orcm */
    1,  /* cmp4.ge.orcm */
    1,  /* cmp4.ge.andcm */
    1,  /* cmp4.ge.and.orcm */
    1,  /* mov_f_ar */
    1,  /* mov_t_ar_r */
    1,  /* mov_t_ar_i */
    1,  /* nop */
    1,  /* asm */
    1,  /* intrncall */
    1,  /* spadjust */
    1,  /* copy.br */
    0,  /* begin.pregtn */
    0,  /* end.pregtn */
    0,  /* bwd.bar */
    0,  /* fwd.bar */
    0,  /* dfixup */
    0,  /* ffixup */
    0,  /* ifixup */
    0,  /* label */
    0,  /* noop */
};

const ISA_PACK_ADJ_INFO ISA_PACK_adj_info[] = {
  { {  0,  0 }, -1 },  /* [ 0]: ISA_PACK_ADJ_END */
  { {  3,  4 },  2 },  /* [ 1]: decrement (increment) operand 2*/
  { {  0,  0 }, -1 },  /* [ 2]: ISA_PACK_ADJ_END */
  { {  1,  6 },  1 },  /* [ 3]: no adjustment (sign-extend(8)) operand 1*/
  { {  0,  0 }, -1 },  /* [ 4]: ISA_PACK_ADJ_END */
  { {  3,  4 },  2 },  /* [ 5]: decrement (increment) operand 2*/
  { {  0,  0 }, -1 },  /* [ 6]: ISA_PACK_ADJ_END */
  { {  1,  6 },  1 },  /* [ 7]: no adjustment (sign-extend(8)) operand 1*/
  { {  0,  0 }, -1 },  /* [ 8]: ISA_PACK_ADJ_END */
  { {  3,  5 },  1 },  /* [ 9]: decrement (sign-extend(8)/increment) operand 1*/
  { {  0,  0 }, -1 },  /* [10]: ISA_PACK_ADJ_END */
  { {  3,  5 },  1 },  /* [11]: decrement (sign-extend(8)/increment) operand 1*/
  { {  0,  0 }, -1 },  /* [12]: ISA_PACK_ADJ_END */
  { {  8,  9 },  3 },  /* [13]: Pack (I1) (Unpack (I1)) operand 3*/
  { {  0,  0 }, -1 },  /* [14]: ISA_PACK_ADJ_END */
  { {  7,  7 },  2 },  /* [15]: 5-bit complement (5-bit complement) operand 2*/
  { {  0,  0 }, -1 },  /* [16]: ISA_PACK_ADJ_END */
  { {  3,  4 },  3 },  /* [17]: decrement (increment) operand 3*/
  { {  0,  0 }, -1 },  /* [18]: ISA_PACK_ADJ_END */
  { {  2,  2 },  2 },  /* [19]: 6-bit complement (6-bit complement) operand 2*/
  { {  3,  4 },  3 },  /* [20]: decrement (increment) operand 3*/
  { {  0,  0 }, -1 },  /* [21]: ISA_PACK_ADJ_END */
  { {  2,  2 },  2 },  /* [22]: 6-bit complement (6-bit complement) operand 2*/
  { {  3,  4 },  3 },  /* [23]: decrement (increment) operand 3*/
  { {  0,  0 }, -1 },  /* [24]: ISA_PACK_ADJ_END */
  { {  2,  2 },  3 },  /* [25]: 6-bit complement (6-bit complement) operand 3*/
  { {  3,  4 },  4 },  /* [26]: decrement (increment) operand 4*/
  { {  0,  0 }, -1 },  /* [27]: ISA_PACK_ADJ_END */
  { {  2,  2 },  3 },  /* [28]: 6-bit complement (6-bit complement) operand 3*/
  { {  3,  4 },  4 },  /* [29]: decrement (increment) operand 4*/
  { {  0,  0 }, -1 },  /* [30]: ISA_PACK_ADJ_END */
  { { 10, 11 },  4 },  /* [31]: Pack (M17) (unpack (M17)) operand 4*/
  { {  0,  0 }, -1 },  /* [32]: ISA_PACK_ADJ_END */
};

const mUINT8 ISA_PACK_adj_info_index[] = {
   0,  /* add */
   0,  /* add_1 */
   0,  /* adds */
   0,  /* addl */
   0,  /* addp4 */
   0,  /* addp4_i */
   0,  /* alloc_3 */
   0,  /* and */
   0,  /* and_i */
   0,  /* andcm */
   0,  /* andcm_i */
   0,  /* br.cond */
   0,  /* br_r.cond */
   0,  /* br.call */
   0,  /* br_r.call */
   0,  /* br.ret */
   0,  /* br.ia */
   0,  /* br.cloop */
   0,  /* br.ctop */
   0,  /* br.cexit */
   0,  /* br.wtop */
   0,  /* br.wexit */
   0,  /* break.i */
   0,  /* break.b */
   0,  /* break.m */
   0,  /* break.f */
   0,  /* break.x */
   0,  /* brl.cond */
   0,  /* brl.call */
   0,  /* brp */
   0,  /* brp_r */
   0,  /* brp.ret */
   0,  /* bsw.0 */
   0,  /* bsw.1 */
   0,  /* chk.s.i */
   0,  /* chk.s.m */
   0,  /* chk_f.s */
   0,  /* chk.a */
   0,  /* chk_f.a */
   0,  /* clrrrb */
   0,  /* clrrrb.pr */
   0,  /* cmp.eq */
   0,  /* cmp.eq.unc */
   0,  /* cmp.eq.and */
   0,  /* cmp.eq.or */
   0,  /* cmp.eq.or.andcm */
   0,  /* cmp.ne.and */
   0,  /* cmp.ne.or */
   0,  /* cmp.ne.or.andcm */
   0,  /* cmp.lt */
   0,  /* cmp.lt.unc */
   0,  /* cmp.ltu */
   0,  /* cmp.ltu.unc */
   0,  /* cmp_z1.lt.and */
   0,  /* cmp_z1.lt.or */
   0,  /* cmp_z1.lt.or.andcm */
   0,  /* cmp_z1.le.and */
   0,  /* cmp_z1.le.or */
   0,  /* cmp_z1.le.or.andcm */
   0,  /* cmp_z1.gt.and */
   0,  /* cmp_z1.gt.or */
   0,  /* cmp_z1.gt.or.andcm */
   0,  /* cmp_z1.ge.and */
   0,  /* cmp_z1.ge.or */
   0,  /* cmp_z1.ge.or.andcm */
   0,  /* cmp_i.eq */
   0,  /* cmp_i.eq.unc */
   0,  /* cmp_i.eq.and */
   0,  /* cmp_i.eq.or */
   0,  /* cmp_i.eq.or.andcm */
   0,  /* cmp_i.ne.and */
   0,  /* cmp_i.ne.or */
   0,  /* cmp_i.ne.or.andcm */
   0,  /* cmp_i.lt */
   0,  /* cmp_i.lt.unc */
   3,  /* cmp_i.ltu */
   3,  /* cmp_i.ltu.unc */
   0,  /* cmp4.eq */
   0,  /* cmp4.eq.unc */
   0,  /* cmp4.eq.and */
   0,  /* cmp4.eq.or */
   0,  /* cmp4.eq.or.andcm */
   0,  /* cmp4.ne.and */
   0,  /* cmp4.ne.or */
   0,  /* cmp4.ne.or.andcm */
   0,  /* cmp4.lt */
   0,  /* cmp4.lt.unc */
   0,  /* cmp4.ltu */
   0,  /* cmp4.ltu.unc */
   0,  /* cmp4_z1.lt.and */
   0,  /* cmp4_z1.lt.or */
   0,  /* cmp4_z1.lt.or.andcm */
   0,  /* cmp4_z1.le.and */
   0,  /* cmp4_z1.le.or */
   0,  /* cmp4_z1.le.or.andcm */
   0,  /* cmp4_z1.gt.and */
   0,  /* cmp4_z1.gt.or */
   0,  /* cmp4_z1.gt.or.andcm */
   0,  /* cmp4_z1.ge.and */
   0,  /* cmp4_z1.ge.or */
   0,  /* cmp4_z1.ge.or.andcm */
   0,  /* cmp4_i.eq */
   0,  /* cmp4_i.eq.unc */
   0,  /* cmp4_i.eq.and */
   0,  /* cmp4_i.eq.or */
   0,  /* cmp4_i.eq.or.andcm */
   0,  /* cmp4_i.ne.and */
   0,  /* cmp4_i.ne.or */
   0,  /* cmp4_i.ne.or.andcm */
   0,  /* cmp4_i.lt */
   0,  /* cmp4_i.lt.unc */
   3,  /* cmp4_i.ltu */
   3,  /* cmp4_i.ltu.unc */
   0,  /* cmpxchg1 */
   0,  /* cmpxchg2 */
   0,  /* cmpxchg4 */
   0,  /* cmpxchg8 */
   0,  /* cover */
   0,  /* czx1.l */
   0,  /* czx1.r */
   0,  /* czx2.l */
   0,  /* czx2.r */
  28,  /* dep */
  19,  /* dep.z */
  25,  /* dep_i */
  22,  /* dep_i.z */
   0,  /* epc */
  17,  /* extr */
  17,  /* extr.u */
   0,  /* famax */
   0,  /* famin */
   0,  /* fand */
   0,  /* fandcm */
   0,  /* fc */
   0,  /* fchkf */
   0,  /* fclass.m */
   0,  /* fclass.m.unc */
   0,  /* fclrf */
   0,  /* fcmp.eq */
   0,  /* fcmp.eq.unc */
   0,  /* fcmp.lt */
   0,  /* fcmp.lt.unc */
   0,  /* fcmp.le */
   0,  /* fcmp.le.unc */
   0,  /* fcmp.unord */
   0,  /* fcmp.unord.unc */
   0,  /* fcvt.fx */
   0,  /* fcvt.fx.trunc */
   0,  /* fcvt.fxu */
   0,  /* fcvt.fxu.trunc */
   0,  /* fcvt.xf */
  31,  /* fetchadd4 */
  31,  /* fetchadd8 */
   0,  /* flushrs */
   0,  /* fma */
   0,  /* fma.s */
   0,  /* fma.d */
   0,  /* fmax */
   0,  /* fmerge.ns */
   0,  /* fmerge.s */
   0,  /* fmerge.se */
   0,  /* fmin */
   0,  /* fmix.l */
   0,  /* fmix.r */
   0,  /* fmix.lr */
   0,  /* fms */
   0,  /* fms.s */
   0,  /* fms.d */
   0,  /* fnma */
   0,  /* fnma.s */
   0,  /* fnma.d */
   0,  /* for */
   0,  /* fpack */
   0,  /* fpamax */
   0,  /* fpamin */
   0,  /* fpcmp.eq */
   0,  /* fpcmp.lt */
   0,  /* fpcmp.le */
   0,  /* fpcmp.unord */
   0,  /* fpcmp.neq */
   0,  /* fpcmp.nlt */
   0,  /* fpcmp.nle */
   0,  /* fpcmp.ord */
   0,  /* fpcvt.fx */
   0,  /* fpcvt.fx.trunc */
   0,  /* fpcvt.fxu */
   0,  /* fpcvt.fxu.trunc */
   0,  /* fpma */
   0,  /* fpmax */
   0,  /* fpmerge.ns */
   0,  /* fpmerge.s */
   0,  /* fpmerge.se */
   0,  /* fpmin */
   0,  /* fpms */
   0,  /* fpnma */
   0,  /* fprcpa */
   0,  /* fprsqrta */
   0,  /* frcpa */
   0,  /* frsqrta */
   0,  /* fselect */
   0,  /* fsetc */
   0,  /* fswap */
   0,  /* fswap.nl */
   0,  /* fswap.nr */
   0,  /* fsxt.l */
   0,  /* fsxt.r */
   0,  /* fwb */
   0,  /* fxor */
   0,  /* getf.s */
   0,  /* getf.d */
   0,  /* getf.exp */
   0,  /* getf.sig */
   0,  /* invala */
   0,  /* invala.e */
   0,  /* invala_f.e */
   0,  /* itc.i */
   0,  /* itc.d */
   0,  /* itr.i */
   0,  /* itr.d */
   0,  /* ld1 */
   0,  /* ld1_r */
   0,  /* ld1_i */
   0,  /* ld2 */
   0,  /* ld2_r */
   0,  /* ld2_i */
   0,  /* ld4 */
   0,  /* ld4_r */
   0,  /* ld4_i */
   0,  /* ld8 */
   0,  /* ld8_r */
   0,  /* ld8_i */
   0,  /* ld8.fill */
   0,  /* ld8_r.fill */
   0,  /* ld8_i.fill */
   0,  /* ldfs */
   0,  /* ldfs_r */
   0,  /* ldfs_i */
   0,  /* ldfd */
   0,  /* ldfd_r */
   0,  /* ldfd_i */
   0,  /* ldfe */
   0,  /* ldfe_r */
   0,  /* ldfe_i */
   0,  /* ldf8 */
   0,  /* ldf8_r */
   0,  /* ldf8_i */
   0,  /* ldf.fill */
   0,  /* ldf_r.fill */
   0,  /* ldf_i.fill */
   0,  /* ldfps */
   0,  /* ldfps_i */
   0,  /* ldfpd */
   0,  /* ldfpd_i */
   0,  /* ldfp8 */
   0,  /* ldfp8_i */
   0,  /* lfetch */
   0,  /* lfetch.excl */
   0,  /* lfetch.fault */
   0,  /* lfetch.fault.excl */
   0,  /* lfetch_r */
   0,  /* lfetch_r.excl */
   0,  /* lfetch_r.fault */
   0,  /* lfetch_r.fault.excl */
   0,  /* lfetch_i */
   0,  /* lfetch_i.excl */
   0,  /* lfetch_i.fault */
   0,  /* lfetch_i.fault.excl */
   0,  /* loadrs */
   0,  /* mf */
   0,  /* mf.a */
   0,  /* mix1.l */
   0,  /* mix1.r */
   0,  /* mix2.l */
   0,  /* mix2.r */
   0,  /* mix4.l */
   0,  /* mix4.r */
   0,  /* mov_f_ar.i */
   0,  /* mov_t_ar_r.i */
   0,  /* mov_t_ar_i.i */
   0,  /* mov_f_ar.m */
   0,  /* mov_t_ar_r.m */
   0,  /* mov_t_ar_i.m */
   0,  /* mov_f_br */
   0,  /* mov_t_br_i */
   0,  /* mov_t_br.ret */
   0,  /* mov_t_cr */
   0,  /* mov_f_cr */
   0,  /* mov_f_cpuid */
   0,  /* mov_t_dbr */
   0,  /* mov_f_dbr */
   0,  /* mov_t_ibr */
   0,  /* mov_f_ibr */
   0,  /* mov_t_msr */
   0,  /* mov_f_msr */
   0,  /* mov_t_pkr */
   0,  /* mov_f_pkr */
   0,  /* mov_t_pmc */
   0,  /* mov_f_pmc */
   0,  /* mov_t_pmd */
   0,  /* mov_f_pmd */
   0,  /* mov_t_rr */
   0,  /* mov_f_rr */
   0,  /* mov_f_ip */
   0,  /* mov_f_pr */
   0,  /* mov_t_pr */
   0,  /* mov_t_pr_i */
   0,  /* mov_t_psr */
   0,  /* mov_f_psr */
   0,  /* mov_t_psrum */
   0,  /* mov_f_psrum */
   0,  /* movl */
   0,  /* mux1 */
   0,  /* mux2 */
   0,  /* nop.i */
   0,  /* nop.b */
   0,  /* nop.m */
   0,  /* nop.f */
   0,  /* nop.x */
   0,  /* or */
   0,  /* or_i */
   0,  /* pack2.sss */
   0,  /* pack2.uss */
   0,  /* pack4.sss */
   0,  /* padd1 */
   0,  /* padd1.sss */
   0,  /* padd1.uus */
   0,  /* padd1.uuu */
   0,  /* padd2 */
   0,  /* padd2.sss */
   0,  /* padd2.uus */
   0,  /* padd2.uuu */
   0,  /* padd4 */
   0,  /* pavg1 */
   0,  /* pavg1.raz */
   0,  /* pavg2 */
   0,  /* pavg2.raz */
   0,  /* pavgsub1 */
   0,  /* pavgsub2 */
   0,  /* pcmp1.eq */
   0,  /* pcmp1.gt */
   0,  /* pcmp2.eq */
   0,  /* pcmp2.gt */
   0,  /* pcmp4.eq */
   0,  /* pcmp4.gt */
   0,  /* pmax1.u */
   0,  /* pmax2 */
   0,  /* pmin1.u */
   0,  /* pmin2 */
   0,  /* pmpy2.r */
   0,  /* pmpy2.l */
  13,  /* pmpyshr2 */
  13,  /* pmpyshr2.u */
   0,  /* popcnt */
   0,  /* probe.r */
   0,  /* probe.w */
   0,  /* probe_i.r */
   0,  /* probe_i.w */
   0,  /* probe.r.fault */
   0,  /* probe.w.fault */
   0,  /* probe.rw.fault */
   0,  /* psad1 */
   0,  /* pshl2 */
   0,  /* pshl4 */
  15,  /* pshl2_i */
  15,  /* pshl4_i */
   5,  /* pshladd2 */
   0,  /* pshr2 */
   0,  /* pshr2.u */
   0,  /* pshr4 */
   0,  /* pshr4.u */
   0,  /* pshr2_i */
   0,  /* pshr2_i.u */
   0,  /* pshr4_i */
   0,  /* pshr4_i.u */
   5,  /* pshradd2 */
   0,  /* psub1 */
   0,  /* psub2 */
   0,  /* psub4 */
   0,  /* psub1.sss */
   0,  /* psub1.uus */
   0,  /* psub1.uuu */
   0,  /* psub2.sss */
   0,  /* psub2.uus */
   0,  /* psub2.uuu */
   0,  /* ptc.e */
   0,  /* ptc.g */
   0,  /* ptc.ga */
   0,  /* ptc.l */
   0,  /* ptr.d */
   0,  /* ptr.i */
   0,  /* rfi */
   0,  /* rsm */
   0,  /* rum */
   0,  /* setf.s */
   0,  /* setf.d */
   0,  /* setf.exp */
   0,  /* setf.sig */
   0,  /* shl */
   1,  /* shladd */
   1,  /* shladdp4 */
   0,  /* shr */
   0,  /* shr.u */
   0,  /* shrp */
   0,  /* srlz.i */
   0,  /* srlz.d */
   0,  /* ssm */
   0,  /* st1 */
   0,  /* st1_i */
   0,  /* st2 */
   0,  /* st2_i */
   0,  /* st4 */
   0,  /* st4_i */
   0,  /* st8 */
   0,  /* st8_i */
   0,  /* st8.spill */
   0,  /* st8_i.spill */
   0,  /* stfs */
   0,  /* stfs_i */
   0,  /* stfd */
   0,  /* stfd_i */
   0,  /* stfe */
   0,  /* stfe_i */
   0,  /* stf8 */
   0,  /* stf8_i */
   0,  /* stf.spill */
   0,  /* stf_i.spill */
   0,  /* sub */
   0,  /* sub_1 */
   0,  /* sub_i */
   0,  /* sum */
   0,  /* sxt1 */
   0,  /* sxt2 */
   0,  /* sxt4 */
   0,  /* sync.i */
   0,  /* tak */
   0,  /* tbit.z */
   0,  /* tbit.z.unc */
   0,  /* tbit.z.and */
   0,  /* tbit.z.or */
   0,  /* tbit.z.or.andcm */
   0,  /* tbit.nz.and */
   0,  /* tbit.nz.or */
   0,  /* tbit.nz.or.andcm */
   0,  /* thash */
   0,  /* tnat.z */
   0,  /* tnat.z.unc */
   0,  /* tnat.z.and */
   0,  /* tnat.z.or */
   0,  /* tnat.z.or.andcm */
   0,  /* tnat.nz.and */
   0,  /* tnat.nz.or */
   0,  /* tnat.nz.or.andcm */
   0,  /* tpa */
   0,  /* ttag */
   0,  /* unpack1.l */
   0,  /* unpack1.h */
   0,  /* unpack2.l */
   0,  /* unpack2.h */
   0,  /* unpack4.l */
   0,  /* unpack4.h */
   0,  /* xchg1 */
   0,  /* xchg2 */
   0,  /* xchg4 */
   0,  /* xchg8 */
   0,  /* xma.l */
   0,  /* xma.h */
   0,  /* xma.hu */
   0,  /* xor */
   0,  /* xor_i */
   0,  /* zxt1 */
   0,  /* zxt2 */
   0,  /* zxt4 */
   0,  /* alloc */
   0,  /* br */
   0,  /* br_r */
   0,  /* brl */
   0,  /* cmp.eq.orcm */
   0,  /* cmp.eq.andcm */
   0,  /* cmp.eq.and.orcm */
   0,  /* cmp.ne */
   0,  /* cmp.ne.unc */
   0,  /* cmp.ne.orcm */
   0,  /* cmp.ne.andcm */
   0,  /* cmp.ne.and.orcm */
   0,  /* cmp.le */
   0,  /* cmp.le.unc */
   0,  /* cmp.gt */
   0,  /* cmp.gt.unc */
   0,  /* cmp.ge */
   0,  /* cmp.ge.unc */
   0,  /* cmp.leu */
   0,  /* cmp.leu.unc */
   0,  /* cmp.gtu */
   0,  /* cmp.gtu.unc */
   0,  /* cmp.geu */
   0,  /* cmp.geu.unc */
   0,  /* cmp_z1.lt.orcm */
   0,  /* cmp_z1.lt.andcm */
   0,  /* cmp_z1.lt.and.orcm */
   0,  /* cmp_z1.le.orcm */
   0,  /* cmp_z1.le.andcm */
   0,  /* cmp_z1.le.and.orcm */
   0,  /* cmp_z1.gt.orcm */
   0,  /* cmp_z1.gt.andcm */
   0,  /* cmp_z1.gt.and.orcm */
   0,  /* cmp_z1.ge.orcm */
   0,  /* cmp_z1.ge.andcm */
   0,  /* cmp_z1.ge.and.orcm */
   0,  /* cmp_z2.lt.orcm */
   0,  /* cmp_z2.lt.andcm */
   0,  /* cmp_z2.lt.and.orcm */
   0,  /* cmp_z2.le.orcm */
   0,  /* cmp_z2.le.andcm */
   0,  /* cmp_z2.le.and.orcm */
   0,  /* cmp_z2.gt.orcm */
   0,  /* cmp_z2.gt.andcm */
   0,  /* cmp_z2.gt.and.orcm */
   0,  /* cmp_z2.ge.orcm */
   0,  /* cmp_z2.ge.andcm */
   0,  /* cmp_z2.ge.and.orcm */
   0,  /* cmp_z2.lt.and */
   0,  /* cmp_z2.lt.or */
   0,  /* cmp_z2.lt.or.andcm */
   0,  /* cmp_z2.le.and */
   0,  /* cmp_z2.le.or */
   0,  /* cmp_z2.le.or.andcm */
   0,  /* cmp_z2.gt.and */
   0,  /* cmp_z2.gt.or */
   0,  /* cmp_z2.gt.or.andcm */
   0,  /* cmp_z2.ge.and */
   0,  /* cmp_z2.ge.or */
   0,  /* cmp_z2.ge.or.andcm */
   0,  /* cmp_i.eq.orcm */
   0,  /* cmp_i.eq.andcm */
   0,  /* cmp_i.eq.and.orcm */
   0,  /* cmp_i.ne */
   0,  /* cmp_i.ne.unc */
   0,  /* cmp_i.ne.orcm */
   0,  /* cmp_i.ne.andcm */
   0,  /* cmp_i.ne.and.orcm */
   9,  /* cmp_i.le */
   9,  /* cmp_i.le.unc */
  11,  /* cmp_i.gt */
  11,  /* cmp_i.gt.unc */
   0,  /* cmp_i.ge */
   0,  /* cmp_i.ge.unc */
   9,  /* cmp_i.leu */
   9,  /* cmp_i.leu.unc */
  11,  /* cmp_i.gtu */
  11,  /* cmp_i.gtu.unc */
   7,  /* cmp_i.geu */
   7,  /* cmp_i.geu.unc */
   0,  /* cmp4.eq.orcm */
   0,  /* cmp4.eq.andcm */
   0,  /* cmp4.eq.and.orcm */
   0,  /* cmp4.ne */
   0,  /* cmp4.ne.unc */
   0,  /* cmp4.ne.orcm */
   0,  /* cmp4.ne.andcm */
   0,  /* cmp4.ne.and.orcm */
   0,  /* cmp4.le */
   0,  /* cmp4.le.unc */
   0,  /* cmp4.gt */
   0,  /* cmp4.gt.unc */
   0,  /* cmp4.ge */
   0,  /* cmp4.ge.unc */
   0,  /* cmp4.leu */
   0,  /* cmp4.leu.unc */
   0,  /* cmp4.gtu */
   0,  /* cmp4.gtu.unc */
   0,  /* cmp4.geu */
   0,  /* cmp4.geu.unc */
   0,  /* cmp4_z1.lt.orcm */
   0,  /* cmp4_z1.lt.andcm */
   0,  /* cmp4_z1.lt.and.orcm */
   0,  /* cmp4_z1.le.orcm */
   0,  /* cmp4_z1.le.andcm */
   0,  /* cmp4_z1.le.and.orcm */
   0,  /* cmp4_z1.gt.orcm */
   0,  /* cmp4_z1.gt.andcm */
   0,  /* cmp4_z1.gt.and.orcm */
   0,  /* cmp4_z1.ge.orcm */
   0,  /* cmp4_z1.ge.andcm */
   0,  /* cmp4_z1.ge.and.orcm */
   0,  /* cmp4_z2.lt.orcm */
   0,  /* cmp4_z2.lt.andcm */
   0,  /* cmp4_z2.lt.and.orcm */
   0,  /* cmp4_z2.le.orcm */
   0,  /* cmp4_z2.le.andcm */
   0,  /* cmp4_z2.le.and.orcm */
   0,  /* cmp4_z2.gt.orcm */
   0,  /* cmp4_z2.gt.andcm */
   0,  /* cmp4_z2.gt.and.orcm */
   0,  /* cmp4_z2.ge.orcm */
   0,  /* cmp4_z2.ge.andcm */
   0,  /* cmp4_z2.ge.and.orcm */
   0,  /* cmp4_z2.lt.and */
   0,  /* cmp4_z2.lt.or */
   0,  /* cmp4_z2.lt.or.andcm */
   0,  /* cmp4_z2.le.and */
   0,  /* cmp4_z2.le.or */
   0,  /* cmp4_z2.le.or.andcm */
   0,  /* cmp4_z2.gt.and */
   0,  /* cmp4_z2.gt.or */
   0,  /* cmp4_z2.gt.or.andcm */
   0,  /* cmp4_z2.ge.and */
   0,  /* cmp4_z2.ge.or */
   0,  /* cmp4_z2.ge.or.andcm */
   0,  /* cmp4_i.eq.orcm */
   0,  /* cmp4_i.eq.andcm */
   0,  /* cmp4_i.eq.and.orcm */
   0,  /* cmp4_i.ne */
   0,  /* cmp4_i.ne.unc */
   0,  /* cmp4_i.ne.orcm */
   0,  /* cmp4_i.ne.andcm */
   0,  /* cmp4_i.ne.and.orcm */
   9,  /* cmp4_i.le */
   9,  /* cmp4_i.le.unc */
  11,  /* cmp4_i.gt */
  11,  /* cmp4_i.gt.unc */
   0,  /* cmp4_i.ge */
   0,  /* cmp4_i.ge.unc */
   9,  /* cmp4_i.leu */
   9,  /* cmp4_i.leu.unc */
  11,  /* cmp4_i.gtu */
  11,  /* cmp4_i.gtu.unc */
   7,  /* cmp4_i.geu */
   7,  /* cmp4_i.geu.unc */
   0,  /* fabs */
   0,  /* fadd */
   0,  /* fadd.s */
   0,  /* fadd.d */
   0,  /* fclass.nm */
   0,  /* fclass.nm.unc */
   0,  /* fcmp.gt */
   0,  /* fcmp.gt.unc */
   0,  /* fcmp.ge */
   0,  /* fcmp.ge.unc */
   0,  /* fcmp.neq */
   0,  /* fcmp.neq.unc */
   0,  /* fcmp.nlt */
   0,  /* fcmp.nlt.unc */
   0,  /* fcmp.nle */
   0,  /* fcmp.nle.unc */
   0,  /* fcmp.ngt */
   0,  /* fcmp.ngt.unc */
   0,  /* fcmp.nge */
   0,  /* fcmp.nge.unc */
   0,  /* fcmp.ord */
   0,  /* fcmp.ord.unc */
   0,  /* fcvt.xuf */
   0,  /* fcvt.xuf.s */
   0,  /* fcvt.xuf.d */
   0,  /* fmpy */
   0,  /* fmpy.s */
   0,  /* fmpy.d */
   0,  /* fneg */
   0,  /* fnegabs */
   0,  /* fnmpy */
   0,  /* fnmpy.s */
   0,  /* fnmpy.d */
   0,  /* fnorm */
   0,  /* fnorm.s */
   0,  /* fnorm.d */
   0,  /* fpabs */
   0,  /* fpcmp.gt */
   0,  /* fpcmp.ge */
   0,  /* fpcmp.ngt */
   0,  /* fpcmp.nge */
   0,  /* fpmpy */
   0,  /* fpneg */
   0,  /* fpnegabs */
   0,  /* fpnmpy */
   0,  /* fsub */
   0,  /* fsub.s */
   0,  /* fsub.d */
   0,  /* mov_t_br */
   0,  /* mov_f */
   0,  /* mov */
   0,  /* mov_i */
   0,  /* shl_i */
   0,  /* shr_i */
   0,  /* shr_i.u */
   0,  /* tbit.nz */
   0,  /* tbit.nz.unc */
   0,  /* tnat.nz */
   0,  /* tnat.nz.unc */
   0,  /* xma.lu */
   0,  /* xmpy.l */
   0,  /* xmpy.lu */
   0,  /* xmpy.h */
   0,  /* xmpy.hu */
   0,  /* break */
   0,  /* chk.s */
   0,  /* cmp.lt.and */
   0,  /* cmp.lt.or */
   0,  /* cmp.lt.or.andcm */
   0,  /* cmp.le.and */
   0,  /* cmp.le.or */
   0,  /* cmp.le.or.andcm */
   0,  /* cmp.gt.and */
   0,  /* cmp.gt.or */
   0,  /* cmp.gt.or.andcm */
   0,  /* cmp.ge.and */
   0,  /* cmp.ge.or */
   0,  /* cmp.ge.or.andcm */
   0,  /* cmp.lt.orcm */
   0,  /* cmp.lt.andcm */
   0,  /* cmp.lt.and.orcm */
   0,  /* cmp.le.orcm */
   0,  /* cmp.le.andcm */
   0,  /* cmp.le.and.orcm */
   0,  /* cmp.gt.orcm */
   0,  /* cmp.gt.andcm */
   0,  /* cmp.gt.and.orcm */
   0,  /* cmp.ge.orcm */
   0,  /* cmp.ge.andcm */
   0,  /* cmp.ge.and.orcm */
   0,  /* cmp4.lt.and */
   0,  /* cmp4.lt.or */
   0,  /* cmp4.lt.or.andcm */
   0,  /* cmp4.le.and */
   0,  /* cmp4.le.or */
   0,  /* cmp4.le.or.andcm */
   0,  /* cmp4.gt.and */
   0,  /* cmp4.gt.or */
   0,  /* cmp4.gt.or.andcm */
   0,  /* cmp4.ge.and */
   0,  /* cmp4.ge.or */
   0,  /* cmp4.ge.or.andcm */
   0,  /* cmp4.lt.orcm */
   0,  /* cmp4.lt.andcm */
   0,  /* cmp4.lt.and.orcm */
   0,  /* cmp4.le.orcm */
   0,  /* cmp4.le.andcm */
   0,  /* cmp4.le.and.orcm */
   0,  /* cmp4.gt.orcm */
   0,  /* cmp4.gt.andcm */
   0,  /* cmp4.gt.and.orcm */
   0,  /* cmp4.ge.orcm */
   0,  /* cmp4.ge.andcm */
   0,  /* cmp4.ge.and.orcm */
   0,  /* mov_f_ar */
   0,  /* mov_t_ar_r */
   0,  /* mov_t_ar_i */
   0,  /* nop */
   0,  /* asm */
   0,  /* intrncall */
   0,  /* spadjust */
   0,  /* copy.br */
   0,  /* begin.pregtn */
   0,  /* end.pregtn */
   0,  /* bwd.bar */
   0,  /* fwd.bar */
   0,  /* dfixup */
   0,  /* ffixup */
   0,  /* ifixup */
   0,  /* label */
   0,  /* noop */
};

void ISA_PACK_Adjust_Operands(const ISA_PACK_ADJ_INFO *info,
                              INT64 *opnd,
                              BOOL invert)
{
  INT code;

  for (; (code = ISA_PACK_ADJ_INFO_Code(info, invert)) != ISA_PACK_ADJ_END; ++info) {
    INT index = ISA_PACK_ADJ_INFO_OpndIdx(info);
    INT64 O_VAL = opnd[index];
    switch (code) {
    case  1:  /* no adjustment */
      O_VAL = (O_VAL);
      break;
    case  2:  /* 6-bit complement */
      O_VAL = (O_VAL ^ 0x3f);
      break;
    case  3:  /* decrement */
      O_VAL = (O_VAL - 1);
      break;
    case  4:  /* increment */
      O_VAL = (O_VAL + 1);
      break;
    case  5:  /* sign-extend(8)/increment */
      O_VAL = (((O_VAL << 56) >> 56) + 1);
      break;
    case  6:  /* sign-extend(8) */
      O_VAL = ((O_VAL << 56) >> 56);
      break;
    case  7:  /* 5-bit complement */
      O_VAL = (O_VAL ^ 0x1f);
      break;
    case  8:  /* Pack (I1) */
      O_VAL = ((O_VAL == 0) ? 0 : (O_VAL == 7) ? 1 : (O_VAL == 15) ? 2 : 3);
      break;
    case  9:  /* Unpack (I1) */
      O_VAL = ((O_VAL == 0) ? 0 : (O_VAL == 1) ? 7 : (O_VAL == 2) ? 15 : 16);
      break;
    case 10:  /* Pack (M17) */
      O_VAL = (((O_VAL < 0) * 4) + ((O_VAL & 1) ? 3 : (O_VAL & 4) ? 2 : (O_VAL & 8) ? 1 : 0));
      break;
    case 11:  /* unpack (M17) */
      O_VAL = ((((O_VAL >= 4) ? -1 : 1) * (((O_VAL & 3) == 3) ? 1 : 1 << (4 - (O_VAL & 3)))));
      break;
    }
    opnd[index] = O_VAL;
  }
}
