# 1 "targ_isa_enums.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/targ_info//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "targ_isa_enums.c"
# 1 "targ_isa_enums.h" 1
# 52 "targ_isa_enums.h"
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
# 80 "targ_isa_enums.h"
typedef enum {
 EC_UNDEFINED,
 EC_pfhint,
 EC_MAX
} ISA_ENUM_CLASS;

typedef enum {
 ECV_UNDEFINED,
 ECV_pfhint_L2_store,
 ECV_pfhint_L2_load,
 ECV_pfhint_L1_store,
 ECV_pfhint_L1_load,
 ECV_MAX
} ISA_ENUM_CLASS_VALUE;

typedef struct {
  char *name;
  ISA_ENUM_CLASS_VALUE first;
  ISA_ENUM_CLASS_VALUE last;
} ISA_ENUM_CLASS_INFO;
extern const ISA_ENUM_CLASS_INFO ISA_ENUM_CLASS_info[];

typedef struct {
  char *name;
  INT intval;
} ISA_ENUM_CLASS_VALUE_INFO;
extern const ISA_ENUM_CLASS_VALUE_INFO ISA_ENUM_CLASS_VALUE_info[];

static __inline const char * ISA_EC_Name (ISA_ENUM_CLASS ec)
{
  return ISA_ENUM_CLASS_info[ec].name;
}

static __inline ISA_ENUM_CLASS_VALUE ISA_EC_First_Value (ISA_ENUM_CLASS ec)
{
  return ISA_ENUM_CLASS_info[ec].first;
}

static __inline ISA_ENUM_CLASS_VALUE ISA_EC_Last_Value (ISA_ENUM_CLASS ec)
{
  return ISA_ENUM_CLASS_info[ec].last;
}

static __inline const char * ISA_ECV_Name (ISA_ENUM_CLASS_VALUE ecv)
{
  return ISA_ENUM_CLASS_VALUE_info[ecv].name;
}

static __inline INT ISA_ECV_Intval (ISA_ENUM_CLASS_VALUE ecv)
{
  return ISA_ENUM_CLASS_VALUE_info[ecv].intval;
}
# 2 "targ_isa_enums.c" 2

const ISA_ENUM_CLASS_INFO ISA_ENUM_CLASS_info[] = {
 { "EC_UNDEFINED", ECV_UNDEFINED, ECV_UNDEFINED },
 { "EC_pfhint", ECV_pfhint_L2_store, ECV_pfhint_L1_load },
};

const ISA_ENUM_CLASS_VALUE_INFO ISA_ENUM_CLASS_VALUE_info[] = {
 { "UNDEFINED", -1 },
 { "L2_store", 1 },
 { "L2_load", 0 },
 { "L1_store", 3 },
 { "L1_load", 2 },
};
