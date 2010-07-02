#include <string.h>
#include "topcode.h"
#include "targ_isa_print.h"


const ISA_PRINT_INFO ISA_PRINT_info[117] = {
  { "",             ISA_PRINT_COMP_end },	/* print_NULL[0] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* imul[0] */
                    ISA_PRINT_COMP_opnd+1,	/* imul[1] */
                    ISA_PRINT_COMP_opnd,	/* imul[2] */
                    ISA_PRINT_COMP_end },	/* imul[3] */
  { "%s %s",        ISA_PRINT_COMP_name,	/* op1[0] */
                    ISA_PRINT_COMP_opnd+1,	/* op1[1] */
                    ISA_PRINT_COMP_end },	/* op1[2] */
  { "%s %s",        ISA_PRINT_COMP_name,	/* op2[0] */
                    ISA_PRINT_COMP_opnd+2,	/* op2[1] */
                    ISA_PRINT_COMP_end },	/* op2[2] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* cmp[0] */
                    ISA_PRINT_COMP_opnd+1,	/* cmp[1] */
                    ISA_PRINT_COMP_opnd,	/* cmp[2] */
                    ISA_PRINT_COMP_end },	/* cmp[3] */
  { "%s %s%s(%s),%s",  ISA_PRINT_COMP_name,	/* cmpx[0] */
                    ISA_PRINT_COMP_segment,	/* cmpx[1] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpx[3] */
                    ISA_PRINT_COMP_opnd,	/* cmpx[4] */
                    ISA_PRINT_COMP_end },	/* cmpx[5] */
  { "%s %s,%s%s(%s)",  ISA_PRINT_COMP_name,	/* cmpxr[0] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpxr[1] */
                    ISA_PRINT_COMP_segment,	/* cmpxr[2] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpxr[3] */
                    ISA_PRINT_COMP_opnd,	/* cmpxr[4] */
                    ISA_PRINT_COMP_end },	/* cmpxr[5] */
  { "%s %s,%s%s(%s)",  ISA_PRINT_COMP_name,	/* cmpxi[0] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpxi[1] */
                    ISA_PRINT_COMP_segment,	/* cmpxi[2] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpxi[3] */
                    ISA_PRINT_COMP_opnd,	/* cmpxi[4] */
                    ISA_PRINT_COMP_end },	/* cmpxi[5] */
  { "%s %s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* cmpxx[0] */
                    ISA_PRINT_COMP_segment,	/* cmpxx[1] */
                    ISA_PRINT_COMP_opnd+4,	/* cmpxx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpxx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpxx[4] */
                    ISA_PRINT_COMP_opnd+3,	/* cmpxx[5] */
                    ISA_PRINT_COMP_opnd,	/* cmpxx[6] */
                    ISA_PRINT_COMP_end },	/* cmpxx[7] */
  { "%s %s,%s%s(%s,%s,%s)",  ISA_PRINT_COMP_name,	/* cmpxxr[0] */
                    ISA_PRINT_COMP_opnd+4,	/* cmpxxr[1] */
                    ISA_PRINT_COMP_segment,	/* cmpxxr[2] */
                    ISA_PRINT_COMP_opnd+3,	/* cmpxxr[3] */
                    ISA_PRINT_COMP_opnd,	/* cmpxxr[4] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpxxr[5] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpxxr[6] */
                    ISA_PRINT_COMP_end },	/* cmpxxr[7] */
  { "%s %s,%s%s(%s,%s,%s)",  ISA_PRINT_COMP_name,	/* cmpxxi[0] */
                    ISA_PRINT_COMP_opnd+4,	/* cmpxxi[1] */
                    ISA_PRINT_COMP_segment,	/* cmpxxi[2] */
                    ISA_PRINT_COMP_opnd+3,	/* cmpxxi[3] */
                    ISA_PRINT_COMP_opnd,	/* cmpxxi[4] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpxxi[5] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpxxi[6] */
                    ISA_PRINT_COMP_end },	/* cmpxxi[7] */
  { "%s %s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* cmpxxx[0] */
                    ISA_PRINT_COMP_segment,	/* cmpxxx[1] */
                    ISA_PRINT_COMP_opnd+3,	/* cmpxxx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpxxx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpxxx[4] */
                    ISA_PRINT_COMP_opnd,	/* cmpxxx[5] */
                    ISA_PRINT_COMP_end },	/* cmpxxx[6] */
  { "%s %s,%s%s(,%s,%s)",  ISA_PRINT_COMP_name,	/* cmpxxxr[0] */
                    ISA_PRINT_COMP_opnd+3,	/* cmpxxxr[1] */
                    ISA_PRINT_COMP_segment,	/* cmpxxxr[2] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpxxxr[3] */
                    ISA_PRINT_COMP_opnd,	/* cmpxxxr[4] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpxxxr[5] */
                    ISA_PRINT_COMP_end },	/* cmpxxxr[6] */
  { "%s %s,%s%s(,%s,%s)",  ISA_PRINT_COMP_name,	/* cmpxxxi[0] */
                    ISA_PRINT_COMP_opnd+3,	/* cmpxxxi[1] */
                    ISA_PRINT_COMP_segment,	/* cmpxxxi[2] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpxxxi[3] */
                    ISA_PRINT_COMP_opnd,	/* cmpxxxi[4] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpxxxi[5] */
                    ISA_PRINT_COMP_end },	/* cmpxxxi[6] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* ropop[0] */
                    ISA_PRINT_COMP_opnd+1,	/* ropop[1] */
                    ISA_PRINT_COMP_result,	/* ropop[2] */
                    ISA_PRINT_COMP_opnd,	/* ropop[3] */
                    ISA_PRINT_COMP_end },	/* ropop[4] */
  { "%s %s%s(%s),%s",  ISA_PRINT_COMP_name,	/* ropmem[0] */
                    ISA_PRINT_COMP_segment,	/* ropmem[1] */
                    ISA_PRINT_COMP_opnd+2,	/* ropmem[2] */
                    ISA_PRINT_COMP_opnd+1,	/* ropmem[3] */
                    ISA_PRINT_COMP_result,	/* ropmem[4] */
                    ISA_PRINT_COMP_opnd,	/* ropmem[5] */
                    ISA_PRINT_COMP_end },	/* ropmem[6] */
  { "%s %s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* ropmemindex[0] */
                    ISA_PRINT_COMP_segment,	/* ropmemindex[1] */
                    ISA_PRINT_COMP_opnd+4,	/* ropmemindex[2] */
                    ISA_PRINT_COMP_opnd+1,	/* ropmemindex[3] */
                    ISA_PRINT_COMP_opnd+2,	/* ropmemindex[4] */
                    ISA_PRINT_COMP_opnd+3,	/* ropmemindex[5] */
                    ISA_PRINT_COMP_result,	/* ropmemindex[6] */
                    ISA_PRINT_COMP_opnd,	/* ropmemindex[7] */
                    ISA_PRINT_COMP_end },	/* ropmemindex[8] */
  { "%s %s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* ropmemindexx[0] */
                    ISA_PRINT_COMP_segment,	/* ropmemindexx[1] */
                    ISA_PRINT_COMP_opnd+3,	/* ropmemindexx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* ropmemindexx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* ropmemindexx[4] */
                    ISA_PRINT_COMP_result,	/* ropmemindexx[5] */
                    ISA_PRINT_COMP_opnd,	/* ropmemindexx[6] */
                    ISA_PRINT_COMP_end },	/* ropmemindexx[7] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* rblendv[0] */
                    ISA_PRINT_COMP_opnd+2,	/* rblendv[1] */
                    ISA_PRINT_COMP_result,	/* rblendv[2] */
                    ISA_PRINT_COMP_opnd,	/* rblendv[3] */
                    ISA_PRINT_COMP_end },	/* rblendv[4] */
  { "%s %s%s(%s),%s",  ISA_PRINT_COMP_name,	/* rblendvmem[0] */
                    ISA_PRINT_COMP_opnd+3,	/* rblendvmem[1] */
                    ISA_PRINT_COMP_opnd+2,	/* rblendvmem[2] */
                    ISA_PRINT_COMP_result,	/* rblendvmem[3] */
                    ISA_PRINT_COMP_opnd,	/* rblendvmem[4] */
                    ISA_PRINT_COMP_end },	/* rblendvmem[5] */
  { "%s %s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* rblendvmemindex[0] */
                    ISA_PRINT_COMP_opnd+5,	/* rblendvmemindex[1] */
                    ISA_PRINT_COMP_opnd+2,	/* rblendvmemindex[2] */
                    ISA_PRINT_COMP_opnd+3,	/* rblendvmemindex[3] */
                    ISA_PRINT_COMP_opnd+4,	/* rblendvmemindex[4] */
                    ISA_PRINT_COMP_result,	/* rblendvmemindex[5] */
                    ISA_PRINT_COMP_opnd,	/* rblendvmemindex[6] */
                    ISA_PRINT_COMP_end },	/* rblendvmemindex[7] */
  { "%s %s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* rblendvmemindexx[0] */
                    ISA_PRINT_COMP_opnd+4,	/* rblendvmemindexx[1] */
                    ISA_PRINT_COMP_opnd+2,	/* rblendvmemindexx[2] */
                    ISA_PRINT_COMP_opnd+3,	/* rblendvmemindexx[3] */
                    ISA_PRINT_COMP_result,	/* rblendvmemindexx[4] */
                    ISA_PRINT_COMP_opnd,	/* rblendvmemindexx[5] */
                    ISA_PRINT_COMP_end },	/* rblendvmemindexx[6] */
  { "%s %s,%s,%s",  ISA_PRINT_COMP_name,	/* ropopop[0] */
                    ISA_PRINT_COMP_opnd+2,	/* ropopop[1] */
                    ISA_PRINT_COMP_opnd+1,	/* ropopop[2] */
                    ISA_PRINT_COMP_result,	/* ropopop[3] */
                    ISA_PRINT_COMP_opnd,	/* ropopop[4] */
                    ISA_PRINT_COMP_end },	/* ropopop[5] */
  { "%s %s%s(%s),%s,%s",  ISA_PRINT_COMP_name,	/* ropmemop[0] */
                    ISA_PRINT_COMP_segment,	/* ropmemop[1] */
                    ISA_PRINT_COMP_opnd+2,	/* ropmemop[2] */
                    ISA_PRINT_COMP_opnd+1,	/* ropmemop[3] */
                    ISA_PRINT_COMP_opnd+3,	/* ropmemop[4] */
                    ISA_PRINT_COMP_result,	/* ropmemop[5] */
                    ISA_PRINT_COMP_opnd,	/* ropmemop[6] */
                    ISA_PRINT_COMP_end },	/* ropmemop[7] */
  { "%s %s%s(%s,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* ropmemindexop[0] */
                    ISA_PRINT_COMP_segment,	/* ropmemindexop[1] */
                    ISA_PRINT_COMP_opnd+4,	/* ropmemindexop[2] */
                    ISA_PRINT_COMP_opnd+1,	/* ropmemindexop[3] */
                    ISA_PRINT_COMP_opnd+2,	/* ropmemindexop[4] */
                    ISA_PRINT_COMP_opnd+3,	/* ropmemindexop[5] */
                    ISA_PRINT_COMP_opnd+5,	/* ropmemindexop[6] */
                    ISA_PRINT_COMP_result,	/* ropmemindexop[7] */
                    ISA_PRINT_COMP_opnd,	/* ropmemindexop[8] */
                    ISA_PRINT_COMP_end },	/* ropmemindexop[9] */
  { "%s %s%s(,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* ropmemindexxop[0] */
                    ISA_PRINT_COMP_segment,	/* ropmemindexxop[1] */
                    ISA_PRINT_COMP_opnd+3,	/* ropmemindexxop[2] */
                    ISA_PRINT_COMP_opnd+1,	/* ropmemindexxop[3] */
                    ISA_PRINT_COMP_opnd+2,	/* ropmemindexxop[4] */
                    ISA_PRINT_COMP_opnd+4,	/* ropmemindexxop[5] */
                    ISA_PRINT_COMP_result,	/* ropmemindexxop[6] */
                    ISA_PRINT_COMP_opnd,	/* ropmemindexxop[7] */
                    ISA_PRINT_COMP_end },	/* ropmemindexxop[8] */
  { "%s %s,%s,%s",  ISA_PRINT_COMP_name,	/* vropop[0] */
                    ISA_PRINT_COMP_opnd+1,	/* vropop[1] */
                    ISA_PRINT_COMP_opnd,	/* vropop[2] */
                    ISA_PRINT_COMP_result,	/* vropop[3] */
                    ISA_PRINT_COMP_end },	/* vropop[4] */
  { "%s %s%s(%s),%s,%s",  ISA_PRINT_COMP_name,	/* vropmem[0] */
                    ISA_PRINT_COMP_segment,	/* vropmem[1] */
                    ISA_PRINT_COMP_opnd+2,	/* vropmem[2] */
                    ISA_PRINT_COMP_opnd+1,	/* vropmem[3] */
                    ISA_PRINT_COMP_opnd,	/* vropmem[4] */
                    ISA_PRINT_COMP_result,	/* vropmem[5] */
                    ISA_PRINT_COMP_end },	/* vropmem[6] */
  { "%s %s,%s%s(%s),%s",  ISA_PRINT_COMP_name,	/* vrmemop[0] */
                    ISA_PRINT_COMP_opnd+2,	/* vrmemop[1] */
                    ISA_PRINT_COMP_segment,	/* vrmemop[2] */
                    ISA_PRINT_COMP_opnd+1,	/* vrmemop[3] */
                    ISA_PRINT_COMP_opnd,	/* vrmemop[4] */
                    ISA_PRINT_COMP_result,	/* vrmemop[5] */
                    ISA_PRINT_COMP_end },	/* vrmemop[6] */
  { "%s %s%s(%s,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* vropmemindex[0] */
                    ISA_PRINT_COMP_segment,	/* vropmemindex[1] */
                    ISA_PRINT_COMP_opnd+4,	/* vropmemindex[2] */
                    ISA_PRINT_COMP_opnd+1,	/* vropmemindex[3] */
                    ISA_PRINT_COMP_opnd+2,	/* vropmemindex[4] */
                    ISA_PRINT_COMP_opnd+3,	/* vropmemindex[5] */
                    ISA_PRINT_COMP_opnd,	/* vropmemindex[6] */
                    ISA_PRINT_COMP_result,	/* vropmemindex[7] */
                    ISA_PRINT_COMP_end },	/* vropmemindex[8] */
  { "%s %s,%s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* vrmemindexop[0] */
                    ISA_PRINT_COMP_opnd+4,	/* vrmemindexop[1] */
                    ISA_PRINT_COMP_segment,	/* vrmemindexop[2] */
                    ISA_PRINT_COMP_opnd+3,	/* vrmemindexop[3] */
                    ISA_PRINT_COMP_opnd,	/* vrmemindexop[4] */
                    ISA_PRINT_COMP_opnd+1,	/* vrmemindexop[5] */
                    ISA_PRINT_COMP_opnd+2,	/* vrmemindexop[6] */
                    ISA_PRINT_COMP_result,	/* vrmemindexop[7] */
                    ISA_PRINT_COMP_end },	/* vrmemindexop[8] */
  { "%s %s%s(,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* vropmemindexx[0] */
                    ISA_PRINT_COMP_segment,	/* vropmemindexx[1] */
                    ISA_PRINT_COMP_opnd+3,	/* vropmemindexx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* vropmemindexx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* vropmemindexx[4] */
                    ISA_PRINT_COMP_opnd,	/* vropmemindexx[5] */
                    ISA_PRINT_COMP_result,	/* vropmemindexx[6] */
                    ISA_PRINT_COMP_end },	/* vropmemindexx[7] */
  { "%s %s,%s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* vrmemindexxop[0] */
                    ISA_PRINT_COMP_opnd+3,	/* vrmemindexxop[1] */
                    ISA_PRINT_COMP_segment,	/* vrmemindexxop[2] */
                    ISA_PRINT_COMP_opnd+2,	/* vrmemindexxop[3] */
                    ISA_PRINT_COMP_opnd,	/* vrmemindexxop[4] */
                    ISA_PRINT_COMP_opnd+1,	/* vrmemindexxop[5] */
                    ISA_PRINT_COMP_result,	/* vrmemindexxop[6] */
                    ISA_PRINT_COMP_end },	/* vrmemindexxop[7] */
  { "%s %s,%s,%s,%s",  ISA_PRINT_COMP_name,	/* vropopimm[0] */
                    ISA_PRINT_COMP_opnd+2,	/* vropopimm[1] */
                    ISA_PRINT_COMP_opnd+1,	/* vropopimm[2] */
                    ISA_PRINT_COMP_opnd,	/* vropopimm[3] */
                    ISA_PRINT_COMP_result,	/* vropopimm[4] */
                    ISA_PRINT_COMP_end },	/* vropopimm[5] */
  { "%s %s,%s%s(%s),%s,%s",  ISA_PRINT_COMP_name,	/* vropmemop[0] */
                    ISA_PRINT_COMP_opnd+3,	/* vropmemop[1] */
                    ISA_PRINT_COMP_segment,	/* vropmemop[2] */
                    ISA_PRINT_COMP_opnd+2,	/* vropmemop[3] */
                    ISA_PRINT_COMP_opnd+1,	/* vropmemop[4] */
                    ISA_PRINT_COMP_opnd,	/* vropmemop[5] */
                    ISA_PRINT_COMP_result,	/* vropmemop[6] */
                    ISA_PRINT_COMP_end },	/* vropmemop[7] */
  { "%s %s,%s%s(%s,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* vropmemindexop[0] */
                    ISA_PRINT_COMP_opnd+3,	/* vropmemindexop[1] */
                    ISA_PRINT_COMP_segment,	/* vropmemindexop[2] */
                    ISA_PRINT_COMP_opnd+4,	/* vropmemindexop[3] */
                    ISA_PRINT_COMP_opnd+1,	/* vropmemindexop[4] */
                    ISA_PRINT_COMP_opnd+2,	/* vropmemindexop[5] */
                    ISA_PRINT_COMP_opnd,	/* vropmemindexop[6] */
                    ISA_PRINT_COMP_result,	/* vropmemindexop[7] */
                    ISA_PRINT_COMP_end },	/* vropmemindexop[8] */
  { "%s %s,%s%s(,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* vropmemindexxop[0] */
                    ISA_PRINT_COMP_opnd+4,	/* vropmemindexxop[1] */
                    ISA_PRINT_COMP_segment,	/* vropmemindexxop[2] */
                    ISA_PRINT_COMP_opnd+3,	/* vropmemindexxop[3] */
                    ISA_PRINT_COMP_opnd+1,	/* vropmemindexxop[4] */
                    ISA_PRINT_COMP_opnd+2,	/* vropmemindexxop[5] */
                    ISA_PRINT_COMP_opnd,	/* vropmemindexxop[6] */
                    ISA_PRINT_COMP_result,	/* vropmemindexxop[7] */
                    ISA_PRINT_COMP_end },	/* vropmemindexxop[8] */
  { "%s %s%s(%s),%s,%s,%s",  ISA_PRINT_COMP_name,	/* vropopmem[0] */
                    ISA_PRINT_COMP_segment,	/* vropopmem[1] */
                    ISA_PRINT_COMP_opnd+3,	/* vropopmem[2] */
                    ISA_PRINT_COMP_opnd+2,	/* vropopmem[3] */
                    ISA_PRINT_COMP_opnd+1,	/* vropopmem[4] */
                    ISA_PRINT_COMP_opnd,	/* vropopmem[5] */
                    ISA_PRINT_COMP_result,	/* vropopmem[6] */
                    ISA_PRINT_COMP_end },	/* vropopmem[7] */
  { "%s %s%s(%s,%s,%s),%s,%s,%s",  ISA_PRINT_COMP_name,	/* vropopmemindex[0] */
                    ISA_PRINT_COMP_segment,	/* vropopmemindex[1] */
                    ISA_PRINT_COMP_opnd+5,	/* vropopmemindex[2] */
                    ISA_PRINT_COMP_opnd+2,	/* vropopmemindex[3] */
                    ISA_PRINT_COMP_opnd+3,	/* vropopmemindex[4] */
                    ISA_PRINT_COMP_opnd+4,	/* vropopmemindex[5] */
                    ISA_PRINT_COMP_opnd+1,	/* vropopmemindex[6] */
                    ISA_PRINT_COMP_opnd,	/* vropopmemindex[7] */
                    ISA_PRINT_COMP_result,	/* vropopmemindex[8] */
                    ISA_PRINT_COMP_end },	/* vropopmemindex[9] */
  { "%s %s%s(,%s,%s),%s,%s,%s",  ISA_PRINT_COMP_name,	/* vropopmemindexx[0] */
                    ISA_PRINT_COMP_segment,	/* vropopmemindexx[1] */
                    ISA_PRINT_COMP_opnd+4,	/* vropopmemindexx[2] */
                    ISA_PRINT_COMP_opnd+2,	/* vropopmemindexx[3] */
                    ISA_PRINT_COMP_opnd+3,	/* vropopmemindexx[4] */
                    ISA_PRINT_COMP_opnd+1,	/* vropopmemindexx[5] */
                    ISA_PRINT_COMP_opnd,	/* vropopmemindexx[6] */
                    ISA_PRINT_COMP_result,	/* vropopmemindexx[7] */
                    ISA_PRINT_COMP_end },	/* vropopmemindexx[8] */
  { "%s %s,%s,%s",  ISA_PRINT_COMP_name,	/* round[0] */
                    ISA_PRINT_COMP_opnd+1,	/* round[1] */
                    ISA_PRINT_COMP_opnd,	/* round[2] */
                    ISA_PRINT_COMP_result,	/* round[3] */
                    ISA_PRINT_COMP_end },	/* round[4] */
  { "%s %s,%s%s(%s),%s",  ISA_PRINT_COMP_name,	/* roundmem[0] */
                    ISA_PRINT_COMP_opnd+2,	/* roundmem[1] */
                    ISA_PRINT_COMP_segment,	/* roundmem[2] */
                    ISA_PRINT_COMP_opnd+1,	/* roundmem[3] */
                    ISA_PRINT_COMP_opnd,	/* roundmem[4] */
                    ISA_PRINT_COMP_result,	/* roundmem[5] */
                    ISA_PRINT_COMP_end },	/* roundmem[6] */
  { "%s %s,%s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* roundmemindex[0] */
                    ISA_PRINT_COMP_opnd+4,	/* roundmemindex[1] */
                    ISA_PRINT_COMP_segment,	/* roundmemindex[2] */
                    ISA_PRINT_COMP_opnd+3,	/* roundmemindex[3] */
                    ISA_PRINT_COMP_opnd,	/* roundmemindex[4] */
                    ISA_PRINT_COMP_opnd+1,	/* roundmemindex[5] */
                    ISA_PRINT_COMP_opnd+2,	/* roundmemindex[6] */
                    ISA_PRINT_COMP_result,	/* roundmemindex[7] */
                    ISA_PRINT_COMP_end },	/* roundmemindex[8] */
  { "%s %s,%s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* roundmemindexx[0] */
                    ISA_PRINT_COMP_opnd+3,	/* roundmemindexx[1] */
                    ISA_PRINT_COMP_segment,	/* roundmemindexx[2] */
                    ISA_PRINT_COMP_opnd+2,	/* roundmemindexx[3] */
                    ISA_PRINT_COMP_opnd,	/* roundmemindexx[4] */
                    ISA_PRINT_COMP_opnd+1,	/* roundmemindexx[5] */
                    ISA_PRINT_COMP_result,	/* roundmemindexx[6] */
                    ISA_PRINT_COMP_end },	/* roundmemindexx[7] */
  { "%s %s,%s,%s,%s",  ISA_PRINT_COMP_name,	/* avxrounds[0] */
                    ISA_PRINT_COMP_opnd+2,	/* avxrounds[1] */
                    ISA_PRINT_COMP_opnd+1,	/* avxrounds[2] */
                    ISA_PRINT_COMP_opnd,	/* avxrounds[3] */
                    ISA_PRINT_COMP_result,	/* avxrounds[4] */
                    ISA_PRINT_COMP_end },	/* avxrounds[5] */
  { "%s %s,%s%s(%s),%s,%s",  ISA_PRINT_COMP_name,	/* avxroundsmem[0] */
                    ISA_PRINT_COMP_opnd+3,	/* avxroundsmem[1] */
                    ISA_PRINT_COMP_segment,	/* avxroundsmem[2] */
                    ISA_PRINT_COMP_opnd+2,	/* avxroundsmem[3] */
                    ISA_PRINT_COMP_opnd+1,	/* avxroundsmem[4] */
                    ISA_PRINT_COMP_opnd,	/* avxroundsmem[5] */
                    ISA_PRINT_COMP_result,	/* avxroundsmem[6] */
                    ISA_PRINT_COMP_end },	/* avxroundsmem[7] */
  { "%s %s,%s%s(%s,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* avxroundsmemindex[0] */
                    ISA_PRINT_COMP_opnd+5,	/* avxroundsmemindex[1] */
                    ISA_PRINT_COMP_segment,	/* avxroundsmemindex[2] */
                    ISA_PRINT_COMP_opnd+4,	/* avxroundsmemindex[3] */
                    ISA_PRINT_COMP_opnd+1,	/* avxroundsmemindex[4] */
                    ISA_PRINT_COMP_opnd+2,	/* avxroundsmemindex[5] */
                    ISA_PRINT_COMP_opnd+3,	/* avxroundsmemindex[6] */
                    ISA_PRINT_COMP_opnd,	/* avxroundsmemindex[7] */
                    ISA_PRINT_COMP_result,	/* avxroundsmemindex[8] */
                    ISA_PRINT_COMP_end },	/* avxroundsmemindex[9] */
  { "%s %s,%s%s(,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* avxroundsmemindexx[0] */
                    ISA_PRINT_COMP_opnd+4,	/* avxroundsmemindexx[1] */
                    ISA_PRINT_COMP_segment,	/* avxroundsmemindexx[2] */
                    ISA_PRINT_COMP_opnd+3,	/* avxroundsmemindexx[3] */
                    ISA_PRINT_COMP_opnd+1,	/* avxroundsmemindexx[4] */
                    ISA_PRINT_COMP_opnd+2,	/* avxroundsmemindexx[5] */
                    ISA_PRINT_COMP_opnd,	/* avxroundsmemindexx[6] */
                    ISA_PRINT_COMP_result,	/* avxroundsmemindexx[7] */
                    ISA_PRINT_COMP_end },	/* avxroundsmemindexx[8] */
  { "%s %s,%s,%s",  ISA_PRINT_COMP_name,	/* pcmpestr[0] */
                    ISA_PRINT_COMP_opnd+4,	/* pcmpestr[1] */
                    ISA_PRINT_COMP_opnd+2,	/* pcmpestr[2] */
                    ISA_PRINT_COMP_opnd,	/* pcmpestr[3] */
                    ISA_PRINT_COMP_end },	/* pcmpestr[4] */
  { "%s %s,%s%s(%s),%s",  ISA_PRINT_COMP_name,	/* pcmpestrmem[0] */
                    ISA_PRINT_COMP_opnd+5,	/* pcmpestrmem[1] */
                    ISA_PRINT_COMP_segment,	/* pcmpestrmem[2] */
                    ISA_PRINT_COMP_opnd+3,	/* pcmpestrmem[3] */
                    ISA_PRINT_COMP_opnd+2,	/* pcmpestrmem[4] */
                    ISA_PRINT_COMP_opnd,	/* pcmpestrmem[5] */
                    ISA_PRINT_COMP_end },	/* pcmpestrmem[6] */
  { "%s %s,%s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* pcmpestrmemindex[0] */
                    ISA_PRINT_COMP_opnd+7,	/* pcmpestrmemindex[1] */
                    ISA_PRINT_COMP_segment,	/* pcmpestrmemindex[2] */
                    ISA_PRINT_COMP_opnd+5,	/* pcmpestrmemindex[3] */
                    ISA_PRINT_COMP_opnd+2,	/* pcmpestrmemindex[4] */
                    ISA_PRINT_COMP_opnd+3,	/* pcmpestrmemindex[5] */
                    ISA_PRINT_COMP_opnd+4,	/* pcmpestrmemindex[6] */
                    ISA_PRINT_COMP_opnd,	/* pcmpestrmemindex[7] */
                    ISA_PRINT_COMP_end },	/* pcmpestrmemindex[8] */
  { "%s %s,%s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* pcmpestrmemindexx[0] */
                    ISA_PRINT_COMP_opnd+6,	/* pcmpestrmemindexx[1] */
                    ISA_PRINT_COMP_segment,	/* pcmpestrmemindexx[2] */
                    ISA_PRINT_COMP_opnd+4,	/* pcmpestrmemindexx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* pcmpestrmemindexx[4] */
                    ISA_PRINT_COMP_opnd+3,	/* pcmpestrmemindexx[5] */
                    ISA_PRINT_COMP_opnd,	/* pcmpestrmemindexx[6] */
                    ISA_PRINT_COMP_end },	/* pcmpestrmemindexx[7] */
  { "%s %s,%s,%s",  ISA_PRINT_COMP_name,	/* pcmpistr[0] */
                    ISA_PRINT_COMP_opnd+2,	/* pcmpistr[1] */
                    ISA_PRINT_COMP_opnd+1,	/* pcmpistr[2] */
                    ISA_PRINT_COMP_opnd,	/* pcmpistr[3] */
                    ISA_PRINT_COMP_end },	/* pcmpistr[4] */
  { "%s %s,%s%s(%s),%s",  ISA_PRINT_COMP_name,	/* pcmpistrmem[0] */
                    ISA_PRINT_COMP_opnd+3,	/* pcmpistrmem[1] */
                    ISA_PRINT_COMP_segment,	/* pcmpistrmem[2] */
                    ISA_PRINT_COMP_opnd+2,	/* pcmpistrmem[3] */
                    ISA_PRINT_COMP_opnd+1,	/* pcmpistrmem[4] */
                    ISA_PRINT_COMP_opnd,	/* pcmpistrmem[5] */
                    ISA_PRINT_COMP_end },	/* pcmpistrmem[6] */
  { "%s %s,%s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* pcmpistrmemindex[0] */
                    ISA_PRINT_COMP_opnd+5,	/* pcmpistrmemindex[1] */
                    ISA_PRINT_COMP_segment,	/* pcmpistrmemindex[2] */
                    ISA_PRINT_COMP_opnd+4,	/* pcmpistrmemindex[3] */
                    ISA_PRINT_COMP_opnd+1,	/* pcmpistrmemindex[4] */
                    ISA_PRINT_COMP_opnd+2,	/* pcmpistrmemindex[5] */
                    ISA_PRINT_COMP_opnd+3,	/* pcmpistrmemindex[6] */
                    ISA_PRINT_COMP_opnd,	/* pcmpistrmemindex[7] */
                    ISA_PRINT_COMP_end },	/* pcmpistrmemindex[8] */
  { "%s %s,%s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* pcmpistrmemindexx[0] */
                    ISA_PRINT_COMP_opnd+4,	/* pcmpistrmemindexx[1] */
                    ISA_PRINT_COMP_segment,	/* pcmpistrmemindexx[2] */
                    ISA_PRINT_COMP_opnd+3,	/* pcmpistrmemindexx[3] */
                    ISA_PRINT_COMP_opnd+1,	/* pcmpistrmemindexx[4] */
                    ISA_PRINT_COMP_opnd+2,	/* pcmpistrmemindexx[5] */
                    ISA_PRINT_COMP_opnd,	/* pcmpistrmemindexx[6] */
                    ISA_PRINT_COMP_end },	/* pcmpistrmemindexx[7] */
  { "%s %s",        ISA_PRINT_COMP_name,	/* op0[0] */
                    ISA_PRINT_COMP_opnd,	/* op0[1] */
                    ISA_PRINT_COMP_end },	/* op0[2] */
  { "%s %s%s(%s)",  ISA_PRINT_COMP_name,	/* opop[0] */
                    ISA_PRINT_COMP_segment,	/* opop[1] */
                    ISA_PRINT_COMP_opnd+1,	/* opop[2] */
                    ISA_PRINT_COMP_opnd,	/* opop[3] */
                    ISA_PRINT_COMP_end },	/* opop[4] */
  { "%s %s(%s,%s,%s)",  ISA_PRINT_COMP_name,	/* opopopop[0] */
                    ISA_PRINT_COMP_opnd+3,	/* opopopop[1] */
                    ISA_PRINT_COMP_opnd,	/* opopopop[2] */
                    ISA_PRINT_COMP_opnd+1,	/* opopopop[3] */
                    ISA_PRINT_COMP_opnd+2,	/* opopopop[4] */
                    ISA_PRINT_COMP_end },	/* opopopop[5] */
  { "%s %s(,%s,%s)",  ISA_PRINT_COMP_name,	/* opopop[0] */
                    ISA_PRINT_COMP_opnd+2,	/* opopop[1] */
                    ISA_PRINT_COMP_opnd,	/* opopop[2] */
                    ISA_PRINT_COMP_opnd+1,	/* opopop[3] */
                    ISA_PRINT_COMP_end },	/* opopop[4] */
  { "%s %s",        ISA_PRINT_COMP_name,	/* opop[0] */
                    ISA_PRINT_COMP_opnd+1,	/* opop[1] */
                    ISA_PRINT_COMP_opnd,	/* opop[2] */
                    ISA_PRINT_COMP_end },	/* opop[3] */
  { "%s %s",        ISA_PRINT_COMP_name,	/* r[0] */
                    ISA_PRINT_COMP_result,	/* r[1] */
                    ISA_PRINT_COMP_end },	/* r[2] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* rr[0] */
                    ISA_PRINT_COMP_result,	/* rr[1] */
                    ISA_PRINT_COMP_result,	/* rr[2] */
                    ISA_PRINT_COMP_end },	/* rr[3] */
  { "%s %s,%s,%s",  ISA_PRINT_COMP_name,	/* vrr[0] */
                    ISA_PRINT_COMP_result,	/* vrr[1] */
                    ISA_PRINT_COMP_result,	/* vrr[2] */
                    ISA_PRINT_COMP_result,	/* vrr[3] */
                    ISA_PRINT_COMP_end },	/* vrr[4] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* rop[0] */
                    ISA_PRINT_COMP_opnd,	/* rop[1] */
                    ISA_PRINT_COMP_result,	/* rop[2] */
                    ISA_PRINT_COMP_end },	/* rop[3] */
  { "%s %s%s(%s),%s",  ISA_PRINT_COMP_name,	/* rmem[0] */
                    ISA_PRINT_COMP_segment,	/* rmem[1] */
                    ISA_PRINT_COMP_opnd+1,	/* rmem[2] */
                    ISA_PRINT_COMP_opnd,	/* rmem[3] */
                    ISA_PRINT_COMP_result,	/* rmem[4] */
                    ISA_PRINT_COMP_end },	/* rmem[5] */
  { "%s %s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* rmemindex[0] */
                    ISA_PRINT_COMP_opnd+3,	/* rmemindex[1] */
                    ISA_PRINT_COMP_opnd,	/* rmemindex[2] */
                    ISA_PRINT_COMP_opnd+1,	/* rmemindex[3] */
                    ISA_PRINT_COMP_opnd+2,	/* rmemindex[4] */
                    ISA_PRINT_COMP_result,	/* rmemindex[5] */
                    ISA_PRINT_COMP_end },	/* rmemindex[6] */
  { "%s %s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* rmemindexx[0] */
                    ISA_PRINT_COMP_opnd+2,	/* rmemindexx[1] */
                    ISA_PRINT_COMP_opnd,	/* rmemindexx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* rmemindexx[3] */
                    ISA_PRINT_COMP_result,	/* rmemindexx[4] */
                    ISA_PRINT_COMP_end },	/* rmemindexx[5] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* opop1[0] */
                    ISA_PRINT_COMP_opnd,	/* opop1[1] */
                    ISA_PRINT_COMP_opnd+1,	/* opop1[2] */
                    ISA_PRINT_COMP_end },	/* opop1[3] */
  { "%s %s%s(%s),%s",  ISA_PRINT_COMP_name,	/* load[0] */
                    ISA_PRINT_COMP_segment,	/* load[1] */
                    ISA_PRINT_COMP_opnd+1,	/* load[2] */
                    ISA_PRINT_COMP_opnd,	/* load[3] */
                    ISA_PRINT_COMP_result,	/* load[4] */
                    ISA_PRINT_COMP_end },	/* load[5] */
  { "%s %s(%s,%s,%s), %s",  ISA_PRINT_COMP_name,	/* leax[0] */
                    ISA_PRINT_COMP_opnd+3,	/* leax[1] */
                    ISA_PRINT_COMP_opnd,	/* leax[2] */
                    ISA_PRINT_COMP_opnd+1,	/* leax[3] */
                    ISA_PRINT_COMP_opnd+2,	/* leax[4] */
                    ISA_PRINT_COMP_result,	/* leax[5] */
                    ISA_PRINT_COMP_end },	/* leax[6] */
  { "%s %s(,%s,%s), %s",  ISA_PRINT_COMP_name,	/* leaxx[0] */
                    ISA_PRINT_COMP_opnd+2,	/* leaxx[1] */
                    ISA_PRINT_COMP_opnd,	/* leaxx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* leaxx[3] */
                    ISA_PRINT_COMP_result,	/* leaxx[4] */
                    ISA_PRINT_COMP_end },	/* leaxx[5] */
  { "%s %s%s(%s,%s,%s), %s",  ISA_PRINT_COMP_name,	/* ldx[0] */
                    ISA_PRINT_COMP_segment,	/* ldx[1] */
                    ISA_PRINT_COMP_opnd+1,	/* ldx[2] */
                    ISA_PRINT_COMP_opnd,	/* ldx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* ldx[4] */
                    ISA_PRINT_COMP_opnd+3,	/* ldx[5] */
                    ISA_PRINT_COMP_result,	/* ldx[6] */
                    ISA_PRINT_COMP_end },	/* ldx[7] */
  { "%s %s%s(,%s,%s), %s",  ISA_PRINT_COMP_name,	/* ldxx[0] */
                    ISA_PRINT_COMP_segment,	/* ldxx[1] */
                    ISA_PRINT_COMP_opnd+2,	/* ldxx[2] */
                    ISA_PRINT_COMP_opnd,	/* ldxx[3] */
                    ISA_PRINT_COMP_opnd+1,	/* ldxx[4] */
                    ISA_PRINT_COMP_result,	/* ldxx[5] */
                    ISA_PRINT_COMP_end },	/* ldxx[6] */
  { "%s %s,%s%s(%s,%s,%s)",  ISA_PRINT_COMP_name,	/* storex[0] */
                    ISA_PRINT_COMP_opnd,	/* storex[1] */
                    ISA_PRINT_COMP_segment,	/* storex[2] */
                    ISA_PRINT_COMP_opnd+2,	/* storex[3] */
                    ISA_PRINT_COMP_opnd+1,	/* storex[4] */
                    ISA_PRINT_COMP_opnd+3,	/* storex[5] */
                    ISA_PRINT_COMP_opnd+4,	/* storex[6] */
                    ISA_PRINT_COMP_end },	/* storex[7] */
  { "%s %%gs:%s,%s",  ISA_PRINT_COMP_name,	/* load_gs_seg_off[0] */
                    ISA_PRINT_COMP_result,	/* load_gs_seg_off[1] */
                    ISA_PRINT_COMP_opnd,	/* load_gs_seg_off[2] */
                    ISA_PRINT_COMP_end },	/* load_gs_seg_off[3] */
  { "%s %%fs:%s,%s",  ISA_PRINT_COMP_name,	/* load_fs_seg_off[0] */
                    ISA_PRINT_COMP_result,	/* load_fs_seg_off[1] */
                    ISA_PRINT_COMP_opnd,	/* load_fs_seg_off[2] */
                    ISA_PRINT_COMP_end },	/* load_fs_seg_off[3] */
  { "%s %s,%s%s(,%s,%s)",  ISA_PRINT_COMP_name,	/* storexx[0] */
                    ISA_PRINT_COMP_opnd,	/* storexx[1] */
                    ISA_PRINT_COMP_segment,	/* storexx[2] */
                    ISA_PRINT_COMP_opnd+3,	/* storexx[3] */
                    ISA_PRINT_COMP_opnd+1,	/* storexx[4] */
                    ISA_PRINT_COMP_opnd+2,	/* storexx[5] */
                    ISA_PRINT_COMP_end },	/* storexx[6] */
  { "%s %s%s(%s)",  ISA_PRINT_COMP_name,	/* prefetch[0] */
                    ISA_PRINT_COMP_segment,	/* prefetch[1] */
                    ISA_PRINT_COMP_opnd+2,	/* prefetch[2] */
                    ISA_PRINT_COMP_opnd+1,	/* prefetch[3] */
                    ISA_PRINT_COMP_end },	/* prefetch[4] */
  { "%s %s%s(%s,%s,%s)",  ISA_PRINT_COMP_name,	/* prefetchx[0] */
                    ISA_PRINT_COMP_segment,	/* prefetchx[1] */
                    ISA_PRINT_COMP_opnd+2,	/* prefetchx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* prefetchx[3] */
                    ISA_PRINT_COMP_opnd+3,	/* prefetchx[4] */
                    ISA_PRINT_COMP_opnd+4,	/* prefetchx[5] */
                    ISA_PRINT_COMP_end },	/* prefetchx[6] */
  { "%s %s%s(,%s,%s)",  ISA_PRINT_COMP_name,	/* prefetchxx[0] */
                    ISA_PRINT_COMP_segment,	/* prefetchxx[1] */
                    ISA_PRINT_COMP_opnd+3,	/* prefetchxx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* prefetchxx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* prefetchxx[4] */
                    ISA_PRINT_COMP_end },	/* prefetchxx[5] */
  { "%s %s,%s%s(%s)",  ISA_PRINT_COMP_name,	/* store[0] */
                    ISA_PRINT_COMP_opnd,	/* store[1] */
                    ISA_PRINT_COMP_segment,	/* store[2] */
                    ISA_PRINT_COMP_opnd+2,	/* store[3] */
                    ISA_PRINT_COMP_opnd+1,	/* store[4] */
                    ISA_PRINT_COMP_end },	/* store[5] */
  { "%s %s%s(%s),%s,%s",  ISA_PRINT_COMP_name,	/* vmaskload[0] */
                    ISA_PRINT_COMP_segment,	/* vmaskload[1] */
                    ISA_PRINT_COMP_opnd+2,	/* vmaskload[2] */
                    ISA_PRINT_COMP_opnd+1,	/* vmaskload[3] */
                    ISA_PRINT_COMP_opnd,	/* vmaskload[4] */
                    ISA_PRINT_COMP_result,	/* vmaskload[5] */
                    ISA_PRINT_COMP_end },	/* vmaskload[6] */
  { "%s %s%s(%s,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* vmaskloadindex[0] */
                    ISA_PRINT_COMP_segment,	/* vmaskloadindex[1] */
                    ISA_PRINT_COMP_opnd+4,	/* vmaskloadindex[2] */
                    ISA_PRINT_COMP_opnd+1,	/* vmaskloadindex[3] */
                    ISA_PRINT_COMP_opnd+2,	/* vmaskloadindex[4] */
                    ISA_PRINT_COMP_opnd+3,	/* vmaskloadindex[5] */
                    ISA_PRINT_COMP_opnd,	/* vmaskloadindex[6] */
                    ISA_PRINT_COMP_result,	/* vmaskloadindex[7] */
                    ISA_PRINT_COMP_end },	/* vmaskloadindex[8] */
  { "%s %s%s(,%s,%s),%s,%s",  ISA_PRINT_COMP_name,	/* vmaskloadindexx[0] */
                    ISA_PRINT_COMP_segment,	/* vmaskloadindexx[1] */
                    ISA_PRINT_COMP_opnd+3,	/* vmaskloadindexx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* vmaskloadindexx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* vmaskloadindexx[4] */
                    ISA_PRINT_COMP_opnd,	/* vmaskloadindexx[5] */
                    ISA_PRINT_COMP_result,	/* vmaskloadindexx[6] */
                    ISA_PRINT_COMP_end },	/* vmaskloadindexx[7] */
  { "%s %s,%s,%s%s(%s)",  ISA_PRINT_COMP_name,	/* vmaskstore[0] */
                    ISA_PRINT_COMP_opnd,	/* vmaskstore[1] */
                    ISA_PRINT_COMP_opnd+1,	/* vmaskstore[2] */
                    ISA_PRINT_COMP_segment,	/* vmaskstore[3] */
                    ISA_PRINT_COMP_opnd+3,	/* vmaskstore[4] */
                    ISA_PRINT_COMP_opnd+2,	/* vmaskstore[5] */
                    ISA_PRINT_COMP_end },	/* vmaskstore[6] */
  { "%s %s,%s,%s%s(%s,%s,%s)",  ISA_PRINT_COMP_name,	/* vmaskstoreindex[0] */
                    ISA_PRINT_COMP_opnd,	/* vmaskstoreindex[1] */
                    ISA_PRINT_COMP_opnd+1,	/* vmaskstoreindex[2] */
                    ISA_PRINT_COMP_segment,	/* vmaskstoreindex[3] */
                    ISA_PRINT_COMP_opnd+5,	/* vmaskstoreindex[4] */
                    ISA_PRINT_COMP_opnd+2,	/* vmaskstoreindex[5] */
                    ISA_PRINT_COMP_opnd+3,	/* vmaskstoreindex[6] */
                    ISA_PRINT_COMP_opnd+4,	/* vmaskstoreindex[7] */
                    ISA_PRINT_COMP_end },	/* vmaskstoreindex[8] */
  { "%s %s,%s,%s%s(,%s,%s)",  ISA_PRINT_COMP_name,	/* vmaskstoreindexx[0] */
                    ISA_PRINT_COMP_opnd,	/* vmaskstoreindexx[1] */
                    ISA_PRINT_COMP_opnd+1,	/* vmaskstoreindexx[2] */
                    ISA_PRINT_COMP_segment,	/* vmaskstoreindexx[3] */
                    ISA_PRINT_COMP_opnd+4,	/* vmaskstoreindexx[4] */
                    ISA_PRINT_COMP_opnd+2,	/* vmaskstoreindexx[5] */
                    ISA_PRINT_COMP_opnd+3,	/* vmaskstoreindexx[6] */
                    ISA_PRINT_COMP_end },	/* vmaskstoreindexx[7] */
  { "lock %s %s,%s%s(%s)",  ISA_PRINT_COMP_name,	/* rmw[0] */
                    ISA_PRINT_COMP_opnd,	/* rmw[1] */
                    ISA_PRINT_COMP_segment,	/* rmw[2] */
                    ISA_PRINT_COMP_opnd+2,	/* rmw[3] */
                    ISA_PRINT_COMP_opnd+1,	/* rmw[4] */
                    ISA_PRINT_COMP_end },	/* rmw[5] */
  { "lock %s %s%s(%s),%s",  ISA_PRINT_COMP_name,	/* xchg[0] */
                    ISA_PRINT_COMP_segment,	/* xchg[1] */
                    ISA_PRINT_COMP_opnd+2,	/* xchg[2] */
                    ISA_PRINT_COMP_opnd+1,	/* xchg[3] */
                    ISA_PRINT_COMP_result,	/* xchg[4] */
                    ISA_PRINT_COMP_opnd,	/* xchg[5] */
                    ISA_PRINT_COMP_end },	/* xchg[6] */
  { "lock %s %s,%s%s(%s)",  ISA_PRINT_COMP_name,	/* cmpxchg[0] */
                    ISA_PRINT_COMP_opnd+1,	/* cmpxchg[1] */
                    ISA_PRINT_COMP_segment,	/* cmpxchg[2] */
                    ISA_PRINT_COMP_opnd+3,	/* cmpxchg[3] */
                    ISA_PRINT_COMP_opnd+2,	/* cmpxchg[4] */
                    ISA_PRINT_COMP_end },	/* cmpxchg[5] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* unpck[0] */
                    ISA_PRINT_COMP_opnd+1,	/* unpck[1] */
                    ISA_PRINT_COMP_result,	/* unpck[2] */
                    ISA_PRINT_COMP_end },	/* unpck[3] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* vmovmsk[0] */
                    ISA_PRINT_COMP_opnd,	/* vmovmsk[1] */
                    ISA_PRINT_COMP_result,	/* vmovmsk[2] */
                    ISA_PRINT_COMP_end },	/* vmovmsk[3] */
  { "%s %s,%s,%s",  ISA_PRINT_COMP_name,	/* shuffle[0] */
                    ISA_PRINT_COMP_opnd+2,	/* shuffle[1] */
                    ISA_PRINT_COMP_opnd+1,	/* shuffle[2] */
                    ISA_PRINT_COMP_result,	/* shuffle[3] */
                    ISA_PRINT_COMP_end },	/* shuffle[4] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* pshufb[0] */
                    ISA_PRINT_COMP_opnd+1,	/* pshufb[1] */
                    ISA_PRINT_COMP_opnd,	/* pshufb[2] */
                    ISA_PRINT_COMP_result,	/* pshufb[3] */
                    ISA_PRINT_COMP_end },	/* pshufb[4] */
  { "%s %s%s(%s),%s",  ISA_PRINT_COMP_name,	/* pshufb_mem[0] */
                    ISA_PRINT_COMP_segment,	/* pshufb_mem[1] */
                    ISA_PRINT_COMP_opnd+2,	/* pshufb_mem[2] */
                    ISA_PRINT_COMP_opnd+1,	/* pshufb_mem[3] */
                    ISA_PRINT_COMP_opnd,	/* pshufb_mem[4] */
                    ISA_PRINT_COMP_result,	/* pshufb_mem[5] */
                    ISA_PRINT_COMP_end },	/* pshufb_mem[6] */
  { "%s %s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* pshufb_memindex[0] */
                    ISA_PRINT_COMP_segment,	/* pshufb_memindex[1] */
                    ISA_PRINT_COMP_opnd+4,	/* pshufb_memindex[2] */
                    ISA_PRINT_COMP_opnd+1,	/* pshufb_memindex[3] */
                    ISA_PRINT_COMP_opnd+2,	/* pshufb_memindex[4] */
                    ISA_PRINT_COMP_opnd+3,	/* pshufb_memindex[5] */
                    ISA_PRINT_COMP_opnd,	/* pshufb_memindex[6] */
                    ISA_PRINT_COMP_result,	/* pshufb_memindex[7] */
                    ISA_PRINT_COMP_end },	/* pshufb_memindex[8] */
  { "%s %s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* pshufb_memindexx[0] */
                    ISA_PRINT_COMP_segment,	/* pshufb_memindexx[1] */
                    ISA_PRINT_COMP_opnd+3,	/* pshufb_memindexx[2] */
                    ISA_PRINT_COMP_opnd+1,	/* pshufb_memindexx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* pshufb_memindexx[4] */
                    ISA_PRINT_COMP_opnd,	/* pshufb_memindexx[5] */
                    ISA_PRINT_COMP_result,	/* pshufb_memindexx[6] */
                    ISA_PRINT_COMP_end },	/* pshufb_memindexx[7] */
  { "%s %s,%s,%s",  ISA_PRINT_COMP_name,	/* shuffle_int[0] */
                    ISA_PRINT_COMP_opnd+1,	/* shuffle_int[1] */
                    ISA_PRINT_COMP_opnd,	/* shuffle_int[2] */
                    ISA_PRINT_COMP_result,	/* shuffle_int[3] */
                    ISA_PRINT_COMP_end },	/* shuffle_int[4] */
  { "%s %s,%s",     ISA_PRINT_COMP_name,	/* shift_packed[0] */
                    ISA_PRINT_COMP_opnd+1,	/* shift_packed[1] */
                    ISA_PRINT_COMP_result,	/* shift_packed[2] */
                    ISA_PRINT_COMP_end },	/* shift_packed[3] */
  { "%s %s, %s, %s, %s",  ISA_PRINT_COMP_name,	/* ndstvecreg[0] */
                    ISA_PRINT_COMP_opnd+2,	/* ndstvecreg[1] */
                    ISA_PRINT_COMP_opnd+1,	/* ndstvecreg[2] */
                    ISA_PRINT_COMP_opnd,	/* ndstvecreg[3] */
                    ISA_PRINT_COMP_result,	/* ndstvecreg[4] */
                    ISA_PRINT_COMP_end },	/* ndstvecreg[5] */
  { "%s %s %s(%s), %s, %s, %s",  ISA_PRINT_COMP_name,	/* ndstvecregx[0] */
                    ISA_PRINT_COMP_segment,	/* ndstvecregx[1] */
                    ISA_PRINT_COMP_opnd+3,	/* ndstvecregx[2] */
                    ISA_PRINT_COMP_opnd+2,	/* ndstvecregx[3] */
                    ISA_PRINT_COMP_opnd+1,	/* ndstvecregx[4] */
                    ISA_PRINT_COMP_opnd,	/* ndstvecregx[5] */
                    ISA_PRINT_COMP_result,	/* ndstvecregx[6] */
                    ISA_PRINT_COMP_end },	/* ndstvecregx[7] */
  { "%s %s %s(%s,%s,%s), %s, %s, %s",  ISA_PRINT_COMP_name,	/* ndestvecregxx[0] */
                    ISA_PRINT_COMP_segment,	/* ndestvecregxx[1] */
                    ISA_PRINT_COMP_opnd+5,	/* ndestvecregxx[2] */
                    ISA_PRINT_COMP_opnd+2,	/* ndestvecregxx[3] */
                    ISA_PRINT_COMP_opnd+3,	/* ndestvecregxx[4] */
                    ISA_PRINT_COMP_opnd+4,	/* ndestvecregxx[5] */
                    ISA_PRINT_COMP_opnd+1,	/* ndestvecregxx[6] */
                    ISA_PRINT_COMP_opnd,	/* ndestvecregxx[7] */
                    ISA_PRINT_COMP_result,	/* ndestvecregxx[8] */
                    ISA_PRINT_COMP_end },	/* ndestvecregxx[9] */
  { "%s %s %s(,%s,%s), %s, %s, %s",  ISA_PRINT_COMP_name,	/* ndestvecregxxx[0] */
                    ISA_PRINT_COMP_segment,	/* ndestvecregxxx[1] */
                    ISA_PRINT_COMP_opnd+4,	/* ndestvecregxxx[2] */
                    ISA_PRINT_COMP_opnd+2,	/* ndestvecregxxx[3] */
                    ISA_PRINT_COMP_opnd+3,	/* ndestvecregxxx[4] */
                    ISA_PRINT_COMP_opnd+1,	/* ndestvecregxxx[5] */
                    ISA_PRINT_COMP_opnd,	/* ndestvecregxxx[6] */
                    ISA_PRINT_COMP_result,	/* ndestvecregxxx[7] */
                    ISA_PRINT_COMP_end },	/* ndestvecregxxx[8] */
  { "%s %s %s, %s(%s), %s, %s",  ISA_PRINT_COMP_name,	/* ndstvecregxr[0] */
                    ISA_PRINT_COMP_segment,	/* ndstvecregxr[1] */
                    ISA_PRINT_COMP_opnd+3,	/* ndstvecregxr[2] */
                    ISA_PRINT_COMP_opnd+2,	/* ndstvecregxr[3] */
                    ISA_PRINT_COMP_opnd+1,	/* ndstvecregxr[4] */
                    ISA_PRINT_COMP_opnd,	/* ndstvecregxr[5] */
                    ISA_PRINT_COMP_result,	/* ndstvecregxr[6] */
                    ISA_PRINT_COMP_end },	/* ndstvecregxr[7] */
  { "%s %s %s, %s(%s,%s,%s), %s, %s",  ISA_PRINT_COMP_name,	/* ndestvecregxxr[0] */
                    ISA_PRINT_COMP_segment,	/* ndestvecregxxr[1] */
                    ISA_PRINT_COMP_opnd+5,	/* ndestvecregxxr[2] */
                    ISA_PRINT_COMP_opnd+4,	/* ndestvecregxxr[3] */
                    ISA_PRINT_COMP_opnd+1,	/* ndestvecregxxr[4] */
                    ISA_PRINT_COMP_opnd+2,	/* ndestvecregxxr[5] */
                    ISA_PRINT_COMP_opnd+3,	/* ndestvecregxxr[6] */
                    ISA_PRINT_COMP_opnd,	/* ndestvecregxxr[7] */
                    ISA_PRINT_COMP_result,	/* ndestvecregxxr[8] */
                    ISA_PRINT_COMP_end },	/* ndestvecregxxr[9] */
  { "%s %s %s, %s(,%s,%s), %s, %s",  ISA_PRINT_COMP_name,	/* ndestvecregxxxr[0] */
                    ISA_PRINT_COMP_segment,	/* ndestvecregxxxr[1] */
                    ISA_PRINT_COMP_opnd+4,	/* ndestvecregxxxr[2] */
                    ISA_PRINT_COMP_opnd+3,	/* ndestvecregxxxr[3] */
                    ISA_PRINT_COMP_opnd+1,	/* ndestvecregxxxr[4] */
                    ISA_PRINT_COMP_opnd+2,	/* ndestvecregxxxr[5] */
                    ISA_PRINT_COMP_opnd,	/* ndestvecregxxxr[6] */
                    ISA_PRINT_COMP_result,	/* ndestvecregxxxr[7] */
                    ISA_PRINT_COMP_end },	/* ndestvecregxxxr[8] */
  { "%s %s,%s,%s",  ISA_PRINT_COMP_name,	/* ifma_ropopop[0] */
                    ISA_PRINT_COMP_opnd+2,	/* ifma_ropopop[1] */
                    ISA_PRINT_COMP_opnd+1,	/* ifma_ropopop[2] */
                    ISA_PRINT_COMP_result,	/* ifma_ropopop[3] */
                    ISA_PRINT_COMP_opnd,	/* ifma_ropopop[4] */
                    ISA_PRINT_COMP_end },	/* ifma_ropopop[5] */
  { "%s %s,%s%s(%s),%s",  ISA_PRINT_COMP_name,	/* ifma_ropopmem[0] */
                    ISA_PRINT_COMP_opnd+1,	/* ifma_ropopmem[1] */
                    ISA_PRINT_COMP_segment,	/* ifma_ropopmem[2] */
                    ISA_PRINT_COMP_opnd+3,	/* ifma_ropopmem[3] */
                    ISA_PRINT_COMP_opnd+2,	/* ifma_ropopmem[4] */
                    ISA_PRINT_COMP_result,	/* ifma_ropopmem[5] */
                    ISA_PRINT_COMP_opnd,	/* ifma_ropopmem[6] */
                    ISA_PRINT_COMP_end },	/* ifma_ropopmem[7] */
  { "%s %s,%s%s(%s,%s,%s),%s",  ISA_PRINT_COMP_name,	/* ifma_ropopmemindex[0] */
                    ISA_PRINT_COMP_opnd+1,	/* ifma_ropopmemindex[1] */
                    ISA_PRINT_COMP_segment,	/* ifma_ropopmemindex[2] */
                    ISA_PRINT_COMP_opnd+5,	/* ifma_ropopmemindex[3] */
                    ISA_PRINT_COMP_opnd+2,	/* ifma_ropopmemindex[4] */
                    ISA_PRINT_COMP_opnd+3,	/* ifma_ropopmemindex[5] */
                    ISA_PRINT_COMP_opnd+4,	/* ifma_ropopmemindex[6] */
                    ISA_PRINT_COMP_result,	/* ifma_ropopmemindex[7] */
                    ISA_PRINT_COMP_opnd,	/* ifma_ropopmemindex[8] */
                    ISA_PRINT_COMP_end },	/* ifma_ropopmemindex[9] */
  { "%s %s,%s%s(,%s,%s),%s",  ISA_PRINT_COMP_name,	/* ifma_ropopmemindexx[0] */
                    ISA_PRINT_COMP_opnd+1,	/* ifma_ropopmemindexx[1] */
                    ISA_PRINT_COMP_segment,	/* ifma_ropopmemindexx[2] */
                    ISA_PRINT_COMP_opnd+4,	/* ifma_ropopmemindexx[3] */
                    ISA_PRINT_COMP_opnd+2,	/* ifma_ropopmemindexx[4] */
                    ISA_PRINT_COMP_opnd+3,	/* ifma_ropopmemindexx[5] */
                    ISA_PRINT_COMP_result,	/* ifma_ropopmemindexx[6] */
                    ISA_PRINT_COMP_opnd,	/* ifma_ropopmemindexx[7] */
                    ISA_PRINT_COMP_end },	/* ifma_ropopmemindexx[8] */
  { "%s %s%s(%s)",  ISA_PRINT_COMP_name,	/* stmxcsr[0] */
                    ISA_PRINT_COMP_segment,	/* stmxcsr[1] */
                    ISA_PRINT_COMP_opnd+1,	/* stmxcsr[2] */
                    ISA_PRINT_COMP_opnd,	/* stmxcsr[3] */
                    ISA_PRINT_COMP_end },	/* stmxcsr[4] */
  { "# %s\n\t.byte \t0x66\n\tleaq %s(%s), %%rdi\n\t.word \t0x6666\n\trex64\n\tcall %s",  ISA_PRINT_COMP_name,	/* tls_gd_64[0] */
                    ISA_PRINT_COMP_opnd,	/* tls_gd_64[1] */
                    ISA_PRINT_COMP_opnd+1,	/* tls_gd_64[2] */
                    ISA_PRINT_COMP_opnd+2,	/* tls_gd_64[3] */
                    ISA_PRINT_COMP_end },	/* tls_gd_64[4] */
  { "# %s\n\tleal %s(,%s,1), %%eax\n\tcall %s",  ISA_PRINT_COMP_name,	/* tls_gd_32[0] */
                    ISA_PRINT_COMP_opnd,	/* tls_gd_32[1] */
                    ISA_PRINT_COMP_opnd+1,	/* tls_gd_32[2] */
                    ISA_PRINT_COMP_opnd+2,	/* tls_gd_32[3] */
                    ISA_PRINT_COMP_end },	/* tls_gd_32[4] */
  { "# %s\n\tleaq %s(%s), %%rdi\n\tcall %s",  ISA_PRINT_COMP_name,	/* tls_ld_64[0] */
                    ISA_PRINT_COMP_opnd,	/* tls_ld_64[1] */
                    ISA_PRINT_COMP_opnd+1,	/* tls_ld_64[2] */
                    ISA_PRINT_COMP_opnd+2,	/* tls_ld_64[3] */
                    ISA_PRINT_COMP_end },	/* tls_ld_64[4] */
  { "# %s\n\tleal %s(%s), %%eax\n\tcall %s",  ISA_PRINT_COMP_name,	/* tls_ld_32[0] */
                    ISA_PRINT_COMP_opnd,	/* tls_ld_32[1] */
                    ISA_PRINT_COMP_opnd+1,	/* tls_ld_32[2] */
                    ISA_PRINT_COMP_opnd+2,	/* tls_ld_32[3] */
                    ISA_PRINT_COMP_end },	/* tls_ld_32[4] */
  { "%s",           ISA_PRINT_COMP_name,	/* no_rop[0] */
                    ISA_PRINT_COMP_end },	/* no_rop[1] */
};

const mUINT8 ISA_PRINT_info_index[3311] = {
   14,  /* add32: ropop */
   14,  /* adc32: ropop */
   14,  /* add64: ropop */
   15,  /* addx32: ropmem */
   16,  /* addxx32: ropmemindex */
   17,  /* addxxx32: ropmemindexx */
   15,  /* addx64: ropmem */
   16,  /* addxx64: ropmemindex */
   17,  /* addxxx64: ropmemindexx */
   14,  /* addi32: ropop */
   14,  /* adci32: ropop */
   14,  /* addi64: ropop */
   14,  /* add128v8: ropop */
   15,  /* addx128v8: ropmem */
   16,  /* addxx128v8: ropmemindex */
   17,  /* addxxx128v8: ropmemindexx */
   14,  /* add128v16: ropop */
   15,  /* addx128v16: ropmem */
   16,  /* addxx128v16: ropmemindex */
   17,  /* addxxx128v16: ropmemindexx */
   14,  /* add128v32: ropop */
   15,  /* addx128v32: ropmem */
   16,  /* addxx128v32: ropmemindex */
   17,  /* addxxx128v32: ropmemindexx */
   14,  /* add128v64: ropop */
   15,  /* addx128v64: ropmem */
   16,  /* addxx128v64: ropmemindex */
   17,  /* addxxx128v64: ropmemindexx */
   14,  /* add64v8: ropop */
   14,  /* add64v16: ropop */
   14,  /* add64v32: ropop */
   14,  /* paddsb: ropop */
   14,  /* paddsw: ropop */
   14,  /* paddq: ropop */
   14,  /* psubsb: ropop */
   14,  /* psubsw: ropop */
   14,  /* psubq: ropop */
   14,  /* paddusb: ropop */
   14,  /* paddusw: ropop */
   14,  /* psubusb: ropop */
   14,  /* psubusw: ropop */
   14,  /* pmullw: ropop */
   14,  /* pmulhw: ropop */
   14,  /* pmulhuw: ropop */
   14,  /* pmuludq: ropop */
   14,  /* pmaddwd: ropop */
   14,  /* paddsb128: ropop */
   14,  /* paddsw128: ropop */
   14,  /* paddq128: ropop */
   14,  /* psubsb128: ropop */
   14,  /* psubsw128: ropop */
   14,  /* psubq128: ropop */
   14,  /* paddusb128: ropop */
   14,  /* paddusw128: ropop */
   14,  /* psubusb128: ropop */
   14,  /* psubusw128: ropop */
   14,  /* pmullw128: ropop */
   14,  /* pmulhw128: ropop */
   14,  /* pmulhuw128: ropop */
   14,  /* pmuludq128: ropop */
   14,  /* pmaddwd128: ropop */
   14,  /* and8: ropop */
   14,  /* and16: ropop */
   14,  /* and32: ropop */
   15,  /* andx32: ropmem */
   16,  /* andxx32: ropmemindex */
   17,  /* andxxx32: ropmemindexx */
   14,  /* and64: ropop */
   15,  /* andx64: ropmem */
   16,  /* andxx64: ropmemindex */
   17,  /* andxxx64: ropmemindexx */
   15,  /* andx8: ropmem */
   15,  /* andx16: ropmem */
   16,  /* andxx8: ropmemindex */
   17,  /* andxxx8: ropmemindexx */
   16,  /* andxx16: ropmemindex */
   17,  /* andxxx16: ropmemindexx */
   14,  /* and128v8: ropop */
   15,  /* andx128v8: ropmem */
   16,  /* andxx128v8: ropmemindex */
   17,  /* andxxx128v8: ropmemindexx */
   14,  /* and128v16: ropop */
   15,  /* andx128v16: ropmem */
   16,  /* andxx128v16: ropmemindex */
   17,  /* andxxx128v16: ropmemindexx */
   14,  /* and128v32: ropop */
   15,  /* andx128v32: ropmem */
   16,  /* andxx128v32: ropmemindex */
   17,  /* andxxx128v32: ropmemindexx */
   14,  /* and128v64: ropop */
   15,  /* andx128v64: ropmem */
   16,  /* andxx128v64: ropmemindex */
   17,  /* andxxx128v64: ropmemindexx */
   14,  /* andi32: ropop */
   14,  /* andi64: ropop */
   56,  /* call: op0 */
   56,  /* icall: op0 */
   57,  /* icallx: opop */
   58,  /* icallxx: opopopop */
   59,  /* icallxxx: opopop */
    4,  /* cmp8: cmp */
    5,  /* cmpx8: cmpx */
    8,  /* cmpxx8: cmpxx */
   11,  /* cmpxxx8: cmpxxx */
    4,  /* cmp16: cmp */
    5,  /* cmpx16: cmpx */
    8,  /* cmpxx16: cmpxx */
   11,  /* cmpxxx16: cmpxxx */
    4,  /* cmp32: cmp */
    5,  /* cmpx32: cmpx */
    8,  /* cmpxx32: cmpxx */
   11,  /* cmpxxx32: cmpxxx */
    4,  /* cmp64: cmp */
    5,  /* cmpx64: cmpx */
    8,  /* cmpxx64: cmpxx */
   11,  /* cmpxxx64: cmpxxx */
    4,  /* cmpi8: cmp */
    6,  /* cmpxr8: cmpxr */
    7,  /* cmpxi8: cmpxi */
    9,  /* cmpxxr8: cmpxxr */
   10,  /* cmpxxi8: cmpxxi */
   12,  /* cmpxxxr8: cmpxxxr */
   13,  /* cmpxxxi8: cmpxxxi */
    4,  /* cmpi16: cmp */
    6,  /* cmpxr16: cmpxr */
    7,  /* cmpxi16: cmpxi */
    9,  /* cmpxxr16: cmpxxr */
   10,  /* cmpxxi16: cmpxxi */
   12,  /* cmpxxxr16: cmpxxxr */
   13,  /* cmpxxxi16: cmpxxxi */
    4,  /* cmpi32: cmp */
    6,  /* cmpxr32: cmpxr */
    7,  /* cmpxi32: cmpxi */
    9,  /* cmpxxr32: cmpxxr */
   10,  /* cmpxxi32: cmpxxi */
   12,  /* cmpxxxr32: cmpxxxr */
   13,  /* cmpxxxi32: cmpxxxi */
    4,  /* cmpi64: cmp */
    6,  /* cmpxr64: cmpxr */
    7,  /* cmpxi64: cmpxi */
    9,  /* cmpxxr64: cmpxxr */
   10,  /* cmpxxi64: cmpxxi */
   12,  /* cmpxxxr64: cmpxxxr */
   13,  /* cmpxxxi64: cmpxxxi */
   64,  /* cmovb: rop */
   64,  /* cmovae: rop */
   64,  /* cmovp: rop */
   64,  /* cmovnp: rop */
   64,  /* cmove: rop */
   64,  /* cmovne: rop */
   64,  /* cmovbe: rop */
   64,  /* cmova: rop */
   64,  /* cmovl: rop */
   64,  /* cmovge: rop */
   64,  /* cmovle: rop */
   64,  /* cmovg: rop */
   64,  /* cmovs: rop */
   64,  /* cmovns: rop */
    3,  /* div32: op2 */
    3,  /* div64: op2 */
  116,  /* enter: no_rop */
    3,  /* idiv32: op2 */
    3,  /* idiv64: op2 */
    1,  /* imul32: imul */
    2,  /* imulx32: op1 */
    1,  /* imul64: imul */
    1,  /* imuli32: imul */
    1,  /* imuli64: imul */
    2,  /* imulx64: op1 */
   14,  /* mul128v16: ropop */
   61,  /* inc8: r */
   61,  /* dec8: r */
   61,  /* inc16: r */
   61,  /* dec16: r */
   61,  /* inc32: r */
   61,  /* dec32: r */
   61,  /* inc64: r */
   61,  /* dec64: r */
   60,  /* jb: opop */
   60,  /* jae: opop */
   60,  /* jp: opop */
   60,  /* jnp: opop */
   60,  /* je: opop */
   60,  /* jne: opop */
   60,  /* jbe: opop */
   60,  /* ja: opop */
   60,  /* jl: opop */
   60,  /* jge: opop */
   60,  /* jle: opop */
   60,  /* jg: opop */
   60,  /* jcxz: opop */
   60,  /* jecxz: opop */
   60,  /* jrcxz: opop */
   60,  /* js: opop */
   60,  /* jns: opop */
   56,  /* jmp: op0 */
   56,  /* ijmp: op0 */
   57,  /* ijmpx: opop */
   58,  /* ijmpxx: opopopop */
   59,  /* ijmpxxx: opopop */
   69,  /* ld64: load */
   72,  /* ldx64: ldx */
   73,  /* ldxx64: ldxx */
   69,  /* ld64_2m: load */
   69,  /* ld64_2sse: load */
   69,  /* lea32: load */
   69,  /* lea64: load */
   70,  /* leax32: leax */
   70,  /* leax64: leax */
   71,  /* leaxx32: leaxx */
   71,  /* leaxx64: leaxx */
  116,  /* leave: no_rop */
   64,  /* ldc32: rop */
   64,  /* ldc64: rop */
    2,  /* mul32: op1 */
    2,  /* mulx64: op1 */
   64,  /* mov32: rop */
   64,  /* mov64: rop */
   64,  /* mov64_m: rop */
   64,  /* ld32_64_off: rop */
   64,  /* ld64_off: rop */
   68,  /* store64_off: opop1 */
   64,  /* ld8_32_n32: rop */
   64,  /* ldu8_32_n32: rop */
   64,  /* ld16_32_n32: rop */
   64,  /* ldu16_32_n32: rop */
   64,  /* ld32_n32: rop */
   64,  /* ldss_n32: rop */
   64,  /* ldsd_n32: rop */
   64,  /* ldaps_n32: rop */
   64,  /* ldapd_n32: rop */
   64,  /* ldups_n32: rop */
   64,  /* ldupd_n32: rop */
   64,  /* lddqa_n32: rop */
   64,  /* lddqu_n32: rop */
   64,  /* ldlps_n32: rop */
   64,  /* ldlpd_n32: rop */
   64,  /* ldhps_n32: rop */
   64,  /* ldhpd_n32: rop */
   64,  /* ld64_2m_n32: rop */
   64,  /* ld64_2sse_n32: rop */
   68,  /* store8_n32: opop1 */
   68,  /* store16_n32: opop1 */
   68,  /* store32_n32: opop1 */
   68,  /* stss_n32: opop1 */
   68,  /* stsd_n32: opop1 */
   68,  /* staps_n32: opop1 */
   68,  /* stapd_n32: opop1 */
   68,  /* stdqa_n32: opop1 */
   68,  /* stdqu_n32: opop1 */
   68,  /* stlps_n32: opop1 */
   68,  /* sthps_n32: opop1 */
   68,  /* stlpd_n32: opop1 */
   68,  /* sthpd_n32: opop1 */
   68,  /* store64_fm_n32: opop1 */
   68,  /* store64_fsse_n32: opop1 */
   75,  /* ld32_gs_seg_off: load_gs_seg_off */
   76,  /* ld64_fs_seg_off: load_fs_seg_off */
   64,  /* movsbl: rop */
   69,  /* ld8_32: load */
   72,  /* ldx8_32: ldx */
   73,  /* ldxx8_32: ldxx */
   64,  /* movzbl: rop */
   69,  /* ldu8_32: load */
   72,  /* ldxu8_32: ldx */
   73,  /* ldxxu8_32: ldxx */
   64,  /* movswl: rop */
   69,  /* ld16_32: load */
   72,  /* ldx16_32: ldx */
   73,  /* ldxx16_32: ldxx */
   64,  /* movzwl: rop */
   69,  /* ldu16_32: load */
   72,  /* ldxu16_32: ldx */
   73,  /* ldxxu16_32: ldxx */
   64,  /* movsbq: rop */
   69,  /* ld8_64: load */
   72,  /* ldx8_64: ldx */
   73,  /* ldxx8_64: ldxx */
   64,  /* ld8_64_off: rop */
   64,  /* movzbq: rop */
   69,  /* ldu8_64: load */
   72,  /* ldxu8_64: ldx */
   73,  /* ldxxu8_64: ldxx */
   64,  /* ldu8_64_off: rop */
   64,  /* movswq: rop */
   69,  /* ld16_64: load */
   72,  /* ldx16_64: ldx */
   73,  /* ldxx16_64: ldxx */
   64,  /* ld16_64_off: rop */
   64,  /* movzwq: rop */
   69,  /* ldu16_64: load */
   72,  /* ldxu16_64: ldx */
   73,  /* ldxxu16_64: ldxx */
   64,  /* ldu16_64_off: rop */
   64,  /* movslq: rop */
   69,  /* ld32_64: load */
   72,  /* ldx32_64: ldx */
   73,  /* ldxx32_64: ldxx */
   69,  /* ld32: load */
   72,  /* ldx32: ldx */
   73,  /* ldxx32: ldxx */
   64,  /* movzlq: rop */
   61,  /* neg8: r */
   61,  /* neg16: r */
   61,  /* neg32: r */
   61,  /* neg64: r */
   61,  /* not8: r */
   61,  /* not16: r */
   61,  /* not32: r */
   61,  /* not64: r */
   14,  /* or8: ropop */
   14,  /* or16: ropop */
   14,  /* or32: ropop */
   15,  /* orx32: ropmem */
   16,  /* orxx32: ropmemindex */
   17,  /* orxxx32: ropmemindexx */
   14,  /* or64: ropop */
   15,  /* orx64: ropmem */
   16,  /* orxx64: ropmemindex */
   17,  /* orxxx64: ropmemindexx */
   15,  /* orx8: ropmem */
   15,  /* orx16: ropmem */
   16,  /* orxx8: ropmemindex */
   17,  /* orxxx8: ropmemindexx */
   16,  /* orxx16: ropmemindex */
   17,  /* orxxx16: ropmemindexx */
   14,  /* or128v8: ropop */
   15,  /* orx128v8: ropmem */
   16,  /* orxx128v8: ropmemindex */
   17,  /* orxxx128v8: ropmemindexx */
   14,  /* or128v16: ropop */
   15,  /* orx128v16: ropmem */
   16,  /* orxx128v16: ropmemindex */
   17,  /* orxxx128v16: ropmemindexx */
   14,  /* or128v32: ropop */
   15,  /* orx128v32: ropmem */
   16,  /* orxx128v32: ropmemindex */
   17,  /* orxxx128v32: ropmemindexx */
   14,  /* or128v64: ropop */
   15,  /* orx128v64: ropmem */
   16,  /* orxx128v64: ropmemindex */
   17,  /* orxxx128v64: ropmemindexx */
   14,  /* ori32: ropop */
   14,  /* ori64: ropop */
   61,  /* popl: r */
   61,  /* popq: r */
   56,  /* pushl: op0 */
   56,  /* pushq: op0 */
  116,  /* ret: no_rop */
   56,  /* reti: op0 */
   14,  /* ror8: ropop */
   14,  /* ror16: ropop */
   14,  /* ror32: ropop */
   14,  /* ror64: ropop */
   14,  /* rori8: ropop */
   14,  /* rori16: ropop */
   14,  /* rori32: ropop */
   14,  /* rori64: ropop */
   14,  /* rol8: ropop */
   14,  /* rol16: ropop */
   14,  /* rol32: ropop */
   14,  /* rol64: ropop */
   14,  /* roli8: ropop */
   14,  /* roli16: ropop */
   14,  /* roli32: ropop */
   14,  /* roli64: ropop */
   78,  /* prefetch: prefetch */
   78,  /* prefetchw: prefetch */
   78,  /* prefetcht0: prefetch */
   78,  /* prefetcht1: prefetch */
   78,  /* prefetchnta: prefetch */
   79,  /* prefetchx: prefetchx */
   80,  /* prefetchxx: prefetchxx */
   79,  /* prefetchwx: prefetchx */
   80,  /* prefetchwxx: prefetchxx */
   79,  /* prefetcht0x: prefetchx */
   80,  /* prefetcht0xx: prefetchxx */
   79,  /* prefetcht1x: prefetchx */
   80,  /* prefetcht1xx: prefetchxx */
   79,  /* prefetchntax: prefetchx */
   80,  /* prefetchntaxx: prefetchxx */
   61,  /* setb: r */
   61,  /* setae: r */
   61,  /* setp: r */
   61,  /* setnp: r */
   61,  /* sete: r */
   61,  /* setne: r */
   61,  /* setbe: r */
   61,  /* seta: r */
   61,  /* setl: r */
   61,  /* setge: r */
   61,  /* setle: r */
   61,  /* setg: r */
   61,  /* setc: r */
   61,  /* seto: r */
   61,  /* sets: r */
   61,  /* setz: r */
   81,  /* store8: store */
   74,  /* storex8: storex */
   77,  /* storexx8: storexx */
   81,  /* store16: store */
   74,  /* storex16: storex */
   77,  /* storexx16: storexx */
   81,  /* store32: store */
   74,  /* storex32: storex */
   77,  /* storexx32: storexx */
   81,  /* store64: store */
   74,  /* storex64: storex */
   77,  /* storexx64: storexx */
   81,  /* store64_fm: store */
   81,  /* store64_fsse: store */
   81,  /* storenti32: store */
   74,  /* storentix32: storex */
   77,  /* storentixx32: storexx */
   81,  /* storenti64: store */
   74,  /* storentix64: storex */
   77,  /* storentixx64: storexx */
   81,  /* storenti128: store */
   14,  /* sar32: ropop */
   14,  /* sar64: ropop */
   14,  /* sari32: ropop */
   14,  /* sari64: ropop */
   14,  /* shl32: ropop */
   14,  /* shld32: ropop */
   22,  /* shldi32: ropopop */
   14,  /* shrd32: ropop */
   22,  /* shrdi32: ropopop */
   14,  /* shl64: ropop */
   14,  /* shli32: ropop */
   14,  /* shli64: ropop */
   14,  /* shr32: ropop */
   14,  /* shr64: ropop */
   14,  /* shri32: ropop */
   14,  /* shri64: ropop */
   14,  /* sub32: ropop */
   14,  /* sbb32: ropop */
   14,  /* sub64: ropop */
   15,  /* subx32: ropmem */
   15,  /* subx64: ropmem */
   16,  /* subxx32: ropmemindex */
   17,  /* subxxx32: ropmemindexx */
   16,  /* subxx64: ropmemindex */
   17,  /* subxxx64: ropmemindexx */
   14,  /* subi32: ropop */
   14,  /* sbbi32: ropop */
   14,  /* subi64: ropop */
   14,  /* sub128v8: ropop */
   15,  /* subx128v8: ropmem */
   16,  /* subxx128v8: ropmemindex */
   17,  /* subxxx128v8: ropmemindexx */
   14,  /* sub128v16: ropop */
   15,  /* subx128v16: ropmem */
   16,  /* subxx128v16: ropmemindex */
   17,  /* subxxx128v16: ropmemindexx */
   14,  /* sub128v32: ropop */
   15,  /* subx128v32: ropmem */
   16,  /* subxx128v32: ropmemindex */
   17,  /* subxxx128v32: ropmemindexx */
   14,  /* sub128v64: ropop */
   15,  /* subx128v64: ropmem */
   16,  /* subxx128v64: ropmemindex */
   17,  /* subxxx128v64: ropmemindexx */
   14,  /* sub64v8: ropop */
   14,  /* sub64v16: ropop */
   14,  /* sub64v32: ropop */
    4,  /* test32: cmp */
    5,  /* testx32: cmpx */
    8,  /* testxx32: cmpxx */
   11,  /* testxxx32: cmpxxx */
    4,  /* test64: cmp */
    5,  /* testx64: cmpx */
    8,  /* testxx64: cmpxx */
   11,  /* testxxx64: cmpxxx */
    4,  /* testi32: cmp */
    4,  /* testi64: cmp */
   14,  /* xor8: ropop */
   14,  /* xor16: ropop */
   14,  /* xor32: ropop */
   15,  /* xorx32: ropmem */
   16,  /* xorxx32: ropmemindex */
   17,  /* xorxxx32: ropmemindexx */
   14,  /* xor64: ropop */
   15,  /* xorx64: ropmem */
   16,  /* xorxx64: ropmemindex */
   17,  /* xorxxx64: ropmemindexx */
   15,  /* xorx8: ropmem */
   15,  /* xorx16: ropmem */
   16,  /* xorxx8: ropmemindex */
   17,  /* xorxxx8: ropmemindexx */
   16,  /* xorxx16: ropmemindex */
   17,  /* xorxxx16: ropmemindexx */
   14,  /* xor128v8: ropop */
   15,  /* xorx128v8: ropmem */
   16,  /* xorxx128v8: ropmemindex */
   17,  /* xorxxx128v8: ropmemindexx */
   14,  /* xor128v16: ropop */
   15,  /* xorx128v16: ropmem */
   16,  /* xorxx128v16: ropmemindex */
   17,  /* xorxxx128v16: ropmemindexx */
   14,  /* xor128v32: ropop */
   15,  /* xorx128v32: ropmem */
   16,  /* xorxx128v32: ropmemindex */
   17,  /* xorxxx128v32: ropmemindexx */
   14,  /* xor128v64: ropop */
   15,  /* xorx128v64: ropmem */
   16,  /* xorxx128v64: ropmemindex */
   17,  /* xorxxx128v64: ropmemindexx */
   14,  /* xori32: ropop */
   14,  /* xori64: ropop */
   14,  /* fxor128v32: ropop */
   15,  /* fxorx128v32: ropmem */
   16,  /* fxorxx128v32: ropmemindex */
   17,  /* fxorxxx128v32: ropmemindexx */
   14,  /* fxor128v64: ropop */
   15,  /* fxorx128v64: ropmem */
   16,  /* fxorxx128v64: ropmemindex */
   17,  /* fxorxxx128v64: ropmemindexx */
   14,  /* xorps: ropop */
   14,  /* xorpd: ropop */
   14,  /* addsd: ropop */
   14,  /* addss: ropop */
   15,  /* addxsd: ropmem */
   15,  /* addxss: ropmem */
   16,  /* addxxsd: ropmemindex */
   17,  /* addxxxsd: ropmemindexx */
   16,  /* addxxss: ropmemindex */
   17,  /* addxxxss: ropmemindexx */
   14,  /* faddsub128v32: ropop */
   15,  /* faddsubx128v32: ropmem */
   16,  /* faddsubxx128v32: ropmemindex */
   17,  /* faddsubxxx128v32: ropmemindexx */
   14,  /* faddsub128v64: ropop */
   15,  /* faddsubx128v64: ropmem */
   16,  /* faddsubxx128v64: ropmemindex */
   17,  /* faddsubxxx128v64: ropmemindexx */
   14,  /* fadd128v32: ropop */
   15,  /* faddx128v32: ropmem */
   16,  /* faddxx128v32: ropmemindex */
   17,  /* faddxxx128v32: ropmemindexx */
   14,  /* fadd128v64: ropop */
   15,  /* faddx128v64: ropmem */
   16,  /* faddxx128v64: ropmemindex */
   17,  /* faddxxx128v64: ropmemindexx */
   14,  /* fhadd128v32: ropop */
   15,  /* fhaddx128v32: ropmem */
   16,  /* fhaddxx128v32: ropmemindex */
   17,  /* fhaddxxx128v32: ropmemindexx */
   14,  /* fhadd128v64: ropop */
   15,  /* fhaddx128v64: ropmem */
   16,  /* fhaddxx128v64: ropmemindex */
   17,  /* fhaddxxx128v64: ropmemindexx */
   14,  /* fand128v32: ropop */
   15,  /* fandx128v32: ropmem */
   16,  /* fandxx128v32: ropmemindex */
   17,  /* fandxxx128v32: ropmemindexx */
   14,  /* fand128v64: ropop */
   15,  /* fandx128v64: ropmem */
   16,  /* fandxx128v64: ropmemindex */
   17,  /* fandxxx128v64: ropmemindexx */
   14,  /* andps: ropop */
   14,  /* andpd: ropop */
   14,  /* andnps: ropop */
   14,  /* andnpd: ropop */
   14,  /* for128v32: ropop */
   15,  /* forx128v32: ropmem */
   16,  /* forxx128v32: ropmemindex */
   17,  /* forxxx128v32: ropmemindexx */
   14,  /* for128v64: ropop */
   15,  /* forx128v64: ropmem */
   16,  /* forxx128v64: ropmemindex */
   17,  /* forxxx128v64: ropmemindexx */
   14,  /* orps: ropop */
   14,  /* orpd: ropop */
    4,  /* comisd: cmp */
    5,  /* comixsd: cmpx */
    8,  /* comixxsd: cmpxx */
   11,  /* comixxxsd: cmpxxx */
    4,  /* comiss: cmp */
    5,  /* comixss: cmpx */
    8,  /* comixxss: cmpxx */
   11,  /* comixxxss: cmpxxx */
   22,  /* cmpss: ropopop */
   22,  /* cmpsd: ropopop */
   22,  /* cmpps: ropopop */
   22,  /* cmppd: ropopop */
   14,  /* cmpeq128v8: ropop */
   14,  /* cmpeq128v16: ropop */
   14,  /* cmpeq128v32: ropop */
   15,  /* cmpeqx128v8: ropmem */
   15,  /* cmpeqx128v16: ropmem */
   15,  /* cmpeqx128v32: ropmem */
   16,  /* cmpeqxx128v8: ropmemindex */
   16,  /* cmpeqxx128v16: ropmemindex */
   16,  /* cmpeqxx128v32: ropmemindex */
   17,  /* cmpeqxxx128v8: ropmemindexx */
   17,  /* cmpeqxxx128v16: ropmemindexx */
   17,  /* cmpeqxxx128v32: ropmemindexx */
   14,  /* cmpgt128v8: ropop */
   14,  /* cmpgt128v16: ropop */
   14,  /* cmpgt128v32: ropop */
   15,  /* cmpgtx128v8: ropmem */
   15,  /* cmpgtx128v16: ropmem */
   15,  /* cmpgtx128v32: ropmem */
   16,  /* cmpgtxx128v8: ropmemindex */
   16,  /* cmpgtxx128v16: ropmemindex */
   16,  /* cmpgtxx128v32: ropmemindex */
   17,  /* cmpgtxxx128v8: ropmemindexx */
   17,  /* cmpgtxxx128v16: ropmemindexx */
   17,  /* cmpgtxxx128v32: ropmemindexx */
   14,  /* pcmpeqb: ropop */
   14,  /* pcmpeqw: ropop */
   14,  /* pcmpeqd: ropop */
   14,  /* pcmpgtb: ropop */
   14,  /* pcmpgtw: ropop */
   14,  /* pcmpgtd: ropop */
   64,  /* fmovsldup: rop */
   64,  /* fmovshdup: rop */
   64,  /* fmovddup: rop */
   69,  /* fmovsldupx: load */
   69,  /* fmovshdupx: load */
   69,  /* fmovddupx: load */
   72,  /* fmovsldupxx: ldx */
   72,  /* fmovshdupxx: ldx */
   72,  /* fmovddupxx: ldx */
   73,  /* fmovsldupxxx: ldxx */
   73,  /* fmovshdupxxx: ldxx */
   73,  /* fmovddupxxx: ldxx */
  116,  /* cltd: no_rop */
  116,  /* cqto: no_rop */
   64,  /* cvtss2sd: rop */
   64,  /* cvtsd2ss: rop */
   69,  /* cvtsd2ss_x: load */
   70,  /* cvtsd2ss_xx: leax */
   71,  /* cvtsd2ss_xxx: leaxx */
   64,  /* cvtsi2sd: rop */
   69,  /* cvtsi2sd_x: load */
   70,  /* cvtsi2sd_xx: leax */
   71,  /* cvtsi2sd_xxx: leaxx */
   64,  /* cvtsi2ss: rop */
   69,  /* cvtsi2ss_x: load */
   70,  /* cvtsi2ss_xx: leax */
   71,  /* cvtsi2ss_xxx: leaxx */
   64,  /* cvtsi2sdq: rop */
   69,  /* cvtsi2sdq_x: load */
   70,  /* cvtsi2sdq_xx: leax */
   71,  /* cvtsi2sdq_xxx: leaxx */
   64,  /* cvtsi2ssq: rop */
   69,  /* cvtsi2ssq_x: load */
   70,  /* cvtsi2ssq_xx: leax */
   71,  /* cvtsi2ssq_xxx: leaxx */
   64,  /* cvtss2si: rop */
   64,  /* cvtsd2si: rop */
   64,  /* cvtss2siq: rop */
   64,  /* cvtsd2siq: rop */
   64,  /* cvttss2si: rop */
   64,  /* cvttsd2si: rop */
   64,  /* cvttss2siq: rop */
   64,  /* cvttsd2siq: rop */
   64,  /* cvtdq2pd: rop */
   64,  /* cvtdq2ps: rop */
   64,  /* cvtps2pd: rop */
   64,  /* cvtpd2ps: rop */
   64,  /* cvtps2dq: rop */
   64,  /* cvttps2dq: rop */
   64,  /* cvtpd2dq: rop */
   64,  /* cvttpd2dq: rop */
   69,  /* cvtdq2pd_x: load */
   69,  /* cvtdq2ps_x: load */
   69,  /* cvtps2pd_x: load */
   69,  /* cvtpd2ps_x: load */
   69,  /* cvtps2dq_x: load */
   69,  /* cvtpd2dq_x: load */
   69,  /* cvttps2dq_x: load */
   69,  /* cvttpd2dq_x: load */
   70,  /* cvtdq2pd_xx: leax */
   70,  /* cvtdq2ps_xx: leax */
   70,  /* cvtps2pd_xx: leax */
   70,  /* cvtpd2ps_xx: leax */
   70,  /* cvtps2dq_xx: leax */
   70,  /* cvtpd2dq_xx: leax */
   70,  /* cvttps2dq_xx: leax */
   70,  /* cvttpd2dq_xx: leax */
   71,  /* cvtdq2pd_xxx: leaxx */
   71,  /* cvtdq2ps_xxx: leaxx */
   71,  /* cvtps2pd_xxx: leaxx */
   71,  /* cvtpd2ps_xxx: leaxx */
   71,  /* cvtps2dq_xxx: leaxx */
   71,  /* cvtpd2dq_xxx: leaxx */
   71,  /* cvttps2dq_xxx: leaxx */
   71,  /* cvttpd2dq_xxx: leaxx */
   64,  /* cvtpi2ps: rop */
   64,  /* cvtps2pi: rop */
   64,  /* cvttps2pi: rop */
   64,  /* cvtpi2pd: rop */
   64,  /* cvtpd2pi: rop */
   64,  /* cvttpd2pi: rop */
   69,  /* ldsd: load */
   72,  /* ldsdx: ldx */
   73,  /* ldsdxx: ldxx */
   69,  /* ldss: load */
   72,  /* ldssx: ldx */
   73,  /* ldssxx: ldxx */
   69,  /* lddqa: load */
   69,  /* lddqu: load */
   69,  /* ldlps: load */
   69,  /* ldhps: load */
   69,  /* ldlpd: load */
   69,  /* ldhpd: load */
   81,  /* stdqa: store */
   81,  /* stdqu: store */
   81,  /* stlps: store */
   81,  /* sthps: store */
   81,  /* stlpd: store */
   81,  /* storelpd: store */
   81,  /* sthpd: store */
   81,  /* stntpd: store */
   81,  /* stntps: store */
   81,  /* storent64_fm: store */
   72,  /* lddqax: ldx */
   72,  /* lddqux: ldx */
   72,  /* ldlpsx: ldx */
   72,  /* ldhpsx: ldx */
   72,  /* ldlpdx: ldx */
   72,  /* ldhpdx: ldx */
   74,  /* stdqax: storex */
   74,  /* stntpdx: storex */
   74,  /* stntpsx: storex */
   74,  /* stdqux: storex */
   74,  /* stlpsx: storex */
   74,  /* sthpsx: storex */
   74,  /* stlpdx: storex */
   74,  /* sthpdx: storex */
   73,  /* lddqaxx: ldxx */
   73,  /* lddquxx: ldxx */
   73,  /* ldlpsxx: ldxx */
   73,  /* ldhpsxx: ldxx */
   73,  /* ldlpdxx: ldxx */
   73,  /* ldhpdxx: ldxx */
   69,  /* ldaps: load */
   72,  /* ldapsx: ldx */
   73,  /* ldapsxx: ldxx */
   69,  /* ldapd: load */
   72,  /* ldapdx: ldx */
   73,  /* ldapdxx: ldxx */
   69,  /* ldups: load */
   69,  /* ldupd: load */
   72,  /* ldupdx: ldx */
   73,  /* ldupdxx: ldxx */
   77,  /* stdqaxx: storexx */
   77,  /* stntpdxx: storexx */
   77,  /* stntpsxx: storexx */
   77,  /* stdquxx: storexx */
   77,  /* stlpsxx: storexx */
   77,  /* sthpsxx: storexx */
   77,  /* stlpdxx: storexx */
   77,  /* sthpdxx: storexx */
   81,  /* staps: store */
   74,  /* stapsx: storex */
   77,  /* stapsxx: storexx */
   81,  /* stapd: store */
   74,  /* stapdx: storex */
   77,  /* stapdxx: storexx */
   81,  /* stups: store */
   81,  /* stupd: store */
   14,  /* maxsd: ropop */
   14,  /* maxss: ropop */
   14,  /* fmax128v32: ropop */
   15,  /* fmaxx128v32: ropmem */
   16,  /* fmaxxx128v32: ropmemindex */
   17,  /* fmaxxxx128v32: ropmemindexx */
   14,  /* fmax128v64: ropop */
   15,  /* fmaxx128v64: ropmem */
   16,  /* fmaxxx128v64: ropmemindex */
   17,  /* fmaxxxx128v64: ropmemindexx */
   14,  /* max128v16: ropop */
   14,  /* max128v8: ropop */
   15,  /* maxx128v16: ropmem */
   15,  /* maxx128v8: ropmem */
   16,  /* maxxx128v16: ropmemindex */
   16,  /* maxxx128v8: ropmemindex */
   17,  /* maxxxx128v16: ropmemindexx */
   17,  /* maxxxx128v8: ropmemindexx */
   14,  /* max64v8: ropop */
   14,  /* max64v16: ropop */
   14,  /* min128v16: ropop */
   14,  /* min128v8: ropop */
   15,  /* minx128v16: ropmem */
   15,  /* minx128v8: ropmem */
   16,  /* minxx128v16: ropmemindex */
   16,  /* minxx128v8: ropmemindex */
   17,  /* minxxx128v16: ropmemindexx */
   17,  /* minxxx128v8: ropmemindexx */
   14,  /* min64v8: ropop */
   14,  /* min64v16: ropop */
   14,  /* minsd: ropop */
   14,  /* minss: ropop */
   14,  /* fmin128v32: ropop */
   15,  /* fminx128v32: ropmem */
   16,  /* fminxx128v32: ropmemindex */
   17,  /* fminxxx128v32: ropmemindexx */
   14,  /* fmin128v64: ropop */
   15,  /* fminx128v64: ropmem */
   16,  /* fminxx128v64: ropmemindex */
   17,  /* fminxxx128v64: ropmemindexx */
   64,  /* movx2g64: rop */
   64,  /* movx2g: rop */
   64,  /* movg2x64: rop */
   64,  /* movg2x: rop */
   64,  /* movsd: rop */
   64,  /* movss: rop */
   64,  /* movdq: rop */
   64,  /* movapd: rop */
   64,  /* movaps: rop */
   64,  /* movq2dq: rop */
   64,  /* movdq2q: rop */
   14,  /* divsd: ropop */
   15,  /* divxsd: ropmem */
   16,  /* divxxsd: ropmemindex */
   17,  /* divxxxsd: ropmemindexx */
   14,  /* divss: ropop */
   15,  /* divxss: ropmem */
   16,  /* divxxss: ropmemindex */
   17,  /* divxxxss: ropmemindexx */
   14,  /* fdiv128v32: ropop */
   15,  /* fdivx128v32: ropmem */
   16,  /* fdivxx128v32: ropmemindex */
   17,  /* fdivxxx128v32: ropmemindexx */
   14,  /* fdiv128v64: ropop */
   15,  /* fdivx128v64: ropmem */
   16,  /* fdivxx128v64: ropmemindex */
   17,  /* fdivxxx128v64: ropmemindexx */
   14,  /* mulsd: ropop */
   14,  /* mulss: ropop */
   14,  /* fmul128v32: ropop */
   15,  /* fmulx128v32: ropmem */
   16,  /* fmulxx128v32: ropmemindex */
   17,  /* fmulxxx128v32: ropmemindexx */
   14,  /* fmul128v64: ropop */
   15,  /* fmulx128v64: ropmem */
   16,  /* fmulxx128v64: ropmemindex */
   17,  /* fmulxxx128v64: ropmemindexx */
   15,  /* mulxsd: ropmem */
   15,  /* mulxss: ropmem */
   16,  /* mulxxsd: ropmemindex */
   17,  /* mulxxxsd: ropmemindexx */
   16,  /* mulxxss: ropmemindex */
   17,  /* mulxxxss: ropmemindexx */
   14,  /* subsd: ropop */
   14,  /* subss: ropop */
   15,  /* subxsd: ropmem */
   15,  /* subxss: ropmem */
   16,  /* subxxsd: ropmemindex */
   17,  /* subxxxsd: ropmemindexx */
   16,  /* subxxss: ropmemindex */
   17,  /* subxxxss: ropmemindexx */
   14,  /* fsub128v32: ropop */
   15,  /* fsubx128v32: ropmem */
   16,  /* fsubxx128v32: ropmemindex */
   17,  /* fsubxxx128v32: ropmemindexx */
   14,  /* fsub128v64: ropop */
   15,  /* fsubx128v64: ropmem */
   16,  /* fsubxx128v64: ropmemindex */
   17,  /* fsubxxx128v64: ropmemindexx */
   14,  /* fhsub128v32: ropop */
   15,  /* fhsubx128v32: ropmem */
   16,  /* fhsubxx128v32: ropmemindex */
   17,  /* fhsubxxx128v32: ropmemindexx */
   14,  /* fhsub128v64: ropop */
   15,  /* fhsubx128v64: ropmem */
   16,  /* fhsubxx128v64: ropmemindex */
   17,  /* fhsubxxx128v64: ropmemindexx */
   81,  /* stss: store */
   81,  /* stntss: store */
   74,  /* stssx: storex */
   74,  /* stntssx: storex */
   77,  /* stssxx: storexx */
   77,  /* stntssxx: storexx */
   81,  /* stsd: store */
   81,  /* stntsd: store */
   74,  /* stsdx: storex */
   74,  /* stntsdx: storex */
   77,  /* stsdxx: storexx */
   77,  /* stntsdxx: storexx */
   64,  /* rcpss: rop */
   64,  /* frcp128v32: rop */
   64,  /* sqrtsd: rop */
   64,  /* sqrtss: rop */
   64,  /* rsqrtss: rop */
   64,  /* fsqrt128v32: rop */
   64,  /* frsqrt128v32: rop */
   64,  /* fsqrt128v64: rop */
   91,  /* punpcklwd: unpck */
   91,  /* punpcklbw: unpck */
   91,  /* punpckldq: unpck */
   91,  /* punpcklbw128: unpck */
   91,  /* punpcklwd128: unpck */
   91,  /* punpckldq128: unpck */
   91,  /* punpckhbw: unpck */
   91,  /* punpckhwd: unpck */
   91,  /* punpckhdq: unpck */
   91,  /* punpckhbw128: unpck */
   91,  /* punpckhwd128: unpck */
   91,  /* punpckhdq128: unpck */
   91,  /* punpcklqdq: unpck */
   91,  /* punpckhqdq: unpck */
   14,  /* packsswb: ropop */
   14,  /* packssdw: ropop */
   14,  /* packuswb: ropop */
   14,  /* packsswb128: ropop */
   14,  /* packssdw128: ropop */
   14,  /* packuswb128: ropop */
   98,  /* pshufd: shuffle_int */
   98,  /* pshufw: shuffle_int */
   98,  /* pshuflw: shuffle_int */
   98,  /* pshufhw: shuffle_int */
   99,  /* pslldq: shift_packed */
   99,  /* psllw: shift_packed */
   99,  /* psllwi: shift_packed */
   99,  /* pslld: shift_packed */
   99,  /* pslldi: shift_packed */
   99,  /* psllq: shift_packed */
   99,  /* psllqi: shift_packed */
   99,  /* psrlw: shift_packed */
   99,  /* psrlwi: shift_packed */
   99,  /* psrld: shift_packed */
   99,  /* psrldi: shift_packed */
   99,  /* psrlq: shift_packed */
   99,  /* psrlqi: shift_packed */
   99,  /* psraw: shift_packed */
   99,  /* psrawi: shift_packed */
   99,  /* psrad: shift_packed */
   99,  /* psradi: shift_packed */
   99,  /* psllw_mmx: shift_packed */
   99,  /* psllwi_mmx: shift_packed */
   99,  /* pslld_mmx: shift_packed */
   99,  /* pslldi_mmx: shift_packed */
   99,  /* psllq_mmx: shift_packed */
   99,  /* psllqi_mmx: shift_packed */
   99,  /* psrlw_mmx: shift_packed */
   99,  /* psrlwi_mmx: shift_packed */
   99,  /* psrld_mmx: shift_packed */
   99,  /* psrldi_mmx: shift_packed */
   99,  /* psrlq_mmx: shift_packed */
   99,  /* psrlqi_mmx: shift_packed */
   99,  /* psraw_mmx: shift_packed */
   99,  /* psrawi_mmx: shift_packed */
   99,  /* psrad_mmx: shift_packed */
   99,  /* psradi_mmx: shift_packed */
   99,  /* pand_mmx: shift_packed */
   99,  /* pandn_mmx: shift_packed */
   99,  /* por_mmx: shift_packed */
   99,  /* pxor_mmx: shift_packed */
   14,  /* pand: ropop */
   14,  /* pandn: ropop */
   14,  /* por: ropop */
   14,  /* pxor: ropop */
   91,  /* unpckhpd: unpck */
   91,  /* unpckhps: unpck */
   91,  /* unpcklpd: unpck */
   91,  /* unpcklps: unpck */
   93,  /* shufpd: shuffle */
   93,  /* shufps: shuffle */
   64,  /* movhlps: rop */
   64,  /* movlhps: rop */
   99,  /* psrldq: shift_packed */
   99,  /* psrlq128v64: shift_packed */
   14,  /* subus128v16: ropop */
   14,  /* pavgb: ropop */
   14,  /* pavgw: ropop */
   14,  /* psadbw: ropop */
   14,  /* pavgb128: ropop */
   14,  /* pavgw128: ropop */
   14,  /* psadbw128: ropop */
   98,  /* pextrw: shuffle_int */
   98,  /* pinsrw: shuffle_int */
   64,  /* pmovmskb: rop */
   64,  /* pmovmskb128: rop */
   64,  /* movi32_2m: rop */
   64,  /* movi64_2m: rop */
   64,  /* movm_2i32: rop */
   64,  /* movm_2i64: rop */
   98,  /* pshufw64v16: shuffle_int */
   64,  /* movmskps: rop */
   64,  /* movmskpd: rop */
   68,  /* maskmovdqu: opop1 */
   68,  /* maskmovq: opop1 */
   99,  /* extrq: shift_packed */
   99,  /* insertq: shift_packed */
  100,  /* vfmaddss: ndstvecreg */
  101,  /* vfmaddxss: ndstvecregx */
  102,  /* vfmaddxxss: ndestvecregxx */
  103,  /* vfmaddxxxss: ndestvecregxxx */
  104,  /* vfmaddxrss: ndstvecregxr */
  105,  /* vfmaddxxrss: ndestvecregxxr */
  106,  /* vfmaddxxxrss: ndestvecregxxxr */
  100,  /* vfmaddsd: ndstvecreg */
  101,  /* vfmaddxsd: ndstvecregx */
  102,  /* vfmaddxxsd: ndestvecregxx */
  103,  /* vfmaddxxxsd: ndestvecregxxx */
  104,  /* vfmaddxrsd: ndstvecregxr */
  105,  /* vfmaddxxrsd: ndestvecregxxr */
  106,  /* vfmaddxxxrsd: ndestvecregxxxr */
  100,  /* vfnmaddss: ndstvecreg */
  101,  /* vfnmaddxss: ndstvecregx */
  102,  /* vfnmaddxxss: ndestvecregxx */
  103,  /* vfnmaddxxxss: ndestvecregxxx */
  104,  /* vfnmaddxrss: ndstvecregxr */
  105,  /* vfnmaddxxrss: ndestvecregxxr */
  106,  /* vfnmaddxxxrss: ndestvecregxxxr */
  100,  /* vfnmaddsd: ndstvecreg */
  101,  /* vfnmaddxsd: ndstvecregx */
  102,  /* vfnmaddxxsd: ndestvecregxx */
  103,  /* vfnmaddxxxsd: ndestvecregxxx */
  104,  /* vfnmaddxrsd: ndstvecregxr */
  105,  /* vfnmaddxxrsd: ndestvecregxxr */
  106,  /* vfnmaddxxxrsd: ndestvecregxxxr */
  100,  /* vfmaddps: ndstvecreg */
  101,  /* vfmaddxps: ndstvecregx */
  102,  /* vfmaddxxps: ndestvecregxx */
  103,  /* vfmaddxxxps: ndestvecregxxx */
  104,  /* vfmaddxrps: ndstvecregxr */
  105,  /* vfmaddxxrps: ndestvecregxxr */
  106,  /* vfmaddxxxrps: ndestvecregxxxr */
  100,  /* vfmaddpd: ndstvecreg */
  101,  /* vfmaddxpd: ndstvecregx */
  102,  /* vfmaddxxpd: ndestvecregxx */
  103,  /* vfmaddxxxpd: ndestvecregxxx */
  104,  /* vfmaddxrpd: ndstvecregxr */
  105,  /* vfmaddxxrpd: ndestvecregxxr */
  106,  /* vfmaddxxxrpd: ndestvecregxxxr */
  100,  /* vfmaddsubps: ndstvecreg */
  101,  /* vfmaddsubxps: ndstvecregx */
  102,  /* vfmaddsubxxps: ndestvecregxx */
  103,  /* vfmaddsubxxxps: ndestvecregxxx */
  104,  /* vfmaddsubxrps: ndstvecregxr */
  105,  /* vfmaddsubxxrps: ndestvecregxxr */
  106,  /* vfmaddsubxxxrps: ndestvecregxxxr */
  100,  /* vfmaddsubpd: ndstvecreg */
  101,  /* vfmaddsubxpd: ndstvecregx */
  102,  /* vfmaddsubxxpd: ndestvecregxx */
  103,  /* vfmaddsubxxxpd: ndestvecregxxx */
  104,  /* vfmaddsubxrpd: ndstvecregxr */
  105,  /* vfmaddsubxxrpd: ndestvecregxxr */
  106,  /* vfmaddsubxxxrpd: ndestvecregxxxr */
  100,  /* vfnmaddps: ndstvecreg */
  101,  /* vfnmaddxps: ndstvecregx */
  102,  /* vfnmaddxxps: ndestvecregxx */
  103,  /* vfnmaddxxxps: ndestvecregxxx */
  104,  /* vfnmaddxrps: ndstvecregxr */
  105,  /* vfnmaddxxrps: ndestvecregxxr */
  106,  /* vfnmaddxxxrps: ndestvecregxxxr */
  100,  /* vfnmaddpd: ndstvecreg */
  101,  /* vfnmaddxpd: ndstvecregx */
  102,  /* vfnmaddxxpd: ndestvecregxx */
  103,  /* vfnmaddxxxpd: ndestvecregxxx */
  104,  /* vfnmaddxrpd: ndstvecregxr */
  105,  /* vfnmaddxxrpd: ndestvecregxxr */
  106,  /* vfnmaddxxxrpd: ndestvecregxxxr */
  100,  /* vfmsubss: ndstvecreg */
  101,  /* vfmsubxss: ndstvecregx */
  102,  /* vfmsubxxss: ndestvecregxx */
  103,  /* vfmsubxxxss: ndestvecregxxx */
  104,  /* vfmsubxrss: ndstvecregxr */
  105,  /* vfmsubxxrss: ndestvecregxxr */
  106,  /* vfmsubxxxrss: ndestvecregxxxr */
  100,  /* vfmsubsd: ndstvecreg */
  101,  /* vfmsubxsd: ndstvecregx */
  102,  /* vfmsubxxsd: ndestvecregxx */
  103,  /* vfmsubxxxsd: ndestvecregxxx */
  104,  /* vfmsubxrsd: ndstvecregxr */
  105,  /* vfmsubxxrsd: ndestvecregxxr */
  106,  /* vfmsubxxxrsd: ndestvecregxxxr */
  100,  /* vfnmsubss: ndstvecreg */
  101,  /* vfnmsubxss: ndstvecregx */
  102,  /* vfnmsubxxss: ndestvecregxx */
  103,  /* vfnmsubxxxss: ndestvecregxxx */
  104,  /* vfnmsubxrss: ndstvecregxr */
  105,  /* vfnmsubxxrss: ndestvecregxxr */
  106,  /* vfnmsubxxxrss: ndestvecregxxxr */
  100,  /* vfnmsubsd: ndstvecreg */
  101,  /* vfnmsubxsd: ndstvecregx */
  102,  /* vfnmsubxxsd: ndestvecregxx */
  103,  /* vfnmsubxxxsd: ndestvecregxxx */
  104,  /* vfnmsubxrsd: ndstvecregxr */
  105,  /* vfnmsubxxrsd: ndestvecregxxr */
  106,  /* vfnmsubxxxrsd: ndestvecregxxxr */
  100,  /* vfmsubps: ndstvecreg */
  101,  /* vfmsubxps: ndstvecregx */
  102,  /* vfmsubxxps: ndestvecregxx */
  103,  /* vfmsubxxxps: ndestvecregxxx */
  104,  /* vfmsubxrps: ndstvecregxr */
  105,  /* vfmsubxxrps: ndestvecregxxr */
  106,  /* vfmsubxxxrps: ndestvecregxxxr */
  100,  /* vfmsubpd: ndstvecreg */
  101,  /* vfmsubxpd: ndstvecregx */
  102,  /* vfmsubxxpd: ndestvecregxx */
  103,  /* vfmsubxxxpd: ndestvecregxxx */
  104,  /* vfmsubxrpd: ndstvecregxr */
  105,  /* vfmsubxxrpd: ndestvecregxxr */
  106,  /* vfmsubxxxrpd: ndestvecregxxxr */
  100,  /* vfmsubaddps: ndstvecreg */
  101,  /* vfmsubaddxps: ndstvecregx */
  102,  /* vfmsubaddxxps: ndestvecregxx */
  103,  /* vfmsubaddxxxps: ndestvecregxxx */
  104,  /* vfmsubaddxrps: ndstvecregxr */
  105,  /* vfmsubaddxxrps: ndestvecregxxr */
  106,  /* vfmsubaddxxxrps: ndestvecregxxxr */
  100,  /* vfmsubaddpd: ndstvecreg */
  101,  /* vfmsubaddxpd: ndstvecregx */
  102,  /* vfmsubaddxxpd: ndestvecregxx */
  103,  /* vfmsubaddxxxpd: ndestvecregxxx */
  104,  /* vfmsubaddxrpd: ndstvecregxr */
  105,  /* vfmsubaddxxrpd: ndestvecregxxr */
  106,  /* vfmsubaddxxxrpd: ndestvecregxxxr */
  100,  /* vfnmsubps: ndstvecreg */
  101,  /* vfnmsubxps: ndstvecregx */
  102,  /* vfnmsubxxps: ndestvecregxx */
  103,  /* vfnmsubxxxps: ndestvecregxxx */
  104,  /* vfnmsubxrps: ndstvecregxr */
  105,  /* vfnmsubxxrps: ndestvecregxxr */
  106,  /* vfnmsubxxxrps: ndestvecregxxxr */
  100,  /* vfnmsubpd: ndstvecreg */
  101,  /* vfnmsubxpd: ndstvecregx */
  102,  /* vfnmsubxxpd: ndestvecregxx */
  103,  /* vfnmsubxxxpd: ndestvecregxxx */
  104,  /* vfnmsubxrpd: ndstvecregxr */
  105,  /* vfnmsubxxrpd: ndestvecregxxr */
  106,  /* vfnmsubxxxrpd: ndestvecregxxxr */
  116,  /* vzeroupper: no_rop */
  116,  /* mfence: no_rop */
  116,  /* lfence: no_rop */
  116,  /* sfence: no_rop */
  116,  /* monitor: no_rop */
  116,  /* mwait: no_rop */
    0,  /* asm */
    0,  /* intrncall */
    0,  /* spadjust */
    0,  /* savexmms */
   62,  /* zero32: rr */
   62,  /* zero64: rr */
   62,  /* xzero32: rr */
   62,  /* xzero64: rr */
   62,  /* xzero128v32: rr */
   62,  /* xzero128v64: rr */
   14,  /* fadd: ropop */
   14,  /* faddp: ropop */
   57,  /* flds: opop */
   56,  /* flds_n32: op0 */
   57,  /* fldl: opop */
   56,  /* fldl_n32: op0 */
   57,  /* fldt: opop */
   56,  /* fldt_n32: op0 */
   56,  /* fld: op0 */
   56,  /* fst: op0 */
   56,  /* fstp: op0 */
   78,  /* fstps: prefetch */
    2,  /* fstps_n32: op1 */
   78,  /* fstpl: prefetch */
    2,  /* fstpl_n32: op1 */
   78,  /* fstpt: prefetch */
    2,  /* fstpt_n32: op1 */
   78,  /* fsts: prefetch */
    2,  /* fsts_n32: op1 */
   78,  /* fstl: prefetch */
    2,  /* fstl_n32: op1 */
   56,  /* fxch: op0 */
   56,  /* fmov: op0 */
   14,  /* fsub: ropop */
   14,  /* fsubr: ropop */
   14,  /* fsubp: ropop */
   14,  /* fsubrp: ropop */
   14,  /* fmul: ropop */
   14,  /* fmulp: ropop */
   14,  /* fdiv: ropop */
   14,  /* fdivp: ropop */
   14,  /* fdivr: ropop */
   14,  /* fdivrp: ropop */
    4,  /* fucomi: cmp */
    4,  /* fucomip: cmp */
  116,  /* fchs: no_rop */
  116,  /* frndint: no_rop */
   78,  /* fnstcw: prefetch */
   57,  /* fldcw: opop */
   78,  /* fistps: prefetch */
   78,  /* fistpl: prefetch */
   78,  /* fists: prefetch */
   78,  /* fistl: prefetch */
   78,  /* fistpll: prefetch */
   57,  /* filds: opop */
   57,  /* fildl: opop */
   57,  /* fildll: opop */
  116,  /* fldz: no_rop */
  116,  /* fabs: no_rop */
  116,  /* fsqrt: no_rop */
   64,  /* fcmovb: rop */
   64,  /* fcmovbe: rop */
   64,  /* fcmovnb: rop */
   64,  /* fcmovnbe: rop */
   64,  /* fcmove: rop */
   64,  /* fcmovne: rop */
   64,  /* fcmovu: rop */
   64,  /* fcmovnu: rop */
  116,  /* fcos: no_rop */
  116,  /* fsin: no_rop */
   14,  /* cmpeqpd: ropop */
   14,  /* cmpltpd: ropop */
   14,  /* cmplepd: ropop */
   14,  /* cmpunordpd: ropop */
   14,  /* cmpneqpd: ropop */
   14,  /* cmpnltpd: ropop */
   14,  /* cmpnlepd: ropop */
   14,  /* cmpordpd: ropop */
   14,  /* cmpeqps: ropop */
   14,  /* cmpltps: ropop */
   14,  /* cmpleps: ropop */
   14,  /* cmpunordps: ropop */
   14,  /* cmpneqps: ropop */
   14,  /* cmpnltps: ropop */
   14,  /* cmpnleps: ropop */
   14,  /* cmpordps: ropop */
   14,  /* cmpeqsd: ropop */
   14,  /* cmpltsd: ropop */
   14,  /* cmplesd: ropop */
   14,  /* cmpunordsd: ropop */
   14,  /* cmpneqsd: ropop */
   14,  /* cmpnltsd: ropop */
   14,  /* cmpnlesd: ropop */
   14,  /* cmpordsd: ropop */
   14,  /* cmpeqss: ropop */
   14,  /* cmpltss: ropop */
   14,  /* cmpless: ropop */
   14,  /* cmpunordss: ropop */
   14,  /* cmpneqss: ropop */
   14,  /* cmpnltss: ropop */
   14,  /* cmpnless: ropop */
   14,  /* cmpordss: ropop */
  116,  /* emms: no_rop */
  111,  /* stmxcsr: stmxcsr */
  111,  /* ldmxcsr: stmxcsr */
   57,  /* clflush: opop */
   78,  /* fisttps: prefetch */
   78,  /* fisttpl: prefetch */
   78,  /* fisttpll: prefetch */
   64,  /* pabs128v8: rop */
   65,  /* pabsx128v8: rmem */
   66,  /* pabsxx128v8: rmemindex */
   67,  /* pabsxxx128v8: rmemindexx */
   64,  /* pabs128v16: rop */
   65,  /* pabsx128v16: rmem */
   66,  /* pabsxx128v16: rmemindex */
   67,  /* pabsxxx128v16: rmemindexx */
   64,  /* pabs128v32: rop */
   65,  /* pabsx128v32: rmem */
   66,  /* pabsxx128v32: rmemindex */
   67,  /* pabsxxx128v32: rmemindexx */
   14,  /* psign128v8: ropop */
   15,  /* psignx128v8: ropmem */
   16,  /* psignxx128v8: ropmemindex */
   17,  /* psignxxx128v8: ropmemindexx */
   14,  /* psign128v16: ropop */
   15,  /* psignx128v16: ropmem */
   16,  /* psignxx128v16: ropmemindex */
   17,  /* psignxxx128v16: ropmemindexx */
   14,  /* psign128v32: ropop */
   15,  /* psignx128v32: ropmem */
   16,  /* psignxx128v32: ropmemindex */
   17,  /* psignxxx128v32: ropmemindexx */
   94,  /* pshuf128v8: pshufb */
   95,  /* pshufx128v8: pshufb_mem */
   96,  /* pshufxx128v8: pshufb_memindex */
   97,  /* pshufxxx128v8: pshufb_memindexx */
   14,  /* phsub128v16: ropop */
   15,  /* phsubx128v16: ropmem */
   16,  /* phsubxx128v16: ropmemindex */
   17,  /* phsubxxx128v16: ropmemindexx */
   14,  /* phsub128v32: ropop */
   15,  /* phsubx128v32: ropmem */
   16,  /* phsubxx128v32: ropmemindex */
   17,  /* phsubxxx128v32: ropmemindexx */
   14,  /* phsubs128v16: ropop */
   15,  /* phsubsx128v16: ropmem */
   16,  /* phsubsxx128v16: ropmemindex */
   17,  /* phsubsxxx128v16: ropmemindexx */
   14,  /* phadd128v16: ropop */
   15,  /* phaddx128v16: ropmem */
   16,  /* phaddxx128v16: ropmemindex */
   17,  /* phaddxxx128v16: ropmemindexx */
   14,  /* phadd128v32: ropop */
   15,  /* phaddx128v32: ropmem */
   16,  /* phaddxx128v32: ropmemindex */
   17,  /* phaddxxx128v32: ropmemindexx */
   14,  /* phadds128v16: ropop */
   15,  /* phaddsx128v16: ropmem */
   16,  /* phaddsxx128v16: ropmemindex */
   17,  /* phaddsxxx128v16: ropmemindexx */
   14,  /* pmulhrsw128: ropop */
   15,  /* pmulhrswx128: ropmem */
   16,  /* pmulhrswxx128: ropmemindex */
   17,  /* pmulhrswxxx128: ropmemindexx */
   14,  /* pmaddubsw128: ropop */
   15,  /* pmaddubswx128: ropmem */
   16,  /* pmaddubswxx128: ropmemindex */
   17,  /* pmaddubswxxx128: ropmemindexx */
   22,  /* palignr128: ropopop */
   23,  /* palignrx128: ropmemop */
   24,  /* palignrxx128: ropmemindexop */
   25,  /* palignrxxx128: ropmemindexxop */
   14,  /* muldq: ropop */
   15,  /* muldqx: ropmem */
   16,  /* muldqxx: ropmemindex */
   17,  /* muldqxxx: ropmemindexx */
   69,  /* ldntdqa: load */
   72,  /* ldntdqax: ldx */
   73,  /* ldntdqaxx: ldxx */
   81,  /* stntdq: store */
   74,  /* stntdqx: storex */
   77,  /* stntdqxx: storexx */
   14,  /* mins128v8: ropop */
   15,  /* minsx128v8: ropmem */
   16,  /* minsxx128v8: ropmemindex */
   17,  /* minsxxx128v8: ropmemindexx */
   14,  /* maxs128v8: ropop */
   15,  /* maxsx128v8: ropmem */
   16,  /* maxsxx128v8: ropmemindex */
   17,  /* maxsxxx128v8: ropmemindexx */
   14,  /* minu128v16: ropop */
   15,  /* minux128v16: ropmem */
   16,  /* minuxx128v16: ropmemindex */
   17,  /* minuxxx128v16: ropmemindexx */
   14,  /* maxu128v16: ropop */
   15,  /* maxux128v16: ropmem */
   16,  /* maxuxx128v16: ropmemindex */
   17,  /* maxuxxx128v16: ropmemindexx */
   14,  /* minu128v32: ropop */
   15,  /* minux128v32: ropmem */
   16,  /* minuxx128v32: ropmemindex */
   17,  /* minuxxx128v32: ropmemindexx */
   14,  /* maxu128v32: ropop */
   15,  /* maxux128v32: ropmem */
   16,  /* maxuxx128v32: ropmemindex */
   17,  /* maxuxxx128v32: ropmemindexx */
   14,  /* mins128v32: ropop */
   15,  /* minsx128v32: ropmem */
   16,  /* minsxx128v32: ropmemindex */
   17,  /* minsxxx128v32: ropmemindexx */
   14,  /* maxs128v32: ropop */
   15,  /* maxsx128v32: ropmem */
   16,  /* maxsxx128v32: ropmemindex */
   17,  /* maxsxxx128v32: ropmemindexx */
   64,  /* pmovsxbw: rop */
   65,  /* pmovsxbwx: rmem */
   66,  /* pmovsxbwxx: rmemindex */
   67,  /* pmovsxbwxxx: rmemindexx */
   64,  /* pmovzxbw: rop */
   65,  /* pmovzxbwx: rmem */
   66,  /* pmovzxbwxx: rmemindex */
   67,  /* pmovzxbwxxx: rmemindexx */
   64,  /* pmovsxbd: rop */
   65,  /* pmovsxbdx: rmem */
   66,  /* pmovsxbdxx: rmemindex */
   67,  /* pmovsxbdxxx: rmemindexx */
   64,  /* pmovzxbd: rop */
   65,  /* pmovzxbdx: rmem */
   66,  /* pmovzxbdxx: rmemindex */
   67,  /* pmovzxbdxxx: rmemindexx */
   64,  /* pmovsxbq: rop */
   65,  /* pmovsxbqx: rmem */
   66,  /* pmovsxbqxx: rmemindex */
   67,  /* pmovsxbqxxx: rmemindexx */
   64,  /* pmovzxbq: rop */
   65,  /* pmovzxbqx: rmem */
   66,  /* pmovzxbqxx: rmemindex */
   67,  /* pmovzxbqxxx: rmemindexx */
   64,  /* pmovsxwd: rop */
   65,  /* pmovsxwdx: rmem */
   66,  /* pmovsxwdxx: rmemindex */
   67,  /* pmovsxwdxxx: rmemindexx */
   64,  /* pmovzxwd: rop */
   65,  /* pmovzxwdx: rmem */
   66,  /* pmovzxwdxx: rmemindex */
   67,  /* pmovzxwdxxx: rmemindexx */
   64,  /* pmovsxwq: rop */
   65,  /* pmovsxwqx: rmem */
   66,  /* pmovsxwqxx: rmemindex */
   67,  /* pmovsxwqxxx: rmemindexx */
   64,  /* pmovzxwq: rop */
   65,  /* pmovzxwqx: rmem */
   66,  /* pmovzxwqxx: rmemindex */
   67,  /* pmovzxwqxxx: rmemindexx */
   64,  /* pmovsxdq: rop */
   65,  /* pmovsxdqx: rmem */
   66,  /* pmovsxdqxx: rmemindex */
   67,  /* pmovsxdqxxx: rmemindexx */
   64,  /* pmovzxdq: rop */
   65,  /* pmovzxdqx: rmem */
   66,  /* pmovzxdqxx: rmemindex */
   67,  /* pmovzxdqxxx: rmemindexx */
   14,  /* mul128v32: ropop */
   15,  /* mulx128v32: ropmem */
   16,  /* mulxx128v32: ropmemindex */
   17,  /* mulxxx128v32: ropmemindexx */
   14,  /* cmpeq128v64: ropop */
   15,  /* cmpeqx128v64: ropmem */
   16,  /* cmpeqxx128v64: ropmemindex */
   17,  /* cmpeqxxx128v64: ropmemindexx */
   14,  /* packusdw: ropop */
   15,  /* packusdwx: ropmem */
   16,  /* packusdwxx: ropmemindex */
   17,  /* packusdwxxx: ropmemindexx */
   64,  /* phminposuw: rop */
   65,  /* phminposuwx: rmem */
   66,  /* phminposuwxx: rmemindex */
   67,  /* phminposuwxxx: rmemindexx */
    4,  /* ptest128: cmp */
    5,  /* ptestx128: cmpx */
    8,  /* ptestxx128: cmpxx */
   11,  /* ptestxxx128: cmpxxx */
   40,  /* roundsd: round */
   41,  /* roundxsd: roundmem */
   42,  /* roundxxsd: roundmemindex */
   43,  /* roundxxxsd: roundmemindexx */
   22,  /* mpsadbw: ropopop */
   23,  /* mpsadbwx: ropmemop */
   24,  /* mpsadbwxx: ropmemindexop */
   25,  /* mpsadbwxxx: ropmemindexxop */
   22,  /* insr128v8: ropopop */
   23,  /* insrx128v8: ropmemop */
   24,  /* insrxx128v8: ropmemindexop */
   25,  /* insrxxx128v8: ropmemindexxop */
   22,  /* insr128v16: ropopop */
   23,  /* insrx128v16: ropmemop */
   24,  /* insrxx128v16: ropmemindexop */
   25,  /* insrxxx128v16: ropmemindexxop */
   22,  /* insr128v32: ropopop */
   23,  /* insrx128v32: ropmemop */
   24,  /* insrxx128v32: ropmemindexop */
   25,  /* insrxxx128v32: ropmemindexxop */
   22,  /* insr128v64: ropopop */
   23,  /* insrx128v64: ropmemop */
   24,  /* insrxx128v64: ropmemindexop */
   25,  /* insrxxx128v64: ropmemindexxop */
   22,  /* extr128v8: ropopop */
   23,  /* extrx128v8: ropmemop */
   24,  /* extrxx128v8: ropmemindexop */
   25,  /* extrxxx128v8: ropmemindexxop */
   22,  /* extr128v16: ropopop */
   23,  /* extrx128v16: ropmemop */
   24,  /* extrxx128v16: ropmemindexop */
   25,  /* extrxxx128v16: ropmemindexxop */
   22,  /* extr128v32: ropopop */
   23,  /* extrx128v32: ropmemop */
   24,  /* extrxx128v32: ropmemindexop */
   25,  /* extrxxx128v32: ropmemindexxop */
   22,  /* extr128v64: ropopop */
   23,  /* extrx128v64: ropmemop */
   24,  /* extrxx128v64: ropmemindexop */
   25,  /* extrxxx128v64: ropmemindexxop */
   22,  /* finsr128v32: ropopop */
   23,  /* finsrx128v32: ropmemop */
   24,  /* finsrxx128v32: ropmemindexop */
   25,  /* finsrxxx128v32: ropmemindexxop */
   22,  /* fextr128v32: ropopop */
   23,  /* fextrx128v32: ropmemop */
   24,  /* fextrxx128v32: ropmemindexop */
   25,  /* fextrxxx128v32: ropmemindexxop */
   18,  /* fblendv128v32: rblendv */
   19,  /* fblendvx128v32: rblendvmem */
   20,  /* fblendvxx128v32: rblendvmemindex */
   21,  /* fblendvxxx128v32: rblendvmemindexx */
   18,  /* fblendv128v64: rblendv */
   19,  /* fblendvx128v64: rblendvmem */
   20,  /* fblendvxx128v64: rblendvmemindex */
   21,  /* fblendvxxx128v64: rblendvmemindexx */
   18,  /* blendv128v8: rblendv */
   19,  /* blendvx128v8: rblendvmem */
   20,  /* blendvxx128v8: rblendvmemindex */
   21,  /* blendvxxx128v8: rblendvmemindexx */
   40,  /* round128v32: round */
   41,  /* roundx128v32: roundmem */
   42,  /* roundxx128v32: roundmemindex */
   43,  /* roundxxx128v32: roundmemindexx */
   40,  /* roundss: round */
   41,  /* roundxss: roundmem */
   42,  /* roundxxss: roundmemindex */
   43,  /* roundxxxss: roundmemindexx */
   22,  /* fblend128v64: ropopop */
   23,  /* fblendx128v64: ropmemop */
   24,  /* fblendxx128v64: ropmemindexop */
   25,  /* fblendxxx128v64: ropmemindexxop */
   22,  /* blend128v16: ropopop */
   23,  /* blendx128v16: ropmemop */
   24,  /* blendxx128v16: ropmemindexop */
   25,  /* blendxxx128v16: ropmemindexxop */
   22,  /* fdp128v32: ropopop */
   23,  /* fdpx128v32: ropmemop */
   24,  /* fdpxx128v32: ropmemindexop */
   25,  /* fdpxxx128v32: ropmemindexxop */
   22,  /* fdp128v64: ropopop */
   23,  /* fdpx128v64: ropmemop */
   24,  /* fdpxx128v64: ropmemindexop */
   25,  /* fdpxxx128v64: ropmemindexxop */
   40,  /* round128v64: round */
   41,  /* roundx128v64: roundmem */
   42,  /* roundxx128v64: roundmemindex */
   43,  /* roundxxx128v64: roundmemindexx */
   22,  /* fblend128v32: ropopop */
   23,  /* fblendx128v32: ropmemop */
   24,  /* fblendxx128v32: ropmemindexop */
   25,  /* fblendxxx128v32: ropmemindexxop */
   14,  /* cmpgt128v64: ropop */
   15,  /* cmpgtx128v64: ropmem */
   16,  /* cmpgtxx128v64: ropmemindex */
   17,  /* cmpgtxxx128v64: ropmemindexx */
   14,  /* crc32w: ropop */
   15,  /* crc32wx: ropmem */
   16,  /* crc32wxx: ropmemindex */
   17,  /* crc32wxxx: ropmemindexx */
   14,  /* crc32d: ropop */
   15,  /* crc32dx: ropmem */
   16,  /* crc32dxx: ropmemindex */
   17,  /* crc32dxxx: ropmemindexx */
   14,  /* crc32q: ropop */
   15,  /* crc32qx: ropmem */
   16,  /* crc32qxx: ropmemindex */
   17,  /* crc32qxxx: ropmemindexx */
   14,  /* crc32b: ropop */
   15,  /* crc32bx: ropmem */
   16,  /* crc32bxx: ropmemindex */
   17,  /* crc32bxxx: ropmemindexx */
   48,  /* cmpestrm: pcmpestr */
   49,  /* cmpestrmx: pcmpestrmem */
   50,  /* cmpestrmxx: pcmpestrmemindex */
   51,  /* cmpestrmxxx: pcmpestrmemindexx */
   48,  /* cmpestri: pcmpestr */
   49,  /* cmpestrix: pcmpestrmem */
   50,  /* cmpestrixx: pcmpestrmemindex */
   51,  /* cmpestrixxx: pcmpestrmemindexx */
   52,  /* cmpistrm: pcmpistr */
   53,  /* cmpistrmx: pcmpistrmem */
   54,  /* cmpistrmxx: pcmpistrmemindex */
   55,  /* cmpistrmxxx: pcmpistrmemindexx */
   52,  /* cmpistri: pcmpistr */
   53,  /* cmpistrix: pcmpistrmem */
   54,  /* cmpistrixx: pcmpistrmemindex */
   55,  /* cmpistrixxx: pcmpistrmemindexx */
   64,  /* popcnt16: rop */
   65,  /* popcntx16: rmem */
   66,  /* popcntxx16: rmemindex */
   67,  /* popcntxxx16: rmemindexx */
   64,  /* popcnt32: rop */
   65,  /* popcntx32: rmem */
   66,  /* popcntxx32: rmemindex */
   67,  /* popcntxxx32: rmemindexx */
   64,  /* popcnt64: rop */
   65,  /* popcntx64: rmem */
   66,  /* popcntxx64: rmemindex */
   67,  /* popcntxxx64: rmemindexx */
   64,  /* aesimc: rop */
   65,  /* aesimcx: rmem */
   66,  /* aesimcxx: rmemindex */
   67,  /* aesimcxxx: rmemindexx */
   26,  /* aeskeygenassist: vropop */
   27,  /* aeskeygenassistx: vropmem */
   29,  /* aeskeygenassistxx: vropmemindex */
   31,  /* aeskeygenassistxxx: vropmemindexx */
   14,  /* aesenc: ropop */
   15,  /* aesencx: ropmem */
   16,  /* aesencxx: ropmemindex */
   17,  /* aesencxxx: ropmemindexx */
   14,  /* aesenclast: ropop */
   15,  /* aesenclastx: ropmem */
   16,  /* aesenclastxx: ropmemindex */
   17,  /* aesenclastxxx: ropmemindexx */
   14,  /* aesdec: ropop */
   15,  /* aesdecx: ropmem */
   16,  /* aesdecxx: ropmemindex */
   17,  /* aesdecxxx: ropmemindexx */
   14,  /* aesdeclast: ropop */
   15,  /* aesdeclastx: ropmem */
   16,  /* aesdeclastxx: ropmemindex */
   17,  /* aesdeclastxxx: ropmemindexx */
   22,  /* pclmulqdq: ropopop */
   23,  /* pclmulqdqx: ropmemop */
   24,  /* pclmulqdqxx: ropmemindexop */
   25,  /* pclmulqdqxxx: ropmemindexxop */
   64,  /* vphaddbd: rop */
   65,  /* vphaddbdx: rmem */
   66,  /* vphaddbdxx: rmemindex */
   67,  /* vphaddbdxxx: rmemindexx */
   64,  /* vphaddbq: rop */
   65,  /* vphaddbqx: rmem */
   66,  /* vphaddbqxx: rmemindex */
   67,  /* vphaddbqxxx: rmemindexx */
   64,  /* vphaddbw: rop */
   65,  /* vphaddbwx: rmem */
   66,  /* vphaddbwxx: rmemindex */
   67,  /* vphaddbwxxx: rmemindexx */
   64,  /* vphadddq: rop */
   65,  /* vphadddqx: rmem */
   66,  /* vphadddqxx: rmemindex */
   67,  /* vphadddqxxx: rmemindexx */
   64,  /* vphaddubd: rop */
   65,  /* vphaddubdx: rmem */
   66,  /* vphaddubdxx: rmemindex */
   67,  /* vphaddubdxxx: rmemindexx */
   64,  /* vphaddubq: rop */
   65,  /* vphaddubqx: rmem */
   66,  /* vphaddubqxx: rmemindex */
   67,  /* vphaddubqxxx: rmemindexx */
   64,  /* vphaddubw: rop */
   65,  /* vphaddubwx: rmem */
   66,  /* vphaddubwxx: rmemindex */
   67,  /* vphaddubwxxx: rmemindexx */
   64,  /* vphaddudq: rop */
   65,  /* vphaddudqx: rmem */
   66,  /* vphaddudqxx: rmemindex */
   67,  /* vphaddudqxxx: rmemindexx */
   64,  /* vphadduwd: rop */
   65,  /* vphadduwdx: rmem */
   66,  /* vphadduwdxx: rmemindex */
   67,  /* vphadduwdxxx: rmemindexx */
   64,  /* vphadduwq: rop */
   65,  /* vphadduwqx: rmem */
   66,  /* vphadduwqxx: rmemindex */
   67,  /* vphadduwqxxx: rmemindexx */
   64,  /* vphaddwd: rop */
   65,  /* vphaddwdx: rmem */
   66,  /* vphaddwdxx: rmemindex */
   67,  /* vphaddwdxxx: rmemindexx */
   64,  /* vphaddwq: rop */
   65,  /* vphaddwqx: rmem */
   66,  /* vphaddwqxx: rmemindex */
   67,  /* vphaddwqxxx: rmemindexx */
   64,  /* vphsubbw: rop */
   65,  /* vphsubbwx: rmem */
   66,  /* vphsubbwxx: rmemindex */
   67,  /* vphsubbwxxx: rmemindexx */
   64,  /* vphsubdq: rop */
   65,  /* vphsubdqx: rmem */
   66,  /* vphsubdqxx: rmemindex */
   67,  /* vphsubdqxxx: rmemindexx */
   64,  /* vphsubwd: rop */
   65,  /* vphsubwdx: rmem */
   66,  /* vphsubwdxx: rmemindex */
   67,  /* vphsubwdxxx: rmemindexx */
   64,  /* vfrczpd: rop */
   65,  /* vfrczpdx: rmem */
   66,  /* vfrczpdxx: rmemindex */
   67,  /* vfrczpdxxx: rmemindexx */
   64,  /* vfrczps: rop */
   65,  /* vfrczpsx: rmem */
   66,  /* vfrczpsxx: rmemindex */
   67,  /* vfrczpsxxx: rmemindexx */
   64,  /* vfrczsd: rop */
   65,  /* vfrczsdx: rmem */
   66,  /* vfrczsdxx: rmemindex */
   67,  /* vfrczsdxxx: rmemindexx */
   64,  /* vfrczss: rop */
   65,  /* vfrczssx: rmem */
   66,  /* vfrczssxx: rmemindex */
   67,  /* vfrczssxxx: rmemindexx */
   26,  /* vprotbi: vropop */
   28,  /* vprotbix: vrmemop */
   30,  /* vprotbixx: vrmemindexop */
   32,  /* vprotbixxx: vrmemindexxop */
   26,  /* vprotdi: vropop */
   28,  /* vprotdix: vrmemop */
   30,  /* vprotdixx: vrmemindexop */
   32,  /* vprotdixxx: vrmemindexxop */
   26,  /* vprotqi: vropop */
   28,  /* vprotqix: vrmemop */
   30,  /* vprotqixx: vrmemindexop */
   32,  /* vprotqixxx: vrmemindexxop */
   26,  /* vprotwi: vropop */
   28,  /* vprotwix: vrmemop */
   30,  /* vprotwixx: vrmemindexop */
   32,  /* vprotwixxx: vrmemindexxop */
   33,  /* vpcomb: vropopimm */
   34,  /* vpcombx: vropmemop */
   35,  /* vpcombxx: vropmemindexop */
   36,  /* vpcombxxx: vropmemindexxop */
   33,  /* vpcomd: vropopimm */
   34,  /* vpcomdx: vropmemop */
   35,  /* vpcomdxx: vropmemindexop */
   36,  /* vpcomdxxx: vropmemindexxop */
   33,  /* vpcomq: vropopimm */
   34,  /* vpcomqx: vropmemop */
   35,  /* vpcomqxx: vropmemindexop */
   36,  /* vpcomqxxx: vropmemindexxop */
   33,  /* vpcomw: vropopimm */
   34,  /* vpcomwx: vropmemop */
   35,  /* vpcomwxx: vropmemindexop */
   36,  /* vpcomwxxx: vropmemindexxop */
   33,  /* vpcomub: vropopimm */
   34,  /* vpcomubx: vropmemop */
   35,  /* vpcomubxx: vropmemindexop */
   36,  /* vpcomubxxx: vropmemindexxop */
   33,  /* vpcomud: vropopimm */
   34,  /* vpcomudx: vropmemop */
   35,  /* vpcomudxx: vropmemindexop */
   36,  /* vpcomudxxx: vropmemindexxop */
   33,  /* vpcomuq: vropopimm */
   34,  /* vpcomuqx: vropmemop */
   35,  /* vpcomuqxx: vropmemindexop */
   36,  /* vpcomuqxxx: vropmemindexxop */
   33,  /* vpcomuw: vropopimm */
   34,  /* vpcomuwx: vropmemop */
   35,  /* vpcomuwxx: vropmemindexop */
   36,  /* vpcomuwxxx: vropmemindexxop */
   33,  /* vpperm: vropopimm */
   34,  /* vppermx: vropmemop */
   35,  /* vppermxx: vropmemindexop */
   36,  /* vppermxxx: vropmemindexxop */
   37,  /* vppermxr: vropopmem */
   38,  /* vppermxxr: vropopmemindex */
   39,  /* vppermxxxr: vropopmemindexx */
   26,  /* vprotb: vropop */
   28,  /* vprotbx: vrmemop */
   30,  /* vprotbxx: vrmemindexop */
   32,  /* vprotbxxx: vrmemindexxop */
   27,  /* vprotbxr: vropmem */
   29,  /* vprotbxxr: vropmemindex */
   31,  /* vprotbxxxr: vropmemindexx */
   26,  /* vprotd: vropop */
   28,  /* vprotdx: vrmemop */
   30,  /* vprotdxx: vrmemindexop */
   32,  /* vprotdxxx: vrmemindexxop */
   27,  /* vprotdxr: vropmem */
   29,  /* vprotdxxr: vropmemindex */
   31,  /* vprotdxxxr: vropmemindexx */
   26,  /* vprotq: vropop */
   28,  /* vprotqx: vrmemop */
   30,  /* vprotqxx: vrmemindexop */
   32,  /* vprotqxxx: vrmemindexxop */
   27,  /* vprotqxr: vropmem */
   29,  /* vprotqxxr: vropmemindex */
   31,  /* vprotqxxxr: vropmemindexx */
   26,  /* vprotw: vropop */
   28,  /* vprotwx: vrmemop */
   30,  /* vprotwxx: vrmemindexop */
   32,  /* vprotwxxx: vrmemindexxop */
   27,  /* vprotwxr: vropmem */
   29,  /* vprotwxxr: vropmemindex */
   31,  /* vprotwxxxr: vropmemindexx */
   26,  /* vpshab: vropop */
   28,  /* vpshabx: vrmemop */
   30,  /* vpshabxx: vrmemindexop */
   32,  /* vpshabxxx: vrmemindexxop */
   27,  /* vpshabxr: vropmem */
   29,  /* vpshabxxr: vropmemindex */
   31,  /* vpshabxxxr: vropmemindexx */
   26,  /* vpshad: vropop */
   28,  /* vpshadx: vrmemop */
   30,  /* vpshadxx: vrmemindexop */
   32,  /* vpshadxxx: vrmemindexxop */
   27,  /* vpshadxr: vropmem */
   29,  /* vpshadxxr: vropmemindex */
   31,  /* vpshadxxxr: vropmemindexx */
   26,  /* vpshaq: vropop */
   28,  /* vpshaqx: vrmemop */
   30,  /* vpshaqxx: vrmemindexop */
   32,  /* vpshaqxxx: vrmemindexxop */
   27,  /* vpshaqxr: vropmem */
   29,  /* vpshaqxxr: vropmemindex */
   31,  /* vpshaqxxxr: vropmemindexx */
   26,  /* vpshaw: vropop */
   28,  /* vpshawx: vrmemop */
   30,  /* vpshawxx: vrmemindexop */
   32,  /* vpshawxxx: vrmemindexxop */
   27,  /* vpshawxr: vropmem */
   29,  /* vpshawxxr: vropmemindex */
   31,  /* vpshawxxxr: vropmemindexx */
   26,  /* vpshlb: vropop */
   28,  /* vpshlbx: vrmemop */
   30,  /* vpshlbxx: vrmemindexop */
   32,  /* vpshlbxxx: vrmemindexxop */
   27,  /* vpshlbxr: vropmem */
   29,  /* vpshlbxxr: vropmemindex */
   31,  /* vpshlbxxxr: vropmemindexx */
   26,  /* vpshld: vropop */
   28,  /* vpshldx: vrmemop */
   30,  /* vpshldxx: vrmemindexop */
   32,  /* vpshldxxx: vrmemindexxop */
   27,  /* vpshldxr: vropmem */
   29,  /* vpshldxxr: vropmemindex */
   31,  /* vpshldxxxr: vropmemindexx */
   26,  /* vpshlq: vropop */
   28,  /* vpshlqx: vrmemop */
   30,  /* vpshlqxx: vrmemindexop */
   32,  /* vpshlqxxx: vrmemindexxop */
   27,  /* vpshlqxr: vropmem */
   29,  /* vpshlqxxr: vropmemindex */
   31,  /* vpshlqxxxr: vropmemindexx */
   26,  /* vpshlw: vropop */
   28,  /* vpshlwx: vrmemop */
   30,  /* vpshlwxx: vrmemindexop */
   32,  /* vpshlwxxx: vrmemindexxop */
   27,  /* vpshlwxr: vropmem */
   29,  /* vpshlwxxr: vropmemindex */
   31,  /* vpshlwxxxr: vropmemindexx */
   33,  /* vpcmov: vropopimm */
   34,  /* vpcmovx: vropmemop */
   35,  /* vpcmovxx: vropmemindexop */
   36,  /* vpcmovxxx: vropmemindexxop */
   37,  /* vpcmovxr: vropopmem */
   38,  /* vpcmovxxr: vropopmemindex */
   39,  /* vpcmovxxxr: vropopmemindexx */
   33,  /* vpmacsdd: vropopimm */
   34,  /* vpmacsddx: vropmemop */
   35,  /* vpmacsddxx: vropmemindexop */
   36,  /* vpmacsddxxx: vropmemindexxop */
   33,  /* vpmacsdqh: vropopimm */
   34,  /* vpmacsdqhx: vropmemop */
   35,  /* vpmacsdqhxx: vropmemindexop */
   36,  /* vpmacsdqhxxx: vropmemindexxop */
   33,  /* vpmacsdql: vropopimm */
   34,  /* vpmacsdqlx: vropmemop */
   35,  /* vpmacsdqlxx: vropmemindexop */
   36,  /* vpmacsdqlxxx: vropmemindexxop */
   33,  /* vpmacssdd: vropopimm */
   34,  /* vpmacssddx: vropmemop */
   35,  /* vpmacssddxx: vropmemindexop */
   36,  /* vpmacssddxxx: vropmemindexxop */
   33,  /* vpmacssdqh: vropopimm */
   34,  /* vpmacssdqhx: vropmemop */
   35,  /* vpmacssdqhxx: vropmemindexop */
   36,  /* vpmacssdqhxxx: vropmemindexxop */
   33,  /* vpmacssdql: vropopimm */
   34,  /* vpmacssdqlx: vropmemop */
   35,  /* vpmacssdqlxx: vropmemindexop */
   36,  /* vpmacssdqlxxx: vropmemindexxop */
   33,  /* vpmacsswd: vropopimm */
   34,  /* vpmacsswdx: vropmemop */
   35,  /* vpmacsswdxx: vropmemindexop */
   36,  /* vpmacsswdxxx: vropmemindexxop */
   33,  /* vpmacssww: vropopimm */
   34,  /* vpmacsswwx: vropmemop */
   35,  /* vpmacsswwxx: vropmemindexop */
   36,  /* vpmacsswwxxx: vropmemindexxop */
   33,  /* vpmacswd: vropopimm */
   34,  /* vpmacswdx: vropmemop */
   35,  /* vpmacswdxx: vropmemindexop */
   36,  /* vpmacswdxxx: vropmemindexxop */
   33,  /* vpmacsww: vropopimm */
   34,  /* vpmacswwx: vropmemop */
   35,  /* vpmacswwxx: vropmemindexop */
   36,  /* vpmacswwxxx: vropmemindexxop */
   33,  /* vpmadcsswd: vropopimm */
   34,  /* vpmadcsswdx: vropmemop */
   35,  /* vpmadcsswdxx: vropmemindexop */
   36,  /* vpmadcsswdxxx: vropmemindexxop */
   33,  /* vpmadcswd: vropopimm */
   34,  /* vpmadcswdx: vropmemop */
   35,  /* vpmadcswdxx: vropmemindexop */
   36,  /* vpmadcswdxxx: vropmemindexxop */
   26,  /* vfadd128v64: vropop */
   27,  /* vfaddx128v64: vropmem */
   29,  /* vfaddxx128v64: vropmemindex */
   31,  /* vfaddxxx128v64: vropmemindexx */
   26,  /* vfadd128v32: vropop */
   27,  /* vfaddx128v32: vropmem */
   29,  /* vfaddxx128v32: vropmemindex */
   31,  /* vfaddxxx128v32: vropmemindexx */
   26,  /* vfaddsd: vropop */
   27,  /* vfaddxsd: vropmem */
   29,  /* vfaddxxsd: vropmemindex */
   31,  /* vfaddxxxsd: vropmemindexx */
   26,  /* vfaddss: vropop */
   27,  /* vfaddxss: vropmem */
   29,  /* vfaddxxss: vropmemindex */
   31,  /* vfaddxxxss: vropmemindexx */
   26,  /* vfaddsub128v64: vropop */
   27,  /* vfaddsubx128v64: vropmem */
   29,  /* vfaddsubxx128v64: vropmemindex */
   31,  /* vfaddsubxxx128v64: vropmemindexx */
   26,  /* vfaddsub128v32: vropop */
   27,  /* vfaddsubx128v32: vropmem */
   29,  /* vfaddsubxx128v32: vropmemindex */
   31,  /* vfaddsubxxx128v32: vropmemindexx */
   26,  /* vaesenc: vropop */
   27,  /* vaesencx: vropmem */
   29,  /* vaesencxx: vropmemindex */
   31,  /* vaesencxxx: vropmemindexx */
   26,  /* vaesenclast: vropop */
   27,  /* vaesenclastx: vropmem */
   29,  /* vaesenclastxx: vropmemindex */
   31,  /* vaesenclastxxx: vropmemindexx */
   26,  /* vaesdec: vropop */
   27,  /* vaesdecx: vropmem */
   29,  /* vaesdecxx: vropmemindex */
   31,  /* vaesdecxxx: vropmemindexx */
   26,  /* vaesdeclast: vropop */
   27,  /* vaesdeclastx: vropmem */
   29,  /* vaesdeclastxx: vropmemindex */
   31,  /* vaesdeclastxxx: vropmemindexx */
   64,  /* vaesimc: rop */
   65,  /* vaesimcx: rmem */
   66,  /* vaesimcxx: rmemindex */
   67,  /* vaesimcxxx: rmemindexx */
   26,  /* vaeskeygenassist: vropop */
   27,  /* vaeskeygenassistx: vropmem */
   29,  /* vaeskeygenassistxx: vropmemindex */
   31,  /* vaeskeygenassistxxx: vropmemindexx */
   26,  /* vandpd: vropop */
   26,  /* vfand128v64: vropop */
   27,  /* vfandx128v64: vropmem */
   29,  /* vfandxx128v64: vropmemindex */
   31,  /* vfandxxx128v64: vropmemindexx */
   26,  /* vandps: vropop */
   26,  /* vfand128v32: vropop */
   27,  /* vfandx128v32: vropmem */
   29,  /* vfandxx128v32: vropmemindex */
   31,  /* vfandxxx128v32: vropmemindexx */
   26,  /* vandnpd: vropop */
   26,  /* vfandn128v64: vropop */
   27,  /* vfandnx128v64: vropmem */
   29,  /* vfandnxx128v64: vropmemindex */
   31,  /* vfandnxxx128v64: vropmemindexx */
   26,  /* vandnps: vropop */
   26,  /* vfandn128v32: vropop */
   27,  /* vfandnx128v32: vropmem */
   29,  /* vfandnxx128v32: vropmemindex */
   31,  /* vfandnxxx128v32: vropmemindexx */
   33,  /* vfblend128v64: vropopimm */
   34,  /* vfblendx128v64: vropmemop */
   35,  /* vfblendxx128v64: vropmemindexop */
   36,  /* vfblendxxx128v64: vropmemindexxop */
   33,  /* vfblend128v32: vropopimm */
   34,  /* vfblendx128v32: vropmemop */
   35,  /* vfblendxx128v32: vropmemindexop */
   36,  /* vfblendxxx128v32: vropmemindexxop */
   33,  /* vfblendv128v64: vropopimm */
   34,  /* vfblendvx128v64: vropmemop */
   35,  /* vfblendvxx128v64: vropmemindexop */
   36,  /* vfblendvxxx128v64: vropmemindexxop */
   33,  /* vfblendv128v32: vropopimm */
   34,  /* vfblendvx128v32: vropmemop */
   35,  /* vfblendvxx128v32: vropmemindexop */
   36,  /* vfblendvxxx128v32: vropmemindexxop */
   69,  /* vfbroadcastss: load */
   72,  /* vfbroadcastxss: ldx */
   73,  /* vfbroadcastxxss: ldxx */
   69,  /* vfbroadcastsd: load */
   72,  /* vfbroadcastxsd: ldx */
   73,  /* vfbroadcastxxsd: ldxx */
   69,  /* vfbroadcastf128: load */
   72,  /* vfbroadcastxf128: ldx */
   73,  /* vfbroadcastxxf128: ldxx */
   33,  /* vcmppd: vropopimm */
   33,  /* vfcmp128v64: vropopimm */
   34,  /* vfcmpx128v64: vropmemop */
   35,  /* vfcmpxx128v64: vropmemindexop */
   36,  /* vfcmpxxx128v64: vropmemindexxop */
   33,  /* vcmpps: vropopimm */
   33,  /* vfcmp128v32: vropopimm */
   34,  /* vfcmpx128v32: vropmemop */
   35,  /* vfcmpxx128v32: vropmemindexop */
   36,  /* vfcmpxxx128v32: vropmemindexxop */
   33,  /* vfcmpsd: vropopimm */
   34,  /* vfcmpxsd: vropmemop */
   35,  /* vfcmpxxsd: vropmemindexop */
   36,  /* vfcmpxxxsd: vropmemindexxop */
   33,  /* vfcmpss: vropopimm */
   34,  /* vfcmpxss: vropmemop */
   35,  /* vfcmpxxss: vropmemindexop */
   36,  /* vfcmpxxxss: vropmemindexxop */
    4,  /* vcomisd: cmp */
    5,  /* vcomixsd: cmpx */
    8,  /* vcomixxsd: cmpxx */
   11,  /* vcomixxxsd: cmpxxx */
    4,  /* vcomiss: cmp */
    5,  /* vcomixss: cmpx */
    8,  /* vcomixxss: cmpxx */
   11,  /* vcomixxxss: cmpxxx */
   64,  /* vcvtdq2pd: rop */
   65,  /* vcvtdq2pdx: rmem */
   70,  /* vcvtdq2pdxx: leax */
   71,  /* vcvtdq2pdxxx: leaxx */
   64,  /* vcvtdq2ps: rop */
   65,  /* vcvtdq2psx: rmem */
   70,  /* vcvtdq2psxx: leax */
   71,  /* vcvtdq2psxxx: leaxx */
   64,  /* vcvtpd2dq: rop */
   65,  /* vcvtpd2dqx: rmem */
   70,  /* vcvtpd2dqxx: leax */
   71,  /* vcvtpd2dqxxx: leaxx */
   64,  /* vcvtpd2dqy: rop */
   65,  /* vcvtpd2dqyx: rmem */
   70,  /* vcvtpd2dqyxx: leax */
   71,  /* vcvtpd2dqyxxx: leaxx */
   64,  /* vcvtpd2ps: rop */
   65,  /* vcvtpd2psx: rmem */
   70,  /* vcvtpd2psxx: leax */
   71,  /* vcvtpd2psxxx: leaxx */
   64,  /* vcvtpd2psy: rop */
   65,  /* vcvtpd2psyx: rmem */
   70,  /* vcvtpd2psyxx: leax */
   71,  /* vcvtpd2psyxxx: leaxx */
   64,  /* vcvtps2dq: rop */
   65,  /* vcvtps2dqx: rmem */
   70,  /* vcvtps2dqxx: leax */
   71,  /* vcvtps2dqxxx: leaxx */
   64,  /* vcvtps2pd: rop */
   65,  /* vcvtps2pdx: rmem */
   70,  /* vcvtps2pdxx: leax */
   71,  /* vcvtps2pdxxx: leaxx */
   64,  /* vcvtsd2si: rop */
   64,  /* vcvtsd2siq: rop */
   64,  /* vcvtsd2ss: rop */
   27,  /* vcvtsd2ssx: vropmem */
   29,  /* vcvtsd2ssxx: vropmemindex */
   31,  /* vcvtsd2ssxxx: vropmemindexx */
   26,  /* vcvtsi2sd: vropop */
   27,  /* vcvtsi2sdx: vropmem */
   29,  /* vcvtsi2sdxx: vropmemindex */
   31,  /* vcvtsi2sdxxx: vropmemindexx */
   26,  /* vcvtsi2sdq: vropop */
   27,  /* vcvtsi2sdqx: vropmem */
   29,  /* vcvtsi2sdqxx: vropmemindex */
   31,  /* vcvtsi2sdqxxx: vropmemindexx */
   26,  /* vcvtsi2ss: vropop */
   27,  /* vcvtsi2ssx: vropmem */
   29,  /* vcvtsi2ssxx: vropmemindex */
   31,  /* vcvtsi2ssxxx: vropmemindexx */
   26,  /* vcvtsi2ssq: vropop */
   27,  /* vcvtsi2ssqx: vropmem */
   29,  /* vcvtsi2ssqxx: vropmemindex */
   31,  /* vcvtsi2ssqxxx: vropmemindexx */
   64,  /* vcvtss2sd: rop */
   27,  /* vcvtss2sdx: vropmem */
   29,  /* vcvtss2sdxx: vropmemindex */
   31,  /* vcvtss2sdxxx: vropmemindexx */
   64,  /* vcvtss2si: rop */
   64,  /* vcvtss2siq: rop */
   64,  /* vcvttpd2dq: rop */
   65,  /* vcvttpd2dqx: rmem */
   70,  /* vcvttpd2dqxx: leax */
   71,  /* vcvttpd2dqxxx: leaxx */
   64,  /* vcvttpd2dqy: rop */
   65,  /* vcvttpd2dqyx: rmem */
   70,  /* vcvttpd2dqyxx: leax */
   71,  /* vcvttpd2dqyxxx: leaxx */
   64,  /* vcvttps2dq: rop */
   65,  /* vcvttps2dqx: rmem */
   70,  /* vcvttps2dqxx: leax */
   71,  /* vcvttps2dqxxx: leaxx */
   64,  /* vcvttsd2si: rop */
   64,  /* vcvttsd2siq: rop */
   64,  /* vcvttss2si: rop */
   64,  /* vcvttss2siq: rop */
   26,  /* vfdiv128v64: vropop */
   27,  /* vfdivx128v64: vropmem */
   29,  /* vfdivxx128v64: vropmemindex */
   31,  /* vfdivxxx128v64: vropmemindexx */
   26,  /* vfdiv128v32: vropop */
   27,  /* vfdivx128v32: vropmem */
   29,  /* vfdivxx128v32: vropmemindex */
   31,  /* vfdivxxx128v32: vropmemindexx */
   26,  /* vdivsd: vropop */
   27,  /* vdivxsd: vropmem */
   29,  /* vdivxxsd: vropmemindex */
   31,  /* vdivxxxsd: vropmemindexx */
   26,  /* vdivss: vropop */
   27,  /* vdivxss: vropmem */
   29,  /* vdivxxss: vropmemindex */
   31,  /* vdivxxxss: vropmemindexx */
   33,  /* vfdp128v64: vropopimm */
   34,  /* vfdpx128v64: vropmemop */
   35,  /* vfdpxx128v64: vropmemindexop */
   36,  /* vfdpxxx128v64: vropmemindexxop */
   33,  /* vfdp128v32: vropopimm */
   34,  /* vfdpx128v32: vropmemop */
   35,  /* vfdpxx128v32: vropmemindexop */
   36,  /* vfdpxxx128v32: vropmemindexxop */
   26,  /* vfextrf128: vropop */
   27,  /* vfextrxf128: vropmem */
   29,  /* vfextrxxf128: vropmemindex */
   31,  /* vfextrxxxf128: vropmemindexx */
   26,  /* vfextr128v32: vropop */
   27,  /* vfextrx128v32: vropmem */
   29,  /* vfextrxx128v32: vropmemindex */
   31,  /* vfextrxxx128v32: vropmemindexx */
   26,  /* vfhadd128v64: vropop */
   27,  /* vfhaddx128v64: vropmem */
   29,  /* vfhaddxx128v64: vropmemindex */
   31,  /* vfhaddxxx128v64: vropmemindexx */
   26,  /* vfhadd128v32: vropop */
   27,  /* vfhaddx128v32: vropmem */
   29,  /* vfhaddxx128v32: vropmemindex */
   31,  /* vfhaddxxx128v32: vropmemindexx */
   26,  /* vfhsub128v64: vropop */
   27,  /* vfhsubx128v64: vropmem */
   29,  /* vfhsubxx128v64: vropmemindex */
   31,  /* vfhsubxxx128v64: vropmemindexx */
   26,  /* vfhsub128v32: vropop */
   27,  /* vfhsubx128v32: vropmem */
   29,  /* vfhsubxx128v32: vropmemindex */
   31,  /* vfhsubxxx128v32: vropmemindexx */
   33,  /* vfinsrf128: vropopimm */
   34,  /* vfinsrxf128: vropmemop */
   35,  /* vfinsrxxf128: vropmemindexop */
   36,  /* vfinsrxxxf128: vropmemindexxop */
   33,  /* vfinsr128v32: vropopimm */
   34,  /* vfinsrx128v32: vropmemop */
   35,  /* vfinsrxx128v32: vropmemindexop */
   36,  /* vfinsrxxx128v32: vropmemindexxop */
   69,  /* vlddqu: load */
   72,  /* vlddqux: ldx */
   73,  /* vlddquxx: ldxx */
   64,  /* vlddqu_n32: rop */
  111,  /* vldmxcsr: stmxcsr */
   64,  /* vmaskmovdqu: rop */
   82,  /* vfmaskld128v32: vmaskload */
   83,  /* vfmaskldx128v32: vmaskloadindex */
   84,  /* vfmaskldxx128v32: vmaskloadindexx */
   82,  /* vfmaskld128v64: vmaskload */
   83,  /* vfmaskldx128v64: vmaskloadindex */
   84,  /* vfmaskldxx128v64: vmaskloadindexx */
   85,  /* vfmaskst128v32: vmaskstore */
   86,  /* vfmaskstx128v32: vmaskstoreindex */
   87,  /* vfmaskstxx128v32: vmaskstoreindexx */
   85,  /* vfmaskst128v64: vmaskstore */
   86,  /* vfmaskstx128v64: vmaskstoreindex */
   87,  /* vfmaskstxx128v64: vmaskstoreindexx */
   26,  /* vfmax128v64: vropop */
   27,  /* vfmaxx128v64: vropmem */
   29,  /* vfmaxxx128v64: vropmemindex */
   31,  /* vfmaxxxx128v64: vropmemindexx */
   26,  /* vfmax128v32: vropop */
   27,  /* vfmaxx128v32: vropmem */
   29,  /* vfmaxxx128v32: vropmemindex */
   31,  /* vfmaxxxx128v32: vropmemindexx */
   26,  /* vfmaxsd: vropop */
   27,  /* vfmaxxsd: vropmem */
   29,  /* vfmaxxxsd: vropmemindex */
   31,  /* vfmaxxxxsd: vropmemindexx */
   26,  /* vfmaxss: vropop */
   27,  /* vfmaxxss: vropmem */
   29,  /* vfmaxxxss: vropmemindex */
   31,  /* vfmaxxxxss: vropmemindexx */
   26,  /* vfmin128v64: vropop */
   27,  /* vfminx128v64: vropmem */
   29,  /* vfminxx128v64: vropmemindex */
   31,  /* vfminxxx128v64: vropmemindexx */
   26,  /* vfmin128v32: vropop */
   27,  /* vfminx128v32: vropmem */
   29,  /* vfminxx128v32: vropmemindex */
   31,  /* vfminxxx128v32: vropmemindexx */
   26,  /* vfminsd: vropop */
   27,  /* vfminxsd: vropmem */
   29,  /* vfminxxsd: vropmemindex */
   31,  /* vfminxxxsd: vropmemindexx */
   26,  /* vfminss: vropop */
   27,  /* vfminxss: vropmem */
   29,  /* vfminxxss: vropmemindex */
   31,  /* vfminxxxss: vropmemindexx */
   64,  /* vmovapd: rop */
   69,  /* vldapd: load */
   72,  /* vldapdx: ldx */
   73,  /* vldapdxx: ldxx */
   64,  /* vldapd_n32: rop */
   81,  /* vstapd: store */
   74,  /* vstapdx: storex */
   77,  /* vstapdxx: storexx */
   64,  /* vstapd_n32: rop */
   64,  /* vmovaps: rop */
   69,  /* vldaps: load */
   72,  /* vldapsx: ldx */
   73,  /* vldapsxx: ldxx */
   64,  /* vldaps_n32: rop */
   81,  /* vstaps: store */
   74,  /* vstapsx: storex */
   77,  /* vstapsxx: storexx */
   64,  /* vstaps_n32: rop */
   64,  /* vmovg2x: rop */
   64,  /* vmovg2x64: rop */
   64,  /* vmovx2g: rop */
   64,  /* vmovx2g64: rop */
   69,  /* vld64_2sse: load */
   72,  /* vldx64_2sse: ldx */
   73,  /* vldxx64_2sse: ldxx */
   64,  /* vld64_2sse_n32: rop */
   64,  /* vst64_fsse: rop */
   74,  /* vstx64_fsse: storex */
   77,  /* vstxx64_fsse: storexx */
   64,  /* vst64_fsse_n32: rop */
   64,  /* vmovddup: rop */
   65,  /* vmovddupx: rmem */
   66,  /* vmovddupxx: rmemindex */
   67,  /* vmovddupxxx: rmemindexx */
   69,  /* vlddqa: load */
   72,  /* vlddqax: ldx */
   73,  /* vlddqaxx: ldxx */
   64,  /* vlddqa_n32: rop */
   64,  /* vmovdqa: rop */
   81,  /* vstdqa: store */
   74,  /* vstdqax: storex */
   77,  /* vstdqaxx: storexx */
   64,  /* vstdqa_n32: rop */
   81,  /* vstdqu: store */
   74,  /* vstdqux: storex */
   77,  /* vstdquxx: storexx */
   64,  /* vstdqu_n32: rop */
   69,  /* vldhpd: load */
   72,  /* vldhpdx: ldx */
   73,  /* vldhpdxx: ldxx */
   64,  /* vldhpd_n32: rop */
   81,  /* vsthpd: store */
   74,  /* vsthpdx: storex */
   77,  /* vsthpdxx: storexx */
   64,  /* vsthpd_n32: rop */
   69,  /* vldhps: load */
   72,  /* vldhpsx: ldx */
   73,  /* vldhpsxx: ldxx */
   64,  /* vldhps_n32: rop */
   81,  /* vsthps: store */
   74,  /* vsthpsx: storex */
   77,  /* vsthpsxx: storexx */
   64,  /* vsthps_n32: rop */
   69,  /* vldlpd: load */
   72,  /* vldlpdx: ldx */
   73,  /* vldlpdxx: ldxx */
   64,  /* vldlpd_n32: rop */
   81,  /* vstorelpd: store */
   81,  /* vstlpd: store */
   74,  /* vstlpdx: storex */
   77,  /* vstlpdxx: storexx */
   64,  /* vstlpd_n32: rop */
   69,  /* vldlps: load */
   72,  /* vldlpsx: ldx */
   73,  /* vldlpsxx: ldxx */
   64,  /* vldlps_n32: rop */
   81,  /* vstlps: store */
   74,  /* vstlpsx: storex */
   77,  /* vstlpsxx: storexx */
   64,  /* vstlps_n32: rop */
   92,  /* vmovmskpd: vmovmsk */
   92,  /* vmovmskps: vmovmsk */
   81,  /* vstorenti128: store */
   74,  /* vstorentxi128: storex */
   77,  /* vstorentxxi128: storexx */
   69,  /* vldntdqa: load */
   72,  /* vldntdqax: ldx */
   73,  /* vldntdqaxx: ldxx */
   81,  /* vstntdq: store */
   74,  /* vstntdqx: storex */
   77,  /* vstntdqxx: storexx */
   81,  /* vstntpd: store */
   74,  /* vstntpdx: storex */
   77,  /* vstntpdxx: storexx */
   81,  /* vstntps: store */
   74,  /* vstntpsx: storex */
   77,  /* vstntpsxx: storexx */
   81,  /* vstntsd: store */
   74,  /* vstntsdx: storex */
   77,  /* vstntsdxx: storexx */
   81,  /* vstntss: store */
   74,  /* vstntssx: storex */
   77,  /* vstntssxx: storexx */
   26,  /* vmovsd: vropop */
   69,  /* vldsd: load */
   72,  /* vldsdx: ldx */
   73,  /* vldsdxx: ldxx */
   64,  /* vldsd_n32: rop */
   81,  /* vstsd: store */
   74,  /* vstsdx: storex */
   77,  /* vstsdxx: storexx */
   68,  /* vstsd_n32: opop1 */
   26,  /* vmovss: vropop */
   69,  /* vldss: load */
   72,  /* vldssx: ldx */
   73,  /* vldssxx: ldxx */
   64,  /* vldss_n32: rop */
   81,  /* vstss: store */
   74,  /* vstssx: storex */
   77,  /* vstssxx: storexx */
   68,  /* vstss_n32: opop1 */
   26,  /* vmovlhps: vropop */
   26,  /* vmovhlps: vropop */
   64,  /* vmovshdup: rop */
   65,  /* vmovshdupx: rmem */
   66,  /* vmovshdupxx: rmemindex */
   67,  /* vmovshdupxxx: rmemindexx */
   64,  /* vmovsldup: rop */
   65,  /* vmovsldupx: rmem */
   66,  /* vmovsldupxx: rmemindex */
   67,  /* vmovsldupxxx: rmemindexx */
   69,  /* vldupd: load */
   72,  /* vldupdx: ldx */
   73,  /* vldupdxx: ldxx */
   64,  /* vldupd_n32: rop */
   81,  /* vstupd: store */
   74,  /* vstupdx: storex */
   77,  /* vstupdxx: storexx */
   64,  /* vstupd_n32: rop */
   69,  /* vldups: load */
   72,  /* vldupsx: ldx */
   73,  /* vldupsxx: ldxx */
   64,  /* vldups_n32: rop */
   81,  /* vstups: store */
   74,  /* vstupsx: storex */
   77,  /* vstupsxx: storexx */
   68,  /* vstups_n32: opop1 */
   33,  /* vmpsadbw: vropopimm */
   34,  /* vmpsadbwx: vropmemop */
   35,  /* vmpsadbwxx: vropmemindexop */
   36,  /* vmpsadbwxxx: vropmemindexxop */
   26,  /* vfmul128v64: vropop */
   27,  /* vfmulx128v64: vropmem */
   29,  /* vfmulxx128v64: vropmemindex */
   31,  /* vfmulxxx128v64: vropmemindexx */
   26,  /* vfmul128v32: vropop */
   27,  /* vfmulx128v32: vropmem */
   29,  /* vfmulxx128v32: vropmemindex */
   31,  /* vfmulxxx128v32: vropmemindexx */
   26,  /* vmulsd: vropop */
   27,  /* vmulxsd: vropmem */
   29,  /* vmulxxsd: vropmemindex */
   31,  /* vmulxxxsd: vropmemindexx */
   26,  /* vmulss: vropop */
   27,  /* vmulxss: vropmem */
   29,  /* vmulxxss: vropmemindex */
   31,  /* vmulxxxss: vropmemindexx */
   26,  /* vorpd: vropop */
   26,  /* vfor128v64: vropop */
   27,  /* vforx128v64: vropmem */
   29,  /* vforxx128v64: vropmemindex */
   31,  /* vforxxx128v64: vropmemindexx */
   26,  /* vorps: vropop */
   26,  /* vfor128v32: vropop */
   27,  /* vforx128v32: vropmem */
   29,  /* vforxx128v32: vropmemindex */
   31,  /* vforxxx128v32: vropmemindexx */
   64,  /* vabs128v8: rop */
   65,  /* vabsx128v8: rmem */
   66,  /* vabsxx128v8: rmemindex */
   67,  /* vabsxxx128v8: rmemindexx */
   64,  /* vabs128v32: rop */
   65,  /* vabsx128v32: rmem */
   66,  /* vabsxx128v32: rmemindex */
   67,  /* vabsxxx128v32: rmemindexx */
   64,  /* vabs128v16: rop */
   65,  /* vabsx128v16: rmem */
   66,  /* vabsxx128v16: rmemindex */
   67,  /* vabsxxx128v16: rmemindexx */
   26,  /* vpackssdw: vropop */
   27,  /* vpackssdwx: vropmem */
   29,  /* vpackssdwxx: vropmemindex */
   31,  /* vpackssdwxxx: vropmemindexx */
   26,  /* vpacksswb: vropop */
   27,  /* vpacksswbx: vropmem */
   29,  /* vpacksswbxx: vropmemindex */
   31,  /* vpacksswbxxx: vropmemindexx */
   26,  /* vpackusdw: vropop */
   27,  /* vpackusdwx: vropmem */
   29,  /* vpackusdwxx: vropmemindex */
   31,  /* vpackusdwxxx: vropmemindexx */
   26,  /* vpackuswb: vropop */
   27,  /* vpackuswbx: vropmem */
   29,  /* vpackuswbxx: vropmemindex */
   31,  /* vpackuswbxxx: vropmemindexx */
   26,  /* vadd128v8: vropop */
   27,  /* vaddx128v8: vropmem */
   29,  /* vaddxx128v8: vropmemindex */
   31,  /* vaddxxx128v8: vropmemindexx */
   26,  /* vadd128v32: vropop */
   27,  /* vaddx128v32: vropmem */
   29,  /* vaddxx128v32: vropmemindex */
   31,  /* vaddxxx128v32: vropmemindexx */
   26,  /* vadd128v64: vropop */
   27,  /* vaddx128v64: vropmem */
   29,  /* vaddxx128v64: vropmemindex */
   31,  /* vaddxxx128v64: vropmemindexx */
   26,  /* vadd128v16: vropop */
   27,  /* vaddx128v16: vropmem */
   29,  /* vaddxx128v16: vropmemindex */
   31,  /* vaddxxx128v16: vropmemindexx */
   26,  /* vadds128v8: vropop */
   27,  /* vaddsx128v8: vropmem */
   29,  /* vaddsxx128v8: vropmemindex */
   31,  /* vaddsxxx128v8: vropmemindexx */
   26,  /* vadds128v16: vropop */
   27,  /* vaddsx128v16: vropmem */
   29,  /* vaddsxx128v16: vropmemindex */
   31,  /* vaddsxxx128v16: vropmemindexx */
   26,  /* vaddus128v8: vropop */
   27,  /* vaddusx128v8: vropmem */
   29,  /* vaddusxx128v8: vropmemindex */
   31,  /* vaddusxxx128v8: vropmemindexx */
   26,  /* vaddus128v16: vropop */
   27,  /* vaddusx128v16: vropmem */
   29,  /* vaddusxx128v16: vropmemindex */
   31,  /* vaddusxxx128v16: vropmemindexx */
   33,  /* vpalignr128: vropopimm */
   34,  /* vpalignrx128: vropmemop */
   35,  /* vpalignrxx128: vropmemindexop */
   36,  /* vpalignrxxx128: vropmemindexxop */
   26,  /* vand128v8: vropop */
   27,  /* vandx128v8: vropmem */
   29,  /* vandxx128v8: vropmemindex */
   31,  /* vandxxx128v8: vropmemindexx */
   26,  /* vand128v16: vropop */
   27,  /* vandx128v16: vropmem */
   29,  /* vandxx128v16: vropmemindex */
   31,  /* vandxxx128v16: vropmemindexx */
   26,  /* vand128v32: vropop */
   27,  /* vandx128v32: vropmem */
   29,  /* vandxx128v32: vropmemindex */
   31,  /* vandxxx128v32: vropmemindexx */
   26,  /* vand128v64: vropop */
   27,  /* vandx128v64: vropmem */
   29,  /* vandxx128v64: vropmemindex */
   31,  /* vandxxx128v64: vropmemindexx */
   26,  /* vandn128v8: vropop */
   27,  /* vandnx128v8: vropmem */
   29,  /* vandnxx128v8: vropmemindex */
   31,  /* vandnxxx128v8: vropmemindexx */
   26,  /* vandn128v16: vropop */
   27,  /* vandnx128v16: vropmem */
   29,  /* vandnxx128v16: vropmemindex */
   31,  /* vandnxxx128v16: vropmemindexx */
   26,  /* vandn128v32: vropop */
   27,  /* vandnx128v32: vropmem */
   29,  /* vandnxx128v32: vropmemindex */
   31,  /* vandnxxx128v32: vropmemindexx */
   26,  /* vandn128v64: vropop */
   27,  /* vandnx128v64: vropmem */
   29,  /* vandnxx128v64: vropmemindex */
   31,  /* vandnxxx128v64: vropmemindexx */
   26,  /* vpavgb: vropop */
   27,  /* vpavgbx: vropmem */
   29,  /* vpavgbxx: vropmemindex */
   31,  /* vpavgbxxx: vropmemindexx */
   26,  /* vpavgw: vropop */
   27,  /* vpavgwx: vropmem */
   29,  /* vpavgwxx: vropmemindex */
   31,  /* vpavgwxxx: vropmemindexx */
   33,  /* vblendv128v8: vropopimm */
   34,  /* vblendvx128v8: vropmemop */
   35,  /* vblendvxx128v8: vropmemindexop */
   36,  /* vblendvxxx128v8: vropmemindexxop */
   33,  /* vblend128v16: vropopimm */
   34,  /* vblendx128v16: vropmemop */
   35,  /* vblendxx128v16: vropmemindexop */
   36,  /* vblendxxx128v16: vropmemindexxop */
   33,  /* vpclmulqdq: vropopimm */
   34,  /* vpclmulqdqx: vropmemop */
   35,  /* vpclmulqdqxx: vropmemindexop */
   36,  /* vpclmulqdqxxx: vropmemindexxop */
   26,  /* vcmpeq128v8: vropop */
   27,  /* vcmpeqx128v8: vropmem */
   29,  /* vcmpeqxx128v8: vropmemindex */
   31,  /* vcmpeqxxx128v8: vropmemindexx */
   26,  /* vcmpeq128v32: vropop */
   27,  /* vcmpeqx128v32: vropmem */
   29,  /* vcmpeqxx128v32: vropmemindex */
   31,  /* vcmpeqxxx128v32: vropmemindexx */
   26,  /* vcmpeq128v64: vropop */
   27,  /* vcmpeqx128v64: vropmem */
   29,  /* vcmpeqxx128v64: vropmemindex */
   31,  /* vcmpeqxxx128v64: vropmemindexx */
   26,  /* vcmpeq128v16: vropop */
   27,  /* vcmpeqx128v16: vropmem */
   29,  /* vcmpeqxx128v16: vropmemindex */
   31,  /* vcmpeqxxx128v16: vropmemindexx */
   48,  /* vcmpestri: pcmpestr */
   49,  /* vcmpestrix: pcmpestrmem */
   50,  /* vcmpestrixx: pcmpestrmemindex */
   51,  /* vcmpestrixxx: pcmpestrmemindexx */
   48,  /* vcmpestrm: pcmpestr */
   49,  /* vcmpestrmx: pcmpestrmem */
   50,  /* vcmpestrmxx: pcmpestrmemindex */
   51,  /* vcmpestrmxxx: pcmpestrmemindexx */
   26,  /* vcmpgt128v8: vropop */
   27,  /* vcmpgtx128v8: vropmem */
   29,  /* vcmpgtxx128v8: vropmemindex */
   31,  /* vcmpgtxxx128v8: vropmemindexx */
   26,  /* vcmpgt128v32: vropop */
   27,  /* vcmpgtx128v32: vropmem */
   29,  /* vcmpgtxx128v32: vropmemindex */
   31,  /* vcmpgtxxx128v32: vropmemindexx */
   26,  /* vcmpgt128v64: vropop */
   27,  /* vcmpgtx128v64: vropmem */
   29,  /* vcmpgtxx128v64: vropmemindex */
   31,  /* vcmpgtxxx128v64: vropmemindexx */
   26,  /* vcmpgt128v16: vropop */
   27,  /* vcmpgtx128v16: vropmem */
   29,  /* vcmpgtxx128v16: vropmemindex */
   31,  /* vcmpgtxxx128v16: vropmemindexx */
   52,  /* vcmpistri: pcmpistr */
   53,  /* vcmpistrix: pcmpistrmem */
   54,  /* vcmpistrixx: pcmpistrmemindex */
   55,  /* vcmpistrixxx: pcmpistrmemindexx */
   52,  /* vcmpistrm: pcmpistr */
   53,  /* vcmpistrmx: pcmpistrmem */
   54,  /* vcmpistrmxx: pcmpistrmemindex */
   55,  /* vcmpistrmxxx: pcmpistrmemindexx */
   26,  /* vfperm128v64: vropop */
   27,  /* vfpermx128v64: vropmem */
   29,  /* vfpermxx128v64: vropmemindex */
   31,  /* vfpermxxx128v64: vropmemindexx */
   26,  /* vfpermi128v64: vropop */
   27,  /* vfpermix128v64: vropmem */
   29,  /* vfpermixx128v64: vropmemindex */
   31,  /* vfpermixxx128v64: vropmemindexx */
   26,  /* vfperm128v32: vropop */
   27,  /* vfpermx128v32: vropmem */
   29,  /* vfpermxx128v32: vropmemindex */
   31,  /* vfpermxxx128v32: vropmemindexx */
   26,  /* vfpermi128v32: vropop */
   27,  /* vfpermix128v32: vropmem */
   29,  /* vfpermixx128v32: vropmemindex */
   31,  /* vfpermixxx128v32: vropmemindexx */
   33,  /* vfperm2f128: vropopimm */
   34,  /* vfperm2xf128: vropmemop */
   35,  /* vfperm2xxf128: vropmemindexop */
   36,  /* vfperm2xxxf128: vropmemindexxop */
   26,  /* vextr128v8: vropop */
   27,  /* vextrx128v8: vropmem */
   29,  /* vextrxx128v8: vropmemindex */
   31,  /* vextrxxx128v8: vropmemindexx */
   26,  /* vextr128v32: vropop */
   27,  /* vextrx128v32: vropmem */
   29,  /* vextrxx128v32: vropmemindex */
   31,  /* vextrxxx128v32: vropmemindexx */
   26,  /* vextr128v64: vropop */
   27,  /* vextrx128v64: vropmem */
   29,  /* vextrxx128v64: vropmemindex */
   31,  /* vextrxxx128v64: vropmemindexx */
   26,  /* vextr128v16: vropop */
   27,  /* vextrx128v16: vropmem */
   29,  /* vextrxx128v16: vropmemindex */
   31,  /* vextrxxx128v16: vropmemindexx */
   26,  /* vphadd128v32: vropop */
   27,  /* vphaddx128v32: vropmem */
   29,  /* vphaddxx128v32: vropmemindex */
   31,  /* vphaddxxx128v32: vropmemindexx */
   26,  /* vphadds128v16: vropop */
   27,  /* vphaddsx128v16: vropmem */
   29,  /* vphaddsxx128v16: vropmemindex */
   31,  /* vphaddsxxx128v16: vropmemindexx */
   26,  /* vphadd128v16: vropop */
   27,  /* vphaddx128v16: vropmem */
   29,  /* vphaddxx128v16: vropmemindex */
   31,  /* vphaddxxx128v16: vropmemindexx */
   64,  /* vphminposuw: rop */
   65,  /* vphminposuwx: rmem */
   66,  /* vphminposuwxx: rmemindex */
   67,  /* vphminposuwxxx: rmemindexx */
   26,  /* vphsub128v32: vropop */
   27,  /* vphsubx128v32: vropmem */
   29,  /* vphsubxx128v32: vropmemindex */
   31,  /* vphsubxxx128v32: vropmemindexx */
   26,  /* vphsubs128v16: vropop */
   27,  /* vphsubsx128v16: vropmem */
   29,  /* vphsubsxx128v16: vropmemindex */
   31,  /* vphsubsxxx128v16: vropmemindexx */
   26,  /* vphsub128v16: vropop */
   27,  /* vphsubx128v16: vropmem */
   29,  /* vphsubxx128v16: vropmemindex */
   31,  /* vphsubxxx128v16: vropmemindexx */
   33,  /* vinsr128v8: vropopimm */
   34,  /* vinsrx128v8: vropmemop */
   35,  /* vinsrxx128v8: vropmemindexop */
   36,  /* vinsrxxx128v8: vropmemindexxop */
   33,  /* vinsr128v32: vropopimm */
   34,  /* vinsrx128v32: vropmemop */
   35,  /* vinsrxx128v32: vropmemindexop */
   36,  /* vinsrxxx128v32: vropmemindexxop */
   33,  /* vinsr128v64: vropopimm */
   34,  /* vinsrx128v64: vropmemop */
   35,  /* vinsrxx128v64: vropmemindexop */
   36,  /* vinsrxxx128v64: vropmemindexxop */
   33,  /* vinsr128v16: vropopimm */
   34,  /* vinsrx128v16: vropmemop */
   35,  /* vinsrxx128v16: vropmemindexop */
   36,  /* vinsrxxx128v16: vropmemindexxop */
   26,  /* vpmaddwd: vropop */
   27,  /* vpmaddwdx: vropmem */
   29,  /* vpmaddwdxx: vropmemindex */
   31,  /* vpmaddwdxxx: vropmemindexx */
   26,  /* vpmaddubsw128: vropop */
   27,  /* vpmaddubswx128: vropmem */
   29,  /* vpmaddubswxx128: vropmemindex */
   31,  /* vpmaddubswxxx128: vropmemindexx */
   26,  /* vmaxs128v8: vropop */
   27,  /* vmaxsx128v8: vropmem */
   29,  /* vmaxsxx128v8: vropmemindex */
   31,  /* vmaxsxxx128v8: vropmemindexx */
   26,  /* vmaxs128v32: vropop */
   27,  /* vmaxsx128v32: vropmem */
   29,  /* vmaxsxx128v32: vropmemindex */
   31,  /* vmaxsxxx128v32: vropmemindexx */
   26,  /* vmaxs128v16: vropop */
   27,  /* vmaxsx128v16: vropmem */
   29,  /* vmaxsxx128v16: vropmemindex */
   31,  /* vmaxsxxx128v16: vropmemindexx */
   26,  /* vmaxu128v8: vropop */
   27,  /* vmaxux128v8: vropmem */
   29,  /* vmaxuxx128v8: vropmemindex */
   31,  /* vmaxuxxx128v8: vropmemindexx */
   26,  /* vmaxu128v32: vropop */
   27,  /* vmaxux128v32: vropmem */
   29,  /* vmaxuxx128v32: vropmemindex */
   31,  /* vmaxuxxx128v32: vropmemindexx */
   26,  /* vmaxu128v16: vropop */
   27,  /* vmaxux128v16: vropmem */
   29,  /* vmaxuxx128v16: vropmemindex */
   31,  /* vmaxuxxx128v16: vropmemindexx */
   26,  /* vmins128v8: vropop */
   27,  /* vminsx128v8: vropmem */
   29,  /* vminsxx128v8: vropmemindex */
   31,  /* vminsxxx128v8: vropmemindexx */
   26,  /* vmins128v32: vropop */
   27,  /* vminsx128v32: vropmem */
   29,  /* vminsxx128v32: vropmemindex */
   31,  /* vminsxxx128v32: vropmemindexx */
   26,  /* vmins128v16: vropop */
   27,  /* vminsx128v16: vropmem */
   29,  /* vminsxx128v16: vropmemindex */
   31,  /* vminsxxx128v16: vropmemindexx */
   26,  /* vminu128v8: vropop */
   27,  /* vminux128v8: vropmem */
   29,  /* vminuxx128v8: vropmemindex */
   31,  /* vminuxxx128v8: vropmemindexx */
   26,  /* vminu128v32: vropop */
   27,  /* vminux128v32: vropmem */
   29,  /* vminuxx128v32: vropmemindex */
   31,  /* vminuxxx128v32: vropmemindexx */
   26,  /* vminu128v16: vropop */
   27,  /* vminux128v16: vropmem */
   29,  /* vminuxx128v16: vropmemindex */
   31,  /* vminuxxx128v16: vropmemindexx */
   64,  /* vpmovmskb128: rop */
   64,  /* vpmovsxbd: rop */
   65,  /* vpmovsxbdx: rmem */
   66,  /* vpmovsxbdxx: rmemindex */
   67,  /* vpmovsxbdxxx: rmemindexx */
   64,  /* vpmovsxbq: rop */
   65,  /* vpmovsxbqx: rmem */
   66,  /* vpmovsxbqxx: rmemindex */
   67,  /* vpmovsxbqxxx: rmemindexx */
   64,  /* vpmovsxbw: rop */
   65,  /* vpmovsxbwx: rmem */
   66,  /* vpmovsxbwxx: rmemindex */
   67,  /* vpmovsxbwxxx: rmemindexx */
   64,  /* vpmovsxdq: rop */
   65,  /* vpmovsxdqx: rmem */
   66,  /* vpmovsxdqxx: rmemindex */
   67,  /* vpmovsxdqxxx: rmemindexx */
   64,  /* vpmovsxwd: rop */
   65,  /* vpmovsxwdx: rmem */
   66,  /* vpmovsxwdxx: rmemindex */
   67,  /* vpmovsxwdxxx: rmemindexx */
   64,  /* vpmovsxwq: rop */
   65,  /* vpmovsxwqx: rmem */
   66,  /* vpmovsxwqxx: rmemindex */
   67,  /* vpmovsxwqxxx: rmemindexx */
   64,  /* vpmovzxbd: rop */
   65,  /* vpmovzxbdx: rmem */
   66,  /* vpmovzxbdxx: rmemindex */
   67,  /* vpmovzxbdxxx: rmemindexx */
   64,  /* vpmovzxbq: rop */
   65,  /* vpmovzxbqx: rmem */
   66,  /* vpmovzxbqxx: rmemindex */
   67,  /* vpmovzxbqxxx: rmemindexx */
   64,  /* vpmovzxbw: rop */
   65,  /* vpmovzxbwx: rmem */
   66,  /* vpmovzxbwxx: rmemindex */
   67,  /* vpmovzxbwxxx: rmemindexx */
   64,  /* vpmovzxdq: rop */
   65,  /* vpmovzxdqx: rmem */
   66,  /* vpmovzxdqxx: rmemindex */
   67,  /* vpmovzxdqxxx: rmemindexx */
   64,  /* vpmovzxwd: rop */
   65,  /* vpmovzxwdx: rmem */
   66,  /* vpmovzxwdxx: rmemindex */
   67,  /* vpmovzxwdxxx: rmemindexx */
   64,  /* vpmovzxwq: rop */
   65,  /* vpmovzxwqx: rmem */
   66,  /* vpmovzxwqxx: rmemindex */
   67,  /* vpmovzxwqxxx: rmemindexx */
   26,  /* vmulhuw: vropop */
   27,  /* vmulhuwx: vropmem */
   29,  /* vmulhuwxx: vropmemindex */
   31,  /* vmulhuwxxx: vropmemindexx */
   26,  /* vmulhrsw: vropop */
   27,  /* vmulhrswx: vropmem */
   29,  /* vmulhrswxx: vropmemindex */
   31,  /* vmulhrswxxx: vropmemindexx */
   26,  /* vmulhw: vropop */
   27,  /* vmulhwx: vropmem */
   29,  /* vmulhwxx: vropmemindex */
   31,  /* vmulhwxxx: vropmemindexx */
   26,  /* vmulld: vropop */
   27,  /* vmulldx: vropmem */
   29,  /* vmulldxx: vropmemindex */
   31,  /* vmulldxxx: vropmemindexx */
   26,  /* vmul128v16: vropop */
   27,  /* vmulx128v16: vropmem */
   29,  /* vmulxx128v16: vropmemindex */
   31,  /* vmulxxx128v16: vropmemindexx */
   26,  /* vmul128v32: vropop */
   27,  /* vmulx128v32: vropmem */
   29,  /* vmulxx128v32: vropmemindex */
   31,  /* vmulxxx128v32: vropmemindexx */
   26,  /* vmuludq: vropop */
   27,  /* vmuludqx: vropmem */
   29,  /* vmuludqxx: vropmemindex */
   31,  /* vmuludqxxx: vropmemindexx */
   26,  /* vmuldq: vropop */
   27,  /* vmuldqx: vropmem */
   29,  /* vmuldqxx: vropmemindex */
   31,  /* vmuldqxxx: vropmemindexx */
   26,  /* vor128v8: vropop */
   27,  /* vorx128v8: vropmem */
   29,  /* vorxx128v8: vropmemindex */
   31,  /* vorxxx128v8: vropmemindexx */
   26,  /* vor128v16: vropop */
   27,  /* vorx128v16: vropmem */
   29,  /* vorxx128v16: vropmemindex */
   31,  /* vorxxx128v16: vropmemindexx */
   26,  /* vor128v32: vropop */
   27,  /* vorx128v32: vropmem */
   29,  /* vorxx128v32: vropmemindex */
   31,  /* vorxxx128v32: vropmemindexx */
   26,  /* vor128v64: vropop */
   27,  /* vorx128v64: vropmem */
   29,  /* vorxx128v64: vropmemindex */
   31,  /* vorxxx128v64: vropmemindexx */
   26,  /* vpsadbw: vropop */
   27,  /* vpsadbwx: vropmem */
   29,  /* vpsadbwxx: vropmemindex */
   31,  /* vpsadbwxxx: vropmemindexx */
   26,  /* vpshuf128v8: vropop */
   27,  /* vpshufx128v8: vropmem */
   29,  /* vpshufxx128v8: vropmemindex */
   31,  /* vpshufxxx128v8: vropmemindexx */
   26,  /* vpshuf128v32: vropop */
   27,  /* vpshufx128v32: vropmem */
   29,  /* vpshufxx128v32: vropmemindex */
   31,  /* vpshufxxx128v32: vropmemindexx */
   26,  /* vpshufw64v16: vropop */
   27,  /* vpshufwx64v16: vropmem */
   29,  /* vpshufwxx64v16: vropmemindex */
   31,  /* vpshufwxxx64v16: vropmemindexx */
   26,  /* vpshufhw: vropop */
   27,  /* vpshufhwx: vropmem */
   29,  /* vpshufhwxx: vropmemindex */
   31,  /* vpshufhwxxx: vropmemindexx */
   26,  /* vpshuflw: vropop */
   27,  /* vpshuflwx: vropmem */
   29,  /* vpshuflwxx: vropmemindex */
   31,  /* vpshuflwxxx: vropmemindexx */
   64,  /* vpsign128v8: rop */
   65,  /* vpsignx128v8: rmem */
   66,  /* vpsignxx128v8: rmemindex */
   67,  /* vpsignxxx128v8: rmemindexx */
   64,  /* vpsign128v32: rop */
   65,  /* vpsignx128v32: rmem */
   66,  /* vpsignxx128v32: rmemindex */
   67,  /* vpsignxxx128v32: rmemindexx */
   64,  /* vpsign128v16: rop */
   65,  /* vpsignx128v16: rmem */
   66,  /* vpsignxx128v16: rmemindex */
   67,  /* vpsignxxx128v16: rmemindexx */
   26,  /* vpslldq: vropop */
   26,  /* vpsrldq: vropop */
   26,  /* vpslld: vropop */
   27,  /* vpslldx: vropmem */
   29,  /* vpslldxx: vropmemindex */
   31,  /* vpslldxxx: vropmemindexx */
   26,  /* vpslldi: vropop */
   26,  /* vpsllq: vropop */
   27,  /* vpsllqx: vropmem */
   29,  /* vpsllqxx: vropmemindex */
   31,  /* vpsllqxxx: vropmemindexx */
   26,  /* vpsllqi: vropop */
   26,  /* vpsllw: vropop */
   27,  /* vpsllwx: vropmem */
   29,  /* vpsllwxx: vropmemindex */
   31,  /* vpsllwxxx: vropmemindexx */
   26,  /* vpsllwi: vropop */
   26,  /* vpsrad: vropop */
   27,  /* vpsradx: vropmem */
   29,  /* vpsradxx: vropmemindex */
   31,  /* vpsradxxx: vropmemindexx */
   26,  /* vpsradi: vropop */
   26,  /* vpsraw: vropop */
   27,  /* vpsrawx: vropmem */
   29,  /* vpsrawxx: vropmemindex */
   31,  /* vpsrawxxx: vropmemindexx */
   26,  /* vpsrawi: vropop */
   26,  /* vpsrld: vropop */
   27,  /* vpsrldx: vropmem */
   29,  /* vpsrldxx: vropmemindex */
   31,  /* vpsrldxxx: vropmemindexx */
   26,  /* vpsrldi: vropop */
   26,  /* vpsrlq: vropop */
   27,  /* vpsrlqx: vropmem */
   29,  /* vpsrlqxx: vropmemindex */
   31,  /* vpsrlqxxx: vropmemindexx */
   26,  /* vpsrlqi: vropop */
   26,  /* vpsrlw: vropop */
   27,  /* vpsrlwx: vropmem */
   29,  /* vpsrlwxx: vropmemindex */
   31,  /* vpsrlwxxx: vropmemindexx */
   26,  /* vpsrlwi: vropop */
   26,  /* vsub128v8: vropop */
   27,  /* vsubx128v8: vropmem */
   29,  /* vsubxx128v8: vropmemindex */
   31,  /* vsubxxx128v8: vropmemindexx */
   26,  /* vsub128v32: vropop */
   27,  /* vsubx128v32: vropmem */
   29,  /* vsubxx128v32: vropmemindex */
   31,  /* vsubxxx128v32: vropmemindexx */
   26,  /* vsub128v64: vropop */
   27,  /* vsubx128v64: vropmem */
   29,  /* vsubxx128v64: vropmemindex */
   31,  /* vsubxxx128v64: vropmemindexx */
   26,  /* vsub128v16: vropop */
   27,  /* vsubx128v16: vropmem */
   29,  /* vsubxx128v16: vropmemindex */
   31,  /* vsubxxx128v16: vropmemindexx */
   26,  /* vsubs128v8: vropop */
   27,  /* vsubsx128v8: vropmem */
   29,  /* vsubsxx128v8: vropmemindex */
   31,  /* vsubsxxx128v8: vropmemindexx */
   26,  /* vsubs128v16: vropop */
   27,  /* vsubsx128v16: vropmem */
   29,  /* vsubsxx128v16: vropmemindex */
   31,  /* vsubsxxx128v16: vropmemindexx */
   26,  /* vsubus128v8: vropop */
   27,  /* vsubusx128v8: vropmem */
   29,  /* vsubusxx128v8: vropmemindex */
   31,  /* vsubusxxx128v8: vropmemindexx */
   26,  /* vsubus128v16: vropop */
   27,  /* vsubusx128v16: vropmem */
   29,  /* vsubusxx128v16: vropmemindex */
   31,  /* vsubusxxx128v16: vropmemindexx */
    4,  /* vptest128: cmp */
    5,  /* vptestx128: cmpx */
    8,  /* vptestxx128: cmpxx */
   11,  /* vptestxxx128: cmpxxx */
    4,  /* vtestpd: cmp */
    5,  /* vtestxpd: cmpx */
    8,  /* vtestxxpd: cmpxx */
   11,  /* vtestxxxpd: cmpxxx */
    4,  /* vtestps: cmp */
    5,  /* vtestxps: cmpx */
    8,  /* vtestxxps: cmpxx */
   11,  /* vtestxxxps: cmpxxx */
   26,  /* vpunpckh64v8: vropop */
   27,  /* vpunpckhx64v8: vropmem */
   29,  /* vpunpckhxx64v8: vropmemindex */
   31,  /* vpunpckhxxx64v8: vropmemindexx */
   26,  /* vpunpckh64v32: vropop */
   27,  /* vpunpckhx64v32: vropmem */
   29,  /* vpunpckhxx64v32: vropmemindex */
   31,  /* vpunpckhxxx64v32: vropmemindexx */
   26,  /* vpunpckh64v16: vropop */
   27,  /* vpunpckhx64v16: vropmem */
   29,  /* vpunpckhxx64v16: vropmemindex */
   31,  /* vpunpckhxxx64v16: vropmemindexx */
   26,  /* vpunpckh64v64: vropop */
   27,  /* vpunpckhx64v64: vropmem */
   29,  /* vpunpckhxx64v64: vropmemindex */
   31,  /* vpunpckhxxx64v64: vropmemindexx */
   26,  /* vpunpckl64v8: vropop */
   27,  /* vpunpcklx64v8: vropmem */
   29,  /* vpunpcklxx64v8: vropmemindex */
   31,  /* vpunpcklxxx64v8: vropmemindexx */
   26,  /* vpunpckl64v32: vropop */
   27,  /* vpunpcklx64v32: vropmem */
   29,  /* vpunpcklxx64v32: vropmemindex */
   31,  /* vpunpcklxxx64v32: vropmemindexx */
   26,  /* vpunpckl64v16: vropop */
   27,  /* vpunpcklx64v16: vropmem */
   29,  /* vpunpcklxx64v16: vropmemindex */
   31,  /* vpunpcklxxx64v16: vropmemindexx */
   26,  /* vpunpckl64v64: vropop */
   27,  /* vpunpcklx64v64: vropmem */
   29,  /* vpunpcklxx64v64: vropmemindex */
   31,  /* vpunpcklxxx64v64: vropmemindexx */
   26,  /* vxor128v8: vropop */
   27,  /* vxorx128v8: vropmem */
   29,  /* vxorxx128v8: vropmemindex */
   31,  /* vxorxxx128v8: vropmemindexx */
   26,  /* vxor128v16: vropop */
   27,  /* vxorx128v16: vropmem */
   29,  /* vxorxx128v16: vropmemindex */
   31,  /* vxorxxx128v16: vropmemindexx */
   26,  /* vxor128v32: vropop */
   27,  /* vxorx128v32: vropmem */
   29,  /* vxorxx128v32: vropmemindex */
   31,  /* vxorxxx128v32: vropmemindexx */
   26,  /* vxor128v64: vropop */
   27,  /* vxorx128v64: vropmem */
   29,  /* vxorxx128v64: vropmemindex */
   31,  /* vxorxxx128v64: vropmemindexx */
   64,  /* vfrcp128v32: rop */
   65,  /* vfrcpx128v32: rmem */
   66,  /* vfrcpxx128v32: rmemindex */
   67,  /* vfrcpxxx128v32: rmemindexx */
   64,  /* vfrcpss: rop */
   65,  /* vfrcpxss: rmem */
   66,  /* vfrcpxxss: rmemindex */
   67,  /* vfrcpxxxss: rmemindexx */
   40,  /* vround128v64: round */
   41,  /* vroundx128v64: roundmem */
   42,  /* vroundxx128v64: roundmemindex */
   43,  /* vroundxxx128v64: roundmemindexx */
   40,  /* vround128v32: round */
   41,  /* vroundx128v32: roundmem */
   42,  /* vroundxx128v32: roundmemindex */
   43,  /* vroundxxx128v32: roundmemindexx */
   44,  /* vroundsd: avxrounds */
   45,  /* vroundxsd: avxroundsmem */
   46,  /* vroundxxsd: avxroundsmemindex */
   47,  /* vroundxxxsd: avxroundsmemindexx */
   44,  /* vroundss: avxrounds */
   45,  /* vroundxss: avxroundsmem */
   46,  /* vroundxxss: avxroundsmemindex */
   47,  /* vroundxxxss: avxroundsmemindexx */
   64,  /* vfrsqrt128v32: rop */
   65,  /* vfrsqrtx128v32: rmem */
   66,  /* vfrsqrtxx128v32: rmemindex */
   67,  /* vfrsqrtxxx128v32: rmemindexx */
   26,  /* vfrsqrtss: vropop */
   27,  /* vfrsqrtxss: vropmem */
   29,  /* vfrsqrtxxss: vropmemindex */
   31,  /* vfrsqrtxxxss: vropmemindexx */
   33,  /* vshufpd: vropopimm */
   33,  /* vfshuf128v64: vropopimm */
   34,  /* vfshufx128v64: vropmemop */
   35,  /* vfshufxx128v64: vropmemindexop */
   36,  /* vfshufxxx128v64: vropmemindexxop */
   33,  /* vshufps: vropopimm */
   33,  /* vfshuf128v32: vropopimm */
   34,  /* vfshufx128v32: vropmemop */
   35,  /* vfshufxx128v32: vropmemindexop */
   36,  /* vfshufxxx128v32: vropmemindexxop */
   64,  /* vfsqrt128v64: rop */
   65,  /* vfsqrtx128v64: rmem */
   66,  /* vfsqrtxx128v64: rmemindex */
   67,  /* vfsqrtxxx128v64: rmemindexx */
   64,  /* vfsqrt128v32: rop */
   65,  /* vfsqrtx128v32: rmem */
   66,  /* vfsqrtxx128v32: rmemindex */
   67,  /* vfsqrtxxx128v32: rmemindexx */
   26,  /* vfsqrtsd: vropop */
   27,  /* vfsqrtxsd: vropmem */
   29,  /* vfsqrtxxsd: vropmemindex */
   31,  /* vfsqrtxxxsd: vropmemindexx */
   26,  /* vfsqrtss: vropop */
   27,  /* vfsqrtxss: vropmem */
   29,  /* vfsqrtxxss: vropmemindex */
   31,  /* vfsqrtxxxss: vropmemindexx */
  111,  /* vstmxcsr: stmxcsr */
   26,  /* vfsub128v64: vropop */
   27,  /* vfsubx128v64: vropmem */
   29,  /* vfsubxx128v64: vropmemindex */
   31,  /* vfsubxxx128v64: vropmemindexx */
   26,  /* vfsub128v32: vropop */
   27,  /* vfsubx128v32: vropmem */
   29,  /* vfsubxx128v32: vropmemindex */
   31,  /* vfsubxxx128v32: vropmemindexx */
   26,  /* vsubsd: vropop */
   27,  /* vsubxsd: vropmem */
   29,  /* vsubxxsd: vropmemindex */
   31,  /* vsubxxxsd: vropmemindexx */
   26,  /* vsubss: vropop */
   27,  /* vsubxss: vropmem */
   29,  /* vsubxxss: vropmemindex */
   31,  /* vsubxxxss: vropmemindexx */
    4,  /* vucomisd: cmp */
    5,  /* vucomixsd: cmpx */
    8,  /* vucomixxsd: cmpxx */
   11,  /* vucomixxxsd: cmpxxx */
    4,  /* vucomiss: cmp */
    5,  /* vucomixss: cmpx */
    8,  /* vucomixxss: cmpxx */
   11,  /* vucomixxxss: cmpxxx */
   26,  /* vunpckh128v64: vropop */
   27,  /* vunpckhx128v64: vropmem */
   29,  /* vunpckhxx128v64: vropmemindex */
   31,  /* vunpckhxxx128v64: vropmemindexx */
   26,  /* vunpckh128v32: vropop */
   27,  /* vunpckhx128v32: vropmem */
   29,  /* vunpckhxx128v32: vropmemindex */
   31,  /* vunpckhxxx128v32: vropmemindexx */
   26,  /* vunpckl128v64: vropop */
   27,  /* vunpcklx128v64: vropmem */
   29,  /* vunpcklxx128v64: vropmemindex */
   31,  /* vunpcklxxx128v64: vropmemindexx */
   26,  /* vunpckl128v32: vropop */
   27,  /* vunpcklx128v32: vropmem */
   29,  /* vunpcklxx128v32: vropmemindex */
   31,  /* vunpcklxxx128v32: vropmemindexx */
   26,  /* vxorpd: vropop */
   26,  /* vfxor128v64: vropop */
   27,  /* vfxorx128v64: vropmem */
   29,  /* vfxorxx128v64: vropmemindex */
   31,  /* vfxorxxx128v64: vropmemindexx */
   63,  /* vxzero128v64: vrr */
   63,  /* vxzero64: vrr */
   26,  /* vxorps: vropop */
   26,  /* vfxor128v32: vropop */
   27,  /* vfxorx128v32: vropmem */
   29,  /* vfxorxx128v32: vropmemindex */
   31,  /* vfxorxxx128v32: vropmemindexx */
   63,  /* vxzero128v32: vrr */
   63,  /* vxzero32: vrr */
  116,  /* vzeroall: no_rop */
  107,  /* xfmadd132pd: ifma_ropopop */
  108,  /* xfmadd132xpd: ifma_ropopmem */
  109,  /* xfmadd132xxpd: ifma_ropopmemindex */
  110,  /* xfmadd132xxxpd: ifma_ropopmemindexx */
  107,  /* xfmadd213pd: ifma_ropopop */
  108,  /* xfmadd213xpd: ifma_ropopmem */
  109,  /* xfmadd213xxpd: ifma_ropopmemindex */
  110,  /* xfmadd213xxxpd: ifma_ropopmemindexx */
  107,  /* xfmadd231pd: ifma_ropopop */
  108,  /* xfmadd231xpd: ifma_ropopmem */
  109,  /* xfmadd231xxpd: ifma_ropopmemindex */
  110,  /* xfmadd231xxxpd: ifma_ropopmemindexx */
  107,  /* xfmadd132ps: ifma_ropopop */
  108,  /* xfmadd132xps: ifma_ropopmem */
  109,  /* xfmadd132xxps: ifma_ropopmemindex */
  110,  /* xfmadd132xxxps: ifma_ropopmemindexx */
  107,  /* xfmadd213ps: ifma_ropopop */
  108,  /* xfmadd213xps: ifma_ropopmem */
  109,  /* xfmadd213xxps: ifma_ropopmemindex */
  110,  /* xfmadd213xxxps: ifma_ropopmemindexx */
  107,  /* xfmadd231ps: ifma_ropopop */
  108,  /* xfmadd231xps: ifma_ropopmem */
  109,  /* xfmadd231xxps: ifma_ropopmemindex */
  110,  /* xfmadd231xxxps: ifma_ropopmemindexx */
  107,  /* xfmadd132sd: ifma_ropopop */
  108,  /* xfmadd132xsd: ifma_ropopmem */
  109,  /* xfmadd132xxsd: ifma_ropopmemindex */
  110,  /* xfmadd132xxxsd: ifma_ropopmemindexx */
  107,  /* xfmadd213sd: ifma_ropopop */
  108,  /* xfmadd213xsd: ifma_ropopmem */
  109,  /* xfmadd213xxsd: ifma_ropopmemindex */
  110,  /* xfmadd213xxxsd: ifma_ropopmemindexx */
  107,  /* xfmadd231sd: ifma_ropopop */
  108,  /* xfmadd231xsd: ifma_ropopmem */
  109,  /* xfmadd231xxsd: ifma_ropopmemindex */
  110,  /* xfmadd231xxxsd: ifma_ropopmemindexx */
  107,  /* xfmadd132ss: ifma_ropopop */
  108,  /* xfmadd132xss: ifma_ropopmem */
  109,  /* xfmadd132xxss: ifma_ropopmemindex */
  110,  /* xfmadd132xxxss: ifma_ropopmemindexx */
  107,  /* xfmadd213ss: ifma_ropopop */
  108,  /* xfmadd213xss: ifma_ropopmem */
  109,  /* xfmadd213xxss: ifma_ropopmemindex */
  110,  /* xfmadd213xxxss: ifma_ropopmemindexx */
  107,  /* xfmadd231ss: ifma_ropopop */
  108,  /* xfmadd231xss: ifma_ropopmem */
  109,  /* xfmadd231xxss: ifma_ropopmemindex */
  110,  /* xfmadd231xxxss: ifma_ropopmemindexx */
  107,  /* xfmaddsub132pd: ifma_ropopop */
  108,  /* xfmaddsub132xpd: ifma_ropopmem */
  109,  /* xfmaddsub132xxpd: ifma_ropopmemindex */
  110,  /* xfmaddsub132xxxpd: ifma_ropopmemindexx */
  107,  /* xfmaddsub213pd: ifma_ropopop */
  108,  /* xfmaddsub213xpd: ifma_ropopmem */
  109,  /* xfmaddsub213xxpd: ifma_ropopmemindex */
  110,  /* xfmaddsub213xxxpd: ifma_ropopmemindexx */
  107,  /* xfmaddsub231pd: ifma_ropopop */
  108,  /* xfmaddsub231xpd: ifma_ropopmem */
  109,  /* xfmaddsub231xxpd: ifma_ropopmemindex */
  110,  /* xfmaddsub231xxxpd: ifma_ropopmemindexx */
  107,  /* xfmaddsub132ps: ifma_ropopop */
  108,  /* xfmaddsub132xps: ifma_ropopmem */
  109,  /* xfmaddsub132xxps: ifma_ropopmemindex */
  110,  /* xfmaddsub132xxxps: ifma_ropopmemindexx */
  107,  /* xfmaddsub213ps: ifma_ropopop */
  108,  /* xfmaddsub213xps: ifma_ropopmem */
  109,  /* xfmaddsub213xxps: ifma_ropopmemindex */
  110,  /* xfmaddsub213xxxps: ifma_ropopmemindexx */
  107,  /* xfmaddsub231ps: ifma_ropopop */
  108,  /* xfmaddsub231xps: ifma_ropopmem */
  109,  /* xfmaddsub231xxps: ifma_ropopmemindex */
  110,  /* xfmaddsub231xxxps: ifma_ropopmemindexx */
  107,  /* xfmsubadd132pd: ifma_ropopop */
  108,  /* xfmsubadd132xpd: ifma_ropopmem */
  109,  /* xfmsubadd132xxpd: ifma_ropopmemindex */
  110,  /* xfmsubadd132xxxpd: ifma_ropopmemindexx */
  107,  /* xfmsubadd213pd: ifma_ropopop */
  108,  /* xfmsubadd213xpd: ifma_ropopmem */
  109,  /* xfmsubadd213xxpd: ifma_ropopmemindex */
  110,  /* xfmsubadd213xxxpd: ifma_ropopmemindexx */
  107,  /* xfmsubadd231pd: ifma_ropopop */
  108,  /* xfmsubadd231xpd: ifma_ropopmem */
  109,  /* xfmsubadd231xxpd: ifma_ropopmemindex */
  110,  /* xfmsubadd231xxxpd: ifma_ropopmemindexx */
  107,  /* xfmsubadd132ps: ifma_ropopop */
  108,  /* xfmsubadd132xps: ifma_ropopmem */
  109,  /* xfmsubadd132xxps: ifma_ropopmemindex */
  110,  /* xfmsubadd132xxxps: ifma_ropopmemindexx */
  107,  /* xfmsubadd213ps: ifma_ropopop */
  108,  /* xfmsubadd213xps: ifma_ropopmem */
  109,  /* xfmsubadd213xxps: ifma_ropopmemindex */
  110,  /* xfmsubadd213xxxps: ifma_ropopmemindexx */
  107,  /* xfmsubadd231ps: ifma_ropopop */
  108,  /* xfmsubadd231xps: ifma_ropopmem */
  109,  /* xfmsubadd231xxps: ifma_ropopmemindex */
  110,  /* xfmsubadd231xxxps: ifma_ropopmemindexx */
  107,  /* xfmsub132pd: ifma_ropopop */
  108,  /* xfmsub132xpd: ifma_ropopmem */
  109,  /* xfmsub132xxpd: ifma_ropopmemindex */
  110,  /* xfmsub132xxxpd: ifma_ropopmemindexx */
  107,  /* xfmsub213pd: ifma_ropopop */
  108,  /* xfmsub213xpd: ifma_ropopmem */
  109,  /* xfmsub213xxpd: ifma_ropopmemindex */
  110,  /* xfmsub213xxxpd: ifma_ropopmemindexx */
  107,  /* xfmsub231pd: ifma_ropopop */
  108,  /* xfmsub231xpd: ifma_ropopmem */
  109,  /* xfmsub231xxpd: ifma_ropopmemindex */
  110,  /* xfmsub231xxxpd: ifma_ropopmemindexx */
  107,  /* xfmsub132ps: ifma_ropopop */
  108,  /* xfmsub132xps: ifma_ropopmem */
  109,  /* xfmsub132xxps: ifma_ropopmemindex */
  110,  /* xfmsub132xxxps: ifma_ropopmemindexx */
  107,  /* xfmsub213ps: ifma_ropopop */
  108,  /* xfmsub213xps: ifma_ropopmem */
  109,  /* xfmsub213xxps: ifma_ropopmemindex */
  110,  /* xfmsub213xxxps: ifma_ropopmemindexx */
  107,  /* xfmsub231ps: ifma_ropopop */
  108,  /* xfmsub231xps: ifma_ropopmem */
  109,  /* xfmsub231xxps: ifma_ropopmemindex */
  110,  /* xfmsub231xxxps: ifma_ropopmemindexx */
  107,  /* xfmsub132sd: ifma_ropopop */
  108,  /* xfmsub132xsd: ifma_ropopmem */
  109,  /* xfmsub132xxsd: ifma_ropopmemindex */
  110,  /* xfmsub132xxxsd: ifma_ropopmemindexx */
  107,  /* xfmsub213sd: ifma_ropopop */
  108,  /* xfmsub213xsd: ifma_ropopmem */
  109,  /* xfmsub213xxsd: ifma_ropopmemindex */
  110,  /* xfmsub213xxxsd: ifma_ropopmemindexx */
  107,  /* xfmsub231sd: ifma_ropopop */
  108,  /* xfmsub231xsd: ifma_ropopmem */
  109,  /* xfmsub231xxsd: ifma_ropopmemindex */
  110,  /* xfmsub231xxxsd: ifma_ropopmemindexx */
  107,  /* xfmsub132ss: ifma_ropopop */
  108,  /* xfmsub132xss: ifma_ropopmem */
  109,  /* xfmsub132xxss: ifma_ropopmemindex */
  110,  /* xfmsub132xxxss: ifma_ropopmemindexx */
  107,  /* xfmsub213ss: ifma_ropopop */
  108,  /* xfmsub213xss: ifma_ropopmem */
  109,  /* xfmsub213xxss: ifma_ropopmemindex */
  110,  /* xfmsub213xxxss: ifma_ropopmemindexx */
  107,  /* xfmsub231ss: ifma_ropopop */
  108,  /* xfmsub231xss: ifma_ropopmem */
  109,  /* xfmsub231xxss: ifma_ropopmemindex */
  110,  /* xfmsub231xxxss: ifma_ropopmemindexx */
  107,  /* xfnmadd132pd: ifma_ropopop */
  108,  /* xfnmadd132xpd: ifma_ropopmem */
  109,  /* xfnmadd132xxpd: ifma_ropopmemindex */
  110,  /* xfnmadd132xxxpd: ifma_ropopmemindexx */
  107,  /* xfnmadd213pd: ifma_ropopop */
  108,  /* xfnmadd213xpd: ifma_ropopmem */
  109,  /* xfnmadd213xxpd: ifma_ropopmemindex */
  110,  /* xfnmadd213xxxpd: ifma_ropopmemindexx */
  107,  /* xfnmadd231pd: ifma_ropopop */
  108,  /* xfnmadd231xpd: ifma_ropopmem */
  109,  /* xfnmadd231xxpd: ifma_ropopmemindex */
  110,  /* xfnmadd231xxxpd: ifma_ropopmemindexx */
  107,  /* xfnmadd132ps: ifma_ropopop */
  108,  /* xfnmadd132xps: ifma_ropopmem */
  109,  /* xfnmadd132xxps: ifma_ropopmemindex */
  110,  /* xfnmadd132xxxps: ifma_ropopmemindexx */
  107,  /* xfnmadd213ps: ifma_ropopop */
  108,  /* xfnmadd213xps: ifma_ropopmem */
  109,  /* xfnmadd213xxps: ifma_ropopmemindex */
  110,  /* xfnmadd213xxxps: ifma_ropopmemindexx */
  107,  /* xfnmadd231ps: ifma_ropopop */
  108,  /* xfnmadd231xps: ifma_ropopmem */
  109,  /* xfnmadd231xxps: ifma_ropopmemindex */
  110,  /* xfnmadd231xxxps: ifma_ropopmemindexx */
  107,  /* xfnmadd132sd: ifma_ropopop */
  108,  /* xfnmadd132xsd: ifma_ropopmem */
  109,  /* xfnmadd132xxsd: ifma_ropopmemindex */
  110,  /* xfnmadd132xxxsd: ifma_ropopmemindexx */
  107,  /* xfnmadd213sd: ifma_ropopop */
  108,  /* xfnmadd213xsd: ifma_ropopmem */
  109,  /* xfnmadd213xxsd: ifma_ropopmemindex */
  110,  /* xfnmadd213xxxsd: ifma_ropopmemindexx */
  107,  /* xfnmadd231sd: ifma_ropopop */
  108,  /* xfnmadd231xsd: ifma_ropopmem */
  109,  /* xfnmadd231xxsd: ifma_ropopmemindex */
  110,  /* xfnmadd231xxxsd: ifma_ropopmemindexx */
  107,  /* xfnmadd132ss: ifma_ropopop */
  108,  /* xfnmadd132xss: ifma_ropopmem */
  109,  /* xfnmadd132xxss: ifma_ropopmemindex */
  110,  /* xfnmadd132xxxss: ifma_ropopmemindexx */
  107,  /* xfnmadd213ss: ifma_ropopop */
  108,  /* xfnmadd213xss: ifma_ropopmem */
  109,  /* xfnmadd213xxss: ifma_ropopmemindex */
  110,  /* xfnmadd213xxxss: ifma_ropopmemindexx */
  107,  /* xfnmadd231ss: ifma_ropopop */
  108,  /* xfnmadd231xss: ifma_ropopmem */
  109,  /* xfnmadd231xxss: ifma_ropopmemindex */
  110,  /* xfnmadd231xxxss: ifma_ropopmemindexx */
  107,  /* xfnmsub132pd: ifma_ropopop */
  108,  /* xfnmsub132xpd: ifma_ropopmem */
  109,  /* xfnmsub132xxpd: ifma_ropopmemindex */
  110,  /* xfnmsub132xxxpd: ifma_ropopmemindexx */
  107,  /* xfnmsub213pd: ifma_ropopop */
  108,  /* xfnmsub213xpd: ifma_ropopmem */
  109,  /* xfnmsub213xxpd: ifma_ropopmemindex */
  110,  /* xfnmsub213xxxpd: ifma_ropopmemindexx */
  107,  /* xfnmsub231pd: ifma_ropopop */
  108,  /* xfnmsub231xpd: ifma_ropopmem */
  109,  /* xfnmsub231xxpd: ifma_ropopmemindex */
  110,  /* xfnmsub231xxxpd: ifma_ropopmemindexx */
  107,  /* xfnmsub132ps: ifma_ropopop */
  108,  /* xfnmsub132xps: ifma_ropopmem */
  109,  /* xfnmsub132xxps: ifma_ropopmemindex */
  110,  /* xfnmsub132xxxps: ifma_ropopmemindexx */
  107,  /* xfnmsub213ps: ifma_ropopop */
  108,  /* xfnmsub213xps: ifma_ropopmem */
  109,  /* xfnmsub213xxps: ifma_ropopmemindex */
  110,  /* xfnmsub213xxxps: ifma_ropopmemindexx */
  107,  /* xfnmsub231ps: ifma_ropopop */
  108,  /* xfnmsub231xps: ifma_ropopmem */
  109,  /* xfnmsub231xxps: ifma_ropopmemindex */
  110,  /* xfnmsub231xxxps: ifma_ropopmemindexx */
  107,  /* xfnmsub132sd: ifma_ropopop */
  108,  /* xfnmsub132xsd: ifma_ropopmem */
  109,  /* xfnmsub132xxsd: ifma_ropopmemindex */
  110,  /* xfnmsub132xxxsd: ifma_ropopmemindexx */
  107,  /* xfnmsub213sd: ifma_ropopop */
  108,  /* xfnmsub213xsd: ifma_ropopmem */
  109,  /* xfnmsub213xxsd: ifma_ropopmemindex */
  110,  /* xfnmsub213xxxsd: ifma_ropopmemindexx */
  107,  /* xfnmsub231sd: ifma_ropopop */
  108,  /* xfnmsub231xsd: ifma_ropopmem */
  109,  /* xfnmsub231xxsd: ifma_ropopmemindex */
  110,  /* xfnmsub231xxxsd: ifma_ropopmemindexx */
  107,  /* xfnmsub132ss: ifma_ropopop */
  108,  /* xfnmsub132xss: ifma_ropopmem */
  109,  /* xfnmsub132xxss: ifma_ropopmemindex */
  110,  /* xfnmsub132xxxss: ifma_ropopmemindexx */
  107,  /* xfnmsub213ss: ifma_ropopop */
  108,  /* xfnmsub213xss: ifma_ropopmem */
  109,  /* xfnmsub213xxss: ifma_ropopmemindex */
  110,  /* xfnmsub213xxxss: ifma_ropopmemindexx */
  107,  /* xfnmsub231ss: ifma_ropopop */
  108,  /* xfnmsub231xss: ifma_ropopmem */
  109,  /* xfnmsub231xxss: ifma_ropopmemindex */
  110,  /* xfnmsub231xxxss: ifma_ropopmemindexx */
   64,  /* movabsq: rop */
   68,  /* store8_abs: opop1 */
   68,  /* store16_abs: opop1 */
   68,  /* store32_abs: opop1 */
   68,  /* store64_abs: opop1 */
   64,  /* ld8_abs: rop */
   64,  /* ld16_abs: rop */
   64,  /* ld32_abs: rop */
   64,  /* ld64_abs: rop */
   88,  /* lock_add32: rmw */
   88,  /* lock_adc32: rmw */
   88,  /* lock_add64: rmw */
   89,  /* lock_xchg32: xchg */
   89,  /* lock_xchg64: xchg */
   90,  /* lock_cmpxchg32: cmpxchg */
   90,  /* lock_cmpxchg64: cmpxchg */
   88,  /* lock_and32: rmw */
   88,  /* lock_and64: rmw */
   88,  /* lock_or32: rmw */
   88,  /* lock_or64: rmw */
   88,  /* lock_xor32: rmw */
   88,  /* lock_xor64: rmw */
   88,  /* lock_sub32: rmw */
   88,  /* lock_sub64: rmw */
   88,  /* lock_add8: rmw */
   88,  /* lock_add16: rmw */
   89,  /* lock_xchg8: xchg */
   89,  /* lock_xchg16: xchg */
   90,  /* lock_cmpxchg8: cmpxchg */
   90,  /* lock_cmpxchg16: cmpxchg */
   88,  /* lock_and8: rmw */
   88,  /* lock_and16: rmw */
   88,  /* lock_or8: rmw */
   88,  /* lock_or16: rmw */
   88,  /* lock_xor8: rmw */
   88,  /* lock_xor16: rmw */
   88,  /* lock_sub8: rmw */
   88,  /* lock_sub16: rmw */
   88,  /* lock_xadd8: rmw */
   88,  /* lock_xadd16: rmw */
   88,  /* lock_xadd32: rmw */
   88,  /* lock_xadd64: rmw */
   64,  /* bsf32: rop */
   64,  /* bsf64: rop */
   64,  /* bsr32: rop */
   64,  /* bsr64: rop */
  112,  /* tls_global_dynamic_64: tls_gd_64 */
  113,  /* tls_global_dynamic_32: tls_gd_32 */
  114,  /* tls_local_dynamic_64: tls_ld_64 */
  115,  /* tls_local_dynamic_32: tls_ld_32 */
    0,  /* begin_pregtn */
    0,  /* end_pregtn */
    0,  /* bwd_bar */
    0,  /* fwd_bar */
    0,  /* label */
  116,  /* nop: no_rop */
    0,  /* noop */
};

BOOL ISA_PRINT_Operand_Is_Part_Of_Name(TOP topcode, INT opindex)
{
  const ISA_PRINT_INFO *info = ISA_PRINT_Info(topcode);
  const char *place_in_format = ISA_PRINT_INFO_Format(info);
  BOOL in_name_part = 0;
  INT comp;
  INT i = 0;
  for (;;) {
  	comp = ISA_PRINT_INFO_Comp(info,i);
  	if (comp == ISA_PRINT_COMP_end) break;
	place_in_format = strchr(place_in_format, '%');
	place_in_format += 2; /* assume %s */
  	if (comp == ISA_PRINT_COMP_name) {
	  if (*place_in_format == '\0' || *place_in_format == ' ')
		in_name_part = 0;
	  else
		in_name_part = 1;
  	}
  	if (comp >= ISA_PRINT_COMP_opnd && comp < ISA_PRINT_COMP_result) {
  	  if (in_name_part) {
	    INT comp_opindex = comp - ISA_PRINT_COMP_opnd;
	    if (comp_opindex == opindex)
		return 1;
	    if (*place_in_format == '\0' || *place_in_format == ' ')
		in_name_part = 0;
  	  }
  	}
  	++i;
  }
  return 0;
}
