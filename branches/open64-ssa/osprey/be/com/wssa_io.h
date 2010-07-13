#ifndef WSSA_IO_INCLUDED
#define WSSA_IO_INCLUDED

#include "wn.h"
#include "wn_map.h"
#include "pu_info.h"
#include "ir_bwrite.h"
#include "ir_bcom.h"
#include "wssa_mgr.h"


namespace WSSA {

class WHIRL_SSA_IO : public WHIRL_SSA_MANAGER
{

public:
  /*write ssa into file*/
  void Write_To_Output_File(Output_File *fl);

  /*read ssa from file*/
  void Get_SSA_From_File(char *base);

};

}
#endif  /* WSSA_IO_INCLUDED */
