	.file	"print_die.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	indent_level
	.comm	indent_level,4,4
	.local	local_symbols_already_began
	.comm	local_symbols_already_began,4,4
.globl fde_offset_for_cu_low
	.data
	.align 8
	.type	fde_offset_for_cu_low, @object
	.size	fde_offset_for_cu_low, 8
fde_offset_for_cu_low:
	.long	-1
	.long	-1
.globl fde_offset_for_cu_high
	.align 8
	.type	fde_offset_for_cu_high, @object
	.size	fde_offset_for_cu_high, 8
fde_offset_for_cu_high:
	.long	-1
	.long	-1
	.align 32
	.type	tag_tree_combination_table, @object
	.size	tag_tree_combination_table, 432
tag_tree_combination_table:
	.long	0
	.long	0
	.long	16
	.long	2
	.long	268443648
	.long	99336
	.long	150994976
	.long	0
	.long	0
	.long	256
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-454196970
	.long	3173075
	.long	0
	.long	0
	.long	268443648
	.long	525320
	.long	0
	.long	0
	.long	16777248
	.long	0
	.long	0
	.long	0
	.long	8192
	.long	1024
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1048576
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1578270666
	.long	3173075
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2115141578
	.long	3171027
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4096
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1376944074
	.long	3336915
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	33554432
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.type	tag_tree_combination, @function
tag_tree_combination:
.LFB5:
	.file 1 "../../libdwarf/dwarfdump/print_die.c"
	.loc 1 79 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$12, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movw	%ax, -8(%ebp)
	movw	%dx, -12(%ebp)
	.loc 1 80 0
	cmpw	$0, -8(%ebp)
	je	.L2
	cmpw	$53, -8(%ebp)
	ja	.L2
	cmpw	$0, -12(%ebp)
	je	.L2
	cmpw	$53, -12(%ebp)
	ja	.L2
	.loc 1 82 0
	movzwl	-8(%ebp), %ecx
	movzwl	-12(%ebp), %eax
	shrw	$5, %ax
	movzwl	%ax, %edx
	leal	(%ecx,%ecx), %eax
	addl	%edx, %eax
	movl	tag_tree_combination_table@GOTOFF(%ebx,%eax,4), %edx
	movzwl	-12(%ebp), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	jmp	.L7
.L2:
	.loc 1 86 0
	movl	$0, -16(%ebp)
.L7:
	movl	-16(%ebp), %eax
	.loc 1 87 0
	addl	$12, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	tag_tree_combination, .-tag_tree_combination
	.section	.rodata
	.align 4
.LC0:
	.string	"Tag-tree root is not DW_TAG_compile_unit"
.LC1:
	.string	"*** DWARF CHECK: %s ***\n"
	.align 4
.LC2:
	.string	"tag-tree root is not DW_TAG_compile_unit"
	.align 4
.LC3:
	.string	"Tag-tree relation is not valid."
.LC4:
	.string	"*** DWARF CHECK: %s: %s ***\n"
	.align 4
.LC5:
	.string	"Tag-tree relation is not valid.."
.LC6:
	.string	"<child has no name>"
	.align 4
.LC7:
	.string	"Tag-tree Relation is not valid..."
	.align 4
.LC8:
	.string	"Tag-tree relation is not valid...."
	.align 4
.LC9:
	.string	"tag-tree relation is not valid"
.LC10:
	.string	"dwarf_child"
.LC11:
	.string	"dwarf_siblingof"
	.text
.globl print_die_and_children
	.type	print_die_and_children, @function
print_die_and_children:
.LFB6:
	.loc 1 93 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$84, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 99 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L10:
	.loc 1 102 0
	movl	indent_level@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, die_stack@GOTOFF(%ebx,%edx,4)
	.loc 1 104 0
	movl	check_tag_tree@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 105 0
	movl	tag_tree_result@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	tag_tree_result@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 106 0
	movl	indent_level@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L13
.LBB2:
	.loc 1 109 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_tag@PLT
	movl	%eax, -32(%ebp)
	.loc 1 110 0
	cmpl	$0, -32(%ebp)
	je	.L15
	.loc 1 111 0
	movl	tag_tree_result@GOT(%ebx), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	tag_tree_result@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 112 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L11
.L15:
	.loc 1 114 0
	movzwl	-10(%ebp), %eax
	cmpw	$17, %ax
	je	.L11
	.loc 1 117 0
	movl	tag_tree_result@GOT(%ebx), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	tag_tree_result@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 118 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L11
.L13:
.LBE2:
.LBB3:
	.loc 1 126 0
	movl	indent_level@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	die_stack@GOTOFF(%ebx,%eax,4), %edx
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_tag@PLT
	movl	%eax, -20(%ebp)
	.loc 1 129 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_tag@PLT
	movl	%eax, -16(%ebp)
	.loc 1 130 0
	cmpl	$0, -20(%ebp)
	je	.L19
	.loc 1 131 0
	movw	$0, -10(%ebp)
.L19:
	.loc 1 132 0
	cmpl	$0, -16(%ebp)
	je	.L21
	.loc 1 133 0
	movw	$0, -12(%ebp)
.L21:
	.loc 1 134 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L23
	.loc 1 135 0
	cmpl	$0, -16(%ebp)
	jne	.L25
	.loc 1 136 0
	movzwl	-12(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_TAG_name@PLT
	movl	%eax, %edx
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L11
.L25:
	.loc 1 139 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L11
.L23:
	.loc 1 142 0
	cmpl	$0, -20(%ebp)
	je	.L28
	.loc 1 143 0
	cmpl	$0, -16(%ebp)
	jne	.L30
	.loc 1 144 0
	movzwl	-12(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_TAG_name@PLT
	movl	%eax, %edx
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L11
.L30:
	.loc 1 147 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L11
.L28:
	.loc 1 150 0
	movzwl	-12(%ebp), %eax
	movzwl	%ax, %edx
	movzwl	-10(%ebp), %eax
	movzwl	%ax, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tag_tree_combination
	testl	%eax, %eax
	jne	.L11
	.loc 1 153 0
	movzwl	-12(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_TAG_name@PLT
	movl	%eax, %edx
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L11:
.LBE3:
	.loc 1 160 0
	movl	info_flag@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_die@PLT
	.loc 1 162 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_child@PLT
	movl	%eax, -28(%ebp)
	.loc 1 164 0
	cmpl	$0, -28(%ebp)
	jne	.L34
	.loc 1 165 0
	movl	indent_level@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, indent_level@GOTOFF(%ebx)
	.loc 1 166 0
	movl	-36(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_die_and_children@PLT
	.loc 1 167 0
	movl	indent_level@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, indent_level@GOTOFF(%ebx)
	.loc 1 168 0
	movl	indent_level@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L36
	.loc 1 169 0
	movl	$0, local_symbols_already_began@GOTOFF(%ebx)
.L36:
	.loc 1 170 0
	movl	-36(%ebp), %eax
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	jmp	.L38
.L34:
	.loc 1 171 0
	cmpl	$1, -28(%ebp)
	jne	.L38
	.loc 1 172 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L38:
	.loc 1 175 0
	leal	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_siblingof@PLT
	movl	%eax, -28(%ebp)
	.loc 1 176 0
	cmpl	$0, -28(%ebp)
	je	.L40
	.loc 1 181 0
	cmpl	$1, -28(%ebp)
	jne	.L40
	.loc 1 182 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L40:
	.loc 1 188 0
	movl	indent_level@GOTOFF(%ebx), %eax
	movl	$0, die_stack@GOTOFF(%ebx,%eax,4)
	.loc 1 189 0
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L43
	.loc 1 193 0
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L43:
	.loc 1 195 0
	cmpl	$0, -28(%ebp)
	jne	.L47
	.loc 1 197 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 203 0
	jmp	.L10
.L47:
	.loc 1 205 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	print_die_and_children, .-print_die_and_children
	.section	.rodata
.LC12:
	.string	"accessing tag of die!"
.LC13:
	.string	"dwarf_dieoffset"
.LC14:
	.string	"dwarf_die_CU_offset"
	.align 4
.LC15:
	.string	"\nCOMPILE_UNIT<header overall offset = %llu>:\n"
.LC16:
	.string	"\nLOCAL_SYMBOLS:"
.LC17:
	.string	"<%d><%llu+%llu><%s>"
.LC18:
	.string	"<%d><%llu><%s>"
.LC19:
	.string	"<%d><%5llu>\t%s\n"
.LC20:
	.string	"dwarf_attrlist"
.LC21:
	.string	"dwarf_whatattr entry missing"
.LC22:
	.string	"\n"
	.text
.globl print_one_die
	.type	print_one_die, @function
print_one_die:
.LFB7:
	.loc 1 214 0
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
	subl	$156, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	24(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 225 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_tag@PLT
	movl	%eax, -36(%ebp)
	.loc 1 226 0
	cmpl	$0, -36(%ebp)
	je	.L49
	.loc 1 227 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L49:
	.loc 1 229 0
	movzwl	-18(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_TAG_name@PLT
	movl	%eax, -40(%ebp)
	.loc 1 230 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dieoffset@PLT
	movl	%eax, -32(%ebp)
	.loc 1 231 0
	cmpl	$0, -32(%ebp)
	je	.L51
	.loc 1 232 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L51:
	.loc 1 234 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_die_CU_offset@PLT
	movl	%eax, -32(%ebp)
	.loc 1 235 0
	cmpl	$0, -32(%ebp)
	je	.L53
	.loc 1 236 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L53:
	.loc 1 239 0
	movl	dst_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L55
	cmpl	$0, 16(%ebp)
	je	.L55
	.loc 1 240 0
	movl	indent_level@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L58
	.loc 1 241 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L60
	.loc 1 242 0
	movl	$10, (%esp)
	call	putchar@PLT
	jmp	.L63
.L60:
	.loc 1 244 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L63
.L58:
	.loc 1 248 0
	movl	local_symbols_already_began@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L63
	movl	indent_level@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L63
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L63
	.loc 1 250 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 251 0
	movl	$1, local_symbols_already_began@GOTOFF(%ebx)
.L63:
	.loc 1 253 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L67
.LBB4:
	.loc 1 254 0
	movl	$0, -92(%ebp)
	jmp	.L69
.L70:
	movl	$32, (%esp)
	call	putchar@PLT
	addl	$1, -92(%ebp)
.L69:
	movl	indent_level@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	cmpl	-92(%ebp), %eax
	jg	.L70
.LBE4:
	.loc 1 255 0
	movl	indent_level@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L72
	.loc 1 256 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	indent_level@GOTOFF(%ebx), %esi
	movl	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L55
.L72:
	.loc 1 259 0
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %ecx
	movl	indent_level@GOTOFF(%ebx), %esi
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L55
.L67:
	.loc 1 262 0
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %ecx
	movl	indent_level@GOTOFF(%ebx), %esi
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L55:
	.loc 1 266 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_attrlist@PLT
	movl	%eax, -28(%ebp)
	.loc 1 267 0
	cmpl	$1, -28(%ebp)
	jne	.L75
	.loc 1 268 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L77
.L75:
	.loc 1 269 0
	cmpl	$-1, -28(%ebp)
	jne	.L77
	.loc 1 271 0
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
.L77:
	.loc 1 275 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L79
.L80:
.LBB5:
	.loc 1 279 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_whatattr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 280 0
	cmpl	$0, -24(%ebp)
	jne	.L81
	.loc 1 281 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movzwl	-20(%ebp), %eax
	movzwl	%ax, %esi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_attribute
	jmp	.L83
.L81:
	.loc 1 285 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L83:
.LBE5:
	.loc 1 275 0
	addl	$1, -56(%ebp)
	adcl	$0, -52(%ebp)
.L79:
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	-108(%ebp), %edi
	cmpl	%edi, -52(%ebp)
	jl	.L80
	movl	-108(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jg	.L85
	movl	-112(%ebp), %edx
	cmpl	%edx, -56(%ebp)
	jb	.L80
.L85:
	.loc 1 289 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L86
.L87:
	.loc 1 290 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$10, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 289 0
	addl	$1, -56(%ebp)
	adcl	$0, -52(%ebp)
.L86:
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-100(%ebp), %edi
	cmpl	%edi, -52(%ebp)
	jl	.L87
	movl	-100(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jg	.L89
	movl	-104(%ebp), %edx
	cmpl	%edx, -56(%ebp)
	jb	.L87
.L89:
	.loc 1 292 0
	cmpl	$0, -28(%ebp)
	jne	.L90
	.loc 1 293 0
	movl	-44(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L90:
	.loc 1 296 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L95
	cmpl	$0, 16(%ebp)
	je	.L95
	.loc 1 297 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L95:
	.loc 1 300 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE7:
	.size	print_one_die, .-print_one_die
	.section	.rodata
	.align 4
.LC23:
	.string	"make sure of the tag-attr combination.."
	.align 4
.LC24:
	.string	"make sure of the tag-attr combination"
.LC25:
	.string	" %s<%s>"
.LC26:
	.string	"\t\t%-28s%s\n"
	.text
	.type	print_attribute, @function
print_attribute:
.LFB8:
	.loc 1 308 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$84, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movw	%ax, -44(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 317 0
	movzwl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_AT_name@PLT
	movl	%eax, -28(%ebp)
	.loc 1 321 0
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 327 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_tag@PLT
	movl	%eax, -20(%ebp)
	.loc 1 328 0
	cmpl	$1, -20(%ebp)
	jne	.L97
	.loc 1 329 0
	movw	$0, -10(%ebp)
	jmp	.L99
.L97:
	.loc 1 330 0
	cmpl	$-1, -20(%ebp)
	jne	.L99
	.loc 1 331 0
	movw	$0, -10(%ebp)
.L99:
	.loc 1 335 0
	movl	check_attr_tag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L101
	.loc 1 336 0
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 337 0
	cmpl	$1, -20(%ebp)
	jne	.L103
	.loc 1 338 0
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 339 0
	movzwl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_AT_name@PLT
	movl	%eax, %edx
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L101
.L103:
	.loc 1 341 0
	cmpl	$-1, -20(%ebp)
	jne	.L105
	.loc 1 342 0
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 343 0
	movzwl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_AT_name@PLT
	movl	%eax, %edx
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L101
.L105:
	.loc 1 345 0
	movzwl	-44(%ebp), %edx
	movzwl	-10(%ebp), %eax
	movzwl	%ax, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tag_attr_combination
	testl	%eax, %eax
	jne	.L101
	.loc 1 348 0
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	attr_tag_result@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 349 0
	movzwl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_AT_name@PLT
	movl	%eax, %edx
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L101:
	.loc 1 354 0
	movzwl	-44(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$77, -60(%ebp)
	ja	.L108
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L119@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L119:
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L109@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L110@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L111@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L112@GOTOFF
	.long	.L108@GOTOFF
	.long	.L109@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L113@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L109@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L114@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L115@GOTOFF
	.long	.L108@GOTOFF
	.long	.L109@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L116@GOTOFF
	.long	.L108@GOTOFF
	.long	.L109@GOTOFF
	.long	.L108@GOTOFF
	.long	.L117@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L109@GOTOFF
	.long	.L108@GOTOFF
	.long	.L109@GOTOFF
	.long	.L108@GOTOFF
	.long	.L118@GOTOFF
	.long	.L109@GOTOFF
	.text
.L111:
	.loc 1 356 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -16(%ebp)
	.loc 1 357 0
	cmpl	$0, -16(%ebp)
	je	.L120
	.loc 1 358 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L120:
	.loc 1 360 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_LANG_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 361 0
	jmp	.L122
.L114:
	.loc 1 363 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -16(%ebp)
	.loc 1 364 0
	cmpl	$0, -16(%ebp)
	je	.L123
	.loc 1 365 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L123:
	.loc 1 367 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_ACCESS_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 368 0
	jmp	.L122
.L112:
	.loc 1 370 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -16(%ebp)
	.loc 1 371 0
	cmpl	$0, -16(%ebp)
	je	.L125
	.loc 1 372 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L125:
	.loc 1 374 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_VIS_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 375 0
	jmp	.L122
.L118:
	.loc 1 377 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -16(%ebp)
	.loc 1 378 0
	cmpl	$0, -16(%ebp)
	je	.L127
	.loc 1 379 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L127:
	.loc 1 381 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_VIRTUALITY_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 382 0
	jmp	.L122
.L117:
	.loc 1 384 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -16(%ebp)
	.loc 1 385 0
	cmpl	$0, -16(%ebp)
	je	.L129
	.loc 1 386 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L129:
	.loc 1 388 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_ID_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 389 0
	jmp	.L122
.L113:
	.loc 1 391 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -16(%ebp)
	.loc 1 392 0
	cmpl	$0, -16(%ebp)
	je	.L131
	.loc 1 393 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L131:
	.loc 1 395 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_INL_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 396 0
	jmp	.L122
.L116:
	.loc 1 398 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -16(%ebp)
	.loc 1 399 0
	cmpl	$0, -16(%ebp)
	je	.L133
	.loc 1 400 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L133:
	.loc 1 402 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_ATE_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 403 0
	jmp	.L122
.L110:
	.loc 1 405 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -16(%ebp)
	.loc 1 406 0
	cmpl	$0, -16(%ebp)
	je	.L135
	.loc 1 407 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L135:
	.loc 1 409 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_ORD_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 410 0
	jmp	.L122
.L115:
	.loc 1 412 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -16(%ebp)
	.loc 1 413 0
	cmpl	$0, -16(%ebp)
	je	.L137
	.loc 1 414 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L137:
	.loc 1 416 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_CC_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 417 0
	jmp	.L122
.L109:
	.loc 1 427 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_location_list
	.loc 1 428 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 429 0
	jmp	.L122
.L108:
	.loc 1 431 0
	movzwl	-10(%ebp), %eax
	movzwl	%ax, %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_attr_value
	.loc 1 432 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L122:
	.loc 1 435 0
	cmpl	$0, 24(%ebp)
	je	.L143
	.loc 1 436 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L141
	.loc 1 437 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L143
.L141:
	.loc 1 439 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L143:
	.loc 1 441 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	print_attribute, .-print_attribute
	.section	.rodata
.LC27:
	.string	"<lowpc=0x%llx>"
.LC28:
	.string	"<highpc=0x%llx>"
.LC29:
	.string	".debug_loc"
.LC30:
	.string	".debug_info"
.LC31:
	.string	"<from %s offset 0x%llx>"
.LC32:
	.string	"dwarf_op unexpected value"
.LC33:
	.string	"%+lld"
.LC34:
	.string	" %#llx"
.LC35:
	.string	" %lld"
.LC36:
	.string	" %llu"
.LC37:
	.string	"%llu"
	.text
	.type	_dwarf_print_one_locdesc, @function
_dwarf_print_one_locdesc:
.LFB9:
	.loc 1 449 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$144, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 450 0
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 452 0
	movw	$0, -12(%ebp)
	.loc 1 456 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L145
	movl	12(%ebp), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L147
.L145:
	.loc 1 457 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 459 0
	movl	-28(%ebp), %eax
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
	addl	%eax, -28(%ebp)
	.loc 1 460 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 462 0
	movl	-28(%ebp), %eax
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
	addl	%eax, -28(%ebp)
	.loc 1 463 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L147
	.loc 1 464 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	12(%ebp), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L149
	leal	.LC29@GOTOFF(%ebx), %ecx
	movl	%ecx, -64(%ebp)
	jmp	.L151
.L149:
	leal	.LC30@GOTOFF(%ebx), %edi
	movl	%edi, -64(%ebp)
.L151:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 468 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -84(%ebp)
	movl	$0, %eax
	cld
	movl	-84(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -28(%ebp)
.L147:
	.loc 1 473 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 474 0
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	movw	%ax, -12(%ebp)
	.loc 1 475 0
	movl	$0, -16(%ebp)
	jmp	.L152
.L153:
.LBB6:
	.loc 1 479 0
	cmpl	$0, -16(%ebp)
	jle	.L154
	.loc 1 480 0
	movl	-28(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, -28(%ebp)
.L154:
	.loc 1 482 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	.loc 1 483 0
	cmpb	$-106, -9(%ebp)
	jbe	.L156
	.loc 1 484 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 486 0
	movl	$1, -60(%ebp)
	jmp	.L158
.L156:
	.loc 1 488 0
	movzbl	-9(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_OP_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 489 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 490 0
	movl	-20(%ebp), %eax
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
	addl	%eax, -28(%ebp)
	.loc 1 491 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 492 0
	cmpb	$111, -9(%ebp)
	jbe	.L159
	cmpb	$-113, -9(%ebp)
	ja	.L159
	.loc 1 493 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 494 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -92(%ebp)
	movl	$0, %eax
	cld
	movl	-92(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -28(%ebp)
	.loc 1 492 0
	jmp	.L162
.L159:
	.loc 1 496 0
	movzbl	-9(%ebp), %eax
	subl	$3, %eax
	movl	%eax, -96(%ebp)
	cmpl	$146, -96(%ebp)
	ja	.L162
	movl	-96(%ebp), %eax
	sall	$2, %eax
	movl	.L167@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L167:
	.long	.L163@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L164@GOTOFF
	.long	.L165@GOTOFF
	.long	.L164@GOTOFF
	.long	.L165@GOTOFF
	.long	.L164@GOTOFF
	.long	.L165@GOTOFF
	.long	.L164@GOTOFF
	.long	.L165@GOTOFF
	.long	.L164@GOTOFF
	.long	.L165@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L164@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L164@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L165@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L165@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L164@GOTOFF
	.long	.L165@GOTOFF
	.long	.L166@GOTOFF
	.long	.L164@GOTOFF
	.long	.L164@GOTOFF
	.long	.L164@GOTOFF
	.text
.L163:
	.loc 1 498 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 499 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -100(%ebp)
	movl	$0, %eax
	cld
	movl	-100(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -28(%ebp)
	.loc 1 500 0
	jmp	.L162
.L165:
	.loc 1 509 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 510 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -104(%ebp)
	movl	$0, %eax
	cld
	movl	-104(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -28(%ebp)
	.loc 1 511 0
	jmp	.L162
.L164:
	.loc 1 523 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 524 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -108(%ebp)
	movl	$0, %eax
	cld
	movl	-108(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -28(%ebp)
	.loc 1 525 0
	jmp	.L162
.L166:
	.loc 1 527 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 528 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -112(%ebp)
	movl	$0, %eax
	cld
	movl	-112(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -28(%ebp)
	.loc 1 529 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 530 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 531 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -116(%ebp)
	movl	$0, %eax
	cld
	movl	-116(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -28(%ebp)
.L162:
.LBE6:
	.loc 1 475 0
	addl	$1, -16(%ebp)
.L152:
	movzwl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jg	.L153
	.loc 1 539 0
	movl	20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 540 0
	movl	$0, -60(%ebp)
.L158:
	movl	-60(%ebp), %eax
	.loc 1 541 0
	addl	$144, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE9:
	.size	_dwarf_print_one_locdesc, .-_dwarf_print_one_locdesc
	.section	.rodata
.LC38:
	.string	"dwarf_loclist"
.LC39:
	.string	"[%2d]"
	.text
	.type	get_location_list, @function
get_location_list:
.LFB10:
	.loc 1 549 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%edi
.LCFI25:
	pushl	%ebx
.LCFI26:
	addl	$-128, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 550 0
	movl	$0, -28(%ebp)
	.loc 1 551 0
	movl	$0, -32(%ebp)
	.loc 1 557 0
	movl	$0, -12(%ebp)
	.loc 1 559 0
	movl	use_old_dwarf_loclist@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L171
.LBB7:
	.loc 1 562 0
	leal	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_loclist@PLT
	movl	%eax, -16(%ebp)
	.loc 1 563 0
	cmpl	$1, -16(%ebp)
	jne	.L173
	.loc 1 564 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L173:
	.loc 1 565 0
	cmpl	$-1, -16(%ebp)
	je	.L198
	.loc 1 568 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %ecx
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_print_one_locdesc
	.loc 1 569 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	$22, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 570 0
	movl	-28(%ebp), %eax
	movl	$3, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 571 0
	jmp	.L198
.L171:
.LBE7:
	.loc 1 577 0
	leal	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_loclist_n@PLT
	movl	%eax, -16(%ebp)
	.loc 1 578 0
	cmpl	$1, -16(%ebp)
	jne	.L177
	.loc 1 579 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L177:
	.loc 1 580 0
	cmpl	$-1, -16(%ebp)
	je	.L198
	.loc 1 582 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 584 0
	movl	$0, -12(%ebp)
	jmp	.L180
.L181:
.LBB8:
	.loc 1 587 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 588 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L182
	movl	-28(%ebp), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L182
	.loc 1 589 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 590 0
	movl	-20(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -108(%ebp)
	movl	$0, %eax
	cld
	movl	-108(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -20(%ebp)
.L182:
	.loc 1 592 0
	movl	-28(%ebp), %edx
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_print_one_locdesc
	movl	%eax, -16(%ebp)
	.loc 1 593 0
	cmpl	$1, -16(%ebp)
	je	.L198
	.loc 1 596 0
	cmpl	$0, -16(%ebp)
	jne	.L186
	.loc 1 597 0
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
.L186:
	.loc 1 601 0
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -104(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -100(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-92(%ebp), %edx
	cmpl	%edx, -100(%ebp)
	jg	.L188
	movl	-92(%ebp), %edi
	cmpl	%edi, -100(%ebp)
	jl	.L190
	movl	-96(%ebp), %eax
	cmpl	%eax, -104(%ebp)
	jae	.L188
.L190:
	.loc 1 604 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L188
	.loc 1 605 0
	movl	-20(%ebp), %eax
	movl	$151587082, (%eax)
	movw	$2313, 4(%eax)
	movb	$0, 6(%eax)
	.loc 1 606 0
	movl	-20(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -112(%ebp)
	movl	$0, %eax
	cld
	movl	-112(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -20(%ebp)
.L188:
.LBE8:
	.loc 1 584 0
	addl	$1, -12(%ebp)
.L180:
	movl	-12(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -84(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-76(%ebp), %edx
	cmpl	%edx, -84(%ebp)
	jl	.L181
	movl	-76(%ebp), %edi
	cmpl	%edi, -84(%ebp)
	jg	.L193
	movl	-80(%ebp), %eax
	cmpl	%eax, -88(%ebp)
	jb	.L181
.L193:
	.loc 1 610 0
	movl	$0, -24(%ebp)
	jmp	.L194
.L195:
	.loc 1 611 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	$22, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 612 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$3, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 610 0
	addl	$1, -24(%ebp)
.L194:
	movl	-24(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -68(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	jl	.L195
	movl	-60(%ebp), %edi
	cmpl	%edi, -68(%ebp)
	jg	.L197
	movl	-64(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	jb	.L195
.L197:
	.loc 1 614 0
	movl	-32(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L198:
	.loc 1 615 0
	subl	$-128, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE10:
	.size	get_location_list, .-get_location_list
	.section	.rodata
	.align 4
.LC40:
	.string	"dwarf_whatform cannot find attr form"
.LC41:
	.string	"%#llx"
.LC42:
	.string	"addr formwith no addr?!"
.LC43:
	.string	"<global die offset %llu>"
	.align 4
.LC44:
	.string	"DW_FORM_ref_addr form with no reference?!"
.LC45:
	.string	"ref formwith no ref?!"
.LC46:
	.string	"<%llu>"
	.align 4
.LC47:
	.string	"DW_AT_type offset does not point to type info"
	.align 4
.LC48:
	.string	"DW_AT_type offset does not exist"
	.align 4
.LC49:
	.string	"ERROR: out of memory for attribute buffer\n"
.LC50:
	.string	"%02x"
	.align 4
.LC51:
	.string	"DW_FORM_blockn cannot get block\n"
.LC52:
	.string	"FORM_datan cannot get attr"
.LC53:
	.string	"Cannot get formudata.."
.LC54:
	.string	"%lld"
	.align 4
.LC55:
	.string	"Cannot get formudata or formsdata.."
.LC56:
	.string	"Cannot get formsdata.."
.LC57:
	.string	"Cannot get formudata...."
.LC58:
	.string	"Cannot get formstr/p...."
.LC59:
	.string	"yes(%d)"
.LC60:
	.string	"Cannot get formflag/p...."
	.align 4
.LC61:
	.string	"dwarf_whatform unexpected value"
.LC62:
	.string	" (used DW_FORM_indirect) "
	.text
	.type	get_attr_value, @function
get_attr_value:
.LFB11:
	.loc 1 623 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%edi
.LCFI30:
	pushl	%esi
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$284, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movw	%ax, -132(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 627 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	.loc 1 628 0
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	.loc 1 636 0
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	.loc 1 641 0
	movw	$0, -24(%ebp)
	.loc 1 643 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_whatform@PLT
	movl	%eax, -68(%ebp)
	.loc 1 645 0
	cmpl	$1, -68(%ebp)
	jne	.L200
	.loc 1 646 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L202
.L200:
	.loc 1 648 0
	cmpl	$-1, -68(%ebp)
	je	.L326
.L202:
	.loc 1 652 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_whatform_direct@PLT
	.loc 1 656 0
	movzwl	-18(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, -240(%ebp)
	cmpl	$22, -240(%ebp)
	ja	.L204
	movl	-240(%ebp), %eax
	sall	$2, %eax
	movl	.L215@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L215:
	.long	.L204@GOTOFF
	.long	.L205@GOTOFF
	.long	.L204@GOTOFF
	.long	.L206@GOTOFF
	.long	.L206@GOTOFF
	.long	.L207@GOTOFF
	.long	.L207@GOTOFF
	.long	.L207@GOTOFF
	.long	.L208@GOTOFF
	.long	.L206@GOTOFF
	.long	.L206@GOTOFF
	.long	.L207@GOTOFF
	.long	.L209@GOTOFF
	.long	.L210@GOTOFF
	.long	.L208@GOTOFF
	.long	.L211@GOTOFF
	.long	.L212@GOTOFF
	.long	.L213@GOTOFF
	.long	.L213@GOTOFF
	.long	.L213@GOTOFF
	.long	.L213@GOTOFF
	.long	.L213@GOTOFF
	.long	.L214@GOTOFF
	.text
.L205:
	.loc 1 658 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formaddr@PLT
	movl	%eax, -64(%ebp)
	.loc 1 659 0
	cmpl	$0, -64(%ebp)
	jne	.L216
	.loc 1 660 0
	movl	-128(%ebp), %edx
	movl	-124(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	jmp	.L219
.L216:
	.loc 1 662 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 664 0
	jmp	.L219
.L212:
	.loc 1 669 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_global_formref@PLT
	movl	%eax, -64(%ebp)
	.loc 1 670 0
	cmpl	$0, -64(%ebp)
	jne	.L220
	.loc 1 671 0
	movl	-120(%ebp), %edx
	movl	-116(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	jmp	.L219
.L220:
	.loc 1 674 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 678 0
	jmp	.L219
.L213:
	.loc 1 684 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formref@PLT
	movl	%eax, -64(%ebp)
	.loc 1 685 0
	cmpl	$0, -64(%ebp)
	je	.L223
	.loc 1 686 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L223:
	.loc 1 691 0
	movl	-120(%ebp), %edx
	movl	-116(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	.loc 1 692 0
	movl	check_type_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L219
	.loc 1 693 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_whatattr@PLT
	movl	%eax, -60(%ebp)
	.loc 1 698 0
	movzwl	-20(%ebp), %eax
	cmpw	$73, %ax
	jne	.L219
	.loc 1 699 0
	movl	cu_offset@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	addl	%esi, %edx
	adcl	%edi, %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -56(%ebp)
	.loc 1 701 0
	movl	type_offset_result@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	type_offset_result@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 702 0
	cmpl	$0, -56(%ebp)
	je	.L228
	.loc 1 703 0
	movl	type_offset_result@GOT(%ebx), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	type_offset_result@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 704 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L219
.L228:
.LBB9:
	.loc 1 709 0
	movl	-88(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-22(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_tag@PLT
	movl	%eax, -52(%ebp)
	.loc 1 711 0
	cmpl	$0, -52(%ebp)
	jne	.L230
	.loc 1 712 0
	movzwl	-22(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, -236(%ebp)
	cmpl	$53, -236(%ebp)
	ja	.L232
	movl	-236(%ebp), %eax
	sall	$2, %eax
	movl	.L234@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L234:
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L235@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L235@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L235@GOTOFF
	.text
.L232:
	.loc 1 735 0
	movl	type_offset_result@GOT(%ebx), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	type_offset_result@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 736 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L235:
	.loc 1 740 0
	movl	-88(%ebp), %eax
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	jmp	.L219
.L230:
	.loc 1 742 0
	movl	type_offset_result@GOT(%ebx), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	type_offset_result@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 743 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 749 0
	jmp	.L219
.L206:
.LBE9:
	.loc 1 754 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formblock@PLT
	movl	%eax, -68(%ebp)
	.loc 1 755 0
	cmpl	$0, -68(%ebp)
	jne	.L236
	.loc 1 756 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -232(%ebp)
	movl	%ecx, -228(%ebp)
	movl	attrib_bufsiz@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -224(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -220(%ebp)
	movl	-220(%ebp), %edi
	cmpl	%edi, -228(%ebp)
	jb	.L238
	movl	-220(%ebp), %eax
	cmpl	%eax, -228(%ebp)
	ja	.L240
	movl	-224(%ebp), %edx
	cmpl	%edx, -232(%ebp)
	jb	.L238
.L240:
	.loc 1 757 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, %edx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 759 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L241
	.loc 1 760 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$42, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 762 0
	movl	$1, (%esp)
	call	exit@PLT
.L241:
	.loc 1 764 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	attrib_bufsiz@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L238:
	.loc 1 766 0
	movl	$0, -76(%ebp)
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L243
.L244:
	.loc 1 767 0
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 766 0
	addl	$1, -76(%ebp)
	addl	$2, -72(%ebp)
.L243:
	movl	-76(%ebp), %eax
	movl	%eax, -216(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -212(%ebp)
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -208(%ebp)
	movl	%ecx, -204(%ebp)
	movl	-204(%ebp), %ecx
	cmpl	%ecx, -212(%ebp)
	jb	.L244
	movl	-204(%ebp), %edi
	cmpl	%edi, -212(%ebp)
	ja	.L246
	movl	-208(%ebp), %eax
	cmpl	%eax, -216(%ebp)
	jb	.L244
.L246:
	.loc 1 770 0
	movl	-84(%ebp), %eax
	movl	$6, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	jmp	.L219
.L236:
	.loc 1 772 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 775 0
	jmp	.L219
.L207:
	.loc 1 780 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_whatattr@PLT
	movl	%eax, -68(%ebp)
	.loc 1 781 0
	cmpl	$1, -68(%ebp)
	jne	.L248
	.loc 1 782 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L250
.L248:
	.loc 1 783 0
	cmpl	$-1, -68(%ebp)
	jne	.L251
	.loc 1 784 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L250
.L251:
	.loc 1 786 0
	movzwl	-20(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, -196(%ebp)
	cmpl	$51, -196(%ebp)
	jg	.L256
	cmpl	$50, -196(%ebp)
	jge	.L254
	cmpl	$19, -196(%ebp)
	je	.L254
	cmpl	$19, -196(%ebp)
	jg	.L257
	cmpl	$13, -196(%ebp)
	jg	.L258
	cmpl	$11, -196(%ebp)
	jge	.L254
	cmpl	$9, -196(%ebp)
	je	.L254
	jmp	.L253
.L258:
	cmpl	$16, -196(%ebp)
	je	.L254
	jmp	.L253
.L257:
	cmpl	$32, -196(%ebp)
	je	.L254
	cmpl	$32, -196(%ebp)
	jg	.L259
	cmpl	$23, -196(%ebp)
	je	.L254
	cmpl	$28, -196(%ebp)
	je	.L255
	jmp	.L253
.L259:
	cmpl	$44, -196(%ebp)
	je	.L254
	cmpl	$46, -196(%ebp)
	je	.L254
	jmp	.L253
.L256:
	cmpl	$62, -196(%ebp)
	je	.L254
	cmpl	$62, -196(%ebp)
	jg	.L260
	cmpl	$54, -196(%ebp)
	jl	.L253
	cmpl	$55, -196(%ebp)
	jle	.L254
	movl	-196(%ebp), %eax
	subl	$57, %eax
	cmpl	$2, %eax
	ja	.L253
	jmp	.L254
.L260:
	cmpl	$8193, -196(%ebp)
	je	.L254
	cmpl	$8193, -196(%ebp)
	jg	.L261
	cmpl	$66, -196(%ebp)
	je	.L254
	cmpl	$76, -196(%ebp)
	je	.L254
	jmp	.L253
.L261:
	movl	-196(%ebp), %eax
	subl	$8197, %eax
	cmpl	$1, %eax
	ja	.L253
.L254:
	.loc 1 810 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formudata@PLT
	movl	%eax, -60(%ebp)
	.loc 1 811 0
	cmpl	$0, -60(%ebp)
	jne	.L262
	.loc 1 814 0
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	.loc 1 815 0
	movzwl	-20(%ebp), %eax
	cmpw	$58, %ax
	jne	.L250
	.loc 1 816 0
	cmpl	$0, 20(%ebp)
	je	.L250
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L250
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	%edx, -192(%ebp)
	movl	%ecx, -188(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	movl	-180(%ebp), %edx
	cmpl	%edx, -188(%ebp)
	jb	.L250
	movl	-180(%ebp), %ecx
	cmpl	%ecx, -188(%ebp)
	ja	.L269
	movl	-184(%ebp), %edi
	cmpl	%edi, -192(%ebp)
	jb	.L250
.L269:
.LBB10:
	.loc 1 823 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	sall	$2, %eax
	addl	20(%ebp), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 824 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -244(%ebp)
	movl	$0, %eax
	cld
	movl	-244(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	.loc 1 825 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 832 0
	movl	attrib_bufsiz@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	-44(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -36(%ebp)
	.loc 1 840 0
	movl	-48(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -248(%ebp)
	movl	$0, %eax
	cld
	movl	-248(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 842 0
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jbe	.L270
	.loc 1 849 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	subl	%edx, %eax
	addl	-48(%ebp), %eax
	addl	$10, %eax
	movl	%eax, -48(%ebp)
	.loc 1 850 0
	movl	-40(%ebp), %eax
	movw	$32, (%eax)
	.loc 1 851 0
	addl	$1, -40(%ebp)
	.loc 1 852 0
	movl	-40(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -252(%ebp)
	movl	$0, %eax
	cld
	movl	-252(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-40(%ebp), %eax
	movl	$3026478, (%eax)
	.loc 1 853 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	jmp	.L250
.L270:
	.loc 1 857 0
	movl	-40(%ebp), %eax
	movw	$32, (%eax)
	.loc 1 858 0
	addl	$1, -40(%ebp)
	.loc 1 859 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	jmp	.L250
.L262:
.LBE10:
	.loc 1 863 0
	cmpl	$-1, -60(%ebp)
	je	.L250
	.loc 1 866 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 869 0
	jmp	.L250
.L255:
	.loc 1 871 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formudata@PLT
	movl	%eax, -60(%ebp)
	.loc 1 872 0
	cmpl	$0, -60(%ebp)
	jne	.L274
	.loc 1 873 0
	cmpw	$40, -132(%ebp)
	jne	.L276
.LBB11:
	.loc 1 881 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -28(%ebp)
	.loc 1 883 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 884 0
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	jmp	.L250
.L276:
.LBE11:
	.loc 1 886 0
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	jmp	.L250
.L274:
	.loc 1 888 0
	cmpl	$-1, -60(%ebp)
	je	.L250
	.loc 1 891 0
	cmpw	$40, -132(%ebp)
	jne	.L281
	.loc 1 892 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -60(%ebp)
	.loc 1 893 0
	cmpl	$0, -60(%ebp)
	jne	.L283
	.loc 1 897 0
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	jmp	.L250
.L283:
	.loc 1 898 0
	cmpl	$-1, -60(%ebp)
	je	.L250
	.loc 1 901 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L250
.L281:
	.loc 1 906 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 910 0
	jmp	.L250
.L253:
	.loc 1 914 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -60(%ebp)
	.loc 1 915 0
	cmpl	$0, -60(%ebp)
	jne	.L287
	.loc 1 916 0
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	jmp	.L250
.L287:
	.loc 1 917 0
	cmpl	$-1, -60(%ebp)
	je	.L250
	.loc 1 920 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L250:
	.loc 1 926 0
	movl	cu_name_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L219
	.loc 1 927 0
	movzwl	-20(%ebp), %eax
	cmpw	$8193, %ax
	jne	.L219
	.loc 1 928 0
	movl	fde_offset_for_cu_low@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L293
	.loc 1 929 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	fde_offset_for_cu_high@GOT(%ebx), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	fde_offset_for_cu_high@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	fde_offset_for_cu_low@GOT(%ebx), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L219
.L293:
	.loc 1 931 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	movl	fde_offset_for_cu_low@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -164(%ebp)
	movl	-164(%ebp), %ecx
	cmpl	%ecx, -172(%ebp)
	ja	.L295
	movl	-164(%ebp), %edi
	cmpl	%edi, -172(%ebp)
	jb	.L297
	movl	-168(%ebp), %eax
	cmpl	%eax, -176(%ebp)
	jae	.L295
.L297:
	.loc 1 932 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	fde_offset_for_cu_low@GOT(%ebx), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L219
.L295:
	.loc 1 933 0
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	movl	%edx, -160(%ebp)
	movl	%ecx, -156(%ebp)
	movl	fde_offset_for_cu_high@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	movl	-148(%ebp), %ecx
	cmpl	%ecx, -156(%ebp)
	jb	.L219
	movl	-148(%ebp), %edi
	cmpl	%edi, -156(%ebp)
	ja	.L299
	movl	-152(%ebp), %eax
	cmpl	%eax, -160(%ebp)
	jbe	.L219
.L299:
	.loc 1 934 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	fde_offset_for_cu_high@GOT(%ebx), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 938 0
	jmp	.L219
.L210:
	.loc 1 940 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formsdata@PLT
	movl	%eax, -60(%ebp)
	.loc 1 941 0
	cmpl	$0, -60(%ebp)
	jne	.L300
	.loc 1 942 0
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	jmp	.L219
.L300:
	.loc 1 943 0
	cmpl	$-1, -60(%ebp)
	je	.L219
	.loc 1 946 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 948 0
	jmp	.L219
.L211:
	.loc 1 950 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formudata@PLT
	movl	%eax, -60(%ebp)
	.loc 1 951 0
	cmpl	$0, -60(%ebp)
	jne	.L304
	.loc 1 952 0
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	sprintf@PLT
	jmp	.L219
.L304:
	.loc 1 953 0
	cmpl	$-1, -60(%ebp)
	je	.L219
	.loc 1 956 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 958 0
	jmp	.L219
.L208:
	.loc 1 961 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formstring@PLT
	movl	%eax, -60(%ebp)
	.loc 1 962 0
	cmpl	$0, -60(%ebp)
	jne	.L308
	.loc 1 963 0
	movl	-80(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -256(%ebp)
	movl	$0, %eax
	cld
	movl	-256(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	attrib_bufsiz@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L310
	.loc 1 964 0
	movl	-80(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -260(%ebp)
	movl	$0, %eax
	cld
	movl	-260(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	1(%eax), %edx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, %edx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 966 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L312
	.loc 1 967 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$42, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 969 0
	movl	$1, (%esp)
	call	exit@PLT
.L312:
	.loc 1 971 0
	movl	-80(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -264(%ebp)
	movl	$0, %eax
	cld
	movl	-264(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, %edx
	movl	attrib_bufsiz@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L310:
	.loc 1 973 0
	movl	-80(%ebp), %edx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 974 0
	movl	-80(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	jmp	.L219
.L308:
	.loc 1 975 0
	cmpl	$-1, -60(%ebp)
	je	.L219
	.loc 1 978 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 981 0
	jmp	.L219
.L209:
	.loc 1 983 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_formflag@PLT
	movl	%eax, -60(%ebp)
	.loc 1 984 0
	cmpl	$0, -60(%ebp)
	jne	.L316
	.loc 1 985 0
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	.L318
	.loc 1 986 0
	movl	-92(%ebp), %edx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	sprintf@PLT
	jmp	.L219
.L318:
	.loc 1 988 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movw	$28526, (%eax)
	movb	$0, 2(%eax)
	jmp	.L219
.L316:
	.loc 1 990 0
	cmpl	$-1, -60(%ebp)
	je	.L219
	.loc 1 993 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 995 0
	jmp	.L219
.L214:
	.loc 1 1000 0
	movzwl	-18(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_FORM_name@PLT
	movl	%eax, %edx
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1001 0
	jmp	.L219
.L204:
	.loc 1 1003 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L219:
	.loc 1 1006 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L326
	movzwl	-24(%ebp), %eax
	testw	%ax, %ax
	je	.L326
	movzwl	-24(%ebp), %eax
	cmpw	$22, %ax
	jne	.L326
	.loc 1 1007 0
	movl	attrib_buf@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcat@PLT
.L326:
	.loc 1 1009 0
	addl	$284, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE11:
	.size	get_attr_value, .-get_attr_value
	.data
	.align 32
	.type	tag_attr_combination_table, @object
	.size	tag_attr_combination_table, 648
tag_attr_combination_table:
	.long	0
	.long	0
	.long	0
	.long	8391178
	.long	503730176
	.long	512
	.long	8390666
	.long	503713792
	.long	0
	.long	131082
	.long	525312
	.long	832
	.long	8390666
	.long	503713792
	.long	0
	.long	1073741838
	.long	236060674
	.long	2624
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	16777226
	.long	235147264
	.long	0
	.long	0
	.long	0
	.long	0
	.long	131082
	.long	135168
	.long	64
	.long	393226
	.long	131072
	.long	64
	.long	0
	.long	0
	.long	0
	.long	8402954
	.long	520355840
	.long	512
	.long	0
	.long	0
	.long	0
	.long	2050
	.long	524288
	.long	512
	.long	2
	.long	524288
	.long	512
	.long	135200778
	.long	2097184
	.long	12
	.long	41945098
	.long	503713792
	.long	64
	.long	8390666
	.long	503713792
	.long	0
	.long	0
	.long	0
	.long	0
	.long	8388618
	.long	504238208
	.long	512
	.long	8388618
	.long	503713792
	.long	512
	.long	8390666
	.long	503713792
	.long	2
	.long	2
	.long	236060672
	.long	0
	.long	4194306
	.long	1040580608
	.long	0
	.long	8388622
	.long	503316480
	.long	0
	.long	75497474
	.long	503316480
	.long	0
	.long	2
	.long	251920384
	.long	4608
	.long	393218
	.long	235017216
	.long	64
	.long	8781834
	.long	503578624
	.long	96
	.long	545259530
	.long	503971840
	.long	1536
	.long	8390666
	.long	503713792
	.long	512
	.long	8390666
	.long	512131076
	.long	512
	.long	8781830
	.long	269221888
	.long	576
	.long	10
	.long	235143168
	.long	0
	.long	14346
	.long	1073741824
	.long	0
	.long	393218
	.long	235012096
	.long	64
	.long	2
	.long	0
	.long	512
	.long	276824074
	.long	-1643900928
	.long	512
	.long	268435466
	.long	234881024
	.long	0
	.long	8390666
	.long	235016192
	.long	512
	.long	2
	.long	235012096
	.long	2
	.long	8388610
	.long	503709696
	.long	0
	.long	2
	.long	234881024
	.long	16
	.long	2
	.long	0
	.long	512
	.long	8781834
	.long	-1638001535
	.long	13249
	.long	10
	.long	234881024
	.long	512
	.long	268435466
	.long	234881024
	.long	512
	.long	2
	.long	234881024
	.long	512
	.long	393218
	.long	131072
	.long	64
	.long	2097154
	.long	503709696
	.long	512
	.long	276824078
	.long	-1643900928
	.long	704
	.long	2
	.long	0
	.long	512
	.text
	.type	tag_attr_combination, @function
tag_attr_combination:
.LFB12:
	.loc 1 1015 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$12, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movw	%ax, -8(%ebp)
	movw	%dx, -12(%ebp)
	.loc 1 1016 0
	cmpw	$0, -12(%ebp)
	je	.L328
	cmpw	$95, -12(%ebp)
	ja	.L328
	.loc 1 1017 0
	movzwl	-8(%ebp), %edx
	movzwl	-12(%ebp), %eax
	shrw	$5, %ax
	movzwl	%ax, %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	tag_attr_combination_table@GOTOFF(%ebx,%eax,4), %edx
	movzwl	-12(%ebp), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	jmp	.L331
.L328:
	.loc 1 1019 0
	cmpw	$8193, -12(%ebp)
	jne	.L332
	.loc 1 1021 0
	movl	$1, -16(%ebp)
	jmp	.L331
.L332:
	.loc 1 1023 0
	movl	$0, -16(%ebp)
.L331:
	movl	-16(%ebp), %eax
	.loc 1 1024 0
	addl	$12, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE12:
	.size	tag_attr_combination, .-tag_attr_combination
	.local	die_stack
	.comm	die_stack,200,32
	.comm	attrib_buf,4,4
	.comm	attrib_bufsiz,4,4
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
	.long	.LCFI17-.LCFI15
	.byte	0x83
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
	.long	.LCFI18-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI19
	.byte	0x83
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
	.long	.LCFI23-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI24
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI28-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI29
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI34-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI35
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE14:
	.file 2 "../../libdwarf/libdwarf/libdwarf.h"
	.file 3 "../../libdwarf/dwarfdump/globals.h"
	.file 4 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 5 "./_tag_tree_table.c"
	.file 6 "./_tag_attr_table.c"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/bits/types.h"
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
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI18-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI19-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI29-.Ltext0
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI35-.Ltext0
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1338
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libdwarf/dwarfdump/print_die.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libdwarf"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x4
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
	.byte	0x9
	.byte	0x3b
	.long	0x116
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x9
	.byte	0x90
	.long	0x160
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x9
	.byte	0x91
	.long	0x141
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x18c
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x7
	.long	0x40f
	.long	.LASF1
	.byte	0x94
	.byte	0x7
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0x8
	.value	0x10c
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0x8
	.value	0x111
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0x8
	.value	0x112
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0x8
	.value	0x113
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0x8
	.value	0x114
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0x8
	.value	0x115
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0x8
	.value	0x116
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0x8
	.value	0x117
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0x8
	.value	0x118
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0x8
	.value	0x11a
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0x8
	.value	0x11b
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0x8
	.value	0x11c
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0x8
	.value	0x11e
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0x8
	.value	0x120
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0x8
	.value	0x122
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0x8
	.value	0x126
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0x8
	.value	0x128
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0x8
	.value	0x12c
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0x8
	.value	0x12d
	.long	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0x8
	.value	0x12e
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0x8
	.value	0x132
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0x8
	.value	0x13b
	.long	0x16c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0x8
	.value	0x144
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0x8
	.value	0x145
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0x8
	.value	0x146
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0x8
	.value	0x147
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0x8
	.value	0x148
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0x8
	.value	0x14a
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0x8
	.value	0x14c
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x9
	.string	"_IO_lock_t"
	.byte	0x8
	.byte	0xb0
	.uleb128 0xa
	.long	0x460
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x8
	.byte	0xb6
	.uleb128 0xb
	.string	"_next"
	.byte	0x8
	.byte	0xb7
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_sbuf"
	.byte	0x8
	.byte	0xb8
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_pos"
	.byte	0x8
	.byte	0xbc
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x41d
	.uleb128 0x6
	.byte	0x4
	.long	0x194
	.uleb128 0xc
	.long	0x47c
	.long	0x18c
	.uleb128 0xd
	.long	0x17d
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x40f
	.uleb128 0xc
	.long	0x492
	.long	0x18c
	.uleb128 0xd
	.long	0x17d
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Bool"
	.byte	0x2
	.byte	0x5a
	.long	0x10f
	.uleb128 0x2
	.string	"Dwarf_Off"
	.byte	0x2
	.byte	0x5b
	.long	0x127
	.uleb128 0x2
	.string	"Dwarf_Unsigned"
	.byte	0x2
	.byte	0x5c
	.long	0x127
	.uleb128 0x2
	.string	"Dwarf_Half"
	.byte	0x2
	.byte	0x5d
	.long	0xc8
	.uleb128 0x2
	.string	"Dwarf_Small"
	.byte	0x2
	.byte	0x5e
	.long	0xb7
	.uleb128 0x2
	.string	"Dwarf_Signed"
	.byte	0x2
	.byte	0x5f
	.long	0x116
	.uleb128 0x2
	.string	"Dwarf_Addr"
	.byte	0x2
	.byte	0x60
	.long	0x127
	.uleb128 0x2
	.string	"Dwarf_Ptr"
	.byte	0x2
	.byte	0x62
	.long	0x184
	.uleb128 0xe
	.long	0x589
	.byte	0x18
	.byte	0x2
	.byte	0x66
	.uleb128 0xb
	.string	"bl_len"
	.byte	0x2
	.byte	0x67
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"bl_data"
	.byte	0x2
	.byte	0x68
	.long	0x516
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"bl_from_loclist"
	.byte	0x2
	.byte	0x69
	.long	0x4dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"bl_section_offset"
	.byte	0x2
	.byte	0x6a
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Block"
	.byte	0x2
	.byte	0x6c
	.long	0x527
	.uleb128 0xe
	.long	0x5f4
	.byte	0x1c
	.byte	0x2
	.byte	0x71
	.uleb128 0xb
	.string	"lr_atom"
	.byte	0x2
	.byte	0x72
	.long	0x4dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"lr_number"
	.byte	0x2
	.byte	0x73
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"lr_number2"
	.byte	0x2
	.byte	0x74
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"lr_offset"
	.byte	0x2
	.byte	0x75
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Loc"
	.byte	0x2
	.byte	0x76
	.long	0x59c
	.uleb128 0xe
	.long	0x68a
	.byte	0x24
	.byte	0x2
	.byte	0x7b
	.uleb128 0xb
	.string	"ld_lopc"
	.byte	0x2
	.byte	0x7c
	.long	0x504
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"ld_hipc"
	.byte	0x2
	.byte	0x7d
	.long	0x504
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"ld_cents"
	.byte	0x2
	.byte	0x7e
	.long	0x4cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"ld_s"
	.byte	0x2
	.byte	0x7f
	.long	0x68a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"ld_from_loclist"
	.byte	0x2
	.byte	0x80
	.long	0x4dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"ld_section_offset"
	.byte	0x2
	.byte	0x83
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x5f4
	.uleb128 0x2
	.string	"Dwarf_Locdesc"
	.byte	0x2
	.byte	0x85
	.long	0x605
	.uleb128 0x2
	.string	"Dwarf_Debug"
	.byte	0x2
	.byte	0xc2
	.long	0x6b8
	.uleb128 0x6
	.byte	0x4
	.long	0x6be
	.uleb128 0xf
	.string	"Dwarf_Debug_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Die"
	.byte	0x2
	.byte	0xc3
	.long	0x6df
	.uleb128 0x6
	.byte	0x4
	.long	0x6e5
	.uleb128 0xf
	.string	"Dwarf_Die_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Error"
	.byte	0x2
	.byte	0xca
	.long	0x706
	.uleb128 0x6
	.byte	0x4
	.long	0x70c
	.uleb128 0xf
	.string	"Dwarf_Error_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Attribute"
	.byte	0x2
	.byte	0xcb
	.long	0x733
	.uleb128 0x6
	.byte	0x4
	.long	0x739
	.uleb128 0xf
	.string	"Dwarf_Attribute_s"
	.byte	0x1
	.uleb128 0x2
	.string	"string"
	.byte	0x3
	.byte	0x63
	.long	0x186
	.uleb128 0x2
	.string	"boolean"
	.byte	0x3
	.byte	0x64
	.long	0x10f
	.uleb128 0xe
	.long	0x795
	.byte	0x8
	.byte	0x3
	.byte	0x6f
	.uleb128 0xb
	.string	"checks"
	.byte	0x3
	.byte	0x70
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"errors"
	.byte	0x3
	.byte	0x71
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Check_Result"
	.byte	0x3
	.byte	0x72
	.long	0x76a
	.uleb128 0x10
	.long	0x7f9
	.string	"tag_tree_combination"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	0x10f
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.byte	0x4e
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.long	.LASF3
	.byte	0x1
	.byte	0x4e
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x12
	.long	0x925
	.byte	0x1
	.string	"print_die_and_children"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x13
	.string	"dbg"
	.byte	0x1
	.byte	0x5b
	.long	0x6a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"in_die_in"
	.byte	0x1
	.byte	0x5b
	.long	0x6ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LASF4
	.byte	0x1
	.byte	0x5c
	.long	0x925
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"cnt"
	.byte	0x1
	.byte	0x5c
	.long	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"child"
	.byte	0x1
	.byte	0x5e
	.long	0x6ce
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"sibling"
	.byte	0x1
	.byte	0x5f
	.long	0x6ce
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.byte	0x60
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"tres"
	.byte	0x1
	.byte	0x61
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"cdres"
	.byte	0x1
	.byte	0x62
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"in_die"
	.byte	0x1
	.byte	0x63
	.long	0x6ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	0x8e0
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.byte	0x6b
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0x0
	.uleb128 0x16
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.byte	0x7a
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x17
	.long	.LASF3
	.byte	0x1
	.byte	0x7a
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"pres"
	.byte	0x1
	.byte	0x7b
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"cres"
	.byte	0x1
	.byte	0x7c
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x186
	.uleb128 0x12
	.long	0xa83
	.byte	0x1
	.string	"print_one_die"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x13
	.string	"dbg"
	.byte	0x1
	.byte	0xd4
	.long	0x6a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"die"
	.byte	0x1
	.byte	0xd4
	.long	0x6ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LASF5
	.byte	0x1
	.byte	0xd4
	.long	0x75b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.long	.LASF4
	.byte	0x1
	.byte	0xd5
	.long	0x925
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x13
	.string	"cnt"
	.byte	0x1
	.byte	0xd5
	.long	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xd7
	.long	0x4f0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"offset"
	.byte	0x1
	.byte	0xd8
	.long	0x4a4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"overall_offset"
	.byte	0x1
	.byte	0xd8
	.long	0x4a4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"tagname"
	.byte	0x1
	.byte	0xd9
	.long	0x74d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.byte	0xda
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x14
	.string	"atcnt"
	.byte	0x1
	.byte	0xdb
	.long	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.string	"atlist"
	.byte	0x1
	.byte	0xdc
	.long	0xa83
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"tres"
	.byte	0x1
	.byte	0xdd
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"ores"
	.byte	0x1
	.byte	0xde
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"atres"
	.byte	0x1
	.byte	0xdf
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.long	0xa58
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xfe
	.long	0x10f
	.byte	0x3
	.byte	0x75
	.sleb128 -92
	.byte	0x0
	.uleb128 0x16
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x18
	.string	"attr"
	.byte	0x1
	.value	0x114
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"ares"
	.byte	0x1
	.value	0x115
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x71c
	.uleb128 0x19
	.long	0xb93
	.string	"print_attribute"
	.byte	0x1
	.value	0x134
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x1a
	.string	"dbg"
	.byte	0x1
	.value	0x130
	.long	0x6a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"die"
	.byte	0x1
	.value	0x130
	.long	0x6ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"attr"
	.byte	0x1
	.value	0x130
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.string	"attr_in"
	.byte	0x1
	.value	0x131
	.long	0x71c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.value	0x132
	.long	0x75b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x133
	.long	0x925
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.value	0x133
	.long	0x4f0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"attrib"
	.byte	0x1
	.value	0x135
	.long	0x71c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"sval"
	.byte	0x1
	.value	0x136
	.long	0x4f0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"atname"
	.byte	0x1
	.value	0x137
	.long	0x74d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"valname"
	.byte	0x1
	.value	0x138
	.long	0x74d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"tres"
	.byte	0x1
	.value	0x139
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"vres"
	.byte	0x1
	.value	0x13a
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"tag"
	.byte	0x1
	.value	0x13b
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0x0
	.uleb128 0x1c
	.long	0xc98
	.string	"_dwarf_print_one_locdesc"
	.byte	0x1
	.value	0x1c1
	.byte	0x1
	.long	0x10f
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x1a
	.string	"dbg"
	.byte	0x1
	.value	0x1be
	.long	0x6a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"llbuf"
	.byte	0x1
	.value	0x1bf
	.long	0xc98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"start_buf"
	.byte	0x1
	.value	0x1c0
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.string	"out_buf"
	.byte	0x1
	.value	0x1c0
	.long	0x925
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x1c2
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"locd"
	.byte	0x1
	.value	0x1c3
	.long	0xc98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"no_of_ops"
	.byte	0x1
	.value	0x1c4
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"op_name"
	.byte	0x1
	.value	0x1c5
	.long	0x74d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1c6
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x18
	.string	"op"
	.byte	0x1
	.value	0x1dc
	.long	0x4dd
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x18
	.string	"opd1"
	.byte	0x1
	.value	0x1dd
	.long	0x4b5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"opd2"
	.byte	0x1
	.value	0x1dd
	.long	0x4b5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x690
	.uleb128 0x19
	.long	0xdbd
	.string	"get_location_list"
	.byte	0x1
	.value	0x225
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x1a
	.string	"dbg"
	.byte	0x1
	.value	0x224
	.long	0x6a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"die"
	.byte	0x1
	.value	0x224
	.long	0x6ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"attr"
	.byte	0x1
	.value	0x224
	.long	0x71c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"llbuf"
	.byte	0x1
	.value	0x226
	.long	0xc98
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"llbufarray"
	.byte	0x1
	.value	0x227
	.long	0xdbd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"no_of_elements"
	.byte	0x1
	.value	0x228
	.long	0x4f0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"err"
	.byte	0x1
	.value	0x229
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x22a
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x22b
	.long	0x74d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"lres"
	.byte	0x1
	.value	0x22c
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"llent"
	.byte	0x1
	.value	0x22d
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.long	0xd9f
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x18
	.string	"buf_out"
	.byte	0x1
	.value	0x230
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x16
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x18
	.string	"buf_out"
	.byte	0x1
	.value	0x249
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xc98
	.uleb128 0x19
	.long	0x1029
	.string	"get_attr_value"
	.byte	0x1
	.value	0x26f
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x1a
	.string	"dbg"
	.byte	0x1
	.value	0x26d
	.long	0x6a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"tag"
	.byte	0x1
	.value	0x26d
	.long	0x4cb
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1a
	.string	"attrib"
	.byte	0x1
	.value	0x26d
	.long	0x71c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x26e
	.long	0x925
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.value	0x26e
	.long	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x18
	.string	"theform"
	.byte	0x1
	.value	0x270
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x18
	.string	"temps"
	.byte	0x1
	.value	0x271
	.long	0x74d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.string	"tempb"
	.byte	0x1
	.value	0x272
	.long	0x1029
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x18
	.string	"tempsd"
	.byte	0x1
	.value	0x273
	.long	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.string	"tempud"
	.byte	0x1
	.value	0x274
	.long	0x4b5
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x275
	.long	0x10f
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x276
	.long	0x74d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"attr"
	.byte	0x1
	.value	0x277
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"off"
	.byte	0x1
	.value	0x278
	.long	0x4a4
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x18
	.string	"die_for_check"
	.byte	0x1
	.value	0x279
	.long	0x6ce
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"tag_for_check"
	.byte	0x1
	.value	0x27a
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x18
	.string	"tempbool"
	.byte	0x1
	.value	0x27b
	.long	0x492
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.string	"addr"
	.byte	0x1
	.value	0x27c
	.long	0x504
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x18
	.string	"fres"
	.byte	0x1
	.value	0x27d
	.long	0x10f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.string	"bres"
	.byte	0x1
	.value	0x27e
	.long	0x10f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"wres"
	.byte	0x1
	.value	0x27f
	.long	0x10f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.string	"dres"
	.byte	0x1
	.value	0x280
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"direct_form"
	.byte	0x1
	.value	0x281
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	0xfa2
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x18
	.string	"tres2"
	.byte	0x1
	.value	0x2c3
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x15
	.long	0x1011
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x18
	.string	"fname"
	.byte	0x1
	.value	0x337
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"used_so_far"
	.byte	0x1
	.value	0x338
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"targ"
	.byte	0x1
	.value	0x339
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"bytes_left"
	.byte	0x1
	.value	0x33a
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"namelen"
	.byte	0x1
	.value	0x348
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x16
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x371
	.long	0x10f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x589
	.uleb128 0x1c
	.long	0x107d
	.string	"tag_attr_combination"
	.byte	0x1
	.value	0x3f7
	.byte	0x1
	.long	0x10f
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x1a
	.string	"tag"
	.byte	0x1
	.value	0x3f6
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.string	"attr"
	.byte	0x1
	.value	0x3f6
	.long	0x4cb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x14
	.string	"indent_level"
	.byte	0x1
	.byte	0x31
	.long	0x10f
	.byte	0x5
	.byte	0x3
	.long	indent_level
	.uleb128 0x14
	.string	"local_symbols_already_began"
	.byte	0x1
	.byte	0x32
	.long	0x75b
	.byte	0x5
	.byte	0x3
	.long	local_symbols_already_began
	.uleb128 0xc
	.long	0x10d0
	.long	0x6ce
	.uleb128 0xd
	.long	0x17d
	.byte	0x31
	.byte	0x0
	.uleb128 0x14
	.string	"die_stack"
	.byte	0x1
	.byte	0x3b
	.long	0x10c0
	.byte	0x5
	.byte	0x3
	.long	die_stack
	.uleb128 0xc
	.long	0x10fd
	.long	0xb0
	.uleb128 0xd
	.long	0x17d
	.byte	0x35
	.uleb128 0xd
	.long	0x17d
	.byte	0x1
	.byte	0x0
	.uleb128 0x14
	.string	"tag_tree_combination_table"
	.byte	0x5
	.byte	0x1
	.long	0x10e7
	.byte	0x5
	.byte	0x3
	.long	tag_tree_combination_table
	.uleb128 0xc
	.long	0x113b
	.long	0xb0
	.uleb128 0xd
	.long	0x17d
	.byte	0x35
	.uleb128 0xd
	.long	0x17d
	.byte	0x2
	.byte	0x0
	.uleb128 0x14
	.string	"tag_attr_combination_table"
	.byte	0x6
	.byte	0x1
	.long	0x1125
	.byte	0x5
	.byte	0x3
	.long	tag_attr_combination_table
	.uleb128 0x1d
	.string	"stderr"
	.byte	0x7
	.byte	0x90
	.long	0x466
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"verbose"
	.byte	0x3
	.byte	0x74
	.long	0x10f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"dense"
	.byte	0x3
	.byte	0x75
	.long	0x75b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"dst_format"
	.byte	0x3
	.byte	0x77
	.long	0x75b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"check_attr_tag"
	.byte	0x3
	.byte	0x7a
	.long	0x75b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"check_tag_tree"
	.byte	0x3
	.byte	0x7b
	.long	0x75b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"check_type_offset"
	.byte	0x3
	.byte	0x7c
	.long	0x75b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"attr_tag_result"
	.byte	0x3
	.byte	0x81
	.long	0x795
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"tag_tree_result"
	.byte	0x3
	.byte	0x82
	.long	0x795
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"type_offset_result"
	.byte	0x3
	.byte	0x83
	.long	0x795
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"info_flag"
	.byte	0x3
	.byte	0x85
	.long	0x75b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"use_old_dwarf_loclist"
	.byte	0x3
	.byte	0x86
	.long	0x75b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"cu_name_flag"
	.byte	0x3
	.byte	0x89
	.long	0x75b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"cu_offset"
	.byte	0x3
	.byte	0x8a
	.long	0x4b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"fde_offset_for_cu_low"
	.byte	0x1
	.byte	0x34
	.long	0x4a4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fde_offset_for_cu_low
	.uleb128 0x1e
	.string	"fde_offset_for_cu_high"
	.byte	0x1
	.byte	0x35
	.long	0x4a4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fde_offset_for_cu_high
	.uleb128 0x1d
	.string	"check_error"
	.byte	0x3
	.byte	0x8f
	.long	0x10f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"err"
	.byte	0x3
	.byte	0x90
	.long	0x6f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"attrib_buf"
	.byte	0x1
	.byte	0x3e
	.long	0x74d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	attrib_buf
	.uleb128 0x1e
	.string	"attrib_bufsiz"
	.byte	0x1
	.byte	0x3f
	.long	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	attrib_bufsiz
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.long	0x91
	.value	0x2
	.long	.Ldebug_info0
	.long	0x133c
	.long	0x7f9
	.string	"print_die_and_children"
	.long	0x92b
	.string	"print_one_die"
	.long	0x129b
	.string	"fde_offset_for_cu_low"
	.long	0x12bf
	.string	"fde_offset_for_cu_high"
	.long	0x1306
	.string	"attrib_buf"
	.long	0x131f
	.string	"attrib_bufsiz"
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
.LASF4:
	.string	"srcfiles"
.LASF5:
	.string	"print_information"
.LASF2:
	.string	"tag_parent"
.LASF0:
	.string	"unsigned int"
.LASF3:
	.string	"tag_child"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
