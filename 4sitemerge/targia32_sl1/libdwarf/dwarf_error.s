	.file	"dwarf_error.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl _dwarf_errmsgs
	.section	.rodata
.LC0:
	.string	"No error (0)\n"
	.align 4
.LC1:
	.string	"DW_DLE_VMM 1 dwarf format/library version mismatch"
	.align 4
.LC2:
	.string	"DW_DLE_MAP 2 memory map failure"
.LC3:
	.string	"DW_DLE_LEE 3 libelf error"
.LC4:
	.string	"DW_DLE_NDS 4 no debug section"
	.align 4
.LC5:
	.string	"DW_DLE_NLS    5  no line section "
	.align 4
.LC6:
	.string	"DW_DLE_ID     6  invalid descriptor for query "
.LC7:
	.string	"DW_DLE_IOF    7  I/O failure "
	.align 4
.LC8:
	.string	"DW_DLE_MAF    8  memory allocation failure "
	.align 4
.LC9:
	.string	"DW_DLE_IA     9  invalid argument "
	.align 4
.LC10:
	.string	"DW_DLE_MDE    10  mangled debugging entry "
	.align 4
.LC11:
	.string	"DW_DLE_MLE    11  mangled line number entry "
	.align 4
.LC12:
	.string	"DW_DLE_FNO    12  file not open "
	.align 4
.LC13:
	.string	"DW_DLE_FNR    13  file not a regular file "
	.align 4
.LC14:
	.string	"DW_DLE_FWA    14  file open with wrong access "
	.align 4
.LC15:
	.string	"DW_DLE_NOB    15  not an object file "
	.align 4
.LC16:
	.string	"DW_DLE_MOF    16  mangled object file header "
	.align 4
.LC17:
	.string	"DW_DLE_EOLL   17  end of location list entries "
	.align 4
.LC18:
	.string	"DW_DLE_NOLL   18  no location list section "
	.align 4
.LC19:
	.string	"DW_DLE_BADOFF 19  Invalid offset "
	.align 4
.LC20:
	.string	"DW_DLE_EOS    20  end of section  "
	.align 4
.LC21:
	.string	"DW_DLE_ATRUNC 21  abbreviations section appears truncated"
	.align 4
.LC22:
	.string	"DW_DLE_BADBITC  22  Address size passed to dwarf bad"
	.align 4
.LC23:
	.string	"DW_DLE_DBG_ALLOC 23 Unable to malloc a Dwarf_Debug structure"
	.align 4
.LC24:
	.string	"DW_DLE_FSTAT_ERROR 24 The file fd passed to dwarf_init cannot be fstat()ed"
	.align 4
.LC25:
	.string	"DW_DLE_FSTAT_MODE_ERROR 25 The file mode bits do not indicate that the file being opened via dwarf_init() is a normal file"
	.align 4
.LC26:
	.string	"DW_DLE_INIT_ACCESS_WRONG 26 A call to dwarf_init had an access of other than DW_DLC_READ"
	.align 4
.LC27:
	.string	"DW_DLE_ELF_BEGIN_ERROR 27 a call to elf_begin(... ELF_C_READ_MMAP... ) failed"
	.align 4
.LC28:
	.string	"DW_DLE_ELF_GETEHDR_ERROR 28 a call to elf32_getehdr() or elf64_getehdr() failed"
	.align 4
.LC29:
	.string	"DW_DLE_ELF_GETSHDR_ERROR 29 a call to elf32_getshdr() or elf64_getshdr() failed"
	.align 4
.LC30:
	.string	"DW_DLE_ELF_STRPTR_ERROR 30 a call to elf_strptr() failed trying to get a section name"
	.align 4
.LC31:
	.string	"DW_DLE_DEBUG_INFO_DUPLICATE 31  Only one .debug_info  section is allowed"
	.align 4
.LC32:
	.string	"DW_DLE_DEBUG_INFO_NULL 32 .debug_info section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC33:
	.string	"DW_DLE_DEBUG_ABBREV_DUPLICATE 33 Only one .debug_abbrev  section is allowed"
	.align 4
.LC34:
	.string	"DW_DLE_DEBUG_ABBREV_NULL 34 .debug_abbrev section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC35:
	.string	"DW_DLE_DEBUG_ARANGES_DUPLICATE 35 Only one .debug_aranges  section is allowed"
	.align 4
.LC36:
	.string	"DW_DLE_DEBUG_ARANGES_NULL 36 .debug_aranges section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC37:
	.string	"DW_DLE_DEBUG_LINE_DUPLICATE 37 Only one .debug_line  section is allowed"
	.align 4
.LC38:
	.string	"DW_DLE_DEBUG_LINE_NULL (38) .debug_line section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC39:
	.string	"DW_DLE_DEBUG_LOC_DUPLICATE (39) Only one .debug_loc  section is allowed"
	.align 4
.LC40:
	.string	"DW_DLE_DEBUG_LOC_NULL (40) .debug_loc section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC41:
	.string	"DW_DLE_DEBUG_MACINFO_DUPLICATE (41) Only one .debug_macinfo  section is allowed"
	.align 4
.LC42:
	.string	"DW_DLE_DEBUG_MACINFO_NULL (42) .debug_macinfo section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC43:
	.string	"DW_DLE_DEBUG_PUBNAMES_DUPLICATE (43) Only one .debug_pubnames  section is allowed"
	.align 4
.LC44:
	.string	"DW_DLE_DEBUG_PUBNAMES_NULL (44) .debug_pubnames section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC45:
	.string	"DW_DLE_DEBUG_STR_DUPLICATE (45)  Only one .debug_str  section is allowed"
	.align 4
.LC46:
	.string	"DW_DLE_DEBUG_STR_NULL (46) .debug_str section present but elf_getdata() failed or section is zero-length"
.LC47:
	.string	"DW_DLE_CU_LENGTH_ERROR (47)"
	.align 4
.LC48:
	.string	"DW_DLE_VERSION_STAMP_ERROR (48)"
	.align 4
.LC49:
	.string	"DW_DLE_ABBREV_OFFSET_ERROR (49)"
	.align 4
.LC50:
	.string	"DW_DLE_ADDRESS_SIZE_ERROR (50)"
	.align 4
.LC51:
	.string	"DW_DLE_DEBUG_INFO_PTR_NULL (51)"
.LC52:
	.string	"DW_DLE_DIE_NULL (52)"
.LC53:
	.string	"DW_DLE_STRING_OFFSET_BAD (53)"
	.align 4
.LC54:
	.string	"DW_DLE_DEBUG_LINE_LENGTH_BAD (54)"
	.align 4
.LC55:
	.string	"DW_DLE_LINE_PROLOG_LENGTH_BAD (55)"
.LC56:
	.string	"DW_DLE_LINE_NUM_OPERANDS_BAD"
.LC57:
	.string	"DW_DLE_LINE_SET_ADDR_ERROR"
.LC58:
	.string	"DW_DLE_LINE_EXT_OPCODE_BAD"
.LC59:
	.string	"DW_DLE_DWARF_LINE_NULL"
.LC60:
	.string	"DW_DLE_INCL_DIR_NUM_BAD"
.LC61:
	.string	"DW_DLE_LINE_FILE_NUM_BAD"
.LC62:
	.string	"DW_DLE_ALLOC_FAIL"
.LC63:
	.string	"DW_DLE_NO_CALLBACK_FUNC"
.LC64:
	.string	"DW_DLE_SECT_ALLOC"
.LC65:
	.string	"DW_DLE_FILE_ENTRY_ALLOC"
.LC66:
	.string	"DW_DLE_LINE_ALLOC"
.LC67:
	.string	"DW_DLE_FPGM_ALLOC"
.LC68:
	.string	"DW_DLE_INCDIR_ALLOC"
.LC69:
	.string	"DW_DLE_STRING_ALLOC"
.LC70:
	.string	"DW_DLE_CHUNK_ALLOC"
.LC71:
	.string	"DW_DLE_BYTEOFF_ERR"
.LC72:
	.string	"DW_DLE_CIE_ALLOC"
.LC73:
	.string	"DW_DLE_FDE_ALLOC"
.LC74:
	.string	"DW_DLE_REGNO_OVFL"
.LC75:
	.string	"DW_DLE_CIE_OFFS_ALLOC"
.LC76:
	.string	"DW_DLE_WRONG_ADDRESS"
.LC77:
	.string	"DW_DLE_EXTRA_NEIGHBORS"
.LC78:
	.string	"DW_DLE_WRONG_TAG"
.LC79:
	.string	"DW_DLE_DIE_ALLOC"
.LC80:
	.string	"DW_DLE_PARENT_EXISTS"
.LC81:
	.string	"DW_DLE_DBG_NULL"
.LC82:
	.string	"DW_DLE_DEBUGLINE_ERROR"
.LC83:
	.string	"DW_DLE_DEBUGFRAME_ERROR"
.LC84:
	.string	"DW_DLE_DEBUGINFO_ERROR"
.LC85:
	.string	"DW_DLE_ATTR_ALLOC"
.LC86:
	.string	"DW_DLE_ABBREV_ALLOC"
.LC87:
	.string	"DW_DLE_OFFSET_UFLW"
.LC88:
	.string	"DW_DLE_ELF_SECT_ERR"
.LC89:
	.string	"DW_DLE_DEBUG_FRAME_LENGTH_BAD"
.LC90:
	.string	"DW_DLE_FRAME_VERSION_BAD"
.LC91:
	.string	"DW_DLE_CIE_RET_ADDR_REG_ERROR"
.LC92:
	.string	"DW_DLE_FDE_NULL"
.LC93:
	.string	"DW_DLE_FDE_DBG_NULL"
.LC94:
	.string	"DW_DLE_CIE_NULL"
.LC95:
	.string	"DW_DLE_CIE_DBG_NULL"
.LC96:
	.string	"DW_DLE_FRAME_TABLE_COL_BAD"
.LC97:
	.string	"DW_DLE_PC_NOT_IN_FDE_RANGE"
.LC98:
	.string	"DW_DLE_CIE_INSTR_EXEC_ERROR"
.LC99:
	.string	"DW_DLE_FRAME_INSTR_EXEC_ERROR"
.LC100:
	.string	"DW_DLE_FDE_PTR_NULL"
.LC101:
	.string	"DW_DLE_RET_OP_LIST_NULL"
.LC102:
	.string	"DW_DLE_LINE_CONTEXT_NULL"
.LC103:
	.string	"DW_DLE_DBG_NO_CU_CONTEXT"
.LC104:
	.string	"DW_DLE_DIE_NO_CU_CONTEXT"
.LC105:
	.string	"DW_DLE_FIRST_DIE_NOT_CU"
.LC106:
	.string	"DW_DLE_NEXT_DIE_PTR_NULL"
	.align 4
.LC107:
	.string	"DW_DLE_DEBUG_FRAME_DUPLICATE  Only one .debug_frame  section is allowed"
	.align 4
.LC108:
	.string	"DW_DLE_DEBUG_FRAME_NULL  .debug_frame section present but elf_getdata() failed or section is zero-length"
.LC109:
	.string	"DW_DLE_ABBREV_DECODE_ERROR"
.LC110:
	.string	"DW_DLE_DWARF_ABBREV_NULL"
.LC111:
	.string	"DW_DLE_ATTR_NULL"
.LC112:
	.string	"DW_DLE_DIE_BAD"
.LC113:
	.string	"DW_DLE_DIE_ABBREV_BAD"
.LC114:
	.string	"DW_DLE_ATTR_FORM_BAD"
.LC115:
	.string	"DW_DLE_ATTR_NO_CU_CONTEXT"
.LC116:
	.string	"DW_DLE_ATTR_FORM_SIZE_BAD"
.LC117:
	.string	"DW_DLE_ATTR_DBG_NULL"
.LC118:
	.string	"DW_DLE_BAD_REF_FORM"
.LC119:
	.string	"DW_DLE_ATTR_FORM_OFFSET_BAD"
.LC120:
	.string	"DW_DLE_LINE_OFFSET_BAD"
.LC121:
	.string	"DW_DLE_DEBUG_STR_OFFSET_BAD"
.LC122:
	.string	"DW_DLE_STRING_PTR_NULL"
.LC123:
	.string	"DW_DLE_PUBNAMES_VERSION_ERROR"
.LC124:
	.string	"DW_DLE_PUBNAMES_LENGTH_BAD"
.LC125:
	.string	"DW_DLE_GLOBAL_NULL"
.LC126:
	.string	"DW_DLE_GLOBAL_CONTEXT_NULL"
.LC127:
	.string	"DW_DLE_DIR_INDEX_BAD"
.LC128:
	.string	"DW_DLE_LOC_EXPR_BAD"
.LC129:
	.string	"DW_DLE_DIE_LOC_EXPR_BAD"
.LC130:
	.string	"DW_DLE_ADDR_ALLOC"
.LC131:
	.string	"DW_DLE_OFFSET_BAD"
.LC132:
	.string	"DW_DLE_MAKE_CU_CONTEXT_FAIL"
.LC133:
	.string	"DW_DLE_REL_ALLOC"
.LC134:
	.string	"DW_DLE_ARANGE_OFFSET_BAD"
.LC135:
	.string	"DW_DLE_SEGMENT_SIZE_BAD"
.LC136:
	.string	"DW_DLE_ARANGE_LENGTH_BAD"
.LC137:
	.string	"DW_DLE_ARANGE_DECODE_ERROR"
.LC138:
	.string	"DW_DLE_ARANGES_NULL"
.LC139:
	.string	"DW_DLE_ARANGE_NULL"
.LC140:
	.string	"DW_DLE_NO_FILE_NAME"
.LC141:
	.string	"DW_DLE_NO_COMP_DIR"
.LC142:
	.string	"DW_DLE_CU_ADDRESS_SIZE_BAD"
.LC143:
	.string	"DW_DLE_INPUT_ATTR_BAD"
.LC144:
	.string	"DW_DLE_EXPR_NULL"
.LC145:
	.string	"DW_DLE_BAD_EXPR_OPCODE"
.LC146:
	.string	"DW_DLE_EXPR_LENGTH_BAD"
.LC147:
	.string	"DW_DLE_MULTIPLE_RELOC_IN_EXPR"
.LC148:
	.string	"DW_DLE_ELF_GETIDENT_ERROR"
.LC149:
	.string	"DW_DLE_NO_AT_MIPS_FDE"
.LC150:
	.string	"DW_DLE_NO_CIE_FOR_FDE"
.LC151:
	.string	"DW_DLE_DIE_ABBREV_LIST_NULL"
	.align 4
.LC152:
	.string	"DW_DLE_DEBUG_FUNCNAMES_DUPLICATE"
	.align 4
.LC153:
	.string	"DW_DLE_DEBUG_FUNCNAMES_NULL .debug_funcnames section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC154:
	.string	"DW_DLE_DEBUG_FUNCNAMES_VERSION_ERROR"
	.align 4
.LC155:
	.string	"DW_DLE_DEBUG_FUNCNAMES_LENGTH_BAD"
.LC156:
	.string	"DW_DLE_FUNC_NULL"
.LC157:
	.string	"DW_DLE_FUNC_CONTEXT_NULL"
	.align 4
.LC158:
	.string	"DW_DLE_DEBUG_TYPENAMES_DUPLICATE"
	.align 4
.LC159:
	.string	"DW_DLE_DEBUG_TYPENAMES_NULL .debug_typenames section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC160:
	.string	"DW_DLE_DEBUG_TYPENAMES_VERSION_ERROR"
	.align 4
.LC161:
	.string	"DW_DLE_DEBUG_TYPENAMES_LENGTH_BAD"
.LC162:
	.string	"DW_DLE_TYPE_NULL"
.LC163:
	.string	"DW_DLE_TYPE_CONTEXT_NULL"
	.align 4
.LC164:
	.string	"DW_DLE_DEBUG_VARNAMES_DUPLICATE"
	.align 4
.LC165:
	.string	"DW_DLE_DEBUG_VARNAMES_NULL .debug_varnames section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC166:
	.string	"DW_DLE_DEBUG_VARNAMES_VERSION_ERROR"
	.align 4
.LC167:
	.string	"DW_DLE_DEBUG_VARNAMES_LENGTH_BAD"
.LC168:
	.string	"DW_DLE_VAR_NULL"
.LC169:
	.string	"DW_DLE_VAR_CONTEXT_NULL"
	.align 4
.LC170:
	.string	"DW_DLE_DEBUG_WEAKNAMES_DUPLICATE"
	.align 4
.LC171:
	.string	"DW_DLE_DEBUG_WEAKNAMES_NULL .debug_weaknames section present but elf_getdata() failed or section is zero-length"
	.align 4
.LC172:
	.string	"DW_DLE_DEBUG_WEAKNAMES_VERSION_ERROR"
	.align 4
.LC173:
	.string	"DW_DLE_DEBUG_WEAKNAMES_LENGTH_BAD"
.LC174:
	.string	"DW_DLE_WEAK_NULL"
	.align 4
.LC175:
	.string	"DW_DLE_WEAK_CONTEXT_NULL (175)"
	.align 4
.LC176:
	.string	"DW_DLE_LOCDESC_COUNT_WRONG (176)"
	.align 4
.LC177:
	.string	"DW_DLE_MACINFO_STRING_NULL (177)"
	.align 4
.LC178:
	.string	"DW_DLE_MACINFO_STRING_EMPTY (178)"
	.align 4
.LC179:
	.string	"DW_DLE_MACINFO_INTERNAL_ERROR_SPACE (179)"
	.align 4
.LC180:
	.string	"DW_DLE_MACINFO_MALLOC_FAIL (180)"
	.align 4
.LC181:
	.string	"DW_DLE_DEBUGMACINFO_ERROR (181)"
	.align 4
.LC182:
	.string	"DW_DLE_DEBUG_MACRO_LENGTH_BAD (182)"
	.align 4
.LC183:
	.string	"DW_DLE_DEBUG_MACRO_MAX_BAD (183)"
	.align 4
.LC184:
	.string	"DW_DLE_DEBUG_MACRO_INTERNAL_ERR (184)"
	.align 4
.LC185:
	.string	"DW_DLE_DEBUG_MACRO_MALLOC_SPACE (185)"
	.align 4
.LC186:
	.string	"DW_DLE_DEBUG_MACRO_INCONSISTENT (186)"
	.align 4
.LC187:
	.string	"DW_DLE_DF_NO_CIE_AUGMENTATION(187)"
	.align 4
.LC188:
	.string	"DW_DLE_DF_REG_NUM_TOO_HIGH(188)"
	.align 4
.LC189:
	.string	"DW_DLE_DF_MAKE_INSTR_NO_INIT(189)"
	.align 4
.LC190:
	.string	"DW_DLE_DF_NEW_LOC_LESS_OLD_LOC(190)"
	.align 4
.LC191:
	.string	"DW_DLE_DF_POP_EMPTY_STACK(191)"
.LC192:
	.string	"DW_DLE_DF_ALLOC_FAIL(192)"
	.align 4
.LC193:
	.string	"DW_DLE_DF_FRAME_DECODING_ERROR(193)"
	.align 4
.LC194:
	.string	"DW_DLE_DEBUG_LOC_SECTION_SHORT(194)"
.LC195:
	.string	"DW_DLE_LAST_CHILD_ISNT(195)"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	_dwarf_errmsgs, @object
	.size	_dwarf_errmsgs, 784
_dwarf_errmsgs:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
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
	.section	.rodata
	.align 4
.LC196:
	.string	"Could not allocate Dwarf_Error structure, abort() in libdwarf.\n"
	.align 4
.LC197:
	.string	"Could not allocate Dwarf_Error structure, abort() in libdwarf..\n"
	.align 4
.LC198:
	.string	"abort() in libdwarf. No error argument, no handler.\n"
	.text
.globl _dwarf_error
	.type	_dwarf_error, @function
_dwarf_error:
.LFB15:
	.file 1 "../../libdwarf/libdwarf/dwarf_error.c"
	.loc 1 303 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$36, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 309 0
	cmpl	$0, 12(%ebp)
	je	.L2
	.loc 1 314 0
	cmpl	$0, 8(%ebp)
	je	.L4
	.loc 1 315 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 317 0
	cmpl	$0, -8(%ebp)
	jne	.L8
	.loc 1 318 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$63, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 321 0
	call	abort@PLT
.L4:
	.loc 1 326 0
	call	_dwarf_special_no_dbg_error_malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 327 0
	cmpl	$0, -8(%ebp)
	jne	.L8
	.loc 1 328 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$64, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 331 0
	call	abort@PLT
.L8:
	.loc 1 335 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 336 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 337 0
	jmp	.L16
.L2:
	.loc 1 340 0
	cmpl	$0, 8(%ebp)
	je	.L11
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 341 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 342 0
	cmpl	$0, -8(%ebp)
	jne	.L14
	.loc 1 343 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$63, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 345 0
	call	abort@PLT
.L14:
	.loc 1 347 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 348 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 349 0
	jmp	.L16
.L11:
	.loc 1 351 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$52, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 353 0
	call	abort@PLT
.L16:
	.loc 1 354 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	_dwarf_error, .-_dwarf_error
.globl dwarf_errno
	.type	dwarf_errno, @function
dwarf_errno:
.LFB16:
	.loc 1 359 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$8, %esp
.LCFI6:
	.loc 1 360 0
	cmpl	$0, 8(%ebp)
	jne	.L18
	.loc 1 361 0
	movl	$0, -8(%ebp)
	movl	$0, -4(%ebp)
	jmp	.L20
.L18:
	.loc 1 364 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -4(%ebp)
.L20:
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	.loc 1 365 0
	leave
	ret
.LFE16:
	.size	dwarf_errno, .-dwarf_errno
	.section	.rodata
.LC199:
	.string	"Dwarf_Error is NULL"
	.align 4
.LC200:
	.string	"Dwarf_Error value out of range"
	.text
.globl dwarf_errmsg
	.type	dwarf_errmsg, @function
dwarf_errmsg:
.LFB17:
	.loc 1 372 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	subl	$4, %esp
.LCFI9:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 373 0
	cmpl	$0, 8(%ebp)
	jne	.L23
	.loc 1 374 0
	leal	.LC199@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L25
.L23:
	.loc 1 377 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$196, %eax
	jbe	.L26
	.loc 1 378 0
	leal	.LC200@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L25
.L26:
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	_dwarf_errmsgs@GOT(%ecx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -4(%ebp)
.L25:
	movl	-4(%ebp), %eax
	.loc 1 382 0
	leave
	ret
.LFE17:
	.size	dwarf_errmsg, .-dwarf_errmsg
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
	.long	.LCFI3-.LCFI1
	.byte	0x83
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
	.long	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
	.file 2 "../../include/libdwarf.h"
	.file 3 "../../libdwarf/libdwarf/dwarf_opaque.h"
	.file 4 "../../libdwarf/libdwarf/dwarf_error.h"
	.file 5 "../../libdwarf/libdwarf/dwarf_base_types.h"
	.file 6 "../../libdwarf/libdwarf/dwarf_util.h"
	.file 7 "../../libdwarf/libdwarf/dwarf_alloc.h"
	.file 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
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
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI5-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x12fd
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libdwarf/libdwarf/dwarf_error.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libdwarf"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x8
	.byte	0xd6
	.long	0xb1
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0xb
	.byte	0x3b
	.long	0x117
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xb
	.byte	0x90
	.long	0x161
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xb
	.byte	0x91
	.long	0x142
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x18d
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.byte	0x4
	.long	0x19b
	.uleb128 0x7
	.long	0x18d
	.uleb128 0x2
	.string	"dwarf_elf_handle"
	.byte	0x2
	.byte	0x47
	.long	0x1b8
	.uleb128 0x6
	.byte	0x4
	.long	0x1be
	.uleb128 0x8
	.string	"Elf"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Unsigned"
	.byte	0x2
	.byte	0x5c
	.long	0x128
	.uleb128 0x2
	.string	"Dwarf_Half"
	.byte	0x2
	.byte	0x5d
	.long	0xc9
	.uleb128 0x2
	.string	"Dwarf_Small"
	.byte	0x2
	.byte	0x5e
	.long	0xb8
	.uleb128 0x2
	.string	"Dwarf_Signed"
	.byte	0x2
	.byte	0x5f
	.long	0x117
	.uleb128 0x2
	.string	"Dwarf_Ptr"
	.byte	0x2
	.byte	0x62
	.long	0x185
	.uleb128 0x2
	.string	"Dwarf_Debug"
	.byte	0x2
	.byte	0xc2
	.long	0x237
	.uleb128 0x6
	.byte	0x4
	.long	0x23d
	.uleb128 0x9
	.long	0x9bb
	.string	"Dwarf_Debug_s"
	.value	0x478
	.byte	0x2
	.byte	0xc2
	.uleb128 0xa
	.string	"de_elf"
	.byte	0x3
	.byte	0x77
	.long	0x1a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"de_access"
	.byte	0x3
	.byte	0x79
	.long	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"de_errhand"
	.byte	0x3
	.byte	0x7a
	.long	0xa49
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"de_errarg"
	.byte	0x3
	.byte	0x7b
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"de_cu_context"
	.byte	0x3
	.byte	0x81
	.long	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"de_cu_context_list"
	.byte	0x3
	.byte	0x86
	.long	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"de_cu_context_list_end"
	.byte	0x3
	.byte	0x8b
	.long	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"de_offdie_cu_context"
	.byte	0x3
	.byte	0x90
	.long	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.string	"de_offdie_cu_context_end"
	.byte	0x3
	.byte	0x91
	.long	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.string	"de_info_last_offset"
	.byte	0x3
	.byte	0x94
	.long	0xa75
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"de_length_size"
	.byte	0x3
	.byte	0x9a
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.string	"de_pointer_size"
	.byte	0x3
	.byte	0x9e
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xa
	.string	"de_assume_string_in_bounds"
	.byte	0x3
	.byte	0xa3
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xa
	.string	"de_alloc_hdr"
	.byte	0x3
	.byte	0xa8
	.long	0xea3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.string	"de_cie_data"
	.byte	0x3
	.byte	0xb4
	.long	0xeb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x394
	.uleb128 0xa
	.string	"de_cie_count"
	.byte	0x3
	.byte	0xb6
	.long	0x1ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xa
	.string	"de_fde_data"
	.byte	0x3
	.byte	0xb9
	.long	0xeb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xa
	.string	"de_fde_count"
	.byte	0x3
	.byte	0xbb
	.long	0x1ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a4
	.uleb128 0xa
	.string	"de_debug_info"
	.byte	0x3
	.byte	0xbd
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ac
	.uleb128 0xa
	.string	"de_debug_abbrev"
	.byte	0x3
	.byte	0xbe
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xa
	.string	"de_debug_line"
	.byte	0x3
	.byte	0xbf
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b4
	.uleb128 0xa
	.string	"de_debug_loc"
	.byte	0x3
	.byte	0xc0
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xa
	.string	"de_debug_aranges"
	.byte	0x3
	.byte	0xc1
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3bc
	.uleb128 0xa
	.string	"de_debug_macinfo"
	.byte	0x3
	.byte	0xc2
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xa
	.string	"de_debug_pubnames"
	.byte	0x3
	.byte	0xc3
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xa
	.string	"de_debug_str"
	.byte	0x3
	.byte	0xc4
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0xa
	.string	"de_debug_frame"
	.byte	0x3
	.byte	0xc5
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3cc
	.uleb128 0xa
	.string	"de_debug_frame_eh_gnu"
	.byte	0x3
	.byte	0xc6
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xa
	.string	"de_debug_funcnames"
	.byte	0x3
	.byte	0xc9
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d4
	.uleb128 0xa
	.string	"de_debug_typenames"
	.byte	0x3
	.byte	0xca
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xa
	.string	"de_debug_varnames"
	.byte	0x3
	.byte	0xcb
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3dc
	.uleb128 0xa
	.string	"de_debug_weaknames"
	.byte	0x3
	.byte	0xcc
	.long	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e0
	.uleb128 0xa
	.string	"de_debug_info_size"
	.byte	0x3
	.byte	0xce
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e4
	.uleb128 0xa
	.string	"de_debug_abbrev_size"
	.byte	0x3
	.byte	0xcf
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ec
	.uleb128 0xa
	.string	"de_debug_line_size"
	.byte	0x3
	.byte	0xd0
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0xa
	.string	"de_debug_loc_size"
	.byte	0x3
	.byte	0xd1
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x3fc
	.uleb128 0xa
	.string	"de_debug_aranges_size"
	.byte	0x3
	.byte	0xd2
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x404
	.uleb128 0xa
	.string	"de_debug_macinfo_size"
	.byte	0x3
	.byte	0xd3
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x40c
	.uleb128 0xa
	.string	"de_debug_pubnames_size"
	.byte	0x3
	.byte	0xd4
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x414
	.uleb128 0xa
	.string	"de_debug_str_size"
	.byte	0x3
	.byte	0xd5
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x41c
	.uleb128 0xa
	.string	"de_debug_frame_size"
	.byte	0x3
	.byte	0xd8
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x424
	.uleb128 0xa
	.string	"de_debug_frame_size_eh_gnu"
	.byte	0x3
	.byte	0xda
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x42c
	.uleb128 0xa
	.string	"de_debug_funcnames_size"
	.byte	0x3
	.byte	0xdd
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0xa
	.string	"de_debug_typenames_size"
	.byte	0x3
	.byte	0xde
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x43c
	.uleb128 0xa
	.string	"de_debug_varnames_size"
	.byte	0x3
	.byte	0xdf
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x444
	.uleb128 0xa
	.string	"de_debug_weaknames_size"
	.byte	0x3
	.byte	0xe0
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x44c
	.uleb128 0xa
	.string	"de_copy_word"
	.byte	0x3
	.byte	0xe2
	.long	0xee0
	.byte	0x3
	.byte	0x23
	.uleb128 0x454
	.uleb128 0xa
	.string	"de_same_endian"
	.byte	0x3
	.byte	0xe3
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x458
	.uleb128 0xa
	.string	"de_elf_must_close"
	.byte	0x3
	.byte	0xe4
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x459
	.uleb128 0xa
	.string	"de_debug_aranges_index"
	.byte	0x3
	.byte	0xf1
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x45a
	.uleb128 0xa
	.string	"de_debug_line_index"
	.byte	0x3
	.byte	0xf2
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x45c
	.uleb128 0xa
	.string	"de_debug_loc_index"
	.byte	0x3
	.byte	0xf3
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x45e
	.uleb128 0xa
	.string	"de_debug_macinfo_index"
	.byte	0x3
	.byte	0xf4
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x460
	.uleb128 0xa
	.string	"de_debug_pubnames_index"
	.byte	0x3
	.byte	0xf5
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x462
	.uleb128 0xa
	.string	"de_debug_funcnames_index"
	.byte	0x3
	.byte	0xf6
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x464
	.uleb128 0xa
	.string	"de_debug_typenames_index"
	.byte	0x3
	.byte	0xf7
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x466
	.uleb128 0xa
	.string	"de_debug_varnames_index"
	.byte	0x3
	.byte	0xf8
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0xa
	.string	"de_debug_weaknames_index"
	.byte	0x3
	.byte	0xf9
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x46a
	.uleb128 0xa
	.string	"de_debug_frame_index"
	.byte	0x3
	.byte	0xfa
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0xa
	.string	"de_debug_frame_eh_gnu_index"
	.byte	0x3
	.byte	0xfb
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x46e
	.uleb128 0xa
	.string	"de_debug_str_index"
	.byte	0x3
	.byte	0xfc
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0xa
	.string	"de_debug_info_index"
	.byte	0x3
	.byte	0xfd
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x472
	.uleb128 0xa
	.string	"de_debug_abbrev_index"
	.byte	0x3
	.byte	0xfe
	.long	0x1da
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.uleb128 0xa
	.string	"de_big_endian_object"
	.byte	0x3
	.byte	0xff
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x476
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Error"
	.byte	0x2
	.byte	0xca
	.long	0x9ce
	.uleb128 0x6
	.byte	0x4
	.long	0x9d4
	.uleb128 0xb
	.long	0x9ff
	.string	"Dwarf_Error_s"
	.byte	0x4
	.byte	0x2
	.byte	0xca
	.uleb128 0xa
	.string	"er_errval"
	.byte	0x4
	.byte	0x2e
	.long	0xa87
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Fde"
	.byte	0x2
	.byte	0xcd
	.long	0xa10
	.uleb128 0x6
	.byte	0x4
	.long	0xa16
	.uleb128 0x8
	.string	"Dwarf_Fde_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Cie"
	.byte	0x2
	.byte	0xce
	.long	0xa35
	.uleb128 0x6
	.byte	0x4
	.long	0xa3b
	.uleb128 0x8
	.string	"Dwarf_Cie_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Handler"
	.byte	0x2
	.byte	0xdc
	.long	0xa5e
	.uleb128 0x6
	.byte	0x4
	.long	0xa64
	.uleb128 0xc
	.long	0xa75
	.byte	0x1
	.uleb128 0xd
	.long	0x9bb
	.uleb128 0xd
	.long	0x213
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Word"
	.byte	0x5
	.byte	0x52
	.long	0xdf
	.uleb128 0x2
	.string	"Dwarf_Sword"
	.byte	0x5
	.byte	0x53
	.long	0x161
	.uleb128 0x2
	.string	"Dwarf_Byte_Ptr"
	.byte	0x5
	.byte	0x58
	.long	0xab0
	.uleb128 0x6
	.byte	0x4
	.long	0x1ec
	.uleb128 0x2
	.string	"Dwarf_Abbrev_List"
	.byte	0x5
	.byte	0x6a
	.long	0xacf
	.uleb128 0x6
	.byte	0x4
	.long	0xad5
	.uleb128 0x8
	.string	"Dwarf_Abbrev_List_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_CU_Context"
	.byte	0x5
	.byte	0x6c
	.long	0xb03
	.uleb128 0x6
	.byte	0x4
	.long	0xb09
	.uleb128 0xb
	.long	0xc57
	.string	"Dwarf_CU_Context_s"
	.byte	0x28
	.byte	0x5
	.byte	0x6c
	.uleb128 0xa
	.string	"cc_dbg"
	.byte	0x3
	.byte	0x67
	.long	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"cc_length"
	.byte	0x3
	.byte	0x68
	.long	0xa75
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"cc_length_size"
	.byte	0x3
	.byte	0x69
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"cc_extension_size"
	.byte	0x3
	.byte	0x6a
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.string	"cc_version_stamp"
	.byte	0x3
	.byte	0x6b
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"cc_abbrev_offset"
	.byte	0x3
	.byte	0x6c
	.long	0xa87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"cc_address_size"
	.byte	0x3
	.byte	0x6d
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"cc_debug_info_offset"
	.byte	0x3
	.byte	0x6e
	.long	0xa75
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"cc_last_abbrev_ptr"
	.byte	0x3
	.byte	0x6f
	.long	0xa9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"cc_abbrev_hash_table"
	.byte	0x3
	.byte	0x70
	.long	0xc57
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"cc_next"
	.byte	0x3
	.byte	0x71
	.long	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.string	"cc_offset_length"
	.byte	0x3
	.byte	0x72
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Hash_Table"
	.byte	0x5
	.byte	0x6d
	.long	0xc6f
	.uleb128 0x6
	.byte	0x4
	.long	0xc75
	.uleb128 0xb
	.long	0xcb6
	.string	"Dwarf_Hash_Table_s"
	.byte	0x8
	.byte	0x5
	.byte	0x6d
	.uleb128 0xa
	.string	"at_head"
	.byte	0x6
	.byte	0xff
	.long	0xab6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"at_tail"
	.byte	0x6
	.value	0x100
	.long	0xab6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Hdr"
	.byte	0x5
	.byte	0x70
	.long	0xccd
	.uleb128 0x6
	.byte	0x4
	.long	0xcd3
	.uleb128 0xb
	.long	0xdc6
	.string	"Dwarf_Alloc_Hdr_s"
	.byte	0x1c
	.byte	0x5
	.byte	0x70
	.uleb128 0xa
	.string	"ah_struct_user_holds"
	.byte	0x7
	.byte	0x49
	.long	0xa87
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"ah_bytes_one_struct"
	.byte	0x7
	.byte	0x4e
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"ah_structs_per_chunk"
	.byte	0x7
	.byte	0x53
	.long	0xa75
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"ah_bytes_malloc_per_chunk"
	.byte	0x7
	.byte	0x58
	.long	0xa75
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"ah_chunks_allocated"
	.byte	0x7
	.byte	0x5b
	.long	0xa87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"ah_alloc_area_head"
	.byte	0x7
	.byte	0x60
	.long	0xdc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"ah_last_alloc_area"
	.byte	0x7
	.byte	0x65
	.long	0xdc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Area"
	.byte	0x7
	.byte	0x2f
	.long	0xdde
	.uleb128 0x6
	.byte	0x4
	.long	0xde4
	.uleb128 0xb
	.long	0xea3
	.string	"Dwarf_Alloc_Area_s"
	.byte	0x1c
	.byte	0x7
	.byte	0x2f
	.uleb128 0xa
	.string	"aa_free_list"
	.byte	0x7
	.byte	0x72
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"aa_free_structs_in_chunk"
	.byte	0x7
	.byte	0x77
	.long	0xa87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"aa_blob_start"
	.byte	0x7
	.byte	0x7d
	.long	0xab0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"aa_blob_end"
	.byte	0x7
	.byte	0x80
	.long	0xab0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"aa_alloc_hdr"
	.byte	0x7
	.byte	0x84
	.long	0xcb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"aa_next"
	.byte	0x7
	.byte	0x89
	.long	0xdc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"aa_prev"
	.byte	0x7
	.byte	0x8a
	.long	0xdc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xf
	.long	0xeb3
	.long	0xcd3
	.uleb128 0x10
	.long	0x17e
	.byte	0x1e
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xa24
	.uleb128 0x6
	.byte	0x4
	.long	0x9ff
	.uleb128 0x11
	.long	0xed9
	.byte	0x1
	.long	0x185
	.uleb128 0xd
	.long	0x185
	.uleb128 0xd
	.long	0xed9
	.uleb128 0xd
	.long	0xa3
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xedf
	.uleb128 0x12
	.uleb128 0x6
	.byte	0x4
	.long	0xebf
	.uleb128 0x13
	.long	0x1161
	.long	.LASF1
	.byte	0x94
	.byte	0x9
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0xa
	.value	0x10c
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0xa
	.value	0x111
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0xa
	.value	0x112
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0xa
	.value	0x113
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0xa
	.value	0x114
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0xa
	.value	0x115
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0xa
	.value	0x116
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0xa
	.value	0x117
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0xa
	.value	0x118
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0xa
	.value	0x11a
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0xa
	.value	0x11b
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0xa
	.value	0x11c
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0xa
	.value	0x11e
	.long	0x11b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0xa
	.value	0x120
	.long	0x11b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0xa
	.value	0x122
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0xa
	.value	0x126
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0xa
	.value	0x128
	.long	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0xa
	.value	0x12c
	.long	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0xa
	.value	0x12d
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0xa
	.value	0x12e
	.long	0x11be
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0xa
	.value	0x132
	.long	0x11ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0xa
	.value	0x13b
	.long	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0xa
	.value	0x144
	.long	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0xa
	.value	0x145
	.long	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0xa
	.value	0x146
	.long	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0xa
	.value	0x147
	.long	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0xa
	.value	0x148
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0xa
	.value	0x14a
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0xa
	.value	0x14c
	.long	0x11d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0xa
	.byte	0xb0
	.uleb128 0xb
	.long	0x11b2
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xa
	.byte	0xb6
	.uleb128 0xa
	.string	"_next"
	.byte	0xa
	.byte	0xb7
	.long	0x11b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"_sbuf"
	.byte	0xa
	.byte	0xb8
	.long	0x11b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"_pos"
	.byte	0xa
	.byte	0xbc
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x116f
	.uleb128 0x6
	.byte	0x4
	.long	0xee6
	.uleb128 0xf
	.long	0x11ce
	.long	0x18d
	.uleb128 0x10
	.long	0x17e
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1161
	.uleb128 0xf
	.long	0x11e4
	.long	0x18d
	.uleb128 0x10
	.long	0x17e
	.byte	0x27
	.byte	0x0
	.uleb128 0x15
	.long	0x124c
	.byte	0x1
	.string	"_dwarf_error"
	.byte	0x1
	.value	0x12f
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x12e
	.long	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"error"
	.byte	0x1
	.value	0x12e
	.long	0x124c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.string	"errval"
	.byte	0x1
	.value	0x12e
	.long	0xa87
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"errptr"
	.byte	0x1
	.value	0x130
	.long	0x9bb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x9bb
	.uleb128 0x18
	.long	0x128a
	.byte	0x1
	.string	"dwarf_errno"
	.byte	0x1
	.value	0x167
	.byte	0x1
	.long	0x1c4
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x16
	.string	"error"
	.byte	0x1
	.value	0x166
	.long	0x9bb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x18
	.long	0x12c3
	.byte	0x1
	.string	"dwarf_errmsg"
	.byte	0x1
	.value	0x174
	.byte	0x1
	.long	0x187
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x16
	.string	"error"
	.byte	0x1
	.value	0x173
	.long	0x9bb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.string	"stderr"
	.byte	0x9
	.byte	0x90
	.long	0x11b8
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x12e3
	.long	0x195
	.uleb128 0x10
	.long	0x17e
	.byte	0xc3
	.byte	0x0
	.uleb128 0x1a
	.string	"_dwarf_errmsgs"
	.byte	0x1
	.byte	0x3a
	.long	0x12d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_dwarf_errmsgs
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x53
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1301
	.long	0x11e4
	.string	"_dwarf_error"
	.long	0x1252
	.string	"dwarf_errno"
	.long	0x128a
	.string	"dwarf_errmsg"
	.long	0x12e3
	.string	"_dwarf_errmsgs"
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
.LASF1:
	.string	"_IO_FILE"
.LASF0:
	.string	"unsigned int"
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
