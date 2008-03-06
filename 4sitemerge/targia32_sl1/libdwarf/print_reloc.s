	.file	"print_reloc.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	".rel.debug_info"
.LC1:
	.string	".rel.debug_line"
.LC2:
	.string	".rel.debug_pubname"
.LC3:
	.string	".rel.debug_abbrev"
.LC4:
	.string	".rel.debug_aranges"
.LC5:
	.string	".rel.debug_frame"
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	sectnames, @object
	.size	sectnames, 24
sectnames:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.section	.rodata
.LC6:
	.string	".rel.debug_info duplicate"
.LC7:
	.string	".rel.debug_line duplicate"
.LC8:
	.string	".rel.debug_pubname duplicate"
.LC9:
	.string	".rel.debug_abbrev duplicate"
.LC10:
	.string	".rel.debug_aranges duplicate"
.LC11:
	.string	".rel.debug_frame duplicate"
	.section	.data.rel.local
	.align 4
	.type	error_msg_duplicate, @object
	.size	error_msg_duplicate, 24
error_msg_duplicate:
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.section	.rodata
.LC12:
	.string	".rel.debug_info null"
.LC13:
	.string	".rel.debug_line null"
.LC14:
	.string	".rel.debug_pubname null"
.LC15:
	.string	".rel.debug_abbrev null"
.LC16:
	.string	".rel.debug_aranges null"
.LC17:
	.string	".rel.debug_frame null"
	.section	.data.rel.local
	.align 4
	.type	error_msg_null, @object
	.size	error_msg_null, 24
error_msg_null:
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.section	.rodata
.LC18:
	.string	"R_MIPS_NONE"
.LC19:
	.string	"R_MIPS_16"
.LC20:
	.string	"R_MIPS_32"
.LC21:
	.string	"R_MIPS_REL32"
.LC22:
	.string	"R_MIPS_26"
.LC23:
	.string	"R_MIPS_HI16"
.LC24:
	.string	"R_MIPS_LO16"
.LC25:
	.string	"R_MIPS_GPREL16"
.LC26:
	.string	"R_MIPS_LITERAL"
.LC27:
	.string	"R_MIPS_GOT16"
.LC28:
	.string	"R_MIPS_PC16"
.LC29:
	.string	"R_MIPS_CALL16"
.LC30:
	.string	"R_MIPS_GPREL32"
.LC31:
	.string	"reloc type 13?"
.LC32:
	.string	"reloc type 14?"
.LC33:
	.string	"reloc type 15?"
.LC34:
	.string	"R_MIPS_SHIFT5"
.LC35:
	.string	"R_MIPS_SHIFT6"
.LC36:
	.string	"R_MIPS_64"
.LC37:
	.string	"R_MIPS_GOT_DISP"
.LC38:
	.string	"R_MIPS_GOT_PAGE"
.LC39:
	.string	"R_MIPS_GOT_OFST"
.LC40:
	.string	"R_MIPS_GOT_HI16"
.LC41:
	.string	"R_MIPS_GOT_LO16"
.LC42:
	.string	"R_MIPS_SUB"
.LC43:
	.string	"R_MIPS_INSERT_A"
.LC44:
	.string	"R_MIPS_INSERT_B"
.LC45:
	.string	"R_MIPS_DELETE"
.LC46:
	.string	"R_MIPS_HIGHER"
.LC47:
	.string	"R_MIPS_HIGHEST"
.LC48:
	.string	"R_MIPS_CALL_HI16"
.LC49:
	.string	"R_MIPS_CALL_LO16"
.LC50:
	.string	"R_MIPS_SCN_DISP"
.LC51:
	.string	"R_MIPS_REL16"
.LC52:
	.string	"R_MIPS_ADD_IMMEDIATE"
	.section	.data.rel.local
	.align 32
	.type	reloc_type_names, @object
	.size	reloc_type_names, 140
reloc_type_names:
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
	.local	buf.4361
	.comm	buf.4361,100,32
	.section	.rodata
.LC53:
	.string	"reloc type %d unknown"
	.text
	.type	get_reloc_type_names, @function
get_reloc_type_names:
.LFB5:
	.file 1 "../../libdwarf/dwarfdump/print_reloc.c"
	.loc 1 133 0
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
	.loc 1 135 0
	movl	$35, -12(%ebp)
	.loc 1 138 0
	cmpl	$0, 8(%ebp)
	js	.L2
	movl	8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L4
.L2:
	.loc 1 139 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	buf.4361@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 140 0
	leal	buf.4361@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 138 0
	jmp	.L5
.L4:
	.loc 1 142 0
	movl	8(%ebp), %eax
	movl	reloc_type_names@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
.L5:
	.loc 1 144 0
	movl	-8(%ebp), %eax
	.loc 1 145 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	get_reloc_type_names, .-get_reloc_type_names
	.section	.rodata
.LC54:
	.string	"dwarf_get_elf error"
.LC55:
	.string	"DW_ELF_GETIDENT_ERROR"
	.text
.globl print_relocinfo
	.type	print_relocinfo, @function
print_relocinfo:
.LFB6:
	.loc 1 199 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$52, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 206 0
	movl	$0, -8(%ebp)
	jmp	.L8
.L9:
	.loc 1 207 0
	movl	-8(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	$0, (%eax,%ecx)
	.loc 1 208 0
	movl	-8(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	.loc 1 206 0
	addl	$1, -8(%ebp)
.L8:
	cmpl	$5, -8(%ebp)
	jle	.L9
	.loc 1 210 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_elf@PLT
	movl	%eax, -12(%ebp)
	.loc 1 211 0
	cmpl	$0, -12(%ebp)
	je	.L11
	.loc 1 212 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L11:
	.loc 1 214 0
	movl	-24(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	elf_getident@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L13
	.loc 1 215 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L13:
	.loc 1 217 0
	movl	-20(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	cmpb	$2, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 218 0
	cmpl	$0, -16(%ebp)
	je	.L15
	.loc 1 219 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_relocinfo_64
	jmp	.L18
.L15:
	.loc 1 222 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_relocinfo_32
.L18:
	.loc 1 224 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	print_relocinfo, .-print_relocinfo
	.section	.rodata
.LC56:
	.string	"DW_ELF_GETEHDR_ERROR"
.LC57:
	.string	"DW_ELF_GETSHDR_ERROR"
.LC58:
	.string	"DW_ELF_STRPTR_ERROR"
.LC59:
	.string	"no symbol table data"
	.align 4
.LC60:
	.string	"problem reading symbol table data"
.LC61:
	.string	".rel.debug_"
	.text
	.type	print_relocinfo_64, @function
print_relocinfo_64:
.LFB7:
	.loc 1 227 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%edi
.LCFI10:
	pushl	%esi
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$140, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 229 0
	movl	$0, -40(%ebp)
	.loc 1 236 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	elf64_getehdr@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.L84
	.loc 1 237 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 240 0
	jmp	.L84
.L23:
	.loc 1 242 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf64_getshdr@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L24
	.loc 1 243 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L24:
	.loc 1 245 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movzwl	62(%eax), %eax
	movzwl	%ax, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_strptr@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L26
	.loc 1 247 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L26:
	.loc 1 249 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$2, %eax
	jne	.L28
.LBB2:
	.loc 1 250 0
	movl	$0, -44(%ebp)
	.loc 1 251 0
	movl	$0, -16(%ebp)
	.loc 1 252 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_scndata
	movl	%eax, sym_64@GOTOFF(%ebx)
	movl	sym_64@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L30
	.loc 1 253 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L30:
	.loc 1 255 0
	movl	-44(%ebp), %edx
	movl	$-1431655765, -132(%ebp)
	movl	-132(%ebp), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 256 0
	movl	sym_64@GOTOFF(%ebx), %eax
	addl	$24, %eax
	movl	%eax, sym_64@GOTOFF(%ebx)
	.loc 1 257 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	sym_64@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	read_64_syms
	movl	%eax, sym_data_64@GOTOFF(%ebx)
	movl	sym_data_64@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L22
	.loc 1 259 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L22
.L28:
.LBE2:
	.loc 1 262 0
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
	leal	.LC61@GOTOFF(%ebx), %ecx
	movl	%ecx, -52(%ebp)
	movl	$11, -56(%ebp)
	cld
	movl	-48(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	-56(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L22
	.loc 1 264 0
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
	leal	.LC0@GOTOFF(%ebx), %esi
	movl	%esi, -64(%ebp)
	movl	$16, -68(%ebp)
	cld
	movl	-60(%ebp), %esi
	movl	-64(%ebp), %edi
	movl	-68(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L35
	.loc 1 265 0
	movl	sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L37
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L37:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L39
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L41
.L39:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L41:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 4+sect_data@GOTOFF(%ebx)
	movl	%edx, 8+sect_data@GOTOFF(%ebx)
	jmp	.L22
.L35:
	.loc 1 267 0
	movl	-24(%ebp), %eax
	movl	%eax, -72(%ebp)
	leal	.LC1@GOTOFF(%ebx), %esi
	movl	%esi, -76(%ebp)
	movl	$16, -80(%ebp)
	cld
	movl	-72(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L42
	.loc 1 268 0
	movl	12+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L44
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L44:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L46
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L48
.L46:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L48:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 16+sect_data@GOTOFF(%ebx)
	movl	%edx, 20+sect_data@GOTOFF(%ebx)
	jmp	.L22
.L42:
	.loc 1 270 0
	movl	-24(%ebp), %eax
	movl	%eax, -84(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -88(%ebp)
	movl	$19, -92(%ebp)
	cld
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
	testl	%eax, %eax
	jne	.L49
	.loc 1 271 0
	movl	24+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L51
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L51:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L53
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L55
.L53:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L55:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 24+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 28+sect_data@GOTOFF(%ebx)
	movl	%edx, 32+sect_data@GOTOFF(%ebx)
	jmp	.L22
.L49:
	.loc 1 273 0
	movl	-24(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
	movl	%esi, -100(%ebp)
	movl	$19, -104(%ebp)
	cld
	movl	-96(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-104(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L56
	.loc 1 274 0
	movl	48+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L58
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L58:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L60
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L62
.L60:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L62:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 48+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 52+sect_data@GOTOFF(%ebx)
	movl	%edx, 56+sect_data@GOTOFF(%ebx)
	jmp	.L22
.L56:
	.loc 1 276 0
	movl	-24(%ebp), %eax
	movl	%eax, -108(%ebp)
	leal	.LC3@GOTOFF(%ebx), %esi
	movl	%esi, -112(%ebp)
	movl	$18, -116(%ebp)
	cld
	movl	-108(%ebp), %esi
	movl	-112(%ebp), %edi
	movl	-116(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L63
	.loc 1 277 0
	movl	36+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L65
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L65:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L67
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L69
.L67:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L69:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 36+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 40+sect_data@GOTOFF(%ebx)
	movl	%edx, 44+sect_data@GOTOFF(%ebx)
	jmp	.L22
.L63:
	.loc 1 279 0
	movl	-24(%ebp), %eax
	movl	%eax, -120(%ebp)
	leal	.LC5@GOTOFF(%ebx), %esi
	movl	%esi, -124(%ebp)
	movl	$17, -128(%ebp)
	cld
	movl	-120(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L22
	.loc 1 280 0
	movl	60+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L71
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L71:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L73
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L75
.L73:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L75:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 60+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 64+sect_data@GOTOFF(%ebx)
	movl	%edx, 68+sect_data@GOTOFF(%ebx)
.L22:
.L84:
	.loc 1 240 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_nextscn@PLT
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.L23
	.loc 1 284 0
	movl	$0, -20(%ebp)
	jmp	.L77
.L78:
	.loc 1 285 0
	movl	-20(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	testl	%eax, %eax
	je	.L79
	movl	-20(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %edx
	movl	4(%eax,%ecx), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L79
	.loc 1 286 0
	movl	-20(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %esi
	movl	8(%eax,%ecx), %edi
	movl	-20(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_reloc_information_64
.L79:
	.loc 1 284 0
	addl	$1, -20(%ebp)
.L77:
	cmpl	$5, -20(%ebp)
	jle	.L78
	.loc 1 290 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE7:
	.size	print_relocinfo_64, .-print_relocinfo_64
	.type	print_relocinfo_32, @function
print_relocinfo_32:
.LFB8:
	.loc 1 293 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%edi
.LCFI16:
	pushl	%esi
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$140, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 294 0
	movl	$0, -40(%ebp)
	.loc 1 301 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	elf32_getehdr@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.L150
	.loc 1 302 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 304 0
	jmp	.L150
.L89:
	.loc 1 305 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf32_getshdr@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L90
	.loc 1 306 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L90:
	.loc 1 308 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movzwl	50(%eax), %eax
	movzwl	%ax, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_strptr@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L92
	.loc 1 310 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L92:
	.loc 1 312 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$2, %eax
	jne	.L94
.LBB3:
	.loc 1 313 0
	movl	$0, -44(%ebp)
	.loc 1 314 0
	movl	$0, -16(%ebp)
	.loc 1 315 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_scndata
	movl	%eax, sym@GOTOFF(%ebx)
	movl	sym@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L96
	.loc 1 316 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L96:
	.loc 1 318 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_scndata
	movl	%eax, sym@GOTOFF(%ebx)
	.loc 1 319 0
	movl	-44(%ebp), %eax
	shrl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 320 0
	movl	sym@GOTOFF(%ebx), %eax
	addl	$16, %eax
	movl	%eax, sym@GOTOFF(%ebx)
	.loc 1 321 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	sym@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	readsyms
	movl	%eax, sym_data@GOTOFF(%ebx)
	movl	sym_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L88
	.loc 1 323 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L88
.L94:
.LBE3:
	.loc 1 326 0
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	$11, -56(%ebp)
	cld
	movl	-48(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	-56(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L88
	.loc 1 328 0
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
	leal	.LC0@GOTOFF(%ebx), %esi
	movl	%esi, -64(%ebp)
	movl	$16, -68(%ebp)
	cld
	movl	-60(%ebp), %esi
	movl	-64(%ebp), %edi
	movl	-68(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L101
	.loc 1 329 0
	movl	sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L103
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L103:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L105
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L107
.L105:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L107:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 4+sect_data@GOTOFF(%ebx)
	movl	%edx, 8+sect_data@GOTOFF(%ebx)
	jmp	.L88
.L101:
	.loc 1 331 0
	movl	-24(%ebp), %eax
	movl	%eax, -72(%ebp)
	leal	.LC1@GOTOFF(%ebx), %esi
	movl	%esi, -76(%ebp)
	movl	$16, -80(%ebp)
	cld
	movl	-72(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L108
	.loc 1 332 0
	movl	12+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L110
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L110:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L112
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L114
.L112:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L114:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 16+sect_data@GOTOFF(%ebx)
	movl	%edx, 20+sect_data@GOTOFF(%ebx)
	jmp	.L88
.L108:
	.loc 1 334 0
	movl	-24(%ebp), %eax
	movl	%eax, -84(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -88(%ebp)
	movl	$19, -92(%ebp)
	cld
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
	testl	%eax, %eax
	jne	.L115
	.loc 1 335 0
	movl	24+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L117
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L117:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L119
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L121
.L119:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L121:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 24+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 28+sect_data@GOTOFF(%ebx)
	movl	%edx, 32+sect_data@GOTOFF(%ebx)
	jmp	.L88
.L115:
	.loc 1 337 0
	movl	-24(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
	movl	%esi, -100(%ebp)
	movl	$19, -104(%ebp)
	cld
	movl	-96(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-104(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L122
	.loc 1 338 0
	movl	48+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L124
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L124:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L126
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L128
.L126:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L128:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 48+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 52+sect_data@GOTOFF(%ebx)
	movl	%edx, 56+sect_data@GOTOFF(%ebx)
	jmp	.L88
.L122:
	.loc 1 340 0
	movl	-24(%ebp), %eax
	movl	%eax, -108(%ebp)
	leal	.LC3@GOTOFF(%ebx), %esi
	movl	%esi, -112(%ebp)
	movl	$18, -116(%ebp)
	cld
	movl	-108(%ebp), %esi
	movl	-112(%ebp), %edi
	movl	-116(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L129
	.loc 1 341 0
	movl	36+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L131
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L131:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L133
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L135
.L133:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L135:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 36+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 40+sect_data@GOTOFF(%ebx)
	movl	%edx, 44+sect_data@GOTOFF(%ebx)
	jmp	.L88
.L129:
	.loc 1 343 0
	movl	-24(%ebp), %eax
	movl	%eax, -120(%ebp)
	leal	.LC5@GOTOFF(%ebx), %esi
	movl	%esi, -124(%ebp)
	movl	$17, -128(%ebp)
	cld
	movl	-120(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L88
	.loc 1 344 0
	movl	60+sect_data@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L137
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20+error_msg_duplicate@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L137:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L139
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L141
.L139:
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20+error_msg_null@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L141:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 60+sect_data@GOTOFF(%ebx)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	movl	%eax, 64+sect_data@GOTOFF(%ebx)
	movl	%edx, 68+sect_data@GOTOFF(%ebx)
.L88:
.L150:
	.loc 1 304 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_nextscn@PLT
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.L89
	.loc 1 348 0
	movl	$0, -20(%ebp)
	jmp	.L143
.L144:
	.loc 1 349 0
	movl	-20(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	testl	%eax, %eax
	je	.L145
	movl	-20(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %edx
	movl	4(%eax,%ecx), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L145
	.loc 1 350 0
	movl	-20(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %esi
	movl	8(%eax,%ecx), %edi
	movl	-20(%ebp), %edx
	leal	sect_data@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_reloc_information_32
.L145:
	.loc 1 348 0
	addl	$1, -20(%ebp)
.L143:
	cmpl	$5, -20(%ebp)
	jle	.L144
	.loc 1 353 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE8:
	.size	print_relocinfo_32, .-print_relocinfo_32
	.section	.rodata
.LC62:
	.string	"\n%s:\n"
.LC63:
	.string	"%5lu\t<%3lld> %-34s%s\n"
	.text
	.type	print_reloc_information_64, @function
print_reloc_information_64:
.LFB9:
	.loc 1 373 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%edi
.LCFI22:
	pushl	%esi
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$76, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 375 0
	movl	8(%ebp), %eax
	movl	sectnames@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 377 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L152
.L153:
.LBB4:
	.loc 1 381 0
	movl	-32(%ebp), %eax
	addl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 382 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	get_reloc_type_names
	movl	%eax, -44(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%edx, %eax
	xorl	%edx, %edx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	sym_data@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$28, %eax
	movl	4(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, 4(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.LBE4:
	.loc 1 377 0
	addl	$16, -32(%ebp)
	adcl	$0, -28(%ebp)
.L152:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %edx
	cmpl	-36(%ebp), %edx
	jb	.L153
	movl	-52(%ebp), %eax
	cmpl	-36(%ebp), %eax
	ja	.L156
	movl	-56(%ebp), %edx
	cmpl	-40(%ebp), %edx
	jb	.L153
.L156:
	.loc 1 400 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE9:
	.size	print_reloc_information_64, .-print_reloc_information_64
	.section	.rodata
.LC64:
	.string	"%5lu\t<%3d> %-34s%s\n"
	.text
	.type	print_reloc_information_32, @function
print_reloc_information_32:
.LFB10:
	.loc 1 404 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%esi
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$64, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 406 0
	movl	8(%ebp), %eax
	movl	sectnames@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 407 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L158
.L159:
.LBB5:
	.loc 1 408 0
	movl	-24(%ebp), %eax
	addl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 409 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	andl	$255, %eax
	movl	%eax, (%esp)
	call	get_reloc_type_names
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$8, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	sym_data@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$28, %eax
	movl	4(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	shrl	$8, %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%esi, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.LBE5:
	.loc 1 407 0
	addl	$8, -24(%ebp)
	adcl	$0, -20(%ebp)
.L158:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-36(%ebp), %edx
	cmpl	-28(%ebp), %edx
	jb	.L159
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	ja	.L162
	movl	-40(%ebp), %edx
	cmpl	-32(%ebp), %edx
	jb	.L159
.L162:
	.loc 1 414 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE10:
	.size	print_reloc_information_32, .-print_reloc_information_32
	.type	readsyms, @function
readsyms:
.LFB11:
	.loc 1 418 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$36, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 421 0
	movl	$28, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L164
	.loc 1 422 0
	movl	$0, -24(%ebp)
	jmp	.L166
.L164:
	.loc 1 424 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 425 0
	movl	$1, -8(%ebp)
	jmp	.L167
.L168:
	.loc 1 426 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 427 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_strptr@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 428 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 429 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 430 0
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 431 0
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 432 0
	movl	8(%ebp), %eax
	movzbl	13(%eax), %edx
	movl	-12(%ebp), %eax
	movb	%dl, 24(%eax)
	.loc 1 433 0
	movl	8(%ebp), %eax
	movzwl	14(%eax), %edx
	movl	-12(%ebp), %eax
	movw	%dx, 26(%eax)
	.loc 1 425 0
	addl	$1, -8(%ebp)
	addl	$16, 8(%ebp)
	addl	$28, -12(%ebp)
.L167:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L168
	.loc 1 435 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L166:
	movl	-24(%ebp), %eax
	.loc 1 436 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE11:
	.size	readsyms, .-readsyms
	.type	read_64_syms, @function
read_64_syms:
.LFB12:
	.loc 1 440 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$36, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 445 0
	movl	$32, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L172
	.loc 1 446 0
	movl	$0, -24(%ebp)
	jmp	.L174
.L172:
	.loc 1 448 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 449 0
	movl	$1, -8(%ebp)
	jmp	.L175
.L176:
	.loc 1 450 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 451 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_strptr@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 452 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	-12(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 454 0
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 455 0
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 456 0
	movl	8(%ebp), %eax
	movzbl	5(%eax), %edx
	movl	-12(%ebp), %eax
	movb	%dl, 28(%eax)
	.loc 1 457 0
	movl	8(%ebp), %eax
	movzwl	6(%eax), %edx
	movl	-12(%ebp), %eax
	movw	%dx, 30(%eax)
	.loc 1 449 0
	addl	$1, -8(%ebp)
	addl	$24, 8(%ebp)
	addl	$32, -12(%ebp)
.L175:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L176
	.loc 1 459 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L174:
	movl	-24(%ebp), %eax
	.loc 1 463 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE12:
	.size	read_64_syms, .-read_64_syms
	.type	get_scndata, @function
get_scndata:
.LFB13:
	.loc 1 467 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$36, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 469 0
	movl	$0, -8(%ebp)
	.loc 1 470 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L180
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L182
.L180:
	.loc 1 472 0
	movl	$0, -24(%ebp)
	jmp	.L183
.L182:
	.loc 1 474 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 475 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L183:
	movl	-24(%ebp), %eax
	.loc 1 476 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	get_scndata, .-get_scndata
	.local	sect_data
	.comm	sect_data,72,32
	.local	sym
	.comm	sym,4,4
	.local	sym_64
	.comm	sym_64,4,4
	.local	sym_data
	.comm	sym_data,4,4
	.local	sym_data_64
	.comm	sym_data_64,4,4
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
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI0-.LFB5
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI4-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI7-.LCFI5
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI8-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI9
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI14-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI15
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI20-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI21
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI26-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI27
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI31-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI32
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI35-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI38-.LCFI36
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI39-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI40
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
	.file 2 "../../libdwarf/libdwarf/libdwarf.h"
	.file 3 "../include/libelf/libelf.h"
	.file 4 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/include/elf.h"
	.file 8 "/usr/include/stdint.h"
	.file 9 "../../libdwarf/dwarfdump/globals.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI9-.Ltext0
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI15-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI20-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI21-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI26-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI27-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI35-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI36-.Ltext0
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI39-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI40-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x11b7
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libdwarf/dwarfdump/print_reloc.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libdwarf"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x4
	.byte	0xd6
	.long	0xb2
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
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x152
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x16d
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"off_t"
	.byte	0x5
	.byte	0x58
	.long	0x143
	.uleb128 0x6
	.byte	0x4
	.long	0xa4
	.uleb128 0x2
	.string	"uint16_t"
	.byte	0x8
	.byte	0x32
	.long	0xca
	.uleb128 0x2
	.string	"uint32_t"
	.byte	0x8
	.byte	0x34
	.long	0xb2
	.uleb128 0x2
	.string	"uint64_t"
	.byte	0x8
	.byte	0x3b
	.long	0x129
	.uleb128 0x2
	.string	"Elf32_Half"
	.byte	0x7
	.byte	0x20
	.long	0x188
	.uleb128 0x2
	.string	"Elf64_Half"
	.byte	0x7
	.byte	0x21
	.long	0x188
	.uleb128 0x2
	.string	"Elf32_Word"
	.byte	0x7
	.byte	0x24
	.long	0x198
	.uleb128 0x2
	.string	"Elf64_Word"
	.byte	0x7
	.byte	0x26
	.long	0x198
	.uleb128 0x2
	.string	"Elf64_Xword"
	.byte	0x7
	.byte	0x2c
	.long	0x1a8
	.uleb128 0x2
	.string	"Elf32_Addr"
	.byte	0x7
	.byte	0x30
	.long	0x198
	.uleb128 0x2
	.string	"Elf64_Addr"
	.byte	0x7
	.byte	0x31
	.long	0x1a8
	.uleb128 0x2
	.string	"Elf32_Off"
	.byte	0x7
	.byte	0x34
	.long	0x198
	.uleb128 0x2
	.string	"Elf64_Off"
	.byte	0x7
	.byte	0x35
	.long	0x1a8
	.uleb128 0x2
	.string	"Elf32_Section"
	.byte	0x7
	.byte	0x38
	.long	0x188
	.uleb128 0x2
	.string	"Elf64_Section"
	.byte	0x7
	.byte	0x39
	.long	0x188
	.uleb128 0x7
	.long	0x36f
	.byte	0x34
	.byte	0x7
	.byte	0x45
	.uleb128 0x8
	.string	"e_ident"
	.byte	0x7
	.byte	0x46
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"e_type"
	.byte	0x7
	.byte	0x47
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF1
	.byte	0x7
	.byte	0x48
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x9
	.long	.LASF2
	.byte	0x7
	.byte	0x49
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"e_entry"
	.byte	0x7
	.byte	0x4a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"e_phoff"
	.byte	0x7
	.byte	0x4b
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"e_shoff"
	.byte	0x7
	.byte	0x4c
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"e_flags"
	.byte	0x7
	.byte	0x4d
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF3
	.byte	0x7
	.byte	0x4e
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF4
	.byte	0x7
	.byte	0x4f
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x8
	.string	"e_phnum"
	.byte	0x7
	.byte	0x50
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF5
	.byte	0x7
	.byte	0x51
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x8
	.string	"e_shnum"
	.byte	0x7
	.byte	0x52
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF6
	.byte	0x7
	.byte	0x53
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0xa
	.long	0x37f
	.long	0xb9
	.uleb128 0xb
	.long	0x15e
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.string	"Elf32_Ehdr"
	.byte	0x7
	.byte	0x54
	.long	0x283
	.uleb128 0x7
	.long	0x47d
	.byte	0x40
	.byte	0x7
	.byte	0x57
	.uleb128 0x8
	.string	"e_ident"
	.byte	0x7
	.byte	0x58
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"e_type"
	.byte	0x7
	.byte	0x59
	.long	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF1
	.byte	0x7
	.byte	0x5a
	.long	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x9
	.long	.LASF2
	.byte	0x7
	.byte	0x5b
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"e_entry"
	.byte	0x7
	.byte	0x5c
	.long	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"e_phoff"
	.byte	0x7
	.byte	0x5d
	.long	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"e_shoff"
	.byte	0x7
	.byte	0x5e
	.long	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"e_flags"
	.byte	0x7
	.byte	0x5f
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF3
	.byte	0x7
	.byte	0x60
	.long	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF4
	.byte	0x7
	.byte	0x61
	.long	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x8
	.string	"e_phnum"
	.byte	0x7
	.byte	0x62
	.long	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF5
	.byte	0x7
	.byte	0x63
	.long	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x8
	.string	"e_shnum"
	.byte	0x7
	.byte	0x64
	.long	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.long	.LASF6
	.byte	0x7
	.byte	0x65
	.long	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.byte	0x0
	.uleb128 0x2
	.string	"Elf64_Ehdr"
	.byte	0x7
	.byte	0x66
	.long	0x391
	.uleb128 0xc
	.long	0x547
	.byte	0x28
	.byte	0x7
	.value	0x10c
	.uleb128 0xd
	.string	"sh_name"
	.byte	0x7
	.value	0x10d
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"sh_type"
	.byte	0x7
	.value	0x10e
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF7
	.byte	0x7
	.value	0x10f
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"sh_addr"
	.byte	0x7
	.value	0x110
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF8
	.byte	0x7
	.value	0x111
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"sh_size"
	.byte	0x7
	.value	0x112
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"sh_link"
	.byte	0x7
	.value	0x113
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"sh_info"
	.byte	0x7
	.value	0x114
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.long	.LASF9
	.byte	0x7
	.value	0x115
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.long	.LASF10
	.byte	0x7
	.value	0x116
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xf
	.string	"Elf32_Shdr"
	.byte	0x7
	.value	0x117
	.long	0x48f
	.uleb128 0xc
	.long	0x612
	.byte	0x40
	.byte	0x7
	.value	0x11a
	.uleb128 0xd
	.string	"sh_name"
	.byte	0x7
	.value	0x11b
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"sh_type"
	.byte	0x7
	.value	0x11c
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF7
	.byte	0x7
	.value	0x11d
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"sh_addr"
	.byte	0x7
	.value	0x11e
	.long	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	.LASF8
	.byte	0x7
	.value	0x11f
	.long	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"sh_size"
	.byte	0x7
	.value	0x120
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"sh_link"
	.byte	0x7
	.value	0x121
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"sh_info"
	.byte	0x7
	.value	0x122
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.long	.LASF9
	.byte	0x7
	.value	0x123
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.long	.LASF10
	.byte	0x7
	.value	0x124
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0xf
	.string	"Elf64_Shdr"
	.byte	0x7
	.value	0x125
	.long	0x55a
	.uleb128 0xc
	.long	0x695
	.byte	0x10
	.byte	0x7
	.value	0x178
	.uleb128 0xd
	.string	"st_name"
	.byte	0x7
	.value	0x179
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.long	.LASF11
	.byte	0x7
	.value	0x17a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"st_size"
	.byte	0x7
	.value	0x17b
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"st_info"
	.byte	0x7
	.value	0x17c
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF12
	.byte	0x7
	.value	0x17d
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.long	.LASF13
	.byte	0x7
	.value	0x17e
	.long	0x259
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xf
	.string	"Elf32_Sym"
	.byte	0x7
	.value	0x17f
	.long	0x625
	.uleb128 0xc
	.long	0x717
	.byte	0x18
	.byte	0x7
	.value	0x182
	.uleb128 0xd
	.string	"st_name"
	.byte	0x7
	.value	0x183
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"st_info"
	.byte	0x7
	.value	0x184
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF12
	.byte	0x7
	.value	0x185
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.long	.LASF13
	.byte	0x7
	.value	0x186
	.long	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF11
	.byte	0x7
	.value	0x187
	.long	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"st_size"
	.byte	0x7
	.value	0x188
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xf
	.string	"Elf64_Sym"
	.byte	0x7
	.value	0x189
	.long	0x6a7
	.uleb128 0xc
	.long	0x754
	.byte	0x8
	.byte	0x7
	.value	0x1e9
	.uleb128 0xe
	.long	.LASF14
	.byte	0x7
	.value	0x1ea
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"r_info"
	.byte	0x7
	.value	0x1eb
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.string	"Elf32_Rel"
	.byte	0x7
	.value	0x1ec
	.long	0x729
	.uleb128 0xc
	.long	0x791
	.byte	0x10
	.byte	0x7
	.value	0x1f4
	.uleb128 0xe
	.long	.LASF14
	.byte	0x7
	.value	0x1f5
	.long	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"r_info"
	.byte	0x7
	.value	0x1f6
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.string	"Elf64_Rel"
	.byte	0x7
	.value	0x1f7
	.long	0x766
	.uleb128 0x10
	.long	0x896
	.byte	0x4
	.byte	0x3
	.byte	0x54
	.uleb128 0x11
	.string	"ELF_T_BYTE"
	.sleb128 0
	.uleb128 0x11
	.string	"ELF_T_ADDR"
	.sleb128 1
	.uleb128 0x11
	.string	"ELF_T_DYN"
	.sleb128 2
	.uleb128 0x11
	.string	"ELF_T_EHDR"
	.sleb128 3
	.uleb128 0x11
	.string	"ELF_T_HALF"
	.sleb128 4
	.uleb128 0x11
	.string	"ELF_T_OFF"
	.sleb128 5
	.uleb128 0x11
	.string	"ELF_T_PHDR"
	.sleb128 6
	.uleb128 0x11
	.string	"ELF_T_RELA"
	.sleb128 7
	.uleb128 0x11
	.string	"ELF_T_REL"
	.sleb128 8
	.uleb128 0x11
	.string	"ELF_T_SHDR"
	.sleb128 9
	.uleb128 0x11
	.string	"ELF_T_SWORD"
	.sleb128 10
	.uleb128 0x11
	.string	"ELF_T_SYM"
	.sleb128 11
	.uleb128 0x11
	.string	"ELF_T_WORD"
	.sleb128 12
	.uleb128 0x11
	.string	"ELF_T_SXWORD"
	.sleb128 13
	.uleb128 0x11
	.string	"ELF_T_XWORD"
	.sleb128 14
	.uleb128 0x11
	.string	"ELF_T_VDEF"
	.sleb128 15
	.uleb128 0x11
	.string	"ELF_T_VNEED"
	.sleb128 16
	.uleb128 0x11
	.string	"ELF_T_NUM"
	.sleb128 17
	.byte	0x0
	.uleb128 0x2
	.string	"Elf_Type"
	.byte	0x3
	.byte	0x72
	.long	0x7a3
	.uleb128 0x2
	.string	"Elf"
	.byte	0x3
	.byte	0x77
	.long	0x8b1
	.uleb128 0x12
	.string	"Elf"
	.byte	0x1
	.uleb128 0x2
	.string	"Elf_Scn"
	.byte	0x3
	.byte	0x7c
	.long	0x8c6
	.uleb128 0x12
	.string	"Elf_Scn"
	.byte	0x1
	.uleb128 0x7
	.long	0x941
	.byte	0x18
	.byte	0x3
	.byte	0x97
	.uleb128 0x8
	.string	"d_buf"
	.byte	0x3
	.byte	0x98
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"d_type"
	.byte	0x3
	.byte	0x99
	.long	0x896
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"d_size"
	.byte	0x3
	.byte	0x9a
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"d_off"
	.byte	0x3
	.byte	0x9b
	.long	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"d_align"
	.byte	0x3
	.byte	0x9c
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"d_version"
	.byte	0x3
	.byte	0x9d
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"Elf_Data"
	.byte	0x3
	.byte	0x9e
	.long	0x8d0
	.uleb128 0x2
	.string	"Dwarf_Unsigned"
	.byte	0x2
	.byte	0x5c
	.long	0x129
	.uleb128 0x2
	.string	"Dwarf_Small"
	.byte	0x2
	.byte	0x5e
	.long	0xb9
	.uleb128 0x2
	.string	"Dwarf_Debug"
	.byte	0x2
	.byte	0xc2
	.long	0x98d
	.uleb128 0x6
	.byte	0x4
	.long	0x993
	.uleb128 0x12
	.string	"Dwarf_Debug_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Error"
	.byte	0x2
	.byte	0xca
	.long	0x9b6
	.uleb128 0x6
	.byte	0x4
	.long	0x9bc
	.uleb128 0x12
	.string	"Dwarf_Error_s"
	.byte	0x1
	.uleb128 0x13
	.long	0xa3d
	.string	"get_reloc_type_names"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.long	0x167
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x14
	.string	"index"
	.byte	0x1
	.byte	0x84
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"arysiz"
	.byte	0x1
	.byte	0x87
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"retval"
	.byte	0x1
	.byte	0x88
	.long	0x167
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x86
	.long	0x1070
	.byte	0x5
	.byte	0x3
	.long	buf.4361
	.byte	0x0
	.uleb128 0x7
	.long	0xa63
	.byte	0xc
	.byte	0x1
	.byte	0x94
	.uleb128 0x8
	.string	"buf"
	.byte	0x1
	.byte	0x95
	.long	0xa63
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"size"
	.byte	0x1
	.byte	0x96
	.long	0x951
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x967
	.uleb128 0x7
	.long	0xaed
	.byte	0x1c
	.byte	0x1
	.byte	0x9f
	.uleb128 0x8
	.string	"indx"
	.byte	0x1
	.byte	0xa0
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"name"
	.byte	0x1
	.byte	0xa1
	.long	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"value"
	.byte	0x1
	.byte	0xa2
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"size"
	.byte	0x1
	.byte	0xa3
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"type"
	.byte	0x1
	.byte	0xa4
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"bind"
	.byte	0x1
	.byte	0xa5
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"other"
	.byte	0x1
	.byte	0xa6
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"shndx"
	.byte	0x1
	.byte	0xa7
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0x0
	.uleb128 0x2
	.string	"SYM"
	.byte	0x1
	.byte	0xa8
	.long	0xa69
	.uleb128 0x7
	.long	0xb7c
	.byte	0x20
	.byte	0x1
	.byte	0xab
	.uleb128 0x8
	.string	"indx"
	.byte	0x1
	.byte	0xac
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"name"
	.byte	0x1
	.byte	0xad
	.long	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"value"
	.byte	0x1
	.byte	0xae
	.long	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"size"
	.byte	0x1
	.byte	0xaf
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"type"
	.byte	0x1
	.byte	0xb0
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"bind"
	.byte	0x1
	.byte	0xb1
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"other"
	.byte	0x1
	.byte	0xb2
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"shndx"
	.byte	0x1
	.byte	0xb3
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.byte	0x0
	.uleb128 0x2
	.string	"SYM64"
	.byte	0x1
	.byte	0xb4
	.long	0xaf8
	.uleb128 0x16
	.long	0xc0d
	.byte	0x1
	.string	"print_relocinfo"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x14
	.string	"dbg"
	.byte	0x1
	.byte	0xc6
	.long	0x97a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"elf"
	.byte	0x1
	.byte	0xc8
	.long	0xc0d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"endr_ident"
	.byte	0x1
	.byte	0xc9
	.long	0x167
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"is_64bit"
	.byte	0x1
	.byte	0xca
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"res"
	.byte	0x1
	.byte	0xcb
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xcc
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x8a6
	.uleb128 0x17
	.long	0xcd8
	.string	"print_relocinfo_64"
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x14
	.string	"dbg"
	.byte	0x1
	.byte	0xe2
	.long	0x97a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"elf"
	.byte	0x1
	.byte	0xe2
	.long	0xc0d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"scn"
	.byte	0x1
	.byte	0xe5
	.long	0xcd8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"data"
	.byte	0x1
	.byte	0xe6
	.long	0xcde
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"ehdr64"
	.byte	0x1
	.byte	0xe7
	.long	0xce4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"shdr64"
	.byte	0x1
	.byte	0xe8
	.long	0xcea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF15
	.byte	0x1
	.byte	0xe9
	.long	0x167
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xea
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x18
	.long	.LASF16
	.byte	0x1
	.byte	0xfa
	.long	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.string	"count"
	.byte	0x1
	.byte	0xfb
	.long	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x8b7
	.uleb128 0x6
	.byte	0x4
	.long	0x941
	.uleb128 0x6
	.byte	0x4
	.long	0x47d
	.uleb128 0x6
	.byte	0x4
	.long	0x612
	.uleb128 0x1a
	.long	0xdc0
	.string	"print_relocinfo_32"
	.byte	0x1
	.value	0x125
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x1b
	.string	"dbg"
	.byte	0x1
	.value	0x124
	.long	0x97a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"elf"
	.byte	0x1
	.value	0x124
	.long	0xc0d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"scn"
	.byte	0x1
	.value	0x126
	.long	0xcd8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"data"
	.byte	0x1
	.value	0x127
	.long	0xcde
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"ehdr32"
	.byte	0x1
	.value	0x128
	.long	0xdc0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"shdr32"
	.byte	0x1
	.value	0x129
	.long	0xdc6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.long	.LASF15
	.byte	0x1
	.value	0x12a
	.long	0x167
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x12b
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x1
	.value	0x139
	.long	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"count"
	.byte	0x1
	.value	0x13a
	.long	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x37f
	.uleb128 0x6
	.byte	0x4
	.long	0x547
	.uleb128 0x1a
	.long	0xe51
	.string	"print_reloc_information_64"
	.byte	0x1
	.value	0x175
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x1
	.value	0x173
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.value	0x173
	.long	0xa63
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"size"
	.byte	0x1
	.value	0x174
	.long	0x951
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"off"
	.byte	0x1
	.value	0x176
	.long	0x951
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.value	0x17d
	.long	0xe51
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x791
	.uleb128 0x1a
	.long	0xedc
	.string	"print_reloc_information_32"
	.byte	0x1
	.value	0x194
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x1
	.value	0x192
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.value	0x192
	.long	0xa63
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"size"
	.byte	0x1
	.value	0x193
	.long	0x951
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"off"
	.byte	0x1
	.value	0x195
	.long	0x951
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.value	0x198
	.long	0xedc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x754
	.uleb128 0x1f
	.long	0xf6c
	.string	"readsyms"
	.byte	0x1
	.value	0x1a2
	.byte	0x1
	.long	0xf6c
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x1b
	.string	"data"
	.byte	0x1
	.value	0x1a1
	.long	0xf72
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"num"
	.byte	0x1
	.value	0x1a1
	.long	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"elf"
	.byte	0x1
	.value	0x1a1
	.long	0xc0d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.string	"link"
	.byte	0x1
	.value	0x1a1
	.long	0x1dc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x1a3
	.long	0xf6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x1a3
	.long	0xf6c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x1a4
	.long	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xaed
	.uleb128 0x6
	.byte	0x4
	.long	0x695
	.uleb128 0x1f
	.long	0x1006
	.string	"read_64_syms"
	.byte	0x1
	.value	0x1b8
	.byte	0x1
	.long	0x1006
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x1b
	.string	"data"
	.byte	0x1
	.value	0x1b7
	.long	0x100c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"num"
	.byte	0x1
	.value	0x1b7
	.long	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"elf"
	.byte	0x1
	.value	0x1b7
	.long	0xc0d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.string	"link"
	.byte	0x1
	.value	0x1b7
	.long	0x1ee
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x1bb
	.long	0x1006
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x1bb
	.long	0x1006
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x1bc
	.long	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xb7c
	.uleb128 0x6
	.byte	0x4
	.long	0x717
	.uleb128 0x1f
	.long	0x1070
	.string	"get_scndata"
	.byte	0x1
	.value	0x1d3
	.byte	0x1
	.long	0x165
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x1b
	.string	"fd_scn"
	.byte	0x1
	.value	0x1d2
	.long	0xcd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"scn_size"
	.byte	0x1
	.value	0x1d2
	.long	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"p_data"
	.byte	0x1
	.value	0x1d4
	.long	0xcde
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xa
	.long	0x1080
	.long	0x16d
	.uleb128 0xb
	.long	0x15e
	.byte	0x63
	.byte	0x0
	.uleb128 0xa
	.long	0x1090
	.long	0x167
	.uleb128 0xb
	.long	0x15e
	.byte	0x5
	.byte	0x0
	.uleb128 0x15
	.string	"sectnames"
	.byte	0x1
	.byte	0x3d
	.long	0x1080
	.byte	0x5
	.byte	0x3
	.long	sectnames
	.uleb128 0xa
	.long	0x10b7
	.long	0x167
	.uleb128 0xb
	.long	0x15e
	.byte	0x5
	.byte	0x0
	.uleb128 0x15
	.string	"error_msg_duplicate"
	.byte	0x1
	.byte	0x46
	.long	0x10a7
	.byte	0x5
	.byte	0x3
	.long	error_msg_duplicate
	.uleb128 0xa
	.long	0x10e8
	.long	0x167
	.uleb128 0xb
	.long	0x15e
	.byte	0x5
	.byte	0x0
	.uleb128 0x15
	.string	"error_msg_null"
	.byte	0x1
	.byte	0x4f
	.long	0x10d8
	.byte	0x5
	.byte	0x3
	.long	error_msg_null
	.uleb128 0xa
	.long	0x1114
	.long	0x167
	.uleb128 0xb
	.long	0x15e
	.byte	0x22
	.byte	0x0
	.uleb128 0x15
	.string	"reloc_type_names"
	.byte	0x1
	.byte	0x63
	.long	0x1104
	.byte	0x5
	.byte	0x3
	.long	reloc_type_names
	.uleb128 0xa
	.long	0x1142
	.long	0xa3d
	.uleb128 0xb
	.long	0x15e
	.byte	0x5
	.byte	0x0
	.uleb128 0x15
	.string	"sect_data"
	.byte	0x1
	.byte	0x97
	.long	0x1132
	.byte	0x5
	.byte	0x3
	.long	sect_data
	.uleb128 0x15
	.string	"sym"
	.byte	0x1
	.byte	0xc1
	.long	0xf72
	.byte	0x5
	.byte	0x3
	.long	sym
	.uleb128 0x15
	.string	"sym_64"
	.byte	0x1
	.byte	0xc2
	.long	0x100c
	.byte	0x5
	.byte	0x3
	.long	sym_64
	.uleb128 0x15
	.string	"sym_data"
	.byte	0x1
	.byte	0xc3
	.long	0xf6c
	.byte	0x5
	.byte	0x3
	.long	sym_data
	.uleb128 0x15
	.string	"sym_data_64"
	.byte	0x1
	.byte	0xc4
	.long	0x1006
	.byte	0x5
	.byte	0x3
	.long	sym_data_64
	.uleb128 0x20
	.string	"err"
	.byte	0x9
	.byte	0x90
	.long	0x9a3
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x22
	.value	0x2
	.long	.Ldebug_info0
	.long	0x11bb
	.long	0xb89
	.string	"print_relocinfo"
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
.LASF2:
	.string	"e_version"
.LASF0:
	.string	"unsigned int"
.LASF3:
	.string	"e_ehsize"
.LASF5:
	.string	"e_shentsize"
.LASF15:
	.string	"scn_name"
.LASF16:
	.string	"sym_size"
.LASF10:
	.string	"sh_entsize"
.LASF6:
	.string	"e_shstrndx"
.LASF1:
	.string	"e_machine"
.LASF11:
	.string	"st_value"
.LASF8:
	.string	"sh_offset"
.LASF17:
	.string	"section_no"
.LASF14:
	.string	"r_offset"
.LASF12:
	.string	"st_other"
.LASF4:
	.string	"e_phentsize"
.LASF7:
	.string	"sh_flags"
.LASF13:
	.string	"st_shndx"
.LASF9:
	.string	"sh_addralign"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
