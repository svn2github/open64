/* Generated automatically from machmode.def and config/i386/i386-modes.def
   by genmodes.  */

#ifndef GCC_INSN_MODES_H
#define GCC_INSN_MODES_H

enum machine_mode
{
  VOIDmode,                /* machmode.def:150 */
  BLKmode,                 /* machmode.def:154 */
  CCmode,                  /* machmode.def:182 */
  CCGCmode,                /* config/i386/i386-modes.def:58 */
  CCGOCmode,               /* config/i386/i386-modes.def:59 */
  CCNOmode,                /* config/i386/i386-modes.def:60 */
  CCAmode,                 /* config/i386/i386-modes.def:61 */
  CCCmode,                 /* config/i386/i386-modes.def:62 */
  CCOmode,                 /* config/i386/i386-modes.def:63 */
  CCSmode,                 /* config/i386/i386-modes.def:64 */
  CCZmode,                 /* config/i386/i386-modes.def:65 */
  CCFPmode,                /* config/i386/i386-modes.def:66 */
  CCFPUmode,               /* config/i386/i386-modes.def:67 */
  BImode,                  /* machmode.def:157 */
  QImode,                  /* machmode.def:162 */
  HImode,                  /* machmode.def:163 */
  SImode,                  /* machmode.def:164 */
  DImode,                  /* machmode.def:165 */
  TImode,                  /* machmode.def:166 */
  SFmode,                  /* machmode.def:177 */
  DFmode,                  /* machmode.def:178 */
  XFmode,                  /* config/i386/i386-modes.def:25 */
  TFmode,                  /* config/i386/i386-modes.def:26 */
  SDmode,                  /* machmode.def:194 */
  DDmode,                  /* machmode.def:195 */
  TDmode,                  /* machmode.def:196 */
  CQImode,                 /* machmode.def:190 */
  CHImode,                 /* machmode.def:190 */
  CSImode,                 /* machmode.def:190 */
  CDImode,                 /* machmode.def:190 */
  CTImode,                 /* machmode.def:190 */
  SCmode,                  /* machmode.def:191 */
  DCmode,                  /* machmode.def:191 */
  XCmode,                  /* machmode.def:191 */
  TCmode,                  /* machmode.def:191 */
  V4QImode,                /* config/i386/i386-modes.def:70 */
  V2HImode,                /* config/i386/i386-modes.def:70 */
  V1SImode,                /* config/i386/i386-modes.def:77 */
  V8QImode,                /* config/i386/i386-modes.def:71 */
  V4HImode,                /* config/i386/i386-modes.def:71 */
  V2SImode,                /* config/i386/i386-modes.def:71 */
  V1DImode,                /* config/i386/i386-modes.def:75 */
  V16QImode,               /* config/i386/i386-modes.def:72 */
  V8HImode,                /* config/i386/i386-modes.def:72 */
  V4SImode,                /* config/i386/i386-modes.def:72 */
  V2DImode,                /* config/i386/i386-modes.def:72 */
  V32QImode,               /* config/i386/i386-modes.def:80 */
  V16HImode,               /* config/i386/i386-modes.def:79 */
  V8SImode,                /* config/i386/i386-modes.def:78 */
  V4DImode,                /* config/i386/i386-modes.def:76 */
  V2SFmode,                /* config/i386/i386-modes.def:73 */
  V4SFmode,                /* config/i386/i386-modes.def:74 */
  V2DFmode,                /* config/i386/i386-modes.def:74 */
  V8SFmode,                /* config/i386/i386-modes.def:82 */
  V4DFmode,                /* config/i386/i386-modes.def:81 */
  MAX_MACHINE_MODE,

  MIN_MODE_RANDOM = VOIDmode,
  MAX_MODE_RANDOM = BLKmode,

  MIN_MODE_CC = CCmode,
  MAX_MODE_CC = CCFPUmode,

  MIN_MODE_INT = QImode,
  MAX_MODE_INT = TImode,

  MIN_MODE_PARTIAL_INT = VOIDmode,
  MAX_MODE_PARTIAL_INT = VOIDmode,

  MIN_MODE_FLOAT = SFmode,
  MAX_MODE_FLOAT = TFmode,

  MIN_MODE_DECIMAL_FLOAT = SDmode,
  MAX_MODE_DECIMAL_FLOAT = TDmode,

  MIN_MODE_COMPLEX_INT = CQImode,
  MAX_MODE_COMPLEX_INT = CTImode,

  MIN_MODE_COMPLEX_FLOAT = SCmode,
  MAX_MODE_COMPLEX_FLOAT = TCmode,

  MIN_MODE_VECTOR_INT = V4QImode,
  MAX_MODE_VECTOR_INT = V4DImode,

  MIN_MODE_VECTOR_FLOAT = V2SFmode,
  MAX_MODE_VECTOR_FLOAT = V4DFmode,

  NUM_MACHINE_MODES = MAX_MACHINE_MODE
};

#define CONST_MODE_SIZE
#define CONST_MODE_BASE_ALIGN

#endif /* insn-modes.h */
