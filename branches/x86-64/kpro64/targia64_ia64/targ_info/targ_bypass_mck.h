/***************************************************************************
* Description:
*	void TARG_Adjust_Latency(TOP pred_code, TOP succ_code,
*                               INT src_reg, INT dst_reg, INT *latency,
*                               BOOL pred_is_chk, BOOL succ_is_chk)
*	  Makes any target-specific latency adjustments that may be
*	  required between <pred_code> and <succ_code>.
*/


#ifndef targ_bypass_INCLUDED
#define targ_bypass_INCLUDED

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

/*Function class of op*/
typedef enum {
  SIC_IALU,
  SIC_ICMP,
  SIC_ILOG,
  SIC_PNT,
  SIC_ISHF,
  SIC_TBIT,
  SIC_SYST_M,
  SIC_SYST_M0,
  SIC_SYST_M2,
  SIC_SYST_I,
  SIC_SYST_I0,
  SIC_SYST_B,
  SIC_SYST_B0,
  SIC_SYST_B2,
  SIC_XTD,
  SIC_LONG_I,
  SIC_LFETCH,
  SIC_LD,
  SIC_FLD,
  SIC_FLDA,
  SIC_FLDP,
  SIC_CLD,
  SIC_FCLD,
  SIC_ST,
  SIC_SEM,
  SIC_FCVTFX,
  SIC_FCVTXF,
  SIC_FMAC,
  SIC_XMA,
  SIC_FMISC,
  SIC_SFMAC,
  SIC_SFCVTFX,
  SIC_SFMISC,
  SIC_SFMERGESE,
  SIC_STF,
  SIC_FCMP,
  SIC_FOTHER,
  SIC_TOFR,
  SIC_FRFR,
  SIC_TOPR,
  SIC_FRPR,
  SIC_TOBR,
  SIC_FRBR,
  SIC_TOAR_M,
  SIC_TOAR_I,
  SIC_FRAR_M,
  SIC_FRAR_I,
  SIC_TOCR,
  SIC_FRCR,
  SIC_NOP_I,
  SIC_NOP_M,
  SIC_NOP_B,
  SIC_NOP_X,
  SIC_NOP_F,
  SIC_RSE_M,
  SIC_RSE_B,
  SIC_BR,
  SIC_BR_B2,
  SIC_BRP,
  SIC_FRIP,
  SIC_CHK_ALAT,
  SIC_CHK_I,
  SIC_CHK_M,
  SIC_MMALU_A,
  SIC_MMALU_I,
  SIC_MMSHF,
  SIC_MMMUL,
  SIC_UNIMP,
  SIC_LAST,
  SIC_DUMMY,
  SIC_UNKNOWN
} SCHED_INFO_CLASS;

extern SCHED_INFO_CLASS TARG_Sched_Info_Class(TOP top, BOOL is_chk=false);
extern void TARG_Adjust_Latency(TOP pred_code, TOP succ_code,
                  INT src_reg, INT dst_reg, INT opnd, INT *latency, 
                  BOOL pred_is_chk=false, BOOL succ_is_chk=false);
#endif
