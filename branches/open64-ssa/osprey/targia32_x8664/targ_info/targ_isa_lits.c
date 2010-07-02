#include "targ_isa_lits.h"

const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[] = {
  { { { 0x0000000000000000LL, 0x0000000000000000LL } }, 0, 0, "LC_UNDEFINED" },
  { { { 0xffffffffffffff80LL, 0x000000000000007fLL },
      { 0xffffffffffffff80LL, 0x000000000000007fLL } }, 1, 1, "LC_simm8" },
  { { { 0x0000000000000000LL, 0x00000000000000ffLL },
      { 0x0000000000000000LL, 0x00000000000000ffLL } }, 1, 0, "LC_uimm8" },
  { { { 0xffffffffffff8000LL, 0x0000000000007fffLL },
      { 0xffffffffffff8000LL, 0x0000000000007fffLL } }, 1, 1, "LC_simm16" },
  { { { 0x0000000000000000LL, 0x000000000000ffffLL },
      { 0x0000000000000000LL, 0x000000000000ffffLL } }, 1, 0, "LC_uimm16" },
  { { { 0xffffffff80000000LL, 0x000000007fffffffLL },
      { 0xffffffff80000000LL, 0x000000007fffffffLL } }, 1, 1, "LC_simm32" },
  { { { 0x0000000000000000LL, 0x00000000ffffffffLL },
      { 0x0000000000000000LL, 0x00000000ffffffffLL } }, 1, 0, "LC_uimm32" },
  { { { 0x8000000000000000LL, 0x7fffffffffffffffLL },
      { 0x8000000000000000LL, 0x7fffffffffffffffLL } }, 1, 1, "LC_simm64" },
  { { { 0xffffffff80000000LL, 0x000000007fffffffLL },
      { 0xffffffff80000000LL, 0x000000007fffffffLL } }, 1, 1, "LC_pcrel32" },
};
