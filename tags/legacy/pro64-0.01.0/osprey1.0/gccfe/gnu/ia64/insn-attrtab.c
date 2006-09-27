/* Generated automatically by the program `genattrtab'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "rtl.h"
#include "tm_p.h"
#include "insn-config.h"
#include "recog.h"
#include "regs.h"
#include "real.h"
#include "output.h"
#include "insn-attr.h"
#include "toplev.h"

#define operands recog_data.operand

extern int result_ready_cost PARAMS ((rtx));
int
result_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

extern int long_immediate_unit_ready_cost PARAMS ((rtx));
int
long_immediate_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

extern int branch_unit_ready_cost PARAMS ((rtx));
int
branch_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

extern int floating_point_unit_ready_cost PARAMS ((rtx));
int
floating_point_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

extern int memory_unit_ready_cost PARAMS ((rtx));
int
memory_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

extern int integer_unit_ready_cost PARAMS ((rtx));
int
integer_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

extern int alu_unit_ready_cost PARAMS ((rtx));
int
alu_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

extern int function_units_used PARAMS ((rtx));
int
function_units_used (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 270:
    case 269:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && (which_alternative != 1)) && (((which_alternative == 2) || (which_alternative == 3)) || ((which_alternative != 2) && (which_alternative != 3))))
        {
	  return -6 /* units: alu, memory */;
        }
      else if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return 0 /* units: alu */;
        }
      else
        {
	  return -1 /* units: none */;
        }

    case 407:
    case 406:
    case 405:
    case 404:
    case 403:
    case 402:
    case 401:
    case 400:
    case 399:
    case 397:
    case 395:
    case 394:
    case 390:
    case 389:
    case 388:
    case 387:
    case 147:
    case 146:
    case 145:
    case 144:
    case 143:
    case 142:
    case 141:
    case 140:
    case 139:
    case 134:
    case 131:
    case 130:
    case 126:
    case 125:
    case 124:
    case 123:
    case 122:
      return -6 /* units: alu, memory */;

    case 374:
    case 372:
    case 107:
    case 105:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 0 /* units: alu */;
        }
      else
        {
	  return -1 /* units: none */;
        }

    case 373:
    case 371:
    case 106:
    case 104:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 4) || (which_alternative == 5))))
        {
	  return -6 /* units: alu, memory */;
        }
      else if ((which_alternative == 0) || (which_alternative == 3))
        {
	  return 0 /* units: alu */;
        }
      else
        {
	  return -1 /* units: none */;
        }

    case 384:
    case 383:
    case 382:
    case 381:
    case 380:
    case 379:
    case 378:
    case 377:
    case 376:
    case 375:
    case 119:
    case 118:
    case 117:
    case 116:
    case 115:
    case 114:
    case 113:
    case 112:
    case 111:
    case 110:
    case 109:
    case 108:
    case 101:
    case 100:
      return 4 /* units: branch */;

    case 368:
    case 99:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative != 0) && (which_alternative != 1))
        {
	  return -6 /* units: alu, memory */;
        }
      else if (which_alternative == 1)
        {
	  return 0 /* units: alu */;
        }
      else
        {
	  return -1 /* units: none */;
        }

    case 358:
    case 357:
    case 356:
    case 355:
    case 89:
    case 88:
    case 87:
    case 86:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 0 /* units: alu */;
        }
      else
        {
	  return 3 /* units: floating_point */;
        }

    case 285:
    case 16:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 1)
        {
	  return -6 /* units: alu, memory */;
        }
      else if (which_alternative == 0)
        {
	  return -4 /* units: alu, integer */;
        }
      else
        {
	  return 3 /* units: floating_point */;
        }

    case 284:
    case 283:
    case 15:
    case 14:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative != 0)
        {
	  return -6 /* units: alu, memory */;
        }
      else
        {
	  return -4 /* units: alu, integer */;
        }

    case 282:
    case 13:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return -4 /* units: alu, integer */;
        }
      else
        {
	  return 3 /* units: floating_point */;
        }

    case 396:
    case 393:
    case 392:
    case 391:
    case 367:
    case 366:
    case 353:
    case 352:
    case 351:
    case 348:
    case 347:
    case 346:
    case 345:
    case 320:
    case 303:
    case 302:
    case 301:
    case 299:
    case 298:
    case 297:
    case 281:
    case 280:
    case 132:
    case 129:
    case 128:
    case 127:
    case 98:
    case 97:
    case 84:
    case 83:
    case 82:
    case 79:
    case 78:
    case 77:
    case 76:
    case 51:
    case 34:
    case 33:
    case 32:
    case 30:
    case 29:
    case 28:
    case 12:
    case 11:
      return -4 /* units: alu, integer */;

    case 279:
    case 10:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative != 0)
        {
	  return -6 /* units: alu, memory */;
        }
      else
        {
	  return 3 /* units: floating_point */;
        }

    case 278:
    case 9:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))))
        {
	  return -6 /* units: alu, memory */;
        }
      else if (which_alternative != 0)
        {
	  return 0 /* units: alu */;
        }
      else
        {
	  return 3 /* units: floating_point */;
        }

    case 277:
    case 8:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || (which_alternative == 6)))))
        {
	  return -6 /* units: alu, memory */;
        }
      else if (which_alternative == 5)
        {
	  return 0 /* units: alu */;
        }
      else
        {
	  return 3 /* units: floating_point */;
        }

    case 275:
    case 6:
      return 5 /* units: long_immediate */;

    case 386:
    case 385:
    case 363:
    case 362:
    case 361:
    case 360:
    case 359:
    case 354:
    case 349:
    case 319:
    case 313:
    case 312:
    case 311:
    case 310:
    case 309:
    case 307:
    case 306:
    case 305:
    case 304:
    case 276:
    case 274:
    case 273:
    case 121:
    case 120:
    case 94:
    case 93:
    case 92:
    case 91:
    case 90:
    case 85:
    case 80:
    case 50:
    case 44:
    case 43:
    case 42:
    case 41:
    case 40:
    case 38:
    case 37:
    case 36:
    case 35:
    case 7:
    case 5:
    case 4:
      return 0 /* units: alu */;

    case 272:
    case 3:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && (which_alternative != 1)) && ((((which_alternative == 3) || (which_alternative == 4)) || ((which_alternative == 5) || (which_alternative == 6))) || ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return -6 /* units: alu, memory */;
        }
      else if ((which_alternative == 10) || (which_alternative == 11))
        {
	  return -4 /* units: alu, integer */;
        }
      else if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return 0 /* units: alu */;
        }
      else if (which_alternative == 7)
        {
	  return 3 /* units: floating_point */;
        }
      else if (which_alternative == 2)
        {
	  return 5 /* units: long_immediate */;
        }
      else
        {
	  return -1 /* units: none */;
        }

    case 271:
    case 2:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && (((which_alternative == 3) || (which_alternative == 4)) || ((which_alternative == 5) || (which_alternative == 6)))) || ((which_alternative == 8) || (which_alternative == 9)))
        {
	  return -6 /* units: alu, memory */;
        }
      else if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return 0 /* units: alu */;
        }
      else if (which_alternative == 7)
        {
	  return 3 /* units: floating_point */;
        }
      else if (which_alternative == 2)
        {
	  return 5 /* units: long_immediate */;
        }
      else
        {
	  return -1 /* units: none */;
        }

    case 1:
    case 0:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 2) || (which_alternative == 3))) || ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return -6 /* units: alu, memory */;
        }
      else if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return 0 /* units: alu */;
        }
      else
        {
	  return -1 /* units: none */;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    case 398:
    case 370:
    case 369:
    case 350:
    case 316:
    case 300:
    case 138:
    case 137:
    case 136:
    case 135:
    case 133:
    case 103:
    case 102:
    case 81:
    case 47:
    case 31:
      return -1 /* units: none */;

    default:
      return 3 /* units: floating_point */;

    }
}

extern enum attr_predicable get_attr_predicable PARAMS ((rtx));
enum attr_predicable
get_attr_predicable (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 100:
    case 101:
    case 115:
    case 116:
    case 122:
    case 133:
    case 136:
    case 137:
    case 138:
      return PREDICABLE_NO;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return PREDICABLE_YES;

    }
}

extern enum attr_type get_attr_type PARAMS ((rtx));
enum attr_type
get_attr_type (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 373:
    case 371:
    case 106:
    case 104:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_A;
        }
      else if ((which_alternative == 1) || (which_alternative == 2))
        {
	  return TYPE_M;
        }
      else if (which_alternative == 3)
        {
	  return TYPE_A;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return TYPE_M;
        }
      else
        {
	  return TYPE_UNKNOWN;
        }

    case 278:
    case 9:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_F;
        }
      else if ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))))
        {
	  return TYPE_M;
        }
      else
        {
	  return TYPE_A;
        }

    case 277:
    case 8:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_F;
        }
      else if ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))))
        {
	  return TYPE_M;
        }
      else if (which_alternative == 5)
        {
	  return TYPE_A;
        }
      else
        {
	  return TYPE_M;
        }

    case 272:
    case 3:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return TYPE_A;
        }
      else if (which_alternative == 2)
        {
	  return TYPE_L;
        }
      else if ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || (which_alternative == 6))))
        {
	  return TYPE_M;
        }
      else if (which_alternative == 7)
        {
	  return TYPE_F;
        }
      else if ((which_alternative == 8) || (which_alternative == 9))
        {
	  return TYPE_M;
        }
      else if (which_alternative == 10)
        {
	  return TYPE_I;
        }
      else
        {
	  return TYPE_I;
        }

    case 271:
    case 2:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return TYPE_A;
        }
      else if (which_alternative == 2)
        {
	  return TYPE_L;
        }
      else if ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || (which_alternative == 6))))
        {
	  return TYPE_M;
        }
      else if (which_alternative == 7)
        {
	  return TYPE_F;
        }
      else if (which_alternative == 8)
        {
	  return TYPE_M;
        }
      else
        {
	  return TYPE_M;
        }

    case 270:
    case 269:
    case 1:
    case 0:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return TYPE_A;
        }
      else if ((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4)))
        {
	  return TYPE_M;
        }
      else
        {
	  return TYPE_M;
        }

    case 10:
    case 279:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_F;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_M;
        }
      else
        {
	  return TYPE_M;
        }

    case 13:
    case 282:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_I;
        }
      else
        {
	  return TYPE_F;
        }

    case 14:
    case 15:
    case 283:
    case 284:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_I;
        }
      else
        {
	  return TYPE_M;
        }

    case 16:
    case 285:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_I;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_M;
        }
      else
        {
	  return TYPE_F;
        }

    case 86:
    case 87:
    case 88:
    case 89:
    case 355:
    case 356:
    case 357:
    case 358:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_A;
        }
      else
        {
	  return TYPE_F;
        }

    case 99:
    case 368:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_UNKNOWN;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_A;
        }
      else if (which_alternative == 2)
        {
	  return TYPE_M;
        }
      else
        {
	  return TYPE_M;
        }

    case 105:
    case 107:
    case 372:
    case 374:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_A;
        }
      else
        {
	  return TYPE_UNKNOWN;
        }

    case 137:
      return TYPE_S;

    case 6:
    case 275:
      return TYPE_L;

    case 100:
    case 101:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 375:
    case 376:
    case 377:
    case 378:
    case 379:
    case 380:
    case 381:
    case 382:
    case 383:
    case 384:
      return TYPE_B;

    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 130:
    case 131:
    case 134:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 387:
    case 388:
    case 389:
    case 390:
    case 394:
    case 395:
    case 397:
    case 399:
    case 400:
    case 401:
    case 402:
    case 403:
    case 404:
    case 405:
    case 406:
    case 407:
      return TYPE_M;

    case 11:
    case 12:
    case 28:
    case 29:
    case 30:
    case 32:
    case 33:
    case 34:
    case 51:
    case 76:
    case 77:
    case 78:
    case 79:
    case 82:
    case 83:
    case 84:
    case 97:
    case 98:
    case 127:
    case 128:
    case 129:
    case 132:
    case 280:
    case 281:
    case 297:
    case 298:
    case 299:
    case 301:
    case 302:
    case 303:
    case 320:
    case 345:
    case 346:
    case 347:
    case 348:
    case 351:
    case 352:
    case 353:
    case 366:
    case 367:
    case 391:
    case 392:
    case 393:
    case 396:
      return TYPE_I;

    case 4:
    case 5:
    case 7:
    case 35:
    case 36:
    case 37:
    case 38:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 50:
    case 80:
    case 85:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 120:
    case 121:
    case 273:
    case 274:
    case 276:
    case 304:
    case 305:
    case 306:
    case 307:
    case 309:
    case 310:
    case 311:
    case 312:
    case 313:
    case 319:
    case 349:
    case 354:
    case 359:
    case 360:
    case 361:
    case 362:
    case 363:
    case 385:
    case 386:
      return TYPE_A;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    case 31:
    case 47:
    case 81:
    case 102:
    case 103:
    case 133:
    case 135:
    case 136:
    case 138:
    case 300:
    case 316:
    case 350:
    case 369:
    case 370:
    case 398:
      return TYPE_UNKNOWN;

    default:
      return TYPE_F;

    }
}

struct function_unit_desc function_units[] = {
  {"alu", 1, 3, 1, 1, 1, alu_unit_ready_cost, 0, 1, 0, 0}, 
  {"integer", 2, 2, 1, 1, 1, integer_unit_ready_cost, 0, 1, 0, 0}, 
  {"memory", 4, 3, 1, 1, 1, memory_unit_ready_cost, 0, 1, 0, 0}, 
  {"floating_point", 8, 1, 1, 1, 1, floating_point_unit_ready_cost, 0, 1, 0, 0}, 
  {"branch", 16, 3, 1, 1, 1, branch_unit_ready_cost, 0, 1, 0, 0}, 
  {"long_immediate", 32, 1, 1, 1, 1, long_immediate_unit_ready_cost, 0, 1, 0, 0}, 
};

