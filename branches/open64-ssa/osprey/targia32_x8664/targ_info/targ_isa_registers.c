#include "targ_isa_subset.h"
#include "targ_isa_registers.h"

const ISA_REGISTER_CLASS_INFO ISA_REGISTER_CLASS_info[] = {
  { 0x00,  0,  -1,   0, 0, 0, "UNDEFINED", { 0 } },
  { 0x01, 64,   0,  15, 1, 0, "integer",
    { "%rax", "%rbx", "%rbp", "%rsp", "%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9", "%r10", "%r11", "%r12", 
      "%r13", "%r14", "%r15" } },
  { 0x01, 64,   0,  15, 1, 0, "float",
    { "%ymm0", "%ymm1", "%ymm2", "%ymm3", "%ymm4", "%ymm5", "%ymm6", "%ymm7", "%ymm8", "%ymm9", "%ymm10", "%ymm11", "%ymm12", 
      "%ymm13", "%ymm14", "%ymm15" } },
  { 0x01, 64,   0,   0, 0, 0, "rflags",
    { "%rflags" } },
  { 0x01, 64,   0,   0, 0, 0, "rip",
    { "%rip" } },
  { 0x01, 128,   0,   7, 1, 0, "x87",
    { "%st0", "%st1", "%st2", "%st3", "%st4", "%st5", "%st6", "%st7" } },
  { 0x01, 16,   0,   0, 0, 0, "x87_cw",
    { "%x87_cw" } },
  { 0x01, 64,   0,   7, 1, 0, "mmx",
    { "%mm0", "%mm1", "%mm2", "%mm3", "%mm4", "%mm5", "%mm6", "%mm7" } },
  { 0x01, 32,   0,   0, 1, 0, "mxcsr",
    { "%mxcsr" } },
};

mUINT8 ISA_REGISTER_CLASS_info_index[] = {
  0,  /* ISA_REGISTER_CLASS_UNDEFINED */
  1,  /* ISA_REGISTER_CLASS_integer */
  2,  /* ISA_REGISTER_CLASS_float */
  3,  /* ISA_REGISTER_CLASS_rflags */
  4,  /* ISA_REGISTER_CLASS_rip */
  5,  /* ISA_REGISTER_CLASS_x87 */
  6,  /* ISA_REGISTER_CLASS_x87_cw */
  7,  /* ISA_REGISTER_CLASS_mmx */
  8,  /* ISA_REGISTER_CLASS_mxcsr */
};

const ISA_REGISTER_SUBCLASS_INFO ISA_REGISTER_SUBCLASS_info[] = {
  { "UNDEFINED", ISA_REGISTER_CLASS_UNDEFINED, 0, { 0 }, { 0 }  },
  { "rax", ISA_REGISTER_CLASS_integer, 1,
    { 0 },
    { 0 } },
  { "rdx", ISA_REGISTER_CLASS_integer, 1,
    { 6 },
    { 0 } },
  { "rbx", ISA_REGISTER_CLASS_integer, 1,
    { 1 },
    { 0 } },
  { "rcx", ISA_REGISTER_CLASS_integer, 1,
    { 7 },
    { 0 } },
  { "rbp", ISA_REGISTER_CLASS_integer, 1,
    { 2 },
    { 0 } },
  { "rsp", ISA_REGISTER_CLASS_integer, 1,
    { 3 },
    { 0 } },
  { "rdi", ISA_REGISTER_CLASS_integer, 1,
    { 4 },
    { 0 } },
  { "r11", ISA_REGISTER_CLASS_integer, 1,
    { 11 },
    { 0 } },
  { "xmm0", ISA_REGISTER_CLASS_float, 1,
    { 0 },
    { 0 } },
  { "m32_8bit_regs", ISA_REGISTER_CLASS_integer, 4,
    { 0, 1, 7, 6 },
    { 0 } },
};

void ISA_REGISTER_Initialize(void)
{
  INT rc;
  INT mask = 1 << (INT)ISA_SUBSET_Value;
  for (rc = ISA_REGISTER_CLASS_MIN; rc <= ISA_REGISTER_CLASS_MAX; ++rc) {
    INT i = ISA_REGISTER_CLASS_info_index[rc];
    const ISA_REGISTER_CLASS_INFO *info = &ISA_REGISTER_CLASS_info[i];
    while ((info->isa_mask & mask) == 0) ++info, ++i;
    ISA_REGISTER_CLASS_info_index[rc] = i;
  }
}
