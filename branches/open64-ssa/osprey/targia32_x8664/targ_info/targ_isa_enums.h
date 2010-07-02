/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A list of all the enum classes used in an ISA.
 *   It exports the following:
 *
 *   typedef (enum) ISA_ENUM_CLASS
 *       An enumeration of the enum classes.
 *
 *   typedef (enum) ISA_ENUM_CLASS_VALUE
 *       An enumeration of the enum class values.
 *
 *   typedef (struct) ISA_ENUM_CLASS_INFO
 *       Contains info about first and last ECV in the EC.
 *       The contents are private.
 *
 *   typedef (struct) ISA_ENUM_CLASS_VALUE_INFO
 *       Contains info about name and int-value of the ECV.
 *       The contents are private.
 *
 *   const char * ISA_EC_Name (ISA_ENUM_CLASS)
 *       Returns name of EC.
 *
 *   ISA_ENUM_CLASS_VALUE ISA_EC_First_Value (ISA_ENUM_CLASS)
 *       Returns the first ECV for the specified EC.
 *
 *   ISA_ENUM_CLASS_VALUE ISA_EC_Last_Value (ISA_ENUM_CLASS)
 *       Returns the last ECV for the specified EC.
 *       Note that it assumes all ECV for an EC are in the
 *       first/last range given by the above two functions.
 *
 *   const char * ISA_ECV_Name (ISA_ENUM_CLASS_VALUE)
 *       Returns name of ECV.
 *
 *   INT ISA_ECV_Intval (ISA_ENUM_CLASS_VALUE)
 *       Returns int-value of ECV.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_enums_INCLUDED
#define targ_isa_enums_INCLUDED
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
	ECV_pfhint_L1_L2_load,
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

inline const char * ISA_EC_Name (ISA_ENUM_CLASS ec)
{
  return ISA_ENUM_CLASS_info[ec].name;
}

inline ISA_ENUM_CLASS_VALUE ISA_EC_First_Value (ISA_ENUM_CLASS ec)
{
  return ISA_ENUM_CLASS_info[ec].first;
}

inline ISA_ENUM_CLASS_VALUE ISA_EC_Last_Value (ISA_ENUM_CLASS ec)
{
  return ISA_ENUM_CLASS_info[ec].last;
}

inline const char * ISA_ECV_Name (ISA_ENUM_CLASS_VALUE ecv)
{
  return ISA_ENUM_CLASS_VALUE_info[ecv].name;
}

inline INT ISA_ECV_Intval (ISA_ENUM_CLASS_VALUE ecv)
{
  return ISA_ENUM_CLASS_VALUE_info[ecv].intval;
}


#ifdef __cplusplus
}
#endif
#endif
