	.file	"builtins.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl built_in_class_names
	.section	.rodata
.LC0:
	.string	"NOT_BUILT_IN"
.LC1:
	.string	"BUILT_IN_FRONTEND"
.LC2:
	.string	"BUILT_IN_MD"
.LC3:
	.string	"BUILT_IN_NORMAL"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 4
	.type	built_in_class_names, @object
	.size	built_in_class_names, 16
built_in_class_names:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
.globl built_in_names
	.section	.rodata
.LC4:
	.string	"BUILT_IN_ALLOCA"
.LC5:
	.string	"BUILT_IN_ABS"
.LC6:
	.string	"BUILT_IN_LABS"
.LC7:
	.string	"BUILT_IN_FABS"
.LC8:
	.string	"BUILT_IN_FABSF"
.LC9:
	.string	"BUILT_IN_FABSL"
.LC10:
	.string	"BUILT_IN_LLABS"
.LC11:
	.string	"BUILT_IN_IMAXABS"
.LC12:
	.string	"BUILT_IN_CONJ"
.LC13:
	.string	"BUILT_IN_CONJF"
.LC14:
	.string	"BUILT_IN_CONJL"
.LC15:
	.string	"BUILT_IN_CREAL"
.LC16:
	.string	"BUILT_IN_CREALF"
.LC17:
	.string	"BUILT_IN_CREALL"
.LC18:
	.string	"BUILT_IN_CIMAG"
.LC19:
	.string	"BUILT_IN_CIMAGF"
.LC20:
	.string	"BUILT_IN_CIMAGL"
.LC21:
	.string	"BUILT_IN_DIV"
.LC22:
	.string	"BUILT_IN_LDIV"
.LC23:
	.string	"BUILT_IN_FFLOOR"
.LC24:
	.string	"BUILT_IN_FCEIL"
.LC25:
	.string	"BUILT_IN_FMOD"
.LC26:
	.string	"BUILT_IN_FREM"
.LC27:
	.string	"BUILT_IN_BZERO"
.LC28:
	.string	"BUILT_IN_BCOPY"
.LC29:
	.string	"BUILT_IN_BCMP"
.LC30:
	.string	"BUILT_IN_FFS"
.LC31:
	.string	"BUILT_IN_INDEX"
.LC32:
	.string	"BUILT_IN_RINDEX"
.LC33:
	.string	"BUILT_IN_MEMCPY"
.LC34:
	.string	"BUILT_IN_MEMMOVE"
.LC35:
	.string	"BUILT_IN_MEMCMP"
.LC36:
	.string	"BUILT_IN_MEMSET"
.LC37:
	.string	"BUILT_IN_MEMPCPY"
.LC38:
	.string	"BUILT_IN_STRCAT"
.LC39:
	.string	"BUILT_IN_STRNCAT"
.LC40:
	.string	"BUILT_IN_STPCPY"
.LC41:
	.string	"BUILT_IN_STRCPY"
.LC42:
	.string	"BUILT_IN_STRNCPY"
.LC43:
	.string	"BUILT_IN_STRCMP"
.LC44:
	.string	"BUILT_IN_STRNCMP"
.LC45:
	.string	"BUILT_IN_STRLEN"
.LC46:
	.string	"BUILT_IN_STRSTR"
.LC47:
	.string	"BUILT_IN_STRPBRK"
.LC48:
	.string	"BUILT_IN_STRSPN"
.LC49:
	.string	"BUILT_IN_STRCSPN"
.LC50:
	.string	"BUILT_IN_STRCHR"
.LC51:
	.string	"BUILT_IN_STRRCHR"
.LC52:
	.string	"BUILT_IN_CVT64_LOW"
.LC53:
	.string	"BUILT_IN_CVT64_HIGH"
.LC54:
	.string	"BUILT_IN_CVT32"
.LC55:
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
.LC56:
	.string	"BUILT_IN_PERIPHERAL_RW_END"
.LC57:
	.string	"BUILT_IN_VBUF_OFFSET"
.LC58:
	.string	"BUILT_IN_SBUF_OFFSET"
.LC59:
	.string	"BUILD_IN_MUL_SHIFT_HI"
.LC60:
	.string	"BUILD_IN_MUL_SHIFT"
.LC61:
	.string	"BUILD_IN_C3_LEAD"
.LC62:
	.string	"BUILD_IN_C3_MAC"
.LC63:
	.string	"BUILD_IN_C3_MACN"
.LC64:
	.string	"BUILD_IN_C3_ROUND"
.LC65:
	.string	"BUILD_IN_C3_SAADDS"
.LC66:
	.string	"BUILD_IN_C3_SASUBS"
.LC67:
	.string	"BUILD_IN_C3_MULA"
.LC68:
	.string	"BUILD_IN_C3_INIT_ACC"
.LC69:
	.string	"BUILD_IN_C3_SAVE_ACC"
.LC70:
	.string	"BUILD_IN_MPY_32_16"
.LC71:
	.string	"BUILD_IN_C3_MACD"
.LC72:
	.string	"BUILD_IN_C3_MULAD"
.LC73:
	.string	"BUILD_IN_C3_SAADDSH"
.LC74:
	.string	"BUILD_IN_C3_SASUBSH"
.LC75:
	.string	"BUILD_IN_C3_MVFS"
.LC76:
	.string	"BUILD_IN_C3_INIT_ADDR"
.LC77:
	.string	"BUILD_IN_C3_SAVE_ADDR"
.LC78:
	.string	"BUILD_IN_C3_MAC_A"
.LC79:
	.string	"BUILD_IN_C3_MACN_A"
.LC80:
	.string	"BUILD_IN_C3_DMAC_A"
.LC81:
	.string	"BUILD_IN_C3_DMACN_A"
.LC82:
	.string	"BUILD_IN_C3_INIT_DACC"
.LC83:
	.string	"BUILD_IN_C3_SAVE_DACC"
.LC84:
	.string	"BUILD_IN_C3_SAADDH_A"
.LC85:
	.string	"BUILD_IN_C3_SASUBH_A"
.LC86:
	.string	"BUILD_IN_C3_SAMULSH"
.LC87:
	.string	"BUILD_IN_C3_MULA_A"
.LC88:
	.string	"BUILD_IN_C3_SAMULH_A"
.LC89:
	.string	"BUILD_IN_C3_PTR"
.LC90:
	.string	"BUILD_IN_C3_MAC_AR"
.LC91:
	.string	"BUILD_IN_C3_MACN_AR"
.LC92:
	.string	"BUILD_IN_C3_MULA_AR"
.LC93:
	.string	"BUILD_IN_C3_INIT_PTR"
.LC94:
	.string	"BUILD_IN_C3_TRBACK"
.LC95:
	.string	"BUILD_IN_C3_VITERBI"
.LC96:
	.string	"BUILD_IN_C3_DMULT"
.LC97:
	.string	"BUILD_IN_C3_DMULT_A"
.LC98:
	.string	"BUILD_IN_C3_DMULTN"
.LC99:
	.string	"BUILD_IN_C3_DMULTN_A"
.LC100:
	.string	"BUILD_IN_SET_CIRCBUF"
.LC101:
	.string	"BUILD_IN_RESET_CIRCBUF"
.LC102:
	.string	"BUILD_IN_C3_DADD"
.LC103:
	.string	"BUILD_IN_C3_DSUB"
.LC104:
	.string	"BUILD_IN_C3_FFT"
.LC105:
	.string	"BUILD_IN_C3_FFTLD"
.LC106:
	.string	"BUILD_IN_C3_FFTST"
.LC107:
	.string	"BUILD_IN_DEPOSIT"
.LC108:
	.string	"BUILD_IN_EXTRACT"
.LC109:
	.string	"BUILD_IN_C3_BITR"
.LC110:
	.string	"BUILD_IN_C3_DMAC"
.LC111:
	.string	"BUILD_IN_C3_DMACN"
.LC112:
	.string	"BUILD_IN_C3_LOAD"
.LC113:
	.string	"BUILD_IN_C3_STORE"
.LC114:
	.string	"BUILD_IN_C3_REVB"
.LC115:
	.string	"BUILD_IN_C3_DSHL_I"
.LC116:
	.string	"BUILD_IN_C3_DSHR_I"
.LC117:
	.string	"BUILD_IN_C3_MAC_I"
.LC118:
	.string	"BUILD_IN_C3_MACN_I"
.LC119:
	.string	"BUILD_IN_C3_MULA_I"
.LC120:
	.string	"BUILD_IN_C3_SAADD_A"
.LC121:
	.string	"BUILD_IN_C3_SADDHA"
.LC122:
	.string	"BUILD_IN_C3_SAADDHA_A"
.LC123:
	.string	"BUILD_IN_C3_SASUB_A"
.LC124:
	.string	"BUILD_IN_COPY_ADDR"
.LC125:
	.string	"BUILD_IN_SET_ADDR"
.LC126:
	.string	"BUILT_IN_C2_MVGR_G2R"
.LC127:
	.string	"BUILT_IN_C2_MVGR_R2G"
.LC128:
	.string	"BUILT_IN_C2_MVGR_G2S"
.LC129:
	.string	"BUILT_IN_C2_MVGR_S2G"
.LC130:
	.string	"BUILT_IN_C2_MVGC_C2G"
.LC131:
	.string	"BUILT_IN_C2_MVGC_G2C"
.LC132:
	.string	"BUILT_IN_C2_LD_V"
.LC133:
	.string	"BUILT_IN_C2_LD_G"
.LC134:
	.string	"BUILT_IN_C2_LD_S"
.LC135:
	.string	"BUILT_IN_C2_ST_V"
.LC136:
	.string	"BUILT_IN_C2_ST_G"
.LC137:
	.string	"BUILT_IN_C2_LD_G_IMM"
.LC138:
	.string	"BUILT_IN_C2_LD_C_IMM"
.LC139:
	.string	"BUILT_IN_C2_LD_V_IMM"
.LC140:
	.string	"BUILT_IN_C2_ST_V_IMM"
.LC141:
	.string	"BUILT_IN_C2_ST_C_IMM"
.LC142:
	.string	"BUILT_IN_C2_ST_G_IMM"
.LC143:
	.string	"BUILT_IN_C2_VADDS"
.LC144:
	.string	"BUILT_IN_C2_VSUBS"
.LC145:
	.string	"BUILT_IN_C2_VMUL"
.LC146:
	.string	"BUILT_IN_C2_VNEG"
.LC147:
	.string	"BUILT_IN_C2_VSHFT"
.LC148:
	.string	"BUILT_IN_C2_VCLP"
.LC149:
	.string	"BUILT_IN_C2_VCLG"
.LC150:
	.string	"BUILT_IN_C2_VCMOV"
.LC151:
	.string	"BUILT_IN_C2_LCZERO"
.LC152:
	.string	"BUILT_IN_C2_VRND"
.LC153:
	.string	"BUILT_IN_C2_VSPAS"
.LC154:
	.string	"BUILT_IN_C2_VSPEL"
.LC155:
	.string	"BUILT_IN_C2_VSPEL_MAC"
.LC156:
	.string	"BUILT_IN_C2_MMUL"
.LC157:
	.string	"BUILT_IN_C2_VMOV"
.LC158:
	.string	"BUILT_IN_C2_VCOPY"
.LC159:
	.string	"BUILT_IN_C2_VCMPR"
.LC160:
	.string	"BUILT_IN_C2_SAD"
.LC161:
	.string	"BUILT_IN_C2_SAD_TMP"
.LC162:
	.string	"BUILT_IN_C2_SATD"
.LC163:
	.string	"BUILT_IN_C2_INTRA"
.LC164:
	.string	"BUILT_IN_C2_MVSEL"
.LC165:
	.string	"BUILT_IN_C2_BCST"
.LC166:
	.string	"BUILT_IN_C2_VLCS_R"
.LC167:
	.string	"BUILT_IN_C2_VLCS"
.LC168:
	.string	"BUILT_IN_C2_ADDS"
.LC169:
	.string	"BUILT_IN_C2_ADDS_R"
.LC170:
	.string	"BUILT_IN_C2_SUBS"
.LC171:
	.string	"BUILT_IN_C2_SUBS_R"
.LC172:
	.string	"BUILT_IN_C2_MULS"
.LC173:
	.string	"BUILT_IN_C2_MADS"
.LC174:
	.string	"BUILT_IN_C2_SMADS"
.LC175:
	.string	"BUILT_IN_C2_CMOV"
.LC176:
	.string	"BUILT_IN_C2_MOV"
.LC177:
	.string	"BUILT_IN_C2_MOV_R"
.LC178:
	.string	"BUILT_IN_C2_CLP"
.LC179:
	.string	"BUILT_IN_C2_CHKRNG"
.LC180:
	.string	"BUILT_IN_C2_SCOND"
.LC181:
	.string	"BUILT_IN_C2_SCOND_R_WB"
.LC182:
	.string	"BUILT_IN_C2_SCOND_R"
.LC183:
	.string	"BUILT_IN_C2_SCOND_BR"
.LC184:
	.string	"BUILT_IN_C2_SCOND_BR_R"
.LC185:
	.string	"BUILT_IN_C2_BOP"
.LC186:
	.string	"BUILT_IN_C2_BDEP"
.LC187:
	.string	"BUILT_IN_C2_WRAP"
.LC188:
	.string	"BUILT_IN_C2_BXTR"
.LC189:
	.string	"BUILT_IN_C2_SUM4"
.LC190:
	.string	"BUILT_IN_C2_SUM3_SADDR"
.LC191:
	.string	"BUILT_IN_C2_SUM4_R"
.LC192:
	.string	"BUILT_IN_C2_MED"
.LC193:
	.string	"BUILT_IN_C2_GSUMS"
.LC194:
	.string	"BUILT_IN_C2_CLZOB"
.LC195:
	.string	"BUILT_IN_C2_THCTRL"
.LC196:
	.string	"BUILT_IN_C2_BR_F"
.LC197:
	.string	"BUILT_IN_C2_BR_T"
.LC198:
	.string	"BUILT_IN_C2_LD_V2G"
.LC199:
	.string	"BUILT_IN_C2_LD_V2G_IMM"
.LC200:
	.string	"BUILT_IN_C2_ST_G2V"
.LC201:
	.string	"BUILT_IN_C2_ST_G2V_IMM"
.LC202:
	.string	"BUILT_IN_C2_MVGR_R2S"
.LC203:
	.string	"BUILT_IN_C2_FORK"
.LC204:
	.string	"BUILT_IN_C2_JOINT"
.LC205:
	.string	"BUILT_IN_C2_THREAD_MAJOR"
.LC206:
	.string	"BUILT_IN_C2_THREAD_MINOR"
.LC207:
	.string	"BUILT_IN_FLOOR"
.LC208:
	.string	"BUILT_IN_FLOORF"
.LC209:
	.string	"BUILT_IN_FLOORL"
.LC210:
	.string	"BUILT_IN_POW"
.LC211:
	.string	"BUILT_IN_TAN"
.LC212:
	.string	"BUILT_IN_ACOS"
.LC213:
	.string	"BUILT_IN_ACOSF"
.LC214:
	.string	"BUILT_IN_ACOSH"
.LC215:
	.string	"BUILT_IN_ACOSHF"
.LC216:
	.string	"BUILT_IN_ACOSHL"
.LC217:
	.string	"BUILT_IN_ACOSL"
.LC218:
	.string	"BUILT_IN_ASIN"
.LC219:
	.string	"BUILT_IN_ASINF"
.LC220:
	.string	"BUILT_IN_ASINH"
.LC221:
	.string	"BUILT_IN_ASINHF"
.LC222:
	.string	"BUILT_IN_ASINHL"
.LC223:
	.string	"BUILT_IN_ASINL"
.LC224:
	.string	"BUILT_IN_ATAN"
.LC225:
	.string	"BUILT_IN_ATAN2"
.LC226:
	.string	"BUILT_IN_ATAN2F"
.LC227:
	.string	"BUILT_IN_ATAN2L"
.LC228:
	.string	"BUILT_IN_ATANF"
.LC229:
	.string	"BUILT_IN_ATANH"
.LC230:
	.string	"BUILT_IN_ATANHF"
.LC231:
	.string	"BUILT_IN_ATANHL"
.LC232:
	.string	"BUILT_IN_ATANL"
.LC233:
	.string	"BUILT_IN_CEIL"
.LC234:
	.string	"BUILT_IN_CEILF"
.LC235:
	.string	"BUILT_IN_CEILL"
.LC236:
	.string	"BUILT_IN_FMODF"
.LC237:
	.string	"BUILT_IN_FMODL"
.LC238:
	.string	"BUILT_IN_FREXP"
.LC239:
	.string	"BUILT_IN_FREXPF"
.LC240:
	.string	"BUILT_IN_FREXPL"
.LC241:
	.string	"BUILT_IN_LDEXP"
.LC242:
	.string	"BUILT_IN_LDEXPF"
.LC243:
	.string	"BUILT_IN_LDEXPL"
.LC244:
	.string	"BUILT_IN_LOG10"
.LC245:
	.string	"BUILT_IN_LOG10F"
.LC246:
	.string	"BUILT_IN_LOG10L"
.LC247:
	.string	"BUILT_IN_MODF"
.LC248:
	.string	"BUILT_IN_MODFF"
.LC249:
	.string	"BUILT_IN_MODFL"
.LC250:
	.string	"BUILT_IN_POWF"
.LC251:
	.string	"BUILT_IN_POWL"
.LC252:
	.string	"BUILT_IN_SINH"
.LC253:
	.string	"BUILT_IN_SINHF"
.LC254:
	.string	"BUILT_IN_SINHL"
.LC255:
	.string	"BUILT_IN_TANF"
.LC256:
	.string	"BUILT_IN_TANH"
.LC257:
	.string	"BUILT_IN_TANHF"
.LC258:
	.string	"BUILT_IN_TANHL"
.LC259:
	.string	"BUILT_IN_TANL"
.LC260:
	.string	"BUILT_IN_COSH"
.LC261:
	.string	"BUILT_IN_COSHF"
.LC262:
	.string	"BUILT_IN_COSHL"
.LC263:
	.string	"BUILT_IN_POPCOUNT"
.LC264:
	.string	"BUILT_IN_POPCOUNTL"
.LC265:
	.string	"BUILT_IN_POPCOUNTLL"
.LC266:
	.string	"BUILT_IN_CTZ"
.LC267:
	.string	"BUILT_IN_CTZL"
.LC268:
	.string	"BUILT_IN_CTZLL"
.LC269:
	.string	"BUILT_IN_SQRT"
.LC270:
	.string	"BUILT_IN_SIN"
.LC271:
	.string	"BUILT_IN_COS"
.LC272:
	.string	"BUILT_IN_EXP"
.LC273:
	.string	"BUILT_IN_LOG"
.LC274:
	.string	"BUILT_IN_SQRTF"
.LC275:
	.string	"BUILT_IN_SINF"
.LC276:
	.string	"BUILT_IN_COSF"
.LC277:
	.string	"BUILT_IN_EXPF"
.LC278:
	.string	"BUILT_IN_LOGF"
.LC279:
	.string	"BUILT_IN_SQRTL"
.LC280:
	.string	"BUILT_IN_SINL"
.LC281:
	.string	"BUILT_IN_COSL"
.LC282:
	.string	"BUILT_IN_EXPL"
.LC283:
	.string	"BUILT_IN_LOGL"
.LC284:
	.string	"BUILT_IN_INF"
.LC285:
	.string	"BUILT_IN_INFF"
.LC286:
	.string	"BUILT_IN_INFL"
.LC287:
	.string	"BUILT_IN_HUGE_VAL"
.LC288:
	.string	"BUILT_IN_HUGE_VALF"
.LC289:
	.string	"BUILT_IN_HUGE_VALL"
.LC290:
	.string	"BUILT_IN_NAN"
.LC291:
	.string	"BUILT_IN_NANF"
.LC292:
	.string	"BUILT_IN_NANL"
.LC293:
	.string	"BUILT_IN_NANS"
.LC294:
	.string	"BUILT_IN_NANSF"
.LC295:
	.string	"BUILT_IN_NANSL"
.LC296:
	.string	"BUILT_IN_SAVEREGS"
.LC297:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LC298:
	.string	"BUILT_IN_NEXT_ARG"
.LC299:
	.string	"BUILT_IN_ARGS_INFO"
.LC300:
	.string	"BUILT_IN_CONSTANT_P"
.LC301:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LC302:
	.string	"BUILT_IN_RETURN_ADDRESS"
	.align 4
.LC303:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LC304:
	.string	"BUILT_IN_APPLY_ARGS"
.LC305:
	.string	"BUILT_IN_APPLY"
.LC306:
	.string	"BUILT_IN_RETURN"
.LC307:
	.string	"BUILT_IN_SETJMP"
.LC308:
	.string	"BUILT_IN_LONGJMP"
.LC309:
	.string	"BUILT_IN_TRAP"
.LC310:
	.string	"BUILT_IN_PREFETCH"
.LC311:
	.string	"BUILT_IN_PRINTF"
.LC312:
	.string	"BUILT_IN_PUTCHAR"
.LC313:
	.string	"BUILT_IN_PUTS"
.LC314:
	.string	"BUILT_IN_SNPRINTF"
.LC315:
	.string	"BUILT_IN_SPRINTF"
.LC316:
	.string	"BUILT_IN_SCANF"
.LC317:
	.string	"BUILT_IN_SSCANF"
.LC318:
	.string	"BUILT_IN_VPRINTF"
.LC319:
	.string	"BUILT_IN_VSCANF"
.LC320:
	.string	"BUILT_IN_VSSCANF"
.LC321:
	.string	"BUILT_IN_VSNPRINTF"
.LC322:
	.string	"BUILT_IN_VSPRINTF"
.LC323:
	.string	"BUILT_IN_FPUTC"
.LC324:
	.string	"BUILT_IN_FPUTS"
.LC325:
	.string	"BUILT_IN_FWRITE"
.LC326:
	.string	"BUILT_IN_FPRINTF"
.LC327:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LC328:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LC329:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LC330:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LC331:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LC332:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LC333:
	.string	"BUILT_IN_ISGREATER"
.LC334:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LC335:
	.string	"BUILT_IN_ISLESS"
.LC336:
	.string	"BUILT_IN_ISLESSEQUAL"
.LC337:
	.string	"BUILT_IN_ISLESSGREATER"
.LC338:
	.string	"BUILT_IN_ISUNORDERED"
.LC339:
	.string	"BUILT_IN_UNWIND_INIT"
.LC340:
	.string	"BUILT_IN_DWARF_CFA"
.LC341:
	.string	"BUILT_IN_DWARF_SP_COLUMN"
.LC342:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LC343:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LC344:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LC345:
	.string	"BUILT_IN_EH_RETURN"
.LC346:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LC347:
	.string	"BUILT_IN_VA_START"
.LC348:
	.string	"BUILT_IN_STDARG_START"
.LC349:
	.string	"BUILT_IN_VA_END"
.LC350:
	.string	"BUILT_IN_VA_COPY"
.LC351:
	.string	"BUILT_IN_EXPECT"
.LC352:
	.string	"BUILT_IN_EXTEND_POINTER"
.LC353:
	.string	"BUILT_IN_NEW"
.LC354:
	.string	"BUILT_IN_VEC_NEW"
.LC355:
	.string	"BUILT_IN_DELETE"
.LC356:
	.string	"BUILT_IN_VEC_DELETE"
.LC357:
	.string	"BUILT_IN_ABORT"
.LC358:
	.string	"BUILT_IN_EXIT"
.LC359:
	.string	"BUILT_IN__EXIT"
.LC360:
	.string	"BUILT_IN__EXIT2"
	.section	.data.rel.ro.local
	.align 32
	.type	built_in_names, @object
	.size	built_in_names, 1428
built_in_names:
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.long	.LC47
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.long	.LC52
	.long	.LC53
	.long	.LC54
	.long	.LC55
	.long	.LC56
	.long	.LC57
	.long	.LC58
	.long	.LC59
	.long	.LC60
	.long	.LC61
	.long	.LC62
	.long	.LC63
	.long	.LC64
	.long	.LC65
	.long	.LC66
	.long	.LC67
	.long	.LC68
	.long	.LC69
	.long	.LC70
	.long	.LC71
	.long	.LC72
	.long	.LC73
	.long	.LC74
	.long	.LC75
	.long	.LC76
	.long	.LC77
	.long	.LC78
	.long	.LC79
	.long	.LC80
	.long	.LC81
	.long	.LC82
	.long	.LC83
	.long	.LC84
	.long	.LC85
	.long	.LC86
	.long	.LC87
	.long	.LC88
	.long	.LC89
	.long	.LC90
	.long	.LC91
	.long	.LC92
	.long	.LC93
	.long	.LC94
	.long	.LC95
	.long	.LC96
	.long	.LC97
	.long	.LC98
	.long	.LC99
	.long	.LC100
	.long	.LC101
	.long	.LC102
	.long	.LC103
	.long	.LC104
	.long	.LC105
	.long	.LC106
	.long	.LC107
	.long	.LC108
	.long	.LC109
	.long	.LC110
	.long	.LC111
	.long	.LC112
	.long	.LC113
	.long	.LC114
	.long	.LC115
	.long	.LC116
	.long	.LC117
	.long	.LC118
	.long	.LC119
	.long	.LC120
	.long	.LC121
	.long	.LC122
	.long	.LC123
	.long	.LC124
	.long	.LC125
	.long	.LC126
	.long	.LC127
	.long	.LC128
	.long	.LC129
	.long	.LC130
	.long	.LC131
	.long	.LC132
	.long	.LC133
	.long	.LC134
	.long	.LC135
	.long	.LC136
	.long	.LC137
	.long	.LC138
	.long	.LC139
	.long	.LC140
	.long	.LC141
	.long	.LC142
	.long	.LC143
	.long	.LC144
	.long	.LC145
	.long	.LC146
	.long	.LC147
	.long	.LC148
	.long	.LC149
	.long	.LC150
	.long	.LC151
	.long	.LC152
	.long	.LC153
	.long	.LC154
	.long	.LC155
	.long	.LC156
	.long	.LC157
	.long	.LC158
	.long	.LC159
	.long	.LC160
	.long	.LC161
	.long	.LC162
	.long	.LC163
	.long	.LC164
	.long	.LC165
	.long	.LC166
	.long	.LC167
	.long	.LC168
	.long	.LC169
	.long	.LC170
	.long	.LC171
	.long	.LC172
	.long	.LC173
	.long	.LC174
	.long	.LC175
	.long	.LC176
	.long	.LC177
	.long	.LC178
	.long	.LC179
	.long	.LC180
	.long	.LC181
	.long	.LC182
	.long	.LC183
	.long	.LC184
	.long	.LC185
	.long	.LC186
	.long	.LC187
	.long	.LC188
	.long	.LC189
	.long	.LC190
	.long	.LC191
	.long	.LC192
	.long	.LC193
	.long	.LC194
	.long	.LC195
	.long	.LC196
	.long	.LC197
	.long	.LC198
	.long	.LC199
	.long	.LC200
	.long	.LC201
	.long	.LC202
	.long	.LC203
	.long	.LC204
	.long	.LC205
	.long	.LC206
	.long	.LC207
	.long	.LC208
	.long	.LC209
	.long	.LC210
	.long	.LC211
	.long	.LC212
	.long	.LC213
	.long	.LC214
	.long	.LC215
	.long	.LC216
	.long	.LC217
	.long	.LC218
	.long	.LC219
	.long	.LC220
	.long	.LC221
	.long	.LC222
	.long	.LC223
	.long	.LC224
	.long	.LC225
	.long	.LC226
	.long	.LC227
	.long	.LC228
	.long	.LC229
	.long	.LC230
	.long	.LC231
	.long	.LC232
	.long	.LC233
	.long	.LC234
	.long	.LC235
	.long	.LC236
	.long	.LC237
	.long	.LC238
	.long	.LC239
	.long	.LC240
	.long	.LC241
	.long	.LC242
	.long	.LC243
	.long	.LC244
	.long	.LC245
	.long	.LC246
	.long	.LC247
	.long	.LC248
	.long	.LC249
	.long	.LC250
	.long	.LC251
	.long	.LC252
	.long	.LC253
	.long	.LC254
	.long	.LC255
	.long	.LC256
	.long	.LC257
	.long	.LC258
	.long	.LC259
	.long	.LC260
	.long	.LC261
	.long	.LC262
	.long	.LC263
	.long	.LC264
	.long	.LC265
	.long	.LC266
	.long	.LC267
	.long	.LC268
	.long	.LC269
	.long	.LC270
	.long	.LC271
	.long	.LC272
	.long	.LC273
	.long	.LC274
	.long	.LC275
	.long	.LC276
	.long	.LC277
	.long	.LC278
	.long	.LC279
	.long	.LC280
	.long	.LC281
	.long	.LC282
	.long	.LC283
	.long	.LC284
	.long	.LC285
	.long	.LC286
	.long	.LC287
	.long	.LC288
	.long	.LC289
	.long	.LC290
	.long	.LC291
	.long	.LC292
	.long	.LC293
	.long	.LC294
	.long	.LC295
	.long	.LC296
	.long	.LC297
	.long	.LC298
	.long	.LC299
	.long	.LC300
	.long	.LC301
	.long	.LC302
	.long	.LC303
	.long	.LC304
	.long	.LC305
	.long	.LC306
	.long	.LC307
	.long	.LC308
	.long	.LC309
	.long	.LC310
	.long	.LC311
	.long	.LC312
	.long	.LC313
	.long	.LC314
	.long	.LC315
	.long	.LC316
	.long	.LC317
	.long	.LC318
	.long	.LC319
	.long	.LC320
	.long	.LC321
	.long	.LC322
	.long	.LC323
	.long	.LC324
	.long	.LC325
	.long	.LC326
	.long	.LC327
	.long	.LC328
	.long	.LC329
	.long	.LC330
	.long	.LC331
	.long	.LC332
	.long	.LC333
	.long	.LC334
	.long	.LC335
	.long	.LC336
	.long	.LC337
	.long	.LC338
	.long	.LC339
	.long	.LC340
	.long	.LC341
	.long	.LC342
	.long	.LC343
	.long	.LC344
	.long	.LC345
	.long	.LC346
	.long	.LC347
	.long	.LC348
	.long	.LC349
	.long	.LC350
	.long	.LC351
	.long	.LC352
	.long	.LC353
	.long	.LC354
	.long	.LC355
	.long	.LC356
	.long	.LC357
	.long	.LC358
	.long	.LC359
	.long	.LC360
	.text
	.type	get_pointer_alignment, @function
get_pointer_alignment:
.LFB15:
	.file 1 "../../../kg++fe/gnu/builtins.c"
	.loc 1 181 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$92, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 184 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2
	.loc 1 185 0
	movl	$0, -64(%ebp)
	jmp	.L4
.L2:
	.loc 1 187 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 188 0
	movl	-24(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-72(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jbe	.L5
	movl	-72(%ebp), %eax
	movl	%eax, -68(%ebp)
.L5:
	movl	-68(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L40
.L6:
.L40:
	.loc 1 192 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	cmpl	$118, -60(%ebp)
	ja	.L11
	cmpl	$116, -60(%ebp)
	jae	.L9
	cmpl	$60, -60(%ebp)
	je	.L8
	jmp	.L7
.L11:
	cmpl	$123, -60(%ebp)
	je	.L10
	jmp	.L7
.L9:
	.loc 1 197 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 198 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L12
	.loc 1 199 0
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L4
.L12:
	.loc 1 201 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 202 0
	movl	-20(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-80(%ebp), %eax
	cmpl	%eax, -76(%ebp)
	jbe	.L14
	movl	-80(%ebp), %eax
	movl	%eax, -76(%ebp)
.L14:
	movl	-76(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 203 0
	jmp	.L6
.L8:
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L18
	.loc 1 210 0
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L4
.L19:
	.loc 1 215 0
	shrl	12(%ebp)
.L18:
	.loc 1 212 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	12(%ebp), %eax
	shrl	$3, %eax
	subl	$1, %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L19
	.loc 1 217 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 218 0
	jmp	.L6
.L10:
	.loc 1 222 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 223 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L21
	.loc 1 224 0
	movl	$32, -24(%ebp)
	jmp	.L23
.L21:
	.loc 1 225 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L24
	.loc 1 226 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -24(%ebp)
	jmp	.L23
.L24:
	.loc 1 228 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	jne	.L23
	.loc 1 229 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L27
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L29
.L27:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L30
	movl	$64, -44(%ebp)
	jmp	.L32
.L30:
	movl	$32, -44(%ebp)
.L32:
	movl	-44(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L29
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L34
	movl	$64, -40(%ebp)
	jmp	.L36
.L34:
	movl	$32, -40(%ebp)
.L36:
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L37
.L29:
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
.L37:
	movl	-48(%ebp), %eax
	movl	%eax, -24(%ebp)
.L23:
	.loc 1 231 0
	movl	-24(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-84(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jbe	.L38
	movl	-84(%ebp), %eax
	movl	%eax, -36(%ebp)
.L38:
	movl	-36(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L4
.L7:
	.loc 1 234 0
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
.L4:
	.loc 1 236 0
	movl	-64(%ebp), %eax
	.loc 1 237 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	get_pointer_alignment, .-get_pointer_alignment
	.section	.rodata
	.align 4
.LC361:
	.string	"offset outside bounds of constant string"
	.text
	.type	c_strlen, @function
c_strlen:
.LFB16:
	.loc 1 259 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%edi
.LCFI8:
	pushl	%esi
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$76, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 265 0
	jmp	.L42
.L43:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L42:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L44
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L44
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L47
.L44:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L47
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L43
.L47:
	.loc 1 266 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	jne	.L49
	cmpl	$0, 12(%ebp)
	jne	.L51
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L49
.L51:
.LBB2:
	.loc 1 271 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_strlen
	movl	%eax, -28(%ebp)
	.loc 1 272 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_strlen
	movl	%eax, -24(%ebp)
	.loc 1 273 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L49
	.loc 1 274 0
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L54
.L49:
.LBE2:
	.loc 1 277 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L55
	cmpl	$0, 12(%ebp)
	jne	.L57
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L55
.L57:
	.loc 1 279 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
.L55:
	.loc 1 281 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_constant@PLT
	movl	%eax, 8(%ebp)
	.loc 1 282 0
	cmpl	$0, 8(%ebp)
	jne	.L59
	.loc 1 283 0
	movl	$0, -60(%ebp)
	jmp	.L54
.L59:
	.loc 1 285 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 286 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 288 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	.L61
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L61
.LBB3:
	.loc 1 295 0
	movl	$0, -20(%ebp)
	jmp	.L64
.L65:
	.loc 1 296 0
	movl	-20(%ebp), %eax
	addl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L66
	.loc 1 297 0
	movl	$0, -60(%ebp)
	jmp	.L54
.L66:
	.loc 1 295 0
	addl	$1, -20(%ebp)
.L64:
	movl	-20(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L65
	.loc 1 306 0
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, -60(%ebp)
	jmp	.L54
.L61:
.LBE3:
	.loc 1 311 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jne	.L69
	.loc 1 312 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L71
.L69:
	.loc 1 313 0
	movl	-40(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L72
	.loc 1 314 0
	movl	$-1, -48(%ebp)
	movl	$-1, -44(%ebp)
	jmp	.L71
.L72:
	.loc 1 316 0
	movl	-40(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
.L71:
	.loc 1 320 0
	cmpl	$0, -44(%ebp)
	js	.L74
	movl	-36(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %edi
	cmpl	-44(%ebp), %edi
	jg	.L76
	movl	-52(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	.L74
	movl	-56(%ebp), %edx
	cmpl	-48(%ebp), %edx
	jae	.L76
.L74:
	.loc 1 322 0
	leal	.LC361@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 323 0
	movl	$0, -60(%ebp)
	jmp	.L54
.L76:
	.loc 1 332 0
	movl	-48(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -64(%ebp)
	movl	$0, %eax
	cld
	movl	-64(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	$0, %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -60(%ebp)
.L54:
	movl	-60(%ebp), %eax
	.loc 1 333 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	c_strlen, .-c_strlen
	.type	c_getstr, @function
c_getstr:
.LFB17:
	.loc 1 341 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%esi
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$32, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 344 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_constant@PLT
	movl	%eax, 8(%ebp)
	.loc 1 345 0
	cmpl	$0, 8(%ebp)
	jne	.L80
	.loc 1 346 0
	movl	$0, -28(%ebp)
	jmp	.L82
.L80:
	.loc 1 348 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L83
	.loc 1 349 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L82
.L83:
	.loc 1 350 0
	movl	-12(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L85
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-12(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jle	.L87
.L85:
	.loc 1 352 0
	movl	$0, -28(%ebp)
	jmp	.L82
.L87:
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	24(%eax), %esi
	movl	-12(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	%eax, %esi
	movl	%esi, -28(%ebp)
.L82:
	movl	-28(%ebp), %eax
	.loc 1 355 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE17:
	.size	c_getstr, .-c_getstr
	.section	.rodata
	.type	__FUNCTION__.14768, @object
	.size	__FUNCTION__.14768, 10
__FUNCTION__.14768:
	.string	"c_readstr"
	.align 4
.LC362:
	.string	"../../../kg++fe/gnu/builtins.c"
	.text
	.type	c_readstr, @function
c_readstr:
.LFB18:
	.loc 1 364 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%edi
.LCFI19:
	pushl	%esi
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$76, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 369 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L90
	.loc 1 370 0
	leal	__FUNCTION__.14768@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$370, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L90:
	.loc 1 371 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 372 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 1 373 0
	movl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 374 0
	movl	$0, -24(%ebp)
	jmp	.L92
.L93:
	.loc 1 376 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 377 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L94
	.loc 1 378 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
.L94:
	.loc 1 382 0
	sall	$3, -20(%ebp)
	.loc 1 383 0
	cmpl	$128, -20(%ebp)
	jbe	.L96
	.loc 1 384 0
	leal	__FUNCTION__.14768@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$384, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L96:
	.loc 1 385 0
	movl	-32(%ebp), %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L98
	.loc 1 386 0
	movl	-24(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L98:
	.loc 1 387 0
	movl	-20(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	-48(%ebp,%eax,8), %edx
	movl	-44(%ebp,%eax,8), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L102
	movl	%esi, %edi
	xorl	%esi, %esi
.L102:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	%eax, -48(%ebp,%ecx,8)
	movl	%edx, -44(%ebp,%ecx,8)
	.loc 1 374 0
	addl	$1, -24(%ebp)
.L92:
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-24(%ebp), %eax
	ja	.L93
	.loc 1 389 0
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	immed_double_const@PLT
	.loc 1 390 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	c_readstr, .-c_readstr
	.type	target_char_cast, @function
target_char_cast:
.LFB19:
	.loc 1 400 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$36, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 403 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L104
	.loc 1 407 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 409 0
	movzbl	-24(%ebp),%eax
	movl	-20(%ebp), %edx
	andl	$0, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 411 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 413 0
	movzbl	-16(%ebp),%eax
	movl	-12(%ebp), %edx
	andl	$0, %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 415 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, %ecx
	xorl	-12(%ebp), %ecx
	xorl	-16(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L106
	jmp	.L107
.L104:
	.loc 1 405 0
	movl	$1, -28(%ebp)
	jmp	.L108
.L106:
	.loc 1 416 0
	movl	$1, -28(%ebp)
	jmp	.L108
.L107:
	.loc 1 418 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 419 0
	movl	$0, -28(%ebp)
.L108:
	movl	-28(%ebp), %eax
	.loc 1 420 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	target_char_cast, .-target_char_cast
.globl expand_builtin_return_addr
	.type	expand_builtin_return_addr, @function
expand_builtin_return_addr:
.LFB20:
	.loc 1 431 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$68, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 452 0
	movl	$0, -8(%ebp)
	jmp	.L111
.L112:
	.loc 1 459 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L113
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L113
	movl	$5, -56(%ebp)
	jmp	.L116
.L113:
	movl	$4, -56(%ebp)
.L116:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 16(%ebp)
	.loc 1 460 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L117
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L117
	movl	$5, -52(%ebp)
	jmp	.L120
.L117:
	movl	$4, -52(%ebp)
.L120:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 16(%ebp)
	.loc 1 461 0
	call	get_frame_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 462 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, 16(%ebp)
	.loc 1 452 0
	addl	$1, -8(%ebp)
.L111:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L112
	.loc 1 466 0
	cmpl	$297, 8(%ebp)
	jne	.L122
	.loc 1 467 0
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L124
.L122:
	.loc 1 472 0
	cmpl	$0, 12(%ebp)
	jne	.L125
	call	leaf_function_p@PLT
	testl	%eax, %eax
	je	.L127
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L129
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L129
	movl	$5, -36(%ebp)
	jmp	.L132
.L129:
	movl	$4, -36(%ebp)
.L132:
	movl	$31, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -40(%ebp)
	jmp	.L133
.L127:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L134
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L134
	movl	$5, -32(%ebp)
	jmp	.L137
.L134:
	movl	$4, -32(%ebp)
.L137:
	movl	$75, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L138
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L138
	movl	$5, -24(%ebp)
	jmp	.L141
.L138:
	movl	$4, -24(%ebp)
.L141:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -40(%ebp)
.L133:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L142
.L125:
	movl	$0, -44(%ebp)
.L142:
	movl	-44(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 479 0
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
.L124:
	movl	-48(%ebp), %eax
	.loc 1 480 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	expand_builtin_return_addr, .-expand_builtin_return_addr
	.data
	.align 8
	.type	setjmp_alias_set, @object
	.size	setjmp_alias_set, 8
setjmp_alias_set:
	.long	-1
	.long	-1
	.text
.globl expand_builtin_setjmp_setup
	.type	expand_builtin_setjmp_setup, @function
expand_builtin_setjmp_setup:
.LFB21:
	.loc 1 493 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%esi
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$80, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 494 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L145
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L145
	movl	$5, -68(%ebp)
	jmp	.L148
.L145:
	movl	$4, -68(%ebp)
.L148:
	movl	-68(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 498 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L149
	.loc 1 499 0
	call	new_alias_set@PLT
	movl	%eax, setjmp_alias_set@GOTOFF(%ebx)
	movl	%edx, 4+setjmp_alias_set@GOTOFF(%ebx)
.L149:
	.loc 1 506 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -64(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L151
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L151
	movl	$5, -60(%ebp)
	jmp	.L154
.L151:
	movl	$4, -60(%ebp)
.L154:
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 8(%ebp)
	.loc 1 508 0
	call	emit_queue@PLT
	.loc 1 518 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L155
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L155
	movl	$5, -56(%ebp)
	jmp	.L158
.L155:
	movl	$4, -56(%ebp)
.L158:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -12(%ebp)
	.loc 1 519 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 520 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 522 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L159
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L159
	movl	$5, -52(%ebp)
	jmp	.L162
.L159:
	movl	$4, -52(%ebp)
.L162:
	movl	-52(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -48(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L163
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L163
	movl	$5, -44(%ebp)
	jmp	.L166
.L163:
	movl	$4, -44(%ebp)
.L166:
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -12(%ebp)
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 525 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L167
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L167
	movl	$5, -40(%ebp)
	jmp	.L170
.L167:
	movl	$4, -40(%ebp)
.L170:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -36(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L171
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L171
	movl	$5, -32(%ebp)
	jmp	.L174
.L171:
	movl	$4, -32(%ebp)
.L174:
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 528 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L175
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L175
	movl	$5, -28(%ebp)
	jmp	.L178
.L175:
	movl	$4, -28(%ebp)
.L178:
	movl	-28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -20(%ebp)
	.loc 1 531 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 532 0
	movl	$0, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	emit_stack_save@PLT
	.loc 1 536 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L179
	.loc 1 537 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_builtin_setjmp_setup@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L179:
	.loc 1 542 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	orl	$16, %eax
	movb	%al, 296(%edx)
	.loc 1 546 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	orl	$1, %eax
	movb	%al, 297(%edx)
	.loc 1 547 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE21:
	.size	expand_builtin_setjmp_setup, .-expand_builtin_setjmp_setup
	.section	.rodata
	.align 32
	.type	elim_regs.15028, @object
	.size	elim_regs.15028, 72
elim_regs.15028:
	.long	0
	.long	29
	.long	0
	.long	30
	.long	0
	.long	17
	.long	75
	.long	29
	.long	75
	.long	30
	.long	75
	.long	17
	.long	1
	.long	29
	.long	1
	.long	30
	.long	1
	.long	17
.LC363:
	.string	""
	.text
.globl expand_builtin_setjmp_receiver
	.type	expand_builtin_setjmp_receiver, @function
expand_builtin_setjmp_receiver:
.LFB22:
	.loc 1 555 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$36, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 558 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 562 0
	movl	static_chain_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 570 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 573 0
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L183
.LBB4:
	.loc 1 579 0
	movl	$0, -8(%ebp)
	jmp	.L185
.L186:
	.loc 1 580 0
	movl	-8(%ebp), %eax
	movl	elim_regs.15028@GOTOFF(%ebx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L187
	movl	-8(%ebp), %eax
	movl	4+elim_regs.15028@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L189
	movl	$17, -24(%ebp)
	jmp	.L191
.L189:
	movl	$30, -24(%ebp)
.L191:
	movl	-24(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	je	.L192
.L187:
	.loc 1 579 0
	addl	$1, -8(%ebp)
.L185:
	cmpl	$8, -8(%ebp)
	jbe	.L186
.L192:
	.loc 1 584 0
	cmpl	$9, -8(%ebp)
	jne	.L183
	.loc 1 589 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_arg_pointer_save_area@PLT
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L183:
.LBE4:
	.loc 1 612 0
	leal	.LC363@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$50, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 613 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	expand_builtin_setjmp_receiver, .-expand_builtin_setjmp_receiver
	.type	expand_builtin_setjmp, @function
expand_builtin_setjmp:
.LFB23:
	.loc 1 629 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%esi
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$48, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 632 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L196
	.loc 1 633 0
	movl	$0, -28(%ebp)
	jmp	.L198
.L196:
	.loc 1 635 0
	cmpl	$0, 12(%ebp)
	je	.L199
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L199
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L202
.L199:
	.loc 1 637 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 12(%ebp)
.L202:
	.loc 1 639 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 641 0
	call	gen_label_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 642 0
	call	gen_label_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 644 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_setjmp_setup@PLT
	.loc 1 647 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 648 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 649 0
	call	emit_barrier@PLT
	.loc 1 650 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 652 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_setjmp_receiver@PLT
	.loc 1 655 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 656 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 662 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	orl	$1, %eax
	movb	%al, 297(%edx)
	.loc 1 663 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	144(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 144(%esi)
	.loc 1 666 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L198:
	movl	-28(%ebp), %eax
	.loc 1 667 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE23:
	.size	expand_builtin_setjmp, .-expand_builtin_setjmp
	.section	.rodata
	.type	__FUNCTION__.15105, @object
	.size	__FUNCTION__.15105, 23
__FUNCTION__.15105:
	.string	"expand_builtin_longjmp"
	.text
.globl expand_builtin_longjmp
	.type	expand_builtin_longjmp, @function
expand_builtin_longjmp:
.LFB24:
	.loc 1 681 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$84, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 683 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L205
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L205
	movl	$5, -64(%ebp)
	jmp	.L208
.L205:
	movl	$4, -64(%ebp)
.L208:
	movl	-64(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 685 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L209
	.loc 1 686 0
	call	new_alias_set@PLT
	movl	%eax, setjmp_alias_set@GOTOFF(%ebx)
	movl	%edx, 4+setjmp_alias_set@GOTOFF(%ebx)
.L209:
	.loc 1 693 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L211
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L211
	movl	$5, -60(%ebp)
	jmp	.L214
.L211:
	movl	$4, -60(%ebp)
.L214:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 8(%ebp)
	.loc 1 700 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L215
	.loc 1 701 0
	leal	__FUNCTION__.15105@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$701, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L215:
	.loc 1 703 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	orl	$32, %eax
	movb	%al, 296(%edx)
	.loc 1 705 0
	call	get_last_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 707 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L217
	.loc 1 708 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_builtin_longjmp@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	jmp	.L219
.L217:
	.loc 1 712 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L220
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L220
	movl	$5, -56(%ebp)
	jmp	.L223
.L220:
	movl	$4, -56(%ebp)
.L223:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -28(%ebp)
	.loc 1 713 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L224
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L224
	movl	$5, -52(%ebp)
	jmp	.L227
.L224:
	movl	$4, -52(%ebp)
.L227:
	movl	-52(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -48(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L228
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L228
	movl	$5, -44(%ebp)
	jmp	.L231
.L228:
	movl	$4, -44(%ebp)
.L231:
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -24(%ebp)
	.loc 1 716 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L232
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L232
	movl	$5, -40(%ebp)
	jmp	.L235
.L232:
	movl	$4, -40(%ebp)
.L235:
	movl	-40(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -20(%ebp)
	.loc 1 718 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 719 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 720 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 733 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -24(%ebp)
	.loc 1 735 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	.loc 1 736 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	emit_stack_restore@PLT
	.loc 1 738 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 739 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 740 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_indirect_jump@PLT
.L219:
	.loc 1 749 0
	call	get_last_insn@PLT
	movl	%eax, -16(%ebp)
	jmp	.L236
.L237:
	.loc 1 751 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L238
	.loc 1 752 0
	leal	__FUNCTION__.15105@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$752, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L238:
	.loc 1 753 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L240
	.loc 1 755 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$26, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 757 0
	jmp	.L244
.L240:
	.loc 1 759 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L244
	.loc 1 749 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L236:
	cmpl	$0, -16(%ebp)
	jne	.L237
.L244:
	.loc 1 762 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	expand_builtin_longjmp, .-expand_builtin_longjmp
	.section	.rodata
	.align 4
.LC364:
	.string	"second arg to `__builtin_prefetch' must be a constant"
	.align 4
.LC365:
	.string	"invalid second arg to __builtin_prefetch; using zero"
	.align 4
.LC366:
	.string	"third arg to `__builtin_prefetch' must be a constant"
	.align 4
.LC367:
	.string	"invalid third arg to __builtin_prefetch; using zero"
	.text
	.type	expand_builtin_prefetch, @function
expand_builtin_prefetch:
.LFB25:
	.loc 1 771 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$84, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 775 0
	movl	$0, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	je	.L288
	.loc 1 778 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 782 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L248
	.loc 1 784 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 785 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L250
	.loc 1 786 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L253
.L250:
	.loc 1 788 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$3, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -24(%ebp)
	jmp	.L253
.L248:
	.loc 1 792 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 793 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$3, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -24(%ebp)
.L253:
	.loc 1 797 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L254
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L254
	movl	$5, -68(%ebp)
	jmp	.L257
.L254:
	movl	$4, -68(%ebp)
.L257:
	movl	$0, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 800 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L258
	.loc 1 802 0
	leal	.LC364@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 803 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
.L258:
	.loc 1 805 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 807 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L260
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L260
	.loc 1 809 0
	leal	.LC365@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 810 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -16(%ebp)
.L260:
	.loc 1 814 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L263
	.loc 1 816 0
	leal	.LC366@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 817 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
.L263:
	.loc 1 819 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 821 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L265
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	cmpl	$0, -60(%ebp)
	js	.L267
	cmpl	$0, -60(%ebp)
	jg	.L265
	cmpl	$3, -64(%ebp)
	jbe	.L267
.L265:
	.loc 1 823 0
	leal	.LC367@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 824 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -12(%ebp)
.L267:
	.loc 1 828 0
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L269
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L269
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L272
.L269:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L272
	.loc 1 830 0
	movl	insn_data@GOT(%ebx), %eax
	movl	10492(%eax), %eax
	movl	(%eax), %edx
	movl	insn_data@GOT(%ebx), %eax
	movl	10492(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L274
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L276
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L276
	movl	$5, -48(%ebp)
	jmp	.L279
.L276:
	movl	$4, -48(%ebp)
.L279:
	movl	-48(%ebp), %ecx
	cmpl	%ecx, -52(%ebp)
	je	.L280
.L274:
	.loc 1 839 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L281
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L281
	movl	$5, -44(%ebp)
	jmp	.L284
.L281:
	movl	$4, -44(%ebp)
.L284:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -20(%ebp)
.L280:
	.loc 1 841 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_prefetch@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 828 0
	jmp	.L285
.L272:
	.loc 1 845 0
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, -20(%ebp)
.L285:
	.loc 1 848 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L288
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L288
	.loc 1 849 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L288:
	.loc 1 850 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	expand_builtin_prefetch, .-expand_builtin_prefetch
	.type	get_memory_rtx, @function
get_memory_rtx:
.LFB26:
	.loc 1 858 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$36, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 859 0
	movl	ptr_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$3, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 867 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -8(%ebp)
	.loc 1 872 0
	jmp	.L290
.L291:
	.loc 1 875 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L290:
	.loc 1 872 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L292
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L292
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L295
.L292:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L291
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L291
.L295:
	.loc 1 877 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L297
	.loc 1 879 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 880 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	jmp	.L299
.L297:
	.loc 1 882 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L300
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L299
.L300:
	.loc 1 884 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
	.loc 1 886 0
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
.L299:
	.loc 1 889 0
	movl	-8(%ebp), %eax
	.loc 1 890 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	get_memory_rtx, .-get_memory_rtx
.globl apply_args_register_offset
	.type	apply_args_register_offset, @function
apply_args_register_offset:
.LFB27:
	.loc 1 921 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$4, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 922 0
	call	apply_args_size
	.loc 1 929 0
	movl	8(%ebp), %eax
	movl	apply_args_reg_offset@GOTOFF(%ebx,%eax,4), %eax
	.loc 1 930 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	apply_args_register_offset, .-apply_args_register_offset
	.section	.rodata
	.type	__FUNCTION__.15385, @object
	.size	__FUNCTION__.15385, 16
__FUNCTION__.15385:
	.string	"apply_args_size"
	.data
	.align 4
	.type	size.15368, @object
	.size	size.15368, 4
size.15368:
	.long	-1
	.text
	.type	apply_args_size, @function
apply_args_size:
.LFB28:
	.loc 1 937 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$84, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 944 0
	movl	size.15368@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jns	.L306
	.loc 1 947 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L308
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L308
	movl	$5, -72(%ebp)
	jmp	.L311
.L308:
	movl	$4, -72(%ebp)
.L311:
	movl	-72(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, size.15368@GOTOFF(%ebx)
	.loc 1 951 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L312
	.loc 1 952 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L314
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L314
	movl	$5, -68(%ebp)
	jmp	.L317
.L314:
	movl	$4, -68(%ebp)
.L317:
	movl	-68(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	size.15368@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, size.15368@GOTOFF(%ebx)
.L312:
	.loc 1 954 0
	movl	$0, -20(%ebp)
	jmp	.L318
.L319:
	.loc 1 955 0
	movl	-20(%ebp), %eax
	subl	$4, %eax
	movl	%eax, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L320
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L322
.L320:
	movl	$3, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L323
.L322:
	movl	$7, -56(%ebp)
	movl	$0, -52(%ebp)
.L323:
	movl	-52(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jb	.L324
	movl	-52(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	ja	.L326
	movl	-56(%ebp), %eax
	cmpl	%eax, -64(%ebp)
	jbe	.L324
.L326:
	movl	-20(%ebp), %eax
	subl	$44, %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L327
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L329
.L327:
	movl	$3, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L330
.L329:
	movl	$7, -40(%ebp)
	movl	$0, -36(%ebp)
.L330:
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	ja	.L331
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jb	.L333
	movl	-40(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	ja	.L331
.L333:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L334
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L336
.L334:
	movl	$1, -28(%ebp)
	jmp	.L337
.L336:
	movl	$2, -28(%ebp)
.L337:
	movl	-20(%ebp), %eax
	movl	$0, %edx
	divl	-28(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L331
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L331
.L324:
	movl	-20(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L331
.LBB5:
	.loc 1 959 0
	movl	$0, -12(%ebp)
	.loc 1 961 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 962 0
	jmp	.L340
.L341:
	.loc 1 964 0
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L342
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	$1, %eax
	jne	.L342
	.loc 1 966 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L342:
	.loc 1 963 0
	movl	-16(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L340:
	.loc 1 962 0
	cmpl	$0, -16(%ebp)
	jne	.L341
	.loc 1 968 0
	cmpl	$0, -12(%ebp)
	jne	.L346
	.loc 1 969 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 970 0
	jmp	.L348
.L349:
	.loc 1 972 0
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L350
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$57, (%esp)
	call	have_insn_for@PLT
	testl	%eax, %eax
	je	.L350
	.loc 1 974 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L350:
	.loc 1 971 0
	movl	-16(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L348:
	.loc 1 970 0
	cmpl	$0, -16(%ebp)
	jne	.L349
.L346:
	.loc 1 976 0
	cmpl	$0, -12(%ebp)
	jne	.L353
	.loc 1 977 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 978 0
	jmp	.L355
.L356:
	.loc 1 980 0
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L357
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$57, (%esp)
	call	have_insn_for@PLT
	testl	%eax, %eax
	je	.L357
	.loc 1 982 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L357:
	.loc 1 979 0
	movl	-16(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L355:
	.loc 1 978 0
	cmpl	$0, -16(%ebp)
	jne	.L356
.L353:
	.loc 1 984 0
	cmpl	$0, -12(%ebp)
	jne	.L360
	.loc 1 985 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 986 0
	jmp	.L362
.L363:
	.loc 1 988 0
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L364
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$57, (%esp)
	call	have_insn_for@PLT
	testl	%eax, %eax
	je	.L364
	.loc 1 990 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L364:
	.loc 1 987 0
	movl	-16(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L362:
	.loc 1 986 0
	cmpl	$0, -16(%ebp)
	jne	.L363
.L360:
	.loc 1 992 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 993 0
	cmpl	$0, -16(%ebp)
	jne	.L367
	.loc 1 994 0
	leal	__FUNCTION__.15385@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$994, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L367:
	.loc 1 996 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -24(%ebp)
	.loc 1 997 0
	movl	size.15368@GOTOFF(%ebx), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L369
	.loc 1 998 0
	movl	size.15368@GOTOFF(%ebx), %eax
	addl	-24(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	imull	-24(%ebp), %eax
	movl	%eax, size.15368@GOTOFF(%ebx)
.L369:
	.loc 1 999 0
	movl	-20(%ebp), %edx
	movl	size.15368@GOTOFF(%ebx), %eax
	movl	%eax, apply_args_reg_offset@GOTOFF(%ebx,%edx,4)
	.loc 1 1000 0
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	size.15368@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, size.15368@GOTOFF(%ebx)
	.loc 1 1001 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, apply_args_mode@GOTOFF(%ebx,%edx,4)
	.loc 1 955 0
	jmp	.L371
.L331:
.LBE5:
	.loc 1 1005 0
	movl	-20(%ebp), %eax
	movl	$0, apply_args_mode@GOTOFF(%ebx,%eax,4)
	.loc 1 1006 0
	movl	-20(%ebp), %eax
	movl	$0, apply_args_reg_offset@GOTOFF(%ebx,%eax,4)
.L371:
	.loc 1 954 0
	addl	$1, -20(%ebp)
.L318:
	cmpl	$175, -20(%ebp)
	jbe	.L319
.L306:
	.loc 1 1009 0
	movl	size.15368@GOTOFF(%ebx), %eax
	.loc 1 1010 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	apply_args_size, .-apply_args_size
	.section	.rodata
	.type	__FUNCTION__.15550, @object
	.size	__FUNCTION__.15550, 18
__FUNCTION__.15550:
	.string	"apply_result_size"
	.data
	.align 4
	.type	size.15533, @object
	.size	size.15533, 4
size.15533:
	.long	-1
	.text
	.type	apply_result_size, @function
apply_result_size:
.LFB29:
	.loc 1 1017 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$36, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1023 0
	movl	size.15533@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jns	.L374
	.loc 1 1025 0
	movl	$0, size.15533@GOTOFF(%ebx)
	.loc 1 1027 0
	movl	$0, -16(%ebp)
	jmp	.L376
.L377:
	.loc 1 1028 0
	cmpl	$2, -16(%ebp)
	je	.L378
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L380
	movl	$2, -28(%ebp)
	jmp	.L382
.L380:
	movl	$32, -28(%ebp)
.L382:
	movl	-28(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L378
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L384
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L386
.L384:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L386
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L388
	movl	$4, -24(%ebp)
	jmp	.L390
.L388:
	movl	$34, -24(%ebp)
.L390:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L386
.L378:
.LBB6:
	.loc 1 1032 0
	movl	$0, -8(%ebp)
	.loc 1 1034 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1035 0
	jmp	.L391
.L392:
	.loc 1 1037 0
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L393
	.loc 1 1038 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L393:
	.loc 1 1036 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L391:
	.loc 1 1035 0
	cmpl	$6, -12(%ebp)
	jne	.L392
	.loc 1 1040 0
	cmpl	$0, -8(%ebp)
	jne	.L396
	.loc 1 1041 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1042 0
	jmp	.L398
.L399:
	.loc 1 1044 0
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L400
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$57, (%esp)
	call	have_insn_for@PLT
	testl	%eax, %eax
	je	.L400
	.loc 1 1046 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L400:
	.loc 1 1043 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L398:
	.loc 1 1042 0
	cmpl	$0, -12(%ebp)
	jne	.L399
.L396:
	.loc 1 1048 0
	cmpl	$0, -8(%ebp)
	jne	.L403
	.loc 1 1049 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1050 0
	jmp	.L405
.L406:
	.loc 1 1052 0
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L407
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$57, (%esp)
	call	have_insn_for@PLT
	testl	%eax, %eax
	je	.L407
	.loc 1 1054 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L407:
	.loc 1 1051 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L405:
	.loc 1 1050 0
	cmpl	$0, -12(%ebp)
	jne	.L406
.L403:
	.loc 1 1056 0
	cmpl	$0, -8(%ebp)
	jne	.L410
	.loc 1 1057 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1058 0
	jmp	.L412
.L413:
	.loc 1 1060 0
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L414
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$57, (%esp)
	call	have_insn_for@PLT
	testl	%eax, %eax
	je	.L414
	.loc 1 1062 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L414:
	.loc 1 1059 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L412:
	.loc 1 1058 0
	cmpl	$0, -12(%ebp)
	jne	.L413
.L410:
	.loc 1 1064 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1065 0
	cmpl	$0, -12(%ebp)
	jne	.L417
	.loc 1 1066 0
	leal	__FUNCTION__.15550@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1066, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L417:
	.loc 1 1068 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1069 0
	movl	size.15533@GOTOFF(%ebx), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-20(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L419
	.loc 1 1070 0
	movl	size.15533@GOTOFF(%ebx), %eax
	addl	-20(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-20(%ebp)
	imull	-20(%ebp), %eax
	movl	%eax, size.15533@GOTOFF(%ebx)
.L419:
	.loc 1 1071 0
	movl	-12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	size.15533@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, size.15533@GOTOFF(%ebx)
	.loc 1 1072 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, apply_result_mode@GOTOFF(%ebx,%edx,4)
	.loc 1 1028 0
	jmp	.L421
.L386:
.LBE6:
	.loc 1 1075 0
	movl	-16(%ebp), %eax
	movl	$0, apply_result_mode@GOTOFF(%ebx,%eax,4)
.L421:
	.loc 1 1027 0
	addl	$1, -16(%ebp)
.L376:
	cmpl	$175, -16(%ebp)
	jle	.L377
.L374:
	.loc 1 1083 0
	movl	size.15533@GOTOFF(%ebx), %eax
	.loc 1 1084 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	apply_result_size, .-apply_result_size
	.type	result_vector, @function
result_vector:
.LFB30:
	.loc 1 1095 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$100, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1095 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1099 0
	subl	$720, %esp
	leal	24(%esp), %edx
	movl	%edx, -68(%ebp)
	movl	-68(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1101 0
	movl	$0, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1102 0
	movl	$0, -40(%ebp)
	jmp	.L424
.L425:
	.loc 1 1103 0
	movl	-40(%ebp), %eax
	movl	apply_result_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L426
	.loc 1 1105 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1106 0
	movl	-36(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-32(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L428
	.loc 1 1107 0
	movl	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-32(%ebp)
	imull	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
.L428:
	.loc 1 1108 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1109 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1110 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	-12(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -64(%ebp)
	cmpl	$0, 8(%ebp)
	je	.L430
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -60(%ebp)
	jmp	.L432
.L430:
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -60(%ebp)
.L432:
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%edx, (%eax)
	addl	$1, -28(%ebp)
	.loc 1 1113 0
	movl	-24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -36(%ebp)
.L426:
	.loc 1 1102 0
	addl	$1, -40(%ebp)
.L424:
	cmpl	$175, -40(%ebp)
	jle	.L425
	.loc 1 1115 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtvec_v@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$49, (%esp)
	call	gen_rtx_fmt_E@PLT
	.loc 1 1116 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L435
	call	__stack_chk_fail_local
.L435:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE30:
	.size	result_vector, .-result_vector
	.type	expand_builtin_apply_args_1, @function
expand_builtin_apply_args_1:
.LFB31:
	.loc 1 1124 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$100, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1131 0
	call	apply_args_size
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$-1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1134 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L437
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L437
	movl	$5, -80(%ebp)
	jmp	.L440
.L437:
	movl	$4, -80(%ebp)
.L440:
	movl	-80(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1135 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L441
	.loc 1 1136 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L443
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L443
	movl	$5, -76(%ebp)
	jmp	.L446
.L443:
	movl	$4, -76(%ebp)
.L446:
	movl	-76(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%ebp)
.L441:
	.loc 1 1139 0
	movl	$0, -20(%ebp)
	jmp	.L447
.L448:
	.loc 1 1140 0
	movl	-20(%ebp), %eax
	movl	apply_args_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L449
.LBB7:
	.loc 1 1144 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1145 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L451
	.loc 1 1146 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	imull	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L451:
	.loc 1 1148 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1150 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1151 0
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%ebp)
.L449:
.LBE7:
	.loc 1 1139 0
	addl	$1, -20(%ebp)
.L447:
	cmpl	$175, -20(%ebp)
	jle	.L448
	.loc 1 1155 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -72(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L454
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L454
	movl	$5, -68(%ebp)
	jmp	.L457
.L454:
	movl	$4, -68(%ebp)
.L457:
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	-72(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1157 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L458
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L458
	movl	$5, -64(%ebp)
	jmp	.L461
.L458:
	movl	$4, -64(%ebp)
.L461:
	movl	-64(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1161 0
	movl	struct_value_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L462
	.loc 1 1163 0
	movl	struct_value_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -60(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -52(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L464
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L464
	movl	$5, -48(%ebp)
	jmp	.L467
.L464:
	movl	$4, -48(%ebp)
.L467:
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	-60(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1165 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L468
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L468
	movl	$5, -44(%ebp)
	jmp	.L471
.L468:
	movl	$4, -44(%ebp)
.L471:
	movl	-44(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%ebp)
.L462:
	.loc 1 1169 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_addr_to_reg@PLT
	.loc 1 1170 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	expand_builtin_apply_args_1, .-expand_builtin_apply_args_1
	.type	expand_builtin_apply_args, @function
expand_builtin_apply_args:
.LFB32:
	.loc 1 1181 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$36, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1184 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L474
	.loc 1 1185 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L476
.L474:
.LBB8:
	.loc 1 1193 0
	call	start_sequence@PLT
	.loc 1 1194 0
	call	expand_builtin_apply_args_1
	movl	%eax, -12(%ebp)
	.loc 1 1195 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1196 0
	call	end_sequence@PLT
	.loc 1 1198 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1204 0
	call	push_topmost_sequence@PLT
	.loc 1 1205 0
	call	get_insns@PLT
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 1206 0
	call	pop_topmost_sequence@PLT
	.loc 1 1207 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L476:
	movl	-24(%ebp), %eax
.LBE8:
	.loc 1 1209 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	expand_builtin_apply_args, .-expand_builtin_apply_args
	.section	.rodata
	.type	__FUNCTION__.15851, @object
	.size	__FUNCTION__.15851, 21
__FUNCTION__.15851:
	.string	"expand_builtin_apply"
	.text
	.type	expand_builtin_apply, @function
expand_builtin_apply:
.LFB33:
	.loc 1 1217 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$164, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1221 0
	movl	$0, -64(%ebp)
	.loc 1 1222 0
	movl	$0, -68(%ebp)
	.loc 1 1230 0
	call	apply_result_size
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$-1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1233 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L479
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L479
	movl	$5, -140(%ebp)
	jmp	.L482
.L479:
	movl	$4, -140(%ebp)
.L482:
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1234 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L483
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L483
	movl	$5, -136(%ebp)
	jmp	.L486
.L483:
	movl	$4, -136(%ebp)
.L486:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1241 0
	call	emit_queue@PLT
	.loc 1 1246 0
	call	do_pending_stack_adjust@PLT
	.loc 1 1247 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1255 0
	movl	$0, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_save@PLT
	.loc 1 1262 0
	movl	$8, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	allocate_dynamic_stack_space@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1263 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1264 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L487
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L487
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L487
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L491
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L491
.L487:
	movl	$64, -132(%ebp)
	jmp	.L493
.L491:
	movl	$32, -132(%ebp)
.L493:
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 1265 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1266 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L494
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L494
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L494
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L498
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L498
.L494:
	movl	$64, -128(%ebp)
	jmp	.L500
.L498:
	movl	$32, -128(%ebp)
.L500:
	movl	-128(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 1267 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
	.loc 1 1270 0
	call	apply_args_size
	.loc 1 1271 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1272 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L501
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L501
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L501
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L505
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L505
.L501:
	movl	$64, -124(%ebp)
	jmp	.L507
.L505:
	movl	$32, -124(%ebp)
.L507:
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 1275 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L508
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L508
	movl	$5, -120(%ebp)
	jmp	.L511
.L508:
	movl	$4, -120(%ebp)
.L511:
	movl	-120(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 1276 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L512
	.loc 1 1277 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L514
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L514
	movl	$5, -116(%ebp)
	jmp	.L517
.L514:
	movl	$4, -116(%ebp)
.L517:
	movl	-116(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -60(%ebp)
.L512:
	.loc 1 1281 0
	movl	$0, -52(%ebp)
	jmp	.L518
.L519:
	.loc 1 1282 0
	movl	-52(%ebp), %eax
	movl	apply_args_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L520
	.loc 1 1284 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -56(%ebp)
	.loc 1 1285 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-56(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L522
	.loc 1 1286 0
	movl	-56(%ebp), %eax
	addl	-60(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-56(%ebp)
	imull	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
.L522:
	.loc 1 1287 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1288 0
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1289 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	use_reg@PLT
	.loc 1 1290 0
	movl	-48(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -60(%ebp)
.L520:
	.loc 1 1281 0
	addl	$1, -52(%ebp)
.L518:
	cmpl	$175, -52(%ebp)
	jle	.L519
	.loc 1 1295 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L525
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L525
	movl	$5, -112(%ebp)
	jmp	.L528
.L525:
	movl	$4, -112(%ebp)
.L528:
	movl	-112(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 1296 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L529
.LBB9:
	.loc 1 1298 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L531
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L531
	movl	$5, -108(%ebp)
	jmp	.L534
.L531:
	movl	$4, -108(%ebp)
.L534:
	movl	-108(%ebp), %edx
	movl	%edx, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1299 0
	movl	-60(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -100(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L535
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L535
	movl	$5, -92(%ebp)
	jmp	.L538
.L535:
	movl	$4, -92(%ebp)
.L538:
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1300 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1301 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L539
	.loc 1 1302 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	use_reg@PLT
.L539:
	.loc 1 1303 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L541
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L541
	movl	$5, -88(%ebp)
	jmp	.L544
.L541:
	movl	$4, -88(%ebp)
.L544:
	movl	-88(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -60(%ebp)
.L529:
.LBE9:
	.loc 1 1307 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prepare_call_address@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1312 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L545
	.loc 1 1313 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L547
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L547
	movl	$5, -84(%ebp)
	jmp	.L550
.L547:
	movl	$4, -84(%ebp)
.L550:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 8(%ebp)
.L545:
	.loc 1 1318 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	result_vector
	movl	%eax, -80(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L551
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L551
	movl	$5, -76(%ebp)
	jmp	.L554
.L551:
	movl	$4, -76(%ebp)
.L554:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_untyped_call@PLT
	movl	%eax, (%esp)
	call	emit_call_insn@PLT
	.loc 1 1350 0
	call	get_last_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1351 0
	jmp	.L555
.L556:
	.loc 1 1352 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L555:
	.loc 1 1351 0
	cmpl	$0, -24(%ebp)
	je	.L557
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L556
.L557:
	.loc 1 1355 0
	cmpl	$0, -24(%ebp)
	jne	.L559
	.loc 1 1356 0
	leal	__FUNCTION__.15851@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1356, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L559:
	.loc 1 1360 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L561
.LBB10:
	.loc 1 1364 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L563
.L564:
	.loc 1 1365 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L563:
	.loc 1 1364 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L564
	.loc 1 1368 0
	movl	-68(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L566
.L561:
.LBE10:
	.loc 1 1371 0
	movl	-68(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 76(%eax)
.L566:
	.loc 1 1379 0
	movl	-64(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_restore@PLT
	.loc 1 1381 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1384 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_addr_to_reg@PLT
	.loc 1 1385 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	expand_builtin_apply, .-expand_builtin_apply
	.type	expand_builtin_return, @function
expand_builtin_return:
.LFB34:
	.loc 1 1392 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$68, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1396 0
	movl	$0, -8(%ebp)
	.loc 1 1403 0
	call	apply_result_size
	.loc 1 1404 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1416 0
	movl	$0, -28(%ebp)
	.loc 1 1417 0
	movl	$0, -20(%ebp)
	jmp	.L569
.L570:
	.loc 1 1418 0
	movl	-20(%ebp), %eax
	movl	apply_result_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L571
	.loc 1 1420 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1421 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L573
	.loc 1 1422 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	imull	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L573:
	.loc 1 1423 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1424 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1426 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 1427 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1428 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1429 0
	call	end_sequence@PLT
	.loc 1 1430 0
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%ebp)
.L571:
	.loc 1 1417 0
	addl	$1, -20(%ebp)
.L569:
	cmpl	$175, -20(%ebp)
	jle	.L570
	.loc 1 1434 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1438 0
	call	expand_null_return@PLT
	.loc 1 1439 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	expand_builtin_return, .-expand_builtin_return
	.type	type_to_class, @function
type_to_class:
.LFB35:
	.loc 1 1446 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	subl	$12, %esp
.LCFI91:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1447 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$6, %eax
	movl	%eax, -12(%ebp)
	cmpl	$19, -12(%ebp)
	ja	.L578
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L597@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L597:
	.long	.L579@GOTOFF
	.long	.L580@GOTOFF
	.long	.L581@GOTOFF
	.long	.L582@GOTOFF
	.long	.L578@GOTOFF
	.long	.L583@GOTOFF
	.long	.L584@GOTOFF
	.long	.L585@GOTOFF
	.long	.L586@GOTOFF
	.long	.L587@GOTOFF
	.long	.L588@GOTOFF
	.long	.L589@GOTOFF
	.long	.L590@GOTOFF
	.long	.L591@GOTOFF
	.long	.L592@GOTOFF
	.long	.L593@GOTOFF
	.long	.L594@GOTOFF
	.long	.L594@GOTOFF
	.long	.L595@GOTOFF
	.long	.L596@GOTOFF
	.text
.L579:
	.loc 1 1449 0
	movl	$0, -8(%ebp)
	jmp	.L598
.L580:
	.loc 1 1450 0
	movl	$1, -8(%ebp)
	jmp	.L598
.L585:
	.loc 1 1451 0
	movl	$2, -8(%ebp)
	jmp	.L598
.L583:
	.loc 1 1452 0
	movl	$3, -8(%ebp)
	jmp	.L598
.L584:
	.loc 1 1453 0
	movl	$4, -8(%ebp)
	jmp	.L598
.L586:
	.loc 1 1454 0
	movl	$5, -8(%ebp)
	jmp	.L598
.L588:
	.loc 1 1455 0
	movl	$6, -8(%ebp)
	jmp	.L598
.L587:
	.loc 1 1456 0
	movl	$7, -8(%ebp)
	jmp	.L598
.L581:
	.loc 1 1457 0
	movl	$8, -8(%ebp)
	jmp	.L598
.L582:
	.loc 1 1458 0
	movl	$9, -8(%ebp)
	jmp	.L598
.L595:
	.loc 1 1459 0
	movl	$10, -8(%ebp)
	jmp	.L598
.L589:
	.loc 1 1460 0
	movl	$11, -8(%ebp)
	jmp	.L598
.L593:
	.loc 1 1461 0
	movl	$12, -8(%ebp)
	jmp	.L598
.L594:
	.loc 1 1463 0
	movl	$13, -8(%ebp)
	jmp	.L598
.L591:
	.loc 1 1464 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L599
	movl	$15, -4(%ebp)
	jmp	.L601
.L599:
	movl	$14, -4(%ebp)
.L601:
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L598
.L592:
	.loc 1 1466 0
	movl	$16, -8(%ebp)
	jmp	.L598
.L590:
	.loc 1 1467 0
	movl	$17, -8(%ebp)
	jmp	.L598
.L596:
	.loc 1 1468 0
	movl	$18, -8(%ebp)
	jmp	.L598
.L578:
	.loc 1 1469 0
	movl	$-1, -8(%ebp)
.L598:
	movl	-8(%ebp), %eax
	.loc 1 1471 0
	leave
	ret
.LFE35:
	.size	type_to_class, .-type_to_class
	.type	expand_builtin_classify_type, @function
expand_builtin_classify_type:
.LFB36:
	.loc 1 1479 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$20, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1480 0
	cmpl	$0, 8(%ebp)
	je	.L604
	.loc 1 1481 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	type_to_class
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -8(%ebp)
	jmp	.L606
.L604:
	.loc 1 1482 0
	movl	$-1, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -8(%ebp)
.L606:
	movl	-8(%ebp), %eax
	.loc 1 1483 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	expand_builtin_classify_type, .-expand_builtin_classify_type
	.type	expand_builtin_constant_p, @function
expand_builtin_constant_p:
.LFB37:
	.loc 1 1490 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$36, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1491 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1492 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1495 0
	cmpl	$0, -16(%ebp)
	jne	.L609
	.loc 1 1496 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L611
.L609:
	.loc 1 1497 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1503 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1504 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$150, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1505 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L611:
	movl	-24(%ebp), %eax
	.loc 1 1506 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	expand_builtin_constant_p, .-expand_builtin_constant_p
	.section	.rodata
	.type	__FUNCTION__.16234, @object
	.size	__FUNCTION__.16234, 22
__FUNCTION__.16234:
	.string	"expand_builtin_mathfn"
	.text
	.type	expand_builtin_mathfn, @function
expand_builtin_mathfn:
.LFB38:
	.loc 1 1518 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$68, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1521 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1522 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1525 0
	movl	$6, 8(%esp)
	movl	$8, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L614
	.loc 1 1526 0
	movl	$0, -40(%ebp)
	jmp	.L616
.L614:
	.loc 1 1529 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L617
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L617
	.loc 1 1532 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1533 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1541 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1542 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -16(%ebp)
.L617:
	.loc 1 1544 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1547 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1549 0
	call	emit_queue@PLT
	.loc 1 1550 0
	call	start_sequence@PLT
	.loc 1 1552 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	subl	$203, %eax
	movl	%eax, -44(%ebp)
	cmpl	$76, -44(%ebp)
	ja	.L620
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L626@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L626:
	.long	.L621@GOTOFF
	.long	.L621@GOTOFF
	.long	.L621@GOTOFF
	.long	.L621@GOTOFF
	.long	.L621@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L621@GOTOFF
	.long	.L622@GOTOFF
	.long	.L623@GOTOFF
	.long	.L624@GOTOFF
	.long	.L625@GOTOFF
	.long	.L621@GOTOFF
	.long	.L622@GOTOFF
	.long	.L623@GOTOFF
	.long	.L624@GOTOFF
	.long	.L625@GOTOFF
	.long	.L621@GOTOFF
	.long	.L622@GOTOFF
	.long	.L623@GOTOFF
	.long	.L624@GOTOFF
	.long	.L625@GOTOFF
	.text
.L622:
	.loc 1 1557 0
	movl	optab_table@GOT(%ebx), %eax
	movl	156(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L627
.L623:
	.loc 1 1561 0
	movl	optab_table@GOT(%ebx), %eax
	movl	160(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L627
.L621:
	.loc 1 1572 0
	movl	optab_table@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L627
.L624:
	.loc 1 1576 0
	movl	optab_table@GOT(%ebx), %eax
	movl	164(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L627
.L625:
	.loc 1 1580 0
	movl	optab_table@GOT(%ebx), %eax
	movl	168(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L627
.L620:
	.loc 1 1582 0
	leal	__FUNCTION__.16234@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1582, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L627:
	.loc 1 1587 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1588 0
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1593 0
	cmpl	$0, 12(%ebp)
	jne	.L628
	.loc 1 1595 0
	call	end_sequence@PLT
	.loc 1 1596 0
	movl	$0, -40(%ebp)
	jmp	.L616
.L628:
	.loc 1 1601 0
	movl	flag_errno_math@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L632
	movl	-12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L632
	movl	-12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L630
.L632:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L630
.LBB11:
	.loc 1 1605 0
	call	gen_label_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1609 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$113, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_cmp_and_jump_insns@PLT
	.loc 1 1626 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1627 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_call@PLT
	.loc 1 1628 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1631 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
.L630:
.LBE11:
	.loc 1 1635 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1636 0
	call	end_sequence@PLT
	.loc 1 1637 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1639 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
.L616:
	movl	-40(%ebp), %eax
	.loc 1 1640 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	expand_builtin_mathfn, .-expand_builtin_mathfn
	.type	expand_builtin_strlen, @function
expand_builtin_strlen:
.LFB39:
	.loc 1 1650 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%edi
.LCFI106:
	pushl	%esi
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$92, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1651 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1652 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 1654 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L638
	.loc 1 1655 0
	movl	$0, -88(%ebp)
	jmp	.L640
.L638:
.LBB12:
	.loc 1 1659 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1661 0
	movl	-60(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1662 0
	movl	$529, -20(%ebp)
	.loc 1 1666 0
	movl	$0, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -52(%ebp)
	.loc 1 1667 0
	cmpl	$0, -52(%ebp)
	je	.L641
	.loc 1 1668 0
	movl	$0, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -88(%ebp)
	jmp	.L640
.L641:
	.loc 1 1675 0
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -52(%ebp)
	.loc 1 1676 0
	cmpl	$0, -52(%ebp)
	je	.L643
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L643
	.loc 1 1678 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 1679 0
	movl	$0, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -88(%ebp)
	jmp	.L640
.L643:
	.loc 1 1682 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L646
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L648
.L646:
	movl	$128, -84(%ebp)
	jmp	.L649
.L648:
	movl	$64, -84(%ebp)
.L649:
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1685 0
	cmpl	$0, -16(%ebp)
	jne	.L652
	.loc 1 1686 0
	movl	$0, -88(%ebp)
	jmp	.L640
.L653:
	.loc 1 1691 0
	movl	optab_table@GOT(%ebx), %eax
	movl	184(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1692 0
	cmpl	$529, -20(%ebp)
	jne	.L654
	.loc 1 1695 0
	movl	-28(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L652:
	.loc 1 1689 0
	cmpl	$0, -28(%ebp)
	jne	.L653
.L654:
	.loc 1 1697 0
	cmpl	$0, -28(%ebp)
	jne	.L656
	.loc 1 1698 0
	movl	$0, -88(%ebp)
	jmp	.L640
.L656:
	.loc 1 1701 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1702 0
	cmpl	$0, -44(%ebp)
	je	.L658
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L658
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	jne	.L658
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L662
.L658:
	.loc 1 1706 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
.L662:
	.loc 1 1711 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L663
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L663
	movl	$5, -80(%ebp)
	jmp	.L666
.L663:
	movl	$4, -80(%ebp)
.L666:
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1715 0
	call	get_last_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1717 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1718 0
	movl	-20(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1719 0
	movl	-20(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L667
	.loc 1 1721 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -36(%ebp)
.L667:
	.loc 1 1723 0
	movl	-20(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edi
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, %edx
	movl	%esi, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edi
	movl	%eax, -56(%ebp)
	.loc 1 1725 0
	cmpl	$0, -56(%ebp)
	jne	.L669
	.loc 1 1726 0
	movl	$0, -88(%ebp)
	jmp	.L640
.L669:
	.loc 1 1727 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1730 0
	call	start_sequence@PLT
	.loc 1 1731 0
	movl	ptr_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$3, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	memory_address@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1733 0
	movl	-56(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L671
	.loc 1 1734 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L671:
	.loc 1 1735 0
	call	get_insns@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1736 0
	call	end_sequence@PLT
	.loc 1 1738 0
	cmpl	$0, -32(%ebp)
	je	.L673
	.loc 1 1739 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	jmp	.L675
.L673:
	.loc 1 1741 0
	call	get_insns@PLT
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
.L675:
	.loc 1 1744 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-60(%ebp), %eax
	jne	.L676
	.loc 1 1745 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	.L678
.L676:
	.loc 1 1746 0
	cmpl	$0, 12(%ebp)
	je	.L679
	.loc 1 1747 0
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	jmp	.L678
.L679:
	.loc 1 1749 0
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 12(%ebp)
.L678:
	.loc 1 1751 0
	movl	12(%ebp), %eax
	movl	%eax, -88(%ebp)
.L640:
	movl	-88(%ebp), %eax
.LBE12:
	.loc 1 1753 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	expand_builtin_strlen, .-expand_builtin_strlen
	.type	expand_builtin_strstr, @function
expand_builtin_strstr:
.LFB40:
	.loc 1 1764 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	.loc 1 1811 0
	movl	$0, %eax
	.loc 1 1813 0
	popl	%ebp
	ret
.LFE40:
	.size	expand_builtin_strstr, .-expand_builtin_strstr
	.type	expand_builtin_strchr, @function
expand_builtin_strchr:
.LFB41:
	.loc 1 1824 0
	pushl	%ebp
.LCFI112:
	movl	%esp, %ebp
.LCFI113:
	pushl	%ebx
.LCFI114:
	subl	$52, %esp
.LCFI115:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1825 0
	movl	$6, 12(%esp)
	movl	$7, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L685
	.loc 1 1826 0
	movl	$0, -40(%ebp)
	jmp	.L687
.L685:
.LBB13:
	.loc 1 1829 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1832 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L688
	.loc 1 1833 0
	movl	$0, -40(%ebp)
	jmp	.L687
.L688:
	.loc 1 1835 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -16(%ebp)
	.loc 1 1836 0
	cmpl	$0, -16(%ebp)
	je	.L690
.LBB14:
	.loc 1 1841 0
	leal	-5(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	target_char_cast
	testl	%eax, %eax
	je	.L692
	.loc 1 1842 0
	movl	$0, -40(%ebp)
	jmp	.L687
.L692:
	.loc 1 1844 0
	movzbl	-5(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1846 0
	cmpl	$0, -12(%ebp)
	jne	.L694
	.loc 1 1847 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L687
.L694:
	.loc 1 1850 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -40(%ebp)
	jmp	.L687
.L690:
.LBE14:
	.loc 1 1857 0
	movl	$0, -40(%ebp)
.L687:
	movl	-40(%ebp), %eax
.LBE13:
	.loc 1 1859 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	expand_builtin_strchr, .-expand_builtin_strchr
	.type	expand_builtin_strrchr, @function
expand_builtin_strrchr:
.LFB42:
	.loc 1 1870 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	.loc 1 1915 0
	movl	$0, %eax
	.loc 1 1917 0
	popl	%ebp
	ret
.LFE42:
	.size	expand_builtin_strrchr, .-expand_builtin_strrchr
	.type	expand_builtin_strpbrk, @function
expand_builtin_strpbrk:
.LFB43:
	.loc 1 1928 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	.loc 1 1981 0
	movl	$0, %eax
	.loc 1 1983 0
	popl	%ebp
	ret
.LFE43:
	.size	expand_builtin_strpbrk, .-expand_builtin_strpbrk
	.section	.rodata
	.type	__FUNCTION__.16480, @object
	.size	__FUNCTION__.16480, 24
__FUNCTION__.16480:
	.string	"builtin_memcpy_read_str"
	.text
	.type	builtin_memcpy_read_str, @function
builtin_memcpy_read_str:
.LFB44:
	.loc 1 1994 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%edi
.LCFI122:
	pushl	%esi
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$76, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1995 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1997 0
	cmpl	$0, -36(%ebp)
	js	.L702
	movl	20(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-20(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -60(%ebp)
	movl	$0, %eax
	cld
	movl	-60(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	-44(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jb	.L704
	movl	-44(%ebp), %esi
	cmpl	%esi, -52(%ebp)
	ja	.L702
	movl	-48(%ebp), %edi
	cmpl	%edi, -56(%ebp)
	jbe	.L704
.L702:
	.loc 1 2000 0
	leal	__FUNCTION__.16480@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2000, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L704:
	.loc 1 2002 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_readstr
	.loc 1 2003 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	builtin_memcpy_read_str, .-builtin_memcpy_read_str
	.type	expand_builtin_memcpy, @function
expand_builtin_memcpy:
.LFB45:
	.loc 1 2014 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%edi
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$112, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2015 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L708
	.loc 1 2017 0
	movl	$0, -84(%ebp)
	jmp	.L710
.L708:
.LBB15:
	.loc 1 2020 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2021 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2022 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2024 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L711
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L713
.L711:
	movl	$128, -80(%ebp)
	jmp	.L714
.L713:
	movl	$64, -80(%ebp)
.L714:
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -32(%ebp)
	.loc 1 2026 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L715
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L717
.L715:
	movl	$128, -76(%ebp)
	jmp	.L718
.L717:
	movl	$64, -76(%ebp)
.L718:
	movl	-76(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -28(%ebp)
	.loc 1 2030 0
	cmpl	$0, -28(%ebp)
	jne	.L719
	.loc 1 2031 0
	movl	$0, -84(%ebp)
	jmp	.L710
.L719:
	.loc 1 2034 0
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L721
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L721
	.loc 1 2037 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2038 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -84(%ebp)
	jmp	.L710
.L721:
	.loc 1 2043 0
	cmpl	$0, -32(%ebp)
	jne	.L724
	.loc 1 2044 0
	movl	$0, -84(%ebp)
	jmp	.L710
.L724:
	.loc 1 2046 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -24(%ebp)
	.loc 1 2047 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2048 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2049 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -36(%ebp)
	.loc 1 2054 0
	cmpl	$0, -36(%ebp)
	je	.L726
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L726
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -88(%ebp)
	movl	$0, %eax
	cld
	movl	-88(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	-60(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	ja	.L726
	movl	-60(%ebp), %edi
	cmpl	%edi, -68(%ebp)
	jb	.L730
	movl	-64(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	ja	.L726
.L730:
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	builtin_memcpy_read_str@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	can_store_by_pieces@PLT
	testl	%eax, %eax
	je	.L726
	.loc 1 2060 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	builtin_memcpy_read_str@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	store_by_pieces@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2063 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2068 0
	movl	-24(%ebp), %edi
	movl	%edi, -84(%ebp)
	jmp	.L710
.L726:
	.loc 1 2071 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -20(%ebp)
	.loc 1 2072 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2075 0
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2078 0
	cmpl	$0, -16(%ebp)
	jne	.L732
	.loc 1 2080 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -16(%ebp)
.L732:
	.loc 1 2086 0
	movl	-16(%ebp), %eax
	movl	%eax, -84(%ebp)
.L710:
	movl	-84(%ebp), %eax
.LBE15:
	.loc 1 2088 0
	addl	$112, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE45:
	.size	expand_builtin_memcpy, .-expand_builtin_memcpy
	.type	expand_builtin_mempcpy, @function
expand_builtin_mempcpy:
.LFB46:
	.loc 1 2104 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%edi
.LCFI133:
	pushl	%ebx
.LCFI134:
	addl	$-128, %esp
.LCFI135:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2105 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L736
	.loc 1 2107 0
	movl	$0, -92(%ebp)
	jmp	.L738
.L736:
	.loc 1 2109 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L739
.LBB16:
	.loc 1 2111 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2113 0
	cmpl	$0, -48(%ebp)
	jne	.L741
	.loc 1 2114 0
	movl	$0, -92(%ebp)
	jmp	.L738
.L741:
	.loc 1 2116 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call_expr
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -92(%ebp)
	jmp	.L738
.L739:
.LBE16:
.LBB17:
	.loc 1 2121 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2122 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2123 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2125 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L743
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L745
.L743:
	movl	$128, -88(%ebp)
	jmp	.L746
.L745:
	movl	$64, -88(%ebp)
.L746:
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -28(%ebp)
	.loc 1 2127 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L747
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L749
.L747:
	movl	$128, -84(%ebp)
	jmp	.L750
.L749:
	movl	$64, -84(%ebp)
.L750:
	movl	-84(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -24(%ebp)
	.loc 1 2132 0
	cmpl	$0, -24(%ebp)
	je	.L751
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L753
.L751:
	.loc 1 2133 0
	movl	$0, -92(%ebp)
	jmp	.L738
.L753:
	.loc 1 2136 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L754
	.loc 1 2139 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2140 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -92(%ebp)
	jmp	.L738
.L754:
	.loc 1 2145 0
	cmpl	$0, -28(%ebp)
	jne	.L756
	.loc 1 2146 0
	movl	$0, -92(%ebp)
	jmp	.L738
.L756:
	.loc 1 2148 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2149 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -32(%ebp)
	.loc 1 2154 0
	cmpl	$0, -32(%ebp)
	je	.L758
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L758
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-32(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -96(%ebp)
	movl	$0, %eax
	cld
	movl	-96(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	-68(%ebp), %eax
	cmpl	%eax, -76(%ebp)
	ja	.L758
	movl	-68(%ebp), %ecx
	cmpl	%ecx, -76(%ebp)
	jb	.L762
	movl	-72(%ebp), %edi
	cmpl	%edi, -80(%ebp)
	ja	.L758
.L762:
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	builtin_memcpy_read_str@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	can_store_by_pieces@PLT
	testl	%eax, %eax
	je	.L758
	.loc 1 2160 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -20(%ebp)
	.loc 1 2161 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2162 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	builtin_memcpy_read_str@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	store_by_pieces@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2165 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2170 0
	movl	-20(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L738
.L758:
	.loc 1 2173 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L764
	movl	-24(%ebp), %ecx
	movl	%ecx, -100(%ebp)
	movl	-28(%ebp), %edi
	movl	%edi, -64(%ebp)
	movl	-100(%ebp), %eax
	cmpl	%eax, -64(%ebp)
	jbe	.L766
	movl	-100(%ebp), %ecx
	movl	%ecx, -64(%ebp)
.L766:
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-64(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	can_move_by_pieces@PLT
	testl	%eax, %eax
	je	.L764
	.loc 1 2177 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -20(%ebp)
	.loc 1 2178 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2179 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -16(%ebp)
	.loc 1 2180 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2181 0
	movl	-24(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	-28(%ebp), %ecx
	movl	%ecx, -60(%ebp)
	movl	-104(%ebp), %edi
	cmpl	%edi, -60(%ebp)
	jbe	.L768
	movl	-104(%ebp), %eax
	movl	%eax, -60(%ebp)
.L768:
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-60(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	move_by_pieces@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2183 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2188 0
	movl	-20(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L738
.L764:
	.loc 1 2191 0
	movl	$0, -92(%ebp)
.L738:
	movl	-92(%ebp), %eax
.LBE17:
	.loc 1 2193 0
	subl	$-128, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE46:
	.size	expand_builtin_mempcpy, .-expand_builtin_mempcpy
	.type	expand_builtin_memmove, @function
expand_builtin_memmove:
.LFB47:
	.loc 1 2203 0
	pushl	%ebp
.LCFI136:
	movl	%esp, %ebp
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$68, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2204 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L771
	.loc 1 2206 0
	movl	$0, -48(%ebp)
	jmp	.L773
.L771:
.LBB18:
	.loc 1 2209 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2210 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2211 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2213 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L774
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L776
.L774:
	movl	$128, -44(%ebp)
	jmp	.L777
.L776:
	movl	$64, -44(%ebp)
.L777:
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -16(%ebp)
	.loc 1 2215 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L778
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L780
.L778:
	movl	$128, -40(%ebp)
	jmp	.L781
.L780:
	movl	$64, -40(%ebp)
.L781:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -12(%ebp)
	.loc 1 2218 0
	cmpl	$0, -12(%ebp)
	jne	.L782
	.loc 1 2219 0
	movl	$0, -48(%ebp)
	jmp	.L773
.L782:
	.loc 1 2222 0
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L784
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L784
	.loc 1 2225 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2226 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -48(%ebp)
	jmp	.L773
.L784:
	.loc 1 2231 0
	cmpl	$0, -16(%ebp)
	jne	.L787
	.loc 1 2232 0
	movl	$0, -48(%ebp)
	jmp	.L773
.L787:
	.loc 1 2236 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	readonly_data_expr
	testb	%al, %al
	je	.L789
.LBB19:
	.loc 1 2238 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2239 0
	cmpl	$0, -8(%ebp)
	jne	.L791
	.loc 1 2240 0
	movl	$0, -48(%ebp)
	jmp	.L773
.L791:
	.loc 1 2241 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call_expr
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -48(%ebp)
	jmp	.L773
.L789:
.LBE19:
	.loc 1 2246 0
	movl	$0, -48(%ebp)
.L773:
	movl	-48(%ebp), %eax
.LBE18:
	.loc 1 2248 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	expand_builtin_memmove, .-expand_builtin_memmove
	.type	expand_builtin_bcopy, @function
expand_builtin_bcopy:
.LFB48:
	.loc 1 2256 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	pushl	%ebx
.LCFI142:
	subl	$52, %esp
.LCFI143:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2259 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L795
	.loc 1 2261 0
	movl	$0, -24(%ebp)
	jmp	.L797
.L795:
	.loc 1 2263 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2264 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2265 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2272 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2273 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2274 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2276 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memmove
	movl	%eax, -24(%ebp)
.L797:
	movl	-24(%ebp), %eax
	.loc 1 2277 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	expand_builtin_bcopy, .-expand_builtin_bcopy
	.type	expand_builtin_strcpy, @function
expand_builtin_strcpy:
.LFB49:
	.loc 1 2289 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$52, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2290 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2293 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L800
	.loc 1 2294 0
	movl	$0, -40(%ebp)
	jmp	.L802
.L800:
	.loc 1 2296 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2297 0
	cmpl	$0, -20(%ebp)
	jne	.L803
	.loc 1 2298 0
	movl	$0, -40(%ebp)
	jmp	.L802
.L803:
	.loc 1 2300 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2301 0
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -16(%ebp)
	.loc 1 2302 0
	cmpl	$0, -16(%ebp)
	je	.L805
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L807
.L805:
	.loc 1 2303 0
	movl	$0, -40(%ebp)
	jmp	.L802
.L807:
	.loc 1 2305 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2306 0
	movl	$1, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2307 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2308 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2309 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2310 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call_expr
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -40(%ebp)
.L802:
	movl	-40(%ebp), %eax
	.loc 1 2312 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	expand_builtin_strcpy, .-expand_builtin_strcpy
	.type	expand_builtin_stpcpy, @function
expand_builtin_stpcpy:
.LFB50:
	.loc 1 2324 0
	pushl	%ebp
.LCFI148:
	movl	%esp, %ebp
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$36, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2325 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L810
	.loc 1 2326 0
	movl	$0, -24(%ebp)
	jmp	.L812
.L810:
.LBB20:
	.loc 1 2333 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L813
.LBB21:
	.loc 1 2335 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2336 0
	cmpl	$0, -8(%ebp)
	jne	.L815
	.loc 1 2337 0
	movl	$0, -24(%ebp)
	jmp	.L812
.L815:
	.loc 1 2339 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call_expr
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -24(%ebp)
	jmp	.L812
.L813:
.LBE21:
	.loc 1 2347 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2348 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	testl	%eax, %eax
	je	.L817
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L819
.L817:
	.loc 1 2349 0
	movl	$0, -24(%ebp)
	jmp	.L812
.L819:
	.loc 1 2351 0
	movl	$1, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2352 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_list@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2353 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	.loc 1 2354 0
	movl	$2, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_mempcpy
	movl	%eax, -24(%ebp)
.L812:
	movl	-24(%ebp), %eax
.LBE20:
	.loc 1 2356 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	expand_builtin_stpcpy, .-expand_builtin_stpcpy
	.type	builtin_strncpy_read_str, @function
builtin_strncpy_read_str:
.LFB51:
	.loc 1 2367 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%edi
.LCFI154:
	pushl	%ebx
.LCFI155:
	subl	$64, %esp
.LCFI156:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2368 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2370 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -60(%ebp)
	movl	$0, %eax
	cld
	movl	-60(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	-44(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jb	.L822
	movl	-44(%ebp), %edx
	cmpl	%edx, -52(%ebp)
	ja	.L824
	movl	-48(%ebp), %edi
	cmpl	%edi, -56(%ebp)
	jbe	.L822
.L824:
	.loc 1 2371 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L825
.L822:
	.loc 1 2373 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_readstr
	movl	%eax, -36(%ebp)
.L825:
	movl	-36(%ebp), %eax
	.loc 1 2374 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	builtin_strncpy_read_str, .-builtin_strncpy_read_str
	.type	expand_builtin_strncpy, @function
expand_builtin_strncpy:
.LFB52:
	.loc 1 2384 0
	pushl	%ebp
.LCFI157:
	movl	%esp, %ebp
.LCFI158:
	pushl	%ebx
.LCFI159:
	subl	$68, %esp
.LCFI160:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2385 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L828
	.loc 1 2387 0
	movl	$0, -44(%ebp)
	jmp	.L830
.L828:
.LBB22:
	.loc 1 2390 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -32(%ebp)
	.loc 1 2391 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2395 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L831
	.loc 1 2396 0
	movl	$0, -44(%ebp)
	jmp	.L830
.L831:
	.loc 1 2399 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L833
	.loc 1 2403 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2406 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -44(%ebp)
	jmp	.L830
.L833:
	.loc 1 2411 0
	cmpl	$0, -32(%ebp)
	je	.L835
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L837
.L835:
	.loc 1 2412 0
	movl	$0, -44(%ebp)
	jmp	.L830
.L837:
	.loc 1 2414 0
	movl	$1, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2419 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L838
.LBB23:
	.loc 1 2421 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2423 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L840
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L842
.L840:
	movl	$128, -40(%ebp)
	jmp	.L843
.L842:
	movl	$64, -40(%ebp)
.L843:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -16(%ebp)
	.loc 1 2424 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -12(%ebp)
	.loc 1 2427 0
	cmpl	$0, -12(%ebp)
	je	.L844
	cmpl	$0, -16(%ebp)
	je	.L844
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L844
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	builtin_strncpy_read_str@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	can_store_by_pieces@PLT
	testl	%eax, %eax
	jne	.L848
.L844:
	.loc 1 2431 0
	movl	$0, -44(%ebp)
	jmp	.L830
.L848:
	.loc 1 2433 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -8(%ebp)
	.loc 1 2434 0
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, 24(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	builtin_strncpy_read_str@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	store_by_pieces@PLT
	.loc 1 2437 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2442 0
	movl	-8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L830
.L838:
.LBE23:
	.loc 1 2446 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2447 0
	cmpl	$0, -24(%ebp)
	jne	.L849
	.loc 1 2448 0
	movl	$0, -44(%ebp)
	jmp	.L830
.L849:
	.loc 1 2449 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call_expr
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -44(%ebp)
.L830:
	movl	-44(%ebp), %eax
.LBE22:
	.loc 1 2452 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	expand_builtin_strncpy, .-expand_builtin_strncpy
	.type	builtin_memset_read_str, @function
builtin_memset_read_str:
.LFB53:
	.loc 1 2463 0
	pushl	%ebp
.LCFI161:
	movl	%esp, %ebp
.LCFI162:
	pushl	%ebx
.LCFI163:
	subl	$68, %esp
.LCFI164:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2463 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2464 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2465 0
	movl	20(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %edx
	movl	%edx, -44(%ebp)
	movl	-44(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2467 0
	movl	20(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	memset@PLT
	.loc 1 2469 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_readstr
	.loc 1 2470 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L854
	call	__stack_chk_fail_local
.L854:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE53:
	.size	builtin_memset_read_str, .-builtin_memset_read_str
	.type	builtin_memset_gen_str, @function
builtin_memset_gen_str:
.LFB54:
	.loc 1 2482 0
	pushl	%ebp
.LCFI165:
	movl	%esp, %ebp
.LCFI166:
	pushl	%ebx
.LCFI167:
	subl	$84, %esp
.LCFI168:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2482 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2487 0
	movl	20(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2488 0
	cmpl	$1, -20(%ebp)
	jne	.L856
	.loc 1 2489 0
	movl	-44(%ebp), %edx
	movl	%edx, -64(%ebp)
	jmp	.L858
.L856:
	.loc 1 2491 0
	movl	-20(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edx
	movl	%edx, -16(%ebp)
	.loc 1 2492 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	memset@PLT
	.loc 1 2493 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_readstr
	movl	%eax, -24(%ebp)
	.loc 1 2495 0
	movl	-44(%ebp), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2496 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2497 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -64(%ebp)
.L858:
	movl	-64(%ebp), %eax
	.loc 1 2498 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L860
	call	__stack_chk_fail_local
.L860:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE54:
	.size	builtin_memset_gen_str, .-builtin_memset_gen_str
	.type	expand_builtin_memset, @function
expand_builtin_memset:
.LFB55:
	.loc 1 2510 0
	pushl	%ebp
.LCFI169:
	movl	%esp, %ebp
.LCFI170:
	pushl	%ebx
.LCFI171:
	subl	$100, %esp
.LCFI172:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2511 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2513 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$7, 8(%esp)
	movl	$14, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L862
	.loc 1 2515 0
	movl	$0, -72(%ebp)
	jmp	.L864
.L862:
.LBB24:
	.loc 1 2518 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2519 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2520 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2524 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L865
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L867
.L865:
	movl	$128, -68(%ebp)
	jmp	.L868
.L867:
	movl	$64, -68(%ebp)
.L868:
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -32(%ebp)
	.loc 1 2529 0
	cmpl	$0, -32(%ebp)
	jne	.L869
	.loc 1 2530 0
	movl	$0, -72(%ebp)
	jmp	.L864
.L869:
	.loc 1 2533 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L871
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L871
	.loc 1 2536 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2537 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -72(%ebp)
	jmp	.L864
.L871:
	.loc 1 2540 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L874
.LBB25:
	.loc 1 2544 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L876
	.loc 1 2545 0
	movl	$0, -72(%ebp)
	jmp	.L864
.L876:
	.loc 1 2547 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L878
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	cmpl	$0, -60(%ebp)
	js	.L878
	cmpl	$0, -60(%ebp)
	jg	.L881
	cmpl	$1, -64(%ebp)
	jbe	.L878
.L881:
	.loc 1 2548 0
	movl	$0, -72(%ebp)
	jmp	.L864
.L878:
	.loc 1 2553 0
	movb	$1, -9(%ebp)
	.loc 1 2554 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-9(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	builtin_memset_read_str@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	can_store_by_pieces@PLT
	testl	%eax, %eax
	jne	.L882
	.loc 1 2557 0
	movl	$0, -72(%ebp)
	jmp	.L864
.L882:
	.loc 1 2559 0
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2560 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2561 0
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_reg@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2563 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -28(%ebp)
	.loc 1 2564 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, 24(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	builtin_memset_gen_str@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	store_by_pieces@PLT
	.loc 1 2567 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2572 0
	movl	-28(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L864
.L874:
.LBE25:
	.loc 1 2575 0
	leal	-9(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	target_char_cast
	testl	%eax, %eax
	je	.L884
	.loc 1 2576 0
	movl	$0, -72(%ebp)
	jmp	.L864
.L884:
	.loc 1 2578 0
	movzbl	-9(%ebp), %eax
	testb	%al, %al
	je	.L886
	.loc 1 2580 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L888
	.loc 1 2581 0
	movl	$0, -72(%ebp)
	jmp	.L864
.L888:
	.loc 1 2582 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-9(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	builtin_memset_read_str@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	can_store_by_pieces@PLT
	testl	%eax, %eax
	jne	.L890
	.loc 1 2585 0
	movl	$0, -72(%ebp)
	jmp	.L864
.L890:
	.loc 1 2587 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -28(%ebp)
	.loc 1 2588 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, 24(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-9(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	builtin_memset_read_str@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	store_by_pieces@PLT
	.loc 1 2591 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2596 0
	movl	-28(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L864
.L886:
	.loc 1 2599 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2601 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -28(%ebp)
	.loc 1 2602 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2603 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_storage@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2605 0
	cmpl	$0, -24(%ebp)
	jne	.L892
	.loc 1 2607 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -24(%ebp)
.L892:
	.loc 1 2614 0
	movl	-24(%ebp), %eax
	movl	%eax, -72(%ebp)
.L864:
	movl	-72(%ebp), %eax
.LBE24:
	.loc 1 2616 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	expand_builtin_memset, .-expand_builtin_memset
	.type	expand_builtin_bzero, @function
expand_builtin_bzero:
.LFB56:
	.loc 1 2624 0
	pushl	%ebp
.LCFI173:
	movl	%esp, %ebp
.LCFI174:
	pushl	%ebx
.LCFI175:
	subl	$52, %esp
.LCFI176:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2625 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2629 0
	movl	$6, 12(%esp)
	movl	$7, 8(%esp)
	movl	$14, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L896
	.loc 1 2630 0
	movl	$0, -40(%ebp)
	jmp	.L898
.L896:
	.loc 1 2632 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2633 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2640 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2641 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2642 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2644 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 2645 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memset
	movl	%eax, -8(%ebp)
	.loc 1 2648 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 2650 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L898:
	movl	-40(%ebp), %eax
	.loc 1 2651 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	expand_builtin_bzero, .-expand_builtin_bzero
	.type	expand_builtin_memcmp, @function
expand_builtin_memcmp:
.LFB57:
	.loc 1 2664 0
	pushl	%ebp
.LCFI177:
	movl	%esp, %ebp
.LCFI178:
	pushl	%edi
.LCFI179:
	pushl	%esi
.LCFI180:
	pushl	%ebx
.LCFI181:
	subl	$108, %esp
.LCFI182:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2668 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L901
	.loc 1 2670 0
	movl	$0, -72(%ebp)
	jmp	.L903
.L901:
	.loc 1 2672 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2673 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2674 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2677 0
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L904
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L904
	.loc 1 2681 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2682 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2683 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L903
.L904:
	.loc 1 2686 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -44(%ebp)
	.loc 1 2687 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -40(%ebp)
	.loc 1 2691 0
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L907
	cmpl	$0, -44(%ebp)
	je	.L907
	cmpl	$0, -40(%ebp)
	je	.L907
	movl	-44(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -76(%ebp)
	movl	$0, %eax
	cld
	movl	-76(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jg	.L907
	movl	-40(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -80(%ebp)
	movl	$0, %eax
	cld
	movl	-80(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jg	.L907
.LBB26:
	.loc 1 2695 0
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %ecx
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, -84(%ebp)
	movl	%edx, -88(%ebp)
	movl	%ecx, -92(%ebp)
	cld
	movl	-92(%ebp), %eax
	cmpl	%eax, -92(%ebp)
	movl	-84(%ebp), %esi
	movl	-88(%ebp), %edi
	movl	-92(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	movl	%eax, -36(%ebp)
	.loc 1 2697 0
	cmpl	$0, -36(%ebp)
	jns	.L913
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L915
.L913:
	cmpl	$0, -36(%ebp)
	jle	.L916
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L918
.L916:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -64(%ebp)
.L918:
	movl	-64(%ebp), %esi
	movl	%esi, -68(%ebp)
.L915:
	movl	-68(%ebp), %edi
	movl	%edi, -72(%ebp)
	jmp	.L903
.L907:
.LBE26:
	.loc 1 2702 0
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L919
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L919
.LBB27:
	.loc 1 2704 0
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2705 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2709 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2713 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2714 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2715 0
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -72(%ebp)
	jmp	.L903
.L919:
.LBE27:
	.loc 1 2795 0
	movl	$0, -72(%ebp)
.L903:
	movl	-72(%ebp), %eax
	.loc 1 2796 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE57:
	.size	expand_builtin_memcmp, .-expand_builtin_memcmp
	.type	expand_builtin_strcmp, @function
expand_builtin_strcmp:
.LFB58:
	.loc 1 2807 0
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	pushl	%ebx
.LCFI185:
	subl	$84, %esp
.LCFI186:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2808 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2812 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L924
	.loc 1 2813 0
	movl	$0, -64(%ebp)
	jmp	.L926
.L924:
	.loc 1 2815 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2816 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2818 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -36(%ebp)
	.loc 1 2819 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -32(%ebp)
	.loc 1 2821 0
	cmpl	$0, -36(%ebp)
	je	.L927
	cmpl	$0, -32(%ebp)
	je	.L927
.LBB28:
	.loc 1 2823 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2824 0
	cmpl	$0, -28(%ebp)
	jns	.L930
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L932
.L930:
	cmpl	$0, -28(%ebp)
	jle	.L933
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L935
.L933:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -56(%ebp)
.L935:
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
.L932:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L926
.L927:
.LBE28:
	.loc 1 2829 0
	cmpl	$0, -36(%ebp)
	je	.L936
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L938
.L936:
	cmpl	$0, -32(%ebp)
	je	.L939
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L939
.L938:
.LBB29:
	.loc 1 2831 0
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2832 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2836 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2840 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2841 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2842 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -64(%ebp)
	jmp	.L926
.L939:
.LBE29:
	.loc 1 2926 0
	movl	$0, -64(%ebp)
.L926:
	movl	-64(%ebp), %eax
	.loc 1 2927 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	expand_builtin_strcmp, .-expand_builtin_strcmp
	.type	expand_builtin_strncmp, @function
expand_builtin_strncmp:
.LFB59:
	.loc 1 2938 0
	pushl	%ebp
.LCFI187:
	movl	%esp, %ebp
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$100, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2939 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2943 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L943
	.loc 1 2945 0
	movl	$0, -76(%ebp)
	jmp	.L945
.L943:
	.loc 1 2947 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2948 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2949 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2952 0
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L946
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L946
	.loc 1 2956 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2957 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2958 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L945
.L946:
	.loc 1 2961 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -40(%ebp)
	.loc 1 2962 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -36(%ebp)
	.loc 1 2965 0
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L949
	cmpl	$0, -40(%ebp)
	je	.L949
	cmpl	$0, -36(%ebp)
	je	.L949
.LBB30:
	.loc 1 2967 0
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2968 0
	cmpl	$0, -32(%ebp)
	jns	.L953
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L955
.L953:
	cmpl	$0, -32(%ebp)
	jle	.L956
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L958
.L956:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
.L958:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
.L955:
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L945
.L949:
.LBE30:
	.loc 1 2973 0
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L959
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L961
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	cmpl	$0, -60(%ebp)
	js	.L959
	cmpl	$0, -60(%ebp)
	jg	.L964
	cmpl	$1, -64(%ebp)
	jbe	.L959
.L964:
	cmpl	$0, -40(%ebp)
	je	.L965
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L961
.L965:
	cmpl	$0, -36(%ebp)
	je	.L959
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L959
.L961:
.LBB31:
	.loc 1 2978 0
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2979 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2983 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2987 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2988 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2989 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -76(%ebp)
	jmp	.L945
.L959:
.LBE31:
	.loc 1 3079 0
	movl	$0, -76(%ebp)
.L945:
	movl	-76(%ebp), %eax
	.loc 1 3080 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	expand_builtin_strncmp, .-expand_builtin_strncmp
	.type	expand_builtin_strcat, @function
expand_builtin_strcat:
.LFB60:
	.loc 1 3091 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%ebx
.LCFI193:
	subl	$36, %esp
.LCFI194:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3092 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L970
	.loc 1 3093 0
	movl	$0, -24(%ebp)
	jmp	.L972
.L970:
.LBB32:
	.loc 1 3096 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3097 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3098 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -8(%ebp)
	.loc 1 3101 0
	cmpl	$0, -8(%ebp)
	je	.L973
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L973
	.loc 1 3102 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -24(%ebp)
	jmp	.L972
.L973:
	.loc 1 3104 0
	movl	$0, -24(%ebp)
.L972:
	movl	-24(%ebp), %eax
.LBE32:
	.loc 1 3106 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	expand_builtin_strcat, .-expand_builtin_strcat
	.type	expand_builtin_strncat, @function
expand_builtin_strncat:
.LFB61:
	.loc 1 3117 0
	pushl	%ebp
.LCFI195:
	movl	%esp, %ebp
.LCFI196:
	.loc 1 3160 0
	movl	$0, %eax
	.loc 1 3162 0
	popl	%ebp
	ret
.LFE61:
	.size	expand_builtin_strncat, .-expand_builtin_strncat
	.type	expand_builtin_strspn, @function
expand_builtin_strspn:
.LFB62:
	.loc 1 3173 0
	pushl	%ebp
.LCFI197:
	movl	%esp, %ebp
.LCFI198:
	pushl	%ebx
.LCFI199:
	subl	$52, %esp
.LCFI200:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3174 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L980
	.loc 1 3175 0
	movl	$0, -40(%ebp)
	jmp	.L982
.L980:
.LBB33:
	.loc 1 3178 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3179 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -12(%ebp)
	.loc 1 3182 0
	cmpl	$0, -16(%ebp)
	je	.L983
	cmpl	$0, -12(%ebp)
	je	.L983
.LBB34:
	.loc 1 3184 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strspn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3185 0
	movl	-8(%ebp), %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -40(%ebp)
	jmp	.L982
.L983:
.LBE34:
	.loc 1 3189 0
	cmpl	$0, -16(%ebp)
	je	.L986
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L988
.L986:
	cmpl	$0, -12(%ebp)
	je	.L989
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L989
.L988:
	.loc 1 3193 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 3194 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 3195 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L982
.L989:
	.loc 1 3197 0
	movl	$0, -40(%ebp)
.L982:
	movl	-40(%ebp), %eax
.LBE33:
	.loc 1 3199 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	expand_builtin_strspn, .-expand_builtin_strspn
	.type	expand_builtin_strcspn, @function
expand_builtin_strcspn:
.LFB63:
	.loc 1 3210 0
	pushl	%ebp
.LCFI201:
	movl	%esp, %ebp
.LCFI202:
	pushl	%ebx
.LCFI203:
	subl	$52, %esp
.LCFI204:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3211 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L993
	.loc 1 3212 0
	movl	$0, -40(%ebp)
	jmp	.L995
.L993:
.LBB35:
	.loc 1 3215 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3216 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -20(%ebp)
	.loc 1 3219 0
	cmpl	$0, -24(%ebp)
	je	.L996
	cmpl	$0, -20(%ebp)
	je	.L996
.LBB36:
	.loc 1 3221 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strcspn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3222 0
	movl	-16(%ebp), %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -40(%ebp)
	jmp	.L995
.L996:
.LBE36:
	.loc 1 3226 0
	cmpl	$0, -24(%ebp)
	je	.L999
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L999
	.loc 1 3230 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 3231 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L995
.L999:
	.loc 1 3235 0
	cmpl	$0, -20(%ebp)
	je	.L1002
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1002
.LBB37:
	.loc 1 3237 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3238 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	164(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3242 0
	cmpl	$0, -8(%ebp)
	jne	.L1005
	.loc 1 3243 0
	movl	$0, -40(%ebp)
	jmp	.L995
.L1005:
	.loc 1 3245 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call_expr
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -40(%ebp)
	jmp	.L995
.L1002:
.LBE37:
	.loc 1 3248 0
	movl	$0, -40(%ebp)
.L995:
	movl	-40(%ebp), %eax
.LBE35:
	.loc 1 3250 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	expand_builtin_strcspn, .-expand_builtin_strcspn
	.section	.rodata
	.align 4
.LC368:
	.string	"__builtin_saveregs not supported by this target"
	.text
.globl expand_builtin_saveregs
	.type	expand_builtin_saveregs, @function
expand_builtin_saveregs:
.LFB64:
	.loc 1 3257 0
	pushl	%ebp
.LCFI205:
	movl	%esp, %ebp
.LCFI206:
	pushl	%ebx
.LCFI207:
	subl	$36, %esp
.LCFI208:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3262 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1009
	.loc 1 3263 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1011
.L1009:
	.loc 1 3269 0
	call	start_sequence@PLT
	.loc 1 3283 0
	leal	.LC368@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3284 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3287 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3288 0
	call	end_sequence@PLT
	.loc 1 3290 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3295 0
	call	push_topmost_sequence@PLT
	.loc 1 3296 0
	call	get_insns@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 3297 0
	call	pop_topmost_sequence@PLT
	.loc 1 3299 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1011:
	movl	-24(%ebp), %eax
	.loc 1 3300 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	expand_builtin_saveregs, .-expand_builtin_saveregs
	.section	.rodata
	.type	__FUNCTION__.17427, @object
	.size	__FUNCTION__.17427, 25
__FUNCTION__.17427:
	.string	"expand_builtin_args_info"
	.align 4
.LC369:
	.string	"argument of `__builtin_args_info' must be constant"
	.align 4
.LC370:
	.string	"argument of `__builtin_args_info' out of range"
	.align 4
.LC371:
	.string	"missing argument in `__builtin_args_info'"
	.text
	.type	expand_builtin_args_info, @function
expand_builtin_args_info:
.LFB65:
	.loc 1 3309 0
	pushl	%ebp
.LCFI209:
	movl	%esp, %ebp
.LCFI210:
	pushl	%ebx
.LCFI211:
	subl	$68, %esp
.LCFI212:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3310 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3311 0
	movl	$16, -16(%ebp)
	.loc 1 3312 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$52, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3322 0
	cmpl	$0, -20(%ebp)
	je	.L1014
	.loc 1 3324 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L1016
	.loc 1 3325 0
	leal	.LC369@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1024
.L1016:
.LBB38:
	.loc 1 3328 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 3330 0
	cmpl	$0, -28(%ebp)
	js	.L1019
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jg	.L1021
	movl	-52(%ebp), %edx
	cmpl	-28(%ebp), %edx
	jl	.L1019
	movl	-56(%ebp), %eax
	cmpl	-32(%ebp), %eax
	ja	.L1021
.L1019:
	.loc 1 3331 0
	leal	.LC370@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3330 0
	jmp	.L1024
.L1021:
	.loc 1 3333 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1023
.L1014:
.LBE38:
	.loc 1 3337 0
	leal	.LC371@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1024:
	.loc 1 3339 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -44(%ebp)
.L1023:
	movl	-44(%ebp), %eax
	.loc 1 3354 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	expand_builtin_args_info, .-expand_builtin_args_info
	.section	.rodata
	.align 4
.LC372:
	.string	"`va_start' used in function with fixed args"
	.align 4
.LC373:
	.string	"second parameter of `va_start' not last named argument"
	.align 4
.LC374:
	.string	"`__builtin_next_arg' called without an argument"
	.text
	.type	expand_builtin_next_arg, @function
expand_builtin_next_arg:
.LFB66:
	.loc 1 3361 0
	pushl	%ebp
.LCFI213:
	movl	%esp, %ebp
.LCFI214:
	pushl	%ebx
.LCFI215:
	subl	$68, %esp
.LCFI216:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3362 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3364 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1027
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	tree_last@PLT
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1029
.L1027:
	.loc 1 3368 0
	leal	.LC372@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3369 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1030
.L1029:
	.loc 1 3372 0
	cmpl	$0, 8(%ebp)
	je	.L1031
.LBB39:
	.loc 1 3374 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	tree_last@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3375 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3381 0
	jmp	.L1033
.L1034:
	.loc 1 3385 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1033:
	.loc 1 3381 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1034
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1034
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L1034
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	je	.L1034
	.loc 1 3386 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L1041
	.loc 1 3387 0
	leal	.LC373@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1041
.L1031:
.LBE39:
	.loc 1 3392 0
	leal	.LC374@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1041:
	.loc 1 3394 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1042
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1042
	movl	$5, -24(%ebp)
	jmp	.L1045
.L1042:
	movl	$4, -24(%ebp)
.L1045:
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -40(%ebp)
.L1030:
	movl	-40(%ebp), %eax
	.loc 1 3398 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	expand_builtin_next_arg, .-expand_builtin_next_arg
	.type	stabilize_va_list, @function
stabilize_va_list:
.LFB67:
	.loc 1 3407 0
	pushl	%ebp
.LCFI217:
	movl	%esp, %ebp
.LCFI218:
	pushl	%ebx
.LCFI219:
	subl	$36, %esp
.LCFI220:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3408 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1048
	.loc 1 3410 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1050
	.loc 1 3411 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 8(%ebp)
.L1050:
	.loc 1 3417 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1054
.LBB40:
	.loc 1 3419 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3420 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3422 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3423 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 8(%ebp)
	jmp	.L1054
.L1048:
.LBE40:
.LBB41:
	.loc 1 3430 0
	cmpl	$0, 12(%ebp)
	jne	.L1055
	.loc 1 3432 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1057
	.loc 1 3433 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1059
.L1057:
	.loc 1 3435 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3436 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3437 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
.L1055:
	.loc 1 3440 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1060
	.loc 1 3441 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 8(%ebp)
.L1060:
	.loc 1 3442 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 8(%ebp)
.L1054:
.LBE41:
	.loc 1 3446 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1059:
	movl	-24(%ebp), %eax
	.loc 1 3447 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	stabilize_va_list, .-stabilize_va_list
.globl std_expand_builtin_va_start
	.type	std_expand_builtin_va_start, @function
std_expand_builtin_va_start:
.LFB68:
	.loc 1 3456 0
	pushl	%ebp
.LCFI221:
	movl	%esp, %ebp
.LCFI222:
	pushl	%ebx
.LCFI223:
	subl	$36, %esp
.LCFI224:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3459 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3461 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 3463 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 3464 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	std_expand_builtin_va_start, .-std_expand_builtin_va_start
	.section	.rodata
	.align 4
.LC375:
	.string	"too many arguments to function `va_start'"
	.text
	.type	expand_builtin_va_start, @function
expand_builtin_va_start:
.LFB69:
	.loc 1 3471 0
	pushl	%ebp
.LCFI225:
	movl	%esp, %ebp
.LCFI226:
	pushl	%ebx
.LCFI227:
	subl	$36, %esp
.LCFI228:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3475 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3477 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1066
	.loc 1 3478 0
	leal	.LC375@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1066:
	.loc 1 3480 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_next_arg
	movl	%eax, -16(%ebp)
	.loc 1 3481 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	stabilize_va_list
	movl	%eax, -8(%ebp)
	.loc 1 3484 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_va_start@PLT
	.loc 1 3489 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	.loc 1 3490 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	expand_builtin_va_start, .-expand_builtin_va_start
.globl std_expand_builtin_va_arg
	.type	std_expand_builtin_va_arg, @function
std_expand_builtin_va_arg:
.LFB70:
	.loc 1 3498 0
	pushl	%ebp
.LCFI229:
	movl	%esp, %ebp
.LCFI230:
	pushl	%edi
.LCFI231:
	pushl	%esi
.LCFI232:
	pushl	%ebx
.LCFI233:
	subl	$92, %esp
.LCFI234:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3499 0
	movl	$0, -36(%ebp)
	.loc 1 3505 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1070
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1070
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1070
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1074
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1074
.L1070:
	movl	$8, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L1076
.L1074:
	movl	$4, -72(%ebp)
	movl	$0, -68(%ebp)
.L1076:
	movl	$0, 8(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3506 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1077
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1077
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1077
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1081
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1081
.L1077:
	movl	$7, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L1083
.L1081:
	movl	$3, -64(%ebp)
	movl	$0, -60(%ebp)
.L1083:
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3507 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1084
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L1084
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1087
.L1084:
	.loc 1 3510 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3507 0
	jmp	.L1088
.L1087:
	.loc 1 3512 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$63, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
.L1088:
	.loc 1 3520 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3521 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L1089
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L1091
.L1089:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	setne	-53(%ebp)
	jmp	.L1092
.L1091:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	sete	-53(%ebp)
.L1092:
	cmpb	$0, -53(%ebp)
	je	.L1093
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1093
	.loc 1 3524 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %edi
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$101, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
.L1093:
	.loc 1 3535 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1096
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1096
	movl	$5, -52(%ebp)
	jmp	.L1099
.L1096:
	movl	$4, -52(%ebp)
.L1099:
	movl	$0, 12(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3536 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3539 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1100
	.loc 1 3541 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3544 0
	movl	-40(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 3545 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
.L1100:
	.loc 1 3548 0
	movl	-20(%ebp), %eax
	.loc 1 3549 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE70:
	.size	std_expand_builtin_va_arg, .-std_expand_builtin_va_arg
	.local	gave_help.17700
	.comm	gave_help.17700,1,1
	.section	.rodata
	.align 4
.LC376:
	.string	"first argument to `va_arg' not of type `va_list'"
.LC377:
	.string	"<anonymous type>"
	.align 4
.LC378:
	.string	"`%s' is promoted to `%s' when passed through `...'"
	.align 4
.LC379:
	.string	"(so you should pass `%s' not `%s' to `va_arg')"
	.text
.globl expand_builtin_va_arg
	.type	expand_builtin_va_arg, @function
expand_builtin_va_arg:
.LFB71:
	.loc 1 3557 0
	pushl	%ebp
.LCFI235:
	movl	%esp, %ebp
.LCFI236:
	pushl	%ebx
.LCFI237:
	subl	$52, %esp
.LCFI238:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3563 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3564 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3565 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1104
	.loc 1 3571 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1106
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1104
.L1106:
	.loc 1 3574 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3575 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L1104:
	.loc 1 3578 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %edx
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	je	.L1108
	.loc 1 3580 0
	leal	.LC376@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3581 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1110
.L1108:
	.loc 1 3586 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	280(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L1111
.LBB42:
	.loc 1 3589 0
	leal	.LC377@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	.loc 1 3592 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1113
	.loc 1 3594 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1115
	.loc 1 3595 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1113
.L1115:
	.loc 1 3596 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1113
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1113
	.loc 1 3598 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
.L1113:
	.loc 1 3600 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1119
	.loc 1 3602 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1121
	.loc 1 3603 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1119
.L1121:
	.loc 1 3604 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1119
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1119
	.loc 1 3606 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L1119:
	.loc 1 3612 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC378@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3614 0
	movzbl	gave_help.17700@GOTOFF(%ebx), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1125
	.loc 1 3616 0
	movb	$1, gave_help.17700@GOTOFF(%ebx)
	.loc 1 3617 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC379@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1125:
	.loc 1 3623 0
	call	expand_builtin_trap@PLT
	.loc 1 3627 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1110
.L1111:
.LBE42:
	.loc 1 3633 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_va_list
	movl	%eax, 8(%ebp)
	.loc 1 3636 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_va_arg@PLT
	movl	%eax, -32(%ebp)
.L1110:
	.loc 1 3647 0
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3648 0
	call	get_varargs_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 3650 0
	movl	-28(%ebp), %eax
	.loc 1 3651 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	expand_builtin_va_arg, .-expand_builtin_va_arg
	.type	expand_builtin_va_end, @function
expand_builtin_va_end:
.LFB72:
	.loc 1 3658 0
	pushl	%ebp
.LCFI239:
	movl	%esp, %ebp
.LCFI240:
	pushl	%ebx
.LCFI241:
	subl	$36, %esp
.LCFI242:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3659 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3667 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1129
	.loc 1 3668 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
.L1129:
	.loc 1 3671 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	.loc 1 3672 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	expand_builtin_va_end, .-expand_builtin_va_end
	.type	expand_builtin_va_copy, @function
expand_builtin_va_copy:
.LFB73:
	.loc 1 3681 0
	pushl	%ebp
.LCFI243:
	movl	%esp, %ebp
.LCFI244:
	pushl	%ebx
.LCFI245:
	subl	$68, %esp
.LCFI246:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3684 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3685 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3687 0
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_va_list
	movl	%eax, -28(%ebp)
	.loc 1 3688 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_va_list
	movl	%eax, -24(%ebp)
	.loc 1 3690 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1133
	.loc 1 3692 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3693 0
	movl	-20(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 3694 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	jmp	.L1135
.L1133:
.LBB43:
	.loc 1 3701 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1136
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1136
	movl	$5, -44(%ebp)
	jmp	.L1139
.L1136:
	movl	$4, -44(%ebp)
.L1139:
	movl	$0, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3702 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1140
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1140
	movl	$5, -40(%ebp)
	jmp	.L1143
.L1140:
	movl	$4, -40(%ebp)
.L1143:
	movl	$0, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3703 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	24(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3715 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3716 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 3717 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 3718 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3719 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 3720 0
	movl	global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 3723 0
	movl	$0, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
.L1135:
.LBE43:
	.loc 1 3726 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	.loc 1 3727 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	expand_builtin_va_copy, .-expand_builtin_va_copy
	.section	.rodata
	.align 4
.LC380:
	.string	"invalid arg to `__builtin_frame_address'"
	.align 4
.LC381:
	.string	"invalid arg to `__builtin_return_address'"
	.align 4
.LC382:
	.string	"unsupported arg to `__builtin_frame_address'"
	.align 4
.LC383:
	.string	"unsupported arg to `__builtin_return_address'"
	.text
	.type	expand_builtin_frame_address, @function
expand_builtin_frame_address:
.LFB74:
	.loc 1 3735 0
	pushl	%ebp
.LCFI247:
	movl	%esp, %ebp
.LCFI248:
	pushl	%esi
.LCFI249:
	pushl	%ebx
.LCFI250:
	subl	$48, %esp
.LCFI251:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3736 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3737 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3742 0
	cmpl	$0, -16(%ebp)
	jne	.L1146
	.loc 1 3744 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1148
.L1146:
	.loc 1 3745 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L1149
	.loc 1 3747 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$297, %eax
	jne	.L1151
	.loc 1 3748 0
	leal	.LC380@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1153
.L1151:
	.loc 1 3750 0
	leal	.LC381@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1153:
	.loc 1 3751 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1148
.L1149:
.LBB44:
	.loc 1 3758 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %esi
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_builtin_return_addr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3761 0
	cmpl	$0, -12(%ebp)
	jne	.L1154
	.loc 1 3763 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$297, %eax
	jne	.L1156
	.loc 1 3764 0
	leal	.LC382@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1158
.L1156:
	.loc 1 3766 0
	leal	.LC383@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1158:
	.loc 1 3767 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1148
.L1154:
	.loc 1 3771 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$297, %eax
	jne	.L1159
	.loc 1 3772 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1148
.L1159:
	.loc 1 3774 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1161
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1161
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1161
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1161
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1161
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1161
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1161
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1161
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1161
	.loc 1 3776 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1171
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1171
	movl	$5, -28(%ebp)
	jmp	.L1174
.L1171:
	movl	$4, -28(%ebp)
.L1174:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -12(%ebp)
.L1161:
	.loc 1 3777 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1148:
	movl	-32(%ebp), %eax
.LBE44:
	.loc 1 3779 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE74:
	.size	expand_builtin_frame_address, .-expand_builtin_frame_address
	.type	expand_builtin_alloca, @function
expand_builtin_alloca:
.LFB75:
	.loc 1 3789 0
	pushl	%ebp
.LCFI252:
	movl	%esp, %ebp
.LCFI253:
	pushl	%ebx
.LCFI254:
	subl	$36, %esp
.LCFI255:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3793 0
	movl	$6, 8(%esp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1177
	.loc 1 3794 0
	movl	$0, -24(%ebp)
	jmp	.L1179
.L1177:
	.loc 1 3797 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3800 0
	movl	$8, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	allocate_dynamic_stack_space@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3807 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1179:
	movl	-24(%ebp), %eax
	.loc 1 3808 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	expand_builtin_alloca, .-expand_builtin_alloca
	.section	.rodata
	.type	__FUNCTION__.17932, @object
	.size	__FUNCTION__.17932, 19
__FUNCTION__.17932:
	.string	"expand_builtin_ffs"
	.text
	.type	expand_builtin_ffs, @function
expand_builtin_ffs:
.LFB76:
	.loc 1 3819 0
	pushl	%ebp
.LCFI256:
	movl	%esp, %ebp
.LCFI257:
	pushl	%ebx
.LCFI258:
	subl	$52, %esp
.LCFI259:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3821 0
	movl	$6, 8(%esp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1182
	.loc 1 3822 0
	movl	$0, -24(%ebp)
	jmp	.L1184
.L1182:
	.loc 1 3825 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3828 0
	movl	optab_table@GOT(%ebx), %eax
	movl	148(%eax), %ecx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	$1, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	expand_unop@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3830 0
	cmpl	$0, 12(%ebp)
	jne	.L1185
	.loc 1 3831 0
	leal	__FUNCTION__.17932@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3831, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1185:
	.loc 1 3832 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1184:
	movl	-24(%ebp), %eax
	.loc 1 3833 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	expand_builtin_ffs, .-expand_builtin_ffs
	.section	.rodata
	.align 4
.LC384:
	.string	"second arg to `__builtin_expect' must be a constant"
	.text
	.type	expand_builtin_expect, @function
expand_builtin_expect:
.LFB77:
	.loc 1 3928 0
	pushl	%ebp
.LCFI260:
	movl	%esp, %ebp
.LCFI261:
	pushl	%ebx
.LCFI262:
	subl	$36, %esp
.LCFI263:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3932 0
	cmpl	$0, 8(%ebp)
	je	.L1189
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1191
.L1189:
	.loc 1 3934 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1192
.L1191:
	.loc 1 3935 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3936 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3938 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1193
	.loc 1 3940 0
	leal	.LC384@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3941 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
.L1193:
	.loc 1 3944 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3947 0
	movl	flag_guess_branch_prob@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1195
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1195
	.loc 1 3952 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_reg@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3954 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3956 0
	movl	$-82, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3957 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$113, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
.L1195:
	.loc 1 3960 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1192:
	movl	-24(%ebp), %eax
	.loc 1 3961 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	expand_builtin_expect, .-expand_builtin_expect
.globl expand_builtin_expect_jump
	.type	expand_builtin_expect_jump, @function
expand_builtin_expect_jump:
.LFB78:
	.loc 1 3975 0
	pushl	%ebp
.LCFI264:
	movl	%esp, %ebp
.LCFI265:
	pushl	%ebx
.LCFI266:
	subl	$68, %esp
.LCFI267:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3976 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 3977 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3978 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3979 0
	movl	$0, -40(%ebp)
	.loc 1 3983 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L1200
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1202
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1200
.L1202:
.LBB45:
	.loc 1 3986 0
	movl	$0, -36(%ebp)
	.loc 1 3988 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3993 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	unsafe_for_reeval@PLT
	movl	%eax, -60(%ebp)
	cmpl	$1, -60(%ebp)
	je	.L1206
	cmpl	$2, -60(%ebp)
	je	.L1207
	jmp	.L1204
.L1206:
	.loc 1 3999 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	unsave_expr@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4000 0
	jmp	.L1204
.L1207:
	.loc 1 4003 0
	movl	$0, -56(%ebp)
	jmp	.L1208
.L1204:
	.loc 1 4007 0
	call	start_sequence@PLT
	.loc 1 4008 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump@PLT
	.loc 1 4009 0
	call	get_insns@PLT
	movl	%eax, -40(%ebp)
	.loc 1 4010 0
	call	end_sequence@PLT
	.loc 1 4016 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4017 0
	jmp	.L1209
.L1210:
.LBB46:
	.loc 1 4019 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4022 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1211
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L1211
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1211
.LBB47:
	.loc 1 4025 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4029 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L1211
	.loc 1 4032 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1216
	.loc 1 4034 0
	movl	$1, -8(%ebp)
	.loc 1 4035 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1218
.L1216:
	.loc 1 4038 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1219
	.loc 1 4040 0
	movl	$0, -8(%ebp)
	.loc 1 4041 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1218
.L1219:
	.loc 1 4045 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1221
	.loc 1 4047 0
	movl	$1, -8(%ebp)
	.loc 1 4048 0
	movl	$0, -12(%ebp)
	jmp	.L1218
.L1221:
	.loc 1 4051 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1211
	.loc 1 4053 0
	movl	$0, -8(%ebp)
	.loc 1 4054 0
	movl	$0, -12(%ebp)
.L1218:
	.loc 1 4061 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1224
	.loc 1 4062 0
	movl	$1, %eax
	subl	-8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1224:
	.loc 1 4066 0
	cmpl	$0, -12(%ebp)
	je	.L1226
	.loc 1 4068 0
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1228
	.loc 1 4069 0
	movl	$1, %eax
	subl	-8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1226
.L1228:
	.loc 1 4070 0
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L1211
.L1226:
	.loc 1 4073 0
	addl	$1, -36(%ebp)
	.loc 1 4074 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$6, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
.L1211:
.LBE47:
	.loc 1 4078 0
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1209:
.LBE46:
	.loc 1 4017 0
	cmpl	$0, -32(%ebp)
	jne	.L1210
	.loc 1 4083 0
	cmpl	$0, -36(%ebp)
	jne	.L1200
	.loc 1 4085 0
	movl	$0, -40(%ebp)
	.loc 1 4086 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L1200:
.LBE45:
	.loc 1 4090 0
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1208:
	movl	-56(%ebp), %eax
	.loc 1 4091 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	expand_builtin_expect_jump, .-expand_builtin_expect_jump
.globl expand_builtin_trap
	.type	expand_builtin_trap, @function
expand_builtin_trap:
.LFB79:
	.loc 1 4095 0
	pushl	%ebp
.LCFI268:
	movl	%esp, %ebp
.LCFI269:
	pushl	%ebx
.LCFI270:
	subl	$4, %esp
.LCFI271:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4098 0
	call	gen_trap@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 4102 0
	call	emit_barrier@PLT
	.loc 1 4103 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	expand_builtin_trap, .-expand_builtin_trap
	.section	.rodata
.LC385:
	.string	"%s"
	.text
	.type	expand_builtin_sprintf, @function
expand_builtin_sprintf:
.LFB80:
	.loc 1 4115 0
	pushl	%ebp
.LCFI272:
	movl	%esp, %ebp
.LCFI273:
	pushl	%edi
.LCFI274:
	pushl	%esi
.LCFI275:
	pushl	%ebx
.LCFI276:
	subl	$76, %esp
.LCFI277:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4119 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 4122 0
	cmpl	$0, 8(%ebp)
	jne	.L1236
	.loc 1 4123 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1236:
	.loc 1 4124 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 4125 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1239
	.loc 1 4126 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1239:
	.loc 1 4127 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4128 0
	cmpl	$0, 8(%ebp)
	jne	.L1241
	.loc 1 4129 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1241:
	.loc 1 4130 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4131 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1243
	.loc 1 4132 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1243:
	.loc 1 4133 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4136 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -36(%ebp)
	.loc 1 4137 0
	cmpl	$0, -36(%ebp)
	jne	.L1245
	.loc 1 4138 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1245:
	.loc 1 4141 0
	movl	$37, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	jne	.L1247
.LBB48:
	.loc 1 4143 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4146 0
	cmpl	$0, 8(%ebp)
	jne	.L1249
	cmpl	$0, -32(%ebp)
	jne	.L1251
.L1249:
	.loc 1 4147 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1251:
	.loc 1 4148 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %esi
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call_expr
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 4150 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1252
	.loc 1 4151 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1238
.L1252:
	.loc 1 4152 0
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -68(%ebp)
	movl	$0, %eax
	cld
	movl	-68(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4153 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4154 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -64(%ebp)
	jmp	.L1238
.L1247:
.LBE48:
	.loc 1 4157 0
	leal	.LC385@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1254
.LBB49:
	.loc 1 4160 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4162 0
	cmpl	$0, -24(%ebp)
	jne	.L1256
	.loc 1 4163 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1256:
	.loc 1 4165 0
	cmpl	$0, 8(%ebp)
	je	.L1258
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1260
.L1258:
	.loc 1 4166 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1260:
	.loc 1 4167 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4168 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1261
	.loc 1 4169 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1261:
	.loc 1 4171 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1263
	.loc 1 4173 0
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -16(%ebp)
	.loc 1 4174 0
	cmpl	$0, -16(%ebp)
	je	.L1265
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1268
.L1265:
	.loc 1 4175 0
	movl	$0, -64(%ebp)
	jmp	.L1238
.L1263:
	.loc 1 4178 0
	movl	$0, -16(%ebp)
.L1268:
	.loc 1 4180 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4181 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4182 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call_expr
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 4185 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1269
	.loc 1 4186 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1238
.L1269:
	.loc 1 4187 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -64(%ebp)
	jmp	.L1238
.L1254:
.LBE49:
	.loc 1 4190 0
	movl	$0, -64(%ebp)
.L1238:
	movl	-64(%ebp), %eax
	.loc 1 4191 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE80:
	.size	expand_builtin_sprintf, .-expand_builtin_sprintf
	.section	.rodata
	.type	__FUNCTION__.18223, @object
	.size	__FUNCTION__.18223, 15
__FUNCTION__.18223:
	.string	"expand_builtin"
.LC386:
	.string	"__builtin_"
	.align 4
.LC387:
	.string	"built-in function `%s' not currently supported"
	.text
.globl expand_builtin
	.type	expand_builtin, @function
expand_builtin:
.LFB81:
	.loc 1 4206 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	pushl	%esi
.LCFI280:
	pushl	%ebx
.LCFI281:
	subl	$96, %esp
.LCFI282:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4207 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4208 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4209 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4212 0
	call	emit_queue@PLT
	.loc 1 4214 0
	movl	-36(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	jne	.L1273
	.loc 1 4215 0
	movl	targetm@GOT(%ebx), %eax
	movl	212(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1273:
	.loc 1 4220 0
	movl	-28(%ebp), %eax
	subl	$32, %eax
	movl	%eax, -72(%ebp)
	cmpl	$15, -72(%ebp)
	ja	.L1276
	movl	$1, %eax
	movzbl	-72(%ebp), %ecx
	sall	%cl, %eax
	andl	$52225, %eax
	testl	%eax, %eax
	jne	.L1277
	jmp	.L1276
.L1277:
	.loc 1 4226 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_call@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1276:
	.loc 1 4235 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1278
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	$10, 8(%esp)
	leal	.LC386@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L1278
	.loc 1 4236 0
	movl	-28(%ebp), %eax
	movl	%eax, -76(%ebp)
	cmpl	$207, -76(%ebp)
	ja	.L1282
	cmpl	$203, -76(%ebp)
	jae	.L1281
	cmpl	$33, -76(%ebp)
	ja	.L1283
	cmpl	$29, -76(%ebp)
	jae	.L1281
	movl	-76(%ebp), %eax
	subl	$23, %eax
	cmpl	$3, %eax
	ja	.L1278
	jmp	.L1281
.L1283:
	cmpl	$39, -76(%ebp)
	je	.L1281
	cmpl	$39, -76(%ebp)
	ja	.L1284
	movl	-76(%ebp), %eax
	subl	$36, %eax
	cmpl	$1, %eax
	ja	.L1278
	jmp	.L1281
.L1284:
	cmpl	$41, -76(%ebp)
	je	.L1281
	jmp	.L1278
.L1282:
	cmpl	$278, -76(%ebp)
	ja	.L1285
	cmpl	$275, -76(%ebp)
	jae	.L1281
	cmpl	$265, -76(%ebp)
	jb	.L1278
	cmpl	$268, -76(%ebp)
	jbe	.L1281
	movl	-76(%ebp), %eax
	subl	$270, %eax
	cmpl	$3, %eax
	ja	.L1278
	jmp	.L1281
.L1285:
	cmpl	$311, -76(%ebp)
	je	.L1281
	cmpl	$311, -76(%ebp)
	jb	.L1278
	movl	-76(%ebp), %eax
	subl	$323, %eax
	cmpl	$5, %eax
	ja	.L1278
.L1281:
	.loc 1 4303 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_call@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1278:
	.loc 1 4311 0
	cmpl	$0, 24(%ebp)
	je	.L1286
	.loc 1 4312 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 12(%ebp)
.L1286:
	.loc 1 4317 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1288
	movl	-36(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1290
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1288
.L1290:
.LBB50:
	.loc 1 4320 0
	movb	$0, -9(%ebp)
	.loc 1 4323 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1292
.L1293:
	.loc 1 4324 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1294
	.loc 1 4326 0
	movb	$1, -9(%ebp)
	.loc 1 4327 0
	jmp	.L1296
.L1294:
	.loc 1 4323 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1292:
	cmpl	$0, -24(%ebp)
	jne	.L1293
.L1296:
	.loc 1 4330 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1288
	.loc 1 4332 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1298
.L1299:
	.loc 1 4333 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 4332 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1298:
	cmpl	$0, -24(%ebp)
	jne	.L1299
	.loc 1 4335 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1288:
.LBE50:
	.loc 1 4339 0
	cmpl	$348, -28(%ebp)
	ja	.L1301
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L1343@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1343:
	.long	.L1302@GOTOFF
	.long	.L1303@GOTOFF
	.long	.L1303@GOTOFF
	.long	.L1303@GOTOFF
	.long	.L1303@GOTOFF
	.long	.L1303@GOTOFF
	.long	.L1303@GOTOFF
	.long	.L1303@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1307@GOTOFF
	.long	.L1308@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1309@GOTOFF
	.long	.L1310@GOTOFF
	.long	.L1307@GOTOFF
	.long	.L1311@GOTOFF
	.long	.L1312@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1313@GOTOFF
	.long	.L1314@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1315@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1316@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1317@GOTOFF
	.long	.L1317@GOTOFF
	.long	.L1317@GOTOFF
	.long	.L1317@GOTOFF
	.long	.L1317@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1317@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1317@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1317@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1319@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1322@GOTOFF
	.long	.L1323@GOTOFF
	.long	.L1324@GOTOFF
	.long	.L1324@GOTOFF
	.long	.L1325@GOTOFF
	.long	.L1326@GOTOFF
	.long	.L1327@GOTOFF
	.long	.L1328@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1329@GOTOFF
	.long	.L1330@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1331@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1332@GOTOFF
	.long	.L1333@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1301@GOTOFF
	.long	.L1334@GOTOFF
	.long	.L1335@GOTOFF
	.long	.L1336@GOTOFF
	.long	.L1337@GOTOFF
	.long	.L1338@GOTOFF
	.long	.L1338@GOTOFF
	.long	.L1339@GOTOFF
	.long	.L1340@GOTOFF
	.long	.L1341@GOTOFF
	.long	.L1342@GOTOFF
	.text
.L1303:
	.loc 1 4349 0
	leal	__FUNCTION__.18223@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4349, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1304:
	.loc 1 4362 0
	leal	__FUNCTION__.18223@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4362, 4(%esp)
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1318:
	.loc 1 4378 0
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1344
.L1317:
	.loc 1 4390 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_mathfn
	movl	%eax, 12(%ebp)
	.loc 1 4391 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4392 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1275
.L1326:
	.loc 1 4396 0
	call	expand_builtin_apply_args
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1327:
	.loc 1 4409 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1347
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$16, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1347
	.loc 1 4413 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1347:
.LBB51:
	.loc 1 4420 0
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L1350
.L1351:
	.loc 1 4421 0
	movl	-20(%ebp), %esi
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -48(%ebp,%esi,4)
	.loc 1 4420 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -20(%ebp)
.L1350:
	cmpl	$0, -16(%ebp)
	jne	.L1351
	.loc 1 4423 0
	movl	-40(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_builtin_apply
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1328:
.LBE51:
	.loc 1 4430 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	je	.L1353
	.loc 1 4431 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, (%esp)
	call	expand_builtin_return
.L1353:
	.loc 1 4433 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1319:
	.loc 1 4436 0
	call	expand_builtin_saveregs@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1322:
	.loc 1 4439 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_args_info
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1321:
	.loc 1 4443 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_next_arg
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1320:
	.loc 1 4446 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_classify_type
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1323:
	.loc 1 4449 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_constant_p
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1324:
	.loc 1 4453 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_frame_address
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1325:
	.loc 1 4458 0
	cmpl	$0, -32(%ebp)
	jne	.L1355
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1357
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1357
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1357
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L1357
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L1355
.L1357:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L1362
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1364
.L1362:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -64(%ebp)
.L1364:
	movl	-64(%ebp), %ecx
	movzwl	(%ecx), %eax
	cmpw	$76, %ax
	je	.L1365
.L1355:
	.loc 1 4461 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1365:
	.loc 1 4463 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L1366
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1368
.L1366:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -60(%ebp)
.L1368:
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1302:
	.loc 1 4466 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_alloca
	movl	%eax, 12(%ebp)
	.loc 1 4467 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4468 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1275
.L1308:
	.loc 1 4472 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_ffs
	movl	%eax, 12(%ebp)
	.loc 1 4473 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4474 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1275
.L1316:
	.loc 1 4478 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_strlen
	movl	%eax, 12(%ebp)
	.loc 1 4479 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4480 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1314:
	.loc 1 4484 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_strcpy
	movl	%eax, 12(%ebp)
	.loc 1 4485 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4486 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1275
.L1313:
	.loc 1 4498 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_stpcpy
	movl	%eax, 12(%ebp)
	.loc 1 4499 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4500 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1275
.L1309:
	.loc 1 4556 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memcpy
	movl	%eax, 12(%ebp)
	.loc 1 4557 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4558 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1312:
	.loc 1 4562 0
	movl	$1, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_mempcpy
	movl	%eax, 12(%ebp)
	.loc 1 4563 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4564 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1275
.L1310:
	.loc 1 4568 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memmove
	movl	%eax, 12(%ebp)
	.loc 1 4569 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4570 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1275
.L1306:
	.loc 1 4574 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_bcopy
	movl	%eax, 12(%ebp)
	.loc 1 4575 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4576 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1311:
	.loc 1 4580 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memset
	movl	%eax, 12(%ebp)
	.loc 1 4581 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4582 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1275
.L1305:
	.loc 1 4586 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_bzero
	movl	%eax, 12(%ebp)
	.loc 1 4587 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4588 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1275
.L1315:
	.loc 1 4592 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_strcmp
	movl	%eax, 12(%ebp)
	.loc 1 4593 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4594 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1307:
	.loc 1 4607 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memcmp
	movl	%eax, 12(%ebp)
	.loc 1 4608 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4609 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1275
.L1329:
	.loc 1 4624 0
	movl	$6, 12(%esp)
	movl	$7, 8(%esp)
	movl	$14, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	je	.L1344
	.loc 1 4642 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1330:
	.loc 1 4646 0
	call	expand_builtin_trap@PLT
	.loc 1 4647 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1331:
	.loc 1 4663 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_sprintf
	movl	%eax, 12(%ebp)
	.loc 1 4664 0
	cmpl	$0, 12(%ebp)
	je	.L1344
	.loc 1 4665 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1275
.L1332:
	.loc 1 4670 0
	call	expand_builtin_unwind_init@PLT
	.loc 1 4671 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1333:
	.loc 1 4673 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1334:
	.loc 1 4682 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_builtin_frob_return_addr@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1335:
	.loc 1 4684 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_builtin_extract_return_addr@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1336:
	.loc 1 4686 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_builtin_eh_return@PLT
	.loc 1 4688 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1337:
	.loc 1 4691 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_eh_return_data_regno@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1342:
	.loc 1 4695 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_builtin_extend_pointer@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1338:
	.loc 1 4698 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_va_start
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1339:
	.loc 1 4700 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_va_end
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1340:
	.loc 1 4702 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_va_copy
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1341:
	.loc 1 4704 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_expect
	movl	%eax, -68(%ebp)
	jmp	.L1275
.L1301:
	.loc 1 4712 0
	movl	-36(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	jne	.L1344
	.loc 1 4713 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC387@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1344:
	.loc 1 4719 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_call@PLT
	movl	%eax, -68(%ebp)
.L1275:
	movl	-68(%ebp), %eax
	.loc 1 4720 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE81:
	.size	expand_builtin, .-expand_builtin
	.type	fold_builtin_constant_p, @function
fold_builtin_constant_p:
.LFB82:
	.loc 1 4728 0
	pushl	%ebp
.LCFI283:
	movl	%esp, %ebp
.LCFI284:
	subl	$4, %esp
.LCFI285:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4729 0
	cmpl	$0, 8(%ebp)
	jne	.L1401
	.loc 1 4730 0
	movl	$0, -4(%ebp)
	jmp	.L1403
.L1401:
	.loc 1 4732 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4737 0
	jmp	.L1404
.L1405:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1404:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1406
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1406
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1409
.L1406:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1409
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1405
.L1409:
	.loc 1 4740 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	je	.L1411
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1413
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1411
.L1413:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1415
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1415
.L1411:
	.loc 1 4745 0
	movl	global_trees@GOT(%ecx), %eax
	movl	48(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1403
.L1415:
	.loc 1 4755 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1417
	movl	cse_not_expected@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1417
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1417
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1417
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1417
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L1417
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	je	.L1417
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1417
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L1417
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1427
.L1417:
	.loc 1 4759 0
	movl	global_trees@GOT(%ecx), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1403
.L1427:
	.loc 1 4761 0
	movl	$0, -4(%ebp)
.L1403:
	movl	-4(%ebp), %eax
	.loc 1 4762 0
	leave
	ret
.LFE82:
	.size	fold_builtin_constant_p, .-fold_builtin_constant_p
	.type	fold_builtin_classify_type, @function
fold_builtin_classify_type:
.LFB83:
	.loc 1 4769 0
	pushl	%ebp
.LCFI286:
	movl	%esp, %ebp
.LCFI287:
	pushl	%ebx
.LCFI288:
	subl	$20, %esp
.LCFI289:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4770 0
	cmpl	$0, 8(%ebp)
	jne	.L1430
	.loc 1 4771 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1432
.L1430:
	.loc 1 4773 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	type_to_class
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -8(%ebp)
.L1432:
	movl	-8(%ebp), %eax
	.loc 1 4774 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	fold_builtin_classify_type, .-fold_builtin_classify_type
	.section	.rodata
	.align 4
.LC388:
	.string	"target format does not support infinity"
	.text
	.type	fold_builtin_inf, @function
fold_builtin_inf:
.LFB84:
	.loc 1 4782 0
	pushl	%ebp
.LCFI290:
	movl	%esp, %ebp
.LCFI291:
	pushl	%ebx
.LCFI292:
	subl	$68, %esp
.LCFI293:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4785 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1435
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1435
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	je	.L1435
	cmpl	$0, 12(%ebp)
	je	.L1435
	.loc 1 4786 0
	leal	.LC388@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1435:
	.loc 1 4788 0
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	real_inf@PLT
	.loc 1 4789 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_real@PLT
	.loc 1 4790 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	fold_builtin_inf, .-fold_builtin_inf
	.type	fold_builtin_nan, @function
fold_builtin_nan:
.LFB85:
	.loc 1 4798 0
	pushl	%ebp
.LCFI294:
	movl	%esp, %ebp
.LCFI295:
	pushl	%ebx
.LCFI296:
	subl	$68, %esp
.LCFI297:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4802 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1442
	.loc 1 4803 0
	movl	$0, -40(%ebp)
	jmp	.L1444
.L1442:
	.loc 1 4804 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -8(%ebp)
	.loc 1 4805 0
	cmpl	$0, -8(%ebp)
	jne	.L1445
	.loc 1 4806 0
	movl	$0, -40(%ebp)
	jmp	.L1444
.L1445:
	.loc 1 4808 0
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	real_nan@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1447
	.loc 1 4809 0
	movl	$0, -40(%ebp)
	jmp	.L1444
.L1447:
	.loc 1 4811 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_real@PLT
	movl	%eax, -40(%ebp)
.L1444:
	movl	-40(%ebp), %eax
	.loc 1 4812 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE85:
	.size	fold_builtin_nan, .-fold_builtin_nan
.globl fold_builtin
	.type	fold_builtin, @function
fold_builtin:
.LFB86:
	.loc 1 4820 0
	pushl	%ebp
.LCFI298:
	movl	%esp, %ebp
.LCFI299:
	pushl	%ebx
.LCFI300:
	subl	$36, %esp
.LCFI301:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4821 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4822 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4823 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4825 0
	movl	-20(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	jne	.L1451
	.loc 1 4826 0
	movl	$0, -24(%ebp)
	jmp	.L1453
.L1451:
	.loc 1 4828 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$288, -28(%ebp)
	ja	.L1462
	cmpl	$286, -28(%ebp)
	jae	.L1458
	cmpl	$282, -28(%ebp)
	ja	.L1457
	cmpl	$280, -28(%ebp)
	jae	.L1456
	cmpl	$41, -28(%ebp)
	je	.L1455
	jmp	.L1454
.L1462:
	cmpl	$293, -28(%ebp)
	je	.L1460
	cmpl	$293, -28(%ebp)
	ja	.L1463
	cmpl	$291, -28(%ebp)
	ja	.L1454
	jmp	.L1459
.L1463:
	cmpl	$296, -28(%ebp)
	je	.L1461
	jmp	.L1454
.L1461:
	.loc 1 4831 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_builtin_constant_p
	movl	%eax, -24(%ebp)
	jmp	.L1453
.L1460:
	.loc 1 4834 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_builtin_classify_type
	movl	%eax, -24(%ebp)
	jmp	.L1453
.L1455:
	.loc 1 4837 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	je	.L1454
.LBB52:
	.loc 1 4839 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -8(%ebp)
	.loc 1 4840 0
	cmpl	$0, -8(%ebp)
	je	.L1454
	.loc 1 4843 0
	movl	global_trees@GOT(%ebx), %eax
	movl	140(%eax), %eax
	testl	%eax, %eax
	je	.L1467
	.loc 1 4844 0
	movl	global_trees@GOT(%ebx), %eax
	movl	140(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -8(%ebp)
.L1467:
	.loc 1 4845 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1453
.L1456:
.LBE52:
	.loc 1 4853 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	fold_builtin_inf
	movl	%eax, -24(%ebp)
	jmp	.L1453
.L1457:
	.loc 1 4858 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	fold_builtin_inf
	movl	%eax, -24(%ebp)
	jmp	.L1453
.L1458:
	.loc 1 4863 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_builtin_nan
	movl	%eax, -24(%ebp)
	jmp	.L1453
.L1459:
	.loc 1 4868 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_builtin_nan
	movl	%eax, -24(%ebp)
	jmp	.L1453
.L1454:
	.loc 1 4874 0
	movl	$0, -24(%ebp)
.L1453:
	movl	-24(%ebp), %eax
	.loc 1 4875 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	fold_builtin, .-fold_builtin
	.type	build_function_call_expr, @function
build_function_call_expr:
.LFB87:
	.loc 1 4880 0
	pushl	%ebp
.LCFI302:
	movl	%esp, %ebp
.LCFI303:
	pushl	%ebx
.LCFI304:
	subl	$36, %esp
.LCFI305:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4883 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4884 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$54, (%esp)
	call	build@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4886 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 4887 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	.loc 1 4888 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	build_function_call_expr, .-build_function_call_expr
	.type	validate_arglist, @function
validate_arglist:
.LFB88:
	.loc 1 4897 0
	pushl	%ebp
.LCFI306:
	movl	%esp, %ebp
.LCFI307:
	subl	$20, %esp
.LCFI308:
	.loc 1 4899 0
	movl	$0, -4(%ebp)
	.loc 1 4907 0
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1473:
	.loc 1 4912 0
	movl	-12(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, -12(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4913 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1475
	cmpl	$6, -20(%ebp)
	je	.L1476
	jmp	.L1474
.L1475:
	.loc 1 4917 0
	movl	$1, -4(%ebp)
	.loc 1 4918 0
	jmp	.L1477
.L1476:
	.loc 1 4922 0
	cmpl	$0, 8(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	.loc 1 4923 0
	jmp	.L1477
.L1474:
	.loc 1 4928 0
	cmpl	$0, 8(%ebp)
	je	.L1477
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	-8(%ebp), %eax
	jne	.L1477
	.loc 1 4933 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4935 0
	jmp	.L1473
.L1477:
	.loc 1 4946 0
	movl	-4(%ebp), %eax
	.loc 1 4947 0
	leave
	ret
.LFE88:
	.size	validate_arglist, .-validate_arglist
.globl default_init_builtins
	.type	default_init_builtins, @function
default_init_builtins:
.LFB89:
	.loc 1 4953 0
	pushl	%ebp
.LCFI309:
	movl	%esp, %ebp
.LCFI310:
	.loc 1 4954 0
	popl	%ebp
	ret
.LFE89:
	.size	default_init_builtins, .-default_init_builtins
.globl default_expand_builtin
	.type	default_expand_builtin, @function
default_expand_builtin:
.LFB90:
	.loc 1 4965 0
	pushl	%ebp
.LCFI311:
	movl	%esp, %ebp
.LCFI312:
	.loc 1 4966 0
	movl	$0, %eax
	.loc 1 4967 0
	popl	%ebp
	ret
.LFE90:
	.size	default_expand_builtin, .-default_expand_builtin
	.type	readonly_data_expr, @function
readonly_data_expr:
.LFB91:
	.loc 1 4975 0
	pushl	%ebp
.LCFI313:
	movl	%esp, %ebp
.LCFI314:
	pushl	%ebx
.LCFI315:
	subl	$20, %esp
.LCFI316:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4976 0
	jmp	.L1486
.L1487:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1486:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1488
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1488
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1491
.L1488:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1491
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1487
.L1491:
	.loc 1 4978 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1493
	.loc 1 4979 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	decl_readonly_section@PLT
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	jmp	.L1495
.L1493:
	.loc 1 4981 0
	movl	$0, -8(%ebp)
.L1495:
	movl	-8(%ebp), %eax
	.loc 1 4982 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE91:
	.size	readonly_data_expr, .-readonly_data_expr
.globl c_strlen_exported
	.type	c_strlen_exported, @function
c_strlen_exported:
.LFB92:
	.loc 1 4988 0
	pushl	%ebp
.LCFI317:
	movl	%esp, %ebp
.LCFI318:
	subl	$8, %esp
.LCFI319:
	.loc 1 4990 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	.loc 1 4994 0
	leave
	ret
.LFE92:
	.size	c_strlen_exported, .-c_strlen_exported
	.local	apply_args_mode
	.comm	apply_args_mode,704,32
	.local	apply_result_mode
	.comm	apply_result_mode,704,32
	.local	apply_args_reg_offset
	.comm	apply_args_reg_offset,704,32
	.comm	built_in_decls,1428,32
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI1
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI7
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI12-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI13
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI17-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI18
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI23-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI27-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI28
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI31-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI32
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI36-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI37
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI40-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI41
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI45-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI46
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI49-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI50
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI53-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI54
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI57-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI58
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI61-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI64-.LCFI62
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI65-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI66
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI69-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI72-.LCFI70
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI73-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI76-.LCFI74
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI77-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI78
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI81-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI84-.LCFI82
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI85-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI86
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI89-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI92-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI93
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI96-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI97
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI100-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI101
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI104-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI105
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI110-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI112-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI115-.LCFI113
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI116-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI118-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI120-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI125-.LCFI121
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI126-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI127
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI131-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI135-.LCFI132
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI136-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI137
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI140-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI143-.LCFI141
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI144-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI147-.LCFI145
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI148-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI151-.LCFI149
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI152-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI156-.LCFI153
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI157-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI160-.LCFI158
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI161-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI162-.LCFI161
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI164-.LCFI162
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI165-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI166-.LCFI165
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI168-.LCFI166
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI169-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI172-.LCFI170
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI173-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI174-.LCFI173
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI176-.LCFI174
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI177-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI182-.LCFI178
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI183-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI184-.LCFI183
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI184
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI187-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI188-.LCFI187
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI190-.LCFI188
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI191-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI194-.LCFI192
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI195-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI196-.LCFI195
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI197-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI200-.LCFI198
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI201-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI204-.LCFI202
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI205-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI208-.LCFI206
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI209-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI210-.LCFI209
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI212-.LCFI210
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI213-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI214-.LCFI213
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI216-.LCFI214
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI217-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI218-.LCFI217
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI220-.LCFI218
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI221-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI222-.LCFI221
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI224-.LCFI222
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI225-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI226-.LCFI225
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI228-.LCFI226
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI229-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI234-.LCFI230
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI235-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI238-.LCFI236
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI239-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI240-.LCFI239
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI242-.LCFI240
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI243-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI244-.LCFI243
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI246-.LCFI244
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI247-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI248-.LCFI247
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI251-.LCFI248
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI252-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI253-.LCFI252
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI255-.LCFI253
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI256-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI257-.LCFI256
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI259-.LCFI257
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI260-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI261-.LCFI260
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI263-.LCFI261
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI264-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI265-.LCFI264
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI267-.LCFI265
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI268-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI271-.LCFI269
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI272-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI273-.LCFI272
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI277-.LCFI273
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI278-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI282-.LCFI279
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI283-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI284-.LCFI283
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI286-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI287-.LCFI286
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI289-.LCFI287
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI290-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI291-.LCFI290
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI293-.LCFI291
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI294-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI295-.LCFI294
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI297-.LCFI295
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI298-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI299-.LCFI298
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI301-.LCFI299
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI302-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI303-.LCFI302
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI305-.LCFI303
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI306-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI307-.LCFI306
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI309-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI310-.LCFI309
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.byte	0x4
	.long	.LCFI311-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI312-.LCFI311
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI313-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI314-.LCFI313
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI316-.LCFI314
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.byte	0x4
	.long	.LCFI317-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI318-.LCFI317
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE154:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/bitmap.h"
	.file 7 "../../../kg++fe/gnu/basic-block.h"
	.file 8 "../../../kg++fe/gnu/sbitmap.h"
	.file 9 "../../../kg++fe/gnu/real.h"
	.file 10 "../../../kg++fe/gnu/hashtable.h"
	.file 11 "../../../kg++fe/gnu/location.h"
	.file 12 "../../../kg++fe/gnu/function.h"
	.file 13 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 14 "../../../kg++fe/omp_types.h"
	.file 15 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 16 "../../../kg++fe/gnu/typeclass.h"
	.file 17 "../../../kg++fe/gnu/optabs.h"
	.file 18 "../../../kg++fe/gnu/MIPS/insn-codes.h"
	.file 19 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 20 "../../../kg++fe/gnu/flags.h"
	.file 21 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 22 "../../../kg++fe/gnu/libfuncs.h"
	.file 23 "../../../kg++fe/gnu/recog.h"
	.file 24 "../../../kg++fe/gnu/target.h"
	.file 25 "/usr/include/stdio.h"
	.file 26 "/usr/include/libio.h"
	.file 27 "/usr/include/bits/types.h"
	.file 28 "../../../kg++fe/gnu/langhooks.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB15-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB16-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI7-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI13-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI17-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI18-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI28-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI32-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI36-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI37-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI41-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI46-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI49-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI50-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI53-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI54-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI57-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI58-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI61-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI62-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI65-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI66-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI69-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI70-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI73-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI74-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI77-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI78-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI81-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI82-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI85-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI86-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI89-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI90-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI92-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI93-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI101-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI104-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI105-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI110-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI111-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI112-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI113-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI116-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI117-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI118-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI119-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI121-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI127-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI131-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI132-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI136-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI137-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI140-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI141-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI144-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI144-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI145-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI148-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI149-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI152-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI153-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI157-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI157-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI158-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI161-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI161-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI162-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI165-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI165-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI166-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI169-.Ltext0
	.long	.LCFI170-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI170-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI173-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI174-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI177-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI178-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI183-.Ltext0
	.long	.LCFI184-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI184-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI187-.Ltext0
	.long	.LCFI188-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI188-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI191-.Ltext0
	.long	.LCFI192-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI192-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI195-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI195-.Ltext0
	.long	.LCFI196-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI196-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI197-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI197-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI198-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI201-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI201-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI202-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI205-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI206-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI209-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI209-.Ltext0
	.long	.LCFI210-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI210-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI213-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI213-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI214-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI217-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI217-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI218-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI221-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI221-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI222-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI225-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI225-.Ltext0
	.long	.LCFI226-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI226-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI229-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI229-.Ltext0
	.long	.LCFI230-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI230-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI235-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI235-.Ltext0
	.long	.LCFI236-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI236-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI239-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI239-.Ltext0
	.long	.LCFI240-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI240-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI243-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI243-.Ltext0
	.long	.LCFI244-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI244-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI247-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI247-.Ltext0
	.long	.LCFI248-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI248-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI252-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI252-.Ltext0
	.long	.LCFI253-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI253-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
	.long	.LCFI256-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI256-.Ltext0
	.long	.LCFI257-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI257-.Ltext0
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
	.long	.LCFI260-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI260-.Ltext0
	.long	.LCFI261-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI261-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI264-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI264-.Ltext0
	.long	.LCFI265-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI265-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI268-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI268-.Ltext0
	.long	.LCFI269-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI269-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI272-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI272-.Ltext0
	.long	.LCFI273-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI273-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI278-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI278-.Ltext0
	.long	.LCFI279-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI279-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI283-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI283-.Ltext0
	.long	.LCFI284-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI284-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI286-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI286-.Ltext0
	.long	.LCFI287-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI287-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
	.long	.LCFI290-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI290-.Ltext0
	.long	.LCFI291-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI291-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
	.long	.LCFI294-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI294-.Ltext0
	.long	.LCFI295-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI295-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI298-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI298-.Ltext0
	.long	.LCFI299-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI299-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI302-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI302-.Ltext0
	.long	.LCFI303-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI303-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI306-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI306-.Ltext0
	.long	.LCFI307-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI307-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI309-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI309-.Ltext0
	.long	.LCFI310-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI310-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
	.long	.LCFI311-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI311-.Ltext0
	.long	.LCFI312-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI312-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
	.long	.LCFI313-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI313-.Ltext0
	.long	.LCFI314-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI314-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
	.long	.LCFI317-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI317-.Ltext0
	.long	.LCFI318-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI318-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xd802
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/builtins.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0xbfe
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x4
	.byte	0x87
	.long	0x849
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x4
	.byte	0x8e
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x4
	.byte	0x91
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x4
	.byte	0x99
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x4
	.byte	0xa2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x4
	.byte	0xb4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x4
	.byte	0xbb
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x4
	.byte	0xc0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x4
	.byte	0xc9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x1817
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x1827
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f7
	.uleb128 0x8
	.long	0x2d0
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x3
	.value	0x887
	.long	0x3ef9
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x4217
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x425f
	.uleb128 0xa
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x436f
	.uleb128 0xa
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x42ad
	.uleb128 0xa
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x431a
	.uleb128 0xa
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x43f5
	.uleb128 0xa
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x545d
	.uleb128 0x9
	.long	.LASF2
	.byte	0x3
	.value	0x88f
	.long	0x465a
	.uleb128 0xa
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x442c
	.uleb128 0xa
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x4473
	.uleb128 0xa
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x44c4
	.uleb128 0xa
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x4510
	.uleb128 0xa
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x5e2b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d6
	.uleb128 0xb
	.long	0x2db
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3bc
	.string	"mips_args"
	.byte	0x40
	.byte	0xd
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xd
	.value	0xaad
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xd
	.value	0xab0
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xd
	.value	0xab5
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xd
	.value	0xab8
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xd
	.value	0xabb
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xd
	.value	0xac8
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0xd
	.value	0xacb
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xd
	.value	0xad3
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xd
	.value	0xad4
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3d3
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0xd
	.value	0xad5
	.long	0x2ea
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x13
	.byte	0x2b
	.long	0x408
	.uleb128 0x3
	.byte	0x4
	.long	0x2db
	.uleb128 0x2
	.string	"va_list"
	.byte	0x13
	.byte	0x69
	.long	0x3f2
	.uleb128 0x2
	.string	"size_t"
	.byte	0xf
	.byte	0xd6
	.long	0x3bc
	.uleb128 0xc
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xc
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xc
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xc
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xc
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x1b
	.byte	0x3b
	.long	0x483
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x1b
	.byte	0x90
	.long	0x4cd
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x1b
	.byte	0x91
	.long	0x4ae
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2db
	.uleb128 0x2
	.string	"FILE"
	.byte	0x19
	.byte	0x2e
	.long	0x4fe
	.uleb128 0x14
	.long	0x779
	.long	.LASF4
	.byte	0x94
	.byte	0x19
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x1a
	.value	0x10c
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x1a
	.value	0x111
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x1a
	.value	0x112
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x1a
	.value	0x113
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x1a
	.value	0x114
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x1a
	.value	0x115
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x1a
	.value	0x116
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x1a
	.value	0x117
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x1a
	.value	0x118
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x1a
	.value	0x11a
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x1a
	.value	0x11b
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x1a
	.value	0x11c
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x1a
	.value	0x11e
	.long	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x1a
	.value	0x120
	.long	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x1a
	.value	0x122
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x1a
	.value	0x126
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x1a
	.value	0x128
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x1a
	.value	0x12c
	.long	0x43c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x1a
	.value	0x12d
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x1a
	.value	0x12e
	.long	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x1a
	.value	0x132
	.long	0x7f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x1a
	.value	0x13b
	.long	0x4d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x1a
	.value	0x144
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x1a
	.value	0x145
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x1a
	.value	0x146
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x1a
	.value	0x147
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x1a
	.value	0x148
	.long	0x41d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x1a
	.value	0x14a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x1a
	.value	0x14c
	.long	0x7fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77f
	.uleb128 0xb
	.long	0x42b
	.uleb128 0x3
	.byte	0x4
	.long	0x42b
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0x1a
	.byte	0xb0
	.uleb128 0x4
	.long	0x7db
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x1a
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x1a
	.byte	0xb7
	.long	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x1a
	.byte	0xb8
	.long	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x1a
	.byte	0xbc
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x798
	.uleb128 0x3
	.byte	0x4
	.long	0x4fe
	.uleb128 0x10
	.long	0x7f7
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78a
	.uleb128 0x10
	.long	0x80d
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x81d
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x17
	.byte	0x0
	.uleb128 0xb
	.long	0x2e3
	.uleb128 0x3
	.byte	0x4
	.long	0x2e3
	.uleb128 0x3
	.byte	0x4
	.long	0x82e
	.uleb128 0x16
	.uleb128 0x3
	.byte	0x4
	.long	0x835
	.uleb128 0x17
	.long	0x841
	.byte	0x1
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x841
	.uleb128 0x1a
	.long	0xa92
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x1b
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x1b
	.string	"BImode"
	.sleb128 1
	.uleb128 0x1b
	.string	"QImode"
	.sleb128 2
	.uleb128 0x1b
	.string	"HImode"
	.sleb128 3
	.uleb128 0x1b
	.string	"SImode"
	.sleb128 4
	.uleb128 0x1b
	.string	"DImode"
	.sleb128 5
	.uleb128 0x1b
	.string	"TImode"
	.sleb128 6
	.uleb128 0x1b
	.string	"OImode"
	.sleb128 7
	.uleb128 0x1b
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x1b
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x1b
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x1b
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x1b
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x1b
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x1b
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x1b
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x1b
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x1b
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x1b
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x1b
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x1b
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x1b
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x1b
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x1b
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x1b
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x1b
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x1b
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x1b
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x1b
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x1b
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x1b
	.string	"COImode"
	.sleb128 30
	.uleb128 0x1b
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x1b
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x1b
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x1b
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x1b
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x1b
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x1b
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x1b
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x1b
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x1b
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x1b
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x1b
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x1b
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x1b
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x1b
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x1b
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x1b
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x1b
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x1b
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x1b
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x1b
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x1b
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x1b
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x1b
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x1c
	.long	0xb41
	.long	.LASF5
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uleb128 0x1b
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x1b
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x1b
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x1b
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x1b
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x1b
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x1b
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x1b
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x1b
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x1b
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x1a
	.long	0xb87
	.string	"real_value_class"
	.byte	0x4
	.byte	0x9
	.byte	0x22
	.uleb128 0x1b
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0x1b
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0x1b
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0x1b
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.long	0xbdf
	.string	"real_value"
	.byte	0x18
	.byte	0x9
	.byte	0x30
	.uleb128 0x5
	.string	"class"
	.byte	0x9
	.byte	0x35
	.long	0xb41
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"sign"
	.byte	0x9
	.byte	0x37
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"exp"
	.byte	0x9
	.byte	0x38
	.long	0x2e3
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sig"
	.byte	0x9
	.byte	0x39
	.long	0xbdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.long	0xbef
	.long	0x452
	.uleb128 0x11
	.long	0x3d3
	.byte	0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xb87
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x1a
	.long	0x13cd
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x1b
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x1b
	.string	"NIL"
	.sleb128 1
	.uleb128 0x1b
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x1b
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x1b
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x1b
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x1b
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x1b
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x1b
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x1b
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x1b
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x1b
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x1b
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x1b
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x1b
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x1b
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x1b
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x1b
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x1b
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x1b
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x1b
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x1b
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x1b
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x1b
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x1b
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x1b
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x1b
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x1b
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x1b
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x1b
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x1b
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x1b
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x1b
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x1b
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x1b
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x1b
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x1b
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x1b
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x1b
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x1b
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x1b
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x1b
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x1b
	.string	"INSN"
	.sleb128 42
	.uleb128 0x1b
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x1b
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x1b
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x1b
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x1b
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x1b
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x1b
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x1b
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x1b
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x1b
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x1b
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x1b
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x1b
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x1b
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x1b
	.string	"SET"
	.sleb128 57
	.uleb128 0x1b
	.string	"USE"
	.sleb128 58
	.uleb128 0x1b
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x1b
	.string	"CALL"
	.sleb128 60
	.uleb128 0x1b
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x1b
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x1b
	.string	"RESX"
	.sleb128 63
	.uleb128 0x1b
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x1b
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x1b
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x1b
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x1b
	.string	"CONST"
	.sleb128 68
	.uleb128 0x1b
	.string	"PC"
	.sleb128 69
	.uleb128 0x1b
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x1b
	.string	"REG"
	.sleb128 71
	.uleb128 0x1b
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x1b
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x1b
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x1b
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x1b
	.string	"MEM"
	.sleb128 76
	.uleb128 0x1b
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x1b
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x1b
	.string	"CC0"
	.sleb128 79
	.uleb128 0x1b
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x1b
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x1b
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x1b
	.string	"COND"
	.sleb128 83
	.uleb128 0x1b
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x1b
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x1b
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x1b
	.string	"NEG"
	.sleb128 87
	.uleb128 0x1b
	.string	"MULT"
	.sleb128 88
	.uleb128 0x1b
	.string	"DIV"
	.sleb128 89
	.uleb128 0x1b
	.string	"MOD"
	.sleb128 90
	.uleb128 0x1b
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x1b
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x1b
	.string	"AND"
	.sleb128 93
	.uleb128 0x1b
	.string	"IOR"
	.sleb128 94
	.uleb128 0x1b
	.string	"XOR"
	.sleb128 95
	.uleb128 0x1b
	.string	"NOT"
	.sleb128 96
	.uleb128 0x1b
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x1b
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x1b
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x1b
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x1b
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x1b
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x1b
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x1b
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x1b
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x1b
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x1b
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x1b
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x1b
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x1b
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x1b
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x1b
	.string	"NE"
	.sleb128 112
	.uleb128 0x1b
	.string	"EQ"
	.sleb128 113
	.uleb128 0x1b
	.string	"GE"
	.sleb128 114
	.uleb128 0x1b
	.string	"GT"
	.sleb128 115
	.uleb128 0x1b
	.string	"LE"
	.sleb128 116
	.uleb128 0x1b
	.string	"LT"
	.sleb128 117
	.uleb128 0x1b
	.string	"GEU"
	.sleb128 118
	.uleb128 0x1b
	.string	"GTU"
	.sleb128 119
	.uleb128 0x1b
	.string	"LEU"
	.sleb128 120
	.uleb128 0x1b
	.string	"LTU"
	.sleb128 121
	.uleb128 0x1b
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x1b
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x1b
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x1b
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x1b
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x1b
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x1b
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x1b
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x1b
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x1b
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x1b
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x1b
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x1b
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x1b
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x1b
	.string	"FIX"
	.sleb128 136
	.uleb128 0x1b
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x1b
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x1b
	.string	"ABS"
	.sleb128 139
	.uleb128 0x1b
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x1b
	.string	"FFS"
	.sleb128 141
	.uleb128 0x1b
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x1b
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x1b
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x1b
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x1b
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x1b
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x1b
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x1b
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x1b
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x1b
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x1b
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x1b
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x1b
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x1b
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x1b
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x1b
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x1b
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x1b
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x1b
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x1b
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x1b
	.string	"PHI"
	.sleb128 162
	.uleb128 0x1b
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1d
	.long	0x14a7
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x4b
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x4c
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x4e
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x4
	.byte	0x50
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x4
	.byte	0x52
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x55
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x4
	.byte	0x57
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x4
	.byte	0x58
	.long	0x13cd
	.uleb128 0x14
	.long	0x1518
	.long	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x4
	.byte	0x65
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x4
	.byte	0x66
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x4
	.byte	0x67
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x4
	.byte	0x68
	.long	0x14c2
	.uleb128 0x8
	.long	0x15f5
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x20
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x483
	.uleb128 0x20
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2e3
	.uleb128 0x20
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3bc
	.uleb128 0x20
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2d0
	.uleb128 0x20
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9d
	.uleb128 0x20
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19d
	.uleb128 0x20
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x849
	.uleb128 0x20
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x14a7
	.uleb128 0x20
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x1609
	.uleb128 0x20
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x1671
	.uleb128 0x20
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e5
	.uleb128 0x20
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x17fc
	.uleb128 0x20
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x1802
	.byte	0x0
	.uleb128 0x21
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x15f5
	.uleb128 0x4
	.long	0x1671
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x77
	.uleb128 0x7
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x6021
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x6021
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x160f
	.uleb128 0x4
	.long	0x17fc
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x79
	.uleb128 0x7
	.string	"head"
	.byte	0x7
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x7
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x7
	.byte	0xb8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x7
	.byte	0xb9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x7
	.byte	0xbc
	.long	0x6172
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x7
	.byte	0xbc
	.long	0x6172
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x7
	.byte	0xc1
	.long	0x60a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x7
	.byte	0xc5
	.long	0x60a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x7
	.byte	0xcb
	.long	0x60a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x7
	.byte	0xcd
	.long	0x60a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x7
	.byte	0xd0
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x7
	.byte	0xd3
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x17fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x17fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x7
	.byte	0xd9
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x7
	.byte	0xdc
	.long	0x63ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x7
	.byte	0xdf
	.long	0x60b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x7
	.byte	0xe2
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x7
	.byte	0xe5
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1677
	.uleb128 0x3
	.byte	0x4
	.long	0x1518
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x1523
	.uleb128 0x10
	.long	0x1827
	.long	0x1808
	.uleb128 0x11
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1837
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x4
	.long	0x186f
	.string	"location_s"
	.byte	0x8
	.byte	0xb
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0xb
	.byte	0x1e
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0xb
	.byte	0x21
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xb
	.byte	0x23
	.long	0x183d
	.uleb128 0x1a
	.long	0x21a3
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x1b
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x1b
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x1b
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x1b
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x1b
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x1b
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x1b
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x1b
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x1b
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x1b
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x1b
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x1b
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x1b
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x1b
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x1b
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x1b
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x1b
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x1b
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x1b
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x1b
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x1b
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x1b
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x1b
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x1b
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x1b
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x1b
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x1b
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x1b
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x1b
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x1b
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x1b
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x1b
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x1b
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x1b
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x1b
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x1b
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x1b
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x1b
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x1b
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x1b
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x1b
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x1b
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x1b
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x1b
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x1b
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x1b
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x1b
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x1b
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x1b
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x1b
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x1b
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x1b
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x1b
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x1b
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x1b
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x1b
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x1b
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x1b
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x1b
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x1b
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x1b
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x1b
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x1b
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x1b
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x1b
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x1b
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x1b
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x1b
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x1b
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x1b
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x1b
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x1b
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x1b
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x1b
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x1b
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x1b
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x1b
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x1b
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x1b
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x1b
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x1b
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x1b
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x1b
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x1b
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x1b
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x1b
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x1b
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x1b
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x1b
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x1b
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x1b
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x1b
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x1b
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x1b
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x1b
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x1b
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x1b
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x1b
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x1b
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x1b
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x1b
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x1b
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x1b
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x1b
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x1b
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x1b
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x1b
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x1b
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x1b
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x1b
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x1b
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x1b
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x1b
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x1b
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x1b
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x1b
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x1b
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x1b
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x1b
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x1b
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x1b
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x1b
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x1b
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x1b
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x1b
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x1b
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x1b
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x1b
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x1b
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x1b
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x1b
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x1b
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x1b
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x1b
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x1b
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x1b
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x1b
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x1b
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x1b
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x1b
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x1b
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x1b
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x1b
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x1b
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x1b
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x1b
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x1b
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x1b
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x1b
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x1b
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x1b
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x1b
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x3bc
	.uleb128 0x4
	.long	0x21f0
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x3
	.byte	0x30
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x21fa
	.uleb128 0x21
	.string	"st"
	.byte	0x1
	.uleb128 0x1c
	.long	0x224f
	.long	.LASF10
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x1b
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x1b
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x1b
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x1b
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x1a
	.long	0x3ef9
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x1b
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x1b
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x1b
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x1b
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x1b
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x1b
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x1b
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x1b
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x1b
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x1b
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x1b
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x1b
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x1b
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x1b
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x1b
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x1b
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x1b
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x1b
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x1b
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x1b
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x1b
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x1b
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x1b
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x1b
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x1b
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x1b
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x1b
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x1b
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x1b
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x1b
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x1b
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x1b
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x1b
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x1b
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x1b
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x1b
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x1b
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x1b
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x1b
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x1b
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x1b
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x1b
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x1b
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x1b
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x1b
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x1b
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x1b
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x1b
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x1b
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x1b
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x1b
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x1b
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x1b
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x1b
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x1b
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x1b
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x1b
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x1b
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x1b
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x1b
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x1b
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x1b
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x1b
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x1b
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x1b
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x1b
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x1b
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x1b
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x1b
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x1b
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x1b
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x1b
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x1b
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x1b
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x1b
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x1b
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x1b
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x1b
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x1b
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x1b
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x1b
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x1b
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x1b
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x1b
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x1b
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x1b
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x1b
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x1b
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x1b
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x1b
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x1b
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x1b
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x1b
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x1b
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x1b
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x1b
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x1b
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x1b
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x1b
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x1b
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x1b
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x1b
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x1b
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x1b
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x1b
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x1b
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x1b
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x1b
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x1b
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x1b
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x1b
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x1b
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x1b
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x1b
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x1b
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x1b
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x1b
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x1b
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x1b
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x1b
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x1b
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x1b
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x1b
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x1b
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x1b
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x1b
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x1b
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x1b
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x1b
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x1b
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x1b
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x1b
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x1b
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x1b
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x1b
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x1b
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x1b
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x1b
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x1b
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x1b
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x1b
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x1b
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x1b
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x1b
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x1b
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x1b
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x1b
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x1b
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x1b
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x1b
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x1b
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x1b
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x1b
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x1b
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x1b
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x1b
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x1b
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x1b
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x1b
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x1b
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x1b
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x1b
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x1b
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x1b
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x1b
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x1b
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x1b
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x1b
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x1b
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x1b
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x1b
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x1b
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x1b
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x1b
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x1b
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x1b
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x1b
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x1b
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x1b
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x1b
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x1b
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x1b
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x1b
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x1b
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x1b
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x1b
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x1b
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x1b
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x1b
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x1b
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x1b
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x1b
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x1b
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x1b
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x1b
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x1b
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x1b
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x1b
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x1b
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x1b
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x1b
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x1b
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x1b
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x1b
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x1b
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x1b
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x1b
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x1b
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x1b
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x1b
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x1b
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x1b
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x1b
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x1b
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x1b
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x1b
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x1b
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x1b
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x41db
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x3
	.byte	0x8e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x1881
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0xa8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0xa9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0xaa
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0xab
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0xac
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0xad
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0xae
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.byte	0xb0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x4217
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xe
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x494
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x425f
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x304
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x41db
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x42ad
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x320
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0xbef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4314
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x334
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x4314
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x21f0
	.uleb128 0xd
	.long	0x436f
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x343
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x43b7
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x356
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	0x43f5
	.long	.LASF19
	.byte	0xc
	.byte	0xa
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0xa
	.byte	0x1c
	.long	0x779
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0xa
	.byte	0x1d
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0xa
	.byte	0x1e
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x442c
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x377
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x43b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x4473
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x381
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x44b4
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x38f
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x44b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x44c4
	.long	0x1e5
	.uleb128 0x11
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x4510
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x3d5
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x44b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4600
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x40b
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.long	.LASF20
	.byte	0x3
	.value	0x40e
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x3bc
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.long	.LASF21
	.byte	0x3
	.value	0x414
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x25
	.long	0x4647
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2e3
	.uleb128 0xa
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x4ec
	.uleb128 0xa
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x4654
	.byte	0x0
	.uleb128 0x21
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4647
	.uleb128 0xd
	.long	0x49a3
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x552
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF8
	.byte	0x3
	.value	0x554
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x22
	.long	.LASF22
	.byte	0x3
	.value	0x555
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF23
	.byte	0x3
	.value	0x556
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3bc
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF0
	.byte	0x3
	.value	0x55a
	.long	0x849
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF24
	.byte	0x3
	.value	0x562
	.long	0x3bc
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x3
	.value	0x564
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x3
	.value	0x565
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x3
	.value	0x566
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x3
	.value	0x567
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x3
	.value	0x568
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF16
	.byte	0x3
	.value	0x569
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF17
	.byte	0x3
	.value	0x56a
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF25
	.byte	0x3
	.value	0x56b
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF9
	.byte	0x3
	.value	0x56d
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x4600
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x22
	.long	.LASF26
	.byte	0x3
	.value	0x576
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"context"
	.byte	0x3
	.value	0x57c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x22
	.long	.LASF27
	.byte	0x3
	.value	0x57f
	.long	0x49af
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x21b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x21
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x49a3
	.uleb128 0xd
	.long	0x49f8
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x24
	.long	.LASF9
	.byte	0x3
	.value	0x818
	.long	0x3bc
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x4a2d
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x224f
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x483
	.uleb128 0xa
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x49b5
	.byte	0x0
	.uleb128 0x25
	.long	0x4a6c
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x541f
	.uleb128 0xa
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9d
	.uleb128 0xa
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e5
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2e3
	.byte	0x0
	.uleb128 0x26
	.long	0x541f
	.long	.LASF28
	.value	0x134
	.byte	0x4
	.byte	0x19
	.uleb128 0x7
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x6773
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x6787
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x678d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x6793
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x67a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF26
	.byte	0xc
	.byte	0xbe
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0xc
	.byte	0xc1
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0xc
	.byte	0xc4
	.long	0x541f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xc
	.byte	0xc9
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF29
	.byte	0xc
	.byte	0xce
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xc
	.byte	0xd3
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xc
	.byte	0xd7
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0xc
	.byte	0xdb
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0xc
	.byte	0xdf
	.long	0x3da
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0xc
	.byte	0xe5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0xc
	.byte	0xe8
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0xc
	.byte	0xec
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xc
	.byte	0xf0
	.long	0x67c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xc
	.byte	0xf3
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0xc
	.byte	0xf8
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xc
	.byte	0xfe
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xc
	.value	0x102
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xc
	.value	0x107
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0xc
	.value	0x10d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0xc
	.value	0x112
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0xc
	.value	0x115
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0xc
	.value	0x116
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0xc
	.value	0x11a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0xc
	.value	0x11e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0xc
	.value	0x121
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0xc
	.value	0x125
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0xc
	.value	0x128
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0xc
	.value	0x12e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0xc
	.value	0x133
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0xc
	.value	0x138
	.long	0x483
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0xc
	.value	0x13d
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0xc
	.value	0x146
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0xc
	.value	0x149
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0xc
	.value	0x14d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0xc
	.value	0x151
	.long	0x3bc
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0xc
	.value	0x157
	.long	0x1837
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0xc
	.value	0x15a
	.long	0x67d8
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0xc
	.value	0x15d
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0xc
	.value	0x160
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0xc
	.value	0x166
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0xc
	.value	0x16a
	.long	0x6479
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0xc
	.value	0x16d
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0xc
	.value	0x16e
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0xc
	.value	0x16f
	.long	0x19d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0xc
	.value	0x170
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0xc
	.value	0x173
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0xc
	.value	0x175
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0xc
	.value	0x178
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0xc
	.value	0x17d
	.long	0x67f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0xc
	.value	0x17f
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0xc
	.value	0x181
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0xc
	.value	0x184
	.long	0x680b
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0xc
	.value	0x18a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x23
	.string	"returns_struct"
	.byte	0xc
	.value	0x190
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"returns_pcc_struct"
	.byte	0xc
	.value	0x194
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"returns_pointer"
	.byte	0xc
	.value	0x197
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"needs_context"
	.byte	0xc
	.value	0x19a
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_setjmp"
	.byte	0xc
	.value	0x19d
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_longjmp"
	.byte	0xc
	.value	0x1a0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_alloca"
	.byte	0xc
	.value	0x1a4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_eh_return"
	.byte	0xc
	.value	0x1a7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_nonlocal_label"
	.byte	0xc
	.value	0x1ab
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_nonlocal_goto"
	.byte	0xc
	.value	0x1af
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"contains_functions"
	.byte	0xc
	.value	0x1b2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_computed_jump"
	.byte	0xc
	.value	0x1b5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"is_thunk"
	.byte	0xc
	.value	0x1ba
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"all_throwers_are_sibcalls"
	.byte	0xc
	.value	0x1c1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"instrument_entry_exit"
	.byte	0xc
	.value	0x1c5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"arc_profile"
	.byte	0xc
	.value	0x1c8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"profile"
	.byte	0xc
	.value	0x1cb
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"limit_stack"
	.byte	0xc
	.value	0x1cf
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"stdarg"
	.byte	0xc
	.value	0x1d2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"x_whole_function_mode_p"
	.byte	0xc
	.value	0x1d8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xc
	.value	0x1e1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_const_pool"
	.byte	0xc
	.value	0x1e4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_pic_offset_table"
	.byte	0xc
	.value	0x1e7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_eh_lsda"
	.byte	0xc
	.value	0x1ea
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"arg_pointer_save_area_init"
	.byte	0xc
	.value	0x1ed
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.long	.LASF30
	.byte	0xc
	.value	0x1fa
	.long	0x66fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0xc
	.value	0x1fe
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a6c
	.uleb128 0x27
	.long	0x545d
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x4314
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x21a3
	.uleb128 0xa
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3bc
	.byte	0x0
	.uleb128 0xd
	.long	0x5b9b
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x7c6
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x186f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF8
	.byte	0x3
	.value	0x7c9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x24
	.long	.LASF0
	.byte	0x3
	.value	0x7ca
	.long	0x849
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.long	.LASF20
	.byte	0x3
	.value	0x7d3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF10
	.byte	0x3
	.value	0x7ed
	.long	0x21ff
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF24
	.byte	0x3
	.value	0x7f0
	.long	0x3bc
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF25
	.byte	0x3
	.value	0x7f2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x3
	.value	0x7fa
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x3
	.value	0x7fb
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x3
	.value	0x7fc
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x3
	.value	0x7fd
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x3
	.value	0x7fe
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF16
	.byte	0x3
	.value	0x7ff
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF17
	.byte	0x3
	.value	0x800
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF18
	.byte	0x3
	.value	0x801
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x49f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF22
	.byte	0x3
	.value	0x81d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x22
	.long	.LASF26
	.byte	0x3
	.value	0x81e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x3
	.value	0x81f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x22
	.long	.LASF31
	.byte	0x3
	.value	0x820
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x22
	.long	.LASF32
	.byte	0x3
	.value	0x821
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x22
	.long	.LASF21
	.byte	0x3
	.value	0x82b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x22
	.long	.LASF23
	.byte	0x3
	.value	0x82e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x4a2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x483
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x22
	.long	.LASF27
	.byte	0x3
	.value	0x848
	.long	0x5ba7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x23
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x23
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x5425
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x21b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x21
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b9b
	.uleb128 0x1a
	.long	0x5e2b
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1d
	.uleb128 0x1b
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x1b
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x1b
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x1b
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x1b
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x1b
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x1b
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x1b
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x1b
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x1b
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x1b
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x1b
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x1b
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x1b
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x1b
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x1b
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x1b
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x1b
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x1b
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x1b
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x1b
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x1b
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x1b
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x1b
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x1b
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x1b
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x1b
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x1b
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x1b
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x1b
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x1b
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x1b
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x1b
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x1b
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x1b
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xd
	.long	0x5e7a
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x865
	.long	0x3ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x5bad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x5f35
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x22
	.long	.LASF26
	.byte	0x3
	.value	0xa20
	.long	0x5f35
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x5f3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x5f3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x5f3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x5f6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2d0
	.uleb128 0xb
	.long	0xbf5
	.uleb128 0x28
	.long	0x5f63
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x5f63
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x5f69
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5
	.uleb128 0x3
	.byte	0x4
	.long	0xbf5
	.uleb128 0xb
	.long	0x5f74
	.uleb128 0x3
	.byte	0x4
	.long	0x5f3f
	.uleb128 0x10
	.long	0x5f8a
	.long	0x494
	.uleb128 0x11
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x452
	.uleb128 0x4
	.long	0x5ff5
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x5ff5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x5ff5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x5ffb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f9d
	.uleb128 0x10
	.long	0x600b
	.long	0x5f8a
	.uleb128 0x11
	.long	0x3d3
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x5f9d
	.uleb128 0x3
	.byte	0x4
	.long	0x600b
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x1671
	.uleb128 0x4
	.long	0x608e
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x8
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x8
	.byte	0x21
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x8
	.byte	0x22
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x8
	.byte	0x23
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x8
	.byte	0x24
	.long	0x5f7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x609d
	.uleb128 0x3
	.byte	0x4
	.long	0x6035
	.uleb128 0x2
	.string	"regset"
	.byte	0x7
	.byte	0x22
	.long	0x6027
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x7
	.byte	0x75
	.long	0x483
	.uleb128 0x4
	.long	0x616c
	.string	"edge_def"
	.byte	0x28
	.byte	0x7
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x7
	.byte	0x7a
	.long	0x616c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x7
	.byte	0x7a
	.long	0x616c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x7
	.byte	0x7d
	.long	0x17fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF33
	.byte	0x7
	.byte	0x7d
	.long	0x17fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x7
	.byte	0x80
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x7
	.byte	0x83
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x7
	.byte	0x85
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x7
	.byte	0x86
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x7
	.byte	0x87
	.long	0x60b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x60c2
	.uleb128 0x2
	.string	"edge"
	.byte	0x7
	.byte	0x89
	.long	0x616c
	.uleb128 0x4
	.long	0x63ee
	.string	"loop"
	.byte	0x80
	.byte	0x7
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0x7
	.value	0x176
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0x7
	.value	0x179
	.long	0x63f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x7
	.value	0x17c
	.long	0x63f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x7
	.value	0x17f
	.long	0x63f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x7
	.value	0x184
	.long	0x6407
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0x7
	.value	0x187
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0x7
	.value	0x18b
	.long	0x63f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x7
	.value	0x18f
	.long	0x63f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x7
	.value	0x192
	.long	0x608e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0x7
	.value	0x195
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0x7
	.value	0x198
	.long	0x6407
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0x7
	.value	0x19b
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0x7
	.value	0x19e
	.long	0x6407
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0x7
	.value	0x1a1
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0x7
	.value	0x1a4
	.long	0x608e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0x7
	.value	0x1a7
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0x7
	.value	0x1aa
	.long	0x640d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0x7
	.value	0x1ae
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0x7
	.value	0x1b1
	.long	0x63ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0x7
	.value	0x1b4
	.long	0x63ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"next"
	.byte	0x7
	.value	0x1b7
	.long	0x63ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0x7
	.value	0x1ba
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0x7
	.value	0x1bd
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0x7
	.value	0x1c3
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0x7
	.value	0x1c7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0x7
	.value	0x1ca
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0x7
	.value	0x1cd
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0x7
	.value	0x1d1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0x7
	.value	0x1d4
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0x7
	.value	0x1d7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0x7
	.value	0x1e2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0x7
	.value	0x1e6
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x617e
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x7
	.byte	0xe6
	.long	0x17fc
	.uleb128 0x3
	.byte	0x4
	.long	0x6172
	.uleb128 0x3
	.byte	0x4
	.long	0x63ee
	.uleb128 0x4
	.long	0x6479
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xc
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0xc
	.byte	0x18
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0xc
	.byte	0x19
	.long	0x849
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0xc
	.byte	0x1a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0xc
	.byte	0x1b
	.long	0x6479
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6413
	.uleb128 0x14
	.long	0x64c8
	.long	.LASF34
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0xc
	.byte	0x26
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0xc
	.byte	0x27
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF35
	.byte	0xc
	.byte	0x28
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0xc
	.byte	0x29
	.long	0x64c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x647f
	.uleb128 0x4
	.long	0x661d
	.string	"emit_status"
	.byte	0x34
	.byte	0xc
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xc
	.byte	0x3a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xc
	.byte	0x3d
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0xc
	.byte	0x44
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0xc
	.byte	0x45
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF35
	.byte	0xc
	.byte	0x4a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF34
	.byte	0xc
	.byte	0x50
	.long	0x64c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xc
	.byte	0x54
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xc
	.byte	0x58
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xc
	.byte	0x59
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xc
	.byte	0x5f
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0xc
	.byte	0x65
	.long	0x784
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xc
	.byte	0x69
	.long	0x5f63
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0xc
	.byte	0x70
	.long	0x1837
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x66fd
	.string	"expr_status"
	.byte	0x1c
	.byte	0xc
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xc
	.byte	0x80
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xc
	.byte	0x91
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xc
	.byte	0x97
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0xc
	.byte	0x9c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0xc
	.byte	0x9f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0xc
	.byte	0xa2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0xc
	.byte	0xa5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x29
	.long	0x6767
	.long	.LASF30
	.byte	0x4
	.byte	0xc
	.value	0x1f1
	.uleb128 0x1b
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x1b
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x1b
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x21
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6767
	.uleb128 0x21
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6779
	.uleb128 0x3
	.byte	0x4
	.long	0x661d
	.uleb128 0x3
	.byte	0x4
	.long	0x64ce
	.uleb128 0x21
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6799
	.uleb128 0x21
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x67af
	.uleb128 0x21
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x67cc
	.uleb128 0x21
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x67de
	.uleb128 0x21
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x67f7
	.uleb128 0x1c
	.long	0x8970
	.long	.LASF36
	.byte	0x4
	.byte	0x12
	.byte	0x7
	.uleb128 0x1b
	.string	"CODE_FOR_trap"
	.sleb128 0
	.uleb128 0x1b
	.string	"CODE_FOR_adddf3"
	.sleb128 2
	.uleb128 0x1b
	.string	"CODE_FOR_addsf3"
	.sleb128 3
	.uleb128 0x1b
	.string	"CODE_FOR_addsi3_internal"
	.sleb128 4
	.uleb128 0x1b
	.string	"CODE_FOR_adddi3_internal_1"
	.sleb128 8
	.uleb128 0x1b
	.string	"CODE_FOR_adddi3_internal_2"
	.sleb128 9
	.uleb128 0x1b
	.string	"CODE_FOR_adddi3_internal_3"
	.sleb128 10
	.uleb128 0x1b
	.string	"CODE_FOR_addsi3_internal_2"
	.sleb128 14
	.uleb128 0x1b
	.string	"CODE_FOR_subdf3"
	.sleb128 16
	.uleb128 0x1b
	.string	"CODE_FOR_subsf3"
	.sleb128 17
	.uleb128 0x1b
	.string	"CODE_FOR_subsi3_internal"
	.sleb128 18
	.uleb128 0x1b
	.string	"CODE_FOR_subdi3_internal"
	.sleb128 22
	.uleb128 0x1b
	.string	"CODE_FOR_subdi3_internal_2"
	.sleb128 23
	.uleb128 0x1b
	.string	"CODE_FOR_subdi3_internal_3"
	.sleb128 24
	.uleb128 0x1b
	.string	"CODE_FOR_subsi3_internal_2"
	.sleb128 28
	.uleb128 0x1b
	.string	"CODE_FOR_muldf3_internal"
	.sleb128 30
	.uleb128 0x1b
	.string	"CODE_FOR_muldf3_r4300"
	.sleb128 31
	.uleb128 0x1b
	.string	"CODE_FOR_mulsf3_internal"
	.sleb128 32
	.uleb128 0x1b
	.string	"CODE_FOR_mulsf3_r4300"
	.sleb128 33
	.uleb128 0x1b
	.string	"CODE_FOR_mulsi3_mult3"
	.sleb128 34
	.uleb128 0x1b
	.string	"CODE_FOR_mulsi3_internal"
	.sleb128 35
	.uleb128 0x1b
	.string	"CODE_FOR_mulsi3_r4000"
	.sleb128 36
	.uleb128 0x1b
	.string	"CODE_FOR_muldi3_internal"
	.sleb128 41
	.uleb128 0x1b
	.string	"CODE_FOR_muldi3_internal2"
	.sleb128 42
	.uleb128 0x1b
	.string	"CODE_FOR_mulsidi3_internal"
	.sleb128 43
	.uleb128 0x1b
	.string	"CODE_FOR_mulsidi3_64bit"
	.sleb128 44
	.uleb128 0x1b
	.string	"CODE_FOR_xmulsi3_highpart_internal"
	.sleb128 47
	.uleb128 0x1b
	.string	"CODE_FOR_xmulsi3_highpart_mulhi"
	.sleb128 48
	.uleb128 0x1b
	.string	"CODE_FOR_smuldi3_highpart"
	.sleb128 50
	.uleb128 0x1b
	.string	"CODE_FOR_umuldi3_highpart"
	.sleb128 51
	.uleb128 0x1b
	.string	"CODE_FOR_madsi"
	.sleb128 52
	.uleb128 0x1b
	.string	"CODE_FOR_divdf3"
	.sleb128 63
	.uleb128 0x1b
	.string	"CODE_FOR_divsf3"
	.sleb128 64
	.uleb128 0x1b
	.string	"CODE_FOR_divmodsi4_internal"
	.sleb128 67
	.uleb128 0x1b
	.string	"CODE_FOR_divmoddi4_internal"
	.sleb128 68
	.uleb128 0x1b
	.string	"CODE_FOR_udivmodsi4_internal"
	.sleb128 69
	.uleb128 0x1b
	.string	"CODE_FOR_udivmoddi4_internal"
	.sleb128 70
	.uleb128 0x1b
	.string	"CODE_FOR_div_trap_normal"
	.sleb128 71
	.uleb128 0x1b
	.string	"CODE_FOR_div_trap_mips16"
	.sleb128 72
	.uleb128 0x1b
	.string	"CODE_FOR_divsi3_internal"
	.sleb128 73
	.uleb128 0x1b
	.string	"CODE_FOR_divdi3_internal"
	.sleb128 74
	.uleb128 0x1b
	.string	"CODE_FOR_modsi3_internal"
	.sleb128 75
	.uleb128 0x1b
	.string	"CODE_FOR_moddi3_internal"
	.sleb128 76
	.uleb128 0x1b
	.string	"CODE_FOR_udivsi3_internal"
	.sleb128 77
	.uleb128 0x1b
	.string	"CODE_FOR_udivdi3_internal"
	.sleb128 78
	.uleb128 0x1b
	.string	"CODE_FOR_umodsi3_internal"
	.sleb128 79
	.uleb128 0x1b
	.string	"CODE_FOR_umoddi3_internal"
	.sleb128 80
	.uleb128 0x1b
	.string	"CODE_FOR_sqrtdf2"
	.sleb128 81
	.uleb128 0x1b
	.string	"CODE_FOR_sqrtsf2"
	.sleb128 82
	.uleb128 0x1b
	.string	"CODE_FOR_abssi2"
	.sleb128 85
	.uleb128 0x1b
	.string	"CODE_FOR_absdi2"
	.sleb128 86
	.uleb128 0x1b
	.string	"CODE_FOR_absdf2"
	.sleb128 87
	.uleb128 0x1b
	.string	"CODE_FOR_abssf2"
	.sleb128 88
	.uleb128 0x1b
	.string	"CODE_FOR_ffssi2"
	.sleb128 89
	.uleb128 0x1b
	.string	"CODE_FOR_ffsdi2"
	.sleb128 90
	.uleb128 0x1b
	.string	"CODE_FOR_negsi2"
	.sleb128 91
	.uleb128 0x1b
	.string	"CODE_FOR_negdi2_internal"
	.sleb128 92
	.uleb128 0x1b
	.string	"CODE_FOR_negdi2_internal_2"
	.sleb128 93
	.uleb128 0x1b
	.string	"CODE_FOR_negdf2"
	.sleb128 94
	.uleb128 0x1b
	.string	"CODE_FOR_negsf2"
	.sleb128 95
	.uleb128 0x1b
	.string	"CODE_FOR_one_cmplsi2"
	.sleb128 96
	.uleb128 0x1b
	.string	"CODE_FOR_one_cmpldi2"
	.sleb128 97
	.uleb128 0x1b
	.string	"CODE_FOR_anddi3_internal1"
	.sleb128 102
	.uleb128 0x1b
	.string	"CODE_FOR_xordi3_immed"
	.sleb128 112
	.uleb128 0x1b
	.string	"CODE_FOR_truncdfsf2"
	.sleb128 115
	.uleb128 0x1b
	.string	"CODE_FOR_truncdisi2"
	.sleb128 116
	.uleb128 0x1b
	.string	"CODE_FOR_truncdihi2"
	.sleb128 117
	.uleb128 0x1b
	.string	"CODE_FOR_truncdiqi2"
	.sleb128 118
	.uleb128 0x1b
	.string	"CODE_FOR_zero_extendsidi2_internal"
	.sleb128 125
	.uleb128 0x1b
	.string	"CODE_FOR_extendhidi2_internal"
	.sleb128 137
	.uleb128 0x1b
	.string	"CODE_FOR_extendhisi2_internal"
	.sleb128 138
	.uleb128 0x1b
	.string	"CODE_FOR_extendqihi2_internal"
	.sleb128 139
	.uleb128 0x1b
	.string	"CODE_FOR_extendqisi2_insn"
	.sleb128 140
	.uleb128 0x1b
	.string	"CODE_FOR_extendqidi2_insn"
	.sleb128 141
	.uleb128 0x1b
	.string	"CODE_FOR_extendsfdf2"
	.sleb128 142
	.uleb128 0x1b
	.string	"CODE_FOR_fix_truncdfsi2_insn"
	.sleb128 143
	.uleb128 0x1b
	.string	"CODE_FOR_fix_truncdfsi2_macro"
	.sleb128 144
	.uleb128 0x1b
	.string	"CODE_FOR_fix_truncsfsi2_insn"
	.sleb128 145
	.uleb128 0x1b
	.string	"CODE_FOR_fix_truncsfsi2_macro"
	.sleb128 146
	.uleb128 0x1b
	.string	"CODE_FOR_fix_truncdfdi2"
	.sleb128 147
	.uleb128 0x1b
	.string	"CODE_FOR_fix_truncsfdi2"
	.sleb128 148
	.uleb128 0x1b
	.string	"CODE_FOR_floatsidf2"
	.sleb128 149
	.uleb128 0x1b
	.string	"CODE_FOR_floatdidf2"
	.sleb128 150
	.uleb128 0x1b
	.string	"CODE_FOR_floatsisf2"
	.sleb128 151
	.uleb128 0x1b
	.string	"CODE_FOR_floatdisf2"
	.sleb128 152
	.uleb128 0x1b
	.string	"CODE_FOR_movsi_ulw"
	.sleb128 153
	.uleb128 0x1b
	.string	"CODE_FOR_movsi_usw"
	.sleb128 154
	.uleb128 0x1b
	.string	"CODE_FOR_movdi_uld"
	.sleb128 155
	.uleb128 0x1b
	.string	"CODE_FOR_movdi_usd"
	.sleb128 156
	.uleb128 0x1b
	.string	"CODE_FOR_high"
	.sleb128 157
	.uleb128 0x1b
	.string	"CODE_FOR_low"
	.sleb128 158
	.uleb128 0x1b
	.string	"CODE_FOR_movdi_internal"
	.sleb128 160
	.uleb128 0x1b
	.string	"CODE_FOR_movdi_internal2"
	.sleb128 162
	.uleb128 0x1b
	.string	"CODE_FOR_movsi_internal"
	.sleb128 166
	.uleb128 0x1b
	.string	"CODE_FOR_hilo_delay"
	.sleb128 168
	.uleb128 0x1b
	.string	"CODE_FOR_movcc"
	.sleb128 169
	.uleb128 0x1b
	.string	"CODE_FOR_movhi_internal"
	.sleb128 178
	.uleb128 0x1b
	.string	"CODE_FOR_movqi_internal"
	.sleb128 180
	.uleb128 0x1b
	.string	"CODE_FOR_movsf_internal1"
	.sleb128 182
	.uleb128 0x1b
	.string	"CODE_FOR_movsf_internal2"
	.sleb128 183
	.uleb128 0x1b
	.string	"CODE_FOR_movdf_internal1"
	.sleb128 185
	.uleb128 0x1b
	.string	"CODE_FOR_movdf_internal1a"
	.sleb128 186
	.uleb128 0x1b
	.string	"CODE_FOR_movdf_internal2"
	.sleb128 187
	.uleb128 0x1b
	.string	"CODE_FOR_loadgp"
	.sleb128 189
	.uleb128 0x1b
	.string	"CODE_FOR_movstrsi_internal"
	.sleb128 190
	.uleb128 0x1b
	.string	"CODE_FOR_movstrsi_internal2"
	.sleb128 192
	.uleb128 0x1b
	.string	"CODE_FOR_movstrsi_internal3"
	.sleb128 194
	.uleb128 0x1b
	.string	"CODE_FOR_ashlsi3_internal1"
	.sleb128 195
	.uleb128 0x1b
	.string	"CODE_FOR_ashlsi3_internal2"
	.sleb128 196
	.uleb128 0x1b
	.string	"CODE_FOR_ashldi3_internal"
	.sleb128 197
	.uleb128 0x1b
	.string	"CODE_FOR_ashldi3_internal2"
	.sleb128 198
	.uleb128 0x1b
	.string	"CODE_FOR_ashldi3_internal3"
	.sleb128 199
	.uleb128 0x1b
	.string	"CODE_FOR_ashldi3_internal4"
	.sleb128 200
	.uleb128 0x1b
	.string	"CODE_FOR_ashrsi3_internal1"
	.sleb128 202
	.uleb128 0x1b
	.string	"CODE_FOR_ashrsi3_internal2"
	.sleb128 203
	.uleb128 0x1b
	.string	"CODE_FOR_ashrdi3_internal"
	.sleb128 204
	.uleb128 0x1b
	.string	"CODE_FOR_ashrdi3_internal2"
	.sleb128 205
	.uleb128 0x1b
	.string	"CODE_FOR_ashrdi3_internal3"
	.sleb128 206
	.uleb128 0x1b
	.string	"CODE_FOR_ashrdi3_internal4"
	.sleb128 207
	.uleb128 0x1b
	.string	"CODE_FOR_lshrsi3_internal1"
	.sleb128 209
	.uleb128 0x1b
	.string	"CODE_FOR_lshrsi3_internal2"
	.sleb128 210
	.uleb128 0x1b
	.string	"CODE_FOR_lshrdi3_internal"
	.sleb128 212
	.uleb128 0x1b
	.string	"CODE_FOR_lshrdi3_internal2"
	.sleb128 213
	.uleb128 0x1b
	.string	"CODE_FOR_lshrdi3_internal3"
	.sleb128 214
	.uleb128 0x1b
	.string	"CODE_FOR_lshrdi3_internal4"
	.sleb128 215
	.uleb128 0x1b
	.string	"CODE_FOR_rotrsi3"
	.sleb128 217
	.uleb128 0x1b
	.string	"CODE_FOR_rotrdi3"
	.sleb128 218
	.uleb128 0x1b
	.string	"CODE_FOR_branch_fp"
	.sleb128 219
	.uleb128 0x1b
	.string	"CODE_FOR_branch_fp_inverted"
	.sleb128 220
	.uleb128 0x1b
	.string	"CODE_FOR_branch_zero"
	.sleb128 221
	.uleb128 0x1b
	.string	"CODE_FOR_branch_zero_inverted"
	.sleb128 222
	.uleb128 0x1b
	.string	"CODE_FOR_branch_zero_di"
	.sleb128 223
	.uleb128 0x1b
	.string	"CODE_FOR_branch_zero_di_inverted"
	.sleb128 224
	.uleb128 0x1b
	.string	"CODE_FOR_branch_equality"
	.sleb128 225
	.uleb128 0x1b
	.string	"CODE_FOR_branch_equality_di"
	.sleb128 226
	.uleb128 0x1b
	.string	"CODE_FOR_branch_equality_inverted"
	.sleb128 227
	.uleb128 0x1b
	.string	"CODE_FOR_branch_equality_di_inverted"
	.sleb128 228
	.uleb128 0x1b
	.string	"CODE_FOR_seq_si_zero"
	.sleb128 231
	.uleb128 0x1b
	.string	"CODE_FOR_seq_di_zero"
	.sleb128 233
	.uleb128 0x1b
	.string	"CODE_FOR_sne_si_zero"
	.sleb128 235
	.uleb128 0x1b
	.string	"CODE_FOR_sne_di_zero"
	.sleb128 236
	.uleb128 0x1b
	.string	"CODE_FOR_sgt_si"
	.sleb128 237
	.uleb128 0x1b
	.string	"CODE_FOR_sgt_di"
	.sleb128 239
	.uleb128 0x1b
	.string	"CODE_FOR_slt_si"
	.sleb128 241
	.uleb128 0x1b
	.string	"CODE_FOR_slt_di"
	.sleb128 243
	.uleb128 0x1b
	.string	"CODE_FOR_sle_si_const"
	.sleb128 245
	.uleb128 0x1b
	.string	"CODE_FOR_sle_di_const"
	.sleb128 247
	.uleb128 0x1b
	.string	"CODE_FOR_sgtu_si"
	.sleb128 249
	.uleb128 0x1b
	.string	"CODE_FOR_sgtu_di"
	.sleb128 251
	.uleb128 0x1b
	.string	"CODE_FOR_sltu_si"
	.sleb128 253
	.uleb128 0x1b
	.string	"CODE_FOR_sltu_di"
	.sleb128 255
	.uleb128 0x1b
	.string	"CODE_FOR_sleu_si_const"
	.sleb128 257
	.uleb128 0x1b
	.string	"CODE_FOR_sleu_di_const"
	.sleb128 259
	.uleb128 0x1b
	.string	"CODE_FOR_sunordered_df"
	.sleb128 261
	.uleb128 0x1b
	.string	"CODE_FOR_sunlt_df"
	.sleb128 262
	.uleb128 0x1b
	.string	"CODE_FOR_suneq_df"
	.sleb128 263
	.uleb128 0x1b
	.string	"CODE_FOR_sunle_df"
	.sleb128 264
	.uleb128 0x1b
	.string	"CODE_FOR_seq_df"
	.sleb128 265
	.uleb128 0x1b
	.string	"CODE_FOR_slt_df"
	.sleb128 266
	.uleb128 0x1b
	.string	"CODE_FOR_sle_df"
	.sleb128 267
	.uleb128 0x1b
	.string	"CODE_FOR_sgt_df"
	.sleb128 268
	.uleb128 0x1b
	.string	"CODE_FOR_sge_df"
	.sleb128 269
	.uleb128 0x1b
	.string	"CODE_FOR_sunordered_sf"
	.sleb128 270
	.uleb128 0x1b
	.string	"CODE_FOR_sunlt_sf"
	.sleb128 271
	.uleb128 0x1b
	.string	"CODE_FOR_suneq_sf"
	.sleb128 272
	.uleb128 0x1b
	.string	"CODE_FOR_sunle_sf"
	.sleb128 273
	.uleb128 0x1b
	.string	"CODE_FOR_seq_sf"
	.sleb128 274
	.uleb128 0x1b
	.string	"CODE_FOR_slt_sf"
	.sleb128 275
	.uleb128 0x1b
	.string	"CODE_FOR_sle_sf"
	.sleb128 276
	.uleb128 0x1b
	.string	"CODE_FOR_sgt_sf"
	.sleb128 277
	.uleb128 0x1b
	.string	"CODE_FOR_sge_sf"
	.sleb128 278
	.uleb128 0x1b
	.string	"CODE_FOR_jump"
	.sleb128 279
	.uleb128 0x1b
	.string	"CODE_FOR_indirect_jump_internal1"
	.sleb128 281
	.uleb128 0x1b
	.string	"CODE_FOR_indirect_jump_internal2"
	.sleb128 282
	.uleb128 0x1b
	.string	"CODE_FOR_tablejump_internal1"
	.sleb128 283
	.uleb128 0x1b
	.string	"CODE_FOR_tablejump_internal2"
	.sleb128 284
	.uleb128 0x1b
	.string	"CODE_FOR_casesi_internal"
	.sleb128 287
	.uleb128 0x1b
	.string	"CODE_FOR_casesi_internal_di"
	.sleb128 288
	.uleb128 0x1b
	.string	"CODE_FOR_blockage"
	.sleb128 289
	.uleb128 0x1b
	.string	"CODE_FOR_return"
	.sleb128 290
	.uleb128 0x1b
	.string	"CODE_FOR_return_internal"
	.sleb128 291
	.uleb128 0x1b
	.string	"CODE_FOR_get_fnaddr"
	.sleb128 292
	.uleb128 0x1b
	.string	"CODE_FOR_eh_set_lr_si"
	.sleb128 293
	.uleb128 0x1b
	.string	"CODE_FOR_eh_set_lr_di"
	.sleb128 294
	.uleb128 0x1b
	.string	"CODE_FOR_exception_receiver"
	.sleb128 295
	.uleb128 0x1b
	.string	"CODE_FOR_call_internal1"
	.sleb128 297
	.uleb128 0x1b
	.string	"CODE_FOR_call_internal2"
	.sleb128 298
	.uleb128 0x1b
	.string	"CODE_FOR_call_internal3a"
	.sleb128 299
	.uleb128 0x1b
	.string	"CODE_FOR_call_internal3b"
	.sleb128 300
	.uleb128 0x1b
	.string	"CODE_FOR_call_internal3c"
	.sleb128 301
	.uleb128 0x1b
	.string	"CODE_FOR_call_internal4a"
	.sleb128 302
	.uleb128 0x1b
	.string	"CODE_FOR_call_internal4b"
	.sleb128 303
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_internal1"
	.sleb128 305
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_internal2"
	.sleb128 306
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_internal3a"
	.sleb128 307
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_internal3b"
	.sleb128 308
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_internal3c"
	.sleb128 309
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_internal4a"
	.sleb128 310
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_internal4b"
	.sleb128 311
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_multiple_internal1"
	.sleb128 312
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_multiple_internal2"
	.sleb128 313
	.uleb128 0x1b
	.string	"CODE_FOR_prefetch_si_address"
	.sleb128 314
	.uleb128 0x1b
	.string	"CODE_FOR_prefetch_si"
	.sleb128 315
	.uleb128 0x1b
	.string	"CODE_FOR_prefetch_di_address"
	.sleb128 316
	.uleb128 0x1b
	.string	"CODE_FOR_prefetch_di"
	.sleb128 317
	.uleb128 0x1b
	.string	"CODE_FOR_nop"
	.sleb128 318
	.uleb128 0x1b
	.string	"CODE_FOR_consttable_qi"
	.sleb128 331
	.uleb128 0x1b
	.string	"CODE_FOR_consttable_hi"
	.sleb128 332
	.uleb128 0x1b
	.string	"CODE_FOR_consttable_si"
	.sleb128 333
	.uleb128 0x1b
	.string	"CODE_FOR_consttable_di"
	.sleb128 334
	.uleb128 0x1b
	.string	"CODE_FOR_consttable_sf"
	.sleb128 335
	.uleb128 0x1b
	.string	"CODE_FOR_consttable_df"
	.sleb128 336
	.uleb128 0x1b
	.string	"CODE_FOR_align_2"
	.sleb128 337
	.uleb128 0x1b
	.string	"CODE_FOR_align_4"
	.sleb128 338
	.uleb128 0x1b
	.string	"CODE_FOR_align_8"
	.sleb128 339
	.uleb128 0x1b
	.string	"CODE_FOR_leasi"
	.sleb128 340
	.uleb128 0x1b
	.string	"CODE_FOR_leadi"
	.sleb128 341
	.uleb128 0x1b
	.string	"CODE_FOR_conditional_trap"
	.sleb128 342
	.uleb128 0x1b
	.string	"CODE_FOR_addsi3"
	.sleb128 343
	.uleb128 0x1b
	.string	"CODE_FOR_adddi3"
	.sleb128 346
	.uleb128 0x1b
	.string	"CODE_FOR_subsi3"
	.sleb128 353
	.uleb128 0x1b
	.string	"CODE_FOR_subdi3"
	.sleb128 356
	.uleb128 0x1b
	.string	"CODE_FOR_muldf3"
	.sleb128 363
	.uleb128 0x1b
	.string	"CODE_FOR_mulsf3"
	.sleb128 364
	.uleb128 0x1b
	.string	"CODE_FOR_mulsi3"
	.sleb128 365
	.uleb128 0x1b
	.string	"CODE_FOR_muldi3"
	.sleb128 371
	.uleb128 0x1b
	.string	"CODE_FOR_mulsidi3"
	.sleb128 372
	.uleb128 0x1b
	.string	"CODE_FOR_umulsidi3"
	.sleb128 373
	.uleb128 0x1b
	.string	"CODE_FOR_smulsi3_highpart"
	.sleb128 374
	.uleb128 0x1b
	.string	"CODE_FOR_umulsi3_highpart"
	.sleb128 375
	.uleb128 0x1b
	.string	"CODE_FOR_divmodsi4"
	.sleb128 376
	.uleb128 0x1b
	.string	"CODE_FOR_divmoddi4"
	.sleb128 377
	.uleb128 0x1b
	.string	"CODE_FOR_udivmodsi4"
	.sleb128 378
	.uleb128 0x1b
	.string	"CODE_FOR_udivmoddi4"
	.sleb128 379
	.uleb128 0x1b
	.string	"CODE_FOR_div_trap"
	.sleb128 380
	.uleb128 0x1b
	.string	"CODE_FOR_divsi3"
	.sleb128 381
	.uleb128 0x1b
	.string	"CODE_FOR_divdi3"
	.sleb128 382
	.uleb128 0x1b
	.string	"CODE_FOR_modsi3"
	.sleb128 383
	.uleb128 0x1b
	.string	"CODE_FOR_moddi3"
	.sleb128 384
	.uleb128 0x1b
	.string	"CODE_FOR_udivsi3"
	.sleb128 385
	.uleb128 0x1b
	.string	"CODE_FOR_udivdi3"
	.sleb128 386
	.uleb128 0x1b
	.string	"CODE_FOR_umodsi3"
	.sleb128 387
	.uleb128 0x1b
	.string	"CODE_FOR_umoddi3"
	.sleb128 388
	.uleb128 0x1b
	.string	"CODE_FOR_negdi2"
	.sleb128 389
	.uleb128 0x1b
	.string	"CODE_FOR_andsi3"
	.sleb128 391
	.uleb128 0x1b
	.string	"CODE_FOR_anddi3"
	.sleb128 392
	.uleb128 0x1b
	.string	"CODE_FOR_iorsi3"
	.sleb128 394
	.uleb128 0x1b
	.string	"CODE_FOR_iordi3"
	.sleb128 395
	.uleb128 0x1b
	.string	"CODE_FOR_xorsi3"
	.sleb128 397
	.uleb128 0x1b
	.string	"CODE_FOR_xordi3"
	.sleb128 398
	.uleb128 0x1b
	.string	"CODE_FOR_zero_extendsidi2"
	.sleb128 401
	.uleb128 0x1b
	.string	"CODE_FOR_zero_extendhisi2"
	.sleb128 402
	.uleb128 0x1b
	.string	"CODE_FOR_zero_extendhidi2"
	.sleb128 403
	.uleb128 0x1b
	.string	"CODE_FOR_zero_extendqihi2"
	.sleb128 404
	.uleb128 0x1b
	.string	"CODE_FOR_zero_extendqisi2"
	.sleb128 405
	.uleb128 0x1b
	.string	"CODE_FOR_zero_extendqidi2"
	.sleb128 406
	.uleb128 0x1b
	.string	"CODE_FOR_extendsidi2"
	.sleb128 407
	.uleb128 0x1b
	.string	"CODE_FOR_extendhidi2"
	.sleb128 408
	.uleb128 0x1b
	.string	"CODE_FOR_extendhisi2"
	.sleb128 409
	.uleb128 0x1b
	.string	"CODE_FOR_extendqihi2"
	.sleb128 410
	.uleb128 0x1b
	.string	"CODE_FOR_extendqisi2"
	.sleb128 411
	.uleb128 0x1b
	.string	"CODE_FOR_extendqidi2"
	.sleb128 412
	.uleb128 0x1b
	.string	"CODE_FOR_fix_truncdfsi2"
	.sleb128 413
	.uleb128 0x1b
	.string	"CODE_FOR_fix_truncsfsi2"
	.sleb128 414
	.uleb128 0x1b
	.string	"CODE_FOR_fixuns_truncdfsi2"
	.sleb128 415
	.uleb128 0x1b
	.string	"CODE_FOR_fixuns_truncdfdi2"
	.sleb128 416
	.uleb128 0x1b
	.string	"CODE_FOR_fixuns_truncsfsi2"
	.sleb128 417
	.uleb128 0x1b
	.string	"CODE_FOR_fixuns_truncsfdi2"
	.sleb128 418
	.uleb128 0x1b
	.string	"CODE_FOR_extv"
	.sleb128 419
	.uleb128 0x1b
	.string	"CODE_FOR_extzv"
	.sleb128 420
	.uleb128 0x1b
	.string	"CODE_FOR_insv"
	.sleb128 421
	.uleb128 0x1b
	.string	"CODE_FOR_movdi"
	.sleb128 422
	.uleb128 0x1b
	.string	"CODE_FOR_reload_indi"
	.sleb128 425
	.uleb128 0x1b
	.string	"CODE_FOR_reload_outdi"
	.sleb128 426
	.uleb128 0x1b
	.string	"CODE_FOR_movsi"
	.sleb128 428
	.uleb128 0x1b
	.string	"CODE_FOR_reload_outsi"
	.sleb128 432
	.uleb128 0x1b
	.string	"CODE_FOR_reload_insi"
	.sleb128 433
	.uleb128 0x1b
	.string	"CODE_FOR_reload_incc"
	.sleb128 434
	.uleb128 0x1b
	.string	"CODE_FOR_reload_outcc"
	.sleb128 435
	.uleb128 0x1b
	.string	"CODE_FOR_movhi"
	.sleb128 436
	.uleb128 0x1b
	.string	"CODE_FOR_movqi"
	.sleb128 438
	.uleb128 0x1b
	.string	"CODE_FOR_movsf"
	.sleb128 440
	.uleb128 0x1b
	.string	"CODE_FOR_movdf"
	.sleb128 441
	.uleb128 0x1b
	.string	"CODE_FOR_movstrsi"
	.sleb128 443
	.uleb128 0x1b
	.string	"CODE_FOR_ashlsi3"
	.sleb128 444
	.uleb128 0x1b
	.string	"CODE_FOR_ashldi3"
	.sleb128 446
	.uleb128 0x1b
	.string	"CODE_FOR_ashrsi3"
	.sleb128 452
	.uleb128 0x1b
	.string	"CODE_FOR_ashrdi3"
	.sleb128 454
	.uleb128 0x1b
	.string	"CODE_FOR_lshrsi3"
	.sleb128 460
	.uleb128 0x1b
	.string	"CODE_FOR_lshrdi3"
	.sleb128 463
	.uleb128 0x1b
	.string	"CODE_FOR_cmpsi"
	.sleb128 469
	.uleb128 0x1b
	.string	"CODE_FOR_tstsi"
	.sleb128 470
	.uleb128 0x1b
	.string	"CODE_FOR_cmpdi"
	.sleb128 471
	.uleb128 0x1b
	.string	"CODE_FOR_tstdi"
	.sleb128 472
	.uleb128 0x1b
	.string	"CODE_FOR_cmpdf"
	.sleb128 473
	.uleb128 0x1b
	.string	"CODE_FOR_cmpsf"
	.sleb128 474
	.uleb128 0x1b
	.string	"CODE_FOR_bunordered"
	.sleb128 475
	.uleb128 0x1b
	.string	"CODE_FOR_bordered"
	.sleb128 476
	.uleb128 0x1b
	.string	"CODE_FOR_bunlt"
	.sleb128 477
	.uleb128 0x1b
	.string	"CODE_FOR_bunge"
	.sleb128 478
	.uleb128 0x1b
	.string	"CODE_FOR_buneq"
	.sleb128 479
	.uleb128 0x1b
	.string	"CODE_FOR_bltgt"
	.sleb128 480
	.uleb128 0x1b
	.string	"CODE_FOR_bunle"
	.sleb128 481
	.uleb128 0x1b
	.string	"CODE_FOR_bungt"
	.sleb128 482
	.uleb128 0x1b
	.string	"CODE_FOR_beq"
	.sleb128 483
	.uleb128 0x1b
	.string	"CODE_FOR_bne"
	.sleb128 484
	.uleb128 0x1b
	.string	"CODE_FOR_bgt"
	.sleb128 485
	.uleb128 0x1b
	.string	"CODE_FOR_bge"
	.sleb128 486
	.uleb128 0x1b
	.string	"CODE_FOR_blt"
	.sleb128 487
	.uleb128 0x1b
	.string	"CODE_FOR_ble"
	.sleb128 488
	.uleb128 0x1b
	.string	"CODE_FOR_bgtu"
	.sleb128 489
	.uleb128 0x1b
	.string	"CODE_FOR_bgeu"
	.sleb128 490
	.uleb128 0x1b
	.string	"CODE_FOR_bltu"
	.sleb128 491
	.uleb128 0x1b
	.string	"CODE_FOR_bleu"
	.sleb128 492
	.uleb128 0x1b
	.string	"CODE_FOR_seq"
	.sleb128 493
	.uleb128 0x1b
	.string	"CODE_FOR_sne"
	.sleb128 494
	.uleb128 0x1b
	.string	"CODE_FOR_sgt"
	.sleb128 495
	.uleb128 0x1b
	.string	"CODE_FOR_sge"
	.sleb128 496
	.uleb128 0x1b
	.string	"CODE_FOR_slt"
	.sleb128 497
	.uleb128 0x1b
	.string	"CODE_FOR_sle"
	.sleb128 498
	.uleb128 0x1b
	.string	"CODE_FOR_sgtu"
	.sleb128 499
	.uleb128 0x1b
	.string	"CODE_FOR_sgeu"
	.sleb128 500
	.uleb128 0x1b
	.string	"CODE_FOR_sltu"
	.sleb128 501
	.uleb128 0x1b
	.string	"CODE_FOR_sleu"
	.sleb128 502
	.uleb128 0x1b
	.string	"CODE_FOR_indirect_jump"
	.sleb128 503
	.uleb128 0x1b
	.string	"CODE_FOR_tablejump"
	.sleb128 504
	.uleb128 0x1b
	.string	"CODE_FOR_tablejump_internal3"
	.sleb128 505
	.uleb128 0x1b
	.string	"CODE_FOR_tablejump_mips161"
	.sleb128 506
	.uleb128 0x1b
	.string	"CODE_FOR_tablejump_mips162"
	.sleb128 507
	.uleb128 0x1b
	.string	"CODE_FOR_tablejump_internal4"
	.sleb128 508
	.uleb128 0x1b
	.string	"CODE_FOR_casesi"
	.sleb128 509
	.uleb128 0x1b
	.string	"CODE_FOR_builtin_setjmp_setup"
	.sleb128 510
	.uleb128 0x1b
	.string	"CODE_FOR_builtin_setjmp_setup_32"
	.sleb128 511
	.uleb128 0x1b
	.string	"CODE_FOR_builtin_setjmp_setup_64"
	.sleb128 512
	.uleb128 0x1b
	.string	"CODE_FOR_builtin_longjmp"
	.sleb128 513
	.uleb128 0x1b
	.string	"CODE_FOR_prologue"
	.sleb128 514
	.uleb128 0x1b
	.string	"CODE_FOR_epilogue"
	.sleb128 515
	.uleb128 0x1b
	.string	"CODE_FOR_eh_return"
	.sleb128 516
	.uleb128 0x1b
	.string	"CODE_FOR_call"
	.sleb128 518
	.uleb128 0x1b
	.string	"CODE_FOR_call_internal0"
	.sleb128 519
	.uleb128 0x1b
	.string	"CODE_FOR_call_value"
	.sleb128 520
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_internal0"
	.sleb128 521
	.uleb128 0x1b
	.string	"CODE_FOR_call_value_multiple_internal0"
	.sleb128 522
	.uleb128 0x1b
	.string	"CODE_FOR_untyped_call"
	.sleb128 523
	.uleb128 0x1b
	.string	"CODE_FOR_prefetch"
	.sleb128 524
	.uleb128 0x1b
	.string	"CODE_FOR_movsicc"
	.sleb128 525
	.uleb128 0x1b
	.string	"CODE_FOR_movdicc"
	.sleb128 526
	.uleb128 0x1b
	.string	"CODE_FOR_movsfcc"
	.sleb128 527
	.uleb128 0x1b
	.string	"CODE_FOR_movdfcc"
	.sleb128 528
	.uleb128 0x1b
	.string	"CODE_FOR_nothing"
	.sleb128 529
	.byte	0x0
	.uleb128 0x4
	.long	0x89a8
	.string	"optab_handlers"
	.byte	0x8
	.byte	0x11
	.byte	0x2c
	.uleb128 0x1e
	.long	.LASF36
	.byte	0x11
	.byte	0x2d
	.long	0x6811
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"libfunc"
	.byte	0x11
	.byte	0x2e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2a
	.long	0x89da
	.string	"optab"
	.value	0x1b4
	.byte	0x11
	.byte	0x2a
	.uleb128 0x7
	.string	"code"
	.byte	0x11
	.byte	0x2b
	.long	0xbfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"handlers"
	.byte	0x11
	.byte	0x2f
	.long	0x89da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.long	0x89ea
	.long	0x8970
	.uleb128 0x11
	.long	0x3d3
	.byte	0x35
	.byte	0x0
	.uleb128 0x2
	.string	"optab"
	.byte	0x11
	.byte	0x31
	.long	0x89f7
	.uleb128 0x3
	.byte	0x4
	.long	0x89a8
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x17
	.byte	0xd9
	.long	0x8a1e
	.uleb128 0x3
	.byte	0x4
	.long	0x8a24
	.uleb128 0x28
	.long	0x8a39
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x849
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0x17
	.byte	0xdb
	.long	0x8a4c
	.uleb128 0x3
	.byte	0x4
	.long	0x8a52
	.uleb128 0x28
	.long	0x8a63
	.byte	0x1
	.long	0x9d
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x2b
	.byte	0x0
	.uleb128 0x4
	.long	0x8ae2
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x17
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0x17
	.byte	0xdf
	.long	0x8ae2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"constraint"
	.byte	0x17
	.byte	0xe1
	.long	0x5f35
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF0
	.byte	0x17
	.byte	0xe3
	.long	0x8ae7
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"strict_low"
	.byte	0x17
	.byte	0xe5
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"eliminable"
	.byte	0x17
	.byte	0xe7
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xb
	.long	0x89fd
	.uleb128 0xb
	.long	0x849
	.uleb128 0x14
	.long	0x8b92
	.long	.LASF37
	.byte	0x14
	.byte	0x17
	.byte	0xf2
	.uleb128 0x1e
	.long	.LASF26
	.byte	0x17
	.byte	0xf3
	.long	0x5f35
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"output"
	.byte	0x17
	.byte	0xf4
	.long	0x828
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"genfun"
	.byte	0x17
	.byte	0xf5
	.long	0x8b92
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"operand"
	.byte	0x17
	.byte	0xf6
	.long	0x8b97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"n_operands"
	.byte	0x17
	.byte	0xf8
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x17
	.byte	0xf9
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.string	"n_alternatives"
	.byte	0x17
	.byte	0xfa
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"output_format"
	.byte	0x17
	.byte	0xfb
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0xb
	.long	0x8a39
	.uleb128 0xb
	.long	0x8b9c
	.uleb128 0x3
	.byte	0x4
	.long	0x8ba2
	.uleb128 0xb
	.long	0x8a63
	.uleb128 0x1a
	.long	0x8d43
	.string	"type_class"
	.byte	0x4
	.byte	0x10
	.byte	0x4
	.uleb128 0x1b
	.string	"no_type_class"
	.sleb128 -1
	.uleb128 0x1b
	.string	"void_type_class"
	.sleb128 0
	.uleb128 0x1b
	.string	"integer_type_class"
	.sleb128 1
	.uleb128 0x1b
	.string	"char_type_class"
	.sleb128 2
	.uleb128 0x1b
	.string	"enumeral_type_class"
	.sleb128 3
	.uleb128 0x1b
	.string	"boolean_type_class"
	.sleb128 4
	.uleb128 0x1b
	.string	"pointer_type_class"
	.sleb128 5
	.uleb128 0x1b
	.string	"reference_type_class"
	.sleb128 6
	.uleb128 0x1b
	.string	"offset_type_class"
	.sleb128 7
	.uleb128 0x1b
	.string	"real_type_class"
	.sleb128 8
	.uleb128 0x1b
	.string	"complex_type_class"
	.sleb128 9
	.uleb128 0x1b
	.string	"function_type_class"
	.sleb128 10
	.uleb128 0x1b
	.string	"method_type_class"
	.sleb128 11
	.uleb128 0x1b
	.string	"record_type_class"
	.sleb128 12
	.uleb128 0x1b
	.string	"union_type_class"
	.sleb128 13
	.uleb128 0x1b
	.string	"array_type_class"
	.sleb128 14
	.uleb128 0x1b
	.string	"string_type_class"
	.sleb128 15
	.uleb128 0x1b
	.string	"set_type_class"
	.sleb128 16
	.uleb128 0x1b
	.string	"file_type_class"
	.sleb128 17
	.uleb128 0x1b
	.string	"lang_type_class"
	.sleb128 18
	.byte	0x0
	.uleb128 0x4
	.long	0x8d8b
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x18
	.byte	0x3a
	.uleb128 0x7
	.string	"hi"
	.byte	0x18
	.byte	0x3b
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"si"
	.byte	0x18
	.byte	0x3c
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"di"
	.byte	0x18
	.byte	0x3d
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ti"
	.byte	0x18
	.byte	0x3e
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x8fc1
	.string	"asm_out"
	.byte	0x70
	.byte	0x18
	.byte	0x33
	.uleb128 0x7
	.string	"open_paren"
	.byte	0x18
	.byte	0x35
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"close_paren"
	.byte	0x18
	.byte	0x35
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"byte_op"
	.byte	0x18
	.byte	0x38
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"aligned_op"
	.byte	0x18
	.byte	0x3f
	.long	0x8d43
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x18
	.byte	0x3f
	.long	0x8d43
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x18
	.byte	0x46
	.long	0x8fdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x18
	.byte	0x49
	.long	0x8ff8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x18
	.byte	0x4d
	.long	0x900f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x18
	.byte	0x50
	.long	0x9026
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x18
	.byte	0x53
	.long	0x9038
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x18
	.byte	0x56
	.long	0x9038
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x18
	.byte	0x59
	.long	0x9026
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"named_section"
	.byte	0x18
	.byte	0x5d
	.long	0x904f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"exception_section"
	.byte	0x18
	.byte	0x60
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"eh_frame_section"
	.byte	0x18
	.byte	0x63
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"select_section"
	.byte	0x18
	.byte	0x6a
	.long	0x906b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x18
	.byte	0x6e
	.long	0x9087
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x18
	.byte	0x73
	.long	0x900f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x18
	.byte	0x76
	.long	0x909e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x18
	.byte	0x79
	.long	0x909e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x18
	.byte	0x80
	.long	0x90c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x18
	.byte	0x8b
	.long	0x90e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x28
	.long	0x8fdb
	.byte	0x1
	.long	0xbf5
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x3bc
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8fc1
	.uleb128 0x17
	.long	0x8ff2
	.byte	0x1
	.uleb128 0x18
	.long	0x8ff2
	.uleb128 0x18
	.long	0x2d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4f2
	.uleb128 0x3
	.byte	0x4
	.long	0x8fe1
	.uleb128 0x17
	.long	0x900f
	.byte	0x1
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8ffe
	.uleb128 0x17
	.long	0x9026
	.byte	0x1
	.uleb128 0x18
	.long	0x8ff2
	.uleb128 0x18
	.long	0x483
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9015
	.uleb128 0x17
	.long	0x9038
	.byte	0x1
	.uleb128 0x18
	.long	0x8ff2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x902c
	.uleb128 0x17
	.long	0x904f
	.byte	0x1
	.uleb128 0x18
	.long	0x2d0
	.uleb128 0x18
	.long	0x3bc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x903e
	.uleb128 0x17
	.long	0x906b
	.byte	0x1
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x494
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9055
	.uleb128 0x17
	.long	0x9087
	.byte	0x1
	.uleb128 0x18
	.long	0x849
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x494
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9071
	.uleb128 0x17
	.long	0x909e
	.byte	0x1
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x908d
	.uleb128 0x17
	.long	0x90c4
	.byte	0x1
	.uleb128 0x18
	.long	0x8ff2
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x483
	.uleb128 0x18
	.long	0x483
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x90a4
	.uleb128 0x28
	.long	0x90e9
	.byte	0x1
	.long	0xbf5
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x483
	.uleb128 0x18
	.long	0x483
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x90ca
	.uleb128 0x4
	.long	0x92aa
	.string	"sched"
	.byte	0x40
	.byte	0x18
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x18
	.byte	0x97
	.long	0x92c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x18
	.byte	0x9b
	.long	0x92e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x18
	.byte	0xa0
	.long	0x92f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x18
	.byte	0xa4
	.long	0x9315
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x18
	.byte	0xa7
	.long	0x9331
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x18
	.byte	0xaa
	.long	0x9348
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x18
	.byte	0xae
	.long	0x9372
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x18
	.byte	0xaf
	.long	0x9372
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x18
	.byte	0xb4
	.long	0x92f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x18
	.byte	0xc2
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"dfa_pre_cycle_insn"
	.byte	0x18
	.byte	0xc3
	.long	0x937e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_dfa_post_cycle_insn"
	.byte	0x18
	.byte	0xc4
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"dfa_post_cycle_insn"
	.byte	0x18
	.byte	0xc5
	.long	0x937e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x18
	.byte	0xcd
	.long	0x92f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"init_dfa_bubbles"
	.byte	0x18
	.byte	0xd8
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"dfa_bubble"
	.byte	0x18
	.byte	0xd9
	.long	0x9394
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x28
	.long	0x92c9
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x92aa
	.uleb128 0x28
	.long	0x92e4
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x92cf
	.uleb128 0x2c
	.byte	0x1
	.long	0x2e3
	.uleb128 0x3
	.byte	0x4
	.long	0x92ea
	.uleb128 0x28
	.long	0x9315
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x8ff2
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x92f6
	.uleb128 0x17
	.long	0x9331
	.byte	0x1
	.uleb128 0x18
	.long	0x8ff2
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x931b
	.uleb128 0x17
	.long	0x9348
	.byte	0x1
	.uleb128 0x18
	.long	0x8ff2
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9337
	.uleb128 0x28
	.long	0x9372
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x8ff2
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x1837
	.uleb128 0x18
	.long	0x822
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x934e
	.uleb128 0x2c
	.byte	0x1
	.long	0x9d
	.uleb128 0x3
	.byte	0x4
	.long	0x9378
	.uleb128 0x28
	.long	0x9394
	.byte	0x1
	.long	0x9d
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9384
	.uleb128 0x4
	.long	0x966c
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x18
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x18
	.byte	0x8f
	.long	0x8d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x18
	.byte	0xda
	.long	0x90ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x18
	.byte	0xdd
	.long	0x9681
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x18
	.byte	0xe0
	.long	0x9681
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1e
	.long	.LASF38
	.byte	0x18
	.byte	0xe4
	.long	0x9687
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x18
	.byte	0xe9
	.long	0x96a7
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x18
	.byte	0xec
	.long	0x96b9
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x18
	.byte	0xef
	.long	0x96d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x7
	.string	"function_attribute_inlinable_p"
	.byte	0x18
	.byte	0xf3
	.long	0x96e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x18
	.byte	0xf7
	.long	0x96e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"init_builtins"
	.byte	0x18
	.byte	0xfa
	.long	0x843
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x1e
	.long	.LASF39
	.byte	0x18
	.byte	0xfd
	.long	0x9710
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x18
	.value	0x103
	.long	0x9730
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x18
	.value	0x107
	.long	0x973c
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x18
	.value	0x10a
	.long	0x9752
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x18
	.value	0x10d
	.long	0x96e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x18
	.value	0x111
	.long	0x96e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x18
	.value	0x115
	.long	0x900f
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x18
	.value	0x118
	.long	0x9768
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"have_named_sections"
	.byte	0x18
	.value	0x11d
	.long	0xbf5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"have_ctors_dtors"
	.byte	0x18
	.value	0x121
	.long	0xbf5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xe
	.string	"have_tls"
	.byte	0x18
	.value	0x124
	.long	0xbf5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xe
	.string	"have_srodata_section"
	.byte	0x18
	.value	0x127
	.long	0xbf5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xe
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x18
	.value	0x12a
	.long	0xbf5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x28
	.long	0x9681
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x966c
	.uleb128 0x3
	.byte	0x4
	.long	0x968d
	.uleb128 0xb
	.long	0x5e7a
	.uleb128 0x28
	.long	0x96a7
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9692
	.uleb128 0x17
	.long	0x96b9
	.byte	0x1
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x96ad
	.uleb128 0x17
	.long	0x96d0
	.byte	0x1
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x5f63
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x96bf
	.uleb128 0x28
	.long	0x96e6
	.byte	0x1
	.long	0xbf5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x96d6
	.uleb128 0x28
	.long	0x9710
	.byte	0x1
	.long	0x9d
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x849
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x96ec
	.uleb128 0x28
	.long	0x9730
	.byte	0x1
	.long	0x3bc
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2d0
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9716
	.uleb128 0x2c
	.byte	0x1
	.long	0xbf5
	.uleb128 0x3
	.byte	0x4
	.long	0x9736
	.uleb128 0x28
	.long	0x9752
	.byte	0x1
	.long	0xbf5
	.uleb128 0x18
	.long	0x9d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9742
	.uleb128 0x28
	.long	0x9768
	.byte	0x1
	.long	0x2d0
	.uleb128 0x18
	.long	0x2d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9758
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x1c
	.byte	0x1d
	.long	0x978a
	.uleb128 0x3
	.byte	0x4
	.long	0x9790
	.uleb128 0x17
	.long	0x97a6
	.byte	0x1
	.uleb128 0x18
	.long	0x8ff2
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x4
	.long	0x992c
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x1c
	.byte	0x24
	.long	0x9976
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x1c
	.byte	0x29
	.long	0x998c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x1c
	.byte	0x2a
	.long	0x99a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x1c
	.byte	0x2b
	.long	0x99bd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x1c
	.byte	0x2d
	.long	0x99a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x1c
	.byte	0x2e
	.long	0x99d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x1c
	.byte	0x2f
	.long	0x9a07
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x1c
	.byte	0x34
	.long	0x99a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x1c
	.byte	0x35
	.long	0x9a1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x1c
	.byte	0x36
	.long	0x99a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x1c
	.byte	0x37
	.long	0x9a2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x1c
	.byte	0x38
	.long	0x9a4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x28
	.long	0x9950
	.byte	0x1
	.long	0x1f1
	.uleb128 0x18
	.long	0x9950
	.uleb128 0x18
	.long	0x822
	.uleb128 0x18
	.long	0x9956
	.uleb128 0x18
	.long	0x4ea
	.uleb128 0x18
	.long	0x4ea
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x995c
	.uleb128 0x28
	.long	0x9976
	.byte	0x1
	.long	0x1f1
	.uleb128 0x18
	.long	0x9950
	.uleb128 0x18
	.long	0x822
	.uleb128 0x18
	.long	0x4ea
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x992c
	.uleb128 0x28
	.long	0x998c
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x9950
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x997c
	.uleb128 0x28
	.long	0x99a2
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9992
	.uleb128 0x28
	.long	0x99bd
	.byte	0x1
	.long	0x1f1
	.uleb128 0x18
	.long	0x4ea
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x99a8
	.uleb128 0x28
	.long	0x99d8
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x1f1
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x99c3
	.uleb128 0x28
	.long	0x9a07
	.byte	0x1
	.long	0x1f1
	.uleb128 0x18
	.long	0x1f1
	.uleb128 0x18
	.long	0x1f1
	.uleb128 0x18
	.long	0x1f1
	.uleb128 0x18
	.long	0x4ea
	.uleb128 0x18
	.long	0x822
	.uleb128 0x18
	.long	0x4ea
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x99de
	.uleb128 0x28
	.long	0x9a1d
	.byte	0x1
	.long	0xbf5
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a0d
	.uleb128 0x17
	.long	0x9a2f
	.byte	0x1
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a23
	.uleb128 0x28
	.long	0x9a4f
	.byte	0x1
	.long	0x1f1
	.uleb128 0x18
	.long	0x1f1
	.uleb128 0x18
	.long	0x1f1
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a35
	.uleb128 0x4
	.long	0x9ac4
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x1c
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x1c
	.byte	0x42
	.long	0x9ad0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x1c
	.byte	0x45
	.long	0x9ad0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x1c
	.byte	0x48
	.long	0x9ad0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x1c
	.byte	0x4b
	.long	0x9ad0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x17
	.long	0x9ad0
	.byte	0x1
	.uleb128 0x18
	.long	0x541f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9ac4
	.uleb128 0x4
	.long	0x9b21
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x1c
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x1c
	.byte	0x54
	.long	0x9b36
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x1c
	.byte	0x57
	.long	0x9b4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x28
	.long	0x9b36
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x4ea
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b21
	.uleb128 0x28
	.long	0x9b4c
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b3c
	.uleb128 0x4
	.long	0x9c3f
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x1c
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x1c
	.byte	0x60
	.long	0x9c4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x1c
	.byte	0x64
	.long	0x9c6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x1c
	.byte	0x68
	.long	0x9c85
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x1c
	.byte	0x6c
	.long	0x9c9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x1c
	.byte	0x70
	.long	0x9c9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x1c
	.byte	0x74
	.long	0x9cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x1c
	.byte	0x7a
	.long	0x9c9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x1c
	.byte	0x80
	.long	0x9ccd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x28
	.long	0x9c4f
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x1881
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c3f
	.uleb128 0x28
	.long	0x9c6a
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x849
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c55
	.uleb128 0x28
	.long	0x9c85
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x3bc
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c70
	.uleb128 0x28
	.long	0x9c9b
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c8b
	.uleb128 0x28
	.long	0x9cb6
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9ca1
	.uleb128 0x17
	.long	0x9ccd
	.byte	0x1
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9cbc
	.uleb128 0x4
	.long	0x9dd9
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x1c
	.byte	0x86
	.uleb128 0x7
	.string	"pushlevel"
	.byte	0x1c
	.byte	0x89
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"poplevel"
	.byte	0x1c
	.byte	0x90
	.long	0x9df3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x1c
	.byte	0x94
	.long	0x92f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x1c
	.byte	0x99
	.long	0x96b9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x1c
	.byte	0x9c
	.long	0x96b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x1c
	.byte	0xa2
	.long	0x9c9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x1c
	.byte	0xa5
	.long	0x9dff
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x1c
	.byte	0xa9
	.long	0x96e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"final_write_globals"
	.byte	0x1c
	.byte	0xad
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"ok_for_sibcall"
	.byte	0x1c
	.byte	0xb0
	.long	0x96e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x28
	.long	0x9df3
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9dd9
	.uleb128 0x2c
	.byte	0x1
	.long	0x1e5
	.uleb128 0x3
	.byte	0x4
	.long	0x9df9
	.uleb128 0x26
	.long	0xa22a
	.long	.LASF40
	.value	0x120
	.byte	0x1c
	.byte	0xb6
	.uleb128 0x1e
	.long	.LASF26
	.byte	0x1c
	.byte	0xb8
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"identifier_size"
	.byte	0x1c
	.byte	0xbc
	.long	0x41d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"init_options"
	.byte	0x1c
	.byte	0xc0
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"decode_option"
	.byte	0x1c
	.byte	0xca
	.long	0xa245
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x1c
	.byte	0xd6
	.long	0x973c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x1c
	.byte	0xde
	.long	0x9768
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"finish"
	.byte	0x1c
	.byte	0xe1
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"parse_file"
	.byte	0x1c
	.byte	0xe5
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"clear_binding_stack"
	.byte	0x1c
	.byte	0xe8
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"get_alias_set"
	.byte	0x1c
	.byte	0xec
	.long	0xa25b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x1c
	.byte	0xf1
	.long	0x9c9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x1c
	.byte	0xf5
	.long	0xa280
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"truthvalue_conversion"
	.byte	0x1c
	.value	0x102
	.long	0x9c9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"insert_default_attributes"
	.byte	0x1c
	.value	0x106
	.long	0x96b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"safe_from_p"
	.byte	0x1c
	.value	0x10f
	.long	0xa29b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"finish_incomplete_decl"
	.byte	0x1c
	.value	0x113
	.long	0x96b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"unsafe_for_reeval"
	.byte	0x1c
	.value	0x118
	.long	0x9b4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"mark_addressable"
	.byte	0x1c
	.value	0x11d
	.long	0x96e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"staticp"
	.byte	0x1c
	.value	0x120
	.long	0x9b4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"dup_lang_specific_decl"
	.byte	0x1c
	.value	0x124
	.long	0x96b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"unsave_expr_now"
	.byte	0x1c
	.value	0x129
	.long	0x9c9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"maybe_build_cleanup"
	.byte	0x1c
	.value	0x12d
	.long	0x9c9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"set_decl_assembler_name"
	.byte	0x1c
	.value	0x134
	.long	0x96b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"can_use_bit_fields_p"
	.byte	0x1c
	.value	0x138
	.long	0x973c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"honor_readonly"
	.byte	0x1c
	.value	0x13b
	.long	0xbf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"print_statistics"
	.byte	0x1c
	.value	0x13f
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"print_xnode"
	.byte	0x1c
	.value	0x143
	.long	0x976e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"print_decl"
	.byte	0x1c
	.value	0x147
	.long	0x976e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"print_type"
	.byte	0x1c
	.value	0x148
	.long	0x976e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"print_identifier"
	.byte	0x1c
	.value	0x149
	.long	0x976e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"decl_printable_name"
	.byte	0x1c
	.value	0x151
	.long	0xa2b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"print_error_function"
	.byte	0x1c
	.value	0x154
	.long	0xa2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"expr_size"
	.byte	0x1c
	.value	0x15b
	.long	0x9c9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x22
	.long	.LASF38
	.byte	0x1c
	.value	0x162
	.long	0x9687
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"common_attribute_table"
	.byte	0x1c
	.value	0x163
	.long	0x9687
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"format_attribute_table"
	.byte	0x1c
	.value	0x164
	.long	0x9687
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.long	.LASF28
	.byte	0x1c
	.value	0x167
	.long	0x9a55
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"tree_inlining"
	.byte	0x1c
	.value	0x169
	.long	0x97a6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"tree_dump"
	.byte	0x1c
	.value	0x16b
	.long	0x9ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"decls"
	.byte	0x1c
	.value	0x16d
	.long	0x9cd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"types"
	.byte	0x1c
	.value	0x16f
	.long	0x9b52
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x28
	.long	0xa23f
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0xa23f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ec
	.uleb128 0x3
	.byte	0x4
	.long	0xa22a
	.uleb128 0x28
	.long	0xa25b
	.byte	0x1
	.long	0x483
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa24b
	.uleb128 0x28
	.long	0xa280
	.byte	0x1
	.long	0x9d
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x849
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa261
	.uleb128 0x28
	.long	0xa29b
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa286
	.uleb128 0x28
	.long	0xa2b6
	.byte	0x1
	.long	0x2d0
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa2a1
	.uleb128 0x17
	.long	0xa2cd
	.byte	0x1
	.uleb128 0x18
	.long	0xa2cd
	.uleb128 0x18
	.long	0x2d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa2d3
	.uleb128 0x21
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0xa2bc
	.uleb128 0x2d
	.long	0xa35d
	.string	"get_pointer_alignment"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.long	0x2e3
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2e
	.string	"exp"
	.byte	0x1
	.byte	0xb3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"max_align"
	.byte	0x1
	.byte	0xb4
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF9
	.byte	0x1
	.byte	0xb6
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"inner"
	.byte	0x1
	.byte	0xb6
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x31
	.long	0xa426
	.string	"c_strlen"
	.byte	0x1
	.value	0x103
	.byte	0x1
	.long	0x1e5
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x32
	.string	"src"
	.byte	0x1
	.value	0x101
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"only_value"
	.byte	0x1
	.value	0x102
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF41
	.byte	0x1
	.value	0x104
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF7
	.byte	0x1
	.value	0x105
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"max"
	.byte	0x1
	.value	0x106
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"ptr"
	.byte	0x1
	.value	0x107
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	0xa40e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x34
	.string	"len1"
	.byte	0x1
	.value	0x10d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"len2"
	.byte	0x1
	.value	0x10d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x36
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x125
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xa467
	.string	"c_getstr"
	.byte	0x1
	.value	0x155
	.byte	0x1
	.long	0x2d0
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x32
	.string	"src"
	.byte	0x1
	.value	0x154
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF41
	.byte	0x1
	.value	0x156
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0xa4ee
	.string	"c_readstr"
	.byte	0x1
	.value	0x16c
	.byte	0x1
	.long	0x9d
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x32
	.string	"str"
	.byte	0x1
	.value	0x16a
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x16b
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x16d
	.long	0xa4ee
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"ch"
	.byte	0x1
	.value	0x16e
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x16f
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"j"
	.byte	0x1
	.value	0x16f
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LASF42
	.long	0xd2bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14768
	.byte	0x0
	.uleb128 0x10
	.long	0xa4fe
	.long	0x483
	.uleb128 0x11
	.long	0x3d3
	.byte	0x1
	.byte	0x0
	.uleb128 0x31
	.long	0xa567
	.string	"target_char_cast"
	.byte	0x1
	.value	0x190
	.byte	0x1
	.long	0x2e3
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x32
	.string	"cst"
	.byte	0x1
	.value	0x18e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x18f
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x191
	.long	0x494
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"hostval"
	.byte	0x1
	.value	0x191
	.long	0x494
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x39
	.long	0xa5e1
	.byte	0x1
	.string	"expand_builtin_return_addr"
	.byte	0x1
	.value	0x1af
	.byte	0x1
	.long	0x9d
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x32
	.string	"fndecl_code"
	.byte	0x1
	.value	0x1ac
	.long	0x224f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"count"
	.byte	0x1
	.value	0x1ad
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"tem"
	.byte	0x1
	.value	0x1ae
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x1b0
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0xa66a
	.byte	0x1
	.string	"expand_builtin_setjmp_setup"
	.byte	0x1
	.value	0x1ed
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x37
	.long	.LASF43
	.byte	0x1
	.value	0x1eb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x1ec
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"sa_mode"
	.byte	0x1
	.value	0x1ee
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"stack_save"
	.byte	0x1
	.value	0x1ef
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"mem"
	.byte	0x1
	.value	0x1f0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.long	0xa70c
	.byte	0x1
	.string	"expand_builtin_setjmp_receiver"
	.byte	0x1
	.value	0x22b
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x22a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	0xa6f3
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x240
	.long	0x41d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3b
	.string	"elims"
	.byte	0x8
	.byte	0x1
	.value	0x241
	.uleb128 0xe
	.string	"from"
	.byte	0x1
	.value	0x241
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to"
	.byte	0x1
	.value	0x241
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.string	"elim_regs"
	.byte	0x1
	.value	0x241
	.long	0xd2a7
	.byte	0x5
	.byte	0x3
	.long	elim_regs.15028
	.byte	0x0
	.uleb128 0x31
	.long	0xa791
	.string	"expand_builtin_setjmp"
	.byte	0x1
	.value	0x275
	.byte	0x1
	.long	0x9d
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x273
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x274
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF43
	.byte	0x1
	.value	0x276
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"next_lab"
	.byte	0x1
	.value	0x276
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"cont_lab"
	.byte	0x1
	.value	0x276
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.long	0xa850
	.byte	0x1
	.string	"expand_builtin_longjmp"
	.byte	0x1
	.value	0x2a9
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x37
	.long	.LASF43
	.byte	0x1
	.value	0x2a8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"value"
	.byte	0x1
	.value	0x2a8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"fp"
	.byte	0x1
	.value	0x2aa
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"lab"
	.byte	0x1
	.value	0x2aa
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"stack"
	.byte	0x1
	.value	0x2aa
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"insn"
	.byte	0x1
	.value	0x2aa
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"last"
	.byte	0x1
	.value	0x2aa
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"sa_mode"
	.byte	0x1
	.value	0x2ab
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF42
	.long	0xd292
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15105
	.byte	0x0
	.uleb128 0x3c
	.long	0xa8ea
	.string	"expand_builtin_prefetch"
	.byte	0x1
	.value	0x303
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x302
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"arg0"
	.byte	0x1
	.value	0x304
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0x304
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"arg2"
	.byte	0x1
	.value	0x304
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"op0"
	.byte	0x1
	.value	0x305
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"op1"
	.byte	0x1
	.value	0x305
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"op2"
	.byte	0x1
	.value	0x305
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0xa941
	.string	"get_memory_rtx"
	.byte	0x1
	.value	0x35a
	.byte	0x1
	.long	0x9d
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x359
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"addr"
	.byte	0x1
	.value	0x35b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"mem"
	.byte	0x1
	.value	0x35c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xa986
	.byte	0x1
	.string	"apply_args_register_offset"
	.byte	0x1
	.value	0x399
	.byte	0x1
	.long	0x2e3
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x37
	.long	.LASF47
	.byte	0x1
	.value	0x398
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xaa1c
	.string	"apply_args_size"
	.byte	0x1
	.value	0x3a9
	.byte	0x1
	.long	0x2e3
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x3ab
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0x3ac
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x3ad
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	0xa9f9
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x33
	.long	.LASF48
	.byte	0x1
	.value	0x3bf
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x3aa
	.long	0x2e3
	.byte	0x5
	.byte	0x3
	.long	size.15368
	.uleb128 0x38
	.long	.LASF42
	.long	0xd27d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15385
	.byte	0x0
	.uleb128 0x31
	.long	0xaab4
	.string	"apply_result_size"
	.byte	0x1
	.value	0x3f9
	.byte	0x1
	.long	0x2e3
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x3fb
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0x3fb
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x3fc
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	0xaa91
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.long	.LASF48
	.byte	0x1
	.value	0x408
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x3fa
	.long	0x2e3
	.byte	0x5
	.byte	0x3
	.long	size.15533
	.uleb128 0x38
	.long	.LASF42
	.long	0xd268
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15550
	.byte	0x0
	.uleb128 0x31
	.long	0xab7a
	.string	"result_vector"
	.byte	0x1
	.value	0x447
	.byte	0x1
	.long	0x9d
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x32
	.string	"savep"
	.byte	0x1
	.value	0x445
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF32
	.byte	0x1
	.value	0x446
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0x448
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x448
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x448
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"nelts"
	.byte	0x1
	.value	0x448
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x449
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"reg"
	.byte	0x1
	.value	0x44a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"mem"
	.byte	0x1
	.value	0x44a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"savevec"
	.byte	0x1
	.value	0x44b
	.long	0x1837
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0xac1a
	.string	"expand_builtin_apply_args_1"
	.byte	0x1
	.value	0x464
	.byte	0x1
	.long	0x9d
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x34
	.string	"registers"
	.byte	0x1
	.value	0x465
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x466
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x466
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0x466
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x467
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x34
	.string	"tem"
	.byte	0x1
	.value	0x476
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xac77
	.string	"expand_builtin_apply_args"
	.byte	0x1
	.value	0x49d
	.byte	0x1
	.long	0x9d
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x36
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x34
	.string	"temp"
	.byte	0x1
	.value	0x4a6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"seq"
	.byte	0x1
	.value	0x4a7
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xadf7
	.string	"expand_builtin_apply"
	.byte	0x1
	.value	0x4c1
	.byte	0x1
	.long	0x9d
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x37
	.long	.LASF28
	.byte	0x1
	.value	0x4c0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF31
	.byte	0x1
	.value	0x4c0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"argsize"
	.byte	0x1
	.value	0x4c0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x4c2
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x4c2
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0x4c2
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x4c3
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"incoming_args"
	.byte	0x1
	.value	0x4c4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x4c4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"reg"
	.byte	0x1
	.value	0x4c4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0x4c4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x4c4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"call_insn"
	.byte	0x1
	.value	0x4c4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"old_stack_level"
	.byte	0x1
	.value	0x4c5
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x4c6
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.long	0xadc8
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x34
	.string	"value"
	.byte	0x1
	.value	0x512
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x35
	.long	0xade6
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x34
	.string	"link"
	.byte	0x1
	.value	0x552
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	.LASF42
	.long	0xd253
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15851
	.byte	0x0
	.uleb128 0x3c
	.long	0xae8c
	.string	"expand_builtin_return"
	.byte	0x1
	.value	0x570
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x37
	.long	.LASF32
	.byte	0x1
	.value	0x56f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x571
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x571
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0x571
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x572
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"reg"
	.byte	0x1
	.value	0x573
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x574
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xaec3
	.string	"type_to_class"
	.byte	0x1
	.value	0x5a6
	.byte	0x1
	.long	0x8ba7
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x5a5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xaf09
	.string	"expand_builtin_classify_type"
	.byte	0x1
	.value	0x5c7
	.byte	0x1
	.long	0x9d
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x5c6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xaf79
	.string	"expand_builtin_constant_p"
	.byte	0x1
	.value	0x5d2
	.byte	0x1
	.long	0x9d
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x5d1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0x5d3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF50
	.byte	0x1
	.value	0x5d4
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"tmp"
	.byte	0x1
	.value	0x5d5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xb06e
	.string	"expand_builtin_mathfn"
	.byte	0x1
	.value	0x5ee
	.byte	0x1
	.long	0x9d
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x5ec
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x5ed
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0x5ed
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"builtin_optab"
	.byte	0x1
	.value	0x5ef
	.long	0x89ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"op0"
	.byte	0x1
	.value	0x5f0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"insns"
	.byte	0x1
	.value	0x5f0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF52
	.byte	0x1
	.value	0x5f1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0x5f2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"argmode"
	.byte	0x1
	.value	0x5f3
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	0xb05d
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x34
	.string	"lab1"
	.byte	0x1
	.value	0x643
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF42
	.long	0xd23e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16234
	.byte	0x0
	.uleb128 0x31
	.long	0xb1ac
	.string	"expand_builtin_strlen"
	.byte	0x1
	.value	0x672
	.byte	0x1
	.long	0x9d
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x670
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x671
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0x673
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF50
	.byte	0x1
	.value	0x674
	.long	0x849
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x34
	.string	"pat"
	.byte	0x1
	.value	0x67a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x67b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x67b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x67c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"src_reg"
	.byte	0x1
	.value	0x67c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"char_rtx"
	.byte	0x1
	.value	0x67c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"before_strlen"
	.byte	0x1
	.value	0x67c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"insn_mode"
	.byte	0x1
	.value	0x67d
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"char_mode"
	.byte	0x1
	.value	0x67d
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"icode"
	.byte	0x1
	.value	0x67e
	.long	0x6811
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x67f
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb209
	.string	"expand_builtin_strstr"
	.byte	0x1
	.value	0x6e4
	.byte	0x1
	.long	0x9d
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x6e1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x6e2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x6e3
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0xb2be
	.string	"expand_builtin_strchr"
	.byte	0x1
	.value	0x720
	.byte	0x1
	.long	0x9d
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x71d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x71e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x71f
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x34
	.string	"s1"
	.byte	0x1
	.value	0x725
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"s2"
	.byte	0x1
	.value	0x725
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0x726
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x72e
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x34
	.string	"r"
	.byte	0x1
	.value	0x72f
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb31c
	.string	"expand_builtin_strrchr"
	.byte	0x1
	.value	0x74e
	.byte	0x1
	.long	0x9d
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x74b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x74c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x74d
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0xb37a
	.string	"expand_builtin_strpbrk"
	.byte	0x1
	.value	0x788
	.byte	0x1
	.long	0x9d
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x785
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x786
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x787
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0xb3f9
	.string	"builtin_memcpy_read_str"
	.byte	0x1
	.value	0x7ca
	.byte	0x1
	.long	0x9d
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0x7c7
	.long	0x4ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF7
	.byte	0x1
	.value	0x7c8
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x7c9
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"str"
	.byte	0x1
	.value	0x7cb
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LASF42
	.long	0xd229
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16480
	.byte	0x0
	.uleb128 0x31
	.long	0xb4fe
	.string	"expand_builtin_memcpy"
	.byte	0x1
	.value	0x7de
	.byte	0x1
	.long	0x9d
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x7db
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x7dc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x7dd
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0x7e4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x7e5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x7e6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"src_str"
	.byte	0x1
	.value	0x7e7
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x7e8
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x7e9
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0x7eb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"src_mem"
	.byte	0x1
	.value	0x7eb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF56
	.byte	0x1
	.value	0x7eb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x7eb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb621
	.string	"expand_builtin_mempcpy"
	.byte	0x1
	.value	0x838
	.byte	0x1
	.long	0x9d
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x834
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x835
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x836
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"endp"
	.byte	0x1
	.value	0x837
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	0xb587
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x83f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x36
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0x849
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x84a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x84b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"src_str"
	.byte	0x1
	.value	0x84c
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x84d
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x84e
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0x850
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"src_mem"
	.byte	0x1
	.value	0x850
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x850
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb6ec
	.string	"expand_builtin_memmove"
	.byte	0x1
	.value	0x89b
	.byte	0x1
	.long	0x9d
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x898
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x899
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x89a
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0x8a1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x8a2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x8a3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x8a5
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x8a6
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x8be
	.long	0xb6ec
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x1e5
	.uleb128 0x31
	.long	0xb76b
	.string	"expand_builtin_bcopy"
	.byte	0x1
	.value	0x8d0
	.byte	0x1
	.long	0x9d
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x8cf
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x8d1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0x8d1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x8d1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF58
	.byte	0x1
	.value	0x8d1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xb812
	.string	"expand_builtin_strcpy"
	.byte	0x1
	.value	0x8f1
	.byte	0x1
	.long	0x9d
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x8ee
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x8ef
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x8f0
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0x8f2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x8f3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x8f3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x8f3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"dst"
	.byte	0x1
	.value	0x8f3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xb8be
	.string	"expand_builtin_stpcpy"
	.byte	0x1
	.value	0x914
	.byte	0x1
	.long	0x9d
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x911
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x912
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x913
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x33
	.long	.LASF58
	.byte	0x1
	.value	0x919
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x91a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x91a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x91f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb92e
	.string	"builtin_strncpy_read_str"
	.byte	0x1
	.value	0x93f
	.byte	0x1
	.long	0x9d
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0x93c
	.long	0x4ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF7
	.byte	0x1
	.value	0x93d
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x93e
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"str"
	.byte	0x1
	.value	0x940
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0xba07
	.string	"expand_builtin_strncpy"
	.byte	0x1
	.value	0x950
	.byte	0x1
	.long	0x9d
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x94d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x94e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x94f
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x34
	.string	"slen"
	.byte	0x1
	.value	0x956
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x957
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x958
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0x975
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x976
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x978
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0x979
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xba81
	.string	"builtin_memset_read_str"
	.byte	0x1
	.value	0x99f
	.byte	0x1
	.long	0x9d
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0x99c
	.long	0x4ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF7
	.byte	0x1
	.value	0x99d
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x99e
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x9a0
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x9a1
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0xbb1c
	.string	"builtin_memset_gen_str"
	.byte	0x1
	.value	0x9b2
	.byte	0x1
	.long	0x9d
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0x9af
	.long	0x4ea
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF7
	.byte	0x1
	.value	0x9b0
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x9b1
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF46
	.byte	0x1
	.value	0x9b3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"coeff"
	.byte	0x1
	.value	0x9b3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x9b4
	.long	0x41d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x9b5
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0xbc25
	.string	"expand_builtin_memset"
	.byte	0x1
	.value	0x9ce
	.byte	0x1
	.long	0x9d
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x9cb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x9cc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x9cd
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0x9cf
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0x9d6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x9d7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x9d8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x9d9
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x9db
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0x9dd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF56
	.byte	0x1
	.value	0x9dd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x9dd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x34
	.string	"val_rtx"
	.byte	0x1
	.value	0x9ee
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xbcae
	.string	"expand_builtin_bzero"
	.byte	0x1
	.value	0xa40
	.byte	0x1
	.long	0x9d
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xa3f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0xa41
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0xa42
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0xa42
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF58
	.byte	0x1
	.value	0xa42
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0xa43
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xbdd7
	.string	"expand_builtin_memcmp"
	.byte	0x1
	.value	0xa68
	.byte	0x1
	.long	0x9d
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xa64
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xa65
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xa66
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xa67
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0xa69
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.string	"arg2"
	.byte	0x1
	.value	0xa69
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0xa69
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xa6a
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xa6a
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	0xbd7f
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x34
	.string	"r"
	.byte	0x1
	.value	0xa87
	.long	0x81d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x36
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.value	0xa90
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF60
	.byte	0x1
	.value	0xa91
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"ind1"
	.byte	0x1
	.value	0xa92
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"ind2"
	.byte	0x1
	.value	0xa96
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0xa9a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xbef1
	.string	"expand_builtin_strcmp"
	.byte	0x1
	.value	0xaf7
	.byte	0x1
	.long	0x9d
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xaf4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xaf5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xaf6
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0xaf8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0xaf9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"arg2"
	.byte	0x1
	.value	0xaf9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xafa
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xafa
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	0xbe99
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0xb07
	.long	0x81d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x36
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.value	0xb0f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF60
	.byte	0x1
	.value	0xb10
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"ind1"
	.byte	0x1
	.value	0xb11
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"ind2"
	.byte	0x1
	.value	0xb15
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0xb19
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xc01c
	.string	"expand_builtin_strncmp"
	.byte	0x1
	.value	0xb7a
	.byte	0x1
	.long	0x9d
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xb77
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xb78
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xb79
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0xb7b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0xb7c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.string	"arg2"
	.byte	0x1
	.value	0xb7c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"arg3"
	.byte	0x1
	.value	0xb7c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xb7d
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xb7d
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	0xbfc4
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x34
	.string	"r"
	.byte	0x1
	.value	0xb97
	.long	0x81d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x36
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.value	0xba2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF60
	.byte	0x1
	.value	0xba3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"ind1"
	.byte	0x1
	.value	0xba4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"ind2"
	.byte	0x1
	.value	0xba8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0xbac
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xc0ae
	.string	"expand_builtin_strcat"
	.byte	0x1
	.value	0xc13
	.byte	0x1
	.long	0x9d
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xc10
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xc11
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xc12
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x34
	.string	"dst"
	.byte	0x1
	.value	0xc18
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0xc19
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0xc1a
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xc10c
	.string	"expand_builtin_strncat"
	.byte	0x1
	.value	0xc2d
	.byte	0x1
	.long	0x9d
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xc2a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xc2b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xc2c
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0xc1c2
	.string	"expand_builtin_strspn"
	.byte	0x1
	.value	0xc65
	.byte	0x1
	.long	0x9d
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xc62
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xc63
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xc64
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x34
	.string	"s1"
	.byte	0x1
	.value	0xc6a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"s2"
	.byte	0x1
	.value	0xc6a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xc6b
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xc6b
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x34
	.string	"r"
	.byte	0x1
	.value	0xc70
	.long	0xc1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x41d
	.uleb128 0x31
	.long	0xc2a9
	.string	"expand_builtin_strcspn"
	.byte	0x1
	.value	0xc8a
	.byte	0x1
	.long	0x9d
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xc87
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xc88
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xc89
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x34
	.string	"s1"
	.byte	0x1
	.value	0xc8f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"s2"
	.byte	0x1
	.value	0xc8f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xc90
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xc90
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	0xc280
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x34
	.string	"r"
	.byte	0x1
	.value	0xc95
	.long	0xc1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x33
	.long	.LASF58
	.byte	0x1
	.value	0xca5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0xca6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xc2fa
	.byte	0x1
	.string	"expand_builtin_saveregs"
	.byte	0x1
	.value	0xcb9
	.byte	0x1
	.long	0x9d
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0xcba
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"seq"
	.byte	0x1
	.value	0xcba
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xc3a2
	.string	"expand_builtin_args_info"
	.byte	0x1
	.value	0xced
	.byte	0x1
	.long	0x9d
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xcec
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0xcee
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"nwords"
	.byte	0x1
	.value	0xcef
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"word_ptr"
	.byte	0x1
	.value	0xcf0
	.long	0x822
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	0xc391
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x34
	.string	"wordnum"
	.byte	0x1
	.value	0xd00
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x38
	.long	.LASF42
	.long	0xd224
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17427
	.byte	0x0
	.uleb128 0x31
	.long	0xc423
	.string	"expand_builtin_next_arg"
	.byte	0x1
	.value	0xd21
	.byte	0x1
	.long	0x9d
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xd20
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"fntype"
	.byte	0x1
	.value	0xd22
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x34
	.string	"last_parm"
	.byte	0x1
	.value	0xd2e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0xd2f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xc4b8
	.string	"stabilize_va_list"
	.byte	0x1
	.value	0xd4f
	.byte	0x1
	.long	0x1e5
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.value	0xd4d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"needs_lvalue"
	.byte	0x1
	.value	0xd4e
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	0xc49f
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xd5b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xd5c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x34
	.string	"pt"
	.byte	0x1
	.value	0xd64
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0xc51a
	.byte	0x1
	.string	"std_expand_builtin_va_start"
	.byte	0x1
	.value	0xd80
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.value	0xd7e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"nextarg"
	.byte	0x1
	.value	0xd7f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0xd81
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xc58e
	.string	"expand_builtin_va_start"
	.byte	0x1
	.value	0xd8f
	.byte	0x1
	.long	0x9d
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xd8e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"nextarg"
	.byte	0x1
	.value	0xd90
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"chain"
	.byte	0x1
	.value	0xd91
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF61
	.byte	0x1
	.value	0xd91
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xc662
	.byte	0x1
	.string	"std_expand_builtin_va_arg"
	.byte	0x1
	.value	0xdaa
	.byte	0x1
	.long	0x9d
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.value	0xda9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0xda9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"addr_tree"
	.byte	0x1
	.value	0xdab
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0xdab
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"type_size"
	.byte	0x1
	.value	0xdab
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0xdac
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"alignm1"
	.byte	0x1
	.value	0xdac
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"rounded_size"
	.byte	0x1
	.value	0xdad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"addr"
	.byte	0x1
	.value	0xdae
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x39
	.long	0xc75f
	.byte	0x1
	.string	"expand_builtin_va_arg"
	.byte	0x1
	.value	0xde5
	.byte	0x1
	.long	0x9d
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.value	0xde4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0xde4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"addr"
	.byte	0x1
	.value	0xde6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0xde6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"promoted_type"
	.byte	0x1
	.value	0xde7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"want_va_type"
	.byte	0x1
	.value	0xde7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"have_va_type"
	.byte	0x1
	.value	0xde7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	0xc746
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x33
	.long	.LASF26
	.byte	0x1
	.value	0xe05
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"pname"
	.byte	0x1
	.value	0xe05
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.string	"gave_help"
	.byte	0x1
	.value	0xe06
	.long	0xbf5
	.byte	0x5
	.byte	0x3
	.long	gave_help.17700
	.byte	0x0
	.uleb128 0x31
	.long	0xc7ad
	.string	"expand_builtin_va_end"
	.byte	0x1
	.value	0xe4a
	.byte	0x1
	.long	0x9d
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xe49
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF61
	.byte	0x1
	.value	0xe4b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xc851
	.string	"expand_builtin_va_copy"
	.byte	0x1
	.value	0xe61
	.byte	0x1
	.long	0x9d
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xe60
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"dst"
	.byte	0x1
	.value	0xe62
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0xe62
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0xe62
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x34
	.string	"dstb"
	.byte	0x1
	.value	0xe72
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"srcb"
	.byte	0x1
	.value	0xe72
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0xe72
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xc8ce
	.string	"expand_builtin_frame_address"
	.byte	0x1
	.value	0xe97
	.byte	0x1
	.long	0x9d
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xe96
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF52
	.byte	0x1
	.value	0xe98
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0xe99
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x34
	.string	"tem"
	.byte	0x1
	.value	0xeab
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xc93a
	.string	"expand_builtin_alloca"
	.byte	0x1
	.value	0xecd
	.byte	0x1
	.long	0x9d
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xecb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xecc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"op0"
	.byte	0x1
	.value	0xece
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0xecf
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xc9b3
	.string	"expand_builtin_ffs"
	.byte	0x1
	.value	0xeeb
	.byte	0x1
	.long	0x9d
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xee9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xeea
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0xeea
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"op0"
	.byte	0x1
	.value	0xeec
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF42
	.long	0xd20f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17932
	.byte	0x0
	.uleb128 0x31
	.long	0xca3e
	.string	"expand_builtin_expect"
	.byte	0x1
	.value	0xf58
	.byte	0x1
	.long	0x9d
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xf56
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0xf57
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"exp"
	.byte	0x1
	.value	0xf59
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0xf59
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"note"
	.byte	0x1
	.value	0xf5a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"rtx_c"
	.byte	0x1
	.value	0xf5a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xcbc8
	.byte	0x1
	.string	"expand_builtin_expect_jump"
	.byte	0x1
	.value	0xf87
	.byte	0x1
	.long	0x9d
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xf84
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"if_false_label"
	.byte	0x1
	.value	0xf85
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"if_true_label"
	.byte	0x1
	.value	0xf86
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0xf88
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.string	"arg0"
	.byte	0x1
	.value	0xf89
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0xf8a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"ret"
	.byte	0x1
	.value	0xf8b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.string	"do_next_insn"
	.byte	0x1
	.value	0xfed
	.long	.L1211
	.uleb128 0x36
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x34
	.string	"num_jumps"
	.byte	0x1
	.value	0xf92
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"insn"
	.byte	0x1
	.value	0xf93
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"save_pending_stack_adjust"
	.byte	0x1
	.value	0xf94
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x34
	.string	"next"
	.byte	0x1
	.value	0xfb3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"pattern"
	.byte	0x1
	.value	0xfb4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x34
	.string	"ifelse"
	.byte	0x1
	.value	0xfb9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"label"
	.byte	0x1
	.value	0xfba
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"taken"
	.byte	0x1
	.value	0xfbb
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.byte	0x1
	.string	"expand_builtin_trap"
	.byte	0x1
	.value	0xfff
	.byte	0x1
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x31
	.long	0xccf6
	.string	"expand_builtin_sprintf"
	.byte	0x1
	.value	0x1013
	.byte	0x1
	.long	0x9d
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x1010
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x1011
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x1012
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"orig_arglist"
	.byte	0x1
	.value	0x1014
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0x1014
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"fmt"
	.byte	0x1
	.value	0x1014
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"fmt_str"
	.byte	0x1
	.value	0x1015
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	0xccbf
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x102f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"exp"
	.byte	0x1
	.value	0x1030
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x36
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x103f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x103f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x103f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0xce0b
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.value	0x106e
	.byte	0x1
	.long	0x9d
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x1069
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x106a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0x106b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x106c
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"ignore"
	.byte	0x1
	.value	0x106d
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.long	.LASF52
	.byte	0x1
	.value	0x106f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0x1070
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"fcode"
	.byte	0x1
	.value	0x1071
	.long	0x224f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	0xcdc3
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x34
	.string	"volatilep"
	.byte	0x1
	.value	0x10e0
	.long	0xbf5
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x10e1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x35
	.long	0xcdfa
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x1140
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x1141
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"ops"
	.byte	0x1
	.value	0x1142
	.long	0xce0b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x38
	.long	.LASF42
	.long	0xd1fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18223
	.byte	0x0
	.uleb128 0x10
	.long	0xce1b
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0x2
	.byte	0x0
	.uleb128 0x31
	.long	0xce5c
	.string	"fold_builtin_constant_p"
	.byte	0x1
	.value	0x1278
	.byte	0x1
	.long	0x1e5
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x1277
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xcea0
	.string	"fold_builtin_classify_type"
	.byte	0x1
	.value	0x12a1
	.byte	0x1
	.long	0x1e5
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x12a0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xcefa
	.string	"fold_builtin_inf"
	.byte	0x1
	.value	0x12ae
	.byte	0x1
	.long	0x1e5
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x12ac
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"warn"
	.byte	0x1
	.value	0x12ad
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"real"
	.byte	0x1
	.value	0x12af
	.long	0xb87
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x31
	.long	0xcf73
	.string	"fold_builtin_nan"
	.byte	0x1
	.value	0x12be
	.byte	0x1
	.long	0x1e5
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x12bc
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x12bc
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"quiet"
	.byte	0x1
	.value	0x12bd
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"real"
	.byte	0x1
	.value	0x12bf
	.long	0xb87
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"str"
	.byte	0x1
	.value	0x12c0
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xcff2
	.byte	0x1
	.string	"fold_builtin"
	.byte	0x1
	.value	0x12d4
	.byte	0x1
	.long	0x1e5
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x12d3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF52
	.byte	0x1
	.value	0x12d5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0x12d6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"fcode"
	.byte	0x1
	.value	0x12d7
	.long	0x224f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x12e7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xd057
	.string	"build_function_call_expr"
	.byte	0x1
	.value	0x1310
	.byte	0x1
	.long	0x1e5
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x32
	.string	"fn"
	.byte	0x1
	.value	0x130f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x130f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"call_expr"
	.byte	0x1
	.value	0x1311
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xd0cb
	.string	"validate_arglist"
	.byte	0x1
	.value	0x1321
	.byte	0x1
	.long	0x2e3
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x1320
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x34
	.string	"code"
	.byte	0x1
	.value	0x1322
	.long	0x1881
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.string	"res"
	.byte	0x1
	.value	0x1323
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.string	"ap"
	.byte	0x1
	.value	0x1329
	.long	0x40e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3d
	.string	"end"
	.byte	0x1
	.value	0x134b
	.long	.L1477
	.byte	0x0
	.uleb128 0x3e
	.byte	0x1
	.string	"default_init_builtins"
	.byte	0x1
	.value	0x1359
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x39
	.long	0xd173
	.byte	0x1
	.string	"default_expand_builtin"
	.byte	0x1
	.value	0x1365
	.byte	0x1
	.long	0x9d
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x1360
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x1361
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0x1362
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x1363
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"ignore"
	.byte	0x1
	.value	0x1364
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x31
	.long	0xd1af
	.string	"readonly_data_expr"
	.byte	0x1
	.value	0x136f
	.byte	0x1
	.long	0xbf5
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x136e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x40
	.long	0xd1ea
	.byte	0x1
	.string	"c_strlen_exported"
	.byte	0x1
	.value	0x137c
	.long	0x1e5
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x32
	.string	"src"
	.byte	0x1
	.value	0x137b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x10
	.long	0xd1fa
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0xd1ea
	.uleb128 0x10
	.long	0xd20f
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x12
	.byte	0x0
	.uleb128 0xb
	.long	0xd1ff
	.uleb128 0x10
	.long	0xd224
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x18
	.byte	0x0
	.uleb128 0xb
	.long	0xd214
	.uleb128 0xb
	.long	0x80d
	.uleb128 0x10
	.long	0xd23e
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x15
	.byte	0x0
	.uleb128 0xb
	.long	0xd22e
	.uleb128 0x10
	.long	0xd253
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x14
	.byte	0x0
	.uleb128 0xb
	.long	0xd243
	.uleb128 0x10
	.long	0xd268
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x11
	.byte	0x0
	.uleb128 0xb
	.long	0xd258
	.uleb128 0x10
	.long	0xd27d
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0xd26d
	.uleb128 0x10
	.long	0xd292
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0xd282
	.uleb128 0x10
	.long	0xd2a7
	.long	0xa6c8
	.uleb128 0x11
	.long	0x3d3
	.byte	0x8
	.byte	0x0
	.uleb128 0xb
	.long	0xd297
	.uleb128 0x10
	.long	0xd2bc
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x9
	.byte	0x0
	.uleb128 0xb
	.long	0xd2ac
	.uleb128 0x34
	.string	"setjmp_alias_set"
	.byte	0x1
	.value	0x1e3
	.long	0x483
	.byte	0x5
	.byte	0x3
	.long	setjmp_alias_set
	.uleb128 0x10
	.long	0xd2f0
	.long	0x849
	.uleb128 0x11
	.long	0x3d3
	.byte	0xaf
	.byte	0x0
	.uleb128 0x34
	.string	"apply_args_mode"
	.byte	0x1
	.value	0x383
	.long	0xd2e0
	.byte	0x5
	.byte	0x3
	.long	apply_args_mode
	.uleb128 0x34
	.string	"apply_result_mode"
	.byte	0x1
	.value	0x38a
	.long	0xd2e0
	.byte	0x5
	.byte	0x3
	.long	apply_result_mode
	.uleb128 0x10
	.long	0xd33e
	.long	0x2e3
	.uleb128 0x11
	.long	0x3d3
	.byte	0xaf
	.byte	0x0
	.uleb128 0x34
	.string	"apply_args_reg_offset"
	.byte	0x1
	.value	0x390
	.long	0xd32e
	.byte	0x5
	.byte	0x3
	.long	apply_args_reg_offset
	.uleb128 0x41
	.string	"target_flags"
	.byte	0xd
	.byte	0x21
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"mips_isa"
	.byte	0xd
	.byte	0xa6
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"mips_abi"
	.byte	0xd
	.value	0x3ca
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd3ae
	.long	0x2db
	.uleb128 0x43
	.uleb128 0x11
	.long	0x3d3
	.byte	0xaf
	.byte	0x0
	.uleb128 0x42
	.string	"mips_hard_regno_mode_ok"
	.byte	0xd
	.value	0x778
	.long	0xd39d
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd3e0
	.long	0xa92
	.uleb128 0x11
	.long	0x3d3
	.byte	0x35
	.byte	0x0
	.uleb128 0x44
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.long	0xd3ed
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xd3d0
	.uleb128 0x10
	.long	0xd402
	.long	0x42b
	.uleb128 0x11
	.long	0x3d3
	.byte	0x35
	.byte	0x0
	.uleb128 0x41
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0xd415
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xd3f2
	.uleb128 0x41
	.string	"mode_wider_mode"
	.byte	0x5
	.byte	0x84
	.long	0xd433
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xd3f2
	.uleb128 0x10
	.long	0xd448
	.long	0x849
	.uleb128 0x11
	.long	0x3d3
	.byte	0x8
	.byte	0x0
	.uleb128 0x41
	.string	"class_narrowest_mode"
	.byte	0x5
	.byte	0xa6
	.long	0xd466
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xd438
	.uleb128 0x41
	.string	"ptr_mode"
	.byte	0x5
	.byte	0xae
	.long	0x849
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd48d
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0x80
	.byte	0x0
	.uleb128 0x42
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x69e
	.long	0xd47d
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd4b5
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0xa
	.byte	0x0
	.uleb128 0x42
	.string	"global_rtl"
	.byte	0x4
	.value	0x6df
	.long	0xd4a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"struct_value_rtx"
	.byte	0x4
	.value	0x6ee
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"struct_value_incoming_rtx"
	.byte	0x4
	.value	0x6ef
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"static_chain_rtx"
	.byte	0x4
	.value	0x6f0
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"cse_not_expected"
	.byte	0x4
	.value	0x76a
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd54a
	.long	0x2db
	.uleb128 0x43
	.byte	0x0
	.uleb128 0x41
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0xd562
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xd53f
	.uleb128 0x10
	.long	0xd577
	.long	0x2d0
	.uleb128 0x11
	.long	0x3d3
	.byte	0x3
	.byte	0x0
	.uleb128 0x45
	.string	"built_in_class_names"
	.byte	0x1
	.byte	0x42
	.long	0xd59a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	built_in_class_names
	.uleb128 0xb
	.long	0xd567
	.uleb128 0x10
	.long	0xd5b0
	.long	0x2d0
	.uleb128 0x46
	.long	0x3d3
	.value	0x164
	.byte	0x0
	.uleb128 0x45
	.string	"built_in_names"
	.byte	0x1
	.byte	0x46
	.long	0xd5cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	built_in_names
	.uleb128 0xb
	.long	0xd59f
	.uleb128 0x10
	.long	0xd5e3
	.long	0x1e5
	.uleb128 0x46
	.long	0x3d3
	.value	0x164
	.byte	0x0
	.uleb128 0x45
	.string	"built_in_decls"
	.byte	0x1
	.byte	0x4e
	.long	0xd5d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	built_in_decls
	.uleb128 0x10
	.long	0xd610
	.long	0x1e5
	.uleb128 0x11
	.long	0x3d3
	.byte	0x3f
	.byte	0x0
	.uleb128 0x42
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0xd600
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd637
	.long	0x1e5
	.uleb128 0x11
	.long	0x3d3
	.byte	0xa
	.byte	0x0
	.uleb128 0x42
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0xd627
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd65f
	.long	0x1e5
	.uleb128 0x11
	.long	0x3d3
	.byte	0x5
	.byte	0x0
	.uleb128 0x42
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xb10
	.long	0xd64f
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"optimize"
	.byte	0x14
	.byte	0x41
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"optimize_size"
	.byte	0x14
	.byte	0x45
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_errno_math"
	.byte	0x14
	.value	0x16a
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_unsafe_math_optimizations"
	.byte	0x14
	.value	0x171
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_finite_math_only"
	.byte	0x14
	.value	0x175
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_guess_branch_prob"
	.byte	0x14
	.value	0x252
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd753
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0xaf
	.byte	0x0
	.uleb128 0x42
	.string	"fixed_regs"
	.byte	0x15
	.value	0x18b
	.long	0xd743
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x541f
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd787
	.long	0x89ea
	.uleb128 0x11
	.long	0x3d3
	.byte	0x32
	.byte	0x0
	.uleb128 0x41
	.string	"optab_table"
	.byte	0x11
	.byte	0xa0
	.long	0xd777
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd7ac
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0x60
	.byte	0x0
	.uleb128 0x41
	.string	"libfunc_table"
	.byte	0x16
	.byte	0x97
	.long	0xd79c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd7ce
	.long	0x8aec
	.uleb128 0x43
	.byte	0x0
	.uleb128 0x44
	.long	.LASF37
	.byte	0x17
	.byte	0xfe
	.long	0xd7db
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xd7c3
	.uleb128 0x42
	.string	"targetm"
	.byte	0x18
	.value	0x12d
	.long	0x939a
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.long	.LASF40
	.byte	0x1c
	.value	0x176
	.long	0xd800
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9e05
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x46
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x203
	.value	0x2
	.long	.Ldebug_info0
	.long	0xd806
	.long	0xa567
	.string	"expand_builtin_return_addr"
	.long	0xa5e1
	.string	"expand_builtin_setjmp_setup"
	.long	0xa66a
	.string	"expand_builtin_setjmp_receiver"
	.long	0xa791
	.string	"expand_builtin_longjmp"
	.long	0xa941
	.string	"apply_args_register_offset"
	.long	0xc2a9
	.string	"expand_builtin_saveregs"
	.long	0xc4b8
	.string	"std_expand_builtin_va_start"
	.long	0xc58e
	.string	"std_expand_builtin_va_arg"
	.long	0xc662
	.string	"expand_builtin_va_arg"
	.long	0xca3e
	.string	"expand_builtin_expect_jump"
	.long	0xcbc8
	.string	"expand_builtin_trap"
	.long	0xccf6
	.string	"expand_builtin"
	.long	0xcf73
	.string	"fold_builtin"
	.long	0xd0cb
	.string	"default_init_builtins"
	.long	0xd0f3
	.string	"default_expand_builtin"
	.long	0xd1af
	.string	"c_strlen_exported"
	.long	0xd577
	.string	"built_in_class_names"
	.long	0xd5b0
	.string	"built_in_names"
	.long	0xd5e3
	.string	"built_in_decls"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"",@progbits
.LASF26:
	.string	"name"
.LASF32:
	.string	"result"
.LASF37:
	.string	"insn_data"
.LASF58:
	.string	"newarglist"
.LASF11:
	.string	"lang_flag_0"
.LASF12:
	.string	"lang_flag_1"
.LASF13:
	.string	"lang_flag_2"
.LASF17:
	.string	"lang_flag_6"
.LASF18:
	.string	"lang_flag_7"
.LASF33:
	.string	"dest"
.LASF61:
	.string	"valist"
.LASF6:
	.string	"mem_attrs"
.LASF41:
	.string	"offset_node"
.LASF45:
	.string	"arglist"
.LASF53:
	.string	"src_align"
.LASF39:
	.string	"expand_builtin"
.LASF1:
	.string	"common"
.LASF27:
	.string	"lang_specific"
.LASF35:
	.string	"sequence_rtl_expr"
.LASF8:
	.string	"size"
.LASF34:
	.string	"sequence_stack"
.LASF30:
	.string	"function_frequency"
.LASF14:
	.string	"lang_flag_3"
.LASF28:
	.string	"function"
.LASF44:
	.string	"receiver_label"
.LASF3:
	.string	"unsigned int"
.LASF60:
	.string	"cst_uchar_ptr_node"
.LASF31:
	.string	"arguments"
.LASF21:
	.string	"abstract_origin"
.LASF9:
	.string	"align"
.LASF24:
	.string	"pointer_depth"
.LASF25:
	.string	"user_align"
.LASF40:
	.string	"lang_hooks"
.LASF22:
	.string	"size_unit"
.LASF59:
	.string	"cst_uchar_node"
.LASF48:
	.string	"best_mode"
.LASF38:
	.string	"attribute_table"
.LASF36:
	.string	"insn_code"
.LASF2:
	.string	"type"
.LASF47:
	.string	"regno"
.LASF29:
	.string	"args_size"
.LASF54:
	.string	"dest_align"
.LASF50:
	.string	"value_mode"
.LASF46:
	.string	"target"
.LASF52:
	.string	"fndecl"
.LASF55:
	.string	"dest_mem"
.LASF56:
	.string	"dest_addr"
.LASF15:
	.string	"lang_flag_4"
.LASF16:
	.string	"lang_flag_5"
.LASF20:
	.string	"abstract_flag"
.LASF5:
	.string	"mode_class"
.LASF19:
	.string	"ht_identifier"
.LASF7:
	.string	"offset"
.LASF51:
	.string	"subtarget"
.LASF42:
	.string	"__FUNCTION__"
.LASF10:
	.string	"built_in_class"
.LASF57:
	.string	"len_rtx"
.LASF0:
	.string	"mode"
.LASF4:
	.string	"_IO_FILE"
.LASF23:
	.string	"attributes"
.LASF43:
	.string	"buf_addr"
.LASF49:
	.string	"call_fusage"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
.globl __i686.get_pc_thunk.cx
	.hidden	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl	(%esp), %ecx
	ret
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
