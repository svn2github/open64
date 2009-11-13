/********************************************************************\
|*                                                                  *|   
|*    Copyright (c) 2006 by SimpLight Nanoelectronics.              *|
|*    All rights reserved                                           *|
|*                                                                  *|   
\********************************************************************/ 

static char *source_file = __FILE__;
static char *rcs_id = "$Source: /depot/CVSROOT/javi/src/sw/cmplr/common/com/MIPS/config_host.c,v $ $Revision: 1.1 $";

#include "defs.h"
#include "config.h"

/* ====================================================================
 *
 * Preconfigure_Host
 *
 * Configuration of host-specific parameters, prior to flag processing.
 *
 * ====================================================================
 */

void
Preconfigure_Host ( void )
{
#if HOST_IS_LITTLE_ENDIAN
  Host_Byte_Sex = LITTLE_ENDIAN;
#else
  Host_Byte_Sex = BIG_ENDIAN;
#endif

  return;
}


/* ====================================================================
 *
 * Configure_Host
 *
 * Configuration of host-specific parameters, after flag processing.
 *
 * ====================================================================
 */

void
Configure_Host ( void )
{
  return;
}



/* ====================================================================
 *
 * Configure_Source_Host
 *
 * Reconfiguration of host-specific parameters for each source file.
 *
 * ====================================================================
 */

/*ARGSUSED*/
void
Configure_Source_Host ( char *filename )
{
  return;
}
