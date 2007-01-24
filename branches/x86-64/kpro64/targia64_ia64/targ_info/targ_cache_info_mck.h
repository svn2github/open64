/* ====================================================================
 * ====================================================================
 *
 * Description:
 */

#ifndef targ_cache_info_INCLUDED
#define targ_cache_info_INCLUDED

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

extern INT CACHE_L1I, CACHE_L1D, CACHE_L2, CACHE_L3,  CACHE_MAX;
typedef struct{
   INT lines;
   INT linesize;
   INT size;
   INT ways;
   INT ports;
   INT readcycle;
} CACHE_INFO;
extern const CACHE_INFO cache_info[];

inline INT Cache_Line_Size(INT idx)
{
  return cache_info[idx].linesize;
}
inline INT Cache_Size(INT idx)
{
  return cache_info[idx].size;
}
inline INT Cache_Lines(INT idx)
{
  return cache_info[idx].lines;
}
inline INT Cache_Read_Cycle(INT idx)
{
  return cache_info[idx].readcycle;
}
inline INT Cache_Ways(INT idx)
{
  return cache_info[idx].ways;
}
inline INT Cache_Ports(INT idx)
{
  return cache_info[idx].ports;
}
#endif
