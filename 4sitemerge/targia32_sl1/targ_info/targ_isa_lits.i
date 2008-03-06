# 1 "targ_isa_lits.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/targ_info//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "targ_isa_lits.c"
# 1 "targ_isa_lits.h" 1
# 51 "targ_isa_lits.h"
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
# 79 "targ_isa_lits.h"
typedef enum {
 LC_UNDEFINED,
 LC_simm16,
 LC_uimm16,
 LC_uimm5,
 LC_pcrel16,
 LC_pc26,
 LC_uimm1,
 LC_uimm2,
 LC_uimm3,
 LC_uimm4,
 LC_uimm7,
 LC_uimm8,
 LC_uimm9,
 LC_uimm10,
 LC_uimm11,
 LC_uimm14,
 LC_uimm15,
 LC_uid2,
 LC_uid3,
 LC_uia1,
 LC_uia3,
 LC_uib1,
 LC_uib3,
 LC_uic1,
 LC_uic3,
 LC_simm5,
 LC_pc5,
 LC_simm10,
 LC_MAX
} ISA_LIT_CLASS;

typedef struct {
  struct { INT64 min; INT64 max; } range[2];
  mUINT8 num_ranges;
  mBOOL is_signed;
  const char *name;
} ISA_LIT_CLASS_INFO;

static __inline const char * ISA_LC_Name (ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  return ISA_LIT_CLASS_info[lc].name;
}

static __inline INT64 ISA_LC_Min (ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  return ISA_LIT_CLASS_info[lc].range[0].min;
}

static __inline INT64 ISA_LC_Max (ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  return ISA_LIT_CLASS_info[lc].range[0].max;
}

static __inline BOOL ISA_LC_Is_Signed (ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  return ISA_LIT_CLASS_info[lc].is_signed;
}

static __inline BOOL ISA_LC_Value_In_Class (INT64 val, ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  const ISA_LIT_CLASS_INFO *plc = ISA_LIT_CLASS_info + lc;
  INT i;
  for (i = 1; i <= plc->num_ranges; ++i) {
    INT64 min = plc->range[i].min;
    INT64 max = plc->range[i].max;
    if ( plc->is_signed ) {
      if (val >= min && val <= max) return ((BOOL) 1);
    } else {
      if ((UINT64)val >= (UINT64)min && (UINT64)val <= (UINT64)max) return ((BOOL) 1);
    }
  }
  return ((BOOL) 0);
}
# 2 "targ_isa_lits.c" 2

const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[] = {
  { { { 0x0000000000000000LL, 0x0000000000000000LL } }, 0, 0, "LC_UNDEFINED" },
  { { { 0xffffffffffff8000LL, 0x0000000000007fffLL },
      { 0xffffffffffff8000LL, 0x0000000000007fffLL } }, 1, 1, "LC_simm16" },
  { { { 0x0000000000000000LL, 0x000000000000ffffLL },
      { 0x0000000000000000LL, 0x000000000000ffffLL } }, 1, 0, "LC_uimm16" },
  { { { 0x0000000000000000LL, 0x000000000000001fLL },
      { 0x0000000000000000LL, 0x000000000000001fLL } }, 1, 0, "LC_uimm5" },
  { { { 0xffffffffffff8000LL, 0x0000000000007fffLL },
      { 0xffffffffffff8000LL, 0x0000000000007fffLL } }, 1, 1, "LC_pcrel16" },
  { { { 0x0000000000000000LL, 0x0000000003ffffffLL },
      { 0x0000000000000000LL, 0x0000000003ffffffLL } }, 1, 0, "LC_pc26" },
  { { { 0x0000000000000000LL, 0x0000000000000001LL },
      { 0x0000000000000000LL, 0x0000000000000001LL } }, 1, 0, "LC_uimm1" },
  { { { 0x0000000000000000LL, 0x0000000000000003LL },
      { 0x0000000000000000LL, 0x0000000000000003LL } }, 1, 0, "LC_uimm2" },
  { { { 0x0000000000000000LL, 0x0000000000000007LL },
      { 0x0000000000000000LL, 0x0000000000000007LL } }, 1, 0, "LC_uimm3" },
  { { { 0x0000000000000000LL, 0x000000000000000fLL },
      { 0x0000000000000000LL, 0x000000000000000fLL } }, 1, 0, "LC_uimm4" },
  { { { 0x0000000000000000LL, 0x000000000000007fLL },
      { 0x0000000000000000LL, 0x000000000000007fLL } }, 1, 0, "LC_uimm7" },
  { { { 0x0000000000000000LL, 0x00000000000000ffLL },
      { 0x0000000000000000LL, 0x00000000000000ffLL } }, 1, 0, "LC_uimm8" },
  { { { 0x0000000000000000LL, 0x00000000000001ffLL },
      { 0x0000000000000000LL, 0x00000000000001ffLL } }, 1, 0, "LC_uimm9" },
  { { { 0x0000000000000000LL, 0x00000000000003ffLL },
      { 0x0000000000000000LL, 0x00000000000003ffLL } }, 1, 0, "LC_uimm10" },
  { { { 0x0000000000000000LL, 0x00000000000007ffLL },
      { 0x0000000000000000LL, 0x00000000000007ffLL } }, 1, 0, "LC_uimm11" },
  { { { 0x0000000000000000LL, 0x0000000000003fffLL },
      { 0x0000000000000000LL, 0x0000000000003fffLL } }, 1, 0, "LC_uimm14" },
  { { { 0x0000000000000000LL, 0x0000000000007fffLL },
      { 0x0000000000000000LL, 0x0000000000007fffLL } }, 1, 0, "LC_uimm15" },
  { { { 0x0000000000000000LL, 0x0000000000000003LL },
      { 0x0000000000000000LL, 0x0000000000000003LL } }, 1, 0, "LC_uid2" },
  { { { 0x0000000000000000LL, 0x0000000000000007LL },
      { 0x0000000000000000LL, 0x0000000000000007LL } }, 1, 0, "LC_uid3" },
  { { { 0x0000000000000000LL, 0x0000000000000001LL },
      { 0x0000000000000000LL, 0x0000000000000001LL } }, 1, 0, "LC_uia1" },
  { { { 0x0000000000000000LL, 0x0000000000000007LL },
      { 0x0000000000000000LL, 0x0000000000000007LL } }, 1, 0, "LC_uia3" },
  { { { 0x0000000000000000LL, 0x0000000000000001LL },
      { 0x0000000000000000LL, 0x0000000000000001LL } }, 1, 0, "LC_uib1" },
  { { { 0x0000000000000000LL, 0x0000000000000007LL },
      { 0x0000000000000000LL, 0x0000000000000007LL } }, 1, 0, "LC_uib3" },
  { { { 0x0000000000000000LL, 0x0000000000000001LL },
      { 0x0000000000000000LL, 0x0000000000000001LL } }, 1, 0, "LC_uic1" },
  { { { 0x0000000000000000LL, 0x0000000000000007LL },
      { 0x0000000000000000LL, 0x0000000000000007LL } }, 1, 0, "LC_uic3" },
  { { { 0xfffffffffffffff0LL, 0x000000000000000fLL },
      { 0xfffffffffffffff0LL, 0x000000000000000fLL } }, 1, 1, "LC_simm5" },
  { { { 0xfffffffffffffff0LL, 0x000000000000000fLL },
      { 0xfffffffffffffff0LL, 0x000000000000000fLL } }, 1, 1, "LC_pc5" },
  { { { 0xfffffffffffffe00LL, 0x00000000000001ffLL },
      { 0xfffffffffffffe00LL, 0x00000000000001ffLL } }, 1, 1, "LC_simm10" },
};
