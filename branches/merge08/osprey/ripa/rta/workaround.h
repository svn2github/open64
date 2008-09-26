#ifndef _WORKAROUND_H_
#define _WORKAROUND_H_

#define INT int
#define INT8 char
#define UINT8 unsigned char
#define INT16 short
#define UINT16 unsigned short
#define INT32 long
#define UINT32 unsigned long
#define UINT unsigned long
#define INT64 long long
#define UINT64 unsigned long long
#define mINT32 INT32
#define mUINT32 UINT32
#define mINT8  char  
#define mUINT8  unsigned char  
#define mUINT16 unsigned short
#define mINT16 short
#define mUINT64 UINT64
#define mINT64 INT64
#define BOOL bool
#define mBOOL bool
#define TRUE 1
#define FALSE 0
typedef char * STRING;
typedef unsigned char *BITS;
typedef mUINT16       mCLASS_INDEX;

// the followings in symtab_idx.h
typedef mINT32 ST_IDX;                 // idx to symbol table
typedef mUINT32 TY_IDX;                 // idx to type table
typedef mUINT32 FLD_IDX;                // idx to struct field table
typedef mUINT32 ARB_IDX;                // idx to array bound table
typedef mUINT32 TYLIST_IDX;             // idx to function parm. list table
typedef mUINT32 PU_IDX;                 // idx to pu table
typedef mUINT8  SYMTAB_IDX;             // idx to scope array
typedef mUINT32 INITO_IDX;
typedef INT32 PREG_NUM;  
typedef mUINT32 TCON_IDX;
typedef unsigned long UINTPS;
// One instance of the following class per compilation.

struct SCOPE;
struct SYMBOL_TABLE;
extern SCOPE		*Scope_tab;

extern SYMBOL_TABLE   St_Table;

typedef void * MEM_POOL;
#include <stdint.h>  // for INT_MIN etc
#include <strings.h>  // for bzero

typedef double FB_FREQ;
typedef unsigned char *WN;
struct TY;
struct TY_TAB;
extern TY_TAB Ty_tab[];
extern void *MEM_POOL_Alloc_P(MEM_POOL *pool, size_t s, int, char*);

#define SBar "=="

#define MIN(x,y)  (x < y ? x : y)
#define MAX(x,y)  (x < y ? y : x)



#if 0
// see common/com/dwarf_DST_mem.{h,cxx}
#define DST_INVALID_BLOCK_IDX -1
#define DST_INVALID_BYTE_IDX -1
typedef mUINT32 DST_BYTE_IDX;
typedef mUINT32 DST_BLOCK_IDX;

typedef struct DST_idx
{
   DST_BYTE_IDX  byte_idx;
   DST_BLOCK_IDX block_idx;
} DST_IDX;
#endif

#endif // _WORKAROUND_H_
