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

extern int insn_current_length PARAMS ((rtx));
int
insn_current_length (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 217:
    case 216:
    case 215:
    case 214:
    case 213:
    case 212:
    case 211:
    case 210:
    case 209:
    case 208:
      extract_insn (insn);
      if ((abs ((insn_addresses[INSN_UID (GET_CODE (operands[1]) == LABEL_REF ? XEXP (operands[1], 0) : operands[1])]) - ((insn_current_reference_address (insn)) + (4)))) < (131072))
        {
	  return 4;
        }
      else
        {
	  return 12 /* 0xc */;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 0;

    }
}

extern int insn_variable_length_p PARAMS ((rtx));
int
insn_variable_length_p (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 217:
    case 216:
    case 215:
    case 214:
    case 213:
    case 212:
    case 211:
    case 210:
    case 209:
    case 208:
      return 1;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 0;

    }
}

extern int insn_default_length PARAMS ((rtx));
int
insn_default_length (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 179:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || (which_alternative == 3))))
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  return 16 /* 0x10 */;
        }
      else if (which_alternative == 5)
        {
	  return 8;
        }
      else
        {
	  return 16 /* 0x10 */;
        }

    case 178:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return 8;
        }
      else if (which_alternative == 2)
        {
	  return 16 /* 0x10 */;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else
        {
	  return 16 /* 0x10 */;
        }

    case 177:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 4;
        }
      else if (which_alternative == 1)
        {
	  return 8;
        }
      else if ((which_alternative == 2) || (which_alternative == 3))
        {
	  return 4;
        }
      else if ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || (which_alternative == 7))))
        {
	  return 8;
        }
      else if (which_alternative == 8)
        {
	  return 4;
        }
      else if (which_alternative == 9)
        {
	  return 8;
        }
      else if (which_alternative == 10)
        {
	  return 4;
        }
      else
        {
	  return 4;
        }

    case 176:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 4;
        }
      else if (which_alternative == 1)
        {
	  return 8;
        }
      else if (which_alternative == 2)
        {
	  return 16 /* 0x10 */;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return 16 /* 0x10 */;
        }
      else if ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 8;
        }
      else if (which_alternative == 10)
        {
	  return 16 /* 0x10 */;
        }
      else if (which_alternative == 11)
        {
	  return 8;
        }
      else
        {
	  return 16 /* 0x10 */;
        }

    case 175:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || (which_alternative == 3))))
        {
	  return 4;
        }
      else if (which_alternative == 4)
        {
	  return 8;
        }
      else if (which_alternative == 5)
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 174:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return 4;
        }
      else if (which_alternative == 2)
        {
	  return 8;
        }
      else if (which_alternative == 3)
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 173:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  return 4;
        }
      else if (which_alternative == 5)
        {
	  return 8;
        }
      else if ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 4;
        }
      else if (which_alternative == 10)
        {
	  return 8;
        }
      else if (which_alternative == 11)
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 172:
    case 169:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  if (m16_uimm8_1 (operands[1], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else if (which_alternative == 4)
        {
	  if (m16_nuimm8_1 (operands[1], VOIDmode))
	    {
	      return 8;
	    }
	  else
	    {
	      return 12 /* 0xc */;
	    }
        }
      else if (which_alternative == 5)
        {
	  return 4;
        }
      else if (which_alternative == 6)
        {
	  return 8;
        }
      else if (which_alternative == 7)
        {
	  return 4;
        }
      else if (which_alternative == 8)
        {
	  return 8;
        }
      else
        {
	  return 4;
        }

    case 171:
    case 168:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  return 4;
        }
      else if (which_alternative == 5)
        {
	  return 8;
        }
      else if ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8)))
        {
	  return 4;
        }
      else
        {
	  return 4;
        }

    case 170:
    case 167:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  return 4;
        }
      else if (which_alternative == 5)
        {
	  return 8;
        }
      else if ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 4;
        }
      else
        {
	  return 4;
        }

    case 158:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 8;
        }
      else if ((which_alternative == 1) || (which_alternative == 2))
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  return 4;
        }
      else if (which_alternative == 5)
        {
	  return 8;
        }
      else if ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 4;
        }
      else if (which_alternative == 10)
        {
	  return 8;
        }
      else if (which_alternative == 11)
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 157:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  if (m16_uimm8_1 (operands[1], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else if (which_alternative == 5)
        {
	  if (m16_nuimm8_1 (operands[1], VOIDmode))
	    {
	      return 8;
	    }
	  else
	    {
	      return 12 /* 0xc */;
	    }
        }
      else if (which_alternative == 6)
        {
	  if (m16_usym8_4 (operands[1], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else if (which_alternative == 7)
        {
	  return 4;
        }
      else if (which_alternative == 8)
        {
	  return 8;
        }
      else if (which_alternative == 9)
        {
	  return 4;
        }
      else if (which_alternative == 10)
        {
	  return 8;
        }
      else
        {
	  return 4;
        }

    case 156:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 4;
        }
      else if (which_alternative == 1)
        {
	  return 8;
        }
      else if (which_alternative == 2)
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  return 4;
        }
      else if (which_alternative == 5)
        {
	  return 8;
        }
      else if (which_alternative == 6)
        {
	  return 4;
        }
      else if (which_alternative == 7)
        {
	  return 8;
        }
      else if ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || ((which_alternative == 11) || (which_alternative == 12)))))
        {
	  return 4;
        }
      else
        {
	  return 4;
        }

    case 155:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 4;
        }
      else if (which_alternative == 1)
        {
	  return 8;
        }
      else if (which_alternative == 2)
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  return 4;
        }
      else if (which_alternative == 5)
        {
	  return 8;
        }
      else if (which_alternative == 6)
        {
	  return 4;
        }
      else if (which_alternative == 7)
        {
	  return 8;
        }
      else if ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || (which_alternative == 11))))
        {
	  return 4;
        }
      else if (which_alternative == 12)
        {
	  return 8;
        }
      else if (which_alternative == 13)
        {
	  return 4;
        }
      else if (which_alternative == 14)
        {
	  return 8;
        }
      else if ((which_alternative == 15) || ((which_alternative == 16) || (which_alternative == 17)))
        {
	  return 4;
        }
      else
        {
	  return 4;
        }

    case 153:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  if (m16_uimm8_1 (operands[1], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else if (which_alternative == 4)
        {
	  if (m16_nuimm8_1 (operands[1], VOIDmode))
	    {
	      return 8;
	    }
	  else
	    {
	      return 12 /* 0xc */;
	    }
        }
      else if (which_alternative == 5)
        {
	  if (m16_usym5_4 (operands[1], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else if (which_alternative == 6)
        {
	  return 4;
        }
      else if (which_alternative == 7)
        {
	  return 8;
        }
      else if (which_alternative == 8)
        {
	  return 4;
        }
      else if (which_alternative == 9)
        {
	  return 8;
        }
      else
        {
	  return 4;
        }

    case 152:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 4;
        }
      else if (which_alternative == 1)
        {
	  return 8;
        }
      else if (which_alternative == 2)
        {
	  return 4;
        }
      else if (which_alternative == 3)
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  return 4;
        }
      else if (which_alternative == 5)
        {
	  return 8;
        }
      else if (which_alternative == 6)
        {
	  return 4;
        }
      else if (which_alternative == 7)
        {
	  return 8;
        }
      else if ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10)))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 151:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || (which_alternative == 3))))
        {
	  return 8;
        }
      else if (which_alternative == 4)
        {
	  return 12 /* 0xc */;
        }
      else if (which_alternative == 5)
        {
	  return 8;
        }
      else if (which_alternative == 6)
        {
	  return 16 /* 0x10 */;
        }
      else if (which_alternative == 7)
        {
	  return 8;
        }
      else if (which_alternative == 8)
        {
	  return 16 /* 0x10 */;
        }
      else
        {
	  return 8;
        }

    case 150:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 8;
        }
      else if (which_alternative == 1)
        {
	  return 16 /* 0x10 */;
        }
      else if (which_alternative == 2)
        {
	  return 8;
        }
      else if (which_alternative == 3)
        {
	  return 16 /* 0x10 */;
        }
      else if (which_alternative == 4)
        {
	  return 8;
        }
      else if (which_alternative == 5)
        {
	  return 16 /* 0x10 */;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return 8;
        }
      else
        {
	  return 8;
        }

    case 128:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative != 5)
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 125:
    case 123:
    case 121:
    case 119:
    case 117:
    case 35:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative != 2)
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 513:
    case 512:
    case 511:
    case 510:
    case 324:
    case 323:
    case 321:
    case 319:
    case 318:
    case 317:
    case 303:
    case 301:
    case 300:
    case 296:
    case 294:
    case 293:
    case 292:
    case 288:
    case 286:
    case 278:
    case 273:
    case 261:
    case 260:
    case 251:
    case 250:
    case 245:
    case 244:
    case 235:
    case 234:
    case 229:
    case 228:
    case 225:
    case 224:
    case 219:
    case 218:
    case 204:
    case 196:
    case 189:
    case 112:
    case 111:
    case 110:
    case 101:
    case 31:
    case 29:
      return 8;

    case 327:
    case 326:
      return 40 /* 0x28 */;

    case 217:
    case 216:
    case 215:
    case 214:
    case 213:
    case 212:
    case 211:
    case 210:
    case 209:
    case 208:
    case 325:
    case 180:
    case 80:
    case 77:
    case 76:
    case 63:
    case 62:
    case 34:
      return 12 /* 0xc */;

    case 322:
    case 320:
    case 285:
    case 205:
    case 197:
    case 190:
    case 83:
    case 20:
    case 6:
      return 16 /* 0x10 */;

    case 290:
      return 1;

    case 282:
      return 0;

    case 281:
    case 280:
    case 81:
      return 24 /* 0x18 */;

    case 259:
    case 257:
    case 243:
    case 241:
      extract_insn (insn);
      if (m16_uimm8_m1_1 (operands[2], VOIDmode))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 255:
    case 253:
    case 239:
    case 237:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 4;
        }
      else
        {
	  if (m16_uimm8_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }

    case 207:
    case 201:
    case 199:
    case 194:
    case 192:
    case 187:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 4;
        }
      else
        {
	  if (m16_uimm3_b (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }

    case 203:
    case 195:
    case 188:
      return 48 /* 0x30 */;

    case 202:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  if (m16_uimm3_b (operands[2], VOIDmode))
	    {
	      return 8;
	    }
	  else
	    {
	      return 12 /* 0xc */;
	    }
        }
      else
        {
	  if (m16_uimm3_b (operands[2], VOIDmode))
	    {
	      return 12 /* 0xc */;
	    }
	  else
	    {
	      return 16 /* 0x10 */;
	    }
        }

    case 184:
    case 183:
    case 182:
    case 181:
      return 80 /* 0x50 */;

    case 154:
    case 149:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 127:
    case 126:
    case 124:
    case 122:
    case 120:
    case 118:
    case 116:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 146:
    case 145:
    case 144:
    case 143:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 8;
        }
      else
        {
	  return 16 /* 0x10 */;
        }

    case 142:
    case 141:
    case 140:
    case 139:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 12 /* 0xc */;
        }
      else if (which_alternative == 1)
        {
	  return 16 /* 0x10 */;
        }
      else
        {
	  return 12 /* 0xc */;
        }

    case 138:
    case 137:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 8;
        }
      else if (which_alternative == 1)
        {
	  return 4;
        }
      else if (which_alternative == 2)
        {
	  return 8;
        }
      else
        {
	  return 12 /* 0xc */;
        }

    case 136:
    case 135:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 44 /* 0x2c */;
        }
      else if (which_alternative == 1)
        {
	  return 36 /* 0x24 */;
        }
      else if (which_alternative == 2)
        {
	  return 40 /* 0x28 */;
        }
      else
        {
	  return 44 /* 0x2c */;
        }

    case 109:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((mips16) == (0))
        {
	  return 4;
        }
      else
        {
	  return 16 /* 0x10 */;
        }

    case 108:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((mips16) == (0))
        {
	  return 4;
        }
      else
        {
	  return 16 /* 0x10 */;
        }

    case 107:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((mips16) == (0))
        {
	  return 8;
        }
      else
        {
	  return 16 /* 0x10 */;
        }

    case 105:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((TARGET_64BIT) != (0))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 102:
    case 99:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 4;
        }
      else if (which_alternative == 1)
        {
	  if (m16_uimm8_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else
        {
	  return 4;
        }

    case 100:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((TARGET_64BIT) != (0))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 97:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((mips_isa) >= (3))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 96:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((TARGET_64BIT) != (0))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 92:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((mips_isa) >= (3))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 91:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((TARGET_64BIT) != (0))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 88:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((mips_isa) >= (3))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 37:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((GENERATE_MULT3) != (0))
        {
	  return 4;
        }
      else
        {
	  return 12 /* 0xc */;
        }

    case 27:
    case 19:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  if (m16_nsimm8_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else if (which_alternative == 1)
        {
	  if (m16_nsimm4_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else
        {
	  return 4;
        }

    case 25:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  if (m16_nsimm5_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else if (which_alternative == 1)
        {
	  if (m16_nsimm4_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else
        {
	  return 4;
        }

    case 24:
      extract_insn (insn);
      if (m16_nuimm5_4 (operands[0], VOIDmode))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 23:
    case 17:
      extract_insn (insn);
      if (m16_nsimm8_8 (operands[0], VOIDmode))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 21:
    case 7:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return 12 /* 0xc */;
        }
      else if (which_alternative == 1)
        {
	  return 8;
        }
      else
        {
	  return 16 /* 0x10 */;
        }

    case 18:
      extract_insn (insn);
      if (m16_nuimm8_4 (operands[1], VOIDmode))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 13:
    case 5:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  if (m16_simm8_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else if (which_alternative == 1)
        {
	  if (m16_simm4_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else
        {
	  return 4;
        }

    case 11:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  if (m16_simm5_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else if (which_alternative == 1)
        {
	  if (m16_simm4_1 (operands[2], VOIDmode))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else
        {
	  return 4;
        }

    case 10:
      extract_insn (insn);
      if (m16_uimm5_4 (operands[0], VOIDmode))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 9:
    case 3:
      extract_insn (insn);
      if (m16_simm8_8 (operands[0], VOIDmode))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case 4:
      extract_insn (insn);
      if (m16_uimm8_4 (operands[1], VOIDmode))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 4;

    }
}

extern int result_ready_cost PARAMS ((rtx));
int
result_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 271:
    case 270:
    case 269:
    case 268:
    case 267:
    case 266:
    case 265:
    case 264:
    case 263:
    case 262:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R6000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R6000)))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 177:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 1) || ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8)))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if (((which_alternative == 1) || ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8)))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 176:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10))))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10))))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 179:
    case 175:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 3) || (which_alternative == 4))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 3) || (which_alternative == 4))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 178:
    case 174:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 1) || (which_alternative == 2)) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if (((which_alternative == 1) || (which_alternative == 2)) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 173:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 9) || (which_alternative == 10)))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 9) || (which_alternative == 10)))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || ((which_alternative == 1) || ((which_alternative == 6) || (which_alternative == 7))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 171:
    case 170:
    case 168:
    case 167:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 2) || (which_alternative == 3)) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((((which_alternative == 2) || (which_alternative == 3)) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 158:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && (((which_alternative == 2) || (which_alternative == 3)) || ((which_alternative == 9) || (which_alternative == 10)))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if (((((which_alternative != 0) && (which_alternative != 1)) && (((which_alternative == 2) || (which_alternative == 3)) || ((which_alternative == 9) || (which_alternative == 10)))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 6) || (which_alternative == 7))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 157:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 3) || (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8)))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if (((which_alternative == 3) || (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8)))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 156:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 1) || ((which_alternative == 4) || (which_alternative == 5))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((((which_alternative == 1) || ((which_alternative == 4) || (which_alternative == 5))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || ((which_alternative == 8) || (which_alternative == 9)))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 155:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 1) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 11) || (which_alternative == 12))))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((((which_alternative == 1) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 11) || (which_alternative == 12))))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || ((which_alternative == 8) || (which_alternative == 9)))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 153:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 6) || (which_alternative == 7))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 6) || (which_alternative == 7))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 152:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 1) || ((which_alternative == 4) || (which_alternative == 5))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if (((which_alternative == 1) || ((which_alternative == 4) || (which_alternative == 5))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 172:
    case 169:
    case 151:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 5) || (which_alternative == 6))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 5) || (which_alternative == 6))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 150:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 2) || (which_alternative == 3)) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if (((which_alternative == 2) || (which_alternative == 3)) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 128:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && (which_alternative != 3))) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && (which_alternative != 3))) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 125:
    case 123:
    case 121:
    case 119:
    case 117:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative != 0) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 3;
        }
      else if ((which_alternative != 0) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 202:
    case 162:
    case 161:
    case 160:
    case 159:
    case 145:
    case 143:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 127:
    case 126:
    case 124:
    case 122:
    case 120:
    case 118:
    case 116:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000))))))))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 86:
    case 85:
    case 79:
    case 78:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 75:
    case 73:
      if ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))
        {
	  return 54 /* 0x36 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650))))
        {
	  return 31 /* 0x1f */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 21 /* 0x15 */;
        }
      else
        {
	  return 1;
        }

    case 74:
    case 72:
      if ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))
        {
	  return 112 /* 0x70 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650))))
        {
	  return 60 /* 0x3c */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 36 /* 0x24 */;
        }
      else
        {
	  return 1;
        }

    case 71:
    case 69:
    case 67:
    case 65:
      if ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4300))))
        {
	  return 69 /* 0x45 */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 68 /* 0x44 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  return 67 /* 0x43 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  return 42 /* 0x2a */;
        }
      else if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R4650))))))
        {
	  return 38 /* 0x26 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  return 36 /* 0x24 */;
        }
      else
        {
	  return 35 /* 0x23 */;
        }

    case 70:
    case 68:
    case 66:
    case 64:
    case 61:
    case 60:
    case 59:
    case 58:
      if (((mips_cpu_attr) == (CPU_R4000)))
        {
	  return 69 /* 0x45 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  return 42 /* 0x2a */;
        }
      else if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))
        {
	  return 38 /* 0x26 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  return 37 /* 0x25 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R5000))))
        {
	  return 36 /* 0x24 */;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900)))) || (((mips_cpu_attr) == (CPU_R4100))))
        {
	  return 35 /* 0x23 */;
        }
      else
        {
	  return 1;
        }

    case 57:
    case 55:
      if ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650))))
        {
	  return 32 /* 0x20 */;
        }
      else if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R6000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000))))))))
        {
	  return 23 /* 0x17 */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 21 /* 0x15 */;
        }
      else if (((mips_cpu_attr) == (CPU_R6000)))
        {
	  return 15 /* 0xf */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  return 12 /* 0xc */;
        }
      else
        {
	  return 1;
        }

    case 56:
    case 54:
      if ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650))))
        {
	  return 61 /* 0x3d */;
        }
      else if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R6000)))) && (! (((mips_cpu_attr) == (CPU_R4300)))))))
        {
	  return 36 /* 0x24 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  return 19 /* 0x13 */;
        }
      else if (((mips_cpu_attr) == (CPU_R6000)))
        {
	  return 16 /* 0x10 */;
        }
      else
        {
	  return 1;
        }

    case 42:
    case 41:
    case 37:
    case 36:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 17 /* 0x11 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  return 12 /* 0xc */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  return 10 /* 0xa */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 9;
        }
      else if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  return 8;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R4100))))
        {
	  return 4;
        }
      else
        {
	  return 1;
        }

    case 35:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative != 2) && ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000))))))))))))
        {
	  return 17 /* 0x11 */;
        }
      else if ((which_alternative != 2) && ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900)))))
        {
	  return 12 /* 0xc */;
        }
      else if ((which_alternative != 2) && ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600)))))
        {
	  return 10 /* 0xa */;
        }
      else if ((which_alternative != 2) && ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))
        {
	  return 5;
        }
      else if ((which_alternative != 2) && (((mips_cpu_attr) == (CPU_R4650))))
        {
	  return 4;
        }
      else
        {
	  return 1;
        }

    case 45:
    case 44:
    case 43:
    case 40:
    case 39:
    case 38:
    case 34:
    case 33:
    case 32:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  return 17 /* 0x11 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  return 12 /* 0xc */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  return 10 /* 0xa */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))
        {
	  return 5;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  return 4;
        }
      else
        {
	  return 1;
        }

    case 31:
    case 30:
      if ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650))))
        {
	  return 8;
        }
      else if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R6000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000))))))))
        {
	  return 7;
        }
      else if ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_R4300))))
        {
	  return 5;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R5000)))))
        {
	  return 4;
        }
      else
        {
	  return 1;
        }

    case 29:
    case 28:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R6000)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))
        {
	  return 8;
        }
      else if (((mips_cpu_attr) == (CPU_R6000)))
        {
	  return 6;
        }
      else
        {
	  return 5;
        }

    case 15:
    case 14:
    case 1:
    case 0:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R6000)))) && (! (((mips_cpu_attr) == (CPU_R4300)))))))
        {
	  return 4;
        }
      else if ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_R4300))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

extern int divide_unit_ready_cost PARAMS ((rtx));
int
divide_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 75:
    case 73:
      if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 21 /* 0x15 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  return 31 /* 0x1f */;
        }
      else if (! (((mips_cpu_attr) == (CPU_R4300))))
        {
	  return 54 /* 0x36 */;
        }
      else
        {
	  return 112 /* 0x70 */;
        }

    case 74:
    case 72:
      if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 36 /* 0x24 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  return 60 /* 0x3c */;
        }
      else
        {
	  return 112 /* 0x70 */;
        }

    case 57:
    case 55:
      if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 21 /* 0x15 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  return 32 /* 0x20 */;
        }
      else if (((mips_cpu_attr) == (CPU_R6000)))
        {
	  return 15 /* 0xf */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000))))
        {
	  return 12 /* 0xc */;
        }
      else if (! (((mips_cpu_attr) == (CPU_R4300))))
        {
	  return 23 /* 0x17 */;
        }
      else
        {
	  return 112 /* 0x70 */;
        }

    case 56:
    case 54:
      if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 36 /* 0x24 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  return 61 /* 0x3d */;
        }
      else if (((mips_cpu_attr) == (CPU_R6000)))
        {
	  return 16 /* 0x10 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000))))
        {
	  return 19 /* 0x13 */;
        }
      else if (! (((mips_cpu_attr) == (CPU_R4300))))
        {
	  return 36 /* 0x24 */;
        }
      else
        {
	  return 112 /* 0x70 */;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 112 /* 0x70 */;

    }
}

extern int mult_unit_ready_cost PARAMS ((rtx));
int
mult_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 31:
    case 30:
      if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 4;
        }
      else if (((mips_cpu_attr) == (CPU_R6000)))
        {
	  return 5;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000))))
        {
	  return 4;
        }
      else if ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && (! (((mips_cpu_attr) == (CPU_R4600))))))
        {
	  return 7;
        }
      else
        {
	  return 8;
        }

    case 29:
    case 28:
      if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 5;
        }
      else if (((mips_cpu_attr) == (CPU_R6000)))
        {
	  return 6;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000))))
        {
	  return 5;
        }
      else
        {
	  return 8;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 8;

    }
}

extern int adder_unit_ready_cost PARAMS ((rtx));
int
adder_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 271:
    case 270:
    case 269:
    case 268:
    case 267:
    case 266:
    case 265:
    case 264:
    case 263:
    case 262:
      if ((((mips_cpu_attr) == (CPU_R6000))) || ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000)))))
        {
	  return 2;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 1;
        }
      else if (! (((mips_cpu_attr) == (CPU_R4300))))
        {
	  return 3;
        }
      else
        {
	  return 4;
        }

    case 86:
    case 85:
    case 79:
    case 78:
      if (((mips_cpu_attr) == (CPU_R6000)))
        {
	  return 2;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R5000))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R4600)))))))
        {
	  return 1;
        }
      else if (! (((mips_cpu_attr) == (CPU_R4300))))
        {
	  return 2;
        }
      else
        {
	  return 4;
        }

    case 15:
    case 14:
    case 1:
    case 0:
      if (((mips_cpu_attr) == (CPU_R6000)))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000))))
        {
	  return 2;
        }
      else
        {
	  return 4;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 4;

    }
}

extern int imuldiv_unit_ready_cost PARAMS ((rtx));
int
imuldiv_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 172:
    case 169:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 9) && ((((((mips_cpu_attr) == (CPU_R4300))) || ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000))))) || (((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900)))))) || (((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000)))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 171:
    case 168:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && (which_alternative != 7)))))))) && ((((((mips_cpu_attr) == (CPU_R4300))) || ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000))))) || (((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900)))))) || (((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000)))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 170:
    case 167:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8))))))))) && ((((((mips_cpu_attr) == (CPU_R4300))) || ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000))))) || (((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900)))))) || (((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000)))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 157:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10)))))))))) && (((((mips_cpu_attr) == (CPU_R4300))) || (((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000)))) || ((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))))) || ((((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900)))) || ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000))))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 156:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && (which_alternative != 9)))))))))) && (((((mips_cpu_attr) == (CPU_R4300))) || (((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000)))) || ((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))))) || ((((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900)))) || ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000))))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 155:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && ((which_alternative != 10) && ((which_alternative != 11) && ((which_alternative != 12) && ((which_alternative != 13) && (which_alternative != 14))))))))))))))) && (((((mips_cpu_attr) == (CPU_R4300))) || (((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000)))) || ((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))))) || ((((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900)))) || ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000))))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 153:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 10) && (((((mips_cpu_attr) == (CPU_R4300))) || ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000))))) || ((((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900))))) || (((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000)))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT))))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 152:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && (which_alternative != 7)))))))) && (((((mips_cpu_attr) == (CPU_R4300))) || ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000))))) || ((((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900))))) || (((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000)))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT))))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 151:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 9) && (((((mips_cpu_attr) == (CPU_R4300))) || ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000))))) || ((((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900))))) || (((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000)))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT))))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 150:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && (which_alternative != 5)))))) && (((((mips_cpu_attr) == (CPU_R4300))) || ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000))))) || ((((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900))))) || (((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000)))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT))))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 128:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 3) && (((((mips_cpu_attr) == (CPU_R4300))) || ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R5000))))) || ((((((mips_cpu_attr) == (CPU_R4100))) || (((mips_cpu_attr) == (CPU_R4600)))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R3900))))) || (((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R8000)))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT))))))))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 271:
    case 270:
    case 269:
    case 268:
    case 267:
    case 266:
    case 265:
    case 264:
    case 263:
    case 262:
    case 86:
    case 85:
    case 79:
    case 78:
      if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  return 1;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 71:
    case 69:
    case 67:
    case 65:
      if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 68 /* 0x44 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  return 67 /* 0x43 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  return 42 /* 0x2a */;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  return 36 /* 0x24 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000))))
        {
	  return 35 /* 0x23 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R8000))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))
        {
	  return 38 /* 0x26 */;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 70:
    case 68:
    case 66:
    case 64:
    case 61:
    case 60:
    case 59:
    case 58:
      if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  return 37 /* 0x25 */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 36 /* 0x24 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  return 35 /* 0x23 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  return 42 /* 0x2a */;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  return 36 /* 0x24 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000))))
        {
	  return 35 /* 0x23 */;
        }
      else if ((((mips_cpu_attr) == (CPU_R8000))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))
        {
	  return 38 /* 0x26 */;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 42:
    case 41:
    case 37:
    case 36:
      if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  return 8;
        }
      else if (((mips_cpu_attr) == (CPU_R4000)))
        {
	  return 10 /* 0xa */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 9;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  return 4;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  return 10 /* 0xa */;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  return 4;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000))))
        {
	  return 12 /* 0xc */;
        }
      else if ((((mips_cpu_attr) == (CPU_R8000))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))
        {
	  return 17 /* 0x11 */;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 35:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative != 2) && (((mips_cpu_attr) == (CPU_R4300))))
        {
	  return 5;
        }
      else if ((which_alternative != 2) && (((mips_cpu_attr) == (CPU_R4000))))
        {
	  return 10 /* 0xa */;
        }
      else if ((which_alternative != 2) && (((mips_cpu_attr) == (CPU_R5000))))
        {
	  return 5;
        }
      else if ((which_alternative != 2) && (((mips_cpu_attr) == (CPU_R4100))))
        {
	  return 1;
        }
      else if ((which_alternative != 2) && (((mips_cpu_attr) == (CPU_R4600))))
        {
	  return 10 /* 0xa */;
        }
      else if ((which_alternative != 2) && (((mips_cpu_attr) == (CPU_R4650))))
        {
	  return 4;
        }
      else if ((which_alternative != 2) && ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000)))))
        {
	  return 12 /* 0xc */;
        }
      else if ((which_alternative != 2) && (((((mips_cpu_attr) == (CPU_R8000))) || (((mips_cpu_attr) == (CPU_R6000)))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))
        {
	  return 17 /* 0x11 */;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 45:
    case 44:
    case 43:
    case 40:
    case 39:
    case 38:
    case 34:
    case 33:
    case 32:
      if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  return 5;
        }
      else if (((mips_cpu_attr) == (CPU_R4000)))
        {
	  return 10 /* 0xa */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  return 5;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  return 1;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  return 10 /* 0xa */;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  return 4;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R3000))))
        {
	  return 12 /* 0xc */;
        }
      else if ((((mips_cpu_attr) == (CPU_R8000))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_DEFAULT)))))
        {
	  return 17 /* 0x11 */;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 31:
    case 30:
      if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  return 5;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 29:
    case 28:
      if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  return 8;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case 15:
    case 14:
    case 1:
    case 0:
      if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  return 3;
        }
      else
        {
	  return 69 /* 0x45 */;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 69 /* 0x45 */;

    }
}

extern unsigned int imuldiv_unit_blockage_range PARAMS ((rtx));
unsigned int
imuldiv_unit_blockage_range (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 65605 /* min 1, max 69 */;

    }
}

extern int memory_unit_ready_cost PARAMS ((rtx));
int
memory_unit_ready_cost (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 177:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10)))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10)))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10)))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10)))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10)))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10)))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10)))))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10)))))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 1) || ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8))))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10)))))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 176:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10)))))))))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10)))))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 5) && ((which_alternative != 9) && (which_alternative != 10))))) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 179:
    case 175:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))) && ((which_alternative != 3) && (which_alternative != 4))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 3) || (which_alternative == 4)))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))) && ((which_alternative != 3) && (which_alternative != 4))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 4))) && ((which_alternative != 3) && (which_alternative != 4)))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 178:
    case 174:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 1) && (which_alternative != 2)) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 1) && (which_alternative != 2)) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 1) && (which_alternative != 2)) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 1) && (which_alternative != 2)) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 1) && (which_alternative != 2)) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 1) && (which_alternative != 2)) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 1) && (which_alternative != 2)) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 1) || (which_alternative == 2))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 1) && (which_alternative != 2)) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 173:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) && (((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) && (((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) && (((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) && (((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) && (((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) && (((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) && (((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10)))))))))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 9) || (which_alternative == 10))))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10))))))))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) && (((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 171:
    case 170:
    case 168:
    case 167:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 2) && (which_alternative != 3)) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative != 4) && (which_alternative != 5)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 2) && (which_alternative != 3)) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative != 4) && (which_alternative != 5)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 2) && (which_alternative != 3)) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative != 4) && (which_alternative != 5)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 2) && (which_alternative != 3)) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative != 4) && (which_alternative != 5)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 2) && (which_alternative != 3)) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative != 4) && (which_alternative != 5)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 2) && (which_alternative != 3)) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative != 4) && (which_alternative != 5)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 2) && (which_alternative != 3)) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative != 4) && (which_alternative != 5))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 2) || (which_alternative == 3))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 2) && (which_alternative != 3)) && (((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative != 4) && (which_alternative != 5)))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 158:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 4) || (which_alternative == 5))) || ((which_alternative == 11) || (which_alternative == 12))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && ((((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10)))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 11) && (which_alternative != 12))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 4) || (which_alternative == 5))) || ((which_alternative == 11) || (which_alternative == 12))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10)))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 11) && (which_alternative != 12))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 4) || (which_alternative == 5))) || ((which_alternative == 11) || (which_alternative == 12))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10)))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 11) && (which_alternative != 12))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 4) || (which_alternative == 5))) || ((which_alternative == 11) || (which_alternative == 12))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10)))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 11) && (which_alternative != 12))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 4) || (which_alternative == 5))) || ((which_alternative == 11) || (which_alternative == 12))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10)))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 11) && (which_alternative != 12))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 4) || (which_alternative == 5))) || ((which_alternative == 11) || (which_alternative == 12))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10)))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 11) && (which_alternative != 12))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 4) || (which_alternative == 5))) || ((which_alternative == 11) || (which_alternative == 12))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && ((((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10)))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 11) && (which_alternative != 12)))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 0) && (which_alternative != 1)) && (((which_alternative == 2) || (which_alternative == 3)) || ((which_alternative == 9) || (which_alternative == 10))))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 4) || (which_alternative == 5))) || ((which_alternative == 11) || (which_alternative == 12))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10)))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 11) && (which_alternative != 12))))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 157:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 9) || (which_alternative == 10))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 9) && (which_alternative != 10)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 9) || (which_alternative == 10))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 9) && (which_alternative != 10)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 9) || (which_alternative == 10))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 9) && (which_alternative != 10)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 9) || (which_alternative == 10))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 9) && (which_alternative != 10)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 9) || (which_alternative == 10))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 9) && (which_alternative != 10)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 9) || (which_alternative == 10))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 9) && (which_alternative != 10)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 9) || (which_alternative == 10))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 9) && (which_alternative != 10))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 3) || (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8))))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))) && ((which_alternative == 9) || (which_alternative == 10))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 9) && (which_alternative != 10)))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 156:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 1) || ((which_alternative == 4) || (which_alternative == 5)))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 155:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 13) || (which_alternative == 14)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 13) && (which_alternative != 14)))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 13) || (which_alternative == 14)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 13) && (which_alternative != 14)))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 13) || (which_alternative == 14)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 13) && (which_alternative != 14)))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 13) || (which_alternative == 14)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 13) && (which_alternative != 14)))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 13) || (which_alternative == 14)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 13) && (which_alternative != 14)))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 13) || (which_alternative == 14)))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 13) && (which_alternative != 14)))))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 13) || (which_alternative == 14)))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 13) && (which_alternative != 14))))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 1) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 11) || (which_alternative == 12)))))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 13) || (which_alternative == 14)))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) && (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 13) && (which_alternative != 14)))))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 153:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 6) || (which_alternative == 7)))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))) && ((which_alternative == 8) || (which_alternative == 9))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative != 6) && (which_alternative != 7)))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 152:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 6) && (which_alternative != 7))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 6) && (which_alternative != 7))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 6) && (which_alternative != 7))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 6) && (which_alternative != 7))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 6) && (which_alternative != 7))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 6) && (which_alternative != 7))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 6) && (which_alternative != 7)))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 1) || ((which_alternative == 4) || (which_alternative == 5)))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 6) || (which_alternative == 7)))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) && ((which_alternative != 6) && (which_alternative != 7))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 172:
    case 169:
    case 151:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 7) && (which_alternative != 8)) && ((which_alternative != 5) && (which_alternative != 6)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 7) && (which_alternative != 8)) && ((which_alternative != 5) && (which_alternative != 6)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 7) && (which_alternative != 8)) && ((which_alternative != 5) && (which_alternative != 6)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 7) && (which_alternative != 8)) && ((which_alternative != 5) && (which_alternative != 6)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 7) && (which_alternative != 8)) && ((which_alternative != 5) && (which_alternative != 6)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8))))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 7) && (which_alternative != 8)) && ((which_alternative != 5) && (which_alternative != 6)))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8))))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 7) && (which_alternative != 8)) && ((which_alternative != 5) && (which_alternative != 6))))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 5) || (which_alternative == 6)))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 0) && ((which_alternative != 1) && (which_alternative != 2))) && ((which_alternative == 7) || (which_alternative == 8))))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative == 0) || (which_alternative == 1)) || (((which_alternative != 7) && (which_alternative != 8)) && ((which_alternative != 5) && (which_alternative != 6)))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 150:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((mips_cpu_attr) == (CPU_R5000))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 4) && (which_alternative != 5))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 4) && (which_alternative != 5))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 4) && (which_alternative != 5))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 4) && (which_alternative != 5))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 4) && (which_alternative != 5))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 4) && (which_alternative != 5))))
        {
	  return 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 4) && (which_alternative != 5)))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 2) || (which_alternative == 3))))
        {
	  return 3;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return 1;
        }
      else if (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && (((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 4) && (which_alternative != 5))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 185:
    case 183:
    case 181:
    case 166:
    case 165:
    case 164:
    case 163:
    case 154:
    case 149:
    case 146:
    case 144:
      return 1;

    case 128:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((((mips_cpu_attr) == (CPU_R5000))) && (((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2))) || (which_alternative == 3))) || (((((mips_cpu_attr) == (CPU_R4300))) && (((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2))) || (which_alternative == 3))) || (((((mips_cpu_attr) == (CPU_R4100))) && (((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2))) || (which_alternative == 3))) || (((((mips_cpu_attr) == (CPU_R4650))) && (((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2))) || (which_alternative == 3))) || (((((mips_cpu_attr) == (CPU_R4600))) && (((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2))) || (which_alternative == 3))) || (((((mips_cpu_attr) == (CPU_R3900))) && (((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2))) || (which_alternative == 3))) || (((((mips_cpu_attr) == (CPU_R3000))) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative == 2) || (which_alternative == 3)))) || (((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))) && ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && (which_alternative != 3))) || (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative == 2) || (which_alternative == 3))))))))))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 125:
    case 123:
    case 121:
    case 119:
    case 117:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((((mips_cpu_attr) == (CPU_R5000))) && (which_alternative == 0)) || (((((mips_cpu_attr) == (CPU_R4300))) && (which_alternative == 0)) || (((((mips_cpu_attr) == (CPU_R4100))) && (which_alternative == 0)) || (((((mips_cpu_attr) == (CPU_R4650))) && (which_alternative == 0)) || (((((mips_cpu_attr) == (CPU_R4600))) && (which_alternative == 0)) || (((((mips_cpu_attr) == (CPU_R3900))) && (which_alternative == 0)) || (((((mips_cpu_attr) == (CPU_R3000))) && (which_alternative == 0)) || ((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000)))))))))))))))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case 202:
    case 162:
    case 161:
    case 160:
    case 159:
    case 145:
    case 143:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 127:
    case 126:
    case 124:
    case 122:
    case 120:
    case 118:
    case 116:
      if ((! (((mips_cpu_attr) == (CPU_R5000)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && (! (((mips_cpu_attr) == (CPU_R3000))))))))))
        {
	  return 3;
        }
      else
        {
	  return 2;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 3;

    }
}

extern int function_units_used PARAMS ((rtx));
int
function_units_used (insn)
     rtx insn;
{
  register enum attr_mode attr_mode = get_attr_mode (insn);
  register enum attr_type attr_type = get_attr_type (insn);
  register unsigned long accum = 0;

  accum |= ((((attr_type == TYPE_LOAD) && ((! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))) || ((attr_type == TYPE_STORE) || (attr_type == TYPE_XFER))) ? (1) : (0));
  accum |= (((attr_type == TYPE_HILO) || (((attr_type == TYPE_IMUL) && (((((((((! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4000))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))) || ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))) || ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600))))) || (((mips_cpu_attr) == (CPU_R4650)))) || ((attr_mode == MODE_SI) && (((mips_cpu_attr) == (CPU_R4100))))) || ((attr_mode == MODE_DI) && (((mips_cpu_attr) == (CPU_R4100))))) || ((attr_mode == MODE_SI) && ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))) || ((attr_mode == MODE_DI) && (((mips_cpu_attr) == (CPU_R4300))))) || ((attr_mode == MODE_DI) && (((mips_cpu_attr) == (CPU_R5000)))))) || (((attr_type == TYPE_IDIV) && (((((((((((! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4000))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4100))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))))) || ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))) || (((mips_cpu_attr) == (CPU_R4600)))) || (((mips_cpu_attr) == (CPU_R4650)))) || (((mips_cpu_attr) == (CPU_R4000)))) || ((attr_mode == MODE_SI) && (((mips_cpu_attr) == (CPU_R4100))))) || ((attr_mode == MODE_DI) && (((mips_cpu_attr) == (CPU_R4100))))) || ((attr_mode == MODE_SI) && (((mips_cpu_attr) == (CPU_R4300))))) || ((attr_mode == MODE_DI) && (((mips_cpu_attr) == (CPU_R4300))))) || ((attr_mode == MODE_SI) && (((mips_cpu_attr) == (CPU_R5000))))) || ((attr_mode == MODE_DI) && (((mips_cpu_attr) == (CPU_R5000)))))) || (((attr_type == TYPE_FADD) && (((mips_cpu_attr) == (CPU_R4300)))) || ((((attr_type == TYPE_FCMP) || ((attr_type == TYPE_FABS) || (attr_type == TYPE_FNEG))) && (((mips_cpu_attr) == (CPU_R4300)))) || (((attr_type == TYPE_FMUL) && (((attr_mode == MODE_SF) && (((mips_cpu_attr) == (CPU_R4300)))) || ((attr_mode == MODE_DF) && (((mips_cpu_attr) == (CPU_R4300)))))) || (((attr_type == TYPE_FDIV) && (attr_type == TYPE_FSQRT)) && (((attr_mode == MODE_SF) && (((mips_cpu_attr) == (CPU_R4300)))) || ((attr_mode == MODE_DF) && (((mips_cpu_attr) == (CPU_R4300)))))))))))) ? (2) : (0));
  accum |= ((((attr_type == TYPE_FCMP) && (((! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R6000))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))) || ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R6000)))))) || (((mips_cpu_attr) == (CPU_R5000))))) || (((attr_type == TYPE_FADD) && (((! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R6000))) || (((mips_cpu_attr) == (CPU_R4300))))))) || ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))) || (((mips_cpu_attr) == (CPU_R6000))))) || (((attr_type == TYPE_FABS) || (attr_type == TYPE_FNEG)) && ((! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))) || ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R5000))))))))))) ? (4) : (0));
  accum |= ((((attr_type == TYPE_FDIV) && ((((((attr_mode == MODE_SF) && (((((! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R6000))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))) || (((mips_cpu_attr) == (CPU_R6000)))) || ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650))))) || (((mips_cpu_attr) == (CPU_R5000))))) || ((attr_mode == MODE_DF) && (! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R6000))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || (((mips_cpu_attr) == (CPU_R4300))))))))))) || ((attr_mode == MODE_DF) && ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900)))))) || ((attr_mode == MODE_DF) && (((mips_cpu_attr) == (CPU_R6000))))) || ((attr_mode == MODE_DF) && ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650))))))) || ((attr_type == TYPE_FSQRT) && (((((attr_mode == MODE_SF) && (((! ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))) || ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650))))) || (((mips_cpu_attr) == (CPU_R5000))))) || ((attr_mode == MODE_DF) && (! ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))))))) || ((attr_mode == MODE_DF) && ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650)))))) || ((attr_mode == MODE_DF) && (((mips_cpu_attr) == (CPU_R5000))))))) ? (16) : (0));
  accum |= (((attr_type == TYPE_FMUL) && (((((attr_mode == MODE_SF) && ((((! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R6000))) || ((((mips_cpu_attr) == (CPU_R4600))) || ((((mips_cpu_attr) == (CPU_R4650))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R5000)))))) || (((mips_cpu_attr) == (CPU_R6000)))) || ((((mips_cpu_attr) == (CPU_R4600))) || (((mips_cpu_attr) == (CPU_R4650)))))) || ((attr_mode == MODE_DF) && (! ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || ((((mips_cpu_attr) == (CPU_R6000))) || ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000)))))))))) || ((attr_mode == MODE_DF) && ((((mips_cpu_attr) == (CPU_R3000))) || ((((mips_cpu_attr) == (CPU_R3900))) || (((mips_cpu_attr) == (CPU_R5000))))))) || ((attr_mode == MODE_DF) && (((mips_cpu_attr) == (CPU_R6000)))))) ? (8) : (0));

  if (accum && accum == (accum & -accum))
    {
      int i;
      for (i = 0; accum >>= 1; ++i) continue;
      accum = i;
    }
  else
    accum = ~accum;
  return accum;
}

extern int num_delay_slots PARAMS ((rtx));
int
num_delay_slots (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 303:
    case 302:
    case 301:
    case 300:
    case 299:
    case 298:
    case 297:
    case 296:
    case 295:
    case 294:
    case 293:
    case 292:
    case 291:
    case 290:
    case 289:
    case 288:
    case 287:
    case 286:
    case 285:
      if (((mips_abicalls_attr) == (ABICALLS_NO)))
        {
	  return 1;
        }
      else
        {
	  return 0;
        }

    case 284:
    case 283:
    case 281:
    case 280:
    case 279:
    case 278:
    case 277:
    case 276:
    case 275:
    case 274:
    case 272:
      return 1;

    case 513:
    case 512:
    case 511:
    case 510:
    case 273:
    case 219:
    case 218:
    case 217:
    case 216:
    case 215:
    case 214:
    case 213:
    case 212:
    case 211:
    case 210:
    case 209:
    case 208:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((mips16) == (0))
        {
	  return 1;
        }
      else
        {
	  return 0;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 0;

    }
}

extern enum attr_dslot get_attr_dslot PARAMS ((rtx));
enum attr_dslot
get_attr_dslot (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 177:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 1) || ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8)))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900)))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 176:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 6) || (which_alternative == 7)) || (((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 5) || ((which_alternative == 9) || (which_alternative == 10))))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 179:
    case 175:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 3) || (which_alternative == 4))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900)))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 178:
    case 174:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 1) || (which_alternative == 2)) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900)))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 173:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative == 1) || ((which_alternative == 6) || (which_alternative == 7))) || (((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 9) || (which_alternative == 10)))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 172:
    case 169:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))))))) || ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 5) || (which_alternative == 6))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 171:
    case 168:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative == 6) || (which_alternative == 7)) || ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && (which_alternative != 7))))))))) || (((which_alternative == 2) || (which_alternative == 3)) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 170:
    case 167:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative == 6) || (which_alternative == 7)) || ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))))))))) || (((which_alternative == 2) || (which_alternative == 3)) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 158:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 6) || (which_alternative == 7))) || ((((which_alternative != 0) && (which_alternative != 1)) && (((which_alternative == 2) || (which_alternative == 3)) || ((which_alternative == 9) || (which_alternative == 10)))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 157:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && (which_alternative != 10)))))))))) || (((which_alternative == 3) || (((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 7) || (which_alternative == 8)))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 156:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative == 8) || (which_alternative == 9)) || ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && (which_alternative != 9))))))))))) || (((which_alternative == 1) || ((which_alternative == 4) || (which_alternative == 5))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 155:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((((which_alternative == 8) || (which_alternative == 9)) || ((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && ((which_alternative != 8) && ((which_alternative != 9) && ((which_alternative != 10) && ((which_alternative != 11) && ((which_alternative != 12) && ((which_alternative != 13) && (which_alternative != 14)))))))))))))))) || (((which_alternative == 1) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 11) || (which_alternative == 12))))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 153:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 10) || ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 6) || (which_alternative == 7))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 152:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && (which_alternative != 7)))))))) || (((which_alternative == 1) || ((which_alternative == 4) || (which_alternative == 5))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 151:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 9) || ((((which_alternative != 0) && (which_alternative != 1)) && ((which_alternative == 5) || (which_alternative == 6))) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 150:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((which_alternative != 0) && ((which_alternative != 1) && ((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 4) && (which_alternative != 5)))))) || (((which_alternative == 2) || (which_alternative == 3)) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 128:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 3) || ((((which_alternative != 0) && (which_alternative != 1)) && (which_alternative != 2)) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 125:
    case 123:
    case 121:
    case 119:
    case 117:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative != 0) && (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900)))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 202:
    case 162:
    case 161:
    case 160:
    case 159:
    case 145:
    case 143:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 127:
    case 126:
    case 124:
    case 122:
    case 120:
    case 118:
    case 116:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (((mips_isa) == (1)) && (((mips16) == (0)) && (! (((mips_cpu_attr) == (CPU_R3900))))))
        {
	  return DSLOT_YES;
        }
      else
        {
	  return DSLOT_NO;
        }

    case 513:
    case 512:
    case 511:
    case 510:
    case 303:
    case 302:
    case 301:
    case 300:
    case 299:
    case 298:
    case 297:
    case 296:
    case 295:
    case 294:
    case 293:
    case 292:
    case 291:
    case 290:
    case 289:
    case 288:
    case 287:
    case 286:
    case 285:
    case 284:
    case 283:
    case 281:
    case 280:
    case 279:
    case 278:
    case 277:
    case 276:
    case 275:
    case 274:
    case 273:
    case 272:
    case 271:
    case 270:
    case 269:
    case 268:
    case 267:
    case 266:
    case 265:
    case 264:
    case 263:
    case 262:
    case 219:
    case 218:
    case 217:
    case 216:
    case 215:
    case 214:
    case 213:
    case 212:
    case 211:
    case 210:
    case 209:
    case 208:
      return DSLOT_YES;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return DSLOT_NO;

    }
}

extern enum attr_mode get_attr_mode PARAMS ((rtx));
enum attr_mode
get_attr_mode (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
      return MODE_FPSW;

    case 0:
    case 14:
    case 28:
    case 29:
    case 46:
    case 48:
    case 50:
    case 52:
    case 54:
    case 56:
    case 72:
    case 74:
    case 78:
    case 85:
    case 134:
    case 135:
    case 137:
    case 139:
    case 140:
    case 161:
    case 162:
    case 165:
    case 166:
    case 176:
    case 177:
    case 178:
    case 179:
    case 314:
    case 315:
    case 316:
    case 322:
      return MODE_DF;

    case 1:
    case 15:
    case 30:
    case 31:
    case 47:
    case 49:
    case 51:
    case 53:
    case 55:
    case 57:
    case 73:
    case 75:
    case 79:
    case 86:
    case 106:
    case 136:
    case 138:
    case 141:
    case 142:
    case 159:
    case 160:
    case 163:
    case 164:
    case 173:
    case 174:
    case 175:
    case 311:
    case 312:
    case 313:
    case 321:
      return MODE_SF;

    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 36:
    case 37:
    case 41:
    case 42:
    case 65:
    case 67:
    case 69:
    case 71:
    case 77:
    case 81:
    case 83:
    case 84:
    case 88:
    case 91:
    case 92:
    case 93:
    case 96:
    case 97:
    case 100:
    case 101:
    case 102:
    case 103:
    case 105:
    case 116:
    case 119:
    case 120:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 133:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 180:
    case 189:
    case 190:
    case 191:
    case 192:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 222:
    case 223:
    case 225:
    case 227:
    case 229:
    case 232:
    case 233:
    case 235:
    case 238:
    case 239:
    case 242:
    case 243:
    case 245:
    case 248:
    case 249:
    case 251:
    case 254:
    case 255:
    case 258:
    case 259:
    case 261:
    case 308:
    case 309:
    case 310:
    case 320:
    case 325:
    case 327:
      return MODE_DI;

    case 108:
    case 115:
    case 121:
    case 122:
    case 167:
    case 168:
    case 169:
    case 318:
    case 323:
      return MODE_HI;

    case 109:
    case 170:
    case 171:
    case 172:
    case 317:
      return MODE_QI;

    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 299:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 510:
    case 511:
    case 512:
    case 513:
      return MODE_NONE;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    case 62:
    case 63:
    case 147:
      return MODE_UNKNOWN;

    default:
      return MODE_SI;

    }
}

extern enum attr_type get_attr_type PARAMS ((rtx));
enum attr_type
get_attr_type (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    case 177:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || (which_alternative == 5))))
        {
	  return TYPE_STORE;
        }
      else if ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8)))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 9) || (which_alternative == 10))
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_MOVE;
        }

    case 176:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 1) || (which_alternative == 2))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 3) || (which_alternative == 4))
        {
	  return TYPE_STORE;
        }
      else if (which_alternative == 5)
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return TYPE_XFER;
        }
      else if (which_alternative == 8)
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 9) || (which_alternative == 10))
        {
	  return TYPE_LOAD;
        }
      else if (which_alternative == 11)
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_STORE;
        }

    case 179:
    case 175:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 3) || (which_alternative == 4))
        {
	  return TYPE_LOAD;
        }
      else if (which_alternative == 5)
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_STORE;
        }

    case 178:
    case 174:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 1) || (which_alternative == 2))
        {
	  return TYPE_LOAD;
        }
      else if (which_alternative == 3)
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_STORE;
        }

    case 173:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_XFER;
        }
      else if ((which_alternative == 2) || (which_alternative == 3))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return TYPE_STORE;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return TYPE_XFER;
        }
      else if (which_alternative == 8)
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 9) || (which_alternative == 10))
        {
	  return TYPE_LOAD;
        }
      else if (which_alternative == 11)
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_STORE;
        }

    case 171:
    case 168:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_ARITH;
        }
      else if ((which_alternative == 2) || (which_alternative == 3))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return TYPE_STORE;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return TYPE_XFER;
        }
      else
        {
	  return TYPE_HILO;
        }

    case 170:
    case 167:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_ARITH;
        }
      else if ((which_alternative == 2) || (which_alternative == 3))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return TYPE_STORE;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return TYPE_XFER;
        }
      else if (which_alternative == 8)
        {
	  return TYPE_MOVE;
        }
      else
        {
	  return TYPE_HILO;
        }

    case 158:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || (which_alternative == 1))
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 2) || (which_alternative == 3))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return TYPE_STORE;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return TYPE_XFER;
        }
      else if (which_alternative == 8)
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 9) || (which_alternative == 10))
        {
	  return TYPE_LOAD;
        }
      else if (which_alternative == 11)
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_STORE;
        }

    case 157:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 3)
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 4) || ((which_alternative == 5) || (which_alternative == 6)))
        {
	  return TYPE_ARITH;
        }
      else if ((which_alternative == 7) || (which_alternative == 8))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 9) || (which_alternative == 10))
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_HILO;
        }

    case 156:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 2) || (which_alternative == 3))
        {
	  return TYPE_ARITH;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return TYPE_STORE;
        }
      else if ((which_alternative == 8) || (which_alternative == 9))
        {
	  return TYPE_XFER;
        }
      else
        {
	  return TYPE_HILO;
        }

    case 155:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 2) || (which_alternative == 3))
        {
	  return TYPE_ARITH;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return TYPE_STORE;
        }
      else if ((which_alternative == 8) || (which_alternative == 9))
        {
	  return TYPE_XFER;
        }
      else if (which_alternative == 10)
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 11) || (which_alternative == 12))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 13) || (which_alternative == 14))
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_HILO;
        }

    case 153:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 3) || ((which_alternative == 4) || (which_alternative == 5)))
        {
	  return TYPE_ARITH;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 8) || (which_alternative == 9))
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_HILO;
        }

    case 152:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 2) || (which_alternative == 3))
        {
	  return TYPE_ARITH;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 6) || (which_alternative == 7))
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_HILO;
        }

    case 172:
    case 169:
    case 151:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return TYPE_MOVE;
        }
      else if ((which_alternative == 3) || (which_alternative == 4))
        {
	  return TYPE_ARITH;
        }
      else if ((which_alternative == 5) || (which_alternative == 6))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 7) || (which_alternative == 8))
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_HILO;
        }

    case 150:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_ARITH;
        }
      else if ((which_alternative == 2) || (which_alternative == 3))
        {
	  return TYPE_LOAD;
        }
      else if ((which_alternative == 4) || (which_alternative == 5))
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_HILO;
        }

    case 128:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 2)))
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 3)
        {
	  return TYPE_HILO;
        }
      else
        {
	  return TYPE_LOAD;
        }

    case 125:
    case 123:
    case 121:
    case 119:
    case 117:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative == 0)
        {
	  return TYPE_ARITH;
        }
      else
        {
	  return TYPE_LOAD;
        }

    case 35:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if (which_alternative != 2)
        {
	  return TYPE_IMUL;
        }
      else
        {
	  return TYPE_MULTI;
        }

    case 304:
      return TYPE_NOP;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    case 76:
    case 77:
    case 80:
    case 81:
    case 182:
    case 184:
      return TYPE_MULTI;

    case 72:
    case 73:
    case 74:
    case 75:
      return TYPE_FSQRT;

    case 106:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
      return TYPE_FCVT;

    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
      return TYPE_FCMP;

    case 85:
    case 86:
      return TYPE_FNEG;

    case 78:
    case 79:
      return TYPE_FABS;

    case 54:
    case 55:
    case 56:
    case 57:
      return TYPE_FDIV;

    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
      return TYPE_FMADD;

    case 28:
    case 29:
    case 30:
    case 31:
      return TYPE_FMUL;

    case 0:
    case 1:
    case 14:
    case 15:
      return TYPE_FADD;

    case 58:
    case 59:
    case 60:
    case 61:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
      return TYPE_IDIV;

    case 32:
    case 33:
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
      return TYPE_IMUL;

    case 6:
    case 7:
    case 8:
    case 20:
    case 21:
    case 22:
    case 83:
    case 88:
    case 91:
    case 92:
    case 96:
    case 97:
    case 100:
    case 101:
    case 105:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 188:
    case 189:
    case 190:
    case 195:
    case 196:
    case 197:
    case 203:
    case 204:
    case 205:
      return TYPE_DARITH;

    case 147:
    case 180:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 311:
    case 312:
    case 313:
    case 314:
    case 315:
    case 316:
      return TYPE_MOVE;

    case 144:
    case 146:
    case 149:
    case 154:
    case 163:
    case 164:
    case 165:
    case 166:
    case 181:
    case 183:
    case 185:
      return TYPE_STORE;

    case 116:
    case 118:
    case 120:
    case 122:
    case 124:
    case 126:
    case 127:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 143:
    case 145:
    case 159:
    case 160:
    case 161:
    case 162:
    case 202:
      return TYPE_LOAD;

    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 299:
    case 300:
    case 301:
    case 302:
    case 303:
      return TYPE_CALL;

    case 272:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 283:
    case 284:
      return TYPE_JUMP;

    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 273:
    case 510:
    case 511:
    case 512:
    case 513:
      return TYPE_BRANCH;

    case 62:
    case 63:
    case 282:
    case 317:
    case 318:
    case 319:
    case 320:
    case 321:
    case 322:
    case 323:
    case 324:
    case 325:
      return TYPE_UNKNOWN;

    default:
      return TYPE_ARITH;

    }
}

int
eligible_for_delay (delay_insn, slot, candidate_insn, flags)
     rtx delay_insn;
     int slot;
     rtx candidate_insn;
     int flags ATTRIBUTE_UNUSED;
{
  rtx insn;

  if (slot >= 1)
    abort ();

  insn = delay_insn;
  switch (recog_memoized (insn))
    {
    case 303:
    case 302:
    case 301:
    case 300:
    case 299:
    case 298:
    case 297:
    case 296:
    case 295:
    case 294:
    case 293:
    case 292:
    case 291:
    case 290:
    case 289:
    case 288:
    case 287:
    case 286:
    case 285:
      if (((mips_abicalls_attr) == (ABICALLS_NO)))
        {
	  slot += 3 * 1;
      break;
        }
      else
        {
	  slot += 0 * 1;
      break;
        }
      break;

    case 284:
    case 283:
    case 281:
    case 280:
    case 279:
    case 278:
    case 277:
    case 276:
    case 275:
    case 274:
    case 272:
      slot += 2 * 1;
      break;
      break;

    case 513:
    case 512:
    case 511:
    case 510:
    case 273:
    case 219:
    case 218:
    case 217:
    case 216:
    case 215:
    case 214:
    case 213:
    case 212:
    case 211:
    case 210:
    case 209:
    case 208:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((mips16) == (0))
        {
	  slot += 1 * 1;
      break;
        }
      else
        {
	  slot += 0 * 1;
      break;
        }
      break;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      slot += 0 * 1;
      break;
      break;

    }

  if (slot < 1)
    abort ();

  insn = candidate_insn;
  switch (slot)
    {
    case 3:
      switch (recog_memoized (insn))
	{
        case 259:
        case 257:
        case 243:
        case 241:
	  extract_insn (insn);
	  if (m16_uimm8_m1_1 (operands[2], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 207:
        case 201:
        case 199:
        case 194:
        case 192:
        case 187:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((which_alternative != 1) || (m16_uimm3_b (operands[2], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 177:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 9)))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 175:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) || ((which_alternative == 1) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 5))) && ((which_alternative != 3) && (which_alternative != 4))))) || (((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 5))))) && ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 174:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative != 1) && (which_alternative != 2)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 3))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 173:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 11))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 172:
        case 169:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative != 9) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 5) && (which_alternative != 6))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (((which_alternative == 3) && (m16_uimm8_1 (operands[1], VOIDmode))) || ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 6) && (which_alternative != 8))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 171:
        case 168:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || (which_alternative == 7))))))))) && (((which_alternative != 2) && (which_alternative != 3)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 3) && (which_alternative != 5)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 170:
        case 167:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8)))))))))) && (((which_alternative != 2) && (which_alternative != 3)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 3) && (which_alternative != 5)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 162:
        case 161:
        case 160:
        case 159:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 158:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((which_alternative == 1) || (((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 11))))))) && (((((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative != 6) && (which_alternative != 7)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 157:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10)))))))))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (((which_alternative == 4) && (m16_uimm8_1 (operands[1], VOIDmode))) || (((which_alternative == 6) && (m16_usym8_4 (operands[1], VOIDmode))) || ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 8) && (which_alternative != 10)))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 156:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || (which_alternative == 9))))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 1) && ((which_alternative != 3) && ((which_alternative != 5) && (which_alternative != 7)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 155:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || ((which_alternative == 11) || ((which_alternative == 12) || ((which_alternative == 13) || (which_alternative == 14)))))))))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || ((which_alternative == 11) || ((which_alternative == 13) || ((which_alternative == 15) || ((which_alternative == 16) || ((which_alternative == 17) || (which_alternative == 18))))))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 153:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative != 10) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || (((which_alternative == 3) && (m16_uimm8_1 (operands[1], VOIDmode))) || (((which_alternative == 5) && (m16_usym5_4 (operands[1], VOIDmode))) || ((which_alternative == 6) || ((which_alternative == 8) || (which_alternative == 10)))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 152:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || (which_alternative == 7)))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 176:
        case 154:
        case 149:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (which_alternative == 0)
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 138:
        case 137:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (which_alternative == 1)
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 128:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative != 3) && ((((which_alternative == 0) || (which_alternative == 1)) || (which_alternative == 2)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (which_alternative != 5))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 125:
        case 123:
        case 121:
        case 119:
        case 117:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && (which_alternative != 2))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 133:
        case 132:
        case 131:
        case 130:
        case 129:
        case 127:
        case 126:
        case 124:
        case 122:
        case 120:
        case 118:
        case 116:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))) && (which_alternative == 0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 109:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips16) == (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 108:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips16) == (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 105:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 100:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 255:
        case 253:
        case 239:
        case 237:
        case 102:
        case 99:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((which_alternative != 1) || (m16_uimm8_1 (operands[2], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 97:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips_isa) >= (3))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 96:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 92:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips_isa) >= (3))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 91:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 88:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips_isa) >= (3))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 37:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((GENERATE_MULT3) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 35:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (which_alternative != 2)
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 25:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_nsimm5_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_nsimm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 24:
	  extract_insn (insn);
	  if (m16_nuimm5_4 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 27:
        case 19:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_nsimm8_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_nsimm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 18:
	  extract_insn (insn);
	  if (m16_nuimm8_4 (operands[1], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 23:
        case 17:
	  extract_insn (insn);
	  if (m16_nsimm8_8 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 11:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_simm5_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_simm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 10:
	  extract_insn (insn);
	  if (m16_uimm5_4 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 13:
        case 5:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_simm8_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_simm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 4:
	  extract_insn (insn);
	  if (m16_uimm8_4 (operands[1], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 9:
        case 3:
	  extract_insn (insn);
	  if (m16_simm8_8 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case -1:
	  if (GET_CODE (PATTERN (insn)) != ASM_INPUT
	      && asm_noperands (PATTERN (insn)) < 0)
	    fatal_insn_not_found (insn);
        case 316:
        case 315:
        case 314:
        case 313:
        case 312:
        case 311:
        case 310:
        case 309:
        case 308:
        case 307:
        case 306:
        case 305:
        case 304:
        case 258:
        case 256:
        case 254:
        case 252:
        case 249:
        case 248:
        case 247:
        case 246:
        case 242:
        case 240:
        case 238:
        case 236:
        case 233:
        case 232:
        case 231:
        case 230:
        case 227:
        case 226:
        case 223:
        case 222:
        case 221:
        case 220:
        case 206:
        case 200:
        case 198:
        case 193:
        case 191:
        case 186:
        case 185:
        case 166:
        case 165:
        case 164:
        case 163:
        case 148:
        case 147:
        case 134:
        case 115:
        case 114:
        case 113:
        case 106:
        case 104:
        case 103:
        case 98:
        case 95:
        case 94:
        case 93:
        case 90:
        case 89:
        case 87:
        case 86:
        case 85:
        case 84:
        case 82:
        case 79:
        case 78:
        case 75:
        case 74:
        case 73:
        case 72:
        case 71:
        case 70:
        case 69:
        case 68:
        case 67:
        case 66:
        case 65:
        case 64:
        case 61:
        case 60:
        case 59:
        case 58:
        case 57:
        case 56:
        case 55:
        case 54:
        case 53:
        case 52:
        case 51:
        case 50:
        case 49:
        case 48:
        case 47:
        case 46:
        case 45:
        case 44:
        case 43:
        case 42:
        case 41:
        case 40:
        case 39:
        case 38:
        case 36:
        case 33:
        case 32:
        case 30:
        case 28:
        case 26:
        case 22:
        case 16:
        case 15:
        case 14:
        case 12:
        case 8:
        case 2:
        case 1:
        case 0:
	  return 1;

        default:
	  return 0;

      }
    case 2:
      switch (recog_memoized (insn))
	{
        case 259:
        case 257:
        case 243:
        case 241:
	  extract_insn (insn);
	  if (m16_uimm8_m1_1 (operands[2], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 207:
        case 201:
        case 199:
        case 194:
        case 192:
        case 187:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((which_alternative != 1) || (m16_uimm3_b (operands[2], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 177:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 9)))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 175:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) || ((which_alternative == 1) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 5))) && ((which_alternative != 3) && (which_alternative != 4))))) || (((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 5))))) && ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 174:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative != 1) && (which_alternative != 2)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 3))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 173:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 11))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 172:
        case 169:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative != 9) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 5) && (which_alternative != 6))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (((which_alternative == 3) && (m16_uimm8_1 (operands[1], VOIDmode))) || ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 6) && (which_alternative != 8))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 171:
        case 168:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || (which_alternative == 7))))))))) && (((which_alternative != 2) && (which_alternative != 3)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 3) && (which_alternative != 5)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 170:
        case 167:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8)))))))))) && (((which_alternative != 2) && (which_alternative != 3)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 3) && (which_alternative != 5)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 162:
        case 161:
        case 160:
        case 159:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 158:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((which_alternative == 1) || (((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 11))))))) && (((((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative != 6) && (which_alternative != 7)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 157:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10)))))))))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (((which_alternative == 4) && (m16_uimm8_1 (operands[1], VOIDmode))) || (((which_alternative == 6) && (m16_usym8_4 (operands[1], VOIDmode))) || ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 8) && (which_alternative != 10)))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 156:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || (which_alternative == 9))))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 1) && ((which_alternative != 3) && ((which_alternative != 5) && (which_alternative != 7)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 155:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || ((which_alternative == 11) || ((which_alternative == 12) || ((which_alternative == 13) || (which_alternative == 14)))))))))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || ((which_alternative == 11) || ((which_alternative == 13) || ((which_alternative == 15) || ((which_alternative == 16) || ((which_alternative == 17) || (which_alternative == 18))))))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 153:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative != 10) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || (((which_alternative == 3) && (m16_uimm8_1 (operands[1], VOIDmode))) || (((which_alternative == 5) && (m16_usym5_4 (operands[1], VOIDmode))) || ((which_alternative == 6) || ((which_alternative == 8) || (which_alternative == 10)))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 152:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || (which_alternative == 7)))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 176:
        case 154:
        case 149:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (which_alternative == 0)
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 138:
        case 137:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (which_alternative == 1)
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 128:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative != 3) && ((((which_alternative == 0) || (which_alternative == 1)) || (which_alternative == 2)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (which_alternative != 5))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 125:
        case 123:
        case 121:
        case 119:
        case 117:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && (which_alternative != 2))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 133:
        case 132:
        case 131:
        case 130:
        case 129:
        case 127:
        case 126:
        case 124:
        case 122:
        case 120:
        case 118:
        case 116:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))) && (which_alternative == 0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 109:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips16) == (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 108:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips16) == (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 105:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 100:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 255:
        case 253:
        case 239:
        case 237:
        case 102:
        case 99:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((which_alternative != 1) || (m16_uimm8_1 (operands[2], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 97:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips_isa) >= (3))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 96:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 92:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips_isa) >= (3))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 91:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 88:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips_isa) >= (3))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 37:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((GENERATE_MULT3) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 35:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (which_alternative != 2)
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 25:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_nsimm5_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_nsimm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 24:
	  extract_insn (insn);
	  if (m16_nuimm5_4 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 27:
        case 19:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_nsimm8_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_nsimm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 18:
	  extract_insn (insn);
	  if (m16_nuimm8_4 (operands[1], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 23:
        case 17:
	  extract_insn (insn);
	  if (m16_nsimm8_8 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 11:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_simm5_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_simm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 10:
	  extract_insn (insn);
	  if (m16_uimm5_4 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 13:
        case 5:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_simm8_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_simm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 4:
	  extract_insn (insn);
	  if (m16_uimm8_4 (operands[1], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 9:
        case 3:
	  extract_insn (insn);
	  if (m16_simm8_8 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case -1:
	  if (GET_CODE (PATTERN (insn)) != ASM_INPUT
	      && asm_noperands (PATTERN (insn)) < 0)
	    fatal_insn_not_found (insn);
        case 316:
        case 315:
        case 314:
        case 313:
        case 312:
        case 311:
        case 310:
        case 309:
        case 308:
        case 307:
        case 306:
        case 305:
        case 304:
        case 258:
        case 256:
        case 254:
        case 252:
        case 249:
        case 248:
        case 247:
        case 246:
        case 242:
        case 240:
        case 238:
        case 236:
        case 233:
        case 232:
        case 231:
        case 230:
        case 227:
        case 226:
        case 223:
        case 222:
        case 221:
        case 220:
        case 206:
        case 200:
        case 198:
        case 193:
        case 191:
        case 186:
        case 185:
        case 166:
        case 165:
        case 164:
        case 163:
        case 148:
        case 147:
        case 134:
        case 115:
        case 114:
        case 113:
        case 106:
        case 104:
        case 103:
        case 98:
        case 95:
        case 94:
        case 93:
        case 90:
        case 89:
        case 87:
        case 86:
        case 85:
        case 84:
        case 82:
        case 79:
        case 78:
        case 75:
        case 74:
        case 73:
        case 72:
        case 71:
        case 70:
        case 69:
        case 68:
        case 67:
        case 66:
        case 65:
        case 64:
        case 61:
        case 60:
        case 59:
        case 58:
        case 57:
        case 56:
        case 55:
        case 54:
        case 53:
        case 52:
        case 51:
        case 50:
        case 49:
        case 48:
        case 47:
        case 46:
        case 45:
        case 44:
        case 43:
        case 42:
        case 41:
        case 40:
        case 39:
        case 38:
        case 36:
        case 33:
        case 32:
        case 30:
        case 28:
        case 26:
        case 22:
        case 16:
        case 15:
        case 14:
        case 12:
        case 8:
        case 2:
        case 1:
        case 0:
	  return 1;

        default:
	  return 0;

      }
    case 1:
      switch (recog_memoized (insn))
	{
        case 259:
        case 257:
        case 243:
        case 241:
	  extract_insn (insn);
	  if (m16_uimm8_m1_1 (operands[2], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 207:
        case 201:
        case 199:
        case 194:
        case 192:
        case 187:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((which_alternative != 1) || (m16_uimm3_b (operands[2], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 177:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 9)))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 175:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) || ((which_alternative == 1) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 5))) && ((which_alternative != 3) && (which_alternative != 4))))) || (((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 5))))) && ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 174:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative != 1) && (which_alternative != 2)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 3))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 173:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 11))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 172:
        case 169:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative != 9) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 5) && (which_alternative != 6))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (((which_alternative == 3) && (m16_uimm8_1 (operands[1], VOIDmode))) || ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 6) && (which_alternative != 8))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 171:
        case 168:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || (which_alternative == 7))))))))) && (((which_alternative != 2) && (which_alternative != 3)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 3) && (which_alternative != 5)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 170:
        case 167:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8)))))))))) && (((which_alternative != 2) && (which_alternative != 3)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 3) && (which_alternative != 5)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 162:
        case 161:
        case 160:
        case 159:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 158:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((which_alternative == 1) || (((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 11))))))) && (((((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative != 6) && (which_alternative != 7)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 157:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10)))))))))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (((which_alternative == 4) && (m16_uimm8_1 (operands[1], VOIDmode))) || (((which_alternative == 6) && (m16_usym8_4 (operands[1], VOIDmode))) || ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 8) && (which_alternative != 10)))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 156:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || (which_alternative == 9))))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 1) && ((which_alternative != 3) && ((which_alternative != 5) && (which_alternative != 7)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 155:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || ((which_alternative == 11) || ((which_alternative == 12) || ((which_alternative == 13) || (which_alternative == 14)))))))))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || ((which_alternative == 11) || ((which_alternative == 13) || ((which_alternative == 15) || ((which_alternative == 16) || ((which_alternative == 17) || (which_alternative == 18))))))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 153:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative != 10) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || (((which_alternative == 3) && (m16_uimm8_1 (operands[1], VOIDmode))) || (((which_alternative == 5) && (m16_usym5_4 (operands[1], VOIDmode))) || ((which_alternative == 6) || ((which_alternative == 8) || (which_alternative == 10)))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 152:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || (which_alternative == 7)))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 176:
        case 154:
        case 149:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (which_alternative == 0)
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 138:
        case 137:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (which_alternative == 1)
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 128:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative != 3) && ((((which_alternative == 0) || (which_alternative == 1)) || (which_alternative == 2)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (which_alternative != 5))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 125:
        case 123:
        case 121:
        case 119:
        case 117:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && (which_alternative != 2))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 133:
        case 132:
        case 131:
        case 130:
        case 129:
        case 127:
        case 126:
        case 124:
        case 122:
        case 120:
        case 118:
        case 116:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))) && (which_alternative == 0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 109:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips16) == (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 108:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips16) == (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 105:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 100:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 255:
        case 253:
        case 239:
        case 237:
        case 102:
        case 99:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((which_alternative != 1) || (m16_uimm8_1 (operands[2], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 97:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips_isa) >= (3))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 96:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 92:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips_isa) >= (3))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 91:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((TARGET_64BIT) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 88:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((mips_isa) >= (3))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 37:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((GENERATE_MULT3) != (0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 35:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (which_alternative != 2)
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 25:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_nsimm5_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_nsimm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 24:
	  extract_insn (insn);
	  if (m16_nuimm5_4 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 27:
        case 19:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_nsimm8_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_nsimm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 18:
	  extract_insn (insn);
	  if (m16_nuimm8_4 (operands[1], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 23:
        case 17:
	  extract_insn (insn);
	  if (m16_nsimm8_8 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 11:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_simm5_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_simm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 10:
	  extract_insn (insn);
	  if (m16_uimm5_4 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 13:
        case 5:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if (((which_alternative == 0) && (m16_simm8_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_simm4_1 (operands[2], VOIDmode))) || (which_alternative == 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 4:
	  extract_insn (insn);
	  if (m16_uimm8_4 (operands[1], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 9:
        case 3:
	  extract_insn (insn);
	  if (m16_simm8_8 (operands[0], VOIDmode))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case -1:
	  if (GET_CODE (PATTERN (insn)) != ASM_INPUT
	      && asm_noperands (PATTERN (insn)) < 0)
	    fatal_insn_not_found (insn);
        case 316:
        case 315:
        case 314:
        case 313:
        case 312:
        case 311:
        case 310:
        case 309:
        case 308:
        case 307:
        case 306:
        case 305:
        case 304:
        case 258:
        case 256:
        case 254:
        case 252:
        case 249:
        case 248:
        case 247:
        case 246:
        case 242:
        case 240:
        case 238:
        case 236:
        case 233:
        case 232:
        case 231:
        case 230:
        case 227:
        case 226:
        case 223:
        case 222:
        case 221:
        case 220:
        case 206:
        case 200:
        case 198:
        case 193:
        case 191:
        case 186:
        case 185:
        case 166:
        case 165:
        case 164:
        case 163:
        case 148:
        case 147:
        case 134:
        case 115:
        case 114:
        case 113:
        case 106:
        case 104:
        case 103:
        case 98:
        case 95:
        case 94:
        case 93:
        case 90:
        case 89:
        case 87:
        case 86:
        case 85:
        case 84:
        case 82:
        case 79:
        case 78:
        case 75:
        case 74:
        case 73:
        case 72:
        case 71:
        case 70:
        case 69:
        case 68:
        case 67:
        case 66:
        case 65:
        case 64:
        case 61:
        case 60:
        case 59:
        case 58:
        case 57:
        case 56:
        case 55:
        case 54:
        case 53:
        case 52:
        case 51:
        case 50:
        case 49:
        case 48:
        case 47:
        case 46:
        case 45:
        case 44:
        case 43:
        case 42:
        case 41:
        case 40:
        case 39:
        case 38:
        case 36:
        case 33:
        case 32:
        case 30:
        case 28:
        case 26:
        case 22:
        case 16:
        case 15:
        case 14:
        case 12:
        case 8:
        case 2:
        case 1:
        case 0:
	  return 1;

        default:
	  return 0;

      }
    default:
      abort ();
    }
}

int
eligible_for_annul_false (delay_insn, slot, candidate_insn, flags)
     rtx delay_insn;
     int slot;
     rtx candidate_insn;
     int flags ATTRIBUTE_UNUSED;
{
  rtx insn;

  if (slot >= 1)
    abort ();

  insn = delay_insn;
  switch (recog_memoized (insn))
    {
    case 303:
    case 302:
    case 301:
    case 300:
    case 299:
    case 298:
    case 297:
    case 296:
    case 295:
    case 294:
    case 293:
    case 292:
    case 291:
    case 290:
    case 289:
    case 288:
    case 287:
    case 286:
    case 285:
      if (((mips_abicalls_attr) == (ABICALLS_NO)))
        {
	  slot += 3 * 1;
      break;
        }
      else
        {
	  slot += 0 * 1;
      break;
        }
      break;

    case 284:
    case 283:
    case 281:
    case 280:
    case 279:
    case 278:
    case 277:
    case 276:
    case 275:
    case 274:
    case 272:
      slot += 2 * 1;
      break;
      break;

    case 513:
    case 512:
    case 511:
    case 510:
    case 273:
    case 219:
    case 218:
    case 217:
    case 216:
    case 215:
    case 214:
    case 213:
    case 212:
    case 211:
    case 210:
    case 209:
    case 208:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((mips16) == (0))
        {
	  slot += 1 * 1;
      break;
        }
      else
        {
	  slot += 0 * 1;
      break;
        }
      break;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      slot += 0 * 1;
      break;
      break;

    }

  if (slot < 1)
    abort ();

  insn = candidate_insn;
  switch (slot)
    {
    case 3:
      switch (recog_memoized (insn))
	{
        case -1:
	  if (GET_CODE (PATTERN (insn)) != ASM_INPUT
	      && asm_noperands (PATTERN (insn)) < 0)
	    fatal_insn_not_found (insn);
        default:
	  return 0;

      }
    case 2:
      switch (recog_memoized (insn))
	{
        case -1:
	  if (GET_CODE (PATTERN (insn)) != ASM_INPUT
	      && asm_noperands (PATTERN (insn)) < 0)
	    fatal_insn_not_found (insn);
        default:
	  return 0;

      }
    case 1:
      switch (recog_memoized (insn))
	{
        case 259:
        case 257:
        case 243:
        case 241:
	  extract_insn (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (m16_uimm8_m1_1 (operands[2], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 207:
        case 201:
        case 199:
        case 194:
        case 192:
        case 187:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((which_alternative != 1) || (m16_uimm3_b (operands[2], VOIDmode))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 177:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((((which_alternative != 1) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 8)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 7) && (which_alternative != 9))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 175:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((which_alternative == 0) || ((which_alternative == 1) || (((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 5))) && ((which_alternative != 3) && (which_alternative != 4))))) || (((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || (which_alternative == 5))))) && ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 174:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((((which_alternative != 1) && (which_alternative != 2)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative == 0) || ((which_alternative == 1) || (which_alternative == 3)))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 173:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((((which_alternative != 1) && ((which_alternative != 6) && (which_alternative != 7))) && (((which_alternative != 2) && ((which_alternative != 3) && ((which_alternative != 9) && (which_alternative != 10)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 11)))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 172:
        case 169:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((which_alternative != 9) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 5) && (which_alternative != 6))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (((which_alternative == 3) && (m16_uimm8_1 (operands[1], VOIDmode))) || ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 6) && (which_alternative != 8)))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 171:
        case 168:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || (which_alternative == 7))))))))) && (((which_alternative != 2) && (which_alternative != 3)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 3) && (which_alternative != 5))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 170:
        case 167:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((((which_alternative != 6) && (which_alternative != 7)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || (which_alternative == 8)))))))))) && (((which_alternative != 2) && (which_alternative != 3)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 3) && (which_alternative != 5))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 162:
        case 161:
        case 160:
        case 159:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 158:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((which_alternative == 1) || (((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 11))))))) && (((((which_alternative != 2) && (which_alternative != 3)) && ((which_alternative != 9) && (which_alternative != 10))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && ((which_alternative != 6) && (which_alternative != 7))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 157:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10)))))))))) && (((which_alternative != 3) && (((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 7) && (which_alternative != 8)))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (((which_alternative == 4) && (m16_uimm8_1 (operands[1], VOIDmode))) || (((which_alternative == 6) && (m16_usym8_4 (operands[1], VOIDmode))) || ((which_alternative != 3) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 6) && ((which_alternative != 8) && (which_alternative != 10))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 156:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || (which_alternative == 9))))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative != 1) && ((which_alternative != 3) && ((which_alternative != 5) && (which_alternative != 7))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 155:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((((which_alternative != 8) && (which_alternative != 9)) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || ((which_alternative == 7) || ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || ((which_alternative == 11) || ((which_alternative == 12) || ((which_alternative == 13) || (which_alternative == 14)))))))))))))))) && (((which_alternative != 1) && ((which_alternative != 4) && ((which_alternative != 5) && ((which_alternative != 11) && (which_alternative != 12))))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 8) || ((which_alternative == 9) || ((which_alternative == 10) || ((which_alternative == 11) || ((which_alternative == 13) || ((which_alternative == 15) || ((which_alternative == 16) || ((which_alternative == 17) || (which_alternative == 18)))))))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 153:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((which_alternative != 10) && ((((which_alternative == 0) || (which_alternative == 1)) || ((which_alternative != 6) && (which_alternative != 7))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || (((which_alternative == 3) && (m16_uimm8_1 (operands[1], VOIDmode))) || (((which_alternative == 5) && (m16_usym5_4 (operands[1], VOIDmode))) || ((which_alternative == 6) || ((which_alternative == 8) || (which_alternative == 10))))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 152:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((((which_alternative == 0) || ((which_alternative == 1) || ((which_alternative == 2) || ((which_alternative == 3) || ((which_alternative == 4) || ((which_alternative == 5) || ((which_alternative == 6) || (which_alternative == 7)))))))) && (((which_alternative != 1) && ((which_alternative != 4) && (which_alternative != 5))) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && ((which_alternative == 0) || ((which_alternative == 2) || ((which_alternative == 4) || ((which_alternative == 6) || ((which_alternative == 8) || ((which_alternative == 9) || (which_alternative == 10)))))))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 176:
        case 154:
        case 149:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (which_alternative == 0))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 138:
        case 137:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (which_alternative == 1))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 128:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((which_alternative != 3) && ((((which_alternative == 0) || (which_alternative == 1)) || (which_alternative == 2)) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))))) && (which_alternative != 5)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 125:
        case 123:
        case 121:
        case 119:
        case 117:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((which_alternative == 0) || ((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900)))))) && (which_alternative != 2)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 133:
        case 132:
        case 131:
        case 130:
        case 129:
        case 127:
        case 126:
        case 124:
        case 122:
        case 120:
        case 118:
        case 116:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((! ((mips_isa) == (1))) || ((! ((mips16) == (0))) || (((mips_cpu_attr) == (CPU_R3900))))) && (which_alternative == 0)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 109:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((mips16) == (0)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 108:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((mips16) == (0)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 105:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((TARGET_64BIT) != (0)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 100:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((TARGET_64BIT) != (0)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 255:
        case 253:
        case 239:
        case 237:
        case 102:
        case 99:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((which_alternative != 1) || (m16_uimm8_1 (operands[2], VOIDmode))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 97:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((mips_isa) >= (3)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 96:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((TARGET_64BIT) != (0)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 92:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((mips_isa) >= (3)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 91:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((TARGET_64BIT) != (0)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 88:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((mips_isa) >= (3)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 37:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && ((GENERATE_MULT3) != (0)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 35:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (which_alternative != 2))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 25:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((which_alternative == 0) && (m16_nsimm5_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_nsimm4_1 (operands[2], VOIDmode))) || (which_alternative == 2))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 24:
	  extract_insn (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (m16_nuimm5_4 (operands[0], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 27:
        case 19:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((which_alternative == 0) && (m16_nsimm8_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_nsimm4_1 (operands[2], VOIDmode))) || (which_alternative == 2))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 18:
	  extract_insn (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (m16_nuimm8_4 (operands[1], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 23:
        case 17:
	  extract_insn (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (m16_nsimm8_8 (operands[0], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 11:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((which_alternative == 0) && (m16_simm5_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_simm4_1 (operands[2], VOIDmode))) || (which_alternative == 2))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 10:
	  extract_insn (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (m16_uimm5_4 (operands[0], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 13:
        case 5:
	  extract_insn (insn);
	  if (! constrain_operands (reload_completed))
	    fatal_insn_not_found (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (((which_alternative == 0) && (m16_simm8_1 (operands[2], VOIDmode))) || (((which_alternative == 1) && (m16_simm4_1 (operands[2], VOIDmode))) || (which_alternative == 2))))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 4:
	  extract_insn (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (m16_uimm8_4 (operands[1], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case 9:
        case 3:
	  extract_insn (insn);
	  if ((((GENERATE_BRANCHLIKELY) != (0))) && (m16_simm8_8 (operands[0], VOIDmode)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        case -1:
	  if (GET_CODE (PATTERN (insn)) != ASM_INPUT
	      && asm_noperands (PATTERN (insn)) < 0)
	    fatal_insn_not_found (insn);
        case 316:
        case 315:
        case 314:
        case 313:
        case 312:
        case 311:
        case 310:
        case 309:
        case 308:
        case 307:
        case 306:
        case 305:
        case 304:
        case 258:
        case 256:
        case 254:
        case 252:
        case 249:
        case 248:
        case 247:
        case 246:
        case 242:
        case 240:
        case 238:
        case 236:
        case 233:
        case 232:
        case 231:
        case 230:
        case 227:
        case 226:
        case 223:
        case 222:
        case 221:
        case 220:
        case 206:
        case 200:
        case 198:
        case 193:
        case 191:
        case 186:
        case 185:
        case 166:
        case 165:
        case 164:
        case 163:
        case 148:
        case 147:
        case 134:
        case 115:
        case 114:
        case 113:
        case 106:
        case 104:
        case 103:
        case 98:
        case 95:
        case 94:
        case 93:
        case 90:
        case 89:
        case 87:
        case 86:
        case 85:
        case 84:
        case 82:
        case 79:
        case 78:
        case 75:
        case 74:
        case 73:
        case 72:
        case 71:
        case 70:
        case 69:
        case 68:
        case 67:
        case 66:
        case 65:
        case 64:
        case 61:
        case 60:
        case 59:
        case 58:
        case 57:
        case 56:
        case 55:
        case 54:
        case 53:
        case 52:
        case 51:
        case 50:
        case 49:
        case 48:
        case 47:
        case 46:
        case 45:
        case 44:
        case 43:
        case 42:
        case 41:
        case 40:
        case 39:
        case 38:
        case 36:
        case 33:
        case 32:
        case 30:
        case 28:
        case 26:
        case 22:
        case 16:
        case 15:
        case 14:
        case 12:
        case 8:
        case 2:
        case 1:
        case 0:
	  if (((GENERATE_BRANCHLIKELY) != (0)))
	    {
	      return 1;
	    }
	  else
	    {
	      return 0;
	    }

        default:
	  return 0;

      }
    default:
      abort ();
    }
}

static int imuldiv_unit_blockage PARAMS ((rtx, rtx));
static int
imuldiv_unit_blockage (executing_insn, candidate_insn)
     rtx executing_insn;
     rtx candidate_insn;
{
  rtx insn;
  int casenum;

  insn = executing_insn;
  switch (recog_memoized (insn))
    {
    case 172:
    case 169:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 170:
    case 167:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 157:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 156:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 155:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 153:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 171:
    case 168:
    case 152:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 151:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 150:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 128:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 271:
    case 270:
    case 269:
    case 268:
    case 267:
    case 266:
    case 265:
    case 264:
    case 263:
    case 262:
    case 86:
    case 85:
    case 79:
    case 78:
      casenum = 23 /* 0x17 */;
      break;

    case 71:
    case 69:
    case 67:
    case 65:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 11 /* 0xb */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 12 /* 0xc */;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  casenum = 13 /* 0xd */;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 14 /* 0xe */;
        }
      else if (((mips_cpu_attr) == (CPU_R4000)))
        {
	  casenum = 15 /* 0xf */;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 17 /* 0x11 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  casenum = 19 /* 0x13 */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  casenum = 21 /* 0x15 */;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 70:
    case 68:
    case 66:
    case 64:
    case 61:
    case 60:
    case 59:
    case 58:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 11 /* 0xb */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 12 /* 0xc */;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  casenum = 13 /* 0xd */;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 14 /* 0xe */;
        }
      else if (((mips_cpu_attr) == (CPU_R4000)))
        {
	  casenum = 15 /* 0xf */;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 16 /* 0x10 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  casenum = 18 /* 0x12 */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  casenum = 20 /* 0x14 */;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 42:
    case 41:
    case 37:
    case 36:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  casenum = 4;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 5;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 7;
        }
      else if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  casenum = 9;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  casenum = 10 /* 0xa */;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 35:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  casenum = 4;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 5;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 6;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))
        {
	  casenum = 8;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 45:
    case 44:
    case 43:
    case 40:
    case 39:
    case 38:
    case 34:
    case 33:
    case 32:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  casenum = 4;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 5;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 6;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))
        {
	  casenum = 8;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 31:
    case 30:
      casenum = 24 /* 0x18 */;
      break;

    case 29:
    case 28:
      casenum = 25 /* 0x19 */;
      break;

    case 15:
    case 14:
    case 1:
    case 0:
      casenum = 22 /* 0x16 */;
      break;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      casenum = 27 /* 0x1b */;
      break;

    }

  insn = candidate_insn;
  switch (casenum)
    {
    case 0:
      return 3;

    case 1:
      return 17 /* 0x11 */;

    case 2:
      return 5;

    case 3:
      return 12 /* 0xc */;

    case 4:
      return 10 /* 0xa */;

    case 5:
      return 4;

    case 6:
      return 1;

    case 7:
      return 4;

    case 8:
      return 5;

    case 9:
      return 8;

    case 10:
      return 9;

    case 11:
      return 38 /* 0x26 */;

    case 12:
      return 35 /* 0x23 */;

    case 13:
      return 42 /* 0x2a */;

    case 14:
      return 36 /* 0x24 */;

    case 15:
      return 69 /* 0x45 */;

    case 16:
      return 35 /* 0x23 */;

    case 17:
      return 67 /* 0x43 */;

    case 18:
      return 37 /* 0x25 */;

    case 19:
      return 69 /* 0x45 */;

    case 20:
      return 36 /* 0x24 */;

    case 21:
      return 68 /* 0x44 */;

    case 22:
      return 3;

    case 23:
      return 1;

    case 24:
      return 5;

    case 25:
      return 8;

    case 27:
      return 58 /* 0x3a */;

    default:
      abort ();
    }
}

static int imuldiv_unit_conflict_cost PARAMS ((rtx, rtx));
static int
imuldiv_unit_conflict_cost (executing_insn, candidate_insn)
     rtx executing_insn;
     rtx candidate_insn;
{
  rtx insn;
  int casenum;

  insn = executing_insn;
  switch (recog_memoized (insn))
    {
    case 172:
    case 169:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 170:
    case 167:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 157:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 156:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 155:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 153:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 171:
    case 168:
    case 152:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 151:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 150:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 128:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      casenum = 0;
      break;

    case 271:
    case 270:
    case 269:
    case 268:
    case 267:
    case 266:
    case 265:
    case 264:
    case 263:
    case 262:
    case 86:
    case 85:
    case 79:
    case 78:
      casenum = 23 /* 0x17 */;
      break;

    case 71:
    case 69:
    case 67:
    case 65:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 11 /* 0xb */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 12 /* 0xc */;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  casenum = 13 /* 0xd */;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 14 /* 0xe */;
        }
      else if (((mips_cpu_attr) == (CPU_R4000)))
        {
	  casenum = 15 /* 0xf */;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 17 /* 0x11 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  casenum = 19 /* 0x13 */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  casenum = 21 /* 0x15 */;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 70:
    case 68:
    case 66:
    case 64:
    case 61:
    case 60:
    case 59:
    case 58:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 11 /* 0xb */;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 12 /* 0xc */;
        }
      else if (((mips_cpu_attr) == (CPU_R4600)))
        {
	  casenum = 13 /* 0xd */;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 14 /* 0xe */;
        }
      else if (((mips_cpu_attr) == (CPU_R4000)))
        {
	  casenum = 15 /* 0xf */;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 16 /* 0x10 */;
        }
      else if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  casenum = 18 /* 0x12 */;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  casenum = 20 /* 0x14 */;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 42:
    case 41:
    case 37:
    case 36:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  casenum = 4;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 5;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 7;
        }
      else if (((mips_cpu_attr) == (CPU_R4300)))
        {
	  casenum = 9;
        }
      else if (((mips_cpu_attr) == (CPU_R5000)))
        {
	  casenum = 10 /* 0xa */;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 35:
      extract_insn (insn);
      if (! constrain_operands (reload_completed))
        fatal_insn_not_found (insn);
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  casenum = 4;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 5;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 6;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))
        {
	  casenum = 8;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 45:
    case 44:
    case 43:
    case 40:
    case 39:
    case 38:
    case 34:
    case 33:
    case 32:
      if ((! (((mips_cpu_attr) == (CPU_R3000)))) && ((! (((mips_cpu_attr) == (CPU_R3900)))) && ((! (((mips_cpu_attr) == (CPU_R4000)))) && ((! (((mips_cpu_attr) == (CPU_R4600)))) && ((! (((mips_cpu_attr) == (CPU_R4650)))) && ((! (((mips_cpu_attr) == (CPU_R4100)))) && ((! (((mips_cpu_attr) == (CPU_R4300)))) && (! (((mips_cpu_attr) == (CPU_R5000)))))))))))
        {
	  casenum = 1;
        }
      else if ((((mips_cpu_attr) == (CPU_R3000))) || (((mips_cpu_attr) == (CPU_R3900))))
        {
	  casenum = 3;
        }
      else if ((((mips_cpu_attr) == (CPU_R4000))) || (((mips_cpu_attr) == (CPU_R4600))))
        {
	  casenum = 4;
        }
      else if (((mips_cpu_attr) == (CPU_R4650)))
        {
	  casenum = 5;
        }
      else if (((mips_cpu_attr) == (CPU_R4100)))
        {
	  casenum = 6;
        }
      else if ((((mips_cpu_attr) == (CPU_R4300))) || (((mips_cpu_attr) == (CPU_R5000))))
        {
	  casenum = 8;
        }
      else
        {
	  casenum = 27 /* 0x1b */;
        }
      break;

    case 31:
    case 30:
      casenum = 24 /* 0x18 */;
      break;

    case 29:
    case 28:
      casenum = 25 /* 0x19 */;
      break;

    case 15:
    case 14:
    case 1:
    case 0:
      casenum = 22 /* 0x16 */;
      break;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      casenum = 27 /* 0x1b */;
      break;

    }

  insn = candidate_insn;
  switch (casenum)
    {
    case 0:
      return 3;

    case 1:
      return 17 /* 0x11 */;

    case 2:
      return 5;

    case 3:
      return 12 /* 0xc */;

    case 4:
      return 10 /* 0xa */;

    case 5:
      return 4;

    case 6:
      return 1;

    case 7:
      return 4;

    case 8:
      return 5;

    case 9:
      return 8;

    case 10:
      return 9;

    case 11:
      return 38 /* 0x26 */;

    case 12:
      return 35 /* 0x23 */;

    case 13:
      return 42 /* 0x2a */;

    case 14:
      return 36 /* 0x24 */;

    case 15:
      return 69 /* 0x45 */;

    case 16:
      return 35 /* 0x23 */;

    case 17:
      return 67 /* 0x43 */;

    case 18:
      return 37 /* 0x25 */;

    case 19:
      return 69 /* 0x45 */;

    case 20:
      return 36 /* 0x24 */;

    case 21:
      return 68 /* 0x44 */;

    case 22:
      return 3;

    case 23:
      return 1;

    case 24:
      return 5;

    case 25:
      return 8;

    case 27:
      return 58 /* 0x3a */;

    default:
      abort ();
    }
}

struct function_unit_desc function_units[] = {
  {"memory", 1, 1, 0, 1, 1, memory_unit_ready_cost, 0, 1, 0, 0}, 
  {"imuldiv", 2, 1, 0, 0, 69, imuldiv_unit_ready_cost, imuldiv_unit_conflict_cost, 69, imuldiv_unit_blockage_range, imuldiv_unit_blockage}, 
  {"adder", 4, 1, 1, 1, 1, adder_unit_ready_cost, 0, 1, 0, 0}, 
  {"mult", 8, 1, 1, 1, 1, mult_unit_ready_cost, 0, 1, 0, 0}, 
  {"divide", 16, 1, 1, 1, 1, divide_unit_ready_cost, 0, 1, 0, 0}, 
};

int
const_num_delay_slots (insn)
     rtx insn;
{
  switch (recog_memoized (insn))
    {
    default:
      return 1;
    }
}

int length_unit_log = 0;
