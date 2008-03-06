# 1 "targ_proc_properties.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/targ_info//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "targ_proc_properties.c"
# 1 "targ_proc_properties.h" 1
# 25 "targ_proc_properties.h"
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
# 52 "targ_proc_properties.h"
# 1 "targ_proc.h" 1
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
# 53 "targ_proc_properties.h" 2

extern const mUINT8 PROC_PROPERTIES_flags[];
# 2 "targ_proc_properties.c" 2

const mUINT8 PROC_PROPERTIES_flags[] = {
  0x00,
  0x00,
  0x00,
  0x00,
  0x00
};
