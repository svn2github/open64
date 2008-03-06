	.file	"dwarfdump.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl check_error
	.bss
	.align 4
	.type	check_error, @object
	.size	check_error, 4
check_error:
	.zero	4
.globl info_flag
	.align 4
	.type	info_flag, @object
	.size	info_flag, 4
info_flag:
	.zero	4
.globl use_old_dwarf_loclist
	.align 4
	.type	use_old_dwarf_loclist, @object
	.size	use_old_dwarf_loclist, 4
use_old_dwarf_loclist:
	.zero	4
	.local	line_flag
	.comm	line_flag,4,4
	.local	abbrev_flag
	.comm	abbrev_flag,4,4
	.local	frame_flag
	.comm	frame_flag,4,4
	.local	exceptions_flag
	.comm	exceptions_flag,4,4
	.local	pubnames_flag
	.comm	pubnames_flag,4,4
	.local	macinfo_flag
	.comm	macinfo_flag,4,4
	.local	loc_flag
	.comm	loc_flag,4,4
	.local	aranges_flag
	.comm	aranges_flag,4,4
	.local	string_flag
	.comm	string_flag,4,4
	.local	reloc_flag
	.comm	reloc_flag,4,4
	.local	static_func_flag
	.comm	static_func_flag,4,4
	.local	static_var_flag
	.comm	static_var_flag,4,4
	.local	type_flag
	.comm	type_flag,4,4
	.local	weakname_flag
	.comm	weakname_flag,4,4
.globl verbose
	.align 4
	.type	verbose, @object
	.size	verbose, 4
verbose:
	.zero	4
.globl dense
	.align 4
	.type	dense, @object
	.size	dense, 4
dense:
	.zero	4
.globl ellipsis
	.align 4
	.type	ellipsis, @object
	.size	ellipsis, 4
ellipsis:
	.zero	4
.globl dst_format
	.align 4
	.type	dst_format, @object
	.size	dst_format, 4
dst_format:
	.zero	4
.globl check_abbrev_code
	.align 4
	.type	check_abbrev_code, @object
	.size	check_abbrev_code, 4
check_abbrev_code:
	.zero	4
.globl check_pubname_attr
	.align 4
	.type	check_pubname_attr, @object
	.size	check_pubname_attr, 4
check_pubname_attr:
	.zero	4
.globl check_reloc_offset
	.align 4
	.type	check_reloc_offset, @object
	.size	check_reloc_offset, 4
check_reloc_offset:
	.zero	4
.globl check_attr_tag
	.align 4
	.type	check_attr_tag, @object
	.size	check_attr_tag, 4
check_attr_tag:
	.zero	4
.globl check_tag_tree
	.align 4
	.type	check_tag_tree, @object
	.size	check_tag_tree, 4
check_tag_tree:
	.zero	4
.globl check_type_offset
	.align 4
	.type	check_type_offset, @object
	.size	check_type_offset, 4
check_type_offset:
	.zero	4
	.local	dwarf_check
	.comm	dwarf_check,4,4
.globl cu_name_flag
	.align 4
	.type	cu_name_flag, @object
	.size	cu_name_flag, 4
cu_name_flag:
	.zero	4
.globl cu_offset
	.align 8
	.type	cu_offset, @object
	.size	cu_offset, 8
cu_offset:
	.zero	8
	.section	.rodata
	.align 4
.LC0:
	.string	"dwarfdump: libelf.a out of date.\n"
.LC1:
	.string	"%s ERROR:  can't open %s\n"
	.text
.globl main
	.type	main, @function
main:
.LFB15:
	.file 1 "../../libdwarf/dwarfdump/dwarfdump.c"
	.loc 1 124 0
	leal	4(%esp), %ecx
.LCFI0:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI1:
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	pushl	%ebx
.LCFI4:
	pushl	%ecx
.LCFI5:
	subl	$64, %esp
.LCFI6:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, -48(%ebp)
	.loc 1 129 0
	movl	$0, -20(%ebp)
	.loc 1 131 0
	movl	$0, (%esp)
	call	elf_version@PLT
	.loc 1 132 0
	movl	$1, (%esp)
	call	elf_version@PLT
	testl	%eax, %eax
	jne	.L2
	.loc 1 133 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$33, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 134 0
	movl	$1, (%esp)
	call	exit@PLT
.L2:
	.loc 1 137 0
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%esp)
	call	process_args
	movl	%eax, -40(%ebp)
	.loc 1 141 0
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	open@PLT
	movl	%eax, -36(%ebp)
	.loc 1 143 0
	cmpl	$-1, -36(%ebp)
	jne	.L4
	.loc 1 144 0
	movl	program_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 146 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L4:
	.loc 1 149 0
	movl	$1, -32(%ebp)
	.loc 1 150 0
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_begin@PLT
	movl	%eax, -28(%ebp)
	.loc 1 151 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_kind@PLT
	cmpl	$1, %eax
	jne	.L9
	.loc 1 152 0
	movl	$1, -20(%ebp)
	.loc 1 154 0
	jmp	.L9
.L10:
.LBB2:
	.loc 1 160 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	elf32_getehdr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 161 0
	cmpl	$0, -16(%ebp)
	jne	.L11
	.loc 1 164 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	elf64_getehdr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 165 0
	cmpl	$0, -12(%ebp)
	je	.L15
	.loc 1 169 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	process_one_file
	jmp	.L15
.L11:
	.loc 1 173 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	process_one_file
.L15:
	.loc 1 175 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_next@PLT
	movl	%eax, -32(%ebp)
	.loc 1 176 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_end@PLT
.L9:
.LBE2:
	.loc 1 154 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_begin@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L10
	.loc 1 178 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_end@PLT
	.loc 1 179 0
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L17
	.loc 1 180 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L17:
	.loc 1 182 0
	movl	$0, -44(%ebp)
.L6:
	movl	-44(%ebp), %eax
	.loc 1 183 0
	addl	$64, %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE15:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC2:
	.string	"No DWARF information present in %s\n"
.LC3:
	.string	"dwarf_elf_init"
	.align 4
.LC4:
	.string	"%s ERROR: mallocing %d bytes for buffer\n"
.LC5:
	.string	""
.LC6:
	.string	"\narchive member \t%s\n"
.LC7:
	.string	"DWARF CHECK RESULT\n"
	.align 4
.LC8:
	.string	"<item>                  <checks><errors>\n"
.LC9:
	.string	"pubname_attr"
.LC10:
	.string	"%-24s%8d%8d\n"
.LC11:
	.string	"attr_tag"
.LC12:
	.string	"tag_tree"
.LC13:
	.string	"type_offset"
.LC14:
	.string	"dwarf_finish"
	.text
	.type	process_one_file, @function
process_one_file:
.LFB16:
	.loc 1 192 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%esi
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$64, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 196 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_elf_init@PLT
	movl	%eax, -16(%ebp)
	.loc 1 197 0
	cmpl	$-1, -16(%ebp)
	jne	.L21
	.loc 1 198 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 199 0
	movl	$0, -32(%ebp)
	jmp	.L23
.L21:
	.loc 1 201 0
	cmpl	$0, -16(%ebp)
	je	.L24
	.loc 1 202 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_error@PLT
.L24:
	.loc 1 205 0
	movl	$999, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 206 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L26
	.loc 1 207 0
	movl	program_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$999, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 209 0
	movl	$1, (%esp)
	call	exit@PLT
.L26:
	.loc 1 211 0
	movl	attrib_bufsiz@GOT(%ebx), %eax
	movl	$999, (%eax)
	.loc 1 214 0
	cmpl	$0, 16(%ebp)
	je	.L28
.LBB3:
	.loc 1 215 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getarhdr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 217 0
	cmpl	$0, -12(%ebp)
	je	.L30
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L32
.L30:
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L32:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L28:
.LBE3:
	.loc 1 221 0
	movl	info_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L33
	movl	line_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L33
	movl	cu_name_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L36
.L33:
	.loc 1 222 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_infos
.L36:
	.loc 1 223 0
	movl	pubnames_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L37
	.loc 1 224 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_pubnames@PLT
.L37:
	.loc 1 225 0
	movl	macinfo_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L39
	.loc 1 226 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_macinfo@PLT
.L39:
	.loc 1 227 0
	movl	loc_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L41
	.loc 1 228 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_locs@PLT
.L41:
	.loc 1 229 0
	movl	abbrev_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L43
	.loc 1 230 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_abbrevs@PLT
.L43:
	.loc 1 231 0
	movl	string_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L45
	.loc 1 232 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_strings@PLT
.L45:
	.loc 1 233 0
	movl	aranges_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L47
	.loc 1 234 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_aranges@PLT
.L47:
	.loc 1 235 0
	movl	frame_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L49
	.loc 1 236 0
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 237 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_frames@PLT
.L49:
	.loc 1 239 0
	movl	static_func_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L51
	.loc 1 240 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_static_funcs@PLT
.L51:
	.loc 1 241 0
	movl	static_var_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L53
	.loc 1 242 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_static_vars@PLT
.L53:
	.loc 1 243 0
	movl	type_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L55
	.loc 1 244 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_types@PLT
.L55:
	.loc 1 245 0
	movl	weakname_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L57
	.loc 1 246 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_weaknames@PLT
.L57:
	.loc 1 247 0
	movl	reloc_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L59
	.loc 1 248 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	print_relocinfo@PLT
.L59:
	.loc 1 249 0
	movl	dwarf_check@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L61
	.loc 1 250 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$19, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 251 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$41, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L61:
	.loc 1 253 0
	movl	check_pubname_attr@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L63
	.loc 1 254 0
	movl	pubname_attr_result@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	pubname_attr_result@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L63:
	.loc 1 255 0
	movl	check_attr_tag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L65
	.loc 1 256 0
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L65:
	.loc 1 257 0
	movl	check_tag_tree@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L67
	.loc 1 258 0
	movl	tag_tree_result@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	tag_tree_result@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L67:
	.loc 1 259 0
	movl	check_type_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L69
	.loc 1 260 0
	movl	type_offset_result@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	type_offset_result@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L69:
	.loc 1 263 0
	movl	-20(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_finish@PLT
	movl	%eax, -16(%ebp)
	.loc 1 264 0
	cmpl	$0, -16(%ebp)
	je	.L71
	.loc 1 265 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_error@PLT
.L71:
	.loc 1 268 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L73
	.loc 1 269 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L73:
	.loc 1 272 0
	movl	$0, -32(%ebp)
.L23:
	movl	-32(%ebp), %eax
	.loc 1 274 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE16:
	.size	process_one_file, .-process_one_file
	.section	.rodata
	.align 4
.LC15:
	.string	"-z is no longer supported:ignored\n"
.LC16:
	.string	"ailfghbprmcsvdeok:gu:t:ywz"
	.align 4
.LC17:
	.string	"Usage:  %s <options> <object file>\n"
	.align 4
.LC18:
	.string	"options:\t-a\tprint all sections\n"
.LC19:
	.string	"\t\t-b\tprint abbrev section\n"
.LC20:
	.string	"\t\t-c\tprint loc section\n"
	.align 4
.LC21:
	.string	"\t\t-d\tdense: one line per entry (info section only)\n"
	.align 4
.LC22:
	.string	"\t\t-e\tellipsis: short names for tags, attrs etc.\n"
.LC23:
	.string	"\t\t-f\tprint frame section\n"
	.align 4
.LC24:
	.string	"\t\t-g\t(use incomplete loclist support)\n"
.LC25:
	.string	"\t\t-h\tprint exception tables\n"
.LC26:
	.string	"\t\t-i\tprint info section\n"
	.align 4
.LC27:
	.string	"\t\t-k[aerty] check dwarf information\n"
.LC28:
	.string	"\t\t   a\tdo all checks\n"
	.align 4
.LC29:
	.string	"\t\t   e\texamine attributes of pubnames\n"
	.align 4
.LC30:
	.string	"\t\t   r\texamine attr-tag relation\n"
.LC31:
	.string	"\t\t   t\texamine tag trees\n"
.LC32:
	.string	"\t\t   y\texamine type info\n"
.LC33:
	.string	"\t\t-l\tprint line section\n"
.LC34:
	.string	"\t\t-m\tprint macinfo section\n"
.LC35:
	.string	"\t\t-o\tprint relocation info\n"
.LC36:
	.string	"\t\t-p\tprint pubnames section\n"
.LC37:
	.string	"\t\t-r\tprint aranges section\n"
.LC38:
	.string	"\t\t-s\tprint string section\n"
.LC39:
	.string	"\t\t-t[afv] static: \n"
.LC40:
	.string	"\t\t   a\tprint both sections\n"
	.align 4
.LC41:
	.string	"\t\t   f\tprint static func section\n"
	.align 4
.LC42:
	.string	"\t\t   v\tprint static var section\n"
	.align 4
.LC43:
	.string	"\t\t-u<file> print sections only for specified file\n"
	.align 4
.LC44:
	.string	"\t\t-v\tverbose: show more information\n"
.LC45:
	.string	"\t\t-w\tprint weakname section\n"
.LC46:
	.string	"\t\t-y\tprint type section\n"
	.text
	.type	process_args, @function
process_args:
.LFB17:
	.loc 1 279 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$52, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 282 0
	movl	$0, -12(%ebp)
	.loc 1 285 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, program_name@GOTOFF(%ebx)
	.loc 1 287 0
	jmp	.L120
.L78:
	.loc 1 289 0
	movl	-16(%ebp), %eax
	subl	$97, %eax
	movl	%eax, -24(%ebp)
	cmpl	$25, -24(%ebp)
	ja	.L79
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L101@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L101:
	.long	.L80@GOTOFF
	.long	.L81@GOTOFF
	.long	.L82@GOTOFF
	.long	.L83@GOTOFF
	.long	.L84@GOTOFF
	.long	.L85@GOTOFF
	.long	.L86@GOTOFF
	.long	.L79@GOTOFF
	.long	.L87@GOTOFF
	.long	.L79@GOTOFF
	.long	.L88@GOTOFF
	.long	.L89@GOTOFF
	.long	.L90@GOTOFF
	.long	.L79@GOTOFF
	.long	.L91@GOTOFF
	.long	.L92@GOTOFF
	.long	.L79@GOTOFF
	.long	.L93@GOTOFF
	.long	.L94@GOTOFF
	.long	.L95@GOTOFF
	.long	.L96@GOTOFF
	.long	.L97@GOTOFF
	.long	.L98@GOTOFF
	.long	.L79@GOTOFF
	.long	.L99@GOTOFF
	.long	.L100@GOTOFF
	.text
.L86:
	.loc 1 291 0
	movl	use_old_dwarf_loclist@GOT(%ebx), %eax
	movl	$1, (%eax)
.L87:
	.loc 1 293 0
	movl	info_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 294 0
	jmp	.L77
.L89:
	.loc 1 296 0
	movl	$1, line_flag@GOTOFF(%ebx)
	.loc 1 297 0
	jmp	.L77
.L85:
	.loc 1 299 0
	movl	$1, frame_flag@GOTOFF(%ebx)
	.loc 1 300 0
	jmp	.L77
.L81:
	.loc 1 302 0
	movl	$1, abbrev_flag@GOTOFF(%ebx)
	.loc 1 303 0
	jmp	.L77
.L92:
	.loc 1 305 0
	movl	$1, pubnames_flag@GOTOFF(%ebx)
	.loc 1 306 0
	jmp	.L77
.L93:
	.loc 1 308 0
	movl	$1, aranges_flag@GOTOFF(%ebx)
	.loc 1 309 0
	jmp	.L77
.L90:
	.loc 1 311 0
	movl	$1, macinfo_flag@GOTOFF(%ebx)
	.loc 1 312 0
	jmp	.L77
.L82:
	.loc 1 314 0
	movl	$1, loc_flag@GOTOFF(%ebx)
	.loc 1 315 0
	jmp	.L77
.L94:
	.loc 1 317 0
	movl	$1, string_flag@GOTOFF(%ebx)
	.loc 1 318 0
	jmp	.L77
.L80:
	.loc 1 320 0
	movl	$1, abbrev_flag@GOTOFF(%ebx)
	movl	abbrev_flag@GOTOFF(%ebx), %eax
	movl	%eax, frame_flag@GOTOFF(%ebx)
	movl	frame_flag@GOTOFF(%ebx), %eax
	movl	%eax, line_flag@GOTOFF(%ebx)
	movl	line_flag@GOTOFF(%ebx), %edx
	movl	info_flag@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 321 0
	movl	$1, macinfo_flag@GOTOFF(%ebx)
	movl	macinfo_flag@GOTOFF(%ebx), %eax
	movl	%eax, aranges_flag@GOTOFF(%ebx)
	movl	aranges_flag@GOTOFF(%ebx), %eax
	movl	%eax, pubnames_flag@GOTOFF(%ebx)
	.loc 1 322 0
	movl	$1, string_flag@GOTOFF(%ebx)
	movl	string_flag@GOTOFF(%ebx), %eax
	movl	%eax, loc_flag@GOTOFF(%ebx)
	.loc 1 323 0
	movl	$1, reloc_flag@GOTOFF(%ebx)
	.loc 1 324 0
	movl	$1, static_var_flag@GOTOFF(%ebx)
	movl	static_var_flag@GOTOFF(%ebx), %eax
	movl	%eax, static_func_flag@GOTOFF(%ebx)
	.loc 1 325 0
	movl	$1, weakname_flag@GOTOFF(%ebx)
	movl	weakname_flag@GOTOFF(%ebx), %eax
	movl	%eax, type_flag@GOTOFF(%ebx)
	.loc 1 326 0
	jmp	.L77
.L97:
	.loc 1 328 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	verbose@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 329 0
	jmp	.L77
.L83:
	.loc 1 331 0
	movl	dense@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 332 0
	jmp	.L77
.L84:
	.loc 1 334 0
	movl	ellipsis@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 335 0
	jmp	.L77
.L91:
	.loc 1 337 0
	movl	$1, reloc_flag@GOTOFF(%ebx)
	.loc 1 338 0
	jmp	.L77
.L88:
	.loc 1 340 0
	movl	$1, dwarf_check@GOTOFF(%ebx)
	.loc 1 341 0
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 342 0
	movl	-8(%ebp), %eax
	subl	$97, %eax
	movl	%eax, -28(%ebp)
	cmpl	$24, -28(%ebp)
	ja	.L102
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L108@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L108:
	.long	.L103@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L104@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L105@GOTOFF
	.long	.L102@GOTOFF
	.long	.L106@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L102@GOTOFF
	.long	.L107@GOTOFF
	.text
.L103:
	.loc 1 344 0
	movl	check_pubname_attr@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 345 0
	movl	check_attr_tag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 346 0
	movl	check_type_offset@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	check_type_offset@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	check_tag_tree@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 347 0
	movl	info_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	info_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, pubnames_flag@GOTOFF(%ebx)
	.loc 1 348 0
	jmp	.L77
.L104:
	.loc 1 350 0
	movl	check_pubname_attr@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 351 0
	movl	$1, pubnames_flag@GOTOFF(%ebx)
	.loc 1 352 0
	jmp	.L77
.L105:
	.loc 1 354 0
	movl	check_attr_tag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 355 0
	movl	info_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 356 0
	jmp	.L77
.L106:
	.loc 1 358 0
	movl	check_tag_tree@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 359 0
	movl	info_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 360 0
	jmp	.L77
.L107:
	.loc 1 362 0
	movl	check_type_offset@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 363 0
	movl	info_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 364 0
	jmp	.L77
.L102:
	.loc 1 366 0
	movl	$1, -12(%ebp)
	.loc 1 369 0
	jmp	.L77
.L96:
	.loc 1 371 0
	movl	cu_name_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 372 0
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	cu_name@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 373 0
	jmp	.L77
.L95:
	.loc 1 375 0
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 376 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$102, -32(%ebp)
	je	.L112
	cmpl	$118, -32(%ebp)
	je	.L113
	cmpl	$97, -32(%ebp)
	je	.L111
	jmp	.L110
.L111:
	.loc 1 379 0
	movl	$1, static_var_flag@GOTOFF(%ebx)
	movl	static_var_flag@GOTOFF(%ebx), %eax
	movl	%eax, static_func_flag@GOTOFF(%ebx)
	.loc 1 380 0
	jmp	.L77
.L112:
	.loc 1 383 0
	movl	$1, static_func_flag@GOTOFF(%ebx)
	.loc 1 384 0
	jmp	.L77
.L113:
	.loc 1 387 0
	movl	$1, static_var_flag@GOTOFF(%ebx)
	.loc 1 388 0
	jmp	.L77
.L110:
	.loc 1 390 0
	movl	$1, -12(%ebp)
	.loc 1 393 0
	jmp	.L77
.L99:
	.loc 1 395 0
	movl	$1, type_flag@GOTOFF(%ebx)
	.loc 1 396 0
	jmp	.L77
.L98:
	.loc 1 398 0
	movl	$1, weakname_flag@GOTOFF(%ebx)
	.loc 1 399 0
	jmp	.L77
.L100:
	.loc 1 401 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 402 0
	jmp	.L77
.L79:
	.loc 1 404 0
	movl	$1, -12(%ebp)
.L77:
.L120:
	.loc 1 287 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	getopt@PLT
	movl	%eax, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	.L78
	.loc 1 408 0
	cmpl	$0, -12(%ebp)
	jne	.L116
	movl	8(%ebp), %eax
	subl	$1, %eax
	movl	optind@GOT(%ebx), %edx
	movl	(%edx), %edx
	cmpl	%edx, %eax
	je	.L118
.L116:
	.loc 1 409 0
	movl	program_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 411 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$31, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 412 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 413 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$23, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 414 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$51, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 416 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$48, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 418 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 419 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$38, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 420 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$28, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 421 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 422 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$36, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 423 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$21, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 424 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$38, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 425 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$33, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 426 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 427 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 428 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 429 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 430 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 431 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$28, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 432 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 433 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 434 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$19, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 435 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 436 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$33, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 437 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$32, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 438 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$50, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 440 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$36, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 441 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$28, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 442 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 443 0
	movl	$1, (%esp)
	call	exit@PLT
.L118:
	.loc 1 445 0
	movl	optind@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 446 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	process_args, .-process_args
	.section	.rodata
.LC47:
	.string	"\n.debug_info"
.LC48:
	.string	"siblingof cu header"
.LC49:
	.string	"tag of cu die"
.LC50:
	.string	"dwarf DW_AT_name "
.LC51:
	.string	"dwarf_whatform problem "
	.align 4
.LC52:
	.string	"formstring failed unexpectedly"
	.align 4
.LC53:
	.string	"dwarf_whatform unexpected value"
.LC54:
	.string	"cu_header"
.LC55:
	.string	"<%s>"
.LC56:
	.string	"cu_header_length"
.LC57:
	.string	" %s<%llu>"
.LC58:
	.string	"version_stamp"
.LC59:
	.string	" %s<%d>"
.LC60:
	.string	"abbrev_offset"
.LC61:
	.string	"address_size"
.LC62:
	.string	" %s<%d>\n"
.LC63:
	.string	"\nCU_HEADER:"
.LC64:
	.string	"\t\t%-28s%llu\n"
.LC65:
	.string	"\t\t%-28s%d\n"
.LC66:
	.string	"\t\t%-28s%d"
.LC67:
	.string	"Regetting cu_die"
	.align 4
.LC68:
	.string	"attempting to print .debug_info"
.LC69:
	.string	"%s ERROR:  %s:  %s (%lld)\n"
.LC70:
	.string	"attempting to continue.\n"
	.text
	.type	print_infos, @function
print_infos:
.LFB18:
	.loc 1 451 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%esi
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$144, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 460 0
	movl	info_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L173
	.loc 1 461 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 464 0
	jmp	.L173
.L125:
.LBB4:
	.loc 1 471 0
	movl	cu_name_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L126
.LBB5:
	.loc 1 479 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_siblingof@PLT
	movl	%eax, -52(%ebp)
	.loc 1 480 0
	cmpl	$0, -52(%ebp)
	je	.L128
	.loc 1 481 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L128:
	.loc 1 483 0
	movl	-60(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-14(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_tag@PLT
	movl	%eax, -48(%ebp)
	.loc 1 484 0
	cmpl	$0, -48(%ebp)
	je	.L130
	.loc 1 485 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L130:
	.loc 1 487 0
	movl	-60(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_attr@PLT
	movl	%eax, -40(%ebp)
	.loc 1 488 0
	cmpl	$0, -40(%ebp)
	je	.L132
	.loc 1 489 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L132:
	.loc 1 491 0
	movl	-104(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_whatform@PLT
	movl	%eax, -44(%ebp)
	.loc 1 492 0
	cmpl	$0, -44(%ebp)
	je	.L134
	.loc 1 493 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L136
.L134:
	.loc 1 494 0
	movzwl	-16(%ebp), %eax
	cmpw	$8, %ax
	je	.L137
	movzwl	-16(%ebp), %eax
	cmpw	$14, %ax
	jne	.L139
.L137:
.LBB6:
	.loc 1 500 0
	movl	-104(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_formstring@PLT
	movl	%eax, -36(%ebp)
	.loc 1 501 0
	movl	-64(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 502 0
	cmpl	$0, -36(%ebp)
	je	.L140
	.loc 1 503 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L140:
	.loc 1 507 0
	movl	cu_name@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L142
	.loc 1 508 0
	movl	-64(%ebp), %eax
	movl	$47, 4(%esp)
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -32(%ebp)
	.loc 1 509 0
	cmpl	$0, -32(%ebp)
	jne	.L144
	.loc 1 510 0
	movl	-64(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L142
.L144:
	.loc 1 512 0
	addl	$1, -32(%ebp)
.L142:
	.loc 1 515 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	cu_name@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L146
	.loc 1 516 0
	movl	-64(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 517 0
	jmp	.L124
.L146:
	.loc 1 519 0
	movl	-64(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 494 0
	jmp	.L136
.L139:
.LBE6:
	.loc 1 521 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L136:
	.loc 1 525 0
	movl	-104(%ebp), %eax
	movl	$10, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 526 0
	movl	-60(%ebp), %eax
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L126:
.LBE5:
	.loc 1 528 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L148
	movl	info_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L148
	.loc 1 529 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L151
	.loc 1 530 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 531 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 533 0
	movzwl	-10(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 534 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 535 0
	movzwl	-12(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 8(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L148
.L151:
	.loc 1 538 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 539 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 541 0
	movzwl	-10(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 542 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 544 0
	movzwl	-12(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 8(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L148:
	.loc 1 549 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_siblingof@PLT
	movl	%eax, -52(%ebp)
	.loc 1 550 0
	cmpl	$0, -52(%ebp)
	jne	.L153
	.loc 1 551 0
	movl	info_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L155
	movl	cu_name_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L157
.L155:
.LBB7:
	.loc 1 552 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	.loc 1 553 0
	movl	$0, -64(%ebp)
	.loc 1 555 0
	movl	-60(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_srcfiles@PLT
	movl	%eax, -28(%ebp)
	.loc 1 557 0
	cmpl	$0, -28(%ebp)
	je	.L158
	.loc 1 558 0
	movl	$0, -64(%ebp)
	.loc 1 559 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
.L158:
	.loc 1 562 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_die_and_children@PLT
	.loc 1 563 0
	cmpl	$0, -28(%ebp)
	jne	.L157
.LBB8:
	.loc 1 566 0
	movl	$0, -24(%ebp)
	jmp	.L161
.L162:
	.loc 1 567 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 566 0
	addl	$1, -24(%ebp)
.L161:
	movl	-24(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -116(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-108(%ebp), %edx
	cmpl	%edx, -116(%ebp)
	jl	.L162
	movl	-108(%ebp), %eax
	cmpl	%eax, -116(%ebp)
	jg	.L164
	movl	-112(%ebp), %edx
	cmpl	%edx, -120(%ebp)
	jb	.L162
.L164:
	.loc 1 569 0
	movl	-64(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L157:
.LBE8:
.LBE7:
	.loc 1 572 0
	movl	line_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L165
	.loc 1 573 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_line_numbers_this_cu@PLT
.L165:
	.loc 1 574 0
	movl	-60(%ebp), %eax
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	jmp	.L167
.L153:
	.loc 1 575 0
	cmpl	$-1, -52(%ebp)
	je	.L167
	.loc 1 578 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L167:
	.loc 1 580 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	cu_offset@GOT(%ebx), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L124:
.L173:
.LBE4:
	.loc 1 464 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_next_cu_header@PLT
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L125
	.loc 1 582 0
	cmpl	$1, -56(%ebp)
	jne	.L172
.LBB9:
	.loc 1 583 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dwarf_errmsg@PLT
	movl	%eax, -20(%ebp)
	.loc 1 584 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dwarf_errno@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 586 0
	movl	program_name@GOTOFF(%ebx), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 589 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L172:
.LBE9:
	.loc 1 591 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	print_infos, .-print_infos
	.section	.rodata
.LC71:
	.string	"%s NO ENTRY:  %s: \n"
.LC72:
	.string	"%s:  %s \n"
	.align 4
.LC73:
	.string	"%s InternalError:  %s:  code %d\n"
	.text
.globl print_error
	.type	print_error, @function
print_error:
.LFB19:
	.loc 1 597 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%esi
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$48, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 598 0
	cmpl	$1, 16(%ebp)
	jne	.L175
.LBB10:
	.loc 1 599 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_errmsg@PLT
	movl	%eax, -12(%ebp)
	.loc 1 600 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_errno@PLT
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 602 0
	movl	program_name@GOTOFF(%ebx), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	jmp	.L177
.L175:
.LBE10:
	.loc 1 604 0
	cmpl	$-1, 16(%ebp)
	jne	.L178
	.loc 1 605 0
	movl	program_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L177
.L178:
	.loc 1 606 0
	cmpl	$0, 16(%ebp)
	jne	.L180
	.loc 1 607 0
	movl	program_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L177
.L180:
	.loc 1 609 0
	movl	program_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L177:
	.loc 1 612 0
	movl	$1, (%esp)
	call	exit@PLT
.LFE19:
	.size	print_error, .-print_error
	.local	program_name
	.comm	program_name,4,4
	.comm	abbrev_code_result,8,4
	.comm	pubname_attr_result,8,4
	.comm	reloc_offset_result,8,4
	.comm	attr_tag_result,8,4
	.comm	tag_tree_result,8,4
	.comm	type_offset_result,8,4
	.comm	cu_name,8192,32
	.comm	err,4,4
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
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI3
	.byte	0x84
	.uleb128 0x4
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
	.long	.LCFI7-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI8
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI15-.LCFI13
	.byte	0x83
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
	.long	.LCFI16-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI17
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI21-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI22
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE8:
	.file 2 "../../libdwarf/dwarfdump/globals.h"
	.file 3 "../include/libelf/libelf.h"
	.file 4 "/usr/include/elf.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "../../libdwarf/libdwarf/libdwarf.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/include/sys/types.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.value	0x1
	.byte	0x51
	.long	.LCFI1-.Ltext0
	.long	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI3-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB16-.Ltext0
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
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI16-.Ltext0
	.long	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI17-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI21-.Ltext0
	.long	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI22-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1364
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libdwarf/dwarfdump/dwarfdump.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libdwarf"
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0xb0
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
	.byte	0x8
	.byte	0x3b
	.long	0x116
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x8
	.byte	0x90
	.long	0x160
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x8
	.byte	0x91
	.long	0x141
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__time_t"
	.byte	0x8
	.byte	0x98
	.long	0x160
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x19c
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"off_t"
	.byte	0x9
	.byte	0x58
	.long	0x151
	.uleb128 0x2
	.string	"time_t"
	.byte	0x7
	.byte	0x4d
	.long	0x184
	.uleb128 0x7
	.long	0x43a
	.long	.LASF1
	.byte	0x94
	.byte	0xa
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x48b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x497
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x4a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x16c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x4ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x9
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0xa
	.long	0x48b
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0xb
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x48b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x448
	.uleb128 0x6
	.byte	0x4
	.long	0x1bf
	.uleb128 0xc
	.long	0x4a7
	.long	0x19c
	.uleb128 0xd
	.long	0x17d
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x43a
	.uleb128 0xc
	.long	0x4bd
	.long	0x19c
	.uleb128 0xd
	.long	0x17d
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.string	"uint16_t"
	.byte	0x5
	.byte	0x32
	.long	0xc8
	.uleb128 0x2
	.string	"uint32_t"
	.byte	0x5
	.byte	0x34
	.long	0xb0
	.uleb128 0x2
	.string	"uint64_t"
	.byte	0x5
	.byte	0x3b
	.long	0x127
	.uleb128 0x2
	.string	"Elf32_Half"
	.byte	0x4
	.byte	0x20
	.long	0x4bd
	.uleb128 0x2
	.string	"Elf64_Half"
	.byte	0x4
	.byte	0x21
	.long	0x4bd
	.uleb128 0x2
	.string	"Elf32_Word"
	.byte	0x4
	.byte	0x24
	.long	0x4cd
	.uleb128 0x2
	.string	"Elf64_Word"
	.byte	0x4
	.byte	0x26
	.long	0x4cd
	.uleb128 0x2
	.string	"Elf32_Addr"
	.byte	0x4
	.byte	0x30
	.long	0x4cd
	.uleb128 0x2
	.string	"Elf64_Addr"
	.byte	0x4
	.byte	0x31
	.long	0x4dd
	.uleb128 0x2
	.string	"Elf32_Off"
	.byte	0x4
	.byte	0x34
	.long	0x4cd
	.uleb128 0x2
	.string	"Elf64_Off"
	.byte	0x4
	.byte	0x35
	.long	0x4dd
	.uleb128 0xe
	.long	0x667
	.byte	0x34
	.byte	0x4
	.byte	0x45
	.uleb128 0xb
	.string	"e_ident"
	.byte	0x4
	.byte	0x46
	.long	0x667
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"e_type"
	.byte	0x4
	.byte	0x47
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x48
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x49
	.long	0x511
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"e_entry"
	.byte	0x4
	.byte	0x4a
	.long	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"e_phoff"
	.byte	0x4
	.byte	0x4b
	.long	0x559
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"e_shoff"
	.byte	0x4
	.byte	0x4c
	.long	0x559
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"e_flags"
	.byte	0x4
	.byte	0x4d
	.long	0x511
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.long	.LASF4
	.byte	0x4
	.byte	0x4e
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.long	.LASF5
	.byte	0x4
	.byte	0x4f
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xb
	.string	"e_phnum"
	.byte	0x4
	.byte	0x50
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.long	.LASF6
	.byte	0x4
	.byte	0x51
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xb
	.string	"e_shnum"
	.byte	0x4
	.byte	0x52
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.long	.LASF7
	.byte	0x4
	.byte	0x53
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0xc
	.long	0x677
	.long	0xb7
	.uleb128 0xd
	.long	0x17d
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.string	"Elf32_Ehdr"
	.byte	0x4
	.byte	0x54
	.long	0x57b
	.uleb128 0xe
	.long	0x775
	.byte	0x40
	.byte	0x4
	.byte	0x57
	.uleb128 0xb
	.string	"e_ident"
	.byte	0x4
	.byte	0x58
	.long	0x667
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"e_type"
	.byte	0x4
	.byte	0x59
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x5a
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x5b
	.long	0x523
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"e_entry"
	.byte	0x4
	.byte	0x5c
	.long	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"e_phoff"
	.byte	0x4
	.byte	0x5d
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"e_shoff"
	.byte	0x4
	.byte	0x5e
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"e_flags"
	.byte	0x4
	.byte	0x5f
	.long	0x523
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.long	.LASF4
	.byte	0x4
	.byte	0x60
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.long	.LASF5
	.byte	0x4
	.byte	0x61
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xb
	.string	"e_phnum"
	.byte	0x4
	.byte	0x62
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.long	.LASF6
	.byte	0x4
	.byte	0x63
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xb
	.string	"e_shnum"
	.byte	0x4
	.byte	0x64
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.long	.LASF7
	.byte	0x4
	.byte	0x65
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.byte	0x0
	.uleb128 0x2
	.string	"Elf64_Ehdr"
	.byte	0x4
	.byte	0x66
	.long	0x689
	.uleb128 0x10
	.long	0x807
	.byte	0x4
	.byte	0x3
	.byte	0x34
	.uleb128 0x11
	.string	"ELF_C_NULL"
	.sleb128 0
	.uleb128 0x11
	.string	"ELF_C_READ"
	.sleb128 1
	.uleb128 0x11
	.string	"ELF_C_WRITE"
	.sleb128 2
	.uleb128 0x11
	.string	"ELF_C_CLR"
	.sleb128 3
	.uleb128 0x11
	.string	"ELF_C_SET"
	.sleb128 4
	.uleb128 0x11
	.string	"ELF_C_FDDONE"
	.sleb128 5
	.uleb128 0x11
	.string	"ELF_C_FDREAD"
	.sleb128 6
	.uleb128 0x11
	.string	"ELF_C_RDWR"
	.sleb128 7
	.uleb128 0x11
	.string	"ELF_C_NUM"
	.sleb128 8
	.byte	0x0
	.uleb128 0x2
	.string	"Elf_Cmd"
	.byte	0x3
	.byte	0x3e
	.long	0x787
	.uleb128 0x2
	.string	"Elf"
	.byte	0x3
	.byte	0x77
	.long	0x821
	.uleb128 0x12
	.string	"Elf"
	.byte	0x1
	.uleb128 0xe
	.long	0x8af
	.byte	0x1c
	.byte	0x3
	.byte	0x81
	.uleb128 0xb
	.string	"ar_name"
	.byte	0x3
	.byte	0x82
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"ar_date"
	.byte	0x3
	.byte	0x83
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"ar_uid"
	.byte	0x3
	.byte	0x84
	.long	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"ar_gid"
	.byte	0x3
	.byte	0x85
	.long	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"ar_mode"
	.byte	0x3
	.byte	0x86
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"ar_size"
	.byte	0x3
	.byte	0x87
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"ar_rawname"
	.byte	0x3
	.byte	0x88
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"Elf_Arhdr"
	.byte	0x3
	.byte	0x89
	.long	0x827
	.uleb128 0x2
	.string	"Dwarf_Unsigned"
	.byte	0x6
	.byte	0x5c
	.long	0x127
	.uleb128 0x2
	.string	"Dwarf_Half"
	.byte	0x6
	.byte	0x5d
	.long	0xc8
	.uleb128 0x2
	.string	"Dwarf_Signed"
	.byte	0x6
	.byte	0x5f
	.long	0x116
	.uleb128 0x2
	.string	"Dwarf_Debug"
	.byte	0x6
	.byte	0xc2
	.long	0x90f
	.uleb128 0x6
	.byte	0x4
	.long	0x915
	.uleb128 0x12
	.string	"Dwarf_Debug_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Die"
	.byte	0x6
	.byte	0xc3
	.long	0x936
	.uleb128 0x6
	.byte	0x4
	.long	0x93c
	.uleb128 0x12
	.string	"Dwarf_Die_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Error"
	.byte	0x6
	.byte	0xca
	.long	0x95d
	.uleb128 0x6
	.byte	0x4
	.long	0x963
	.uleb128 0x12
	.string	"Dwarf_Error_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Attribute"
	.byte	0x6
	.byte	0xcb
	.long	0x98a
	.uleb128 0x6
	.byte	0x4
	.long	0x990
	.uleb128 0x12
	.string	"Dwarf_Attribute_s"
	.byte	0x1
	.uleb128 0x2
	.string	"string"
	.byte	0x2
	.byte	0x63
	.long	0x196
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x64
	.long	0x10f
	.uleb128 0xe
	.long	0x9ec
	.byte	0x8
	.byte	0x2
	.byte	0x6f
	.uleb128 0xb
	.string	"checks"
	.byte	0x2
	.byte	0x70
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"errors"
	.byte	0x2
	.byte	0x71
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Check_Result"
	.byte	0x2
	.byte	0x72
	.long	0x9c1
	.uleb128 0x13
	.long	0xac5
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	0x10f
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x14
	.string	"argc"
	.byte	0x1
	.byte	0x7b
	.long	0x10f
	.byte	0x3
	.byte	0x75
	.sleb128 -48
	.byte	0x6
	.uleb128 0x14
	.string	"argv"
	.byte	0x1
	.byte	0x7b
	.long	0xac5
	.byte	0x5
	.byte	0x75
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF8
	.byte	0x1
	.byte	0x7d
	.long	0x9a4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.byte	0x7e
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"cmd"
	.byte	0x1
	.byte	0x7f
	.long	0x807
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"arf"
	.byte	0x1
	.byte	0x80
	.long	0xacb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"elf"
	.byte	0x1
	.byte	0x80
	.long	0xacb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.string	"archive"
	.byte	0x1
	.byte	0x81
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x16
	.string	"eh32"
	.byte	0x1
	.byte	0x9b
	.long	0xad1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"eh64"
	.byte	0x1
	.byte	0x9e
	.long	0xad7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x196
	.uleb128 0x6
	.byte	0x4
	.long	0x816
	.uleb128 0x6
	.byte	0x4
	.long	0x677
	.uleb128 0x6
	.byte	0x4
	.long	0x775
	.uleb128 0x18
	.long	0xb71
	.string	"process_one_file"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.long	0x10f
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x14
	.string	"elf"
	.byte	0x1
	.byte	0xbf
	.long	0xacb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF8
	.byte	0x1
	.byte	0xbf
	.long	0x9a4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"archive"
	.byte	0x1
	.byte	0xbf
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.byte	0xc1
	.long	0x8fc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.string	"dres"
	.byte	0x1
	.byte	0xc2
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x16
	.string	"mem_header"
	.byte	0x1
	.byte	0xd7
	.long	0xb71
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x8af
	.uleb128 0x1a
	.long	0xbf2
	.string	"process_args"
	.byte	0x1
	.value	0x117
	.byte	0x1
	.long	0x9a4
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1b
	.string	"argc"
	.byte	0x1
	.value	0x116
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"argv"
	.byte	0x1
	.value	0x116
	.long	0xac5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.value	0x119
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"usage_error"
	.byte	0x1
	.value	0x11a
	.long	0x9b2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"oarg"
	.byte	0x1
	.value	0x11b
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0xe1a
	.string	"print_infos"
	.byte	0x1
	.value	0x1c3
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1b
	.string	"dbg"
	.byte	0x1
	.value	0x1c2
	.long	0x8fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"cu_header_length"
	.byte	0x1
	.value	0x1c4
	.long	0x8c0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"abbrev_offset"
	.byte	0x1
	.value	0x1c5
	.long	0x8c0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.string	"version_stamp"
	.byte	0x1
	.value	0x1c6
	.long	0x8d6
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1c
	.string	"address_size"
	.byte	0x1
	.value	0x1c7
	.long	0x8d6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"cu_die"
	.byte	0x1
	.value	0x1c8
	.long	0x925
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.string	"next_cu_offset"
	.byte	0x1
	.value	0x1c9
	.long	0x8c0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1c
	.string	"nres"
	.byte	0x1
	.value	0x1ca
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	0xdeb
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1c
	.string	"sres"
	.byte	0x1
	.value	0x1d5
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	0xd93
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1c
	.string	"tres"
	.byte	0x1
	.value	0x1d8
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"tag"
	.byte	0x1
	.value	0x1d9
	.long	0x8d6
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1c
	.string	"attrib"
	.byte	0x1
	.value	0x1da
	.long	0x973
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.string	"theform"
	.byte	0x1
	.value	0x1db
	.long	0x8d6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"fres"
	.byte	0x1
	.value	0x1dc
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"ares"
	.byte	0x1
	.value	0x1dd
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1c
	.string	"temps"
	.byte	0x1
	.value	0x1f0
	.long	0x9a4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"strres"
	.byte	0x1
	.value	0x1f1
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.value	0x1f2
	.long	0x9a4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1c
	.string	"cnt"
	.byte	0x1
	.value	0x228
	.long	0x8e8
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.string	"srcfiles"
	.byte	0x1
	.value	0x229
	.long	0xac5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"srcf"
	.byte	0x1
	.value	0x22a
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1c
	.string	"si"
	.byte	0x1
	.value	0x234
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x1c
	.string	"errmsg"
	.byte	0x1
	.value	0x247
	.long	0x9a4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"myerr"
	.byte	0x1
	.value	0x248
	.long	0x116
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0xead
	.byte	0x1
	.string	"print_error"
	.byte	0x1
	.value	0x255
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1b
	.string	"dbg"
	.byte	0x1
	.value	0x253
	.long	0x8fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"msg"
	.byte	0x1
	.value	0x253
	.long	0x9a4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"dwarf_code"
	.byte	0x1
	.value	0x253
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.value	0x254
	.long	0x94a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x1c
	.string	"errmsg"
	.byte	0x1
	.value	0x257
	.long	0x9a4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"myerr"
	.byte	0x1
	.value	0x258
	.long	0x116
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.string	"program_name"
	.byte	0x1
	.byte	0x35
	.long	0x9a4
	.byte	0x5
	.byte	0x3
	.long	program_name
	.uleb128 0x16
	.string	"line_flag"
	.byte	0x1
	.byte	0x47
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	line_flag
	.uleb128 0x16
	.string	"abbrev_flag"
	.byte	0x1
	.byte	0x48
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	abbrev_flag
	.uleb128 0x16
	.string	"frame_flag"
	.byte	0x1
	.byte	0x49
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	frame_flag
	.uleb128 0x16
	.string	"exceptions_flag"
	.byte	0x1
	.byte	0x4a
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	exceptions_flag
	.uleb128 0x16
	.string	"pubnames_flag"
	.byte	0x1
	.byte	0x4b
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	pubnames_flag
	.uleb128 0x16
	.string	"macinfo_flag"
	.byte	0x1
	.byte	0x4c
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	macinfo_flag
	.uleb128 0x16
	.string	"loc_flag"
	.byte	0x1
	.byte	0x4d
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	loc_flag
	.uleb128 0x16
	.string	"aranges_flag"
	.byte	0x1
	.byte	0x4e
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	aranges_flag
	.uleb128 0x16
	.string	"string_flag"
	.byte	0x1
	.byte	0x4f
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	string_flag
	.uleb128 0x16
	.string	"reloc_flag"
	.byte	0x1
	.byte	0x50
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	reloc_flag
	.uleb128 0x16
	.string	"static_func_flag"
	.byte	0x1
	.byte	0x51
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	static_func_flag
	.uleb128 0x16
	.string	"static_var_flag"
	.byte	0x1
	.byte	0x52
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	static_var_flag
	.uleb128 0x16
	.string	"type_flag"
	.byte	0x1
	.byte	0x53
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	type_flag
	.uleb128 0x16
	.string	"weakname_flag"
	.byte	0x1
	.byte	0x54
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	weakname_flag
	.uleb128 0x16
	.string	"dwarf_check"
	.byte	0x1
	.byte	0x62
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	dwarf_check
	.uleb128 0x20
	.string	"stderr"
	.byte	0xa
	.byte	0x90
	.long	0x491
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"verbose"
	.byte	0x1
	.byte	0x56
	.long	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	verbose
	.uleb128 0x21
	.string	"dense"
	.byte	0x1
	.byte	0x57
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dense
	.uleb128 0x21
	.string	"ellipsis"
	.byte	0x1
	.byte	0x58
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ellipsis
	.uleb128 0x21
	.string	"dst_format"
	.byte	0x1
	.byte	0x59
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dst_format
	.uleb128 0x21
	.string	"check_pubname_attr"
	.byte	0x1
	.byte	0x5c
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	check_pubname_attr
	.uleb128 0x21
	.string	"check_attr_tag"
	.byte	0x1
	.byte	0x5e
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	check_attr_tag
	.uleb128 0x21
	.string	"check_tag_tree"
	.byte	0x1
	.byte	0x5f
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	check_tag_tree
	.uleb128 0x21
	.string	"check_type_offset"
	.byte	0x1
	.byte	0x60
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	check_type_offset
	.uleb128 0x21
	.string	"abbrev_code_result"
	.byte	0x1
	.byte	0x68
	.long	0x9ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	abbrev_code_result
	.uleb128 0x21
	.string	"pubname_attr_result"
	.byte	0x1
	.byte	0x69
	.long	0x9ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pubname_attr_result
	.uleb128 0x21
	.string	"reloc_offset_result"
	.byte	0x1
	.byte	0x6a
	.long	0x9ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reloc_offset_result
	.uleb128 0x21
	.string	"attr_tag_result"
	.byte	0x1
	.byte	0x6b
	.long	0x9ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	attr_tag_result
	.uleb128 0x21
	.string	"tag_tree_result"
	.byte	0x1
	.byte	0x6c
	.long	0x9ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	tag_tree_result
	.uleb128 0x21
	.string	"type_offset_result"
	.byte	0x1
	.byte	0x6d
	.long	0x9ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	type_offset_result
	.uleb128 0x21
	.string	"info_flag"
	.byte	0x1
	.byte	0x41
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	info_flag
	.uleb128 0x21
	.string	"use_old_dwarf_loclist"
	.byte	0x1
	.byte	0x42
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	use_old_dwarf_loclist
	.uleb128 0xc
	.long	0x123c
	.long	0x19c
	.uleb128 0x22
	.long	0x17d
	.value	0x1fff
	.byte	0x0
	.uleb128 0x21
	.string	"cu_name"
	.byte	0x1
	.byte	0x64
	.long	0x122b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cu_name
	.uleb128 0x21
	.string	"cu_name_flag"
	.byte	0x1
	.byte	0x65
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cu_name_flag
	.uleb128 0x21
	.string	"cu_offset"
	.byte	0x1
	.byte	0x66
	.long	0x8c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cu_offset
	.uleb128 0x21
	.string	"check_error"
	.byte	0x1
	.byte	0x36
	.long	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	check_error
	.uleb128 0x21
	.string	"err"
	.byte	0x1
	.byte	0x6f
	.long	0x94a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	err
	.uleb128 0x20
	.string	"optarg"
	.byte	0x1
	.byte	0x2c
	.long	0x196
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"optind"
	.byte	0x1
	.value	0x118
	.long	0x10f
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"attrib_buf"
	.byte	0x1
	.byte	0x39
	.long	0x9a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"attrib_bufsiz"
	.byte	0x1
	.byte	0x3a
	.long	0x10f
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"current_cu_die_for_print_frames"
	.byte	0x1
	.byte	0x3e
	.long	0x925
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"check_abbrev_code"
	.byte	0x1
	.byte	0x5b
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	check_abbrev_code
	.uleb128 0x21
	.string	"check_reloc_offset"
	.byte	0x1
	.byte	0x5d
	.long	0x9b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	check_reloc_offset
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1ca
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1368
	.long	0xa06
	.string	"main"
	.long	0xe1a
	.string	"print_error"
	.long	0x1058
	.string	"verbose"
	.long	0x106e
	.string	"dense"
	.long	0x1082
	.string	"ellipsis"
	.long	0x1099
	.string	"dst_format"
	.long	0x10b2
	.string	"check_pubname_attr"
	.long	0x10d3
	.string	"check_attr_tag"
	.long	0x10f0
	.string	"check_tag_tree"
	.long	0x110d
	.string	"check_type_offset"
	.long	0x112d
	.string	"abbrev_code_result"
	.long	0x114e
	.string	"pubname_attr_result"
	.long	0x1170
	.string	"reloc_offset_result"
	.long	0x1192
	.string	"attr_tag_result"
	.long	0x11b0
	.string	"tag_tree_result"
	.long	0x11ce
	.string	"type_offset_result"
	.long	0x11ef
	.string	"info_flag"
	.long	0x1207
	.string	"use_old_dwarf_loclist"
	.long	0x123c
	.string	"cu_name"
	.long	0x1252
	.string	"cu_name_flag"
	.long	0x126d
	.string	"cu_offset"
	.long	0x1285
	.string	"check_error"
	.long	0x129f
	.string	"err"
	.long	0x1326
	.string	"check_abbrev_code"
	.long	0x1346
	.string	"check_reloc_offset"
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
	.string	"e_machine"
.LASF1:
	.string	"_IO_FILE"
.LASF6:
	.string	"e_shentsize"
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"e_shstrndx"
.LASF5:
	.string	"e_phentsize"
.LASF8:
	.string	"file_name"
.LASF4:
	.string	"e_ehsize"
.LASF3:
	.string	"e_version"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
