# 1 "targ_proc.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/targ_info//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "targ_proc.c"
# 1 "targ_proc.h" 1
# 37 "targ_proc.h"
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
# 64 "targ_proc.h"
typedef enum processor {
  PROCESSOR_sl1_pcore,
  PROCESSOR_sl1_dsp,
  PROCESSOR_sl2_mcore,
  PROCESSOR_sl2_pcore,
  PROCESSOR_UNDEFINED
} PROCESSOR;



extern PROCESSOR PROCESSOR_Value;

extern const char* PROCESSOR_Name(PROCESSOR proc);
# 2 "targ_proc.c" 2

static const char* const processor_names[] = {
  "sl1_pcore",
  "sl1_dsp",
  "sl2_mcore",
  "sl2_pcore",
  "UNDEFINED"
};

PROCESSOR PROCESSOR_Value = PROCESSOR_UNDEFINED;

const char* PROCESSOR_Name(PROCESSOR proc)
{
  return processor_names[(int)proc];
}
