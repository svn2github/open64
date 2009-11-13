/********************************************************************\
|*                                                                  *|   
|*    Copyright (c) 2006 by SimpLight Nanoelectronics.              *|
|*    All rights reserved                                           *|
|*                                                                  *|   
\********************************************************************/ 

#include "defs.h"
#include "errors.h"
#include "config_targ.h"
#include "config_platform.h"

void Fill_Align_Initialize_Parameters(INT *L1_sz, INT *L2_sz, INT *pg_sz)
{
  INT L1_cache_line_sz;
  INT L2_cache_line_sz;

  switch (Target) {

    case TARGET_sb1:
      L1_cache_line_sz = 32;
      L2_cache_line_sz = 32;
      break;

    default:
      L1_cache_line_sz = 32;
      L2_cache_line_sz = 128;
      break;
  }
  
  *L1_sz = L1_cache_line_sz;
  *L2_sz = L2_cache_line_sz;
  *pg_sz = 16384;
}

