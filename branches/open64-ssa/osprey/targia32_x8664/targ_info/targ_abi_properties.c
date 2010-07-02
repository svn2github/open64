#include "targ_abi_properties.h"


static const ABI_PROPERTIES abi_properties[] = {
  {
    /* n32 */
    {
      /* ISA_REGISTER_CLASS_UNDEFINED */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_integer */
      { 0x0d, 0x03, 0x23, 0x12, 0x03, 0x03, 0x0d, 0x45, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_float */
      { 0x8d, 0x8d, 0x85, 0x85, 0x85, 0x85, 0x85, 0x85, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_rflags */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_rip */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_x87 */
      { 0x0d, 0x0d, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_x87_cw */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_mmx */
      { 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_mxcsr */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
    },
    {
      /* ISA_REGISTER_CLASS_UNDEFINED */
      { "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_integer */
      { "%eax", "%ebx", "%ebp", "%esp", "%edi", "%esi", "%edx", "%ecx", "%r8",
        "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", },
      /* ISA_REGISTER_CLASS_float */
      { "%ymm0", "%ymm1", "%ymm2", "%ymm3", "%ymm4", "%ymm5", "%ymm6", "%ymm7",
        "%ymm8", "%ymm9", "%ymm10", "%ymm11", "%ymm12", "%ymm13", "%ymm14",
        "%ymm15", },
      /* ISA_REGISTER_CLASS_rflags */
      { "%rflags", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_rip */
      { "%rip", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_x87 */
      { "%st0", "%st1", "%st2", "%st3", "%st4", "%st5", "%st6", "%st7", "", "",
        "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_x87_cw */
      { "%x87_cw", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_mmx */
      { "%mm0", "%mm1", "%mm2", "%mm3", "%mm4", "%mm5", "%mm6", "%mm7", "", "",
        "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_mxcsr */
      { "%mxcsr", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
    },
  },
  {
    /* n64 */
    {
      /* ISA_REGISTER_CLASS_UNDEFINED */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_integer */
      { 0x0d, 0x03, 0x23, 0x10, 0x85, 0x85, 0x8d, 0x85, 0x85, 0x85, 0x45,
        0x05, 0x03, 0x03, 0x03, 0x03, },
      /* ISA_REGISTER_CLASS_float */
      { 0x8d, 0x8d, 0x85, 0x85, 0x85, 0x85, 0x85, 0x85, 0x05, 0x05, 0x05,
        0x05, 0x05, 0x05, 0x05, 0x05, },
      /* ISA_REGISTER_CLASS_rflags */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_rip */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_x87 */
      { 0x0d, 0x0d, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_x87_cw */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_mmx */
      { 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
      /* ISA_REGISTER_CLASS_mxcsr */
      { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, },
    },
    {
      /* ISA_REGISTER_CLASS_UNDEFINED */
      { "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_integer */
      { "%rax", "%rbx", "%rbp", "%rsp", "%rdi", "%rsi", "%rdx", "%rcx", "%r8",
        "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", },
      /* ISA_REGISTER_CLASS_float */
      { "%ymm0", "%ymm1", "%ymm2", "%ymm3", "%ymm4", "%ymm5", "%ymm6", "%ymm7",
        "%ymm8", "%ymm9", "%ymm10", "%ymm11", "%ymm12", "%ymm13", "%ymm14",
        "%ymm15", },
      /* ISA_REGISTER_CLASS_rflags */
      { "%rflags", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_rip */
      { "%rip", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_x87 */
      { "%st0", "%st1", "%st2", "%st3", "%st4", "%st5", "%st6", "%st7", "", "",
        "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_x87_cw */
      { "%x87_cw", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_mmx */
      { "%mm0", "%mm1", "%mm2", "%mm3", "%mm4", "%mm5", "%mm6", "%mm7", "", "",
        "", "", "", "", "", "", },
      /* ISA_REGISTER_CLASS_mxcsr */
      { "%mxcsr", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", },
    },
  },
};

static const char * const abi_names[] = {
  "n32",
  "n64",
  "UNDEFINED"
};

ABI_PROPERTIES_ABI ABI_PROPERTIES_ABI_Value = ABI_PROPERTIES_ABI_UNDEFINED;

const char *ABI_PROPERTIES_ABI_Name(ABI_PROPERTIES_ABI abi)
{
  return abi_names[(INT)abi];
}

const ABI_PROPERTIES *ABI_PROPERTIES_target_props = &abi_properties[ABI_PROPERTIES_ABI_UNDEFINED];

void ABI_PROPERTIES_Initialize(void)
{
  ABI_PROPERTIES_target_props = &abi_properties[(INT)ABI_PROPERTIES_ABI_Value];
}
