/* Generated automatically by the program `genextract'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "rtl.h"
#include "insn-config.h"
#include "recog.h"
#include "toplev.h"

static rtx junk ATTRIBUTE_UNUSED;
void
insn_extract (insn)
     rtx insn;
{
  register rtx *ro = recog_data.operand;
  register rtx **ro_loc = recog_data.operand_loc;
  rtx pat = PATTERN (insn);
  int i ATTRIBUTE_UNUSED;

  memset (ro, 0, sizeof (*ro) * MAX_RECOG_OPERANDS);
  memset (ro_loc, 0, sizeof (*ro_loc) * MAX_RECOG_OPERANDS);
  switch (INSN_CODE (insn))
    {
    case -1:
      fatal_insn_not_found (insn);

    case 513:
    case 512:
    case 511:
    case 510:
      for (i = XVECLEN (pat, 0) - 1; i >= 0; i--)
          ro[i] = XVECEXP (pat, 0, i);
      break;

    case 322:  /* consttable_df */
    case 321:  /* consttable_sf */
    case 320:  /* consttable_di */
    case 319:  /* consttable_si */
    case 318:  /* consttable_hi */
    case 317:  /* consttable_qi */
      ro[0] = *(ro_loc[0] = &XVECEXP (pat, 0, 0));
      break;

    case 316:  /* nop+12 */
    case 313:  /* nop+9 */
    case 310:  /* nop+6 */
    case 307:  /* nop+3 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (pat, 1), 1));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (pat, 1), 2));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (pat, 1), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      break;

    case 315:  /* nop+11 */
    case 314:  /* nop+10 */
    case 312:  /* nop+8 */
    case 311:  /* nop+7 */
    case 309:  /* nop+5 */
    case 308:  /* nop+4 */
    case 306:  /* nop+2 */
    case 305:  /* nop+1 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (pat, 1), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (pat, 1), 2));
      ro[4] = *(ro_loc[4] = &XEXP (XEXP (pat, 1), 0));
      break;

    case 303:  /* call_value_multiple_internal2 */
    case 302:  /* call_value_multiple_internal1 */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XVECEXP (pat, 0, 2), 0));
      recog_data.dup_loc[0] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 1), 1), 0), 0);
      recog_data.dup_num[0] = 1;
      recog_data.dup_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 1), 1), 1);
      recog_data.dup_num[1] = 2;
      break;

    case 301:  /* call_value_internal4b */
    case 300:  /* call_value_internal4a */
    case 299:  /* call_value_internal3c */
    case 298:  /* call_value_internal3b */
    case 297:  /* call_value_internal3a */
    case 296:  /* call_value_internal2 */
    case 295:  /* call_value_internal1 */
    case 294:  /* call_internal4b+1 */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 1), 0));
      break;

    case 293:  /* call_internal4b */
    case 292:  /* call_internal4a */
    case 291:  /* call_internal3c */
    case 290:  /* call_internal3b */
    case 289:  /* call_internal3a */
    case 288:  /* call_internal2 */
    case 287:  /* call_internal1 */
    case 286:  /* get_fnaddr+1 */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XVECEXP (pat, 0, 0), 1));
      ro[2] = *(ro_loc[2] = &XEXP (XVECEXP (pat, 0, 1), 0));
      break;

    case 285:  /* get_fnaddr */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XVECEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0, 0));
      break;

    case 284:  /* return_internal */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      break;

    case 325:  /* align_8 */
    case 324:  /* align_4 */
    case 323:  /* align_2 */
    case 304:  /* nop */
    case 283:  /* return */
    case 282:  /* blockage */
      break;

    case 281:  /* casesi_internal_di */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XVECEXP (pat, 0, 1), 0));
      break;

    case 280:  /* casesi_internal */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XVECEXP (pat, 0, 1), 0));
      break;

    case 279:  /* tablejump_internal2+2 */
    case 278:  /* tablejump_internal2+1 */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1), 0));
      recog_data.dup_loc[0] = &XEXP (XEXP (XVECEXP (pat, 0, 1), 0), 0);
      recog_data.dup_num[0] = 1;
      break;

    case 277:  /* tablejump_internal2 */
    case 276:  /* tablejump_internal1 */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 1));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 1), 0), 0));
      break;

    case 275:  /* indirect_jump_internal2 */
    case 274:  /* indirect_jump_internal1 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 1));
      break;

    case 273:  /* jump+1 */
    case 272:  /* jump */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (pat, 1), 0));
      break;

    case 219:  /* branch_equality_di_inverted+2 */
    case 218:  /* branch_equality_di_inverted+1 */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (pat, 1), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (pat, 1), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (pat, 1), 2));
      break;

    case 217:  /* branch_equality_di_inverted */
    case 216:  /* branch_equality_inverted */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (pat, 1), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 2), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XEXP (pat, 1), 0), 1));
      break;

    case 215:  /* branch_equality_di */
    case 214:  /* branch_equality */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (pat, 1), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XEXP (pat, 1), 0), 1));
      break;

    case 213:  /* branch_zero_di_inverted */
    case 211:  /* branch_zero_inverted */
    case 209:  /* branch_fp_inverted */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (pat, 1), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 2), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      break;

    case 212:  /* branch_zero_di */
    case 210:  /* branch_zero */
    case 208:  /* branch_fp */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (pat, 1), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      break;

    case 185:  /* movstrsi_internal3 */
    case 184:  /* movstrsi_internal2+1 */
    case 183:  /* movstrsi_internal2 */
    case 182:  /* movstrsi_internal+1 */
    case 181:  /* movstrsi_internal */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XVECEXP (pat, 0, 0), 1));
      ro[2] = *(ro_loc[2] = &XEXP (XVECEXP (pat, 0, 5), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 6), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[5] = *(ro_loc[5] = &XEXP (XVECEXP (pat, 0, 2), 0));
      ro[6] = *(ro_loc[6] = &XEXP (XVECEXP (pat, 0, 3), 0));
      ro[7] = *(ro_loc[7] = &XEXP (XVECEXP (pat, 0, 4), 0));
      break;

    case 180:  /* loadgp */
      ro[0] = *(ro_loc[0] = &XVECEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0, 0));
      ro[1] = *(ro_loc[1] = &XVECEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0, 1));
      break;

    case 166:  /* movcc+8 */
    case 165:  /* movcc+7 */
    case 164:  /* movcc+6 */
    case 163:  /* movcc+5 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 1));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 0), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 0), 0), 1));
      break;

    case 327:  /* leadi */
    case 326:  /* leasi */
    case 179:  /* movdf_internal2+1 */
    case 178:  /* movdf_internal2 */
    case 177:  /* movdf_internal1a */
    case 176:  /* movdf_internal1 */
    case 175:  /* movsf_internal2+1 */
    case 174:  /* movsf_internal2 */
    case 173:  /* movsf_internal1 */
    case 172:  /* movqi_internal2+1 */
    case 171:  /* movqi_internal2 */
    case 170:  /* movqi_internal1 */
    case 169:  /* movhi_internal2+1 */
    case 168:  /* movhi_internal2 */
    case 167:  /* movhi_internal1 */
    case 158:  /* movcc */
    case 157:  /* movsi_internal2+1 */
    case 156:  /* movsi_internal2 */
    case 155:  /* movsi_internal1 */
    case 153:  /* movdi_internal2+1 */
    case 152:  /* movdi_internal2 */
    case 151:  /* movdi_internal+1 */
    case 150:  /* movdi_internal */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (pat, 1));
      break;

    case 154:  /* movdi_internal2+2 */
    case 149:  /* low+1 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      break;

    case 146:  /* movdi_usd */
    case 145:  /* movdi_uld */
    case 144:  /* movsi_usw */
    case 143:  /* movsi_ulw */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XVECEXP (XEXP (pat, 1), 0, 0));
      break;

    case 126:  /* *paradoxical_extendhidi2 */
    case 115:  /* truncdiqi2+6 */
    case 114:  /* truncdiqi2+5 */
    case 113:  /* truncdiqi2+4 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      break;

    case 105:  /* *nordi3 */
    case 104:  /* *norsi3 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 1), 1), 0));
      break;

    case 138:  /* fix_truncsfdi2 */
    case 137:  /* fix_truncdfdi2 */
    case 83:  /* negdi2_internal */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XVECEXP (pat, 0, 1), 0));
      break;

    case 136:  /* fix_truncsfsi2 */
    case 135:  /* fix_truncdfsi2 */
    case 81:  /* ffsdi2 */
    case 80:  /* ffssi2 */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 2), 0));
      break;

    case 75:  /* sqrtsf2+2 */
    case 74:  /* sqrtsf2+1 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (pat, 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 1), 1), 0));
      break;

    case 227:  /* sne_di_zero */
    case 226:  /* sne_si_zero */
    case 223:  /* seq_di_zero+1 */
    case 222:  /* seq_di_zero */
    case 221:  /* seq_si_zero+1 */
    case 220:  /* seq_si_zero */
    case 147:  /* high */
    case 142:  /* floatdisf2 */
    case 141:  /* floatsisf2 */
    case 140:  /* floatdidf2 */
    case 139:  /* floatsidf2 */
    case 134:  /* extendsfdf2 */
    case 133:  /* extendqidi2_insn */
    case 132:  /* extendqisi2_insn */
    case 131:  /* extendqihi2_internal */
    case 130:  /* extendhisi2_internal */
    case 129:  /* extendhidi2_internal */
    case 128:  /* extendsidi2 */
    case 127:  /* *paradoxical_extendhidi2+1 */
    case 125:  /* zero_extendsidi2_internal+9 */
    case 124:  /* zero_extendsidi2_internal+8 */
    case 123:  /* zero_extendsidi2_internal+7 */
    case 122:  /* zero_extendsidi2_internal+6 */
    case 121:  /* zero_extendsidi2_internal+5 */
    case 120:  /* zero_extendsidi2_internal+4 */
    case 119:  /* zero_extendsidi2_internal+3 */
    case 118:  /* zero_extendsidi2_internal+2 */
    case 117:  /* zero_extendsidi2_internal+1 */
    case 116:  /* zero_extendsidi2_internal */
    case 109:  /* truncdiqi2 */
    case 108:  /* truncdihi2 */
    case 107:  /* truncdisi2 */
    case 106:  /* truncdfsf2 */
    case 88:  /* one_cmpldi2 */
    case 87:  /* one_cmplsi2 */
    case 86:  /* negsf2 */
    case 85:  /* negdf2 */
    case 84:  /* negdi2_internal_2 */
    case 82:  /* negsi2 */
    case 79:  /* abssf2 */
    case 78:  /* absdf2 */
    case 77:  /* absdi2 */
    case 76:  /* abssi2 */
    case 73:  /* sqrtsf2 */
    case 72:  /* sqrtdf2 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (pat, 1), 0));
      break;

    case 63:  /* div_trap_mips16 */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 0), 1));
      ro[2] = *(ro_loc[2] = &XEXP (XVECEXP (pat, 0, 0), 1));
      break;

    case 62:  /* div_trap_normal */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (pat, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (pat, 0), 1));
      ro[2] = *(ro_loc[2] = &XEXP (pat, 1));
      break;

    case 61:  /* udivmoddi4_internal */
    case 60:  /* udivmodsi4_internal */
    case 59:  /* divmoddi4_internal */
    case 58:  /* divmodsi4_internal */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[4] = const0_rtx;
      ro_loc[4] = &junk;
      ro[5] = const0_rtx;
      ro_loc[5] = &junk;
      ro[6] = *(ro_loc[6] = &XEXP (XVECEXP (pat, 0, 2), 0));
      recog_data.dup_loc[0] = &XEXP (XEXP (XVECEXP (pat, 0, 1), 1), 0);
      recog_data.dup_num[0] = 1;
      recog_data.dup_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 1), 1), 1);
      recog_data.dup_num[1] = 2;
      break;

    case 53:  /* *mul_acc_64bit_di+8 */
    case 52:  /* *mul_acc_64bit_di+7 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (pat, 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 1), 1), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XEXP (pat, 1), 1), 1));
      break;

    case 51:  /* *mul_acc_64bit_di+6 */
    case 50:  /* *mul_acc_64bit_di+5 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XEXP (pat, 1), 0), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (XEXP (pat, 1), 0), 0), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XEXP (pat, 1), 0), 1));
      break;

    case 49:  /* *mul_acc_64bit_di+4 */
    case 48:  /* *mul_acc_64bit_di+3 */
    case 47:  /* *mul_acc_64bit_di+2 */
    case 46:  /* *mul_acc_64bit_di+1 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 1), 0), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (pat, 1), 1));
      break;

    case 45:  /* *mul_acc_64bit_di */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 1), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 1));
      ro[5] = *(ro_loc[5] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[6] = *(ro_loc[6] = &XEXP (XVECEXP (pat, 0, 2), 0));
      recog_data.dup_loc[0] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1);
      recog_data.dup_num[0] = 0;
      break;

    case 44:  /* *mul_acc_di */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 1), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 1));
      ro[5] = *(ro_loc[5] = &XEXP (XVECEXP (pat, 0, 1), 0));
      recog_data.dup_loc[0] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1);
      recog_data.dup_num[0] = 0;
      break;

    case 43:  /* madsi */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XVECEXP (pat, 0, 2), 0));
      recog_data.dup_loc[0] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1);
      recog_data.dup_num[0] = 0;
      break;

    case 42:  /* umuldi3_highpart */
    case 41:  /* smuldi3_highpart */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 1), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XVECEXP (pat, 0, 2), 0));
      break;

    case 40:  /* xmulsi3_highpart_internal */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 1), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0), 1));
      ro[5] = *(ro_loc[5] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[6] = *(ro_loc[6] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[7] = *(ro_loc[7] = &XEXP (XVECEXP (pat, 0, 2), 0));
      break;

    case 39:  /* mulsidi3_64bit */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1));
      ro[5] = *(ro_loc[5] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[6] = *(ro_loc[6] = &XEXP (XVECEXP (pat, 0, 2), 0));
      break;

    case 38:  /* mulsidi3_internal */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1), 0));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1));
      ro[5] = *(ro_loc[5] = &XEXP (XVECEXP (pat, 0, 1), 0));
      break;

    case 35:  /* *mul_acc_si */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1));
      ro[4] = *(ro_loc[4] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[5] = *(ro_loc[5] = &XEXP (XVECEXP (pat, 0, 2), 0));
      ro[6] = *(ro_loc[6] = &XEXP (XVECEXP (pat, 0, 3), 0));
      ro[7] = *(ro_loc[7] = &XEXP (XVECEXP (pat, 0, 4), 0));
      break;

    case 71:  /* umoddi3_internal */
    case 70:  /* umodsi3_internal */
    case 69:  /* udivdi3_internal */
    case 68:  /* udivsi3_internal */
    case 67:  /* moddi3_internal */
    case 66:  /* modsi3_internal */
    case 65:  /* divdi3_internal */
    case 64:  /* divsi3_internal */
    case 36:  /* muldi3_internal */
    case 33:  /* mulsi3_internal */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XVECEXP (pat, 0, 2), 0));
      break;

    case 37:  /* muldi3_internal2 */
    case 34:  /* mulsi3_r4000 */
    case 32:  /* mulsi3_mult3 */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 1), 0));
      ro[4] = *(ro_loc[4] = &XEXP (XVECEXP (pat, 0, 2), 0));
      ro[5] = *(ro_loc[5] = &XEXP (XVECEXP (pat, 0, 3), 0));
      break;

    case 162:  /* movcc+4 */
    case 161:  /* movcc+3 */
    case 160:  /* movcc+2 */
    case 159:  /* movcc+1 */
    case 112:  /* truncdiqi2+3 */
    case 111:  /* truncdiqi2+2 */
    case 110:  /* truncdiqi2+1 */
    case 27:  /* subsi3_internal_2+1 */
    case 26:  /* subsi3_internal_2 */
    case 13:  /* addsi3_internal_2+1 */
    case 12:  /* addsi3_internal_2 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XEXP (pat, 1), 0), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XEXP (pat, 1), 0), 1));
      break;

    case 205:  /* lshrdi3_internal3 */
    case 204:  /* lshrdi3_internal2 */
    case 203:  /* lshrdi3_internal */
    case 197:  /* ashrdi3_internal3 */
    case 196:  /* ashrdi3_internal2 */
    case 195:  /* ashrdi3_internal */
    case 190:  /* ashldi3_internal3 */
    case 189:  /* ashldi3_internal2 */
    case 188:  /* ashldi3_internal */
    case 21:  /* subdi3_internal_2 */
    case 20:  /* subdi3_internal */
    case 7:  /* adddi3_internal_2 */
    case 6:  /* adddi3_internal_1 */
      ro[0] = *(ro_loc[0] = &XEXP (XVECEXP (pat, 0, 0), 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (XVECEXP (pat, 0, 0), 1), 1));
      ro[3] = *(ro_loc[3] = &XEXP (XVECEXP (pat, 0, 1), 0));
      break;

    case 24:  /* subdi3_internal_3+2 */
    case 18:  /* subsi3_internal+2 */
    case 10:  /* adddi3_internal_3+2 */
    case 4:  /* addsi3_internal+2 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (pat, 1), 1));
      break;

    case 23:  /* subdi3_internal_3+1 */
    case 17:  /* subsi3_internal+1 */
    case 9:  /* adddi3_internal_3+1 */
    case 3:  /* addsi3_internal+1 */
      ro[0] = *(ro_loc[0] = &XEXP (XEXP (pat, 1), 1));
      break;

    case 271:  /* sge_sf */
    case 270:  /* sgt_sf */
    case 269:  /* sle_sf */
    case 268:  /* slt_sf */
    case 267:  /* seq_sf */
    case 266:  /* sge_df */
    case 265:  /* sgt_df */
    case 264:  /* sle_df */
    case 263:  /* slt_df */
    case 262:  /* seq_df */
    case 261:  /* sleu_di_reg */
    case 260:  /* sleu_si_reg */
    case 259:  /* sleu_di_const+1 */
    case 258:  /* sleu_di_const */
    case 257:  /* sleu_si_const+1 */
    case 256:  /* sleu_si_const */
    case 255:  /* sltu_di+1 */
    case 254:  /* sltu_di */
    case 253:  /* sltu_si+1 */
    case 252:  /* sltu_si */
    case 251:  /* sgeu_di */
    case 250:  /* sgeu_si */
    case 249:  /* sgtu_di+1 */
    case 248:  /* sgtu_di */
    case 247:  /* sgtu_si+1 */
    case 246:  /* sgtu_si */
    case 245:  /* sle_di_reg */
    case 244:  /* sle_si_reg */
    case 243:  /* sle_di_const+1 */
    case 242:  /* sle_di_const */
    case 241:  /* sle_si_const+1 */
    case 240:  /* sle_si_const */
    case 239:  /* slt_di+1 */
    case 238:  /* slt_di */
    case 237:  /* slt_si+1 */
    case 236:  /* slt_si */
    case 235:  /* sge_di */
    case 234:  /* sge_si */
    case 233:  /* sgt_di+1 */
    case 232:  /* sgt_di */
    case 231:  /* sgt_si+1 */
    case 230:  /* sgt_si */
    case 229:  /* sne_di */
    case 228:  /* sne_si */
    case 225:  /* seq_di */
    case 224:  /* seq_si */
    case 207:  /* lshrdi3_internal4+1 */
    case 206:  /* lshrdi3_internal4 */
    case 202:  /* lshrsi3_internal2+1 */
    case 201:  /* lshrsi3_internal2 */
    case 200:  /* lshrsi3_internal1 */
    case 199:  /* ashrdi3_internal4+1 */
    case 198:  /* ashrdi3_internal4 */
    case 194:  /* ashrsi3_internal2 */
    case 193:  /* ashrsi3_internal1 */
    case 192:  /* ashldi3_internal4+1 */
    case 191:  /* ashldi3_internal4 */
    case 187:  /* ashlsi3_internal2 */
    case 186:  /* ashlsi3_internal1 */
    case 148:  /* low */
    case 103:  /* xordi3_immed */
    case 102:  /* anddi3_internal1+9 */
    case 101:  /* anddi3_internal1+8 */
    case 100:  /* anddi3_internal1+7 */
    case 99:  /* anddi3_internal1+6 */
    case 98:  /* anddi3_internal1+5 */
    case 97:  /* anddi3_internal1+4 */
    case 96:  /* anddi3_internal1+3 */
    case 95:  /* anddi3_internal1+2 */
    case 94:  /* anddi3_internal1+1 */
    case 93:  /* anddi3_internal1 */
    case 92:  /* one_cmpldi2+4 */
    case 91:  /* one_cmpldi2+3 */
    case 90:  /* one_cmpldi2+2 */
    case 89:  /* one_cmpldi2+1 */
    case 57:  /* divsf3+2 */
    case 56:  /* divsf3+1 */
    case 55:  /* divsf3 */
    case 54:  /* divdf3 */
    case 31:  /* mulsf3_r4300 */
    case 30:  /* mulsf3_internal */
    case 29:  /* muldf3_r4300 */
    case 28:  /* muldf3_internal */
    case 25:  /* subdi3_internal_3+3 */
    case 22:  /* subdi3_internal_3 */
    case 19:  /* subsi3_internal+3 */
    case 16:  /* subsi3_internal */
    case 15:  /* subsf3 */
    case 14:  /* subdf3 */
    case 11:  /* adddi3_internal_3+3 */
    case 8:  /* adddi3_internal_3 */
    case 5:  /* addsi3_internal+3 */
    case 2:  /* addsi3_internal */
    case 1:  /* addsf3 */
    case 0:  /* adddf3 */
      ro[0] = *(ro_loc[0] = &XEXP (pat, 0));
      ro[1] = *(ro_loc[1] = &XEXP (XEXP (pat, 1), 0));
      ro[2] = *(ro_loc[2] = &XEXP (XEXP (pat, 1), 1));
      break;

    default:
      abort ();
    }
}
