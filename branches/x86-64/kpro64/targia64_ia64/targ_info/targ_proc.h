/* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of the PROC (actually just an enum of all the processors).
 *   The description exports the following:
 *
 *   typedef (enum) PROCESSOR
 *      Contains all the target processors.  Their names have the form
 *      PROCESSOR_<name>.
 *
 *   const PROCESSOR PROCESSOR_UNDEFINED
 *      Useful value guaranteed not to be a valid PROCESSOR.
 *
 *   const int PROCESSOR_count
 *      Gives the number of processors.
 *
 *   PROCESSOR PROCESSOR_Value
 *      The current processor.
 *
 *   const char* PROCESSOR_Name(PROCESSOR topcode)
 *      Returns a name for the given PROCESSOR.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_proc_INCLUDED
#define targ_proc_INCLUDED
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

typedef enum processor {
  PROCESSOR_itanium,
  PROCESSOR_UNDEFINED
} PROCESSOR;

#define PROCESSOR_count 1

extern PROCESSOR PROCESSOR_Value;

extern const char* PROCESSOR_Name(PROCESSOR proc);

#ifdef __cplusplus
}
#endif
#endif
