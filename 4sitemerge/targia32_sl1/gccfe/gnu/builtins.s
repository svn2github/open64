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
	.string	"BUILT_IN_FLOOR"
.LC53:
	.string	"BUILT_IN_FLOORF"
.LC54:
	.string	"BUILT_IN_FLOORL"
.LC55:
	.string	"BUILT_IN_POW"
.LC56:
	.string	"BUILT_IN_TAN"
.LC57:
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
.LC58:
	.string	"BUILT_IN_PERIPHERAL_RW_END"
.LC59:
	.string	"BUILT_IN_VBUF_OFFSET"
.LC60:
	.string	"BUILT_IN_SBUF_OFFSET"
.LC61:
	.string	"BUILD_IN_MUL_SHIFT_HI"
.LC62:
	.string	"BUILD_IN_MUL_SHIFT"
.LC63:
	.string	"BUILD_IN_C3_LEAD"
.LC64:
	.string	"BUILD_IN_C3_MAC"
.LC65:
	.string	"BUILD_IN_C3_MACN"
.LC66:
	.string	"BUILD_IN_C3_ROUND"
.LC67:
	.string	"BUILD_IN_C3_SAADDS"
.LC68:
	.string	"BUILD_IN_C3_SASUBS"
.LC69:
	.string	"BUILD_IN_C3_MULA"
.LC70:
	.string	"BUILD_IN_C3_INIT_ACC"
.LC71:
	.string	"BUILD_IN_C3_SAVE_ACC"
.LC72:
	.string	"BUILD_IN_MPY_32_16"
.LC73:
	.string	"BUILD_IN_C3_MACD"
.LC74:
	.string	"BUILD_IN_C3_MULAD"
.LC75:
	.string	"BUILD_IN_C3_SAADDSH"
.LC76:
	.string	"BUILD_IN_C3_SASUBSH"
.LC77:
	.string	"BUILD_IN_C3_MVFS"
.LC78:
	.string	"BUILD_IN_C3_INIT_ADDR"
.LC79:
	.string	"BUILD_IN_C3_SAVE_ADDR"
.LC80:
	.string	"BUILD_IN_C3_MAC_A"
.LC81:
	.string	"BUILD_IN_C3_MACN_A"
.LC82:
	.string	"BUILD_IN_C3_DMAC_A"
.LC83:
	.string	"BUILD_IN_C3_DMACN_A"
.LC84:
	.string	"BUILD_IN_C3_INIT_DACC"
.LC85:
	.string	"BUILD_IN_C3_SAVE_DACC"
.LC86:
	.string	"BUILD_IN_C3_SAADDH_A"
.LC87:
	.string	"BUILD_IN_C3_SASUBH_A"
.LC88:
	.string	"BUILD_IN_C3_SAMULSH"
.LC89:
	.string	"BUILD_IN_C3_MULA_A"
.LC90:
	.string	"BUILD_IN_C3_SAMULH_A"
.LC91:
	.string	"BUILD_IN_C3_PTR"
.LC92:
	.string	"BUILD_IN_C3_MAC_AR"
.LC93:
	.string	"BUILD_IN_C3_MACN_AR"
.LC94:
	.string	"BUILD_IN_C3_MULA_AR"
.LC95:
	.string	"BUILD_IN_C3_INIT_PTR"
.LC96:
	.string	"BUILD_IN_C3_TRBACK"
.LC97:
	.string	"BUILD_IN_C3_VITERBI"
.LC98:
	.string	"BUILD_IN_C3_DMULT"
.LC99:
	.string	"BUILD_IN_C3_DMULT_A"
.LC100:
	.string	"BUILD_IN_C3_DMULTN"
.LC101:
	.string	"BUILD_IN_C3_DMULTN_A"
.LC102:
	.string	"BUILD_IN_SET_CIRCBUF"
.LC103:
	.string	"BUILD_IN_RESET_CIRCBUF"
.LC104:
	.string	"BUILD_IN_C3_DADD"
.LC105:
	.string	"BUILD_IN_C3_DSUB"
.LC106:
	.string	"BUILD_IN_C3_FFT"
.LC107:
	.string	"BUILD_IN_C3_FFTLD"
.LC108:
	.string	"BUILD_IN_C3_FFTST"
.LC109:
	.string	"BUILD_IN_DEPOSIT"
.LC110:
	.string	"BUILD_IN_EXTRACT"
.LC111:
	.string	"BUILD_IN_C3_BITR"
.LC112:
	.string	"BUILD_IN_C3_DMAC"
.LC113:
	.string	"BUILD_IN_C3_DMACN"
.LC114:
	.string	"BUILD_IN_C3_LOAD"
.LC115:
	.string	"BUILD_IN_C3_STORE"
.LC116:
	.string	"BUILD_IN_C3_REVB"
.LC117:
	.string	"BUILD_IN_C3_DSHL_I"
.LC118:
	.string	"BUILD_IN_C3_DSHR_I"
.LC119:
	.string	"BUILD_IN_C3_MAC_I"
.LC120:
	.string	"BUILD_IN_C3_MACN_I"
.LC121:
	.string	"BUILD_IN_C3_MULA_I"
.LC122:
	.string	"BUILD_IN_C3_SAADD_A"
.LC123:
	.string	"BUILD_IN_C3_SADDHA"
.LC124:
	.string	"BUILD_IN_C3_SAADDHA_A"
.LC125:
	.string	"BUILD_IN_C3_SASUB_A"
.LC126:
	.string	"BUILD_IN_COPY_ADDR"
.LC127:
	.string	"BUILD_IN_SET_ADDR"
.LC128:
	.string	"BUILT_IN_C2_MVGR_G2R"
.LC129:
	.string	"BUILT_IN_C2_MVGR_R2G"
.LC130:
	.string	"BUILT_IN_C2_MVGR_G2S"
.LC131:
	.string	"BUILT_IN_C2_MVGR_S2G"
.LC132:
	.string	"BUILT_IN_C2_MVGC_C2G"
.LC133:
	.string	"BUILT_IN_C2_MVGC_G2C"
.LC134:
	.string	"BUILT_IN_C2_LD_V"
.LC135:
	.string	"BUILT_IN_C2_LD_G"
.LC136:
	.string	"BUILT_IN_C2_LD_S"
.LC137:
	.string	"BUILT_IN_C2_ST_V"
.LC138:
	.string	"BUILT_IN_C2_ST_G"
.LC139:
	.string	"BUILT_IN_C2_LD_G_IMM"
.LC140:
	.string	"BUILT_IN_C2_LD_C_IMM"
.LC141:
	.string	"BUILT_IN_C2_LD_V_IMM"
.LC142:
	.string	"BUILT_IN_C2_ST_V_IMM"
.LC143:
	.string	"BUILT_IN_C2_ST_C_IMM"
.LC144:
	.string	"BUILT_IN_C2_ST_G_IMM"
.LC145:
	.string	"BUILT_IN_C2_VADDS"
.LC146:
	.string	"BUILT_IN_C2_VSUBS"
.LC147:
	.string	"BUILT_IN_C2_VMUL"
.LC148:
	.string	"BUILT_IN_C2_VNEG"
.LC149:
	.string	"BUILT_IN_C2_VSHFT"
.LC150:
	.string	"BUILT_IN_C2_VCLP"
.LC151:
	.string	"BUILT_IN_C2_VCLG"
.LC152:
	.string	"BUILT_IN_C2_VCMOV"
.LC153:
	.string	"BUILT_IN_C2_LCZERO"
.LC154:
	.string	"BUILT_IN_C2_VRND"
.LC155:
	.string	"BUILT_IN_C2_VSPAS"
.LC156:
	.string	"BUILT_IN_C2_VSPEL"
.LC157:
	.string	"BUILT_IN_C2_VSPEL_MAC"
.LC158:
	.string	"BUILT_IN_C2_MMUL"
.LC159:
	.string	"BUILT_IN_C2_VMOV"
.LC160:
	.string	"BUILT_IN_C2_VCOPY"
.LC161:
	.string	"BUILT_IN_C2_VCMPR"
.LC162:
	.string	"BUILT_IN_C2_SAD"
.LC163:
	.string	"BUILT_IN_C2_SAD_TMP"
.LC164:
	.string	"BUILT_IN_C2_SATD"
.LC165:
	.string	"BUILT_IN_C2_INTRA"
.LC166:
	.string	"BUILT_IN_C2_MVSEL"
.LC167:
	.string	"BUILT_IN_C2_BCST"
.LC168:
	.string	"BUILT_IN_C2_VLCS_R"
.LC169:
	.string	"BUILT_IN_C2_VLCS"
.LC170:
	.string	"BUILT_IN_C2_ADDS"
.LC171:
	.string	"BUILT_IN_C2_ADDS_R"
.LC172:
	.string	"BUILT_IN_C2_SUBS"
.LC173:
	.string	"BUILT_IN_C2_SUBS_R"
.LC174:
	.string	"BUILT_IN_C2_MULS"
.LC175:
	.string	"BUILT_IN_C2_MADS"
.LC176:
	.string	"BUILT_IN_C2_SMADS"
.LC177:
	.string	"BUILT_IN_C2_CMOV"
.LC178:
	.string	"BUILT_IN_C2_MOV"
.LC179:
	.string	"BUILT_IN_C2_MOV_R"
.LC180:
	.string	"BUILT_IN_C2_CLP"
.LC181:
	.string	"BUILT_IN_C2_CHKRNG"
.LC182:
	.string	"BUILT_IN_C2_SCOND"
.LC183:
	.string	"BUILT_IN_C2_SCOND_R_WB"
.LC184:
	.string	"BUILT_IN_C2_SCOND_R"
.LC185:
	.string	"BUILT_IN_C2_SCOND_BR"
.LC186:
	.string	"BUILT_IN_C2_SCOND_BR_R"
.LC187:
	.string	"BUILT_IN_C2_BOP"
.LC188:
	.string	"BUILT_IN_C2_BDEP"
.LC189:
	.string	"BUILT_IN_C2_WRAP"
.LC190:
	.string	"BUILT_IN_C2_BXTR"
.LC191:
	.string	"BUILT_IN_C2_SUM4"
.LC192:
	.string	"BUILT_IN_C2_SUM3_SADDR"
.LC193:
	.string	"BUILT_IN_C2_SUM4_R"
.LC194:
	.string	"BUILT_IN_C2_MED"
.LC195:
	.string	"BUILT_IN_C2_GSUMS"
.LC196:
	.string	"BUILT_IN_C2_CLZOB"
.LC197:
	.string	"BUILT_IN_C2_THCTRL"
.LC198:
	.string	"BUILT_IN_C2_BR_F"
.LC199:
	.string	"BUILT_IN_C2_BR_T"
.LC200:
	.string	"BUILT_IN_C2_LD_V2G"
.LC201:
	.string	"BUILT_IN_C2_LD_V2G_IMM"
.LC202:
	.string	"BUILT_IN_C2_ST_G2V"
.LC203:
	.string	"BUILT_IN_C2_ST_G2V_IMM"
.LC204:
	.string	"BUILT_IN_C2_MVGR_R2S"
.LC205:
	.string	"BUILT_IN_C2_FORK"
.LC206:
	.string	"BUILT_IN_C2_JOINT"
.LC207:
	.string	"BUILT_IN_C2_THREAD_MAJOR"
.LC208:
	.string	"BUILT_IN_C2_THREAD_MINOR"
.LC209:
	.string	"BUILT_IN_SQRT"
.LC210:
	.string	"BUILT_IN_SIN"
.LC211:
	.string	"BUILT_IN_COS"
.LC212:
	.string	"BUILT_IN_EXP"
.LC213:
	.string	"BUILT_IN_LOG"
.LC214:
	.string	"BUILT_IN_SQRTF"
.LC215:
	.string	"BUILT_IN_SINF"
.LC216:
	.string	"BUILT_IN_COSF"
.LC217:
	.string	"BUILT_IN_EXPF"
.LC218:
	.string	"BUILT_IN_LOGF"
.LC219:
	.string	"BUILT_IN_SQRTL"
.LC220:
	.string	"BUILT_IN_SINL"
.LC221:
	.string	"BUILT_IN_COSL"
.LC222:
	.string	"BUILT_IN_EXPL"
.LC223:
	.string	"BUILT_IN_LOGL"
.LC224:
	.string	"BUILT_IN_INF"
.LC225:
	.string	"BUILT_IN_INFF"
.LC226:
	.string	"BUILT_IN_INFL"
.LC227:
	.string	"BUILT_IN_HUGE_VAL"
.LC228:
	.string	"BUILT_IN_HUGE_VALF"
.LC229:
	.string	"BUILT_IN_HUGE_VALL"
.LC230:
	.string	"BUILT_IN_NAN"
.LC231:
	.string	"BUILT_IN_NANF"
.LC232:
	.string	"BUILT_IN_NANL"
.LC233:
	.string	"BUILT_IN_NANS"
.LC234:
	.string	"BUILT_IN_NANSF"
.LC235:
	.string	"BUILT_IN_NANSL"
.LC236:
	.string	"BUILT_IN_SAVEREGS"
.LC237:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LC238:
	.string	"BUILT_IN_NEXT_ARG"
.LC239:
	.string	"BUILT_IN_ARGS_INFO"
.LC240:
	.string	"BUILT_IN_CONSTANT_P"
.LC241:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LC242:
	.string	"BUILT_IN_RETURN_ADDRESS"
	.align 4
.LC243:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LC244:
	.string	"BUILT_IN_APPLY_ARGS"
.LC245:
	.string	"BUILT_IN_APPLY"
.LC246:
	.string	"BUILT_IN_RETURN"
.LC247:
	.string	"BUILT_IN_SETJMP"
.LC248:
	.string	"BUILT_IN_LONGJMP"
.LC249:
	.string	"BUILT_IN_TRAP"
.LC250:
	.string	"BUILT_IN_PREFETCH"
.LC251:
	.string	"BUILT_IN_PRINTF"
.LC252:
	.string	"BUILT_IN_PUTCHAR"
.LC253:
	.string	"BUILT_IN_PUTS"
.LC254:
	.string	"BUILT_IN_SNPRINTF"
.LC255:
	.string	"BUILT_IN_SPRINTF"
.LC256:
	.string	"BUILT_IN_SCANF"
.LC257:
	.string	"BUILT_IN_SSCANF"
.LC258:
	.string	"BUILT_IN_VPRINTF"
.LC259:
	.string	"BUILT_IN_VSCANF"
.LC260:
	.string	"BUILT_IN_VSSCANF"
.LC261:
	.string	"BUILT_IN_VSNPRINTF"
.LC262:
	.string	"BUILT_IN_VSPRINTF"
.LC263:
	.string	"BUILT_IN_FPUTC"
.LC264:
	.string	"BUILT_IN_FPUTS"
.LC265:
	.string	"BUILT_IN_FWRITE"
.LC266:
	.string	"BUILT_IN_FPRINTF"
.LC267:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LC268:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LC269:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LC270:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LC271:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LC272:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LC273:
	.string	"BUILT_IN_ISGREATER"
.LC274:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LC275:
	.string	"BUILT_IN_ISLESS"
.LC276:
	.string	"BUILT_IN_ISLESSEQUAL"
.LC277:
	.string	"BUILT_IN_ISLESSGREATER"
.LC278:
	.string	"BUILT_IN_ISUNORDERED"
.LC279:
	.string	"BUILT_IN_UNWIND_INIT"
.LC280:
	.string	"BUILT_IN_DWARF_CFA"
.LC281:
	.string	"BUILT_IN_DWARF_SP_COLUMN"
.LC282:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LC283:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LC284:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LC285:
	.string	"BUILT_IN_EH_RETURN"
.LC286:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LC287:
	.string	"BUILT_IN_VA_START"
.LC288:
	.string	"BUILT_IN_STDARG_START"
.LC289:
	.string	"BUILT_IN_VA_END"
.LC290:
	.string	"BUILT_IN_VA_COPY"
.LC291:
	.string	"BUILT_IN_EXPECT"
.LC292:
	.string	"BUILT_IN_EXTEND_POINTER"
.LC293:
	.string	"BUILT_IN_NEW"
.LC294:
	.string	"BUILT_IN_VEC_NEW"
.LC295:
	.string	"BUILT_IN_DELETE"
.LC296:
	.string	"BUILT_IN_VEC_DELETE"
.LC297:
	.string	"BUILT_IN_ABORT"
.LC298:
	.string	"BUILT_IN_EXIT"
.LC299:
	.string	"BUILT_IN__EXIT"
.LC300:
	.string	"BUILT_IN__EXIT2"
	.section	.data.rel.ro.local
	.align 32
	.type	built_in_names, @object
	.size	built_in_names, 1188
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
	.text
	.type	get_pointer_alignment, @function
get_pointer_alignment:
.LFB15:
	.file 1 "../../../kgccfe/gnu/builtins.c"
	.loc 1 189 0
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
	.loc 1 192 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2
	.loc 1 193 0
	movl	$0, -64(%ebp)
	jmp	.L4
.L2:
	.loc 1 195 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 196 0
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
	.loc 1 200 0
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
	.loc 1 205 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 206 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L12
	.loc 1 207 0
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L4
.L12:
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 210 0
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
	.loc 1 211 0
	jmp	.L6
.L8:
	.loc 1 217 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L18
	.loc 1 218 0
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L4
.L19:
	.loc 1 223 0
	shrl	12(%ebp)
.L18:
	.loc 1 220 0
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
	.loc 1 225 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 226 0
	jmp	.L6
.L10:
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 231 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L21
	.loc 1 232 0
	movl	$32, -24(%ebp)
	jmp	.L23
.L21:
	.loc 1 233 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L24
	.loc 1 234 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -24(%ebp)
	jmp	.L23
.L24:
	.loc 1 236 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	jne	.L23
	.loc 1 237 0
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
	.loc 1 239 0
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
	.loc 1 242 0
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
.L4:
	.loc 1 244 0
	movl	-64(%ebp), %eax
	.loc 1 245 0
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
.LC301:
	.string	"offset outside bounds of constant string"
	.text
	.type	c_strlen, @function
c_strlen:
.LFB16:
	.loc 1 267 0
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
	.loc 1 273 0
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
	.loc 1 274 0
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
	.loc 1 279 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_strlen
	movl	%eax, -28(%ebp)
	.loc 1 280 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_strlen
	movl	%eax, -24(%ebp)
	.loc 1 281 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L49
	.loc 1 282 0
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L54
.L49:
.LBE2:
	.loc 1 285 0
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
	.loc 1 287 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
.L55:
	.loc 1 289 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_constant@PLT
	movl	%eax, 8(%ebp)
	.loc 1 290 0
	cmpl	$0, 8(%ebp)
	jne	.L59
	.loc 1 291 0
	movl	$0, -60(%ebp)
	jmp	.L54
.L59:
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 294 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 296 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	.L61
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L61
.LBB3:
	.loc 1 303 0
	movl	$0, -20(%ebp)
	jmp	.L64
.L65:
	.loc 1 304 0
	movl	-20(%ebp), %eax
	addl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L66
	.loc 1 305 0
	movl	$0, -60(%ebp)
	jmp	.L54
.L66:
	.loc 1 303 0
	addl	$1, -20(%ebp)
.L64:
	movl	-20(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L65
	.loc 1 314 0
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
	.loc 1 319 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jne	.L69
	.loc 1 320 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L71
.L69:
	.loc 1 321 0
	movl	-40(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L72
	.loc 1 322 0
	movl	$-1, -48(%ebp)
	movl	$-1, -44(%ebp)
	jmp	.L71
.L72:
	.loc 1 324 0
	movl	-40(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
.L71:
	.loc 1 328 0
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
	.loc 1 330 0
	leal	.LC301@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 331 0
	movl	$0, -60(%ebp)
	jmp	.L54
.L76:
	.loc 1 340 0
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
	.loc 1 341 0
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
	.loc 1 349 0
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
	.loc 1 352 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_constant@PLT
	movl	%eax, 8(%ebp)
	.loc 1 353 0
	cmpl	$0, 8(%ebp)
	jne	.L80
	.loc 1 354 0
	movl	$0, -28(%ebp)
	jmp	.L82
.L80:
	.loc 1 356 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L83
	.loc 1 357 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L82
.L83:
	.loc 1 358 0
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
	.loc 1 360 0
	movl	$0, -28(%ebp)
	jmp	.L82
.L87:
	.loc 1 362 0
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
	.loc 1 363 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE17:
	.size	c_getstr, .-c_getstr
	.section	.rodata
	.type	__FUNCTION__.14705, @object
	.size	__FUNCTION__.14705, 10
__FUNCTION__.14705:
	.string	"c_readstr"
	.align 4
.LC302:
	.string	"../../../kgccfe/gnu/builtins.c"
	.text
	.type	c_readstr, @function
c_readstr:
.LFB18:
	.loc 1 372 0
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
	.loc 1 377 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L90
	.loc 1 378 0
	leal	__FUNCTION__.14705@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$378, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L90:
	.loc 1 379 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 380 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 1 381 0
	movl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 382 0
	movl	$0, -24(%ebp)
	jmp	.L92
.L93:
	.loc 1 384 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 385 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L94
	.loc 1 386 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
.L94:
	.loc 1 390 0
	sall	$3, -20(%ebp)
	.loc 1 391 0
	cmpl	$128, -20(%ebp)
	jbe	.L96
	.loc 1 392 0
	leal	__FUNCTION__.14705@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$392, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L96:
	.loc 1 393 0
	movl	-32(%ebp), %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L98
	.loc 1 394 0
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
	.loc 1 395 0
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
	.loc 1 382 0
	addl	$1, -24(%ebp)
.L92:
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-24(%ebp), %eax
	ja	.L93
	.loc 1 397 0
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
	.loc 1 398 0
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
	.loc 1 408 0
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
	.loc 1 411 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L104
	.loc 1 415 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 417 0
	movzbl	-24(%ebp),%eax
	movl	-20(%ebp), %edx
	andl	$0, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 419 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 421 0
	movzbl	-16(%ebp),%eax
	movl	-12(%ebp), %edx
	andl	$0, %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 423 0
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
	.loc 1 413 0
	movl	$1, -28(%ebp)
	jmp	.L108
.L106:
	.loc 1 424 0
	movl	$1, -28(%ebp)
	jmp	.L108
.L107:
	.loc 1 426 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 427 0
	movl	$0, -28(%ebp)
.L108:
	movl	-28(%ebp), %eax
	.loc 1 428 0
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
	.loc 1 439 0
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
	.loc 1 460 0
	movl	$0, -8(%ebp)
	jmp	.L111
.L112:
	.loc 1 467 0
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
	.loc 1 468 0
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
	.loc 1 469 0
	call	get_frame_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 470 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, 16(%ebp)
	.loc 1 460 0
	addl	$1, -8(%ebp)
.L111:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L112
	.loc 1 474 0
	cmpl	$237, 8(%ebp)
	jne	.L122
	.loc 1 475 0
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L124
.L122:
	.loc 1 480 0
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
	.loc 1 487 0
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
.L124:
	movl	-48(%ebp), %eax
	.loc 1 488 0
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
	.loc 1 501 0
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
	.loc 1 502 0
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
	.loc 1 506 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L149
	.loc 1 507 0
	call	new_alias_set@PLT
	movl	%eax, setjmp_alias_set@GOTOFF(%ebx)
	movl	%edx, 4+setjmp_alias_set@GOTOFF(%ebx)
.L149:
	.loc 1 514 0
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
	.loc 1 516 0
	call	emit_queue@PLT
	.loc 1 526 0
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
	.loc 1 527 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 528 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 530 0
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
	.loc 1 533 0
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
	.loc 1 536 0
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
	.loc 1 539 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 540 0
	movl	$0, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	emit_stack_save@PLT
	.loc 1 544 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L179
	.loc 1 545 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_builtin_setjmp_setup@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L179:
	.loc 1 550 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	orl	$16, %eax
	movb	%al, 296(%edx)
	.loc 1 554 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	orl	$1, %eax
	movb	%al, 297(%edx)
	.loc 1 555 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE21:
	.size	expand_builtin_setjmp_setup, .-expand_builtin_setjmp_setup
	.section	.rodata
	.align 32
	.type	elim_regs.14965, @object
	.size	elim_regs.14965, 72
elim_regs.14965:
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
.LC303:
	.string	""
	.text
.globl expand_builtin_setjmp_receiver
	.type	expand_builtin_setjmp_receiver, @function
expand_builtin_setjmp_receiver:
.LFB22:
	.loc 1 563 0
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
	.loc 1 566 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 570 0
	movl	static_chain_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 578 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 581 0
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L183
.LBB4:
	.loc 1 587 0
	movl	$0, -8(%ebp)
	jmp	.L185
.L186:
	.loc 1 588 0
	movl	-8(%ebp), %eax
	movl	elim_regs.14965@GOTOFF(%ebx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L187
	movl	-8(%ebp), %eax
	movl	4+elim_regs.14965@GOTOFF(%ebx,%eax,8), %eax
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
	.loc 1 587 0
	addl	$1, -8(%ebp)
.L185:
	cmpl	$8, -8(%ebp)
	jbe	.L186
.L192:
	.loc 1 592 0
	cmpl	$9, -8(%ebp)
	jne	.L183
	.loc 1 597 0
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
	.loc 1 620 0
	leal	.LC303@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$50, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 621 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	expand_builtin_setjmp_receiver, .-expand_builtin_setjmp_receiver
	.type	expand_builtin_setjmp, @function
expand_builtin_setjmp:
.LFB23:
	.loc 1 637 0
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
	.loc 1 640 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L196
	.loc 1 641 0
	movl	$0, -28(%ebp)
	jmp	.L198
.L196:
	.loc 1 643 0
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
	.loc 1 645 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 12(%ebp)
.L202:
	.loc 1 647 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 649 0
	call	gen_label_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 650 0
	call	gen_label_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 652 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_setjmp_setup@PLT
	.loc 1 655 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 656 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 657 0
	call	emit_barrier@PLT
	.loc 1 658 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 660 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_setjmp_receiver@PLT
	.loc 1 663 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 664 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 670 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	orl	$1, %eax
	movb	%al, 297(%edx)
	.loc 1 671 0
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
	.loc 1 674 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L198:
	movl	-28(%ebp), %eax
	.loc 1 675 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE23:
	.size	expand_builtin_setjmp, .-expand_builtin_setjmp
	.section	.rodata
	.type	__FUNCTION__.15042, @object
	.size	__FUNCTION__.15042, 23
__FUNCTION__.15042:
	.string	"expand_builtin_longjmp"
	.text
.globl expand_builtin_longjmp
	.type	expand_builtin_longjmp, @function
expand_builtin_longjmp:
.LFB24:
	.loc 1 689 0
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
	.loc 1 691 0
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
	.loc 1 693 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L209
	.loc 1 694 0
	call	new_alias_set@PLT
	movl	%eax, setjmp_alias_set@GOTOFF(%ebx)
	movl	%edx, 4+setjmp_alias_set@GOTOFF(%ebx)
.L209:
	.loc 1 701 0
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
	.loc 1 708 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L215
	.loc 1 709 0
	leal	__FUNCTION__.15042@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$709, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L215:
	.loc 1 711 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	orl	$32, %eax
	movb	%al, 296(%edx)
	.loc 1 713 0
	call	get_last_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 715 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L217
	.loc 1 716 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_builtin_longjmp@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	jmp	.L219
.L217:
	.loc 1 720 0
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
	.loc 1 721 0
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
	.loc 1 724 0
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
	.loc 1 726 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 727 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 728 0
	movl	setjmp_alias_set@GOTOFF(%ebx), %eax
	movl	4+setjmp_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 741 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -24(%ebp)
	.loc 1 743 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	.loc 1 744 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	emit_stack_restore@PLT
	.loc 1 746 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 747 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 748 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_indirect_jump@PLT
.L219:
	.loc 1 757 0
	call	get_last_insn@PLT
	movl	%eax, -16(%ebp)
	jmp	.L236
.L237:
	.loc 1 759 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L238
	.loc 1 760 0
	leal	__FUNCTION__.15042@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$760, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L238:
	.loc 1 761 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L240
	.loc 1 763 0
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
	.loc 1 765 0
	jmp	.L244
.L240:
	.loc 1 767 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L244
	.loc 1 757 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L236:
	cmpl	$0, -16(%ebp)
	jne	.L237
.L244:
	.loc 1 770 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	expand_builtin_longjmp, .-expand_builtin_longjmp
	.section	.rodata
	.align 4
.LC304:
	.string	"second arg to `__builtin_prefetch' must be a constant"
	.align 4
.LC305:
	.string	"invalid second arg to __builtin_prefetch; using zero"
	.align 4
.LC306:
	.string	"third arg to `__builtin_prefetch' must be a constant"
	.align 4
.LC307:
	.string	"invalid third arg to __builtin_prefetch; using zero"
	.text
	.type	expand_builtin_prefetch, @function
expand_builtin_prefetch:
.LFB25:
	.loc 1 779 0
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
	.loc 1 783 0
	movl	$0, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	je	.L288
	.loc 1 786 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 790 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L248
	.loc 1 792 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 793 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L250
	.loc 1 794 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L253
.L250:
	.loc 1 796 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$3, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -24(%ebp)
	jmp	.L253
.L248:
	.loc 1 800 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 801 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$3, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -24(%ebp)
.L253:
	.loc 1 805 0
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
	.loc 1 808 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L258
	.loc 1 810 0
	leal	.LC304@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 811 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
.L258:
	.loc 1 813 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 815 0
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
	.loc 1 817 0
	leal	.LC305@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 818 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -16(%ebp)
.L260:
	.loc 1 822 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L263
	.loc 1 824 0
	leal	.LC306@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 825 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
.L263:
	.loc 1 827 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 829 0
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
	.loc 1 831 0
	leal	.LC307@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 832 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -12(%ebp)
.L267:
	.loc 1 836 0
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
	.loc 1 838 0
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
	.loc 1 847 0
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
	.loc 1 849 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_prefetch@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 836 0
	jmp	.L285
.L272:
	.loc 1 853 0
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, -20(%ebp)
.L285:
	.loc 1 856 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L288
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L288
	.loc 1 857 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L288:
	.loc 1 858 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	expand_builtin_prefetch, .-expand_builtin_prefetch
	.type	get_memory_rtx, @function
get_memory_rtx:
.LFB26:
	.loc 1 866 0
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
	.loc 1 867 0
	movl	ptr_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$3, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 875 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -8(%ebp)
	.loc 1 880 0
	jmp	.L290
.L291:
	.loc 1 883 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L290:
	.loc 1 880 0
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
	.loc 1 885 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L297
	.loc 1 887 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 888 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	jmp	.L299
.L297:
	.loc 1 890 0
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
	.loc 1 892 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
	.loc 1 894 0
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
.L299:
	.loc 1 897 0
	movl	-8(%ebp), %eax
	.loc 1 898 0
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
	.loc 1 929 0
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
	.loc 1 930 0
	call	apply_args_size
	.loc 1 937 0
	movl	8(%ebp), %eax
	movl	apply_args_reg_offset@GOTOFF(%ebx,%eax,4), %eax
	.loc 1 938 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	apply_args_register_offset, .-apply_args_register_offset
	.section	.rodata
	.type	__FUNCTION__.15322, @object
	.size	__FUNCTION__.15322, 16
__FUNCTION__.15322:
	.string	"apply_args_size"
	.data
	.align 4
	.type	size.15305, @object
	.size	size.15305, 4
size.15305:
	.long	-1
	.text
	.type	apply_args_size, @function
apply_args_size:
.LFB28:
	.loc 1 945 0
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
	.loc 1 952 0
	movl	size.15305@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jns	.L306
	.loc 1 955 0
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
	movl	%eax, size.15305@GOTOFF(%ebx)
	.loc 1 959 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L312
	.loc 1 960 0
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
	movl	size.15305@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, size.15305@GOTOFF(%ebx)
.L312:
	.loc 1 962 0
	movl	$0, -20(%ebp)
	jmp	.L318
.L319:
	.loc 1 963 0
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
	.loc 1 967 0
	movl	$0, -12(%ebp)
	.loc 1 969 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 970 0
	jmp	.L340
.L341:
	.loc 1 972 0
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
	.loc 1 974 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L342:
	.loc 1 971 0
	movl	-16(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L340:
	.loc 1 970 0
	cmpl	$0, -16(%ebp)
	jne	.L341
	.loc 1 976 0
	cmpl	$0, -12(%ebp)
	jne	.L346
	.loc 1 977 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 978 0
	jmp	.L348
.L349:
	.loc 1 980 0
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
	.loc 1 982 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L350:
	.loc 1 979 0
	movl	-16(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L348:
	.loc 1 978 0
	cmpl	$0, -16(%ebp)
	jne	.L349
.L346:
	.loc 1 984 0
	cmpl	$0, -12(%ebp)
	jne	.L353
	.loc 1 985 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 986 0
	jmp	.L355
.L356:
	.loc 1 988 0
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
	.loc 1 990 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L357:
	.loc 1 987 0
	movl	-16(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L355:
	.loc 1 986 0
	cmpl	$0, -16(%ebp)
	jne	.L356
.L353:
	.loc 1 992 0
	cmpl	$0, -12(%ebp)
	jne	.L360
	.loc 1 993 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 994 0
	jmp	.L362
.L363:
	.loc 1 996 0
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
	.loc 1 998 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L364:
	.loc 1 995 0
	movl	-16(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L362:
	.loc 1 994 0
	cmpl	$0, -16(%ebp)
	jne	.L363
.L360:
	.loc 1 1000 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1001 0
	cmpl	$0, -16(%ebp)
	jne	.L367
	.loc 1 1002 0
	leal	__FUNCTION__.15322@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1002, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L367:
	.loc 1 1004 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1005 0
	movl	size.15305@GOTOFF(%ebx), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L369
	.loc 1 1006 0
	movl	size.15305@GOTOFF(%ebx), %eax
	addl	-24(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	imull	-24(%ebp), %eax
	movl	%eax, size.15305@GOTOFF(%ebx)
.L369:
	.loc 1 1007 0
	movl	-20(%ebp), %edx
	movl	size.15305@GOTOFF(%ebx), %eax
	movl	%eax, apply_args_reg_offset@GOTOFF(%ebx,%edx,4)
	.loc 1 1008 0
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	size.15305@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, size.15305@GOTOFF(%ebx)
	.loc 1 1009 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, apply_args_mode@GOTOFF(%ebx,%edx,4)
	.loc 1 963 0
	jmp	.L371
.L331:
.LBE5:
	.loc 1 1013 0
	movl	-20(%ebp), %eax
	movl	$0, apply_args_mode@GOTOFF(%ebx,%eax,4)
	.loc 1 1014 0
	movl	-20(%ebp), %eax
	movl	$0, apply_args_reg_offset@GOTOFF(%ebx,%eax,4)
.L371:
	.loc 1 962 0
	addl	$1, -20(%ebp)
.L318:
	cmpl	$175, -20(%ebp)
	jbe	.L319
.L306:
	.loc 1 1017 0
	movl	size.15305@GOTOFF(%ebx), %eax
	.loc 1 1018 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	apply_args_size, .-apply_args_size
	.section	.rodata
	.type	__FUNCTION__.15487, @object
	.size	__FUNCTION__.15487, 18
__FUNCTION__.15487:
	.string	"apply_result_size"
	.data
	.align 4
	.type	size.15470, @object
	.size	size.15470, 4
size.15470:
	.long	-1
	.text
	.type	apply_result_size, @function
apply_result_size:
.LFB29:
	.loc 1 1025 0
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
	.loc 1 1031 0
	movl	size.15470@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jns	.L374
	.loc 1 1033 0
	movl	$0, size.15470@GOTOFF(%ebx)
	.loc 1 1035 0
	movl	$0, -16(%ebp)
	jmp	.L376
.L377:
	.loc 1 1036 0
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
	.loc 1 1040 0
	movl	$0, -8(%ebp)
	.loc 1 1042 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1043 0
	jmp	.L391
.L392:
	.loc 1 1045 0
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L393
	.loc 1 1046 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L393:
	.loc 1 1044 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L391:
	.loc 1 1043 0
	cmpl	$6, -12(%ebp)
	jne	.L392
	.loc 1 1048 0
	cmpl	$0, -8(%ebp)
	jne	.L396
	.loc 1 1049 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1050 0
	jmp	.L398
.L399:
	.loc 1 1052 0
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
	.loc 1 1054 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L400:
	.loc 1 1051 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L398:
	.loc 1 1050 0
	cmpl	$0, -12(%ebp)
	jne	.L399
.L396:
	.loc 1 1056 0
	cmpl	$0, -8(%ebp)
	jne	.L403
	.loc 1 1057 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1058 0
	jmp	.L405
.L406:
	.loc 1 1060 0
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
	.loc 1 1062 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L407:
	.loc 1 1059 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L405:
	.loc 1 1058 0
	cmpl	$0, -12(%ebp)
	jne	.L406
.L403:
	.loc 1 1064 0
	cmpl	$0, -8(%ebp)
	jne	.L410
	.loc 1 1065 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1066 0
	jmp	.L412
.L413:
	.loc 1 1068 0
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
	.loc 1 1070 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L414:
	.loc 1 1067 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L412:
	.loc 1 1066 0
	cmpl	$0, -12(%ebp)
	jne	.L413
.L410:
	.loc 1 1072 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1073 0
	cmpl	$0, -12(%ebp)
	jne	.L417
	.loc 1 1074 0
	leal	__FUNCTION__.15487@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1074, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L417:
	.loc 1 1076 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1077 0
	movl	size.15470@GOTOFF(%ebx), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-20(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L419
	.loc 1 1078 0
	movl	size.15470@GOTOFF(%ebx), %eax
	addl	-20(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-20(%ebp)
	imull	-20(%ebp), %eax
	movl	%eax, size.15470@GOTOFF(%ebx)
.L419:
	.loc 1 1079 0
	movl	-12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	size.15470@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, size.15470@GOTOFF(%ebx)
	.loc 1 1080 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, apply_result_mode@GOTOFF(%ebx,%edx,4)
	.loc 1 1036 0
	jmp	.L421
.L386:
.LBE6:
	.loc 1 1083 0
	movl	-16(%ebp), %eax
	movl	$0, apply_result_mode@GOTOFF(%ebx,%eax,4)
.L421:
	.loc 1 1035 0
	addl	$1, -16(%ebp)
.L376:
	cmpl	$175, -16(%ebp)
	jle	.L377
.L374:
	.loc 1 1091 0
	movl	size.15470@GOTOFF(%ebx), %eax
	.loc 1 1092 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	apply_result_size, .-apply_result_size
	.type	result_vector, @function
result_vector:
.LFB30:
	.loc 1 1103 0
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
	.loc 1 1103 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1107 0
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
	.loc 1 1109 0
	movl	$0, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1110 0
	movl	$0, -40(%ebp)
	jmp	.L424
.L425:
	.loc 1 1111 0
	movl	-40(%ebp), %eax
	movl	apply_result_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L426
	.loc 1 1113 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1114 0
	movl	-36(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-32(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L428
	.loc 1 1115 0
	movl	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-32(%ebp)
	imull	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
.L428:
	.loc 1 1116 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1117 0
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
	.loc 1 1118 0
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
	.loc 1 1121 0
	movl	-24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -36(%ebp)
.L426:
	.loc 1 1110 0
	addl	$1, -40(%ebp)
.L424:
	cmpl	$175, -40(%ebp)
	jle	.L425
	.loc 1 1123 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtvec_v@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$49, (%esp)
	call	gen_rtx_fmt_E@PLT
	.loc 1 1124 0
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
	.loc 1 1132 0
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
	.loc 1 1139 0
	call	apply_args_size
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$-1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1142 0
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
	.loc 1 1143 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L441
	.loc 1 1144 0
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
	.loc 1 1147 0
	movl	$0, -20(%ebp)
	jmp	.L447
.L448:
	.loc 1 1148 0
	movl	-20(%ebp), %eax
	movl	apply_args_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L449
.LBB7:
	.loc 1 1152 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1153 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L451
	.loc 1 1154 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	imull	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L451:
	.loc 1 1156 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1158 0
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
	.loc 1 1159 0
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%ebp)
.L449:
.LBE7:
	.loc 1 1147 0
	addl	$1, -20(%ebp)
.L447:
	cmpl	$175, -20(%ebp)
	jle	.L448
	.loc 1 1163 0
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
	.loc 1 1165 0
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
	.loc 1 1169 0
	movl	struct_value_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L462
	.loc 1 1171 0
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
	.loc 1 1173 0
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
	.loc 1 1177 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_addr_to_reg@PLT
	.loc 1 1178 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	expand_builtin_apply_args_1, .-expand_builtin_apply_args_1
	.type	expand_builtin_apply_args, @function
expand_builtin_apply_args:
.LFB32:
	.loc 1 1189 0
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
	.loc 1 1192 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L474
	.loc 1 1193 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L476
.L474:
.LBB8:
	.loc 1 1201 0
	call	start_sequence@PLT
	.loc 1 1202 0
	call	expand_builtin_apply_args_1
	movl	%eax, -12(%ebp)
	.loc 1 1203 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1204 0
	call	end_sequence@PLT
	.loc 1 1206 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1212 0
	call	push_topmost_sequence@PLT
	.loc 1 1213 0
	call	get_insns@PLT
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 1214 0
	call	pop_topmost_sequence@PLT
	.loc 1 1215 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L476:
	movl	-24(%ebp), %eax
.LBE8:
	.loc 1 1217 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	expand_builtin_apply_args, .-expand_builtin_apply_args
	.section	.rodata
	.type	__FUNCTION__.15788, @object
	.size	__FUNCTION__.15788, 21
__FUNCTION__.15788:
	.string	"expand_builtin_apply"
	.text
	.type	expand_builtin_apply, @function
expand_builtin_apply:
.LFB33:
	.loc 1 1225 0
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
	.loc 1 1229 0
	movl	$0, -64(%ebp)
	.loc 1 1230 0
	movl	$0, -68(%ebp)
	.loc 1 1238 0
	call	apply_result_size
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$-1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1241 0
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
	.loc 1 1242 0
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
	.loc 1 1249 0
	call	emit_queue@PLT
	.loc 1 1254 0
	call	do_pending_stack_adjust@PLT
	.loc 1 1255 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1263 0
	movl	$0, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_save@PLT
	.loc 1 1270 0
	movl	$8, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	allocate_dynamic_stack_space@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1271 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1272 0
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
	.loc 1 1273 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1274 0
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
	.loc 1 1275 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
	.loc 1 1278 0
	call	apply_args_size
	.loc 1 1279 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1280 0
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
	.loc 1 1283 0
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
	.loc 1 1284 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L512
	.loc 1 1285 0
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
	.loc 1 1289 0
	movl	$0, -52(%ebp)
	jmp	.L518
.L519:
	.loc 1 1290 0
	movl	-52(%ebp), %eax
	movl	apply_args_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L520
	.loc 1 1292 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -56(%ebp)
	.loc 1 1293 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-56(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L522
	.loc 1 1294 0
	movl	-56(%ebp), %eax
	addl	-60(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-56(%ebp)
	imull	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
.L522:
	.loc 1 1295 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1296 0
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
	.loc 1 1297 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	use_reg@PLT
	.loc 1 1298 0
	movl	-48(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -60(%ebp)
.L520:
	.loc 1 1289 0
	addl	$1, -52(%ebp)
.L518:
	cmpl	$175, -52(%ebp)
	jle	.L519
	.loc 1 1303 0
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
	.loc 1 1304 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L529
.LBB9:
	.loc 1 1306 0
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
	.loc 1 1307 0
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
	.loc 1 1308 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1309 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L539
	.loc 1 1310 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	use_reg@PLT
.L539:
	.loc 1 1311 0
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
	.loc 1 1315 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prepare_call_address@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1320 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L545
	.loc 1 1321 0
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
	.loc 1 1326 0
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
	.loc 1 1358 0
	call	get_last_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1359 0
	jmp	.L555
.L556:
	.loc 1 1360 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L555:
	.loc 1 1359 0
	cmpl	$0, -24(%ebp)
	je	.L557
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L556
.L557:
	.loc 1 1363 0
	cmpl	$0, -24(%ebp)
	jne	.L559
	.loc 1 1364 0
	leal	__FUNCTION__.15788@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1364, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L559:
	.loc 1 1368 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L561
.LBB10:
	.loc 1 1372 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L563
.L564:
	.loc 1 1373 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L563:
	.loc 1 1372 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L564
	.loc 1 1376 0
	movl	-68(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L566
.L561:
.LBE10:
	.loc 1 1379 0
	movl	-68(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 76(%eax)
.L566:
	.loc 1 1387 0
	movl	-64(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_restore@PLT
	.loc 1 1389 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1392 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_addr_to_reg@PLT
	.loc 1 1393 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	expand_builtin_apply, .-expand_builtin_apply
	.type	expand_builtin_return, @function
expand_builtin_return:
.LFB34:
	.loc 1 1400 0
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
	.loc 1 1404 0
	movl	$0, -8(%ebp)
	.loc 1 1411 0
	call	apply_result_size
	.loc 1 1412 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1424 0
	movl	$0, -28(%ebp)
	.loc 1 1425 0
	movl	$0, -20(%ebp)
	jmp	.L569
.L570:
	.loc 1 1426 0
	movl	-20(%ebp), %eax
	movl	apply_result_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L571
	.loc 1 1428 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1429 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L573
	.loc 1 1430 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	imull	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L573:
	.loc 1 1431 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1432 0
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
	.loc 1 1434 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 1435 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1436 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1437 0
	call	end_sequence@PLT
	.loc 1 1438 0
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%ebp)
.L571:
	.loc 1 1425 0
	addl	$1, -20(%ebp)
.L569:
	cmpl	$175, -20(%ebp)
	jle	.L570
	.loc 1 1442 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1446 0
	call	expand_null_return@PLT
	.loc 1 1447 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	expand_builtin_return, .-expand_builtin_return
	.type	type_to_class, @function
type_to_class:
.LFB35:
	.loc 1 1454 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	subl	$12, %esp
.LCFI91:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1455 0
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
	.loc 1 1457 0
	movl	$0, -8(%ebp)
	jmp	.L598
.L580:
	.loc 1 1458 0
	movl	$1, -8(%ebp)
	jmp	.L598
.L585:
	.loc 1 1459 0
	movl	$2, -8(%ebp)
	jmp	.L598
.L583:
	.loc 1 1460 0
	movl	$3, -8(%ebp)
	jmp	.L598
.L584:
	.loc 1 1461 0
	movl	$4, -8(%ebp)
	jmp	.L598
.L586:
	.loc 1 1462 0
	movl	$5, -8(%ebp)
	jmp	.L598
.L588:
	.loc 1 1463 0
	movl	$6, -8(%ebp)
	jmp	.L598
.L587:
	.loc 1 1464 0
	movl	$7, -8(%ebp)
	jmp	.L598
.L581:
	.loc 1 1465 0
	movl	$8, -8(%ebp)
	jmp	.L598
.L582:
	.loc 1 1466 0
	movl	$9, -8(%ebp)
	jmp	.L598
.L595:
	.loc 1 1467 0
	movl	$10, -8(%ebp)
	jmp	.L598
.L589:
	.loc 1 1468 0
	movl	$11, -8(%ebp)
	jmp	.L598
.L593:
	.loc 1 1469 0
	movl	$12, -8(%ebp)
	jmp	.L598
.L594:
	.loc 1 1471 0
	movl	$13, -8(%ebp)
	jmp	.L598
.L591:
	.loc 1 1472 0
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
	.loc 1 1474 0
	movl	$16, -8(%ebp)
	jmp	.L598
.L590:
	.loc 1 1475 0
	movl	$17, -8(%ebp)
	jmp	.L598
.L596:
	.loc 1 1476 0
	movl	$18, -8(%ebp)
	jmp	.L598
.L578:
	.loc 1 1477 0
	movl	$-1, -8(%ebp)
.L598:
	movl	-8(%ebp), %eax
	.loc 1 1479 0
	leave
	ret
.LFE35:
	.size	type_to_class, .-type_to_class
	.type	expand_builtin_classify_type, @function
expand_builtin_classify_type:
.LFB36:
	.loc 1 1487 0
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
	.loc 1 1488 0
	cmpl	$0, 8(%ebp)
	je	.L604
	.loc 1 1489 0
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
	.loc 1 1490 0
	movl	$-1, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -8(%ebp)
.L606:
	movl	-8(%ebp), %eax
	.loc 1 1491 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	expand_builtin_classify_type, .-expand_builtin_classify_type
	.type	expand_builtin_constant_p, @function
expand_builtin_constant_p:
.LFB37:
	.loc 1 1498 0
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
	.loc 1 1499 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1500 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1503 0
	cmpl	$0, -16(%ebp)
	jne	.L609
	.loc 1 1504 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L611
.L609:
	.loc 1 1505 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1511 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1512 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$150, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1513 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L611:
	movl	-24(%ebp), %eax
	.loc 1 1514 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	expand_builtin_constant_p, .-expand_builtin_constant_p
	.section	.rodata
	.type	__FUNCTION__.16171, @object
	.size	__FUNCTION__.16171, 22
__FUNCTION__.16171:
	.string	"expand_builtin_mathfn"
	.text
	.type	expand_builtin_mathfn, @function
expand_builtin_mathfn:
.LFB38:
	.loc 1 1526 0
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
	.loc 1 1529 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1530 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1533 0
	movl	$6, 8(%esp)
	movl	$8, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L614
	.loc 1 1534 0
	movl	$0, -44(%ebp)
	jmp	.L616
.L614:
	.loc 1 1537 0
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
	.loc 1 1540 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1541 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1549 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1550 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -16(%ebp)
.L617:
	.loc 1 1552 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1555 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1557 0
	call	emit_queue@PLT
	.loc 1 1558 0
	call	start_sequence@PLT
	.loc 1 1560 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$211, -40(%ebp)
	je	.L622
	cmpl	$211, -40(%ebp)
	ja	.L626
	cmpl	$206, -40(%ebp)
	je	.L622
	cmpl	$206, -40(%ebp)
	ja	.L627
	cmpl	$48, -40(%ebp)
	jb	.L620
	cmpl	$52, -40(%ebp)
	jbe	.L621
	cmpl	$205, -40(%ebp)
	je	.L621
	jmp	.L620
.L627:
	cmpl	$208, -40(%ebp)
	je	.L624
	cmpl	$208, -40(%ebp)
	jb	.L623
	cmpl	$209, -40(%ebp)
	je	.L625
	cmpl	$210, -40(%ebp)
	je	.L621
	jmp	.L620
.L626:
	cmpl	$215, -40(%ebp)
	je	.L621
	cmpl	$215, -40(%ebp)
	ja	.L628
	cmpl	$213, -40(%ebp)
	je	.L624
	cmpl	$213, -40(%ebp)
	ja	.L625
	jmp	.L623
.L628:
	cmpl	$217, -40(%ebp)
	je	.L623
	cmpl	$217, -40(%ebp)
	jb	.L622
	cmpl	$218, -40(%ebp)
	je	.L624
	cmpl	$219, -40(%ebp)
	je	.L625
	jmp	.L620
.L622:
	.loc 1 1565 0
	movl	optab_table@GOT(%ebx), %eax
	movl	156(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L629
.L623:
	.loc 1 1569 0
	movl	optab_table@GOT(%ebx), %eax
	movl	160(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L629
.L621:
	.loc 1 1580 0
	movl	optab_table@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L629
.L624:
	.loc 1 1584 0
	movl	optab_table@GOT(%ebx), %eax
	movl	164(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L629
.L625:
	.loc 1 1588 0
	movl	optab_table@GOT(%ebx), %eax
	movl	168(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L629
.L620:
	.loc 1 1590 0
	leal	__FUNCTION__.16171@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1590, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L629:
	.loc 1 1595 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1596 0
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
	.loc 1 1601 0
	cmpl	$0, 12(%ebp)
	jne	.L630
	.loc 1 1603 0
	call	end_sequence@PLT
	.loc 1 1604 0
	movl	$0, -44(%ebp)
	jmp	.L616
.L630:
	.loc 1 1609 0
	movl	flag_errno_math@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L632
	movl	-12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L634
	movl	-12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L634
	movl	-12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L632
.L634:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L632
.LBB11:
	.loc 1 1613 0
	call	gen_label_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1617 0
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
	.loc 1 1634 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1635 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_call@PLT
	.loc 1 1636 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1639 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
.L632:
.LBE11:
	.loc 1 1643 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1644 0
	call	end_sequence@PLT
	.loc 1 1645 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1647 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
.L616:
	movl	-44(%ebp), %eax
	.loc 1 1648 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	expand_builtin_mathfn, .-expand_builtin_mathfn
	.type	expand_builtin_strlen, @function
expand_builtin_strlen:
.LFB39:
	.loc 1 1658 0
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
	.loc 1 1659 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1660 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 1662 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L640
	.loc 1 1663 0
	movl	$0, -88(%ebp)
	jmp	.L642
.L640:
.LBB12:
	.loc 1 1667 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1669 0
	movl	-60(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1670 0
	movl	$529, -20(%ebp)
	.loc 1 1674 0
	movl	$0, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -52(%ebp)
	.loc 1 1675 0
	cmpl	$0, -52(%ebp)
	je	.L643
	.loc 1 1676 0
	movl	$0, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -88(%ebp)
	jmp	.L642
.L643:
	.loc 1 1683 0
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -52(%ebp)
	.loc 1 1684 0
	cmpl	$0, -52(%ebp)
	je	.L645
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L645
	.loc 1 1686 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 1687 0
	movl	$0, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -88(%ebp)
	jmp	.L642
.L645:
	.loc 1 1690 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L648
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L650
.L648:
	movl	$128, -84(%ebp)
	jmp	.L651
.L650:
	movl	$64, -84(%ebp)
.L651:
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
	.loc 1 1693 0
	cmpl	$0, -16(%ebp)
	jne	.L654
	.loc 1 1694 0
	movl	$0, -88(%ebp)
	jmp	.L642
.L655:
	.loc 1 1699 0
	movl	optab_table@GOT(%ebx), %eax
	movl	184(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1700 0
	cmpl	$529, -20(%ebp)
	jne	.L656
	.loc 1 1703 0
	movl	-28(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L654:
	.loc 1 1697 0
	cmpl	$0, -28(%ebp)
	jne	.L655
.L656:
	.loc 1 1705 0
	cmpl	$0, -28(%ebp)
	jne	.L658
	.loc 1 1706 0
	movl	$0, -88(%ebp)
	jmp	.L642
.L658:
	.loc 1 1709 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1710 0
	cmpl	$0, -44(%ebp)
	je	.L660
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L660
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	jne	.L660
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L664
.L660:
	.loc 1 1714 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
.L664:
	.loc 1 1719 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L665
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L665
	movl	$5, -80(%ebp)
	jmp	.L668
.L665:
	movl	$4, -80(%ebp)
.L668:
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1723 0
	call	get_last_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1725 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1726 0
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
	.loc 1 1727 0
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
	jne	.L669
	.loc 1 1729 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -36(%ebp)
.L669:
	.loc 1 1731 0
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
	.loc 1 1733 0
	cmpl	$0, -56(%ebp)
	jne	.L671
	.loc 1 1734 0
	movl	$0, -88(%ebp)
	jmp	.L642
.L671:
	.loc 1 1735 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1738 0
	call	start_sequence@PLT
	.loc 1 1739 0
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
	.loc 1 1741 0
	movl	-56(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L673
	.loc 1 1742 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L673:
	.loc 1 1743 0
	call	get_insns@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1744 0
	call	end_sequence@PLT
	.loc 1 1746 0
	cmpl	$0, -32(%ebp)
	je	.L675
	.loc 1 1747 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	jmp	.L677
.L675:
	.loc 1 1749 0
	call	get_insns@PLT
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
.L677:
	.loc 1 1752 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-60(%ebp), %eax
	jne	.L678
	.loc 1 1753 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	.L680
.L678:
	.loc 1 1754 0
	cmpl	$0, 12(%ebp)
	je	.L681
	.loc 1 1755 0
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	jmp	.L680
.L681:
	.loc 1 1757 0
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 12(%ebp)
.L680:
	.loc 1 1759 0
	movl	12(%ebp), %eax
	movl	%eax, -88(%ebp)
.L642:
	movl	-88(%ebp), %eax
.LBE12:
	.loc 1 1761 0
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
	.loc 1 1772 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	.loc 1 1819 0
	movl	$0, %eax
	.loc 1 1821 0
	popl	%ebp
	ret
.LFE40:
	.size	expand_builtin_strstr, .-expand_builtin_strstr
	.type	expand_builtin_strchr, @function
expand_builtin_strchr:
.LFB41:
	.loc 1 1832 0
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
	.loc 1 1833 0
	movl	$6, 12(%esp)
	movl	$7, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L687
	.loc 1 1834 0
	movl	$0, -40(%ebp)
	jmp	.L689
.L687:
.LBB13:
	.loc 1 1837 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1840 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L690
	.loc 1 1841 0
	movl	$0, -40(%ebp)
	jmp	.L689
.L690:
	.loc 1 1843 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -16(%ebp)
	.loc 1 1844 0
	cmpl	$0, -16(%ebp)
	je	.L692
.LBB14:
	.loc 1 1849 0
	leal	-5(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	target_char_cast
	testl	%eax, %eax
	je	.L694
	.loc 1 1850 0
	movl	$0, -40(%ebp)
	jmp	.L689
.L694:
	.loc 1 1852 0
	movzbl	-5(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1854 0
	cmpl	$0, -12(%ebp)
	jne	.L696
	.loc 1 1855 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L689
.L696:
	.loc 1 1858 0
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
	jmp	.L689
.L692:
.LBE14:
	.loc 1 1865 0
	movl	$0, -40(%ebp)
.L689:
	movl	-40(%ebp), %eax
.LBE13:
	.loc 1 1867 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	expand_builtin_strchr, .-expand_builtin_strchr
	.type	expand_builtin_strrchr, @function
expand_builtin_strrchr:
.LFB42:
	.loc 1 1878 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	.loc 1 1923 0
	movl	$0, %eax
	.loc 1 1925 0
	popl	%ebp
	ret
.LFE42:
	.size	expand_builtin_strrchr, .-expand_builtin_strrchr
	.type	expand_builtin_strpbrk, @function
expand_builtin_strpbrk:
.LFB43:
	.loc 1 1936 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	.loc 1 1989 0
	movl	$0, %eax
	.loc 1 1991 0
	popl	%ebp
	ret
.LFE43:
	.size	expand_builtin_strpbrk, .-expand_builtin_strpbrk
	.section	.rodata
	.type	__FUNCTION__.16420, @object
	.size	__FUNCTION__.16420, 24
__FUNCTION__.16420:
	.string	"builtin_memcpy_read_str"
	.text
	.type	builtin_memcpy_read_str, @function
builtin_memcpy_read_str:
.LFB44:
	.loc 1 2002 0
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
	.loc 1 2003 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2005 0
	cmpl	$0, -36(%ebp)
	js	.L704
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
	jb	.L706
	movl	-44(%ebp), %esi
	cmpl	%esi, -52(%ebp)
	ja	.L704
	movl	-48(%ebp), %edi
	cmpl	%edi, -56(%ebp)
	jbe	.L706
.L704:
	.loc 1 2008 0
	leal	__FUNCTION__.16420@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2008, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L706:
	.loc 1 2010 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_readstr
	.loc 1 2011 0
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
	.loc 1 2022 0
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
	.loc 1 2023 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L710
	.loc 1 2025 0
	movl	$0, -84(%ebp)
	jmp	.L712
.L710:
.LBB15:
	.loc 1 2028 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2029 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2030 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2032 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L713
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L715
.L713:
	movl	$128, -80(%ebp)
	jmp	.L716
.L715:
	movl	$64, -80(%ebp)
.L716:
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -32(%ebp)
	.loc 1 2034 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L717
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L719
.L717:
	movl	$128, -76(%ebp)
	jmp	.L720
.L719:
	movl	$64, -76(%ebp)
.L720:
	movl	-76(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -28(%ebp)
	.loc 1 2038 0
	cmpl	$0, -28(%ebp)
	jne	.L721
	.loc 1 2039 0
	movl	$0, -84(%ebp)
	jmp	.L712
.L721:
	.loc 1 2042 0
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L723
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L723
	.loc 1 2045 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2046 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -84(%ebp)
	jmp	.L712
.L723:
	.loc 1 2051 0
	cmpl	$0, -32(%ebp)
	jne	.L726
	.loc 1 2052 0
	movl	$0, -84(%ebp)
	jmp	.L712
.L726:
	.loc 1 2054 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -24(%ebp)
	.loc 1 2055 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2056 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2057 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -36(%ebp)
	.loc 1 2062 0
	cmpl	$0, -36(%ebp)
	je	.L728
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L728
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
	ja	.L728
	movl	-60(%ebp), %edi
	cmpl	%edi, -68(%ebp)
	jb	.L732
	movl	-64(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	ja	.L728
.L732:
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
	je	.L728
	.loc 1 2068 0
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
	.loc 1 2071 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2076 0
	movl	-24(%ebp), %edi
	movl	%edi, -84(%ebp)
	jmp	.L712
.L728:
	.loc 1 2079 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -20(%ebp)
	.loc 1 2080 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2083 0
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2086 0
	cmpl	$0, -16(%ebp)
	jne	.L734
	.loc 1 2088 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -16(%ebp)
.L734:
	.loc 1 2094 0
	movl	-16(%ebp), %eax
	movl	%eax, -84(%ebp)
.L712:
	movl	-84(%ebp), %eax
.LBE15:
	.loc 1 2096 0
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
	.loc 1 2112 0
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
	.loc 1 2113 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L738
	.loc 1 2115 0
	movl	$0, -92(%ebp)
	jmp	.L740
.L738:
	.loc 1 2117 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L741
.LBB16:
	.loc 1 2119 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2121 0
	cmpl	$0, -48(%ebp)
	jne	.L743
	.loc 1 2122 0
	movl	$0, -92(%ebp)
	jmp	.L740
.L743:
	.loc 1 2124 0
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
	jmp	.L740
.L741:
.LBE16:
.LBB17:
	.loc 1 2129 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2130 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2131 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2133 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L745
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L747
.L745:
	movl	$128, -88(%ebp)
	jmp	.L748
.L747:
	movl	$64, -88(%ebp)
.L748:
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -28(%ebp)
	.loc 1 2135 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L749
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L751
.L749:
	movl	$128, -84(%ebp)
	jmp	.L752
.L751:
	movl	$64, -84(%ebp)
.L752:
	movl	-84(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -24(%ebp)
	.loc 1 2140 0
	cmpl	$0, -24(%ebp)
	je	.L753
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L755
.L753:
	.loc 1 2141 0
	movl	$0, -92(%ebp)
	jmp	.L740
.L755:
	.loc 1 2144 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L756
	.loc 1 2147 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2148 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -92(%ebp)
	jmp	.L740
.L756:
	.loc 1 2153 0
	cmpl	$0, -28(%ebp)
	jne	.L758
	.loc 1 2154 0
	movl	$0, -92(%ebp)
	jmp	.L740
.L758:
	.loc 1 2156 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2157 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -32(%ebp)
	.loc 1 2162 0
	cmpl	$0, -32(%ebp)
	je	.L760
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L760
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
	ja	.L760
	movl	-68(%ebp), %ecx
	cmpl	%ecx, -76(%ebp)
	jb	.L764
	movl	-72(%ebp), %edi
	cmpl	%edi, -80(%ebp)
	ja	.L760
.L764:
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
	je	.L760
	.loc 1 2168 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -20(%ebp)
	.loc 1 2169 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2170 0
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
	.loc 1 2173 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2178 0
	movl	-20(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L740
.L760:
	.loc 1 2181 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L766
	movl	-24(%ebp), %ecx
	movl	%ecx, -100(%ebp)
	movl	-28(%ebp), %edi
	movl	%edi, -64(%ebp)
	movl	-100(%ebp), %eax
	cmpl	%eax, -64(%ebp)
	jbe	.L768
	movl	-100(%ebp), %ecx
	movl	%ecx, -64(%ebp)
.L768:
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-64(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	can_move_by_pieces@PLT
	testl	%eax, %eax
	je	.L766
	.loc 1 2185 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -20(%ebp)
	.loc 1 2186 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2187 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -16(%ebp)
	.loc 1 2188 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2189 0
	movl	-24(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	-28(%ebp), %ecx
	movl	%ecx, -60(%ebp)
	movl	-104(%ebp), %edi
	cmpl	%edi, -60(%ebp)
	jbe	.L770
	movl	-104(%ebp), %eax
	movl	%eax, -60(%ebp)
.L770:
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
	.loc 1 2191 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2196 0
	movl	-20(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L740
.L766:
	.loc 1 2199 0
	movl	$0, -92(%ebp)
.L740:
	movl	-92(%ebp), %eax
.LBE17:
	.loc 1 2201 0
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
	.loc 1 2211 0
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
	.loc 1 2212 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L773
	.loc 1 2214 0
	movl	$0, -48(%ebp)
	jmp	.L775
.L773:
.LBB18:
	.loc 1 2217 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2218 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2219 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2221 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L776
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L778
.L776:
	movl	$128, -44(%ebp)
	jmp	.L779
.L778:
	movl	$64, -44(%ebp)
.L779:
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -16(%ebp)
	.loc 1 2223 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L780
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L782
.L780:
	movl	$128, -40(%ebp)
	jmp	.L783
.L782:
	movl	$64, -40(%ebp)
.L783:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -12(%ebp)
	.loc 1 2226 0
	cmpl	$0, -12(%ebp)
	jne	.L784
	.loc 1 2227 0
	movl	$0, -48(%ebp)
	jmp	.L775
.L784:
	.loc 1 2230 0
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L786
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L786
	.loc 1 2233 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2234 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -48(%ebp)
	jmp	.L775
.L786:
	.loc 1 2239 0
	cmpl	$0, -16(%ebp)
	jne	.L789
	.loc 1 2240 0
	movl	$0, -48(%ebp)
	jmp	.L775
.L789:
	.loc 1 2244 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	readonly_data_expr
	testb	%al, %al
	je	.L791
.LBB19:
	.loc 1 2246 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2247 0
	cmpl	$0, -8(%ebp)
	jne	.L793
	.loc 1 2248 0
	movl	$0, -48(%ebp)
	jmp	.L775
.L793:
	.loc 1 2249 0
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
	jmp	.L775
.L791:
.LBE19:
	.loc 1 2254 0
	movl	$0, -48(%ebp)
.L775:
	movl	-48(%ebp), %eax
.LBE18:
	.loc 1 2256 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	expand_builtin_memmove, .-expand_builtin_memmove
	.type	expand_builtin_bcopy, @function
expand_builtin_bcopy:
.LFB48:
	.loc 1 2264 0
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
	.loc 1 2267 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L797
	.loc 1 2269 0
	movl	$0, -24(%ebp)
	jmp	.L799
.L797:
	.loc 1 2271 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2272 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2273 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2280 0
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
	.loc 1 2281 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2282 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2284 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memmove
	movl	%eax, -24(%ebp)
.L799:
	movl	-24(%ebp), %eax
	.loc 1 2285 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	expand_builtin_bcopy, .-expand_builtin_bcopy
	.type	expand_builtin_strcpy, @function
expand_builtin_strcpy:
.LFB49:
	.loc 1 2297 0
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
	.loc 1 2298 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2301 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L802
	.loc 1 2302 0
	movl	$0, -40(%ebp)
	jmp	.L804
.L802:
	.loc 1 2304 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2305 0
	cmpl	$0, -20(%ebp)
	jne	.L805
	.loc 1 2306 0
	movl	$0, -40(%ebp)
	jmp	.L804
.L805:
	.loc 1 2308 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2309 0
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -16(%ebp)
	.loc 1 2310 0
	cmpl	$0, -16(%ebp)
	je	.L807
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L809
.L807:
	.loc 1 2311 0
	movl	$0, -40(%ebp)
	jmp	.L804
.L809:
	.loc 1 2313 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2314 0
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
	.loc 1 2315 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2316 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2317 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2318 0
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
.L804:
	movl	-40(%ebp), %eax
	.loc 1 2320 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	expand_builtin_strcpy, .-expand_builtin_strcpy
	.type	expand_builtin_stpcpy, @function
expand_builtin_stpcpy:
.LFB50:
	.loc 1 2332 0
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
	.loc 1 2333 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L812
	.loc 1 2334 0
	movl	$0, -24(%ebp)
	jmp	.L814
.L812:
.LBB20:
	.loc 1 2341 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L815
.LBB21:
	.loc 1 2343 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2344 0
	cmpl	$0, -8(%ebp)
	jne	.L817
	.loc 1 2345 0
	movl	$0, -24(%ebp)
	jmp	.L814
.L817:
	.loc 1 2347 0
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
	jmp	.L814
.L815:
.LBE21:
	.loc 1 2355 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2356 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	testl	%eax, %eax
	je	.L819
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L821
.L819:
	.loc 1 2357 0
	movl	$0, -24(%ebp)
	jmp	.L814
.L821:
	.loc 1 2359 0
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
	.loc 1 2360 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_list@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2361 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	.loc 1 2362 0
	movl	$2, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_mempcpy
	movl	%eax, -24(%ebp)
.L814:
	movl	-24(%ebp), %eax
.LBE20:
	.loc 1 2364 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	expand_builtin_stpcpy, .-expand_builtin_stpcpy
	.type	builtin_strncpy_read_str, @function
builtin_strncpy_read_str:
.LFB51:
	.loc 1 2375 0
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
	.loc 1 2376 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2378 0
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
	jb	.L824
	movl	-44(%ebp), %edx
	cmpl	%edx, -52(%ebp)
	ja	.L826
	movl	-48(%ebp), %edi
	cmpl	%edi, -56(%ebp)
	jbe	.L824
.L826:
	.loc 1 2379 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L827
.L824:
	.loc 1 2381 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_readstr
	movl	%eax, -36(%ebp)
.L827:
	movl	-36(%ebp), %eax
	.loc 1 2382 0
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
	.loc 1 2392 0
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
	.loc 1 2393 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L830
	.loc 1 2395 0
	movl	$0, -44(%ebp)
	jmp	.L832
.L830:
.LBB22:
	.loc 1 2398 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -32(%ebp)
	.loc 1 2399 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2403 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L833
	.loc 1 2404 0
	movl	$0, -44(%ebp)
	jmp	.L832
.L833:
	.loc 1 2407 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L835
	.loc 1 2411 0
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
	.loc 1 2414 0
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
	jmp	.L832
.L835:
	.loc 1 2419 0
	cmpl	$0, -32(%ebp)
	je	.L837
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L839
.L837:
	.loc 1 2420 0
	movl	$0, -44(%ebp)
	jmp	.L832
.L839:
	.loc 1 2422 0
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
	.loc 1 2427 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L840
.LBB23:
	.loc 1 2429 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2431 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L842
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L844
.L842:
	movl	$128, -40(%ebp)
	jmp	.L845
.L844:
	movl	$64, -40(%ebp)
.L845:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -16(%ebp)
	.loc 1 2432 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -12(%ebp)
	.loc 1 2435 0
	cmpl	$0, -12(%ebp)
	je	.L846
	cmpl	$0, -16(%ebp)
	je	.L846
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L846
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
	jne	.L850
.L846:
	.loc 1 2439 0
	movl	$0, -44(%ebp)
	jmp	.L832
.L850:
	.loc 1 2441 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -8(%ebp)
	.loc 1 2442 0
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
	.loc 1 2445 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2450 0
	movl	-8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L832
.L840:
.LBE23:
	.loc 1 2454 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2455 0
	cmpl	$0, -24(%ebp)
	jne	.L851
	.loc 1 2456 0
	movl	$0, -44(%ebp)
	jmp	.L832
.L851:
	.loc 1 2457 0
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
.L832:
	movl	-44(%ebp), %eax
.LBE22:
	.loc 1 2460 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	expand_builtin_strncpy, .-expand_builtin_strncpy
	.type	builtin_memset_read_str, @function
builtin_memset_read_str:
.LFB53:
	.loc 1 2471 0
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
	.loc 1 2471 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2472 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2473 0
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
	.loc 1 2475 0
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
	.loc 1 2477 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_readstr
	.loc 1 2478 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L856
	call	__stack_chk_fail_local
.L856:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE53:
	.size	builtin_memset_read_str, .-builtin_memset_read_str
	.type	builtin_memset_gen_str, @function
builtin_memset_gen_str:
.LFB54:
	.loc 1 2490 0
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
	.loc 1 2490 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2495 0
	movl	20(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2496 0
	cmpl	$1, -20(%ebp)
	jne	.L858
	.loc 1 2497 0
	movl	-44(%ebp), %edx
	movl	%edx, -64(%ebp)
	jmp	.L860
.L858:
	.loc 1 2499 0
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
	.loc 1 2500 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	memset@PLT
	.loc 1 2501 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_readstr
	movl	%eax, -24(%ebp)
	.loc 1 2503 0
	movl	-44(%ebp), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2504 0
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
	.loc 1 2505 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -64(%ebp)
.L860:
	movl	-64(%ebp), %eax
	.loc 1 2506 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L862
	call	__stack_chk_fail_local
.L862:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE54:
	.size	builtin_memset_gen_str, .-builtin_memset_gen_str
	.type	expand_builtin_memset, @function
expand_builtin_memset:
.LFB55:
	.loc 1 2518 0
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
	.loc 1 2519 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2521 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$7, 8(%esp)
	movl	$14, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L864
	.loc 1 2523 0
	movl	$0, -72(%ebp)
	jmp	.L866
.L864:
.LBB24:
	.loc 1 2526 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2527 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2528 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2532 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L867
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L869
.L867:
	movl	$128, -68(%ebp)
	jmp	.L870
.L869:
	movl	$64, -68(%ebp)
.L870:
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pointer_alignment
	movl	%eax, -32(%ebp)
	.loc 1 2537 0
	cmpl	$0, -32(%ebp)
	jne	.L871
	.loc 1 2538 0
	movl	$0, -72(%ebp)
	jmp	.L866
.L871:
	.loc 1 2541 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L873
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L873
	.loc 1 2544 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2545 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -72(%ebp)
	jmp	.L866
.L873:
	.loc 1 2548 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L876
.LBB25:
	.loc 1 2552 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L878
	.loc 1 2553 0
	movl	$0, -72(%ebp)
	jmp	.L866
.L878:
	.loc 1 2555 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L880
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	cmpl	$0, -60(%ebp)
	js	.L880
	cmpl	$0, -60(%ebp)
	jg	.L883
	cmpl	$1, -64(%ebp)
	jbe	.L880
.L883:
	.loc 1 2556 0
	movl	$0, -72(%ebp)
	jmp	.L866
.L880:
	.loc 1 2561 0
	movb	$1, -9(%ebp)
	.loc 1 2562 0
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
	jne	.L884
	.loc 1 2565 0
	movl	$0, -72(%ebp)
	jmp	.L866
.L884:
	.loc 1 2567 0
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
	.loc 1 2568 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2569 0
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
	.loc 1 2571 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -28(%ebp)
	.loc 1 2572 0
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
	.loc 1 2575 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2580 0
	movl	-28(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L866
.L876:
.LBE25:
	.loc 1 2583 0
	leal	-9(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	target_char_cast
	testl	%eax, %eax
	je	.L886
	.loc 1 2584 0
	movl	$0, -72(%ebp)
	jmp	.L866
.L886:
	.loc 1 2586 0
	movzbl	-9(%ebp), %eax
	testb	%al, %al
	je	.L888
	.loc 1 2588 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L890
	.loc 1 2589 0
	movl	$0, -72(%ebp)
	jmp	.L866
.L890:
	.loc 1 2590 0
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
	jne	.L892
	.loc 1 2593 0
	movl	$0, -72(%ebp)
	jmp	.L866
.L892:
	.loc 1 2595 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -28(%ebp)
	.loc 1 2596 0
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
	.loc 1 2599 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2604 0
	movl	-28(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L866
.L888:
	.loc 1 2607 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2609 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_memory_rtx
	movl	%eax, -28(%ebp)
	.loc 1 2610 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 2611 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_storage@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2613 0
	cmpl	$0, -24(%ebp)
	jne	.L894
	.loc 1 2615 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -24(%ebp)
.L894:
	.loc 1 2622 0
	movl	-24(%ebp), %eax
	movl	%eax, -72(%ebp)
.L866:
	movl	-72(%ebp), %eax
.LBE24:
	.loc 1 2624 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	expand_builtin_memset, .-expand_builtin_memset
	.type	expand_builtin_bzero, @function
expand_builtin_bzero:
.LFB56:
	.loc 1 2632 0
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
	.loc 1 2633 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2637 0
	movl	$6, 12(%esp)
	movl	$7, 8(%esp)
	movl	$14, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L898
	.loc 1 2638 0
	movl	$0, -40(%ebp)
	jmp	.L900
.L898:
	.loc 1 2640 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2641 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2648 0
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
	.loc 1 2649 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2650 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2652 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 2653 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memset
	movl	%eax, -8(%ebp)
	.loc 1 2656 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 2658 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L900:
	movl	-40(%ebp), %eax
	.loc 1 2659 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	expand_builtin_bzero, .-expand_builtin_bzero
	.type	expand_builtin_memcmp, @function
expand_builtin_memcmp:
.LFB57:
	.loc 1 2672 0
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
	.loc 1 2676 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L903
	.loc 1 2678 0
	movl	$0, -72(%ebp)
	jmp	.L905
.L903:
	.loc 1 2680 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2681 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2682 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2685 0
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L906
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L906
	.loc 1 2689 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2690 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2691 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L905
.L906:
	.loc 1 2694 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -44(%ebp)
	.loc 1 2695 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -40(%ebp)
	.loc 1 2699 0
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L909
	cmpl	$0, -44(%ebp)
	je	.L909
	cmpl	$0, -40(%ebp)
	je	.L909
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
	jg	.L909
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
	jg	.L909
.LBB26:
	.loc 1 2703 0
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
	.loc 1 2705 0
	cmpl	$0, -36(%ebp)
	jns	.L915
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L917
.L915:
	cmpl	$0, -36(%ebp)
	jle	.L918
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L920
.L918:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -64(%ebp)
.L920:
	movl	-64(%ebp), %esi
	movl	%esi, -68(%ebp)
.L917:
	movl	-68(%ebp), %edi
	movl	%edi, -72(%ebp)
	jmp	.L905
.L909:
.LBE26:
	.loc 1 2710 0
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L921
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L921
.LBB27:
	.loc 1 2712 0
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2713 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2717 0
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
	.loc 1 2721 0
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
	.loc 1 2722 0
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
	.loc 1 2723 0
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -72(%ebp)
	jmp	.L905
.L921:
.LBE27:
	.loc 1 2803 0
	movl	$0, -72(%ebp)
.L905:
	movl	-72(%ebp), %eax
	.loc 1 2804 0
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
	.loc 1 2815 0
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
	.loc 1 2816 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2820 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L926
	.loc 1 2821 0
	movl	$0, -64(%ebp)
	jmp	.L928
.L926:
	.loc 1 2823 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2824 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2826 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -36(%ebp)
	.loc 1 2827 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -32(%ebp)
	.loc 1 2829 0
	cmpl	$0, -36(%ebp)
	je	.L929
	cmpl	$0, -32(%ebp)
	je	.L929
.LBB28:
	.loc 1 2831 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2832 0
	cmpl	$0, -28(%ebp)
	jns	.L932
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L934
.L932:
	cmpl	$0, -28(%ebp)
	jle	.L935
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L937
.L935:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -56(%ebp)
.L937:
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
.L934:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L928
.L929:
.LBE28:
	.loc 1 2837 0
	cmpl	$0, -36(%ebp)
	je	.L938
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L940
.L938:
	cmpl	$0, -32(%ebp)
	je	.L941
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L941
.L940:
.LBB29:
	.loc 1 2839 0
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2840 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2844 0
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
	.loc 1 2848 0
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
	.loc 1 2849 0
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
	.loc 1 2850 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -64(%ebp)
	jmp	.L928
.L941:
.LBE29:
	.loc 1 2934 0
	movl	$0, -64(%ebp)
.L928:
	movl	-64(%ebp), %eax
	.loc 1 2935 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	expand_builtin_strcmp, .-expand_builtin_strcmp
	.type	expand_builtin_strncmp, @function
expand_builtin_strncmp:
.LFB59:
	.loc 1 2946 0
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
	.loc 1 2947 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2951 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L945
	.loc 1 2953 0
	movl	$0, -76(%ebp)
	jmp	.L947
.L945:
	.loc 1 2955 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2956 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2957 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2960 0
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L948
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L948
	.loc 1 2964 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2965 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 2966 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L947
.L948:
	.loc 1 2969 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -40(%ebp)
	.loc 1 2970 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -36(%ebp)
	.loc 1 2973 0
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L951
	cmpl	$0, -40(%ebp)
	je	.L951
	cmpl	$0, -36(%ebp)
	je	.L951
.LBB30:
	.loc 1 2975 0
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
	.loc 1 2976 0
	cmpl	$0, -32(%ebp)
	jns	.L955
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L957
.L955:
	cmpl	$0, -32(%ebp)
	jle	.L958
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L960
.L958:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
.L960:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
.L957:
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L947
.L951:
.LBE30:
	.loc 1 2981 0
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L961
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L963
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	cmpl	$0, -60(%ebp)
	js	.L961
	cmpl	$0, -60(%ebp)
	jg	.L966
	cmpl	$1, -64(%ebp)
	jbe	.L961
.L966:
	cmpl	$0, -40(%ebp)
	je	.L967
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L963
.L967:
	cmpl	$0, -36(%ebp)
	je	.L961
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L961
.L963:
.LBB31:
	.loc 1 2986 0
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2987 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2991 0
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
	.loc 1 2995 0
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
	.loc 1 2996 0
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
	.loc 1 2997 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -76(%ebp)
	jmp	.L947
.L961:
.LBE31:
	.loc 1 3087 0
	movl	$0, -76(%ebp)
.L947:
	movl	-76(%ebp), %eax
	.loc 1 3088 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	expand_builtin_strncmp, .-expand_builtin_strncmp
	.type	expand_builtin_strcat, @function
expand_builtin_strcat:
.LFB60:
	.loc 1 3099 0
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
	.loc 1 3100 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L972
	.loc 1 3101 0
	movl	$0, -24(%ebp)
	jmp	.L974
.L972:
.LBB32:
	.loc 1 3104 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3105 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3106 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -8(%ebp)
	.loc 1 3109 0
	cmpl	$0, -8(%ebp)
	je	.L975
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L975
	.loc 1 3110 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -24(%ebp)
	jmp	.L974
.L975:
	.loc 1 3112 0
	movl	$0, -24(%ebp)
.L974:
	movl	-24(%ebp), %eax
.LBE32:
	.loc 1 3114 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	expand_builtin_strcat, .-expand_builtin_strcat
	.type	expand_builtin_strncat, @function
expand_builtin_strncat:
.LFB61:
	.loc 1 3125 0
	pushl	%ebp
.LCFI195:
	movl	%esp, %ebp
.LCFI196:
	.loc 1 3168 0
	movl	$0, %eax
	.loc 1 3170 0
	popl	%ebp
	ret
.LFE61:
	.size	expand_builtin_strncat, .-expand_builtin_strncat
	.type	expand_builtin_strspn, @function
expand_builtin_strspn:
.LFB62:
	.loc 1 3181 0
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
	.loc 1 3182 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L982
	.loc 1 3183 0
	movl	$0, -40(%ebp)
	jmp	.L984
.L982:
.LBB33:
	.loc 1 3186 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3187 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -12(%ebp)
	.loc 1 3190 0
	cmpl	$0, -16(%ebp)
	je	.L985
	cmpl	$0, -12(%ebp)
	je	.L985
.LBB34:
	.loc 1 3192 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strspn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3193 0
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
	jmp	.L984
.L985:
.LBE34:
	.loc 1 3197 0
	cmpl	$0, -16(%ebp)
	je	.L988
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L990
.L988:
	cmpl	$0, -12(%ebp)
	je	.L991
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L991
.L990:
	.loc 1 3201 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 3202 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 3203 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L984
.L991:
	.loc 1 3205 0
	movl	$0, -40(%ebp)
.L984:
	movl	-40(%ebp), %eax
.LBE33:
	.loc 1 3207 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	expand_builtin_strspn, .-expand_builtin_strspn
	.type	expand_builtin_strcspn, @function
expand_builtin_strcspn:
.LFB63:
	.loc 1 3218 0
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
	.loc 1 3219 0
	movl	$6, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L995
	.loc 1 3220 0
	movl	$0, -40(%ebp)
	jmp	.L997
.L995:
.LBB35:
	.loc 1 3223 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3224 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -20(%ebp)
	.loc 1 3227 0
	cmpl	$0, -24(%ebp)
	je	.L998
	cmpl	$0, -20(%ebp)
	je	.L998
.LBB36:
	.loc 1 3229 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strcspn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3230 0
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
	jmp	.L997
.L998:
.LBE36:
	.loc 1 3234 0
	cmpl	$0, -24(%ebp)
	je	.L1001
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1001
	.loc 1 3238 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 3239 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L997
.L1001:
	.loc 1 3243 0
	cmpl	$0, -20(%ebp)
	je	.L1004
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1004
.LBB37:
	.loc 1 3245 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3246 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	164(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3250 0
	cmpl	$0, -8(%ebp)
	jne	.L1007
	.loc 1 3251 0
	movl	$0, -40(%ebp)
	jmp	.L997
.L1007:
	.loc 1 3253 0
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
	jmp	.L997
.L1004:
.LBE37:
	.loc 1 3256 0
	movl	$0, -40(%ebp)
.L997:
	movl	-40(%ebp), %eax
.LBE35:
	.loc 1 3258 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	expand_builtin_strcspn, .-expand_builtin_strcspn
	.section	.rodata
	.align 4
.LC308:
	.string	"__builtin_saveregs not supported by this target"
	.text
.globl expand_builtin_saveregs
	.type	expand_builtin_saveregs, @function
expand_builtin_saveregs:
.LFB64:
	.loc 1 3265 0
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
	.loc 1 3270 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1011
	.loc 1 3271 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1013
.L1011:
	.loc 1 3277 0
	call	start_sequence@PLT
	.loc 1 3291 0
	leal	.LC308@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3292 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3295 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3296 0
	call	end_sequence@PLT
	.loc 1 3298 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3303 0
	call	push_topmost_sequence@PLT
	.loc 1 3304 0
	call	get_insns@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 3305 0
	call	pop_topmost_sequence@PLT
	.loc 1 3307 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1013:
	movl	-24(%ebp), %eax
	.loc 1 3308 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	expand_builtin_saveregs, .-expand_builtin_saveregs
	.section	.rodata
	.type	__FUNCTION__.17367, @object
	.size	__FUNCTION__.17367, 25
__FUNCTION__.17367:
	.string	"expand_builtin_args_info"
	.align 4
.LC309:
	.string	"argument of `__builtin_args_info' must be constant"
	.align 4
.LC310:
	.string	"argument of `__builtin_args_info' out of range"
	.align 4
.LC311:
	.string	"missing argument in `__builtin_args_info'"
	.text
	.type	expand_builtin_args_info, @function
expand_builtin_args_info:
.LFB65:
	.loc 1 3317 0
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
	.loc 1 3318 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3319 0
	movl	$16, -16(%ebp)
	.loc 1 3320 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$52, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3330 0
	cmpl	$0, -20(%ebp)
	je	.L1016
	.loc 1 3332 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L1018
	.loc 1 3333 0
	leal	.LC309@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1026
.L1018:
.LBB38:
	.loc 1 3336 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 3338 0
	cmpl	$0, -28(%ebp)
	js	.L1021
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jg	.L1023
	movl	-52(%ebp), %edx
	cmpl	-28(%ebp), %edx
	jl	.L1021
	movl	-56(%ebp), %eax
	cmpl	-32(%ebp), %eax
	ja	.L1023
.L1021:
	.loc 1 3339 0
	leal	.LC310@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3338 0
	jmp	.L1026
.L1023:
	.loc 1 3341 0
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
	jmp	.L1025
.L1016:
.LBE38:
	.loc 1 3345 0
	leal	.LC311@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1026:
	.loc 1 3347 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -44(%ebp)
.L1025:
	movl	-44(%ebp), %eax
	.loc 1 3362 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	expand_builtin_args_info, .-expand_builtin_args_info
	.section	.rodata
	.align 4
.LC312:
	.string	"`va_start' used in function with fixed args"
	.align 4
.LC313:
	.string	"second parameter of `va_start' not last named argument"
	.align 4
.LC314:
	.string	"`__builtin_next_arg' called without an argument"
	.text
	.type	expand_builtin_next_arg, @function
expand_builtin_next_arg:
.LFB66:
	.loc 1 3369 0
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
	.loc 1 3370 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3372 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1029
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	tree_last@PLT
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1031
.L1029:
	.loc 1 3376 0
	leal	.LC312@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3377 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1032
.L1031:
	.loc 1 3380 0
	cmpl	$0, 8(%ebp)
	je	.L1033
.LBB39:
	.loc 1 3382 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	tree_last@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3383 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3389 0
	jmp	.L1035
.L1036:
	.loc 1 3393 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1035:
	.loc 1 3389 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1036
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1036
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L1036
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	je	.L1036
	.loc 1 3394 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L1043
	.loc 1 3395 0
	leal	.LC313@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1043
.L1033:
.LBE39:
	.loc 1 3400 0
	leal	.LC314@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1043:
	.loc 1 3402 0
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
	je	.L1044
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1044
	movl	$5, -24(%ebp)
	jmp	.L1047
.L1044:
	movl	$4, -24(%ebp)
.L1047:
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
.L1032:
	movl	-40(%ebp), %eax
	.loc 1 3406 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	expand_builtin_next_arg, .-expand_builtin_next_arg
	.type	stabilize_va_list, @function
stabilize_va_list:
.LFB67:
	.loc 1 3415 0
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
	.loc 1 3416 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1050
	.loc 1 3418 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1052
	.loc 1 3419 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 8(%ebp)
.L1052:
	.loc 1 3425 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1056
.LBB40:
	.loc 1 3427 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3428 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3430 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3431 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 8(%ebp)
	jmp	.L1056
.L1050:
.LBE40:
.LBB41:
	.loc 1 3438 0
	cmpl	$0, 12(%ebp)
	jne	.L1057
	.loc 1 3440 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1059
	.loc 1 3441 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1061
.L1059:
	.loc 1 3443 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3444 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3445 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
.L1057:
	.loc 1 3448 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1062
	.loc 1 3449 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 8(%ebp)
.L1062:
	.loc 1 3450 0
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
.L1056:
.LBE41:
	.loc 1 3454 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1061:
	movl	-24(%ebp), %eax
	.loc 1 3455 0
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
	.loc 1 3464 0
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
	.loc 1 3467 0
	movl	global_trees@GOT(%ebx), %eax
	movl	112(%eax), %edx
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
	.loc 1 3469 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 3471 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 3472 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	std_expand_builtin_va_start, .-std_expand_builtin_va_start
	.section	.rodata
	.align 4
.LC315:
	.string	"too many arguments to function `va_start'"
	.text
	.type	expand_builtin_va_start, @function
expand_builtin_va_start:
.LFB69:
	.loc 1 3479 0
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
	.loc 1 3483 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3485 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1068
	.loc 1 3486 0
	leal	.LC315@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1068:
	.loc 1 3488 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_next_arg
	movl	%eax, -16(%ebp)
	.loc 1 3489 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	stabilize_va_list
	movl	%eax, -8(%ebp)
	.loc 1 3492 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_va_start@PLT
	.loc 1 3497 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	.loc 1 3498 0
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
	.loc 1 3506 0
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
	.loc 1 3507 0
	movl	$0, -36(%ebp)
	.loc 1 3513 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1072
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1072
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1072
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1076
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1076
.L1072:
	movl	$8, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L1078
.L1076:
	movl	$4, -72(%ebp)
	movl	$0, -68(%ebp)
.L1078:
	movl	$0, 8(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3514 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1079
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1079
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1079
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1083
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1083
.L1079:
	movl	$7, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L1085
.L1083:
	movl	$3, -64(%ebp)
	movl	$0, -60(%ebp)
.L1085:
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3515 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1086
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L1086
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1089
.L1086:
	.loc 1 3518 0
	movl	global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3515 0
	jmp	.L1090
.L1089:
	.loc 1 3520 0
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
.L1090:
	.loc 1 3528 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3529 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L1091
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L1093
.L1091:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	setne	-53(%ebp)
	jmp	.L1094
.L1093:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	sete	-53(%ebp)
.L1094:
	cmpb	$0, -53(%ebp)
	je	.L1095
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1095
	.loc 1 3532 0
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
	movl	60(%eax), %edi
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
.L1095:
	.loc 1 3543 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1098
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1098
	movl	$5, -52(%ebp)
	jmp	.L1101
.L1098:
	movl	$4, -52(%ebp)
.L1101:
	movl	$0, 12(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3544 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3547 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1102
	.loc 1 3549 0
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
	.loc 1 3552 0
	movl	-40(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 3553 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
.L1102:
	.loc 1 3556 0
	movl	-20(%ebp), %eax
	.loc 1 3557 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE70:
	.size	std_expand_builtin_va_arg, .-std_expand_builtin_va_arg
	.local	gave_help.17640
	.comm	gave_help.17640,1,1
	.section	.rodata
	.align 4
.LC316:
	.string	"first argument to `va_arg' not of type `va_list'"
.LC317:
	.string	"<anonymous type>"
	.align 4
.LC318:
	.string	"`%s' is promoted to `%s' when passed through `...'"
	.align 4
.LC319:
	.string	"(so you should pass `%s' not `%s' to `va_arg')"
	.text
.globl expand_builtin_va_arg
	.type	expand_builtin_va_arg, @function
expand_builtin_va_arg:
.LFB71:
	.loc 1 3565 0
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
	.loc 1 3571 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3572 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3573 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1106
	.loc 1 3579 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1108
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1106
.L1108:
	.loc 1 3582 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3583 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L1106:
	.loc 1 3586 0
	movl	-20(%ebp), %eax
	movl	76(%eax), %edx
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	je	.L1110
	.loc 1 3588 0
	leal	.LC316@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3589 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1112
.L1110:
	.loc 1 3594 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	280(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L1113
.LBB42:
	.loc 1 3597 0
	leal	.LC317@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	.loc 1 3600 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L1115
	.loc 1 3602 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1117
	.loc 1 3603 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1115
.L1117:
	.loc 1 3604 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1115
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1115
	.loc 1 3606 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
.L1115:
	.loc 1 3608 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L1121
	.loc 1 3610 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1123
	.loc 1 3611 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1121
.L1123:
	.loc 1 3612 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1121
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1121
	.loc 1 3614 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L1121:
	.loc 1 3620 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC318@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3622 0
	movzbl	gave_help.17640@GOTOFF(%ebx), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1127
	.loc 1 3624 0
	movb	$1, gave_help.17640@GOTOFF(%ebx)
	.loc 1 3625 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC319@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1127:
	.loc 1 3631 0
	call	expand_builtin_trap@PLT
	.loc 1 3635 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1112
.L1113:
.LBE42:
	.loc 1 3641 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_va_list
	movl	%eax, 8(%ebp)
	.loc 1 3644 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_va_arg@PLT
	movl	%eax, -32(%ebp)
.L1112:
	.loc 1 3655 0
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3656 0
	call	get_varargs_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 3658 0
	movl	-28(%ebp), %eax
	.loc 1 3659 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	expand_builtin_va_arg, .-expand_builtin_va_arg
	.type	expand_builtin_va_end, @function
expand_builtin_va_end:
.LFB72:
	.loc 1 3666 0
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
	.loc 1 3667 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3675 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1131
	.loc 1 3676 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
.L1131:
	.loc 1 3679 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	.loc 1 3680 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	expand_builtin_va_end, .-expand_builtin_va_end
	.type	expand_builtin_va_copy, @function
expand_builtin_va_copy:
.LFB73:
	.loc 1 3689 0
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
	.loc 1 3692 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3693 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3695 0
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_va_list
	movl	%eax, -28(%ebp)
	.loc 1 3696 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_va_list
	movl	%eax, -24(%ebp)
	.loc 1 3698 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1135
	.loc 1 3700 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3701 0
	movl	-20(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 3702 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	jmp	.L1137
.L1135:
.LBB43:
	.loc 1 3709 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1138
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1138
	movl	$5, -44(%ebp)
	jmp	.L1141
.L1138:
	movl	$4, -44(%ebp)
.L1141:
	movl	$0, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3710 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1142
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1142
	movl	$5, -40(%ebp)
	jmp	.L1145
.L1142:
	movl	$4, -40(%ebp)
.L1145:
	movl	$0, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3711 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	24(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3723 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3724 0
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
	.loc 1 3725 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 3726 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3727 0
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
	.loc 1 3728 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 3731 0
	movl	$0, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
.L1137:
.LBE43:
	.loc 1 3734 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	.loc 1 3735 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	expand_builtin_va_copy, .-expand_builtin_va_copy
	.section	.rodata
	.align 4
.LC320:
	.string	"invalid arg to `__builtin_frame_address'"
	.align 4
.LC321:
	.string	"invalid arg to `__builtin_return_address'"
	.align 4
.LC322:
	.string	"unsupported arg to `__builtin_frame_address'"
	.align 4
.LC323:
	.string	"unsupported arg to `__builtin_return_address'"
	.text
	.type	expand_builtin_frame_address, @function
expand_builtin_frame_address:
.LFB74:
	.loc 1 3743 0
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
	.loc 1 3744 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3745 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3750 0
	cmpl	$0, -16(%ebp)
	jne	.L1148
	.loc 1 3752 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1150
.L1148:
	.loc 1 3753 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L1151
	.loc 1 3755 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$237, %eax
	jne	.L1153
	.loc 1 3756 0
	leal	.LC320@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1155
.L1153:
	.loc 1 3758 0
	leal	.LC321@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1155:
	.loc 1 3759 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1150
.L1151:
.LBB44:
	.loc 1 3766 0
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
	.loc 1 3769 0
	cmpl	$0, -12(%ebp)
	jne	.L1156
	.loc 1 3771 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$237, %eax
	jne	.L1158
	.loc 1 3772 0
	leal	.LC322@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1160
.L1158:
	.loc 1 3774 0
	leal	.LC323@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1160:
	.loc 1 3775 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1150
.L1156:
	.loc 1 3779 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$237, %eax
	jne	.L1161
	.loc 1 3780 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1150
.L1161:
	.loc 1 3782 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1163
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1163
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1163
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1163
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1163
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1163
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1163
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1163
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1163
	.loc 1 3784 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1173
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1173
	movl	$5, -28(%ebp)
	jmp	.L1176
.L1173:
	movl	$4, -28(%ebp)
.L1176:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -12(%ebp)
.L1163:
	.loc 1 3785 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1150:
	movl	-32(%ebp), %eax
.LBE44:
	.loc 1 3787 0
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
	.loc 1 3797 0
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
	.loc 1 3801 0
	movl	$6, 8(%esp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1179
	.loc 1 3802 0
	movl	$0, -24(%ebp)
	jmp	.L1181
.L1179:
	.loc 1 3805 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3808 0
	movl	$8, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	allocate_dynamic_stack_space@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3815 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1181:
	movl	-24(%ebp), %eax
	.loc 1 3816 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	expand_builtin_alloca, .-expand_builtin_alloca
	.section	.rodata
	.type	__FUNCTION__.17872, @object
	.size	__FUNCTION__.17872, 19
__FUNCTION__.17872:
	.string	"expand_builtin_ffs"
	.text
	.type	expand_builtin_ffs, @function
expand_builtin_ffs:
.LFB76:
	.loc 1 3827 0
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
	.loc 1 3829 0
	movl	$6, 8(%esp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1184
	.loc 1 3830 0
	movl	$0, -24(%ebp)
	jmp	.L1186
.L1184:
	.loc 1 3833 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3836 0
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
	.loc 1 3838 0
	cmpl	$0, 12(%ebp)
	jne	.L1187
	.loc 1 3839 0
	leal	__FUNCTION__.17872@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3839, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1187:
	.loc 1 3840 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1186:
	movl	-24(%ebp), %eax
	.loc 1 3841 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	expand_builtin_ffs, .-expand_builtin_ffs
	.section	.rodata
	.align 4
.LC324:
	.string	"second arg to `__builtin_expect' must be a constant"
	.text
	.type	expand_builtin_expect, @function
expand_builtin_expect:
.LFB77:
	.loc 1 3936 0
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
	.loc 1 3940 0
	cmpl	$0, 8(%ebp)
	je	.L1191
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1193
.L1191:
	.loc 1 3942 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1194
.L1193:
	.loc 1 3943 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3944 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3946 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1195
	.loc 1 3948 0
	leal	.LC324@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3949 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
.L1195:
	.loc 1 3952 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3955 0
	movl	flag_guess_branch_prob@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1197
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1197
	.loc 1 3960 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_reg@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3962 0
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
	.loc 1 3964 0
	movl	$-82, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3965 0
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
.L1197:
	.loc 1 3968 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1194:
	movl	-24(%ebp), %eax
	.loc 1 3969 0
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
	.loc 1 3983 0
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
	.loc 1 3984 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 3985 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3986 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3987 0
	movl	$0, -40(%ebp)
	.loc 1 3991 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L1202
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1204
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1202
.L1204:
.LBB45:
	.loc 1 3994 0
	movl	$0, -36(%ebp)
	.loc 1 3996 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4001 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	unsafe_for_reeval@PLT
	movl	%eax, -60(%ebp)
	cmpl	$1, -60(%ebp)
	je	.L1208
	cmpl	$2, -60(%ebp)
	je	.L1209
	jmp	.L1206
.L1208:
	.loc 1 4007 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	unsave_expr@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4008 0
	jmp	.L1206
.L1209:
	.loc 1 4011 0
	movl	$0, -56(%ebp)
	jmp	.L1210
.L1206:
	.loc 1 4015 0
	call	start_sequence@PLT
	.loc 1 4016 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump@PLT
	.loc 1 4017 0
	call	get_insns@PLT
	movl	%eax, -40(%ebp)
	.loc 1 4018 0
	call	end_sequence@PLT
	.loc 1 4024 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4025 0
	jmp	.L1211
.L1212:
.LBB46:
	.loc 1 4027 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4030 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1213
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L1213
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1213
.LBB47:
	.loc 1 4033 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4037 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L1213
	.loc 1 4040 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1218
	.loc 1 4042 0
	movl	$1, -8(%ebp)
	.loc 1 4043 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1220
.L1218:
	.loc 1 4046 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1221
	.loc 1 4048 0
	movl	$0, -8(%ebp)
	.loc 1 4049 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1220
.L1221:
	.loc 1 4053 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1223
	.loc 1 4055 0
	movl	$1, -8(%ebp)
	.loc 1 4056 0
	movl	$0, -12(%ebp)
	jmp	.L1220
.L1223:
	.loc 1 4059 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1213
	.loc 1 4061 0
	movl	$0, -8(%ebp)
	.loc 1 4062 0
	movl	$0, -12(%ebp)
.L1220:
	.loc 1 4069 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1226
	.loc 1 4070 0
	movl	$1, %eax
	subl	-8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1226:
	.loc 1 4074 0
	cmpl	$0, -12(%ebp)
	je	.L1228
	.loc 1 4076 0
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1230
	.loc 1 4077 0
	movl	$1, %eax
	subl	-8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1228
.L1230:
	.loc 1 4078 0
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L1213
.L1228:
	.loc 1 4081 0
	addl	$1, -36(%ebp)
	.loc 1 4082 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$6, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
.L1213:
.LBE47:
	.loc 1 4086 0
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1211:
.LBE46:
	.loc 1 4025 0
	cmpl	$0, -32(%ebp)
	jne	.L1212
	.loc 1 4091 0
	cmpl	$0, -36(%ebp)
	jne	.L1202
	.loc 1 4093 0
	movl	$0, -40(%ebp)
	.loc 1 4094 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L1202:
.LBE45:
	.loc 1 4098 0
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1210:
	movl	-56(%ebp), %eax
	.loc 1 4099 0
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
	.loc 1 4103 0
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
	.loc 1 4106 0
	call	gen_trap@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 4110 0
	call	emit_barrier@PLT
	.loc 1 4111 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	expand_builtin_trap, .-expand_builtin_trap
	.section	.rodata
.LC325:
	.string	"%s"
	.text
	.type	expand_builtin_sprintf, @function
expand_builtin_sprintf:
.LFB80:
	.loc 1 4123 0
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
	.loc 1 4127 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 4130 0
	cmpl	$0, 8(%ebp)
	jne	.L1238
	.loc 1 4131 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1238:
	.loc 1 4132 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 4133 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1241
	.loc 1 4134 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1241:
	.loc 1 4135 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4136 0
	cmpl	$0, 8(%ebp)
	jne	.L1243
	.loc 1 4137 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1243:
	.loc 1 4138 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4139 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1245
	.loc 1 4140 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1245:
	.loc 1 4141 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4144 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -36(%ebp)
	.loc 1 4145 0
	cmpl	$0, -36(%ebp)
	jne	.L1247
	.loc 1 4146 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1247:
	.loc 1 4149 0
	movl	$37, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	jne	.L1249
.LBB48:
	.loc 1 4151 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4154 0
	cmpl	$0, 8(%ebp)
	jne	.L1251
	cmpl	$0, -32(%ebp)
	jne	.L1253
.L1251:
	.loc 1 4155 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1253:
	.loc 1 4156 0
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
	.loc 1 4158 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1254
	.loc 1 4159 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1240
.L1254:
	.loc 1 4160 0
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
	.loc 1 4161 0
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
	.loc 1 4162 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -64(%ebp)
	jmp	.L1240
.L1249:
.LBE48:
	.loc 1 4165 0
	leal	.LC325@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1256
.LBB49:
	.loc 1 4168 0
	movl	built_in_decls@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4170 0
	cmpl	$0, -24(%ebp)
	jne	.L1258
	.loc 1 4171 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1258:
	.loc 1 4173 0
	cmpl	$0, 8(%ebp)
	je	.L1260
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1262
.L1260:
	.loc 1 4174 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1262:
	.loc 1 4175 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4176 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1263
	.loc 1 4177 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1263:
	.loc 1 4179 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1265
	.loc 1 4181 0
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -16(%ebp)
	.loc 1 4182 0
	cmpl	$0, -16(%ebp)
	je	.L1267
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1270
.L1267:
	.loc 1 4183 0
	movl	$0, -64(%ebp)
	jmp	.L1240
.L1265:
	.loc 1 4186 0
	movl	$0, -16(%ebp)
.L1270:
	.loc 1 4188 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4189 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4190 0
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
	.loc 1 4193 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1271
	.loc 1 4194 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1240
.L1271:
	.loc 1 4195 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -64(%ebp)
	jmp	.L1240
.L1256:
.LBE49:
	.loc 1 4198 0
	movl	$0, -64(%ebp)
.L1240:
	movl	-64(%ebp), %eax
	.loc 1 4199 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE80:
	.size	expand_builtin_sprintf, .-expand_builtin_sprintf
	.section	.rodata
	.type	__FUNCTION__.18166, @object
	.size	__FUNCTION__.18166, 15
__FUNCTION__.18166:
	.string	"expand_builtin"
.LC326:
	.string	"__builtin_"
	.align 4
.LC327:
	.string	"built-in function `%s' not currently supported"
	.text
.globl expand_builtin
	.type	expand_builtin, @function
expand_builtin:
.LFB81:
	.loc 1 4214 0
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
	.loc 1 4215 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4216 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4217 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4220 0
	call	emit_queue@PLT
	.loc 1 4222 0
	movl	-36(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	jne	.L1275
	.loc 1 4223 0
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
	jmp	.L1277
.L1275:
	.loc 1 4228 0
	movl	-28(%ebp), %eax
	subl	$32, %eax
	movl	%eax, -72(%ebp)
	cmpl	$17, -72(%ebp)
	ja	.L1278
	movl	$1, %eax
	movzbl	-72(%ebp), %ecx
	sall	%cl, %eax
	andl	$183297, %eax
	testl	%eax, %eax
	jne	.L1279
	jmp	.L1278
.L1279:
	.loc 1 4235 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_call@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1278:
	.loc 1 4244 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1280
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	$10, 8(%esp)
	leal	.LC326@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L1280
	.loc 1 4245 0
	movl	-28(%ebp), %eax
	movl	%eax, -76(%ebp)
	cmpl	$52, -76(%ebp)
	ja	.L1284
	cmpl	$48, -76(%ebp)
	jae	.L1283
	cmpl	$33, -76(%ebp)
	ja	.L1285
	cmpl	$29, -76(%ebp)
	jae	.L1283
	movl	-76(%ebp), %eax
	subl	$23, %eax
	cmpl	$3, %eax
	ja	.L1280
	jmp	.L1283
.L1285:
	cmpl	$35, -76(%ebp)
	jb	.L1280
	cmpl	$39, -76(%ebp)
	jbe	.L1283
	cmpl	$41, -76(%ebp)
	je	.L1283
	jmp	.L1280
.L1284:
	cmpl	$218, -76(%ebp)
	ja	.L1286
	cmpl	$215, -76(%ebp)
	jae	.L1283
	cmpl	$205, -76(%ebp)
	jb	.L1280
	cmpl	$208, -76(%ebp)
	jbe	.L1283
	movl	-76(%ebp), %eax
	subl	$210, %eax
	cmpl	$3, %eax
	ja	.L1280
	jmp	.L1283
.L1286:
	cmpl	$251, -76(%ebp)
	je	.L1283
	cmpl	$251, -76(%ebp)
	jb	.L1280
	movl	-76(%ebp), %eax
	subl	$263, %eax
	cmpl	$5, %eax
	ja	.L1280
.L1283:
	.loc 1 4312 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_call@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1280:
	.loc 1 4320 0
	cmpl	$0, 24(%ebp)
	je	.L1287
	.loc 1 4321 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 12(%ebp)
.L1287:
	.loc 1 4326 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1289
	movl	-36(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1291
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1289
.L1291:
.LBB50:
	.loc 1 4329 0
	movb	$0, -9(%ebp)
	.loc 1 4332 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1293
.L1294:
	.loc 1 4333 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1295
	.loc 1 4335 0
	movb	$1, -9(%ebp)
	.loc 1 4336 0
	jmp	.L1297
.L1295:
	.loc 1 4332 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1293:
	cmpl	$0, -24(%ebp)
	jne	.L1294
.L1297:
	.loc 1 4339 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1289
	.loc 1 4341 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1299
.L1300:
	.loc 1 4342 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 4341 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1299:
	cmpl	$0, -24(%ebp)
	jne	.L1300
	.loc 1 4344 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1289:
.LBE50:
	.loc 1 4348 0
	cmpl	$288, -28(%ebp)
	ja	.L1302
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L1348@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1348:
	.long	.L1303@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1304@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1305@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1307@GOTOFF
	.long	.L1308@GOTOFF
	.long	.L1309@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1310@GOTOFF
	.long	.L1311@GOTOFF
	.long	.L1308@GOTOFF
	.long	.L1312@GOTOFF
	.long	.L1313@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1314@GOTOFF
	.long	.L1315@GOTOFF
	.long	.L1316@GOTOFF
	.long	.L1317@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1319@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1322@GOTOFF
	.long	.L1323@GOTOFF
	.long	.L1324@GOTOFF
	.long	.L1325@GOTOFF
	.long	.L1326@GOTOFF
	.long	.L1327@GOTOFF
	.long	.L1327@GOTOFF
	.long	.L1328@GOTOFF
	.long	.L1329@GOTOFF
	.long	.L1330@GOTOFF
	.long	.L1331@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1332@GOTOFF
	.long	.L1333@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1334@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1302@GOTOFF
	.long	.L1335@GOTOFF
	.long	.L1336@GOTOFF
	.long	.L1337@GOTOFF
	.long	.L1338@GOTOFF
	.long	.L1339@GOTOFF
	.long	.L1340@GOTOFF
	.long	.L1341@GOTOFF
	.long	.L1342@GOTOFF
	.long	.L1343@GOTOFF
	.long	.L1343@GOTOFF
	.long	.L1344@GOTOFF
	.long	.L1345@GOTOFF
	.long	.L1346@GOTOFF
	.long	.L1347@GOTOFF
	.text
.L1304:
	.loc 1 4358 0
	leal	__FUNCTION__.18166@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4358, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1305:
	.loc 1 4371 0
	leal	__FUNCTION__.18166@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4371, 4(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1321:
	.loc 1 4387 0
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1349
.L1320:
	.loc 1 4399 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_mathfn
	movl	%eax, 12(%ebp)
	.loc 1 4400 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4401 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1277
.L1329:
	.loc 1 4405 0
	call	expand_builtin_apply_args
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1330:
	.loc 1 4418 0
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$14, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1352
	movl	$6, 16(%esp)
	movl	$7, 12(%esp)
	movl	$14, 8(%esp)
	movl	$16, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1352
	.loc 1 4422 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1352:
.LBB51:
	.loc 1 4429 0
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L1355
.L1356:
	.loc 1 4430 0
	movl	-20(%ebp), %esi
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -48(%ebp,%esi,4)
	.loc 1 4429 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -20(%ebp)
.L1355:
	cmpl	$0, -16(%ebp)
	jne	.L1356
	.loc 1 4432 0
	movl	-40(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_builtin_apply
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1331:
.LBE51:
	.loc 1 4439 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	je	.L1358
	.loc 1 4440 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, (%esp)
	call	expand_builtin_return
.L1358:
	.loc 1 4442 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1322:
	.loc 1 4445 0
	call	expand_builtin_saveregs@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1325:
	.loc 1 4448 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_args_info
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1324:
	.loc 1 4452 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_next_arg
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1323:
	.loc 1 4455 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_classify_type
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1326:
	.loc 1 4458 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_constant_p
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1327:
	.loc 1 4462 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_frame_address
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1328:
	.loc 1 4467 0
	cmpl	$0, -32(%ebp)
	jne	.L1360
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1362
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1362
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1362
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L1362
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L1360
.L1362:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1367
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1369
.L1367:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -64(%ebp)
.L1369:
	movl	-64(%ebp), %ecx
	movzwl	(%ecx), %eax
	cmpw	$76, %ax
	je	.L1370
.L1360:
	.loc 1 4470 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1370:
	.loc 1 4472 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1371
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1373
.L1371:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -60(%ebp)
.L1373:
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1303:
	.loc 1 4475 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_alloca
	movl	%eax, 12(%ebp)
	.loc 1 4476 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4477 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1277
.L1309:
	.loc 1 4481 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_ffs
	movl	%eax, 12(%ebp)
	.loc 1 4482 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4483 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1277
.L1319:
	.loc 1 4487 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_strlen
	movl	%eax, 12(%ebp)
	.loc 1 4488 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4489 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1316:
	.loc 1 4493 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_strcpy
	movl	%eax, 12(%ebp)
	.loc 1 4494 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4495 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1277
.L1317:
	.loc 1 4499 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_strncpy
	movl	%eax, 12(%ebp)
	.loc 1 4500 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4501 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1277
.L1315:
	.loc 1 4505 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_stpcpy
	movl	%eax, 12(%ebp)
	.loc 1 4506 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4507 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1314:
	.loc 1 4519 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_strncat
	movl	%eax, 12(%ebp)
	.loc 1 4520 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4521 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1277
.L1310:
	.loc 1 4565 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memcpy
	movl	%eax, 12(%ebp)
	.loc 1 4566 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4567 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1277
.L1313:
	.loc 1 4571 0
	movl	$1, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_mempcpy
	movl	%eax, 12(%ebp)
	.loc 1 4572 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4573 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1311:
	.loc 1 4577 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memmove
	movl	%eax, 12(%ebp)
	.loc 1 4578 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4579 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1277
.L1307:
	.loc 1 4583 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_bcopy
	movl	%eax, 12(%ebp)
	.loc 1 4584 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4585 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1277
.L1312:
	.loc 1 4589 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_memset
	movl	%eax, 12(%ebp)
	.loc 1 4590 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4591 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1306:
	.loc 1 4595 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_bzero
	movl	%eax, 12(%ebp)
	.loc 1 4596 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4597 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1277
.L1318:
	.loc 1 4601 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_strcmp
	movl	%eax, 12(%ebp)
	.loc 1 4602 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4603 0
	movl	12(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L1277
.L1308:
	.loc 1 4616 0
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
	.loc 1 4617 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4618 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1332:
	.loc 1 4633 0
	movl	$6, 12(%esp)
	movl	$7, 8(%esp)
	movl	$14, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	je	.L1349
	.loc 1 4651 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1333:
	.loc 1 4655 0
	call	expand_builtin_trap@PLT
	.loc 1 4656 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1334:
	.loc 1 4672 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_sprintf
	movl	%eax, 12(%ebp)
	.loc 1 4673 0
	cmpl	$0, 12(%ebp)
	je	.L1349
	.loc 1 4674 0
	movl	12(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L1277
.L1335:
	.loc 1 4679 0
	call	expand_builtin_unwind_init@PLT
	.loc 1 4680 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1336:
	.loc 1 4682 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1337:
	.loc 1 4685 0
	call	expand_builtin_dwarf_sp_column@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1338:
	.loc 1 4687 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_builtin_init_dwarf_reg_sizes@PLT
	.loc 1 4688 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1339:
	.loc 1 4691 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_builtin_frob_return_addr@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1340:
	.loc 1 4693 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_builtin_extract_return_addr@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1341:
	.loc 1 4695 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_builtin_eh_return@PLT
	.loc 1 4697 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1342:
	.loc 1 4700 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_eh_return_data_regno@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1347:
	.loc 1 4704 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_builtin_extend_pointer@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1343:
	.loc 1 4707 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_va_start
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1344:
	.loc 1 4709 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_va_end
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1345:
	.loc 1 4711 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_va_copy
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1346:
	.loc 1 4713 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_builtin_expect
	movl	%eax, -68(%ebp)
	jmp	.L1277
.L1302:
	.loc 1 4740 0
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L1349
	.loc 1 4741 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC327@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1349:
	.loc 1 4747 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_call@PLT
	movl	%eax, -68(%ebp)
.L1277:
	movl	-68(%ebp), %eax
	.loc 1 4748 0
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
	.loc 1 4756 0
	pushl	%ebp
.LCFI283:
	movl	%esp, %ebp
.LCFI284:
	subl	$4, %esp
.LCFI285:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4757 0
	cmpl	$0, 8(%ebp)
	jne	.L1410
	.loc 1 4758 0
	movl	$0, -4(%ebp)
	jmp	.L1412
.L1410:
	.loc 1 4760 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4765 0
	jmp	.L1413
.L1414:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1413:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1415
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1415
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1418
.L1415:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1418
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
	je	.L1414
.L1418:
	.loc 1 4768 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	je	.L1420
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1422
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1420
.L1422:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1424
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1424
.L1420:
	.loc 1 4773 0
	movl	global_trees@GOT(%ecx), %eax
	movl	48(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1412
.L1424:
	.loc 1 4783 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1426
	movl	cse_not_expected@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1426
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1426
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1426
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1426
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L1426
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	je	.L1426
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1426
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L1426
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1436
.L1426:
	.loc 1 4787 0
	movl	global_trees@GOT(%ecx), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1412
.L1436:
	.loc 1 4789 0
	movl	$0, -4(%ebp)
.L1412:
	movl	-4(%ebp), %eax
	.loc 1 4790 0
	leave
	ret
.LFE82:
	.size	fold_builtin_constant_p, .-fold_builtin_constant_p
	.type	fold_builtin_classify_type, @function
fold_builtin_classify_type:
.LFB83:
	.loc 1 4797 0
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
	.loc 1 4798 0
	cmpl	$0, 8(%ebp)
	jne	.L1439
	.loc 1 4799 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1441
.L1439:
	.loc 1 4801 0
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
.L1441:
	movl	-8(%ebp), %eax
	.loc 1 4802 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	fold_builtin_classify_type, .-fold_builtin_classify_type
	.section	.rodata
	.align 4
.LC328:
	.string	"target format does not support infinity"
	.text
	.type	fold_builtin_inf, @function
fold_builtin_inf:
.LFB84:
	.loc 1 4810 0
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
	.loc 1 4813 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1444
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1444
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	je	.L1444
	cmpl	$0, 12(%ebp)
	je	.L1444
	.loc 1 4814 0
	leal	.LC328@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1444:
	.loc 1 4816 0
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	real_inf@PLT
	.loc 1 4817 0
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
	.loc 1 4818 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	fold_builtin_inf, .-fold_builtin_inf
	.type	fold_builtin_nan, @function
fold_builtin_nan:
.LFB85:
	.loc 1 4826 0
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
	.loc 1 4830 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	jne	.L1451
	.loc 1 4831 0
	movl	$0, -40(%ebp)
	jmp	.L1453
.L1451:
	.loc 1 4832 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	c_getstr
	movl	%eax, -8(%ebp)
	.loc 1 4833 0
	cmpl	$0, -8(%ebp)
	jne	.L1454
	.loc 1 4834 0
	movl	$0, -40(%ebp)
	jmp	.L1453
.L1454:
	.loc 1 4836 0
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
	je	.L1456
	.loc 1 4837 0
	movl	$0, -40(%ebp)
	jmp	.L1453
.L1456:
	.loc 1 4839 0
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
.L1453:
	movl	-40(%ebp), %eax
	.loc 1 4840 0
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
	.loc 1 4848 0
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
	.loc 1 4849 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4850 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4851 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4853 0
	movl	-20(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	jne	.L1460
	.loc 1 4854 0
	movl	$0, -24(%ebp)
	jmp	.L1462
.L1460:
	.loc 1 4856 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$228, -28(%ebp)
	ja	.L1471
	cmpl	$226, -28(%ebp)
	jae	.L1467
	cmpl	$222, -28(%ebp)
	ja	.L1466
	cmpl	$220, -28(%ebp)
	jae	.L1465
	cmpl	$41, -28(%ebp)
	je	.L1464
	jmp	.L1463
.L1471:
	cmpl	$233, -28(%ebp)
	je	.L1469
	cmpl	$233, -28(%ebp)
	ja	.L1472
	cmpl	$231, -28(%ebp)
	ja	.L1463
	jmp	.L1468
.L1472:
	cmpl	$236, -28(%ebp)
	je	.L1470
	jmp	.L1463
.L1470:
	.loc 1 4859 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_builtin_constant_p
	movl	%eax, -24(%ebp)
	jmp	.L1462
.L1469:
	.loc 1 4862 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_builtin_classify_type
	movl	%eax, -24(%ebp)
	jmp	.L1462
.L1464:
	.loc 1 4865 0
	movl	$6, 8(%esp)
	movl	$14, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_arglist
	testl	%eax, %eax
	je	.L1463
.LBB52:
	.loc 1 4867 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	c_strlen
	movl	%eax, -8(%ebp)
	.loc 1 4868 0
	cmpl	$0, -8(%ebp)
	je	.L1463
	.loc 1 4871 0
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	.L1476
	.loc 1 4872 0
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -8(%ebp)
.L1476:
	.loc 1 4873 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1462
.L1465:
.LBE52:
	.loc 1 4881 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	fold_builtin_inf
	movl	%eax, -24(%ebp)
	jmp	.L1462
.L1466:
	.loc 1 4886 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	fold_builtin_inf
	movl	%eax, -24(%ebp)
	jmp	.L1462
.L1467:
	.loc 1 4891 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_builtin_nan
	movl	%eax, -24(%ebp)
	jmp	.L1462
.L1468:
	.loc 1 4896 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_builtin_nan
	movl	%eax, -24(%ebp)
	jmp	.L1462
.L1463:
	.loc 1 4902 0
	movl	$0, -24(%ebp)
.L1462:
	movl	-24(%ebp), %eax
	.loc 1 4903 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	fold_builtin, .-fold_builtin
	.type	build_function_call_expr, @function
build_function_call_expr:
.LFB87:
	.loc 1 4908 0
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
	.loc 1 4911 0
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
	.loc 1 4912 0
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
	.loc 1 4914 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 4915 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	.loc 1 4916 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	build_function_call_expr, .-build_function_call_expr
	.type	validate_arglist, @function
validate_arglist:
.LFB88:
	.loc 1 4925 0
	pushl	%ebp
.LCFI306:
	movl	%esp, %ebp
.LCFI307:
	subl	$20, %esp
.LCFI308:
	.loc 1 4927 0
	movl	$0, -4(%ebp)
	.loc 1 4935 0
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1482:
	.loc 1 4940 0
	movl	-12(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, -12(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4941 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1484
	cmpl	$6, -20(%ebp)
	je	.L1485
	jmp	.L1483
.L1484:
	.loc 1 4945 0
	movl	$1, -4(%ebp)
	.loc 1 4946 0
	jmp	.L1486
.L1485:
	.loc 1 4950 0
	cmpl	$0, 8(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	.loc 1 4951 0
	jmp	.L1486
.L1483:
	.loc 1 4956 0
	cmpl	$0, 8(%ebp)
	je	.L1486
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	-8(%ebp), %eax
	jne	.L1486
	.loc 1 4961 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4963 0
	jmp	.L1482
.L1486:
	.loc 1 4974 0
	movl	-4(%ebp), %eax
	.loc 1 4975 0
	leave
	ret
.LFE88:
	.size	validate_arglist, .-validate_arglist
.globl default_init_builtins
	.type	default_init_builtins, @function
default_init_builtins:
.LFB89:
	.loc 1 4981 0
	pushl	%ebp
.LCFI309:
	movl	%esp, %ebp
.LCFI310:
	.loc 1 4982 0
	popl	%ebp
	ret
.LFE89:
	.size	default_init_builtins, .-default_init_builtins
.globl default_expand_builtin
	.type	default_expand_builtin, @function
default_expand_builtin:
.LFB90:
	.loc 1 4993 0
	pushl	%ebp
.LCFI311:
	movl	%esp, %ebp
.LCFI312:
	.loc 1 4994 0
	movl	$0, %eax
	.loc 1 4995 0
	popl	%ebp
	ret
.LFE90:
	.size	default_expand_builtin, .-default_expand_builtin
	.type	readonly_data_expr, @function
readonly_data_expr:
.LFB91:
	.loc 1 5003 0
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
	.loc 1 5004 0
	jmp	.L1495
.L1496:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1495:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1497
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1497
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1500
.L1497:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1500
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
	je	.L1496
.L1500:
	.loc 1 5006 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1502
	.loc 1 5007 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	decl_readonly_section@PLT
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	jmp	.L1504
.L1502:
	.loc 1 5009 0
	movl	$0, -8(%ebp)
.L1504:
	movl	-8(%ebp), %eax
	.loc 1 5010 0
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
	.loc 1 5016 0
	pushl	%ebp
.LCFI317:
	movl	%esp, %ebp
.LCFI318:
	subl	$8, %esp
.LCFI319:
	.loc 1 5018 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_strlen
	.loc 1 5022 0
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
	.comm	built_in_decls,1188,32
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
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/tree.h"
	.file 4 "../../../kgccfe/gnu/rtl.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/bitmap.h"
	.file 7 "../../../kgccfe/gnu/basic-block.h"
	.file 8 "../../../kgccfe/gnu/sbitmap.h"
	.file 9 "../../../kgccfe/gnu/real.h"
	.file 10 "../../../kgccfe/gnu/hashtable.h"
	.file 11 "../../../kgccfe/gnu/location.h"
	.file 12 "../../../kgccfe/gnu/function.h"
	.file 13 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 14 "../../../kgccfe/omp_types.h"
	.file 15 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 16 "../../../kgccfe/gnu/typeclass.h"
	.file 17 "../../../kgccfe/gnu/optabs.h"
	.file 18 "../../../kgccfe/gnu/MIPS/insn-codes.h"
	.file 19 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 20 "../../../kgccfe/gnu/flags.h"
	.file 21 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 22 "../../../kgccfe/gnu/libfuncs.h"
	.file 23 "../../../kgccfe/gnu/recog.h"
	.file 24 "../../../kgccfe/gnu/target.h"
	.file 25 "/usr/include/stdio.h"
	.file 26 "/usr/include/libio.h"
	.file 27 "/usr/include/bits/types.h"
	.file 28 "../../../kgccfe/gnu/langhooks.h"
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
	.long	0xd392
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/builtins.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
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
	.byte	0x8a
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
	.byte	0x8d
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
	.byte	0x94
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
	.byte	0x97
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
	.byte	0x9f
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
	.byte	0xa8
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
	.byte	0xba
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
	.byte	0xc1
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
	.byte	0xc6
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
	.byte	0xcf
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
	.byte	0xd4
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
	.byte	0xf8
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf9
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
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x3
	.value	0x855
	.long	0x3aad
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x3
	.value	0x856
	.long	0x3dc6
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x3
	.value	0x857
	.long	0x3e0e
	.uleb128 0xa
	.string	"vector"
	.byte	0x3
	.value	0x858
	.long	0x3f1e
	.uleb128 0xa
	.string	"string"
	.byte	0x3
	.value	0x859
	.long	0x3e5c
	.uleb128 0xa
	.string	"complex"
	.byte	0x3
	.value	0x85a
	.long	0x3ec9
	.uleb128 0xa
	.string	"identifier"
	.byte	0x3
	.value	0x85b
	.long	0x3fa4
	.uleb128 0xa
	.string	"decl"
	.byte	0x3
	.value	0x85c
	.long	0x5027
	.uleb128 0x9
	.long	.LASF2
	.byte	0x3
	.value	0x85d
	.long	0x4209
	.uleb128 0xa
	.string	"list"
	.byte	0x3
	.value	0x85e
	.long	0x3fdb
	.uleb128 0xa
	.string	"vec"
	.byte	0x3
	.value	0x85f
	.long	0x4022
	.uleb128 0xa
	.string	"exp"
	.byte	0x3
	.value	0x860
	.long	0x4073
	.uleb128 0xa
	.string	"block"
	.byte	0x3
	.value	0x861
	.long	0x40bf
	.uleb128 0xa
	.string	"omp"
	.byte	0x3
	.value	0x863
	.long	0x59bb
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
	.byte	0x24
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
	.byte	0x32
	.uleb128 0x5
	.string	"class"
	.byte	0x9
	.byte	0x37
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x2f
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
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x4f
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
	.byte	0x51
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
	.byte	0x52
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
	.byte	0x54
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
	.byte	0x56
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
	.byte	0x58
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
	.byte	0x5b
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
	.byte	0x5d
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
	.byte	0x5e
	.long	0x13cd
	.uleb128 0x14
	.long	0x1518
	.long	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x69
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x6a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x4
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x4
	.byte	0x6c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x4
	.byte	0x6d
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x4
	.byte	0x6e
	.long	0x14c2
	.uleb128 0x8
	.long	0x15f5
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x20
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x483
	.uleb128 0x20
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x2e3
	.uleb128 0x20
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x3bc
	.uleb128 0x20
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x2d0
	.uleb128 0x20
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0x9d
	.uleb128 0x20
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x19d
	.uleb128 0x20
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x849
	.uleb128 0x20
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x14a7
	.uleb128 0x20
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x1609
	.uleb128 0x20
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x1671
	.uleb128 0x20
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e5
	.uleb128 0x20
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x17fc
	.uleb128 0x20
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
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
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x5bb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x5bb1
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
	.byte	0x7f
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
	.long	0x5d02
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x7
	.byte	0xbc
	.long	0x5d02
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x7
	.byte	0xc1
	.long	0x5c33
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x7
	.byte	0xc5
	.long	0x5c33
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x7
	.byte	0xcb
	.long	0x5c33
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x7
	.byte	0xcd
	.long	0x5c33
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
	.long	0x5f7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x7
	.byte	0xdf
	.long	0x5c41
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
	.byte	0x82
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
	.byte	0x27
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
	.byte	0x31
	.long	0x3bc
	.uleb128 0x4
	.long	0x21f0
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x32
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.byte	0x32
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x3
	.byte	0x32
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x36
	.long	0x21fa
	.uleb128 0x21
	.string	"st"
	.byte	0x1
	.uleb128 0x1c
	.long	0x224f
	.long	.LASF10
	.byte	0x4
	.byte	0x3
	.byte	0x5a
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
	.long	0x3aad
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x69
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
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x1b
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x1b
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x1b
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x1b
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x1b
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x1b
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x1b
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x1b
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x1b
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x1b
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x1b
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x1b
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x1b
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x1b
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x1b
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x1b
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x1b
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x1b
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x1b
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x1b
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x1b
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x1b
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x1b
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x1b
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x1b
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x1b
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x1b
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x1b
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x1b
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x1b
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x1b
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x1b
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x1b
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x1b
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x1b
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x1b
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x1b
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x1b
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x1b
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x1b
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x1b
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x1b
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x1b
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x1b
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x1b
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x1b
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x1b
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x1b
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x1b
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x1b
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x1b
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x1b
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x1b
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x1b
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x1b
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x1b
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x1b
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x1b
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x1b
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x1b
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x1b
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x1b
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x1b
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x1b
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x1b
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x1b
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x1b
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x1b
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x1b
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x1b
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x1b
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x1b
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x1b
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x1b
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x1b
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x1b
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x1b
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x1b
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x1b
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x1b
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x1b
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x1b
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x1b
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x1b
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x1b
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x1b
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x1b
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x1b
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x1b
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x1b
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x1b
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x1b
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x1b
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x1b
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x1b
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x1b
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x1b
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x1b
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x1b
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x1b
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x1b
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x1b
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x1b
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x1b
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x1b
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x1b
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x1b
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x1b
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x1b
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x1b
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x1b
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x1b
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x1b
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x1b
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3d8a
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8e
	.uleb128 0x7
	.string	"chain"
	.byte	0x3
	.byte	0x8f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x3
	.byte	0x90
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x92
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
	.byte	0x94
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
	.byte	0x95
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
	.byte	0x96
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
	.byte	0x97
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
	.byte	0x98
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
	.byte	0x99
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
	.byte	0x9a
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_0"
	.byte	0x3
	.byte	0x9b
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
	.byte	0x9d
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
	.byte	0x9e
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
	.byte	0x9f
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
	.byte	0xa0
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
	.byte	0xa1
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
	.byte	0xa2
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
	.byte	0xa3
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
	.byte	0xa4
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
	.byte	0xa6
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
	.byte	0xa7
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
	.byte	0xa8
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
	.byte	0xa9
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
	.byte	0xaa
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
	.byte	0xab
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
	.byte	0xac
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_1"
	.byte	0x3
	.byte	0xad
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
	.byte	0xaf
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
	.byte	0xb0
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
	.byte	0xb1
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
	.byte	0xb2
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
	.byte	0xb3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x3dc6
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x2f6
	.uleb128 0xe
	.string	"low"
	.byte	0x3
	.value	0x2f7
	.long	0x494
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x3
	.value	0x2f8
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3e0e
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x2ef
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x2f0
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x2f1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x3
	.value	0x2f9
	.long	0x3d8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3e5c
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x30b
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x30c
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x30d
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x30e
	.long	0xbef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3ec3
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x31f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x320
	.long	0x3aad
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
	.string	"length"
	.byte	0x3
	.value	0x322
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x3
	.value	0x323
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x3
	.value	0x325
	.long	0x3ec3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x21f0
	.uleb128 0xd
	.long	0x3f1e
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x32e
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x32f
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x330
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x3
	.value	0x331
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x3
	.value	0x332
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x3f66
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x340
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x341
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x342
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x3
	.value	0x343
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	0x3fa4
	.long	.LASF18
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
	.long	0x3fdb
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x35f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x360
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x3
	.value	0x361
	.long	0x3f66
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x4022
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x369
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x36a
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x3
	.value	0x36b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"value"
	.byte	0x3
	.value	0x36c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4063
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x377
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x378
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x3
	.value	0x379
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x3
	.value	0x37a
	.long	0x4063
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x4073
	.long	0x1e5
	.uleb128 0x11
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x40bf
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3bd
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x3be
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x3
	.value	0x3bf
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x3
	.value	0x3c2
	.long	0x4063
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x41af
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x3f3
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x3f4
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x3f6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.long	.LASF19
	.byte	0x3
	.value	0x3f7
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
	.value	0x3f8
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
	.value	0x3fa
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x3
	.value	0x3fb
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x3
	.value	0x3fc
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.long	.LASF20
	.byte	0x3
	.value	0x3fd
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x3
	.value	0x3fe
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x3
	.value	0x3ff
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x25
	.long	0x41f6
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x562
	.uleb128 0xa
	.string	"address"
	.byte	0x3
	.value	0x563
	.long	0x2e3
	.uleb128 0xa
	.string	"pointer"
	.byte	0x3
	.value	0x564
	.long	0x4ec
	.uleb128 0xa
	.string	"die"
	.byte	0x3
	.value	0x565
	.long	0x4203
	.byte	0x0
	.uleb128 0x21
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x41f6
	.uleb128 0xd
	.long	0x4557
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x53f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x540
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x3
	.value	0x541
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF8
	.byte	0x3
	.value	0x542
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x22
	.long	.LASF21
	.byte	0x3
	.value	0x543
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF22
	.byte	0x3
	.value	0x544
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x545
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"precision"
	.byte	0x3
	.value	0x547
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
	.value	0x548
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
	.value	0x54a
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
	.value	0x54b
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
	.value	0x54c
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
	.value	0x54d
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
	.value	0x54e
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
	.value	0x54f
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x3
	.value	0x550
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
	.value	0x552
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
	.value	0x553
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
	.value	0x554
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
	.value	0x555
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
	.value	0x556
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
	.value	0x557
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
	.value	0x558
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF24
	.byte	0x3
	.value	0x559
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"defer_expansion"
	.byte	0x3
	.value	0x55c
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF9
	.byte	0x3
	.value	0x55f
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x3
	.value	0x560
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x3
	.value	0x561
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"symtab"
	.byte	0x3
	.value	0x566
	.long	0x41af
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x22
	.long	.LASF25
	.byte	0x3
	.value	0x568
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"minval"
	.byte	0x3
	.value	0x569
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"maxval"
	.byte	0x3
	.value	0x56a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x3
	.value	0x56b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x3
	.value	0x56c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"binfo"
	.byte	0x3
	.value	0x56d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"context"
	.byte	0x3
	.value	0x56e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x3
	.value	0x56f
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x22
	.long	.LASF26
	.byte	0x3
	.value	0x571
	.long	0x4563
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x3
	.value	0x573
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x3
	.value	0x574
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x3
	.value	0x575
	.long	0x21b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x21
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4557
	.uleb128 0xd
	.long	0x45ac
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x7f0
	.uleb128 0x24
	.long	.LASF9
	.byte	0x3
	.value	0x7f1
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
	.value	0x7f2
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x45e1
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x7e7
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x7ea
	.long	0x224f
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x7ed
	.long	0x483
	.uleb128 0xa
	.string	"a"
	.byte	0x3
	.value	0x7f3
	.long	0x4569
	.byte	0x0
	.uleb128 0x25
	.long	0x4620
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x808
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x809
	.long	0x4fd3
	.uleb128 0xa
	.string	"r"
	.byte	0x3
	.value	0x80a
	.long	0x9d
	.uleb128 0xa
	.string	"t"
	.byte	0x3
	.value	0x80b
	.long	0x1e5
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x80c
	.long	0x2e3
	.byte	0x0
	.uleb128 0x26
	.long	0x4fd3
	.long	.LASF27
	.value	0x134
	.byte	0x4
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x6303
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x6317
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x631d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x6323
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x6339
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF25
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
	.long	0x4fd3
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
	.long	.LASF28
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
	.long	0x6356
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
	.long	0x6368
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
	.long	0x6009
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
	.long	0x6381
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
	.long	0x639b
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
	.long	.LASF29
	.byte	0xc
	.value	0x1fa
	.long	0x628d
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
	.long	0x4620
	.uleb128 0x27
	.long	0x5011
	.byte	0x4
	.byte	0x3
	.value	0x81e
	.uleb128 0xa
	.string	"st"
	.byte	0x3
	.value	0x81f
	.long	0x3ec3
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x3
	.value	0x820
	.long	0x21a3
	.uleb128 0xa
	.string	"field_id"
	.byte	0x3
	.value	0x821
	.long	0x3bc
	.byte	0x0
	.uleb128 0x27
	.long	0x5027
	.byte	0x4
	.byte	0x3
	.value	0x823
	.uleb128 0xa
	.string	"st2"
	.byte	0x3
	.value	0x824
	.long	0x3ec3
	.byte	0x0
	.uleb128 0xd
	.long	0x5758
	.string	"tree_decl"
	.byte	0x94
	.byte	0x3
	.value	0x7a0
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x7a1
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x3
	.value	0x7a2
	.long	0x186f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x7a3
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF8
	.byte	0x3
	.value	0x7a4
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x24
	.long	.LASF0
	.byte	0x3
	.value	0x7a5
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
	.value	0x7a7
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
	.value	0x7a8
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
	.value	0x7a9
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
	.value	0x7aa
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
	.value	0x7ab
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
	.value	0x7ac
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
	.value	0x7ad
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.long	.LASF19
	.byte	0x3
	.value	0x7ae
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
	.value	0x7b2
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
	.value	0x7b3
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
	.value	0x7b4
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
	.value	0x7b5
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
	.value	0x7b6
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
	.value	0x7ba
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
	.value	0x7bb
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
	.value	0x7bc
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
	.value	0x7bd
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
	.value	0x7be
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
	.value	0x7bf
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
	.value	0x7c0
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
	.value	0x7c1
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
	.value	0x7c3
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
	.value	0x7c4
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
	.value	0x7c5
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
	.value	0x7c6
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
	.value	0x7c7
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
	.value	0x7c8
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
	.value	0x7c9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x3
	.value	0x7cb
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
	.value	0x7cc
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF24
	.byte	0x3
	.value	0x7cd
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
	.value	0x7ce
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
	.value	0x7cf
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
	.value	0x7d0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"noinline_attrib"
	.byte	0x3
	.value	0x7d2
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
	.value	0x7d5
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
	.value	0x7d6
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
	.value	0x7d7
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
	.value	0x7d8
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
	.value	0x7d9
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
	.value	0x7da
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
	.value	0x7db
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"lang_flag_7"
	.byte	0x3
	.value	0x7dc
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
	.value	0x7df
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
	.value	0x7e0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"promote_static"
	.byte	0x3
	.value	0x7e3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"always_inline_attrib"
	.byte	0x3
	.value	0x7e4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x3
	.value	0x7f4
	.long	0x45ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF21
	.byte	0x3
	.value	0x7f6
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x22
	.long	.LASF25
	.byte	0x3
	.value	0x7f7
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x3
	.value	0x7f8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x22
	.long	.LASF30
	.byte	0x3
	.value	0x7f9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x22
	.long	.LASF31
	.byte	0x3
	.value	0x7fa
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x3
	.value	0x7fb
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x22
	.long	.LASF20
	.byte	0x3
	.value	0x7fc
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x3
	.value	0x7fd
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x3
	.value	0x7fe
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x22
	.long	.LASF22
	.byte	0x3
	.value	0x7ff
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x800
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x801
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"u2"
	.byte	0x3
	.value	0x80d
	.long	0x45e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x3
	.value	0x810
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x3
	.value	0x814
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"vindex"
	.byte	0x3
	.value	0x816
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x817
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x22
	.long	.LASF26
	.byte	0x3
	.value	0x819
	.long	0x5764
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x23
	.string	"symtab_idx"
	.byte	0x3
	.value	0x81b
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x23
	.string	"label_defined"
	.byte	0x3
	.value	0x81c
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x3
	.value	0x822
	.long	0x4fd9
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"sgi_u2"
	.byte	0x3
	.value	0x825
	.long	0x5011
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x826
	.long	0x21b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x3
	.value	0x82a
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x21
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5758
	.uleb128 0x1a
	.long	0x59bb
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1e
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
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x1b
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x1b
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x1b
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x1b
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x1b
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x1b
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x1b
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x1b
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x1b
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x1b
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xd
	.long	0x5a0a
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x832
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x833
	.long	0x3aad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x3
	.value	0x834
	.long	0x576a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x835
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x5ac5
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0x9db
	.uleb128 0x22
	.long	.LASF25
	.byte	0x3
	.value	0x9de
	.long	0x5ac5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x3
	.value	0x9e0
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x3
	.value	0x9e3
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x3
	.value	0x9eb
	.long	0x5aca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x3
	.value	0x9ee
	.long	0x5aca
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x3
	.value	0x9f3
	.long	0x5aca
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x3
	.value	0xa02
	.long	0x5aff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2d0
	.uleb128 0xb
	.long	0xbf5
	.uleb128 0x28
	.long	0x5af3
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x5af3
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x5af9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5
	.uleb128 0x3
	.byte	0x4
	.long	0xbf5
	.uleb128 0xb
	.long	0x5b04
	.uleb128 0x3
	.byte	0x4
	.long	0x5acf
	.uleb128 0x10
	.long	0x5b1a
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
	.long	0x5b85
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x5b85
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x5b85
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
	.long	0x5b8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b2d
	.uleb128 0x10
	.long	0x5b9b
	.long	0x5b1a
	.uleb128 0x11
	.long	0x3d3
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x5b2d
	.uleb128 0x3
	.byte	0x4
	.long	0x5b9b
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x1671
	.uleb128 0x4
	.long	0x5c1e
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
	.long	0x5b0a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x5c2d
	.uleb128 0x3
	.byte	0x4
	.long	0x5bc5
	.uleb128 0x2
	.string	"regset"
	.byte	0x7
	.byte	0x22
	.long	0x5bb7
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x7
	.byte	0x75
	.long	0x483
	.uleb128 0x4
	.long	0x5cfc
	.string	"edge_def"
	.byte	0x28
	.byte	0x7
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x7
	.byte	0x7a
	.long	0x5cfc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x7
	.byte	0x7a
	.long	0x5cfc
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
	.long	.LASF32
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
	.long	0x5c41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c52
	.uleb128 0x2
	.string	"edge"
	.byte	0x7
	.byte	0x89
	.long	0x5cfc
	.uleb128 0x4
	.long	0x5f7e
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
	.long	0x5f84
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x7
	.value	0x17c
	.long	0x5f84
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x7
	.value	0x17f
	.long	0x5f84
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x7
	.value	0x184
	.long	0x5f97
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
	.long	0x5f84
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x7
	.value	0x18f
	.long	0x5f84
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x7
	.value	0x192
	.long	0x5c1e
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
	.long	0x5f97
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
	.long	0x5f97
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
	.long	0x5c1e
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
	.long	0x5f9d
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
	.long	0x5f7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0x7
	.value	0x1b4
	.long	0x5f7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"next"
	.byte	0x7
	.value	0x1b7
	.long	0x5f7e
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
	.long	0x5d0e
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x7
	.byte	0xe6
	.long	0x17fc
	.uleb128 0x3
	.byte	0x4
	.long	0x5d02
	.uleb128 0x3
	.byte	0x4
	.long	0x5f7e
	.uleb128 0x4
	.long	0x6009
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
	.long	0x6009
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5fa3
	.uleb128 0x14
	.long	0x6058
	.long	.LASF33
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
	.long	.LASF34
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
	.long	0x6058
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x600f
	.uleb128 0x4
	.long	0x61ad
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
	.long	.LASF34
	.byte	0xc
	.byte	0x4a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF33
	.byte	0xc
	.byte	0x50
	.long	0x6058
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
	.long	0x5af3
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
	.long	0x628d
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
	.long	0x62f7
	.long	.LASF29
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
	.long	0x62f7
	.uleb128 0x21
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6309
	.uleb128 0x3
	.byte	0x4
	.long	0x61ad
	.uleb128 0x3
	.byte	0x4
	.long	0x605e
	.uleb128 0x21
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6329
	.uleb128 0x21
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x633f
	.uleb128 0x21
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x635c
	.uleb128 0x21
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x636e
	.uleb128 0x21
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6387
	.uleb128 0x1c
	.long	0x8500
	.long	.LASF35
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
	.long	0x8538
	.string	"optab_handlers"
	.byte	0x8
	.byte	0x11
	.byte	0x2c
	.uleb128 0x1e
	.long	.LASF35
	.byte	0x11
	.byte	0x2d
	.long	0x63a1
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
	.long	0x856a
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
	.long	0x856a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.long	0x857a
	.long	0x8500
	.uleb128 0x11
	.long	0x3d3
	.byte	0x35
	.byte	0x0
	.uleb128 0x2
	.string	"optab"
	.byte	0x11
	.byte	0x31
	.long	0x8587
	.uleb128 0x3
	.byte	0x4
	.long	0x8538
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x17
	.byte	0xd9
	.long	0x85ae
	.uleb128 0x3
	.byte	0x4
	.long	0x85b4
	.uleb128 0x28
	.long	0x85c9
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
	.long	0x85dc
	.uleb128 0x3
	.byte	0x4
	.long	0x85e2
	.uleb128 0x28
	.long	0x85f3
	.byte	0x1
	.long	0x9d
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x2b
	.byte	0x0
	.uleb128 0x4
	.long	0x8672
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x17
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0x17
	.byte	0xdf
	.long	0x8672
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"constraint"
	.byte	0x17
	.byte	0xe1
	.long	0x5ac5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF0
	.byte	0x17
	.byte	0xe3
	.long	0x8677
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
	.long	0x858d
	.uleb128 0xb
	.long	0x849
	.uleb128 0x14
	.long	0x8722
	.long	.LASF36
	.byte	0x14
	.byte	0x17
	.byte	0xf2
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x17
	.byte	0xf3
	.long	0x5ac5
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
	.long	0x8722
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"operand"
	.byte	0x17
	.byte	0xf6
	.long	0x8727
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
	.long	0x85c9
	.uleb128 0xb
	.long	0x872c
	.uleb128 0x3
	.byte	0x4
	.long	0x8732
	.uleb128 0xb
	.long	0x85f3
	.uleb128 0x1a
	.long	0x88d3
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
	.long	0x891b
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
	.long	0x8b51
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
	.long	0x88d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x18
	.byte	0x3f
	.long	0x88d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x18
	.byte	0x46
	.long	0x8b6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x18
	.byte	0x49
	.long	0x8b88
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x18
	.byte	0x4d
	.long	0x8b9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x18
	.byte	0x50
	.long	0x8bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x18
	.byte	0x53
	.long	0x8bc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x18
	.byte	0x56
	.long	0x8bc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x18
	.byte	0x59
	.long	0x8bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"named_section"
	.byte	0x18
	.byte	0x5d
	.long	0x8bdf
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
	.long	0x8bfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x18
	.byte	0x6e
	.long	0x8c17
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x18
	.byte	0x73
	.long	0x8b9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x18
	.byte	0x76
	.long	0x8c2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x18
	.byte	0x79
	.long	0x8c2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x18
	.byte	0x80
	.long	0x8c54
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x18
	.byte	0x8b
	.long	0x8c79
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x28
	.long	0x8b6b
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
	.long	0x8b51
	.uleb128 0x17
	.long	0x8b82
	.byte	0x1
	.uleb128 0x18
	.long	0x8b82
	.uleb128 0x18
	.long	0x2d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4f2
	.uleb128 0x3
	.byte	0x4
	.long	0x8b71
	.uleb128 0x17
	.long	0x8b9f
	.byte	0x1
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8b8e
	.uleb128 0x17
	.long	0x8bb6
	.byte	0x1
	.uleb128 0x18
	.long	0x8b82
	.uleb128 0x18
	.long	0x483
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8ba5
	.uleb128 0x17
	.long	0x8bc8
	.byte	0x1
	.uleb128 0x18
	.long	0x8b82
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8bbc
	.uleb128 0x17
	.long	0x8bdf
	.byte	0x1
	.uleb128 0x18
	.long	0x2d0
	.uleb128 0x18
	.long	0x3bc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8bce
	.uleb128 0x17
	.long	0x8bfb
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
	.long	0x8be5
	.uleb128 0x17
	.long	0x8c17
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
	.long	0x8c01
	.uleb128 0x17
	.long	0x8c2e
	.byte	0x1
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8c1d
	.uleb128 0x17
	.long	0x8c54
	.byte	0x1
	.uleb128 0x18
	.long	0x8b82
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
	.long	0x8c34
	.uleb128 0x28
	.long	0x8c79
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
	.long	0x8c5a
	.uleb128 0x4
	.long	0x8e3a
	.string	"sched"
	.byte	0x40
	.byte	0x18
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x18
	.byte	0x97
	.long	0x8e59
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x18
	.byte	0x9b
	.long	0x8e74
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x18
	.byte	0xa0
	.long	0x8e80
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x18
	.byte	0xa4
	.long	0x8ea5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x18
	.byte	0xa7
	.long	0x8ec1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x18
	.byte	0xaa
	.long	0x8ed8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x18
	.byte	0xae
	.long	0x8f02
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x18
	.byte	0xaf
	.long	0x8f02
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x18
	.byte	0xb4
	.long	0x8e80
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
	.long	0x8f0e
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
	.long	0x8f0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x18
	.byte	0xcd
	.long	0x8e80
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
	.long	0x8f24
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x28
	.long	0x8e59
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
	.long	0x8e3a
	.uleb128 0x28
	.long	0x8e74
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8e5f
	.uleb128 0x2c
	.byte	0x1
	.long	0x2e3
	.uleb128 0x3
	.byte	0x4
	.long	0x8e7a
	.uleb128 0x28
	.long	0x8ea5
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x8b82
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8e86
	.uleb128 0x17
	.long	0x8ec1
	.byte	0x1
	.uleb128 0x18
	.long	0x8b82
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8eab
	.uleb128 0x17
	.long	0x8ed8
	.byte	0x1
	.uleb128 0x18
	.long	0x8b82
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8ec7
	.uleb128 0x28
	.long	0x8f02
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x8b82
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
	.long	0x8ede
	.uleb128 0x2c
	.byte	0x1
	.long	0x9d
	.uleb128 0x3
	.byte	0x4
	.long	0x8f08
	.uleb128 0x28
	.long	0x8f24
	.byte	0x1
	.long	0x9d
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8f14
	.uleb128 0x4
	.long	0x91fc
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x18
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x18
	.byte	0x8f
	.long	0x891b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x18
	.byte	0xda
	.long	0x8c7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x18
	.byte	0xdd
	.long	0x9211
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x18
	.byte	0xe0
	.long	0x9211
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x18
	.byte	0xe4
	.long	0x9217
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x18
	.byte	0xe9
	.long	0x9237
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x18
	.byte	0xec
	.long	0x9249
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x18
	.byte	0xef
	.long	0x9260
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x7
	.string	"function_attribute_inlinable_p"
	.byte	0x18
	.byte	0xf3
	.long	0x9276
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x18
	.byte	0xf7
	.long	0x9276
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
	.long	.LASF38
	.byte	0x18
	.byte	0xfd
	.long	0x92a0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x18
	.value	0x103
	.long	0x92c0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x18
	.value	0x107
	.long	0x92cc
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x18
	.value	0x10a
	.long	0x92e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x18
	.value	0x10d
	.long	0x9276
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x18
	.value	0x111
	.long	0x9276
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x18
	.value	0x115
	.long	0x8b9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x18
	.value	0x118
	.long	0x92f8
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
	.long	0x9211
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x91fc
	.uleb128 0x3
	.byte	0x4
	.long	0x921d
	.uleb128 0xb
	.long	0x5a0a
	.uleb128 0x28
	.long	0x9237
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9222
	.uleb128 0x17
	.long	0x9249
	.byte	0x1
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x923d
	.uleb128 0x17
	.long	0x9260
	.byte	0x1
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x5af3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x924f
	.uleb128 0x28
	.long	0x9276
	.byte	0x1
	.long	0xbf5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9266
	.uleb128 0x28
	.long	0x92a0
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
	.long	0x927c
	.uleb128 0x28
	.long	0x92c0
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
	.long	0x92a6
	.uleb128 0x2c
	.byte	0x1
	.long	0xbf5
	.uleb128 0x3
	.byte	0x4
	.long	0x92c6
	.uleb128 0x28
	.long	0x92e2
	.byte	0x1
	.long	0xbf5
	.uleb128 0x18
	.long	0x9d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x92d2
	.uleb128 0x28
	.long	0x92f8
	.byte	0x1
	.long	0x2d0
	.uleb128 0x18
	.long	0x2d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x92e8
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x1c
	.byte	0x1d
	.long	0x931a
	.uleb128 0x3
	.byte	0x4
	.long	0x9320
	.uleb128 0x17
	.long	0x9336
	.byte	0x1
	.uleb128 0x18
	.long	0x8b82
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x4
	.long	0x94bc
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x1c
	.byte	0x24
	.long	0x9506
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x1c
	.byte	0x29
	.long	0x951c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x1c
	.byte	0x2a
	.long	0x9532
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x1c
	.byte	0x2b
	.long	0x954d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x1c
	.byte	0x2d
	.long	0x9532
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x1c
	.byte	0x2e
	.long	0x9568
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x1c
	.byte	0x2f
	.long	0x9597
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x1c
	.byte	0x34
	.long	0x9532
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x1c
	.byte	0x35
	.long	0x95ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x1c
	.byte	0x36
	.long	0x9532
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x1c
	.byte	0x37
	.long	0x95bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x1c
	.byte	0x38
	.long	0x95df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x28
	.long	0x94e0
	.byte	0x1
	.long	0x1f1
	.uleb128 0x18
	.long	0x94e0
	.uleb128 0x18
	.long	0x822
	.uleb128 0x18
	.long	0x94e6
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
	.long	0x94ec
	.uleb128 0x28
	.long	0x9506
	.byte	0x1
	.long	0x1f1
	.uleb128 0x18
	.long	0x94e0
	.uleb128 0x18
	.long	0x822
	.uleb128 0x18
	.long	0x4ea
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x94bc
	.uleb128 0x28
	.long	0x951c
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x94e0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x950c
	.uleb128 0x28
	.long	0x9532
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9522
	.uleb128 0x28
	.long	0x954d
	.byte	0x1
	.long	0x1f1
	.uleb128 0x18
	.long	0x4ea
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9538
	.uleb128 0x28
	.long	0x9568
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x1f1
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9553
	.uleb128 0x28
	.long	0x9597
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
	.long	0x956e
	.uleb128 0x28
	.long	0x95ad
	.byte	0x1
	.long	0xbf5
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x959d
	.uleb128 0x17
	.long	0x95bf
	.byte	0x1
	.uleb128 0x18
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x95b3
	.uleb128 0x28
	.long	0x95df
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
	.long	0x95c5
	.uleb128 0x4
	.long	0x9654
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x1c
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x1c
	.byte	0x42
	.long	0x9660
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x1c
	.byte	0x45
	.long	0x9660
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x1c
	.byte	0x48
	.long	0x9660
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x1c
	.byte	0x4b
	.long	0x9660
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x17
	.long	0x9660
	.byte	0x1
	.uleb128 0x18
	.long	0x4fd3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9654
	.uleb128 0x4
	.long	0x96b1
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x1c
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x1c
	.byte	0x54
	.long	0x96c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x1c
	.byte	0x57
	.long	0x96dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x28
	.long	0x96c6
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x4ea
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x96b1
	.uleb128 0x28
	.long	0x96dc
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x96cc
	.uleb128 0x4
	.long	0x97cf
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x1c
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x1c
	.byte	0x60
	.long	0x97df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x1c
	.byte	0x64
	.long	0x97fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x1c
	.byte	0x68
	.long	0x9815
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x1c
	.byte	0x6c
	.long	0x982b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x1c
	.byte	0x70
	.long	0x982b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x1c
	.byte	0x74
	.long	0x9846
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x1c
	.byte	0x7a
	.long	0x982b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x1c
	.byte	0x80
	.long	0x985d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x28
	.long	0x97df
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x1881
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x97cf
	.uleb128 0x28
	.long	0x97fa
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x849
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x97e5
	.uleb128 0x28
	.long	0x9815
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x3bc
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9800
	.uleb128 0x28
	.long	0x982b
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x981b
	.uleb128 0x28
	.long	0x9846
	.byte	0x1
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9831
	.uleb128 0x17
	.long	0x985d
	.byte	0x1
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x984c
	.uleb128 0x4
	.long	0x9969
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
	.long	0x9983
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x1c
	.byte	0x94
	.long	0x8e80
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x1c
	.byte	0x99
	.long	0x9249
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x1c
	.byte	0x9c
	.long	0x9249
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x1c
	.byte	0xa2
	.long	0x982b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x1c
	.byte	0xa5
	.long	0x998f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x1c
	.byte	0xa9
	.long	0x9276
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
	.long	0x9276
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x28
	.long	0x9983
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
	.long	0x9969
	.uleb128 0x2c
	.byte	0x1
	.long	0x1e5
	.uleb128 0x3
	.byte	0x4
	.long	0x9989
	.uleb128 0x26
	.long	0x9dba
	.long	.LASF39
	.value	0x120
	.byte	0x1c
	.byte	0xb6
	.uleb128 0x1e
	.long	.LASF25
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
	.long	0x9dd5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x1c
	.byte	0xd6
	.long	0x92cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x1c
	.byte	0xde
	.long	0x92f8
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
	.long	0x9deb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x1c
	.byte	0xf1
	.long	0x982b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x1c
	.byte	0xf5
	.long	0x9e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"truthvalue_conversion"
	.byte	0x1c
	.value	0x102
	.long	0x982b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"insert_default_attributes"
	.byte	0x1c
	.value	0x106
	.long	0x9249
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"safe_from_p"
	.byte	0x1c
	.value	0x10f
	.long	0x9e2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"finish_incomplete_decl"
	.byte	0x1c
	.value	0x113
	.long	0x9249
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"unsafe_for_reeval"
	.byte	0x1c
	.value	0x118
	.long	0x96dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"mark_addressable"
	.byte	0x1c
	.value	0x11d
	.long	0x9276
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"staticp"
	.byte	0x1c
	.value	0x120
	.long	0x96dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"dup_lang_specific_decl"
	.byte	0x1c
	.value	0x124
	.long	0x9249
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"unsave_expr_now"
	.byte	0x1c
	.value	0x129
	.long	0x982b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"maybe_build_cleanup"
	.byte	0x1c
	.value	0x12d
	.long	0x982b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"set_decl_assembler_name"
	.byte	0x1c
	.value	0x134
	.long	0x9249
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"can_use_bit_fields_p"
	.byte	0x1c
	.value	0x138
	.long	0x92cc
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
	.long	0x92fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"print_decl"
	.byte	0x1c
	.value	0x147
	.long	0x92fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"print_type"
	.byte	0x1c
	.value	0x148
	.long	0x92fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"print_identifier"
	.byte	0x1c
	.value	0x149
	.long	0x92fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"decl_printable_name"
	.byte	0x1c
	.value	0x151
	.long	0x9e46
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"print_error_function"
	.byte	0x1c
	.value	0x154
	.long	0x9e78
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"expr_size"
	.byte	0x1c
	.value	0x15b
	.long	0x982b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x22
	.long	.LASF37
	.byte	0x1c
	.value	0x162
	.long	0x9217
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"common_attribute_table"
	.byte	0x1c
	.value	0x163
	.long	0x9217
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"format_attribute_table"
	.byte	0x1c
	.value	0x164
	.long	0x9217
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.long	.LASF27
	.byte	0x1c
	.value	0x167
	.long	0x95e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"tree_inlining"
	.byte	0x1c
	.value	0x169
	.long	0x9336
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"tree_dump"
	.byte	0x1c
	.value	0x16b
	.long	0x9666
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"decls"
	.byte	0x1c
	.value	0x16d
	.long	0x9863
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"types"
	.byte	0x1c
	.value	0x16f
	.long	0x96e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x28
	.long	0x9dcf
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x2e3
	.uleb128 0x18
	.long	0x9dcf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ec
	.uleb128 0x3
	.byte	0x4
	.long	0x9dba
	.uleb128 0x28
	.long	0x9deb
	.byte	0x1
	.long	0x483
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9ddb
	.uleb128 0x28
	.long	0x9e10
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
	.long	0x9df1
	.uleb128 0x28
	.long	0x9e2b
	.byte	0x1
	.long	0x2e3
	.uleb128 0x18
	.long	0x9d
	.uleb128 0x18
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e16
	.uleb128 0x28
	.long	0x9e46
	.byte	0x1
	.long	0x2d0
	.uleb128 0x18
	.long	0x1e5
	.uleb128 0x18
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e31
	.uleb128 0x17
	.long	0x9e5d
	.byte	0x1
	.uleb128 0x18
	.long	0x9e5d
	.uleb128 0x18
	.long	0x2d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e63
	.uleb128 0x21
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x9e4c
	.uleb128 0x2d
	.long	0x9eed
	.string	"get_pointer_alignment"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	0x2e3
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2e
	.string	"exp"
	.byte	0x1
	.byte	0xbb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"max_align"
	.byte	0x1
	.byte	0xbc
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF9
	.byte	0x1
	.byte	0xbe
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"inner"
	.byte	0x1
	.byte	0xbe
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x31
	.long	0x9fb6
	.string	"c_strlen"
	.byte	0x1
	.value	0x10b
	.byte	0x1
	.long	0x1e5
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x32
	.string	"src"
	.byte	0x1
	.value	0x109
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"only_value"
	.byte	0x1
	.value	0x10a
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF40
	.byte	0x1
	.value	0x10c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF7
	.byte	0x1
	.value	0x10d
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"max"
	.byte	0x1
	.value	0x10e
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"ptr"
	.byte	0x1
	.value	0x10f
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	0x9f9e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x34
	.string	"len1"
	.byte	0x1
	.value	0x115
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"len2"
	.byte	0x1
	.value	0x115
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
	.value	0x12d
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x9ff7
	.string	"c_getstr"
	.byte	0x1
	.value	0x15d
	.byte	0x1
	.long	0x2d0
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x32
	.string	"src"
	.byte	0x1
	.value	0x15c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF40
	.byte	0x1
	.value	0x15e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0xa07e
	.string	"c_readstr"
	.byte	0x1
	.value	0x174
	.byte	0x1
	.long	0x9d
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x32
	.string	"str"
	.byte	0x1
	.value	0x172
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x173
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x175
	.long	0xa07e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"ch"
	.byte	0x1
	.value	0x176
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x177
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"j"
	.byte	0x1
	.value	0x177
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LASF41
	.long	0xce4c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14705
	.byte	0x0
	.uleb128 0x10
	.long	0xa08e
	.long	0x483
	.uleb128 0x11
	.long	0x3d3
	.byte	0x1
	.byte	0x0
	.uleb128 0x31
	.long	0xa0f7
	.string	"target_char_cast"
	.byte	0x1
	.value	0x198
	.byte	0x1
	.long	0x2e3
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x32
	.string	"cst"
	.byte	0x1
	.value	0x196
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x197
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x199
	.long	0x494
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"hostval"
	.byte	0x1
	.value	0x199
	.long	0x494
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x39
	.long	0xa171
	.byte	0x1
	.string	"expand_builtin_return_addr"
	.byte	0x1
	.value	0x1b7
	.byte	0x1
	.long	0x9d
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x32
	.string	"fndecl_code"
	.byte	0x1
	.value	0x1b4
	.long	0x224f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"count"
	.byte	0x1
	.value	0x1b5
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"tem"
	.byte	0x1
	.value	0x1b6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x1b8
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0xa1fa
	.byte	0x1
	.string	"expand_builtin_setjmp_setup"
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x37
	.long	.LASF42
	.byte	0x1
	.value	0x1f3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF43
	.byte	0x1
	.value	0x1f4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"sa_mode"
	.byte	0x1
	.value	0x1f6
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"stack_save"
	.byte	0x1
	.value	0x1f7
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"mem"
	.byte	0x1
	.value	0x1f8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.long	0xa29c
	.byte	0x1
	.string	"expand_builtin_setjmp_receiver"
	.byte	0x1
	.value	0x233
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x37
	.long	.LASF43
	.byte	0x1
	.value	0x232
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	0xa283
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x248
	.long	0x41d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3b
	.string	"elims"
	.byte	0x8
	.byte	0x1
	.value	0x249
	.uleb128 0xe
	.string	"from"
	.byte	0x1
	.value	0x249
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to"
	.byte	0x1
	.value	0x249
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.string	"elim_regs"
	.byte	0x1
	.value	0x249
	.long	0xce37
	.byte	0x5
	.byte	0x3
	.long	elim_regs.14965
	.byte	0x0
	.uleb128 0x31
	.long	0xa321
	.string	"expand_builtin_setjmp"
	.byte	0x1
	.value	0x27d
	.byte	0x1
	.long	0x9d
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x27b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x27c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF42
	.byte	0x1
	.value	0x27e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"next_lab"
	.byte	0x1
	.value	0x27e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"cont_lab"
	.byte	0x1
	.value	0x27e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.long	0xa3e0
	.byte	0x1
	.string	"expand_builtin_longjmp"
	.byte	0x1
	.value	0x2b1
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x37
	.long	.LASF42
	.byte	0x1
	.value	0x2b0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"value"
	.byte	0x1
	.value	0x2b0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"fp"
	.byte	0x1
	.value	0x2b2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"lab"
	.byte	0x1
	.value	0x2b2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"stack"
	.byte	0x1
	.value	0x2b2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"insn"
	.byte	0x1
	.value	0x2b2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"last"
	.byte	0x1
	.value	0x2b2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"sa_mode"
	.byte	0x1
	.value	0x2b3
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF41
	.long	0xce22
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15042
	.byte	0x0
	.uleb128 0x3c
	.long	0xa47a
	.string	"expand_builtin_prefetch"
	.byte	0x1
	.value	0x30b
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x30a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"arg0"
	.byte	0x1
	.value	0x30c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0x30c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"arg2"
	.byte	0x1
	.value	0x30c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"op0"
	.byte	0x1
	.value	0x30d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"op1"
	.byte	0x1
	.value	0x30d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"op2"
	.byte	0x1
	.value	0x30d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0xa4d1
	.string	"get_memory_rtx"
	.byte	0x1
	.value	0x362
	.byte	0x1
	.long	0x9d
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x361
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"addr"
	.byte	0x1
	.value	0x363
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"mem"
	.byte	0x1
	.value	0x364
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xa516
	.byte	0x1
	.string	"apply_args_register_offset"
	.byte	0x1
	.value	0x3a1
	.byte	0x1
	.long	0x2e3
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x3a0
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xa5ac
	.string	"apply_args_size"
	.byte	0x1
	.value	0x3b1
	.byte	0x1
	.long	0x2e3
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x3b3
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF46
	.byte	0x1
	.value	0x3b4
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x3b5
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	0xa589
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0x3c7
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x3b2
	.long	0x2e3
	.byte	0x5
	.byte	0x3
	.long	size.15305
	.uleb128 0x38
	.long	.LASF41
	.long	0xce0d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15322
	.byte	0x0
	.uleb128 0x31
	.long	0xa644
	.string	"apply_result_size"
	.byte	0x1
	.value	0x401
	.byte	0x1
	.long	0x2e3
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x403
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF46
	.byte	0x1
	.value	0x403
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x404
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	0xa621
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0x410
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x402
	.long	0x2e3
	.byte	0x5
	.byte	0x3
	.long	size.15470
	.uleb128 0x38
	.long	.LASF41
	.long	0xcdf8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15487
	.byte	0x0
	.uleb128 0x31
	.long	0xa70a
	.string	"result_vector"
	.byte	0x1
	.value	0x44f
	.byte	0x1
	.long	0x9d
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x32
	.string	"savep"
	.byte	0x1
	.value	0x44d
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF31
	.byte	0x1
	.value	0x44e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF46
	.byte	0x1
	.value	0x450
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x450
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x450
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"nelts"
	.byte	0x1
	.value	0x450
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x451
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"reg"
	.byte	0x1
	.value	0x452
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"mem"
	.byte	0x1
	.value	0x452
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"savevec"
	.byte	0x1
	.value	0x453
	.long	0x1837
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0xa7aa
	.string	"expand_builtin_apply_args_1"
	.byte	0x1
	.value	0x46c
	.byte	0x1
	.long	0x9d
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x34
	.string	"registers"
	.byte	0x1
	.value	0x46d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x46e
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x46e
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF46
	.byte	0x1
	.value	0x46e
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x46f
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
	.value	0x47e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xa807
	.string	"expand_builtin_apply_args"
	.byte	0x1
	.value	0x4a5
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
	.value	0x4ae
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"seq"
	.byte	0x1
	.value	0x4af
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xa987
	.string	"expand_builtin_apply"
	.byte	0x1
	.value	0x4c9
	.byte	0x1
	.long	0x9d
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x4c8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF30
	.byte	0x1
	.value	0x4c8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"argsize"
	.byte	0x1
	.value	0x4c8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x4ca
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x4ca
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF46
	.byte	0x1
	.value	0x4ca
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x4cb
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"incoming_args"
	.byte	0x1
	.value	0x4cc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0x4cc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"reg"
	.byte	0x1
	.value	0x4cc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x4cc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x4cc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"call_insn"
	.byte	0x1
	.value	0x4cc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"old_stack_level"
	.byte	0x1
	.value	0x4cd
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF48
	.byte	0x1
	.value	0x4ce
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.long	0xa958
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x34
	.string	"value"
	.byte	0x1
	.value	0x51a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x35
	.long	0xa976
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x34
	.string	"link"
	.byte	0x1
	.value	0x55a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	.LASF41
	.long	0xcde3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15788
	.byte	0x0
	.uleb128 0x3c
	.long	0xaa1c
	.string	"expand_builtin_return"
	.byte	0x1
	.value	0x578
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x37
	.long	.LASF31
	.byte	0x1
	.value	0x577
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x579
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x579
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF46
	.byte	0x1
	.value	0x579
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x57a
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"reg"
	.byte	0x1
	.value	0x57b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF48
	.byte	0x1
	.value	0x57c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xaa53
	.string	"type_to_class"
	.byte	0x1
	.value	0x5ae
	.byte	0x1
	.long	0x8737
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x5ad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xaa99
	.string	"expand_builtin_classify_type"
	.byte	0x1
	.value	0x5cf
	.byte	0x1
	.long	0x9d
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x5ce
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xab09
	.string	"expand_builtin_constant_p"
	.byte	0x1
	.value	0x5da
	.byte	0x1
	.long	0x9d
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x5d9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x5db
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x5dc
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"tmp"
	.byte	0x1
	.value	0x5dd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xabfe
	.string	"expand_builtin_mathfn"
	.byte	0x1
	.value	0x5f6
	.byte	0x1
	.long	0x9d
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x5f4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x5f5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x5f5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"builtin_optab"
	.byte	0x1
	.value	0x5f7
	.long	0x857a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"op0"
	.byte	0x1
	.value	0x5f8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"insns"
	.byte	0x1
	.value	0x5f8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF51
	.byte	0x1
	.value	0x5f9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x5fa
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"argmode"
	.byte	0x1
	.value	0x5fb
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	0xabed
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x34
	.string	"lab1"
	.byte	0x1
	.value	0x64b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF41
	.long	0xcdce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16171
	.byte	0x0
	.uleb128 0x31
	.long	0xad3c
	.string	"expand_builtin_strlen"
	.byte	0x1
	.value	0x67a
	.byte	0x1
	.long	0x9d
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x678
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x679
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x67b
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x67c
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
	.value	0x682
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x683
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x683
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0x684
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"src_reg"
	.byte	0x1
	.value	0x684
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"char_rtx"
	.byte	0x1
	.value	0x684
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"before_strlen"
	.byte	0x1
	.value	0x684
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"insn_mode"
	.byte	0x1
	.value	0x685
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"char_mode"
	.byte	0x1
	.value	0x685
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"icode"
	.byte	0x1
	.value	0x686
	.long	0x63a1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x687
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xad99
	.string	"expand_builtin_strstr"
	.byte	0x1
	.value	0x6ec
	.byte	0x1
	.long	0x9d
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x6e9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x6ea
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x6eb
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0xae4e
	.string	"expand_builtin_strchr"
	.byte	0x1
	.value	0x728
	.byte	0x1
	.long	0x9d
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x725
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x726
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x727
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
	.value	0x72d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"s2"
	.byte	0x1
	.value	0x72d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0x72e
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
	.value	0x736
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x34
	.string	"r"
	.byte	0x1
	.value	0x737
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xaeac
	.string	"expand_builtin_strrchr"
	.byte	0x1
	.value	0x756
	.byte	0x1
	.long	0x9d
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x753
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x754
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x755
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0xaf0a
	.string	"expand_builtin_strpbrk"
	.byte	0x1
	.value	0x790
	.byte	0x1
	.long	0x9d
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x78d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x78e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x78f
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0xaf89
	.string	"builtin_memcpy_read_str"
	.byte	0x1
	.value	0x7d2
	.byte	0x1
	.long	0x9d
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0x7cf
	.long	0x4ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF7
	.byte	0x1
	.value	0x7d0
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x7d1
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"str"
	.byte	0x1
	.value	0x7d3
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LASF41
	.long	0xcdb9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16420
	.byte	0x0
	.uleb128 0x31
	.long	0xb08e
	.string	"expand_builtin_memcpy"
	.byte	0x1
	.value	0x7e6
	.byte	0x1
	.long	0x9d
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x7e3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x7e4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x7e5
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x7ec
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x7ed
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x7ee
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"src_str"
	.byte	0x1
	.value	0x7ef
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF52
	.byte	0x1
	.value	0x7f0
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x7f1
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x7f3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"src_mem"
	.byte	0x1
	.value	0x7f3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0x7f3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF56
	.byte	0x1
	.value	0x7f3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb1b1
	.string	"expand_builtin_mempcpy"
	.byte	0x1
	.value	0x840
	.byte	0x1
	.long	0x9d
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x83c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x83d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x83e
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"endp"
	.byte	0x1
	.value	0x83f
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	0xb117
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x847
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x36
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x851
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x852
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x853
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"src_str"
	.byte	0x1
	.value	0x854
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF52
	.byte	0x1
	.value	0x855
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x856
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x858
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"src_mem"
	.byte	0x1
	.value	0x858
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF56
	.byte	0x1
	.value	0x858
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb27c
	.string	"expand_builtin_memmove"
	.byte	0x1
	.value	0x8a3
	.byte	0x1
	.long	0x9d
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x8a0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x8a1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x8a2
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x8a9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x8aa
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x8ab
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF52
	.byte	0x1
	.value	0x8ad
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x8ae
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
	.value	0x8c6
	.long	0xb27c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x1e5
	.uleb128 0x31
	.long	0xb2fb
	.string	"expand_builtin_bcopy"
	.byte	0x1
	.value	0x8d8
	.byte	0x1
	.long	0x9d
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x8d7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x8d9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x8d9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x8d9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x8d9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xb3a2
	.string	"expand_builtin_strcpy"
	.byte	0x1
	.value	0x8f9
	.byte	0x1
	.long	0x9d
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x8f6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x8f7
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x8f8
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x8fa
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x8fb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x8fb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x8fb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"dst"
	.byte	0x1
	.value	0x8fb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xb44e
	.string	"expand_builtin_stpcpy"
	.byte	0x1
	.value	0x91c
	.byte	0x1
	.long	0x9d
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x919
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x91a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x91b
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x921
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x922
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x922
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
	.value	0x927
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb4be
	.string	"builtin_strncpy_read_str"
	.byte	0x1
	.value	0x947
	.byte	0x1
	.long	0x9d
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0x944
	.long	0x4ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF7
	.byte	0x1
	.value	0x945
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x946
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"str"
	.byte	0x1
	.value	0x948
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0xb597
	.string	"expand_builtin_strncpy"
	.byte	0x1
	.value	0x958
	.byte	0x1
	.long	0x9d
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x955
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x956
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x957
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
	.value	0x95e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x95f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x960
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x97d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x97e
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x980
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x981
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb611
	.string	"builtin_memset_read_str"
	.byte	0x1
	.value	0x9a7
	.byte	0x1
	.long	0x9d
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0x9a4
	.long	0x4ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF7
	.byte	0x1
	.value	0x9a5
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x9a6
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x9a8
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x9a9
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0xb6ac
	.string	"builtin_memset_gen_str"
	.byte	0x1
	.value	0x9ba
	.byte	0x1
	.long	0x9d
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0x9b7
	.long	0x4ea
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF7
	.byte	0x1
	.value	0x9b8
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x9b9
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF45
	.byte	0x1
	.value	0x9bb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"coeff"
	.byte	0x1
	.value	0x9bb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x9bc
	.long	0x41d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x9bd
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0xb7b5
	.string	"expand_builtin_memset"
	.byte	0x1
	.value	0x9d6
	.byte	0x1
	.long	0x9d
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x9d3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x9d4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x9d5
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x9d7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x9de
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x9df
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x9e0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x9e1
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x9e3
	.long	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x9e5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0x9e5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF56
	.byte	0x1
	.value	0x9e5
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
	.value	0x9f6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb83e
	.string	"expand_builtin_bzero"
	.byte	0x1
	.value	0xa48
	.byte	0x1
	.long	0x9d
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xa47
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0xa49
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0xa4a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0xa4a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0xa4a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0xa4b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xb967
	.string	"expand_builtin_memcmp"
	.byte	0x1
	.value	0xa70
	.byte	0x1
	.long	0x9d
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xa6c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xa6d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xa6e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xa6f
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0xa71
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.string	"arg2"
	.byte	0x1
	.value	0xa71
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0xa71
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xa72
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xa72
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	0xb90f
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x34
	.string	"r"
	.byte	0x1
	.value	0xa8f
	.long	0x81d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x36
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.long	.LASF58
	.byte	0x1
	.value	0xa98
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.value	0xa99
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"ind1"
	.byte	0x1
	.value	0xa9a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"ind2"
	.byte	0x1
	.value	0xa9e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0xaa2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xba81
	.string	"expand_builtin_strcmp"
	.byte	0x1
	.value	0xaff
	.byte	0x1
	.long	0x9d
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xafc
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xafd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xafe
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0xb00
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0xb01
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"arg2"
	.byte	0x1
	.value	0xb01
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xb02
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xb02
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	0xba29
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0xb0f
	.long	0x81d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x36
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x33
	.long	.LASF58
	.byte	0x1
	.value	0xb17
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.value	0xb18
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"ind1"
	.byte	0x1
	.value	0xb19
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"ind2"
	.byte	0x1
	.value	0xb1d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0xb21
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xbbac
	.string	"expand_builtin_strncmp"
	.byte	0x1
	.value	0xb82
	.byte	0x1
	.long	0x9d
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xb7f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xb80
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xb81
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0xb83
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0xb84
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.string	"arg2"
	.byte	0x1
	.value	0xb84
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"arg3"
	.byte	0x1
	.value	0xb84
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xb85
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xb85
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	0xbb54
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x34
	.string	"r"
	.byte	0x1
	.value	0xb9f
	.long	0x81d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x36
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x33
	.long	.LASF58
	.byte	0x1
	.value	0xbaa
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.value	0xbab
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"ind1"
	.byte	0x1
	.value	0xbac
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"ind2"
	.byte	0x1
	.value	0xbb0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0xbb4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xbc3e
	.string	"expand_builtin_strcat"
	.byte	0x1
	.value	0xc1b
	.byte	0x1
	.long	0x9d
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xc18
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xc19
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xc1a
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
	.value	0xc20
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0xc21
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0xc22
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xbc9c
	.string	"expand_builtin_strncat"
	.byte	0x1
	.value	0xc35
	.byte	0x1
	.long	0x9d
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xc32
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xc33
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xc34
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0xbd52
	.string	"expand_builtin_strspn"
	.byte	0x1
	.value	0xc6d
	.byte	0x1
	.long	0x9d
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xc6a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xc6b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xc6c
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
	.value	0xc72
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"s2"
	.byte	0x1
	.value	0xc72
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xc73
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xc73
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
	.value	0xc78
	.long	0xbd52
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x41d
	.uleb128 0x31
	.long	0xbe39
	.string	"expand_builtin_strcspn"
	.byte	0x1
	.value	0xc92
	.byte	0x1
	.long	0x9d
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xc8f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xc90
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xc91
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
	.value	0xc97
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"s2"
	.byte	0x1
	.value	0xc97
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xc98
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xc98
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	0xbe10
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x34
	.string	"r"
	.byte	0x1
	.value	0xc9d
	.long	0xbd52
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0xcad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0xcae
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xbe8a
	.byte	0x1
	.string	"expand_builtin_saveregs"
	.byte	0x1
	.value	0xcc1
	.byte	0x1
	.long	0x9d
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0xcc2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"seq"
	.byte	0x1
	.value	0xcc2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xbf32
	.string	"expand_builtin_args_info"
	.byte	0x1
	.value	0xcf5
	.byte	0x1
	.long	0x9d
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xcf4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0xcf6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"nwords"
	.byte	0x1
	.value	0xcf7
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"word_ptr"
	.byte	0x1
	.value	0xcf8
	.long	0x822
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	0xbf21
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x34
	.string	"wordnum"
	.byte	0x1
	.value	0xd08
	.long	0x483
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x38
	.long	.LASF41
	.long	0xcdb4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17367
	.byte	0x0
	.uleb128 0x31
	.long	0xbfb3
	.string	"expand_builtin_next_arg"
	.byte	0x1
	.value	0xd29
	.byte	0x1
	.long	0x9d
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xd28
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"fntype"
	.byte	0x1
	.value	0xd2a
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
	.value	0xd36
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0xd37
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xc048
	.string	"stabilize_va_list"
	.byte	0x1
	.value	0xd57
	.byte	0x1
	.long	0x1e5
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x37
	.long	.LASF60
	.byte	0x1
	.value	0xd55
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"needs_lvalue"
	.byte	0x1
	.value	0xd56
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	0xc02f
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x34
	.string	"p1"
	.byte	0x1
	.value	0xd63
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"p2"
	.byte	0x1
	.value	0xd64
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
	.value	0xd6c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0xc0aa
	.byte	0x1
	.string	"std_expand_builtin_va_start"
	.byte	0x1
	.value	0xd88
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x37
	.long	.LASF60
	.byte	0x1
	.value	0xd86
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"nextarg"
	.byte	0x1
	.value	0xd87
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0xd89
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xc11e
	.string	"expand_builtin_va_start"
	.byte	0x1
	.value	0xd97
	.byte	0x1
	.long	0x9d
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xd96
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"nextarg"
	.byte	0x1
	.value	0xd98
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"chain"
	.byte	0x1
	.value	0xd99
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF60
	.byte	0x1
	.value	0xd99
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xc1f2
	.byte	0x1
	.string	"std_expand_builtin_va_arg"
	.byte	0x1
	.value	0xdb2
	.byte	0x1
	.long	0x9d
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x37
	.long	.LASF60
	.byte	0x1
	.value	0xdb1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0xdb1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"addr_tree"
	.byte	0x1
	.value	0xdb3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0xdb3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"type_size"
	.byte	0x1
	.value	0xdb3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0xdb4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"alignm1"
	.byte	0x1
	.value	0xdb4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"rounded_size"
	.byte	0x1
	.value	0xdb5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"addr"
	.byte	0x1
	.value	0xdb6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x39
	.long	0xc2ef
	.byte	0x1
	.string	"expand_builtin_va_arg"
	.byte	0x1
	.value	0xded
	.byte	0x1
	.long	0x9d
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x37
	.long	.LASF60
	.byte	0x1
	.value	0xdec
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0xdec
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"addr"
	.byte	0x1
	.value	0xdee
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0xdee
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"promoted_type"
	.byte	0x1
	.value	0xdef
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"want_va_type"
	.byte	0x1
	.value	0xdef
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"have_va_type"
	.byte	0x1
	.value	0xdef
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	0xc2d6
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x33
	.long	.LASF25
	.byte	0x1
	.value	0xe0d
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"pname"
	.byte	0x1
	.value	0xe0d
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.string	"gave_help"
	.byte	0x1
	.value	0xe0e
	.long	0xbf5
	.byte	0x5
	.byte	0x3
	.long	gave_help.17640
	.byte	0x0
	.uleb128 0x31
	.long	0xc33d
	.string	"expand_builtin_va_end"
	.byte	0x1
	.value	0xe52
	.byte	0x1
	.long	0x9d
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xe51
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF60
	.byte	0x1
	.value	0xe53
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xc3e1
	.string	"expand_builtin_va_copy"
	.byte	0x1
	.value	0xe69
	.byte	0x1
	.long	0x9d
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xe68
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"dst"
	.byte	0x1
	.value	0xe6a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0xe6a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0xe6a
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
	.value	0xe7a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"srcb"
	.byte	0x1
	.value	0xe7a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0xe7a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xc45e
	.string	"expand_builtin_frame_address"
	.byte	0x1
	.value	0xe9f
	.byte	0x1
	.long	0x9d
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xe9e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF51
	.byte	0x1
	.value	0xea0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0xea1
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
	.value	0xeb3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xc4ca
	.string	"expand_builtin_alloca"
	.byte	0x1
	.value	0xed5
	.byte	0x1
	.long	0x9d
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xed3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xed4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"op0"
	.byte	0x1
	.value	0xed6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0xed7
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xc543
	.string	"expand_builtin_ffs"
	.byte	0x1
	.value	0xef3
	.byte	0x1
	.long	0x9d
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xef1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xef2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0xef2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"op0"
	.byte	0x1
	.value	0xef4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF41
	.long	0xcd9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17872
	.byte	0x0
	.uleb128 0x31
	.long	0xc5ce
	.string	"expand_builtin_expect"
	.byte	0x1
	.value	0xf60
	.byte	0x1
	.long	0x9d
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0xf5e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0xf5f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"exp"
	.byte	0x1
	.value	0xf61
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0xf61
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"note"
	.byte	0x1
	.value	0xf62
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"rtx_c"
	.byte	0x1
	.value	0xf62
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xc758
	.byte	0x1
	.string	"expand_builtin_expect_jump"
	.byte	0x1
	.value	0xf8f
	.byte	0x1
	.long	0x9d
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xf8c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"if_false_label"
	.byte	0x1
	.value	0xf8d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"if_true_label"
	.byte	0x1
	.value	0xf8e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0xf90
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.string	"arg0"
	.byte	0x1
	.value	0xf91
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"arg1"
	.byte	0x1
	.value	0xf92
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"ret"
	.byte	0x1
	.value	0xf93
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.string	"do_next_insn"
	.byte	0x1
	.value	0xff5
	.long	.L1213
	.uleb128 0x36
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x34
	.string	"num_jumps"
	.byte	0x1
	.value	0xf9a
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"insn"
	.byte	0x1
	.value	0xf9b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"save_pending_stack_adjust"
	.byte	0x1
	.value	0xf9c
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
	.value	0xfbb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"pattern"
	.byte	0x1
	.value	0xfbc
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
	.value	0xfc1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"label"
	.byte	0x1
	.value	0xfc2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"taken"
	.byte	0x1
	.value	0xfc3
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
	.value	0x1007
	.byte	0x1
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x31
	.long	0xc886
	.string	"expand_builtin_sprintf"
	.byte	0x1
	.value	0x101b
	.byte	0x1
	.long	0x9d
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x1018
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x1019
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x101a
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"orig_arglist"
	.byte	0x1
	.value	0x101c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF32
	.byte	0x1
	.value	0x101c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"fmt"
	.byte	0x1
	.value	0x101c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"fmt_str"
	.byte	0x1
	.value	0x101d
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	0xc84f
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x1037
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"exp"
	.byte	0x1
	.value	0x1038
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
	.value	0x1047
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x1047
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x1047
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0xc99b
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.value	0x1076
	.byte	0x1
	.long	0x9d
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x1071
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x1072
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x1073
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x1074
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"ignore"
	.byte	0x1
	.value	0x1075
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.long	.LASF51
	.byte	0x1
	.value	0x1077
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x1078
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"fcode"
	.byte	0x1
	.value	0x1079
	.long	0x224f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	0xc953
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x34
	.string	"volatilep"
	.byte	0x1
	.value	0x10e9
	.long	0xbf5
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x10ea
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x35
	.long	0xc98a
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x1149
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x114a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"ops"
	.byte	0x1
	.value	0x114b
	.long	0xc99b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x38
	.long	.LASF41
	.long	0xcd8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18166
	.byte	0x0
	.uleb128 0x10
	.long	0xc9ab
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0x2
	.byte	0x0
	.uleb128 0x31
	.long	0xc9ec
	.string	"fold_builtin_constant_p"
	.byte	0x1
	.value	0x1294
	.byte	0x1
	.long	0x1e5
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x1293
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xca30
	.string	"fold_builtin_classify_type"
	.byte	0x1
	.value	0x12bd
	.byte	0x1
	.long	0x1e5
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x12bc
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xca8a
	.string	"fold_builtin_inf"
	.byte	0x1
	.value	0x12ca
	.byte	0x1
	.long	0x1e5
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x12c8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"warn"
	.byte	0x1
	.value	0x12c9
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"real"
	.byte	0x1
	.value	0x12cb
	.long	0xb87
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x31
	.long	0xcb03
	.string	"fold_builtin_nan"
	.byte	0x1
	.value	0x12da
	.byte	0x1
	.long	0x1e5
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x12d8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x12d8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"quiet"
	.byte	0x1
	.value	0x12d9
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"real"
	.byte	0x1
	.value	0x12db
	.long	0xb87
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"str"
	.byte	0x1
	.value	0x12dc
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xcb82
	.byte	0x1
	.string	"fold_builtin"
	.byte	0x1
	.value	0x12f0
	.byte	0x1
	.long	0x1e5
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x12ef
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF51
	.byte	0x1
	.value	0x12f1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x12f2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"fcode"
	.byte	0x1
	.value	0x12f3
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
	.value	0x1303
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xcbe7
	.string	"build_function_call_expr"
	.byte	0x1
	.value	0x132c
	.byte	0x1
	.long	0x1e5
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x32
	.string	"fn"
	.byte	0x1
	.value	0x132b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x132b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"call_expr"
	.byte	0x1
	.value	0x132d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xcc5b
	.string	"validate_arglist"
	.byte	0x1
	.value	0x133d
	.byte	0x1
	.long	0x2e3
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x133c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x34
	.string	"code"
	.byte	0x1
	.value	0x133e
	.long	0x1881
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.string	"res"
	.byte	0x1
	.value	0x133f
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.string	"ap"
	.byte	0x1
	.value	0x1345
	.long	0x40e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3d
	.string	"end"
	.byte	0x1
	.value	0x1367
	.long	.L1486
	.byte	0x0
	.uleb128 0x3e
	.byte	0x1
	.string	"default_init_builtins"
	.byte	0x1
	.value	0x1375
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x39
	.long	0xcd03
	.byte	0x1
	.string	"default_expand_builtin"
	.byte	0x1
	.value	0x1381
	.byte	0x1
	.long	0x9d
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x137c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x137d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x137e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x137f
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"ignore"
	.byte	0x1
	.value	0x1380
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x31
	.long	0xcd3f
	.string	"readonly_data_expr"
	.byte	0x1
	.value	0x138b
	.byte	0x1
	.long	0xbf5
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x138a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x40
	.long	0xcd7a
	.byte	0x1
	.string	"c_strlen_exported"
	.byte	0x1
	.value	0x1398
	.long	0x1e5
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x32
	.string	"src"
	.byte	0x1
	.value	0x1397
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x10
	.long	0xcd8a
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0xcd7a
	.uleb128 0x10
	.long	0xcd9f
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x12
	.byte	0x0
	.uleb128 0xb
	.long	0xcd8f
	.uleb128 0x10
	.long	0xcdb4
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x18
	.byte	0x0
	.uleb128 0xb
	.long	0xcda4
	.uleb128 0xb
	.long	0x80d
	.uleb128 0x10
	.long	0xcdce
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x15
	.byte	0x0
	.uleb128 0xb
	.long	0xcdbe
	.uleb128 0x10
	.long	0xcde3
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x14
	.byte	0x0
	.uleb128 0xb
	.long	0xcdd3
	.uleb128 0x10
	.long	0xcdf8
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x11
	.byte	0x0
	.uleb128 0xb
	.long	0xcde8
	.uleb128 0x10
	.long	0xce0d
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0xcdfd
	.uleb128 0x10
	.long	0xce22
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0xce12
	.uleb128 0x10
	.long	0xce37
	.long	0xa258
	.uleb128 0x11
	.long	0x3d3
	.byte	0x8
	.byte	0x0
	.uleb128 0xb
	.long	0xce27
	.uleb128 0x10
	.long	0xce4c
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0x9
	.byte	0x0
	.uleb128 0xb
	.long	0xce3c
	.uleb128 0x34
	.string	"setjmp_alias_set"
	.byte	0x1
	.value	0x1eb
	.long	0x483
	.byte	0x5
	.byte	0x3
	.long	setjmp_alias_set
	.uleb128 0x10
	.long	0xce80
	.long	0x849
	.uleb128 0x11
	.long	0x3d3
	.byte	0xaf
	.byte	0x0
	.uleb128 0x34
	.string	"apply_args_mode"
	.byte	0x1
	.value	0x38b
	.long	0xce70
	.byte	0x5
	.byte	0x3
	.long	apply_args_mode
	.uleb128 0x34
	.string	"apply_result_mode"
	.byte	0x1
	.value	0x392
	.long	0xce70
	.byte	0x5
	.byte	0x3
	.long	apply_result_mode
	.uleb128 0x10
	.long	0xcece
	.long	0x2e3
	.uleb128 0x11
	.long	0x3d3
	.byte	0xaf
	.byte	0x0
	.uleb128 0x34
	.string	"apply_args_reg_offset"
	.byte	0x1
	.value	0x398
	.long	0xcebe
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
	.long	0xcf3e
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
	.long	0xcf2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xcf70
	.long	0xa92
	.uleb128 0x11
	.long	0x3d3
	.byte	0x35
	.byte	0x0
	.uleb128 0x44
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.long	0xcf7d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcf60
	.uleb128 0x10
	.long	0xcf92
	.long	0x42b
	.uleb128 0x11
	.long	0x3d3
	.byte	0x35
	.byte	0x0
	.uleb128 0x41
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0xcfa5
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcf82
	.uleb128 0x41
	.string	"mode_wider_mode"
	.byte	0x5
	.byte	0x84
	.long	0xcfc3
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcf82
	.uleb128 0x10
	.long	0xcfd8
	.long	0x849
	.uleb128 0x11
	.long	0x3d3
	.byte	0x8
	.byte	0x0
	.uleb128 0x41
	.string	"class_narrowest_mode"
	.byte	0x5
	.byte	0xa6
	.long	0xcff6
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcfc8
	.uleb128 0x41
	.string	"ptr_mode"
	.byte	0x5
	.byte	0xae
	.long	0x849
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd01d
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0x80
	.byte	0x0
	.uleb128 0x42
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x6a4
	.long	0xd00d
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd045
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0xa
	.byte	0x0
	.uleb128 0x42
	.string	"global_rtl"
	.byte	0x4
	.value	0x6e5
	.long	0xd035
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"struct_value_rtx"
	.byte	0x4
	.value	0x6f4
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"struct_value_incoming_rtx"
	.byte	0x4
	.value	0x6f5
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"static_chain_rtx"
	.byte	0x4
	.value	0x6f6
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"cse_not_expected"
	.byte	0x4
	.value	0x770
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd0da
	.long	0x2db
	.uleb128 0x43
	.byte	0x0
	.uleb128 0x41
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x45
	.long	0xd0f2
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xd0cf
	.uleb128 0x10
	.long	0xd107
	.long	0x2d0
	.uleb128 0x11
	.long	0x3d3
	.byte	0x3
	.byte	0x0
	.uleb128 0x45
	.string	"built_in_class_names"
	.byte	0x1
	.byte	0x4a
	.long	0xd12a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	built_in_class_names
	.uleb128 0xb
	.long	0xd0f7
	.uleb128 0x10
	.long	0xd140
	.long	0x2d0
	.uleb128 0x46
	.long	0x3d3
	.value	0x128
	.byte	0x0
	.uleb128 0x45
	.string	"built_in_names"
	.byte	0x1
	.byte	0x4e
	.long	0xd15d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	built_in_names
	.uleb128 0xb
	.long	0xd12f
	.uleb128 0x10
	.long	0xd173
	.long	0x1e5
	.uleb128 0x46
	.long	0x3d3
	.value	0x128
	.byte	0x0
	.uleb128 0x45
	.string	"built_in_decls"
	.byte	0x1
	.byte	0x56
	.long	0xd162
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	built_in_decls
	.uleb128 0x10
	.long	0xd1a0
	.long	0x1e5
	.uleb128 0x11
	.long	0x3d3
	.byte	0x3a
	.byte	0x0
	.uleb128 0x42
	.string	"global_trees"
	.byte	0x3
	.value	0x8b5
	.long	0xd190
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd1c7
	.long	0x1e5
	.uleb128 0x11
	.long	0x3d3
	.byte	0xa
	.byte	0x0
	.uleb128 0x42
	.string	"integer_types"
	.byte	0x3
	.value	0x91d
	.long	0xd1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd1ef
	.long	0x1e5
	.uleb128 0x11
	.long	0x3d3
	.byte	0x5
	.byte	0x0
	.uleb128 0x42
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xad1
	.long	0xd1df
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"current_function_decl"
	.byte	0x3
	.value	0xbc8
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"optimize"
	.byte	0x14
	.byte	0x43
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"optimize_size"
	.byte	0x14
	.byte	0x47
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_errno_math"
	.byte	0x14
	.value	0x16c
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_unsafe_math_optimizations"
	.byte	0x14
	.value	0x173
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_finite_math_only"
	.byte	0x14
	.value	0x177
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_guess_branch_prob"
	.byte	0x14
	.value	0x24e
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd2e3
	.long	0x2db
	.uleb128 0x11
	.long	0x3d3
	.byte	0xaf
	.byte	0x0
	.uleb128 0x42
	.string	"fixed_regs"
	.byte	0x15
	.value	0x18b
	.long	0xd2d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x4fd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd317
	.long	0x857a
	.uleb128 0x11
	.long	0x3d3
	.byte	0x32
	.byte	0x0
	.uleb128 0x41
	.string	"optab_table"
	.byte	0x11
	.byte	0xa0
	.long	0xd307
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd33c
	.long	0x9d
	.uleb128 0x11
	.long	0x3d3
	.byte	0x60
	.byte	0x0
	.uleb128 0x41
	.string	"libfunc_table"
	.byte	0x16
	.byte	0x97
	.long	0xd32c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd35e
	.long	0x867c
	.uleb128 0x43
	.byte	0x0
	.uleb128 0x44
	.long	.LASF36
	.byte	0x17
	.byte	0xfe
	.long	0xd36b
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xd353
	.uleb128 0x42
	.string	"targetm"
	.byte	0x18
	.value	0x12d
	.long	0x8f2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.long	.LASF39
	.byte	0x1c
	.value	0x176
	.long	0xd390
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9995
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
	.long	0xd396
	.long	0xa0f7
	.string	"expand_builtin_return_addr"
	.long	0xa171
	.string	"expand_builtin_setjmp_setup"
	.long	0xa1fa
	.string	"expand_builtin_setjmp_receiver"
	.long	0xa321
	.string	"expand_builtin_longjmp"
	.long	0xa4d1
	.string	"apply_args_register_offset"
	.long	0xbe39
	.string	"expand_builtin_saveregs"
	.long	0xc048
	.string	"std_expand_builtin_va_start"
	.long	0xc11e
	.string	"std_expand_builtin_va_arg"
	.long	0xc1f2
	.string	"expand_builtin_va_arg"
	.long	0xc5ce
	.string	"expand_builtin_expect_jump"
	.long	0xc758
	.string	"expand_builtin_trap"
	.long	0xc886
	.string	"expand_builtin"
	.long	0xcb03
	.string	"fold_builtin"
	.long	0xcc5b
	.string	"default_init_builtins"
	.long	0xcc83
	.string	"default_expand_builtin"
	.long	0xcd3f
	.string	"c_strlen_exported"
	.long	0xd107
	.string	"built_in_class_names"
	.long	0xd140
	.string	"built_in_names"
	.long	0xd173
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
.LASF25:
	.string	"name"
.LASF31:
	.string	"result"
.LASF36:
	.string	"insn_data"
.LASF57:
	.string	"newarglist"
.LASF11:
	.string	"lang_flag_0"
.LASF12:
	.string	"lang_flag_1"
.LASF13:
	.string	"lang_flag_2"
.LASF17:
	.string	"lang_flag_6"
.LASF32:
	.string	"dest"
.LASF60:
	.string	"valist"
.LASF6:
	.string	"mem_attrs"
.LASF40:
	.string	"offset_node"
.LASF44:
	.string	"arglist"
.LASF52:
	.string	"src_align"
.LASF38:
	.string	"expand_builtin"
.LASF1:
	.string	"common"
.LASF26:
	.string	"lang_specific"
.LASF34:
	.string	"sequence_rtl_expr"
.LASF8:
	.string	"size"
.LASF33:
	.string	"sequence_stack"
.LASF29:
	.string	"function_frequency"
.LASF14:
	.string	"lang_flag_3"
.LASF27:
	.string	"function"
.LASF43:
	.string	"receiver_label"
.LASF3:
	.string	"unsigned int"
.LASF59:
	.string	"cst_uchar_ptr_node"
.LASF30:
	.string	"arguments"
.LASF20:
	.string	"abstract_origin"
.LASF9:
	.string	"align"
.LASF23:
	.string	"pointer_depth"
.LASF45:
	.string	"target"
.LASF24:
	.string	"user_align"
.LASF39:
	.string	"lang_hooks"
.LASF21:
	.string	"size_unit"
.LASF58:
	.string	"cst_uchar_node"
.LASF47:
	.string	"best_mode"
.LASF37:
	.string	"attribute_table"
.LASF35:
	.string	"insn_code"
.LASF2:
	.string	"type"
.LASF46:
	.string	"regno"
.LASF28:
	.string	"args_size"
.LASF53:
	.string	"dest_align"
.LASF49:
	.string	"value_mode"
.LASF51:
	.string	"fndecl"
.LASF54:
	.string	"dest_mem"
.LASF55:
	.string	"dest_addr"
.LASF15:
	.string	"lang_flag_4"
.LASF16:
	.string	"lang_flag_5"
.LASF19:
	.string	"abstract_flag"
.LASF5:
	.string	"mode_class"
.LASF18:
	.string	"ht_identifier"
.LASF7:
	.string	"offset"
.LASF50:
	.string	"subtarget"
.LASF41:
	.string	"__FUNCTION__"
.LASF10:
	.string	"built_in_class"
.LASF56:
	.string	"len_rtx"
.LASF0:
	.string	"mode"
.LASF4:
	.string	"_IO_FILE"
.LASF22:
	.string	"attributes"
.LASF42:
	.string	"buf_addr"
.LASF48:
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
