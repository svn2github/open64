#include "topcode.h"
#include "targ_isa_bundle.h"
#include "targ_isa_pack.h"
#include "targ_isa_decode.h"


static const mUINT16 state_unit_tab[8] = {
  3311, 3311, 3311, 3311, 3311, 3311, 3311, 3311,
};

TOP ISA_Decode_Inst(const ISA_PACK_INST *pinst, ISA_EXEC_UNIT unit)
{
  INT top;
  INT opc;
  opc = (unit >> 0) & 0x7;
  top = state_unit_tab[opc];
  return (TOP)top;
}
