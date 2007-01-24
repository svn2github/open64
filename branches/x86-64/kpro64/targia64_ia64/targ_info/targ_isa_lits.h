/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A list of all the lit classes used in an ISA.
 *   It exports the following:
 *
 *   typedef (enum) ISA_LIT_CLASS
 *       An enumeration of the lit classes.
 *
 *   typedef (struct) ISA_LIT_CLASS_INFO
 *       Contains info about first and last ECV in the EC.
 *       The contents are private.
 *
 *   typedef (struct) ISA_LIT_CLASS_VALUE_INFO
 *       Contains info about name and min/max of the LC.
 *       The contents are private.
 *
 *   const char * ISA_LC_Name (ISA_LIT_CLASS lc)
 *       Returns name of <lc>.
 *
 *   INT64 ISA_LC_Min (ISA_LIT_CLASS lc)
 *       Returns the minimum value for the specified <lc>. For classes
 *       that have multiple sub-ranges, ISA_LC_Min returns the smallest
 *       minimum of all the sub-ranges.
 *
 *   INT64 ISA_LC_Max (ISA_LIT_CLASS lc)
 *       Returns the maximum value for the specified <lc>. For classes
 *       that have multiple sub-ranges, ISA_LC_Max returns the largest
 *       maximum of all the sub-ranges.
 *
 *   BOOL ISA_LC_Is_Signed (ISA_LIT_CLASS lc)
 *       Returns whether the lit-class <lc> is signed.
 *
 *   BOOL ISA_LC_Value_In_Class (INT64 val, ISA_LIT_CLASS lc)
 *       Returns whether <val> is a value that belongs to <lc>.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_lits_INCLUDED
#define targ_isa_lits_INCLUDED
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
	LC_UNDEFINED,
	LC_i1,
	LC_i8,
	LC_i9,
	LC_i13,
	LC_i14,
	LC_i16,
	LC_i17,
	LC_i22,
	LC_i25,
	LC_i44,
	LC_i64,
	LC_k2,
	LC_k4,
	LC_k5,
	LC_k6,
	LC_k7,
	LC_k8,
	LC_k9,
	LC_k21,
	LC_k24,
	LC_k62,
	LC_pmpyshr2,
	LC_fetchadd,
	LC_shfadd,
	LC_pshfadd,
	LC_len4,
	LC_len6,
	LC_scmp,
	LC_ucmp1,
	LC_ucmp2,
	LC_ucmp3,
	LC_ucmp4,
	LC_MAX
} ISA_LIT_CLASS;

typedef struct {
  struct { INT64 min; INT64 max; } range[9];
  mUINT8 num_ranges;
  mBOOL is_signed;
  const char *name;
} ISA_LIT_CLASS_INFO;

inline const char * ISA_LC_Name (ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  return ISA_LIT_CLASS_info[lc].name;
}

inline INT64 ISA_LC_Min (ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  return ISA_LIT_CLASS_info[lc].range[0].min;
}

inline INT64 ISA_LC_Max (ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  return ISA_LIT_CLASS_info[lc].range[0].max;
}

inline BOOL ISA_LC_Is_Signed (ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  return ISA_LIT_CLASS_info[lc].is_signed;
}

inline BOOL ISA_LC_Value_In_Class (INT64 val, ISA_LIT_CLASS lc)
{
  extern const ISA_LIT_CLASS_INFO ISA_LIT_CLASS_info[];
  const ISA_LIT_CLASS_INFO *plc = ISA_LIT_CLASS_info + lc;
  INT i;
  for (i = 1; i <= plc->num_ranges; ++i) {
    INT64 min = plc->range[i].min;
    INT64 max = plc->range[i].max;
    if ( plc->is_signed ) {
      if (val >= min && val <= max) return TRUE;
    } else {
      if ((UINT64)val >= (UINT64)min && (UINT64)val <= (UINT64)max) return TRUE;
    }
  }
  return FALSE;
}

#ifdef __cplusplus
}
#endif
#endif
