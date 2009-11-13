/********************************************************************\
|*                                                                  *|   
|*    Copyright (c) 2006 by SimpLight Nanoelectronics.              *|
|*    All rights reserved                                           *|
|*                                                                  *|   
\********************************************************************/ 

//
// Generate a list of PROCESSORS.
/////////////////////////////////////

#include <stddef.h>
#include "proc_gen.h"

main ()
{
  PROC_Create ( "MIPS",
#ifdef TARG_SL
        "sl1_pcore",
        "sl1_dsp",
        "sl2_mcore",
        "sl2_pcore",
        "sl5",
#else
        "r10000",
        "sb1",
#endif
	NULL
  );
}

